MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K5 [require]
       21 GETTABLEKS                       R3 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R3 K10 ["Flags"]
       25 GETTABLEKS                       R3 R3 K11 ["getFFlagEnableDesignAssist"]
       27 CALL                             R2 1 1
       28 MOVE                             R3 R2
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+1]
       31 RETURN                           R0 0
       32 GETIMPORT                        R3 K13 [plugin]
       34 LOADK                            R4 K2 ["DesignAssist"]
       35 SETTABLEKS                       R4 R3 K14 ["Name"]
       37 GETIMPORT                        R3 K5 [require]
       39 GETTABLEKS                       R4 R0 K15 ["Bin"]
       41 GETTABLEKS                       R4 R4 K16 ["Common"]
       43 GETTABLEKS                       R4 R4 K17 ["setup"]
       45 CALL                             R3 1 1
       46 MOVE                             R4 R3
       47 GETIMPORT                        R5 K13 [plugin]
       49 LOADK                            R6 K18 ["standalone"]
       50 LOADNIL                          R7
       51 CALL                             R4 3 0
       52 RETURN                           R0 0
