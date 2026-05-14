PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getCurrentShownScope"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getCurrentShownScope"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnCurrentScopeChanged"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R3 R3 K1 ["Connect"]
       11 CALL                             R3 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R1 K4 [table.insert]
       15 CALL                             R1 -1 0
       16 MOVE                             R2 R0
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K5 ["OnSearchOptionsChanged"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R3 R3 K1 ["Connect"]
       25 CALL                             R3 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R1 K4 [table.insert]
       29 CALL                             R1 -1 0
       30 NEWCLOSURE                       R1 P2
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["use"]
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 3
       13 NAMECALL                         R4 R1 K1 ["getCurrentShownScope"]
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 2
       17 GETUPVAL                         R5 4
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 0
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       31 GETTABLEKS                       R6 R6 K13 ["PluginController"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Controllers"]
       40 GETTABLEKS                       R7 R7 K14 ["ItemsController"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R8 R8 K12 ["Controllers"]
       49 GETTABLEKS                       R8 R8 K15 ["SearchController"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Src"]
       56 GETTABLEKS                       R9 R9 K16 ["Util"]
       58 GETTABLEKS                       R9 R9 K17 ["cleanConnections"]
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K18 [PROTO_4]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 RETURN                           R9 1
