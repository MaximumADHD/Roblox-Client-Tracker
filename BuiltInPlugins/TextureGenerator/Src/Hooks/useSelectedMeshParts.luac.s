PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["Get"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["MeshPart"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R6
       15 GETIMPORT                        R7 K5 [table.insert]
       17 CALL                             R7 2 0
       18 NAMECALL                         R7 R6 K6 ["GetDescendants"]
       20 CALL                             R7 1 1
       21 MOVE                             R8 R7
       22 LOADNIL                          R9
       23 LOADNIL                          R10
       24 FORGPREP                         R8
       25 LOADK                            R15 K1 ["MeshPart"]
       26 NAMECALL                         R13 R12 K2 ["IsA"]
       28 CALL                             R13 2 1
       29 JUMPIFNOT                        R13 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       32 MOVE                             R14 R1
       33 MOVE                             R15 R12
       34 GETIMPORT                        R13 K5 [table.insert]
       36 CALL                             R13 2 0
       37 FORGLOOP                         R8 2 ; [-13]
       39 FORGLOOP                         R2 2 ; [-34]
       41 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shallowEqual"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Orientation"]
        6 JUMPIFEQ                         R0 R1 ; [+11]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["Orientation"]
       13 SETTABLE                         R2 R0 R1
       14 GETUPVAL                         R0 2
       15 GETIMPORT                        R1 K3 [table.clone]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["SurfaceAppearance"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETIMPORT                        R2 K4 [table.clone]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [table.clone]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 NEWTABLE                         R0 0 0
        5 NEWTABLE                         R1 0 0
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K0 ["Orientation"]
       13 SETTABLE                         R7 R1 R6
       14 MOVE                             R8 R0
       15 GETTABLEKS                       R9 R6 K1 ["Changed"]
       17 NEWCLOSURE                       R11 P0
       18 CAPTURE                          REF R1
       19 CAPTURE                          VAL R6
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R9 R9 K2 ["Connect"]
       23 CALL                             R9 2 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R7 K5 [table.insert]
       27 CALL                             R7 -1 0
       28 MOVE                             R8 R0
       29 GETTABLEKS                       R9 R6 K6 ["DescendantAdded"]
       31 NEWCLOSURE                       R11 P1
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R9 R9 K2 ["Connect"]
       35 CALL                             R9 2 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R7 K5 [table.insert]
       39 CALL                             R7 -1 0
       40 LOADK                            R9 K7 ["SurfaceAppearance"]
       41 NAMECALL                         R7 R6 K8 ["FindFirstChildOfClass"]
       43 CALL                             R7 2 1
       44 JUMPIFNOT                        R7 ; [+12]
       45 MOVE                             R9 R0
       46 GETTABLEKS                       R10 R7 K1 ["Changed"]
       48 NEWCLOSURE                       R12 P2
       49 CAPTURE                          UPVAL U0
       50 NAMECALL                         R10 R10 K2 ["Connect"]
       52 CALL                             R10 2 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R8 K5 [table.insert]
       56 CALL                             R8 -1 0
       57 FORGLOOP                         R2 2 ; [-47]
       59 NEWCLOSURE                       R2 P3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          REF R1
       62 CLOSEUPVALS                      R1
       63 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 2
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 MOVE                             R4 R1
       18 CALL                             R3 1 2
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R6 R0 K3 ["SelectionChanged"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U4
       27 NEWTABLE                         R8 0 1
       29 MOVE                             R9 R0
       30 SETLIST                          R8 R9 1 [1]
       32 CALL                             R5 3 0
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R7 0 1
       41 MOVE                             R8 R1
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 0
       45 GETIMPORT                        R6 K7 [table.isfrozen]
       47 MOVE                             R7 R3
       48 CALL                             R6 1 1
       49 JUMPIFNOT                        R6 ; [+2]
       50 MOVE                             R5 R3
       51 RETURN                           R5 1
       52 GETIMPORT                        R5 K9 [table.freeze]
       54 MOVE                             R6 R3
       55 CALL                             R5 1 1
       56 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["useEventConnection"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["SelectionWrapper"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K14 [PROTO_0]
       40 DUPCLOSURE                       R7 K15 [PROTO_9]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 RETURN                           R7 1
