MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DirectionalCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["DirectionalCurveEditor"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Bin"]
       29 GETTABLEKS                       R4 R5 K12 ["Common"]
       31 GETTABLEKS                       R3 R4 K13 ["pluginType"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R2 K14 ["get"]
       36 CALL                             R3 0 1
       37 GETTABLEKS                       R4 R2 K15 ["standalone"]
       39 JUMPIFEQ                         R3 R4 ; [+2]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K5 [require]
       44 GETTABLEKS                       R6 R0 K11 ["Bin"]
       46 GETTABLEKS                       R5 R6 K12 ["Common"]
       48 GETTABLEKS                       R4 R5 K16 ["setup"]
       50 CALL                             R3 1 1
       51 GETIMPORT                        R4 K5 [require]
       53 GETTABLEKS                       R7 R0 K11 ["Bin"]
       55 GETTABLEKS                       R6 R7 K12 ["Common"]
       57 GETTABLEKS                       R5 R6 K17 ["setupMain"]
       59 CALL                             R4 1 1
       60 MOVE                             R5 R3
       61 GETIMPORT                        R6 K19 [plugin]
       63 MOVE                             R7 R4
       64 CALL                             R5 2 0
       65 RETURN                           R0 0
