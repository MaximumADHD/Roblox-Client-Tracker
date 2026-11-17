MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SuperTemplate"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagEnableSuperTemplate"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETIMPORT                        R2 K10 [print]
       22 LOADK                            R3 K11 ["SuperTemplate Loaded! Meow Meow! This is a test!"]
       23 CALL                             R2 1 0
       24 GETIMPORT                        R2 K5 [require]
       26 GETTABLEKS                       R3 R0 K12 ["Packages"]
       28 GETTABLEKS                       R3 R3 K13 ["TestLoader"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K14 ["isCli"]
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETIMPORT                        R3 K16 [error]
       37 LOADK                            R4 K17 ["roblox-cli should not be loading standalone plugins"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0
       40 GETIMPORT                        R3 K5 [require]
       42 GETTABLEKS                       R4 R0 K18 ["Bin"]
       44 GETTABLEKS                       R4 R4 K19 ["Common"]
       46 GETTABLEKS                       R4 R4 K20 ["pluginType"]
       48 CALL                             R3 1 1
       49 GETTABLEKS                       R4 R3 K21 ["get"]
       51 CALL                             R4 0 1
       52 GETTABLEKS                       R5 R3 K22 ["Standalone"]
       54 JUMPIFEQ                         R4 R5 ; [+2]
       56 RETURN                           R0 0
       57 GETIMPORT                        R4 K5 [require]
       59 GETTABLEKS                       R5 R0 K18 ["Bin"]
       61 GETTABLEKS                       R5 R5 K19 ["Common"]
       63 GETTABLEKS                       R5 R5 K23 ["setup"]
       65 CALL                             R4 1 1
       66 GETIMPORT                        R5 K5 [require]
       68 GETTABLEKS                       R6 R0 K18 ["Bin"]
       70 GETTABLEKS                       R6 R6 K19 ["Common"]
       72 GETTABLEKS                       R6 R6 K24 ["setupMain"]
       74 CALL                             R5 1 1
       75 MOVE                             R6 R4
       76 GETIMPORT                        R7 K26 [plugin]
       78 MOVE                             R8 R5
       79 CALL                             R6 2 0
       80 RETURN                           R0 0
