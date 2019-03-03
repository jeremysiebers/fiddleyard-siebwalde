from Enum import *
from Comm import DataAquisition, ModBusMasterReg
import time

class State:
    def __init__(self, amplifiers):
        self.RunInitSlave           = 0
        self.ProgramSlave           = 1
        self.ShiftSlot              = 0
        
        self.RunSlaveConfig         = 0
        
        self.EnableSlaveConfig      = 0
        
        self.RunResetAll            = 0
        
        self.Amplifiers             = amplifiers
        self.ModbusMaster           = ModBusMasterReg()
      
    def RunFunction(self, argument):
        function = getattr(self, argument, lambda: EnumStateMachine.nok)
        return function()
    
    ######################################################################################
    #
    # Reset the slaves at the beginning of communication because status is unknown...
    #
    ######################################################################################
    def ResetAllSlaves(self):
        '''
        case 0
        '''
        if(self.RunResetAll == 0):
            self.Amplifiers.WriteSerial(EnumCommand.ETHERNET_T, EnumEthernetT.ResetAll)
            self.RunResetAll += 1
            print("ResetAllSlaves --> reset all slaves sent... --> sleep 5 seconds")
            time.sleep(5)
            return EnumStateMachine.ok

        '''
        case 1
        '''
        if(self.RunResetAll == 1):
            if(self.Amplifiers.EthernetTarget.InputReg[0] == EnumEthernetT.OK):
                self.Amplifiers.WriteSerial(EnumCommand.ETHERNET_T, EnumEthernetT.IDLE)
                self.RunResetAll += 1
                print("ResetAllSlaves --> EthernetTarget.InputReg[0] == EnumEthernetT.OK --> sent goto to IDLE state")
                return EnumStateMachine.busy

        '''
        case 2
        '''
        if(self.RunResetAll == 2):
            if(self.Amplifiers.EthernetTarget.InputReg[0] == EnumEthernetT.IDLE):
                self.RunResetAll = 0
                print("ResetAllSlaves --> EthernetTarget.InputReg[0] == EnumEthernetT.IDLE --> return OK")
                return EnumStateMachine.ok
    
        return EnumStateMachine.busy    
    
    
    
    
    
    ######################################################################################
    #
    # config the track amplifiers
    #
    ######################################################################################    
    def InitTrackamplifiers(self):
        '''
        case 0
        '''
        if(self.RunInitSlave == 0):
            
            if(self.ProgramSlave > 10):
                print("RunInitSlave --> TRACKBACKPLANE1 finished.")
                self.RunInitSlave += 1
                self.ShiftSlot = 0
                return EnumStateMachine.busy
            
            elif(self.ConfigureSlave(EnumSlaveInit.TRACKBACKPLANE1, (EnumSlaveInit.SLOT1 << self.ShiftSlot), self.ProgramSlave, False) == EnumStateMachine.ok):
                print("RunInitSlave --> slave " + str(self.ProgramSlave) + " got initialized.\n\r\n\r")
                self.ShiftSlot    += 1 
                self.ProgramSlave += 1
                return EnumStateMachine.busy
        
        '''
        case 1
        '''
        if(self.RunInitSlave == 1):
            
            if(self.ProgramSlave > 20):
                print("RunInitSlave --> TRACKBACKPLANE2 finished.")
                self.RunInitSlave += 1
                self.ShiftSlot = 0
                return EnumStateMachine.busy
            
            elif(self.ConfigureSlave(EnumSlaveInit.TRACKBACKPLANE2, (EnumSlaveInit.SLOT1 << self.ShiftSlot), self.ProgramSlave, False) == EnumStateMachine.ok):
                print("RunInitSlave --> slave " + str(self.ProgramSlave) + " got initialized.\n\r\n\r")
                self.ShiftSlot    += 1 
                self.ProgramSlave += 1
                return EnumStateMachine.busy
        
        '''
        case 2
        '''        
        if(self.RunInitSlave == 2):
            
            if(self.ProgramSlave > 30):
                print("RunInitSlave --> TRACKBACKPLANE3 finished.")
                self.RunInitSlave += 1
                self.ShiftSlot = 0
                return EnumStateMachine.busy
            
            elif(self.ConfigureSlave(EnumSlaveInit.TRACKBACKPLANE3, (EnumSlaveInit.SLOT1 << self.ShiftSlot), self.ProgramSlave, False) == EnumStateMachine.ok):
                print("RunInitSlave --> slave " + str(self.ProgramSlave) + " got initialized.\n\r\n\r")
                self.ShiftSlot    += 1 
                self.ProgramSlave += 1
                return EnumStateMachine.busy
  
        '''
        case 3
        '''
        if(self.RunInitSlave == 3):
            
            if(self.ProgramSlave > 40):
                print("RunInitSlave --> TRACKBACKPLANE4 finished.")
                self.RunInitSlave += 1
                self.ShiftSlot = 0
                return EnumStateMachine.busy
            
            elif(self.ConfigureSlave(EnumSlaveInit.TRACKBACKPLANE4, (EnumSlaveInit.SLOT1 << self.ShiftSlot), self.ProgramSlave, False) == EnumStateMachine.ok):
                print("RunInitSlave --> slave " + str(self.ProgramSlave) + " got initialized.\n\r\n\r")
                self.ShiftSlot    += 1 
                self.ProgramSlave += 1
                return EnumStateMachine.busy
        
        '''
        case 4
        '''                        
        if(self.RunInitSlave == 4):
            
            if(self.ProgramSlave > 49):
                if(self.ConfigureSlave(EnumSlaveInit.TRACKBACKPLANE5, (EnumSlaveInit.SLOT1 << self.ShiftSlot), self.ProgramSlave, True) == EnumStateMachine.ok):
                    print("RunInitSlave --> slave " + str(self.ProgramSlave) + " got initialized.\n\r\n\r")
                    print("RunInitSlave --> TRACKBACKPLANE5 finished.")
                    self.RunInitSlave = 0
                    self.ShiftSlot = 0
                    return EnumStateMachine.ok
            
            elif(self.ConfigureSlave(EnumSlaveInit.TRACKBACKPLANE5, (EnumSlaveInit.SLOT1 << self.ShiftSlot), self.ProgramSlave, False) == EnumStateMachine.ok):
                print("RunInitSlave --> slave " + str(self.ProgramSlave) + " got initialized.\n\r\n\r")
                self.ShiftSlot    += 1 
                self.ProgramSlave += 1
                return EnumStateMachine.busy
            
        return EnumStateMachine.busy

   
    ######################################################################################
    #
    # configuration sequencer
    #
    ######################################################################################       
    def ConfigureSlave(self, TrackBackPlaneID, AmplifierLatchSet, TrackAmplifierId, Mode):
        
        '''
        case 0
        '''        
        if(self.RunSlaveConfig == 0):
            self.ModbusMaster.HoldingReg[1] = TrackBackPlaneID
            self.ModbusMaster.HoldingReg[2] = AmplifierLatchSet
            self.ModbusMaster.HoldingReg[3] = 0
            self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_MAN & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.EXEC
            self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
            self.RunSlaveConfig += 1
            print("RunSlaveConfig==0 --> TrackBackPlaneID: " + str(TrackBackPlaneID) + " AmplifierLatchSet: " + str(AmplifierLatchSet))
            return EnumStateMachine.busy
        
        '''
        case 1
        '''        
        if(self.RunSlaveConfig == 1):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.OK):
                print("RunSlaveConfig==1 --> EnumSlaveConfig.OK")
                self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_MAN & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.HALT
                self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
                self.RunSlaveConfig += 1
                return EnumStateMachine.busy
        
        '''
        case 2
        '''        
        if(self.RunSlaveConfig == 2):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.IDLE):
                print("RunSlaveConfig==2 --> EnumSlaveConfig.IDLE")
                self.RunSlaveConfig += 1
                return EnumStateMachine.busy
        
        
        '''
        case 3
        '''        
        if(self.RunSlaveConfig == 3):
            self.ModbusMaster.HoldingReg[1] = EnumSlaveInit.DEFAULTMODBUSADDR
            self.ModbusMaster.HoldingReg[2] = TrackAmplifierId
            self.ModbusMaster.HoldingReg[3] = 2
            self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_MAN & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.EXEC
            self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
            self.RunSlaveConfig += 1
            print("RunSlaveConfig==3 --> Set Amplifier ID: " + str(TrackAmplifierId))
            return EnumStateMachine.busy
        
        '''
        case 4
        '''        
        if(self.RunSlaveConfig == 4):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.OK):
                print("RunSlaveConfig==4 --> EnumSlaveConfig.OK")
                self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_MAN & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.HALT
                self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
                self.RunSlaveConfig += 1
                return EnumStateMachine.busy
        
        '''
        case 5
        '''        
        if(self.RunSlaveConfig == 5):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.IDLE):
                print("RunSlaveConfig==5 --> EnumSlaveConfig.IDLE")
                self.RunSlaveConfig += 1
                return EnumStateMachine.busy        
        
        
        '''
        case 6
        '''        
        if(self.RunSlaveConfig == 6):
            self.ModbusMaster.HoldingReg[1] = TrackBackPlaneID
            self.ModbusMaster.HoldingReg[2] = 0xFFFF;
            self.ModbusMaster.HoldingReg[3] = 0
            self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_MAN & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.EXEC
            self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
            self.RunSlaveConfig += 1
            print("RunSlaveConfig==6 --> TrackBackPlaneID: " + str(TrackBackPlaneID) + " AmplifierLatchSet: Release amplifier select line")
            return EnumStateMachine.busy
        
        '''
        case 7
        '''        
        if(self.RunSlaveConfig == 7):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.OK):
                print("RunSlaveConfig==7 --> EnumSlaveConfig.OK")
                self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_MAN & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.HALT
                self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
                self.RunSlaveConfig += 1
                return EnumStateMachine.busy
        
        '''
        case 8
        '''        
        if(self.RunSlaveConfig == 8):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.IDLE):
                print("RunSlaveConfig==8 --> EnumSlaveConfig.IDLE")
                if(Mode == True):
                    self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_AUTO & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.HALT
                self.RunSlaveConfig = 0
                return EnumStateMachine.ok        
            
        return EnumStateMachine.busy
    
    
    ######################################################################################
    #
    # Enable the track amplifiers
    #
    ######################################################################################    
    def EnableTrackamplifiers(self):
        
        '''
        case 0
        '''        
        if(self.EnableSlaveConfig == 0):
            self.ModbusMaster.HoldingReg[1] = 0
            self.ModbusMaster.HoldingReg[2] = 0x8000
            self.ModbusMaster.HoldingReg[3] = 1
            self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_AUTO & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.EXEC
            self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
            self.EnableSlaveConfig += 1
            print("EnableSlaveConfig==0 --> Set all amplifiers enabled")
            return EnumStateMachine.busy
        
        '''
        case 1
        '''        
        if(self.EnableSlaveConfig == 1):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.OK):
                print("EnableSlaveConfig==1 --> EnumSlaveConfig.OK")
                self.ModbusMaster.HoldingReg[0] = EnumSlaveConfig.MODE_AUTO & EnumSlaveConfig.WRITE & EnumSlaveConfig.HOLDINGREG & EnumSlaveConfig.HALT
                self.Amplifiers.WriteSerial(EnumCommand.MODBUS, self.ModbusMaster)
                self.EnableSlaveConfig += 1
                return EnumStateMachine.busy
        
        '''
        case 2
        '''        
        if(self.EnableSlaveConfig == 2):
            if(self.Amplifiers.Trackamplifiers[0].InputReg[0] == EnumSlaveConfig.IDLE):
                print("EnableSlaveConfig==2 --> EnumSlaveConfig.IDLE")
                print("EnableSlaveConfig --> done \n\r\n\r")
                self.EnableSlaveConfig = 0
                return EnumStateMachine.ok        
    
        return EnumStateMachine.busy
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    def check_sw_version(self):
        print("Check SW version called")
        return e.ok