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
       19 GETIMPORT                        R2 K10 [game]
       21 LOADK                            R4 K11 ["RunService"]
       22 NAMECALL                         R2 R2 K12 ["GetService"]
       24 CALL                             R2 2 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Bin"]
       29 GETTABLEKS                       R5 R6 K14 ["Common"]
       31 GETTABLEKS                       R4 R5 K15 ["defineLuaFlags"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K16 ["getFFlagEnableAnimationGraphEditor"]
       36 CALL                             R4 0 1
       37 JUMPIF                           R4 ; [+1]
       38 RETURN                           R0 0
       39 GETIMPORT                        R4 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Bin"]
       43 GETTABLEKS                       R6 R7 K14 ["Common"]
       45 GETTABLEKS                       R5 R6 K17 ["setup"]
       47 CALL                             R4 1 1
       48 MOVE                             R5 R4
       49 GETIMPORT                        R6 K19 [plugin]
       51 NAMECALL                         R8 R2 K20 ["IsRunning"]
       53 CALL                             R8 1 1
       54 JUMPIFNOT                        R8 ; [+2]
       55 LOADK                            R7 K21 ["previewdatamodel"]
       56 JUMP                             ; [+1]
       57 LOADK                            R7 K22 ["editabledatamodel"]
       58 CALL                             R5 2 0
       59 RETURN                           R0 0
