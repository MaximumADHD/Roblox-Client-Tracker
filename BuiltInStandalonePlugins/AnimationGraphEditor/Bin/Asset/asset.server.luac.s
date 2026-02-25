MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["isCli"]
       16 CALL                             R2 0 1
       17 JUMPIFNOT                        R2 ; [+1]
       18 RETURN                           R0 0
       19 GETIMPORT                        R2 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Bin"]
       23 GETTABLEKS                       R4 R5 K10 ["Common"]
       25 GETTABLEKS                       R3 R4 K11 ["defineLuaFlags"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R2 K12 ["getFFlagEnableAnimationGraphEditor"]
       30 CALL                             R3 0 1
       31 JUMPIF                           R3 ; [+1]
       32 RETURN                           R0 0
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Bin"]
       37 GETTABLEKS                       R5 R6 K10 ["Common"]
       39 GETTABLEKS                       R4 R5 K13 ["setup"]
       41 CALL                             R3 1 1
       42 MOVE                             R4 R3
       43 GETIMPORT                        R5 K15 [plugin]
       45 LOADK                            R6 K16 ["editabledatamodel"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0
