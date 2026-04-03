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
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["PlaceVersionHistory"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R4 R5 K14 ["Common"]
       35 GETTABLEKS                       R3 R4 K15 ["flags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["FFlagEnablePlaceVersionHistory"]
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K1 [plugin]
       44 LOADK                            R5 K17 ["UniverseId"]
       45 GETIMPORT                        R7 K19 [game]
       47 GETTABLEKS                       R6 R7 K20 ["GameId"]
       49 NAMECALL                         R3 R3 K21 ["SetItem"]
       51 CALL                             R3 3 0
       52 GETIMPORT                        R3 K1 [plugin]
       54 LOADK                            R5 K22 ["PlaceId"]
       55 GETIMPORT                        R7 K19 [game]
       57 GETTABLEKS                       R6 R7 K22 ["PlaceId"]
       59 NAMECALL                         R3 R3 K21 ["SetItem"]
       61 CALL                             R3 3 0
       62 GETIMPORT                        R3 K7 [require]
       64 GETTABLEKS                       R6 R0 K13 ["Bin"]
       66 GETTABLEKS                       R5 R6 K14 ["Common"]
       68 GETTABLEKS                       R4 R5 K23 ["pluginType"]
       70 CALL                             R3 1 1
       71 GETTABLEKS                       R4 R3 K24 ["get"]
       73 CALL                             R4 0 1
       74 GETTABLEKS                       R5 R3 K25 ["Asset"]
       76 JUMPIFEQ                         R4 R5 ; [+2]
       78 RETURN                           R0 0
       79 GETIMPORT                        R4 K7 [require]
       81 GETTABLEKS                       R7 R0 K13 ["Bin"]
       83 GETTABLEKS                       R6 R7 K14 ["Common"]
       85 GETTABLEKS                       R5 R6 K26 ["setup"]
       87 CALL                             R4 1 1
       88 MOVE                             R5 R4
       89 GETIMPORT                        R6 K1 [plugin]
       91 CALL                             R5 1 0
       92 RETURN                           R0 0
