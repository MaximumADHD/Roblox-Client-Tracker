PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["_requestHandlerAbortControllers"]
        7 GETTABLEKS                       R3 R0 K0 ["params"]
        9 GETTABLEKS                       R3 R3 K2 ["requestId"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETTABLEKS                       R4 R0 K0 ["params"]
       15 GETTABLEKS                       R4 R4 K3 ["reason"]
       17 NAMECALL                         R2 R1 K4 ["abort"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onprogress"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 MOVE                             R2 R0
        9 JUMPIF                           R2 ; [+2]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K2 ["_options"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K3 ["_transport"]
       17 LOADN                            R2 0
       18 SETTABLEKS                       R2 R1 K4 ["_requestMessageId"]
       20 NEWTABLE                         R2 0 0
       22 SETTABLEKS                       R2 R1 K5 ["_requestHandlers"]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K6 ["_requestHandlerAbortControllers"]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K7 ["_notificationHandlers"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K8 ["_responseHandlers"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K9 ["_progressHandlers"]
       40 NEWTABLE                         R2 0 0
       42 SETTABLEKS                       R2 R1 K10 ["_timeoutInfo"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K11 ["new"]
       47 CALL                             R2 0 1
       48 SETTABLEKS                       R2 R1 K12 ["onProtocolClose"]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K11 ["new"]
       53 CALL                             R2 0 1
       54 SETTABLEKS                       R2 R1 K13 ["onProtocolError"]
       56 LOADNIL                          R2
       57 SETTABLEKS                       R2 R1 K14 ["fallbackRequestHandler"]
       59 LOADNIL                          R2
       60 SETTABLEKS                       R2 R1 K15 ["fallbackNotificationHandler"]
       62 LOADK                            R4 K16 ["notifications/cancelled"]
       63 NEWCLOSURE                       R5 P0
       64 CAPTURE                          VAL R1
       65 NAMECALL                         R2 R1 K17 ["_setNotificationHandlerInternal"]
       67 CALL                             R2 3 0
       68 LOADK                            R4 K18 ["notifications/progress"]
       69 NEWCLOSURE                       R5 P1
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R2 R1 K17 ["_setNotificationHandlerInternal"]
       73 CALL                             R2 3 0
       74 LOADK                            R4 K19 ["ping"]
       75 DUPCLOSURE                       R5 K20 [PROTO_2]
       76 NAMECALL                         R2 R1 K21 ["_setRequestHandlerInternal"]
       78 CALL                             R2 3 0
       79 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R6 K2 [task.delay]
        2 DIVK                             R7 R2 K3 [1000]
        3 MOVE                             R8 R4
        4 CALL                             R6 2 1
        5 GETTABLEKS                       R7 R0 K4 ["_timeoutInfo"]
        7 DUPTABLE                         R8 K11 [{"timeoutId", "startTime", "timeout", "maxTotalTimeout", "resetTimeoutOnProgress", "onTimeout"}]
        8 SETTABLEKS                       R6 R8 K5 ["timeoutId"]
       10 GETIMPORT                        R9 K14 [os.clock]
       12 CALL                             R9 0 1
       13 SETTABLEKS                       R9 R8 K6 ["startTime"]
       15 DIVK                             R9 R2 K3 [1000]
       16 SETTABLEKS                       R9 R8 K7 ["timeout"]
       18 MOVE                             R9 R3
       19 JUMPIFNOT                        R9 ; [+1]
       20 DIVK                             R9 R3 K3 [1000]
       21 SETTABLEKS                       R9 R8 K8 ["maxTotalTimeout"]
       23 ORK                              R9 R5 K15 [False]
       24 SETTABLEKS                       R9 R8 K9 ["resetTimeoutOnProgress"]
       26 SETTABLEKS                       R4 R8 K10 ["onTimeout"]
       28 SETTABLE                         R8 R7 R1
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_timeoutInfo"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 GETIMPORT                        R4 K3 [os.clock]
        8 CALL                             R4 0 1
        9 GETTABLEKS                       R5 R2 K4 ["startTime"]
       11 SUB                              R3 R4 R5
       12 GETTABLEKS                       R4 R2 K5 ["maxTotalTimeout"]
       14 JUMPIFNOT                        R4 ; [+31]
       15 GETTABLEKS                       R4 R2 K5 ["maxTotalTimeout"]
       17 JUMPIFNOTLE                      R4 R3 ; [+28]
       19 GETTABLEKS                       R4 R0 K0 ["_timeoutInfo"]
       21 LOADNIL                          R5
       22 SETTABLE                         R5 R4 R1
       23 DUPTABLE                         R4 K7 [{"maxTotalTimeout", "totalElapsed"}]
       24 GETTABLEKS                       R6 R2 K5 ["maxTotalTimeout"]
       26 MULK                             R5 R6 K8 [1000]
       27 SETTABLEKS                       R5 R4 K5 ["maxTotalTimeout"]
       29 MULK                             R5 R3 K8 [1000]
       30 SETTABLEKS                       R5 R4 K6 ["totalElapsed"]
       32 GETIMPORT                        R5 K10 [error]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K11 ["newMcpError"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K12 ["ErrorCode"]
       40 GETTABLEKS                       R7 R7 K13 ["RequestTimeout"]
       42 LOADK                            R8 K14 ["Maximum total timeout exceeded"]
       43 MOVE                             R9 R4
       44 CALL                             R6 3 -1
       45 CALL                             R5 -1 0
       46 GETIMPORT                        R4 K17 [task.cancel]
       48 GETTABLEKS                       R5 R2 K18 ["timeoutId"]
       50 CALL                             R4 1 0
       51 GETIMPORT                        R4 K20 [task.delay]
       53 GETTABLEKS                       R5 R2 K21 ["timeout"]
       55 GETTABLEKS                       R6 R2 K22 ["onTimeout"]
       57 CALL                             R4 2 1
       58 SETTABLEKS                       R4 R2 K18 ["timeoutId"]
       60 LOADB                            R4 1
       61 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_timeoutInfo"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+16]
        4 GETTABLEKS                       R3 R2 K1 ["timeoutId"]
        6 GETIMPORT                        R4 K4 [coroutine.running]
        8 CALL                             R4 0 1
        9 JUMPIFEQ                         R3 R4 ; [+6]
       11 GETIMPORT                        R3 K7 [task.cancel]
       13 GETTABLEKS                       R4 R2 K1 ["timeoutId"]
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R0 K0 ["_timeoutInfo"]
       18 LOADNIL                          R4
       19 SETTABLE                         R4 R3 R1
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onclose"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onerror"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onmessage"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["_transport"]
        2 GETTABLEKS                       R4 R0 K0 ["_transport"]
        4 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        6 LOADK                            R5 K1 ["Transport must be initialized."]
        7 GETIMPORT                        R3 K3 [assert]
        9 CALL                             R3 2 0
       10 GETTABLEKS                       R3 R0 K0 ["_transport"]
       12 GETTABLEKS                       R3 R3 K4 ["onTransportClose"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R3 R3 K5 ["Connect"]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R3 R0 K0 ["_transport"]
       21 GETTABLEKS                       R3 R3 K6 ["onTransportError"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R3 R3 K5 ["Connect"]
       27 CALL                             R3 2 0
       28 GETTABLEKS                       R3 R0 K0 ["_transport"]
       30 GETTABLEKS                       R3 R3 K7 ["onTransportMessage"]
       32 NEWCLOSURE                       R5 P2
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R3 R3 K5 ["Connect"]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R0 K0 ["_transport"]
       39 GETTABLEKS                       R3 R3 K8 ["start"]
       41 CALL                             R3 0 -1
       42 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onProtocolError"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_responseHandlers"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 MOVE                             R8 R4
        7 NAMECALL                         R6 R0 K3 ["_cleanupTimeout"]
        9 CALL                             R6 2 0
       10 DUPTABLE                         R6 K7 [{"id", "jsonrpc", "error"}]
       11 SETTABLEKS                       R4 R6 K4 ["id"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K8 ["JSONRPC_VERSION"]
       16 SETTABLEKS                       R7 R6 K5 ["jsonrpc"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K9 ["newMcpError"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K10 ["ErrorCode"]
       24 GETTABLEKS                       R8 R8 K11 ["ConnectionClosed"]
       26 LOADK                            R9 K12 ["Connection closed"]
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K6 ["error"]
       30 MOVE                             R7 R5
       31 MOVE                             R8 R6
       32 CALL                             R7 1 0
       33 FORGLOOP                         R1 2 ; [-28]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K2 ["_responseHandlers"]
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K13 ["_progressHandlers"]
       43 NEWTABLE                         R1 0 0
       45 SETTABLEKS                       R1 R0 K14 ["_requestHandlerAbortControllers"]
       47 NEWTABLE                         R1 0 0
       49 SETTABLEKS                       R1 R0 K15 ["_timeoutInfo"]
       51 GETTABLEKS                       R1 R0 K16 ["_transport"]
       53 LOADNIL                          R2
       54 SETTABLEKS                       R2 R0 K16 ["_transport"]
       56 GETTABLEKS                       R2 R0 K17 ["onProtocolClose"]
       58 NAMECALL                         R2 R2 K18 ["Fire"]
       60 CALL                             R2 1 0
       61 JUMPIFNOT                        R1 ; [+8]
       62 GETTABLEKS                       R2 R1 K19 ["close"]
       64 CALL                             R2 0 1
       65 NEWCLOSURE                       R4 P0
       66 CAPTURE                          VAL R0
       67 NAMECALL                         R2 R2 K20 ["catch"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["onProtocolError"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fieldExists"]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["id"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["fieldExists"]
        9 MOVE                             R4 R1
       10 LOADK                            R5 K2 ["method"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+6]
       13 JUMPIFNOT                        R2 ; [+5]
       14 MOVE                             R6 R1
       15 NAMECALL                         R4 R0 K3 ["_onrequest"]
       17 CALL                             R4 2 0
       18 RETURN                           R0 0
       19 JUMPIFNOT                        R3 ; [+5]
       20 MOVE                             R6 R1
       21 NAMECALL                         R4 R0 K4 ["_onnotification"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0
       25 JUMPIFNOT                        R2 ; [+5]
       26 MOVE                             R6 R1
       27 NAMECALL                         R4 R0 K5 ["_onresponse"]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K6 ["newMcpError"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K7 ["ErrorCode"]
       37 GETTABLEKS                       R7 R7 K8 ["ParseError"]
       39 LOADK                            R8 K9 ["Invalid message received"]
       40 MOVE                             R9 R1
       41 CALL                             R6 3 -1
       42 NAMECALL                         R4 R0 K10 ["_onerror"]
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["method"]
        2 JUMPIFNOTEQKS                    R2 K1 ["notifications/progress"] ; [+6]
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R0 K2 ["_onprogress"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R0 K3 ["_notificationHandlers"]
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+11]
       13 GETIMPORT                        R4 K5 [pcall]
       15 MOVE                             R5 R3
       16 MOVE                             R6 R1
       17 CALL                             R4 2 2
       18 JUMPIF                           R4 ; [+19]
       19 MOVE                             R8 R5
       20 NAMECALL                         R6 R0 K6 ["_onerror"]
       22 CALL                             R6 2 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R0 K7 ["fallbackNotificationHandler"]
       26 JUMPIFNOT                        R4 ; [+11]
       27 GETIMPORT                        R4 K5 [pcall]
       29 GETTABLEKS                       R5 R0 K7 ["fallbackNotificationHandler"]
       31 MOVE                             R6 R1
       32 CALL                             R4 2 2
       33 JUMPIF                           R4 ; [+4]
       34 MOVE                             R8 R5
       35 NAMECALL                         R6 R0 K6 ["_onerror"]
       37 CALL                             R6 2 0
       38 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["assertRequestHandlerCapability"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fallbackRequestHandler"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_18:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["aborted"]
        3 ORK                              R2 R1 K1 ["Aborted"]
        4 SETTABLEKS                       R2 R0 K2 ["reason"]
        6 GETTABLEKS                       R2 R0 K3 ["abortSignal"]
        8 GETTABLEKS                       R4 R0 K2 ["reason"]
       10 NAMECALL                         R2 R2 K4 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"relatedRequestId"}]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R5 R4 K0 ["relatedRequestId"]
        6 NAMECALL                         R1 R1 K2 ["notification"]
        8 CALL                             R1 3 -1
        9 RETURN                           R1 -1

PROTO_20:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R2
        3 JUMPIF                           R4 ; [+2]
        4 NEWTABLE                         R4 0 0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 0
        8 SETTABLEKS                       R4 R3 K3 ["relatedRequestId"]
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R3
       13 NAMECALL                         R4 R4 K4 ["request"]
       15 CALL                             R4 3 -1
       16 RETURN                           R4 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"method", "params"}]
        2 LOADK                            R4 K3 ["notifications/progress"]
        3 SETTABLEKS                       R4 R3 K0 ["method"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K4 ["join"]
        8 MOVE                             R5 R0
        9 DUPTABLE                         R6 K6 [{"progressToken"}]
       10 GETUPVAL                         R7 2
       11 SETTABLEKS                       R7 R6 K5 ["progressToken"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K1 ["params"]
       16 DUPTABLE                         R4 K8 [{"relatedRequestId"}]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K7 ["relatedRequestId"]
       20 NAMECALL                         R1 R1 K9 ["notification"]
       22 CALL                             R1 3 -1
       23 RETURN                           R1 -1

PROTO_22:
        0 NEWTABLE                         R2 0 1
        2 GETIMPORT                        R3 K1 [pcall]
        4 GETUPVAL                         R4 0
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 2
        7 CALL                             R3 3 -1
        8 SETLIST                          R2 R3 -1 [1]
       10 GETIMPORT                        R3 K4 [table.remove]
       12 MOVE                             R4 R2
       13 LOADN                            R5 1
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+20]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K5 ["is"]
       19 GETTABLEN                        R5 R2 1
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+7]
       22 GETTABLEN                        R4 R2 1
       23 MOVE                             R6 R0
       24 MOVE                             R7 R1
       25 NAMECALL                         R4 R4 K6 ["andThen"]
       27 CALL                             R4 3 0
       28 JUMP                             ; [+7]
       29 MOVE                             R4 R0
       30 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       31 MOVE                             R6 R2
       32 GETIMPORT                        R5 K8 [unpack]
       34 CALL                             R5 1 -1
       35 CALL                             R4 -1 0
       36 MOVE                             R4 R1
       37 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       38 MOVE                             R6 R2
       39 GETIMPORT                        R5 K8 [unpack]
       41 CALL                             R5 1 -1
       42 CALL                             R4 -1 0
       43 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_requestHandlerAbortControllers"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 DUPTABLE                         R1 K4 [{"jsonrpc", "id", "result"}]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K5 ["JSONRPC_VERSION"]
       10 SETTABLEKS                       R2 R1 K1 ["jsonrpc"]
       12 GETUPVAL                         R2 1
       13 SETTABLEKS                       R2 R1 K2 ["id"]
       15 MOVE                             R2 R0
       16 JUMPIF                           R2 ; [+2]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K3 ["result"]
       21 GETUPVAL                         R2 0
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K6 ["sendResponse"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_requestHandlerAbortControllers"]
        3 GETUPVAL                         R2 1
        4 LOADNIL                          R3
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["ErrorCode"]
        9 GETTABLEKS                       R1 R1 K2 ["InternalError"]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K4 [tostring]
       15 CALL                             R2 1 1
       16 LOADNIL                          R3
       17 FASTCALL1                        TYPE R0 ; [+3]
       18 MOVE                             R5 R0
       19 GETIMPORT                        R4 K6 [type]
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+7]
       24 GETTABLEKS                       R1 R0 K8 ["code"]
       26 GETTABLEKS                       R2 R0 K9 ["message"]
       28 GETTABLEKS                       R3 R0 K10 ["data"]
       30 DUPTABLE                         R4 K14 [{"jsonrpc", "id", "error"}]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K15 ["JSONRPC_VERSION"]
       34 SETTABLEKS                       R5 R4 K11 ["jsonrpc"]
       36 GETUPVAL                         R5 1
       37 SETTABLEKS                       R5 R4 K12 ["id"]
       39 DUPTABLE                         R5 K16 [{"code", "message", "data"}]
       40 SETTABLEKS                       R1 R5 K8 ["code"]
       42 SETTABLEKS                       R2 R5 K9 ["message"]
       44 SETTABLEKS                       R3 R5 K10 ["data"]
       46 SETTABLEKS                       R5 R4 K13 ["error"]
       48 GETUPVAL                         R5 0
       49 MOVE                             R7 R4
       50 NAMECALL                         R5 R5 K17 ["sendResponse"]
       52 CALL                             R5 2 0
       53 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onerror"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R1 K0 ["method"]
        2 GETTABLEKS                       R3 R1 K1 ["id"]
        4 FASTCALL2K                       ASSERT R3 K2 ; [+5]
        6 MOVE                             R5 R3
        7 LOADK                            R6 K2 ["Request ID is required."]
        8 GETIMPORT                        R4 K4 [assert]
       10 CALL                             R4 2 0
       11 GETTABLEKS                       R5 R0 K5 ["_requestHandlers"]
       13 GETTABLE                         R4 R5 R2
       14 GETIMPORT                        R5 K7 [pcall]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CALL                             R5 1 2
       20 JUMPIF                           R5 ; [+33]
       21 DUPTABLE                         R7 K10 [{"jsonrpc", "id", "error"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K11 ["JSONRPC_VERSION"]
       25 SETTABLEKS                       R8 R7 K8 ["jsonrpc"]
       27 SETTABLEKS                       R3 R7 K1 ["id"]
       29 DUPTABLE                         R8 K14 [{"code", "message"}]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K15 ["ErrorCode"]
       33 GETTABLEKS                       R9 R9 K16 ["MethodNotFound"]
       35 SETTABLEKS                       R9 R8 K12 ["code"]
       37 LOADK                            R10 K17 ["Handler capability check failed: "]
       38 FASTCALL1                        TOSTRING R6 ; [+3]
       39 MOVE                             R12 R6
       40 GETIMPORT                        R11 K19 [tostring]
       42 CALL                             R11 1 1
       43 CONCAT                           R9 R10 R11
       44 SETTABLEKS                       R9 R8 K13 ["message"]
       46 SETTABLEKS                       R8 R7 K9 ["error"]
       48 MOVE                             R10 R7
       49 NAMECALL                         R8 R0 K20 ["sendResponse"]
       51 CALL                             R8 2 0
       52 CLOSEUPVALS                      R4
       53 RETURN                           R0 0
       54 JUMPIF                           R4 ; [+5]
       55 GETTABLEKS                       R7 R0 K21 ["fallbackRequestHandler"]
       57 JUMPIFNOT                        R7 ; [+2]
       58 NEWCLOSURE                       R4 P1
       59 CAPTURE                          VAL R0
       60 JUMPIF                           R4 ; [+31]
       61 DUPTABLE                         R7 K10 [{"jsonrpc", "id", "error"}]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K11 ["JSONRPC_VERSION"]
       65 SETTABLEKS                       R8 R7 K8 ["jsonrpc"]
       67 SETTABLEKS                       R3 R7 K1 ["id"]
       69 DUPTABLE                         R8 K14 [{"code", "message"}]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K15 ["ErrorCode"]
       73 GETTABLEKS                       R9 R9 K16 ["MethodNotFound"]
       75 SETTABLEKS                       R9 R8 K12 ["code"]
       77 LOADK                            R9 K22 ["Method '%s' not found"]
       78 MOVE                             R11 R2
       79 NAMECALL                         R9 R9 K23 ["format"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K13 ["message"]
       84 SETTABLEKS                       R8 R7 K9 ["error"]
       86 MOVE                             R10 R7
       87 NAMECALL                         R8 R0 K20 ["sendResponse"]
       89 CALL                             R8 2 0
       90 CLOSEUPVALS                      R4
       91 RETURN                           R0 0
       92 DUPTABLE                         R7 K27 [{"aborted", "reason", "abortSignal"}]
       93 LOADB                            R8 0
       94 SETTABLEKS                       R8 R7 K24 ["aborted"]
       96 LOADNIL                          R8
       97 SETTABLEKS                       R8 R7 K25 ["reason"]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R8 R8 K28 ["new"]
      102 CALL                             R8 0 1
      103 SETTABLEKS                       R8 R7 K26 ["abortSignal"]
      105 DUPCLOSURE                       R8 K29 [PROTO_18]
      106 SETTABLEKS                       R8 R7 K30 ["abort"]
      108 GETTABLEKS                       R8 R0 K31 ["_requestHandlerAbortControllers"]
      110 SETTABLE                         R7 R8 R3
      111 DUPTABLE                         R8 K37 [{"signal", "sessionId", "sendNotification", "sendRequest", "sendProgress"}]
      112 SETTABLEKS                       R7 R8 K32 ["signal"]
      114 GETTABLEKS                       R9 R0 K38 ["_transport"]
      116 JUMPIFNOT                        R9 ; [+4]
      117 GETTABLEKS                       R9 R0 K38 ["_transport"]
      119 GETTABLEKS                       R9 R9 K33 ["sessionId"]
      121 SETTABLEKS                       R9 R8 K33 ["sessionId"]
      123 NEWCLOSURE                       R9 P3
      124 CAPTURE                          VAL R0
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R9 R8 K34 ["sendNotification"]
      128 NEWCLOSURE                       R9 P4
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R9 R8 K35 ["sendRequest"]
      133 NEWCLOSURE                       R9 P5
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U2
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R9 R8 K36 ["sendProgress"]
      139 GETUPVAL                         R9 3
      140 GETTABLEKS                       R9 R9 K28 ["new"]
      142 NEWCLOSURE                       R10 P6
      143 CAPTURE                          REF R4
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R8
      146 CAPTURE                          UPVAL U3
      147 CALL                             R9 1 1
      148 NEWCLOSURE                       R11 P7
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R3
      151 CAPTURE                          UPVAL U0
      152 NEWCLOSURE                       R12 P8
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R3
      155 CAPTURE                          UPVAL U0
      156 NAMECALL                         R9 R9 K39 ["andThen"]
      158 CALL                             R9 3 1
      159 NEWCLOSURE                       R11 P9
      160 CAPTURE                          VAL R0
      161 NAMECALL                         R9 R9 K40 ["catch"]
      163 CALL                             R9 2 0
      164 CLOSEUPVALS                      R4
      165 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["_resetTimeout"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R1 K0 ["params"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R3 R2 K1 ["progressToken"]
        5 JUMPIFNOT                        R3 ; [+8]
        6 GETTABLEKS                       R4 R2 K1 ["progressToken"]
        8 FASTCALL1                        TYPE R4 ; [+2]
        9 GETIMPORT                        R3 K3 [type]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K1 ["progressToken"]
       17 GETTABLEKS                       R5 R0 K5 ["_timeoutInfo"]
       19 GETTABLE                         R4 R5 R3
       20 JUMPIFNOT                        R4 ; [+30]
       21 GETTABLEKS                       R5 R4 K6 ["resetTimeoutOnProgress"]
       23 JUMPIFNOT                        R5 ; [+27]
       24 GETIMPORT                        R5 K8 [pcall]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CALL                             R5 1 2
       30 JUMPIF                           R5 ; [+20]
       31 GETTABLEKS                       R8 R0 K9 ["_responseHandlers"]
       33 GETTABLE                         R7 R8 R3
       34 JUMPIFNOT                        R7 ; [+15]
       35 MOVE                             R10 R3
       36 NAMECALL                         R8 R0 K10 ["_cleanupTimeout"]
       38 CALL                             R8 2 0
       39 GETTABLEKS                       R8 R0 K9 ["_responseHandlers"]
       41 LOADNIL                          R9
       42 SETTABLE                         R9 R8 R3
       43 GETTABLEKS                       R8 R0 K11 ["_progressHandlers"]
       45 LOADNIL                          R9
       46 SETTABLE                         R9 R8 R3
       47 MOVE                             R8 R7
       48 MOVE                             R9 R6
       49 CALL                             R8 1 0
       50 RETURN                           R0 0
       51 GETTABLEKS                       R6 R0 K11 ["_progressHandlers"]
       53 GETTABLEKS                       R7 R2 K1 ["progressToken"]
       55 GETTABLE                         R5 R6 R7
       56 JUMPIFNOT                        R5 ; [+10]
       57 GETIMPORT                        R6 K8 [pcall]
       59 MOVE                             R7 R5
       60 MOVE                             R8 R2
       61 CALL                             R6 2 2
       62 JUMPIF                           R6 ; [+4]
       63 MOVE                             R10 R7
       64 NAMECALL                         R8 R0 K12 ["_onerror"]
       66 CALL                             R8 2 0
       67 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 MOVE                             R4 R2
        3 JUMPIFNOT                        R4 ; [+9]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K2 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       15 LOADK                            R5 K4 ["Response ID is required."]
       16 GETIMPORT                        R3 K6 [assert]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R4 R0 K7 ["_responseHandlers"]
       21 GETTABLE                         R3 R4 R2
       22 JUMPIF                           R3 ; [+15]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K8 ["newMcpError"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K9 ["ErrorCode"]
       29 GETTABLEKS                       R7 R7 K10 ["InvalidRequest"]
       31 LOADK                            R8 K11 ["Received response for unknown request ID"]
       32 MOVE                             R9 R2
       33 CALL                             R6 3 -1
       34 NAMECALL                         R4 R0 K12 ["_onerror"]
       36 CALL                             R4 -1 0
       37 RETURN                           R0 0
       38 MOVE                             R6 R2
       39 NAMECALL                         R4 R0 K13 ["_cleanupTimeout"]
       41 CALL                             R4 2 0
       42 GETTABLEKS                       R4 R0 K7 ["_responseHandlers"]
       44 LOADNIL                          R5
       45 SETTABLE                         R5 R4 R2
       46 GETTABLEKS                       R4 R0 K14 ["_progressHandlers"]
       48 LOADNIL                          R5
       49 SETTABLE                         R5 R4 R2
       50 MOVE                             R4 R3
       51 MOVE                             R5 R1
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_transport"]
        2 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["_transport"]
        2 JUMPIF                           R1 ; [+5]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["resolve"]
        6 CALL                             R1 0 -1
        7 RETURN                           R1 -1
        8 GETTABLEKS                       R1 R0 K0 ["_transport"]
       10 GETTABLEKS                       R1 R1 K2 ["close"]
       12 CALL                             R1 0 -1
       13 RETURN                           R1 -1

PROTO_32:
        0 RETURN                           R0 0

PROTO_33:
        0 RETURN                           R0 0

PROTO_34:
        0 RETURN                           R0 0

PROTO_35:
        0 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["method"]
        4 NAMECALL                         R0 R0 K1 ["assertCapabilityForMethod"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R3 R0
        7 GETIMPORT                        R2 K1 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+3]
       12 MOVE                             R1 R0
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R1 R0 K3 ["message"]
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R4 2
       18 NAMECALL                         R2 R2 K4 ["_cleanupTimeout"]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["_responseHandlers"]
       24 GETUPVAL                         R3 2
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R2 R3
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K6 ["_progressHandlers"]
       30 GETUPVAL                         R3 2
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R2 R3
       33 GETUPVAL                         R2 1
       34 DUPTABLE                         R4 K9 [{"method", "params"}]
       35 LOADK                            R5 K10 ["notifications/cancelled"]
       36 SETTABLEKS                       R5 R4 K7 ["method"]
       38 DUPTABLE                         R5 K13 [{"requestId", "reason"}]
       39 GETUPVAL                         R6 2
       40 SETTABLEKS                       R6 R5 K11 ["requestId"]
       42 SETTABLEKS                       R1 R5 K12 ["reason"]
       44 SETTABLEKS                       R5 R4 K8 ["params"]
       46 NAMECALL                         R2 R2 K14 ["notification"]
       48 CALL                             R2 2 0
       49 GETUPVAL                         R2 3
       50 MOVE                             R3 R0
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["newMcpError"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["ErrorCode"]
        7 GETTABLEKS                       R2 R2 K2 ["RequestTimeout"]
        9 LOADK                            R3 K3 ["Request timed out"]
       10 DUPTABLE                         R4 K5 [{"timeout"}]
       11 GETUPVAL                         R5 2
       12 SETTABLEKS                       R5 R4 K4 ["timeout"]
       14 CALL                             R1 3 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["fieldExists"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K1 ["error"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R2 R0 K1 ["error"]
       13 GETTABLEKS                       R2 R2 K2 ["message"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K0 ["fieldExists"]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K3 ["result"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R2 R0 K3 ["result"]
       27 CALL                             R1 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 2
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K4 ["newMcpError"]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K5 ["ErrorCode"]
       36 GETTABLEKS                       R3 R3 K6 ["InternalError"]
       38 LOADK                            R4 K7 ["Invalid response format received"]
       39 MOVE                             R5 R0
       40 CALL                             R2 3 -1
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+20]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 NAMECALL                         R1 R1 K0 ["_cleanupTimeout"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["_responseHandlers"]
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R1 R2
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["_progressHandlers"]
       16 GETUPVAL                         R2 2
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R1 R2
       19 GETUPVAL                         R1 3
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_42:
        0 LOADB                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R4 2
        7 JUMPIFNOT                        R4 ; [+12]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K0 ["signal"]
       11 JUMPIFNOT                        R4 ; [+8]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K0 ["signal"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          VAL R3
       17 NAMECALL                         R4 R4 K1 ["Once"]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K3 ["timeout"]
       23 ORK                              R4 R5 K2 [5000]
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R4
       28 GETUPVAL                         R6 0
       29 GETUPVAL                         R8 1
       30 MOVE                             R9 R4
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K4 ["maxTotalTimeout"]
       34 MOVE                             R11 R5
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K5 ["resetTimeoutOnProgress"]
       38 NAMECALL                         R6 R6 K6 ["_setupTimeout"]
       40 CALL                             R6 6 0
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K7 ["_responseHandlers"]
       44 GETUPVAL                         R7 1
       45 NEWCLOSURE                       R8 P3
       46 CAPTURE                          REF R2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R0
       50 SETTABLE                         R8 R6 R7
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K8 ["_transport"]
       54 GETTABLEKS                       R6 R6 K9 ["sendRequest"]
       56 GETUPVAL                         R7 4
       57 DUPTABLE                         R8 K11 [{"relatedRequestId"}]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K10 ["relatedRequestId"]
       61 SETTABLEKS                       R9 R8 K10 ["relatedRequestId"]
       63 CALL                             R6 2 1
       64 NEWCLOSURE                       R8 P4
       65 CAPTURE                          REF R2
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R1
       69 NAMECALL                         R6 R6 K12 ["catch"]
       71 CALL                             R6 2 0
       72 CLOSEUPVALS                      R2
       73 RETURN                           R0 0

PROTO_43:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        7 MOVE                             R4 R2
        8 LOADK                            R5 K0 ["Options are required."]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K3 ["_transport"]
       14 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       16 LOADK                            R5 K4 ["Transport is not connected."]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 GETIMPORT                        R3 K6 [pcall]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CALL                             R3 1 2
       26 JUMPIF                           R3 ; [+25]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K7 ["reject"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K8 ["newMcpError"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K9 ["ErrorCode"]
       36 GETTABLEKS                       R7 R7 K10 ["InternalError"]
       38 LOADK                            R9 K11 ["Local capability check failed for request method: "]
       39 GETTABLEKS                       R10 R1 K12 ["method"]
       41 LOADK                            R11 K13 [" error: "]
       42 FASTCALL1                        TOSTRING R4 ; [+3]
       43 MOVE                             R13 R4
       44 GETIMPORT                        R12 K15 [tostring]
       46 CALL                             R12 1 1
       47 CONCAT                           R8 R9 R12
       48 CALL                             R6 2 -1
       49 CALL                             R5 -1 -1
       50 CLOSEUPVALS                      R2
       51 RETURN                           R5 -1
       52 GETTABLEKS                       R6 R0 K16 ["_requestMessageId"]
       54 FASTCALL1                        TOSTRING R6 ; [+2]
       55 GETIMPORT                        R5 K15 [tostring]
       57 CALL                             R5 1 1
       58 GETTABLEKS                       R6 R0 K16 ["_requestMessageId"]
       60 ADDK                             R6 R6 K17 [1]
       61 SETTABLEKS                       R6 R0 K16 ["_requestMessageId"]
       63 DUPTABLE                         R6 K21 [{"jsonrpc", "id", "method", "params"}]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K22 ["JSONRPC_VERSION"]
       67 SETTABLEKS                       R7 R6 K18 ["jsonrpc"]
       69 SETTABLEKS                       R5 R6 K19 ["id"]
       71 GETTABLEKS                       R7 R1 K12 ["method"]
       73 SETTABLEKS                       R7 R6 K12 ["method"]
       75 GETTABLEKS                       R7 R1 K20 ["params"]
       77 JUMPIF                           R7 ; [+4]
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R7 R7 K23 ["emptyObject"]
       81 CALL                             R7 0 1
       82 SETTABLEKS                       R7 R6 K20 ["params"]
       84 GETTABLEKS                       R7 R2 K24 ["onprogress"]
       86 JUMPIFNOT                        R7 ; [+16]
       87 GETTABLEKS                       R7 R6 K20 ["params"]
       89 GETTABLEKS                       R8 R7 K25 ["_meta"]
       91 JUMPIF                           R8 ; [+2]
       92 NEWTABLE                         R8 0 0
       94 SETTABLEKS                       R5 R8 K26 ["progressToken"]
       96 SETTABLEKS                       R8 R7 K25 ["_meta"]
       98 GETTABLEKS                       R9 R0 K27 ["_progressHandlers"]
      100 GETTABLEKS                       R10 R2 K24 ["onprogress"]
      102 SETTABLE                         R10 R9 R5
      103 GETUPVAL                         R7 0
      104 GETTABLEKS                       R7 R7 K28 ["new"]
      106 NEWCLOSURE                       R8 P1
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R5
      109 CAPTURE                          REF R2
      110 CAPTURE                          UPVAL U1
      111 CAPTURE                          VAL R6
      112 CALL                             R7 1 -1
      113 CLOSEUPVALS                      R2
      114 RETURN                           R7 -1

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["assertNotificationCapability"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_45:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        7 MOVE                             R4 R2
        8 LOADK                            R5 K0 ["Options are required."]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K3 ["_transport"]
       14 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       16 LOADK                            R5 K4 ["Transport is not connected."]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R3 R1 K5 ["method"]
       22 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K6 ["Notification method is required."]
       26 GETIMPORT                        R4 K2 [assert]
       28 CALL                             R4 2 0
       29 GETIMPORT                        R4 K8 [pcall]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CALL                             R4 1 2
       35 JUMPIF                           R4 ; [+23]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K9 ["reject"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K10 ["newMcpError"]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K11 ["ErrorCode"]
       45 GETTABLEKS                       R8 R8 K12 ["InternalError"]
       47 LOADK                            R10 K13 ["Local capability check failed for notification method: "]
       48 MOVE                             R11 R3
       49 LOADK                            R12 K14 [" error: "]
       50 FASTCALL1                        TOSTRING R5 ; [+3]
       51 MOVE                             R14 R5
       52 GETIMPORT                        R13 K16 [tostring]
       54 CALL                             R13 1 1
       55 CONCAT                           R9 R10 R13
       56 CALL                             R7 2 -1
       57 CALL                             R6 -1 -1
       58 RETURN                           R6 -1
       59 DUPTABLE                         R6 K19 [{"jsonrpc", "method", "params"}]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K20 ["JSONRPC_VERSION"]
       63 SETTABLEKS                       R7 R6 K17 ["jsonrpc"]
       65 GETTABLEKS                       R7 R1 K5 ["method"]
       67 SETTABLEKS                       R7 R6 K5 ["method"]
       69 GETTABLEKS                       R7 R1 K18 ["params"]
       71 SETTABLEKS                       R7 R6 K18 ["params"]
       73 GETTABLEKS                       R7 R0 K3 ["_transport"]
       75 GETTABLEKS                       R7 R7 K21 ["sendNotification"]
       77 MOVE                             R8 R6
       78 DUPTABLE                         R9 K23 [{"relatedRequestId"}]
       79 GETTABLEKS                       R10 R2 K22 ["relatedRequestId"]
       81 SETTABLEKS                       R10 R9 K22 ["relatedRequestId"]
       83 CALL                             R7 2 -1
       84 RETURN                           R7 -1

PROTO_46:
        0 GETTABLEKS                       R3 R0 K0 ["_requestHandlers"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["assertCanSetRequestHandler"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R3 R1 K0 ["method"]
        2 GETIMPORT                        R4 K2 [pcall]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R3
        7 CALL                             R4 1 2
        8 JUMPIF                           R4 ; [+12]
        9 GETIMPORT                        R6 K4 [error]
       11 LOADK                            R8 K5 ["Cannot set request handler for method '"]
       12 MOVE                             R9 R3
       13 LOADK                            R10 K6 ["' due to capability restrictions: "]
       14 FASTCALL1                        TOSTRING R5 ; [+3]
       15 MOVE                             R12 R5
       16 GETIMPORT                        R11 K8 [tostring]
       18 CALL                             R11 1 1
       19 CONCAT                           R7 R8 R11
       20 CALL                             R6 1 0
       21 GETTABLEKS                       R6 R0 K9 ["_requestHandlers"]
       23 SETTABLE                         R2 R6 R3
       24 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R2 R0 K0 ["_requestHandlers"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R3 R0 K0 ["_notificationHandlers"]
        2 SETTABLE                         R2 R3 R1
        3 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R3 R0 K0 ["_notificationHandlers"]
        2 GETTABLEKS                       R4 R1 K1 ["method"]
        4 SETTABLE                         R2 R3 R4
        5 RETURN                           R0 0

PROTO_52:
        0 GETTABLEKS                       R2 R0 K0 ["_notificationHandlers"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onerror"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_54:
        0 GETTABLEKS                       R2 R0 K0 ["_transport"]
        2 JUMPIF                           R2 ; [+5]
        3 LOADK                            R4 K1 ["Attempted to send response when transport is not connected."]
        4 NAMECALL                         R2 R0 K2 ["_onerror"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K0 ["_transport"]
       10 GETTABLEKS                       R2 R2 K3 ["sendResponse"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R2 R2 K4 ["catch"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Transport"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Types"]
       37 CALL                             R5 1 1
       38 NEWTABLE                         R6 32 0
       40 SETTABLEKS                       R6 R6 K12 ["__index"]
       42 DUPCLOSURE                       R7 K13 [PROTO_3]
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 SETTABLEKS                       R7 R6 K14 ["new"]
       47 DUPCLOSURE                       R7 K15 [PROTO_4]
       48 SETTABLEKS                       R7 R6 K16 ["_setupTimeout"]
       50 DUPCLOSURE                       R7 K17 [PROTO_5]
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R7 R6 K18 ["_resetTimeout"]
       54 DUPCLOSURE                       R7 K19 [PROTO_6]
       55 SETTABLEKS                       R7 R6 K20 ["_cleanupTimeout"]
       57 DUPCLOSURE                       R7 K21 [PROTO_10]
       58 SETTABLEKS                       R7 R6 K22 ["connect"]
       60 DUPCLOSURE                       R7 K23 [PROTO_12]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R7 R6 K24 ["_onclose"]
       64 DUPCLOSURE                       R7 K25 [PROTO_13]
       65 SETTABLEKS                       R7 R6 K26 ["_onerror"]
       67 DUPCLOSURE                       R7 K27 [PROTO_14]
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R7 R6 K28 ["_onmessage"]
       71 DUPCLOSURE                       R7 K29 [PROTO_15]
       72 SETTABLEKS                       R7 R6 K30 ["_onnotification"]
       74 DUPCLOSURE                       R7 K31 [PROTO_26]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R7 R6 K32 ["_onrequest"]
       81 DUPCLOSURE                       R7 K33 [PROTO_28]
       82 SETTABLEKS                       R7 R6 K34 ["_onprogress"]
       84 DUPCLOSURE                       R7 K35 [PROTO_29]
       85 CAPTURE                          VAL R5
       86 SETTABLEKS                       R7 R6 K36 ["_onresponse"]
       88 DUPCLOSURE                       R7 K37 [PROTO_30]
       89 SETTABLEKS                       R7 R6 K38 ["getTransport"]
       91 DUPCLOSURE                       R7 K39 [PROTO_31]
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R7 R6 K40 ["close"]
       95 DUPCLOSURE                       R7 K41 [PROTO_32]
       96 SETTABLEKS                       R7 R6 K42 ["assertCapabilityForMethod"]
       98 DUPCLOSURE                       R7 K43 [PROTO_33]
       99 SETTABLEKS                       R7 R6 K44 ["assertNotificationCapability"]
      101 DUPCLOSURE                       R7 K45 [PROTO_34]
      102 SETTABLEKS                       R7 R6 K46 ["assertRequestHandlerCapability"]
      104 DUPCLOSURE                       R7 K47 [PROTO_35]
      105 SETTABLEKS                       R7 R6 K48 ["assertCanSetRequestHandler"]
      107 DUPCLOSURE                       R7 K49 [PROTO_43]
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R7 R6 K50 ["request"]
      112 DUPCLOSURE                       R7 K51 [PROTO_45]
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R5
      115 SETTABLEKS                       R7 R6 K52 ["notification"]
      117 DUPCLOSURE                       R7 K53 [PROTO_46]
      118 SETTABLEKS                       R7 R6 K54 ["_setRequestHandlerInternal"]
      120 DUPCLOSURE                       R7 K55 [PROTO_48]
      121 SETTABLEKS                       R7 R6 K56 ["setRequestHandler"]
      123 DUPCLOSURE                       R7 K57 [PROTO_49]
      124 SETTABLEKS                       R7 R6 K58 ["removeRequestHandler"]
      126 DUPCLOSURE                       R7 K59 [PROTO_50]
      127 SETTABLEKS                       R7 R6 K60 ["_setNotificationHandlerInternal"]
      129 DUPCLOSURE                       R7 K61 [PROTO_51]
      130 SETTABLEKS                       R7 R6 K62 ["setNotificationHandler"]
      132 DUPCLOSURE                       R7 K63 [PROTO_52]
      133 SETTABLEKS                       R7 R6 K64 ["removeNotificationHandler"]
      135 DUPCLOSURE                       R7 K65 [PROTO_54]
      136 SETTABLEKS                       R7 R6 K66 ["sendResponse"]
      138 RETURN                           R6 1
