PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["timeAtStartOfRecording"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K4 ["props"]
        9 GETTABLEKS                       R0 R0 K5 ["Analytics"]
       11 LOADK                            R3 K6 ["onFacialAnimationRecordingStartRecording"]
       12 NAMECALL                         R1 R0 K7 ["report"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 DUPTABLE                         R3 K10 [{["isRecording"] = True}]
       17 NAMECALL                         R1 R1 K11 ["setState"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["haveToSetBackToNotLooping"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["haveToSetBackToNotLooping"]
       10 GETTABLEKS                       R1 R0 K2 ["AnimationData"]
       12 JUMPIFNOT                        R1 ; [+16]
       13 GETTABLEKS                       R2 R1 K3 ["Metadata"]
       15 GETTABLEKS                       R2 R2 K4 ["Looping"]
       17 JUMPIFNOT                        R2 ; [+11]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["setLooping"]
       21 MOVE                             R4 R1
       22 LOADB                            R5 0
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R0 K6 ["SetAnimationData"]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Disconnect"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["SetInReviewState"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["timeAtEndOfRecording"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K4 ["props"]
        9 GETTABLEKS                       R1 R0 K5 ["Analytics"]
       11 LOADK                            R4 K6 ["onFacialAnimationRecordingEndRecording"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K7 ["timeAtStartOfRecording"]
       15 JUMPIFNOT                        R6 ; [+8]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K3 ["timeAtEndOfRecording"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K7 ["timeAtStartOfRecording"]
       22 SUB                              R5 R6 R7
       23 JUMPIF                           R5 ; [+1]
       24 LOADN                            R5 0
       25 NAMECALL                         R2 R1 K8 ["report"]
       27 CALL                             R2 3 0
       28 GETTABLEKS                       R2 R0 K9 ["SetInReviewState"]
       30 LOADB                            R3 1
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 0
       33 DUPTABLE                         R4 K12 [{["isRecording"] = False}]
       34 NAMECALL                         R2 R2 K13 ["setState"]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K14 ["hasFacsData"]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K4 ["props"]
       43 GETTABLEKS                       R3 R3 K15 ["AnimationData"]
       45 CALL                             R2 1 1
       46 SETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R0 K16 ["LoadRecorderFrames"]
       49 MOVE                             R3 R0
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R4 R4 K17 ["RecordedFrames"]
       53 GETTABLEKS                       R5 R0 K5 ["Analytics"]
       55 CALL                             R2 3 0
       56 GETTABLEKS                       R2 R0 K18 ["SetFacialRecordingMode"]
       58 LOADB                            R3 0
       59 CALL                             R2 1 0
       60 GETUPVAL                         R2 0
       61 NAMECALL                         R2 R2 K19 ["disconnect"]
       63 CALL                             R2 1 0
       64 GETTABLEKS                       R2 R0 K20 ["StepAnimation"]
       66 LOADN                            R3 0
       67 CALL                             R2 1 0
       68 GETTABLEKS                       R2 R0 K21 ["SetPlayState"]
       70 GETUPVAL                         R3 3
       71 GETTABLEKS                       R3 R3 K22 ["PLAY_STATE"]
       73 GETTABLEKS                       R3 R3 K23 ["Play"]
       75 CALL                             R2 1 0
       76 LOADNIL                          R2
       77 GETUPVAL                         R3 4
       78 GETTABLEKS                       R3 R3 K24 ["SelectionChanged"]
       80 NEWCLOSURE                       R5 P0
       81 CAPTURE                          REF R2
       82 CAPTURE                          VAL R0
       83 NAMECALL                         R3 R3 K25 ["Connect"]
       85 CALL                             R3 2 1
       86 MOVE                             R2 R3
       87 CLOSEUPVALS                      R2
       88 RETURN                           R0 0

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
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADK                            R1 K2 [0.1]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K3 ["props"]
        7 GETTABLEKS                       R0 R0 K4 ["RootInstance"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K3 ["props"]
       13 GETTABLEKS                       R0 R0 K5 ["StepAnimation"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetInReviewState"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K2 ["SetFacialRecordingMode"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["movePlayheadToBeginning"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["isRecording"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["endRecording"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["startRecording"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Analytics"]
        5 LOADK                            R4 K2 ["onFacialAnimationRecordingReRecordPressed"]
        6 NAMECALL                         R2 R1 K3 ["report"]
        8 CALL                             R2 2 0
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["resetLooping"]
       14 CALL                             R2 0 0
       15 GETTABLEKS                       R2 R0 K5 ["SetPlayState"]
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R3 R3 K6 ["PLAY_STATE"]
       20 GETTABLEKS                       R3 R3 K7 ["Pause"]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K8 ["movePlayheadToBeginning"]
       26 CALL                             R2 0 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K0 ["props"]
       30 GETTABLEKS                       R2 R2 K9 ["SetInReviewState"]
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["props"]
       37 GETTABLEKS                       R2 R2 K10 ["SetFacialRecordingMode"]
       39 LOADB                            R3 1
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 0
       42 NAMECALL                         R2 R2 K11 ["InitializeRecordingMode"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R4 K4 [{["isAgeRestricted"] = True}]
        7 NAMECALL                         R2 R2 K5 ["setState"]
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R3 R0 K6 ["Plugin"]
       13 GETTABLEKS                       R4 R0 K1 ["Localization"]
       15 GETTABLEKS                       R5 R0 K7 ["Stylizer"]
       17 GETTABLEKS                       R6 R0 K8 ["Mouse"]
       19 GETUPVAL                         R7 2
       20 DUPTABLE                         R8 K15 [{"Title", "TitleText", "BodyText", "Buttons", "OnButtonPressed", "OnClose"}]
       21 LOADK                            R11 K16 ["FaceCapture"]
       22 LOADK                            R12 K17 ["WarningTitle"]
       23 NAMECALL                         R9 R1 K18 ["getText"]
       25 CALL                             R9 3 1
       26 SETTABLEKS                       R9 R8 K9 ["Title"]
       28 LOADK                            R11 K16 ["FaceCapture"]
       29 LOADK                            R12 K19 ["AgeRestrictedTitle"]
       30 NAMECALL                         R9 R1 K18 ["getText"]
       32 CALL                             R9 3 1
       33 SETTABLEKS                       R9 R8 K10 ["TitleText"]
       35 LOADK                            R11 K16 ["FaceCapture"]
       36 LOADK                            R12 K20 ["AgeRestrictedBody"]
       37 NAMECALL                         R9 R1 K18 ["getText"]
       39 CALL                             R9 3 1
       40 SETTABLEKS                       R9 R8 K11 ["BodyText"]
       42 NEWTABLE                         R9 0 1
       44 DUPTABLE                         R10 K26 [{["Key"] = "Ok", ["Text"], ["Style"] = "RoundPrimary"}]
       45 GETTABLEKS                       R11 R0 K1 ["Localization"]
       47 LOADK                            R13 K16 ["FaceCapture"]
       48 LOADK                            R14 K27 ["WarningDialogOk"]
       49 NAMECALL                         R11 R11 K18 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K23 ["Text"]
       54 SETLIST                          R9 R10 1 [1]
       56 SETTABLEKS                       R9 R8 K12 ["Buttons"]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K28 ["dismissSelf"]
       61 SETTABLEKS                       R9 R8 K13 ["OnButtonPressed"]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K28 ["dismissSelf"]
       66 SETTABLEKS                       R9 R8 K14 ["OnClose"]
       68 CALL                             R2 6 0
       69 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Agree"] ; [+10]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K1 ["BiometricDataConsent"]
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K2 ["StartupInitialize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["dismissSelf"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETIMPORT                        R2 K3 [game]
        7 LOADK                            R4 K4 ["FacialAnimationRecordingService"]
        8 NAMECALL                         R2 R2 K5 ["GetService"]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R4 R0 K6 ["Plugin"]
       14 GETTABLEKS                       R5 R0 K1 ["Localization"]
       16 GETTABLEKS                       R6 R0 K7 ["Stylizer"]
       18 GETTABLEKS                       R7 R0 K8 ["Mouse"]
       20 GETUPVAL                         R8 2
       21 DUPTABLE                         R9 K17 [{"Title", "TitleText", "BodyText", "Buttons", "OnButtonPressed", "OnClose", "learnMoreUrl", "learnMoreLabel"}]
       22 LOADK                            R12 K18 ["FaceCapture"]
       23 LOADK                            R13 K19 ["WarningTitle"]
       24 NAMECALL                         R10 R1 K20 ["getText"]
       26 CALL                             R10 3 1
       27 SETTABLEKS                       R10 R9 K9 ["Title"]
       29 LOADK                            R12 K18 ["FaceCapture"]
       30 LOADK                            R13 K21 ["BioDataCollectionTitle"]
       31 NAMECALL                         R10 R1 K20 ["getText"]
       33 CALL                             R10 3 1
       34 SETTABLEKS                       R10 R9 K10 ["TitleText"]
       36 LOADK                            R12 K18 ["FaceCapture"]
       37 LOADK                            R13 K22 ["BioDataCollectionBody"]
       38 NAMECALL                         R10 R1 K20 ["getText"]
       40 CALL                             R10 3 1
       41 SETTABLEKS                       R10 R9 K11 ["BodyText"]
       43 NEWTABLE                         R10 0 2
       45 DUPTABLE                         R11 K28 [{["Key"] = "Disagree", ["Text"], ["Style"] = "Round"}]
       46 LOADK                            R14 K18 ["FaceCapture"]
       47 LOADK                            R15 K29 ["BioDataCollectionDisagree"]
       48 NAMECALL                         R12 R1 K20 ["getText"]
       50 CALL                             R12 3 1
       51 SETTABLEKS                       R12 R11 K25 ["Text"]
       53 DUPTABLE                         R12 K31 [{["Key"] = "Agree", ["Text"], ["Style"] = "Round"}]
       54 LOADK                            R15 K18 ["FaceCapture"]
       55 LOADK                            R16 K32 ["BioDataCollectionAgree"]
       56 NAMECALL                         R13 R1 K20 ["getText"]
       58 CALL                             R13 3 1
       59 SETTABLEKS                       R13 R12 K25 ["Text"]
       61 SETLIST                          R10 R11 2 [1]
       63 SETTABLEKS                       R10 R9 K12 ["Buttons"]
       65 NEWCLOSURE                       R10 P0
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U0
       68 SETTABLEKS                       R10 R9 K13 ["OnButtonPressed"]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K33 ["dismissSelf"]
       73 SETTABLEKS                       R10 R9 K14 ["OnClose"]
       75 GETUPVAL                         R10 3
       76 SETTABLEKS                       R10 R9 K15 ["learnMoreUrl"]
       78 LOADK                            R12 K18 ["FaceCapture"]
       79 LOADK                            R13 K34 ["LearnMoreLabel"]
       80 NAMECALL                         R10 R1 K20 ["getText"]
       82 CALL                             R10 3 1
       83 SETTABLEKS                       R10 R9 K16 ["learnMoreLabel"]
       85 CALL                             R3 6 0
       86 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCameraDevices"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 GETIMPORT                        R2 K2 [pairs]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 ADDK                             R1 R1 K3 [1]
       11 FORGLOOP                         R2 1 ; [-2]
       13 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["numberOfCameras"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKN                       R0 K1 [0] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 0
        9 DUPTABLE                         R4 K3 [{"shouldShowNoCamerasWarning"}]
       10 SETTABLEKS                       R1 R4 K2 ["shouldShowNoCamerasWarning"]
       12 NAMECALL                         R2 R2 K4 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CheckOrRequestCameraPermission"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FacialAnimationRecordingService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 DUPTABLE                         R1 K6 [{["AUTHORIZED"] = "AUTHORIZED", ["DENIED"] = "DENIED"}]
        7 GETIMPORT                        R2 K8 [pcall]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R2 1 2
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 JUMPIFEQKS                       R3 K5 ["DENIED"] ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 GETUPVAL                         R5 0
       19 DUPTABLE                         R7 K10 [{"deniedCameraPermission"}]
       20 SETTABLEKS                       R4 R7 K9 ["deniedCameraPermission"]
       22 NAMECALL                         R5 R5 K11 ["setState"]
       24 CALL                             R5 2 0
       25 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RobloxGui"]
        3 SETTABLEKS                       R1 R0 K1 ["presentationGui"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["new"]
        8 GETTABLEKS                       R2 R0 K1 ["presentationGui"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K3 ["focus"]
       13 DUPTABLE                         R3 K11 [{["remainingSeconds"] = 0, ["shouldShowCameraSelectionDialog"] = False, ["isAgeRestricted"] = False, ["shouldShowNoCamerasWarning"] = False, ["deniedCameraPermission"] = False}]
       14 NAMECALL                         R1 R0 K12 ["setState"]
       16 CALL                             R1 2 0
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K13 ["startRecording"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 SETTABLEKS                       R1 R0 K14 ["resetLooping"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 SETTABLEKS                       R1 R0 K15 ["endRecording"]
       34 NEWCLOSURE                       R1 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K16 ["showCameraSelectionDialog"]
       38 NEWCLOSURE                       R1 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K17 ["hideCameraSelectionDialog"]
       42 NEWCLOSURE                       R1 P5
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K18 ["movePlayheadToBeginning"]
       46 NEWCLOSURE                       R1 P6
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K19 ["dismissSelf"]
       50 NEWCLOSURE                       R1 P7
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K20 ["toggleRecording"]
       54 NEWCLOSURE                       R1 P8
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U4
       58 SETTABLEKS                       R1 R0 K21 ["triggerReRecording"]
       60 NEWCLOSURE                       R1 P9
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 SETTABLEKS                       R1 R0 K22 ["showAgeRestrictionError"]
       66 NEWCLOSURE                       R1 P10
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          UPVAL U9
       71 SETTABLEKS                       R1 R0 K23 ["showBiometricDataCollectionDialog"]
       73 DUPCLOSURE                       R1 K24 [PROTO_13]
       74 CAPTURE                          UPVAL U10
       75 SETTABLEKS                       R1 R0 K25 ["numberOfCameras"]
       77 NEWCLOSURE                       R1 P12
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R1 R0 K26 ["checkAndShowCameraWarning"]
       81 NEWCLOSURE                       R1 P13
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R1 R0 K27 ["checkOrRequestCameraPermission"]
       85 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["RootInstance"]
        4 GETTABLEKS                       R3 R0 K2 ["Animator"]
        6 JUMPIF                           R3 ; [+11]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["getAnimationController"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 LOADK                            R6 K2 ["Animator"]
       13 NAMECALL                         R4 R3 K4 ["FindFirstChildOfClass"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R0 K2 ["Animator"]
       18 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["HeartbeatCount"]
        3 ADDK                             R2 R2 K1 [1]
        4 SETTABLEKS                       R2 R1 K0 ["HeartbeatCount"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["state"]
        9 GETTABLEKS                       R1 R1 K3 ["isRecording"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["HeartbeatCount"]
       14 FASTCALL2K                       MATH_FMOD R3 K4 ; [+4]
       16 LOADK                            R4 K4 [30]
       17 GETIMPORT                        R2 K7 [math.fmod]
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKN                    R2 K8 [0] ; [+5]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K9 ["checkAndShowCameraWarning"]
       25 CALL                             R2 0 0
       26 GETUPVAL                         R2 0
       27 NAMECALL                         R2 R2 K10 ["updateAvatarData"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 1
       31 JUMPIFNOT                        R2 ; [+11]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K11 ["faceTracker"]
       35 JUMPIFNOT                        R2 ; [+11]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K11 ["faceTracker"]
       39 NAMECALL                         R2 R2 K12 ["Step"]
       41 CALL                             R2 1 0
       42 JUMP                             ; [+4]
       43 GETUPVAL                         R2 2
       44 NAMECALL                         R2 R2 K12 ["Step"]
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K13 ["Animator"]
       50 MOVE                             R4 R0
       51 NAMECALL                         R2 R2 K14 ["StepAnimations"]
       53 CALL                             R2 2 0
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K15 ["track"]
       57 NAMECALL                         R2 R2 K16 ["GetTrackerData"]
       59 CALL                             R2 1 3
       60 LOADN                            R6 0
       61 JUMPIFLT                         R6 R4 ; [+2]
       63 LOADB                            R5 0 +1
       64 LOADB                            R5 1
       65 GETUPVAL                         R6 0
       66 DUPTABLE                         R8 K18 [{"isCameraReady"}]
       67 SETTABLEKS                       R5 R8 K17 ["isCameraReady"]
       69 NAMECALL                         R6 R6 K19 ["setState"]
       71 CALL                             R6 2 0
       72 JUMPIFNOT                        R1 ; [+71]
       73 JUMPIFNOT                        R5 ; [+70]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K20 ["RecordInfo"]
       77 GETTABLEKS                       R6 R6 K21 ["startTime"]
       79 JUMPIF                           R6 ; [+5]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K20 ["RecordInfo"]
       83 SETTABLEKS                       R4 R6 K21 ["startTime"]
       85 GETUPVAL                         R6 3
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K20 ["RecordInfo"]
       89 GETTABLEKS                       R8 R8 K21 ["startTime"]
       91 SUB                              R7 R4 R8
       92 SUB                              R8 R6 R7
       93 LOADN                            R9 0
       94 JUMPIFNOTLT                      R8 R9 ; [+5]
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K22 ["endRecording"]
       99 CALL                             R9 0 0
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R12 R12 K24 ["TICK_FREQUENCY"]
      103 MUL                              R11 R7 R12
      104 ADDK                             R10 R11 K23 [0.5]
      105 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      106 GETIMPORT                        R9 K26 [math.floor]
      108 CALL                             R9 1 1
      109 NEWTABLE                         R10 0 0
      111 GETIMPORT                        R11 K28 [pairs]
      113 MOVE                             R12 R2
      114 CALL                             R11 1 3
      115 FORGPREP_NEXT                    R11
      116 SETTABLE                         R15 R10 R14
      117 FORGLOOP                         R11 2 ; [-2]
      119 SETTABLEKS                       R3 R10 K29 ["Head"]
      121 GETUPVAL                         R11 0
      122 GETTABLEKS                       R11 R11 K30 ["RecordedFrames"]
      124 SETTABLE                         R10 R11 R9
      125 FASTCALL1                        MATH_FLOOR R8 ; [+3]
      126 MOVE                             R12 R8
      127 GETIMPORT                        R11 K26 [math.floor]
      129 CALL                             R11 1 1
      130 GETUPVAL                         R12 0
      131 GETTABLEKS                       R12 R12 K2 ["state"]
      133 GETTABLEKS                       R12 R12 K31 ["remainingSeconds"]
      135 JUMPIFEQ                         R12 R11 ; [+8]
      137 GETUPVAL                         R12 0
      138 DUPTABLE                         R14 K32 [{"remainingSeconds"}]
      139 SETTABLEKS                       R11 R14 K31 ["remainingSeconds"]
      141 NAMECALL                         R12 R12 K19 ["setState"]
      143 CALL                             R12 2 0
      144 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+43]
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["graph"]
        7 JUMPIF                           R1 ; [+55]
        8 GETIMPORT                        R1 K3 [Instance.new]
       10 LOADK                            R2 K4 ["Folder"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K5 ["Parent"]
       15 LOADK                            R2 K6 ["RTAnimation"]
       16 SETTABLEKS                       R2 R1 K7 ["Name"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K2 ["new"]
       21 LOADN                            R3 0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R0 K0 ["graph"]
       26 GETTABLEKS                       R2 R0 K0 ["graph"]
       28 NAMECALL                         R2 R2 K8 ["createLocalTracker"]
       30 CALL                             R2 1 1
       31 SETTABLEKS                       R2 R0 K9 ["faceTracker"]
       33 GETTABLEKS                       R2 R0 K9 ["faceTracker"]
       35 LOADK                            R3 K10 ["StudioFaceRecording"]
       36 SETTABLEKS                       R3 R2 K11 ["SessionName"]
       38 GETTABLEKS                       R2 R0 K9 ["faceTracker"]
       40 GETIMPORT                        R3 K15 [Enum.TrackerType.Face]
       42 SETTABLEKS                       R3 R2 K13 ["TrackerType"]
       44 JUMP                             ; [+18]
       45 GETUPVAL                         R1 3
       46 JUMPIF                           R1 ; [+1]
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 3
       49 LOADB                            R2 0
       50 SETTABLEKS                       R2 R1 K16 ["FlipHeadOrientation"]
       52 GETUPVAL                         R1 3
       53 NAMECALL                         R1 R1 K17 ["IsStarted"]
       55 CALL                             R1 1 1
       56 JUMPIF                           R1 ; [+6]
       57 GETUPVAL                         R1 3
       58 LOADB                            R3 1
       59 LOADB                            R4 0
       60 NAMECALL                         R1 R1 K18 ["Init"]
       62 CALL                             R1 3 0
       63 GETIMPORT                        R1 K21 [task.defer]
       65 GETTABLEKS                       R2 R0 K22 ["checkOrRequestCameraPermission"]
       67 CALL                             R1 1 0
       68 NEWTABLE                         R1 0 0
       70 SETTABLEKS                       R1 R0 K23 ["RecordInfo"]
       72 NEWTABLE                         R1 0 0
       74 SETTABLEKS                       R1 R0 K24 ["RecordedFrames"]
       76 LOADN                            R1 0
       77 SETTABLEKS                       R1 R0 K25 ["HeartbeatCount"]
       79 GETTABLEKS                       R1 R0 K26 ["props"]
       81 GETTABLEKS                       R1 R1 K27 ["Status"]
       83 GETTABLEKS                       R1 R1 K28 ["RootInstance"]
       85 GETUPVAL                         R2 4
       86 GETTABLEKS                       R2 R2 K29 ["clearPose"]
       88 MOVE                             R3 R1
       89 CALL                             R2 1 0
       90 GETUPVAL                         R2 4
       91 GETTABLEKS                       R2 R2 K30 ["focusCameraOnFace"]
       93 GETTABLEKS                       R3 R0 K26 ["props"]
       95 GETTABLEKS                       R3 R3 K28 ["RootInstance"]
       97 CALL                             R2 1 0
       98 NAMECALL                         R2 R0 K31 ["updateAvatarData"]
      100 CALL                             R2 1 0
      101 GETUPVAL                         R2 0
      102 JUMPIFNOT                        R2 ; [+58]
      103 GETTABLEKS                       R2 R0 K0 ["graph"]
      105 JUMPIF                           R2 ; [+1]
      106 RETURN                           R0 0
      107 GETTABLEKS                       R2 R0 K32 ["track"]
      109 JUMPIF                           R2 ; [+24]
      110 GETTABLEKS                       R2 R0 K0 ["graph"]
      112 GETTABLEKS                       R4 R0 K33 ["Animator"]
      114 LOADNIL                          R5
      115 LOADB                            R6 0
      116 LOADB                            R7 0
      117 NAMECALL                         R2 R2 K34 ["createStreamAnimationAndTrack"]
      119 CALL                             R2 5 2
      120 SETTABLEKS                       R3 R0 K32 ["track"]
      122 GETTABLEKS                       R4 R0 K0 ["graph"]
      124 MOVE                             R6 R2
      125 NAMECALL                         R4 R4 K35 ["connectToLocalTrackerOutput"]
      127 CALL                             R4 2 0
      128 GETTABLEKS                       R4 R0 K0 ["graph"]
      130 LOADB                            R6 1
      131 NAMECALL                         R4 R4 K36 ["setTracking"]
      133 CALL                             R4 2 0
      134 GETTABLEKS                       R2 R0 K32 ["track"]
      136 JUMPIF                           R2 ; [+1]
      137 RETURN                           R0 0
      138 GETTABLEKS                       R2 R0 K32 ["track"]
      140 NAMECALL                         R2 R2 K37 ["Play"]
      142 CALL                             R2 1 0
      143 GETTABLEKS                       R2 R0 K0 ["graph"]
      145 LOADB                            R4 1
      146 NAMECALL                         R2 R2 K38 ["setCameraEnabled"]
      148 CALL                             R2 2 0
      149 GETTABLEKS                       R3 R0 K0 ["graph"]
      151 NAMECALL                         R3 R3 K39 ["getTracking"]
      153 CALL                             R3 1 1
      154 FASTCALL2K                       ASSERT R3 K40 ; [+4]
      156 LOADK                            R4 K40 ["Local tracking must have started once animation output is connected!"]
      157 GETIMPORT                        R2 K42 [assert]
      159 CALL                             R2 2 0
      160 JUMP                             ; [+44]
      161 GETIMPORT                        R2 K3 [Instance.new]
      163 LOADK                            R3 K43 ["TrackerStreamAnimation"]
      164 CALL                             R2 1 1
      165 SETTABLEKS                       R2 R0 K44 ["animation"]
      167 GETIMPORT                        R2 K46 [game]
      169 LOADK                            R4 K47 ["UseNewLoadStreamAnimationAPI"]
      170 NAMECALL                         R2 R2 K48 ["GetEngineFeature"]
      172 CALL                             R2 2 1
      173 JUMPIFNOT                        R2 ; [+13]
      174 GETTABLEKS                       R2 R0 K33 ["Animator"]
      176 GETTABLEKS                       R4 R0 K44 ["animation"]
      178 LOADNIL                          R5
      179 LOADB                            R6 0
      180 LOADB                            R7 0
      181 NAMECALL                         R2 R2 K49 ["LoadStreamAnimationV2"]
      183 CALL                             R2 5 1
      184 SETTABLEKS                       R2 R0 K32 ["track"]
      186 JUMP                             ; [+9]
      187 GETTABLEKS                       R2 R0 K33 ["Animator"]
      189 GETTABLEKS                       R4 R0 K44 ["animation"]
      191 NAMECALL                         R2 R2 K50 ["LoadStreamAnimation"]
      193 CALL                             R2 2 1
      194 SETTABLEKS                       R2 R0 K32 ["track"]
      196 GETTABLEKS                       R2 R0 K32 ["track"]
      198 JUMPIF                           R2 ; [+1]
      199 RETURN                           R0 0
      200 GETTABLEKS                       R2 R0 K32 ["track"]
      202 NAMECALL                         R2 R2 K37 ["Play"]
      204 CALL                             R2 1 0
      205 GETUPVAL                         R2 5
      206 GETTABLEKS                       R2 R2 K51 ["Heartbeat"]
      208 NEWCLOSURE                       R4 P0
      209 CAPTURE                          VAL R0
      210 CAPTURE                          UPVAL U0
      211 CAPTURE                          UPVAL U3
      212 CAPTURE                          UPVAL U6
      213 CAPTURE                          UPVAL U7
      214 NAMECALL                         R2 R2 K52 ["Connect"]
      216 CALL                             R2 2 1
      217 SETTABLEKS                       R2 R0 K53 ["heartbeatSignal"]
      219 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["FacialAnimationRecordingService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 LOADB                            R2 0
        7 SETUPVAL                         R2 0
        8 LOADB                            R2 0
        9 SETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R0 K4 ["props"]
       12 GETTABLEKS                       R2 R2 K5 ["SetInReviewState"]
       14 LOADB                            R3 0
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K6 ["resetLooping"]
       18 CALL                             R2 0 0
       19 NAMECALL                         R2 R1 K7 ["IsAgeRestricted"]
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETTABLEKS                       R3 R0 K8 ["showAgeRestrictionError"]
       25 CALL                             R3 0 0
       26 RETURN                           R0 0
       27 GETTABLEKS                       R3 R1 K9 ["BiometricDataConsent"]
       29 JUMPIF                           R3 ; [+4]
       30 GETTABLEKS                       R4 R0 K10 ["showBiometricDataCollectionDialog"]
       32 CALL                             R4 0 0
       33 RETURN                           R0 0
       34 NAMECALL                         R4 R0 K11 ["InitializeRecordingMode"]
       36 CALL                             R4 1 0
       37 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["StartupInitialize"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dismissSelf"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R4 R4 K4 ["isRecording"]
       12 GETTABLEKS                       R5 R1 K5 ["inReviewState"]
       14 GETTABLEKS                       R6 R0 K3 ["state"]
       16 GETTABLEKS                       R6 R6 K6 ["isCameraReady"]
       18 GETTABLEKS                       R7 R0 K3 ["state"]
       20 GETTABLEKS                       R7 R7 K7 ["isAgeRestricted"]
       22 GETTABLEKS                       R8 R0 K3 ["state"]
       24 GETTABLEKS                       R8 R8 K8 ["remainingSeconds"]
       26 GETTABLEKS                       R9 R0 K3 ["state"]
       28 GETTABLEKS                       R9 R9 K9 ["deniedCameraPermission"]
       30 GETTABLEKS                       R10 R0 K3 ["state"]
       32 GETTABLEKS                       R10 R10 K10 ["shouldShowCameraSelectionDialog"]
       34 GETTABLEKS                       R11 R0 K3 ["state"]
       36 GETTABLEKS                       R11 R11 K11 ["shouldShowNoCamerasWarning"]
       38 GETTABLEKS                       R12 R2 K12 ["faceCaptureTheme"]
       40 GETTABLEKS                       R12 R12 K13 ["faceCaptureDefaultButtonIconColor"]
       42 GETTABLEKS                       R13 R2 K12 ["faceCaptureTheme"]
       44 GETTABLEKS                       R13 R13 K14 ["stopRecordingButtonImage"]
       46 GETTABLEKS                       R14 R2 K12 ["faceCaptureTheme"]
       48 GETTABLEKS                       R14 R14 K15 ["errorIcon"]
       50 GETTABLEKS                       R15 R1 K1 ["Stylizer"]
       52 GETTABLEKS                       R16 R15 K16 ["TextColor"]
       54 GETIMPORT                        R17 K19 [os.clock]
       56 CALL                             R17 0 1
       57 GETUPVAL                         R19 0
       58 NOT                              R18 R19
       59 JUMPIFNOT                        R18 ; [+13]
       60 GETUPVAL                         R18 1
       61 JUMPIFNOT                        R18 ; [+11]
       62 GETTABLEKS                       R18 R0 K20 ["timeAtEndOfRecording"]
       64 JUMPIFNOT                        R18 ; [+8]
       65 GETTABLEKS                       R20 R0 K20 ["timeAtEndOfRecording"]
       67 SUB                              R19 R17 R20
       68 LOADN                            R20 5
       69 JUMPIFLE                         R19 R20 ; [+2]
       71 LOADB                            R18 0 +1
       72 LOADB                            R18 1
       73 GETUPVAL                         R19 2
       74 GETTABLEKS                       R19 R19 K21 ["provide"]
       76 NEWTABLE                         R20 0 1
       78 GETTABLEKS                       R21 R0 K22 ["focus"]
       80 SETLIST                          R20 R21 1 [1]
       82 DUPTABLE                         R21 K25 [{"RecordingPanelPortal", "CameraSelectionDialog"}]
       83 NOT                              R22 R7
       84 JUMPIFNOT                        R22 ; [+701]
       85 GETUPVAL                         R22 3
       86 GETTABLEKS                       R22 R22 K26 ["createElement"]
       88 GETUPVAL                         R23 3
       89 GETTABLEKS                       R23 R23 K27 ["Portal"]
       91 DUPTABLE                         R24 K29 [{"target"}]
       92 GETTABLEKS                       R25 R0 K30 ["presentationGui"]
       94 SETTABLEKS                       R25 R24 K28 ["target"]
       96 DUPTABLE                         R25 K33 [{"RecordingPanelContainer", "WarningsPane"}]
       97 GETUPVAL                         R26 3
       98 GETTABLEKS                       R26 R26 K26 ["createElement"]
      100 GETUPVAL                         R27 4
      101 DUPTABLE                         R28 K38 [{"Size", "Position", "AnchorPoint", "Padding"}]
      102 GETIMPORT                        R29 K41 [UDim2.new]
      104 LOADN                            R30 0
      105 LOADN                            R31 160
      106 LOADN                            R32 0
      107 LOADN                            R33 38
      108 CALL                             R29 4 1
      109 SETTABLEKS                       R29 R28 K34 ["Size"]
      111 GETIMPORT                        R29 K41 [UDim2.new]
      113 LOADK                            R30 K42 [0.5]
      114 LOADN                            R31 0
      115 LOADN                            R32 1
      116 LOADN                            R33 -5
      117 CALL                             R29 4 1
      118 SETTABLEKS                       R29 R28 K35 ["Position"]
      120 GETIMPORT                        R29 K44 [Vector2.new]
      122 LOADK                            R30 K42 [0.5]
      123 LOADN                            R31 1
      124 CALL                             R29 2 1
      125 SETTABLEKS                       R29 R28 K36 ["AnchorPoint"]
      127 DUPTABLE                         R29 K48 [{["Left"] = 5, ["Right"] = 5}]
      128 SETTABLEKS                       R29 R28 K37 ["Padding"]
      130 DUPTABLE                         R29 K51 [{"RecordingPanel", "DismissButton"}]
      131 GETUPVAL                         R30 3
      132 GETTABLEKS                       R30 R30 K26 ["createElement"]
      134 GETUPVAL                         R31 5
      135 DUPTABLE                         R32 K66 [{["Size"], ["Padding"], ["Layout"], ["Spacing"] = 3, ["VerticalAlignment"], ["ZIndex"] = 1, ["Style"] = "RoundBox", ["Image"] = "", ["BackgroundColor3"], ["BackgroundTransparency"] = 0.1, ["ImageTransparency"] = 0.1}]
      136 GETIMPORT                        R33 K41 [UDim2.new]
      138 LOADN                            R34 1
      139 LOADN                            R35 0
      140 LOADN                            R36 1
      141 LOADN                            R37 0
      142 CALL                             R33 4 1
      143 SETTABLEKS                       R33 R32 K34 ["Size"]
      145 DUPTABLE                         R33 K68 [{["Left"] = 40, ["Right"] = 40}]
      146 SETTABLEKS                       R33 R32 K37 ["Padding"]
      148 GETIMPORT                        R33 K72 [Enum.FillDirection.Horizontal]
      150 SETTABLEKS                       R33 R32 K52 ["Layout"]
      152 GETIMPORT                        R33 K74 [Enum.VerticalAlignment.Center]
      154 SETTABLEKS                       R33 R32 K55 ["VerticalAlignment"]
      156 GETTABLEKS                       R33 R1 K1 ["Stylizer"]
      158 GETTABLEKS                       R33 R33 K75 ["Color"]
      160 SETTABLEKS                       R33 R32 K62 ["BackgroundColor3"]
      162 DUPTABLE                         R33 K83 [{"Corner", "RecordButton", "ReRecordButton", "FlashingDot", "TextLabelButton", "LoadingIndicator", "CameraSelectionButton"}]
      163 GETUPVAL                         R34 3
      164 GETTABLEKS                       R34 R34 K26 ["createElement"]
      166 LOADK                            R35 K84 ["UICorner"]
      167 DUPTABLE                         R36 K86 [{"CornerRadius"}]
      168 GETIMPORT                        R37 K88 [UDim.new]
      170 LOADN                            R38 0
      171 LOADN                            R39 8
      172 CALL                             R37 2 1
      173 SETTABLEKS                       R37 R36 K85 ["CornerRadius"]
      175 CALL                             R34 2 1
      176 SETTABLEKS                       R34 R33 K76 ["Corner"]
      178 NOT                              R34 R5
      179 JUMPIFNOT                        R34 ; [+103]
      180 GETUPVAL                         R34 3
      181 GETTABLEKS                       R34 R34 K26 ["createElement"]
      183 GETUPVAL                         R35 6
      184 DUPTABLE                         R36 K94 [{["Size"], ["Position"], ["ImageTransparency"] = 1, ["BackgroundTransparency"] = 0.5, ["BorderSizePixel"] = 1, ["OnClick"], ["Text"] = "", ["LayoutOrder"] = 1, ["Style"], ["StyleModifier"]}]
      185 GETIMPORT                        R37 K41 [UDim2.new]
      187 LOADN                            R38 0
      188 LOADN                            R39 30
      189 LOADN                            R40 0
      190 LOADN                            R41 30
      191 CALL                             R37 4 1
      192 SETTABLEKS                       R37 R36 K34 ["Size"]
      194 GETIMPORT                        R37 K41 [UDim2.new]
      196 LOADN                            R38 0
      197 LOADN                            R39 0
      198 LOADN                            R40 0
      199 LOADN                            R41 0
      200 CALL                             R37 4 1
      201 SETTABLEKS                       R37 R36 K35 ["Position"]
      203 GETTABLEKS                       R37 R0 K95 ["toggleRecording"]
      205 SETTABLEKS                       R37 R36 K90 ["OnClick"]
      207 DUPTABLE                         R37 K97 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      208 SETTABLEKS                       R37 R36 K58 ["Style"]
      210 JUMPIF                           R6 ; [+4]
      211 GETUPVAL                         R37 7
      212 GETTABLEKS                       R37 R37 K98 ["Disabled"]
      214 JUMPIF                           R37 ; [+1]
      215 LOADNIL                          R37
      216 SETTABLEKS                       R37 R36 K93 ["StyleModifier"]
      218 NEWTABLE                         R37 2 1
      220 GETUPVAL                         R39 3
      221 GETTABLEKS                       R39 R39 K26 ["createElement"]
      223 LOADK                            R40 K99 ["ImageLabel"]
      224 DUPTABLE                         R41 K100 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["Image"]}]
      225 GETIMPORT                        R42 K41 [UDim2.new]
      227 LOADN                            R43 0
      228 LOADN                            R44 30
      229 LOADN                            R45 0
      230 LOADN                            R46 30
      231 CALL                             R42 4 1
      232 SETTABLEKS                       R42 R41 K34 ["Size"]
      234 GETIMPORT                        R42 K41 [UDim2.new]
      236 LOADN                            R43 0
      237 LOADN                            R44 0
      238 LOADN                            R45 0
      239 LOADN                            R46 0
      240 CALL                             R42 4 1
      241 SETTABLEKS                       R42 R41 K35 ["Position"]
      243 JUMPIFNOT                        R4 ; [+2]
      244 MOVE                             R42 R13
      245 JUMPIF                           R42 ; [+1]
      246 LOADK                            R42 K101 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/button_control_record.png"]
      247 SETTABLEKS                       R42 R41 K60 ["Image"]
      249 CALL                             R39 2 1
      250 SETTABLEKS                       R39 R37 K60 ["Image"]
      252 GETUPVAL                         R39 3
      253 GETTABLEKS                       R39 R39 K26 ["createElement"]
      255 GETUPVAL                         R40 8
      256 DUPTABLE                         R41 K102 [{"Text"}]
      257 JUMPIFNOT                        R4 ; [+6]
      258 LOADK                            R44 K103 ["FaceCapture"]
      259 LOADK                            R45 K104 ["TooltipStopRecording"]
      260 NAMECALL                         R42 R3 K105 ["getText"]
      262 CALL                             R42 3 1
      263 JUMPIF                           R42 ; [+5]
      264 LOADK                            R44 K103 ["FaceCapture"]
      265 LOADK                            R45 K106 ["TooltipStartRecording"]
      266 NAMECALL                         R42 R3 K105 ["getText"]
      268 CALL                             R42 3 1
      269 SETTABLEKS                       R42 R41 K91 ["Text"]
      271 CALL                             R39 2 1
      272 SETTABLEKS                       R39 R37 K107 ["Tooltip"]
      274 GETUPVAL                         R38 3
      275 GETTABLEKS                       R38 R38 K26 ["createElement"]
      277 GETUPVAL                         R39 9
      278 DUPTABLE                         R40 K110 [{["Cursor"] = "PointingHand"}]
      279 CALL                             R38 2 -1
      280 SETLIST                          R37 R38 -1 [1]
      282 CALL                             R34 3 1
      283 SETTABLEKS                       R34 R33 K77 ["RecordButton"]
      285 MOVE                             R34 R5
      286 JUMPIFNOT                        R34 ; [+92]
      287 GETUPVAL                         R34 3
      288 GETTABLEKS                       R34 R34 K26 ["createElement"]
      290 GETUPVAL                         R35 6
      291 DUPTABLE                         R36 K94 [{["Size"], ["Position"], ["ImageTransparency"] = 1, ["BackgroundTransparency"] = 0.5, ["BorderSizePixel"] = 1, ["OnClick"], ["Text"] = "", ["LayoutOrder"] = 1, ["Style"], ["StyleModifier"]}]
      292 GETIMPORT                        R37 K41 [UDim2.new]
      294 LOADN                            R38 0
      295 LOADN                            R39 30
      296 LOADN                            R40 0
      297 LOADN                            R41 30
      298 CALL                             R37 4 1
      299 SETTABLEKS                       R37 R36 K34 ["Size"]
      301 GETIMPORT                        R37 K41 [UDim2.new]
      303 LOADN                            R38 0
      304 LOADN                            R39 0
      305 LOADN                            R40 0
      306 LOADN                            R41 0
      307 CALL                             R37 4 1
      308 SETTABLEKS                       R37 R36 K35 ["Position"]
      310 GETTABLEKS                       R37 R0 K111 ["triggerReRecording"]
      312 SETTABLEKS                       R37 R36 K90 ["OnClick"]
      314 DUPTABLE                         R37 K97 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      315 SETTABLEKS                       R37 R36 K58 ["Style"]
      317 JUMPIF                           R6 ; [+4]
      318 GETUPVAL                         R37 7
      319 GETTABLEKS                       R37 R37 K98 ["Disabled"]
      321 JUMPIF                           R37 ; [+1]
      322 LOADNIL                          R37
      323 SETTABLEKS                       R37 R36 K93 ["StyleModifier"]
      325 NEWTABLE                         R37 2 1
      327 GETUPVAL                         R39 3
      328 GETTABLEKS                       R39 R39 K26 ["createElement"]
      330 LOADK                            R40 K99 ["ImageLabel"]
      331 DUPTABLE                         R41 K114 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["Image"] = "rbxasset://textures/AnimationEditor/FaceCaptureUI/ReRecordButton.png", ["ImageColor3"]}]
      332 GETIMPORT                        R42 K41 [UDim2.new]
      334 LOADN                            R43 0
      335 LOADN                            R44 30
      336 LOADN                            R45 0
      337 LOADN                            R46 30
      338 CALL                             R42 4 1
      339 SETTABLEKS                       R42 R41 K34 ["Size"]
      341 GETIMPORT                        R42 K41 [UDim2.new]
      343 LOADN                            R43 0
      344 LOADN                            R44 0
      345 LOADN                            R45 0
      346 LOADN                            R46 0
      347 CALL                             R42 4 1
      348 SETTABLEKS                       R42 R41 K35 ["Position"]
      350 SETTABLEKS                       R12 R41 K113 ["ImageColor3"]
      352 CALL                             R39 2 1
      353 SETTABLEKS                       R39 R37 K60 ["Image"]
      355 GETUPVAL                         R39 3
      356 GETTABLEKS                       R39 R39 K26 ["createElement"]
      358 GETUPVAL                         R40 8
      359 DUPTABLE                         R41 K102 [{"Text"}]
      360 LOADK                            R44 K103 ["FaceCapture"]
      361 LOADK                            R45 K115 ["TooltipReRecording"]
      362 NAMECALL                         R42 R3 K105 ["getText"]
      364 CALL                             R42 3 1
      365 SETTABLEKS                       R42 R41 K91 ["Text"]
      367 CALL                             R39 2 1
      368 SETTABLEKS                       R39 R37 K107 ["Tooltip"]
      370 GETUPVAL                         R38 3
      371 GETTABLEKS                       R38 R38 K26 ["createElement"]
      373 GETUPVAL                         R39 9
      374 DUPTABLE                         R40 K110 [{["Cursor"] = "PointingHand"}]
      375 CALL                             R38 2 -1
      376 SETLIST                          R37 R38 -1 [1]
      378 CALL                             R34 3 1
      379 SETTABLEKS                       R34 R33 K78 ["ReRecordButton"]
      381 MOVE                             R34 R4
      382 JUMPIFNOT                        R34 ; [+15]
      383 GETUPVAL                         R34 3
      384 GETTABLEKS                       R34 R34 K26 ["createElement"]
      386 GETUPVAL                         R35 10
      387 DUPTABLE                         R36 K119 [{["Size"], ["PaddingLeft"] = 30, ["LayoutOrder"] = 2}]
      388 GETIMPORT                        R37 K41 [UDim2.new]
      390 LOADN                            R38 0
      391 LOADN                            R39 20
      392 LOADN                            R40 0
      393 LOADN                            R41 7
      394 CALL                             R37 4 1
      395 SETTABLEKS                       R37 R36 K34 ["Size"]
      397 CALL                             R34 2 1
      398 SETTABLEKS                       R34 R33 K79 ["FlashingDot"]
      400 MOVE                             R34 R6
      401 JUMPIFNOT                        R34 ; [+85]
      402 GETUPVAL                         R34 3
      403 GETTABLEKS                       R34 R34 K26 ["createElement"]
      405 GETUPVAL                         R35 6
      406 DUPTABLE                         R36 K124 [{["Size"], ["Position"], ["ImageTransparency"] = 1, ["BackgroundTransparency"] = 0.5, ["BorderSizePixel"] = 1, ["OnClick"], ["TextXAlignment"], ["TextTruncate"], ["TextSize"] = 15, ["Text"], ["LayoutOrder"] = 3, ["Style"]}]
      407 JUMPIFNOT                        R4 ; [+9]
      408 JUMPIFNOT                        R8 ; [+8]
      409 GETIMPORT                        R37 K41 [UDim2.new]
      411 LOADN                            R38 0
      412 LOADN                            R39 68
      413 LOADN                            R40 1
      414 LOADN                            R41 0
      415 CALL                             R37 4 1
      416 JUMPIF                           R37 ; [+7]
      417 GETIMPORT                        R37 K41 [UDim2.new]
      419 LOADN                            R38 0
      420 LOADN                            R39 60
      421 LOADN                            R40 1
      422 LOADN                            R41 0
      423 CALL                             R37 4 1
      424 SETTABLEKS                       R37 R36 K34 ["Size"]
      426 GETIMPORT                        R37 K41 [UDim2.new]
      428 LOADN                            R38 0
      429 LOADN                            R39 0
      430 LOADN                            R40 0
      431 LOADN                            R41 0
      432 CALL                             R37 4 1
      433 SETTABLEKS                       R37 R36 K35 ["Position"]
      435 JUMPIFNOT                        R5 ; [+3]
      436 GETTABLEKS                       R37 R0 K111 ["triggerReRecording"]
      438 JUMPIF                           R37 ; [+11]
      439 JUMPIF                           R5 ; [+4]
      440 JUMPIF                           R4 ; [+3]
      441 GETTABLEKS                       R37 R0 K95 ["toggleRecording"]
      443 JUMPIF                           R37 ; [+6]
      444 NOT                              R37 R5
      445 JUMPIFNOT                        R37 ; [+4]
      446 MOVE                             R37 R4
      447 JUMPIFNOT                        R37 ; [+2]
      448 GETTABLEKS                       R37 R0 K95 ["toggleRecording"]
      450 SETTABLEKS                       R37 R36 K90 ["OnClick"]
      452 GETIMPORT                        R37 K125 [Enum.TextXAlignment.Center]
      454 SETTABLEKS                       R37 R36 K120 ["TextXAlignment"]
      456 GETIMPORT                        R37 K127 [Enum.TextTruncate.None]
      458 SETTABLEKS                       R37 R36 K121 ["TextTruncate"]
      460 JUMPIFNOT                        R5 ; [+6]
      461 LOADK                            R39 K103 ["FaceCapture"]
      462 LOADK                            R40 K128 ["PanelReRecording"]
      463 NAMECALL                         R37 R3 K105 ["getText"]
      465 CALL                             R37 3 1
      466 JUMPIF                           R37 ; [+12]
      467 NOT                              R37 R5
      468 JUMPIFNOT                        R37 ; [+10]
      469 JUMPIFNOT                        R4 ; [+4]
      470 MOVE                             R38 R8
      471 LOADK                            R39 K129 [" sec   "]
      472 CONCAT                           R37 R38 R39
      473 JUMPIF                           R37 ; [+5]
      474 LOADK                            R39 K103 ["FaceCapture"]
      475 LOADK                            R40 K130 ["PanelReady"]
      476 NAMECALL                         R37 R3 K105 ["getText"]
      478 CALL                             R37 3 1
      479 SETTABLEKS                       R37 R36 K91 ["Text"]
      481 DUPTABLE                         R37 K131 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextColor"]}]
      482 SETTABLEKS                       R16 R37 K16 ["TextColor"]
      484 SETTABLEKS                       R37 R36 K58 ["Style"]
      486 CALL                             R34 2 1
      487 SETTABLEKS                       R34 R33 K80 ["TextLabelButton"]
      489 NOT                              R34 R5
      490 JUMPIFNOT                        R34 ; [+17]
      491 NOT                              R34 R6
      492 JUMPIFNOT                        R34 ; [+15]
      493 GETUPVAL                         R34 3
      494 GETTABLEKS                       R34 R34 K26 ["createElement"]
      496 GETUPVAL                         R35 11
      497 DUPTABLE                         R36 K132 [{["Size"], ["LayoutOrder"] = 2}]
      498 GETIMPORT                        R37 K41 [UDim2.new]
      500 LOADN                            R38 0
      501 LOADN                            R39 60
      502 LOADN                            R40 0
      503 LOADN                            R41 15
      504 CALL                             R37 4 1
      505 SETTABLEKS                       R37 R36 K34 ["Size"]
      507 CALL                             R34 2 1
      508 SETTABLEKS                       R34 R33 K81 ["LoadingIndicator"]
      510 NOT                              R34 R5
      511 JUMPIFNOT                        R34 ; [+84]
      512 NOT                              R34 R4
      513 JUMPIFNOT                        R34 ; [+82]
      514 GETUPVAL                         R34 3
      515 GETTABLEKS                       R34 R34 K26 ["createElement"]
      517 GETUPVAL                         R35 6
      518 DUPTABLE                         R36 K134 [{["Size"], ["Style"], ["Text"] = "", ["TextSize"] = 30, ["OnClick"], ["LayoutOrder"] = 4}]
      519 GETIMPORT                        R37 K136 [UDim2.fromOffset]
      521 LOADN                            R38 30
      522 LOADN                            R39 30
      523 CALL                             R37 2 1
      524 SETTABLEKS                       R37 R36 K34 ["Size"]
      526 DUPTABLE                         R37 K97 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      527 SETTABLEKS                       R37 R36 K58 ["Style"]
      529 GETTABLEKS                       R37 R0 K137 ["showCameraSelectionDialog"]
      531 SETTABLEKS                       R37 R36 K90 ["OnClick"]
      533 NEWTABLE                         R37 2 1
      535 GETUPVAL                         R39 3
      536 GETTABLEKS                       R39 R39 K26 ["createElement"]
      538 LOADK                            R40 K99 ["ImageLabel"]
      539 DUPTABLE                         R41 K139 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["Image"] = "rbxasset://textures/AnimationEditor/FaceCaptureUI/MoreButton.png", ["ImageColor3"]}]
      540 GETIMPORT                        R42 K41 [UDim2.new]
      542 LOADN                            R43 0
      543 LOADN                            R44 30
      544 LOADN                            R45 0
      545 LOADN                            R46 30
      546 CALL                             R42 4 1
      547 SETTABLEKS                       R42 R41 K34 ["Size"]
      549 GETIMPORT                        R42 K41 [UDim2.new]
      551 LOADN                            R43 0
      552 LOADN                            R44 0
      553 LOADN                            R45 0
      554 LOADN                            R46 0
      555 CALL                             R42 4 1
      556 SETTABLEKS                       R42 R41 K35 ["Position"]
      558 SETTABLEKS                       R12 R41 K113 ["ImageColor3"]
      560 CALL                             R39 2 1
      561 SETTABLEKS                       R39 R37 K60 ["Image"]
      563 GETUPVAL                         R39 3
      564 GETTABLEKS                       R39 R39 K26 ["createElement"]
      566 GETUPVAL                         R40 8
      567 DUPTABLE                         R41 K140 [{"Text", "Position"}]
      568 LOADK                            R44 K103 ["FaceCapture"]
      569 LOADK                            R45 K141 ["TooltipCameraSettings"]
      570 NAMECALL                         R42 R3 K105 ["getText"]
      572 CALL                             R42 3 1
      573 SETTABLEKS                       R42 R41 K91 ["Text"]
      575 GETIMPORT                        R42 K41 [UDim2.new]
      577 LOADN                            R43 0
      578 LOADN                            R44 50
      579 LOADN                            R45 0
      580 LOADN                            R46 50
      581 CALL                             R42 4 1
      582 SETTABLEKS                       R42 R41 K35 ["Position"]
      584 CALL                             R39 2 1
      585 SETTABLEKS                       R39 R37 K107 ["Tooltip"]
      587 GETUPVAL                         R38 3
      588 GETTABLEKS                       R38 R38 K26 ["createElement"]
      590 GETUPVAL                         R39 9
      591 DUPTABLE                         R40 K110 [{["Cursor"] = "PointingHand"}]
      592 CALL                             R38 2 -1
      593 SETLIST                          R37 R38 -1 [1]
      595 CALL                             R34 3 1
      596 SETTABLEKS                       R34 R33 K82 ["CameraSelectionButton"]
      598 CALL                             R30 3 1
      599 SETTABLEKS                       R30 R29 K49 ["RecordingPanel"]
      601 GETUPVAL                         R30 3
      602 GETTABLEKS                       R30 R30 K26 ["createElement"]
      604 GETUPVAL                         R31 6
      605 DUPTABLE                         R32 K143 [{["Style"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 10, ["OnClick"]}]
      606 DUPTABLE                         R33 K97 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      607 SETTABLEKS                       R33 R32 K58 ["Style"]
      609 GETIMPORT                        R33 K41 [UDim2.new]
      611 LOADN                            R34 0
      612 LOADN                            R35 16
      613 LOADN                            R36 0
      614 LOADN                            R37 16
      615 CALL                             R33 4 1
      616 SETTABLEKS                       R33 R32 K34 ["Size"]
      618 GETIMPORT                        R33 K41 [UDim2.new]
      620 LOADN                            R34 1
      621 LOADN                            R35 0
      622 LOADN                            R36 0
      623 LOADN                            R37 0
      624 CALL                             R33 4 1
      625 SETTABLEKS                       R33 R32 K35 ["Position"]
      627 GETIMPORT                        R33 K44 [Vector2.new]
      629 LOADK                            R34 K42 [0.5]
      630 LOADK                            R35 K42 [0.5]
      631 CALL                             R33 2 1
      632 SETTABLEKS                       R33 R32 K36 ["AnchorPoint"]
      634 NEWCLOSURE                       R33 P0
      635 CAPTURE                          VAL R0
      636 SETTABLEKS                       R33 R32 K90 ["OnClick"]
      638 DUPTABLE                         R33 K144 [{"Image"}]
      639 GETUPVAL                         R34 3
      640 GETTABLEKS                       R34 R34 K26 ["createElement"]
      642 LOADK                            R35 K99 ["ImageLabel"]
      643 DUPTABLE                         R36 K146 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"] = "rbxasset://textures/AnimationEditor/FaceCaptureUI/CloseButton.png"}]
      644 GETIMPORT                        R37 K41 [UDim2.new]
      646 LOADN                            R38 0
      647 LOADN                            R39 16
      648 LOADN                            R40 0
      649 LOADN                            R41 16
      650 CALL                             R37 4 1
      651 SETTABLEKS                       R37 R36 K34 ["Size"]
      653 CALL                             R34 2 1
      654 SETTABLEKS                       R34 R33 K60 ["Image"]
      656 CALL                             R30 3 1
      657 SETTABLEKS                       R30 R29 K50 ["DismissButton"]
      659 CALL                             R26 3 1
      660 SETTABLEKS                       R26 R25 K31 ["RecordingPanelContainer"]
      662 GETUPVAL                         R26 3
      663 GETTABLEKS                       R26 R26 K26 ["createElement"]
      665 GETUPVAL                         R27 5
      666 DUPTABLE                         R28 K149 [{["AutomaticSize"], ["Position"], ["AnchorPoint"], ["Layout"], ["Spacing"] = 8, ["VerticalAlignment"], ["ZIndex"] = 1, ["Style"] = "RoundBox", ["ImageTransparency"] = 1}]
      667 GETIMPORT                        R29 K151 [Enum.AutomaticSize.XY]
      669 SETTABLEKS                       R29 R28 K147 ["AutomaticSize"]
      671 GETIMPORT                        R29 K41 [UDim2.new]
      673 LOADK                            R30 K42 [0.5]
      674 LOADN                            R31 0
      675 LOADN                            R32 1
      676 LOADN                            R33 -50
      677 CALL                             R29 4 1
      678 SETTABLEKS                       R29 R28 K35 ["Position"]
      680 GETIMPORT                        R29 K44 [Vector2.new]
      682 LOADK                            R30 K42 [0.5]
      683 LOADN                            R31 1
      684 CALL                             R29 2 1
      685 SETTABLEKS                       R29 R28 K36 ["AnchorPoint"]
      687 GETIMPORT                        R29 K153 [Enum.FillDirection.Vertical]
      689 SETTABLEKS                       R29 R28 K52 ["Layout"]
      691 GETIMPORT                        R29 K74 [Enum.VerticalAlignment.Center]
      693 SETTABLEKS                       R29 R28 K55 ["VerticalAlignment"]
      695 DUPTABLE                         R29 K158 [{"NoCameraWarningOverlay", "CameraPermissionDeniedWarningOverlay", "DetectingCameraOverlay", "PreviousFacsWillBeOverwrittenInfoOverlay"}]
      696 MOVE                             R30 R11
      697 JUMPIFNOT                        R30 ; [+15]
      698 GETUPVAL                         R30 3
      699 GETTABLEKS                       R30 R30 K26 ["createElement"]
      701 GETUPVAL                         R31 12
      702 DUPTABLE                         R32 K160 [{["TitleText"], ["Image"], ["LayoutOrder"] = 1}]
      703 LOADK                            R35 K103 ["FaceCapture"]
      704 LOADK                            R36 K161 ["NoCameraWarningText"]
      705 NAMECALL                         R33 R3 K105 ["getText"]
      707 CALL                             R33 3 1
      708 SETTABLEKS                       R33 R32 K159 ["TitleText"]
      710 SETTABLEKS                       R14 R32 K60 ["Image"]
      712 CALL                             R30 2 1
      713 SETTABLEKS                       R30 R29 K154 ["NoCameraWarningOverlay"]
      715 MOVE                             R30 R9
      716 JUMPIFNOT                        R30 ; [+15]
      717 GETUPVAL                         R30 3
      718 GETTABLEKS                       R30 R30 K26 ["createElement"]
      720 GETUPVAL                         R31 12
      721 DUPTABLE                         R32 K162 [{["TitleText"], ["Image"], ["LayoutOrder"] = 2}]
      722 LOADK                            R35 K103 ["FaceCapture"]
      723 LOADK                            R36 K163 ["CameraPermissionDeniedWarningText"]
      724 NAMECALL                         R33 R3 K105 ["getText"]
      726 CALL                             R33 3 1
      727 SETTABLEKS                       R33 R32 K159 ["TitleText"]
      729 SETTABLEKS                       R14 R32 K60 ["Image"]
      731 CALL                             R30 2 1
      732 SETTABLEKS                       R30 R29 K155 ["CameraPermissionDeniedWarningOverlay"]
      734 NOT                              R30 R5
      735 JUMPIFNOT                        R30 ; [+21]
      736 NOT                              R30 R6
      737 JUMPIFNOT                        R30 ; [+19]
      738 NOT                              R30 R4
      739 JUMPIFNOT                        R30 ; [+17]
      740 NOT                              R30 R11
      741 JUMPIFNOT                        R30 ; [+15]
      742 NOT                              R30 R9
      743 JUMPIFNOT                        R30 ; [+13]
      744 GETUPVAL                         R30 3
      745 GETTABLEKS                       R30 R30 K26 ["createElement"]
      747 GETUPVAL                         R31 12
      748 DUPTABLE                         R32 K164 [{["TitleText"], ["Image"] = "", ["LayoutOrder"] = 3}]
      749 LOADK                            R35 K103 ["FaceCapture"]
      750 LOADK                            R36 K165 ["DetectingCameraTitle"]
      751 NAMECALL                         R33 R3 K105 ["getText"]
      753 CALL                             R33 3 1
      754 SETTABLEKS                       R33 R32 K159 ["TitleText"]
      756 CALL                             R30 2 1
      757 SETTABLEKS                       R30 R29 K156 ["DetectingCameraOverlay"]
      759 MOVE                             R30 R5
      760 JUMPIFNOT                        R30 ; [+19]
      761 MOVE                             R30 R6
      762 JUMPIFNOT                        R30 ; [+17]
      763 NOT                              R30 R4
      764 JUMPIFNOT                        R30 ; [+15]
      765 MOVE                             R30 R18
      766 JUMPIFNOT                        R30 ; [+13]
      767 GETUPVAL                         R30 3
      768 GETTABLEKS                       R30 R30 K26 ["createElement"]
      770 GETUPVAL                         R31 12
      771 DUPTABLE                         R32 K166 [{["TitleText"], ["Image"] = "", ["LayoutOrder"] = 4}]
      772 LOADK                            R35 K103 ["FaceCapture"]
      773 LOADK                            R36 K167 ["OverwritingPreviousFacsTracksBody"]
      774 NAMECALL                         R33 R3 K105 ["getText"]
      776 CALL                             R33 3 1
      777 SETTABLEKS                       R33 R32 K159 ["TitleText"]
      779 CALL                             R30 2 1
      780 SETTABLEKS                       R30 R29 K157 ["PreviousFacsWillBeOverwrittenInfoOverlay"]
      782 CALL                             R26 3 1
      783 SETTABLEKS                       R26 R25 K32 ["WarningsPane"]
      785 CALL                             R22 3 1
      786 SETTABLEKS                       R22 R21 K23 ["RecordingPanelPortal"]
      788 MOVE                             R22 R10
      789 JUMPIFNOT                        R22 ; [+10]
      790 GETUPVAL                         R22 3
      791 GETTABLEKS                       R22 R22 K26 ["createElement"]
      793 GETUPVAL                         R23 13
      794 DUPTABLE                         R24 K169 [{"OnClose"}]
      795 GETTABLEKS                       R25 R0 K170 ["hideCameraSelectionDialog"]
      797 SETTABLEKS                       R25 R24 K168 ["OnClose"]
      799 CALL                             R22 2 1
      800 SETTABLEKS                       R22 R21 K24 ["CameraSelectionDialog"]
      802 CALL                             R19 2 -1
      803 RETURN                           R19 -1

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatSignal"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatSignal"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["track"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETTABLEKS                       R1 R0 K2 ["track"]
       13 LOADN                            R3 0
       14 NAMECALL                         R1 R1 K3 ["Stop"]
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R1 R0 K4 ["Animator"]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETTABLEKS                       R1 R0 K4 ["Animator"]
       22 LOADN                            R3 0
       23 NAMECALL                         R1 R1 K5 ["StepAnimations"]
       25 CALL                             R1 2 0
       26 GETTABLEKS                       R1 R0 K6 ["graph"]
       28 JUMPIFNOT                        R1 ; [+6]
       29 GETTABLEKS                       R1 R0 K6 ["graph"]
       31 LOADB                            R3 0
       32 NAMECALL                         R1 R1 K7 ["setCameraEnabled"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_26:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R0 K0 ["resetLooping"]
        4 CALL                             R1 0 0
        5 GETTABLEKS                       R1 R0 K1 ["props"]
        7 GETTABLEKS                       R1 R1 K2 ["SetInReviewState"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 NAMECALL                         R1 R0 K3 ["disconnect"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K4 ["graph"]
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETTABLEKS                       R1 R0 K4 ["graph"]
       19 NAMECALL                         R1 R1 K5 ["teardown"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R2 K6 [{"AnimationData", "PlayState", "RootInstance", "Status", "inReviewState", "haveToSetBackToNotLooping"}]
        1 GETTABLEKS                       R3 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R3 R2 K0 ["AnimationData"]
        5 GETTABLEKS                       R3 R0 K3 ["Status"]
        7 GETTABLEKS                       R3 R3 K1 ["PlayState"]
        9 SETTABLEKS                       R3 R2 K1 ["PlayState"]
       11 GETTABLEKS                       R3 R0 K3 ["Status"]
       13 GETTABLEKS                       R3 R3 K2 ["RootInstance"]
       15 SETTABLEKS                       R3 R2 K2 ["RootInstance"]
       17 GETTABLEKS                       R3 R0 K3 ["Status"]
       19 SETTABLEKS                       R3 R2 K3 ["Status"]
       21 GETTABLEKS                       R3 R0 K3 ["Status"]
       23 GETTABLEKS                       R3 R3 K4 ["inReviewState"]
       25 SETTABLEKS                       R3 R2 K4 ["inReviewState"]
       27 GETTABLEKS                       R3 R0 K3 ["Status"]
       29 GETTABLEKS                       R3 R3 K5 ["haveToSetBackToNotLooping"]
       31 SETTABLEKS                       R3 R2 K5 ["haveToSetBackToNotLooping"]
       33 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R3 1 -1
        4 CALL                             R2 -1 0
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 LOADN                            R4 0
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R1 K7 [{"LoadRecorderFrames", "SetFacialRecordingMode", "SetInReviewState", "SetPlayState", "StepAnimation", "SetHaveToSetBackToNotLooping", "SetAnimationData"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["LoadRecorderFrames"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetFacialRecordingMode"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetInReviewState"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetPlayState"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["StepAnimation"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SetHaveToSetBackToNotLooping"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R2 R1 K6 ["SetAnimationData"]
       37 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Focus"]
       34 GETIMPORT                        R7 K14 [game]
       36 LOADK                            R9 K15 ["CoreGui"]
       37 NAMECALL                         R7 R7 K16 ["GetService"]
       39 CALL                             R7 2 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R0 K17 ["Src"]
       44 GETTABLEKS                       R9 R9 K18 ["Util"]
       46 GETTABLEKS                       R9 R9 K19 ["RigUtils"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R10 R0 K17 ["Src"]
       53 GETTABLEKS                       R10 R10 K18 ["Util"]
       55 GETTABLEKS                       R10 R10 K20 ["RigInfo"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K17 ["Src"]
       62 GETTABLEKS                       R11 R11 K18 ["Util"]
       64 GETTABLEKS                       R11 R11 K21 ["Constants"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R12 R0 K17 ["Src"]
       71 GETTABLEKS                       R12 R12 K22 ["Thunks"]
       73 GETTABLEKS                       R12 R12 K23 ["Recording"]
       75 GETTABLEKS                       R12 R12 K24 ["LoadRecorderFrames"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K17 ["Src"]
       82 GETTABLEKS                       R13 R13 K22 ["Thunks"]
       84 GETTABLEKS                       R13 R13 K23 ["Recording"]
       86 GETTABLEKS                       R13 R13 K25 ["SetFacialRecordingMode"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K17 ["Src"]
       93 GETTABLEKS                       R14 R14 K26 ["Actions"]
       95 GETTABLEKS                       R14 R14 K27 ["SetHaveToSetBackToNotLooping"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K17 ["Src"]
      102 GETTABLEKS                       R15 R15 K26 ["Actions"]
      104 GETTABLEKS                       R15 R15 K28 ["SetAnimationData"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K17 ["Src"]
      111 GETTABLEKS                       R16 R16 K29 ["Components"]
      113 GETTABLEKS                       R16 R16 K30 ["FacialAnimationRecorder"]
      115 GETTABLEKS                       R16 R16 K31 ["CameraSelectionDialog"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R17 R0 K17 ["Src"]
      122 GETTABLEKS                       R17 R17 K29 ["Components"]
      124 GETTABLEKS                       R17 R17 K30 ["FacialAnimationRecorder"]
      126 GETTABLEKS                       R17 R17 K32 ["ShowStyledDialog"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R18 R0 K17 ["Src"]
      133 GETTABLEKS                       R18 R18 K29 ["Components"]
      135 GETTABLEKS                       R18 R18 K30 ["FacialAnimationRecorder"]
      137 GETTABLEKS                       R18 R18 K33 ["WarningDialog"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R19 R0 K17 ["Src"]
      144 GETTABLEKS                       R19 R19 K29 ["Components"]
      146 GETTABLEKS                       R19 R19 K30 ["FacialAnimationRecorder"]
      148 GETTABLEKS                       R19 R19 K34 ["WarningOverlay"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R20 R0 K17 ["Src"]
      155 GETTABLEKS                       R20 R20 K18 ["Util"]
      157 GETTABLEKS                       R20 R20 K35 ["AnimationData"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R21 R0 K17 ["Src"]
      164 GETTABLEKS                       R21 R21 K18 ["Util"]
      166 GETTABLEKS                       R21 R21 K36 ["RTAnimationUtil"]
      168 CALL                             R20 1 1
      169 GETIMPORT                        R21 K14 [game]
      171 LOADK                            R23 K37 ["RunService"]
      172 NAMECALL                         R21 R21 K16 ["GetService"]
      174 CALL                             R21 2 1
      175 GETIMPORT                        R22 K14 [game]
      177 LOADK                            R24 K38 ["VideoCaptureService"]
      178 NAMECALL                         R22 R22 K16 ["GetService"]
      180 CALL                             R22 2 1
      181 GETIMPORT                        R23 K14 [game]
      183 LOADK                            R25 K39 ["FaceAnimatorService"]
      184 NAMECALL                         R23 R23 K16 ["GetService"]
      186 CALL                             R23 2 1
      187 GETTABLEKS                       R24 R1 K40 ["PureComponent"]
      189 LOADK                            R26 K30 ["FacialAnimationRecorder"]
      190 NAMECALL                         R24 R24 K41 ["extend"]
      192 CALL                             R24 2 1
      193 GETIMPORT                        R25 K14 [game]
      195 LOADK                            R27 K42 ["FacialAnimationRecorderMaxRecordingTimeInSeconds"]
      196 LOADN                            R28 60
      197 NAMECALL                         R25 R25 K43 ["DefineFastInt"]
      199 CALL                             R25 3 1
      200 GETIMPORT                        R26 K14 [game]
      202 LOADK                            R28 K44 ["ACEFaceRecorderBiometricsLink"]
      203 LOADK                            R29 K45 ["https://en.help.roblox.com/hc/articles/8064749848980"]
      204 NAMECALL                         R26 R26 K46 ["DefineFastString"]
      206 CALL                             R26 3 1
      207 GETTABLEKS                       R27 R3 K18 ["Util"]
      209 GETTABLEKS                       R27 R27 K47 ["StyleModifier"]
      211 GETTABLEKS                       R28 R3 K48 ["UI"]
      213 GETTABLEKS                       R29 R28 K49 ["Pane"]
      215 GETTABLEKS                       R30 R3 K48 ["UI"]
      217 GETTABLEKS                       R30 R30 K50 ["Button"]
      219 GETTABLEKS                       R31 R28 K51 ["Container"]
      221 GETTABLEKS                       R32 R28 K52 ["Tooltip"]
      223 GETTABLEKS                       R33 R28 K53 ["HoverArea"]
      225 GETTABLEKS                       R34 R28 K54 ["LoadingIndicator"]
      227 GETIMPORT                        R35 K5 [require]
      229 GETIMPORT                        R36 K1 [script]
      231 GETTABLEKS                       R36 R36 K55 ["Parent"]
      233 GETTABLEKS                       R36 R36 K56 ["FlashingDot"]
      235 CALL                             R35 1 1
      236 GETIMPORT                        R36 K5 [require]
      238 GETTABLEKS                       R37 R0 K17 ["Src"]
      240 GETTABLEKS                       R37 R37 K26 ["Actions"]
      242 GETTABLEKS                       R37 R37 K57 ["SetPlayState"]
      244 CALL                             R36 1 1
      245 GETIMPORT                        R37 K5 [require]
      247 GETTABLEKS                       R38 R0 K17 ["Src"]
      249 GETTABLEKS                       R38 R38 K26 ["Actions"]
      251 GETTABLEKS                       R38 R38 K58 ["SetInReviewState"]
      253 CALL                             R37 1 1
      254 GETIMPORT                        R38 K5 [require]
      256 GETTABLEKS                       R39 R0 K17 ["Src"]
      258 GETTABLEKS                       R39 R39 K22 ["Thunks"]
      260 GETTABLEKS                       R39 R39 K59 ["Playback"]
      262 GETTABLEKS                       R39 R39 K60 ["StepAnimation"]
      264 CALL                             R38 1 1
      265 GETIMPORT                        R39 K14 [game]
      267 LOADK                            R41 K61 ["Selection"]
      268 NAMECALL                         R39 R39 K16 ["GetService"]
      270 CALL                             R39 2 1
      271 GETIMPORT                        R40 K14 [game]
      273 LOADK                            R42 K62 ["RealTimeAnimationEnableRefactor"]
      274 NAMECALL                         R40 R40 K63 ["GetFastFlag"]
      276 CALL                             R40 2 1
      277 LOADB                            R41 0
      278 LOADB                            R42 0
      279 NEWCLOSURE                       R43 P0
      280 CAPTURE                          VAL R7
      281 CAPTURE                          VAL R6
      282 CAPTURE                          VAL R19
      283 CAPTURE                          REF R41
      284 CAPTURE                          VAL R10
      285 CAPTURE                          VAL R39
      286 CAPTURE                          REF R42
      287 CAPTURE                          VAL R16
      288 CAPTURE                          VAL R17
      289 CAPTURE                          VAL R26
      290 CAPTURE                          VAL R22
      291 SETTABLEKS                       R43 R24 K64 ["init"]
      293 DUPCLOSURE                       R43 K65 [PROTO_18]
      294 CAPTURE                          VAL R9
      295 SETTABLEKS                       R43 R24 K66 ["updateAvatarData"]
      297 DUPCLOSURE                       R43 K67 [PROTO_20]
      298 CAPTURE                          VAL R40
      299 CAPTURE                          VAL R20
      300 CAPTURE                          VAL R7
      301 CAPTURE                          VAL R23
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R21
      304 CAPTURE                          VAL R25
      305 CAPTURE                          VAL R10
      306 SETTABLEKS                       R43 R24 K68 ["InitializeRecordingMode"]
      308 NEWCLOSURE                       R43 P3
      309 CAPTURE                          REF R42
      310 CAPTURE                          REF R41
      311 SETTABLEKS                       R43 R24 K69 ["StartupInitialize"]
      313 DUPCLOSURE                       R43 K70 [PROTO_22]
      314 SETTABLEKS                       R43 R24 K71 ["didMount"]
      316 NEWCLOSURE                       R43 P5
      317 CAPTURE                          REF R42
      318 CAPTURE                          REF R41
      319 CAPTURE                          VAL R4
      320 CAPTURE                          VAL R1
      321 CAPTURE                          VAL R31
      322 CAPTURE                          VAL R29
      323 CAPTURE                          VAL R30
      324 CAPTURE                          VAL R27
      325 CAPTURE                          VAL R32
      326 CAPTURE                          VAL R33
      327 CAPTURE                          VAL R35
      328 CAPTURE                          VAL R34
      329 CAPTURE                          VAL R18
      330 CAPTURE                          VAL R15
      331 SETTABLEKS                       R43 R24 K72 ["render"]
      333 DUPCLOSURE                       R43 K73 [PROTO_25]
      334 SETTABLEKS                       R43 R24 K74 ["disconnect"]
      336 NEWCLOSURE                       R43 P7
      337 CAPTURE                          REF R42
      338 SETTABLEKS                       R43 R24 K75 ["willUnmount"]
      340 MOVE                             R43 R5
      341 DUPTABLE                         R44 K81 [{"Stylizer", "Analytics", "Localization", "Mouse", "Plugin"}]
      342 GETTABLEKS                       R45 R4 K76 ["Stylizer"]
      344 SETTABLEKS                       R45 R44 K76 ["Stylizer"]
      346 GETTABLEKS                       R45 R4 K77 ["Analytics"]
      348 SETTABLEKS                       R45 R44 K77 ["Analytics"]
      350 GETTABLEKS                       R45 R4 K78 ["Localization"]
      352 SETTABLEKS                       R45 R44 K78 ["Localization"]
      354 GETTABLEKS                       R45 R4 K79 ["Mouse"]
      356 SETTABLEKS                       R45 R44 K79 ["Mouse"]
      358 GETTABLEKS                       R45 R4 K80 ["Plugin"]
      360 SETTABLEKS                       R45 R44 K80 ["Plugin"]
      362 CALL                             R43 1 1
      363 MOVE                             R44 R24
      364 CALL                             R43 1 1
      365 MOVE                             R24 R43
      366 DUPCLOSURE                       R43 K82 [PROTO_27]
      367 DUPCLOSURE                       R44 K83 [PROTO_35]
      368 CAPTURE                          VAL R11
      369 CAPTURE                          VAL R12
      370 CAPTURE                          VAL R37
      371 CAPTURE                          VAL R36
      372 CAPTURE                          VAL R38
      373 CAPTURE                          VAL R13
      374 CAPTURE                          VAL R14
      375 GETTABLEKS                       R45 R2 K84 ["connect"]
      377 MOVE                             R46 R43
      378 MOVE                             R47 R44
      379 CALL                             R45 2 1
      380 MOVE                             R46 R24
      381 CALL                             R45 1 -1
      382 CLOSEUPVALS                      R41
      383 RETURN                           R45 -1
