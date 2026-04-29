PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["GetPlatform"]
        5 GETUPVAL                         R2 0
        6 CALL                             R0 2 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K3 ["IsTenFootInterface"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R5 3
       17 GETTABLE                         R4 R5 R3
       18 RETURN                           R4 1
       19 LOADNIL                          R4
       20 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["GetPlatform"]
        5 GETUPVAL                         R3 0
        6 CALL                             R1 2 2
        7 JUMPIFNOT                        R1 ; [+2]
        8 MOVE                             R0 R2
        9 JUMP                             ; [+11]
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R3 R3 K3 ["IsTenFootInterface"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETUPVAL                         R5 3
       18 GETTABLE                         R0 R5 R4
       19 JUMP                             ; [+1]
       20 LOADNIL                          R0
       21 GETUPVAL                         R2 4
       22 GETTABLE                         R1 R2 R0
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Platform"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["getInputPlatform"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["PlatformIconMap"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R4 K1 [require]
       30 GETIMPORT                        R8 K3 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K8 ["Services"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R3 R4 K9 ["UserInputService"]
       41 GETIMPORT                        R5 K1 [require]
       43 GETIMPORT                        R9 K3 [script]
       45 GETTABLEKS                       R8 R9 K4 ["Parent"]
       47 GETTABLEKS                       R7 R8 K4 ["Parent"]
       49 GETTABLEKS                       R6 R7 K8 ["Services"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R4 R5 K10 ["GuiService"]
       54 NEWTABLE                         R5 4 0
       56 GETTABLEKS                       R6 R0 K11 ["PS4"]
       58 GETIMPORT                        R7 K13 [Enum.Platform.PS4]
       60 SETTABLE                         R7 R5 R6
       61 GETTABLEKS                       R6 R0 K14 ["PS5"]
       63 GETIMPORT                        R7 K15 [Enum.Platform.PS5]
       65 SETTABLE                         R7 R5 R6
       66 GETTABLEKS                       R6 R0 K16 ["Xbox"]
       68 GETIMPORT                        R7 K18 [Enum.Platform.XBoxOne]
       70 SETTABLE                         R7 R5 R6
       71 DUPCLOSURE                       R6 K19 [PROTO_0]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 DUPCLOSURE                       R7 K20 [PROTO_1]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R2
       82 RETURN                           R7 1
