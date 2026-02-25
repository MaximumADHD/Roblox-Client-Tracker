MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Flipbook"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Bin"]
       11 GETTABLEKS                       R3 R4 K7 ["Common"]
       13 GETTABLEKS                       R2 R3 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableFlipbook"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Packages"]
       25 GETTABLEKS                       R3 R4 K11 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["isCli"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETIMPORT                        R3 K14 [error]
       34 LOADK                            R4 K15 ["roblox-cli should not be loading standalone plugins"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETIMPORT                        R3 K17 [game]
       39 LOADK                            R5 K18 ["StudioService"]
       40 NAMECALL                         R3 R3 K19 ["GetService"]
       42 CALL                             R3 2 1
       43 NAMECALL                         R3 R3 K20 ["HasInternalPermission"]
       45 CALL                             R3 1 1
       46 JUMPIF                           R3 ; [+1]
       47 RETURN                           R0 0
       48 GETIMPORT                        R3 K5 [require]
       50 GETTABLEKS                       R6 R0 K6 ["Bin"]
       52 GETTABLEKS                       R5 R6 K7 ["Common"]
       54 GETTABLEKS                       R4 R5 K21 ["pluginType"]
       56 CALL                             R3 1 1
       57 GETTABLEKS                       R4 R3 K22 ["get"]
       59 CALL                             R4 0 1
       60 GETTABLEKS                       R5 R3 K23 ["Standalone"]
       62 JUMPIFEQ                         R4 R5 ; [+2]
       64 RETURN                           R0 0
       65 GETIMPORT                        R4 K5 [require]
       67 GETTABLEKS                       R7 R0 K6 ["Bin"]
       69 GETTABLEKS                       R6 R7 K7 ["Common"]
       71 GETTABLEKS                       R5 R6 K24 ["setup"]
       73 CALL                             R4 1 1
       74 MOVE                             R5 R4
       75 GETIMPORT                        R6 K26 [plugin]
       77 CALL                             R5 1 0
       78 RETURN                           R0 0
