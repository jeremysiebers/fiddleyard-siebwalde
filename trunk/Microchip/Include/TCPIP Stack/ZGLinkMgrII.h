/******************************************************************************

 ZG2100 Driver daemon like task that directs calls to the ZG Library using a
   selected state machine table.   This daemon is agnostic to how the table is
   built.  The daemon will select it's next state using a runtime next_callback
   or a statically ( in the table ) defined next_callback.
 Module for Microchip TCP/IP Stack

*******************************************************************************
 FileName:		ZGLinkMgrII.h
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
 SG					12/12/08
******************************************************************************/
#ifndef _ZGLINKMGRII_H_
#define _ZGLINKMGRII_H_

#include "HardwareProfile.h"
#include "TCPIP Stack/TCPIP.h"
#include "TCPIPConfig.h"

#include "TCPIP Stack/ZGDriverTypes.h"
#include "TCPIP Stack/ZGDriverConstants.h"
#include "TCPIP Stack/ZGDriverIfaceApp.h"
#include "TCPIP Stack/ZGLibIface.h"
#include "TCPIP Stack/ZGLibCfg.h"

typedef enum
{

#if !defined (ZG_CONFIG_NO_WIFIMGRII)
    kZGLMNetworkModeInfrastructure,
#endif

#if !defined (ZG_CONFIG_NO_ADHOCMGRII)
    kZGLMNetworkModeAdhoc,
#endif

    kZGLMNetworkModeIdle

} tZGLMNetworkMode;


#if defined(ZG_CONFIG_LINKMGRII)

#include "TCPIP Stack/ZGFSMStates.h"

#define FSM_STATE( A , B , C, D, E, F )   \
  { ZG_LIB_FUNC( A ), ZG_REQ_FUNC( B ), ZG_COMP_FUNC( C ), ZG_NEXT_FUNC( D ), E, F }

#define ZG_MAX_SCAN_LIST        40

typedef struct __state {
  tDispatchZGLib                zg_library_func;
  tDispatchRequest              request_func;
  tDispatchComplete             complete_func;
  tDispatchNext                 next_state_func;
  enum tFSMValidStates          next_success;
  enum tFSMValidStates          next_fail;
} tFSMState;

typedef struct {
   tZGLMNetworkMode             currentMode;
   enum tFSMValidStates         currentState;
   enum tFSMStateStatus         stateStatus;
   tZGBool                      bSilent;
} tFSM;

typedef struct {
  tFSM                   FSM;
  ROM tFSMState*   FSMSelector;

  tZGLMNetworkMode nextMode;

  tZGBssDesc      bssDesc;
  tZGU32          selectedBSS;
  tZGBool         bRetryBSSConnect;
  tZGU8           nRetryBSSConnect;
  tZGU8           nScanRetryState;
  tZGU8           nJoinRetryState;
  tZGU8           nAssocRetryState;
  tZGU8           nAuthRetryState;
  tZGU8           patchVersion;
  tZGU8           romVersion;
  tZGU8           capInfo[2];
  tZGU16          securityInfo[2];
  tZGBool         bConnLost;
  tZGBool         bConnFound;
  tZGBool         bConnected;
//  tZGBool         bScanInProgress;
  tZGU8           scanStatus;
  tZGU8           scanCurrentChanIdx;
  tZGBool         bUnfilteredScan;
#if defined ( EZ_CONFIG_SCAN )
  tZGU32          scanTime;  /* Time stamp for channel scan */
//  tZGBool         bUserScanInProgress; /* App initiated scan */
  tZGU8           scanListCount;
  tZGBssDesc      scanList[ZG_MAX_SCAN_LIST];
#endif /* EZ_CONFIG_SCAN */
} tZGLinkMgrCtx;

extern tZGLinkMgrCtx g_linkMgrCtx;
#define APPCXT	(g_linkMgrCtx)

#define ZG_SET_MODE(x)      ZGLinkMgrSetMode(x)
#define ZG_GET_MODE()       ZGLinkMgrGetMode()
#define ZG_SETNEXT_MODE(x)  ZGLinkMgrSetNextMode(x)
#define ZG_GETNEXT_MODE()   ZGLinkMgrGetNextMode()
#define ZG_IS_CONNECTED()   ZGLinkMgrIsConnected()

#define TIME_BETWEEN_SCAN  (1 * TICKS_PER_SECOND / 10)  /* In ms units */
/* Scan Status definitions */
#define SCAN_IN_PROGRESS       0x01
#define USER_SCAN_IN_PROGRESS  0x02  /* Flag for user initiated scan, differentiate from state machine scan */
#define SCAN_INPROGRESS_MASK   (SCAN_IN_PROGRESS | USER_SCAN_IN_PROGRESS)
/* Scan utility macros */
#define IS_SCAN_INPROGRESS(x)        ((x) & SCAN_IN_PROGRESS)
#define IS_USER_SCAN_INPROGRESS(x)   ((x) & USER_SCAN_IN_PROGRESS)
#define IS_ANY_SCAN_INPROGRESS(x)    ((x) & SCAN_INPROGRESS_MASK)
#define SET_SCAN_INPROGRESS(x)       ((x) |= SCAN_IN_PROGRESS)
#define SET_USER_SCAN_INPROGRESS(x)  ((x) |= USER_SCAN_IN_PROGRESS)
#define CLEAR_SCAN_INPROGRESS(x)     ((x) &= ~SCAN_IN_PROGRESS)
#define CLEAR_USER_SCAN_INPROGRESS(x)((x) &= ~USER_SCAN_IN_PROGRESS)

extern tZGVoidReturn
ZGLinkMgrInit( tZGVoidInput );

extern tZGVoidReturn
ZGLinkMgr( tZGVoidInput );

extern tZGLMNetworkMode
ZGLinkMgrGetMode( tZGVoidInput );

extern tZGVoidReturn
ZGLinkMgrSetMode( tZGLMNetworkMode mode );

extern tZGVoidReturn
ZGLinkMgrSetNextMode( tZGLMNetworkMode mode );

extern tZGLMNetworkMode
ZGLinkMgrGetNextMode( tZGVoidInput );

extern tZGBool
ZGLinkMgrIsConnected( tZGVoidInput );


#else

#define ZG_SET_MODE(x)
#define ZG_GET_MODE()       kZGLMNetworkModeIdle
#define ZG_SETNEXT_MODE(x)
#define ZG_GETNEXT_MODE()
#define ZG_IS_CONNECTED()   kZGBoolFalse

#endif

#endif /* _ZGLINKMGRII_H_ */
