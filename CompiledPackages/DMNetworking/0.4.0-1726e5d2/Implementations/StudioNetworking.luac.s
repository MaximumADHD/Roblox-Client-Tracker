PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["identity"]
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K2 ["StudioNetworking requires a plugin"]
        8 GETIMPORT                        R3 K4 [assert]
       10 CALL                             R3 2 0
       11 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K5 ["StudioNetworking requires an identity"]
       15 GETIMPORT                        R3 K4 [assert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R4 R0 K7 ["retryInterval"]
       20 ORK                              R3 R4 K6 [0.2]
       21 GETTABLEKS                       R5 R0 K9 ["unreachableTimeout"]
       23 ORK                              R4 R5 K8 [2]
       24 JUMPIFLT                         R3 R4 ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 LOADK                            R7 K10 ["retryInterval (%*) must be less than unreachableTimeout (%*)"]
       29 MOVE                             R9 R3
       30 MOVE                             R10 R4
       31 NAMECALL                         R7 R7 K11 ["format"]
       33 CALL                             R7 3 1
       34 FASTCALL2                        ASSERT R6 R7 ; [+3]
       36 GETIMPORT                        R5 K4 [assert]
       38 CALL                             R5 2 0
       39 NEWTABLE                         R5 32 0
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K12 ["new"]
       44 LOADK                            R7 K13 ["[DMNetworking] [Studio]"]
       45 GETTABLEKS                       R8 R0 K14 ["logLevel"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K15 ["_logger"]
       50 SETTABLEKS                       R1 R5 K16 ["_plugin"]
       52 SETTABLEKS                       R2 R5 K17 ["_identity"]
       54 SETTABLEKS                       R4 R5 K18 ["_unreachableTimeout"]
       56 GETTABLEKS                       R7 R0 K20 ["requesterGrace"]
       58 ORK                              R6 R7 K19 [1]
       59 SETTABLEKS                       R6 R5 K21 ["_requesterGrace"]
       61 SETTABLEKS                       R3 R5 K22 ["_retryInterval"]
       63 GETTABLEKS                       R7 R0 K23 ["useSuspendOverride"]
       65 JUMPIFEQKB                       R7 TRUE ; [+2]
       67 LOADB                            R6 0 +1
       68 LOADB                            R6 1
       69 SETTABLEKS                       R6 R5 K24 ["_useSuspendOverride"]
       71 NEWTABLE                         R6 0 0
       73 SETTABLEKS                       R6 R5 K25 ["_connections"]
       75 NEWTABLE                         R6 0 0
       77 SETTABLEKS                       R6 R5 K26 ["_eventConnections"]
       79 NEWTABLE                         R6 0 0
       81 SETTABLEKS                       R6 R5 K27 ["_requesterRefCounts"]
       83 NEWTABLE                         R6 0 0
       85 SETTABLEKS                       R6 R5 K28 ["_pendingTeardowns"]
       87 NEWTABLE                         R6 0 0
       89 SETTABLEKS                       R6 R5 K29 ["_invokeThreads"]
       91 NEWTABLE                         R6 0 0
       93 SETTABLEKS                       R6 R5 K30 ["_infiniteYieldThreads"]
       95 NEWTABLE                         R6 0 0
       97 SETTABLEKS                       R6 R5 K31 ["_resetDeadlines"]
       99 NEWTABLE                         R6 0 0
      101 SETTABLEKS                       R6 R5 K32 ["_ackedRequests"]
      103 NEWTABLE                         R6 0 0
      105 SETTABLEKS                       R6 R5 K33 ["_heartbeatThreads"]
      107 NEWTABLE                         R6 0 0
      109 SETTABLEKS                       R6 R5 K34 ["_pendingResponses"]
      111 NEWTABLE                         R6 0 0
      113 SETTABLEKS                       R6 R5 K35 ["_handledRequests"]
      115 NEWTABLE                         R6 0 0
      117 SETTABLEKS                       R6 R5 K36 ["_handledRequestExpiries"]
      119 GETUPVAL                         R6 1
      120 LOADB                            R8 0
      121 NAMECALL                         R6 R6 K37 ["GenerateGUID"]
      123 CALL                             R6 2 1
      124 SETTABLEKS                       R6 R5 K38 ["_instanceToken"]
      126 LOADN                            R6 0
      127 SETTABLEKS                       R6 R5 K39 ["_invokeCounter"]
      129 GETUPVAL                         R8 2
      130 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
      132 MOVE                             R7 R5
      133 GETIMPORT                        R6 K41 [setmetatable]
      135 CALL                             R6 2 0
      136 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_identity"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Identity"]
        3 GETTABLEKS                       R2 R2 K1 ["ALL"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+3]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["Identity"]
       12 GETTABLEKS                       R2 R2 K2 ["FOCUSED"]
       14 JUMPIFNOTEQ                      R1 R2 ; [+6]
       16 GETTABLEKS                       R2 R0 K3 ["_plugin"]
       18 GETTABLEKS                       R2 R2 K4 ["HostDataModelTypeIsCurrent"]
       20 RETURN                           R2 1
       21 GETTABLEKS                       R3 R0 K5 ["_identity"]
       23 JUMPIFEQ                         R1 R3 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_3:
        0 LOADNIL                          R3
        1 GETTABLEKS                       R4 R0 K0 ["_useSuspendOverride"]
        3 JUMPIFNOT                        R4 ; [+9]
        4 GETTABLEKS                       R4 R0 K1 ["_plugin"]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R4 K2 ["OnInvokeSuspendOverride"]
       10 CALL                             R4 3 1
       11 MOVE                             R3 R4
       12 JUMP                             ; [+8]
       13 GETTABLEKS                       R4 R0 K1 ["_plugin"]
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 NAMECALL                         R4 R4 K3 ["OnInvoke"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K4 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K4 ["OnInvoke did not return an Instance"]
       25 GETIMPORT                        R4 K6 [assert]
       27 CALL                             R4 2 0
       28 LOADK                            R7 K7 ["MemStorageConnection"]
       29 NAMECALL                         R5 R3 K8 ["IsA"]
       31 CALL                             R5 2 1
       32 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       34 LOADK                            R6 K9 ["OnInvoke did not return a MemStorageConnection"]
       35 GETIMPORT                        R4 K6 [assert]
       37 CALL                             R4 2 0
       38 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["toId"]
        3 NAMECALL                         R1 R1 K1 ["_shouldHandle"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+21]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["_logger"]
       10 LOADK                            R3 K3 ["[{key}] skipping event [expected: {expected}, got: {got}]"]
       11 DUPTABLE                         R4 K7 [{"key", "expected", "got"}]
       12 GETUPVAL                         R5 1
       13 SETTABLEKS                       R5 R4 K4 ["key"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K8 ["_identity"]
       18 SETTABLEKS                       R5 R4 K5 ["expected"]
       20 GETTABLEKS                       R5 R0 K0 ["toId"]
       22 SETTABLEKS                       R5 R4 K6 ["got"]
       24 NAMECALL                         R1 R1 K9 ["debug"]
       26 CALL                             R1 3 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K2 ["_logger"]
       31 LOADK                            R3 K10 ["[{key}] received event"]
       32 DUPTABLE                         R4 K11 [{"key"}]
       33 GETUPVAL                         R5 1
       34 SETTABLEKS                       R5 R4 K4 ["key"]
       36 NAMECALL                         R1 R1 K12 ["info"]
       38 CALL                             R1 3 0
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R2 R0 K13 ["fromId"]
       42 GETTABLEKS                       R4 R0 K14 ["args"]
       44 LOADN                            R5 1
       45 GETTABLEKS                       R6 R0 K15 ["argCount"]
       47 FASTCALL                         TABLE_UNPACK ; [+2]
       48 GETIMPORT                        R3 K18 [table.unpack]
       50 CALL                             R3 3 -1
       51 CALL                             R1 -1 0
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [table.find]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["_eventConnections"]
        9 GETUPVAL                         R2 0
       10 CALL                             R0 2 1
       11 JUMPIFNOT                        R0 ; [+21]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["_eventConnections"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["_eventConnections"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["_eventConnections"]
       21 LENGTH                           R4 R5
       22 GETTABLE                         R2 R3 R4
       23 SETTABLE                         R2 R1 R0
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K4 ["_eventConnections"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K4 ["_eventConnections"]
       30 LENGTH                           R2 R3
       31 LOADNIL                          R3
       32 SETTABLE                         R3 R1 R2
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 2
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["TAG_EVENT"]
        6 MOVE                             R6 R1
        7 SETLIST                          R4 R5 2 [1]
        9 CALL                             R3 1 1
       10 MOVE                             R6 R3
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 NAMECALL                         R4 R0 K1 ["_onPluginInvoke"]
       17 CALL                             R4 3 1
       18 GETTABLEKS                       R6 R0 K2 ["_eventConnections"]
       20 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R5 K5 [table.insert]
       25 CALL                             R5 2 0
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R0
       29 RETURN                           R5 1

PROTO_7:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["Fire requires a target id for %*; use a sentinel (ALL / FOCUSED) to broadcast"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        ASSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 NEWTABLE                         R4 0 2
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["TAG_EVENT"]
       21 MOVE                             R6 R1
       22 SETLIST                          R4 R5 2 [1]
       24 CALL                             R3 1 1
       25 DUPTABLE                         R4 K9 [{"toId", "fromId", "args", "argCount"}]
       26 SETTABLEKS                       R2 R4 K5 ["toId"]
       28 GETTABLEKS                       R5 R0 K10 ["_identity"]
       30 SETTABLEKS                       R5 R4 K6 ["fromId"]
       32 NEWTABLE                         R5 0 0
       34 GETVARARGS                       R6 -1
       35 SETLIST                          R5 R6 -1 [1]
       37 SETTABLEKS                       R5 R4 K7 ["args"]
       39 LOADK                            R6 K11 ["#"]
       40 FASTCALL1                        SELECT_VARARG R6 ; [+3]
       41 GETIMPORT                        R5 K13 [select]
       43 GETVARARGS                       R7 -1
       44 CALL                             R5 -1 1
       45 SETTABLEKS                       R5 R4 K8 ["argCount"]
       47 GETTABLEKS                       R5 R0 K14 ["_logger"]
       49 LOADK                            R7 K15 ["[{key}] sending event [packet: {packet}]"]
       50 DUPTABLE                         R8 K18 [{"key", "packet"}]
       51 SETTABLEKS                       R1 R8 K16 ["key"]
       53 SETTABLEKS                       R4 R8 K17 ["packet"]
       55 NAMECALL                         R5 R5 K19 ["info"]
       57 CALL                             R5 3 0
       58 GETTABLEKS                       R5 R0 K20 ["_plugin"]
       60 MOVE                             R7 R3
       61 MOVE                             R8 R4
       62 NAMECALL                         R5 R5 K21 ["Invoke"]
       64 CALL                             R5 3 0
       65 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["toId"]
        3 NAMECALL                         R1 R1 K1 ["_shouldHandle"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R2 R0 K2 ["kind"]
        8 JUMPIFNOTEQKS                    R2 K3 ["SUCCESS"] ; [+51]
       10 JUMPIF                           R1 ; [+21]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["_logger"]
       14 LOADK                            R4 K5 ["[{key}] skipping invoke success [expected: {expected}, got: {got}]"]
       15 DUPTABLE                         R5 K9 [{"key", "expected", "got"}]
       16 GETUPVAL                         R6 1
       17 SETTABLEKS                       R6 R5 K6 ["key"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K10 ["_identity"]
       22 SETTABLEKS                       R6 R5 K7 ["expected"]
       24 GETTABLEKS                       R6 R0 K0 ["toId"]
       26 SETTABLEKS                       R6 R5 K8 ["got"]
       28 NAMECALL                         R2 R2 K11 ["debug"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K4 ["_logger"]
       35 LOADK                            R4 K12 ["[{key}] received invoke success packet"]
       36 DUPTABLE                         R5 K13 [{"key"}]
       37 GETUPVAL                         R6 1
       38 SETTABLEKS                       R6 R5 K6 ["key"]
       40 NAMECALL                         R2 R2 K11 ["debug"]
       42 CALL                             R2 3 0
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K14 ["_resetDeadlines"]
       46 GETTABLEKS                       R4 R0 K15 ["requestId"]
       48 GETTABLE                         R2 R3 R4
       49 JUMPIFNOT                        R2 ; [+9]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K16 ["_ackedRequests"]
       53 GETTABLEKS                       R4 R0 K15 ["requestId"]
       55 LOADB                            R5 1
       56 SETTABLE                         R5 R3 R4
       57 MOVE                             R3 R2
       58 CALL                             R3 0 0
       59 RETURN                           R0 0
       60 JUMPIF                           R1 ; [+21]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K4 ["_logger"]
       64 LOADK                            R4 K17 ["[{key}] skipping invoke result [expected: {expected}, got: {got}]"]
       65 DUPTABLE                         R5 K9 [{"key", "expected", "got"}]
       66 GETUPVAL                         R6 1
       67 SETTABLEKS                       R6 R5 K6 ["key"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K10 ["_identity"]
       72 SETTABLEKS                       R6 R5 K7 ["expected"]
       74 GETTABLEKS                       R6 R0 K0 ["toId"]
       76 SETTABLEKS                       R6 R5 K8 ["got"]
       78 NAMECALL                         R2 R2 K11 ["debug"]
       80 CALL                             R2 3 0
       81 RETURN                           R0 0
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R3 R3 K18 ["_invokeThreads"]
       85 GETTABLEKS                       R4 R0 K15 ["requestId"]
       87 GETTABLE                         R2 R3 R4
       88 JUMPIFNOT                        R2 ; [+10]
       89 GETUPVAL                         R3 0
       90 GETTABLEKS                       R3 R3 K18 ["_invokeThreads"]
       92 GETTABLEKS                       R4 R0 K15 ["requestId"]
       94 LOADNIL                          R5
       95 SETTABLE                         R5 R3 R4
       96 MOVE                             R3 R2
       97 MOVE                             R4 R0
       98 CALL                             R3 1 0
       99 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 3
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["TAG_INVOKE"]
        6 MOVE                             R5 R1
        7 LOADK                            R6 K1 ["ToRequester"]
        8 SETLIST                          R3 R4 3 [1]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R3 R0 K2 ["_requesterRefCounts"]
       13 GETTABLEKS                       R7 R0 K2 ["_requesterRefCounts"]
       15 GETTABLE                         R6 R7 R2
       16 ORK                              R5 R6 K4 [0]
       17 ADDK                             R4 R5 K3 [1]
       18 SETTABLE                         R4 R3 R2
       19 GETTABLEKS                       R4 R0 K5 ["_pendingTeardowns"]
       21 GETTABLE                         R3 R4 R2
       22 JUMPIFNOT                        R3 ; [+8]
       23 GETIMPORT                        R4 K8 [task.cancel]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 GETTABLEKS                       R4 R0 K5 ["_pendingTeardowns"]
       29 LOADNIL                          R5
       30 SETTABLE                         R5 R4 R2
       31 GETTABLEKS                       R5 R0 K9 ["_connections"]
       33 GETTABLE                         R4 R5 R2
       34 JUMPIFNOT                        R4 ; [+1]
       35 RETURN                           R2 1
       36 MOVE                             R6 R2
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R4 R0 K10 ["_onPluginInvoke"]
       42 CALL                             R4 3 1
       43 GETTABLEKS                       R5 R0 K9 ["_connections"]
       45 SETTABLE                         R4 R5 R2
       46 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_pendingTeardowns"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_requesterRefCounts"]
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R0 R1 R2
       11 JUMPIFNOT                        R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["_connections"]
       16 GETUPVAL                         R2 1
       17 GETTABLE                         R0 R1 R2
       18 JUMPIFNOT                        R0 ; [+9]
       19 NAMECALL                         R1 R0 K3 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K2 ["_connections"]
       25 GETUPVAL                         R2 1
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R1 R2
       28 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_requesterRefCounts"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+7]
        8 GETTABLEKS                       R3 R0 K0 ["_requesterRefCounts"]
       10 GETTABLE                         R4 R3 R1
       11 SUBK                             R4 R4 K1 [1]
       12 SETTABLE                         R4 R3 R1
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K0 ["_requesterRefCounts"]
       16 LOADNIL                          R4
       17 SETTABLE                         R4 R3 R1
       18 GETTABLEKS                       R4 R0 K2 ["_pendingTeardowns"]
       20 GETTABLE                         R3 R4 R1
       21 JUMPIFNOT                        R3 ; [+4]
       22 GETIMPORT                        R4 K5 [task.cancel]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 GETTABLEKS                       R4 R0 K2 ["_pendingTeardowns"]
       28 GETIMPORT                        R5 K7 [task.delay]
       30 GETTABLEKS                       R6 R0 K8 ["_requesterGrace"]
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 CALL                             R5 2 1
       36 SETTABLE                         R5 R4 R1
       37 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_handledRequests"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["_handledRequestExpiries"]
        9 GETUPVAL                         R1 1
       10 LOADNIL                          R2
       11 SETTABLE                         R2 R0 R1
       12 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_handledRequestExpiries"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETIMPORT                        R3 K3 [task.cancel]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 GETTABLEKS                       R3 R0 K0 ["_handledRequestExpiries"]
       10 GETIMPORT                        R4 K5 [task.delay]
       12 GETTABLEKS                       R5 R0 K6 ["_unreachableTimeout"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 CALL                             R4 2 1
       18 SETTABLE                         R4 R3 R1
       19 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["_retryInterval"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K4 ["_plugin"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 NAMECALL                         R0 R0 K5 ["Invoke"]
       13 CALL                             R0 3 0
       14 JUMPBACK                         ; [-15]
       15 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["fromId"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R5 R0 K2 ["toId"]
        7 NAMECALL                         R3 R3 K3 ["_shouldHandle"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+21]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K4 ["_logger"]
       14 LOADK                            R5 K5 ["[{key}] skipping invoke [expected: {expected}, got: {got}]"]
       15 DUPTABLE                         R6 K9 [{"key", "expected", "got"}]
       16 GETUPVAL                         R7 1
       17 SETTABLEKS                       R7 R6 K6 ["key"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K10 ["_identity"]
       22 SETTABLEKS                       R7 R6 K7 ["expected"]
       24 GETTABLEKS                       R7 R0 K2 ["toId"]
       26 SETTABLEKS                       R7 R6 K8 ["got"]
       28 NAMECALL                         R3 R3 K11 ["debug"]
       30 CALL                             R3 3 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K4 ["_logger"]
       35 LOADK                            R5 K12 ["[{key}] received invoke"]
       36 DUPTABLE                         R6 K13 [{"key"}]
       37 GETUPVAL                         R7 1
       38 SETTABLEKS                       R7 R6 K6 ["key"]
       40 NAMECALL                         R3 R3 K14 ["info"]
       42 CALL                             R3 3 0
       43 GETUPVAL                         R3 2
       44 NEWTABLE                         R4 0 3
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K15 ["TAG_INVOKE"]
       49 GETUPVAL                         R6 1
       50 LOADK                            R7 K16 ["ToRequester"]
       51 SETLIST                          R4 R5 3 [1]
       53 CALL                             R3 1 1
       54 GETUPVAL                         R4 2
       55 NEWTABLE                         R5 0 5
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K15 ["TAG_INVOKE"]
       60 GETUPVAL                         R7 1
       61 LOADK                            R8 K16 ["ToRequester"]
       62 FASTCALL1                        TOSTRING R2 ; [+3]
       63 MOVE                             R10 R2
       64 GETIMPORT                        R9 K18 [tostring]
       66 CALL                             R9 1 1
       67 MOVE                             R10 R1
       68 SETLIST                          R5 R6 5 [1]
       70 CALL                             R4 1 1
       71 DUPTABLE                         R5 K21 [{["kind"] = "SUCCESS", [2], ["toId"], ["fromId"]}]
       72 SETTABLEKS                       R1 R5 K0 ["requestId"]
       74 SETTABLEKS                       R2 R5 K2 ["toId"]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K10 ["_identity"]
       79 SETTABLEKS                       R6 R5 K1 ["fromId"]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K22 ["_plugin"]
       84 MOVE                             R8 R3
       85 MOVE                             R9 R5
       86 NAMECALL                         R6 R6 K23 ["Invoke"]
       88 CALL                             R6 3 0
       89 GETUPVAL                         R6 0
       90 MOVE                             R8 R4
       91 NAMECALL                         R6 R6 K24 ["_markRequestHandled"]
       93 CALL                             R6 2 0
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K25 ["_handledRequests"]
       97 GETTABLE                         R6 R7 R4
       98 JUMPIFNOT                        R6 ; [+14]
       99 GETUPVAL                         R6 0
      100 GETTABLEKS                       R6 R6 K4 ["_logger"]
      102 LOADK                            R8 K26 ["[{key}] ignoring duplicate invoke [requestId: {requestId}]"]
      103 DUPTABLE                         R9 K27 [{"key", "requestId"}]
      104 GETUPVAL                         R10 1
      105 SETTABLEKS                       R10 R9 K6 ["key"]
      107 SETTABLEKS                       R1 R9 K0 ["requestId"]
      109 NAMECALL                         R6 R6 K11 ["debug"]
      111 CALL                             R6 3 0
      112 RETURN                           R0 0
      113 GETUPVAL                         R6 0
      114 GETTABLEKS                       R6 R6 K25 ["_handledRequests"]
      116 LOADB                            R7 1
      117 SETTABLE                         R7 R6 R4
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K28 ["_pendingResponses"]
      121 DUPTABLE                         R7 K30 [{"toRequesterKey", "toId", "requestId"}]
      122 SETTABLEKS                       R3 R7 K29 ["toRequesterKey"]
      124 SETTABLEKS                       R2 R7 K2 ["toId"]
      126 SETTABLEKS                       R1 R7 K0 ["requestId"]
      128 SETTABLE                         R7 R6 R4
      129 GETUPVAL                         R6 0
      130 GETTABLEKS                       R6 R6 K31 ["_heartbeatThreads"]
      132 GETIMPORT                        R7 K34 [task.spawn]
      134 NEWCLOSURE                       R8 P0
      135 CAPTURE                          UPVAL U0
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R5
      138 CALL                             R7 1 1
      139 SETTABLE                         R7 R6 R4
      140 GETIMPORT                        R6 K37 [table.pack]
      142 GETIMPORT                        R7 K39 [pcall]
      144 GETUPVAL                         R8 4
      145 MOVE                             R9 R2
      146 GETTABLEKS                       R11 R0 K40 ["args"]
      148 LOADN                            R12 1
      149 GETTABLEKS                       R13 R0 K41 ["argCount"]
      151 FASTCALL                         TABLE_UNPACK ; [+2]
      152 GETIMPORT                        R10 K43 [table.unpack]
      154 CALL                             R10 3 -1
      155 CALL                             R7 -1 -1
      156 CALL                             R6 -1 1
      157 GETUPVAL                         R7 0
      158 GETTABLEKS                       R7 R7 K28 ["_pendingResponses"]
      160 LOADNIL                          R8
      161 SETTABLE                         R8 R7 R4
      162 GETUPVAL                         R8 0
      163 GETTABLEKS                       R8 R8 K31 ["_heartbeatThreads"]
      165 GETTABLE                         R7 R8 R4
      166 JUMPIFNOT                        R7 ; [+9]
      167 GETUPVAL                         R8 0
      168 GETTABLEKS                       R8 R8 K31 ["_heartbeatThreads"]
      170 LOADNIL                          R9
      171 SETTABLE                         R9 R8 R4
      172 GETIMPORT                        R8 K45 [task.cancel]
      174 MOVE                             R9 R7
      175 CALL                             R8 1 0
      176 GETTABLEKS                       R8 R6 K46 ["n"]
      178 LOADNIL                          R9
      179 SETTABLEKS                       R9 R6 K46 ["n"]
      181 GETUPVAL                         R9 0
      182 GETTABLEKS                       R9 R9 K4 ["_logger"]
      184 LOADK                            R11 K47 ["[{key}] sending invoke response [args: {args}, to: {to}]"]
      185 DUPTABLE                         R12 K49 [{"key", "args", "to"}]
      186 GETUPVAL                         R13 1
      187 SETTABLEKS                       R13 R12 K6 ["key"]
      189 SETTABLEKS                       R6 R12 K40 ["args"]
      191 SETTABLEKS                       R2 R12 K48 ["to"]
      193 NAMECALL                         R9 R9 K14 ["info"]
      195 CALL                             R9 3 0
      196 DUPTABLE                         R9 K51 [{["kind"] = "RESULT", [2], ["toId"], ["fromId"], ["args"], ["argCount"]}]
      197 SETTABLEKS                       R1 R9 K0 ["requestId"]
      199 SETTABLEKS                       R2 R9 K2 ["toId"]
      201 GETUPVAL                         R10 0
      202 GETTABLEKS                       R10 R10 K10 ["_identity"]
      204 SETTABLEKS                       R10 R9 K1 ["fromId"]
      206 SETTABLEKS                       R6 R9 K40 ["args"]
      208 SETTABLEKS                       R8 R9 K41 ["argCount"]
      210 GETUPVAL                         R10 0
      211 GETTABLEKS                       R10 R10 K22 ["_plugin"]
      213 MOVE                             R12 R3
      214 MOVE                             R13 R9
      215 NAMECALL                         R10 R10 K23 ["Invoke"]
      217 CALL                             R10 3 0
      218 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["_connections"]
        7 GETUPVAL                         R2 2
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 0
       10 JUMPIFNOTEQ                      R0 R1 ; [+7]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K1 ["_connections"]
       15 GETUPVAL                         R1 2
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R0 R1
       18 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 3
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["TAG_INVOKE"]
        6 MOVE                             R6 R1
        7 LOADK                            R7 K1 ["ToExecuter"]
        8 SETLIST                          R4 R5 3 [1]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R7 R0 K2 ["_connections"]
       13 GETTABLE                         R6 R7 R3
       14 NOT                              R5 R6
       15 LOADK                            R6 K3 ["Invoke connection for key %* already exists"]
       16 MOVE                             R8 R1
       17 NAMECALL                         R6 R6 K4 ["format"]
       19 CALL                             R6 2 1
       20 FASTCALL2                        ASSERT R5 R6 ; [+3]
       22 GETIMPORT                        R4 K6 [assert]
       24 CALL                             R4 2 0
       25 MOVE                             R6 R3
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R2
       32 NAMECALL                         R4 R0 K7 ["_onPluginInvoke"]
       34 CALL                             R4 3 1
       35 GETTABLEKS                       R5 R0 K2 ["_connections"]
       37 SETTABLE                         R4 R5 R3
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 RETURN                           R5 1

PROTO_18:
        0 NEWTABLE                         R2 0 1
        2 MOVE                             R3 R0
        3 SETLIST                          R2 R3 1 [1]
        5 JUMPIFNOT                        R1 ; [+11]
        6 FASTCALL1                        TOSTRING R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K1 [tostring]
       10 CALL                             R5 1 1
       11 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K4 [table.insert]
       16 CALL                             R3 2 0
       17 GETIMPORT                        R3 K6 [table.concat]
       19 MOVE                             R4 R2
       20 LOADK                            R5 K7 [", "]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["args"]
        5 SETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R0 K1 ["argCount"]
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["_infiniteYieldThreads"]
       12 GETUPVAL                         R3 3
       13 GETTABLE                         R1 R2 R3
       14 JUMPIFNOT                        R1 ; [+10]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K2 ["_infiniteYieldThreads"]
       18 GETUPVAL                         R3 3
       19 LOADNIL                          R4
       20 SETTABLE                         R4 R2 R3
       21 GETIMPORT                        R2 K5 [task.cancel]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K6 ["_resetDeadlines"]
       28 GETUPVAL                         R3 3
       29 LOADNIL                          R4
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K7 ["_ackedRequests"]
       34 GETUPVAL                         R3 3
       35 LOADNIL                          R4
       36 SETTABLE                         R4 R2 R3
       37 GETIMPORT                        R2 K10 [coroutine.status]
       39 GETUPVAL                         R3 4
       40 CALL                             R2 1 1
       41 JUMPIFNOTEQKS                    R2 K11 ["suspended"] ; [+5]
       43 GETIMPORT                        R2 K13 [task.spawn]
       45 GETUPVAL                         R3 4
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R0 0 2
        5 LOADB                            R1 0
        6 LOADK                            R6 K0 ["Network action %* sent to %* failed - Target is not reachable (%*). "]
        7 GETUPVAL                         R8 1
        8 GETUPVAL                         R9 2
        9 GETUPVAL                         R11 1
       10 GETUPVAL                         R12 2
       11 NEWTABLE                         R13 0 1
       13 MOVE                             R14 R11
       14 SETLIST                          R13 R14 1 [1]
       16 JUMPIFNOT                        R12 ; [+11]
       17 FASTCALL1                        TOSTRING R12 ; [+3]
       18 MOVE                             R17 R12
       19 GETIMPORT                        R16 K2 [tostring]
       21 CALL                             R16 1 1
       22 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
       24 MOVE                             R15 R13
       25 GETIMPORT                        R14 K5 [table.insert]
       27 CALL                             R14 2 0
       28 GETIMPORT                        R14 K7 [table.concat]
       30 MOVE                             R15 R13
       31 LOADK                            R16 K8 [", "]
       32 CALL                             R14 2 1
       33 MOVE                             R10 R14
       34 NAMECALL                         R6 R6 K9 ["format"]
       36 CALL                             R6 4 1
       37 MOVE                             R3 R6
       38 LOADK                            R4 K10 ["No OnInvoke handler responded for this action. "]
       39 LOADK                            R5 K11 ["Sender: %*."]
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R7 R7 K12 ["_identity"]
       43 NAMECALL                         R5 R5 K9 ["format"]
       45 CALL                             R5 2 1
       46 CONCAT                           R2 R3 R5
       47 SETLIST                          R0 R1 2 [1]
       49 SETUPVAL                         R0 0
       50 LOADN                            R0 2
       51 SETUPVAL                         R0 4
       52 GETUPVAL                         R0 3
       53 GETTABLEKS                       R0 R0 K13 ["_invokeThreads"]
       55 GETUPVAL                         R1 5
       56 LOADNIL                          R2
       57 SETTABLE                         R2 R0 R1
       58 GETUPVAL                         R0 3
       59 GETTABLEKS                       R0 R0 K14 ["_infiniteYieldThreads"]
       61 GETUPVAL                         R1 5
       62 LOADNIL                          R2
       63 SETTABLE                         R2 R0 R1
       64 GETUPVAL                         R0 3
       65 GETTABLEKS                       R0 R0 K15 ["_resetDeadlines"]
       67 GETUPVAL                         R1 5
       68 LOADNIL                          R2
       69 SETTABLE                         R2 R0 R1
       70 GETUPVAL                         R0 3
       71 GETTABLEKS                       R0 R0 K16 ["_ackedRequests"]
       73 GETUPVAL                         R1 5
       74 LOADNIL                          R2
       75 SETTABLE                         R2 R0 R1
       76 GETIMPORT                        R0 K19 [coroutine.status]
       78 GETUPVAL                         R1 6
       79 CALL                             R0 1 1
       80 JUMPIFNOTEQKS                    R0 K20 ["suspended"] ; [+5]
       82 GETIMPORT                        R0 K23 [task.spawn]
       84 GETUPVAL                         R1 6
       85 CALL                             R0 1 0
       86 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_infiniteYieldThreads"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K3 [task.delay]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["_unreachableTimeout"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U6
       17 CALL                             R2 2 1
       18 SETTABLE                         R2 R0 R1
       19 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_infiniteYieldThreads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K3 [task.cancel]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["_infiniteYieldThreads"]
       14 GETUPVAL                         R2 1
       15 GETIMPORT                        R3 K5 [task.delay]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["_unreachableTimeout"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U6
       28 CALL                             R3 2 1
       29 SETTABLE                         R3 R1 R2
       30 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_infiniteYieldThreads"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+33]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["_ackedRequests"]
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R0 R1 R2
       11 JUMPIF                           R0 ; [+27]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["_plugin"]
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 3
       17 NAMECALL                         R0 R0 K3 ["Invoke"]
       19 CALL                             R0 3 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["_infiniteYieldThreads"]
       23 GETUPVAL                         R2 1
       24 GETTABLE                         R0 R1 R2
       25 JUMPIFNOT                        R0 ; [+13]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K1 ["_ackedRequests"]
       29 GETUPVAL                         R2 1
       30 GETTABLE                         R0 R1 R2
       31 JUMPIF                           R0 ; [+7]
       32 GETIMPORT                        R0 K6 [task.wait]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K7 ["_retryInterval"]
       37 CALL                             R0 1 0
       38 JUMPBACK                         ; [-39]
       39 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      3
        1 GETTABLEKS                       R3 R0 K0 ["_invokeCounter"]
        3 ADDK                             R3 R3 K1 [1]
        4 SETTABLEKS                       R3 R0 K0 ["_invokeCounter"]
        6 LOADK                            R3 K2 ["%*:%*"]
        7 GETTABLEKS                       R5 R0 K3 ["_instanceToken"]
        9 GETTABLEKS                       R6 R0 K0 ["_invokeCounter"]
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 3 1
       14 GETIMPORT                        R4 K7 [coroutine.running]
       16 CALL                             R4 0 1
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 GETTABLEKS                       R7 R0 K8 ["_invokeThreads"]
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          REF R5
       23 CAPTURE                          REF R6
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 SETTABLE                         R8 R7 R3
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CAPTURE                          REF R5
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R6
       35 CAPTURE                          VAL R4
       36 GETTABLEKS                       R8 R0 K9 ["_resetDeadlines"]
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          REF R5
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          REF R6
       45 CAPTURE                          VAL R4
       46 SETTABLE                         R9 R8 R3
       47 GETTABLEKS                       R8 R0 K10 ["_infiniteYieldThreads"]
       49 GETIMPORT                        R9 K13 [task.delay]
       51 GETTABLEKS                       R10 R0 K14 ["_unreachableTimeout"]
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          REF R5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          REF R6
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CALL                             R9 2 1
       62 SETTABLE                         R9 R8 R3
       63 DUPTABLE                         R8 K20 [{"requestId", "toId", "fromId", "args", "argCount"}]
       64 SETTABLEKS                       R3 R8 K15 ["requestId"]
       66 SETTABLEKS                       R2 R8 K16 ["toId"]
       68 GETTABLEKS                       R9 R0 K21 ["_identity"]
       70 SETTABLEKS                       R9 R8 K17 ["fromId"]
       72 NEWTABLE                         R9 0 0
       74 GETVARARGS                       R10 -1
       75 SETLIST                          R9 R10 -1 [1]
       77 SETTABLEKS                       R9 R8 K18 ["args"]
       79 LOADK                            R10 K22 ["#"]
       80 FASTCALL1                        SELECT_VARARG R10 ; [+3]
       81 GETIMPORT                        R9 K24 [select]
       83 GETVARARGS                       R11 -1
       84 CALL                             R9 -1 1
       85 SETTABLEKS                       R9 R8 K19 ["argCount"]
       87 GETTABLEKS                       R9 R0 K25 ["_logger"]
       89 LOADK                            R11 K26 ["[{key}] sending invoke [args: {args}, to: {to}]"]
       90 DUPTABLE                         R12 K29 [{"key", "args", "to"}]
       91 SETTABLEKS                       R1 R12 K27 ["key"]
       93 GETTABLEKS                       R13 R8 K18 ["args"]
       95 SETTABLEKS                       R13 R12 K18 ["args"]
       97 SETTABLEKS                       R2 R12 K28 ["to"]
       99 NAMECALL                         R9 R9 K30 ["info"]
      101 CALL                             R9 3 0
      102 GETUPVAL                         R9 0
      103 NEWTABLE                         R10 0 3
      105 GETUPVAL                         R11 1
      106 GETTABLEKS                       R11 R11 K31 ["TAG_INVOKE"]
      108 MOVE                             R12 R1
      109 LOADK                            R13 K32 ["ToExecuter"]
      110 SETLIST                          R10 R11 3 [1]
      112 CALL                             R9 1 1
      113 GETIMPORT                        R10 K34 [task.spawn]
      115 NEWCLOSURE                       R11 P4
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R8
      120 CALL                             R10 1 0
      121 JUMPIF                           R5 ; [+3]
      122 GETIMPORT                        R10 K36 [coroutine.yield]
      124 CALL                             R10 0 0
      125 GETTABLEKS                       R10 R0 K25 ["_logger"]
      127 LOADK                            R12 K37 ["[{key}] received invoke response"]
      128 DUPTABLE                         R13 K38 [{"key"}]
      129 SETTABLEKS                       R1 R13 K27 ["key"]
      131 NAMECALL                         R10 R10 K30 ["info"]
      133 CALL                             R10 3 0
      134 GETTABLEN                        R10 R5 1
      135 JUMPIF                           R10 ; [+5]
      136 GETIMPORT                        R10 K40 [error]
      138 GETTABLEN                        R11 R5 2
      139 LOADN                            R12 0
      140 CALL                             R10 2 0
      141 LOADN                            R12 2
      142 FASTCALL3                        TABLE_UNPACK R5 R12 R6
      144 MOVE                             R11 R5
      145 MOVE                             R13 R6
      146 GETIMPORT                        R10 K43 [table.unpack]
      148 CALL                             R10 3 -1
      149 CLOSEUPVALS                      R5
      150 RETURN                           R10 -1

PROTO_25:
        0 PREPVARARGS                      3
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 LOADK                            R5 K0 ["InvokeAsync requires a target id for %*; use a sentinel (ALL / FOCUSED) to broadcast"]
        6 MOVE                             R7 R1
        7 NAMECALL                         R5 R5 K1 ["format"]
        9 CALL                             R5 2 1
       10 FASTCALL2                        ASSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R0 K4 ["_acquireRequesterConnection"]
       18 CALL                             R3 2 1
       19 GETIMPORT                        R4 K7 [table.pack]
       21 GETIMPORT                        R5 K9 [pcall]
       23 GETTABLEKS                       R6 R0 K10 ["_doInvoke"]
       25 MOVE                             R7 R0
       26 MOVE                             R8 R1
       27 MOVE                             R9 R2
       28 GETVARARGS                       R10 -1
       29 CALL                             R5 -1 -1
       30 CALL                             R4 -1 1
       31 MOVE                             R7 R3
       32 NAMECALL                         R5 R0 K11 ["_releaseRequesterConnection"]
       34 CALL                             R5 2 0
       35 GETTABLEN                        R5 R4 1
       36 JUMPIF                           R5 ; [+5]
       37 GETIMPORT                        R5 K13 [error]
       39 GETTABLEN                        R6 R4 2
       40 LOADN                            R7 0
       41 CALL                             R5 2 0
       42 LOADN                            R7 2
       43 GETTABLEKS                       R8 R4 K14 ["n"]
       45 FASTCALL3                        TABLE_UNPACK R4 R7 R8
       47 MOVE                             R6 R4
       48 GETIMPORT                        R5 K16 [table.unpack]
       50 CALL                             R5 3 -1
       51 RETURN                           R5 -1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_heartbeatThreads"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETIMPORT                        R6 K3 [task.cancel]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-5]
       11 GETIMPORT                        R1 K6 [table.clear]
       13 GETTABLEKS                       R2 R0 K0 ["_heartbeatThreads"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K7 ["_pendingResponses"]
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 DUPTABLE                         R6 K16 [{["kind"] = "RESULT", ["requestId"], ["toId"], ["fromId"], ["args"], ["argCount"] = 2}]
       22 GETTABLEKS                       R7 R5 K10 ["requestId"]
       24 SETTABLEKS                       R7 R6 K10 ["requestId"]
       26 GETTABLEKS                       R7 R5 K11 ["toId"]
       28 SETTABLEKS                       R7 R6 K11 ["toId"]
       30 GETTABLEKS                       R7 R0 K17 ["_identity"]
       32 SETTABLEKS                       R7 R6 K12 ["fromId"]
       34 NEWTABLE                         R7 0 2
       36 LOADB                            R8 0
       37 LOADK                            R9 K18 ["Target is closed (%*)"]
       38 GETTABLEKS                       R12 R5 K19 ["toRequesterKey"]
       40 GETTABLEKS                       R13 R0 K17 ["_identity"]
       42 NEWTABLE                         R14 0 1
       44 MOVE                             R15 R12
       45 SETLIST                          R14 R15 1 [1]
       47 JUMPIFNOT                        R13 ; [+11]
       48 FASTCALL1                        TOSTRING R13 ; [+3]
       49 MOVE                             R18 R13
       50 GETIMPORT                        R17 K21 [tostring]
       52 CALL                             R17 1 1
       53 FASTCALL2                        TABLE_INSERT R14 R17 ; [+4]
       55 MOVE                             R16 R14
       56 GETIMPORT                        R15 K23 [table.insert]
       58 CALL                             R15 2 0
       59 GETIMPORT                        R15 K25 [table.concat]
       61 MOVE                             R16 R14
       62 LOADK                            R17 K26 [", "]
       63 CALL                             R15 2 1
       64 MOVE                             R11 R15
       65 NAMECALL                         R9 R9 K27 ["format"]
       67 CALL                             R9 2 1
       68 SETLIST                          R7 R8 2 [1]
       70 SETTABLEKS                       R7 R6 K13 ["args"]
       72 GETTABLEKS                       R7 R0 K28 ["_plugin"]
       74 GETTABLEKS                       R9 R5 K19 ["toRequesterKey"]
       76 MOVE                             R10 R6
       77 NAMECALL                         R7 R7 K29 ["Invoke"]
       79 CALL                             R7 3 0
       80 FORGLOOP                         R1 2 ; [-60]
       82 GETIMPORT                        R1 K6 [table.clear]
       84 GETTABLEKS                       R2 R0 K7 ["_pendingResponses"]
       86 CALL                             R1 1 0
       87 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["_infiniteYieldThreads"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 JUMPIFNOT                        R5 ; [+4]
        6 GETIMPORT                        R6 K3 [task.cancel]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-6]
       12 GETIMPORT                        R1 K6 [table.clear]
       14 GETTABLEKS                       R2 R0 K0 ["_infiniteYieldThreads"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K7 ["_invokeThreads"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 DUPTABLE                         R6 K16 [{["kind"] = "RESULT", ["requestId"], ["toId"], ["fromId"], ["args"], ["argCount"] = 2}]
       23 SETTABLEKS                       R4 R6 K10 ["requestId"]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K17 ["Identity"]
       28 GETTABLEKS                       R7 R7 K18 ["ALL"]
       30 SETTABLEKS                       R7 R6 K11 ["toId"]
       32 GETTABLEKS                       R7 R0 K19 ["_identity"]
       34 SETTABLEKS                       R7 R6 K12 ["fromId"]
       36 NEWTABLE                         R7 0 2
       38 LOADB                            R8 0
       39 LOADK                            R9 K20 ["Self is closed (%*)"]
       40 GETTABLEKS                       R12 R0 K19 ["_identity"]
       42 NEWTABLE                         R13 0 1
       44 MOVE                             R14 R4
       45 SETLIST                          R13 R14 1 [1]
       47 JUMPIFNOT                        R12 ; [+11]
       48 FASTCALL1                        TOSTRING R12 ; [+3]
       49 MOVE                             R17 R12
       50 GETIMPORT                        R16 K22 [tostring]
       52 CALL                             R16 1 1
       53 FASTCALL2                        TABLE_INSERT R13 R16 ; [+4]
       55 MOVE                             R15 R13
       56 GETIMPORT                        R14 K24 [table.insert]
       58 CALL                             R14 2 0
       59 GETIMPORT                        R14 K26 [table.concat]
       61 MOVE                             R15 R13
       62 LOADK                            R16 K27 [", "]
       63 CALL                             R14 2 1
       64 MOVE                             R11 R14
       65 NAMECALL                         R9 R9 K28 ["format"]
       67 CALL                             R9 2 1
       68 SETLIST                          R7 R8 2 [1]
       70 SETTABLEKS                       R7 R6 K13 ["args"]
       72 MOVE                             R7 R5
       73 MOVE                             R8 R6
       74 CALL                             R7 1 0
       75 FORGLOOP                         R1 2 ; [-54]
       77 GETIMPORT                        R1 K6 [table.clear]
       79 GETTABLEKS                       R2 R0 K7 ["_invokeThreads"]
       81 CALL                             R1 1 0
       82 GETIMPORT                        R1 K6 [table.clear]
       84 GETTABLEKS                       R2 R0 K29 ["_resetDeadlines"]
       86 CALL                             R1 1 0
       87 GETIMPORT                        R1 K6 [table.clear]
       89 GETTABLEKS                       R2 R0 K30 ["_ackedRequests"]
       91 CALL                             R1 1 0
       92 RETURN                           R0 0

PROTO_28:
        0 NAMECALL                         R1 R0 K0 ["_closePendingResponses"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_closePendingRequests"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_pendingTeardowns"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETIMPORT                        R6 K5 [task.cancel]
       13 MOVE                             R7 R5
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-5]
       17 GETIMPORT                        R1 K8 [table.clear]
       19 GETTABLEKS                       R2 R0 K2 ["_pendingTeardowns"]
       21 CALL                             R1 1 0
       22 GETTABLEKS                       R1 R0 K9 ["_connections"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 NAMECALL                         R6 R5 K10 ["Disconnect"]
       29 CALL                             R6 1 0
       30 FORGLOOP                         R1 2 ; [-4]
       32 GETIMPORT                        R1 K8 [table.clear]
       34 GETTABLEKS                       R2 R0 K9 ["_connections"]
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K11 ["_eventConnections"]
       39 LOADNIL                          R2
       40 LOADNIL                          R3
       41 FORGPREP                         R1
       42 NAMECALL                         R6 R5 K10 ["Disconnect"]
       44 CALL                             R6 1 0
       45 FORGLOOP                         R1 2 ; [-4]
       47 GETIMPORT                        R1 K8 [table.clear]
       49 GETTABLEKS                       R2 R0 K11 ["_eventConnections"]
       51 CALL                             R1 1 0
       52 GETTABLEKS                       R1 R0 K12 ["_handledRequestExpiries"]
       54 LOADNIL                          R2
       55 LOADNIL                          R3
       56 FORGPREP                         R1
       57 GETIMPORT                        R6 K5 [task.cancel]
       59 MOVE                             R7 R5
       60 CALL                             R6 1 0
       61 FORGLOOP                         R1 2 ; [-5]
       63 GETIMPORT                        R1 K8 [table.clear]
       65 GETTABLEKS                       R2 R0 K12 ["_handledRequestExpiries"]
       67 CALL                             R1 1 0
       68 GETIMPORT                        R1 K8 [table.clear]
       70 GETTABLEKS                       R2 R0 K13 ["_requesterRefCounts"]
       72 CALL                             R1 1 0
       73 GETIMPORT                        R1 K8 [table.clear]
       75 GETTABLEKS                       R2 R0 K14 ["_handledRequests"]
       77 CALL                             R1 1 0
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Utils"]
       17 GETTABLEKS                       R3 R3 K11 ["Logger"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Utils"]
       29 GETTABLEKS                       R5 R5 K13 ["makeKey"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 16 0
       34 SETTABLEKS                       R5 R5 K14 ["__index"]
       36 DUPCLOSURE                       R6 K15 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R6 R5 K16 ["new"]
       42 DUPCLOSURE                       R6 K17 [PROTO_1]
       43 SETTABLEKS                       R6 R5 K18 ["GetIdentity"]
       45 DUPCLOSURE                       R6 K19 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R6 R5 K20 ["_shouldHandle"]
       49 DUPCLOSURE                       R6 K21 [PROTO_3]
       50 SETTABLEKS                       R6 R5 K22 ["_onPluginInvoke"]
       52 DUPCLOSURE                       R6 K23 [PROTO_6]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R6 R5 K24 ["OnFire"]
       57 DUPCLOSURE                       R6 K25 [PROTO_7]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R6 R5 K26 ["Fire"]
       62 DUPCLOSURE                       R6 K27 [PROTO_9]
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R6 R5 K28 ["_acquireRequesterConnection"]
       67 DUPCLOSURE                       R6 K29 [PROTO_11]
       68 SETTABLEKS                       R6 R5 K30 ["_releaseRequesterConnection"]
       70 DUPCLOSURE                       R6 K31 [PROTO_13]
       71 SETTABLEKS                       R6 R5 K32 ["_markRequestHandled"]
       73 DUPCLOSURE                       R6 K33 [PROTO_17]
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R6 R5 K34 ["OnInvoke"]
       78 DUPCLOSURE                       R6 K35 [PROTO_18]
       79 DUPCLOSURE                       R7 K36 [PROTO_24]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R7 R5 K37 ["_doInvoke"]
       84 DUPCLOSURE                       R7 K38 [PROTO_25]
       85 SETTABLEKS                       R7 R5 K39 ["InvokeAsync"]
       87 DUPCLOSURE                       R7 K40 [PROTO_26]
       88 SETTABLEKS                       R7 R5 K41 ["_closePendingResponses"]
       90 DUPCLOSURE                       R7 K42 [PROTO_27]
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R7 R5 K43 ["_closePendingRequests"]
       94 DUPCLOSURE                       R7 K44 [PROTO_28]
       95 SETTABLEKS                       R7 R5 K45 ["Destroy"]
       97 RETURN                           R5 1
