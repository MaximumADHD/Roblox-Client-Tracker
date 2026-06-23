MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [plugin]
        9 LOADK                            R3 K6 ["__RBX_PreInit"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstChild"]
       12 CALL                             R1 2 1
       13 JUMPIFEQKNIL                     R1 ; [+4]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K8 ["Parent"]
       18 GETIMPORT                        R2 K10 [require]
       20 GETTABLEKS                       R3 R0 K11 ["Packages"]
       22 GETTABLEKS                       R3 R3 K12 ["TestLoader"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K13 ["isCli"]
       27 CALL                             R3 0 1
       28 JUMPIFNOT                        R3 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R3 K15 [game]
       32 LOADK                            R5 K16 ["RunService"]
       33 NAMECALL                         R3 R3 K17 ["GetService"]
       35 CALL                             R3 2 1
       36 GETIMPORT                        R4 K10 [require]
       38 GETTABLEKS                       R5 R0 K18 ["Bin"]
       40 GETTABLEKS                       R5 R5 K19 ["Common"]
       42 GETTABLEKS                       R5 R5 K20 ["defineLuaFlags"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R5 R4 K21 ["getFFlagEnableAnimationGraphEditor"]
       47 CALL                             R5 0 1
       48 JUMPIF                           R5 ; [+1]
       49 RETURN                           R0 0
       50 GETIMPORT                        R5 K10 [require]
       52 GETTABLEKS                       R6 R0 K18 ["Bin"]
       54 GETTABLEKS                       R6 R6 K19 ["Common"]
       56 GETTABLEKS                       R6 R6 K22 ["setup"]
       58 CALL                             R5 1 1
       59 MOVE                             R6 R5
       60 GETIMPORT                        R7 K5 [plugin]
       62 NAMECALL                         R9 R3 K23 ["IsRunning"]
       64 CALL                             R9 1 1
       65 JUMPIFNOT                        R9 ; [+2]
       66 LOADK                            R8 K24 ["previewdatamodel"]
       67 JUMP                             ; [+1]
       68 LOADK                            R8 K25 ["editabledatamodel"]
       69 CALL                             R6 2 0
       70 RETURN                           R0 0
