PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["current"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R2 2
       13 JUMPIF                           R2 ; [+5]
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R4 4
       16 NAMECALL                         R2 R2 K1 ["toggleExpansion"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getExpansion"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLE                         R0 R1 R2
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnDragMove"]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 -1
       10 FASTCALL                         TABLE_INSERT ; [+2]
       11 GETIMPORT                        R1 K4 [table.insert]
       13 CALL                             R1 -1 0
       14 MOVE                             R2 R0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["OnExpansionChanged"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NAMECALL                         R3 R3 K1 ["Connect"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R1 K4 [table.insert]
       28 CALL                             R1 -1 0
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R0
       32 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["use"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["use"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K1 ["useState"]
       11 NAMECALL                         R6 R3 K2 ["getExpansion"]
       13 CALL                             R6 1 1
       14 GETTABLE                         R5 R6 R1
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R8 0 3
       27 GETTABLEKS                       R9 R0 K4 ["current"]
       29 MOVE                             R10 R1
       30 MOVE                             R11 R4
       31 SETLIST                          R8 R9 3 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          UPVAL U4
       44 NEWTABLE                         R9 0 1
       46 MOVE                             R10 R6
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 0
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["cleanConnections"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Controllers"]
       29 GETTABLEKS                       R4 R4 K12 ["Input"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Controllers"]
       38 GETTABLEKS                       R5 R5 K13 ["ExplorerController"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["isPositionInFrame"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_4]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R2
       56 RETURN                           R6 1
