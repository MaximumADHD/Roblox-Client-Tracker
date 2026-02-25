MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["LegacyChatDeprecation"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["LegacyChatDeprecation"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R4 R5 K14 ["Common"]
       35 GETTABLEKS                       R3 R4 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableLegacyChatDeprecation"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K7 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Bin"]
       47 GETTABLEKS                       R5 R6 K14 ["Common"]
       49 GETTABLEKS                       R4 R5 K17 ["pluginType"]
       51 CALL                             R3 1 1
       52 GETIMPORT                        R4 K19 [game]
       54 LOADK                            R6 K20 ["RunService"]
       55 NAMECALL                         R4 R4 K21 ["GetService"]
       57 CALL                             R4 2 1
       58 NAMECALL                         R4 R4 K22 ["IsEdit"]
       60 CALL                             R4 1 1
       61 JUMPIF                           R4 ; [+1]
       62 RETURN                           R0 0
       63 GETTABLEKS                       R4 R3 K23 ["get"]
       65 CALL                             R4 0 1
       66 GETTABLEKS                       R5 R3 K24 ["Asset"]
       68 JUMPIFEQ                         R4 R5 ; [+2]
       70 RETURN                           R0 0
       71 GETIMPORT                        R4 K7 [require]
       73 GETTABLEKS                       R7 R0 K13 ["Bin"]
       75 GETTABLEKS                       R6 R7 K14 ["Common"]
       77 GETTABLEKS                       R5 R6 K25 ["setup"]
       79 CALL                             R4 1 1
       80 GETIMPORT                        R5 K7 [require]
       82 GETTABLEKS                       R8 R0 K13 ["Bin"]
       84 GETTABLEKS                       R7 R8 K14 ["Common"]
       86 GETTABLEKS                       R6 R7 K26 ["setupMain"]
       88 CALL                             R5 1 1
       89 MOVE                             R6 R4
       90 GETIMPORT                        R7 K1 [plugin]
       92 MOVE                             R8 R5
       93 CALL                             R6 2 0
       94 RETURN                           R0 0
