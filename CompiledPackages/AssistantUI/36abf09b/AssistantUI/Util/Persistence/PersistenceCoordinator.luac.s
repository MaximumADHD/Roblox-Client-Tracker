PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K1 ["Fire"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+9]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["FFlagDebugLogAssistantUI"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETIMPORT                        R2 K4 [warn]
       12 LOADK                            R3 K5 ["[Persistence] [Coordinator] Save callback error:"]
       13 MOVE                             R4 R1
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 2
       16 SUBK                             R2 R2 K6 [1]
       17 SETUPVAL                         R2 2
       18 GETUPVAL                         R2 3
       19 NAMECALL                         R2 R2 K7 ["Fire"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 CALL                             R1 0 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          REF R0
        9 CAPTURE                          VAL R1
       10 NEWCLOSURE                       R4 P2
       11 CAPTURE                          REF R0
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          REF R0
       15 NEWCLOSURE                       R6 P4
       16 CAPTURE                          REF R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U1
       19 DUPTABLE                         R7 K4 [{"spawnTask", "getCount", "Changed"}]
       20 SETTABLEKS                       R6 R7 K1 ["spawnTask"]
       22 SETTABLEKS                       R5 R7 K2 ["getCount"]
       24 SETTABLEKS                       R1 R7 K3 ["Changed"]
       26 CLOSEUPVALS                      R0
       27 RETURN                           R7 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one load request subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one load state changed subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["Wait"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R2 0
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["Load ready callback should be set if we're notifying loaded"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 0
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one load subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K3 ["Fire"]
       15 CALL                             R1 1 0
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["spawnTask"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one save request subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["spawnTask"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one save ready subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getCount"]
        3 CALL                             R0 0 1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+8]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K1 ["Changed"]
       10 NAMECALL                         R0 R0 K2 ["Wait"]
       12 CALL                             R0 1 0
       13 JUMPBACK                         ; [-14]
       14 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one clear dirty subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one delete request subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 GETUPVAL                         R8 1
       12 CALL                             R8 0 1
       13 DUPTABLE                         R9 K16 [{"requestLoad", "onLoadRequested", "setLoadState", "onLoadStateChanged", "notifyLoadedAsync", "onLoadReady", "requestSave", "onSaveRequested", "provideSaveData", "onSaveReady", "waitForPendingSaves", "clearDirty", "onClearDirty", "requestDelete", "onDeleteRequested"}]
       14 NEWCLOSURE                       R10 P0
       15 CAPTURE                          REF R1
       16 SETTABLEKS                       R10 R9 K1 ["requestLoad"]
       18 NEWCLOSURE                       R10 P1
       19 CAPTURE                          REF R1
       20 SETTABLEKS                       R10 R9 K2 ["onLoadRequested"]
       22 NEWCLOSURE                       R10 P2
       23 CAPTURE                          REF R3
       24 SETTABLEKS                       R10 R9 K3 ["setLoadState"]
       26 NEWCLOSURE                       R10 P3
       27 CAPTURE                          REF R3
       28 SETTABLEKS                       R10 R9 K4 ["onLoadStateChanged"]
       30 NEWCLOSURE                       R10 P4
       31 CAPTURE                          REF R2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R10 R9 K5 ["notifyLoadedAsync"]
       35 NEWCLOSURE                       R10 P5
       36 CAPTURE                          REF R2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R10 R9 K6 ["onLoadReady"]
       40 NEWCLOSURE                       R10 P6
       41 CAPTURE                          REF R4
       42 CAPTURE                          VAL R8
       43 SETTABLEKS                       R10 R9 K7 ["requestSave"]
       45 NEWCLOSURE                       R10 P7
       46 CAPTURE                          REF R4
       47 SETTABLEKS                       R10 R9 K8 ["onSaveRequested"]
       49 NEWCLOSURE                       R10 P8
       50 CAPTURE                          REF R5
       51 CAPTURE                          VAL R8
       52 SETTABLEKS                       R10 R9 K9 ["provideSaveData"]
       54 NEWCLOSURE                       R10 P9
       55 CAPTURE                          REF R5
       56 SETTABLEKS                       R10 R9 K10 ["onSaveReady"]
       58 NEWCLOSURE                       R10 P10
       59 CAPTURE                          VAL R8
       60 SETTABLEKS                       R10 R9 K11 ["waitForPendingSaves"]
       62 NEWCLOSURE                       R10 P11
       63 CAPTURE                          REF R6
       64 SETTABLEKS                       R10 R9 K12 ["clearDirty"]
       66 NEWCLOSURE                       R10 P12
       67 CAPTURE                          REF R6
       68 SETTABLEKS                       R10 R9 K13 ["onClearDirty"]
       70 NEWCLOSURE                       R10 P13
       71 CAPTURE                          REF R7
       72 SETTABLEKS                       R10 R9 K14 ["requestDelete"]
       74 NEWCLOSURE                       R10 P14
       75 CAPTURE                          REF R7
       76 SETTABLEKS                       R10 R9 K15 ["onDeleteRequested"]
       78 CLOSEUPVALS                      R1
       79 RETURN                           R9 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["PersistenceCoordinator has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_34:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Signal"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Types"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K10 [PROTO_7]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R5 K11 [PROTO_32]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R4
       30 LOADNIL                          R6
       31 DUPTABLE                         R7 K15 [{"new", "get", "set"}]
       32 SETTABLEKS                       R5 R7 K12 ["new"]
       34 NEWCLOSURE                       R8 P2
       35 CAPTURE                          REF R6
       36 SETTABLEKS                       R8 R7 K13 ["get"]
       38 NEWCLOSURE                       R8 P3
       39 CAPTURE                          REF R6
       40 SETTABLEKS                       R8 R7 K14 ["set"]
       42 CLOSEUPVALS                      R6
       43 RETURN                           R7 1
