MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["FFlagEnablePlaceVersionHistory"]
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R3 R4 K11 ["TestLoader"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K12 ["isCli"]
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R3 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Bin"]
       36 GETTABLEKS                       R5 R6 K7 ["Common"]
       38 GETTABLEKS                       R4 R5 K13 ["pluginType"]
       40 CALL                             R3 1 1
       41 GETTABLEKS                       R4 R3 K14 ["get"]
       43 CALL                             R4 0 1
       44 GETTABLEKS                       R5 R3 K15 ["Standalone"]
       46 JUMPIFEQ                         R4 R5 ; [+2]
       48 RETURN                           R0 0
       49 GETIMPORT                        R4 K5 [require]
       51 GETTABLEKS                       R7 R0 K6 ["Bin"]
       53 GETTABLEKS                       R6 R7 K7 ["Common"]
       55 GETTABLEKS                       R5 R6 K16 ["setup"]
       57 CALL                             R4 1 1
       58 MOVE                             R5 R4
       59 GETIMPORT                        R6 K18 [plugin]
       61 CALL                             R5 1 0
       62 RETURN                           R0 0
