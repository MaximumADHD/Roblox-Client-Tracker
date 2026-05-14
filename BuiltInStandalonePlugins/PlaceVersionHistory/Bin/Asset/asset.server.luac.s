MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["PlaceVersionHistory"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["PlaceVersionHistory"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K1 [plugin]
       31 LOADK                            R4 K13 ["UniverseId"]
       32 GETIMPORT                        R5 K15 [game]
       34 GETTABLEKS                       R5 R5 K16 ["GameId"]
       36 NAMECALL                         R2 R2 K17 ["SetItem"]
       38 CALL                             R2 3 0
       39 GETIMPORT                        R2 K1 [plugin]
       41 LOADK                            R4 K18 ["PlaceId"]
       42 GETIMPORT                        R5 K15 [game]
       44 GETTABLEKS                       R5 R5 K18 ["PlaceId"]
       46 NAMECALL                         R2 R2 K17 ["SetItem"]
       48 CALL                             R2 3 0
       49 GETIMPORT                        R2 K7 [require]
       51 GETTABLEKS                       R3 R0 K19 ["Bin"]
       53 GETTABLEKS                       R3 R3 K20 ["Common"]
       55 GETTABLEKS                       R3 R3 K21 ["pluginType"]
       57 CALL                             R2 1 1
       58 GETTABLEKS                       R3 R2 K22 ["get"]
       60 CALL                             R3 0 1
       61 GETTABLEKS                       R4 R2 K23 ["Asset"]
       63 JUMPIFEQ                         R3 R4 ; [+2]
       65 RETURN                           R0 0
       66 GETIMPORT                        R3 K7 [require]
       68 GETTABLEKS                       R4 R0 K19 ["Bin"]
       70 GETTABLEKS                       R4 R4 K20 ["Common"]
       72 GETTABLEKS                       R4 R4 K24 ["setup"]
       74 CALL                             R3 1 1
       75 MOVE                             R4 R3
       76 GETIMPORT                        R5 K1 [plugin]
       78 CALL                             R4 1 0
       79 RETURN                           R0 0
