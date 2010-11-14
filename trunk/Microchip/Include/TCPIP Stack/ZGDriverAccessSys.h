/******************************************************************************

 ZG2100 Driver Access Header file to the System Services.
 Module for Microchip TCP/IP Stack

*******************************************************************************
 FileName:		ZGDriverAccessSys.h
 Dependencies:	TCP/IP Stack header files
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
 Zero G				Sep 2008	Initial version
 KO					31 Oct 2008	Port to PIC24F and PIC32 for TCP/IP stack v4.52
******************************************************************************/
#ifndef _ZGDRIVERACCESSSYS_H_
#define _ZGDRIVERACCESSSYS_H_


/* In this sample ZGAccessSys.h contains the prototypes for all the
 * functions used to populate the MACROS below. */
#include "TCPIP Stack/ZGAccessSys.h"


/*****************************************************************************/
/* ZGSYS_SIGNAL_... macros used by the ZG driver to manage the signal
 *  mechanism. */
/* FIXME: finish this comment */
/*****************************************************************************/

/* ZGSYS_SIGNAL_WAIT - */
/* FIXME: Finish this comment */
/* DEFINITION - */
#define ZGSYS_SIGNAL_WAIT() ((sig == kZGSignalExit)? kZGSignalContinue : kZGSignalExit)/* this application is single threaded */

/* ZGSYS_SIGNAL_SET - */
/* FIXME: Finish this comment */
/* DEFINITION - tZGVoidReturn FunctionName(tZGVoidInput) */
#define ZGSYS_SIGNAL_SET()  /* NOT USED - this application is single threaded */


#endif /*_ZGDRIVERACCESSSYS_H_ */
