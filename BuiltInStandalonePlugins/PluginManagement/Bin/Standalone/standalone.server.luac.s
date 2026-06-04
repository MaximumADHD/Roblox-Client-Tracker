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
       24 GETTABLEKS                       R2 R2 K9 ["Flags"]
       26 GETTABLEKS                       R2 R2 K11 ["getFFlagStudioLazyPluginManagement"]
       28 CALL                             R1 1 1
       29 MOVE                             R2 R1
       30 CALL                             R2 0 1
       31 JUMPIF                           R2 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R2 K7 [require]
       35 GETTABLEKS                       R3 R0 K8 ["Src"]
       37 GETTABLEKS                       R3 R3 K12 ["Util"]
       39 GETTABLEKS                       R3 R3 K13 ["isCli"]
       41 CALL                             R2 1 1
       42 MOVE                             R3 R2
       43 CALL                             R3 0 1
       44 JUMPIFNOT                        R3 ; [+1]
       45 RETURN                           R0 0
       46 GETIMPORT                        R3 K7 [require]
       48 GETTABLEKS                       R4 R0 K14 ["Bin"]
       50 GETTABLEKS                       R4 R4 K15 ["Common"]
       52 GETTABLEKS                       R4 R4 K16 ["pluginType"]
       54 CALL                             R3 1 1
       55 GETTABLEKS                       R4 R3 K17 ["get"]
       57 CALL                             R4 0 1
       58 GETTABLEKS                       R5 R3 K18 ["Standalone"]
       60 JUMPIFEQ                         R4 R5 ; [+2]
       62 RETURN                           R0 0
       63 GETIMPORT                        R4 K7 [require]
       65 GETTABLEKS                       R5 R0 K14 ["Bin"]
       67 GETTABLEKS                       R5 R5 K15 ["Common"]
       69 GETTABLEKS                       R5 R5 K19 ["setup"]
       71 CALL                             R4 1 1
       72 GETIMPORT                        R5 K7 [require]
       74 GETTABLEKS                       R6 R0 K14 ["Bin"]
       76 GETTABLEKS                       R6 R6 K15 ["Common"]
       78 GETTABLEKS                       R6 R6 K20 ["setupMain"]
       80 CALL                             R5 1 1
       81 MOVE                             R6 R4
       82 GETIMPORT                        R7 K1 [plugin]
       84 MOVE                             R8 R5
       85 CALL                             R6 2 0
       86 RETURN                           R0 0
