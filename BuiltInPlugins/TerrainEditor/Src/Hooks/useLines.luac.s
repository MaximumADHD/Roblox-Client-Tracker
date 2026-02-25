PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["Parent"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+83]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["Transform"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+65]
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R3 R4 K1 ["TransformSettings"]
       12 GETTABLE                         R1 R2 R3
       13 GETUPVAL                         R3 5
       14 GETTABLEKS                       R2 R3 K2 ["TransformMode"]
       16 GETTABLE                         R0 R1 R2
       17 LOADNIL                          R1
       18 GETUPVAL                         R3 6
       19 GETTABLEKS                       R2 R3 K3 ["Paste"]
       21 JUMPIFNOTEQ                      R0 R2 ; [+11]
       23 GETUPVAL                         R3 3
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R4 R5 K1 ["TransformSettings"]
       27 GETTABLE                         R2 R3 R4
       28 GETUPVAL                         R4 5
       29 GETTABLEKS                       R3 R4 K4 ["TerrainRegionBuffer"]
       31 GETTABLE                         R1 R2 R3
       32 JUMP                             ; [+19]
       33 GETUPVAL                         R3 6
       34 GETTABLEKS                       R2 R3 K5 ["Duplicate"]
       36 JUMPIFEQ                         R0 R2 ; [+6]
       38 GETUPVAL                         R3 6
       39 GETTABLEKS                       R2 R3 K6 ["Import"]
       41 JUMPIFNOTEQ                      R0 R2 ; [+10]
       43 GETUPVAL                         R3 3
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R4 R5 K1 ["TransformSettings"]
       47 GETTABLE                         R2 R3 R4
       48 GETUPVAL                         R4 5
       49 GETTABLEKS                       R3 R4 K7 ["TerrainRegion"]
       51 GETTABLE                         R1 R2 R3
       52 JUMPIF                           R1 ; [+6]
       53 GETUPVAL                         R2 7
       54 NEWTABLE                         R3 0 0
       56 CALL                             R2 1 0
       57 CLOSEUPVALS                      R1
       58 RETURN                           R0 0
       59 GETUPVAL                         R2 8
       60 SETTABLEKS                       R2 R1 K8 ["Parent"]
       62 GETUPVAL                         R2 7
       63 NAMECALL                         R3 R1 K9 ["GetRegionWireframe"]
       65 CALL                             R3 1 -1
       66 CALL                             R2 -1 0
       67 NEWCLOSURE                       R2 P0
       68 CAPTURE                          REF R1
       69 CLOSEUPVALS                      R1
       70 RETURN                           R2 1
       71 CLOSEUPVALS                      R1
       72 GETUPVAL                         R0 7
       73 GETUPVAL                         R1 9
       74 GETUPVAL                         R4 10
       75 GETTABLEKS                       R3 R4 K0 ["Transform"]
       77 GETUPVAL                         R5 10
       78 GETTABLEKS                       R4 R5 K10 ["Size"]
       80 NAMECALL                         R1 R1 K11 ["GetTerrainWireframe"]
       82 CALL                             R1 3 -1
       83 CALL                             R0 -1 0
       84 RETURN                           R0 0
       85 GETUPVAL                         R0 7
       86 NEWTABLE                         R1 0 0
       88 CALL                             R0 1 0
       89 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 NEWTABLE                         R5 0 0
        3 CALL                             R4 1 2
        4 GETUPVAL                         R6 1
        5 CALL                             R6 0 1
        6 GETUPVAL                         R7 2
        7 NEWCLOSURE                       R8 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U7
       17 CAPTURE                          VAL R6
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R9 0 3
       21 MOVE                             R10 R0
       22 MOVE                             R11 R2
       23 MOVE                             R12 R3
       24 SETLIST                          R9 R10 3 [1]
       26 CALL                             R7 2 0
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETTABLEKS                       R5 R0 K10 ["Src"]
       20 GETTABLEKS                       R4 R5 K11 ["Hooks"]
       22 GETIMPORT                        R5 K5 [require]
       24 GETTABLEKS                       R6 R4 K12 ["useTerrain"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Types"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R6 K14 ["Category"]
       36 GETTABLEKS                       R8 R6 K15 ["Tool"]
       38 GETTABLEKS                       R9 R6 K16 ["TransformMode"]
       40 GETTABLEKS                       R10 R6 K17 ["TransformSettings"]
       42 GETIMPORT                        R11 K19 [game]
       44 LOADK                            R13 K20 ["CoreGui"]
       45 NAMECALL                         R11 R11 K21 ["GetService"]
       47 CALL                             R11 2 1
       48 DUPCLOSURE                       R12 K22 [PROTO_2]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R11
       57 RETURN                           R12 1
