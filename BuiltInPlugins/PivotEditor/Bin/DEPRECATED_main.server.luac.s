MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K4 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Flags"]
       22 GETTABLEKS                       R2 R2 K8 ["getFFlagImprovePluginSpeedPivotEditor"]
       24 CALL                             R1 1 1
       25 MOVE                             R2 R1
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K4 [require]
       31 GETIMPORT                        R3 K1 [script]
       33 GETTABLEKS                       R3 R3 K2 ["Parent"]
       35 GETTABLEKS                       R3 R3 K9 ["main"]
       37 CALL                             R2 1 1
       38 MOVE                             R3 R2
       39 GETIMPORT                        R4 K11 [plugin]
       41 CALL                             R3 1 0
       42 RETURN                           R0 0
