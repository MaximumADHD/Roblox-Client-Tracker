MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K5 [require]
       21 GETTABLEKS                       R3 R0 K9 ["Bin"]
       23 GETTABLEKS                       R3 R3 K10 ["Common"]
       25 GETTABLEKS                       R3 R3 K11 ["pluginType"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["get"]
       30 CALL                             R3 0 1
       31 GETTABLEKS                       R4 R2 K13 ["Standalone"]
       33 JUMPIFEQ                         R3 R4 ; [+2]
       35 RETURN                           R0 0
       36 GETIMPORT                        R3 K5 [require]
       38 GETTABLEKS                       R4 R0 K9 ["Bin"]
       40 GETTABLEKS                       R4 R4 K10 ["Common"]
       42 GETTABLEKS                       R4 R4 K14 ["setup"]
       44 CALL                             R3 1 1
       45 MOVE                             R4 R3
       46 GETIMPORT                        R5 K16 [plugin]
       48 CALL                             R4 1 0
       49 RETURN                           R0 0
