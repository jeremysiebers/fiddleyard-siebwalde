/******************************************************************************

 ZG2100 Text Control Console: Shared #defines and typedefs between PC app and 
   Host Bridge
 Module for Microchip TCP/IP Stack

*******************************************************************************
 FileName:		ZGConsoleShared.h
 Dependencies:	None
 Processor:		PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 Compiler:		Microchip C32 v1.10b or higher
				Microchip C30 v3.22 or higher
				Microchip C18 v3.34 or higher
 Company:		Microchip Technology, Inc.

 Software License Agreement

 Copyright (C) 2002-2010 Microchip Technology Inc.  All rights reserved.

 Microchip licenses to you the right to use, modify, copy, and distribute:
 (i)  the Software when embedded on a Microchip microcontroller or digital 
      signal controller product ("Device") which is integrated into 
      Licensee's product; or
 (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
      ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device used in 
	  conjunction with a Microchip ethernet controller for the sole purpose 
	  of interfacing with the ethernet controller.

 You should refer to the license agreement accompanying this Software for 
 additional information regarding your rights and obligations.

 THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND
 NON-INFRINGEMENT. IN NO EVENT SHALL MICROCHIP BE LIABLE FOR ANY INCIDENTAL,
 SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST
 OF PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS BY
 THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), ANY CLAIMS
 FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS, WHETHER ASSERTED ON
 THE BASIS OF CONTRACT, TORT (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR
 OTHERWISE.


 Author				Date		Comment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 Ken Hesky			02/21/08	Original
******************************************************************************/
#ifndef __ZG_CONSOLE_SHARED_H
#define __ZG_CONSOLE_SHARED_H

#ifdef __cplusplus
 extern "C" {
#endif

//-----------------------
// Library Version Number
//-----------------------
#define  kZGHostBridgeMajorVersionNumber        (0)
#define  kZGHostBridgeMinorVersionNumber        (1)
#define  kZGHostBridgeRevisionVersionNumber     (0)

#define  kZSuccess                       (1)
#define  kZGVersionMismatchError         (2)   /* This header file does not match what library was     */
                                               /*   built with                                         */
#define  kZInvalidRfChannelError         (40)  /* invalid RF channel                                   */
#define  kZGInvalidEnableParamError      (41)  /* invalid enable parameter in function call            */
#define  kZGInvalidDomainError           (42)  /* invalid domain                                       */
#define  kZGInvalidDbmError              (43)  /* whole unit dBm value invalid                         */
#define  kZGInvalidQuarterDbmError       (44)  /* quarter dBm value invalid                            */
#define  kZGInvalidTxDataRateError       (45)  /* invalid tx data rate                                 */
#define  kZGInvalidModeError             (46)  /* invalid mode                                         */
#define  kZGInvalidPacketSizeError       (47)  /* invalid packet size                                  */
#define  kZGInvalidPreambleTypeError     (48)  /* invalid preamble type                                */
#define  kZGInvalidScramblerError        (49)
#define  kZGInvalidWaitForAckError       (50)


//--------------------------------
// #defines for tZGTxConfig struct
//--------------------------------
// Whole dBm range
#define kZGMinDbmValue          (-128)
#define kZGMaxDbmValue          (127)

// Quarter dBm defines
#define kZGZeroQuartersDbm      (0)
#define kZGOneQuartersDbm       (1)
#define kZGTwoQuartersDbm       (2)
#define kZGThreeQuartersDbm     (3)

// RF enable/disable
#define kZGEnableRF             kZGBoolTrue
#define kZGDisableRF            kZGBoolFalse

// rate
#define kZGOneMbitRate          (0)
#define kZGTwoMbitRate          (1)

// preamble
#define kZGShortPreamble        (0)
#define kZGLongPreamble         (1)

// packet size
#define kZGMinPacketSize        (1)
#define kZGMaxPacketSize        (2000)

// scrambler
#define kZGScramblerOff         (0)
#define kZGScramblerOn          (1)

// chan number
#define kZGMinChanNum           (1)
#define kZGMaxChanNum           (14)


#define kZGContinuousTransmit   (0)

// Domain Codes
 enum Domain
{
    kZGDomainFCC = 0,
    kZGDomainIC,
    kZGDomainETSI,
    kZGDomainSPAIN,
    kZGDomainFRANCE,
    kZGDomainJAPANA,
    kZGDomainJAPANB,
};

//---------------------------------------
// end of #defines for tZGTxConfig struct
//---------------------------------------


// structure used in ZGSetTxConfig()
typedef struct tZGTxFrameConfig_Struct
{
   tZGU8   chanNum;
   tZGS8   dBm;             // -128 to 127
   tZGU8   quarterdBm;      // 0=0.00, 1=0.25, 2=0.50, 3=0.75
   tZGU8   rate;            // kZGOneMbitRate or kZGTwoMbitRate
   tZGU16  numDataBytes;    // ZGMinTxPacketSize:ZGMaxTxPacketSize
   tZGU8   bitPattern;
   tZGU8   preambleType;    // kZGShortPreamble or kZGLongPreamble
   tZGU8   scrambler;       // kZGScramblerOn or kZGScramblerOff
   tZGBool waitForAck;      // kZGBoolTrue or kZGBoolFalse
   tZGU16  gapTime;
   tZGU16  packetCount;

} tZGTxConfig;

// structure used in ZGSetRxConfig()
typedef struct tZGRxFrameConfig_Struct
{
   tZGU8   chanNum;
   tZGU8   powerMode;
   tZGBool sendAck;

} tZGRxConfig;




#ifdef __cplusplus
 }
#endif

#endif /* __ZG_CONSOLE_SHARED_H */
