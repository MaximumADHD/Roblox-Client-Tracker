PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R4 R2 K2 ["Instances"]
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R3 R4 R5
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["getTrack"]
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 0
       17 GETUPVAL                         R6 2
       18 CALL                             R3 3 1
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 JUMPIFNOT                        R3 ; [+11]
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R6 R7 K4 ["findNearestKeyframesProperly"]
       25 GETTABLEKS                       R7 R3 K5 ["Keyframes"]
       27 GETUPVAL                         R8 4
       28 CALL                             R6 2 2
       29 MOVE                             R4 R6
       30 MOVE                             R5 R7
       31 JUMPIFNOT                        R4 ; [+1]
       32 RETURN                           R0 0
       33 LOADNIL                          R6
       34 JUMPIFNOT                        R3 ; [+1]
       35 JUMPIF                           R5 ; [+14]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R7 R8 K6 ["getDefaultValue"]
       39 GETUPVAL                         R8 5
       40 CALL                             R7 1 1
       41 DUPTABLE                         R8 K9 [{"Value", "InterpolationMode"}]
       42 SETTABLEKS                       R7 R8 K7 ["Value"]
       44 GETIMPORT                        R9 K13 [Enum.KeyInterpolationMode.Cubic]
       46 SETTABLEKS                       R9 R8 K8 ["InterpolationMode"]
       48 MOVE                             R6 R8
       49 JUMP                             ; [+38]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R7 R8 K14 ["getValue"]
       53 MOVE                             R8 R3
       54 GETUPVAL                         R9 4
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R9 R3 K15 ["Data"]
       58 GETTABLEKS                       R11 R3 K5 ["Keyframes"]
       60 GETTABLE                         R10 R11 R5
       61 GETTABLE                         R8 R9 R10
       62 GETTABLEKS                       R9 R8 K8 ["InterpolationMode"]
       64 LOADNIL                          R10
       65 LOADNIL                          R11
       66 GETIMPORT                        R12 K13 [Enum.KeyInterpolationMode.Cubic]
       68 JUMPIFNOTEQ                      R9 R12 ; [+9]
       70 GETUPVAL                         R13 3
       71 GETTABLEKS                       R12 R13 K16 ["getSlopes"]
       73 MOVE                             R13 R3
       74 GETUPVAL                         R14 4
       75 CALL                             R12 2 2
       76 MOVE                             R10 R12
       77 MOVE                             R11 R13
       78 DUPTABLE                         R12 K19 [{"Value", "InterpolationMode", "LeftSlope", "RightSlope"}]
       79 SETTABLEKS                       R7 R12 K7 ["Value"]
       81 SETTABLEKS                       R9 R12 K8 ["InterpolationMode"]
       83 SETTABLEKS                       R10 R12 K17 ["LeftSlope"]
       85 SETTABLEKS                       R11 R12 K18 ["RightSlope"]
       87 MOVE                             R6 R12
       88 GETUPVAL                         R9 6
       89 GETUPVAL                         R10 0
       90 GETUPVAL                         R11 2
       91 GETUPVAL                         R12 5
       92 GETUPVAL                         R13 7
       93 GETUPVAL                         R14 4
       94 MOVE                             R15 R6
       95 GETUPVAL                         R16 8
       96 CALL                             R9 7 -1
       97 NAMECALL                         R7 R0 K20 ["dispatch"]
       99 CALL                             R7 -1 0
      100 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R4
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R5
       10 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AnimationData"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["KeyframeUtils"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Thunks"]
       31 GETTABLEKS                       R4 R5 K11 ["AddKeyframe"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 RETURN                           R4 1
