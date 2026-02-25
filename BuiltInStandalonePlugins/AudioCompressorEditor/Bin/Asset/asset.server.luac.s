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
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AudioCompressorEditor"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R4 R5 K14 ["Common"]
       35 GETTABLEKS                       R3 R4 K15 ["pluginType"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K7 [require]
       40 GETTABLEKS                       R6 R0 K11 ["Src"]
       42 GETTABLEKS                       R5 R6 K16 ["Util"]
       44 GETTABLEKS                       R4 R5 K17 ["AssetUtil"]
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R4 R3 K18 ["setup"]
       49 GETIMPORT                        R5 K1 [plugin]
       51 CALL                             R4 1 0
       52 GETTABLEKS                       R4 R2 K19 ["get"]
       54 CALL                             R4 0 1
       55 GETTABLEKS                       R5 R2 K20 ["Asset"]
       57 JUMPIFEQ                         R4 R5 ; [+2]
       59 RETURN                           R0 0
       60 GETIMPORT                        R4 K7 [require]
       62 GETTABLEKS                       R7 R0 K13 ["Bin"]
       64 GETTABLEKS                       R6 R7 K14 ["Common"]
       66 GETTABLEKS                       R5 R6 K18 ["setup"]
       68 CALL                             R4 1 1
       69 GETIMPORT                        R5 K7 [require]
       71 GETTABLEKS                       R8 R0 K13 ["Bin"]
       73 GETTABLEKS                       R7 R8 K14 ["Common"]
       75 GETTABLEKS                       R6 R7 K21 ["setupMain"]
       77 CALL                             R5 1 1
       78 MOVE                             R6 R4
       79 GETIMPORT                        R7 K1 [plugin]
       81 MOVE                             R8 R5
       82 CALL                             R6 2 0
       83 RETURN                           R0 0
