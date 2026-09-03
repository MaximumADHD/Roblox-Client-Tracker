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
       11 LOADK                            R5 K3 ["RBXAI-%*-%*"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R3
       14 NAMECALL                         R5 R5 K4 ["format"]
       16 CALL                             R5 3 1
       17 MOVE                             R4 R5
       18 RETURN                           R4 1

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
       11 GETTABLEKS                       R3 R2 K4 ["getNetworking"]
       13 CALL                             R3 0 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       16 MOVE                             R5 R3
       17 LOADK                            R6 K5 ["Networking is required to observe tag changes"]
       18 GETIMPORT                        R4 K3 [assert]
       20 CALL                             R4 2 0
       21 LOADNIL                          R4
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R1
       26 GETUPVAL                         R6 2
       27 MOVE                             R8 R0
       28 NAMECALL                         R6 R6 K6 ["GetInstanceAddedSignal"]
       30 CALL                             R6 2 1
       31 MOVE                             R8 R5
       32 NAMECALL                         R6 R6 K7 ["Connect"]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 2
       36 MOVE                             R9 R0
       37 NAMECALL                         R7 R7 K8 ["GetInstanceRemovedSignal"]
       39 CALL                             R7 2 1
       40 MOVE                             R9 R5
       41 NAMECALL                         R7 R7 K7 ["Connect"]
       43 CALL                             R7 2 1
       44 JUMPIFNOT                        R4 ; [+7]
       45 GETIMPORT                        R8 K11 [coroutine.status]
       47 MOVE                             R9 R4
       48 CALL                             R8 1 1
       49 JUMPIFEQKS                       R8 K12 ["dead"] ; [+2]
       51 JUMP                             ; [+8]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R8 R8 K13 ["_batchTagUpdates"]
       55 NEWCLOSURE                       R9 P1
       56 CAPTURE                          VAL R1
       57 CAPTURE                          REF R4
       58 CALL                             R8 1 1
       59 MOVE                             R4 R8
       60 LOADNIL                          R8
       61 LOADNIL                          R9
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          REF R6
       64 CAPTURE                          REF R7
       65 CAPTURE                          REF R8
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          REF R9
       68 GETTABLEKS                       R10 R3 K14 ["Destroying"]
       70 MOVE                             R12 R9
       71 NAMECALL                         R10 R10 K15 ["Once"]
       73 CALL                             R10 2 1
       74 MOVE                             R8 R10
       75 GETUPVAL                         R10 3
       76 LOADB                            R11 1
       77 SETTABLE                         R11 R10 R9
       78 CLOSEUPVALS                      R4
       79 RETURN                           R9 1

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
       23 GETTABLEKS                       R5 R1 K11 ["Guest"]
       25 GETTABLEKS                       R5 R5 K12 ["Environment"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K10 [require]
       30 GETTABLEKS                       R6 R1 K13 ["Parent"]
       32 GETTABLEKS                       R6 R6 K14 ["Signal"]
       34 CALL                             R5 1 1
       35 NEWTABLE                         R6 0 0
       37 DUPCLOSURE                       R7 K15 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R7 R0 K16 ["getUniqueTag"]
       41 DUPCLOSURE                       R7 K17 [PROTO_1]
       42 SETTABLEKS                       R7 R0 K18 ["_batchTagUpdates"]
       44 DUPCLOSURE                       R7 K19 [PROTO_5]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R6
       49 SETTABLEKS                       R7 R0 K20 ["observeTagChanges"]
       51 DUPCLOSURE                       R7 K21 [PROTO_6]
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R7 R0 K22 ["_DEBUG_clearTagObservers"]
       55 RETURN                           R0 1
