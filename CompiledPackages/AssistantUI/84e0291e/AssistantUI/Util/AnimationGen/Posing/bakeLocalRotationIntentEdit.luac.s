PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["poseMap"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["poseMap"]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 JUMP                             ; [+2]
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["ROOT_CHANNEL_POSES"]
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLE                         R9 R2 R8
       22 GETTABLE                         R10 R3 R8
       23 JUMPIFEQKNIL                     R9 ; [+52]
       25 JUMPIFEQKNIL                     R10 ; [+50]
       27 GETTABLEKS                       R13 R9 K2 ["CFrame"]
       29 GETTABLEKS                       R13 R13 K3 ["Position"]
       31 GETTABLEKS                       R14 R10 K2 ["CFrame"]
       33 GETTABLEKS                       R14 R14 K3 ["Position"]
       35 SUB                              R12 R13 R14
       36 GETTABLEKS                       R12 R12 K4 ["Magnitude"]
       38 LOADK                            R13 K5 [0.0001]
       39 JUMPIFLE                         R13 R12 ; [+2]
       41 LOADB                            R11 0 +1
       42 LOADB                            R11 1
       43 GETTABLEKS                       R13 R9 K2 ["CFrame"]
       45 GETTABLEKS                       R13 R13 K6 ["Rotation"]
       47 GETTABLEKS                       R15 R10 K2 ["CFrame"]
       49 GETTABLEKS                       R15 R15 K6 ["Rotation"]
       51 NAMECALL                         R13 R13 K7 ["FuzzyEq"]
       53 CALL                             R13 2 1
       54 NOT                              R12 R13
       55 JUMPIF                           R11 ; [+1]
       56 JUMPIFNOT                        R12 ; [+19]
       57 JUMPIFNOT                        R11 ; [+6]
       58 NEWTABLE                         R13 0 1
       60 MOVE                             R14 R8
       61 SETLIST                          R13 R14 1 [1]
       63 JUMP                             ; [+2]
       64 NEWTABLE                         R13 0 0
       66 JUMPIFNOT                        R12 ; [+6]
       67 NEWTABLE                         R14 0 1
       69 MOVE                             R15 R8
       70 SETLIST                          R14 R15 1 [1]
       72 RETURN                           R13 2
       73 NEWTABLE                         R14 0 0
       75 RETURN                           R13 2
       76 FORGLOOP                         R4 2 ; [-56]
       78 NEWTABLE                         R4 0 0
       80 NEWTABLE                         R5 0 0
       82 RETURN                           R4 2

PROTO_1:
        0 NAMECALL                         R3 R0 K0 ["Clone"]
        2 CALL                             R3 1 1
        3 LOADB                            R4 0
        4 NEWTABLE                         R5 0 0
        6 JUMPIFEQKNIL                     R2 ; [+75]
        8 MOVE                             R6 R1
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLEKS                       R12 R10 K1 ["time"]
       14 GETTABLE                         R11 R2 R12
       15 JUMPIFEQKNIL                     R11 ; [+64]
       17 GETTABLEKS                       R12 R10 K2 ["moveJointNames"]
       19 GETTABLEKS                       R13 R10 K3 ["rotateJointNames"]
       21 LENGTH                           R14 R12
       22 JUMPIFNOTEQKN                    R14 K4 [0] ; [+12]
       24 LENGTH                           R14 R13
       25 JUMPIFNOTEQKN                    R14 K4 [0] ; [+9]
       27 GETUPVAL                         R14 0
       28 GETTABLEKS                       R15 R10 K5 ["authored"]
       30 GETTABLEKS                       R16 R10 K6 ["baseline"]
       32 CALL                             R14 2 2
       33 MOVE                             R12 R14
       34 MOVE                             R13 R15
       35 LENGTH                           R14 R13
       36 LOADN                            R15 0
       37 JUMPIFLT                         R15 R14 ; [+5]
       39 LENGTH                           R14 R12
       40 LOADN                            R15 0
       41 JUMPIFNOTLT                      R15 R14 ; [+38]
       43 LOADB                            R4 1
       44 GETUPVAL                         R14 1
       45 MOVE                             R15 R0
       46 GETTABLEKS                       R16 R10 K5 ["authored"]
       48 GETTABLEKS                       R17 R10 K6 ["baseline"]
       50 GETTABLEKS                       R18 R10 K1 ["time"]
       52 MOVE                             R19 R11
       53 DUPTABLE                         R20 K7 [{"rotateJointNames", "moveJointNames"}]
       54 SETTABLEKS                       R13 R20 K3 ["rotateJointNames"]
       56 SETTABLEKS                       R12 R20 K2 ["moveJointNames"]
       58 CALL                             R14 6 0
       59 NEWTABLE                         R14 0 0
       61 MOVE                             R15 R13
       62 LOADNIL                          R16
       63 LOADNIL                          R17
       64 FORGPREP                         R15
       65 LOADB                            R20 1
       66 SETTABLE                         R20 R14 R19
       67 FORGLOOP                         R15 2 ; [-3]
       69 MOVE                             R15 R12
       70 LOADNIL                          R16
       71 LOADNIL                          R17
       72 FORGPREP                         R15
       73 LOADB                            R20 1
       74 SETTABLE                         R20 R14 R19
       75 FORGLOOP                         R15 2 ; [-3]
       77 GETTABLEKS                       R15 R10 K1 ["time"]
       79 SETTABLE                         R14 R5 R15
       80 FORGLOOP                         R6 2 ; [-69]
       82 GETUPVAL                         R6 2
       83 MOVE                             R7 R0
       84 MOVE                             R8 R1
       85 CALL                             R6 2 1
       86 DUPTABLE                         R7 K11 [{"priorSequence", "intervals", "heldJointNamesByTime"}]
       87 SETTABLEKS                       R3 R7 K8 ["priorSequence"]
       89 SETTABLEKS                       R2 R7 K9 ["intervals"]
       91 SETTABLEKS                       R5 R7 K10 ["heldJointNamesByTime"]
       93 GETUPVAL                         R8 3
       94 GETTABLEKS                       R8 R8 K12 ["applyJointTranslation"]
       96 MOVE                             R9 R0
       97 MOVE                             R10 R1
       98 MOVE                             R11 R7
       99 CALL                             R8 3 1
      100 GETUPVAL                         R9 4
      101 MOVE                             R10 R0
      102 MOVE                             R11 R1
      103 MOVE                             R12 R7
      104 CALL                             R9 3 1
      105 NAMECALL                         R10 R3 K13 ["Destroy"]
      107 CALL                             R10 1 0
      108 MOVE                             R10 R4
      109 JUMPIF                           R10 ; [+5]
      110 MOVE                             R10 R6
      111 JUMPIF                           R10 ; [+3]
      112 MOVE                             R10 R8
      113 JUMPIF                           R10 ; [+1]
      114 MOVE                             R10 R9
      115 RETURN                           R10 1

PROTO_2:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        3 LOADNIL                          R3
        4 RETURN                           R3 1
        5 NAMECALL                         R3 R0 K1 ["Clone"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R3
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R4 3 1
       13 JUMPIF                           R4 ; [+5]
       14 NAMECALL                         R4 R3 K2 ["Destroy"]
       16 CALL                             R4 1 0
       17 LOADNIL                          R4
       18 RETURN                           R4 1
       19 RETURN                           R3 1

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
       37 GETTABLEKS                       R4 R4 K11 ["KeyframePoses"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Util"]
       44 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       46 GETTABLEKS                       R5 R5 K8 ["Posing"]
       48 GETTABLEKS                       R5 R5 K12 ["PoseInterval"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K5 [require]
       53 GETTABLEKS                       R6 R0 K6 ["Util"]
       55 GETTABLEKS                       R6 R6 K7 ["AnimationGen"]
       57 GETTABLEKS                       R6 R6 K8 ["Posing"]
       59 GETTABLEKS                       R6 R6 K13 ["applyHeldPose"]
       61 CALL                             R5 1 1
       62 GETIMPORT                        R6 K5 [require]
       64 GETTABLEKS                       R7 R0 K6 ["Util"]
       66 GETTABLEKS                       R7 R7 K7 ["AnimationGen"]
       68 GETTABLEKS                       R7 R7 K8 ["Posing"]
       70 GETTABLEKS                       R7 R7 K14 ["applyRootTranslationTemporal"]
       72 CALL                             R6 1 1
       73 GETIMPORT                        R7 K5 [require]
       75 GETTABLEKS                       R8 R0 K6 ["Util"]
       77 GETTABLEKS                       R8 R8 K7 ["AnimationGen"]
       79 GETTABLEKS                       R8 R8 K8 ["Posing"]
       81 GETTABLEKS                       R8 R8 K15 ["applyRotationIntentTemporal"]
       83 CALL                             R7 1 1
       84 DUPCLOSURE                       R8 K16 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 DUPCLOSURE                       R9 K17 [PROTO_1]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R10 K18 [PROTO_2]
       94 CAPTURE                          VAL R9
       95 RETURN                           R10 1
