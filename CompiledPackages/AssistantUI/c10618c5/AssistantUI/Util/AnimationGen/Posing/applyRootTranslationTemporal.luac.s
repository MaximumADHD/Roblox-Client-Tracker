PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKNIL                     R1 ; [+5]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETUPVAL                         R4 1
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLE                         R9 R2 R8
       16 JUMPIFEQKNIL                     R9 ; [+30]
       18 GETTABLEKS                       R10 R9 K0 ["CFrame"]
       20 GETTABLEKS                       R10 R10 K1 ["Position"]
       22 GETTABLE                         R11 R3 R8
       23 JUMPIFNOTEQKNIL                  R11 ; [+10]
       25 GETTABLEKS                       R12 R10 K2 ["Magnitude"]
       27 LOADK                            R13 K3 [1E-05]
       28 JUMPIFNOTLE                      R13 R12 ; [+18]
       30 MOVE                             R12 R8
       31 MOVE                             R13 R10
       32 RETURN                           R12 2
       33 JUMP                             ; [+13]
       34 GETTABLEKS                       R13 R11 K0 ["CFrame"]
       36 GETTABLEKS                       R13 R13 K1 ["Position"]
       38 SUB                              R12 R10 R13
       39 GETTABLEKS                       R13 R12 K2 ["Magnitude"]
       41 LOADK                            R14 K3 [1E-05]
       42 JUMPIFNOTLE                      R14 R13 ; [+4]
       44 MOVE                             R13 R8
       45 MOVE                             R14 R12
       46 RETURN                           R13 2
       47 FORGLOOP                         R4 2 ; [-33]
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 RETURN                           R4 2

PROTO_1:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 NEWTABLE                         R3 0 0
        7 JUMPIFEQKNIL                     R2 ; [+4]
        9 GETTABLEKS                       R4 R2 K1 ["intervals"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 MOVE                             R5 R1
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 JUMPIFEQKNIL                     R4 ; [+6]
       19 GETTABLEKS                       R11 R9 K2 ["time"]
       21 GETTABLE                         R10 R4 R11
       22 JUMPIFNOTEQKNIL                  R10 ; [+21]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R11 R9 K3 ["authored"]
       27 GETTABLEKS                       R12 R9 K4 ["baseline"]
       29 CALL                             R10 2 2
       30 JUMPIFEQKNIL                     R10 ; [+13]
       32 JUMPIFEQKNIL                     R11 ; [+11]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K5 ["timeToFrameIndex"]
       37 GETTABLEKS                       R13 R9 K2 ["time"]
       39 CALL                             R12 1 1
       40 NEWTABLE                         R13 1 0
       42 SETTABLE                         R11 R13 R10
       43 SETTABLE                         R13 R3 R12
       44 FORGLOOP                         R5 2 ; [-28]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K6 ["fadeTranslationOffsets"]
       49 MOVE                             R6 R0
       50 MOVE                             R7 R3
       51 GETTABLEN                        R8 R1 1
       52 GETTABLEKS                       R8 R8 K2 ["time"]
       54 MOVE                             R9 R2
       55 CALL                             R5 4 -1
       56 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["EditJointFilter"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K8 ["Posing"]
       26 GETTABLEKS                       R3 R3 K10 ["JointTranslationTemporal"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       35 GETTABLEKS                       R4 R4 K8 ["Posing"]
       37 GETTABLEKS                       R4 R4 K11 ["ScrubbarFrameKeys"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Util"]
       44 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       46 GETTABLEKS                       R5 R5 K8 ["Posing"]
       48 GETTABLEKS                       R5 R5 K12 ["applyRotationIntentTemporal"]
       50 CALL                             R4 1 1
       51 GETTABLEKS                       R5 R1 K13 ["ROOT_CHANNEL_POSES"]
       53 GETIMPORT                        R6 K5 [require]
       55 GETTABLEKS                       R7 R0 K6 ["Util"]
       57 GETTABLEKS                       R7 R7 K7 ["AnimationGen"]
       59 GETTABLEKS                       R7 R7 K8 ["Posing"]
       61 GETTABLEKS                       R7 R7 K14 ["KeyframePoses"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R6 R6 K15 ["poseMap"]
       66 DUPCLOSURE                       R7 K16 [PROTO_0]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 DUPCLOSURE                       R8 K17 [PROTO_1]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R2
       73 RETURN                           R8 1
