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
       42 GETTABLEKS                       R5 R5 K20 ["setup"]
       44 CALL                             R4 1 1
       45 MOVE                             R5 R4
       46 GETIMPORT                        R6 K5 [plugin]
       48 NAMECALL                         R8 R3 K21 ["IsRunning"]
       50 CALL                             R8 1 1
       51 JUMPIFNOT                        R8 ; [+2]
       52 LOADK                            R7 K22 ["previewdatamodel"]
       53 JUMP                             ; [+1]
       54 LOADK                            R7 K23 ["editabledatamodel"]
       55 CALL                             R5 2 0
       56 RETURN                           R0 0
