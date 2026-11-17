MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["PluginManagement"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Flags"]
       17 GETTABLEKS                       R2 R2 K10 ["defineLuaFlags"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K7 [require]
       22 GETTABLEKS                       R2 R0 K8 ["Src"]
       24 GETTABLEKS                       R2 R2 K11 ["Util"]
       26 GETTABLEKS                       R2 R2 K12 ["isCli"]
       28 CALL                             R1 1 1
       29 MOVE                             R2 R1
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R2 K7 [require]
       35 GETTABLEKS                       R3 R0 K13 ["Bin"]
       37 GETTABLEKS                       R3 R3 K14 ["Common"]
       39 GETTABLEKS                       R3 R3 K15 ["pluginType"]
       41 CALL                             R2 1 1
       42 GETTABLEKS                       R3 R2 K16 ["get"]
       44 CALL                             R3 0 1
       45 GETTABLEKS                       R4 R2 K17 ["Asset"]
       47 JUMPIFEQ                         R3 R4 ; [+2]
       49 RETURN                           R0 0
       50 GETIMPORT                        R3 K7 [require]
       52 GETTABLEKS                       R4 R0 K13 ["Bin"]
       54 GETTABLEKS                       R4 R4 K14 ["Common"]
       56 GETTABLEKS                       R4 R4 K18 ["setup"]
       58 CALL                             R3 1 1
       59 GETIMPORT                        R4 K7 [require]
       61 GETTABLEKS                       R5 R0 K13 ["Bin"]
       63 GETTABLEKS                       R5 R5 K14 ["Common"]
       65 GETTABLEKS                       R5 R5 K19 ["setupMain"]
       67 CALL                             R4 1 1
       68 MOVE                             R5 R3
       69 GETIMPORT                        R6 K1 [plugin]
       71 MOVE                             R7 R4
       72 CALL                             R5 2 0
       73 RETURN                           R0 0
