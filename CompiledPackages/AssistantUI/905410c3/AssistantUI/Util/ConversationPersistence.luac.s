PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETIMPORT                        R1 K2 [task.spawn]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 DUPTABLE                         R7 K13 [{"requestLoad", "onLoadRequested", "notifyLoadedAsync", "onLoadReady", "requestSave", "onSaveRequested", "provideSaveData", "onSaveReady", "clearDirty", "onClearDirty", "requestDelete", "onDeleteRequested"}]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          REF R1
       13 SETTABLEKS                       R8 R7 K1 ["requestLoad"]
       15 NEWCLOSURE                       R8 P1
       16 CAPTURE                          REF R1
       17 SETTABLEKS                       R8 R7 K2 ["onLoadRequested"]
       19 NEWCLOSURE                       R8 P2
       20 CAPTURE                          REF R2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R8 R7 K3 ["notifyLoadedAsync"]
       24 NEWCLOSURE                       R8 P3
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R8 R7 K4 ["onLoadReady"]
       29 NEWCLOSURE                       R8 P4
       30 CAPTURE                          REF R3
       31 SETTABLEKS                       R8 R7 K5 ["requestSave"]
       33 NEWCLOSURE                       R8 P5
       34 CAPTURE                          REF R3
       35 SETTABLEKS                       R8 R7 K6 ["onSaveRequested"]
       37 NEWCLOSURE                       R8 P6
       38 CAPTURE                          REF R4
       39 SETTABLEKS                       R8 R7 K7 ["provideSaveData"]
       41 NEWCLOSURE                       R8 P7
       42 CAPTURE                          REF R4
       43 SETTABLEKS                       R8 R7 K8 ["onSaveReady"]
       45 NEWCLOSURE                       R8 P8
       46 CAPTURE                          REF R5
       47 SETTABLEKS                       R8 R7 K9 ["clearDirty"]
       49 NEWCLOSURE                       R8 P9
       50 CAPTURE                          REF R5
       51 SETTABLEKS                       R8 R7 K10 ["onClearDirty"]
       53 NEWCLOSURE                       R8 P10
       54 CAPTURE                          REF R6
       55 SETTABLEKS                       R8 R7 K11 ["requestDelete"]
       57 NEWCLOSURE                       R8 P11
       58 CAPTURE                          REF R6
       59 SETTABLEKS                       R8 R7 K12 ["onDeleteRequested"]
       61 CLOSEUPVALS                      R1
       62 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["Signal"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Types"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K9 [PROTO_18]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R0 K10 ["new"]
       25 RETURN                           R0 1
