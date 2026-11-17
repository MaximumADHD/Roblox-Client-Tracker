PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R2 1
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K1 [game]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K2 ["GetService"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["isCli"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Test"]
       24 GETTABLEKS                       R3 R3 K10 ["MockAssetService"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K9 ["Test"]
       35 GETTABLEKS                       R4 R4 K11 ["MockInsertService"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K7 ["Util"]
       44 GETTABLEKS                       R5 R5 K9 ["Test"]
       46 GETTABLEKS                       R5 R5 K12 ["MockPublishService"]
       48 CALL                             R4 1 1
       49 NEWTABLE                         R5 1 0
       51 DUPTABLE                         R6 K16 [{"AssetService", "InsertService", "PublishService"}]
       52 MOVE                             R8 R1
       53 CALL                             R8 0 1
       54 JUMPIFNOT                        R8 ; [+4]
       55 GETTABLEKS                       R7 R2 K17 ["new"]
       57 CALL                             R7 0 1
       58 JUMPIF                           R7 ; [+1]
       59 LOADNIL                          R7
       60 SETTABLEKS                       R7 R6 K13 ["AssetService"]
       62 MOVE                             R8 R1
       63 CALL                             R8 0 1
       64 JUMPIFNOT                        R8 ; [+4]
       65 GETTABLEKS                       R7 R3 K17 ["new"]
       67 CALL                             R7 0 1
       68 JUMPIF                           R7 ; [+1]
       69 LOADNIL                          R7
       70 SETTABLEKS                       R7 R6 K14 ["InsertService"]
       72 MOVE                             R8 R1
       73 CALL                             R8 0 1
       74 JUMPIFNOT                        R8 ; [+4]
       75 GETTABLEKS                       R7 R4 K17 ["new"]
       77 CALL                             R7 0 1
       78 JUMPIF                           R7 ; [+1]
       79 LOADNIL                          R7
       80 SETTABLEKS                       R7 R6 K15 ["PublishService"]
       82 DUPCLOSURE                       R7 K18 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R7 R5 K19 ["GetService"]
       87 RETURN                           R5 1
