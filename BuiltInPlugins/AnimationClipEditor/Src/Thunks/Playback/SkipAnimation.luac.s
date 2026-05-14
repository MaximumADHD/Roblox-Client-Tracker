PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["Tracks"]
        9 GETTABLEKS                       R4 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R4 K4 ["Playhead"]
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETTABLEKS                       R5 R2 K5 ["Metadata"]
       16 JUMPIFNOT                        R5 ; [+1]
       17 JUMPIF                           R3 ; [+1]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R2 K5 ["Metadata"]
       21 GETTABLEKS                       R5 R5 K6 ["StartTick"]
       23 GETTABLEKS                       R6 R2 K5 ["Metadata"]
       25 GETTABLEKS                       R6 R6 K7 ["EndTick"]
       27 SUB                              R7 R6 R5
       28 JUMPIFNOTEQKN                    R7 K8 [0] ; [+2]
       30 RETURN                           R0 0
       31 LOADNIL                          R7
       32 NEWTABLE                         R8 0 0
       34 GETIMPORT                        R9 K10 [ipairs]
       36 MOVE                             R10 R3
       37 CALL                             R9 1 3
       38 FORGPREP_INEXT                   R9
       39 GETTABLEKS                       R15 R2 K11 ["Instances"]
       41 GETTABLEKS                       R16 R13 K12 ["Instance"]
       43 GETTABLE                         R14 R15 R16
       44 JUMPIFNOT                        R14 ; [+14]
       45 GETTABLEKS                       R16 R14 K3 ["Tracks"]
       47 GETTABLEKS                       R17 R13 K13 ["Name"]
       49 GETTABLE                         R15 R16 R17
       50 JUMPIFNOT                        R15 ; [+8]
       51 GETTABLEKS                       R15 R13 K13 ["Name"]
       53 GETTABLEKS                       R17 R14 K3 ["Tracks"]
       55 GETTABLEKS                       R18 R13 K13 ["Name"]
       57 GETTABLE                         R16 R17 R18
       58 SETTABLE                         R16 R8 R15
       59 FORGLOOP                         R9 2 [inext] ; [-21]
       61 GETUPVAL                         R9 0
       62 JUMPIFNOT                        R9 ; [+8]
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R9 R9 K14 ["getNextKeyframe"]
       66 MOVE                             R10 R8
       67 MOVE                             R11 R4
       68 CALL                             R9 2 1
       69 MOVE                             R7 R9
       70 JUMP                             ; [+7]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K15 ["getPreviousKeyframe"]
       74 MOVE                             R10 R8
       75 MOVE                             R11 R4
       76 CALL                             R9 2 1
       77 MOVE                             R7 R9
       78 GETUPVAL                         R11 2
       79 MOVE                             R12 R7
       80 CALL                             R11 1 -1
       81 NAMECALL                         R9 R0 K16 ["dispatch"]
       83 CALL                             R9 -1 0
       84 GETUPVAL                         R9 0
       85 JUMPIFNOT                        R9 ; [+7]
       86 GETUPVAL                         R9 3
       87 LOADK                            R11 K17 ["onControlPressed"]
       88 LOADK                            R12 K18 ["SkipForward"]
       89 NAMECALL                         R9 R9 K19 ["report"]
       91 CALL                             R9 3 0
       92 RETURN                           R0 0
       93 GETUPVAL                         R9 3
       94 LOADK                            R11 K17 ["onControlPressed"]
       95 LOADK                            R12 K20 ["SkipBackward"]
       96 NAMECALL                         R9 R9 K19 ["report"]
       98 CALL                             R9 3 0
       99 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["TrackUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Thunks"]
       22 GETTABLEKS                       R3 R3 K10 ["Playback"]
       24 GETTABLEKS                       R3 R3 K11 ["StepAnimation"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K12 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
