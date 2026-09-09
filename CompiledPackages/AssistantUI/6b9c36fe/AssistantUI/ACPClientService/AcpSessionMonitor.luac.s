PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["threadId"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroyed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K1 ["acp-monitor-destroyed"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["addMessage"]
        9 GETIMPORT                        R3 K5 [table.clone]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 SETTABLEKS                       R4 R3 K6 ["threadId"]
       16 MOVE                             R2 R3
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroyed"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K1 ["acp-monitor-destroyed"]
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["addContent"]
        9 GETIMPORT                        R3 K5 [table.clone]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 SETTABLEKS                       R4 R3 K6 ["threadId"]
       16 MOVE                             R2 R3
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["editContent"]
        8 GETIMPORT                        R3 K4 [table.clone]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K5 ["threadId"]
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["destroyed"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["service"]
        8 JUMPIFNOT                        R3 ; [+6]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 MOVE                             R8 R2
       12 NAMECALL                         R4 R3 K2 ["setClientToolUiContext"]
       14 CALL                             R4 4 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["title"]
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K3 [{["rawTransformValues"] = True}]
        5 RETURN                           R1 2

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroyed"]
        3 JUMPIF                           R1 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["title"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K1 ["title"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K2 ["editThread"]
       13 GETUPVAL                         R3 2
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["new"]
        5 DUPTABLE                         R5 K6 [{"addMessage", "addContent", "editContent", "onToolWidgetCreated", "onSessionInfo"}]
        6 NEWCLOSURE                       R6 P1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R6 R5 K1 ["addMessage"]
       12 NEWCLOSURE                       R6 P2
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R6 R5 K2 ["addContent"]
       18 NEWCLOSURE                       R6 P3
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R6 R5 K3 ["editContent"]
       24 NEWCLOSURE                       R6 P4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R6 R5 K4 ["onToolWidgetCreated"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K7 ["FFlagAssistantACPFixPendingToolCall"]
       32 JUMPIFNOT                        R7 ; [+5]
       33 NEWCLOSURE                       R6 P5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 JUMP                             ; [+1]
       38 LOADNIL                          R6
       39 SETTABLEKS                       R6 R5 K5 ["onSessionInfo"]
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_8:
        0 NEWTABLE                         R4 16 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R0 R3 K2 ["_factory"]
       10 SETTABLEKS                       R2 R3 K3 ["_deps"]
       12 SETTABLEKS                       R1 R3 K4 ["_threadId"]
       14 DUPTABLE                         R4 K7 [{["destroyed"] = False}]
       15 SETTABLEKS                       R4 R3 K8 ["_writeGate"]
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 GETTABLEKS                       R7 R3 K8 ["_writeGate"]
       22 CALL                             R4 3 1
       23 SETTABLEKS                       R4 R3 K9 ["_relay"]
       25 LOADNIL                          R4
       26 SETTABLEKS                       R4 R3 K10 ["_sessionId"]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K11 ["_service"]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K12 ["_unsubscribe"]
       34 NEWTABLE                         R4 0 0
       36 SETTABLEKS                       R4 R3 K13 ["_observers"]
       38 LOADN                            R4 1
       39 SETTABLEKS                       R4 R3 K14 ["_nextObserverId"]
       41 LOADB                            R4 0
       42 SETTABLEKS                       R4 R3 K15 ["_pinned"]
       44 LOADB                            R4 0
       45 SETTABLEKS                       R4 R3 K16 ["_localTurnOwnsInput"]
       47 LOADNIL                          R4
       48 SETTABLEKS                       R4 R3 K17 ["_clearInputDisabled"]
       50 LOADB                            R4 0
       51 SETTABLEKS                       R4 R3 K18 ["_historyReplayActive"]
       53 RETURN                           R3 1

PROTO_9:
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

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_observers"]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K5 [table.clear]
        7 GETTABLEKS                       R3 R0 K3 ["_observers"]
        9 CALL                             R2 1 0
       10 DUPTABLE                         R2 K12 [{["sessionUpdate"] = "state_update", ["state"] = "idle", ["stopReason"] = "cancelled"}]
       11 MOVE                             R3 R1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 MOVE                             R8 R7
       16 MOVE                             R9 R2
       17 CALL                             R8 1 0
       18 FORGLOOP                         R3 2 ; [-4]
       20 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R1 R1 K1 ["destroyed"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K2 ["_localTurnOwnsInput"]
        7 JUMPIF                           R1 ; [+3]
        8 GETTABLEKS                       R1 R0 K3 ["_clearInputDisabled"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K4 ["_deps"]
       14 GETTABLEKS                       R1 R1 K5 ["clearInputDisabled"]
       16 SETTABLEKS                       R1 R0 K3 ["_clearInputDisabled"]
       18 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["_deps"]
        8 GETTABLEKS                       R3 R1 K3 ["sessionUpdate"]
       10 LOADB                            R4 0
       11 JUMPIFNOTEQKS                    R3 K4 ["state_update"] ; [+7]
       13 GETTABLEKS                       R5 R1 K5 ["state"]
       15 JUMPIFEQKS                       R5 K6 ["idle"] ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 JUMPIFNOT                        R4 ; [+9]
       20 GETTABLEKS                       R5 R0 K7 ["_clearInputDisabled"]
       22 JUMPIFNOT                        R5 ; [+5]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R0 K7 ["_clearInputDisabled"]
       26 MOVE                             R6 R5
       27 CALL                             R6 0 0
       28 RETURN                           R0 0
       29 LOADB                            R5 1
       30 JUMPIFEQKS                       R3 K8 ["user_message"] ; [+10]
       32 LOADB                            R5 0
       33 JUMPIFNOTEQKS                    R3 K4 ["state_update"] ; [+7]
       35 GETTABLEKS                       R6 R1 K5 ["state"]
       37 JUMPIFEQKS                       R6 K9 ["running"] ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 JUMPIF                           R5 ; [+1]
       42 RETURN                           R0 0
       43 GETTABLEKS                       R6 R0 K10 ["_localTurnOwnsInput"]
       45 JUMPIF                           R6 ; [+3]
       46 GETTABLEKS                       R6 R0 K7 ["_clearInputDisabled"]
       48 JUMPIFNOT                        R6 ; [+1]
       49 RETURN                           R0 0
       50 GETTABLEKS                       R6 R0 K11 ["_threadId"]
       52 GETTABLEKS                       R7 R2 K12 ["threadId"]
       54 JUMPIFEQ                         R6 R7 ; [+2]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R6 R2 K13 ["clearInputDisabled"]
       59 SETTABLEKS                       R6 R0 K7 ["_clearInputDisabled"]
       61 GETTABLEKS                       R6 R2 K14 ["markInputDisabled"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K15 ["Generation"]
       66 CALL                             R6 1 0
       67 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_writeGate"]
        3 GETTABLEKS                       R1 R1 K1 ["destroyed"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["_historyReplayActive"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K3 ["handleUpdate"]
       16 CALL                             R1 2 0
       17 GETIMPORT                        R1 K6 [table.clone]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K7 ["_observers"]
       22 CALL                             R1 1 3
       23 FORGPREP                         R1
       24 MOVE                             R6 R5
       25 MOVE                             R7 R0
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-4]
       29 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["_deps"]
        8 GETTABLEKS                       R2 R2 K3 ["service"]
       10 JUMPIF                           R2 ; [+4]
       11 NAMECALL                         R3 R0 K4 ["_unsubscribeSession"]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R0 K5 ["_sessionId"]
       17 JUMPIFNOTEQ                      R3 R1 ; [+6]
       19 GETTABLEKS                       R3 R0 K6 ["_service"]
       21 JUMPIFNOTEQ                      R3 R2 ; [+2]
       23 RETURN                           R0 0
       24 NAMECALL                         R3 R0 K4 ["_unsubscribeSession"]
       26 CALL                             R3 1 0
       27 SETTABLEKS                       R1 R0 K5 ["_sessionId"]
       29 SETTABLEKS                       R2 R0 K6 ["_service"]
       31 MOVE                             R5 R1
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R3 R2 K7 ["subscribeToSessionUpdates"]
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R0 K8 ["_unsubscribe"]
       39 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R0 K2 ["_localTurnOwnsInput"]
        9 GETTABLEKS                       R2 R0 K3 ["_relay"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["beginTurn"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_localTurnOwnsInput"]
        3 GETTABLEKS                       R1 R0 K1 ["_writeGate"]
        5 GETTABLEKS                       R1 R1 K2 ["destroyed"]
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R1 R0 K3 ["_relay"]
       11 NAMECALL                         R1 R1 K4 ["endTurn"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_relay"]
        2 NAMECALL                         R1 R1 K1 ["getOrCreateAssistantMessage"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_18:
        0 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_observers"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["_writeGate"]
        9 GETTABLEKS                       R0 R0 K2 ["destroyed"]
       11 JUMPIF                           R0 ; [+7]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["_factory"]
       15 GETUPVAL                         R2 0
       16 NAMECALL                         R0 R0 K4 ["_releaseMonitor"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 DUPCLOSURE                       R2 K2 [PROTO_18]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R0 K3 ["_nextObserverId"]
        9 GETTABLEKS                       R3 R0 K3 ["_nextObserverId"]
       11 ADDK                             R3 R3 K4 [1]
       12 SETTABLEKS                       R3 R0 K3 ["_nextObserverId"]
       14 GETTABLEKS                       R3 R0 K5 ["_observers"]
       16 SETTABLE                         R1 R3 R2
       17 NEWCLOSURE                       R3 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R1 R1 K1 ["destroyed"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K2 ["_relay"]
        8 NAMECALL                         R1 R1 K3 ["resetRenderedState"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["_relay"]
        2 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R2 R0 K2 ["_relay"]
        9 NAMECALL                         R2 R2 K3 ["resetRenderedState"]
       11 CALL                             R2 1 0
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R0 K4 ["_historyReplayActive"]
       15 GETTABLEKS                       R2 R0 K2 ["_relay"]
       17 NAMECALL                         R2 R2 K5 ["beginHistoryReplay"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_historyReplayActive"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_historyReplayActive"]
        7 GETTABLEKS                       R1 R0 K1 ["_writeGate"]
        9 GETTABLEKS                       R1 R1 K2 ["destroyed"]
       11 JUMPIF                           R1 ; [+5]
       12 GETTABLEKS                       R1 R0 K3 ["_relay"]
       14 NAMECALL                         R1 R1 K4 ["endHistoryReplay"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K2 ["_relay"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K3 ["handleUpdate"]
       11 CALL                             R2 2 0
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R0 K4 ["_trackInputStateForTurn"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_26:
        0 SETTABLEKS                       R1 R0 K0 ["_pinned"]
        2 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDestroySessionMonitorsOnClose"]
        3 JUMPIF                           R1 ; [+4]
        4 NAMECALL                         R1 R0 K1 ["_unsubscribeSession"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K2 ["_writeGate"]
       10 GETTABLEKS                       R1 R1 K3 ["destroyed"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R1 R0 K4 ["_historyReplayActive"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETTABLEKS                       R1 R0 K5 ["_relay"]
       19 NAMECALL                         R1 R1 K6 ["endHistoryReplay"]
       21 CALL                             R1 1 0
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K4 ["_historyReplayActive"]
       25 GETTABLEKS                       R1 R0 K2 ["_writeGate"]
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R1 K3 ["destroyed"]
       30 LOADB                            R1 0
       31 SETTABLEKS                       R1 R0 K7 ["_pinned"]
       33 NAMECALL                         R1 R0 K1 ["_unsubscribeSession"]
       35 CALL                             R1 1 0
       36 NAMECALL                         R1 R0 K8 ["_settlePromptObservers"]
       38 CALL                             R1 1 0
       39 LOADB                            R1 0
       40 SETTABLEKS                       R1 R0 K9 ["_localTurnOwnsInput"]
       42 GETTABLEKS                       R1 R0 K5 ["_relay"]
       44 NAMECALL                         R1 R1 K10 ["endTurn"]
       46 CALL                             R1 1 0
       47 GETTABLEKS                       R1 R0 K11 ["_clearInputDisabled"]
       49 JUMPIFNOT                        R1 ; [+5]
       50 LOADNIL                          R2
       51 SETTABLEKS                       R2 R0 K11 ["_clearInputDisabled"]
       53 MOVE                             R2 R1
       54 CALL                             R2 0 0
       55 GETTABLEKS                       R2 R0 K5 ["_relay"]
       57 NAMECALL                         R2 R2 K12 ["resetRenderedState"]
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

PROTO_28:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_deps"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["_monitors"]
       14 RETURN                           R1 1

PROTO_29:
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

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["_writeGate"]
        2 GETTABLEKS                       R2 R2 K1 ["destroyed"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K2 ["_pinned"]
        8 JUMPIF                           R2 ; [+7]
        9 GETIMPORT                        R2 K4 [next]
       11 GETTABLEKS                       R3 R1 K5 ["_observers"]
       13 CALL                             R2 1 1
       14 JUMPIFEQKNIL                     R2 ; [+2]
       16 RETURN                           R0 0
       17 NAMECALL                         R2 R1 K6 ["_unsubscribeSession"]
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R2 R0 K7 ["_monitors"]
       22 GETTABLEKS                       R3 R1 K8 ["_threadId"]
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_31:
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

PROTO_32:
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
       18 GETTABLEKS                       R3 R0 K8 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["InputStateTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K14 ["useAddContent"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       46 GETTABLEKS                       R7 R7 K15 ["useAddMessage"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K16 ["useEditContent"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R3 K17 ["InputDisabledReasons"]
       58 NEWTABLE                         R9 8 0
       60 SETTABLEKS                       R9 R9 K18 ["__index"]
       62 NEWTABLE                         R10 32 0
       64 SETTABLEKS                       R10 R10 K18 ["__index"]
       66 DUPCLOSURE                       R11 K19 [PROTO_7]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R12 K20 [PROTO_8]
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R11
       72 SETTABLEKS                       R12 R10 K21 ["new"]
       74 DUPCLOSURE                       R12 K22 [PROTO_9]
       75 SETTABLEKS                       R12 R10 K23 ["_unsubscribeSession"]
       77 DUPCLOSURE                       R12 K24 [PROTO_10]
       78 SETTABLEKS                       R12 R10 K25 ["_settlePromptObservers"]
       80 DUPCLOSURE                       R12 K26 [PROTO_11]
       81 SETTABLEKS                       R12 R10 K27 ["needClearInputDisabled"]
       83 DUPCLOSURE                       R12 K28 [PROTO_12]
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R12 R10 K29 ["_trackInputStateForTurn"]
       87 DUPCLOSURE                       R12 K30 [PROTO_14]
       88 SETTABLEKS                       R12 R10 K31 ["attachSession"]
       90 DUPCLOSURE                       R12 K32 [PROTO_15]
       91 SETTABLEKS                       R12 R10 K33 ["beginTurn"]
       93 DUPCLOSURE                       R12 K34 [PROTO_16]
       94 SETTABLEKS                       R12 R10 K35 ["endTurn"]
       96 DUPCLOSURE                       R12 K36 [PROTO_17]
       97 SETTABLEKS                       R12 R10 K37 ["getOrCreateAssistantMessage"]
       99 DUPCLOSURE                       R12 K38 [PROTO_20]
      100 SETTABLEKS                       R12 R10 K39 ["observeUpdates"]
      102 DUPCLOSURE                       R12 K40 [PROTO_21]
      103 SETTABLEKS                       R12 R10 K41 ["resetRenderedState"]
      105 DUPCLOSURE                       R12 K42 [PROTO_22]
      106 SETTABLEKS                       R12 R10 K43 ["getRelay"]
      108 DUPCLOSURE                       R12 K44 [PROTO_23]
      109 SETTABLEKS                       R12 R10 K45 ["beginHistoryReplay"]
      111 DUPCLOSURE                       R12 K46 [PROTO_24]
      112 SETTABLEKS                       R12 R10 K47 ["endHistoryReplay"]
      114 DUPCLOSURE                       R12 K48 [PROTO_25]
      115 SETTABLEKS                       R12 R10 K49 ["handleUpdate"]
      117 DUPCLOSURE                       R12 K50 [PROTO_26]
      118 SETTABLEKS                       R12 R10 K51 ["setPinned"]
      120 DUPCLOSURE                       R12 K52 [PROTO_27]
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R12 R10 K53 ["destroy"]
      124 DUPCLOSURE                       R12 K54 [PROTO_28]
      125 CAPTURE                          VAL R9
      126 SETTABLEKS                       R12 R9 K21 ["new"]
      128 DUPCLOSURE                       R12 K55 [PROTO_29]
      129 CAPTURE                          VAL R10
      130 SETTABLEKS                       R12 R9 K56 ["getSessionMonitor"]
      132 DUPCLOSURE                       R12 K57 [PROTO_30]
      133 SETTABLEKS                       R12 R9 K58 ["_releaseMonitor"]
      135 DUPCLOSURE                       R12 K59 [PROTO_31]
      136 SETTABLEKS                       R12 R9 K60 ["syncPinnedThread"]
      138 DUPCLOSURE                       R12 K61 [PROTO_32]
      139 SETTABLEKS                       R12 R9 K53 ["destroy"]
      141 DUPTABLE                         R12 K64 [{"AcpSessionMonitor", "AcpSessionMonitorFactory"}]
      142 SETTABLEKS                       R10 R12 K62 ["AcpSessionMonitor"]
      144 SETTABLEKS                       R9 R12 K63 ["AcpSessionMonitorFactory"]
      146 RETURN                           R12 1
