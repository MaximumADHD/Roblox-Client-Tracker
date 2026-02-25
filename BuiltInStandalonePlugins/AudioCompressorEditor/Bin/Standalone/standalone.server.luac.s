MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
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
       32 GETIMPORT                        R3 K5 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Src"]
       36 GETTABLEKS                       R5 R6 K16 ["Util"]
       38 GETTABLEKS                       R4 R5 K17 ["AnalyzerUtil"]
       40 CALL                             R3 1 1
       41 GETTABLEKS                       R4 R3 K18 ["setPlugin"]
       43 GETIMPORT                        R5 K20 [plugin]
       45 CALL                             R4 1 0
       46 GETTABLEKS                       R4 R2 K21 ["get"]
       48 CALL                             R4 0 1
       49 GETTABLEKS                       R5 R2 K22 ["Standalone"]
       51 JUMPIFEQ                         R4 R5 ; [+2]
       53 RETURN                           R0 0
       54 GETIMPORT                        R4 K5 [require]
       56 GETTABLEKS                       R7 R0 K12 ["Bin"]
       58 GETTABLEKS                       R6 R7 K13 ["Common"]
       60 GETTABLEKS                       R5 R6 K23 ["setup"]
       62 CALL                             R4 1 1
       63 GETIMPORT                        R5 K5 [require]
       65 GETTABLEKS                       R8 R0 K12 ["Bin"]
       67 GETTABLEKS                       R7 R8 K13 ["Common"]
       69 GETTABLEKS                       R6 R7 K24 ["setupMain"]
       71 CALL                             R5 1 1
       72 MOVE                             R6 R4
       73 GETIMPORT                        R7 K20 [plugin]
       75 MOVE                             R8 R5
       76 CALL                             R6 2 0
       77 RETURN                           R0 0
