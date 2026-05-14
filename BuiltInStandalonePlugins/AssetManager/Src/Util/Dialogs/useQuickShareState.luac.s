PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnCollabItemsChanged"]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R3 R3 K1 ["Connect"]
        9 CALL                             R3 2 -1
       10 FASTCALL                         TABLE_INSERT ; [+2]
       11 GETIMPORT                        R1 K4 [table.insert]
       13 CALL                             R1 -1 0
       14 MOVE                             R2 R0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["OnUniverseItemsChanged"]
       18 GETUPVAL                         R5 2
       19 NAMECALL                         R3 R3 K1 ["Connect"]
       21 CALL                             R3 2 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R1 K4 [table.insert]
       25 CALL                             R1 -1 0
       26 NEWCLOSURE                       R1 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["DialogType"]
        7 GETTABLEKS                       R3 R3 K2 ["QuickShare"]
        9 NAMECALL                         R1 R0 K3 ["getDialogController"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R3 R1 K4 ["getCollaborators"]
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 2
       17 GETUPVAL                         R4 2
       18 NAMECALL                         R5 R1 K5 ["getUniverses"]
       20 CALL                             R5 1 -1
       21 CALL                             R4 -1 2
       22 GETUPVAL                         R6 3
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U4
       28 NEWTABLE                         R8 0 0
       30 CALL                             R6 2 0
       31 MOVE                             R6 R2
       32 MOVE                             R7 R4
       33 RETURN                           R6 2

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
       18 GETTABLEKS                       R3 R3 K9 ["Controllers"]
       20 GETTABLEKS                       R3 R3 K10 ["PluginController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["cleanConnections"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["useState"]
       41 GETTABLEKS                       R6 R1 K15 ["useEffect"]
       43 DUPCLOSURE                       R7 K16 [PROTO_2]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 RETURN                           R7 1
