MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["FlagEditor"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K11 ["Bin"]
       29 GETTABLEKS                       R3 R3 K12 ["Common"]
       31 GETTABLEKS                       R3 R3 K13 ["defineLuaFlags"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R2 K14 ["getFFlagEnableFlagEditorLuaUI"]
       36 CALL                             R3 0 1
       37 JUMPIF                           R3 ; [+1]
       38 RETURN                           R0 0
       39 GETIMPORT                        R3 K16 [plugin]
       41 GETTABLEKS                       R4 R0 K17 ["Name"]
       43 SETTABLEKS                       R4 R3 K17 ["Name"]
       45 GETIMPORT                        R3 K5 [require]
       47 GETTABLEKS                       R4 R0 K9 ["Src"]
       49 GETTABLEKS                       R4 R4 K18 ["Main"]
       51 CALL                             R3 1 1
       52 MOVE                             R4 R3
       53 GETIMPORT                        R5 K16 [plugin]
       55 CALL                             R4 1 0
       56 RETURN                           R0 0
