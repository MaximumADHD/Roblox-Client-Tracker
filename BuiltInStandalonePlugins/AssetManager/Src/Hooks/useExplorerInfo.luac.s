PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnUsernameFetched"]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 -1
       10 FASTCALL                         TABLE_INSERT ; [+2]
       11 GETIMPORT                        R1 K4 [table.insert]
       13 CALL                             R1 -1 0
       14 MOVE                             R2 R0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["OnExplorerItemsChanged"]
       18 GETUPVAL                         R5 3
       19 NAMECALL                         R3 R3 K1 ["Connect"]
       21 CALL                             R3 2 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R1 K4 [table.insert]
       25 CALL                             R1 -1 0
       26 MOVE                             R2 R0
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K6 ["OnExpansionChanged"]
       30 GETUPVAL                         R5 4
       31 NAMECALL                         R3 R3 K1 ["Connect"]
       33 CALL                             R3 2 -1
       34 FASTCALL                         TABLE_INSERT ; [+2]
       35 GETIMPORT                        R1 K4 [table.insert]
       37 CALL                             R1 -1 0
       38 NEWCLOSURE                       R1 P0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["use"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R3 R0 K1 ["getUser"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R3 R3 K2 ["Name"]
       14 CALL                             R2 1 2
       15 GETUPVAL                         R4 2
       16 NAMECALL                         R5 R1 K3 ["getExpansion"]
       18 CALL                             R5 1 -1
       19 CALL                             R4 -1 2
       20 GETUPVAL                         R6 2
       21 NAMECALL                         R7 R1 K4 ["getExplorerItems"]
       23 CALL                             R7 1 -1
       24 CALL                             R6 -1 2
       25 GETUPVAL                         R8 3
       26 NEWCLOSURE                       R9 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R7
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U4
       33 NEWTABLE                         R10 0 0
       35 CALL                             R8 2 0
       36 DUPTABLE                         R8 K7 [{"Items", "Expansion"}]
       37 SETTABLEKS                       R6 R8 K5 ["Items"]
       39 SETTABLEKS                       R4 R8 K6 ["Expansion"]
       41 RETURN                           R8 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["useState"]
       23 GETTABLEKS                       R4 R1 K11 ["useEffect"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Controllers"]
       31 GETTABLEKS                       R6 R6 K13 ["ExplorerController"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K8 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Controllers"]
       40 GETTABLEKS                       R7 R7 K14 ["PluginController"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R8 R8 K15 ["Util"]
       49 GETTABLEKS                       R8 R8 K16 ["cleanConnections"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K17 [PROTO_2]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 RETURN                           R8 1
