PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+5]
        2 GETUPVAL                         R2 0
        3 LOADB                            R4 0
        4 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        6 CALL                             R2 2 1
        7 LOADK                            R5 K1 ["([^%-]+)$"]
        8 NAMECALL                         R3 R2 K2 ["match"]
       10 CALL                             R3 2 1
       11 LOADK                            R4 K3 ["RBXAI-%*-%*"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R3
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 3 1
       17 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETIMPORT                        R0 K2 [coroutine.status]
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 1
        6 JUMPIFEQKS                       R0 K3 ["dead"] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K4 ["_batchTagUpdates"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R0 2
       19 NAMECALL                         R0 R0 K0 ["Disconnect"]
       21 CALL                             R0 1 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 2
       24 GETUPVAL                         R0 3
       25 GETUPVAL                         R1 4
       26 LOADNIL                          R2
       27 SETTABLE                         R2 R0 R1
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 CALL                             R2 0 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["Environment is required to observe tag changes"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 LOADNIL                          R3
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["FFlagAssistantUseNewDMNetworking"]
       15 JUMPIF                           R4 ; [+11]
       16 GETTABLEKS                       R4 R2 K5 ["getNetworkingOLD"]
       18 CALL                             R4 0 1
       19 MOVE                             R3 R4
       20 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       22 MOVE                             R5 R3
       23 LOADK                            R6 K6 ["Networking is required to observe tag changes"]
       24 GETIMPORT                        R4 K3 [assert]
       26 CALL                             R4 2 0
       27 LOADNIL                          R4
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          REF R4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R1
       32 GETUPVAL                         R6 3
       33 MOVE                             R8 R0
       34 NAMECALL                         R6 R6 K7 ["GetInstanceAddedSignal"]
       36 CALL                             R6 2 1
       37 MOVE                             R8 R5
       38 NAMECALL                         R6 R6 K8 ["Connect"]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 3
       42 MOVE                             R9 R0
       43 NAMECALL                         R7 R7 K9 ["GetInstanceRemovedSignal"]
       45 CALL                             R7 2 1
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K8 ["Connect"]
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R4 ; [+7]
       51 GETIMPORT                        R8 K12 [coroutine.status]
       53 MOVE                             R9 R4
       54 CALL                             R8 1 1
       55 JUMPIFEQKS                       R8 K13 ["dead"] ; [+2]
       57 JUMP                             ; [+8]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K14 ["_batchTagUpdates"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R1
       63 CAPTURE                          REF R4
       64 CALL                             R8 1 1
       65 MOVE                             R4 R8
       66 LOADNIL                          R8
       67 LOADNIL                          R9
       68 NEWCLOSURE                       R9 P2
       69 CAPTURE                          REF R6
       70 CAPTURE                          REF R7
       71 CAPTURE                          REF R8
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          REF R9
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K4 ["FFlagAssistantUseNewDMNetworking"]
       77 JUMPIFNOT                        R10 ; [+8]
       78 GETTABLEKS                       R10 R2 K15 ["Destroying"]
       80 MOVE                             R12 R9
       81 NAMECALL                         R10 R10 K16 ["Once"]
       83 CALL                             R10 2 1
       84 MOVE                             R8 R10
       85 JUMP                             ; [+7]
       86 GETTABLEKS                       R10 R3 K15 ["Destroying"]
       88 MOVE                             R12 R9
       89 NAMECALL                         R10 R10 K16 ["Once"]
       91 CALL                             R10 2 1
       92 MOVE                             R8 R10
       93 GETUPVAL                         R10 4
       94 LOADB                            R11 1
       95 SETTABLE                         R11 R10 R9
       96 CLOSEUPVALS                      R4
       97 RETURN                           R9 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [game]
       11 LOADK                            R4 K6 ["CollectionService"]
       12 NAMECALL                         R2 R2 K7 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K5 [game]
       17 LOADK                            R5 K8 ["HttpService"]
       18 NAMECALL                         R3 R3 K7 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K10 [require]
       23 GETTABLEKS                       R5 R1 K11 ["Parent"]
       25 GETTABLEKS                       R5 R5 K12 ["DMNetworkingOLD"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K10 [require]
       30 GETTABLEKS                       R6 R1 K13 ["Guest"]
       32 GETTABLEKS                       R6 R6 K14 ["Environment"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K10 [require]
       37 GETTABLEKS                       R7 R1 K15 ["Flags"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K10 [require]
       42 GETTABLEKS                       R8 R1 K11 ["Parent"]
       44 GETTABLEKS                       R8 R8 K16 ["Signal"]
       46 CALL                             R7 1 1
       47 NEWTABLE                         R8 0 0
       49 DUPCLOSURE                       R9 K17 [PROTO_0]
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R9 R0 K18 ["getUniqueTag"]
       53 DUPCLOSURE                       R9 K19 [PROTO_1]
       54 SETTABLEKS                       R9 R0 K20 ["_batchTagUpdates"]
       56 DUPCLOSURE                       R9 K21 [PROTO_5]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R9 R0 K22 ["observeTagChanges"]
       64 DUPCLOSURE                       R9 K23 [PROTO_6]
       65 CAPTURE                          VAL R8
       66 SETTABLEKS                       R9 R0 K24 ["_DEBUG_clearTagObservers"]
       68 RETURN                           R0 1
