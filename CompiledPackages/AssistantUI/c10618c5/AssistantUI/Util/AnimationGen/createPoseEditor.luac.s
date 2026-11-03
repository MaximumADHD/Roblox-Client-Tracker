PROTO_0:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R9 R6 K0 ["Time"]
        6 SUB                              R8 R9 R0
        7 FASTCALL1                        MATH_ABS R8 ; [+2]
        8 GETIMPORT                        R7 K3 [math.abs]
       10 CALL                             R7 1 1
       11 LOADK                            R8 K4 [0.0001]
       12 JUMPIFNOTLT                      R7 R8 ; [+4]
       14 GETTABLEKS                       R7 R6 K0 ["Time"]
       16 RETURN                           R7 1
       17 FORGLOOP                         R2 2 ; [-14]
       19 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keyframeFrameIndices"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["getKeyposeTimes"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 1
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["getSavedPoseIntervals"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 3
       16 FORGPREP                         R3
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K3 ["timeToFrameIndex"]
       20 MOVE                             R9 R6
       21 CALL                             R8 1 1
       22 SETTABLE                         R7 R2 R8
       23 FORGLOOP                         R3 2 ; [-7]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K4 ["getActivePose"]
       28 CALL                             R3 0 1
       29 JUMPIFEQKNIL                     R3 ; [+13]
       31 GETTABLEKS                       R5 R3 K5 ["contentId"]
       33 JUMPIFNOTEQ                      R5 R0 ; [+9]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K6 ["findSavedPoseTime"]
       38 MOVE                             R5 R0
       39 GETTABLEKS                       R6 R3 K7 ["time"]
       41 CALL                             R4 2 1
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K8 ["remapStringListByFrameIndex"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K9 ["getSavedDragEditedEffectors"]
       50 MOVE                             R7 R0
       51 CALL                             R6 1 -1
       52 CALL                             R5 -1 1
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K10 ["getEditorContentId"]
       56 MOVE                             R7 R0
       57 CALL                             R6 1 1
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R7 R7 K11 ["getSession"]
       61 MOVE                             R8 R6
       62 CALL                             R7 1 1
       63 DUPTABLE                         R8 K18 [{"editSessionId", "revision", "keyframeFrameIndices", "poseIntervals", "selectedFrameIndex", "editedEffectorsByFrameIndex", "hasChanges"}]
       64 MOVE                             R9 R7
       65 JUMPIFNOT                        R9 ; [+2]
       66 GETTABLEKS                       R9 R7 K12 ["editSessionId"]
       68 SETTABLEKS                       R9 R8 K12 ["editSessionId"]
       70 GETUPVAL                         R9 4
       71 GETTABLEKS                       R9 R9 K19 ["getRevision"]
       73 MOVE                             R10 R6
       74 CALL                             R9 1 1
       75 SETTABLEKS                       R9 R8 K13 ["revision"]
       77 SETTABLEKS                       R1 R8 K0 ["keyframeFrameIndices"]
       79 SETTABLEKS                       R2 R8 K14 ["poseIntervals"]
       81 JUMPIFEQKNIL                     R4 ; [+7]
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K3 ["timeToFrameIndex"]
       86 MOVE                             R10 R4
       87 CALL                             R9 1 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R8 K15 ["selectedFrameIndex"]
       92 SETTABLEKS                       R5 R8 K16 ["editedEffectorsByFrameIndex"]
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K17 ["hasChanges"]
       97 MOVE                             R10 R6
       98 CALL                             R9 1 1
       99 SETTABLEKS                       R9 R8 K17 ["hasChanges"]
      101 RETURN                           R8 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["applyPreviewMode"]
        3 GETTABLEKS                       R5 R0 K1 ["playbackContentId"]
        5 MOVE                             R6 R2
        6 CALL                             R4 2 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["poseAtTime"]
       10 MOVE                             R5 R1
       11 GETTABLEKS                       R6 R0 K3 ["animatorContext"]
       13 MOVE                             R7 R3
       14 CALL                             R4 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["sourceContentId"]
        2 GETTABLEKS                       R4 R0 K1 ["sharedState"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["isRetargetingEnabled"]
        7 GETTABLEKS                       R6 R0 K3 ["playbackContentId"]
        9 CALL                             R5 1 1
       10 JUMPIFNOT                        R5 ; [+21]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["isSavedKeyframeAuthored"]
       14 MOVE                             R7 R3
       15 MOVE                             R8 R1
       16 CALL                             R6 2 1
       17 NOT                              R5 R6
       18 JUMPIF                           R5 ; [+13]
       19 LOADB                            R5 0
       20 GETTABLEKS                       R6 R4 K5 ["useEditPreview"]
       22 JUMPIFNOTEQKB                    R6 TRUE ; [+9]
       24 GETTABLEKS                       R6 R4 K6 ["cache"]
       26 GETTABLEKS                       R6 R6 K7 ["editPreviewSequence"]
       28 JUMPIFNOTEQKNIL                  R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 MOVE                             R6 R2
       33 CALL                             R6 0 0
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K8 ["applySavedPose"]
       37 MOVE                             R7 R3
       38 MOVE                             R8 R1
       39 MOVE                             R9 R5
       40 CALL                             R6 3 1
       41 JUMPIFNOT                        R6 ; [+9]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K9 ["activate"]
       45 GETTABLEKS                       R7 R0 K0 ["sourceContentId"]
       47 MOVE                             R8 R1
       48 CALL                             R6 2 0
       49 LOADB                            R6 1
       50 RETURN                           R6 1
       51 LOADB                            R6 0
       52 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markPlayerReload"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 MOVE                             R1 R0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 GETUPVAL                         R4 5
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["applyPreviewMode"]
       14 GETTABLEKS                       R6 R1 K2 ["playbackContentId"]
       16 MOVE                             R7 R3
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 6
       19 GETTABLEKS                       R5 R5 K3 ["poseAtTime"]
       21 MOVE                             R6 R2
       22 GETTABLEKS                       R7 R1 K4 ["animatorContext"]
       24 MOVE                             R8 R4
       25 CALL                             R5 3 0
       26 MOVE                             R1 R0
       27 CALL                             R1 0 0
       28 GETUPVAL                         R1 7
       29 JUMPIFNOTEQKNIL                  R1 ; [+46]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K5 ["sampleClipPose"]
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R3 3
       36 CALL                             R1 2 1
       37 JUMPIFNOTEQKNIL                  R1 ; [+2]
       39 LOADB                            R3 0 +1
       40 LOADB                            R3 1
       41 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       43 LOADK                            R4 K6 ["Could not sample a pose from the neutral animation"]
       44 GETIMPORT                        R2 K8 [assert]
       46 CALL                             R2 2 0
       47 GETUPVAL                         R2 8
       48 GETTABLEKS                       R2 R2 K9 ["insertGeneratedKeyframe"]
       50 GETUPVAL                         R3 1
       51 GETUPVAL                         R4 3
       52 MOVE                             R5 R1
       53 GETUPVAL                         R6 9
       54 GETTABLEKS                       R6 R6 K10 ["bounds"]
       56 GETUPVAL                         R7 10
       57 GETTABLEKS                       R7 R7 K11 ["Length"]
       59 CALL                             R2 5 1
       60 NAMECALL                         R3 R1 K12 ["Destroy"]
       62 CALL                             R3 1 0
       63 FASTCALL2K                       ASSERT R2 K13 ; [+5]
       65 MOVE                             R4 R2
       66 LOADK                            R5 K13 ["Pose insertion did not complete"]
       67 GETIMPORT                        R3 K8 [assert]
       69 CALL                             R3 2 0
       70 GETUPVAL                         R3 11
       71 GETTABLEKS                       R3 R3 K14 ["recordMutation"]
       73 GETUPVAL                         R4 1
       74 LOADK                            R5 K15 ["poseInserted"]
       75 CALL                             R3 2 0
       76 GETUPVAL                         R1 0
       77 GETTABLEKS                       R1 R1 K16 ["refreshPreview"]
       79 GETUPVAL                         R2 1
       80 CALL                             R1 1 0
       81 MOVE                             R1 R0
       82 CALL                             R1 0 0
       83 GETUPVAL                         R1 0
       84 GETTABLEKS                       R1 R1 K1 ["applyPreviewMode"]
       86 GETUPVAL                         R2 2
       87 GETTABLEKS                       R2 R2 K2 ["playbackContentId"]
       89 LOADB                            R3 1
       90 CALL                             R1 2 0
       91 GETUPVAL                         R2 12
       92 GETUPVAL                         R3 2
       93 GETUPVAL                         R4 3
       94 MOVE                             R5 R0
       95 CALL                             R2 3 1
       96 FASTCALL2K                       ASSERT R2 K17 ; [+4]
       98 LOADK                            R3 K17 ["Could not activate the selected pose"]
       99 GETIMPORT                        R1 K8 [assert]
      101 CALL                             R1 2 0
      102 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["isOperationBlocked"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["rememberContext"]
       15 MOVE                             R4 R2
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K3 ["resolvePoseOperation"]
       21 MOVE                             R4 R2
       22 MOVE                             R5 R1
       23 CALL                             R3 2 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+5]
       26 GETUPVAL                         R4 1
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 RETURN                           R4 1
       30 GETTABLEKS                       R4 R3 K4 ["keyframeSequence"]
       32 NAMECALL                         R5 R4 K5 ["GetKeyframes"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R7 R0 K6 ["time"]
       37 MOVE                             R8 R5
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 GETTABLEKS                       R15 R12 K7 ["Time"]
       43 SUB                              R14 R15 R7
       44 FASTCALL1                        MATH_ABS R14 ; [+2]
       45 GETIMPORT                        R13 K10 [math.abs]
       47 CALL                             R13 1 1
       48 LOADK                            R14 K11 [0.0001]
       49 JUMPIFNOTLT                      R13 R14 ; [+4]
       51 GETTABLEKS                       R6 R12 K7 ["Time"]
       53 JUMP                             ; [+3]
       54 FORGLOOP                         R8 2 ; [-14]
       56 MOVE                             R6 R7
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R7 R7 K12 ["getSavedPoseIntervals"]
       60 MOVE                             R8 R2
       61 CALL                             R7 1 1
       62 GETUPVAL                         R8 4
       63 GETTABLEKS                       R8 R8 K13 ["findSavedPoseTime"]
       65 MOVE                             R9 R2
       66 MOVE                             R10 R6
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R9 R9 K14 ["getActivePose"]
       71 CALL                             R9 0 1
       72 JUMPIFEQKNIL                     R8 ; [+21]
       74 JUMPIFEQKNIL                     R9 ; [+19]
       76 GETTABLEKS                       R10 R9 K15 ["contentId"]
       78 JUMPIFNOTEQ                      R10 R2 ; [+15]
       80 GETTABLEKS                       R12 R9 K6 ["time"]
       82 SUB                              R11 R12 R8
       83 FASTCALL1                        MATH_ABS R11 ; [+2]
       84 GETIMPORT                        R10 K10 [math.abs]
       86 CALL                             R10 1 1
       87 LOADK                            R11 K11 [0.0001]
       88 JUMPIFNOTLT                      R10 R11 ; [+5]
       90 GETUPVAL                         R10 1
       91 MOVE                             R11 R2
       92 CALL                             R10 1 1
       93 RETURN                           R10 1
       94 JUMPIFNOTEQKNIL                  R8 ; [+10]
       96 GETUPVAL                         R10 5
       97 GETTABLEKS                       R10 R10 K16 ["planInsertion"]
       99 MOVE                             R11 R6
      100 GETTABLEKS                       R12 R4 K17 ["Length"]
      102 MOVE                             R13 R7
      103 CALL                             R10 3 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R10
      106 JUMPIFNOTEQKNIL                  R8 ; [+7]
      108 JUMPIFNOTEQKNIL                  R10 ; [+5]
      110 GETUPVAL                         R11 1
      111 MOVE                             R12 R2
      112 CALL                             R11 1 1
      113 RETURN                           R11 1
      114 JUMPIFEQKNIL                     R8 ; [+3]
      116 MOVE                             R11 R8
      117 JUMP                             ; [+2]
      118 GETTABLEKS                       R11 R10 K18 ["poseTime"]
      120 JUMPIFNOTEQKNIL                  R8 ; [+4]
      122 GETTABLEKS                       R12 R0 K6 ["time"]
      124 JUMP                             ; [+1]
      125 MOVE                             R12 R11
      126 LOADB                            R13 0
      127 JUMPIFEQKNIL                     R8 ; [+7]
      129 GETUPVAL                         R13 4
      130 GETTABLEKS                       R13 R13 K19 ["isSavedKeyframeAuthored"]
      132 MOVE                             R14 R2
      133 MOVE                             R15 R8
      134 CALL                             R13 2 1
      135 GETUPVAL                         R14 2
      136 GETTABLEKS                       R14 R14 K20 ["leaveOtherPose"]
      138 MOVE                             R15 R2
      139 MOVE                             R16 R1
      140 CALL                             R14 2 0
      141 JUMPIFNOTEQKNIL                  R8 ; [+3]
      143 LOADK                            R14 K21 ["Insert Keyframe"]
      144 JUMP                             ; [+1]
      145 LOADNIL                          R14
      146 GETUPVAL                         R15 0
      147 GETTABLEKS                       R15 R15 K22 ["runPoseTransition"]
      149 MOVE                             R16 R2
      150 MOVE                             R17 R1
      151 NEWCLOSURE                       R18 P0
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R11
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R12
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R4
      163 CAPTURE                          UPVAL U0
      164 CAPTURE                          UPVAL U7
      165 MOVE                             R19 R14
      166 CALL                             R15 4 0
      167 GETUPVAL                         R15 8
      168 MOVE                             R16 R2
      169 MOVE                             R17 R1
      170 CALL                             R15 2 0
      171 GETUPVAL                         R15 1
      172 MOVE                             R16 R2
      173 CALL                             R15 1 1
      174 RETURN                           R15 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markPlayerReload"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 MOVE                             R1 R0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 4
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["applyPreviewMode"]
       14 GETTABLEKS                       R6 R1 K2 ["playbackContentId"]
       16 MOVE                             R7 R3
       17 CALL                             R5 2 0
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R5 R5 K3 ["poseAtTime"]
       21 MOVE                             R6 R2
       22 GETTABLEKS                       R7 R1 K4 ["animatorContext"]
       24 MOVE                             R8 R4
       25 CALL                             R5 3 0
       26 MOVE                             R1 R0
       27 CALL                             R1 0 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K1 ["applyPreviewMode"]
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K2 ["playbackContentId"]
       34 LOADB                            R3 1
       35 CALL                             R1 2 0
       36 GETUPVAL                         R2 6
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R4 3
       39 MOVE                             R5 R0
       40 CALL                             R2 3 1
       41 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       43 LOADK                            R3 K5 ["Could not activate the selected pose"]
       44 GETIMPORT                        R1 K7 [assert]
       46 CALL                             R1 2 0
       47 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getActivePose"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["getContextOrLatest"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R1 ; [+7]
       11 GETTABLEKS                       R3 R1 K2 ["contentId"]
       13 JUMPIFNOTEQ                      R3 R0 ; [+3]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["resolvePoseOperation"]
       21 MOVE                             R4 R0
       22 MOVE                             R5 R2
       23 CALL                             R3 2 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+2]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R4 R1 K4 ["time"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K5 ["isSavedKeyframeAuthored"]
       32 MOVE                             R6 R0
       33 MOVE                             R7 R4
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K6 ["runPoseTransition"]
       38 MOVE                             R7 R0
       39 MOVE                             R8 R2
       40 NEWCLOSURE                       R9 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CALL                             R6 3 0
       49 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteSavedKeyframe"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R1 R1 K1 ["recordMutation"]
        9 GETUPVAL                         R2 1
       10 LOADK                            R3 K2 ["poseDeleted"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R1 R1 K3 ["deactivate"]
       15 GETUPVAL                         R2 1
       16 CALL                             R1 1 0
       17 MOVE                             R1 R0
       18 CALL                             R1 0 0
       19 GETUPVAL                         R1 5
       20 GETTABLEKS                       R1 R1 K4 ["refreshPreview"]
       22 GETUPVAL                         R2 1
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 6
       25 GETTABLEKS                       R1 R1 K5 ["poseAtTime"]
       27 GETUPVAL                         R2 6
       28 GETTABLEKS                       R2 R2 K6 ["getCurrentTime"]
       30 GETUPVAL                         R3 7
       31 CALL                             R2 1 1
       32 GETUPVAL                         R3 8
       33 GETUPVAL                         R4 7
       34 GETUPVAL                         R5 9
       35 CALL                             R3 2 -1
       36 CALL                             R1 -1 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getPlaybackContentId"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R5 R3
        9 JUMPIFEQKNIL                     R4 ; [+5]
       11 GETTABLEKS                       R5 R4 K2 ["keyframeSequence"]
       13 JUMPIFNOTEQKNIL                  R5 ; [+5]
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R2
       17 CALL                             R5 1 1
       18 RETURN                           R5 1
       19 GETTABLEKS                       R5 R4 K2 ["keyframeSequence"]
       21 NAMECALL                         R5 R5 K3 ["GetKeyframes"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R7 R0 K4 ["time"]
       26 MOVE                             R8 R5
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 GETTABLEKS                       R15 R12 K5 ["Time"]
       32 SUB                              R14 R15 R7
       33 FASTCALL1                        MATH_ABS R14 ; [+2]
       34 GETIMPORT                        R13 K8 [math.abs]
       36 CALL                             R13 1 1
       37 LOADK                            R14 K9 [0.0001]
       38 JUMPIFNOTLT                      R13 R14 ; [+4]
       40 GETTABLEKS                       R6 R12 K5 ["Time"]
       42 JUMP                             ; [+3]
       43 FORGLOOP                         R8 2 ; [-14]
       45 MOVE                             R6 R7
       46 GETUPVAL                         R7 3
       47 GETTABLEKS                       R7 R7 K10 ["findSavedPoseTime"]
       49 MOVE                             R8 R2
       50 MOVE                             R9 R6
       51 CALL                             R7 2 1
       52 JUMPIFNOTEQKNIL                  R7 ; [+5]
       54 GETUPVAL                         R7 2
       55 MOVE                             R8 R2
       56 CALL                             R7 1 1
       57 RETURN                           R7 1
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R7 R7 K11 ["runPoseTransition"]
       61 MOVE                             R8 R2
       62 MOVE                             R9 R1
       63 NEWCLOSURE                       R10 P0
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R3
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R1
       74 LOADK                            R11 K12 ["Delete Keyframe"]
       75 CALL                             R7 4 0
       76 GETUPVAL                         R7 8
       77 MOVE                             R8 R2
       78 MOVE                             R9 R1
       79 CALL                             R7 2 0
       80 GETUPVAL                         R7 2
       81 MOVE                             R8 R2
       82 CALL                             R7 1 1
       83 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["recordMutation"]
        3 GETTABLEKS                       R7 R0 K1 ["sourceContentId"]
        5 MOVE                             R8 R5
        6 CALL                             R6 2 0
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K2 ["refreshPreview"]
       10 GETTABLEKS                       R7 R0 K1 ["sourceContentId"]
       12 CALL                             R6 1 0
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["applyPreviewMode"]
       16 GETTABLEKS                       R7 R0 K4 ["playbackContentId"]
       18 LOADB                            R8 1
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K5 ["poseAtTime"]
       23 MOVE                             R7 R1
       24 GETTABLEKS                       R8 R0 K6 ["animatorContext"]
       26 MOVE                             R9 R1
       27 CALL                             R6 3 0
       28 MOVE                             R6 R4
       29 CALL                             R6 0 0
       30 GETUPVAL                         R7 3
       31 MOVE                             R8 R0
       32 MOVE                             R9 R1
       33 MOVE                             R10 R4
       34 CALL                             R7 3 1
       35 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       37 LOADK                            R8 K7 ["Could not activate the changed pose"]
       38 GETIMPORT                        R6 K9 [assert]
       40 CALL                             R6 2 0
       41 JUMPIFEQKNIL                     R2 ; [+11]
       43 JUMPIFEQKNIL                     R3 ; [+9]
       45 GETTABLEKS                       R6 R3 K10 ["Parent"]
       47 JUMPIFEQKNIL                     R6 ; [+5]
       49 MOVE                             R8 R2
       50 NAMECALL                         R6 R3 K11 ["PivotTo"]
       52 CALL                             R6 2 0
       53 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["markPlayerReload"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 MOVE                             R1 R0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["sampleClipPose"]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 4
       14 CALL                             R1 2 1
       15 SETUPVAL                         R1 3
       16 GETUPVAL                         R3 3
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       23 LOADK                            R3 K2 ["Could not sample the changed reference pose"]
       24 GETIMPORT                        R1 K4 [assert]
       26 CALL                             R1 2 0
       27 MOVE                             R1 R0
       28 CALL                             R1 0 0
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K5 ["getRevision"]
       32 GETUPVAL                         R4 1
       33 CALL                             R3 1 1
       34 GETUPVAL                         R4 6
       35 JUMPIFEQ                         R3 R4 ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       41 LOADK                            R3 K6 ["The edit session changed during the interval drag"]
       42 GETIMPORT                        R1 K4 [assert]
       44 CALL                             R1 2 0
       45 GETUPVAL                         R2 7
       46 GETTABLEKS                       R2 R2 K7 ["updateSavedPoseInterval"]
       48 GETUPVAL                         R3 1
       49 GETUPVAL                         R4 8
       50 GETUPVAL                         R5 4
       51 GETUPVAL                         R6 9
       52 GETUPVAL                         R7 10
       53 GETTABLEKS                       R7 R7 K8 ["Length"]
       55 GETUPVAL                         R8 3
       56 CALL                             R2 6 1
       57 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       59 LOADK                            R3 K9 ["Could not update the pose interval"]
       60 GETIMPORT                        R1 K4 [assert]
       62 CALL                             R1 2 0
       63 GETUPVAL                         R1 11
       64 GETUPVAL                         R2 12
       65 GETUPVAL                         R3 4
       66 GETUPVAL                         R4 13
       67 GETUPVAL                         R5 14
       68 MOVE                             R6 R0
       69 GETUPVAL                         R8 15
       70 JUMPIFNOTEQKS                    R8 K10 ["move"] ; [+3]
       72 LOADK                            R7 K11 ["poseMoved"]
       73 JUMP                             ; [+1]
       74 LOADK                            R7 K12 ["poseResized"]
       75 CALL                             R1 6 0
       76 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["getRevision"]
        5 MOVE                             R5 R3
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["isOperationBlocked"]
       10 MOVE                             R6 R3
       11 CALL                             R5 1 1
       12 JUMPIF                           R5 ; [+8]
       13 GETTABLEKS                       R5 R0 K3 ["revision"]
       15 JUMPIFEQKNIL                     R5 ; [+9]
       17 GETTABLEKS                       R5 R0 K3 ["revision"]
       19 JUMPIFEQ                         R5 R4 ; [+5]
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R3
       23 CALL                             R5 1 1
       24 RETURN                           R5 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["resolvePoseOperation"]
       28 MOVE                             R6 R3
       29 MOVE                             R7 R1
       30 CALL                             R5 2 1
       31 JUMPIFNOTEQKNIL                  R5 ; [+5]
       33 GETUPVAL                         R6 1
       34 MOVE                             R7 R3
       35 CALL                             R6 1 1
       36 RETURN                           R6 1
       37 GETTABLEKS                       R6 R5 K5 ["keyframeSequence"]
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K6 ["getSavedPoseIntervals"]
       42 MOVE                             R8 R3
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K7 ["findSavedPoseTime"]
       47 MOVE                             R9 R3
       48 GETTABLEKS                       R10 R0 K8 ["time"]
       50 CALL                             R8 2 1
       51 JUMPIFEQKNIL                     R8 ; [+3]
       53 GETTABLE                         R9 R7 R8
       54 JUMP                             ; [+1]
       55 LOADNIL                          R9
       56 JUMPIFEQKNIL                     R8 ; [+11]
       58 JUMPIFEQKNIL                     R9 ; [+9]
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K9 ["areBoundsEqual"]
       63 MOVE                             R11 R9
       64 GETTABLEKS                       R12 R0 K10 ["expectedBounds"]
       66 CALL                             R10 2 1
       67 JUMPIF                           R10 ; [+4]
       68 GETUPVAL                         R10 1
       69 MOVE                             R11 R3
       70 CALL                             R10 1 1
       71 RETURN                           R10 1
       72 LOADNIL                          R10
       73 JUMPIFNOTEQKS                    R2 K11 ["move"] ; [+13]
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R11 R11 K12 ["planMove"]
       78 MOVE                             R12 R7
       79 MOVE                             R13 R8
       80 GETTABLEKS                       R14 R0 K13 ["toTime"]
       82 GETTABLEKS                       R15 R6 K14 ["Length"]
       84 CALL                             R11 4 1
       85 MOVE                             R10 R11
       86 JUMP                             ; [+13]
       87 GETUPVAL                         R11 4
       88 GETTABLEKS                       R11 R11 K15 ["planResize"]
       90 MOVE                             R12 R7
       91 MOVE                             R13 R8
       92 GETTABLEKS                       R14 R0 K16 ["edge"]
       94 GETTABLEKS                       R15 R0 K17 ["edgeTime"]
       96 GETTABLEKS                       R16 R6 K14 ["Length"]
       98 CALL                             R11 5 1
       99 MOVE                             R10 R11
      100 JUMPIFEQKNIL                     R10 ; [+9]
      102 GETUPVAL                         R11 4
      103 GETTABLEKS                       R11 R11 K9 ["areBoundsEqual"]
      105 MOVE                             R12 R9
      106 GETTABLEKS                       R13 R10 K18 ["bounds"]
      108 CALL                             R11 2 1
      109 JUMPIFNOT                        R11 ; [+4]
      110 GETUPVAL                         R11 1
      111 MOVE                             R12 R3
      112 CALL                             R11 1 1
      113 RETURN                           R11 1
      114 GETTABLEKS                       R11 R10 K18 ["bounds"]
      116 GETTABLEKS                       R15 R10 K19 ["poseTime"]
      118 SUB                              R14 R15 R8
      119 FASTCALL1                        MATH_ABS R14 ; [+2]
      120 GETIMPORT                        R13 K22 [math.abs]
      122 CALL                             R13 1 1
      123 LOADK                            R14 K23 [0.0001]
      124 JUMPIFLT                         R13 R14 ; [+2]
      126 LOADB                            R12 0 +1
      127 LOADB                            R12 1
      128 JUMPIFNOT                        R12 ; [+2]
      129 MOVE                             R13 R8
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R13 R10 K19 ["poseTime"]
      133 NOT                              R14 R12
      134 JUMPIFNOT                        R14 ; [+7]
      135 GETUPVAL                         R15 3
      136 GETTABLEKS                       R15 R15 K24 ["isSavedKeyframeAuthored"]
      138 MOVE                             R16 R3
      139 MOVE                             R17 R8
      140 CALL                             R15 2 1
      141 NOT                              R14 R15
      142 GETUPVAL                         R15 5
      143 GETTABLEKS                       R15 R15 K25 ["rememberContext"]
      145 MOVE                             R16 R3
      146 MOVE                             R17 R1
      147 CALL                             R15 2 0
      148 GETUPVAL                         R15 5
      149 GETTABLEKS                       R15 R15 K26 ["leaveOtherPose"]
      151 MOVE                             R16 R3
      152 MOVE                             R17 R1
      153 CALL                             R15 2 0
      154 GETTABLEKS                       R15 R5 K27 ["sharedState"]
      156 GETTABLEKS                       R15 R15 K28 ["rig"]
      158 JUMPIFNOTEQKS                    R2 K11 ["move"] ; [+11]
      160 GETUPVAL                         R17 6
      161 GETTABLEKS                       R17 R17 K29 ["FFlagAssistantAnimationGenMoveKeyframeKeepRoot"]
      163 JUMPIFNOT                        R17 ; [+6]
      164 JUMPIFEQKNIL                     R15 ; [+5]
      166 NAMECALL                         R16 R15 K30 ["GetPivot"]
      168 CALL                             R16 1 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R16
      171 LOADNIL                          R17
      172 JUMPIFNOTEQKS                    R2 K11 ["move"] ; [+3]
      174 LOADK                            R18 K31 ["Move Pose Interval"]
      175 JUMP                             ; [+1]
      176 LOADK                            R18 K32 ["Resize Pose Interval"]
      177 GETUPVAL                         R19 0
      178 GETTABLEKS                       R19 R19 K33 ["runPoseTransition"]
      180 MOVE                             R20 R3
      181 MOVE                             R21 R1
      182 NEWCLOSURE                       R22 P0
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R14
      186 CAPTURE                          REF R17
      187 CAPTURE                          VAL R13
      188 CAPTURE                          UPVAL U0
      189 CAPTURE                          VAL R4
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R6
      194 CAPTURE                          UPVAL U7
      195 CAPTURE                          VAL R5
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R2
      199 MOVE                             R23 R18
      200 CALL                             R19 4 0
      201 JUMPIFEQKNIL                     R17 ; [+4]
      203 NAMECALL                         R19 R17 K34 ["Destroy"]
      205 CALL                             R19 1 0
      206 GETUPVAL                         R19 8
      207 MOVE                             R20 R3
      208 MOVE                             R21 R1
      209 CALL                             R19 2 0
      210 GETUPVAL                         R19 1
      211 MOVE                             R20 R3
      212 CALL                             R19 1 1
      213 CLOSEUPVALS                      R17
      214 RETURN                           R19 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["move"]
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["resize"]
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["toolUseId"]
        3 CALL                             R2 1 1
        4 RETURN                           R2 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["getPlaybackContentId"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["setIsPlaying"]
       10 LOADB                            R5 0
       11 GETUPVAL                         R6 2
       12 MOVE                             R7 R3
       13 MOVE                             R8 R1
       14 CALL                             R6 2 -1
       15 CALL                             R4 -1 0
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K3 ["setCurrentTime"]
       19 LOADN                            R5 0
       20 GETUPVAL                         R6 2
       21 MOVE                             R7 R3
       22 MOVE                             R8 R1
       23 CALL                             R6 2 -1
       24 CALL                             R4 -1 0
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K4 ["leave"]
       28 MOVE                             R5 R2
       29 MOVE                             R6 R1
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 4
       32 MOVE                             R5 R3
       33 CALL                             R4 1 0
       34 GETUPVAL                         R5 5
       35 GETTABLE                         R4 R5 R3
       36 JUMPIFNOT                        R4 ; [+3]
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K5 ["needsReload"]
       40 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+5]
        4 GETTABLEKS                       R3 R2 K0 ["keyframeSequence"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["getEditorContentId"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["onRigChanged"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K3 ["isPosing"]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETIMPORT                        R4 K6 [task.defer]
       27 GETUPVAL                         R5 4
       28 MOVE                             R6 R3
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_18:
        0 JUMPIFEQKNIL                     R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["recordMutation"]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K1 ["poseDragged"]
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["refreshPreview"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["getContextOrLatest"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+7]
       21 GETIMPORT                        R3 K5 [warn]
       23 LOADK                            R4 K6 ["[AnimationGen] poseEdited dropped: no request context for contentId="]
       24 MOVE                             R5 R0
       25 CALL                             R3 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 3
       28 MOVE                             R4 R0
       29 MOVE                             R5 R2
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["editor"]
        4 GETTABLEKS                       R3 R0 K2 ["animator"]
        6 GETTABLEKS                       R4 R0 K3 ["poseSelection"]
        8 GETTABLEKS                       R5 R0 K4 ["editPreviewPlayer"]
       10 GETTABLEKS                       R6 R0 K5 ["editSessionManager"]
       12 GETTABLEKS                       R7 R0 K6 ["toAnimatorContext"]
       14 GETTABLEKS                       R8 R0 K7 ["resetRigPose"]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R6
       22 NEWCLOSURE                       R10 P1
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 NEWCLOSURE                       R11 P2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 NEWCLOSURE                       R12 P3
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R11
       38 CAPTURE                          UPVAL U2
       39 NEWCLOSURE                       R13 P4
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R11
       46 NEWCLOSURE                       R14 P5
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U2
       56 NEWCLOSURE                       R15 P6
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R11
       61 NEWCLOSURE                       R16 P7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          VAL R15
       70 CAPTURE                          UPVAL U2
       71 NEWCLOSURE                       R17 P8
       72 CAPTURE                          VAL R16
       73 NEWCLOSURE                       R18 P9
       74 CAPTURE                          VAL R16
       75 NEWCLOSURE                       R19 P10
       76 CAPTURE                          VAL R9
       77 NEWCLOSURE                       R20 P11
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R1
       84 NEWCLOSURE                       R21 P12
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R13
       90 NEWCLOSURE                       R22 P13
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 CAPTURE                          UPVAL U2
       95 DUPTABLE                         R23 K16 [{"onRigChanged", "onPoseEdited", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose"}]
       96 SETTABLEKS                       R21 R23 K8 ["onRigChanged"]
       98 SETTABLEKS                       R22 R23 K9 ["onPoseEdited"]
      100 SETTABLEKS                       R12 R23 K10 ["insertPose"]
      102 SETTABLEKS                       R14 R23 K11 ["deletePose"]
      104 SETTABLEKS                       R17 R23 K12 ["movePose"]
      106 SETTABLEKS                       R18 R23 K13 ["resizePose"]
      108 SETTABLEKS                       R19 R23 K14 ["getEditScrubbarState"]
      110 SETTABLEKS                       R20 R23 K15 ["resetPose"]
      112 RETURN                           R23 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Remotes"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGenRemotes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationGen"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationGenTelemetry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 GETTABLEKS                       R5 R5 K9 ["AnimationGen"]
       34 GETTABLEKS                       R5 R5 K12 ["HostTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Util"]
       41 GETTABLEKS                       R6 R6 K9 ["AnimationGen"]
       43 GETTABLEKS                       R6 R6 K13 ["Posing"]
       45 GETTABLEKS                       R6 R6 K14 ["PoseInterval"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Util"]
       52 GETTABLEKS                       R7 R7 K9 ["AnimationGen"]
       54 GETTABLEKS                       R7 R7 K13 ["Posing"]
       56 GETTABLEKS                       R7 R7 K15 ["ScrubbarFrameKeys"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K16 ["Types"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K8 ["Util"]
       68 GETTABLEKS                       R9 R9 K9 ["AnimationGen"]
       70 GETTABLEKS                       R9 R9 K17 ["createEditPreviewPlayer"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K8 ["Util"]
       77 GETTABLEKS                       R10 R10 K9 ["AnimationGen"]
       79 GETTABLEKS                       R10 R10 K18 ["createEditSessionManager"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K8 ["Util"]
       86 GETTABLEKS                       R11 R11 K9 ["AnimationGen"]
       88 GETTABLEKS                       R11 R11 K19 ["createHostAnimator"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K8 ["Util"]
       95 GETTABLEKS                       R12 R12 K9 ["AnimationGen"]
       97 GETTABLEKS                       R12 R12 K20 ["createHostEditor"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K8 ["Util"]
      104 GETTABLEKS                       R13 R13 K9 ["AnimationGen"]
      106 GETTABLEKS                       R13 R13 K21 ["createPoseSelection"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K8 ["Util"]
      113 GETTABLEKS                       R14 R14 K9 ["AnimationGen"]
      115 GETTABLEKS                       R14 R14 K22 ["notifyGuestEditStateChanged"]
      117 CALL                             R13 1 1
      118 DUPCLOSURE                       R14 K23 [PROTO_0]
      119 DUPCLOSURE                       R15 K24 [PROTO_19]
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R3
      124 RETURN                           R15 1
