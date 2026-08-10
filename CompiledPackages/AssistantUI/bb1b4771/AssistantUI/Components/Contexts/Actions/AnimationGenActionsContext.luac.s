PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K2 [table.find]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+8]
       11 LENGTH                           R3 R0
       12 GETTABLE                         R2 R0 R3
       13 SETTABLE                         R2 R0 R1
       14 GETIMPORT                        R2 K4 [table.remove]
       16 MOVE                             R3 R0
       17 LENGTH                           R4 R0
       18 CALL                             R2 2 0
       19 LENGTH                           R2 R0
       20 JUMPIFNOTEQKN                    R2 K5 [0] ; [+5]
       22 GETUPVAL                         R2 0
       23 GETUPVAL                         R3 1
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLE                         R4 R3 R1
        3 JUMPIF                           R4 ; [+3]
        4 NEWTABLE                         R4 0 0
        6 SETTABLE                         R4 R3 R1
        7 GETTABLE                         R5 R3 R1
        8 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R4 K2 [table.insert]
       13 CALL                             R4 2 0
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K2 [table.clone]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 GETIMPORT                        R8 K5 [task.spawn]
       12 MOVE                             R9 R7
       13 CALL                             R8 1 0
       14 FORGLOOP                         R3 2 ; [-5]
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 3
        7 CALL                             R0 3 1
        8 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 NEWTABLE                         R5 0 3
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 SETLIST                          R5 R6 3 [1]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["animatorRemoved"]
        2 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["rigSelected"]
        2 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 LOADK                            R4 K1 ["animatorRemoved"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 3
       11 LOADK                            R5 K1 ["animatorRemoved"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 SETLIST                          R4 R5 3 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 LOADK                            R4 K1 ["rigSelected"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 3
       11 LOADK                            R5 K1 ["rigSelected"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 SETLIST                          R4 R5 3 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Provider"]
       16 DUPTABLE                         R4 K3 [{"value"}]
       17 SETTABLEKS                       R1 R4 K1 ["value"]
       19 GETTABLEKS                       R5 R0 K4 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["createAnimationGenBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenBridgeTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createElement"]
       25 GETTABLEKS                       R4 R2 K12 ["createContext"]
       27 LOADNIL                          R5
       28 CALL                             R4 1 1
       29 DUPTABLE                         R5 K17 [{["AnimatorRemoved"] = "animatorRemoved", ["RigSelected"] = "rigSelected"}]
       30 DUPTABLE                         R6 K18 [{"animatorRemoved", "rigSelected"}]
       31 NEWTABLE                         R7 0 0
       33 SETTABLEKS                       R7 R6 K14 ["animatorRemoved"]
       35 NEWTABLE                         R7 0 0
       37 SETTABLEKS                       R7 R6 K16 ["rigSelected"]
       39 DUPCLOSURE                       R7 K19 [PROTO_1]
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R8 K20 [PROTO_2]
       42 CAPTURE                          VAL R6
       43 DUPCLOSURE                       R9 K21 [PROTO_4]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R7
       46 DUPTABLE                         R10 K18 [{"animatorRemoved", "rigSelected"}]
       47 DUPCLOSURE                       R11 K22 [PROTO_5]
       48 CAPTURE                          VAL R8
       49 SETTABLEKS                       R11 R10 K14 ["animatorRemoved"]
       51 DUPCLOSURE                       R11 K23 [PROTO_6]
       52 CAPTURE                          VAL R8
       53 SETTABLEKS                       R11 R10 K16 ["rigSelected"]
       55 DUPCLOSURE                       R11 K24 [PROTO_7]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 DUPCLOSURE                       R12 K25 [PROTO_8]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R13 K26 [PROTO_10]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 DUPTABLE                         R14 K32 [{"Context", "Provider", "guestBridgeImplementation", "useAnimatorRemoved", "useRigSelected"}]
       66 SETTABLEKS                       R4 R14 K27 ["Context"]
       68 SETTABLEKS                       R13 R14 K28 ["Provider"]
       70 SETTABLEKS                       R10 R14 K29 ["guestBridgeImplementation"]
       72 SETTABLEKS                       R11 R14 K30 ["useAnimatorRemoved"]
       74 SETTABLEKS                       R12 R14 K31 ["useRigSelected"]
       76 RETURN                           R14 1
