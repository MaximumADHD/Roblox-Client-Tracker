PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 GETTABLE                         R3 R1 R0
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETTABLE                         R4 R1 R0
        9 LENGTH                           R3 R4
       10 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLE                         R3 R2 R0
       14 JUMPIF                           R3 ; [+3]
       15 NEWTABLE                         R3 0 0
       17 SETTABLE                         R3 R2 R0
       18 GETTABLE                         R4 R1 R0
       19 LENGTH                           R3 R4
       20 GETTABLE                         R5 R1 R0
       21 GETTABLE                         R4 R5 R3
       22 GETTABLE                         R6 R2 R0
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K0 ["current"]
       26 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       28 GETIMPORT                        R5 K4 [table.insert]
       30 CALL                             R5 2 0
       31 GETIMPORT                        R5 K6 [table.remove]
       33 GETTABLE                         R6 R1 R0
       34 MOVE                             R7 R3
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 2
       37 SETTABLEKS                       R4 R5 K0 ["current"]
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R4
       41 CALL                             R5 1 0
       42 GETUPVAL                         R5 0
       43 SETTABLEKS                       R1 R5 K0 ["current"]
       45 GETUPVAL                         R5 1
       46 SETTABLEKS                       R2 R5 K0 ["current"]
       48 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 GETTABLE                         R3 R2 R0
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETTABLE                         R4 R2 R0
        9 LENGTH                           R3 R4
       10 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
       12 RETURN                           R0 0
       13 GETTABLE                         R4 R2 R0
       14 LENGTH                           R3 R4
       15 GETTABLE                         R5 R2 R0
       16 GETTABLE                         R4 R5 R3
       17 GETTABLE                         R6 R1 R0
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K0 ["current"]
       21 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       23 GETIMPORT                        R5 K4 [table.insert]
       25 CALL                             R5 2 0
       26 GETIMPORT                        R5 K6 [table.remove]
       28 GETTABLE                         R6 R2 R0
       29 MOVE                             R7 R3
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 2
       32 SETTABLEKS                       R4 R5 K0 ["current"]
       34 GETUPVAL                         R5 3
       35 MOVE                             R6 R4
       36 CALL                             R5 1 0
       37 GETUPVAL                         R5 0
       38 SETTABLEKS                       R1 R5 K0 ["current"]
       40 GETUPVAL                         R5 1
       41 SETTABLEKS                       R2 R5 K0 ["current"]
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnUndo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 NAMECALL                         R0 R0 K1 ["Connect"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["OnRedo"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 NAMECALL                         R1 R1 K1 ["Connect"]
       21 CALL                             R1 2 1
       22 NEWCLOSURE                       R2 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLE                         R3 R2 R0
        4 JUMPIF                           R3 ; [+3]
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R2 R0
        8 GETUPVAL                         R3 1
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K0 ["current"]
       13 GETUPVAL                         R3 2
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K1 ["SetWaypoint"]
       17 CALL                             R3 2 0
       18 GETTABLE                         R4 R2 R0
       19 GETIMPORT                        R5 K4 [table.clone]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K0 ["current"]
       24 CALL                             R5 1 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R3 K6 [table.insert]
       28 CALL                             R3 -1 0
       29 GETUPVAL                         R3 3
       30 SETTABLEKS                       R1 R3 K0 ["current"]
       32 GETUPVAL                         R3 0
       33 SETTABLEKS                       R2 R3 K0 ["current"]
       35 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 0
        4 NEWTABLE                         R5 0 0
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 0
        8 NEWTABLE                         R6 0 0
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 1
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R1
       18 MOVE                             R8 R2
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 1
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R5
       24 MOVE                             R8 R2
       25 CALL                             R6 2 0
       26 GETUPVAL                         R6 3
       27 NEWCLOSURE                       R7 P2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R3
       32 MOVE                             R8 R2
       33 CALL                             R6 2 1
       34 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETTABLEKS                       R4 R1 K10 ["useRef"]
       20 GETIMPORT                        R5 K12 [game]
       22 LOADK                            R7 K13 ["ChangeHistoryService"]
       23 NAMECALL                         R5 R5 K14 ["GetService"]
       25 CALL                             R5 2 1
       26 DUPCLOSURE                       R6 K15 [PROTO_6]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R2
       31 RETURN                           R6 1
