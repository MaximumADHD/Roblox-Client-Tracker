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
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R0
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R0
        9 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R2 K2 [table.insert]
       14 CALL                             R2 2 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETTABLEKS                       R3 R0 K1 ["info"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIF                           R4 ; [+1]
        7 RETURN                           R0 0
        8 MOVE                             R5 R4
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETIMPORT                        R10 K4 [task.spawn]
       14 MOVE                             R11 R9
       15 MOVE                             R12 R3
       16 CALL                             R10 2 0
       17 FORGLOOP                         R5 2 ; [-6]
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unobserveTag"]
        5 DUPTABLE                         R1 K3 [{"tag", "options"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K1 ["tag"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K2 ["options"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIF                           R0 ; [+7]
        7 GETUPVAL                         R0 3
        8 JUMPIF                           R0 ; [+5]
        9 GETUPVAL                         R0 4
       10 JUMPIF                           R0 ; [+3]
       11 GETUPVAL                         R0 5
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U6
       17 GETUPVAL                         R4 7
       18 GETTABLE                         R3 R4 R1
       19 JUMPIF                           R3 ; [+4]
       20 GETUPVAL                         R3 7
       21 NEWTABLE                         R4 0 0
       23 SETTABLE                         R4 R3 R1
       24 GETUPVAL                         R5 7
       25 GETTABLE                         R4 R5 R1
       26 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R3 K2 [table.insert]
       31 CALL                             R3 2 0
       32 NEWCLOSURE                       R0 P1
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 DUPTABLE                         R1 K7 [{"includeCount", "includeName", "includeClassName", "includeUniqueId"}]
       37 GETUPVAL                         R2 2
       38 SETTABLEKS                       R2 R1 K3 ["includeCount"]
       40 GETUPVAL                         R2 3
       41 SETTABLEKS                       R2 R1 K4 ["includeName"]
       43 GETUPVAL                         R2 4
       44 SETTABLEKS                       R2 R1 K5 ["includeClassName"]
       46 GETUPVAL                         R2 5
       47 SETTABLEKS                       R2 R1 K6 ["includeUniqueId"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K8 ["observeTag"]
       52 DUPTABLE                         R3 K11 [{"tag", "options"}]
       53 GETUPVAL                         R4 1
       54 SETTABLEKS                       R4 R3 K9 ["tag"]
       56 SETTABLEKS                       R1 R3 K10 ["options"]
       58 CALL                             R2 1 0
       59 NEWCLOSURE                       R2 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R1
       64 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R1 K2 ["includeCount"]
       12 GETTABLEKS                       R6 R1 K3 ["includeName"]
       14 GETTABLEKS                       R7 R1 K4 ["includeClassName"]
       16 GETTABLEKS                       R8 R1 K5 ["includeUniqueId"]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R7
       27 CAPTURE                          VAL R8
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U2
       30 NEWTABLE                         R11 0 6
       32 MOVE                             R12 R2
       33 MOVE                             R13 R0
       34 MOVE                             R14 R5
       35 MOVE                             R15 R6
       36 MOVE                             R16 R7
       37 MOVE                             R17 R8
       38 SETLIST                          R11 R12 6 [1]
       40 CALL                             R9 2 0
       41 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_8:
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
       11 GETTABLEKS                       R2 R2 K7 ["createInstanceBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceBridgeTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createElement"]
       25 GETTABLEKS                       R4 R2 K12 ["createContext"]
       27 LOADNIL                          R5
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 0 0
       31 DUPCLOSURE                       R6 K13 [PROTO_1]
       32 CAPTURE                          VAL R5
       33 DUPTABLE                         R7 K15 [{"onTagChanged"}]
       34 DUPCLOSURE                       R8 K16 [PROTO_2]
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R8 R7 K14 ["onTagChanged"]
       38 DUPCLOSURE                       R8 K17 [PROTO_6]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 DUPCLOSURE                       R9 K18 [PROTO_8]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 DUPTABLE                         R10 K23 [{"Context", "Provider", "guestBridgeImplementation", "useTag"}]
       47 SETTABLEKS                       R4 R10 K19 ["Context"]
       49 SETTABLEKS                       R9 R10 K20 ["Provider"]
       51 SETTABLEKS                       R7 R10 K21 ["guestBridgeImplementation"]
       53 SETTABLEKS                       R8 R10 K22 ["useTag"]
       55 RETURN                           R10 1
