PROTO_0:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["AnimationController"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKNIL                     R1 ; [+6]
       11 LOADK                            R4 K3 ["Animator"]
       12 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1
       16 LOADNIL                          R2
       17 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["Motor6D"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+10]
        9 LOADK                            R9 K3 ["AnimationConstraint"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIF                           R7 ; [+5]
       14 LOADK                            R9 K4 ["Bone"]
       15 NAMECALL                         R7 R6 K2 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+4]
       19 GETIMPORT                        R7 K7 [CFrame.identity]
       21 SETTABLEKS                       R7 R6 K8 ["Transform"]
       23 FORGLOOP                         R2 2 ; [-20]
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K9 ["indexJointsByPoseName"]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 1
       33 MOVE                             R3 R1
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETTABLE                         R8 R2 R6
       38 JUMPIFEQKNIL                     R8 ; [+3]
       40 SETTABLEKS                       R7 R8 K8 ["Transform"]
       42 FORGLOOP                         R3 2 ; [-6]
       44 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Keyframe"]
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K2 [Instance.new]
       10 LOADK                            R8 K4 ["Pose"]
       11 CALL                             R7 1 1
       12 SETTABLEKS                       R5 R7 K5 ["Name"]
       14 SETTABLEKS                       R6 R7 K6 ["CFrame"]
       16 SETTABLEKS                       R1 R7 K7 ["Parent"]
       18 FORGLOOP                         R2 2 ; [-11]
       20 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["rig"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["destroy"]
        6 CALL                             R0 0 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["destroy"]
        8 CALL                             R0 0 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["setTool"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 LOADK                            R4 K0 ["Humanoid"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+4]
        5 LOADK                            R4 K2 ["AnimationController"]
        6 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        8 CALL                             R2 2 1
        9 JUMPIFEQKNIL                     R2 ; [+7]
       11 LOADK                            R5 K3 ["Animator"]
       12 NAMECALL                         R3 R2 K1 ["FindFirstChildOfClass"]
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 JUMP                             ; [+1]
       17 LOADNIL                          R1
       18 JUMPIFEQKNIL                     R1 ; [+5]
       20 GETUPVAL                         R2 0
       21 MOVE                             R3 R1
       22 LOADN                            R4 0
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R6 K0 ["Humanoid"]
        1 NAMECALL                         R4 R1 K1 ["FindFirstChildOfClass"]
        3 CALL                             R4 2 1
        4 JUMPIF                           R4 ; [+4]
        5 LOADK                            R6 K2 ["AnimationController"]
        6 NAMECALL                         R4 R1 K1 ["FindFirstChildOfClass"]
        8 CALL                             R4 2 1
        9 JUMPIFEQKNIL                     R4 ; [+7]
       11 LOADK                            R7 K3 ["Animator"]
       12 NAMECALL                         R5 R4 K1 ["FindFirstChildOfClass"]
       14 CALL                             R5 2 1
       15 MOVE                             R3 R5
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 JUMPIFEQKNIL                     R3 ; [+11]
       20 NAMECALL                         R4 R3 K4 ["GetPlayingAnimationTracks"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADN                            R11 0
       25 NAMECALL                         R9 R8 K5 ["Stop"]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-5]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["markRigReload"]
       33 MOVE                             R5 R0
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 1
       36 MOVE                             R5 R1
       37 MOVE                             R6 R2
       38 CALL                             R4 2 0
       39 JUMPIFEQKNIL                     R3 ; [+5]
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R3
       43 LOADN                            R6 0
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_13:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getSavedPoseTransforms"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 RETURN                           R2 1
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETTABLEKS                       R2 R3 K0 ["rig"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 RETURN                           R0 0
       11 LOADNIL                          R3
       12 JUMPIFEQKNIL                     R1 ; [+16]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["findSavedTime"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 CALL                             R4 2 1
       20 JUMPIFEQKNIL                     R4 ; [+8]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K2 ["renderPreviewPose"]
       25 MOVE                             R5 R0
       26 MOVE                             R6 R1
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R0
       31 MOVE                             R6 R2
       32 MOVE                             R7 R3
       33 JUMPIF                           R7 ; [+10]
       34 JUMPIFEQKNIL                     R1 ; [+8]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K3 ["getSavedPoseTransforms"]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R1
       41 CALL                             R7 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 CALL                             R4 3 0
       45 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+4]
        4 GETTABLEKS                       R3 R4 K0 ["rig"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 JUMPIFNOTEQKNIL                  R3 ; [+3]
       10 LOADB                            R4 0
       11 RETURN                           R4 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K1 ["findSavedTime"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 JUMPIFNOTEQKNIL                  R4 ; [+3]
       20 LOADB                            R5 0
       21 RETURN                           R5 1
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R5 2
       24 MOVE                             R6 R3
       25 CALL                             R5 1 1
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K2 ["getSavedPoseTransforms"]
       30 MOVE                             R6 R0
       31 MOVE                             R7 R4
       32 CALL                             R5 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+3]
       35 LOADB                            R6 0
       36 RETURN                           R6 1
       37 LOADK                            R8 K3 ["Humanoid"]
       38 NAMECALL                         R6 R3 K4 ["FindFirstChildOfClass"]
       40 CALL                             R6 2 1
       41 JUMPIF                           R6 ; [+4]
       42 LOADK                            R8 K5 ["AnimationController"]
       43 NAMECALL                         R6 R3 K4 ["FindFirstChildOfClass"]
       45 CALL                             R6 2 1
       46 JUMPIFNOTEQKNIL                  R6 ; [+3]
       48 LOADB                            R7 0
       49 RETURN                           R7 1
       50 LOADK                            R9 K6 ["Animator"]
       51 NAMECALL                         R7 R6 K4 ["FindFirstChildOfClass"]
       53 CALL                             R7 2 1
       54 JUMPIFNOTEQKNIL                  R7 ; [+10]
       56 GETIMPORT                        R7 K9 [Instance.new]
       58 LOADK                            R8 K6 ["Animator"]
       59 CALL                             R7 1 1
       60 LOADB                            R8 0
       61 SETTABLEKS                       R8 R7 K10 ["Archivable"]
       63 SETTABLEKS                       R6 R7 K11 ["Parent"]
       65 GETUPVAL                         R7 3
       66 MOVE                             R8 R0
       67 MOVE                             R9 R3
       68 MOVE                             R10 R5
       69 CALL                             R7 3 0
       70 SETUPVAL                         R0 4
       71 GETUPVAL                         R7 1
       72 GETTABLEKS                       R7 R7 K12 ["setLastClickedTime"]
       74 MOVE                             R8 R0
       75 MOVE                             R9 R4
       76 CALL                             R7 2 0
       77 LOADB                            R7 1
       78 RETURN                           R7 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 GETTABLEKS                       R2 R1 K0 ["keyframeSequence"]
        6 JUMPIFEQKNIL                     R2 ; [+8]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["detectRigType"]
       11 GETTABLEKS                       R3 R1 K0 ["keyframeSequence"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 LOADK                            R2 K2 ["R15"]
       16 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["contentId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["normalizeSavedTime"]
        5 MOVE                             R4 R2
        6 GETTABLEKS                       R5 R0 K2 ["time"]
        8 CALL                             R3 2 1
        9 LOADK                            R7 K3 ["Humanoid"]
       10 NAMECALL                         R5 R1 K4 ["FindFirstChildOfClass"]
       12 CALL                             R5 2 1
       13 JUMPIF                           R5 ; [+4]
       14 LOADK                            R7 K5 ["AnimationController"]
       15 NAMECALL                         R5 R1 K4 ["FindFirstChildOfClass"]
       17 CALL                             R5 2 1
       18 JUMPIFEQKNIL                     R5 ; [+7]
       20 LOADK                            R8 K6 ["Animator"]
       21 NAMECALL                         R6 R5 K4 ["FindFirstChildOfClass"]
       23 CALL                             R6 2 1
       24 MOVE                             R4 R6
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 JUMPIFEQKNIL                     R4 ; [+5]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R4
       31 LOADN                            R7 0
       32 CALL                             R5 2 0
       33 GETUPVAL                         R4 2
       34 GETTABLEKS                       R4 R4 K7 ["sampleWorldFromCharacter"]
       36 MOVE                             R5 R1
       37 GETUPVAL                         R6 3
       38 MOVE                             R7 R2
       39 CALL                             R6 1 -1
       40 CALL                             R4 -1 1
       41 GETUPVAL                         R5 4
       42 GETTABLEKS                       R5 R5 K8 ["snapshotEffectorsFromSample"]
       44 MOVE                             R6 R4
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K9 ["getDragEditSnapshotAtTime"]
       49 MOVE                             R7 R2
       50 MOVE                             R8 R3
       51 CALL                             R6 2 1
       52 NEWTABLE                         R7 0 0
       54 NEWTABLE                         R8 0 0
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K10 ["getSavedDragEditedEffectors"]
       59 MOVE                             R11 R2
       60 CALL                             R10 1 1
       61 GETTABLE                         R9 R10 R3
       62 JUMPIFEQKNIL                     R9 ; [+18]
       64 MOVE                             R10 R9
       65 LOADNIL                          R11
       66 LOADNIL                          R12
       67 FORGPREP                         R10
       68 GETTABLE                         R15 R8 R14
       69 JUMPIF                           R15 ; [+9]
       70 LOADB                            R15 1
       71 SETTABLE                         R15 R8 R14
       72 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
       74 MOVE                             R16 R7
       75 MOVE                             R17 R14
       76 GETIMPORT                        R15 K13 [table.insert]
       78 CALL                             R15 2 0
       79 FORGLOOP                         R10 2 ; [-12]
       81 JUMPIFEQKNIL                     R6 ; [+23]
       83 GETTABLEKS                       R10 R6 K14 ["effectors"]
       85 JUMPIFEQKNIL                     R10 ; [+19]
       87 GETTABLEKS                       R10 R6 K14 ["effectors"]
       89 LOADNIL                          R11
       90 LOADNIL                          R12
       91 FORGPREP                         R10
       92 GETTABLE                         R15 R8 R13
       93 JUMPIF                           R15 ; [+9]
       94 LOADB                            R15 1
       95 SETTABLE                         R15 R8 R13
       96 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       98 MOVE                             R16 R7
       99 MOVE                             R17 R13
      100 GETIMPORT                        R15 K13 [table.insert]
      102 CALL                             R15 2 0
      103 FORGLOOP                         R10 1 ; [-12]
      105 GETTABLEKS                       R10 R0 K15 ["effectorHints"]
      107 JUMPIF                           R10 ; [+2]
      108 NEWTABLE                         R10 0 0
      110 GETTABLEKS                       R12 R0 K16 ["rootTipMove"]
      112 JUMPIFEQKB                       R12 TRUE ; [+2]
      114 LOADB                            R11 0 +1
      115 LOADB                            R11 1
      116 LENGTH                           R12 R10
      117 JUMPIFNOTEQKN                    R12 K17 [0] ; [+4]
      119 JUMPIF                           R11 ; [+2]
      120 LOADB                            R12 0
      121 RETURN                           R12 1
      122 LENGTH                           R13 R10
      123 LOADN                            R14 0
      124 JUMPIFNOTLT                      R14 R13 ; [+3]
      126 MOVE                             R12 R10
      127 JUMP                             ; [+1]
      128 MOVE                             R12 R7
      129 LOADNIL                          R13
      130 LENGTH                           R14 R12
      131 LOADN                            R15 0
      132 JUMPIFNOTLT                      R15 R14 ; [+19]
      134 GETUPVAL                         R14 4
      135 GETTABLEKS                       R14 R14 K18 ["mergeDragEditSnapshot"]
      137 MOVE                             R15 R6
      138 GETTABLEKS                       R16 R0 K19 ["preEffectors"]
      140 MOVE                             R17 R5
      141 MOVE                             R18 R12
      142 MOVE                             R19 R4
      143 GETTABLEKS                       R20 R0 K20 ["primaryJointByEffector"]
      145 GETTABLEKS                       R21 R0 K21 ["preWorldSample"]
      147 GETTABLEKS                       R22 R0 K22 ["rotationIntent"]
      149 CALL                             R14 8 1
      150 MOVE                             R13 R14
      151 JUMP                             ; [+1]
      152 MOVE                             R13 R6
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R14 R14 K23 ["copySavedPose"]
      156 MOVE                             R15 R2
      157 MOVE                             R16 R3
      158 CALL                             R14 2 1
      159 JUMPIFNOTEQKNIL                  R14 ; [+3]
      161 LOADB                            R15 0
      162 RETURN                           R15 1
      163 GETUPVAL                         R15 5
      164 GETTABLEKS                       R16 R0 K24 ["preRigPose"]
      166 CALL                             R15 1 1
      167 GETUPVAL                         R16 5
      168 GETUPVAL                         R17 6
      169 MOVE                             R18 R1
      170 CALL                             R17 1 -1
      171 CALL                             R16 -1 1
      172 GETUPVAL                         R17 7
      173 MOVE                             R18 R14
      174 MOVE                             R19 R15
      175 MOVE                             R20 R16
      176 MOVE                             R21 R3
      177 CALL                             R17 4 1
      178 NAMECALL                         R18 R14 K25 ["Destroy"]
      180 CALL                             R18 1 0
      181 NAMECALL                         R18 R15 K25 ["Destroy"]
      183 CALL                             R18 1 0
      184 NAMECALL                         R18 R16 K25 ["Destroy"]
      186 CALL                             R18 1 0
      187 GETUPVAL                         R18 0
      188 GETTABLEKS                       R18 R18 K26 ["commitPoseEdit"]
      190 MOVE                             R19 R2
      191 MOVE                             R20 R3
      192 MOVE                             R21 R17
      193 MOVE                             R22 R12
      194 MOVE                             R23 R13
      195 CALL                             R18 5 1
      196 NAMECALL                         R19 R17 K25 ["Destroy"]
      198 CALL                             R19 1 0
      199 JUMPIF                           R18 ; [+2]
      200 LOADB                            R19 0
      201 RETURN                           R19 1
      202 GETUPVAL                         R19 8
      203 MOVE                             R21 R2
      204 NAMECALL                         R19 R19 K27 ["Fire"]
      206 CALL                             R19 2 0
      207 LOADB                            R19 1
      208 RETURN                           R19 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["getLastClickedTime"]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R1 R2 R3
       13 MOVE                             R2 R1
       14 JUMPIFNOT                        R2 ; [+2]
       15 GETTABLEKS                       R2 R1 K1 ["rig"]
       17 JUMPIFEQKNIL                     R0 ; [+7]
       19 JUMPIFEQKNIL                     R2 ; [+5]
       21 GETTABLEKS                       R3 R1 K2 ["keyframeSequence"]
       23 JUMPIFNOTEQKNIL                  R3 ; [+3]
       25 LOADNIL                          R3
       26 RETURN                           R3 1
       27 DUPTABLE                         R3 K5 [{"contentId", "time", "rig"}]
       28 GETUPVAL                         R4 0
       29 SETTABLEKS                       R4 R3 K3 ["contentId"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K6 ["normalizeSavedTime"]
       34 GETUPVAL                         R5 0
       35 MOVE                             R6 R0
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K4 ["time"]
       39 SETTABLEKS                       R2 R3 K1 ["rig"]
       41 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["sampleWorldFromCharacter"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["contentId"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFEQKNIL                     R3 ; [+4]
        6 GETTABLEKS                       R1 R3 K1 ["rig"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R1
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R3 R0 K0 ["contentId"]
       20 GETTABLEKS                       R4 R0 K2 ["time"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+9]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["reselect"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["destroy"]
       18 CALL                             R1 0 0
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 1
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K2 ["getAdornee"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 JUMPIFNOTEQKNIL                  R1 ; [+6]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K3 ["refreshStyles"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R2 4
       34 DUPTABLE                         R3 K11 [{"joint", "adornee", "tool", "resolveTarget", "stepRig", "sampleWorld", "commit"}]
       35 SETTABLEKS                       R0 R3 K4 ["joint"]
       37 SETTABLEKS                       R1 R3 K5 ["adornee"]
       39 GETUPVAL                         R4 5
       40 SETTABLEKS                       R4 R3 K6 ["tool"]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 SETTABLEKS                       R4 R3 K7 ["resolveTarget"]
       48 GETUPVAL                         R4 9
       49 SETTABLEKS                       R4 R3 K8 ["stepRig"]
       51 NEWCLOSURE                       R4 P1
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 SETTABLEKS                       R4 R3 K9 ["sampleWorld"]
       56 NEWCLOSURE                       R4 P2
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          UPVAL U12
       59 CAPTURE                          UPVAL U13
       60 SETTABLEKS                       R4 R3 K10 ["commit"]
       62 CALL                             R2 1 1
       63 SETUPVAL                         R2 1
       64 GETUPVAL                         R2 3
       65 GETTABLEKS                       R2 R2 K3 ["refreshStyles"]
       67 CALL                             R2 0 0
       68 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getLastClickedTime"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearSavedKeyframes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 JUMPIFNOTEQ                      R1 R0 ; [+3]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 1
       10 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setMeshSelectorActive"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destroy"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["destroy"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["new"]
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["new"]
        9 CALL                             R4 0 1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 NEWCLOSURE                       R9 P0
       15 CAPTURE                          VAL R0
       16 NEWCLOSURE                       R10 P1
       17 CAPTURE                          REF R6
       18 LOADNIL                          R11
       19 GETUPVAL                         R12 2
       20 DUPTABLE                         R13 K7 [{"getRig", "getSelectedJoint", "onJointClicked", "clearSelection", "onDeactivated", "setDraggerTool"}]
       21 SETTABLEKS                       R9 R13 K1 ["getRig"]
       23 NEWCLOSURE                       R14 P2
       24 CAPTURE                          REF R5
       25 SETTABLEKS                       R14 R13 K2 ["getSelectedJoint"]
       27 NEWCLOSURE                       R14 P3
       28 CAPTURE                          REF R11
       29 SETTABLEKS                       R14 R13 K3 ["onJointClicked"]
       31 NEWCLOSURE                       R14 P4
       32 CAPTURE                          REF R5
       33 CAPTURE                          REF R6
       34 SETTABLEKS                       R14 R13 K4 ["clearSelection"]
       36 NEWCLOSURE                       R14 P5
       37 CAPTURE                          VAL R3
       38 SETTABLEKS                       R14 R13 K5 ["onDeactivated"]
       40 NEWCLOSURE                       R14 P6
       41 CAPTURE                          REF R7
       42 CAPTURE                          REF R6
       43 SETTABLEKS                       R14 R13 K6 ["setDraggerTool"]
       45 CALL                             R12 1 1
       46 DUPCLOSURE                       R13 K8 [PROTO_11]
       47 CAPTURE                          UPVAL U3
       48 NEWCLOSURE                       R14 P8
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U3
       52 NEWCLOSURE                       R15 P9
       53 CAPTURE                          VAL R2
       54 NEWCLOSURE                       R16 P10
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R14
       59 NEWCLOSURE                       R17 P11
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R14
       64 CAPTURE                          REF R8
       65 NEWCLOSURE                       R18 P12
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U6
       68 NEWCLOSURE                       R19 P13
       69 CAPTURE                          VAL R2
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          VAL R18
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          UPVAL U8
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          VAL R4
       78 NEWCLOSURE                       R11 P14
       79 CAPTURE                          REF R5
       80 CAPTURE                          REF R6
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R12
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          REF R7
       85 CAPTURE                          REF R8
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R13
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          VAL R18
       91 CAPTURE                          VAL R19
       92 CAPTURE                          VAL R16
       93 DUPTABLE                         R20 K30 [{"applySavedPose", "reapplySavedPose", "captureSavedPoses", "clearEditState", "restoreSavedPoses", "destroySavedPoses", "withSavedPoseSnapshot", "findSavedPoseTime", "isSavedKeyframeAuthored", "hasEditedKeyframes", "getSavedDragEditedEffectors", "getKeyposeTimes", "getSavedPoseIntervals", "insertGeneratedKeyframe", "deleteSavedKeyframe", "updateSavedPoseInterval", "setMeshSelectorActive", "poseDeselectedSignal", "poseEditedSignal", "onRigChanged", "destroy"}]
       94 SETTABLEKS                       R17 R20 K9 ["applySavedPose"]
       96 NEWCLOSURE                       R21 P15
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R2
       99 SETTABLEKS                       R21 R20 K10 ["reapplySavedPose"]
      101 GETTABLEKS                       R21 R2 K31 ["snapshot"]
      103 SETTABLEKS                       R21 R20 K11 ["captureSavedPoses"]
      105 NEWCLOSURE                       R21 P16
      106 CAPTURE                          VAL R2
      107 CAPTURE                          REF R8
      108 SETTABLEKS                       R21 R20 K12 ["clearEditState"]
      110 GETTABLEKS                       R21 R2 K32 ["restore"]
      112 SETTABLEKS                       R21 R20 K13 ["restoreSavedPoses"]
      114 GETTABLEKS                       R21 R2 K33 ["destroySnapshot"]
      116 SETTABLEKS                       R21 R20 K14 ["destroySavedPoses"]
      118 GETTABLEKS                       R21 R2 K34 ["withSnapshot"]
      120 SETTABLEKS                       R21 R20 K15 ["withSavedPoseSnapshot"]
      122 GETTABLEKS                       R21 R2 K35 ["findSavedTime"]
      124 SETTABLEKS                       R21 R20 K16 ["findSavedPoseTime"]
      126 GETTABLEKS                       R21 R2 K17 ["isSavedKeyframeAuthored"]
      128 SETTABLEKS                       R21 R20 K17 ["isSavedKeyframeAuthored"]
      130 GETTABLEKS                       R21 R2 K18 ["hasEditedKeyframes"]
      132 SETTABLEKS                       R21 R20 K18 ["hasEditedKeyframes"]
      134 GETTABLEKS                       R21 R2 K19 ["getSavedDragEditedEffectors"]
      136 SETTABLEKS                       R21 R20 K19 ["getSavedDragEditedEffectors"]
      138 GETTABLEKS                       R21 R2 K20 ["getKeyposeTimes"]
      140 SETTABLEKS                       R21 R20 K20 ["getKeyposeTimes"]
      142 GETTABLEKS                       R21 R2 K21 ["getSavedPoseIntervals"]
      144 SETTABLEKS                       R21 R20 K21 ["getSavedPoseIntervals"]
      146 GETTABLEKS                       R21 R2 K22 ["insertGeneratedKeyframe"]
      148 SETTABLEKS                       R21 R20 K22 ["insertGeneratedKeyframe"]
      150 GETTABLEKS                       R21 R2 K23 ["deleteSavedKeyframe"]
      152 SETTABLEKS                       R21 R20 K23 ["deleteSavedKeyframe"]
      154 GETTABLEKS                       R21 R2 K24 ["updateSavedPoseInterval"]
      156 SETTABLEKS                       R21 R20 K24 ["updateSavedPoseInterval"]
      158 NEWCLOSURE                       R21 P17
      159 CAPTURE                          VAL R12
      160 SETTABLEKS                       R21 R20 K25 ["setMeshSelectorActive"]
      162 SETTABLEKS                       R3 R20 K26 ["poseDeselectedSignal"]
      164 SETTABLEKS                       R4 R20 K27 ["poseEditedSignal"]
      166 GETTABLEKS                       R21 R12 K28 ["onRigChanged"]
      168 SETTABLEKS                       R21 R20 K28 ["onRigChanged"]
      170 NEWCLOSURE                       R21 P18
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R2
      173 SETTABLEKS                       R21 R20 K29 ["destroy"]
      175 CLOSEUPVALS                      R5
      176 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K9 ["Posing"]
       17 GETTABLEKS                       R3 R3 K10 ["ClipSampling"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Util"]
       24 GETTABLEKS                       R4 R4 K8 ["AnimationGen"]
       26 GETTABLEKS                       R4 R4 K9 ["Posing"]
       28 GETTABLEKS                       R4 R4 K11 ["DragEditSnapshot"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R5 R0 K7 ["Util"]
       35 GETTABLEKS                       R5 R5 K8 ["AnimationGen"]
       37 GETTABLEKS                       R5 R5 K12 ["HostTypes"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETIMPORT                        R6 K1 [script]
       44 GETTABLEKS                       R6 R6 K13 ["JointFrames"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R7 R1 K14 ["Signal"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETIMPORT                        R8 K1 [script]
       56 GETTABLEKS                       R8 R8 K15 ["SkeletonAdornmentUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K6 [require]
       61 GETTABLEKS                       R9 R0 K16 ["Types"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R0 K7 ["Util"]
       68 GETTABLEKS                       R10 R10 K8 ["AnimationGen"]
       70 GETTABLEKS                       R10 R10 K9 ["Posing"]
       72 GETTABLEKS                       R10 R10 K17 ["applyTargetPoseDeltas"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K18 ["createJointDragSession"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K6 [require]
       84 GETIMPORT                        R12 K1 [script]
       86 GETTABLEKS                       R12 R12 K19 ["createPartDragger"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETIMPORT                        R13 K1 [script]
       93 GETTABLEKS                       R13 R13 K20 ["createSavedKeyframeStore"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K6 [require]
       98 GETIMPORT                        R14 K1 [script]
      100 GETTABLEKS                       R14 R14 K21 ["createSkeletonAdornment"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K7 ["Util"]
      107 GETTABLEKS                       R15 R15 K8 ["AnimationGen"]
      109 GETTABLEKS                       R15 R15 K9 ["Posing"]
      111 GETTABLEKS                       R15 R15 K22 ["getRigJointTransforms"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K6 [require]
      116 GETTABLEKS                       R16 R0 K7 ["Util"]
      118 GETTABLEKS                       R16 R16 K8 ["AnimationGen"]
      120 GETTABLEKS                       R16 R16 K23 ["stepAnimations"]
      122 CALL                             R15 1 1
      123 DUPCLOSURE                       R16 K24 [PROTO_0]
      124 DUPCLOSURE                       R17 K25 [PROTO_1]
      125 DUPCLOSURE                       R18 K26 [PROTO_2]
      126 CAPTURE                          VAL R5
      127 DUPCLOSURE                       R19 K27 [PROTO_3]
      128 DUPCLOSURE                       R20 K28 [PROTO_26]
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R10
      141 RETURN                           R20 1
