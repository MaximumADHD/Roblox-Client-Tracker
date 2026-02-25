PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["getCurrentShownScope"]
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["OnCurrentScopeChanged"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R3 R3 K1 ["Connect"]
       12 CALL                             R3 2 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R1 K4 [table.insert]
       16 CALL                             R1 -1 0
       17 GETUPVAL                         R1 1
       18 CALL                             R1 0 1
       19 JUMPIFNOT                        R1 ; [+14]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R3 R4 K5 ["OnSearchOptionsChanged"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R3 R3 K1 ["Connect"]
       29 CALL                             R3 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R1 K4 [table.insert]
       33 CALL                             R1 -1 0
       34 NEWCLOSURE                       R1 P2
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K0 ["use"]
       10 CALL                             R1 0 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R3 1
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R2 R3 K0 ["use"]
       19 CALL                             R2 0 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 GETUPVAL                         R3 4
       23 GETUPVAL                         R5 1
       24 CALL                             R5 0 1
       25 JUMPIFNOT                        R5 ; [+4]
       26 NAMECALL                         R4 R1 K1 ["getCurrentShownScope"]
       28 CALL                             R4 1 1
       29 JUMP                             ; [+3]
       30 NAMECALL                         R4 R0 K2 ["getCurrentScope"]
       32 CALL                             R4 1 1
       33 CALL                             R3 1 2
       34 GETUPVAL                         R5 5
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U6
       42 NEWTABLE                         R7 0 0
       44 CALL                             R5 2 0
       45 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["useState"]
       23 GETTABLEKS                       R4 R2 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K6 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Controllers"]
       31 GETTABLEKS                       R6 R7 K13 ["PluginController"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K6 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Controllers"]
       40 GETTABLEKS                       R7 R8 K14 ["ItemsController"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R10 R0 K6 ["Src"]
       47 GETTABLEKS                       R9 R10 K12 ["Controllers"]
       49 GETTABLEKS                       R8 R9 K15 ["SearchController"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R11 R0 K6 ["Src"]
       56 GETTABLEKS                       R10 R11 K16 ["Util"]
       58 GETTABLEKS                       R9 R10 K17 ["cleanConnections"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R12 R0 K6 ["Src"]
       65 GETTABLEKS                       R11 R12 K18 ["Flags"]
       67 GETTABLEKS                       R10 R11 K19 ["getFFlagAmrUpdatedItemsCache"]
       69 CALL                             R9 1 1
       70 DUPCLOSURE                       R10 K20 [PROTO_4]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R8
       78 RETURN                           R10 1
