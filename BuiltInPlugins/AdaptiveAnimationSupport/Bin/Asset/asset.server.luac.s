MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["AdaptiveAnimationSupport"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["AdaptiveAnimationSupport"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableAdaptiveAnimationSupport"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETTABLEKS                       R3 R2 K17 ["getDFFlagHumanoidRigDescriptionEnabled"]
       45 CALL                             R3 0 1
       46 JUMPIF                           R3 ; [+1]
       47 RETURN                           R0 0
       48 GETIMPORT                        R3 K7 [require]
       50 GETTABLEKS                       R4 R0 K13 ["Bin"]
       52 GETTABLEKS                       R4 R4 K14 ["Common"]
       54 GETTABLEKS                       R4 R4 K18 ["pluginType"]
       56 CALL                             R3 1 1
       57 GETTABLEKS                       R4 R3 K19 ["get"]
       59 CALL                             R4 0 1
       60 GETTABLEKS                       R5 R3 K20 ["Asset"]
       62 JUMPIFEQ                         R4 R5 ; [+2]
       64 RETURN                           R0 0
       65 GETIMPORT                        R4 K7 [require]
       67 GETTABLEKS                       R5 R0 K13 ["Bin"]
       69 GETTABLEKS                       R5 R5 K14 ["Common"]
       71 GETTABLEKS                       R5 R5 K21 ["setup"]
       73 CALL                             R4 1 1
       74 GETIMPORT                        R5 K7 [require]
       76 GETTABLEKS                       R6 R0 K13 ["Bin"]
       78 GETTABLEKS                       R6 R6 K14 ["Common"]
       80 GETTABLEKS                       R6 R6 K22 ["setupMain"]
       82 CALL                             R5 1 1
       83 MOVE                             R6 R4
       84 GETIMPORT                        R7 K1 [plugin]
       86 MOVE                             R8 R5
       87 CALL                             R6 2 0
       88 RETURN                           R0 0
