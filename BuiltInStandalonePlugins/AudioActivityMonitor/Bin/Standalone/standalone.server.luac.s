MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableAudioActivityMonitor"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [require]
       23 GETTABLEKS                       R3 R0 K10 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["isCli"]
       30 CALL                             R3 0 1
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETIMPORT                        R3 K14 [error]
       34 LOADK                            R4 K15 ["roblox-cli should not be loading standalone plugins"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETIMPORT                        R3 K5 [require]
       39 GETTABLEKS                       R4 R0 K16 ["Src"]
       41 GETTABLEKS                       R4 R4 K17 ["Util"]
       43 GETTABLEKS                       R4 R4 K18 ["DMCoordinator"]
       45 CALL                             R3 1 1
       46 GETTABLEKS                       R4 R3 K19 ["Standalone"]
       48 GETTABLEKS                       R4 R4 K20 ["init"]
       50 GETIMPORT                        R5 K22 [plugin]
       52 CALL                             R4 1 0
       53 GETIMPORT                        R4 K5 [require]
       55 GETTABLEKS                       R5 R0 K16 ["Src"]
       57 GETTABLEKS                       R5 R5 K17 ["Util"]
       59 GETTABLEKS                       R5 R5 K23 ["SettingsUtil"]
       61 CALL                             R4 1 1
       62 GETTABLEKS                       R5 R4 K20 ["init"]
       64 GETIMPORT                        R6 K22 [plugin]
       66 CALL                             R5 1 0
       67 GETIMPORT                        R5 K5 [require]
       69 GETTABLEKS                       R6 R0 K6 ["Bin"]
       71 GETTABLEKS                       R6 R6 K7 ["Common"]
       73 GETTABLEKS                       R6 R6 K24 ["pluginType"]
       75 CALL                             R5 1 1
       76 GETTABLEKS                       R6 R5 K25 ["get"]
       78 CALL                             R6 0 1
       79 GETTABLEKS                       R7 R5 K19 ["Standalone"]
       81 JUMPIFEQ                         R6 R7 ; [+2]
       83 RETURN                           R0 0
       84 GETIMPORT                        R6 K5 [require]
       86 GETTABLEKS                       R7 R0 K6 ["Bin"]
       88 GETTABLEKS                       R7 R7 K7 ["Common"]
       90 GETTABLEKS                       R7 R7 K26 ["setup"]
       92 CALL                             R6 1 1
       93 GETIMPORT                        R7 K5 [require]
       95 GETTABLEKS                       R8 R0 K6 ["Bin"]
       97 GETTABLEKS                       R8 R8 K7 ["Common"]
       99 GETTABLEKS                       R8 R8 K27 ["setupMain"]
      101 CALL                             R7 1 1
      102 MOVE                             R8 R6
      103 GETIMPORT                        R9 K22 [plugin]
      105 MOVE                             R10 R7
      106 CALL                             R8 2 0
      107 RETURN                           R0 0
