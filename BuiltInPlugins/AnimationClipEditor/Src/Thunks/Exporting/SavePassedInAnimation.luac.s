PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K0 ["Metadata"]
       10 GETUPVAL                         R3 3
       11 SETTABLEKS                       R3 R2 K1 ["Name"]
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R2 R3 K2 ["getAnimSavesFolder"]
       16 GETUPVAL                         R3 1
       17 LOADB                            R4 1
       18 CALL                             R2 2 2
       19 GETUPVAL                         R4 5
       20 JUMPIFNOT                        R4 ; [+1]
       21 MOVE                             R2 R3
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 GETUPVAL                         R9 6
       27 GETTABLEKS                       R8 R9 K3 ["toAnimationAsset"]
       29 MOVE                             R9 R1
       30 GETUPVAL                         R10 1
       31 CALL                             R8 2 4
       32 MOVE                             R4 R8
       33 MOVE                             R5 R9
       34 MOVE                             R6 R10
       35 MOVE                             R7 R11
       36 GETUPVAL                         R8 3
       37 SETTABLEKS                       R8 R4 K1 ["Name"]
       39 GETUPVAL                         R10 3
       40 NAMECALL                         R8 R2 K4 ["FindFirstChild"]
       42 CALL                             R8 2 1
       43 JUMPIFNOT                        R8 ; [+5]
       44 GETUPVAL                         R9 3
       45 GETTABLE                         R8 R2 R9
       46 NAMECALL                         R8 R8 K5 ["Destroy"]
       48 CALL                             R8 1 0
       49 SETTABLEKS                       R2 R4 K6 ["Parent"]
       51 GETUPVAL                         R10 7
       52 GETTABLEKS                       R9 R10 K7 ["isChannelAnimation"]
       54 MOVE                             R10 R1
       55 CALL                             R9 1 1
       56 JUMPIFNOT                        R9 ; [+6]
       57 GETUPVAL                         R10 8
       58 GETTABLEKS                       R9 R10 K8 ["ANIMATION_TYPE"]
       60 GETTABLEKS                       R8 R9 K9 ["CurveAnimation"]
       62 JUMP                             ; [+5]
       63 GETUPVAL                         R10 8
       64 GETTABLEKS                       R9 R10 K8 ["ANIMATION_TYPE"]
       66 GETTABLEKS                       R8 R9 K10 ["KeyframeSequence"]
       68 GETUPVAL                         R9 9
       69 LOADK                            R11 K11 ["onSaveAnimation"]
       70 GETUPVAL                         R12 3
       71 MOVE                             R13 R5
       72 MOVE                             R14 R6
       73 MOVE                             R15 R7
       74 MOVE                             R16 R8
       75 GETTABLEKS                       R17 R4 K12 ["Guid"]
       77 NAMECALL                         R9 R9 K13 ["report"]
       79 CALL                             R9 8 0
       80 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          VAL R5
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R4
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["RigUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["RigSerialization"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["deepCopy"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K11 ["AnimationData"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K7 ["Util"]
       49 GETTABLEKS                       R6 R7 K12 ["Constants"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K13 [PROTO_1]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 RETURN                           R6 1
