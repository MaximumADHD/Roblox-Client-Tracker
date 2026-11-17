MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AnnotationsEditor"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AnnotationsEditor"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K11 ["Src"]
       33 GETTABLEKS                       R3 R3 K13 ["Flags"]
       35 GETTABLEKS                       R3 R3 K14 ["getFFlagEnableAnnotationsEditor"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+10]
       41 GETIMPORT                        R3 K16 [game]
       43 LOADK                            R5 K17 ["RunService"]
       44 NAMECALL                         R3 R3 K18 ["GetService"]
       46 CALL                             R3 2 1
       47 NAMECALL                         R3 R3 K19 ["IsEdit"]
       49 CALL                             R3 1 1
       50 JUMPIF                           R3 ; [+1]
       51 RETURN                           R0 0
       52 GETIMPORT                        R3 K7 [require]
       54 GETTABLEKS                       R4 R0 K20 ["Bin"]
       56 GETTABLEKS                       R4 R4 K21 ["Common"]
       58 GETTABLEKS                       R4 R4 K22 ["setupMain"]
       60 CALL                             R3 1 1
       61 MOVE                             R4 R3
       62 GETIMPORT                        R5 K1 [plugin]
       64 CALL                             R4 1 0
       65 RETURN                           R0 0
