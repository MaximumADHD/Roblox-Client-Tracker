MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["CancellableDialog"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["CancellableDialog"]
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
       38 GETTABLEKS                       R3 R2 K16 ["get"]
       40 CALL                             R3 0 1
       41 GETTABLEKS                       R4 R2 K17 ["Asset"]
       43 JUMPIFEQ                         R3 R4 ; [+2]
       45 RETURN                           R0 0
       46 GETIMPORT                        R3 K7 [require]
       48 GETTABLEKS                       R6 R0 K13 ["Bin"]
       50 GETTABLEKS                       R5 R6 K14 ["Common"]
       52 GETTABLEKS                       R4 R5 K18 ["setup"]
       54 CALL                             R3 1 1
       55 GETIMPORT                        R4 K7 [require]
       57 GETTABLEKS                       R7 R0 K13 ["Bin"]
       59 GETTABLEKS                       R6 R7 K14 ["Common"]
       61 GETTABLEKS                       R5 R6 K19 ["setupMain"]
       63 CALL                             R4 1 1
       64 MOVE                             R5 R3
       65 GETIMPORT                        R6 K1 [plugin]
       67 MOVE                             R7 R4
       68 CALL                             R5 2 0
       69 RETURN                           R0 0
