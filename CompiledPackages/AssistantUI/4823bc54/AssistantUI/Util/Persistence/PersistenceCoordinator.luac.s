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
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["spawnTask"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        7 LOADK                            R3 K0 ["Only one agent save subscriber is supported"]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 2 0
       11 SETUPVAL                         R0 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 DUPCLOSURE                       R0 K0 [PROTO_30]
        1 RETURN                           R0 1

PROTO_32:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETIMPORT                        R6 K2 [task.spawn]
        7 MOVE                             R7 R4
        8 MOVE                             R8 R0
        9 CALL                             R6 2 0
       10 FORGLOOP                         R1 1 ; [-6]
       12 RETURN                           R0 0

PROTO_33:
        0 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K2 [task.spawn]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 1
        9 CALL                             R1 2 0
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_36:
        0 RETURN                           R0 0

PROTO_37:
        0 DUPCLOSURE                       R0 K0 [PROTO_36]
        1 RETURN                           R0 1

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_41:
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

PROTO_42:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 NEWTABLE                         R7 0 0
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 LOADNIL                          R10
       15 GETUPVAL                         R11 1
       16 CALL                             R11 0 1
       17 DUPTABLE                         R12 K20 [{"requestLoad", "onLoadRequested", "setLoadState", "onLoadStateChanged", "notifyLoadedAsync", "onLoadReady", "requestSave", "onSaveRequested", "provideSaveData", "onSaveReady", "provideAgentSaveData", "onAgentSaveReady", "provideAgentRestoreData", "onAgentRestoreReady", "waitForPendingSaves", "clearDirty", "onClearDirty", "requestDelete", "onDeleteRequested"}]
       18 NEWCLOSURE                       R13 P0
       19 CAPTURE                          REF R1
       20 SETTABLEKS                       R13 R12 K1 ["requestLoad"]
       22 NEWCLOSURE                       R13 P1
       23 CAPTURE                          REF R1
       24 SETTABLEKS                       R13 R12 K2 ["onLoadRequested"]
       26 NEWCLOSURE                       R13 P2
       27 CAPTURE                          REF R3
       28 SETTABLEKS                       R13 R12 K3 ["setLoadState"]
       30 NEWCLOSURE                       R13 P3
       31 CAPTURE                          REF R3
       32 SETTABLEKS                       R13 R12 K4 ["onLoadStateChanged"]
       34 NEWCLOSURE                       R13 P4
       35 CAPTURE                          REF R2
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R13 R12 K5 ["notifyLoadedAsync"]
       39 NEWCLOSURE                       R13 P5
       40 CAPTURE                          REF R2
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R13 R12 K6 ["onLoadReady"]
       44 NEWCLOSURE                       R13 P6
       45 CAPTURE                          REF R4
       46 CAPTURE                          VAL R11
       47 SETTABLEKS                       R13 R12 K7 ["requestSave"]
       49 NEWCLOSURE                       R13 P7
       50 CAPTURE                          REF R4
       51 SETTABLEKS                       R13 R12 K8 ["onSaveRequested"]
       53 NEWCLOSURE                       R13 P8
       54 CAPTURE                          REF R5
       55 CAPTURE                          VAL R11
       56 SETTABLEKS                       R13 R12 K9 ["provideSaveData"]
       58 NEWCLOSURE                       R13 P9
       59 CAPTURE                          REF R5
       60 SETTABLEKS                       R13 R12 K10 ["onSaveReady"]
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R14 R14 K21 ["FFlagAssistantHarnessSplit"]
       65 JUMPIFNOT                        R14 ; [+4]
       66 NEWCLOSURE                       R13 P10
       67 CAPTURE                          REF R6
       68 CAPTURE                          VAL R11
       69 JUMP                             ; [+1]
       70 DUPCLOSURE                       R13 K22 [PROTO_27]
       71 SETTABLEKS                       R13 R12 K11 ["provideAgentSaveData"]
       73 GETUPVAL                         R14 2
       74 GETTABLEKS                       R14 R14 K21 ["FFlagAssistantHarnessSplit"]
       76 JUMPIFNOT                        R14 ; [+3]
       77 NEWCLOSURE                       R13 P12
       78 CAPTURE                          REF R6
       79 JUMP                             ; [+1]
       80 DUPCLOSURE                       R13 K23 [PROTO_31]
       81 SETTABLEKS                       R13 R12 K12 ["onAgentSaveReady"]
       83 GETUPVAL                         R14 2
       84 GETTABLEKS                       R14 R14 K21 ["FFlagAssistantHarnessSplit"]
       86 JUMPIFNOT                        R14 ; [+4]
       87 NEWCLOSURE                       R13 P14
       88 CAPTURE                          REF R8
       89 CAPTURE                          VAL R7
       90 JUMP                             ; [+1]
       91 DUPCLOSURE                       R13 K24 [PROTO_33]
       92 SETTABLEKS                       R13 R12 K13 ["provideAgentRestoreData"]
       94 GETUPVAL                         R14 2
       95 GETTABLEKS                       R14 R14 K21 ["FFlagAssistantHarnessSplit"]
       97 JUMPIFNOT                        R14 ; [+4]
       98 NEWCLOSURE                       R13 P16
       99 CAPTURE                          VAL R7
      100 CAPTURE                          REF R8
      101 JUMP                             ; [+1]
      102 DUPCLOSURE                       R13 K25 [PROTO_37]
      103 SETTABLEKS                       R13 R12 K14 ["onAgentRestoreReady"]
      105 NEWCLOSURE                       R13 P18
      106 CAPTURE                          VAL R11
      107 SETTABLEKS                       R13 R12 K15 ["waitForPendingSaves"]
      109 NEWCLOSURE                       R13 P19
      110 CAPTURE                          REF R9
      111 SETTABLEKS                       R13 R12 K16 ["clearDirty"]
      113 NEWCLOSURE                       R13 P20
      114 CAPTURE                          REF R9
      115 SETTABLEKS                       R13 R12 K17 ["onClearDirty"]
      117 NEWCLOSURE                       R13 P21
      118 CAPTURE                          REF R10
      119 SETTABLEKS                       R13 R12 K18 ["requestDelete"]
      121 NEWCLOSURE                       R13 P22
      122 CAPTURE                          REF R10
      123 SETTABLEKS                       R13 R12 K19 ["onDeleteRequested"]
      125 CLOSEUPVALS                      R1
      126 RETURN                           R12 1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["PersistenceCoordinator has not been set up yet"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_47:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Signal"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Types"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K11 [PROTO_7]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R6 K12 [PROTO_45]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R2
       38 LOADNIL                          R7
       39 DUPTABLE                         R8 K16 [{"new", "get", "set"}]
       40 SETTABLEKS                       R6 R8 K13 ["new"]
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          REF R7
       44 SETTABLEKS                       R9 R8 K14 ["get"]
       46 NEWCLOSURE                       R9 P3
       47 CAPTURE                          REF R7
       48 SETTABLEKS                       R9 R8 K15 ["set"]
       50 CLOSEUPVALS                      R7
       51 RETURN                           R8 1
