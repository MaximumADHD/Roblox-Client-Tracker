MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AudioActivityMonitor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AudioActivityMonitor"]
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
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableAudioActivityMonitor"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K7 [require]
       45 GETTABLEKS                       R4 R0 K11 ["Src"]
       47 GETTABLEKS                       R4 R4 K17 ["Util"]
       49 GETTABLEKS                       R4 R4 K18 ["DMCoordinator"]
       51 CALL                             R3 1 1
       52 GETTABLEKS                       R4 R3 K19 ["Asset"]
       54 GETTABLEKS                       R4 R4 K20 ["init"]
       56 GETIMPORT                        R5 K1 [plugin]
       58 CALL                             R4 1 0
       59 GETIMPORT                        R4 K7 [require]
       61 GETTABLEKS                       R5 R0 K13 ["Bin"]
       63 GETTABLEKS                       R5 R5 K14 ["Common"]
       65 GETTABLEKS                       R5 R5 K21 ["pluginType"]
       67 CALL                             R4 1 1
       68 GETTABLEKS                       R5 R4 K22 ["get"]
       70 CALL                             R5 0 1
       71 GETTABLEKS                       R6 R4 K19 ["Asset"]
       73 JUMPIFEQ                         R5 R6 ; [+2]
       75 RETURN                           R0 0
       76 GETIMPORT                        R5 K7 [require]
       78 GETTABLEKS                       R6 R0 K13 ["Bin"]
       80 GETTABLEKS                       R6 R6 K14 ["Common"]
       82 GETTABLEKS                       R6 R6 K23 ["setup"]
       84 CALL                             R5 1 1
       85 GETIMPORT                        R6 K7 [require]
       87 GETTABLEKS                       R7 R0 K13 ["Bin"]
       89 GETTABLEKS                       R7 R7 K14 ["Common"]
       91 GETTABLEKS                       R7 R7 K24 ["setupMain"]
       93 CALL                             R6 1 1
       94 MOVE                             R7 R5
       95 GETIMPORT                        R8 K1 [plugin]
       97 MOVE                             R9 R6
       98 CALL                             R7 2 0
       99 RETURN                           R0 0
