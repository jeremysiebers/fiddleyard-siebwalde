/*
 * File:   commhandler.c
 * Author: Jeremy Siebers
 *
 * Created on aug 28, 2018, 14:15 PM
 */
#include <xc.h>
#include "main.h"
#include "mcc_generated_files/mcc.h"
#include "modbus/Interrupts.h"
#include "modbus/PetitModbus.h"

#define MAILBOX_SIZE 4                                                          // How many messages are non-critical

void SendDataToEthernet(void);

/*#--------------------------------------------------------------------------#*/
/*  Description: InitSlaveCommunication(SLAVE_INFO *location)
 *
 *  Input(s)   : location of stored data array of struct
 *
 *  Output(s)  :
 *
 *  Returns    :
 *
 *  Pre.Cond.  :
 *
 *  Post.Cond. :
 *
 *  Notes      :
 */
/*#--------------------------------------------------------------------------#*/
static SLAVE_INFO   *MASTER_SLAVE_DATA = 0;                                     // Holds the address were the received slave data is stored
static SLAVE_INFO   SlaveInfoReadMask;                                          // Read mask for slave data from EhternetTarget
unsigned char       *pSlaveDataReceived, *pSlaveInfoReadMask;

void InitSlaveCommunication(SLAVE_INFO *location)                                  
{   
    MASTER_SLAVE_DATA  =  location;
    SlaveInfoReadMask.Header           = 0x00;
    SlaveInfoReadMask.SlaveNumber      = 0x00;                                  // Mask for data write to local MASTER_SLAVE_DATA from EthernetTarget
    SlaveInfoReadMask.HoldingReg[0]    = 0xFFFF;                                // only new setpoints/settings are allowed to be read which need to be written to modbus slaves
    SlaveInfoReadMask.HoldingReg[1]    = 0xFFFF;
    SlaveInfoReadMask.HoldingReg[2]    = 0xFFFF;
    SlaveInfoReadMask.HoldingReg[3]    = 0xFFFF;
    SlaveInfoReadMask.InputReg[0]      = 0x0000;
    SlaveInfoReadMask.InputReg[1]      = 0x0000;
    SlaveInfoReadMask.InputReg[2]      = 0x0000;
    SlaveInfoReadMask.InputReg[3]      = 0x0000;
    SlaveInfoReadMask.InputReg[4]      = 0x0000;
    SlaveInfoReadMask.InputReg[5]      = 0x0000;
    SlaveInfoReadMask.DiagReg[0]       = 0x0000;
    SlaveInfoReadMask.DiagReg[1]       = 0x0000;
    SlaveInfoReadMask.MbReceiveCounter = 0x0000;
    SlaveInfoReadMask.MbSentCounter    = 0x0000;
    SlaveInfoReadMask.MbCommError      = 0x0000;
    SlaveInfoReadMask.MbExceptionCode  = 0x00;
    SlaveInfoReadMask.SpiCommErrorCounter = 0x0000;
    SlaveInfoReadMask.Footer           = 0x00;
}

/*#--------------------------------------------------------------------------#*/
/*  Description: ProcessNextSlave()
 *
 *  Input(s)   : 
 *
 *  Output(s)  :
 *
 *  Returns    :
 *
 *  Pre.Cond.  :
 *
 *  Post.Cond. :
 *
 *  Notes      : Handles communication message to all slaves
 */
/*#--------------------------------------------------------------------------#*/

typedef enum
{
    NrRegLo = 0,
    NrRegHi = 1,
    StAdLo  = 2,
    StAdHi  = 3     
};

typedef enum
{
    MESSAGE1 = 1,
    MESSAGE2 = 2,
    MESSAGE3 = 3,
    MESSAGE4 = 4 
};
unsigned char HoldingRegistersRead [4] = {0, 0, 0, 0};                          // {start address High, start address Low, number of registers High, number of registers Low}
unsigned char HoldingRegistersWrite[9] = {0, 0, 0, 0, 0, 0, 0, 0, 0};           // {start address High, start address Low, number of registers High, number of registers Low, byte count, Register Value Hi, Register Value Lo, Register Value Hi, Register Value Lo} 
unsigned char   InputRegistersRead [4] = {0, 0, 0, 0};
unsigned char    DiagRegistersRead [4] = {0, 0, 0, 0};

static unsigned char ProcessSlave = 1;
static unsigned int Mailbox = 1;
static unsigned int Message = MESSAGE1;

void ProcessNextSlave(){    
    
    if (ProcessSlave > (NUMBER_OF_SLAVES-1)){
        ProcessSlave = 1;
        Mailbox++;
        if (Mailbox > 4){
            Mailbox = 1;
        }        
    }
    
    switch (Message){
        case MESSAGE1:
            HoldingRegistersWrite[8]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[1];
            HoldingRegistersWrite[7]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[1] >> 8;
            HoldingRegistersWrite[6]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[0];
            HoldingRegistersWrite[5]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[0] >> 8;
            HoldingRegistersWrite[4]  = 4;
            HoldingRegistersWrite[3]  = 2;
            HoldingRegistersWrite[2]  = 0;
            HoldingRegistersWrite[1]  = 0;
            HoldingRegistersWrite[0]  = 0;
            SendPetitModbus(ProcessSlave, PETITMODBUS_WRITE_MULTIPLE_REGISTERS, HoldingRegistersWrite, 9);
            break;

        case MESSAGE2:
            InputRegistersRead[3]  = 2;
            InputRegistersRead[2]  = 0;
            InputRegistersRead[1]  = 0;
            InputRegistersRead[0]  = 0;
            SendPetitModbus(ProcessSlave, PETITMODBUS_READ_INPUT_REGISTERS, InputRegistersRead, 4);    
            break;

        case MESSAGE3:
            switch (Mailbox){
                case 1:
                    HoldingRegistersWrite[8]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[3];
                    HoldingRegistersWrite[7]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[3] >> 8;
                    HoldingRegistersWrite[6]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[2];
                    HoldingRegistersWrite[5]  = MASTER_SLAVE_DATA[ProcessSlave].HoldingReg[2] >> 8;
                    HoldingRegistersWrite[4]  = 4;
                    HoldingRegistersWrite[3]  = 2;
                    HoldingRegistersWrite[2]  = 0;
                    HoldingRegistersWrite[1]  = 2;
                    HoldingRegistersWrite[0]  = 0;
                    SendPetitModbus(ProcessSlave, PETITMODBUS_WRITE_MULTIPLE_REGISTERS, HoldingRegistersWrite, 9);
                    break;
                    
                case 2:
                    DiagRegistersRead[3]  = 2;
                    DiagRegistersRead[2]  = 0;
                    DiagRegistersRead[1]  = 0;
                    DiagRegistersRead[0]  = 0;
                    SendPetitModbus(ProcessSlave, PETITMODBUS_DIAGNOSTIC_REGISTERS, DiagRegistersRead, 4);
                    break;
                
                case 3:
                    InputRegistersRead[3]  = 2;
                    InputRegistersRead[2]  = 0;
                    InputRegistersRead[1]  = 2;
                    InputRegistersRead[0]  = 0;
                    SendPetitModbus(ProcessSlave, PETITMODBUS_READ_INPUT_REGISTERS, InputRegistersRead, 4);  
                    break;
                
                case 4:
                    InputRegistersRead[3]  = 2;
                    InputRegistersRead[2]  = 0;
                    InputRegistersRead[1]  = 4;
                    InputRegistersRead[0]  = 0;
                    SendPetitModbus(ProcessSlave, PETITMODBUS_READ_INPUT_REGISTERS, InputRegistersRead, 4);  
                    break;
                
                default:
                    break;                
            }
            break;
            
        default :
            break;
    }  
}


/*#--------------------------------------------------------------------------#*/
/*  Description: ProcessSlaveCommunication()
 *
 *  Input(s)   : 
 *
 *  Output(s)  :
 *
 *  Returns    :
 *
 *  Pre.Cond.  :
 *
 *  Post.Cond. :
 *
 *  Notes      : Keeps track of communication with a slave
 */
/*#--------------------------------------------------------------------------#*/
unsigned int ProcessSlaveCommunication(){
    
    unsigned int Return_Val = false;
    
    switch (MASTER_SLAVE_DATA[ProcessSlave].MbCommError){
        case SLAVE_DATA_BUSY:
            Return_Val = false;
            // count here how long the Mod-bus stack is busy, otherwise reset/action             
            break;
            
        case SLAVE_DATA_NOK:
            // count here how often the slave data is NOK, otherwise stop all slaves with broadcast
            MASTER_SLAVE_DATA[ProcessSlave].MbCommError = SLAVE_DATA_IDLE;
            Message++;                                                        // process next message
            if (Message > MESSAGE3){
                ProcessSlave++;
                Message = MESSAGE1;
            } 
            Return_Val = true;
            break;
            
        case SLAVE_DATA_OK:
            MASTER_SLAVE_DATA[ProcessSlave].MbCommError = SLAVE_DATA_IDLE;
            Message++;                                                          // process next message
            if (Message > MESSAGE3){
                ProcessSlave++;
                Message = MESSAGE1;
            }
            Return_Val = true;
            break;
            
        case SLAVE_DATA_TIMEOUT:
            // count here how often the slave data is timeout, otherwise stop all slaves with broadcast
            MASTER_SLAVE_DATA[ProcessSlave].MbCommError = SLAVE_DATA_IDLE;
            Message++;                                                          // process next message
            if (Message > MESSAGE3){
                ProcessSlave++;
                Message = MESSAGE1;
            }
            Return_Val = true;
            break;
            
        case SLAVE_DATA_EXCEPTION:
            // count here how often the slave data is timeout, otherwise stop all slaves with broadcast
            MASTER_SLAVE_DATA[ProcessSlave].MbCommError = SLAVE_DATA_IDLE;
            Message++;                                                          // process next message
            if (Message > MESSAGE3){
                ProcessSlave++;
                Message = MESSAGE1;
            }
            Return_Val = true;
            break;
            
        default :    // Idle is here        
            break;
    }
    
    if (Return_Val == true){
        //__delay_us(60);                                                       // when debugging is required on oscilloscope, waittime till tmr3 is done
        while (T2TMR < 0xD0){                                                   // Send SPI data on a defined moment in time within the 2ms TMR2 interrupt
            
        }
        SendDataToEthernet();
    }
    
    return (Return_Val);
}

/*#--------------------------------------------------------------------------#*/
/*  Description: SendDataToEthernet()
 *
 *  Input(s)   : 
 *
 *  Output(s)  :
 *
 *  Returns    :
 *
 *  Pre.Cond.  :
 *
 *  Post.Cond. :
 *
 *  Notes      : Keeps track of communication with a slave
 */
/*#--------------------------------------------------------------------------#*/
static unsigned int DataFromSlave = 0;
const unsigned char DATAxSTRUCTxLENGTH = sizeof(SLAVE_INFO) + 1;      // add one byte to send dummy
static unsigned char RECEIVEDxDATAxRAW[DATAxSTRUCTxLENGTH];                            // One dummy byte extra (SPI master will send extra byte to receive last byte from slave)
static uint8_t bytesWritten = 0;
static uint8_t *dataIn, *dataOut;

void SendDataToEthernet(){
    //modbus_sync_LAT = 1;
    //SPI1_Exchange8bitBuffer(&(MASTER_SLAVE_DATA[DataFromSlave].Header), 
    //        DATAxSTRUCTxLENGTH, &(RECEIVEDxDATAxRAW[0]));                       // SPI send/receive data    
    bytesWritten = 0;
    dataIn  = &(MASTER_SLAVE_DATA[DataFromSlave].Header);
    dataOut = &(RECEIVEDxDATAxRAW[0]);
    SS1_LAT = 0;                                                                // Activate slave
    while(bytesWritten < DATAxSTRUCTxLENGTH){
        SSP1CON1bits.WCOL = 0;
        SSP1BUF = dataIn[bytesWritten];
        while(SSP1STATbits.BF == 0){
        }
        dataOut[bytesWritten] = SSP1BUF;
        bytesWritten++;
    }
    SS1_LAT = 1;   
    
    if(RECEIVEDxDATAxRAW[2] < NUMBER_OF_SLAVES && RECEIVEDxDATAxRAW[1]==0xAA && 
            RECEIVEDxDATAxRAW[DATAxSTRUCTxLENGTH-1]==0x55){                                // Check if received slave number is valid(during debugging sometimes wrong number received)
        pSlaveDataReceived = &(MASTER_SLAVE_DATA[RECEIVEDxDATAxRAW[2]].Header); // set the pointer to the first element of the received slave number in RECEIVEDxDATAxRAW[1](first element is dummy byte)    
        pSlaveInfoReadMask = &(SlaveInfoReadMask.Header);                       // set the pointer to the first element of the SlaveInfoReadMask
        for(char i = 1; i < DATAxSTRUCTxLENGTH-1; i++){
            if(*pSlaveInfoReadMask){
                *pSlaveDataReceived = RECEIVEDxDATAxRAW[i];                     // for DATAxSTRUCTxLENGTH set every byte into RECEIVEDxDATAxRAW array according to read mask
            }        
            pSlaveDataReceived += 1;                                            // Increment pointer
            pSlaveInfoReadMask += 1;                                            // Increment pointer        
        }   
    } 
    else{
        MASTER_SLAVE_DATA[0].SpiCommErrorCounter += 1;                          // Count error SPI messages 
    }
    
    DataFromSlave++;                                                            // send data from next slave
    if (DataFromSlave > NUMBER_OF_SLAVES-1){
        DataFromSlave = 0;
    }
    //modbus_sync_LAT = 0;
}

/*
 *------------------------------------------------------------------------------
 * Master communication scheme during OP:
 * 
 *     |Slave n       |    |Slave n     |	 |Broadcast     |    |Slave n + 1   |    |Slave n + 1 |    |Slave x      |
 *     |Critical      |    |Critical    |    |Critical      |    |Critical      |    |Critical    |    |INFO         |     
 * ----|MESSAGE1      |----|MESSAGE2    |----|MESSAGE3      |----|MESSAGE4      |----|MESSAGE5    |----|MESSAGE6     |
 *     |HoldingReg0 W |    |InputReg0 R |    |RegisterX R/W |    |HoldingReg0 W |    |InputReg0 R |	   |RegisterX R/W|	
 *     |HoldingReg1 W |    |InputReg1 R |    |RegisterX R/W |    |HoldingReg1 W |    |InputReg1 R |    |RegisterX R/W| 
 *     		             		   							     
 *     
 * Message 6 consists out of a mailbox were info can be R/W or
 * NOP, a maximum amount of 2 registers should be addressed at once
 * (NOP operation would be a read from a register)
 *
 * 4 Holding registers
 * 5 Input registers
 * 2 Diagnostic registers
 *
 * Mailbox: 50x 
 * 1x read HoldingReg3 and HoldingReg4
 * 1x read DiagnosticReg1 and DiagnosticReg2
 * 1x write HoldingReg2 and HoldingReg3
 * 1x read DiagnosticReg3 and DiagnosticReg4
 * 
 *------------------------------------------------------------------------------ 
 * 
 * Modbus Track Slave Data Register mapping:
 * 
 * Data register, bit(s)        Function            	R/W     Critical
 * 
 * -----------------------------RUNNING PARAMETERS------------------------------
 * 
 * HoldingReg0, 0 - 9           PWM set point       	R/W     No/Yes			// new PWM setpoint (speed in 0 - 255 km/h)
 * HoldingReg0, 10				PWM direction       	R/W     No/Yes          // Forward / Backward
 * HoldingReg0, 11              PWM brake            	R/W     No/Yes          // enabling of the H-bridge outputs
 * HoldingReg0, 12                                  	
 * HoldingReg0, 13                                  	
 * HoldingReg0, 14                                  	
 * HoldingReg0, 15              Emo Stop            	R/W     No/Yes			// Slave takes action to stop train as fast as possible
 *  
 * HoldingReg1, 0 - 9           Set BEMF speed      	R/W     No/No           // Set value of BEMF, this to allow constant speed regulation
 * HoldingReg1, 10              Set CSReg             	R/W     No/No           // Enable constant speed regulation
 * HoldingReg1, 11 				Clear Amp status		R/W 	No/No			// Clear amplifier status
 * HoldingReg1, 12				Clear message buffer	R/W 	No/No			// Clear message buffer registers
 * HoldingReg1, 13
 * HoldingReg1, 14
 * HoldingReg1, 15				Reset Amplifier			R/W		No/No			// Execute an Amplifier reset().
 
 * InputReg0, 0 - 9             Read Back EMF         	R/-     Yes/-           // Read of back EMF train motor                      
 * InputReg0, 10                Occupied				R/-     Yes/-          
 * InputReg0, 11                ThermalFlag				R/-     Yes/-			// H-bridge thermal flag output              
 * InputReg0, 12                H-bridge over current 	R/-     Yes/-			// When over current is detected
 * InputReg0, 13                Amplifier ID set		R/-		No/-			// Indicates that the amplifier ID is set by master
 * InputReg0, 14
 * InputReg0, 15
 * 
 * InputReg4, 0 - 15            Amplifier Status        R/-     No/-            // Amplifier status list
 *                                                  	
 * InputReg1, 0 - 9          	H-bridge fuse status	R/-	    No/-            // Voltage H-bridge fuse 0 - 31V
 * 
 * InputReg2, 0 - 9          	H-bridge temperature	R/-		No/-			// H-bridge temperature 0 - 255 degrees Celsius
 * 
 * InputReg3, 0 - 9          	H-bridge current     	R/-		No/-			// H-bridge current A
 * 
 * InputReg5, 0 - 9          	                                           		// Spare
 * 
 * DiagnosticReg0, 0 - 15		Messages Received		R/-		No/-			// Slave register of messages Received to Master
 *
 * DiagnosticReg1, 0 - 15		Messages Sent			R/-		No/-			// Slave register of messages sent to Master
 *
 * 
 * -----------------------------CONFIG PARAMETERS------------------------------- 
 * 
 * HoldingReg2, 0 - 5			Amplifier ID			R/W		No/No           // Amplifier ID for Track amp 1 to 50. Backplane config modules have address 51 to 55 
 * HoldingReg2, 6				Single/Double PWM		R/W		No/No			// used in single or double sided PWM operation 0 is dual sided PWM, 1 is single sided PWM
 * HoldingReg2, 7
 *
 * HoldingReg3, 0 - 7           Acceleration par    	R/W     No/No			// Acceleration number 0 - 255
 * HoldingReg3, 8 - 15          Deceleration par    	R/W     No/No			// Deceleration number 0 - 255
 *
 *------------------------------------------------------------------------------
 *
 *
 *
 * Modbus Backplane Slave Data Register mapping(using the same amount of registers as the amplifier slaves):
 * 
 * Data register, bit(s)        Function            	R/W     Critical
 * 
 * -----------------------------RUNNING PARAMETERS------------------------------
 * 
 * HoldingReg0, 0               Slave 1  enable       		R/W     No/Yes			// Enable Slave 1  for configuring of ID
 * HoldingReg0, 1               Slave 2  enable       		R/W     No/Yes			// Enable Slave 2  for configuring of ID 
 * HoldingReg0, 2               Slave 3  enable       		R/W     No/Yes			// Enable Slave 3  for configuring of ID 
 * HoldingReg0, 3               Slave 4  enable       		R/W     No/Yes			// Enable Slave 4  for configuring of ID 
 * HoldingReg0, 4               Slave 5  enable       		R/W     No/Yes			// Enable Slave 5  for configuring of ID 
 * HoldingReg0, 5               Slave 6  enable       		R/W     No/Yes			// Enable Slave 6  for configuring of ID 
 * HoldingReg0, 6               Slave 7  enable       		R/W     No/Yes			// Enable Slave 7  for configuring of ID 
 * HoldingReg0, 7               Slave 8  enable       		R/W     No/Yes			// Enable Slave 8  for configuring of ID 
 * HoldingReg0, 8				Slave 9  enable       		R/W     No/Yes          // Enable Slave 9  for configuring of ID 
 * HoldingReg0, 9               Slave 10 enable       		R/W     No/Yes          // Enable Slave 10 for configuring of ID 
 * HoldingReg0, 10
 * HoldingReg0, 11
 * HoldingReg0, 12
 * HoldingReg0, 13
 * HoldingReg0, 14
 * HoldingReg0, 15
 * 
 * HoldingReg1, 0 
 * HoldingReg1, 1
 * HoldingReg1, 2 
 * HoldingReg1, 3 
 * HoldingReg1, 4 
 * HoldingReg1, 5 
 * HoldingReg1, 6 
 * HoldingReg1, 7 
 * HoldingReg1, 8 
 * HoldingReg1, 9 
 * HoldingReg1, 10              
 * HoldingReg1, 11 				Clear ConfigSlave status	R/W 	No/No			// Clear amplifier status
 * HoldingReg1, 12				Clear message buffer		R/W 	No/No			// Clear message buffer registers
 * HoldingReg1, 13
 * HoldingReg1, 14
 * HoldingReg1, 15				Reset ConfigSlave			R/W		No/No			// Execute an Amplifier reset().
 *
 * HoldingReg2, 0 - 5			ConfigSlave ID			    R/W		No/No           // ConfigSlave ID modules have fixed address 51 to 55 
 * HoldingReg2, 6				
 * HoldingReg2, 7
 * HoldingReg2, 8
 * HoldingReg2, 9
 * HoldingReg2, 10
 * HoldingReg2, 11
 * HoldingReg2, 12
 * HoldingReg2, 13
 * HoldingReg2, 14
 * HoldingReg2, 15
 *
 * HoldingReg3, 0 - 15			n.a.
 *
 * InputReg0, 0 - 15			n.a.
 *                                                  	
 * InputReg1, 0 - 4          	Vbus fuse status     		R/-	    No/-            // Voltage Vbus fuse 0 - 31V
 * InputReg1, 5 				ConfigSlave ID set		    R/-		No/-			// Indicates the ConfigSlave ID is set
 *
 * InputReg2, 0 - 15			n.a.
 *
 * InputReg3, 0 - 15			n.a.
 *
 * InputReg4, 0 - 15			n.a.
 *
 * DiagnosticReg0, 0 - 15		Messages Received			R/-		No/-			// Slave register of messages Received to Master
 *	
 * DiagnosticReg1, 0 - 15		Messages Sent				R/-		No/-			// Slave register of messages sent to Master
 * 	
 */