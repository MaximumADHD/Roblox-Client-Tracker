MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AudioCompressorEditor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Bin"]
       15 GETTABLEKS                       R2 R2 K9 ["Common"]
       17 GETTABLEKS                       R2 R2 K10 ["defineLuaFlags"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K7 [require]
       22 GETTABLEKS                       R2 R0 K11 ["Packages"]
       24 GETTABLEKS                       R2 R2 K12 ["TestLoader"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K13 ["launch"]
       29 LOADK                            R3 K4 ["AudioCompressorEditor"]
       30 GETTABLEKS                       R4 R0 K14 ["Src"]
       32 CALL                             R2 2 0
       33 GETTABLEKS                       R2 R1 K15 ["isCli"]
       35 CALL                             R2 0 1
       36 JUMPIFNOT                        R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K7 [require]
       40 GETTABLEKS                       R3 R0 K8 ["Bin"]
       42 GETTABLEKS                       R3 R3 K9 ["Common"]
       44 GETTABLEKS                       R3 R3 K16 ["pluginType"]
       46 CALL                             R2 1 1
       47 GETIMPORT                        R3 K7 [require]
       49 GETTABLEKS                       R4 R0 K14 ["Src"]
       51 GETTABLEKS                       R4 R4 K17 ["Util"]
       53 GETTABLEKS                       R4 R4 K18 ["AssetUtil"]
       55 CALL                             R3 1 1
       56 GETTABLEKS                       R4 R3 K19 ["setup"]
       58 GETIMPORT                        R5 K1 [plugin]
       60 CALL                             R4 1 0
       61 GETTABLEKS                       R4 R2 K20 ["get"]
       63 CALL                             R4 0 1
       64 GETTABLEKS                       R5 R2 K21 ["Asset"]
       66 JUMPIFEQ                         R4 R5 ; [+2]
       68 RETURN                           R0 0
       69 GETIMPORT                        R4 K7 [require]
       71 GETTABLEKS                       R5 R0 K8 ["Bin"]
       73 GETTABLEKS                       R5 R5 K9 ["Common"]
       75 GETTABLEKS                       R5 R5 K19 ["setup"]
       77 CALL                             R4 1 1
       78 GETIMPORT                        R5 K7 [require]
       80 GETTABLEKS                       R6 R0 K8 ["Bin"]
       82 GETTABLEKS                       R6 R6 K9 ["Common"]
       84 GETTABLEKS                       R6 R6 K22 ["setupMain"]
       86 CALL                             R5 1 1
       87 MOVE                             R6 R4
       88 GETIMPORT                        R7 K1 [plugin]
       90 MOVE                             R8 R5
       91 CALL                             R6 2 0
       92 RETURN                           R0 0
