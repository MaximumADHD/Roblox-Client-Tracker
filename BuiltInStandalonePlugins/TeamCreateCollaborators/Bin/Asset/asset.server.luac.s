MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["TeamCreateCollaborators"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["TeamCreateCollaborators"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["flags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["FFlagEnableTeamCreateCollaborators"]
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K7 [require]
       44 GETTABLEKS                       R4 R0 K13 ["Bin"]
       46 GETTABLEKS                       R4 R4 K14 ["Common"]
       48 GETTABLEKS                       R4 R4 K17 ["pluginType"]
       50 CALL                             R3 1 1
       51 GETTABLEKS                       R4 R3 K18 ["get"]
       53 CALL                             R4 0 1
       54 GETTABLEKS                       R5 R3 K19 ["Asset"]
       56 JUMPIFEQ                         R4 R5 ; [+2]
       58 RETURN                           R0 0
       59 GETIMPORT                        R4 K7 [require]
       61 GETTABLEKS                       R5 R0 K13 ["Bin"]
       63 GETTABLEKS                       R5 R5 K14 ["Common"]
       65 GETTABLEKS                       R5 R5 K20 ["setup"]
       67 CALL                             R4 1 1
       68 MOVE                             R5 R4
       69 GETIMPORT                        R6 K1 [plugin]
       71 CALL                             R5 1 0
       72 RETURN                           R0 0
