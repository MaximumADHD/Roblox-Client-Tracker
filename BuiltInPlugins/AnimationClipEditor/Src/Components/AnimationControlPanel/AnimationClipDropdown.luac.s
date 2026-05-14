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
        4 JUMPIFEQKS                       R0 K1 [""] ; [+8]
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K2 ["filePath"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["showRestPoseChoicePrompt"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

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
      143 SETTABLEKS                       R1 R0 K33 ["importFromFileWithRestPoseSelection"]
      145 NEWCLOSURE                       R1 P26
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U3
      148 SETTABLEKS                       R1 R0 K34 ["importFromFileWithRestPoseSelectionRequested"]
      150 NEWCLOSURE                       R1 P27
      151 CAPTURE                          VAL R0
      152 SETTABLEKS                       R1 R0 K35 ["startAnimationFromVideoFlow"]
      154 NEWCLOSURE                       R1 P28
      155 CAPTURE                          VAL R0
      156 CAPTURE                          UPVAL U6
      157 SETTABLEKS                       R1 R0 K36 ["createFromVideoRequested"]
      159 NEWCLOSURE                       R1 P29
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U7
      162 SETTABLEKS                       R1 R0 K37 ["createNew"]
      164 NEWCLOSURE                       R1 P30
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R1 R0 K38 ["createNewClip"]
      168 NEWCLOSURE                       R1 P31
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R1 R0 K39 ["loadNew"]
      172 NEWCLOSURE                       R1 P32
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U7
      175 CAPTURE                          UPVAL U2
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          UPVAL U6
      178 CAPTURE                          UPVAL U5
      179 SETTABLEKS                       R1 R0 K40 ["handleLoadNewPrompt"]
      181 NEWCLOSURE                       R1 P33
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R1 R0 K41 ["onSanitizeAnimation"]
      185 DUPCLOSURE                       R1 K42 [PROTO_34]
      186 SETTABLEKS                       R1 R0 K43 ["validateAnimationName"]
      188 NEWCLOSURE                       R1 P35
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R1 R0 K44 ["onGenerateControlRigData"]
      192 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["hideRestPoseChoicePrompt"]
        3 CALL                             R2 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Cancel"] ; [+6]
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["filePath"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["showInProgressCover"]
       14 CALL                             R2 0 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["props"]
       18 GETTABLEKS                       R2 R2 K5 ["RootInstance"]
       20 LOADNIL                          R3
       21 JUMPIFNOTEQKS                    R1 K6 ["FromRigInFile"] ; [+4]
       23 GETIMPORT                        R3 K9 [Enum.RestPoseModel.FromRigInFile]
       25 JUMP                             ; [+7]
       26 JUMPIFNOTEQKS                    R1 K10 ["FromRigInACE"] ; [+4]
       28 GETIMPORT                        R3 K11 [Enum.RestPoseModel.FromRigInACE]
       30 JUMP                             ; [+2]
       31 GETIMPORT                        R3 K9 [Enum.RestPoseModel.FromRigInFile]
       33 GETUPVAL                         R4 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K2 ["filePath"]
       37 NAMECALL                         R4 R4 K12 ["StartSessionWithPathAsync"]
       39 CALL                             R4 2 1
       40 MOVE                             R7 R2
       41 MOVE                             R8 R3
       42 NAMECALL                         R5 R4 K13 ["GetKeyframeSequencesForSelectedRestPose"]
       44 CALL                             R5 3 1
       45 LENGTH                           R6 R5
       46 JUMPIFNOTEQKN                    R6 K14 [0] ; [+10]
       48 GETUPVAL                         R6 0
       49 LOADNIL                          R7
       50 SETTABLEKS                       R7 R6 K2 ["filePath"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K15 ["hideInProgressCover"]
       55 CALL                             R6 0 0
       56 RETURN                           R0 0
       57 GETTABLEN                        R6 R5 1
       58 GETUPVAL                         R7 2
       59 CALL                             R7 0 1
       60 JUMPIFNOT                        R7 ; [+3]
       61 LOADB                            R7 0
       62 SETTABLEKS                       R7 R6 K16 ["Loop"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K4 ["props"]
       67 GETTABLEKS                       R7 R7 K17 ["LoadImportedKeyframeSequence"]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R8 R8 K4 ["props"]
       72 GETTABLEKS                       R8 R8 K18 ["Plugin"]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K4 ["props"]
       77 GETTABLEKS                       R9 R9 K19 ["Analytics"]
       79 MOVE                             R10 R6
       80 CALL                             R7 3 0
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K15 ["hideInProgressCover"]
       84 CALL                             R7 0 0
       85 GETUPVAL                         R7 0
       86 LOADNIL                          R8
       87 SETTABLEKS                       R8 R7 K2 ["filePath"]
       89 GETUPVAL                         R7 3
       90 CALL                             R7 0 1
       91 JUMPIFNOT                        R7 ; [+36]
       92 LOADN                            R9 1
       93 LENGTH                           R7 R5
       94 LOADN                            R8 1
       95 FORNPREP                         R7
       96 GETTABLE                         R10 R5 R9
       97 GETUPVAL                         R11 4
       98 GETTABLEKS                       R11 R11 K20 ["fromKeyframeSequence"]
      100 MOVE                             R12 R10
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R11 K21 ["Metadata"]
      104 GETTABLEKS                       R13 R10 K22 ["Name"]
      106 SETTABLEKS                       R13 R12 K22 ["Name"]
      108 GETUPVAL                         R12 5
      109 GETTABLEKS                       R12 R12 K23 ["SavePassedInAnimation"]
      111 GETTABLEKS                       R13 R10 K22 ["Name"]
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K4 ["props"]
      116 GETTABLEKS                       R14 R14 K19 ["Analytics"]
      118 GETUPVAL                         R15 0
      119 GETTABLEKS                       R15 R15 K4 ["props"]
      121 GETTABLEKS                       R15 R15 K24 ["Localization"]
      123 MOVE                             R16 R11
      124 LOADB                            R17 0
      125 MOVE                             R18 R2
      126 CALL                             R12 6 0
      127 FORNLOOP                         R7
      128 RETURN                           R0 0

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
      409 JUMPIFNOT                        R23 ; [+101]
      410 GETUPVAL                         R23 0
      411 GETTABLEKS                       R23 R23 K22 ["createElement"]
      413 GETUPVAL                         R24 9
      414 DUPTABLE                         R25 K131 [{"HeaderText", "ButtonWidth", "SelectionGroupHeader", "SelectionGroupOptions", "Buttons", "OnButtonClicked"}]
      415 LOADK                            R28 K108 ["Dialog"]
      416 LOADK                            R29 K132 ["ImportSettings"]
      417 NAMECALL                         R26 R1 K107 ["getText"]
      419 CALL                             R26 3 1
      420 SETTABLEKS                       R26 R25 K128 ["HeaderText"]
      422 GETUPVAL                         R26 1
      423 GETTABLEKS                       R26 R26 K124 ["PROMPT_BUTTON_SIZE"]
      425 GETTABLEKS                       R26 R26 K125 ["X"]
      427 SETTABLEKS                       R26 R25 K118 ["ButtonWidth"]
      429 LOADK                            R28 K108 ["Dialog"]
      430 LOADK                            R29 K133 ["RestPoseSource"]
      431 NAMECALL                         R26 R1 K107 ["getText"]
      433 CALL                             R26 3 1
      434 SETTABLEKS                       R26 R25 K129 ["SelectionGroupHeader"]
      436 NEWTABLE                         R26 0 2
      438 DUPTABLE                         R27 K135 [{"Key", "Text", "Default"}]
      439 LOADK                            R28 K136 ["FromRigInFile"]
      440 SETTABLEKS                       R28 R27 K110 ["Key"]
      442 LOADK                            R30 K108 ["Dialog"]
      443 LOADK                            R31 K137 ["ImportedRig"]
      444 NAMECALL                         R28 R1 K107 ["getText"]
      446 CALL                             R28 3 1
      447 SETTABLEKS                       R28 R27 K63 ["Text"]
      449 LOADB                            R28 1
      450 SETTABLEKS                       R28 R27 K134 ["Default"]
      452 DUPTABLE                         R28 K138 [{"Key", "Text"}]
      453 LOADK                            R29 K139 ["FromRigInACE"]
      454 SETTABLEKS                       R29 R28 K110 ["Key"]
      456 LOADK                            R31 K108 ["Dialog"]
      457 LOADK                            R32 K140 ["AnimationEditorRig"]
      458 NAMECALL                         R29 R1 K107 ["getText"]
      460 CALL                             R29 3 1
      461 SETTABLEKS                       R29 R28 K63 ["Text"]
      463 SETLIST                          R26 R27 2 [1]
      465 SETTABLEKS                       R26 R25 K130 ["SelectionGroupOptions"]
      467 NEWTABLE                         R26 0 2
      469 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      470 LOADK                            R28 K113 ["Cancel"]
      471 SETTABLEKS                       R28 R27 K110 ["Key"]
      473 LOADK                            R30 K108 ["Dialog"]
      474 LOADK                            R31 K113 ["Cancel"]
      475 NAMECALL                         R28 R1 K107 ["getText"]
      477 CALL                             R28 3 1
      478 SETTABLEKS                       R28 R27 K63 ["Text"]
      480 LOADK                            R28 K114 ["Round"]
      481 SETTABLEKS                       R28 R27 K111 ["Style"]
      483 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      484 LOADK                            R29 K141 ["Import"]
      485 SETTABLEKS                       R29 R28 K110 ["Key"]
      487 LOADK                            R31 K142 ["Menu"]
      488 LOADK                            R32 K141 ["Import"]
      489 NAMECALL                         R29 R1 K107 ["getText"]
      491 CALL                             R29 3 1
      492 SETTABLEKS                       R29 R28 K63 ["Text"]
      494 LOADK                            R29 K116 ["RoundPrimary"]
      495 SETTABLEKS                       R29 R28 K111 ["Style"]
      497 SETLIST                          R26 R27 2 [1]
      499 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      501 NEWCLOSURE                       R26 P2
      502 CAPTURE                          VAL R0
      503 CAPTURE                          UPVAL U10
      504 CAPTURE                          UPVAL U11
      505 CAPTURE                          UPVAL U12
      506 CAPTURE                          UPVAL U13
      507 CAPTURE                          VAL R2
      508 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      510 CALL                             R23 2 1
      511 SETTABLEKS                       R23 R22 K41 ["RestPoseChoicePrompt"]
      513 JUMPIFNOT                        R14 ; [+14]
      514 GETUPVAL                         R23 0
      515 GETTABLEKS                       R23 R23 K22 ["createElement"]
      517 GETUPVAL                         R24 14
      518 DUPTABLE                         R25 K143 [{"Text"}]
      519 LOADK                            R28 K108 ["Dialog"]
      520 LOADK                            R29 K144 ["ImportingAnimation"]
      521 NAMECALL                         R26 R1 K107 ["getText"]
      523 CALL                             R26 3 1
      524 SETTABLEKS                       R26 R25 K63 ["Text"]
      526 CALL                             R23 2 1
      527 JUMPIF                           R23 ; [+1]
      528 LOADNIL                          R23
      529 SETTABLEKS                       R23 R22 K42 ["InProgressCover"]
      531 MOVE                             R23 R11
      532 JUMPIFNOT                        R23 ; [+61]
      533 GETUPVAL                         R23 0
      534 GETTABLEKS                       R23 R23 K22 ["createElement"]
      536 GETUPVAL                         R24 15
      537 DUPTABLE                         R25 K145 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      538 LOADK                            R28 K142 ["Menu"]
      539 LOADK                            R29 K146 ["Overwrite_Migrated"]
      540 DUPTABLE                         R30 K147 [{"overwriteName"}]
      541 SETTABLEKS                       R11 R30 K10 ["overwriteName"]
      543 NAMECALL                         R26 R1 K107 ["getText"]
      545 CALL                             R26 4 1
      546 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      548 NEWTABLE                         R26 0 2
      550 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      551 LOADB                            R28 0
      552 SETTABLEKS                       R28 R27 K110 ["Key"]
      554 LOADK                            R30 K108 ["Dialog"]
      555 LOADK                            R31 K148 ["No"]
      556 NAMECALL                         R28 R1 K107 ["getText"]
      558 CALL                             R28 3 1
      559 SETTABLEKS                       R28 R27 K63 ["Text"]
      561 LOADK                            R28 K114 ["Round"]
      562 SETTABLEKS                       R28 R27 K111 ["Style"]
      564 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      565 LOADB                            R29 1
      566 SETTABLEKS                       R29 R28 K110 ["Key"]
      568 LOADK                            R31 K108 ["Dialog"]
      569 LOADK                            R32 K149 ["Yes"]
      570 NAMECALL                         R29 R1 K107 ["getText"]
      572 CALL                             R29 3 1
      573 SETTABLEKS                       R29 R28 K63 ["Text"]
      575 LOADK                            R29 K116 ["RoundPrimary"]
      576 SETTABLEKS                       R29 R28 K111 ["Style"]
      578 SETLIST                          R26 R27 2 [1]
      580 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      582 NEWCLOSURE                       R26 P3
      583 CAPTURE                          VAL R0
      584 CAPTURE                          VAL R2
      585 CAPTURE                          VAL R16
      586 CAPTURE                          VAL R11
      587 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      589 GETTABLEKS                       R26 R0 K150 ["hideOverwritePrompt"]
      591 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      593 CALL                             R23 2 1
      594 SETTABLEKS                       R23 R22 K43 ["OverwritePrompt"]
      596 JUMPIFNOT                        R13 ; [+57]
      597 GETUPVAL                         R23 0
      598 GETTABLEKS                       R23 R23 K22 ["createElement"]
      600 GETUPVAL                         R24 15
      601 DUPTABLE                         R25 K145 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      602 LOADK                            R28 K108 ["Dialog"]
      603 LOADK                            R29 K44 ["PromotePrompt"]
      604 NAMECALL                         R26 R1 K107 ["getText"]
      606 CALL                             R26 3 1
      607 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      609 NEWTABLE                         R26 0 2
      611 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      612 LOADB                            R28 0
      613 SETTABLEKS                       R28 R27 K110 ["Key"]
      615 LOADK                            R30 K108 ["Dialog"]
      616 LOADK                            R31 K113 ["Cancel"]
      617 NAMECALL                         R28 R1 K107 ["getText"]
      619 CALL                             R28 3 1
      620 SETTABLEKS                       R28 R27 K63 ["Text"]
      622 LOADK                            R28 K114 ["Round"]
      623 SETTABLEKS                       R28 R27 K111 ["Style"]
      625 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      626 LOADB                            R29 1
      627 SETTABLEKS                       R29 R28 K110 ["Key"]
      629 LOADK                            R31 K108 ["Dialog"]
      630 LOADK                            R32 K151 ["Confirm"]
      631 NAMECALL                         R29 R1 K107 ["getText"]
      633 CALL                             R29 3 1
      634 SETTABLEKS                       R29 R28 K63 ["Text"]
      636 LOADK                            R29 K116 ["RoundPrimary"]
      637 SETTABLEKS                       R29 R28 K111 ["Style"]
      639 SETLIST                          R26 R27 2 [1]
      641 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      643 NEWCLOSURE                       R26 P4
      644 CAPTURE                          VAL R0
      645 CAPTURE                          VAL R2
      646 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      648 GETTABLEKS                       R26 R0 K152 ["hidePromotePrompt"]
      650 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      652 CALL                             R23 2 1
      653 JUMPIF                           R23 ; [+1]
      654 LOADNIL                          R23
      655 SETTABLEKS                       R23 R22 K44 ["PromotePrompt"]
      657 MOVE                             R23 R12
      658 JUMPIFNOT                        R23 ; [+90]
      659 GETUPVAL                         R23 0
      660 GETTABLEKS                       R23 R23 K22 ["createElement"]
      662 GETUPVAL                         R24 7
      663 DUPTABLE                         R25 K153 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnButtonClicked", "OnTextSubmitted", "OnClose"}]
      664 LOADK                            R28 K105 ["Title"]
      665 LOADK                            R29 K154 ["ConfirmSave"]
      666 NAMECALL                         R26 R1 K107 ["getText"]
      668 CALL                             R26 3 1
      669 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      671 LOADK                            R28 K108 ["Dialog"]
      672 LOADK                            R29 K3 ["AnimationName"]
      673 NAMECALL                         R26 R1 K107 ["getText"]
      675 CALL                             R26 3 1
      676 SETTABLEKS                       R26 R25 K99 ["InputText"]
      678 LOADK                            R28 K108 ["Dialog"]
      679 LOADK                            R29 K109 ["SaveLocation"]
      680 NAMECALL                         R26 R1 K107 ["getText"]
      682 CALL                             R26 3 1
      683 SETTABLEKS                       R26 R25 K100 ["NoticeText"]
      685 SETTABLEKS                       R4 R25 K63 ["Text"]
      687 NEWTABLE                         R26 0 3
      689 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      690 LOADK                            R28 K155 ["Delete"]
      691 SETTABLEKS                       R28 R27 K110 ["Key"]
      693 LOADK                            R30 K108 ["Dialog"]
      694 LOADK                            R31 K155 ["Delete"]
      695 NAMECALL                         R28 R1 K107 ["getText"]
      697 CALL                             R28 3 1
      698 SETTABLEKS                       R28 R27 K63 ["Text"]
      700 LOADK                            R28 K114 ["Round"]
      701 SETTABLEKS                       R28 R27 K111 ["Style"]
      703 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      704 LOADB                            R29 0
      705 SETTABLEKS                       R29 R28 K110 ["Key"]
      707 LOADK                            R31 K108 ["Dialog"]
      708 LOADK                            R32 K113 ["Cancel"]
      709 NAMECALL                         R29 R1 K107 ["getText"]
      711 CALL                             R29 3 1
      712 SETTABLEKS                       R29 R28 K63 ["Text"]
      714 LOADK                            R29 K114 ["Round"]
      715 SETTABLEKS                       R29 R28 K111 ["Style"]
      717 DUPTABLE                         R29 K112 [{"Key", "Text", "Style"}]
      718 LOADB                            R30 1
      719 SETTABLEKS                       R30 R29 K110 ["Key"]
      721 LOADK                            R32 K108 ["Dialog"]
      722 LOADK                            R33 K115 ["Save"]
      723 NAMECALL                         R30 R1 K107 ["getText"]
      725 CALL                             R30 3 1
      726 SETTABLEKS                       R30 R29 K63 ["Text"]
      728 LOADK                            R30 K116 ["RoundPrimary"]
      729 SETTABLEKS                       R30 R29 K111 ["Style"]
      731 SETLIST                          R26 R27 3 [1]
      733 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      735 NEWCLOSURE                       R26 P5
      736 CAPTURE                          VAL R0
      737 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      739 NEWCLOSURE                       R26 P6
      740 CAPTURE                          VAL R2
      741 CAPTURE                          VAL R0
      742 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      744 GETTABLEKS                       R26 R0 K156 ["hideLoadNewPrompt"]
      746 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      748 CALL                             R23 2 1
      749 SETTABLEKS                       R23 R22 K45 ["LoadNewPrompt"]
      751 MOVE                             R23 R17
      752 JUMPIFNOT                        R23 ; [+55]
      753 GETUPVAL                         R23 0
      754 GETTABLEKS                       R23 R23 K22 ["createElement"]
      756 GETUPVAL                         R24 15
      757 DUPTABLE                         R25 K145 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      758 LOADK                            R28 K157 ["AnimationFromVideo"]
      759 LOADK                            R29 K158 ["TutorialText"]
      760 NAMECALL                         R26 R1 K107 ["getText"]
      762 CALL                             R26 3 1
      763 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      765 NEWTABLE                         R26 0 2
      767 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      768 LOADB                            R28 0
      769 SETTABLEKS                       R28 R27 K110 ["Key"]
      771 LOADK                            R30 K108 ["Dialog"]
      772 LOADK                            R31 K113 ["Cancel"]
      773 NAMECALL                         R28 R1 K107 ["getText"]
      775 CALL                             R28 3 1
      776 SETTABLEKS                       R28 R27 K63 ["Text"]
      778 LOADK                            R28 K114 ["Round"]
      779 SETTABLEKS                       R28 R27 K111 ["Style"]
      781 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      782 LOADB                            R29 1
      783 SETTABLEKS                       R29 R28 K110 ["Key"]
      785 LOADK                            R31 K157 ["AnimationFromVideo"]
      786 LOADK                            R32 K159 ["ChooseVideo"]
      787 NAMECALL                         R29 R1 K107 ["getText"]
      789 CALL                             R29 3 1
      790 SETTABLEKS                       R29 R28 K63 ["Text"]
      792 LOADK                            R29 K116 ["RoundPrimary"]
      793 SETTABLEKS                       R29 R28 K111 ["Style"]
      795 SETLIST                          R26 R27 2 [1]
      797 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      799 NEWCLOSURE                       R26 P7
      800 CAPTURE                          VAL R0
      801 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      803 NEWCLOSURE                       R26 P8
      804 CAPTURE                          VAL R0
      805 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      807 CALL                             R23 2 1
      808 SETTABLEKS                       R23 R22 K46 ["CreateAnimationFromVideoTutorial"]
      810 MOVE                             R23 R18
      811 JUMPIFNOT                        R23 ; [+56]
      812 GETUPVAL                         R23 0
      813 GETTABLEKS                       R23 R23 K22 ["createElement"]
      815 GETUPVAL                         R24 15
      816 DUPTABLE                         R25 K160 [{"Size", "PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      817 GETIMPORT                        R26 K26 [UDim2.new]
      819 LOADN                            R27 0
      820 GETUPVAL                         R28 1
      821 GETTABLEKS                       R28 R28 K161 ["PROMPT_SIZE"]
      823 GETTABLEKS                       R28 R28 K162 ["Width"]
      825 GETTABLEKS                       R28 R28 K163 ["Offset"]
      827 LOADN                            R29 0
      828 LOADN                            R30 180
      829 CALL                             R26 4 1
      830 SETTABLEKS                       R26 R25 K29 ["Size"]
      832 LOADK                            R28 K157 ["AnimationFromVideo"]
      833 LOADK                            R29 K164 ["AgeRestricted"]
      834 NAMECALL                         R26 R1 K107 ["getText"]
      836 CALL                             R26 3 1
      837 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      839 NEWTABLE                         R26 0 1
      841 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      842 LOADB                            R28 0
      843 SETTABLEKS                       R28 R27 K110 ["Key"]
      845 LOADK                            R30 K108 ["Dialog"]
      846 LOADK                            R31 K113 ["Cancel"]
      847 NAMECALL                         R28 R1 K107 ["getText"]
      849 CALL                             R28 3 1
      850 SETTABLEKS                       R28 R27 K63 ["Text"]
      852 LOADK                            R28 K114 ["Round"]
      853 SETTABLEKS                       R28 R27 K111 ["Style"]
      855 SETLIST                          R26 R27 1 [1]
      857 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      859 NEWCLOSURE                       R26 P9
      860 CAPTURE                          VAL R0
      861 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      863 NEWCLOSURE                       R26 P10
      864 CAPTURE                          VAL R0
      865 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      867 CALL                             R23 2 1
      868 SETTABLEKS                       R23 R22 K47 ["CreateAnimationFromVideoAgeGate"]
      870 CALL                             R19 3 -1
      871 RETURN                           R19 -1

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
       17 GETTABLEKS                       R3 R0 K5 ["Status"]
       19 GETTABLEKS                       R3 R3 K6 ["RooInstance"]
       21 SETTABLEKS                       R3 R2 K3 ["RootInstance"]
       23 RETURN                           R2 1

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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

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
       42 GETTABLEKS                       R9 R6 K14 ["LuaFlags"]
       44 GETTABLEKS                       R9 R9 K15 ["GetFFlagStoreAnimationsInAnimSaves"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K11 [require]
       49 GETTABLEKS                       R10 R6 K12 ["Packages"]
       51 GETTABLEKS                       R10 R10 K16 ["Roact"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K11 [require]
       56 GETTABLEKS                       R11 R6 K12 ["Packages"]
       58 GETTABLEKS                       R11 R11 K17 ["RoactRodux"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K11 [require]
       63 GETTABLEKS                       R12 R6 K18 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Util"]
       67 GETTABLEKS                       R12 R12 K20 ["Constants"]
       69 CALL                             R11 1 1
       70 GETIMPORT                        R12 K11 [require]
       72 GETTABLEKS                       R13 R6 K18 ["Src"]
       74 GETTABLEKS                       R13 R13 K19 ["Util"]
       76 GETTABLEKS                       R13 R13 K21 ["RigSerialization"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K24 [UDim.new]
       81 LOADN                            R14 0
       82 GETTABLEKS                       R15 R11 K25 ["INDENT_PADDING"]
       84 CALL                             R13 2 1
       85 GETTABLEKS                       R14 R7 K26 ["ContextServices"]
       87 GETTABLEKS                       R15 R14 K27 ["withContext"]
       89 GETTABLEKS                       R16 R6 K18 ["Src"]
       91 GETTABLEKS                       R16 R16 K28 ["Actions"]
       93 GETIMPORT                        R17 K11 [require]
       95 GETTABLEKS                       R18 R16 K29 ["SetInReviewState"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K11 [require]
      100 GETTABLEKS                       R19 R16 K30 ["SetIsDirty"]
      102 CALL                             R18 1 1
      103 GETIMPORT                        R19 K11 [require]
      105 GETTABLEKS                       R20 R16 K31 ["SetIsLegacyAnimSaves"]
      107 CALL                             R19 1 1
      108 GETIMPORT                        R20 K11 [require]
      110 GETTABLEKS                       R21 R16 K32 ["SetPlayState"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K11 [require]
      115 GETTABLEKS                       R22 R16 K33 ["SetReduceKeyframesDialogMode"]
      117 CALL                             R21 1 1
      118 GETTABLEKS                       R22 R6 K18 ["Src"]
      120 GETTABLEKS                       R22 R22 K34 ["Components"]
      122 GETIMPORT                        R23 K11 [require]
      124 GETTABLEKS                       R24 R22 K35 ["Toast"]
      126 GETTABLEKS                       R24 R24 K36 ["ActionToast"]
      128 CALL                             R23 1 1
      129 GETIMPORT                        R24 K11 [require]
      131 GETTABLEKS                       R25 R22 K37 ["AnimationClipMenu"]
      133 CALL                             R24 1 1
      134 GETIMPORT                        R25 K11 [require]
      136 GETTABLEKS                       R26 R22 K38 ["ContextButton"]
      138 CALL                             R25 1 1
      139 GETIMPORT                        R26 K11 [require]
      141 GETTABLEKS                       R27 R22 K39 ["EditEventsDialog"]
      143 GETTABLEKS                       R27 R27 K40 ["FocusedPrompt"]
      145 CALL                             R26 1 1
      146 GETIMPORT                        R27 K11 [require]
      148 GETTABLEKS                       R28 R22 K41 ["MultipleOptionPrompt"]
      150 CALL                             R27 1 1
      151 GETIMPORT                        R28 K11 [require]
      153 GETTABLEKS                       R29 R22 K42 ["InProgressCover"]
      155 CALL                             R28 1 1
      156 GETIMPORT                        R29 K11 [require]
      158 GETTABLEKS                       R30 R22 K43 ["TextEntryPrompt"]
      160 CALL                             R29 1 1
      161 GETTABLEKS                       R30 R6 K18 ["Src"]
      163 GETTABLEKS                       R30 R30 K44 ["Thunks"]
      165 GETIMPORT                        R31 K11 [require]
      167 GETTABLEKS                       R32 R30 K45 ["Exporting"]
      169 GETTABLEKS                       R32 R32 K46 ["CreateFromVideoAndImportFBXAnimationUserMayChooseModel"]
      171 CALL                             R31 1 1
      172 GETIMPORT                        R32 K11 [require]
      174 GETTABLEKS                       R33 R30 K47 ["CreateNewAnimation"]
      176 CALL                             R32 1 1
      177 GETIMPORT                        R33 K11 [require]
      179 GETTABLEKS                       R34 R30 K48 ["GenerateControlRigData"]
      181 CALL                             R33 1 1
      182 GETIMPORT                        R34 K11 [require]
      184 GETTABLEKS                       R35 R30 K45 ["Exporting"]
      186 GETTABLEKS                       R35 R35 K49 ["ImportFBXAnimationUserMayChooseModel"]
      188 CALL                             R34 1 1
      189 GETIMPORT                        R35 K11 [require]
      191 GETTABLEKS                       R36 R30 K45 ["Exporting"]
      193 GETTABLEKS                       R36 R36 K50 ["ImportKeyframeSequence"]
      195 CALL                             R35 1 1
      196 GETIMPORT                        R36 K11 [require]
      198 GETTABLEKS                       R37 R30 K45 ["Exporting"]
      200 GETTABLEKS                       R37 R37 K51 ["ImportLoadedFBXAnimation"]
      202 CALL                             R36 1 1
      203 GETIMPORT                        R37 K11 [require]
      205 GETTABLEKS                       R38 R30 K45 ["Exporting"]
      207 GETTABLEKS                       R38 R38 K52 ["LoadAnimation"]
      209 CALL                             R37 1 1
      210 GETIMPORT                        R38 K11 [require]
      212 GETTABLEKS                       R39 R30 K53 ["LoadAnimationData"]
      214 CALL                             R38 1 1
      215 GETIMPORT                        R39 K11 [require]
      217 GETTABLEKS                       R40 R30 K54 ["SanitizeAnimation"]
      219 CALL                             R39 1 1
      220 GETIMPORT                        R40 K11 [require]
      222 GETTABLEKS                       R41 R30 K45 ["Exporting"]
      224 GETTABLEKS                       R41 R41 K55 ["SaveAnimation"]
      226 CALL                             R40 1 1
      227 GETIMPORT                        R41 K11 [require]
      229 GETTABLEKS                       R42 R30 K56 ["UpdateMetadata"]
      231 CALL                             R41 1 1
      232 GETIMPORT                        R42 K11 [require]
      234 GETTABLEKS                       R43 R30 K45 ["Exporting"]
      236 GETTABLEKS                       R43 R43 K57 ["LoadImportedKeyframeSequence"]
      238 CALL                             R42 1 1
      239 GETIMPORT                        R43 K11 [require]
      241 GETTABLEKS                       R44 R30 K45 ["Exporting"]
      243 GETTABLEKS                       R44 R44 K58 ["SavePassedInAnimation"]
      245 CALL                             R43 1 1
      246 GETTABLEKS                       R44 R7 K59 ["UI"]
      248 GETTABLEKS                       R45 R44 K60 ["Pane"]
      250 GETTABLEKS                       R46 R44 K61 ["TextInput"]
      252 GETIMPORT                        R47 K11 [require]
      254 GETTABLEKS                       R48 R6 K14 ["LuaFlags"]
      256 GETTABLEKS                       R48 R48 K62 ["GetFFlagFBXLoop"]
      258 CALL                             R47 1 1
      259 GETTABLEKS                       R48 R9 K63 ["PureComponent"]
      261 LOADK                            R50 K64 ["AnimationClipDropdown"]
      262 NAMECALL                         R48 R48 K65 ["extend"]
      264 CALL                             R48 2 1
      265 DUPCLOSURE                       R49 K66 [PROTO_36]
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R9
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R4
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R1
      274 SETTABLEKS                       R49 R48 K67 ["init"]
      276 DUPCLOSURE                       R49 K68 [PROTO_48]
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R11
      279 CAPTURE                          VAL R13
      280 CAPTURE                          VAL R45
      281 CAPTURE                          VAL R46
      282 CAPTURE                          VAL R25
      283 CAPTURE                          VAL R24
      284 CAPTURE                          VAL R29
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R27
      287 CAPTURE                          VAL R0
      288 CAPTURE                          VAL R47
      289 CAPTURE                          VAL R8
      290 CAPTURE                          VAL R12
      291 CAPTURE                          VAL R28
      292 CAPTURE                          VAL R26
      293 SETTABLEKS                       R49 R48 K69 ["render"]
      295 MOVE                             R49 R15
      296 DUPTABLE                         R50 K74 [{"Stylizer", "Localization", "Plugin", "Analytics"}]
      297 GETTABLEKS                       R51 R14 K70 ["Stylizer"]
      299 SETTABLEKS                       R51 R50 K70 ["Stylizer"]
      301 GETTABLEKS                       R51 R14 K71 ["Localization"]
      303 SETTABLEKS                       R51 R50 K71 ["Localization"]
      305 GETTABLEKS                       R51 R14 K72 ["Plugin"]
      307 SETTABLEKS                       R51 R50 K72 ["Plugin"]
      309 GETTABLEKS                       R51 R14 K73 ["Analytics"]
      311 SETTABLEKS                       R51 R50 K73 ["Analytics"]
      313 CALL                             R49 1 1
      314 MOVE                             R50 R48
      315 CALL                             R49 1 1
      316 MOVE                             R48 R49
      317 DUPCLOSURE                       R49 K75 [PROTO_49]
      318 DUPCLOSURE                       R50 K76 [PROTO_68]
      319 CAPTURE                          VAL R32
      320 CAPTURE                          VAL R38
      321 CAPTURE                          VAL R37
      322 CAPTURE                          VAL R40
      323 CAPTURE                          VAL R43
      324 CAPTURE                          VAL R35
      325 CAPTURE                          VAL R34
      326 CAPTURE                          VAL R31
      327 CAPTURE                          VAL R33
      328 CAPTURE                          VAL R36
      329 CAPTURE                          VAL R39
      330 CAPTURE                          VAL R41
      331 CAPTURE                          VAL R17
      332 CAPTURE                          VAL R18
      333 CAPTURE                          VAL R19
      334 CAPTURE                          VAL R20
      335 CAPTURE                          VAL R21
      336 CAPTURE                          VAL R42
      337 GETTABLEKS                       R51 R10 K77 ["connect"]
      339 MOVE                             R52 R49
      340 MOVE                             R53 R50
      341 CALL                             R51 2 1
      342 MOVE                             R52 R48
      343 CALL                             R51 1 -1
      344 RETURN                           R51 -1
