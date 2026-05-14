MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["MultitouchEmulator"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["MultitouchEmulator"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K7 [require]
       40 GETTABLEKS                       R4 R0 K11 ["Src"]
       42 GETTABLEKS                       R4 R4 K16 ["Util"]
       44 GETTABLEKS                       R4 R4 K17 ["MockableEngineFeatures"]
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R4 R2 K18 ["getFFlagEnableMultitouchEmulator"]
       49 CALL                             R4 0 1
       50 JUMPIFNOT                        R4 ; [+3]
       51 GETTABLEKS                       R4 R3 K19 ["TouchInputEmulationRefresh"]
       53 JUMPIF                           R4 ; [+1]
       54 RETURN                           R0 0
       55 GETIMPORT                        R4 K21 [game]
       57 LOADK                            R6 K22 ["RunService"]
       58 NAMECALL                         R4 R4 K23 ["GetService"]
       60 CALL                             R4 2 1
       61 NAMECALL                         R5 R4 K24 ["IsEdit"]
       63 CALL                             R5 1 1
       64 JUMPIF                           R5 ; [+4]
       65 NAMECALL                         R5 R4 K25 ["IsServer"]
       67 CALL                             R5 1 1
       68 JUMPIFNOT                        R5 ; [+1]
       69 RETURN                           R0 0
       70 GETIMPORT                        R5 K7 [require]
       72 GETTABLEKS                       R6 R0 K13 ["Bin"]
       74 GETTABLEKS                       R6 R6 K14 ["Common"]
       76 GETTABLEKS                       R6 R6 K26 ["setup"]
       78 CALL                             R5 1 1
       79 GETIMPORT                        R6 K7 [require]
       81 GETTABLEKS                       R7 R0 K13 ["Bin"]
       83 GETTABLEKS                       R7 R7 K14 ["Common"]
       85 GETTABLEKS                       R7 R7 K27 ["setupMain"]
       87 CALL                             R6 1 1
       88 MOVE                             R7 R5
       89 GETIMPORT                        R8 K1 [plugin]
       91 MOVE                             R9 R6
       92 CALL                             R7 2 0
       93 RETURN                           R0 0
