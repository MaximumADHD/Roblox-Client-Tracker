PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AnimationData"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["getTrack"]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 1
       12 GETUPVAL                         R5 2
       13 CALL                             R2 3 1
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R2 K3 ["Data"]
       18 GETUPVAL                         R5 3
       19 GETTABLE                         R3 R4 R5
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R0 0
       22 NEWTABLE                         R4 4 0
       24 GETUPVAL                         R5 4
       25 GETUPVAL                         R8 5
       26 GETTABLEKS                       R7 R8 K4 ["SLOPES"]
       28 GETTABLEKS                       R6 R7 K5 ["Left"]
       30 JUMPIFNOTEQ                      R5 R6 ; [+31]
       32 GETUPVAL                         R6 6
       33 GETTABLEKS                       R5 R6 K6 ["findNearestKeyframesProperly"]
       35 GETTABLEKS                       R6 R2 K7 ["Keyframes"]
       37 GETUPVAL                         R8 3
       38 SUBK                             R7 R8 K8 [1]
       39 CALL                             R5 2 3
       40 JUMPIFNOT                        R6 ; [+17]
       41 GETTABLEKS                       R9 R2 K7 ["Keyframes"]
       43 GETTABLE                         R8 R9 R6
       44 DUPTABLE                         R9 K10 [{"InterpolationMode"}]
       45 GETIMPORT                        R10 K14 [Enum.KeyInterpolationMode.Cubic]
       47 SETTABLEKS                       R10 R9 K9 ["InterpolationMode"]
       49 GETUPVAL                         R12 7
       50 GETUPVAL                         R13 1
       51 GETUPVAL                         R14 2
       52 MOVE                             R15 R8
       53 MOVE                             R16 R9
       54 CALL                             R12 4 -1
       55 NAMECALL                         R10 R0 K15 ["dispatch"]
       57 CALL                             R10 -1 0
       58 GETUPVAL                         R8 8
       59 SETTABLEKS                       R8 R4 K16 ["LeftSlope"]
       61 JUMP                             ; [+7]
       62 GETIMPORT                        R5 K14 [Enum.KeyInterpolationMode.Cubic]
       64 SETTABLEKS                       R5 R4 K9 ["InterpolationMode"]
       66 GETUPVAL                         R5 8
       67 SETTABLEKS                       R5 R4 K17 ["RightSlope"]
       69 GETUPVAL                         R7 7
       70 GETUPVAL                         R8 1
       71 GETUPVAL                         R9 2
       72 GETUPVAL                         R10 3
       73 MOVE                             R11 R4
       74 CALL                             R7 4 -1
       75 NAMECALL                         R5 R0 K15 ["dispatch"]
       77 CALL                             R5 -1 0
       78 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R4
       10 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["AnimationData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["KeyframeUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K11 ["Thunks"]
       40 GETTABLEKS                       R5 R6 K12 ["SetKeyframeData"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R5 1
