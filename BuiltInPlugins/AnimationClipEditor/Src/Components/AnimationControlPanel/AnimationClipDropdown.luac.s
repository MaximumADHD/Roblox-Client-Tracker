PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ReadOnly"]
        5 JUMPIF                           R0 ; [+16]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["SetPlayState"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["PLAY_STATE"]
       14 GETTABLEKS                       R1 R1 K4 ["Pause"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 DUPTABLE                         R2 K7 [{["showMenu"] = True}]
       19 NAMECALL                         R0 R0 K8 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"overwriteName", "isActionLegacyAnimSaves"}]
        2 SETTABLEKS                       R0 R4 K0 ["overwriteName"]
        4 SETTABLEKS                       R1 R4 K1 ["isActionLegacyAnimSaves"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"overwriteName", "isActionLegacyAnimSaves"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K3 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["overwriteName"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["None"]
       10 SETTABLEKS                       R3 R2 K1 ["isActionLegacyAnimSaves"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideInProgressCover"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["filePath"]
        8 GETUPVAL                         R0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K2 ["importSession"]
       12 GETUPVAL                         R0 1
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+4]
       15 GETUPVAL                         R0 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["detectedRigTypeIndex"]
       19 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetReduceKeyframesDialogMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["FromMenu"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"loadingName", "isActionLegacyAnimSaves"}]
        2 SETTABLEKS                       R0 R4 K0 ["loadingName"]
        4 SETTABLEKS                       R1 R4 K1 ["isActionLegacyAnimSaves"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"loadingName", "isActionLegacyAnimSaves"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K3 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["loadingName"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K3 ["None"]
       10 SETTABLEKS                       R3 R2 K1 ["isActionLegacyAnimSaves"]
       12 NAMECALL                         R0 R0 K4 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showCreateAnimationFromVideoTutorial"}]
        2 SETTABLEKS                       R0 R3 K0 ["showCreateAnimationFromVideoTutorial"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetInReviewState"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K2 ["CreateFromVideoAndImportFBXAnimationUserMayChooseModel"]
        9 GETTABLEKS                       R2 R0 K3 ["Plugin"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R0 K4 ["Analytics"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsDirty"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["showLoadNewPrompt"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K3 ["Plugin"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["props"]
       20 GETTABLEKS                       R1 R1 K4 ["SetInReviewState"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["props"]
       27 GETTABLEKS                       R1 R1 K5 ["ImportKeyframeSequence"]
       29 MOVE                             R2 R0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K0 ["props"]
       33 GETTABLEKS                       R3 R3 K6 ["Analytics"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsDirty"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["showLoadNewPrompt"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K3 ["Plugin"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["props"]
       20 GETTABLEKS                       R1 R1 K4 ["SetInReviewState"]
       22 LOADB                            R2 0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["props"]
       27 GETTABLEKS                       R1 R1 K5 ["ImportFBXAnimationUserMayChooseModel"]
       29 MOVE                             R2 R0
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["props"]
       34 GETTABLEKS                       R4 R4 K6 ["Analytics"]
       36 CALL                             R1 3 0
       37 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickMeshFileWithPrompt"]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestFilePicker"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+31]
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K2 ["StartSessionWithPathAsync"]
       10 CALL                             R1 2 1
       11 NAMECALL                         R2 R1 K3 ["GetKeyframeSequences"]
       13 CALL                             R2 1 1
       14 LENGTH                           R3 R2
       15 JUMPIFNOTEQKN                    R3 K4 [0] ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEN                        R3 R2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["props"]
       22 GETTABLEKS                       R4 R4 K6 ["LoadImportedKeyframeSequence"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K5 ["props"]
       27 GETTABLEKS                       R5 R5 K7 ["Plugin"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K5 ["props"]
       32 GETTABLEKS                       R6 R6 K8 ["Analytics"]
       34 MOVE                             R7 R3
       35 CALL                             R4 3 0
       36 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["isDirty"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["showLoadNewPrompt"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["importFromFile"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestFilePicker"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+70]
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K2 ["filePath"]
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+23]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R2 K3 ["StartSessionWithPathAsync"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K4 ["importSession"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K4 ["importSession"]
       23 NAMECALL                         R1 R1 K5 ["GetKeyframeSequences"]
       25 CALL                             R1 1 1
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K6 ["buildClipNamesFromSequences"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 1
       32 SETTABLEKS                       R3 R2 K7 ["animationClipNames"]
       34 JUMP                             ; [+11]
       35 GETUPVAL                         R1 4
       36 CALL                             R1 0 1
       37 JUMPIFNOT                        R1 ; [+8]
       38 GETUPVAL                         R1 0
       39 GETUPVAL                         R2 2
       40 MOVE                             R4 R0
       41 NAMECALL                         R2 R2 K3 ["StartSessionWithPathAsync"]
       43 CALL                             R2 2 1
       44 SETTABLEKS                       R2 R1 K4 ["importSession"]
       46 GETUPVAL                         R1 4
       47 CALL                             R1 0 1
       48 JUMPIFNOT                        R1 ; [+22]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K4 ["importSession"]
       52 JUMPIFNOT                        R1 ; [+18]
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K4 ["importSession"]
       56 NAMECALL                         R1 R1 K8 ["GetImportTree"]
       58 CALL                             R1 1 1
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R4 R1 K9 ["RigType"]
       62 GETIMPORT                        R5 K12 [Enum.RigType.R15]
       64 JUMPIFNOTEQ                      R4 R5 ; [+3]
       66 LOADN                            R3 1
       67 JUMP                             ; [+1]
       68 LOADN                            R3 2
       69 SETTABLEKS                       R3 R2 K13 ["detectedRigTypeIndex"]
       71 GETUPVAL                         R1 0
       72 GETTABLEKS                       R1 R1 K14 ["showRestPoseChoicePrompt"]
       74 CALL                             R1 0 0
       75 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["isDirty"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["showLoadNewPrompt"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K3 ["importFromFileWithRestPoseSelection"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 LOADK                            R2 K2 ["onAnimationEditorImportVideoCreate"]
        6 NAMECALL                         R0 R0 K3 ["report"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K4 ["setShowCreateAnimationFromVideoTutorial"]
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsDirty"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["showLoadNewPrompt"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K3 ["SetInReviewState"]
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K4 ["startAnimationFromVideoFlow"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IsDirty"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["showLoadNewPrompt"]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["props"]
       15 GETTABLEKS                       R0 R0 K3 ["SetInReviewState"]
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K4 ["createNewClip"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Analytics"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Localization"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["CreateNewAnimation"]
       15 LOADK                            R5 K4 ["Title"]
       16 LOADK                            R6 K5 ["DefaultAnimationName"]
       17 NAMECALL                         R3 R1 K6 ["getText"]
       19 CALL                             R3 3 1
       20 MOVE                             R4 R0
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["IsDirty"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["showLoadNewPrompt"]
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["props"]
       16 GETTABLEKS                       R2 R2 K3 ["SetInReviewState"]
       18 LOADB                            R3 0
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["props"]
       23 GETTABLEKS                       R2 R2 K4 ["LoadAnimation"]
       25 MOVE                             R3 R0
       26 MOVE                             R4 R1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["props"]
       30 GETTABLEKS                       R5 R5 K5 ["Analytics"]
       32 CALL                             R2 3 0
       33 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R1 K2 ["loadingName"]
        8 GETTABLEKS                       R3 R1 K3 ["isActionLegacyAnimSaves"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["props"]
       13 GETTABLEKS                       R4 R4 K4 ["Plugin"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["hideLoadNewPrompt"]
       18 CALL                             R5 0 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["props"]
       22 GETTABLEKS                       R5 R5 K6 ["SetInReviewState"]
       24 LOADB                            R6 0
       25 CALL                             R5 1 0
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTEQ                      R2 R5 ; [+6]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["createNewClip"]
       32 CALL                             R5 0 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R5 2
       35 JUMPIFNOTEQ                      R2 R5 ; [+8]
       37 GETTABLEKS                       R5 R0 K8 ["ImportKeyframeSequence"]
       39 MOVE                             R6 R4
       40 GETTABLEKS                       R7 R0 K9 ["Analytics"]
       42 CALL                             R5 2 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R5 3
       45 JUMPIFNOTEQ                      R2 R5 ; [+9]
       47 GETTABLEKS                       R5 R0 K10 ["ImportFBXAnimationUserMayChooseModel"]
       49 MOVE                             R6 R4
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R8 R0 K9 ["Analytics"]
       53 CALL                             R5 3 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R5 4
       56 JUMPIFNOTEQ                      R2 R5 ; [+6]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R5 R5 K11 ["startAnimationFromVideoFlow"]
       61 CALL                             R5 0 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R5 5
       64 JUMPIFNOTEQ                      R2 R5 ; [+6]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K12 ["importFromFileWithRestPoseSelection"]
       69 CALL                             R5 0 0
       70 RETURN                           R0 0
       71 GETTABLEKS                       R5 R0 K13 ["LoadAnimation"]
       73 MOVE                             R6 R2
       74 MOVE                             R7 R3
       75 GETTABLEKS                       R8 R0 K9 ["Analytics"]
       77 CALL                             R5 3 0
       78 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SanitizeAnimation"]
        5 GETTABLEKS                       R2 R0 K2 ["Analytics"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_35:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["GenerateControlRigData"]
        5 GETTABLEKS                       R2 R0 K2 ["Analytics"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_37:
        0 DUPTABLE                         R1 K13 [{[1] = False, ["showSaveAsPrompt"] = False, ["showImportAnimModelChoicePrompt"] = False, ["showInProgressCover"] = False, ["showPromotePrompt"] = False, ["overwriteName"] = , ["loadingName"] = , ["isActionLegacyAnimSaves"] = , ["showCreateAnimationFromVideoTutorial"] = False, ["filePath"] = ""}]
        1 SETTABLEKS                       R1 R0 K14 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K0 ["showMenu"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K15 ["hideMenu"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K16 ["showOverwritePrompt"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K17 ["hideOverwritePrompt"]
       21 NEWCLOSURE                       R1 P4
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K2 ["showSaveAsPrompt"]
       25 NEWCLOSURE                       R1 P5
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K18 ["hideSaveAsPrompt"]
       29 NEWCLOSURE                       R1 P6
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K4 ["showInProgressCover"]
       33 NEWCLOSURE                       R1 P7
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K19 ["hideInProgressCover"]
       37 NEWCLOSURE                       R1 P8
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U2
       40 SETTABLEKS                       R1 R0 K20 ["cancelImport"]
       42 NEWCLOSURE                       R1 P9
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K3 ["showImportAnimModelChoicePrompt"]
       46 NEWCLOSURE                       R1 P10
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K21 ["hideImportAnimModelChoicePrompt"]
       50 NEWCLOSURE                       R1 P11
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K22 ["showRestPoseChoicePrompt"]
       54 NEWCLOSURE                       R1 P12
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K23 ["hideRestPoseChoicePrompt"]
       58 NEWCLOSURE                       R1 P13
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K21 ["hideImportAnimModelChoicePrompt"]
       62 NEWCLOSURE                       R1 P14
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U0
       65 SETTABLEKS                       R1 R0 K24 ["showReduceKeyframesDialog"]
       67 NEWCLOSURE                       R1 P15
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R1 R0 K5 ["showPromotePrompt"]
       71 NEWCLOSURE                       R1 P16
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R1 R0 K25 ["hidePromotePrompt"]
       75 NEWCLOSURE                       R1 P17
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R1 R0 K26 ["showLoadNewPrompt"]
       79 NEWCLOSURE                       R1 P18
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U1
       82 SETTABLEKS                       R1 R0 K27 ["hideLoadNewPrompt"]
       84 NEWCLOSURE                       R1 P19
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R1 R0 K28 ["setShowCreateAnimationFromVideoTutorial"]
       88 NEWCLOSURE                       R1 P20
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R1 R0 K29 ["continueAfterCreateAnimationFromVideoTutorial"]
       92 NEWCLOSURE                       R1 P21
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U3
       95 SETTABLEKS                       R1 R0 K30 ["importRequested"]
       97 NEWCLOSURE                       R1 P22
       98 CAPTURE                          VAL R0
       99 CAPTURE                          UPVAL U4
      100 SETTABLEKS                       R1 R0 K31 ["importFbxRequested"]
      102 DUPCLOSURE                       R1 K32 [PROTO_23]
      103 CAPTURE                          UPVAL U5
      104 SETTABLEKS                       R1 R0 K33 ["requestFilePicker"]
      106 NEWCLOSURE                       R1 P24
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U5
      109 SETTABLEKS                       R1 R0 K34 ["importFromFile"]
      111 NEWCLOSURE                       R1 P25
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U6
      114 SETTABLEKS                       R1 R0 K35 ["importFromFileRequested"]
      116 NEWCLOSURE                       R1 P26
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U7
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          UPVAL U2
      122 SETTABLEKS                       R1 R0 K36 ["importFromFileWithRestPoseSelection"]
      124 NEWCLOSURE                       R1 P27
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U4
      127 SETTABLEKS                       R1 R0 K37 ["importFromFileWithRestPoseSelectionRequested"]
      129 NEWCLOSURE                       R1 P28
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R1 R0 K38 ["startAnimationFromVideoFlow"]
      133 NEWCLOSURE                       R1 P29
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U9
      136 SETTABLEKS                       R1 R0 K39 ["createFromVideoRequested"]
      138 NEWCLOSURE                       R1 P30
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U10
      141 SETTABLEKS                       R1 R0 K40 ["createNew"]
      143 NEWCLOSURE                       R1 P31
      144 CAPTURE                          VAL R0
      145 SETTABLEKS                       R1 R0 K41 ["createNewClip"]
      147 NEWCLOSURE                       R1 P32
      148 CAPTURE                          VAL R0
      149 SETTABLEKS                       R1 R0 K42 ["loadNew"]
      151 NEWCLOSURE                       R1 P33
      152 CAPTURE                          VAL R0
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          UPVAL U3
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          UPVAL U9
      157 CAPTURE                          UPVAL U6
      158 SETTABLEKS                       R1 R0 K43 ["handleLoadNewPrompt"]
      160 NEWCLOSURE                       R1 P34
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R1 R0 K44 ["onSanitizeAnimation"]
      164 DUPCLOSURE                       R1 K45 [PROTO_35]
      165 SETTABLEKS                       R1 R0 K46 ["validateAnimationName"]
      167 NEWCLOSURE                       R1 P36
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R1 R0 K47 ["onGenerateControlRigData"]
      171 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hideSaveAsPrompt"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["SetIsLegacyAnimSaves"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["SaveAnimation"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["Analytics"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K4 ["Localization"]
       19 CALL                             R1 3 0
       20 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hideImportAnimModelChoicePrompt"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["ImportLoadedFBXAnimation"]
        9 GETIMPORT                        R2 K4 [plugin]
       11 MOVE                             R3 R0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["props"]
       15 GETTABLEKS                       R4 R4 K5 ["Analytics"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["hideRestPoseChoicePrompt"]
        3 CALL                             R6 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Cancel"] ; [+17]
        6 GETUPVAL                         R6 0
        7 LOADNIL                          R7
        8 SETTABLEKS                       R7 R6 K2 ["filePath"]
       10 GETUPVAL                         R6 0
       11 LOADNIL                          R7
       12 SETTABLEKS                       R7 R6 K3 ["importSession"]
       14 GETUPVAL                         R6 1
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+4]
       17 GETUPVAL                         R6 0
       18 LOADNIL                          R7
       19 SETTABLEKS                       R7 R6 K4 ["detectedRigTypeIndex"]
       21 RETURN                           R0 0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K5 ["showInProgressCover"]
       25 CALL                             R6 0 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K6 ["props"]
       29 GETTABLEKS                       R6 R6 K7 ["RootInstance"]
       31 LOADNIL                          R7
       32 GETUPVAL                         R8 2
       33 CALL                             R8 0 1
       34 JUMPIFNOT                        R8 ; [+7]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K8 ["mapRestPoseKeyToEnum"]
       38 MOVE                             R9 R1
       39 CALL                             R8 1 1
       40 MOVE                             R7 R8
       41 JUMP                             ; [+7]
       42 JUMPIFNOTEQKS                    R1 K9 ["FromRigInACE"] ; [+4]
       44 GETIMPORT                        R7 K12 [Enum.RestPoseModel.FromRigInACE]
       46 JUMP                             ; [+2]
       47 GETIMPORT                        R7 K14 [Enum.RestPoseModel.FromRigInFile]
       49 LOADNIL                          R8
       50 GETUPVAL                         R9 2
       51 CALL                             R9 0 1
       52 JUMPIF                           R9 ; [+3]
       53 GETUPVAL                         R9 1
       54 CALL                             R9 0 1
       55 JUMPIFNOT                        R9 ; [+12]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K3 ["importSession"]
       59 JUMPIFNOT                        R9 ; [+8]
       60 GETUPVAL                         R9 0
       61 GETTABLEKS                       R8 R9 K3 ["importSession"]
       63 GETUPVAL                         R9 0
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K3 ["importSession"]
       67 JUMP                             ; [+8]
       68 GETUPVAL                         R9 4
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K2 ["filePath"]
       72 NAMECALL                         R9 R9 K15 ["StartSessionWithPathAsync"]
       74 CALL                             R9 2 1
       75 MOVE                             R8 R9
       76 GETUPVAL                         R9 5
       77 CALL                             R9 0 1
       78 JUMPIFNOT                        R9 ; [+14]
       79 JUMPIFNOT                        R4 ; [+13]
       80 LOADNIL                          R9
       81 JUMPIFNOTEQKS                    R4 K16 ["R15"] ; [+4]
       83 GETIMPORT                        R9 K18 [Enum.RigType.R15]
       85 JUMP                             ; [+2]
       86 GETIMPORT                        R9 K20 [Enum.RigType.Custom]
       88 NAMECALL                         R10 R8 K21 ["GetImportTree"]
       90 CALL                             R10 1 1
       91 SETTABLEKS                       R9 R10 K17 ["RigType"]
       93 LOADNIL                          R9
       94 LOADB                            R10 1
       95 GETIMPORT                        R11 K23 [Enum.RestPoseModel.FromCustomClip]
       97 JUMPIFEQ                         R7 R11 ; [+10]
       99 GETUPVAL                         R10 5
      100 CALL                             R10 0 1
      101 JUMPIFNOT                        R10 ; [+6]
      102 GETIMPORT                        R11 K25 [Enum.RestPoseModel.FromRigInFileZeroedRotations]
      104 JUMPIFEQ                         R7 R11 ; [+2]
      106 LOADB                            R10 0 +1
      107 LOADB                            R10 1
      108 GETUPVAL                         R11 2
      109 CALL                             R11 0 1
      110 JUMPIFNOT                        R11 ; [+10]
      111 JUMPIFNOT                        R10 ; [+9]
      112 MOVE                             R13 R6
      113 MOVE                             R14 R7
      114 ORK                              R16 R3 K26 [1]
      115 SUBK                             R15 R16 K26 [1]
      116 NAMECALL                         R11 R8 K27 ["GetKeyframeSequencesForSelectedRestPoseWithClip"]
      118 CALL                             R11 4 1
      119 MOVE                             R9 R11
      120 JUMP                             ; [+6]
      121 MOVE                             R13 R6
      122 MOVE                             R14 R7
      123 NAMECALL                         R11 R8 K28 ["GetKeyframeSequencesForSelectedRestPose"]
      125 CALL                             R11 3 1
      126 MOVE                             R9 R11
      127 LENGTH                           R11 R9
      128 JUMPIFNOTEQKN                    R11 K29 [0] ; [+10]
      130 GETUPVAL                         R11 0
      131 LOADNIL                          R12
      132 SETTABLEKS                       R12 R11 K2 ["filePath"]
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R11 R11 K30 ["hideInProgressCover"]
      137 CALL                             R11 0 0
      138 RETURN                           R0 0
      139 GETUPVAL                         R12 6
      140 CALL                             R12 0 1
      141 JUMPIFNOT                        R12 ; [+2]
      142 ORK                              R11 R5 K26 [1]
      143 JUMP                             ; [+1]
      144 LOADN                            R11 1
      145 GETTABLE                         R12 R9 R11
      146 LOADB                            R13 0
      147 SETTABLEKS                       R13 R12 K31 ["Loop"]
      149 GETUPVAL                         R13 0
      150 GETTABLEKS                       R13 R13 K6 ["props"]
      152 GETTABLEKS                       R13 R13 K32 ["LoadImportedKeyframeSequence"]
      154 GETUPVAL                         R14 0
      155 GETTABLEKS                       R14 R14 K6 ["props"]
      157 GETTABLEKS                       R14 R14 K33 ["Plugin"]
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K6 ["props"]
      162 GETTABLEKS                       R15 R15 K34 ["Analytics"]
      164 MOVE                             R16 R12
      165 MOVE                             R17 R2
      166 CALL                             R13 4 0
      167 GETUPVAL                         R13 0
      168 GETTABLEKS                       R13 R13 K30 ["hideInProgressCover"]
      170 CALL                             R13 0 0
      171 GETUPVAL                         R13 0
      172 LOADNIL                          R14
      173 SETTABLEKS                       R14 R13 K2 ["filePath"]
      175 LOADN                            R15 1
      176 LENGTH                           R13 R9
      177 LOADN                            R14 1
      178 FORNPREP                         R13
      179 GETTABLE                         R16 R9 R15
      180 GETUPVAL                         R17 7
      181 GETTABLEKS                       R17 R17 K35 ["fromKeyframeSequence"]
      183 MOVE                             R18 R16
      184 CALL                             R17 1 1
      185 GETTABLEKS                       R18 R17 K36 ["Metadata"]
      187 GETTABLEKS                       R19 R16 K37 ["Name"]
      189 SETTABLEKS                       R19 R18 K37 ["Name"]
      191 GETUPVAL                         R18 8
      192 GETTABLEKS                       R18 R18 K38 ["SavePassedInAnimation"]
      194 GETTABLEKS                       R19 R16 K37 ["Name"]
      196 GETUPVAL                         R20 0
      197 GETTABLEKS                       R20 R20 K6 ["props"]
      199 GETTABLEKS                       R20 R20 K34 ["Analytics"]
      201 GETUPVAL                         R21 0
      202 GETTABLEKS                       R21 R21 K6 ["props"]
      204 GETTABLEKS                       R21 R21 K39 ["Localization"]
      206 MOVE                             R22 R17
      207 LOADB                            R23 0
      208 MOVE                             R24 R6
      209 CALL                             R18 6 0
      210 FORNLOOP                         R13
      211 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hideOverwritePrompt"]
        3 CALL                             R1 0 0
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["SetIsLegacyAnimSaves"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["SaveAnimation"]
       13 GETUPVAL                         R2 3
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["Analytics"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["Localization"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hidePromotePrompt"]
        3 CALL                             R1 0 0
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["PromoteKeyframeSequence"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["Analytics"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_43:
        0 JUMPIFNOTEQKS                    R0 K0 ["Delete"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["handleLoadNewPrompt"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SaveAnimation"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Analytics"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Localization"]
       10 CALL                             R1 3 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["handleLoadNewPrompt"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setShowCreateAnimationFromVideoTutorial"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 0
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["continueAfterCreateAnimationFromVideoTutorial"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowCreateAnimationFromVideoTutorial"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowCreateAnimationFromVideoTutorial"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowCreateAnimationFromVideoTutorial"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R0 K2 ["state"]
        8 GETTABLEKS                       R4 R2 K3 ["AnimationName"]
       10 GETTABLEKS                       R5 R2 K4 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R2 K5 ["IsChannelAnimation"]
       14 GETTABLEKS                       R7 R3 K6 ["showMenu"]
       16 GETTABLEKS                       R8 R3 K7 ["showSaveAsPrompt"]
       18 GETTABLEKS                       R9 R3 K8 ["showImportAnimModelChoicePrompt"]
       20 GETTABLEKS                       R10 R3 K9 ["showRestPoseChoicePrompt"]
       22 GETTABLEKS                       R11 R3 K10 ["overwriteName"]
       24 GETTABLEKS                       R12 R3 K11 ["loadingName"]
       26 GETTABLEKS                       R13 R3 K12 ["showPromotePrompt"]
       28 GETTABLEKS                       R14 R3 K13 ["showInProgressCover"]
       30 GETTABLEKS                       R15 R2 K14 ["IsLegacyAnimSaves"]
       32 GETTABLEKS                       R16 R3 K15 ["isActionLegacyAnimSaves"]
       34 GETTABLEKS                       R17 R3 K16 ["showCreateAnimationFromVideoTutorial"]
       36 LOADB                            R18 0
       37 JUMPIFNOT                        R17 ; [+12]
       38 GETIMPORT                        R19 K18 [game]
       40 LOADK                            R21 K19 ["AnimationFromVideoCreatorStudioService"]
       41 NAMECALL                         R19 R19 K20 ["GetService"]
       43 CALL                             R19 2 1
       44 NAMECALL                         R19 R19 K21 ["IsAgeRestricted"]
       46 CALL                             R19 1 1
       47 MOVE                             R18 R19
       48 JUMPIFNOT                        R18 ; [+1]
       49 LOADB                            R17 0
       50 GETUPVAL                         R19 0
       51 GETTABLEKS                       R19 R19 K22 ["createElement"]
       53 LOADK                            R20 K23 ["ImageButton"]
       54 NEWTABLE                         R21 8 0
       56 GETIMPORT                        R22 K26 [UDim2.new]
       58 LOADN                            R23 1
       59 GETUPVAL                         R26 1
       60 GETTABLEKS                       R26 R26 K27 ["CONTROLS_WIDTH"]
       62 MINUS                            R25 R26
       63 GETUPVAL                         R26 1
       64 GETTABLEKS                       R26 R26 K28 ["TIME_DISPLAY_WIDTH"]
       66 SUB                              R24 R25 R26
       67 LOADN                            R25 1
       68 LOADN                            R26 0
       69 CALL                             R22 4 1
       70 SETTABLEKS                       R22 R21 K29 ["Size"]
       72 LOADN                            R22 1
       73 SETTABLEKS                       R22 R21 K30 ["BackgroundTransparency"]
       75 LOADN                            R22 1
       76 SETTABLEKS                       R22 R21 K31 ["ImageTransparency"]
       78 LOADB                            R22 0
       79 SETTABLEKS                       R22 R21 K32 ["AutoButtonColor"]
       81 SETTABLEKS                       R5 R21 K4 ["LayoutOrder"]
       83 GETUPVAL                         R22 0
       84 GETTABLEKS                       R22 R22 K33 ["Event"]
       86 GETTABLEKS                       R22 R22 K34 ["Activated"]
       88 GETTABLEKS                       R23 R0 K6 ["showMenu"]
       90 SETTABLE                         R23 R21 R22
       91 DUPTABLE                         R22 K48 [{"Padding", "AnimationClipLabel", "ContextButton", "AnimationClipMenu", "SaveAsPrompt", "ImportAnimModelChoicePrompt", "RestPoseChoicePrompt", "InProgressCover", "OverwritePrompt", "PromotePrompt", "LoadNewPrompt", "CreateAnimationFromVideoTutorial", "CreateAnimationFromVideoAgeGate"}]
       92 GETUPVAL                         R23 0
       93 GETTABLEKS                       R23 R23 K22 ["createElement"]
       95 LOADK                            R24 K49 ["UIPadding"]
       96 DUPTABLE                         R25 K52 [{"PaddingLeft", "PaddingRight"}]
       97 GETUPVAL                         R26 2
       98 SETTABLEKS                       R26 R25 K50 ["PaddingLeft"]
      100 GETUPVAL                         R26 2
      101 SETTABLEKS                       R26 R25 K51 ["PaddingRight"]
      103 CALL                             R23 2 1
      104 SETTABLEKS                       R23 R22 K35 ["Padding"]
      106 GETUPVAL                         R23 0
      107 GETTABLEKS                       R23 R23 K22 ["createElement"]
      109 GETUPVAL                         R24 3
      110 DUPTABLE                         R25 K55 [{"AnchorPoint", "Size", "Position"}]
      111 GETIMPORT                        R26 K57 [Vector2.new]
      113 LOADN                            R27 0
      114 LOADK                            R28 K58 [0.5]
      115 CALL                             R26 2 1
      116 SETTABLEKS                       R26 R25 K53 ["AnchorPoint"]
      118 GETIMPORT                        R26 K26 [UDim2.new]
      120 LOADN                            R27 1
      121 GETUPVAL                         R30 1
      122 GETTABLEKS                       R30 R30 K59 ["TRACKLIST_BUTTON_SIZE"]
      124 MINUS                            R29 R30
      125 GETUPVAL                         R30 1
      126 GETTABLEKS                       R30 R30 K60 ["INDENT_PADDING"]
      128 SUB                              R28 R29 R30
      129 LOADN                            R29 1
      130 LOADN                            R30 -6
      131 CALL                             R26 4 1
      132 SETTABLEKS                       R26 R25 K29 ["Size"]
      134 GETIMPORT                        R26 K62 [UDim2.fromScale]
      136 LOADN                            R27 0
      137 LOADK                            R28 K58 [0.5]
      138 CALL                             R26 2 1
      139 SETTABLEKS                       R26 R25 K54 ["Position"]
      141 NEWTABLE                         R26 0 1
      143 GETUPVAL                         R27 0
      144 GETTABLEKS                       R27 R27 K22 ["createElement"]
      146 GETUPVAL                         R28 4
      147 DUPTABLE                         R29 K66 [{"Size", "Text", "OnValidateText", "OnFocusLost"}]
      148 GETIMPORT                        R30 K62 [UDim2.fromScale]
      150 LOADN                            R31 1
      151 LOADN                            R32 1
      152 CALL                             R30 2 1
      153 SETTABLEKS                       R30 R29 K29 ["Size"]
      155 SETTABLEKS                       R4 R29 K63 ["Text"]
      157 GETTABLEKS                       R30 R0 K67 ["validateAnimationName"]
      159 SETTABLEKS                       R30 R29 K64 ["OnValidateText"]
      161 GETTABLEKS                       R30 R0 K0 ["props"]
      163 GETTABLEKS                       R30 R30 K68 ["SetAnimationName"]
      165 SETTABLEKS                       R30 R29 K65 ["OnFocusLost"]
      167 CALL                             R27 2 -1
      168 SETLIST                          R26 R27 -1 [1]
      170 CALL                             R23 3 1
      171 SETTABLEKS                       R23 R22 K36 ["AnimationClipLabel"]
      173 GETUPVAL                         R23 0
      174 GETTABLEKS                       R23 R23 K22 ["createElement"]
      176 GETUPVAL                         R24 5
      177 DUPTABLE                         R25 K70 [{"AnchorPoint", "Position", "OnActivated"}]
      178 GETIMPORT                        R26 K57 [Vector2.new]
      180 LOADN                            R27 1
      181 LOADK                            R28 K58 [0.5]
      182 CALL                             R26 2 1
      183 SETTABLEKS                       R26 R25 K53 ["AnchorPoint"]
      185 GETIMPORT                        R26 K26 [UDim2.new]
      187 LOADN                            R27 1
      188 LOADN                            R28 0
      189 LOADK                            R29 K58 [0.5]
      190 LOADN                            R30 0
      191 CALL                             R26 4 1
      192 SETTABLEKS                       R26 R25 K54 ["Position"]
      194 GETTABLEKS                       R26 R0 K6 ["showMenu"]
      196 SETTABLEKS                       R26 R25 K69 ["OnActivated"]
      198 CALL                             R23 2 1
      199 SETTABLEKS                       R23 R22 K37 ["ContextButton"]
      201 GETUPVAL                         R23 0
      202 GETTABLEKS                       R23 R23 K22 ["createElement"]
      204 GETUPVAL                         R24 6
      205 DUPTABLE                         R25 K86 [{"ShowMenu", "CurrentAnimation", "IsLegacyAnimSaves", "IsChannelAnimation", "OnMenuOpened", "OnOverwriteRequested", "OnSaveAsRequested", "OnCreateNewRequested", "OnLoadRequested", "OnImportRequested", "OnImportFbxRequested", "OnImportFromFileRequested", "OnCreateFromVideoRequested", "OnPromoteRequested", "OnReduceKeyframesRequested", "OnSanitizeAnimation", "OnGenerateControlRigData"}]
      206 SETTABLEKS                       R7 R25 K71 ["ShowMenu"]
      208 SETTABLEKS                       R4 R25 K72 ["CurrentAnimation"]
      210 SETTABLEKS                       R15 R25 K14 ["IsLegacyAnimSaves"]
      212 SETTABLEKS                       R6 R25 K5 ["IsChannelAnimation"]
      214 GETTABLEKS                       R26 R0 K87 ["hideMenu"]
      216 SETTABLEKS                       R26 R25 K73 ["OnMenuOpened"]
      218 GETTABLEKS                       R26 R0 K88 ["showOverwritePrompt"]
      220 SETTABLEKS                       R26 R25 K74 ["OnOverwriteRequested"]
      222 GETTABLEKS                       R26 R0 K7 ["showSaveAsPrompt"]
      224 SETTABLEKS                       R26 R25 K75 ["OnSaveAsRequested"]
      226 GETTABLEKS                       R26 R0 K89 ["createNew"]
      228 SETTABLEKS                       R26 R25 K76 ["OnCreateNewRequested"]
      230 GETTABLEKS                       R26 R0 K90 ["loadNew"]
      232 SETTABLEKS                       R26 R25 K77 ["OnLoadRequested"]
      234 GETTABLEKS                       R26 R0 K91 ["importRequested"]
      236 SETTABLEKS                       R26 R25 K78 ["OnImportRequested"]
      238 GETTABLEKS                       R26 R0 K92 ["importFbxRequested"]
      240 SETTABLEKS                       R26 R25 K79 ["OnImportFbxRequested"]
      242 GETTABLEKS                       R26 R0 K93 ["importFromFileWithRestPoseSelectionRequested"]
      244 SETTABLEKS                       R26 R25 K80 ["OnImportFromFileRequested"]
      246 GETTABLEKS                       R26 R0 K94 ["createFromVideoRequested"]
      248 SETTABLEKS                       R26 R25 K81 ["OnCreateFromVideoRequested"]
      250 GETTABLEKS                       R26 R0 K12 ["showPromotePrompt"]
      252 SETTABLEKS                       R26 R25 K82 ["OnPromoteRequested"]
      254 GETTABLEKS                       R26 R0 K95 ["showReduceKeyframesDialog"]
      256 SETTABLEKS                       R26 R25 K83 ["OnReduceKeyframesRequested"]
      258 GETTABLEKS                       R26 R0 K96 ["onSanitizeAnimation"]
      260 SETTABLEKS                       R26 R25 K84 ["OnSanitizeAnimation"]
      262 GETTABLEKS                       R26 R0 K97 ["onGenerateControlRigData"]
      264 SETTABLEKS                       R26 R25 K85 ["OnGenerateControlRigData"]
      266 CALL                             R23 2 1
      267 SETTABLEKS                       R23 R22 K38 ["AnimationClipMenu"]
      269 MOVE                             R23 R8
      270 JUMPIFNOT                        R23 ; [+60]
      271 GETUPVAL                         R23 0
      272 GETTABLEKS                       R23 R23 K22 ["createElement"]
      274 GETUPVAL                         R24 7
      275 DUPTABLE                         R25 K104 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnTextSubmitted", "OnClose"}]
      276 LOADK                            R28 K105 ["Title"]
      277 LOADK                            R29 K106 ["SaveAsNew"]
      278 NAMECALL                         R26 R1 K107 ["getText"]
      280 CALL                             R26 3 1
      281 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      283 LOADK                            R28 K108 ["Dialog"]
      284 LOADK                            R29 K3 ["AnimationName"]
      285 NAMECALL                         R26 R1 K107 ["getText"]
      287 CALL                             R26 3 1
      288 SETTABLEKS                       R26 R25 K99 ["InputText"]
      290 LOADK                            R28 K108 ["Dialog"]
      291 LOADK                            R29 K109 ["SaveLocation"]
      292 NAMECALL                         R26 R1 K107 ["getText"]
      294 CALL                             R26 3 1
      295 SETTABLEKS                       R26 R25 K100 ["NoticeText"]
      297 SETTABLEKS                       R4 R25 K63 ["Text"]
      299 NEWTABLE                         R26 0 2
      301 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      302 LOADK                            R30 K108 ["Dialog"]
      303 LOADK                            R31 K115 ["Cancel"]
      304 NAMECALL                         R28 R1 K107 ["getText"]
      306 CALL                             R28 3 1
      307 SETTABLEKS                       R28 R27 K63 ["Text"]
      309 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      310 LOADK                            R31 K108 ["Dialog"]
      311 LOADK                            R32 K119 ["Save"]
      312 NAMECALL                         R29 R1 K107 ["getText"]
      314 CALL                             R29 3 1
      315 SETTABLEKS                       R29 R28 K63 ["Text"]
      317 SETLIST                          R26 R27 2 [1]
      319 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      321 NEWCLOSURE                       R26 P0
      322 CAPTURE                          VAL R0
      323 CAPTURE                          VAL R2
      324 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      326 GETTABLEKS                       R26 R0 K120 ["hideSaveAsPrompt"]
      328 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      330 CALL                             R23 2 1
      331 SETTABLEKS                       R23 R22 K39 ["SaveAsPrompt"]
      333 MOVE                             R23 R9
      334 JUMPIFNOT                        R23 ; [+47]
      335 GETUPVAL                         R23 0
      336 GETTABLEKS                       R23 R23 K22 ["createElement"]
      338 GETUPVAL                         R24 8
      339 DUPTABLE                         R25 K123 [{"Text", "ButtonWidth", "Buttons", "OnButtonClicked"}]
      340 LOADK                            R28 K124 ["Toast"]
      341 LOADK                            R29 K125 ["AnimationImportModelsDiffer"]
      342 NAMECALL                         R26 R1 K107 ["getText"]
      344 CALL                             R26 3 1
      345 SETTABLEKS                       R26 R25 K63 ["Text"]
      347 GETUPVAL                         R27 1
      348 GETTABLEKS                       R27 R27 K127 ["PROMPT_BUTTON_SIZE"]
      350 GETTABLEKS                       R27 R27 K128 ["X"]
      352 MULK                             R26 R27 K126 [1.5]
      353 SETTABLEKS                       R26 R25 K121 ["ButtonWidth"]
      355 NEWTABLE                         R26 0 2
      357 DUPTABLE                         R27 K129 [{["Key"] = True, ["Text"], ["Style"] = "Round"}]
      358 LOADK                            R30 K124 ["Toast"]
      359 LOADK                            R31 K130 ["AnimationImportUseFBX"]
      360 NAMECALL                         R28 R1 K107 ["getText"]
      362 CALL                             R28 3 1
      363 SETTABLEKS                       R28 R27 K63 ["Text"]
      365 DUPTABLE                         R28 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      366 LOADK                            R31 K124 ["Toast"]
      367 LOADK                            R32 K131 ["AnimationImportUseSelected"]
      368 NAMECALL                         R29 R1 K107 ["getText"]
      370 CALL                             R29 3 1
      371 SETTABLEKS                       R29 R28 K63 ["Text"]
      373 SETLIST                          R26 R27 2 [1]
      375 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      377 NEWCLOSURE                       R26 P1
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      381 CALL                             R23 2 1
      382 SETTABLEKS                       R23 R22 K40 ["ImportAnimModelChoicePrompt"]
      384 MOVE                             R23 R10
      385 JUMPIFNOT                        R23 ; [+138]
      386 GETUPVAL                         R23 0
      387 GETTABLEKS                       R23 R23 K22 ["createElement"]
      389 GETUPVAL                         R24 9
      390 DUPTABLE                         R25 K139 [{"HeaderText", "ButtonWidth", "SelectionGroupHeader", "SelectionGroupOptions", "DefaultRigTypeIndex", "ConditionalDropdownKey", "ConditionalDropdownItems", "TrackSelectionItems", "Buttons", "OnButtonClicked"}]
      391 LOADK                            R28 K108 ["Dialog"]
      392 LOADK                            R29 K140 ["ImportSettings"]
      393 NAMECALL                         R26 R1 K107 ["getText"]
      395 CALL                             R26 3 1
      396 SETTABLEKS                       R26 R25 K132 ["HeaderText"]
      398 GETUPVAL                         R26 1
      399 GETTABLEKS                       R26 R26 K127 ["PROMPT_BUTTON_SIZE"]
      401 GETTABLEKS                       R26 R26 K128 ["X"]
      403 SETTABLEKS                       R26 R25 K121 ["ButtonWidth"]
      405 LOADK                            R28 K108 ["Dialog"]
      406 LOADK                            R29 K141 ["RestPoseSource"]
      407 NAMECALL                         R26 R1 K107 ["getText"]
      409 CALL                             R26 3 1
      410 SETTABLEKS                       R26 R25 K133 ["SelectionGroupHeader"]
      412 GETUPVAL                         R27 10
      413 CALL                             R27 0 1
      414 JUMPIFNOT                        R27 ; [+8]
      415 GETUPVAL                         R26 11
      416 GETTABLEKS                       R26 R26 K142 ["buildRestPoseOptions"]
      418 MOVE                             R27 R1
      419 GETTABLEKS                       R28 R0 K143 ["animationClipNames"]
      421 CALL                             R26 2 1
      422 JUMP                             ; [+20]
      423 NEWTABLE                         R26 0 2
      425 DUPTABLE                         R27 K146 [{["Key"] = "FromRigInFile", ["Text"], ["Default"] = True}]
      426 LOADK                            R30 K108 ["Dialog"]
      427 LOADK                            R31 K147 ["ImportedRig"]
      428 NAMECALL                         R28 R1 K107 ["getText"]
      430 CALL                             R28 3 1
      431 SETTABLEKS                       R28 R27 K63 ["Text"]
      433 DUPTABLE                         R28 K149 [{["Key"] = "FromRigInACE", ["Text"]}]
      434 LOADK                            R31 K108 ["Dialog"]
      435 LOADK                            R32 K150 ["AnimationEditorRig"]
      436 NAMECALL                         R29 R1 K107 ["getText"]
      438 CALL                             R29 3 1
      439 SETTABLEKS                       R29 R28 K63 ["Text"]
      441 SETLIST                          R26 R27 2 [1]
      443 SETTABLEKS                       R26 R25 K134 ["SelectionGroupOptions"]
      445 GETUPVAL                         R27 12
      446 CALL                             R27 0 1
      447 JUMPIFNOT                        R27 ; [+3]
      448 GETTABLEKS                       R26 R0 K151 ["detectedRigTypeIndex"]
      450 JUMP                             ; [+1]
      451 LOADNIL                          R26
      452 SETTABLEKS                       R26 R25 K135 ["DefaultRigTypeIndex"]
      454 GETUPVAL                         R27 10
      455 CALL                             R27 0 1
      456 JUMPIFNOT                        R27 ; [+2]
      457 LOADK                            R26 K152 ["FromCustomClip"]
      458 JUMP                             ; [+1]
      459 LOADNIL                          R26
      460 SETTABLEKS                       R26 R25 K136 ["ConditionalDropdownKey"]
      462 GETUPVAL                         R27 10
      463 CALL                             R27 0 1
      464 JUMPIFNOT                        R27 ; [+3]
      465 GETTABLEKS                       R26 R0 K143 ["animationClipNames"]
      467 JUMP                             ; [+1]
      468 LOADNIL                          R26
      469 SETTABLEKS                       R26 R25 K137 ["ConditionalDropdownItems"]
      471 GETUPVAL                         R27 13
      472 CALL                             R27 0 1
      473 JUMPIFNOT                        R27 ; [+12]
      474 GETTABLEKS                       R27 R0 K143 ["animationClipNames"]
      476 JUMPIFNOT                        R27 ; [+9]
      477 GETTABLEKS                       R28 R0 K143 ["animationClipNames"]
      479 LENGTH                           R27 R28
      480 LOADN                            R28 1
      481 JUMPIFNOTLT                      R28 R27 ; [+4]
      483 GETTABLEKS                       R26 R0 K143 ["animationClipNames"]
      485 JUMP                             ; [+1]
      486 LOADNIL                          R26
      487 SETTABLEKS                       R26 R25 K138 ["TrackSelectionItems"]
      489 NEWTABLE                         R26 0 2
      491 DUPTABLE                         R27 K153 [{["Key"] = "Cancel", ["Text"], ["Style"] = "Round"}]
      492 LOADK                            R30 K108 ["Dialog"]
      493 LOADK                            R31 K115 ["Cancel"]
      494 NAMECALL                         R28 R1 K107 ["getText"]
      496 CALL                             R28 3 1
      497 SETTABLEKS                       R28 R27 K63 ["Text"]
      499 DUPTABLE                         R28 K155 [{["Key"] = "Import", ["Text"], ["Style"] = "RoundPrimary"}]
      500 LOADK                            R31 K156 ["Menu"]
      501 LOADK                            R32 K154 ["Import"]
      502 NAMECALL                         R29 R1 K107 ["getText"]
      504 CALL                             R29 3 1
      505 SETTABLEKS                       R29 R28 K63 ["Text"]
      507 SETLIST                          R26 R27 2 [1]
      509 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      511 NEWCLOSURE                       R26 P2
      512 CAPTURE                          VAL R0
      513 CAPTURE                          UPVAL U12
      514 CAPTURE                          UPVAL U10
      515 CAPTURE                          UPVAL U11
      516 CAPTURE                          UPVAL U14
      517 CAPTURE                          UPVAL U15
      518 CAPTURE                          UPVAL U13
      519 CAPTURE                          UPVAL U16
      520 CAPTURE                          VAL R2
      521 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      523 CALL                             R23 2 1
      524 SETTABLEKS                       R23 R22 K41 ["RestPoseChoicePrompt"]
      526 JUMPIFNOT                        R14 ; [+23]
      527 GETUPVAL                         R23 0
      528 GETTABLEKS                       R23 R23 K22 ["createElement"]
      530 GETUPVAL                         R24 17
      531 DUPTABLE                         R25 K158 [{"Text", "OnCancel"}]
      532 LOADK                            R28 K108 ["Dialog"]
      533 LOADK                            R29 K159 ["ImportingAnimation"]
      534 NAMECALL                         R26 R1 K107 ["getText"]
      536 CALL                             R26 3 1
      537 SETTABLEKS                       R26 R25 K63 ["Text"]
      539 GETUPVAL                         R27 18
      540 CALL                             R27 0 1
      541 JUMPIFNOT                        R27 ; [+3]
      542 GETTABLEKS                       R26 R0 K160 ["cancelImport"]
      544 JUMPIF                           R26 ; [+1]
      545 LOADNIL                          R26
      546 SETTABLEKS                       R26 R25 K157 ["OnCancel"]
      548 CALL                             R23 2 1
      549 JUMPIF                           R23 ; [+1]
      550 LOADNIL                          R23
      551 SETTABLEKS                       R23 R22 K42 ["InProgressCover"]
      553 MOVE                             R23 R11
      554 JUMPIFNOT                        R23 ; [+49]
      555 GETUPVAL                         R23 0
      556 GETTABLEKS                       R23 R23 K22 ["createElement"]
      558 GETUPVAL                         R24 19
      559 DUPTABLE                         R25 K161 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      560 LOADK                            R28 K156 ["Menu"]
      561 LOADK                            R29 K162 ["Overwrite_Migrated"]
      562 DUPTABLE                         R30 K163 [{"overwriteName"}]
      563 SETTABLEKS                       R11 R30 K10 ["overwriteName"]
      565 NAMECALL                         R26 R1 K107 ["getText"]
      567 CALL                             R26 4 1
      568 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      570 NEWTABLE                         R26 0 2
      572 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      573 LOADK                            R30 K108 ["Dialog"]
      574 LOADK                            R31 K164 ["No"]
      575 NAMECALL                         R28 R1 K107 ["getText"]
      577 CALL                             R28 3 1
      578 SETTABLEKS                       R28 R27 K63 ["Text"]
      580 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      581 LOADK                            R31 K108 ["Dialog"]
      582 LOADK                            R32 K165 ["Yes"]
      583 NAMECALL                         R29 R1 K107 ["getText"]
      585 CALL                             R29 3 1
      586 SETTABLEKS                       R29 R28 K63 ["Text"]
      588 SETLIST                          R26 R27 2 [1]
      590 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      592 NEWCLOSURE                       R26 P3
      593 CAPTURE                          VAL R0
      594 CAPTURE                          VAL R2
      595 CAPTURE                          VAL R16
      596 CAPTURE                          VAL R11
      597 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      599 GETTABLEKS                       R26 R0 K166 ["hideOverwritePrompt"]
      601 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      603 CALL                             R23 2 1
      604 SETTABLEKS                       R23 R22 K43 ["OverwritePrompt"]
      606 JUMPIFNOT                        R13 ; [+45]
      607 GETUPVAL                         R23 0
      608 GETTABLEKS                       R23 R23 K22 ["createElement"]
      610 GETUPVAL                         R24 19
      611 DUPTABLE                         R25 K161 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      612 LOADK                            R28 K108 ["Dialog"]
      613 LOADK                            R29 K44 ["PromotePrompt"]
      614 NAMECALL                         R26 R1 K107 ["getText"]
      616 CALL                             R26 3 1
      617 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      619 NEWTABLE                         R26 0 2
      621 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      622 LOADK                            R30 K108 ["Dialog"]
      623 LOADK                            R31 K115 ["Cancel"]
      624 NAMECALL                         R28 R1 K107 ["getText"]
      626 CALL                             R28 3 1
      627 SETTABLEKS                       R28 R27 K63 ["Text"]
      629 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      630 LOADK                            R31 K108 ["Dialog"]
      631 LOADK                            R32 K167 ["Confirm"]
      632 NAMECALL                         R29 R1 K107 ["getText"]
      634 CALL                             R29 3 1
      635 SETTABLEKS                       R29 R28 K63 ["Text"]
      637 SETLIST                          R26 R27 2 [1]
      639 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      641 NEWCLOSURE                       R26 P4
      642 CAPTURE                          VAL R0
      643 CAPTURE                          VAL R2
      644 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      646 GETTABLEKS                       R26 R0 K168 ["hidePromotePrompt"]
      648 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      650 CALL                             R23 2 1
      651 JUMPIF                           R23 ; [+1]
      652 LOADNIL                          R23
      653 SETTABLEKS                       R23 R22 K44 ["PromotePrompt"]
      655 MOVE                             R23 R12
      656 JUMPIFNOT                        R23 ; [+72]
      657 GETUPVAL                         R23 0
      658 GETTABLEKS                       R23 R23 K22 ["createElement"]
      660 GETUPVAL                         R24 7
      661 DUPTABLE                         R25 K169 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnButtonClicked", "OnTextSubmitted", "OnClose"}]
      662 LOADK                            R28 K105 ["Title"]
      663 LOADK                            R29 K170 ["ConfirmSave"]
      664 NAMECALL                         R26 R1 K107 ["getText"]
      666 CALL                             R26 3 1
      667 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      669 LOADK                            R28 K108 ["Dialog"]
      670 LOADK                            R29 K3 ["AnimationName"]
      671 NAMECALL                         R26 R1 K107 ["getText"]
      673 CALL                             R26 3 1
      674 SETTABLEKS                       R26 R25 K99 ["InputText"]
      676 LOADK                            R28 K108 ["Dialog"]
      677 LOADK                            R29 K109 ["SaveLocation"]
      678 NAMECALL                         R26 R1 K107 ["getText"]
      680 CALL                             R26 3 1
      681 SETTABLEKS                       R26 R25 K100 ["NoticeText"]
      683 SETTABLEKS                       R4 R25 K63 ["Text"]
      685 NEWTABLE                         R26 0 3
      687 DUPTABLE                         R27 K172 [{["Key"] = "Delete", ["Text"], ["Style"] = "Round"}]
      688 LOADK                            R30 K108 ["Dialog"]
      689 LOADK                            R31 K171 ["Delete"]
      690 NAMECALL                         R28 R1 K107 ["getText"]
      692 CALL                             R28 3 1
      693 SETTABLEKS                       R28 R27 K63 ["Text"]
      695 DUPTABLE                         R28 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      696 LOADK                            R31 K108 ["Dialog"]
      697 LOADK                            R32 K115 ["Cancel"]
      698 NAMECALL                         R29 R1 K107 ["getText"]
      700 CALL                             R29 3 1
      701 SETTABLEKS                       R29 R28 K63 ["Text"]
      703 DUPTABLE                         R29 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      704 LOADK                            R32 K108 ["Dialog"]
      705 LOADK                            R33 K119 ["Save"]
      706 NAMECALL                         R30 R1 K107 ["getText"]
      708 CALL                             R30 3 1
      709 SETTABLEKS                       R30 R29 K63 ["Text"]
      711 SETLIST                          R26 R27 3 [1]
      713 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      715 NEWCLOSURE                       R26 P5
      716 CAPTURE                          VAL R0
      717 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      719 NEWCLOSURE                       R26 P6
      720 CAPTURE                          VAL R2
      721 CAPTURE                          VAL R0
      722 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      724 GETTABLEKS                       R26 R0 K173 ["hideLoadNewPrompt"]
      726 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      728 CALL                             R23 2 1
      729 SETTABLEKS                       R23 R22 K45 ["LoadNewPrompt"]
      731 MOVE                             R23 R17
      732 JUMPIFNOT                        R23 ; [+43]
      733 GETUPVAL                         R23 0
      734 GETTABLEKS                       R23 R23 K22 ["createElement"]
      736 GETUPVAL                         R24 19
      737 DUPTABLE                         R25 K161 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      738 LOADK                            R28 K174 ["AnimationFromVideo"]
      739 LOADK                            R29 K175 ["TutorialText"]
      740 NAMECALL                         R26 R1 K107 ["getText"]
      742 CALL                             R26 3 1
      743 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      745 NEWTABLE                         R26 0 2
      747 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      748 LOADK                            R30 K108 ["Dialog"]
      749 LOADK                            R31 K115 ["Cancel"]
      750 NAMECALL                         R28 R1 K107 ["getText"]
      752 CALL                             R28 3 1
      753 SETTABLEKS                       R28 R27 K63 ["Text"]
      755 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      756 LOADK                            R31 K174 ["AnimationFromVideo"]
      757 LOADK                            R32 K176 ["ChooseVideo"]
      758 NAMECALL                         R29 R1 K107 ["getText"]
      760 CALL                             R29 3 1
      761 SETTABLEKS                       R29 R28 K63 ["Text"]
      763 SETLIST                          R26 R27 2 [1]
      765 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      767 NEWCLOSURE                       R26 P7
      768 CAPTURE                          VAL R0
      769 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      771 NEWCLOSURE                       R26 P8
      772 CAPTURE                          VAL R0
      773 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      775 CALL                             R23 2 1
      776 SETTABLEKS                       R23 R22 K46 ["CreateAnimationFromVideoTutorial"]
      778 MOVE                             R23 R18
      779 JUMPIFNOT                        R23 ; [+50]
      780 GETUPVAL                         R23 0
      781 GETTABLEKS                       R23 R23 K22 ["createElement"]
      783 GETUPVAL                         R24 19
      784 DUPTABLE                         R25 K177 [{"Size", "PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      785 GETIMPORT                        R26 K26 [UDim2.new]
      787 LOADN                            R27 0
      788 GETUPVAL                         R28 1
      789 GETTABLEKS                       R28 R28 K178 ["PROMPT_SIZE"]
      791 GETTABLEKS                       R28 R28 K179 ["Width"]
      793 GETTABLEKS                       R28 R28 K180 ["Offset"]
      795 LOADN                            R29 0
      796 LOADN                            R30 180
      797 CALL                             R26 4 1
      798 SETTABLEKS                       R26 R25 K29 ["Size"]
      800 LOADK                            R28 K174 ["AnimationFromVideo"]
      801 LOADK                            R29 K181 ["AgeRestricted"]
      802 NAMECALL                         R26 R1 K107 ["getText"]
      804 CALL                             R26 3 1
      805 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      807 NEWTABLE                         R26 0 1
      809 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      810 LOADK                            R30 K108 ["Dialog"]
      811 LOADK                            R31 K115 ["Cancel"]
      812 NAMECALL                         R28 R1 K107 ["getText"]
      814 CALL                             R28 3 1
      815 SETTABLEKS                       R28 R27 K63 ["Text"]
      817 SETLIST                          R26 R27 1 [1]
      819 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      821 NEWCLOSURE                       R26 P9
      822 CAPTURE                          VAL R0
      823 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      825 NEWCLOSURE                       R26 P10
      826 CAPTURE                          VAL R0
      827 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      829 CALL                             R23 2 1
      830 SETTABLEKS                       R23 R22 K47 ["CreateAnimationFromVideoAgeGate"]
      832 CALL                             R19 3 -1
      833 RETURN                           R19 -1

PROTO_50:
        0 DUPTABLE                         R2 K4 [{"Analytics", "IsDirty", "ReadOnly", "RootInstance"}]
        1 GETTABLEKS                       R3 R0 K0 ["Analytics"]
        3 SETTABLEKS                       R3 R2 K0 ["Analytics"]
        5 GETTABLEKS                       R3 R0 K5 ["Status"]
        7 GETTABLEKS                       R3 R3 K1 ["IsDirty"]
        9 SETTABLEKS                       R3 R2 K1 ["IsDirty"]
       11 GETTABLEKS                       R3 R0 K5 ["Status"]
       13 GETTABLEKS                       R3 R3 K2 ["ReadOnly"]
       15 SETTABLEKS                       R3 R2 K2 ["ReadOnly"]
       17 GETUPVAL                         R4 0
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+5]
       20 GETTABLEKS                       R3 R0 K5 ["Status"]
       22 GETTABLEKS                       R3 R3 K3 ["RootInstance"]
       24 JUMPIF                           R3 ; [+4]
       25 GETTABLEKS                       R3 R0 K5 ["Status"]
       27 GETTABLEKS                       R3 R3 K6 ["RooInstance"]
       29 SETTABLEKS                       R3 R2 K3 ["RootInstance"]
       31 RETURN                           R2 1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 CALL                             R7 6 -1
        9 CALL                             R6 -1 0
       10 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"Name"}]
        3 SETTABLEKS                       R0 R3 K0 ["Name"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_69:
        0 DUPTABLE                         R1 K18 [{"CreateNewAnimation", "LoadAnimationData", "LoadAnimation", "SaveAnimation", "SavePassedInAnimation", "ImportKeyframeSequence", "ImportFBXAnimationUserMayChooseModel", "CreateFromVideoAndImportFBXAnimationUserMayChooseModel", "GenerateControlRigData", "ImportLoadedFBXAnimation", "SanitizeAnimation", "SetAnimationName", "SetInReviewState", "SetIsDirty", "SetIsLegacyAnimSaves", "SetPlayState", "SetReduceKeyframesDialogMode", "LoadImportedKeyframeSequence"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["CreateNewAnimation"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["LoadAnimationData"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["LoadAnimation"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SaveAnimation"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SavePassedInAnimation"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["ImportKeyframeSequence"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["ImportFBXAnimationUserMayChooseModel"]
       36 NEWCLOSURE                       R2 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K7 ["CreateFromVideoAndImportFBXAnimationUserMayChooseModel"]
       41 NEWCLOSURE                       R2 P8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 SETTABLEKS                       R2 R1 K8 ["GenerateControlRigData"]
       46 NEWCLOSURE                       R2 P9
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U9
       49 SETTABLEKS                       R2 R1 K9 ["ImportLoadedFBXAnimation"]
       51 NEWCLOSURE                       R2 P10
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U10
       54 SETTABLEKS                       R2 R1 K10 ["SanitizeAnimation"]
       56 NEWCLOSURE                       R2 P11
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R2 R1 K11 ["SetAnimationName"]
       61 NEWCLOSURE                       R2 P12
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U12
       64 SETTABLEKS                       R2 R1 K12 ["SetInReviewState"]
       66 NEWCLOSURE                       R2 P13
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U13
       69 SETTABLEKS                       R2 R1 K13 ["SetIsDirty"]
       71 NEWCLOSURE                       R2 P14
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U14
       74 SETTABLEKS                       R2 R1 K14 ["SetIsLegacyAnimSaves"]
       76 NEWCLOSURE                       R2 P15
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U15
       79 SETTABLEKS                       R2 R1 K15 ["SetPlayState"]
       81 NEWCLOSURE                       R2 P16
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U16
       84 SETTABLEKS                       R2 R1 K16 ["SetReduceKeyframesDialogMode"]
       86 NEWCLOSURE                       R2 P17
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U17
       89 SETTABLEKS                       R2 R1 K17 ["LoadImportedKeyframeSequence"]
       91 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetImportService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [newproxy]
        9 LOADB                            R2 1
       10 CALL                             R1 1 1
       11 GETIMPORT                        R2 K5 [newproxy]
       13 LOADB                            R3 1
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K5 [newproxy]
       17 LOADB                            R4 1
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K5 [newproxy]
       21 LOADB                            R5 1
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K5 [newproxy]
       25 LOADB                            R6 1
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K7 [script]
       29 LOADK                            R8 K8 ["AnimationClipEditor"]
       30 NAMECALL                         R6 R6 K9 ["FindFirstAncestor"]
       32 CALL                             R6 2 1
       33 GETIMPORT                        R7 K11 [require]
       35 GETTABLEKS                       R8 R6 K12 ["Packages"]
       37 GETTABLEKS                       R8 R8 K13 ["Framework"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K11 [require]
       42 GETTABLEKS                       R9 R6 K14 ["LuaFlags"]
       44 GETTABLEKS                       R9 R9 K15 ["GetFFlagACEImportCancelButton"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K11 [require]
       49 GETTABLEKS                       R10 R6 K14 ["LuaFlags"]
       51 GETTABLEKS                       R10 R10 K16 ["GetFFlagACEImportRigType"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K11 [require]
       56 GETTABLEKS                       R11 R6 K14 ["LuaFlags"]
       58 GETTABLEKS                       R11 R11 K17 ["GetFFlagACEImportSettingsDefaults"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K11 [require]
       63 GETTABLEKS                       R12 R6 K12 ["Packages"]
       65 GETTABLEKS                       R12 R12 K18 ["Roact"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K11 [require]
       70 GETTABLEKS                       R13 R6 K12 ["Packages"]
       72 GETTABLEKS                       R13 R13 K19 ["RoactRodux"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K11 [require]
       77 GETTABLEKS                       R14 R6 K20 ["Src"]
       79 GETTABLEKS                       R14 R14 K21 ["Util"]
       81 GETTABLEKS                       R14 R14 K22 ["Constants"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K11 [require]
       86 GETTABLEKS                       R15 R6 K20 ["Src"]
       88 GETTABLEKS                       R15 R15 K21 ["Util"]
       90 GETTABLEKS                       R15 R15 K23 ["RigSerialization"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K26 [UDim.new]
       95 LOADN                            R16 0
       96 GETTABLEKS                       R17 R13 K27 ["INDENT_PADDING"]
       98 CALL                             R15 2 1
       99 GETTABLEKS                       R16 R7 K28 ["ContextServices"]
      101 GETTABLEKS                       R17 R16 K29 ["withContext"]
      103 GETTABLEKS                       R18 R6 K20 ["Src"]
      105 GETTABLEKS                       R18 R18 K30 ["Actions"]
      107 GETIMPORT                        R19 K11 [require]
      109 GETTABLEKS                       R20 R18 K31 ["SetInReviewState"]
      111 CALL                             R19 1 1
      112 GETIMPORT                        R20 K11 [require]
      114 GETTABLEKS                       R21 R18 K32 ["SetIsDirty"]
      116 CALL                             R20 1 1
      117 GETIMPORT                        R21 K11 [require]
      119 GETTABLEKS                       R22 R18 K33 ["SetIsLegacyAnimSaves"]
      121 CALL                             R21 1 1
      122 GETIMPORT                        R22 K11 [require]
      124 GETTABLEKS                       R23 R18 K34 ["SetPlayState"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K11 [require]
      129 GETTABLEKS                       R24 R18 K35 ["SetReduceKeyframesDialogMode"]
      131 CALL                             R23 1 1
      132 GETTABLEKS                       R24 R6 K20 ["Src"]
      134 GETTABLEKS                       R24 R24 K36 ["Components"]
      136 GETIMPORT                        R25 K11 [require]
      138 GETTABLEKS                       R26 R24 K37 ["Toast"]
      140 GETTABLEKS                       R26 R26 K38 ["ActionToast"]
      142 CALL                             R25 1 1
      143 GETIMPORT                        R26 K11 [require]
      145 GETTABLEKS                       R27 R24 K39 ["AnimationClipMenu"]
      147 CALL                             R26 1 1
      148 GETIMPORT                        R27 K11 [require]
      150 GETTABLEKS                       R28 R24 K40 ["ContextButton"]
      152 CALL                             R27 1 1
      153 GETIMPORT                        R28 K11 [require]
      155 GETTABLEKS                       R29 R24 K41 ["EditEventsDialog"]
      157 GETTABLEKS                       R29 R29 K42 ["FocusedPrompt"]
      159 CALL                             R28 1 1
      160 GETIMPORT                        R29 K11 [require]
      162 GETTABLEKS                       R30 R24 K43 ["MultipleOptionPrompt"]
      164 CALL                             R29 1 1
      165 GETIMPORT                        R30 K11 [require]
      167 GETTABLEKS                       R31 R24 K44 ["InProgressCover"]
      169 CALL                             R30 1 1
      170 GETIMPORT                        R31 K11 [require]
      172 GETTABLEKS                       R32 R24 K45 ["TextEntryPrompt"]
      174 CALL                             R31 1 1
      175 GETTABLEKS                       R32 R6 K20 ["Src"]
      177 GETTABLEKS                       R32 R32 K46 ["Thunks"]
      179 GETIMPORT                        R33 K11 [require]
      181 GETTABLEKS                       R34 R32 K47 ["Exporting"]
      183 GETTABLEKS                       R34 R34 K48 ["CreateFromVideoAndImportFBXAnimationUserMayChooseModel"]
      185 CALL                             R33 1 1
      186 GETIMPORT                        R34 K11 [require]
      188 GETTABLEKS                       R35 R32 K49 ["CreateNewAnimation"]
      190 CALL                             R34 1 1
      191 GETIMPORT                        R35 K11 [require]
      193 GETTABLEKS                       R36 R32 K50 ["GenerateControlRigData"]
      195 CALL                             R35 1 1
      196 GETIMPORT                        R36 K11 [require]
      198 GETTABLEKS                       R37 R32 K47 ["Exporting"]
      200 GETTABLEKS                       R37 R37 K51 ["ImportFBXAnimationUserMayChooseModel"]
      202 CALL                             R36 1 1
      203 GETIMPORT                        R37 K11 [require]
      205 GETTABLEKS                       R38 R32 K47 ["Exporting"]
      207 GETTABLEKS                       R38 R38 K52 ["ImportKeyframeSequence"]
      209 CALL                             R37 1 1
      210 GETIMPORT                        R38 K11 [require]
      212 GETTABLEKS                       R39 R32 K47 ["Exporting"]
      214 GETTABLEKS                       R39 R39 K53 ["ImportLoadedFBXAnimation"]
      216 CALL                             R38 1 1
      217 GETIMPORT                        R39 K11 [require]
      219 GETTABLEKS                       R40 R32 K47 ["Exporting"]
      221 GETTABLEKS                       R40 R40 K54 ["LoadAnimation"]
      223 CALL                             R39 1 1
      224 GETIMPORT                        R40 K11 [require]
      226 GETTABLEKS                       R41 R32 K55 ["LoadAnimationData"]
      228 CALL                             R40 1 1
      229 GETIMPORT                        R41 K11 [require]
      231 GETTABLEKS                       R42 R32 K56 ["SanitizeAnimation"]
      233 CALL                             R41 1 1
      234 GETIMPORT                        R42 K11 [require]
      236 GETTABLEKS                       R43 R32 K47 ["Exporting"]
      238 GETTABLEKS                       R43 R43 K57 ["SaveAnimation"]
      240 CALL                             R42 1 1
      241 GETIMPORT                        R43 K11 [require]
      243 GETTABLEKS                       R44 R32 K58 ["UpdateMetadata"]
      245 CALL                             R43 1 1
      246 GETIMPORT                        R44 K11 [require]
      248 GETTABLEKS                       R45 R32 K47 ["Exporting"]
      250 GETTABLEKS                       R45 R45 K59 ["LoadImportedKeyframeSequence"]
      252 CALL                             R44 1 1
      253 GETIMPORT                        R45 K11 [require]
      255 GETTABLEKS                       R46 R32 K47 ["Exporting"]
      257 GETTABLEKS                       R46 R46 K60 ["SavePassedInAnimation"]
      259 CALL                             R45 1 1
      260 GETTABLEKS                       R46 R7 K61 ["UI"]
      262 GETTABLEKS                       R47 R46 K62 ["Pane"]
      264 GETTABLEKS                       R48 R46 K63 ["TextInput"]
      266 GETIMPORT                        R49 K11 [require]
      268 GETTABLEKS                       R50 R6 K14 ["LuaFlags"]
      270 GETTABLEKS                       R50 R50 K64 ["GetFFlagACEExtendedRestPoseOptions"]
      272 CALL                             R49 1 1
      273 GETIMPORT                        R50 K11 [require]
      275 GETTABLEKS                       R51 R6 K20 ["Src"]
      277 GETTABLEKS                       R51 R51 K21 ["Util"]
      279 GETTABLEKS                       R51 R51 K65 ["RestPoseUtils"]
      281 CALL                             R50 1 1
      282 GETIMPORT                        R51 K11 [require]
      284 GETTABLEKS                       R52 R6 K14 ["LuaFlags"]
      286 GETTABLEKS                       R52 R52 K66 ["GetFFlagAnimationExportSupport"]
      288 CALL                             R51 1 1
      289 GETIMPORT                        R52 K11 [require]
      291 GETTABLEKS                       R53 R6 K14 ["LuaFlags"]
      293 GETTABLEKS                       R53 R53 K67 ["GetFFlagACEImportTrackSelection"]
      295 CALL                             R52 1 1
      296 GETTABLEKS                       R53 R11 K68 ["PureComponent"]
      298 LOADK                            R55 K69 ["AnimationClipDropdown"]
      299 NAMECALL                         R53 R53 K70 ["extend"]
      301 CALL                             R53 2 1
      302 DUPCLOSURE                       R54 K71 [PROTO_37]
      303 CAPTURE                          VAL R13
      304 CAPTURE                          VAL R11
      305 CAPTURE                          VAL R10
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R3
      308 CAPTURE                          VAL R0
      309 CAPTURE                          VAL R4
      310 CAPTURE                          VAL R49
      311 CAPTURE                          VAL R50
      312 CAPTURE                          VAL R5
      313 CAPTURE                          VAL R1
      314 SETTABLEKS                       R54 R53 K72 ["init"]
      316 DUPCLOSURE                       R54 K73 [PROTO_49]
      317 CAPTURE                          VAL R11
      318 CAPTURE                          VAL R13
      319 CAPTURE                          VAL R15
      320 CAPTURE                          VAL R47
      321 CAPTURE                          VAL R48
      322 CAPTURE                          VAL R27
      323 CAPTURE                          VAL R26
      324 CAPTURE                          VAL R31
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R29
      327 CAPTURE                          VAL R49
      328 CAPTURE                          VAL R50
      329 CAPTURE                          VAL R10
      330 CAPTURE                          VAL R52
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R9
      333 CAPTURE                          VAL R14
      334 CAPTURE                          VAL R30
      335 CAPTURE                          VAL R8
      336 CAPTURE                          VAL R28
      337 SETTABLEKS                       R54 R53 K74 ["render"]
      339 MOVE                             R54 R17
      340 DUPTABLE                         R55 K79 [{"Stylizer", "Localization", "Plugin", "Analytics"}]
      341 GETTABLEKS                       R56 R16 K75 ["Stylizer"]
      343 SETTABLEKS                       R56 R55 K75 ["Stylizer"]
      345 GETTABLEKS                       R56 R16 K76 ["Localization"]
      347 SETTABLEKS                       R56 R55 K76 ["Localization"]
      349 GETTABLEKS                       R56 R16 K77 ["Plugin"]
      351 SETTABLEKS                       R56 R55 K77 ["Plugin"]
      353 GETTABLEKS                       R56 R16 K78 ["Analytics"]
      355 SETTABLEKS                       R56 R55 K78 ["Analytics"]
      357 CALL                             R54 1 1
      358 MOVE                             R55 R53
      359 CALL                             R54 1 1
      360 MOVE                             R53 R54
      361 DUPCLOSURE                       R54 K80 [PROTO_50]
      362 CAPTURE                          VAL R51
      363 DUPCLOSURE                       R55 K81 [PROTO_69]
      364 CAPTURE                          VAL R34
      365 CAPTURE                          VAL R40
      366 CAPTURE                          VAL R39
      367 CAPTURE                          VAL R42
      368 CAPTURE                          VAL R45
      369 CAPTURE                          VAL R37
      370 CAPTURE                          VAL R36
      371 CAPTURE                          VAL R33
      372 CAPTURE                          VAL R35
      373 CAPTURE                          VAL R38
      374 CAPTURE                          VAL R41
      375 CAPTURE                          VAL R43
      376 CAPTURE                          VAL R19
      377 CAPTURE                          VAL R20
      378 CAPTURE                          VAL R21
      379 CAPTURE                          VAL R22
      380 CAPTURE                          VAL R23
      381 CAPTURE                          VAL R44
      382 GETTABLEKS                       R56 R12 K82 ["connect"]
      384 MOVE                             R57 R54
      385 MOVE                             R58 R55
      386 CALL                             R56 2 1
      387 MOVE                             R57 R53
      388 CALL                             R56 1 -1
      389 RETURN                           R56 -1
