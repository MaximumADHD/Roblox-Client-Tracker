MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["MultitouchEmulator"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["MultitouchEmulator"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K14 [game]
       31 LOADK                            R4 K15 ["RunService"]
       32 NAMECALL                         R2 R2 K16 ["GetService"]
       34 CALL                             R2 2 1
       35 NAMECALL                         R3 R2 K17 ["IsEdit"]
       37 CALL                             R3 1 1
       38 JUMPIF                           R3 ; [+4]
       39 NAMECALL                         R3 R2 K18 ["IsServer"]
       41 CALL                             R3 1 1
       42 JUMPIFNOT                        R3 ; [+1]
       43 RETURN                           R0 0
       44 GETIMPORT                        R3 K7 [require]
       46 GETTABLEKS                       R4 R0 K19 ["Bin"]
       48 GETTABLEKS                       R4 R4 K20 ["Common"]
       50 GETTABLEKS                       R4 R4 K21 ["setup"]
       52 CALL                             R3 1 1
       53 GETIMPORT                        R4 K7 [require]
       55 GETTABLEKS                       R5 R0 K19 ["Bin"]
       57 GETTABLEKS                       R5 R5 K20 ["Common"]
       59 GETTABLEKS                       R5 R5 K22 ["setupMain"]
       61 CALL                             R4 1 1
       62 MOVE                             R5 R3
       63 GETIMPORT                        R6 K1 [plugin]
       65 MOVE                             R7 R4
       66 CALL                             R5 2 0
       67 RETURN                           R0 0
