MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableDesignAssist"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [print]
       23 LOADK                            R3 K12 ["DesignAssist Loaded! Meow Meow! This is a test!"]
       24 CALL                             R2 1 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K13 ["Packages"]
       29 GETTABLEKS                       R3 R3 K14 ["TestLoader"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K15 ["isCli"]
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+5]
       36 GETIMPORT                        R3 K17 [error]
       38 LOADK                            R4 K18 ["roblox-cli should not be loading standalone plugins"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 GETIMPORT                        R3 K5 [require]
       43 GETTABLEKS                       R4 R0 K6 ["Bin"]
       45 GETTABLEKS                       R4 R4 K7 ["Common"]
       47 GETTABLEKS                       R4 R4 K19 ["pluginType"]
       49 CALL                             R3 1 1
       50 GETTABLEKS                       R4 R3 K20 ["get"]
       52 CALL                             R4 0 1
       53 GETTABLEKS                       R5 R3 K21 ["Standalone"]
       55 JUMPIFEQ                         R4 R5 ; [+2]
       57 RETURN                           R0 0
       58 GETIMPORT                        R4 K5 [require]
       60 GETTABLEKS                       R5 R0 K6 ["Bin"]
       62 GETTABLEKS                       R5 R5 K7 ["Common"]
       64 GETTABLEKS                       R5 R5 K22 ["setup"]
       66 CALL                             R4 1 1
       67 GETIMPORT                        R5 K5 [require]
       69 GETTABLEKS                       R6 R0 K6 ["Bin"]
       71 GETTABLEKS                       R6 R6 K7 ["Common"]
       73 GETTABLEKS                       R6 R6 K23 ["setupMain"]
       75 CALL                             R5 1 1
       76 MOVE                             R6 R4
       77 GETIMPORT                        R7 K25 [plugin]
       79 MOVE                             R8 R5
       80 CALL                             R6 2 0
       81 RETURN                           R0 0
