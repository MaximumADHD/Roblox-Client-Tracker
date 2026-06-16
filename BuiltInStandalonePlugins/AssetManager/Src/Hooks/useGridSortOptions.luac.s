PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 GETTABLEN                        R5 R0 1
        4 GETUPVAL                         R6 3
        5 CALL                             R3 3 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSortFilterChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R0 R0 K1 ["Connect"]
       10 CALL                             R0 2 1
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["useState"]
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R1
       13 NAMECALL                         R6 R1 K2 ["getSorts"]
       15 CALL                             R6 1 1
       16 GETTABLEN                        R5 R6 1
       17 MOVE                             R6 R0
       18 CALL                             R3 3 -1
       19 CALL                             R2 -1 2
       20 GETUPVAL                         R4 4
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R1
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 0
       32 RETURN                           R2 1

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
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K11 ["Localization"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       33 GETTABLEKS                       R7 R7 K14 ["ItemsController"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K12 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Util"]
       42 GETTABLEKS                       R8 R8 K16 ["createGridSortItems"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K17 [PROTO_3]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 RETURN                           R8 1
