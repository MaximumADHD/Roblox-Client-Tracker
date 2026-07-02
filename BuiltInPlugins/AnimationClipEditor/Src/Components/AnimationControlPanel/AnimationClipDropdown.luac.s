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
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
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
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetReduceKeyframesDialogMode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
        8 GETTABLEKS                       R1 R1 K3 ["FromMenu"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
       39 SETTABLEKS                       R1 R0 K3 ["showImportAnimModelChoicePrompt"]
       41 NEWCLOSURE                       R1 P9
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K20 ["hideImportAnimModelChoicePrompt"]
       45 NEWCLOSURE                       R1 P10
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K21 ["showRestPoseChoicePrompt"]
       49 NEWCLOSURE                       R1 P11
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K22 ["hideRestPoseChoicePrompt"]
       53 NEWCLOSURE                       R1 P12
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R1 R0 K20 ["hideImportAnimModelChoicePrompt"]
       57 NEWCLOSURE                       R1 P13
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U0
       60 SETTABLEKS                       R1 R0 K23 ["showReduceKeyframesDialog"]
       62 NEWCLOSURE                       R1 P14
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K5 ["showPromotePrompt"]
       66 NEWCLOSURE                       R1 P15
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K24 ["hidePromotePrompt"]
       70 NEWCLOSURE                       R1 P16
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R1 R0 K25 ["showLoadNewPrompt"]
       74 NEWCLOSURE                       R1 P17
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U1
       77 SETTABLEKS                       R1 R0 K26 ["hideLoadNewPrompt"]
       79 NEWCLOSURE                       R1 P18
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R1 R0 K27 ["setShowCreateAnimationFromVideoTutorial"]
       83 NEWCLOSURE                       R1 P19
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R1 R0 K28 ["continueAfterCreateAnimationFromVideoTutorial"]
       87 NEWCLOSURE                       R1 P20
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U2
       90 SETTABLEKS                       R1 R0 K29 ["importRequested"]
       92 NEWCLOSURE                       R1 P21
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U3
       95 SETTABLEKS                       R1 R0 K30 ["importFbxRequested"]
       97 DUPCLOSURE                       R1 K31 [PROTO_22]
       98 CAPTURE                          UPVAL U4
       99 SETTABLEKS                       R1 R0 K32 ["requestFilePicker"]
      101 NEWCLOSURE                       R1 P23
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U4
      104 SETTABLEKS                       R1 R0 K33 ["importFromFile"]
      106 NEWCLOSURE                       R1 P24
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U5
      109 SETTABLEKS                       R1 R0 K34 ["importFromFileRequested"]
      111 NEWCLOSURE                       R1 P25
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U7
      116 SETTABLEKS                       R1 R0 K35 ["importFromFileWithRestPoseSelection"]
      118 NEWCLOSURE                       R1 P26
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U3
      121 SETTABLEKS                       R1 R0 K36 ["importFromFileWithRestPoseSelectionRequested"]
      123 NEWCLOSURE                       R1 P27
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R1 R0 K37 ["startAnimationFromVideoFlow"]
      127 NEWCLOSURE                       R1 P28
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U8
      130 SETTABLEKS                       R1 R0 K38 ["createFromVideoRequested"]
      132 NEWCLOSURE                       R1 P29
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U9
      135 SETTABLEKS                       R1 R0 K39 ["createNew"]
      137 NEWCLOSURE                       R1 P30
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R1 R0 K40 ["createNewClip"]
      141 NEWCLOSURE                       R1 P31
      142 CAPTURE                          VAL R0
      143 SETTABLEKS                       R1 R0 K41 ["loadNew"]
      145 NEWCLOSURE                       R1 P32
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U9
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          UPVAL U3
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          UPVAL U5
      152 SETTABLEKS                       R1 R0 K42 ["handleLoadNewPrompt"]
      154 NEWCLOSURE                       R1 P33
      155 CAPTURE                          VAL R0
      156 SETTABLEKS                       R1 R0 K43 ["onSanitizeAnimation"]
      158 DUPCLOSURE                       R1 K44 [PROTO_34]
      159 SETTABLEKS                       R1 R0 K45 ["validateAnimationName"]
      161 NEWCLOSURE                       R1 P35
      162 CAPTURE                          VAL R0
      163 SETTABLEKS                       R1 R0 K46 ["onGenerateControlRigData"]
      165 RETURN                           R0 0

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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["hideRestPoseChoicePrompt"]
        3 CALL                             R5 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Cancel"] ; [+10]
        6 GETUPVAL                         R5 0
        7 LOADNIL                          R6
        8 SETTABLEKS                       R6 R5 K2 ["filePath"]
       10 GETUPVAL                         R5 0
       11 LOADNIL                          R6
       12 SETTABLEKS                       R6 R5 K3 ["importSession"]
       14 RETURN                           R0 0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["showInProgressCover"]
       18 CALL                             R5 0 0
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["props"]
       22 GETTABLEKS                       R5 R5 K6 ["RootInstance"]
       24 LOADNIL                          R6
       25 GETUPVAL                         R7 1
       26 CALL                             R7 0 1
       27 JUMPIFNOT                        R7 ; [+7]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K7 ["mapRestPoseKeyToEnum"]
       31 MOVE                             R8 R1
       32 CALL                             R7 1 1
       33 MOVE                             R6 R7
       34 JUMP                             ; [+7]
       35 JUMPIFNOTEQKS                    R1 K8 ["FromRigInACE"] ; [+4]
       37 GETIMPORT                        R6 K11 [Enum.RestPoseModel.FromRigInACE]
       39 JUMP                             ; [+2]
       40 GETIMPORT                        R6 K13 [Enum.RestPoseModel.FromRigInFile]
       42 LOADNIL                          R7
       43 GETUPVAL                         R8 1
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+12]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K3 ["importSession"]
       49 JUMPIFNOT                        R8 ; [+8]
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K3 ["importSession"]
       53 GETUPVAL                         R8 0
       54 LOADNIL                          R9
       55 SETTABLEKS                       R9 R8 K3 ["importSession"]
       57 JUMP                             ; [+8]
       58 GETUPVAL                         R8 3
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K2 ["filePath"]
       62 NAMECALL                         R8 R8 K14 ["StartSessionWithPathAsync"]
       64 CALL                             R8 2 1
       65 MOVE                             R7 R8
       66 GETUPVAL                         R8 4
       67 CALL                             R8 0 1
       68 JUMPIFNOT                        R8 ; [+14]
       69 JUMPIFNOT                        R4 ; [+13]
       70 LOADNIL                          R8
       71 JUMPIFNOTEQKS                    R4 K15 ["R15"] ; [+4]
       73 GETIMPORT                        R8 K17 [Enum.RigType.R15]
       75 JUMP                             ; [+2]
       76 GETIMPORT                        R8 K19 [Enum.RigType.Custom]
       78 NAMECALL                         R9 R7 K20 ["GetImportTree"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R8 R9 K16 ["RigType"]
       83 LOADNIL                          R8
       84 LOADB                            R9 1
       85 GETIMPORT                        R10 K22 [Enum.RestPoseModel.FromCustomClip]
       87 JUMPIFEQ                         R6 R10 ; [+10]
       89 GETUPVAL                         R9 4
       90 CALL                             R9 0 1
       91 JUMPIFNOT                        R9 ; [+6]
       92 GETIMPORT                        R10 K24 [Enum.RestPoseModel.FromRigInFileZeroedRotations]
       94 JUMPIFEQ                         R6 R10 ; [+2]
       96 LOADB                            R9 0 +1
       97 LOADB                            R9 1
       98 GETUPVAL                         R10 1
       99 CALL                             R10 0 1
      100 JUMPIFNOT                        R10 ; [+10]
      101 JUMPIFNOT                        R9 ; [+9]
      102 MOVE                             R12 R5
      103 MOVE                             R13 R6
      104 ORK                              R15 R3 K25 [1]
      105 SUBK                             R14 R15 K25 [1]
      106 NAMECALL                         R10 R7 K26 ["GetKeyframeSequencesForSelectedRestPoseWithClip"]
      108 CALL                             R10 4 1
      109 MOVE                             R8 R10
      110 JUMP                             ; [+6]
      111 MOVE                             R12 R5
      112 MOVE                             R13 R6
      113 NAMECALL                         R10 R7 K27 ["GetKeyframeSequencesForSelectedRestPose"]
      115 CALL                             R10 3 1
      116 MOVE                             R8 R10
      117 LENGTH                           R10 R8
      118 JUMPIFNOTEQKN                    R10 K28 [0] ; [+10]
      120 GETUPVAL                         R10 0
      121 LOADNIL                          R11
      122 SETTABLEKS                       R11 R10 K2 ["filePath"]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R10 R10 K29 ["hideInProgressCover"]
      127 CALL                             R10 0 0
      128 RETURN                           R0 0
      129 GETTABLEN                        R10 R8 1
      130 GETUPVAL                         R11 5
      131 CALL                             R11 0 1
      132 JUMPIFNOT                        R11 ; [+3]
      133 LOADB                            R11 0
      134 SETTABLEKS                       R11 R10 K30 ["Loop"]
      136 GETUPVAL                         R11 0
      137 GETTABLEKS                       R11 R11 K5 ["props"]
      139 GETTABLEKS                       R11 R11 K31 ["LoadImportedKeyframeSequence"]
      141 GETUPVAL                         R12 0
      142 GETTABLEKS                       R12 R12 K5 ["props"]
      144 GETTABLEKS                       R12 R12 K32 ["Plugin"]
      146 GETUPVAL                         R13 0
      147 GETTABLEKS                       R13 R13 K5 ["props"]
      149 GETTABLEKS                       R13 R13 K33 ["Analytics"]
      151 MOVE                             R14 R10
      152 MOVE                             R15 R2
      153 CALL                             R11 4 0
      154 GETUPVAL                         R11 0
      155 GETTABLEKS                       R11 R11 K29 ["hideInProgressCover"]
      157 CALL                             R11 0 0
      158 GETUPVAL                         R11 0
      159 LOADNIL                          R12
      160 SETTABLEKS                       R12 R11 K2 ["filePath"]
      162 LOADN                            R13 1
      163 LENGTH                           R11 R8
      164 LOADN                            R12 1
      165 FORNPREP                         R11
      166 GETTABLE                         R14 R8 R13
      167 GETUPVAL                         R15 6
      168 GETTABLEKS                       R15 R15 K34 ["fromKeyframeSequence"]
      170 MOVE                             R16 R14
      171 CALL                             R15 1 1
      172 GETTABLEKS                       R16 R15 K35 ["Metadata"]
      174 GETTABLEKS                       R17 R14 K36 ["Name"]
      176 SETTABLEKS                       R17 R16 K36 ["Name"]
      178 GETUPVAL                         R16 7
      179 GETTABLEKS                       R16 R16 K37 ["SavePassedInAnimation"]
      181 GETTABLEKS                       R17 R14 K36 ["Name"]
      183 GETUPVAL                         R18 0
      184 GETTABLEKS                       R18 R18 K5 ["props"]
      186 GETTABLEKS                       R18 R18 K33 ["Analytics"]
      188 GETUPVAL                         R19 0
      189 GETTABLEKS                       R19 R19 K5 ["props"]
      191 GETTABLEKS                       R19 R19 K38 ["Localization"]
      193 MOVE                             R20 R15
      194 LOADB                            R21 0
      195 MOVE                             R22 R5
      196 CALL                             R16 6 0
      197 FORNLOOP                         R11
      198 RETURN                           R0 0

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
      385 JUMPIFNOT                        R23 ; [+110]
      386 GETUPVAL                         R23 0
      387 GETTABLEKS                       R23 R23 K22 ["createElement"]
      389 GETUPVAL                         R24 9
      390 DUPTABLE                         R25 K137 [{"HeaderText", "ButtonWidth", "SelectionGroupHeader", "SelectionGroupOptions", "ConditionalDropdownKey", "ConditionalDropdownItems", "Buttons", "OnButtonClicked"}]
      391 LOADK                            R28 K108 ["Dialog"]
      392 LOADK                            R29 K138 ["ImportSettings"]
      393 NAMECALL                         R26 R1 K107 ["getText"]
      395 CALL                             R26 3 1
      396 SETTABLEKS                       R26 R25 K132 ["HeaderText"]
      398 GETUPVAL                         R26 1
      399 GETTABLEKS                       R26 R26 K127 ["PROMPT_BUTTON_SIZE"]
      401 GETTABLEKS                       R26 R26 K128 ["X"]
      403 SETTABLEKS                       R26 R25 K121 ["ButtonWidth"]
      405 LOADK                            R28 K108 ["Dialog"]
      406 LOADK                            R29 K139 ["RestPoseSource"]
      407 NAMECALL                         R26 R1 K107 ["getText"]
      409 CALL                             R26 3 1
      410 SETTABLEKS                       R26 R25 K133 ["SelectionGroupHeader"]
      412 GETUPVAL                         R27 10
      413 CALL                             R27 0 1
      414 JUMPIFNOT                        R27 ; [+8]
      415 GETUPVAL                         R26 11
      416 GETTABLEKS                       R26 R26 K140 ["buildRestPoseOptions"]
      418 MOVE                             R27 R1
      419 GETTABLEKS                       R28 R0 K141 ["animationClipNames"]
      421 CALL                             R26 2 1
      422 JUMP                             ; [+20]
      423 NEWTABLE                         R26 0 2
      425 DUPTABLE                         R27 K144 [{["Key"] = "FromRigInFile", ["Text"], ["Default"] = True}]
      426 LOADK                            R30 K108 ["Dialog"]
      427 LOADK                            R31 K145 ["ImportedRig"]
      428 NAMECALL                         R28 R1 K107 ["getText"]
      430 CALL                             R28 3 1
      431 SETTABLEKS                       R28 R27 K63 ["Text"]
      433 DUPTABLE                         R28 K147 [{["Key"] = "FromRigInACE", ["Text"]}]
      434 LOADK                            R31 K108 ["Dialog"]
      435 LOADK                            R32 K148 ["AnimationEditorRig"]
      436 NAMECALL                         R29 R1 K107 ["getText"]
      438 CALL                             R29 3 1
      439 SETTABLEKS                       R29 R28 K63 ["Text"]
      441 SETLIST                          R26 R27 2 [1]
      443 SETTABLEKS                       R26 R25 K134 ["SelectionGroupOptions"]
      445 GETUPVAL                         R27 10
      446 CALL                             R27 0 1
      447 JUMPIFNOT                        R27 ; [+2]
      448 LOADK                            R26 K149 ["FromCustomClip"]
      449 JUMP                             ; [+1]
      450 LOADNIL                          R26
      451 SETTABLEKS                       R26 R25 K135 ["ConditionalDropdownKey"]
      453 GETUPVAL                         R27 10
      454 CALL                             R27 0 1
      455 JUMPIFNOT                        R27 ; [+3]
      456 GETTABLEKS                       R26 R0 K141 ["animationClipNames"]
      458 JUMP                             ; [+1]
      459 LOADNIL                          R26
      460 SETTABLEKS                       R26 R25 K136 ["ConditionalDropdownItems"]
      462 NEWTABLE                         R26 0 2
      464 DUPTABLE                         R27 K150 [{["Key"] = "Cancel", ["Text"], ["Style"] = "Round"}]
      465 LOADK                            R30 K108 ["Dialog"]
      466 LOADK                            R31 K115 ["Cancel"]
      467 NAMECALL                         R28 R1 K107 ["getText"]
      469 CALL                             R28 3 1
      470 SETTABLEKS                       R28 R27 K63 ["Text"]
      472 DUPTABLE                         R28 K152 [{["Key"] = "Import", ["Text"], ["Style"] = "RoundPrimary"}]
      473 LOADK                            R31 K153 ["Menu"]
      474 LOADK                            R32 K151 ["Import"]
      475 NAMECALL                         R29 R1 K107 ["getText"]
      477 CALL                             R29 3 1
      478 SETTABLEKS                       R29 R28 K63 ["Text"]
      480 SETLIST                          R26 R27 2 [1]
      482 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      484 NEWCLOSURE                       R26 P2
      485 CAPTURE                          VAL R0
      486 CAPTURE                          UPVAL U10
      487 CAPTURE                          UPVAL U11
      488 CAPTURE                          UPVAL U12
      489 CAPTURE                          UPVAL U13
      490 CAPTURE                          UPVAL U14
      491 CAPTURE                          UPVAL U15
      492 CAPTURE                          VAL R2
      493 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      495 CALL                             R23 2 1
      496 SETTABLEKS                       R23 R22 K41 ["RestPoseChoicePrompt"]
      498 JUMPIFNOT                        R14 ; [+14]
      499 GETUPVAL                         R23 0
      500 GETTABLEKS                       R23 R23 K22 ["createElement"]
      502 GETUPVAL                         R24 16
      503 DUPTABLE                         R25 K154 [{"Text"}]
      504 LOADK                            R28 K108 ["Dialog"]
      505 LOADK                            R29 K155 ["ImportingAnimation"]
      506 NAMECALL                         R26 R1 K107 ["getText"]
      508 CALL                             R26 3 1
      509 SETTABLEKS                       R26 R25 K63 ["Text"]
      511 CALL                             R23 2 1
      512 JUMPIF                           R23 ; [+1]
      513 LOADNIL                          R23
      514 SETTABLEKS                       R23 R22 K42 ["InProgressCover"]
      516 MOVE                             R23 R11
      517 JUMPIFNOT                        R23 ; [+49]
      518 GETUPVAL                         R23 0
      519 GETTABLEKS                       R23 R23 K22 ["createElement"]
      521 GETUPVAL                         R24 17
      522 DUPTABLE                         R25 K156 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      523 LOADK                            R28 K153 ["Menu"]
      524 LOADK                            R29 K157 ["Overwrite_Migrated"]
      525 DUPTABLE                         R30 K158 [{"overwriteName"}]
      526 SETTABLEKS                       R11 R30 K10 ["overwriteName"]
      528 NAMECALL                         R26 R1 K107 ["getText"]
      530 CALL                             R26 4 1
      531 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      533 NEWTABLE                         R26 0 2
      535 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      536 LOADK                            R30 K108 ["Dialog"]
      537 LOADK                            R31 K159 ["No"]
      538 NAMECALL                         R28 R1 K107 ["getText"]
      540 CALL                             R28 3 1
      541 SETTABLEKS                       R28 R27 K63 ["Text"]
      543 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      544 LOADK                            R31 K108 ["Dialog"]
      545 LOADK                            R32 K160 ["Yes"]
      546 NAMECALL                         R29 R1 K107 ["getText"]
      548 CALL                             R29 3 1
      549 SETTABLEKS                       R29 R28 K63 ["Text"]
      551 SETLIST                          R26 R27 2 [1]
      553 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      555 NEWCLOSURE                       R26 P3
      556 CAPTURE                          VAL R0
      557 CAPTURE                          VAL R2
      558 CAPTURE                          VAL R16
      559 CAPTURE                          VAL R11
      560 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      562 GETTABLEKS                       R26 R0 K161 ["hideOverwritePrompt"]
      564 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      566 CALL                             R23 2 1
      567 SETTABLEKS                       R23 R22 K43 ["OverwritePrompt"]
      569 JUMPIFNOT                        R13 ; [+45]
      570 GETUPVAL                         R23 0
      571 GETTABLEKS                       R23 R23 K22 ["createElement"]
      573 GETUPVAL                         R24 17
      574 DUPTABLE                         R25 K156 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      575 LOADK                            R28 K108 ["Dialog"]
      576 LOADK                            R29 K44 ["PromotePrompt"]
      577 NAMECALL                         R26 R1 K107 ["getText"]
      579 CALL                             R26 3 1
      580 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      582 NEWTABLE                         R26 0 2
      584 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      585 LOADK                            R30 K108 ["Dialog"]
      586 LOADK                            R31 K115 ["Cancel"]
      587 NAMECALL                         R28 R1 K107 ["getText"]
      589 CALL                             R28 3 1
      590 SETTABLEKS                       R28 R27 K63 ["Text"]
      592 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      593 LOADK                            R31 K108 ["Dialog"]
      594 LOADK                            R32 K162 ["Confirm"]
      595 NAMECALL                         R29 R1 K107 ["getText"]
      597 CALL                             R29 3 1
      598 SETTABLEKS                       R29 R28 K63 ["Text"]
      600 SETLIST                          R26 R27 2 [1]
      602 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      604 NEWCLOSURE                       R26 P4
      605 CAPTURE                          VAL R0
      606 CAPTURE                          VAL R2
      607 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      609 GETTABLEKS                       R26 R0 K163 ["hidePromotePrompt"]
      611 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      613 CALL                             R23 2 1
      614 JUMPIF                           R23 ; [+1]
      615 LOADNIL                          R23
      616 SETTABLEKS                       R23 R22 K44 ["PromotePrompt"]
      618 MOVE                             R23 R12
      619 JUMPIFNOT                        R23 ; [+72]
      620 GETUPVAL                         R23 0
      621 GETTABLEKS                       R23 R23 K22 ["createElement"]
      623 GETUPVAL                         R24 7
      624 DUPTABLE                         R25 K164 [{"PromptText", "InputText", "NoticeText", "Text", "Buttons", "OnButtonClicked", "OnTextSubmitted", "OnClose"}]
      625 LOADK                            R28 K105 ["Title"]
      626 LOADK                            R29 K165 ["ConfirmSave"]
      627 NAMECALL                         R26 R1 K107 ["getText"]
      629 CALL                             R26 3 1
      630 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      632 LOADK                            R28 K108 ["Dialog"]
      633 LOADK                            R29 K3 ["AnimationName"]
      634 NAMECALL                         R26 R1 K107 ["getText"]
      636 CALL                             R26 3 1
      637 SETTABLEKS                       R26 R25 K99 ["InputText"]
      639 LOADK                            R28 K108 ["Dialog"]
      640 LOADK                            R29 K109 ["SaveLocation"]
      641 NAMECALL                         R26 R1 K107 ["getText"]
      643 CALL                             R26 3 1
      644 SETTABLEKS                       R26 R25 K100 ["NoticeText"]
      646 SETTABLEKS                       R4 R25 K63 ["Text"]
      648 NEWTABLE                         R26 0 3
      650 DUPTABLE                         R27 K167 [{["Key"] = "Delete", ["Text"], ["Style"] = "Round"}]
      651 LOADK                            R30 K108 ["Dialog"]
      652 LOADK                            R31 K166 ["Delete"]
      653 NAMECALL                         R28 R1 K107 ["getText"]
      655 CALL                             R28 3 1
      656 SETTABLEKS                       R28 R27 K63 ["Text"]
      658 DUPTABLE                         R28 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      659 LOADK                            R31 K108 ["Dialog"]
      660 LOADK                            R32 K115 ["Cancel"]
      661 NAMECALL                         R29 R1 K107 ["getText"]
      663 CALL                             R29 3 1
      664 SETTABLEKS                       R29 R28 K63 ["Text"]
      666 DUPTABLE                         R29 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      667 LOADK                            R32 K108 ["Dialog"]
      668 LOADK                            R33 K119 ["Save"]
      669 NAMECALL                         R30 R1 K107 ["getText"]
      671 CALL                             R30 3 1
      672 SETTABLEKS                       R30 R29 K63 ["Text"]
      674 SETLIST                          R26 R27 3 [1]
      676 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      678 NEWCLOSURE                       R26 P5
      679 CAPTURE                          VAL R0
      680 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      682 NEWCLOSURE                       R26 P6
      683 CAPTURE                          VAL R2
      684 CAPTURE                          VAL R0
      685 SETTABLEKS                       R26 R25 K102 ["OnTextSubmitted"]
      687 GETTABLEKS                       R26 R0 K168 ["hideLoadNewPrompt"]
      689 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      691 CALL                             R23 2 1
      692 SETTABLEKS                       R23 R22 K45 ["LoadNewPrompt"]
      694 MOVE                             R23 R17
      695 JUMPIFNOT                        R23 ; [+43]
      696 GETUPVAL                         R23 0
      697 GETTABLEKS                       R23 R23 K22 ["createElement"]
      699 GETUPVAL                         R24 17
      700 DUPTABLE                         R25 K156 [{"PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      701 LOADK                            R28 K169 ["AnimationFromVideo"]
      702 LOADK                            R29 K170 ["TutorialText"]
      703 NAMECALL                         R26 R1 K107 ["getText"]
      705 CALL                             R26 3 1
      706 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      708 NEWTABLE                         R26 0 2
      710 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      711 LOADK                            R30 K108 ["Dialog"]
      712 LOADK                            R31 K115 ["Cancel"]
      713 NAMECALL                         R28 R1 K107 ["getText"]
      715 CALL                             R28 3 1
      716 SETTABLEKS                       R28 R27 K63 ["Text"]
      718 DUPTABLE                         R28 K118 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
      719 LOADK                            R31 K169 ["AnimationFromVideo"]
      720 LOADK                            R32 K171 ["ChooseVideo"]
      721 NAMECALL                         R29 R1 K107 ["getText"]
      723 CALL                             R29 3 1
      724 SETTABLEKS                       R29 R28 K63 ["Text"]
      726 SETLIST                          R26 R27 2 [1]
      728 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      730 NEWCLOSURE                       R26 P7
      731 CAPTURE                          VAL R0
      732 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      734 NEWCLOSURE                       R26 P8
      735 CAPTURE                          VAL R0
      736 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      738 CALL                             R23 2 1
      739 SETTABLEKS                       R23 R22 K46 ["CreateAnimationFromVideoTutorial"]
      741 MOVE                             R23 R18
      742 JUMPIFNOT                        R23 ; [+50]
      743 GETUPVAL                         R23 0
      744 GETTABLEKS                       R23 R23 K22 ["createElement"]
      746 GETUPVAL                         R24 17
      747 DUPTABLE                         R25 K172 [{"Size", "PromptText", "Buttons", "OnButtonClicked", "OnClose"}]
      748 GETIMPORT                        R26 K26 [UDim2.new]
      750 LOADN                            R27 0
      751 GETUPVAL                         R28 1
      752 GETTABLEKS                       R28 R28 K173 ["PROMPT_SIZE"]
      754 GETTABLEKS                       R28 R28 K174 ["Width"]
      756 GETTABLEKS                       R28 R28 K175 ["Offset"]
      758 LOADN                            R29 0
      759 LOADN                            R30 180
      760 CALL                             R26 4 1
      761 SETTABLEKS                       R26 R25 K29 ["Size"]
      763 LOADK                            R28 K169 ["AnimationFromVideo"]
      764 LOADK                            R29 K176 ["AgeRestricted"]
      765 NAMECALL                         R26 R1 K107 ["getText"]
      767 CALL                             R26 3 1
      768 SETTABLEKS                       R26 R25 K98 ["PromptText"]
      770 NEWTABLE                         R26 0 1
      772 DUPTABLE                         R27 K114 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
      773 LOADK                            R30 K108 ["Dialog"]
      774 LOADK                            R31 K115 ["Cancel"]
      775 NAMECALL                         R28 R1 K107 ["getText"]
      777 CALL                             R28 3 1
      778 SETTABLEKS                       R28 R27 K63 ["Text"]
      780 SETLIST                          R26 R27 1 [1]
      782 SETTABLEKS                       R26 R25 K101 ["Buttons"]
      784 NEWCLOSURE                       R26 P9
      785 CAPTURE                          VAL R0
      786 SETTABLEKS                       R26 R25 K122 ["OnButtonClicked"]
      788 NEWCLOSURE                       R26 P10
      789 CAPTURE                          VAL R0
      790 SETTABLEKS                       R26 R25 K103 ["OnClose"]
      792 CALL                             R23 2 1
      793 SETTABLEKS                       R23 R22 K47 ["CreateAnimationFromVideoAgeGate"]
      795 CALL                             R19 3 -1
      796 RETURN                           R19 -1

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
       42 GETTABLEKS                       R9 R6 K14 ["LuaFlags"]
       44 GETTABLEKS                       R9 R9 K15 ["GetFFlagACEImportRigType"]
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
      259 GETIMPORT                        R48 K11 [require]
      261 GETTABLEKS                       R49 R6 K14 ["LuaFlags"]
      263 GETTABLEKS                       R49 R49 K63 ["GetFFlagACEExtendedRestPoseOptions"]
      265 CALL                             R48 1 1
      266 GETIMPORT                        R49 K11 [require]
      268 GETTABLEKS                       R50 R6 K18 ["Src"]
      270 GETTABLEKS                       R50 R50 K19 ["Util"]
      272 GETTABLEKS                       R50 R50 K64 ["RestPoseUtils"]
      274 CALL                             R49 1 1
      275 GETIMPORT                        R50 K11 [require]
      277 GETTABLEKS                       R51 R6 K14 ["LuaFlags"]
      279 GETTABLEKS                       R51 R51 K65 ["GetFFlagAnimationExportSupport"]
      281 CALL                             R50 1 1
      282 GETTABLEKS                       R51 R9 K66 ["PureComponent"]
      284 LOADK                            R53 K67 ["AnimationClipDropdown"]
      285 NAMECALL                         R51 R51 K68 ["extend"]
      287 CALL                             R51 2 1
      288 DUPCLOSURE                       R52 K69 [PROTO_36]
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R9
      291 CAPTURE                          VAL R2
      292 CAPTURE                          VAL R3
      293 CAPTURE                          VAL R0
      294 CAPTURE                          VAL R4
      295 CAPTURE                          VAL R48
      296 CAPTURE                          VAL R49
      297 CAPTURE                          VAL R5
      298 CAPTURE                          VAL R1
      299 SETTABLEKS                       R52 R51 K70 ["init"]
      301 DUPCLOSURE                       R52 K71 [PROTO_48]
      302 CAPTURE                          VAL R9
      303 CAPTURE                          VAL R11
      304 CAPTURE                          VAL R13
      305 CAPTURE                          VAL R45
      306 CAPTURE                          VAL R46
      307 CAPTURE                          VAL R25
      308 CAPTURE                          VAL R24
      309 CAPTURE                          VAL R29
      310 CAPTURE                          VAL R23
      311 CAPTURE                          VAL R27
      312 CAPTURE                          VAL R48
      313 CAPTURE                          VAL R49
      314 CAPTURE                          VAL R0
      315 CAPTURE                          VAL R8
      316 CAPTURE                          VAL R47
      317 CAPTURE                          VAL R12
      318 CAPTURE                          VAL R28
      319 CAPTURE                          VAL R26
      320 SETTABLEKS                       R52 R51 K72 ["render"]
      322 MOVE                             R52 R15
      323 DUPTABLE                         R53 K77 [{"Stylizer", "Localization", "Plugin", "Analytics"}]
      324 GETTABLEKS                       R54 R14 K73 ["Stylizer"]
      326 SETTABLEKS                       R54 R53 K73 ["Stylizer"]
      328 GETTABLEKS                       R54 R14 K74 ["Localization"]
      330 SETTABLEKS                       R54 R53 K74 ["Localization"]
      332 GETTABLEKS                       R54 R14 K75 ["Plugin"]
      334 SETTABLEKS                       R54 R53 K75 ["Plugin"]
      336 GETTABLEKS                       R54 R14 K76 ["Analytics"]
      338 SETTABLEKS                       R54 R53 K76 ["Analytics"]
      340 CALL                             R52 1 1
      341 MOVE                             R53 R51
      342 CALL                             R52 1 1
      343 MOVE                             R51 R52
      344 DUPCLOSURE                       R52 K78 [PROTO_49]
      345 CAPTURE                          VAL R50
      346 DUPCLOSURE                       R53 K79 [PROTO_68]
      347 CAPTURE                          VAL R32
      348 CAPTURE                          VAL R38
      349 CAPTURE                          VAL R37
      350 CAPTURE                          VAL R40
      351 CAPTURE                          VAL R43
      352 CAPTURE                          VAL R35
      353 CAPTURE                          VAL R34
      354 CAPTURE                          VAL R31
      355 CAPTURE                          VAL R33
      356 CAPTURE                          VAL R36
      357 CAPTURE                          VAL R39
      358 CAPTURE                          VAL R41
      359 CAPTURE                          VAL R17
      360 CAPTURE                          VAL R18
      361 CAPTURE                          VAL R19
      362 CAPTURE                          VAL R20
      363 CAPTURE                          VAL R21
      364 CAPTURE                          VAL R42
      365 GETTABLEKS                       R54 R10 K80 ["connect"]
      367 MOVE                             R55 R52
      368 MOVE                             R56 R53
      369 CALL                             R54 2 1
      370 MOVE                             R55 R51
      371 CALL                             R54 1 -1
      372 RETURN                           R54 -1
