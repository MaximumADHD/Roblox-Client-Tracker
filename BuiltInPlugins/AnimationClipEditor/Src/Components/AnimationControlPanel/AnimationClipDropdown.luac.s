PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ReadOnly"]
        5 JUMPIF                           R0 ; [+19]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["SetPlayState"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["PLAY_STATE"]
       14 GETTABLEKS                       R1 R1 K4 ["Pause"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 DUPTABLE                         R2 K6 [{"showMenu"}]
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K5 ["showMenu"]
       22 NAMECALL                         R0 R0 K7 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K1 [{"showSaveAsPrompt"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showSaveAsPrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showSaveAsPrompt"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showSaveAsPrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showInProgressCover"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showInProgressCover"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showInProgressCover"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showInProgressCover"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showImportAnimModelChoicePrompt"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showImportAnimModelChoicePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showImportAnimModelChoicePrompt"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showImportAnimModelChoicePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showRestPoseChoicePrompt"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showRestPoseChoicePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showRestPoseChoicePrompt"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showRestPoseChoicePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showImportAnimModelChoicePrompt"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showImportAnimModelChoicePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetReduceKeyframesDialogMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["FromMenu"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showPromotePrompt"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showPromotePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showPromotePrompt"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showPromotePrompt"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"loadingName", "isActionLegacyAnimSaves"}]
        2 SETTABLEKS                       R0 R4 K0 ["loadingName"]
        4 SETTABLEKS                       R1 R4 K1 ["isActionLegacyAnimSaves"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showCreateAnimationFromVideoTutorial"}]
        2 SETTABLEKS                       R0 R3 K0 ["showCreateAnimationFromVideoTutorial"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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
       27 GETTABLEKS                       R1 R1 K5 ["ImportFBXAnimationUserMayChooseModel"]
       29 MOVE                             R2 R0
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K0 ["props"]
       34 GETTABLEKS                       R4 R4 K6 ["Analytics"]
       36 CALL                             R1 3 0
       37 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["PickMeshFileWithPrompt"]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_23:
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

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["requestFilePicker"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+33]
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K2 ["filePath"]
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+22]
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
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K8 ["showRestPoseChoicePrompt"]
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       20 GETTABLEKS                       R0 R0 K4 ["createNewClip"]
       22 CALL                             R0 0 0
       23 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SanitizeAnimation"]
        5 GETTABLEKS                       R2 R0 K2 ["Analytics"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_34:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["GenerateControlRigData"]
        5 GETTABLEKS                       R2 R0 K2 ["Analytics"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R1 K10 [{"showMenu", "showSaveAsPrompt", "showImportAnimModelChoicePrompt", "showInProgressCover", "showPromotePrompt", "overwriteName", "loadingName", "isActionLegacyAnimSaves", "showCreateAnimationFromVideoTutorial", "filePath"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showMenu"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showSaveAsPrompt"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["showImportAnimModelChoicePrompt"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["showInProgressCover"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["showPromotePrompt"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K5 ["overwriteName"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K6 ["loadingName"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K7 ["isActionLegacyAnimSaves"]
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R1 K8 ["showCreateAnimationFromVideoTutorial"]
       28 LOADK                            R2 K11 [""]
       29 SETTABLEKS                       R2 R1 K9 ["filePath"]
       31 SETTABLEKS                       R1 R0 K12 ["state"]
       33 NEWCLOSURE                       R1 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       38 NEWCLOSURE                       R1 P1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K13 ["hideMenu"]
       42 NEWCLOSURE                       R1 P2
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K14 ["showOverwritePrompt"]
       46 NEWCLOSURE                       R1 P3
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U1
       49 SETTABLEKS                       R1 R0 K15 ["hideOverwritePrompt"]
       51 NEWCLOSURE                       R1 P4
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K1 ["showSaveAsPrompt"]
       55 NEWCLOSURE                       R1 P5
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R1 R0 K16 ["hideSaveAsPrompt"]
       59 NEWCLOSURE                       R1 P6
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R1 R0 K3 ["showInProgressCover"]
       63 NEWCLOSURE                       R1 P7
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R1 R0 K17 ["hideInProgressCover"]
       67 NEWCLOSURE                       R1 P8
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R1 R0 K2 ["showImportAnimModelChoicePrompt"]
       71 NEWCLOSURE                       R1 P9
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R1 R0 K18 ["hideImportAnimModelChoicePrompt"]
       75 NEWCLOSURE                       R1 P10
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R1 R0 K19 ["showRestPoseChoicePrompt"]
       79 NEWCLOSURE                       R1 P11
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R1 R0 K20 ["hideRestPoseChoicePrompt"]
       83 NEWCLOSURE                       R1 P12
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R1 R0 K18 ["hideImportAnimModelChoicePrompt"]
       87 NEWCLOSURE                       R1 P13
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U0
       90 SETTABLEKS                       R1 R0 K21 ["showReduceKeyframesDialog"]
       92 NEWCLOSURE                       R1 P14
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R1 R0 K4 ["showPromotePrompt"]
       96 NEWCLOSURE                       R1 P15
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R1 R0 K22 ["hidePromotePrompt"]
      100 NEWCLOSURE                       R1 P16
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R1 R0 K23 ["showLoadNewPrompt"]
      104 NEWCLOSURE                       R1 P17
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U1
      107 SETTABLEKS                       R1 R0 K24 ["hideLoadNewPrompt"]
      109 NEWCLOSURE                       R1 P18
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R1 R0 K25 ["setShowCreateAnimationFromVideoTutorial"]
      113 NEWCLOSURE                       R1 P19
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R1 R0 K26 ["continueAfterCreateAnimationFromVideoTutorial"]
      117 NEWCLOSURE                       R1 P20
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U2
      120 SETTABLEKS                       R1 R0 K27 ["importRequested"]
      122 NEWCLOSURE                       R1 P21
      123 CAPTURE                          VAL R0
      124 CAPTURE                          UPVAL U3
      125 SETTABLEKS                       R1 R0 K28 ["importFbxRequested"]
      127 DUPCLOSURE                       R1 K29 [PROTO_22]
      128 CAPTURE                          UPVAL U4
      129 SETTABLEKS                       R1 R0 K30 ["requestFilePicker"]
      131 NEWCLOSURE                       R1 P23
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U4
      134 SETTABLEKS                       R1 R0 K31 ["importFromFile"]
      136 NEWCLOSURE                       R1 P24
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U5
      139 SETTABLEKS                       R1 R0 K32 ["importFromFileRequested"]
      141 NEWCLOSURE                       R1 P25
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          UPVAL U4
      145 CAPTURE                          UPVAL U7
      146 SETTABLEKS                       R1 R0 K33 ["importFromFileWithRestPoseSelection"]
      148 NEWCLOSURE                       R1 P26
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U3
      151 SETTABLEKS                       R1 R0 K34 ["importFromFileWithRestPoseSelectionRequested"]
      153 NEWCLOSURE                       R1 P27
      154 CAPTURE                          VAL R0
      155 SETTABLEKS                       R1 R0 K35 ["startAnimationFromVideoFlow"]
      157 NEWCLOSURE                       R1 P28
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U8
      160 SETTABLEKS                       R1 R0 K36 ["createFromVideoRequested"]
      162 NEWCLOSURE                       R1 P29
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U9
      165 SETTABLEKS                       R1 R0 K37 ["createNew"]
      167 NEWCLOSURE                       R1 P30
      168 CAPTURE                          VAL R0
      169 SETTABLEKS                       R1 R0 K38 ["createNewClip"]
      171 NEWCLOSURE                       R1 P31
      172 CAPTURE                          VAL R0
      173 SETTABLEKS                       R1 R0 K39 ["loadNew"]
      175 NEWCLOSURE                       R1 P32
      176 CAPTURE                          VAL R0
      177 CAPTURE                          UPVAL U9
      178 CAPTURE                          UPVAL U2
      179 CAPTURE                          UPVAL U3
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          UPVAL U5
      182 SETTABLEKS                       R1 R0 K40 ["handleLoadNewPrompt"]
      184 NEWCLOSURE                       R1 P33
      185 CAPTURE                          VAL R0
      186 SETTABLEKS                       R1 R0 K41 ["onSanitizeAnimation"]
      188 DUPCLOSURE                       R1 K42 [PROTO_34]
      189 SETTABLEKS                       R1 R0 K43 ["validateAnimationName"]
      191 NEWCLOSURE                       R1 P35
      192 CAPTURE                          VAL R0
      193 SETTABLEKS                       R1 R0 K44 ["onGenerateControlRigData"]
      195 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["hideRestPoseChoicePrompt"]
        3 CALL                             R4 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Cancel"] ; [+10]
        6 GETUPVAL                         R4 0
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["filePath"]
       10 GETUPVAL                         R4 0
       11 LOADNIL                          R5
       12 SETTABLEKS                       R5 R4 K3 ["importSession"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["showInProgressCover"]
       18 CALL                             R4 0 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["props"]
       22 GETTABLEKS                       R4 R4 K6 ["RootInstance"]
       24 LOADNIL                          R5
       25 GETUPVAL                         R6 1
       26 CALL                             R6 0 1
       27 JUMPIFNOT                        R6 ; [+7]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K7 ["mapRestPoseKeyToEnum"]
       31 MOVE                             R7 R1
       32 CALL                             R6 1 1
       33 MOVE                             R5 R6
       34 JUMP                             ; [+12]
       35 JUMPIFNOTEQKS                    R1 K8 ["FromRigInFile"] ; [+4]
       37 GETIMPORT                        R5 K11 [Enum.RestPoseModel.FromRigInFile]
       39 JUMP                             ; [+7]
       40 JUMPIFNOTEQKS                    R1 K12 ["FromRigInACE"] ; [+4]
       42 GETIMPORT                        R5 K13 [Enum.RestPoseModel.FromRigInACE]
       44 JUMP                             ; [+2]
       45 GETIMPORT                        R5 K11 [Enum.RestPoseModel.FromRigInFile]
       47 LOADNIL                          R6
       48 GETUPVAL                         R7 1
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+12]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K3 ["importSession"]
       54 JUMPIFNOT                        R7 ; [+8]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K3 ["importSession"]
       58 GETUPVAL                         R7 0
       59 LOADNIL                          R8
       60 SETTABLEKS                       R8 R7 K3 ["importSession"]
       62 JUMP                             ; [+8]
       63 GETUPVAL                         R7 3
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K2 ["filePath"]
       67 NAMECALL                         R7 R7 K14 ["StartSessionWithPathAsync"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 LOADNIL                          R7
       72 GETUPVAL                         R8 1
       73 CALL                             R8 0 1
       74 JUMPIFNOT                        R8 ; [+13]
       75 GETIMPORT                        R8 K16 [Enum.RestPoseModel.FromCustomClip]
       77 JUMPIFNOTEQ                      R5 R8 ; [+10]
       79 MOVE                             R10 R4
       80 MOVE                             R11 R5
       81 ORK                              R13 R3 K17 [1]
       82 SUBK                             R12 R13 K17 [1]
       83 NAMECALL                         R8 R6 K18 ["GetKeyframeSequencesForSelectedRestPoseWithClip"]
       85 CALL                             R8 4 1
       86 MOVE                             R7 R8
       87 JUMP                             ; [+6]
       88 MOVE                             R10 R4
       89 MOVE                             R11 R5
       90 NAMECALL                         R8 R6 K19 ["GetKeyframeSequencesForSelectedRestPose"]
       92 CALL                             R8 3 1
       93 MOVE                             R7 R8
       94 LENGTH                           R8 R7
       95 JUMPIFNOTEQKN                    R8 K20 [0] ; [+10]
       97 GETUPVAL                         R8 0
       98 LOADNIL                          R9
       99 SETTABLEKS                       R9 R8 K2 ["filePath"]
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K21 ["hideInProgressCover"]
      104 CALL                             R8 0 0
      105 RETURN                           R0 0
      106 GETTABLEN                        R8 R7 1
      107 GETUPVAL                         R9 4
      108 CALL                             R9 0 1
      109 JUMPIFNOT                        R9 ; [+3]
      110 LOADB                            R9 0
      111 SETTABLEKS                       R9 R8 K22 ["Loop"]
      113 GETUPVAL                         R9 0
      114 GETTABLEKS                       R9 R9 K5 ["props"]
      116 GETTABLEKS                       R9 R9 K23 ["LoadImportedKeyframeSequence"]
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K5 ["props"]
      121 GETTABLEKS                       R10 R10 K24 ["Plugin"]
      123 GETUPVAL                         R11 0
      124 GETTABLEKS                       R11 R11 K5 ["props"]
      126 GETTABLEKS                       R11 R11 K25 ["Analytics"]
      128 MOVE                             R12 R8
      129 MOVE                             R13 R2
      130 CALL                             R9 4 0
      131 GETUPVAL                         R9 0
      132 GETTABLEKS                       R9 R9 K21 ["hideInProgressCover"]
      134 CALL                             R9 0 0
      135 GETUPVAL                         R9 0
      136 LOADNIL                          R10
      137 SETTABLEKS                       R10 R9 K2 ["filePath"]
      139 LOADN                            R11 1
      140 LENGTH                           R9 R7
      141 LOADN                            R10 1
      142 FORNPREP                         R9
      143 GETTABLE                         R12 R7 R11
      144 GETUPVAL                         R13 5
      145 GETTABLEKS                       R13 R13 K26 ["fromKeyframeSequence"]
      147 MOVE                             R14 R12
      148 CALL                             R13 1 1
      149 GETTABLEKS                       R14 R13 K27 ["Metadata"]
      151 GETTABLEKS                       R15 R12 K28 ["Name"]
      153 SETTABLEKS                       R15 R14 K28 ["Name"]
      155 GETUPVAL                         R14 6
      156 GETTABLEKS                       R14 R14 K29 ["SavePassedInAnimation"]
      158 GETTABLEKS                       R15 R12 K28 ["Name"]
      160 GETUPVAL                         R16 0
      161 GETTABLEKS                       R16 R16 K5 ["props"]
      163 GETTABLEKS                       R16 R16 K25 ["Analytics"]
      165 GETUPVAL                         R17 0
      166 GETTABLEKS                       R17 R17 K5 ["props"]
      168 GETTABLEKS                       R17 R17 K30 ["Localization"]
      170 MOVE                             R18 R13
      171 LOADB                            R19 0
      172 MOVE                             R20 R4
      173 CALL                             R14 6 0
      174 FORNLOOP                         R9
      175 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 JUMPIFNOTEQKS                    R0 K0 ["Delete"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["handleLoadNewPrompt"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setShowCreateAnimationFromVideoTutorial"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 0
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["continueAfterCreateAnimationFromVideoTutorial"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowCreateAnimationFromVideoTutorial"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

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
      130 LOADN                            R30 250
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
      270 JUMPIFNOT                        R23 ; [+72]
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
      301 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      302 LOADB                            R28 0
      303 SETTABLEKS                       R28 R27 K110 ["Key"]
      305 LOADK                            R30 K108 ["Dialog"]
      306 LOADK                            R31 K113 ["Cancel"]
      307 NAMECALL                         R28 R1 K107 ["getText"]
      309 CALL                             R28 3 1
      310 SETTABLEKS                       R28 R27 K63 ["Text"]
      312 LOADK                            R28 K114 ["Round"]
      313 SETTABLEKS                       R28 R27 K111 ["Style"]
      315 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      316 LOADB                            R29 1
      317 SETTABLEKS                       R29 R28 K110 ["Key"]
      319 LOADK                            R31 K108 ["Dialog"]
      320 LOADK                            R32 K115 ["Save"]
      321 NAMECALL                         R29 R1 K107 ["getText"]
      323 CALL                             R29 3 1
      324 SETTABLEKS                       R29 R28 K63 ["Text"]
      326 LOADK                            R29 K116 ["RoundPrimary"]
      327 SETTABLEKS                       R29 R28 K111 ["Style"]
      329 SETLIST                          R26 R27 2 [1]
      331 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      333 NEWCLOSURE                       R26 P0
      334 CAPTURE                          VAL R0
      335 CAPTURE                          VAL R2
      336 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      338 GETTABLEKS                       R26 R0 K117 ["hideSaveAsPrompt"]
      340 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      342 CALL                             R23 2 1
      343 SETTABLEKS                       R23 R22 K39 ["SaveAsPrompt"]
      345 MOVE                             R23 R9
      346 JUMPIFNOT                        R23 ; [+59]
      347 GETUPVAL                         R23 0
      348 GETTABLEKS                       R23 R23 K22 ["createElement"]
      350 GETUPVAL                         R24 8
      351 DUPTABLE                         R25 K120 [{"Text", "ButtonWidth", "Buttons", "OnButtonClicked"}]
      352 LOADK                            R28 K121 ["Toast"]
      353 LOADK                            R29 K122 ["AnimationImportModelsDiffer"]
      354 NAMECALL                         R26 R1 K107 ["getText"]
      356 CALL                             R26 3 1
      357 SETTABLEKS                       R26 R25 K63 ["Text"]
      359 GETUPVAL                         R27 1
      360 GETTABLEKS                       R27 R27 K124 ["PROMPT_BUTTON_SIZE"]
      362 GETTABLEKS                       R27 R27 K125 ["X"]
      364 MULK                             R26 R27 K123 [1.5]
      365 SETTABLEKS                       R26 R25 K118 ["ButtonWidth"]
      367 NEWTABLE                         R26 0 2
      369 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      370 LOADB                            R28 1
      371 SETTABLEKS                       R28 R27 K110 ["Key"]
      373 LOADK                            R30 K121 ["Toast"]
      374 LOADK                            R31 K126 ["AnimationImportUseFBX"]
      375 NAMECALL                         R28 R1 K107 ["getText"]
      377 CALL                             R28 3 1
      378 SETTABLEKS                       R28 R27 K63 ["Text"]
      380 LOADK                            R28 K114 ["Round"]
      381 SETTABLEKS                       R28 R27 K111 ["Style"]
      383 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      384 LOADB                            R29 0
      385 SETTABLEKS                       R29 R28 K110 ["Key"]
      387 LOADK                            R31 K121 ["Toast"]
      388 LOADK                            R32 K127 ["AnimationImportUseSelected"]
      389 NAMECALL                         R29 R1 K107 ["getText"]
      391 CALL                             R29 3 1
      392 SETTABLEKS                       R29 R28 K63 ["Text"]
      394 LOADK                            R29 K114 ["Round"]
      395 SETTABLEKS                       R29 R28 K111 ["Style"]
      397 SETLIST                          R26 R27 2 [1]
      399 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      401 NEWCLOSURE                       R26 P1
      402 CAPTURE                          VAL R0
      403 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      405 CALL                             R23 2 1
      406 SETTABLEKS                       R23 R22 K40 ["ImportAnimModelChoicePrompt"]
      408 MOVE                             R23 R10
      409 JUMPIFNOT                        R23 ; [+130]
      410 GETUPVAL                         R23 0
      411 GETTABLEKS                       R23 R23 K22 ["createElement"]
      413 GETUPVAL                         R24 9
      414 DUPTABLE                         R25 K133 [{"HeaderText", "ButtonWidth", "SelectionGroupHeader", "SelectionGroupOptions", "ConditionalDropdownKey", "ConditionalDropdownItems", "Buttons", "OnButtonClicked"}]
      415 LOADK                            R28 K108 ["Dialog"]
      416 LOADK                            R29 K134 ["ImportSettings"]
      417 NAMECALL                         R26 R1 K107 ["getText"]
      419 CALL                             R26 3 1
      420 SETTABLEKS                       R26 R25 K128 ["HeaderText"]
      422 GETUPVAL                         R26 1
      423 GETTABLEKS                       R26 R26 K124 ["PROMPT_BUTTON_SIZE"]
      425 GETTABLEKS                       R26 R26 K125 ["X"]
      427 SETTABLEKS                       R26 R25 K118 ["ButtonWidth"]
      429 LOADK                            R28 K108 ["Dialog"]
      430 LOADK                            R29 K135 ["RestPoseSource"]
      431 NAMECALL                         R26 R1 K107 ["getText"]
      433 CALL                             R26 3 1
      434 SETTABLEKS                       R26 R25 K129 ["SelectionGroupHeader"]
      436 GETUPVAL                         R27 10
      437 CALL                             R27 0 1
      438 JUMPIFNOT                        R27 ; [+8]
      439 GETUPVAL                         R26 11
      440 GETTABLEKS                       R26 R26 K136 ["buildRestPoseOptions"]
      442 MOVE                             R27 R1
      443 GETTABLEKS                       R28 R0 K137 ["animationClipNames"]
      445 CALL                             R26 2 1
      446 JUMP                             ; [+29]
      447 NEWTABLE                         R26 0 2
      449 DUPTABLE                         R27 K139 [{"Key", "Text", "Default"}]
      450 LOADK                            R28 K140 ["FromRigInFile"]
      451 SETTABLEKS                       R28 R27 K110 ["Key"]
      453 LOADK                            R30 K108 ["Dialog"]
      454 LOADK                            R31 K141 ["ImportedRig"]
      455 NAMECALL                         R28 R1 K107 ["getText"]
      457 CALL                             R28 3 1
      458 SETTABLEKS                       R28 R27 K63 ["Text"]
      460 LOADB                            R28 1
      461 SETTABLEKS                       R28 R27 K138 ["Default"]
      463 DUPTABLE                         R28 K142 [{"Key", "Text"}]
      464 LOADK                            R29 K143 ["FromRigInACE"]
      465 SETTABLEKS                       R29 R28 K110 ["Key"]
      467 LOADK                            R31 K108 ["Dialog"]
      468 LOADK                            R32 K144 ["AnimationEditorRig"]
      469 NAMECALL                         R29 R1 K107 ["getText"]
      471 CALL                             R29 3 1
      472 SETTABLEKS                       R29 R28 K63 ["Text"]
      474 SETLIST                          R26 R27 2 [1]
      476 SETTABLEKS                       R26 R25 K130 ["SelectionGroupOptions"]
      478 GETUPVAL                         R27 10
      479 CALL                             R27 0 1
      480 JUMPIFNOT                        R27 ; [+2]
      481 LOADK                            R26 K145 ["FromCustomClip"]
      482 JUMP                             ; [+1]
      483 LOADNIL                          R26
      484 SETTABLEKS                       R26 R25 K131 ["ConditionalDropdownKey"]
      486 GETUPVAL                         R27 10
      487 CALL                             R27 0 1
      488 JUMPIFNOT                        R27 ; [+3]
      489 GETTABLEKS                       R26 R0 K137 ["animationClipNames"]
      491 JUMP                             ; [+1]
      492 LOADNIL                          R26
      493 SETTABLEKS                       R26 R25 K132 ["ConditionalDropdownItems"]
      495 NEWTABLE                         R26 0 2
      497 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      498 LOADK                            R28 K113 ["Cancel"]
      499 SETTABLEKS                       R28 R27 K110 ["Key"]
      501 LOADK                            R30 K108 ["Dialog"]
      502 LOADK                            R31 K113 ["Cancel"]
      503 NAMECALL                         R28 R1 K107 ["getText"]
      505 CALL                             R28 3 1
      506 SETTABLEKS                       R28 R27 K63 ["Text"]
      508 LOADK                            R28 K114 ["Round"]
      509 SETTABLEKS                       R28 R27 K111 ["Style"]
      511 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      512 LOADK                            R29 K146 ["Import"]
      513 SETTABLEKS                       R29 R28 K110 ["Key"]
      515 LOADK                            R31 K147 ["Menu"]
      516 LOADK                            R32 K146 ["Import"]
      517 NAMECALL                         R29 R1 K107 ["getText"]
      519 CALL                             R29 3 1
      520 SETTABLEKS                       R29 R28 K63 ["Text"]
      522 LOADK                            R29 K116 ["RoundPrimary"]
      523 SETTABLEKS                       R29 R28 K111 ["Style"]
      525 SETLIST                          R26 R27 2 [1]
      527 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      529 NEWCLOSURE                       R26 P2
      530 CAPTURE                          VAL R0
      531 CAPTURE                          UPVAL U10
      532 CAPTURE                          UPVAL U11
      533 CAPTURE                          UPVAL U12
      534 CAPTURE                          UPVAL U13
      535 CAPTURE                          UPVAL U14
      536 CAPTURE                          VAL R2
      537 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      539 CALL                             R23 2 1
      540 SETTABLEKS                       R23 R22 K41 ["RestPoseChoicePrompt"]
      542 JUMPIFNOT                        R14 ; [+14]
      543 GETUPVAL                         R23 0
      544 GETTABLEKS                       R23 R23 K22 ["createElement"]
      546 GETUPVAL                         R24 15
      547 DUPTABLE                         R25 K148 [{"Text"}]
      548 LOADK                            R28 K108 ["Dialog"]
      549 LOADK                            R29 K149 ["ImportingAnimation"]
      550 NAMECALL                         R26 R1 K107 ["getText"]
      552 CALL                             R26 3 1
      553 SETTABLEKS                       R26 R25 K63 ["Text"]
      555 CALL                             R23 2 1
      556 JUMPIF                           R23 ; [+1]
      557 LOADNIL                          R23
      558 SETTABLEKS                       R23 R22 K42 ["InProgressCover"]
      560 MOVE                             R23 R11
      561 JUMPIFNOT                        R23 ; [+61]
      562 GETUPVAL                         R23 0
      563 GETTABLEKS                       R23 R23 K22 ["createElement"]
      565 GETUPVAL                         R24 16
      566 DUPTABLE                         R25 K150 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      567 LOADK                            R28 K147 ["Menu"]
      568 LOADK                            R29 K151 ["Overwrite_Migrated"]
      569 DUPTABLE                         R30 K152 [{"overwriteName"}]
      570 SETTABLEKS                       R11 R30 K10 ["overwriteName"]
      572 NAMECALL                         R26 R1 K107 ["getText"]
      574 CALL                             R26 4 1
      575 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      577 NEWTABLE                         R26 0 2
      579 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      580 LOADB                            R28 0
      581 SETTABLEKS                       R28 R27 K110 ["Key"]
      583 LOADK                            R30 K108 ["Dialog"]
      584 LOADK                            R31 K153 ["No"]
      585 NAMECALL                         R28 R1 K107 ["getText"]
      587 CALL                             R28 3 1
      588 SETTABLEKS                       R28 R27 K63 ["Text"]
      590 LOADK                            R28 K114 ["Round"]
      591 SETTABLEKS                       R28 R27 K111 ["Style"]
      593 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      594 LOADB                            R29 1
      595 SETTABLEKS                       R29 R28 K110 ["Key"]
      597 LOADK                            R31 K108 ["Dialog"]
      598 LOADK                            R32 K154 ["Yes"]
      599 NAMECALL                         R29 R1 K107 ["getText"]
      601 CALL                             R29 3 1
      602 SETTABLEKS                       R29 R28 K63 ["Text"]
      604 LOADK                            R29 K116 ["RoundPrimary"]
      605 SETTABLEKS                       R29 R28 K111 ["Style"]
      607 SETLIST                          R26 R27 2 [1]
      609 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      611 NEWCLOSURE                       R26 P3
      612 CAPTURE                          VAL R0
      613 CAPTURE                          VAL R2
      614 CAPTURE                          VAL R16
      615 CAPTURE                          VAL R11
      616 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      618 GETTABLEKS                       R26 R0 K155 ["hideOverwritePrompt"]
      620 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      622 CALL                             R23 2 1
      623 SETTABLEKS                       R23 R22 K43 ["OverwritePrompt"]
      625 JUMPIFNOT                        R13 ; [+57]
      626 GETUPVAL                         R23 0
      627 GETTABLEKS                       R23 R23 K22 ["createElement"]
      629 GETUPVAL                         R24 16
      630 DUPTABLE                         R25 K150 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      631 LOADK                            R28 K108 ["Dialog"]
      632 LOADK                            R29 K44 ["PromotePrompt"]
      633 NAMECALL                         R26 R1 K107 ["getText"]
      635 CALL                             R26 3 1
      636 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      638 NEWTABLE                         R26 0 2
      640 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      641 LOADB                            R28 0
      642 SETTABLEKS                       R28 R27 K110 ["Key"]
      644 LOADK                            R30 K108 ["Dialog"]
      645 LOADK                            R31 K113 ["Cancel"]
      646 NAMECALL                         R28 R1 K107 ["getText"]
      648 CALL                             R28 3 1
      649 SETTABLEKS                       R28 R27 K63 ["Text"]
      651 LOADK                            R28 K114 ["Round"]
      652 SETTABLEKS                       R28 R27 K111 ["Style"]
      654 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      655 LOADB                            R29 1
      656 SETTABLEKS                       R29 R28 K110 ["Key"]
      658 LOADK                            R31 K108 ["Dialog"]
      659 LOADK                            R32 K156 ["Confirm"]
      660 NAMECALL                         R29 R1 K107 ["getText"]
      662 CALL                             R29 3 1
      663 SETTABLEKS                       R29 R28 K63 ["Text"]
      665 LOADK                            R29 K116 ["RoundPrimary"]
      666 SETTABLEKS                       R29 R28 K111 ["Style"]
      668 SETLIST                          R26 R27 2 [1]
      670 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      672 NEWCLOSURE                       R26 P4
      673 CAPTURE                          VAL R0
      674 CAPTURE                          VAL R2
      675 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      677 GETTABLEKS                       R26 R0 K157 ["hidePromotePrompt"]
      679 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      681 CALL                             R23 2 1
      682 JUMPIF                           R23 ; [+1]
      683 LOADNIL                          R23
      684 SETTABLEKS                       R23 R22 K44 ["PromotePrompt"]
      686 MOVE                             R23 R12
      687 JUMPIFNOT                        R23 ; [+90]
      688 GETUPVAL                         R23 0
      689 GETTABLEKS                       R23 R23 K22 ["createElement"]
      691 GETUPVAL                         R24 7
      692 DUPTABLE                         R25 K158 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnButtonClicked", "OnTextSubmitted", "OnClose"}]
      693 LOADK                            R28 K105 ["Title"]
      694 LOADK                            R29 K159 ["ConfirmSave"]
      695 NAMECALL                         R26 R1 K107 ["getText"]
      697 CALL                             R26 3 1
      698 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      700 LOADK                            R28 K108 ["Dialog"]
      701 LOADK                            R29 K3 ["AnimationName"]
      702 NAMECALL                         R26 R1 K107 ["getText"]
      704 CALL                             R26 3 1
      705 SETTABLEKS                       R26 R25 K99 ["InputText"]
      707 LOADK                            R28 K108 ["Dialog"]
      708 LOADK                            R29 K109 ["SaveLocation"]
      709 NAMECALL                         R26 R1 K107 ["getText"]
      711 CALL                             R26 3 1
      712 SETTABLEKS                       R26 R25 K100 ["NoticeText"]
      714 SETTABLEKS                       R4 R25 K63 ["Text"]
      716 NEWTABLE                         R26 0 3
      718 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      719 LOADK                            R28 K160 ["Delete"]
      720 SETTABLEKS                       R28 R27 K110 ["Key"]
      722 LOADK                            R30 K108 ["Dialog"]
      723 LOADK                            R31 K160 ["Delete"]
      724 NAMECALL                         R28 R1 K107 ["getText"]
      726 CALL                             R28 3 1
      727 SETTABLEKS                       R28 R27 K63 ["Text"]
      729 LOADK                            R28 K114 ["Round"]
      730 SETTABLEKS                       R28 R27 K111 ["Style"]
      732 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      733 LOADB                            R29 0
      734 SETTABLEKS                       R29 R28 K110 ["Key"]
      736 LOADK                            R31 K108 ["Dialog"]
      737 LOADK                            R32 K113 ["Cancel"]
      738 NAMECALL                         R29 R1 K107 ["getText"]
      740 CALL                             R29 3 1
      741 SETTABLEKS                       R29 R28 K63 ["Text"]
      743 LOADK                            R29 K114 ["Round"]
      744 SETTABLEKS                       R29 R28 K111 ["Style"]
      746 DUPTABLE                         R29 K112 [{"Key", "Text", "Style"}]
      747 LOADB                            R30 1
      748 SETTABLEKS                       R30 R29 K110 ["Key"]
      750 LOADK                            R32 K108 ["Dialog"]
      751 LOADK                            R33 K115 ["Save"]
      752 NAMECALL                         R30 R1 K107 ["getText"]
      754 CALL                             R30 3 1
      755 SETTABLEKS                       R30 R29 K63 ["Text"]
      757 LOADK                            R30 K116 ["RoundPrimary"]
      758 SETTABLEKS                       R30 R29 K111 ["Style"]
      760 SETLIST                          R26 R27 3 [1]
      762 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      764 NEWCLOSURE                       R26 P5
      765 CAPTURE                          VAL R0
      766 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      768 NEWCLOSURE                       R26 P6
      769 CAPTURE                          VAL R2
      770 CAPTURE                          VAL R0
      771 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      773 GETTABLEKS                       R26 R0 K161 ["hideLoadNewPrompt"]
      775 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      777 CALL                             R23 2 1
      778 SETTABLEKS                       R23 R22 K45 ["LoadNewPrompt"]
      780 MOVE                             R23 R17
      781 JUMPIFNOT                        R23 ; [+55]
      782 GETUPVAL                         R23 0
      783 GETTABLEKS                       R23 R23 K22 ["createElement"]
      785 GETUPVAL                         R24 16
      786 DUPTABLE                         R25 K150 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      787 LOADK                            R28 K162 ["AnimationFromVideo"]
      788 LOADK                            R29 K163 ["TutorialText"]
      789 NAMECALL                         R26 R1 K107 ["getText"]
      791 CALL                             R26 3 1
      792 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      794 NEWTABLE                         R26 0 2
      796 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      797 LOADB                            R28 0
      798 SETTABLEKS                       R28 R27 K110 ["Key"]
      800 LOADK                            R30 K108 ["Dialog"]
      801 LOADK                            R31 K113 ["Cancel"]
      802 NAMECALL                         R28 R1 K107 ["getText"]
      804 CALL                             R28 3 1
      805 SETTABLEKS                       R28 R27 K63 ["Text"]
      807 LOADK                            R28 K114 ["Round"]
      808 SETTABLEKS                       R28 R27 K111 ["Style"]
      810 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      811 LOADB                            R29 1
      812 SETTABLEKS                       R29 R28 K110 ["Key"]
      814 LOADK                            R31 K162 ["AnimationFromVideo"]
      815 LOADK                            R32 K164 ["ChooseVideo"]
      816 NAMECALL                         R29 R1 K107 ["getText"]
      818 CALL                             R29 3 1
      819 SETTABLEKS                       R29 R28 K63 ["Text"]
      821 LOADK                            R29 K116 ["RoundPrimary"]
      822 SETTABLEKS                       R29 R28 K111 ["Style"]
      824 SETLIST                          R26 R27 2 [1]
      826 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      828 NEWCLOSURE                       R26 P7
      829 CAPTURE                          VAL R0
      830 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      832 NEWCLOSURE                       R26 P8
      833 CAPTURE                          VAL R0
      834 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      836 CALL                             R23 2 1
      837 SETTABLEKS                       R23 R22 K46 ["CreateAnimationFromVideoTutorial"]
      839 MOVE                             R23 R18
      840 JUMPIFNOT                        R23 ; [+56]
      841 GETUPVAL                         R23 0
      842 GETTABLEKS                       R23 R23 K22 ["createElement"]
      844 GETUPVAL                         R24 16
      845 DUPTABLE                         R25 K165 [{"Size", "PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      846 GETIMPORT                        R26 K26 [UDim2.new]
      848 LOADN                            R27 0
      849 GETUPVAL                         R28 1
      850 GETTABLEKS                       R28 R28 K166 ["PROMPT_SIZE"]
      852 GETTABLEKS                       R28 R28 K167 ["Width"]
      854 GETTABLEKS                       R28 R28 K168 ["Offset"]
      856 LOADN                            R29 0
      857 LOADN                            R30 180
      858 CALL                             R26 4 1
      859 SETTABLEKS                       R26 R25 K29 ["Size"]
      861 LOADK                            R28 K162 ["AnimationFromVideo"]
      862 LOADK                            R29 K169 ["AgeRestricted"]
      863 NAMECALL                         R26 R1 K107 ["getText"]
      865 CALL                             R26 3 1
      866 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      868 NEWTABLE                         R26 0 1
      870 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      871 LOADB                            R28 0
      872 SETTABLEKS                       R28 R27 K110 ["Key"]
      874 LOADK                            R30 K108 ["Dialog"]
      875 LOADK                            R31 K113 ["Cancel"]
      876 NAMECALL                         R28 R1 K107 ["getText"]
      878 CALL                             R28 3 1
      879 SETTABLEKS                       R28 R27 K63 ["Text"]
      881 LOADK                            R28 K114 ["Round"]
      882 SETTABLEKS                       R28 R27 K111 ["Style"]
      884 SETLIST                          R26 R27 1 [1]
      886 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      888 NEWCLOSURE                       R26 P9
      889 CAPTURE                          VAL R0
      890 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      892 NEWCLOSURE                       R26 P10
      893 CAPTURE                          VAL R0
      894 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      896 CALL                             R23 2 1
      897 SETTABLEKS                       R23 R22 K47 ["CreateAnimationFromVideoAgeGate"]
      899 CALL                             R19 3 -1
      900 RETURN                           R19 -1

PROTO_49:
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

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"Name"}]
        3 SETTABLEKS                       R0 R3 K0 ["Name"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_68:
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
       42 GETTABLEKS                       R9 R6 K12 ["Packages"]
       44 GETTABLEKS                       R9 R9 K14 ["Roact"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K11 [require]
       49 GETTABLEKS                       R10 R6 K12 ["Packages"]
       51 GETTABLEKS                       R10 R10 K15 ["RoactRodux"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K11 [require]
       56 GETTABLEKS                       R11 R6 K16 ["Src"]
       58 GETTABLEKS                       R11 R11 K17 ["Util"]
       60 GETTABLEKS                       R11 R11 K18 ["Constants"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K11 [require]
       65 GETTABLEKS                       R12 R6 K16 ["Src"]
       67 GETTABLEKS                       R12 R12 K17 ["Util"]
       69 GETTABLEKS                       R12 R12 K19 ["RigSerialization"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K22 [UDim.new]
       74 LOADN                            R13 0
       75 GETTABLEKS                       R14 R10 K23 ["INDENT_PADDING"]
       77 CALL                             R12 2 1
       78 GETTABLEKS                       R13 R7 K24 ["ContextServices"]
       80 GETTABLEKS                       R14 R13 K25 ["withContext"]
       82 GETTABLEKS                       R15 R6 K16 ["Src"]
       84 GETTABLEKS                       R15 R15 K26 ["Actions"]
       86 GETIMPORT                        R16 K11 [require]
       88 GETTABLEKS                       R17 R15 K27 ["SetInReviewState"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K11 [require]
       93 GETTABLEKS                       R18 R15 K28 ["SetIsDirty"]
       95 CALL                             R17 1 1
       96 GETIMPORT                        R18 K11 [require]
       98 GETTABLEKS                       R19 R15 K29 ["SetIsLegacyAnimSaves"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K11 [require]
      103 GETTABLEKS                       R20 R15 K30 ["SetPlayState"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K11 [require]
      108 GETTABLEKS                       R21 R15 K31 ["SetReduceKeyframesDialogMode"]
      110 CALL                             R20 1 1
      111 GETTABLEKS                       R21 R6 K16 ["Src"]
      113 GETTABLEKS                       R21 R21 K32 ["Components"]
      115 GETIMPORT                        R22 K11 [require]
      117 GETTABLEKS                       R23 R21 K33 ["Toast"]
      119 GETTABLEKS                       R23 R23 K34 ["ActionToast"]
      121 CALL                             R22 1 1
      122 GETIMPORT                        R23 K11 [require]
      124 GETTABLEKS                       R24 R21 K35 ["AnimationClipMenu"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K11 [require]
      129 GETTABLEKS                       R25 R21 K36 ["ContextButton"]
      131 CALL                             R24 1 1
      132 GETIMPORT                        R25 K11 [require]
      134 GETTABLEKS                       R26 R21 K37 ["EditEventsDialog"]
      136 GETTABLEKS                       R26 R26 K38 ["FocusedPrompt"]
      138 CALL                             R25 1 1
      139 GETIMPORT                        R26 K11 [require]
      141 GETTABLEKS                       R27 R21 K39 ["MultipleOptionPrompt"]
      143 CALL                             R26 1 1
      144 GETIMPORT                        R27 K11 [require]
      146 GETTABLEKS                       R28 R21 K40 ["InProgressCover"]
      148 CALL                             R27 1 1
      149 GETIMPORT                        R28 K11 [require]
      151 GETTABLEKS                       R29 R21 K41 ["TextEntryPrompt"]
      153 CALL                             R28 1 1
      154 GETTABLEKS                       R29 R6 K16 ["Src"]
      156 GETTABLEKS                       R29 R29 K42 ["Thunks"]
      158 GETIMPORT                        R30 K11 [require]
      160 GETTABLEKS                       R31 R29 K43 ["Exporting"]
      162 GETTABLEKS                       R31 R31 K44 ["CreateFromVideoAndImportFBXAnimationUserMayChooseModel"]
      164 CALL                             R30 1 1
      165 GETIMPORT                        R31 K11 [require]
      167 GETTABLEKS                       R32 R29 K45 ["CreateNewAnimation"]
      169 CALL                             R31 1 1
      170 GETIMPORT                        R32 K11 [require]
      172 GETTABLEKS                       R33 R29 K46 ["GenerateControlRigData"]
      174 CALL                             R32 1 1
      175 GETIMPORT                        R33 K11 [require]
      177 GETTABLEKS                       R34 R29 K43 ["Exporting"]
      179 GETTABLEKS                       R34 R34 K47 ["ImportFBXAnimationUserMayChooseModel"]
      181 CALL                             R33 1 1
      182 GETIMPORT                        R34 K11 [require]
      184 GETTABLEKS                       R35 R29 K43 ["Exporting"]
      186 GETTABLEKS                       R35 R35 K48 ["ImportKeyframeSequence"]
      188 CALL                             R34 1 1
      189 GETIMPORT                        R35 K11 [require]
      191 GETTABLEKS                       R36 R29 K43 ["Exporting"]
      193 GETTABLEKS                       R36 R36 K49 ["ImportLoadedFBXAnimation"]
      195 CALL                             R35 1 1
      196 GETIMPORT                        R36 K11 [require]
      198 GETTABLEKS                       R37 R29 K43 ["Exporting"]
      200 GETTABLEKS                       R37 R37 K50 ["LoadAnimation"]
      202 CALL                             R36 1 1
      203 GETIMPORT                        R37 K11 [require]
      205 GETTABLEKS                       R38 R29 K51 ["LoadAnimationData"]
      207 CALL                             R37 1 1
      208 GETIMPORT                        R38 K11 [require]
      210 GETTABLEKS                       R39 R29 K52 ["SanitizeAnimation"]
      212 CALL                             R38 1 1
      213 GETIMPORT                        R39 K11 [require]
      215 GETTABLEKS                       R40 R29 K43 ["Exporting"]
      217 GETTABLEKS                       R40 R40 K53 ["SaveAnimation"]
      219 CALL                             R39 1 1
      220 GETIMPORT                        R40 K11 [require]
      222 GETTABLEKS                       R41 R29 K54 ["UpdateMetadata"]
      224 CALL                             R40 1 1
      225 GETIMPORT                        R41 K11 [require]
      227 GETTABLEKS                       R42 R29 K43 ["Exporting"]
      229 GETTABLEKS                       R42 R42 K55 ["LoadImportedKeyframeSequence"]
      231 CALL                             R41 1 1
      232 GETIMPORT                        R42 K11 [require]
      234 GETTABLEKS                       R43 R29 K43 ["Exporting"]
      236 GETTABLEKS                       R43 R43 K56 ["SavePassedInAnimation"]
      238 CALL                             R42 1 1
      239 GETTABLEKS                       R43 R7 K57 ["UI"]
      241 GETTABLEKS                       R44 R43 K58 ["Pane"]
      243 GETTABLEKS                       R45 R43 K59 ["TextInput"]
      245 GETIMPORT                        R46 K11 [require]
      247 GETTABLEKS                       R47 R6 K60 ["LuaFlags"]
      249 GETTABLEKS                       R47 R47 K61 ["GetFFlagFBXLoop"]
      251 CALL                             R46 1 1
      252 GETIMPORT                        R47 K11 [require]
      254 GETTABLEKS                       R48 R6 K60 ["LuaFlags"]
      256 GETTABLEKS                       R48 R48 K62 ["GetFFlagACEExtendedRestPoseOptions"]
      258 CALL                             R47 1 1
      259 GETIMPORT                        R48 K11 [require]
      261 GETTABLEKS                       R49 R6 K16 ["Src"]
      263 GETTABLEKS                       R49 R49 K17 ["Util"]
      265 GETTABLEKS                       R49 R49 K63 ["RestPoseUtils"]
      267 CALL                             R48 1 1
      268 GETIMPORT                        R49 K11 [require]
      270 GETTABLEKS                       R50 R6 K60 ["LuaFlags"]
      272 GETTABLEKS                       R50 R50 K64 ["GetFFlagAnimationExportSupport"]
      274 CALL                             R49 1 1
      275 GETTABLEKS                       R50 R8 K65 ["PureComponent"]
      277 LOADK                            R52 K66 ["AnimationClipDropdown"]
      278 NAMECALL                         R50 R50 K67 ["extend"]
      280 CALL                             R50 2 1
      281 DUPCLOSURE                       R51 K68 [PROTO_36]
      282 CAPTURE                          VAL R10
      283 CAPTURE                          VAL R8
      284 CAPTURE                          VAL R2
      285 CAPTURE                          VAL R3
      286 CAPTURE                          VAL R0
      287 CAPTURE                          VAL R4
      288 CAPTURE                          VAL R47
      289 CAPTURE                          VAL R48
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R1
      292 SETTABLEKS                       R51 R50 K69 ["init"]
      294 DUPCLOSURE                       R51 K70 [PROTO_48]
      295 CAPTURE                          VAL R8
      296 CAPTURE                          VAL R10
      297 CAPTURE                          VAL R12
      298 CAPTURE                          VAL R44
      299 CAPTURE                          VAL R45
      300 CAPTURE                          VAL R24
      301 CAPTURE                          VAL R23
      302 CAPTURE                          VAL R28
      303 CAPTURE                          VAL R22
      304 CAPTURE                          VAL R26
      305 CAPTURE                          VAL R47
      306 CAPTURE                          VAL R48
      307 CAPTURE                          VAL R0
      308 CAPTURE                          VAL R46
      309 CAPTURE                          VAL R11
      310 CAPTURE                          VAL R27
      311 CAPTURE                          VAL R25
      312 SETTABLEKS                       R51 R50 K71 ["render"]
      314 MOVE                             R51 R14
      315 DUPTABLE                         R52 K76 [{"Stylizer", "Localization", "Plugin", "Analytics"}]
      316 GETTABLEKS                       R53 R13 K72 ["Stylizer"]
      318 SETTABLEKS                       R53 R52 K72 ["Stylizer"]
      320 GETTABLEKS                       R53 R13 K73 ["Localization"]
      322 SETTABLEKS                       R53 R52 K73 ["Localization"]
      324 GETTABLEKS                       R53 R13 K74 ["Plugin"]
      326 SETTABLEKS                       R53 R52 K74 ["Plugin"]
      328 GETTABLEKS                       R53 R13 K75 ["Analytics"]
      330 SETTABLEKS                       R53 R52 K75 ["Analytics"]
      332 CALL                             R51 1 1
      333 MOVE                             R52 R50
      334 CALL                             R51 1 1
      335 MOVE                             R50 R51
      336 DUPCLOSURE                       R51 K77 [PROTO_49]
      337 CAPTURE                          VAL R49
      338 DUPCLOSURE                       R52 K78 [PROTO_68]
      339 CAPTURE                          VAL R31
      340 CAPTURE                          VAL R37
      341 CAPTURE                          VAL R36
      342 CAPTURE                          VAL R39
      343 CAPTURE                          VAL R42
      344 CAPTURE                          VAL R34
      345 CAPTURE                          VAL R33
      346 CAPTURE                          VAL R30
      347 CAPTURE                          VAL R32
      348 CAPTURE                          VAL R35
      349 CAPTURE                          VAL R38
      350 CAPTURE                          VAL R40
      351 CAPTURE                          VAL R16
      352 CAPTURE                          VAL R17
      353 CAPTURE                          VAL R18
      354 CAPTURE                          VAL R19
      355 CAPTURE                          VAL R20
      356 CAPTURE                          VAL R41
      357 GETTABLEKS                       R53 R9 K79 ["connect"]
      359 MOVE                             R54 R51
      360 MOVE                             R55 R52
      361 CALL                             R53 2 1
      362 MOVE                             R54 R50
      363 CALL                             R53 1 -1
      364 RETURN                           R53 -1
