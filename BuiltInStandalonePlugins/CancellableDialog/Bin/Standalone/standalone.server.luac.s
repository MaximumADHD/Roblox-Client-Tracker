MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETIMPORT                        R2 K10 [error]
       20 LOADK                            R3 K11 ["roblox-cli should not be loading standalone plugins"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K5 [require]
       25 GETTABLEKS                       R5 R0 K12 ["Bin"]
       27 GETTABLEKS                       R4 R5 K13 ["Common"]
       29 GETTABLEKS                       R3 R4 K14 ["pluginType"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K15 ["get"]
       34 CALL                             R3 0 1
       35 GETTABLEKS                       R4 R2 K16 ["Standalone"]
       37 JUMPIFEQ                         R3 R4 ; [+2]
       39 RETURN                           R0 0
       40 GETIMPORT                        R3 K5 [require]
       42 GETTABLEKS                       R6 R0 K17 ["Src"]
       44 GETTABLEKS                       R5 R6 K18 ["Flags"]
       46 GETTABLEKS                       R4 R5 K19 ["getFFlagNewOpenPlaceDialog"]
       48 CALL                             R3 1 1
       49 MOVE                             R4 R3
       50 CALL                             R4 0 1
       51 JUMPIFNOT                        R4 ; [+1]
       52 RETURN                           R0 0
       53 GETIMPORT                        R4 K5 [require]
       55 GETTABLEKS                       R7 R0 K12 ["Bin"]
       57 GETTABLEKS                       R6 R7 K13 ["Common"]
       59 GETTABLEKS                       R5 R6 K20 ["setup"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K5 [require]
       64 GETTABLEKS                       R8 R0 K12 ["Bin"]
       66 GETTABLEKS                       R7 R8 K13 ["Common"]
       68 GETTABLEKS                       R6 R7 K21 ["setupMain"]
       70 CALL                             R5 1 1
       71 MOVE                             R6 R4
       72 GETIMPORT                        R7 K23 [plugin]
       74 MOVE                             R8 R5
       75 CALL                             R6 2 0
       76 RETURN                           R0 0
