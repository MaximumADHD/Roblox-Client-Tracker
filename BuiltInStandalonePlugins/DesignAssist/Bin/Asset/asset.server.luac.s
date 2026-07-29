MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["DesignAssist"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["DesignAssist"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K11 ["Src"]
       33 GETTABLEKS                       R3 R3 K13 ["Flags"]
       35 GETTABLEKS                       R3 R3 K14 ["getFFlagEnableDesignAssist"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 CALL                             R3 0 1
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K16 [game]
       44 LOADK                            R5 K17 ["RunService"]
       45 NAMECALL                         R3 R3 K18 ["GetService"]
       47 CALL                             R3 2 1
       48 NAMECALL                         R4 R3 K19 ["IsRunning"]
       50 CALL                             R4 1 1
       51 JUMPIFNOT                        R4 ; [+5]
       52 NAMECALL                         R4 R3 K20 ["IsEdit"]
       54 CALL                             R4 1 1
       55 JUMPIF                           R4 ; [+1]
       56 RETURN                           R0 0
       57 GETIMPORT                        R4 K7 [require]
       59 GETTABLEKS                       R5 R0 K21 ["Bin"]
       61 GETTABLEKS                       R5 R5 K22 ["Common"]
       63 GETTABLEKS                       R5 R5 K23 ["setup"]
       65 CALL                             R4 1 1
       66 GETIMPORT                        R5 K7 [require]
       68 GETTABLEKS                       R6 R0 K21 ["Bin"]
       70 GETTABLEKS                       R6 R6 K22 ["Common"]
       72 GETTABLEKS                       R6 R6 K24 ["setupMain"]
       74 CALL                             R5 1 1
       75 MOVE                             R6 R4
       76 GETIMPORT                        R7 K1 [plugin]
       78 LOADK                            R8 K25 ["edit"]
       79 MOVE                             R9 R5
       80 CALL                             R6 3 0
       81 RETURN                           R0 0
