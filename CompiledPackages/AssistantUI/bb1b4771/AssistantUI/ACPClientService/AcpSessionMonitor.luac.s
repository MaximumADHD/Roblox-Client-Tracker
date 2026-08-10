PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["addMessage"]
        3 GETIMPORT                        R3 K3 [table.clone]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K4 ["threadId"]
       10 MOVE                             R2 R3
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["addContent"]
        3 GETIMPORT                        R3 K3 [table.clone]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K4 ["threadId"]
       10 MOVE                             R2 R3
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editContent"]
        3 GETIMPORT                        R3 K3 [table.clone]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 SETTABLEKS                       R4 R3 K4 ["threadId"]
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["service"]
        3 JUMPIFNOT                        R3 ; [+6]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 NAMECALL                         R4 R3 K1 ["setClientToolUiContext"]
        9 CALL                             R4 4 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["new"]
        5 DUPTABLE                         R4 K5 [{"addMessage", "addContent", "editContent", "onToolWidgetCreated"}]
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R5 R4 K1 ["addMessage"]
       11 NEWCLOSURE                       R5 P2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R5 R4 K2 ["addContent"]
       16 NEWCLOSURE                       R5 P3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R5 R4 K3 ["editContent"]
       21 NEWCLOSURE                       R5 P4
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R5 R4 K4 ["onToolWidgetCreated"]
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1

PROTO_6:
        0 NEWTABLE                         R4 16 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R0 R3 K2 ["_factory"]
       10 SETTABLEKS                       R2 R3 K3 ["_deps"]
       12 SETTABLEKS                       R1 R3 K4 ["_threadId"]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K5 ["_relay"]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K6 ["_sessionId"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K7 ["_service"]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K8 ["_unsubscribe"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K9 ["_observers"]
       33 LOADN                            R4 1
       34 SETTABLEKS                       R4 R3 K10 ["_nextObserverId"]
       36 LOADB                            R4 0
       37 SETTABLEKS                       R4 R3 K11 ["_pinned"]
       39 LOADB                            R4 0
       40 SETTABLEKS                       R4 R3 K12 ["_localTurnOwnsInput"]
       42 LOADNIL                          R4
       43 SETTABLEKS                       R4 R3 K13 ["_clearInputDisabled"]
       45 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_unsubscribe"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_unsubscribe"]
        5 CALL                             R1 0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["_unsubscribe"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["_sessionId"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K2 ["_service"]
       15 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_deps"]
        2 GETTABLEKS                       R3 R1 K1 ["sessionUpdate"]
        4 LOADB                            R4 0
        5 JUMPIFNOTEQKS                    R3 K2 ["state_update"] ; [+7]
        7 GETTABLEKS                       R5 R1 K3 ["state"]
        9 JUMPIFEQKS                       R5 K4 ["idle"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 JUMPIFNOT                        R4 ; [+9]
       14 GETTABLEKS                       R5 R0 K5 ["_clearInputDisabled"]
       16 JUMPIFNOT                        R5 ; [+5]
       17 LOADNIL                          R6
       18 SETTABLEKS                       R6 R0 K5 ["_clearInputDisabled"]
       20 MOVE                             R6 R5
       21 CALL                             R6 0 0
       22 RETURN                           R0 0
       23 LOADB                            R5 1
       24 JUMPIFEQKS                       R3 K6 ["user_message"] ; [+10]
       26 LOADB                            R5 0
       27 JUMPIFNOTEQKS                    R3 K2 ["state_update"] ; [+7]
       29 GETTABLEKS                       R6 R1 K3 ["state"]
       31 JUMPIFEQKS                       R6 K7 ["running"] ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 JUMPIF                           R5 ; [+1]
       36 RETURN                           R0 0
       37 GETTABLEKS                       R6 R0 K8 ["_localTurnOwnsInput"]
       39 JUMPIF                           R6 ; [+3]
       40 GETTABLEKS                       R6 R0 K5 ["_clearInputDisabled"]
       42 JUMPIFNOT                        R6 ; [+1]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R6 R0 K9 ["_threadId"]
       46 GETTABLEKS                       R7 R2 K10 ["threadId"]
       48 JUMPIFEQ                         R6 R7 ; [+2]
       50 RETURN                           R0 0
       51 GETTABLEKS                       R6 R2 K11 ["clearInputDisabled"]
       53 SETTABLEKS                       R6 R0 K5 ["_clearInputDisabled"]
       55 GETTABLEKS                       R6 R2 K12 ["markInputDisabled"]
       57 GETUPVAL                         R7 0
       58 GETTABLEKS                       R7 R7 K13 ["Generation"]
       60 CALL                             R6 1 0
       61 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_relay"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["handleUpdate"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["_trackInputStateForTurn"]
       11 CALL                             R1 2 0
       12 GETIMPORT                        R1 K5 [table.clone]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K6 ["_observers"]
       17 CALL                             R1 1 3
       18 FORGPREP                         R1
       19 MOVE                             R6 R5
       20 MOVE                             R7 R0
       21 CALL                             R6 1 0
       22 FORGLOOP                         R1 2 ; [-4]
       24 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_deps"]
        2 GETTABLEKS                       R2 R2 K1 ["service"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K2 ["_sessionId"]
        8 JUMPIFNOTEQ                      R3 R1 ; [+6]
       10 GETTABLEKS                       R3 R0 K3 ["_service"]
       12 JUMPIFNOTEQ                      R3 R2 ; [+2]
       14 RETURN                           R0 0
       15 NAMECALL                         R3 R0 K4 ["_unsubscribeSession"]
       17 CALL                             R3 1 0
       18 SETTABLEKS                       R1 R0 K2 ["_sessionId"]
       20 SETTABLEKS                       R2 R0 K3 ["_service"]
       22 MOVE                             R5 R1
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R3 R2 K5 ["subscribeToSessionUpdates"]
       27 CALL                             R3 3 1
       28 SETTABLEKS                       R3 R0 K6 ["_unsubscribe"]
       30 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R2 1
        1 SETTABLEKS                       R2 R0 K0 ["_localTurnOwnsInput"]
        3 GETTABLEKS                       R2 R0 K1 ["_relay"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K2 ["beginTurn"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_12:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_localTurnOwnsInput"]
        3 GETTABLEKS                       R1 R0 K1 ["_relay"]
        5 NAMECALL                         R1 R1 K2 ["endTurn"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_relay"]
        2 NAMECALL                         R1 R1 K1 ["getOrCreateAssistantMessage"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_observers"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["_factory"]
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R0 R0 K2 ["_releaseMonitor"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_nextObserverId"]
        2 GETTABLEKS                       R3 R0 K0 ["_nextObserverId"]
        4 ADDK                             R3 R3 K1 [1]
        5 SETTABLEKS                       R3 R0 K0 ["_nextObserverId"]
        7 GETTABLEKS                       R3 R0 K2 ["_observers"]
        9 SETTABLE                         R1 R3 R2
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 RETURN                           R3 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_relay"]
        2 NAMECALL                         R1 R1 K1 ["resetRenderedState"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_17:
        0 SETTABLEKS                       R1 R0 K0 ["_pinned"]
        2 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["_unsubscribeSession"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_deps"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_monitors"]
       14 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["_monitors"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 GETTABLEKS                       R6 R0 K2 ["_deps"]
       12 CALL                             R3 3 1
       13 GETTABLEKS                       R4 R0 K0 ["_monitors"]
       15 SETTABLE                         R3 R4 R1
       16 RETURN                           R3 1

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["_pinned"]
        2 JUMPIF                           R2 ; [+7]
        3 GETIMPORT                        R2 K2 [next]
        5 GETTABLEKS                       R3 R1 K3 ["_observers"]
        7 CALL                             R2 1 1
        8 JUMPIFEQKNIL                     R2 ; [+2]
       10 RETURN                           R0 0
       11 NAMECALL                         R2 R1 K4 ["_unsubscribeSession"]
       13 CALL                             R2 1 0
       14 GETTABLEKS                       R2 R0 K5 ["_monitors"]
       16 GETTABLEKS                       R3 R1 K6 ["_threadId"]
       18 LOADNIL                          R4
       19 SETTABLE                         R4 R2 R3
       20 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 GETTABLEKS                       R4 R0 K3 ["_monitors"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K4 ["_threadId"]
        8 JUMPIFEQ                         R8 R1 ; [+12]
       10 GETTABLEKS                       R8 R7 K5 ["_pinned"]
       12 JUMPIFNOT                        R8 ; [+8]
       13 LOADB                            R10 0
       14 NAMECALL                         R8 R7 K6 ["setPinned"]
       16 CALL                             R8 2 0
       17 MOVE                             R10 R7
       18 NAMECALL                         R8 R0 K7 ["_releaseMonitor"]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-16]
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R0 K8 ["getSessionMonitor"]
       26 CALL                             R3 2 1
       27 LOADB                            R6 1
       28 NAMECALL                         R4 R3 K6 ["setPinned"]
       30 CALL                             R4 2 0
       31 JUMPIFNOT                        R2 ; [+4]
       32 MOVE                             R6 R2
       33 NAMECALL                         R4 R3 K9 ["attachSession"]
       35 CALL                             R4 2 0
       36 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_monitors"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 NAMECALL                         R6 R5 K4 ["destroy"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 ; [-4]
       11 GETIMPORT                        R1 K6 [table.clear]
       13 GETTABLEKS                       R2 R0 K3 ["_monitors"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["ACPClientServiceUIRelay"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K10 ["InputStateTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       34 GETTABLEKS                       R5 R5 K13 ["useAddContent"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K14 ["useAddMessage"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K15 ["useEditContent"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K16 ["InputDisabledReasons"]
       53 NEWTABLE                         R8 8 0
       55 SETTABLEKS                       R8 R8 K17 ["__index"]
       57 NEWTABLE                         R9 16 0
       59 SETTABLEKS                       R9 R9 K17 ["__index"]
       61 DUPCLOSURE                       R10 K18 [PROTO_5]
       62 CAPTURE                          VAL R1
       63 DUPCLOSURE                       R11 K19 [PROTO_6]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R10
       66 SETTABLEKS                       R11 R9 K20 ["new"]
       68 DUPCLOSURE                       R11 K21 [PROTO_7]
       69 SETTABLEKS                       R11 R9 K22 ["_unsubscribeSession"]
       71 DUPCLOSURE                       R11 K23 [PROTO_8]
       72 CAPTURE                          VAL R7
       73 SETTABLEKS                       R11 R9 K24 ["_trackInputStateForTurn"]
       75 DUPCLOSURE                       R11 K25 [PROTO_10]
       76 SETTABLEKS                       R11 R9 K26 ["attachSession"]
       78 DUPCLOSURE                       R11 K27 [PROTO_11]
       79 SETTABLEKS                       R11 R9 K28 ["beginTurn"]
       81 DUPCLOSURE                       R11 K29 [PROTO_12]
       82 SETTABLEKS                       R11 R9 K30 ["endTurn"]
       84 DUPCLOSURE                       R11 K31 [PROTO_13]
       85 SETTABLEKS                       R11 R9 K32 ["getOrCreateAssistantMessage"]
       87 DUPCLOSURE                       R11 K33 [PROTO_15]
       88 SETTABLEKS                       R11 R9 K34 ["observeUpdates"]
       90 DUPCLOSURE                       R11 K35 [PROTO_16]
       91 SETTABLEKS                       R11 R9 K36 ["resetRenderedState"]
       93 DUPCLOSURE                       R11 K37 [PROTO_17]
       94 SETTABLEKS                       R11 R9 K38 ["setPinned"]
       96 DUPCLOSURE                       R11 K39 [PROTO_18]
       97 SETTABLEKS                       R11 R9 K40 ["destroy"]
       99 DUPCLOSURE                       R11 K41 [PROTO_19]
      100 CAPTURE                          VAL R8
      101 SETTABLEKS                       R11 R8 K20 ["new"]
      103 DUPCLOSURE                       R11 K42 [PROTO_20]
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R11 R8 K43 ["getSessionMonitor"]
      107 DUPCLOSURE                       R11 K44 [PROTO_21]
      108 SETTABLEKS                       R11 R8 K45 ["_releaseMonitor"]
      110 DUPCLOSURE                       R11 K46 [PROTO_22]
      111 SETTABLEKS                       R11 R8 K47 ["syncPinnedThread"]
      113 DUPCLOSURE                       R11 K48 [PROTO_23]
      114 SETTABLEKS                       R11 R8 K40 ["destroy"]
      116 DUPTABLE                         R11 K51 [{"AcpSessionMonitor", "AcpSessionMonitorFactory"}]
      117 SETTABLEKS                       R9 R11 K49 ["AcpSessionMonitor"]
      119 SETTABLEKS                       R8 R11 K50 ["AcpSessionMonitorFactory"]
      121 RETURN                           R11 1
