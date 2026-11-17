MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Flipbook"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["Flipbook"]
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
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableFlipbook"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K18 [game]
       45 LOADK                            R5 K19 ["StudioService"]
       46 NAMECALL                         R3 R3 K20 ["GetService"]
       48 CALL                             R3 2 1
       49 NAMECALL                         R3 R3 K21 ["HasInternalPermission"]
       51 CALL                             R3 1 1
       52 JUMPIF                           R3 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R3 K7 [require]
       56 GETTABLEKS                       R4 R0 K13 ["Bin"]
       58 GETTABLEKS                       R4 R4 K14 ["Common"]
       60 GETTABLEKS                       R4 R4 K22 ["pluginType"]
       62 CALL                             R3 1 1
       63 GETTABLEKS                       R4 R3 K23 ["get"]
       65 CALL                             R4 0 1
       66 GETTABLEKS                       R5 R3 K24 ["Asset"]
       68 JUMPIFEQ                         R4 R5 ; [+2]
       70 RETURN                           R0 0
       71 GETIMPORT                        R4 K7 [require]
       73 GETTABLEKS                       R5 R0 K13 ["Bin"]
       75 GETTABLEKS                       R5 R5 K14 ["Common"]
       77 GETTABLEKS                       R5 R5 K25 ["setup"]
       79 CALL                             R4 1 1
       80 MOVE                             R5 R4
       81 GETIMPORT                        R6 K1 [plugin]
       83 CALL                             R5 1 0
       84 RETURN                           R0 0
