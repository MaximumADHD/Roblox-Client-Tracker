PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Expected a name for the AnimationData."]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["animationData"]
       13 CALL                             R2 0 1
       14 GETTABLEKS                       R3 R2 K4 ["Metadata"]
       16 SETTABLEKS                       R0 R3 K5 ["Name"]
       18 GETTABLEKS                       R3 R2 K4 ["Metadata"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K6 ["IsChannelAnimation"]
       23 GETTABLEKS                       R3 R2 K4 ["Metadata"]
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K7 ["IkTargets"]
       29 JUMPIFNOT                        R1 ; [+6]
       30 JUMPIFEQKS                       R1 K8 [""] ; [+5]
       32 GETTABLEKS                       R3 R2 K4 ["Metadata"]
       34 SETTABLEKS                       R1 R3 K9 ["Guid"]
       36 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["Keyframes"]
        2 GETTABLEKS                       R5 R0 K1 ["Data"]
        4 GETTABLE                         R6 R5 R1
        5 JUMPIF                           R6 ; [+18]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K2 ["findInsertIndex"]
        9 MOVE                             R7 R4
       10 MOVE                             R8 R1
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+8]
       13 FASTCALL3                        TABLE_INSERT R4 R6 R1
       15 MOVE                             R8 R4
       16 MOVE                             R9 R6
       17 MOVE                             R10 R1
       18 GETIMPORT                        R7 K5 [table.insert]
       20 CALL                             R7 3 0
       21 NEWTABLE                         R7 0 0
       23 SETTABLE                         R7 R5 R1
       24 GETTABLE                         R7 R5 R1
       25 GETTABLE                         R6 R7 R2
       26 JUMPIF                           R6 ; [+3]
       27 GETTABLE                         R6 R5 R1
       28 ORK                              R7 R3 K6 [""]
       29 SETTABLE                         R7 R6 R2
       30 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQ                      R1 R2 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        5 GETTABLEKS                       R4 R0 K1 ["Data"]
        7 GETTABLE                         R5 R4 R1
        8 JUMPIFNOT                        R5 ; [+32]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["findKeyframe"]
       12 MOVE                             R6 R3
       13 MOVE                             R7 R1
       14 CALL                             R5 2 1
       15 GETIMPORT                        R6 K5 [table.remove]
       17 MOVE                             R7 R3
       18 MOVE                             R8 R5
       19 CALL                             R6 2 0
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K6 ["findInsertIndex"]
       23 MOVE                             R7 R3
       24 MOVE                             R8 R2
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+8]
       27 FASTCALL3                        TABLE_INSERT R3 R6 R2
       29 MOVE                             R8 R3
       30 MOVE                             R9 R6
       31 MOVE                             R10 R2
       32 GETIMPORT                        R7 K8 [table.insert]
       34 CALL                             R7 3 0
       35 GETUPVAL                         R7 1
       36 GETTABLE                         R8 R4 R1
       37 CALL                             R7 1 1
       38 SETTABLE                         R7 R4 R2
       39 LOADNIL                          R7
       40 SETTABLE                         R7 R4 R1
       41 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
        2 GETTABLEKS                       R3 R0 K1 ["Data"]
        4 GETTABLE                         R4 R3 R1
        5 JUMPIFNOT                        R4 ; [+13]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["findKeyframe"]
        9 MOVE                             R5 R2
       10 MOVE                             R6 R1
       11 CALL                             R4 2 1
       12 GETIMPORT                        R5 K5 [table.remove]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R4
       16 CALL                             R5 2 0
       17 LOADNIL                          R5
       18 SETTABLE                         R5 R3 R1
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["Data"]
        2 GETTABLE                         R5 R4 R1
        3 JUMPIFNOT                        R5 ; [+5]
        4 GETTABLE                         R6 R4 R1
        5 GETTABLE                         R5 R6 R2
        6 JUMPIFNOT                        R5 ; [+2]
        7 GETTABLE                         R5 R4 R1
        8 SETTABLE                         R3 R5 R2
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        2 GETTABLEKS                       R4 R0 K1 ["Data"]
        4 GETTABLE                         R5 R4 R1
        5 JUMPIFNOT                        R5 ; [+23]
        6 GETTABLE                         R6 R4 R1
        7 GETTABLE                         R5 R6 R2
        8 JUMPIFNOT                        R5 ; [+20]
        9 GETTABLE                         R5 R4 R1
       10 LOADNIL                          R6
       11 SETTABLE                         R6 R5 R2
       12 GETUPVAL                         R5 0
       13 GETTABLE                         R6 R4 R1
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R5 ; [+13]
       16 LOADNIL                          R5
       17 SETTABLE                         R5 R4 R1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R5 R6 K2 ["findKeyframe"]
       21 MOVE                             R6 R3
       22 MOVE                             R7 R1
       23 CALL                             R5 2 1
       24 GETIMPORT                        R6 K5 [table.remove]
       26 MOVE                             R7 R3
       27 MOVE                             R8 R5
       28 CALL                             R6 2 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["track"]
        3 MOVE                             R7 R2
        4 CALL                             R6 1 1
        5 SETTABLE                         R6 R0 R1
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["splitTrackComponents"]
       10 GETTABLE                         R7 R0 R1
       11 MOVE                             R8 R4
       12 MOVE                             R9 R5
       13 CALL                             R6 3 0
       14 JUMP                             ; [+13]
       15 GETTABLE                         R6 R0 R1
       16 NEWTABLE                         R7 0 0
       18 SETTABLEKS                       R7 R6 K2 ["Keyframes"]
       20 GETTABLE                         R6 R0 R1
       21 NEWTABLE                         R7 0 0
       23 SETTABLEKS                       R7 R6 K3 ["Data"]
       25 GETTABLE                         R6 R0 R1
       26 SETTABLEKS                       R5 R6 K4 ["EulerAnglesOrder"]
       28 GETTABLE                         R6 R0 R1
       29 RETURN                           R6 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["findInsertIndex"]
        5 MOVE                             R5 R3
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 JUMPIFNOT                        R4 ; [+8]
        9 FASTCALL3                        TABLE_INSERT R3 R4 R1
       11 MOVE                             R6 R3
       12 MOVE                             R7 R4
       13 MOVE                             R8 R1
       14 GETIMPORT                        R5 K4 [table.insert]
       16 CALL                             R5 3 0
       17 GETTABLEKS                       R5 R0 K5 ["Data"]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K6 ["Dictionary"]
       22 GETTABLEKS                       R6 R7 K7 ["join"]
       24 GETTABLEKS                       R8 R0 K5 ["Data"]
       26 GETTABLE                         R7 R8 R1
       27 JUMPIF                           R7 ; [+4]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K8 ["keyframe"]
       31 CALL                             R7 0 1
       32 MOVE                             R8 R2
       33 CALL                             R6 2 1
       34 SETTABLE                         R6 R5 R1
       35 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R3 K1 [{"Value"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K2 ["getDefaultValue"]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 1
        6 SETTABLEKS                       R4 R3 K0 ["Value"]
        8 GETTABLEKS                       R4 R0 K3 ["IsCurveTrack"]
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETIMPORT                        R4 K7 [Enum.KeyInterpolationMode.Cubic]
       13 SETTABLEKS                       R4 R3 K8 ["InterpolationMode"]
       15 JUMP                             ; [+8]
       16 GETIMPORT                        R4 K11 [Enum.PoseEasingStyle.Linear]
       18 SETTABLEKS                       R4 R3 K12 ["EasingStyle"]
       20 GETIMPORT                        R4 K15 [Enum.PoseEasingDirection.In]
       22 SETTABLEKS                       R4 R3 K16 ["EasingDirection"]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K17 ["addKeyframe"]
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 MOVE                             R7 R3
       30 CALL                             R4 3 0
       31 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Events"]
        2 JUMPIFNOT                        R3 ; [+56]
        3 GETTABLEKS                       R4 R0 K0 ["Events"]
        5 GETTABLEKS                       R3 R4 K1 ["NamedKeyframes"]
        7 JUMPIFNOT                        R3 ; [+51]
        8 GETTABLE                         R4 R3 R1
        9 JUMPIFNOT                        R4 ; [+49]
       10 GETTABLE                         R4 R3 R1
       11 LOADB                            R5 1
       12 GETIMPORT                        R6 K3 [pairs]
       14 GETTABLEKS                       R7 R0 K4 ["Instances"]
       16 CALL                             R6 1 3
       17 FORGPREP_NEXT                    R6
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R11 R12 K5 ["getSummaryKeyframes"]
       21 GETTABLEKS                       R12 R10 K6 ["Tracks"]
       23 GETTABLEKS                       R14 R0 K7 ["Metadata"]
       25 GETTABLEKS                       R13 R14 K8 ["StartTick"]
       27 GETTABLEKS                       R15 R0 K7 ["Metadata"]
       29 GETTABLEKS                       R14 R15 K9 ["EndTick"]
       31 CALL                             R11 3 1
       32 GETIMPORT                        R12 K11 [ipairs]
       34 MOVE                             R13 R11
       35 CALL                             R12 1 3
       36 FORGPREP_INEXT                   R12
       37 JUMPIFNOTEQ                      R16 R1 ; [+2]
       39 LOADB                            R5 0
       40 FORGLOOP                         R12 2 [inext] ; [-4]
       42 FORGLOOP                         R6 2 ; [-25]
       44 JUMPIFNOT                        R5 ; [+14]
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R6 R7 K12 ["setKeyframeName"]
       48 MOVE                             R7 R0
       49 MOVE                             R8 R1
       50 LOADNIL                          R9
       51 CALL                             R6 3 0
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R6 R7 K12 ["setKeyframeName"]
       55 MOVE                             R7 R0
       56 MOVE                             R8 R2
       57 MOVE                             R9 R4
       58 CALL                             R6 3 0
       59 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOTEQ                      R1 R2 ; [+2]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["findKeyframe"]
        8 MOVE                             R5 R3
        9 MOVE                             R6 R1
       10 CALL                             R4 2 1
       11 GETIMPORT                        R5 K4 [table.remove]
       13 MOVE                             R6 R3
       14 MOVE                             R7 R4
       15 CALL                             R5 2 0
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K5 ["findInsertIndex"]
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R5 ; [+8]
       23 FASTCALL3                        TABLE_INSERT R3 R5 R2
       25 MOVE                             R7 R3
       26 MOVE                             R8 R5
       27 MOVE                             R9 R2
       28 GETIMPORT                        R6 K7 [table.insert]
       30 CALL                             R6 3 0
       31 GETTABLEKS                       R6 R0 K8 ["Data"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R9 R0 K8 ["Data"]
       36 GETTABLE                         R8 R9 R1
       37 CALL                             R7 1 1
       38 SETTABLE                         R7 R6 R2
       39 GETTABLEKS                       R6 R0 K8 ["Data"]
       41 LOADNIL                          R7
       42 SETTABLE                         R7 R6 R1
       43 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Data"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["findKeyframe"]
        7 GETTABLEKS                       R3 R0 K2 ["Keyframes"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 GETIMPORT                        R3 K5 [table.remove]
       13 GETTABLEKS                       R4 R0 K2 ["Keyframes"]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["Data"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
        5 GETTABLEKS                       R4 R5 K2 ["join"]
        7 GETTABLEKS                       R6 R0 K0 ["Data"]
        9 GETTABLE                         R5 R6 R1
       10 MOVE                             R6 R2
       11 CALL                             R4 2 1
       12 SETTABLE                         R4 R3 R1
       13 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["DEFAULT_KEYFRAME_NAME"]
        3 JUMPIFNOTEQ                      R2 R3 ; [+8]
        5 GETTABLEKS                       R4 R0 K1 ["Events"]
        7 GETTABLEKS                       R3 R4 K2 ["NamedKeyframes"]
        9 LOADNIL                          R4
       10 SETTABLE                         R4 R3 R1
       11 RETURN                           R0 0
       12 GETTABLEKS                       R4 R0 K1 ["Events"]
       14 GETTABLEKS                       R3 R4 K2 ["NamedKeyframes"]
       16 SETTABLE                         R2 R3 R1
       17 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Events"]
        2 JUMPIFNOT                        R1 ; [+58]
        3 GETTABLEKS                       R2 R0 K0 ["Events"]
        5 GETTABLEKS                       R1 R2 K1 ["NamedKeyframes"]
        7 JUMPIFNOT                        R1 ; [+53]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+49]
       12 NEWTABLE                         R2 0 0
       14 GETIMPORT                        R3 K3 [pairs]
       16 GETTABLEKS                       R4 R0 K4 ["Instances"]
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K5 ["getSummaryKeyframes"]
       23 GETTABLEKS                       R9 R7 K6 ["Tracks"]
       25 GETTABLEKS                       R11 R0 K7 ["Metadata"]
       27 GETTABLEKS                       R10 R11 K8 ["StartTick"]
       29 GETTABLEKS                       R12 R0 K7 ["Metadata"]
       31 GETTABLEKS                       R11 R12 K9 ["EndTick"]
       33 CALL                             R8 3 1
       34 GETIMPORT                        R9 K11 [ipairs]
       36 MOVE                             R10 R8
       37 CALL                             R9 1 3
       38 FORGPREP_INEXT                   R9
       39 LOADB                            R14 1
       40 SETTABLE                         R14 R2 R13
       41 FORGLOOP                         R9 2 [inext] ; [-3]
       43 FORGLOOP                         R3 2 ; [-24]
       45 GETIMPORT                        R3 K3 [pairs]
       47 MOVE                             R4 R1
       48 CALL                             R3 1 3
       49 FORGPREP_NEXT                    R3
       50 GETTABLE                         R8 R2 R6
       51 JUMPIF                           R8 ; [+7]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R8 R9 K12 ["setKeyframeName"]
       55 MOVE                             R9 R0
       56 MOVE                             R10 R6
       57 LOADNIL                          R11
       58 CALL                             R8 3 0
       59 FORGLOOP                         R3 2 ; [-10]
       61 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        2 JUMPIFNOT                        R1 ; [+19]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+14]
        8 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
       10 GETTABLEKS                       R4 R0 K0 ["Keyframes"]
       12 LENGTH                           R3 R4
       13 GETTABLE                         R1 R2 R3
       14 GETUPVAL                         R3 1
       15 FASTCALL2                        MATH_MAX R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K3 [math.max]
       20 CALL                             R2 2 1
       21 SETUPVAL                         R2 1
       22 RETURN                           R0 0

PROTO_16:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADN                            R1 0
        3 JUMPIFNOT                        R0 ; [+31]
        4 GETTABLEKS                       R2 R0 K0 ["Instances"]
        6 JUMPIFNOT                        R2 ; [+28]
        7 GETIMPORT                        R2 K2 [pairs]
        9 GETTABLEKS                       R3 R0 K0 ["Instances"]
       11 CALL                             R2 1 3
       12 FORGPREP_NEXT                    R2
       13 GETTABLEKS                       R7 R6 K3 ["Tracks"]
       15 JUMPIFNOT                        R7 ; [+17]
       16 GETIMPORT                        R7 K2 [pairs]
       18 GETTABLEKS                       R8 R6 K3 ["Tracks"]
       20 CALL                             R7 1 3
       21 FORGPREP_NEXT                    R7
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K4 ["traverseTracks"]
       25 LOADNIL                          R13
       26 MOVE                             R14 R11
       27 NEWCLOSURE                       R15 P0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          REF R1
       30 CALL                             R12 3 0
       31 FORGLOOP                         R7 2 ; [-10]
       33 FORGLOOP                         R2 2 ; [-21]
       35 GETTABLEKS                       R2 R0 K5 ["Metadata"]
       37 JUMPIFNOT                        R2 ; [+4]
       38 GETTABLEKS                       R2 R0 K5 ["Metadata"]
       40 SETTABLEKS                       R1 R2 K6 ["EndTick"]
       42 CLOSEUPVALS                      R1
       43 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["MAX_TIME"]
        3 MUL                              R1 R0 R2
        4 RETURN                           R1 1

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETTABLEKS                       R2 R0 K0 ["Metadata"]
        3 SETTABLEKS                       R1 R2 K1 ["Looping"]
        5 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+29]
        1 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        3 JUMPIFNOT                        R1 ; [+26]
        4 GETTABLEKS                       R1 R0 K1 ["Data"]
        6 JUMPIFNOT                        R1 ; [+23]
        7 GETIMPORT                        R1 K3 [ipairs]
        9 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
       11 CALL                             R1 1 3
       12 FORGPREP_INEXT                   R1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K4 ["MAX_ANIMATION_LENGTH"]
       16 JUMPIFNOTLT                      R6 R5 ; [+11]
       18 GETTABLEKS                       R6 R0 K1 ["Data"]
       20 LOADNIL                          R7
       21 SETTABLE                         R7 R6 R5
       22 GETTABLEKS                       R6 R0 K0 ["Keyframes"]
       24 LOADNIL                          R7
       25 SETTABLE                         R7 R6 R4
       26 LOADB                            R6 1
       27 SETUPVAL                         R6 1
       28 FORGLOOP                         R1 2 [inext] ; [-16]
       30 RETURN                           R0 0

PROTO_20:
        0 LOADB                            R1 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETTABLEKS                       R2 R0 K0 ["Metadata"]
        4 JUMPIF                           R2 ; [+2]
        5 CLOSEUPVALS                      R1
        6 RETURN                           R1 1
        7 JUMPIFNOT                        R0 ; [+40]
        8 GETTABLEKS                       R2 R0 K1 ["Instances"]
       10 JUMPIFNOT                        R2 ; [+37]
       11 GETTABLEKS                       R2 R0 K0 ["Metadata"]
       13 JUMPIFNOT                        R2 ; [+34]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          REF R1
       17 GETIMPORT                        R3 K3 [pairs]
       19 GETTABLEKS                       R4 R0 K1 ["Instances"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 CALL                             R3 1 3
       25 FORGPREP_NEXT                    R3
       26 GETIMPORT                        R8 K3 [pairs]
       28 GETTABLEKS                       R9 R7 K4 ["Tracks"]
       30 CALL                             R8 1 3
       31 FORGPREP_NEXT                    R8
       32 GETUPVAL                         R14 1
       33 GETTABLEKS                       R13 R14 K5 ["traverseTracks"]
       35 LOADNIL                          R14
       36 MOVE                             R15 R12
       37 MOVE                             R16 R2
       38 LOADB                            R17 1
       39 CALL                             R13 4 0
       40 FORGLOOP                         R8 2 ; [-9]
       42 FORGLOOP                         R3 2 ; [-17]
       44 MOVE                             R3 R2
       45 GETTABLEKS                       R4 R0 K6 ["Events"]
       47 CALL                             R3 1 0
       48 CLOSEUPVALS                      R1
       49 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["Selection"]
        4 JUMPIF                           R2 ; [+2]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R8 0
       10 FASTCALL2                        MATH_MIN R4 R8 ; [+4]
       12 MOVE                             R7 R4
       13 GETIMPORT                        R6 K5 [math.min]
       15 CALL                             R6 2 1
       16 SETUPVAL                         R6 0
       17 GETUPVAL                         R8 1
       18 FASTCALL2                        MATH_MAX R4 R8 ; [+4]
       20 MOVE                             R7 R4
       21 GETIMPORT                        R6 K7 [math.max]
       23 CALL                             R6 2 1
       24 SETUPVAL                         R6 1
       25 FORGLOOP                         R1 2 ; [-17]
       27 GETIMPORT                        R1 K1 [pairs]
       29 GETTABLEKS                       R2 R0 K8 ["Components"]
       31 JUMPIF                           R2 ; [+2]
       32 NEWTABLE                         R2 0 0
       34 CALL                             R1 1 3
       35 FORGPREP_NEXT                    R1
       36 GETUPVAL                         R6 2
       37 MOVE                             R7 R5
       38 CALL                             R6 1 0
       39 FORGLOOP                         R1 2 ; [-4]
       41 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOT                        R1 ; [+4]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 RETURN                           R2 2
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["MAX_ANIMATION_LENGTH"]
       11 LOADN                            R3 0
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          REF R2
       14 CAPTURE                          REF R3
       15 CAPTURE                          VAL R4
       16 GETIMPORT                        R5 K2 [pairs]
       18 MOVE                             R6 R1
       19 CALL                             R5 1 3
       20 FORGPREP_NEXT                    R5
       21 GETIMPORT                        R10 K2 [pairs]
       23 MOVE                             R11 R9
       24 CALL                             R10 1 3
       25 FORGPREP_NEXT                    R10
       26 MOVE                             R15 R4
       27 MOVE                             R16 R14
       28 CALL                             R15 1 0
       29 FORGLOOP                         R10 2 ; [-4]
       31 FORGLOOP                         R5 2 ; [-11]
       33 CLOSEUPVALS                      R2
       34 RETURN                           R2 2

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["MAX_ANIMATION_LENGTH"]
        3 LOADN                            R3 0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["Dictionary"]
        7 GETTABLEKS                       R4 R5 K2 ["keys"]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 GETIMPORT                        R5 K5 [table.sort]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 0
       15 JUMPIFNOT                        R4 ; [+10]
       16 GETTABLEN                        R5 R4 1
       17 JUMPIFNOTLE                      R5 R2 ; [+2]
       19 GETTABLEN                        R2 R4 1
       20 LENGTH                           R6 R4
       21 GETTABLE                         R5 R4 R6
       22 JUMPIFNOTLE                      R3 R5 ; [+3]
       24 LENGTH                           R5 R4
       25 GETTABLE                         R3 R4 R5
       26 RETURN                           R2 2

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R3 R0 K0 ["Metadata"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETTABLEKS                       R4 R0 K0 ["Metadata"]
        6 GETTABLEKS                       R3 R4 K1 ["IsChannelAnimation"]
        8 JUMPIFNOT                        R3 ; [+3]
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 RETURN                           R3 2
       12 GETIMPORT                        R3 K3 [pairs]
       14 GETTABLEKS                       R4 R0 K4 ["Instances"]
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 GETIMPORT                        R8 K3 [pairs]
       20 GETTABLEKS                       R9 R7 K5 ["Tracks"]
       22 CALL                             R8 1 3
       23 FORGPREP_NEXT                    R8
       24 GETUPVAL                         R14 0
       25 GETTABLEKS                       R13 R14 K6 ["splitTrackComponents"]
       27 MOVE                             R14 R12
       28 GETUPVAL                         R17 1
       29 GETTABLEKS                       R16 R17 K7 ["TRACK_TYPES"]
       31 GETTABLEKS                       R15 R16 K8 ["Quaternion"]
       33 CALL                             R13 2 0
       34 GETTABLEKS                       R13 R12 K9 ["Type"]
       36 GETUPVAL                         R16 1
       37 GETTABLEKS                       R15 R16 K7 ["TRACK_TYPES"]
       39 GETTABLEKS                       R14 R15 K10 ["CFrame"]
       41 JUMPIFNOTEQ                      R13 R14 ; [+21]
       43 GETUPVAL                         R15 1
       44 GETTABLEKS                       R14 R15 K7 ["TRACK_TYPES"]
       46 GETTABLEKS                       R13 R14 K11 ["EulerAngles"]
       48 JUMPIFNOTEQ                      R1 R13 ; [+14]
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R13 R14 K12 ["convertTrackToEulerAngles"]
       53 GETTABLEKS                       R15 R12 K13 ["Components"]
       55 GETUPVAL                         R18 1
       56 GETTABLEKS                       R17 R18 K14 ["PROPERTY_KEYS"]
       58 GETTABLEKS                       R16 R17 K15 ["Rotation"]
       60 GETTABLE                         R14 R15 R16
       61 MOVE                             R15 R2
       62 CALL                             R13 2 0
       63 FORGLOOP                         R8 2 ; [-40]
       65 FORGLOOP                         R3 2 ; [-48]
       67 GETUPVAL                         R4 2
       68 GETTABLEKS                       R3 R4 K16 ["clearTrackSequences"]
       70 MOVE                             R4 R0
       71 CALL                             R3 1 0
       72 GETTABLEKS                       R3 R0 K0 ["Metadata"]
       74 LOADB                            R4 1
       75 SETTABLEKS                       R4 R3 K1 ["IsChannelAnimation"]
       77 GETTABLEKS                       R3 R0 K0 ["Metadata"]
       79 GETTABLEKS                       R7 R0 K0 ["Metadata"]
       81 GETTABLEKS                       R5 R7 K17 ["Name"]
       83 LOADK                            R6 K18 [" [CHANNELS]"]
       84 CONCAT                           R4 R5 R6
       85 SETTABLEKS                       R4 R3 K17 ["Name"]
       87 LOADN                            R3 0
       88 LOADN                            R4 0
       89 GETIMPORT                        R5 K3 [pairs]
       91 GETTABLEKS                       R6 R0 K4 ["Instances"]
       93 CALL                             R5 1 3
       94 FORGPREP_NEXT                    R5
       95 GETIMPORT                        R10 K3 [pairs]
       97 GETTABLEKS                       R11 R9 K5 ["Tracks"]
       99 CALL                             R10 1 3
      100 FORGPREP_NEXT                    R10
      101 ADDK                             R3 R3 K19 [1]
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R15 R16 K20 ["countKeyframes"]
      105 MOVE                             R16 R14
      106 CALL                             R15 1 1
      107 ADD                              R4 R4 R15
      108 FORGLOOP                         R10 2 ; [-8]
      110 FORGLOOP                         R5 2 ; [-16]
      112 RETURN                           R3 2

PROTO_25:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETTABLEKS                       R1 R0 K0 ["Metadata"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R0 K0 ["Metadata"]
        7 GETTABLEKS                       R1 R2 K1 ["IsChannelAnimation"]
        9 RETURN                           R1 1

PROTO_26:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETTABLEKS                       R4 R0 K0 ["Instances"]
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOT                        R3 ; [+5]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 GETTABLEKS                       R5 R0 K0 ["Instances"]
       14 GETTABLE                         R4 R5 R1
       15 GETTABLEKS                       R3 R4 K1 ["Tracks"]
       17 GETTABLEN                        R5 R2 1
       18 GETTABLE                         R4 R3 R5
       19 GETIMPORT                        R5 K3 [ipairs]
       21 MOVE                             R6 R2
       22 CALL                             R5 1 3
       23 FORGPREP_INEXT                   R5
       24 LOADN                            R10 1
       25 JUMPIFNOTLT                      R10 R8 ; [+11]
       27 JUMPIFNOT                        R4 ; [+4]
       28 GETTABLEKS                       R10 R4 K4 ["Components"]
       30 JUMPIFNOTEQKNIL                  R10 ; [+3]
       32 LOADNIL                          R10
       33 RETURN                           R10 1
       34 GETTABLEKS                       R10 R4 K4 ["Components"]
       36 GETTABLE                         R4 R10 R9
       37 FORGLOOP                         R5 2 [inext] ; [-14]
       39 RETURN                           R4 1

PROTO_27:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K1 [pairs]
        5 GETTABLEKS                       R2 R0 K2 ["Instances"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETIMPORT                        R6 K1 [pairs]
       11 GETTABLEKS                       R7 R5 K3 ["Tracks"]
       13 CALL                             R6 1 3
       14 FORGPREP_NEXT                    R6
       15 GETTABLEKS                       R11 R10 K4 ["Type"]
       17 GETUPVAL                         R14 0
       18 GETTABLEKS                       R13 R14 K5 ["TRACK_TYPES"]
       20 GETTABLEKS                       R12 R13 K6 ["Facs"]
       22 JUMPIFNOTEQ                      R11 R12 ; [+3]
       24 LOADB                            R11 1
       25 RETURN                           R11 1
       26 FORGLOOP                         R6 2 ; [-12]
       28 FORGLOOP                         R1 2 ; [-20]
       30 LOADB                            R1 0
       31 RETURN                           R1 1

PROTO_28:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["Type"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["TRACK_TYPES"]
        6 GETTABLEKS                       R3 R4 K2 ["CFrame"]
        8 JUMPIFEQ                         R2 R3 ; [+10]
       10 GETTABLEKS                       R2 R0 K0 ["Type"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["TRACK_TYPES"]
       15 GETTABLEKS                       R3 R4 K3 ["Quaternion"]
       17 JUMPIFNOTEQ                      R2 R3 ; [+3]
       19 GETUPVAL                         R1 1
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K4 ["fuzzyEq"]
       24 GETTABLEKS                       R2 R0 K5 ["Keyframes"]
       26 JUMPIFNOT                        R2 ; [+7]
       27 GETTABLEKS                       R3 R0 K5 ["Keyframes"]
       29 GETTABLEN                        R2 R3 1
       30 JUMPIFNOT                        R2 ; [+3]
       31 GETTABLEKS                       R2 R0 K6 ["Data"]
       33 JUMPIF                           R2 ; [+2]
       34 LOADB                            R2 0
       35 RETURN                           R2 1
       36 GETTABLEKS                       R3 R0 K5 ["Keyframes"]
       38 JUMPIFNOT                        R3 ; [+6]
       39 GETTABLEKS                       R4 R0 K5 ["Keyframes"]
       41 GETTABLEN                        R3 R4 1
       42 JUMPIFNOT                        R3 ; [+2]
       43 GETTABLEKS                       R3 R0 K6 ["Data"]
       45 FASTCALL1                        ASSERT R3 ; [+2]
       46 GETIMPORT                        R2 K8 [assert]
       48 CALL                             R2 1 0
       49 GETTABLEKS                       R3 R0 K5 ["Keyframes"]
       51 GETTABLEN                        R2 R3 1
       52 GETTABLEKS                       R4 R0 K6 ["Data"]
       54 GETTABLE                         R3 R4 R2
       55 JUMPIF                           R3 ; [+2]
       56 LOADB                            R4 0
       57 RETURN                           R4 1
       58 LOADNIL                          R4
       59 NEWTABLE                         R5 0 0
       61 LOADN                            R8 2
       62 GETTABLEKS                       R9 R0 K5 ["Keyframes"]
       64 LENGTH                           R6 R9
       65 LOADN                            R7 1
       66 FORNPREP                         R6
       67 GETTABLEKS                       R10 R0 K5 ["Keyframes"]
       69 GETTABLE                         R9 R10 R8
       70 GETTABLEKS                       R11 R0 K6 ["Data"]
       72 GETTABLE                         R10 R11 R9
       73 MOVE                             R11 R1
       74 GETTABLEKS                       R12 R10 K9 ["Value"]
       76 GETTABLEKS                       R13 R3 K9 ["Value"]
       78 CALL                             R11 2 1
       79 JUMPIFNOT                        R11 ; [+3]
       80 LOADB                            R11 1
       81 SETTABLE                         R11 R5 R9
       82 JUMP                             ; [+9]
       83 JUMPIFEQ                         R9 R2 ; [+8]
       85 JUMPIFNOT                        R4 ; [+2]
       86 LOADNIL                          R11
       87 SETTABLE                         R11 R5 R4
       88 MOVE                             R2 R9
       89 GETTABLEKS                       R11 R0 K6 ["Data"]
       91 GETTABLE                         R3 R11 R2
       92 MOVE                             R4 R9
       93 FORNLOOP                         R6
       94 JUMPIFNOT                        R4 ; [+4]
       95 JUMPIFEQ                         R4 R2 ; [+3]
       97 LOADNIL                          R6
       98 SETTABLE                         R6 R5 R4
       99 NEWTABLE                         R6 0 0
      101 LOADB                            R7 0
      102 GETTABLEKS                       R8 R0 K5 ["Keyframes"]
      104 LOADNIL                          R9
      105 LOADNIL                          R10
      106 FORGPREP                         R8
      107 GETTABLE                         R13 R5 R12
      108 JUMPIFNOT                        R13 ; [+6]
      109 GETTABLEKS                       R13 R0 K6 ["Data"]
      111 LOADNIL                          R14
      112 SETTABLE                         R14 R13 R12
      113 LOADB                            R7 1
      114 JUMP                             ; [+7]
      115 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
      117 MOVE                             R14 R6
      118 MOVE                             R15 R12
      119 GETIMPORT                        R13 K12 [table.insert]
      121 CALL                             R13 2 0
      122 FORGLOOP                         R8 2 ; [-16]
      124 SETTABLEKS                       R6 R0 K5 ["Keyframes"]
      126 GETTABLEKS                       R9 R0 K5 ["Keyframes"]
      128 LENGTH                           R8 R9
      129 JUMPIFNOTEQKN                    R8 K13 [2] ; [+41]
      131 GETUPVAL                         R9 3
      132 GETTABLEKS                       R8 R9 K14 ["getValue"]
      134 MOVE                             R9 R0
      135 GETTABLEKS                       R11 R0 K5 ["Keyframes"]
      137 GETTABLEN                        R10 R11 1
      138 CALL                             R8 2 1
      139 GETUPVAL                         R10 3
      140 GETTABLEKS                       R9 R10 K14 ["getValue"]
      142 MOVE                             R10 R0
      143 GETTABLEKS                       R12 R0 K5 ["Keyframes"]
      145 GETTABLEN                        R11 R12 2
      146 CALL                             R9 2 1
      147 MOVE                             R10 R1
      148 MOVE                             R11 R8
      149 MOVE                             R12 R9
      150 CALL                             R10 2 1
      151 JUMPIFNOT                        R10 ; [+19]
      152 MOVE                             R10 R1
      153 MOVE                             R11 R8
      154 GETUPVAL                         R13 3
      155 GETTABLEKS                       R12 R13 K15 ["getDefaultValue"]
      157 GETTABLEKS                       R13 R0 K0 ["Type"]
      159 CALL                             R12 1 -1
      160 CALL                             R10 -1 1
      161 JUMPIFNOT                        R10 ; [+9]
      162 NEWTABLE                         R10 0 0
      164 SETTABLEKS                       R10 R0 K6 ["Data"]
      166 NEWTABLE                         R10 0 0
      168 SETTABLEKS                       R10 R0 K5 ["Keyframes"]
      170 LOADB                            R7 1
      171 RETURN                           R7 1

PROTO_29:
        0 GETUPVAL                         R1 1
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 GETUPVAL                         R1 0
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 0

PROTO_30:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADB                            R1 0
        4 GETIMPORT                        R2 K1 [pairs]
        6 GETTABLEKS                       R3 R0 K2 ["Instances"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETIMPORT                        R7 K1 [pairs]
       12 GETTABLEKS                       R8 R6 K3 ["Tracks"]
       14 CALL                             R7 1 3
       15 FORGPREP_NEXT                    R7
       16 GETUPVAL                         R13 0
       17 GETTABLEKS                       R12 R13 K4 ["traverseTracks"]
       19 LOADNIL                          R13
       20 MOVE                             R14 R11
       21 NEWCLOSURE                       R15 P0
       22 CAPTURE                          REF R1
       23 CAPTURE                          UPVAL U1
       24 LOADB                            R16 1
       25 CALL                             R12 4 0
       26 GETTABLEKS                       R12 R11 K5 ["Type"]
       28 GETUPVAL                         R15 2
       29 GETTABLEKS                       R14 R15 K6 ["TRACK_TYPES"]
       31 GETTABLEKS                       R13 R14 K7 ["CFrame"]
       33 JUMPIFEQ                         R12 R13 ; [+10]
       35 GETTABLEKS                       R12 R11 K5 ["Type"]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R14 R15 K6 ["TRACK_TYPES"]
       40 GETTABLEKS                       R13 R14 K8 ["Facs"]
       42 JUMPIFNOTEQ                      R12 R13 ; [+13]
       44 GETTABLEKS                       R12 R11 K9 ["Keyframes"]
       46 JUMPIFNOT                        R12 ; [+9]
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R13 R11 K9 ["Keyframes"]
       50 CALL                             R12 1 1
       51 JUMPIFNOT                        R12 ; [+4]
       52 GETTABLEKS                       R12 R6 K3 ["Tracks"]
       54 LOADNIL                          R13
       55 SETTABLE                         R13 R12 R10
       56 FORGLOOP                         R7 2 ; [-41]
       58 FORGLOOP                         R2 2 ; [-49]
       60 CLOSEUPVALS                      R1
       61 RETURN                           R1 1

PROTO_31:
        0 GETTABLEKS                       R2 R0 K0 ["Metadata"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R3 R0 K0 ["Metadata"]
        5 GETTABLEKS                       R2 R3 K1 ["IkTargets"]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R4 R0 K0 ["Metadata"]
       10 GETTABLEKS                       R3 R4 K1 ["IkTargets"]
       12 GETTABLE                         R2 R3 R1
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["Math"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R6 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R5 R6 K9 ["Util"]
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R5 K13 ["Constants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R5 K14 ["deepCopy"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R5 K15 ["fuzzyCFrameEq"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R5 K16 ["isEmpty"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R5 K17 ["KeyframeUtils"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R5 K18 ["PathUtils"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETTABLEKS                       R13 R5 K19 ["Templates"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R14 R5 K20 ["TrackUtils"]
       75 CALL                             R13 1 1
       76 NEWTABLE                         R14 32 0
       78 DUPCLOSURE                       R15 K21 [PROTO_0]
       79 CAPTURE                          VAL R12
       80 SETTABLEKS                       R15 R14 K22 ["new"]
       82 DUPCLOSURE                       R15 K23 [PROTO_1]
       83 CAPTURE                          VAL R10
       84 SETTABLEKS                       R15 R14 K24 ["addEvent"]
       86 DUPCLOSURE                       R15 K25 [PROTO_2]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R15 R14 K26 ["moveEvents"]
       91 DUPCLOSURE                       R15 K27 [PROTO_3]
       92 CAPTURE                          VAL R10
       93 SETTABLEKS                       R15 R14 K28 ["deleteEvents"]
       95 DUPCLOSURE                       R15 K29 [PROTO_4]
       96 SETTABLEKS                       R15 R14 K30 ["setEventValue"]
       98 DUPCLOSURE                       R15 K31 [PROTO_5]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 SETTABLEKS                       R15 R14 K32 ["removeEvent"]
      103 DUPCLOSURE                       R15 K33 [PROTO_6]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R13
      106 SETTABLEKS                       R15 R14 K34 ["addTrack"]
      108 DUPCLOSURE                       R15 K35 [PROTO_7]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R12
      112 SETTABLEKS                       R15 R14 K36 ["addKeyframe"]
      114 DUPCLOSURE                       R15 K37 [PROTO_8]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R14
      117 SETTABLEKS                       R15 R14 K38 ["addDefaultKeyframe"]
      119 DUPCLOSURE                       R15 K39 [PROTO_9]
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R14
      122 SETTABLEKS                       R15 R14 K40 ["moveNamedKeyframe"]
      124 DUPCLOSURE                       R15 K41 [PROTO_10]
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R7
      127 SETTABLEKS                       R15 R14 K42 ["moveKeyframe"]
      129 DUPCLOSURE                       R15 K43 [PROTO_11]
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R15 R14 K44 ["deleteKeyframe"]
      133 DUPCLOSURE                       R15 K45 [PROTO_12]
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R15 R14 K46 ["setKeyframeData"]
      137 DUPCLOSURE                       R15 K47 [PROTO_13]
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R15 R14 K48 ["setKeyframeName"]
      141 DUPCLOSURE                       R15 K49 [PROTO_14]
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 SETTABLEKS                       R15 R14 K50 ["validateKeyframeNames"]
      147 DUPCLOSURE                       R15 K51 [PROTO_16]
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R9
      150 SETTABLEKS                       R15 R14 K52 ["setEndTick"]
      152 DUPCLOSURE                       R15 K53 [PROTO_17]
      153 CAPTURE                          VAL R6
      154 SETTABLEKS                       R15 R14 K54 ["getMaximumLength"]
      156 DUPCLOSURE                       R15 K55 [PROTO_18]
      157 SETTABLEKS                       R15 R14 K56 ["setLooping"]
      159 DUPCLOSURE                       R15 K57 [PROTO_20]
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R13
      162 SETTABLEKS                       R15 R14 K58 ["removeExtraKeyframes"]
      164 DUPCLOSURE                       R15 K59 [PROTO_22]
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R6
      167 SETTABLEKS                       R15 R14 K60 ["getSelectionBounds"]
      169 DUPCLOSURE                       R15 K61 [PROTO_23]
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R15 R14 K62 ["getEventBounds"]
      174 DUPCLOSURE                       R15 K63 [PROTO_24]
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R14
      178 SETTABLEKS                       R15 R14 K64 ["promoteToChannels"]
      180 DUPCLOSURE                       R15 K65 [PROTO_25]
      181 SETTABLEKS                       R15 R14 K66 ["isChannelAnimation"]
      183 DUPCLOSURE                       R15 K67 [PROTO_26]
      184 CAPTURE                          VAL R9
      185 SETTABLEKS                       R15 R14 K68 ["getTrack"]
      187 DUPCLOSURE                       R15 K69 [PROTO_27]
      188 CAPTURE                          VAL R6
      189 SETTABLEKS                       R15 R14 K70 ["hasFacsData"]
      191 DUPCLOSURE                       R15 K71 [PROTO_28]
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R10
      196 DUPCLOSURE                       R16 K72 [PROTO_30]
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R15
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R16 R14 K73 ["clearTrackSequences"]
      203 DUPCLOSURE                       R16 K74 [PROTO_31]
      204 SETTABLEKS                       R16 R14 K75 ["hasIkTarget"]
      206 RETURN                           R14 1
