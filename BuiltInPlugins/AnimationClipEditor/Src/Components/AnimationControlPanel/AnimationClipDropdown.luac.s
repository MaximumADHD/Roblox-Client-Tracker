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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["hideRestPoseChoicePrompt"]
        3 CALL                             R3 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Cancel"] ; [+6]
        6 GETUPVAL                         R3 0
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K2 ["filePath"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["showInProgressCover"]
       14 CALL                             R3 0 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["props"]
       18 GETTABLEKS                       R3 R3 K5 ["RootInstance"]
       20 LOADNIL                          R4
       21 JUMPIFNOTEQKS                    R1 K6 ["FromRigInFile"] ; [+4]
       23 GETIMPORT                        R4 K9 [Enum.RestPoseModel.FromRigInFile]
       25 JUMP                             ; [+7]
       26 JUMPIFNOTEQKS                    R1 K10 ["FromRigInACE"] ; [+4]
       28 GETIMPORT                        R4 K11 [Enum.RestPoseModel.FromRigInACE]
       30 JUMP                             ; [+2]
       31 GETIMPORT                        R4 K9 [Enum.RestPoseModel.FromRigInFile]
       33 GETUPVAL                         R5 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K2 ["filePath"]
       37 NAMECALL                         R5 R5 K12 ["StartSessionWithPathAsync"]
       39 CALL                             R5 2 1
       40 MOVE                             R8 R3
       41 MOVE                             R9 R4
       42 NAMECALL                         R6 R5 K13 ["GetKeyframeSequencesForSelectedRestPose"]
       44 CALL                             R6 3 1
       45 LENGTH                           R7 R6
       46 JUMPIFNOTEQKN                    R7 K14 [0] ; [+10]
       48 GETUPVAL                         R7 0
       49 LOADNIL                          R8
       50 SETTABLEKS                       R8 R7 K2 ["filePath"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K15 ["hideInProgressCover"]
       55 CALL                             R7 0 0
       56 RETURN                           R0 0
       57 GETTABLEN                        R7 R6 1
       58 GETUPVAL                         R8 2
       59 CALL                             R8 0 1
       60 JUMPIFNOT                        R8 ; [+3]
       61 LOADB                            R8 0
       62 SETTABLEKS                       R8 R7 K16 ["Loop"]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K4 ["props"]
       67 GETTABLEKS                       R8 R8 K17 ["LoadImportedKeyframeSequence"]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K4 ["props"]
       72 GETTABLEKS                       R9 R9 K18 ["Plugin"]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K4 ["props"]
       77 GETTABLEKS                       R10 R10 K19 ["Analytics"]
       79 MOVE                             R11 R7
       80 MOVE                             R12 R2
       81 CALL                             R8 4 0
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K15 ["hideInProgressCover"]
       85 CALL                             R8 0 0
       86 GETUPVAL                         R8 0
       87 LOADNIL                          R9
       88 SETTABLEKS                       R9 R8 K2 ["filePath"]
       90 LOADN                            R10 1
       91 LENGTH                           R8 R6
       92 LOADN                            R9 1
       93 FORNPREP                         R8
       94 GETTABLE                         R11 R6 R10
       95 GETUPVAL                         R12 3
       96 GETTABLEKS                       R12 R12 K20 ["fromKeyframeSequence"]
       98 MOVE                             R13 R11
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R12 K21 ["Metadata"]
      102 GETTABLEKS                       R14 R11 K22 ["Name"]
      104 SETTABLEKS                       R14 R13 K22 ["Name"]
      106 GETUPVAL                         R13 4
      107 GETTABLEKS                       R13 R13 K23 ["SavePassedInAnimation"]
      109 GETTABLEKS                       R14 R11 K22 ["Name"]
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K4 ["props"]
      114 GETTABLEKS                       R15 R15 K19 ["Analytics"]
      116 GETUPVAL                         R16 0
      117 GETTABLEKS                       R16 R16 K4 ["props"]
      119 GETTABLEKS                       R16 R16 K24 ["Localization"]
      121 MOVE                             R17 R12
      122 LOADB                            R18 0
      123 MOVE                             R19 R3
      124 CALL                             R13 6 0
      125 FORNLOOP                         R8
      126 RETURN                           R0 0

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
      409 JUMPIFNOT                        R23 ; [+100]
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
      506 CAPTURE                          VAL R2
      507 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      509 CALL                             R23 2 1
      510 SETTABLEKS                       R23 R22 K41 ["RestPoseChoicePrompt"]
      512 JUMPIFNOT                        R14 ; [+14]
      513 GETUPVAL                         R23 0
      514 GETTABLEKS                       R23 R23 K22 ["createElement"]
      516 GETUPVAL                         R24 13
      517 DUPTABLE                         R25 K143 [{"Text"}]
      518 LOADK                            R28 K108 ["Dialog"]
      519 LOADK                            R29 K144 ["ImportingAnimation"]
      520 NAMECALL                         R26 R1 K107 ["getText"]
      522 CALL                             R26 3 1
      523 SETTABLEKS                       R26 R25 K63 ["Text"]
      525 CALL                             R23 2 1
      526 JUMPIF                           R23 ; [+1]
      527 LOADNIL                          R23
      528 SETTABLEKS                       R23 R22 K42 ["InProgressCover"]
      530 MOVE                             R23 R11
      531 JUMPIFNOT                        R23 ; [+61]
      532 GETUPVAL                         R23 0
      533 GETTABLEKS                       R23 R23 K22 ["createElement"]
      535 GETUPVAL                         R24 14
      536 DUPTABLE                         R25 K145 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      537 LOADK                            R28 K142 ["Menu"]
      538 LOADK                            R29 K146 ["Overwrite_Migrated"]
      539 DUPTABLE                         R30 K147 [{"overwriteName"}]
      540 SETTABLEKS                       R11 R30 K10 ["overwriteName"]
      542 NAMECALL                         R26 R1 K107 ["getText"]
      544 CALL                             R26 4 1
      545 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      547 NEWTABLE                         R26 0 2
      549 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      550 LOADB                            R28 0
      551 SETTABLEKS                       R28 R27 K110 ["Key"]
      553 LOADK                            R30 K108 ["Dialog"]
      554 LOADK                            R31 K148 ["No"]
      555 NAMECALL                         R28 R1 K107 ["getText"]
      557 CALL                             R28 3 1
      558 SETTABLEKS                       R28 R27 K63 ["Text"]
      560 LOADK                            R28 K114 ["Round"]
      561 SETTABLEKS                       R28 R27 K111 ["Style"]
      563 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      564 LOADB                            R29 1
      565 SETTABLEKS                       R29 R28 K110 ["Key"]
      567 LOADK                            R31 K108 ["Dialog"]
      568 LOADK                            R32 K149 ["Yes"]
      569 NAMECALL                         R29 R1 K107 ["getText"]
      571 CALL                             R29 3 1
      572 SETTABLEKS                       R29 R28 K63 ["Text"]
      574 LOADK                            R29 K116 ["RoundPrimary"]
      575 SETTABLEKS                       R29 R28 K111 ["Style"]
      577 SETLIST                          R26 R27 2 [1]
      579 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      581 NEWCLOSURE                       R26 P3
      582 CAPTURE                          VAL R0
      583 CAPTURE                          VAL R2
      584 CAPTURE                          VAL R16
      585 CAPTURE                          VAL R11
      586 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      588 GETTABLEKS                       R26 R0 K150 ["hideOverwritePrompt"]
      590 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      592 CALL                             R23 2 1
      593 SETTABLEKS                       R23 R22 K43 ["OverwritePrompt"]
      595 JUMPIFNOT                        R13 ; [+57]
      596 GETUPVAL                         R23 0
      597 GETTABLEKS                       R23 R23 K22 ["createElement"]
      599 GETUPVAL                         R24 14
      600 DUPTABLE                         R25 K145 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      601 LOADK                            R28 K108 ["Dialog"]
      602 LOADK                            R29 K44 ["PromotePrompt"]
      603 NAMECALL                         R26 R1 K107 ["getText"]
      605 CALL                             R26 3 1
      606 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      608 NEWTABLE                         R26 0 2
      610 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      611 LOADB                            R28 0
      612 SETTABLEKS                       R28 R27 K110 ["Key"]
      614 LOADK                            R30 K108 ["Dialog"]
      615 LOADK                            R31 K113 ["Cancel"]
      616 NAMECALL                         R28 R1 K107 ["getText"]
      618 CALL                             R28 3 1
      619 SETTABLEKS                       R28 R27 K63 ["Text"]
      621 LOADK                            R28 K114 ["Round"]
      622 SETTABLEKS                       R28 R27 K111 ["Style"]
      624 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      625 LOADB                            R29 1
      626 SETTABLEKS                       R29 R28 K110 ["Key"]
      628 LOADK                            R31 K108 ["Dialog"]
      629 LOADK                            R32 K151 ["Confirm"]
      630 NAMECALL                         R29 R1 K107 ["getText"]
      632 CALL                             R29 3 1
      633 SETTABLEKS                       R29 R28 K63 ["Text"]
      635 LOADK                            R29 K116 ["RoundPrimary"]
      636 SETTABLEKS                       R29 R28 K111 ["Style"]
      638 SETLIST                          R26 R27 2 [1]
      640 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      642 NEWCLOSURE                       R26 P4
      643 CAPTURE                          VAL R0
      644 CAPTURE                          VAL R2
      645 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      647 GETTABLEKS                       R26 R0 K152 ["hidePromotePrompt"]
      649 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      651 CALL                             R23 2 1
      652 JUMPIF                           R23 ; [+1]
      653 LOADNIL                          R23
      654 SETTABLEKS                       R23 R22 K44 ["PromotePrompt"]
      656 MOVE                             R23 R12
      657 JUMPIFNOT                        R23 ; [+90]
      658 GETUPVAL                         R23 0
      659 GETTABLEKS                       R23 R23 K22 ["createElement"]
      661 GETUPVAL                         R24 7
      662 DUPTABLE                         R25 K153 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnButtonClicked", "OnTextSubmitted", "OnClose"}]
      663 LOADK                            R28 K105 ["Title"]
      664 LOADK                            R29 K154 ["ConfirmSave"]
      665 NAMECALL                         R26 R1 K107 ["getText"]
      667 CALL                             R26 3 1
      668 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      670 LOADK                            R28 K108 ["Dialog"]
      671 LOADK                            R29 K3 ["AnimationName"]
      672 NAMECALL                         R26 R1 K107 ["getText"]
      674 CALL                             R26 3 1
      675 SETTABLEKS                       R26 R25 K99 ["InputText"]
      677 LOADK                            R28 K108 ["Dialog"]
      678 LOADK                            R29 K109 ["SaveLocation"]
      679 NAMECALL                         R26 R1 K107 ["getText"]
      681 CALL                             R26 3 1
      682 SETTABLEKS                       R26 R25 K100 ["NoticeText"]
      684 SETTABLEKS                       R4 R25 K63 ["Text"]
      686 NEWTABLE                         R26 0 3
      688 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      689 LOADK                            R28 K155 ["Delete"]
      690 SETTABLEKS                       R28 R27 K110 ["Key"]
      692 LOADK                            R30 K108 ["Dialog"]
      693 LOADK                            R31 K155 ["Delete"]
      694 NAMECALL                         R28 R1 K107 ["getText"]
      696 CALL                             R28 3 1
      697 SETTABLEKS                       R28 R27 K63 ["Text"]
      699 LOADK                            R28 K114 ["Round"]
      700 SETTABLEKS                       R28 R27 K111 ["Style"]
      702 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      703 LOADB                            R29 0
      704 SETTABLEKS                       R29 R28 K110 ["Key"]
      706 LOADK                            R31 K108 ["Dialog"]
      707 LOADK                            R32 K113 ["Cancel"]
      708 NAMECALL                         R29 R1 K107 ["getText"]
      710 CALL                             R29 3 1
      711 SETTABLEKS                       R29 R28 K63 ["Text"]
      713 LOADK                            R29 K114 ["Round"]
      714 SETTABLEKS                       R29 R28 K111 ["Style"]
      716 DUPTABLE                         R29 K112 [{"Key", "Text", "Style"}]
      717 LOADB                            R30 1
      718 SETTABLEKS                       R30 R29 K110 ["Key"]
      720 LOADK                            R32 K108 ["Dialog"]
      721 LOADK                            R33 K115 ["Save"]
      722 NAMECALL                         R30 R1 K107 ["getText"]
      724 CALL                             R30 3 1
      725 SETTABLEKS                       R30 R29 K63 ["Text"]
      727 LOADK                            R30 K116 ["RoundPrimary"]
      728 SETTABLEKS                       R30 R29 K111 ["Style"]
      730 SETLIST                          R26 R27 3 [1]
      732 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      734 NEWCLOSURE                       R26 P5
      735 CAPTURE                          VAL R0
      736 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      738 NEWCLOSURE                       R26 P6
      739 CAPTURE                          VAL R2
      740 CAPTURE                          VAL R0
      741 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      743 GETTABLEKS                       R26 R0 K156 ["hideLoadNewPrompt"]
      745 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      747 CALL                             R23 2 1
      748 SETTABLEKS                       R23 R22 K45 ["LoadNewPrompt"]
      750 MOVE                             R23 R17
      751 JUMPIFNOT                        R23 ; [+55]
      752 GETUPVAL                         R23 0
      753 GETTABLEKS                       R23 R23 K22 ["createElement"]
      755 GETUPVAL                         R24 14
      756 DUPTABLE                         R25 K145 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      757 LOADK                            R28 K157 ["AnimationFromVideo"]
      758 LOADK                            R29 K158 ["TutorialText"]
      759 NAMECALL                         R26 R1 K107 ["getText"]
      761 CALL                             R26 3 1
      762 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      764 NEWTABLE                         R26 0 2
      766 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      767 LOADB                            R28 0
      768 SETTABLEKS                       R28 R27 K110 ["Key"]
      770 LOADK                            R30 K108 ["Dialog"]
      771 LOADK                            R31 K113 ["Cancel"]
      772 NAMECALL                         R28 R1 K107 ["getText"]
      774 CALL                             R28 3 1
      775 SETTABLEKS                       R28 R27 K63 ["Text"]
      777 LOADK                            R28 K114 ["Round"]
      778 SETTABLEKS                       R28 R27 K111 ["Style"]
      780 DUPTABLE                         R28 K112 [{"Key", "Text", "Style"}]
      781 LOADB                            R29 1
      782 SETTABLEKS                       R29 R28 K110 ["Key"]
      784 LOADK                            R31 K157 ["AnimationFromVideo"]
      785 LOADK                            R32 K159 ["ChooseVideo"]
      786 NAMECALL                         R29 R1 K107 ["getText"]
      788 CALL                             R29 3 1
      789 SETTABLEKS                       R29 R28 K63 ["Text"]
      791 LOADK                            R29 K116 ["RoundPrimary"]
      792 SETTABLEKS                       R29 R28 K111 ["Style"]
      794 SETLIST                          R26 R27 2 [1]
      796 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      798 NEWCLOSURE                       R26 P7
      799 CAPTURE                          VAL R0
      800 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      802 NEWCLOSURE                       R26 P8
      803 CAPTURE                          VAL R0
      804 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      806 CALL                             R23 2 1
      807 SETTABLEKS                       R23 R22 K46 ["CreateAnimationFromVideoTutorial"]
      809 MOVE                             R23 R18
      810 JUMPIFNOT                        R23 ; [+56]
      811 GETUPVAL                         R23 0
      812 GETTABLEKS                       R23 R23 K22 ["createElement"]
      814 GETUPVAL                         R24 14
      815 DUPTABLE                         R25 K160 [{"Size", "PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      816 GETIMPORT                        R26 K26 [UDim2.new]
      818 LOADN                            R27 0
      819 GETUPVAL                         R28 1
      820 GETTABLEKS                       R28 R28 K161 ["PROMPT_SIZE"]
      822 GETTABLEKS                       R28 R28 K162 ["Width"]
      824 GETTABLEKS                       R28 R28 K163 ["Offset"]
      826 LOADN                            R29 0
      827 LOADN                            R30 180
      828 CALL                             R26 4 1
      829 SETTABLEKS                       R26 R25 K29 ["Size"]
      831 LOADK                            R28 K157 ["AnimationFromVideo"]
      832 LOADK                            R29 K164 ["AgeRestricted"]
      833 NAMECALL                         R26 R1 K107 ["getText"]
      835 CALL                             R26 3 1
      836 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      838 NEWTABLE                         R26 0 1
      840 DUPTABLE                         R27 K112 [{"Key", "Text", "Style"}]
      841 LOADB                            R28 0
      842 SETTABLEKS                       R28 R27 K110 ["Key"]
      844 LOADK                            R30 K108 ["Dialog"]
      845 LOADK                            R31 K113 ["Cancel"]
      846 NAMECALL                         R28 R1 K107 ["getText"]
      848 CALL                             R28 3 1
      849 SETTABLEKS                       R28 R27 K63 ["Text"]
      851 LOADK                            R28 K114 ["Round"]
      852 SETTABLEKS                       R28 R27 K111 ["Style"]
      854 SETLIST                          R26 R27 1 [1]
      856 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      858 NEWCLOSURE                       R26 P9
      859 CAPTURE                          VAL R0
      860 SETTABLEKS                       R26 R25 K119 ["OnButtonClicked"]
      862 NEWCLOSURE                       R26 P10
      863 CAPTURE                          VAL R0
      864 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      866 CALL                             R23 2 1
      867 SETTABLEKS                       R23 R22 K47 ["CreateAnimationFromVideoAgeGate"]
      869 CALL                             R19 3 -1
      870 RETURN                           R19 -1

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
      256 GETTABLEKS                       R48 R48 K62 ["GetFFlagAnimationExportSupport"]
      258 CALL                             R47 1 1
      259 GETTABLEKS                       R48 R8 K63 ["PureComponent"]
      261 LOADK                            R50 K64 ["AnimationClipDropdown"]
      262 NAMECALL                         R48 R48 K65 ["extend"]
      264 CALL                             R48 2 1
      265 DUPCLOSURE                       R49 K66 [PROTO_36]
      266 CAPTURE                          VAL R10
      267 CAPTURE                          VAL R8
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R3
      270 CAPTURE                          VAL R0
      271 CAPTURE                          VAL R4
      272 CAPTURE                          VAL R5
      273 CAPTURE                          VAL R1
      274 SETTABLEKS                       R49 R48 K67 ["init"]
      276 DUPCLOSURE                       R49 K68 [PROTO_48]
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R10
      279 CAPTURE                          VAL R12
      280 CAPTURE                          VAL R44
      281 CAPTURE                          VAL R45
      282 CAPTURE                          VAL R24
      283 CAPTURE                          VAL R23
      284 CAPTURE                          VAL R28
      285 CAPTURE                          VAL R22
      286 CAPTURE                          VAL R26
      287 CAPTURE                          VAL R0
      288 CAPTURE                          VAL R46
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R27
      291 CAPTURE                          VAL R25
      292 SETTABLEKS                       R49 R48 K69 ["render"]
      294 MOVE                             R49 R14
      295 DUPTABLE                         R50 K74 [{"Stylizer", "Localization", "Plugin", "Analytics"}]
      296 GETTABLEKS                       R51 R13 K70 ["Stylizer"]
      298 SETTABLEKS                       R51 R50 K70 ["Stylizer"]
      300 GETTABLEKS                       R51 R13 K71 ["Localization"]
      302 SETTABLEKS                       R51 R50 K71 ["Localization"]
      304 GETTABLEKS                       R51 R13 K72 ["Plugin"]
      306 SETTABLEKS                       R51 R50 K72 ["Plugin"]
      308 GETTABLEKS                       R51 R13 K73 ["Analytics"]
      310 SETTABLEKS                       R51 R50 K73 ["Analytics"]
      312 CALL                             R49 1 1
      313 MOVE                             R50 R48
      314 CALL                             R49 1 1
      315 MOVE                             R48 R49
      316 DUPCLOSURE                       R49 K75 [PROTO_49]
      317 CAPTURE                          VAL R47
      318 DUPCLOSURE                       R50 K76 [PROTO_68]
      319 CAPTURE                          VAL R31
      320 CAPTURE                          VAL R37
      321 CAPTURE                          VAL R36
      322 CAPTURE                          VAL R39
      323 CAPTURE                          VAL R42
      324 CAPTURE                          VAL R34
      325 CAPTURE                          VAL R33
      326 CAPTURE                          VAL R30
      327 CAPTURE                          VAL R32
      328 CAPTURE                          VAL R35
      329 CAPTURE                          VAL R38
      330 CAPTURE                          VAL R40
      331 CAPTURE                          VAL R16
      332 CAPTURE                          VAL R17
      333 CAPTURE                          VAL R18
      334 CAPTURE                          VAL R19
      335 CAPTURE                          VAL R20
      336 CAPTURE                          VAL R41
      337 GETTABLEKS                       R51 R9 K77 ["connect"]
      339 MOVE                             R52 R49
      340 MOVE                             R53 R50
      341 CALL                             R51 2 1
      342 MOVE                             R52 R48
      343 CALL                             R51 1 -1
      344 RETURN                           R51 -1
