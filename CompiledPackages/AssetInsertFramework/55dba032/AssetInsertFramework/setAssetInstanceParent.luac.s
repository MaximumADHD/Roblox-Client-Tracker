PROTO_0:
        0 LOADK                            R4 K0 ["Sky"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 LOADK                            R4 K2 ["Atmosphere"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETUPVAL                         R2 0
       11 SETTABLEKS                       R2 R0 K3 ["Parent"]
       13 RETURN                           R0 0
       14 LOADK                            R4 K4 ["MaterialVariant"]
       15 NAMECALL                         R2 R0 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+4]
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R0 K3 ["Parent"]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 2
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+9]
       26 LOADK                            R4 K5 ["ScreenGui"]
       27 NAMECALL                         R2 R0 K1 ["IsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+4]
       31 GETUPVAL                         R2 3
       32 SETTABLEKS                       R2 R0 K3 ["Parent"]
       34 RETURN                           R0 0
       35 JUMPIFNOT                        R1 ; [+3]
       36 SETTABLEKS                       R1 R0 K3 ["Parent"]
       38 RETURN                           R0 0
       39 GETIMPORT                        R2 K7 [game]
       41 GETTABLEKS                       R2 R2 K8 ["Workspace"]
       43 SETTABLEKS                       R2 R0 K3 ["Parent"]
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [game]
        7 LOADK                            R3 K5 ["Lighting"]
        8 NAMECALL                         R1 R1 K6 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K4 [game]
       13 LOADK                            R4 K7 ["MaterialService"]
       14 NAMECALL                         R2 R2 K6 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K4 [game]
       19 LOADK                            R5 K8 ["StarterGui"]
       20 NAMECALL                         R3 R3 K6 ["GetService"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K10 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Flags"]
       27 GETTABLEKS                       R5 R5 K12 ["getFFlagAmrEnableAnimatedImage"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 RETURN                           R5 1
