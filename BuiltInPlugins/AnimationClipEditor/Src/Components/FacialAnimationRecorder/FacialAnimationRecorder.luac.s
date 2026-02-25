PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["timeAtStartOfRecording"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K4 ["props"]
        9 GETTABLEKS                       R0 R1 K5 ["Analytics"]
       11 LOADK                            R3 K6 ["onFacialAnimationRecordingStartRecording"]
       12 NAMECALL                         R1 R0 K7 ["report"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 DUPTABLE                         R3 K9 [{"isRecording"}]
       17 LOADB                            R4 1
       18 SETTABLEKS                       R4 R3 K8 ["isRecording"]
       20 NAMECALL                         R1 R1 K10 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["haveToSetBackToNotLooping"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K1 ["haveToSetBackToNotLooping"]
       10 GETTABLEKS                       R1 R0 K2 ["AnimationData"]
       12 JUMPIFNOT                        R1 ; [+16]
       13 GETTABLEKS                       R3 R1 K3 ["Metadata"]
       15 GETTABLEKS                       R2 R3 K4 ["Looping"]
       17 JUMPIFNOT                        R2 ; [+11]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["setLooping"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["SetInReviewState"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["timeAtEndOfRecording"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K4 ["props"]
        9 GETTABLEKS                       R1 R0 K5 ["Analytics"]
       11 LOADK                            R4 K6 ["onFacialAnimationRecordingEndRecording"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K7 ["timeAtStartOfRecording"]
       15 JUMPIFNOT                        R6 ; [+8]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K3 ["timeAtEndOfRecording"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K7 ["timeAtStartOfRecording"]
       22 SUB                              R5 R6 R7
       23 JUMPIF                           R5 ; [+1]
       24 LOADN                            R5 0
       25 NAMECALL                         R2 R1 K8 ["report"]
       27 CALL                             R2 3 0
       28 GETTABLEKS                       R2 R0 K9 ["SetInReviewState"]
       30 LOADB                            R3 1
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 0
       33 DUPTABLE                         R4 K11 [{"isRecording"}]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K10 ["isRecording"]
       37 NAMECALL                         R2 R2 K12 ["setState"]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R2 R3 K13 ["hasFacsData"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K4 ["props"]
       46 GETTABLEKS                       R3 R4 K14 ["AnimationData"]
       48 CALL                             R2 1 1
       49 SETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R0 K15 ["LoadRecorderFrames"]
       52 MOVE                             R3 R0
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K16 ["RecordedFrames"]
       56 GETTABLEKS                       R5 R0 K5 ["Analytics"]
       58 CALL                             R2 3 0
       59 GETTABLEKS                       R2 R0 K17 ["SetFacialRecordingMode"]
       61 LOADB                            R3 0
       62 CALL                             R2 1 0
       63 GETUPVAL                         R2 0
       64 NAMECALL                         R2 R2 K18 ["disconnect"]
       66 CALL                             R2 1 0
       67 GETTABLEKS                       R2 R0 K19 ["StepAnimation"]
       69 LOADN                            R3 0
       70 CALL                             R2 1 0
       71 GETTABLEKS                       R2 R0 K20 ["SetPlayState"]
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R4 R5 K21 ["PLAY_STATE"]
       76 GETTABLEKS                       R3 R4 K22 ["Play"]
       78 CALL                             R2 1 0
       79 LOADNIL                          R2
       80 GETUPVAL                         R4 4
       81 GETTABLEKS                       R3 R4 K23 ["SelectionChanged"]
       83 NEWCLOSURE                       R5 P0
       84 CAPTURE                          REF R2
       85 CAPTURE                          VAL R0
       86 NAMECALL                         R3 R3 K24 ["Connect"]
       88 CALL                             R3 2 1
       89 MOVE                             R2 R3
       90 CLOSEUPVALS                      R2
       91 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"shouldShowCameraSelectionDialog"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["shouldShowCameraSelectionDialog"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"shouldShowCameraSelectionDialog"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["shouldShowCameraSelectionDialog"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADK                            R1 K2 [0.1]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K3 ["props"]
        7 GETTABLEKS                       R0 R1 K4 ["RootInstance"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["props"]
       13 GETTABLEKS                       R0 R1 K5 ["StepAnimation"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetInReviewState"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K2 ["SetFacialRecordingMode"]
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K3 ["movePlayheadToBeginning"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["isRecording"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["endRecording"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K3 ["startRecording"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Analytics"]
        5 LOADK                            R4 K2 ["onFacialAnimationRecordingReRecordPressed"]
        6 NAMECALL                         R2 R1 K3 ["report"]
        8 CALL                             R2 2 0
        9 LOADB                            R2 1
       10 SETUPVAL                         R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["resetLooping"]
       14 CALL                             R2 0 0
       15 GETTABLEKS                       R2 R0 K5 ["SetPlayState"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K6 ["PLAY_STATE"]
       20 GETTABLEKS                       R3 R4 K7 ["Pause"]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K8 ["movePlayheadToBeginning"]
       26 CALL                             R2 0 0
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K0 ["props"]
       30 GETTABLEKS                       R2 R3 K9 ["SetInReviewState"]
       32 LOADB                            R3 0
       33 CALL                             R2 1 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K0 ["props"]
       37 GETTABLEKS                       R2 R3 K10 ["SetFacialRecordingMode"]
       39 LOADB                            R3 1
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 0
       42 NAMECALL                         R2 R2 K11 ["InitializeRecordingMode"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETUPVAL                         R2 0
        6 DUPTABLE                         R4 K3 [{"isAgeRestricted"}]
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K2 ["isAgeRestricted"]
       10 NAMECALL                         R2 R2 K4 ["setState"]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R3 R0 K5 ["Plugin"]
       16 GETTABLEKS                       R4 R0 K1 ["Localization"]
       18 GETTABLEKS                       R5 R0 K6 ["Stylizer"]
       20 GETTABLEKS                       R6 R0 K7 ["Mouse"]
       22 GETUPVAL                         R7 2
       23 DUPTABLE                         R8 K14 [{"Title", "TitleText", "BodyText", "Buttons", "OnButtonPressed", "OnClose"}]
       24 LOADK                            R11 K15 ["FaceCapture"]
       25 LOADK                            R12 K16 ["WarningTitle"]
       26 NAMECALL                         R9 R1 K17 ["getText"]
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K8 ["Title"]
       31 LOADK                            R11 K15 ["FaceCapture"]
       32 LOADK                            R12 K18 ["AgeRestrictedTitle"]
       33 NAMECALL                         R9 R1 K17 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K9 ["TitleText"]
       38 LOADK                            R11 K15 ["FaceCapture"]
       39 LOADK                            R12 K19 ["AgeRestrictedBody"]
       40 NAMECALL                         R9 R1 K17 ["getText"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K10 ["BodyText"]
       45 NEWTABLE                         R9 0 1
       47 DUPTABLE                         R10 K23 [{"Key", "Text", "Style"}]
       48 LOADK                            R11 K24 ["Ok"]
       49 SETTABLEKS                       R11 R10 K20 ["Key"]
       51 GETTABLEKS                       R11 R0 K1 ["Localization"]
       53 LOADK                            R13 K15 ["FaceCapture"]
       54 LOADK                            R14 K25 ["WarningDialogOk"]
       55 NAMECALL                         R11 R11 K17 ["getText"]
       57 CALL                             R11 3 1
       58 SETTABLEKS                       R11 R10 K21 ["Text"]
       60 LOADK                            R11 K26 ["RoundPrimary"]
       61 SETTABLEKS                       R11 R10 K22 ["Style"]
       63 SETLIST                          R9 R10 1 [1]
       65 SETTABLEKS                       R9 R8 K11 ["Buttons"]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K27 ["dismissSelf"]
       70 SETTABLEKS                       R9 R8 K12 ["OnButtonPressed"]
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R9 R10 K27 ["dismissSelf"]
       75 SETTABLEKS                       R9 R8 K13 ["OnClose"]
       77 CALL                             R2 6 0
       78 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOTEQKS                    R0 K0 ["Agree"] ; [+10]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K1 ["BiometricDataConsent"]
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K2 ["StartupInitialize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K3 ["dismissSelf"]
       14 CALL                             R1 0 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
       45 DUPTABLE                         R11 K26 [{"Key", "Text", "Style"}]
       46 LOADK                            R12 K27 ["Disagree"]
       47 SETTABLEKS                       R12 R11 K23 ["Key"]
       49 LOADK                            R14 K18 ["FaceCapture"]
       50 LOADK                            R15 K28 ["BioDataCollectionDisagree"]
       51 NAMECALL                         R12 R1 K20 ["getText"]
       53 CALL                             R12 3 1
       54 SETTABLEKS                       R12 R11 K24 ["Text"]
       56 LOADK                            R12 K29 ["Round"]
       57 SETTABLEKS                       R12 R11 K25 ["Style"]
       59 DUPTABLE                         R12 K26 [{"Key", "Text", "Style"}]
       60 LOADK                            R13 K30 ["Agree"]
       61 SETTABLEKS                       R13 R12 K23 ["Key"]
       63 LOADK                            R15 K18 ["FaceCapture"]
       64 LOADK                            R16 K31 ["BioDataCollectionAgree"]
       65 NAMECALL                         R13 R1 K20 ["getText"]
       67 CALL                             R13 3 1
       68 SETTABLEKS                       R13 R12 K24 ["Text"]
       70 LOADK                            R13 K29 ["Round"]
       71 SETTABLEKS                       R13 R12 K25 ["Style"]
       73 SETLIST                          R10 R11 2 [1]
       75 SETTABLEKS                       R10 R9 K12 ["Buttons"]
       77 NEWCLOSURE                       R10 P0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U0
       80 SETTABLEKS                       R10 R9 K13 ["OnButtonPressed"]
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R10 R11 K32 ["dismissSelf"]
       85 SETTABLEKS                       R10 R9 K14 ["OnClose"]
       87 GETUPVAL                         R10 3
       88 SETTABLEKS                       R10 R9 K15 ["learnMoreUrl"]
       90 LOADK                            R12 K18 ["FaceCapture"]
       91 LOADK                            R13 K33 ["LearnMoreLabel"]
       92 NAMECALL                         R10 R1 K20 ["getText"]
       94 CALL                             R10 3 1
       95 SETTABLEKS                       R10 R9 K16 ["learnMoreLabel"]
       97 CALL                             R3 6 0
       98 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["numberOfCameras"]
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
        6 DUPTABLE                         R1 K6 [{"AUTHORIZED", "DENIED"}]
        7 LOADK                            R2 K4 ["AUTHORIZED"]
        8 SETTABLEKS                       R2 R1 K4 ["AUTHORIZED"]
       10 LOADK                            R2 K5 ["DENIED"]
       11 SETTABLEKS                       R2 R1 K5 ["DENIED"]
       13 GETIMPORT                        R2 K8 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R2 1 2
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R5 R1 K5 ["DENIED"]
       22 JUMPIFEQ                         R3 R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 GETUPVAL                         R5 0
       27 DUPTABLE                         R7 K10 [{"deniedCameraPermission"}]
       28 SETTABLEKS                       R4 R7 K9 ["deniedCameraPermission"]
       30 NAMECALL                         R5 R5 K11 ["setState"]
       32 CALL                             R5 2 0
       33 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RobloxGui"]
        3 SETTABLEKS                       R1 R0 K1 ["presentationGui"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["new"]
        8 GETTABLEKS                       R2 R0 K1 ["presentationGui"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K3 ["focus"]
       13 DUPTABLE                         R3 K9 [{"remainingSeconds", "shouldShowCameraSelectionDialog", "isAgeRestricted", "shouldShowNoCamerasWarning", "deniedCameraPermission"}]
       14 LOADN                            R4 0
       15 SETTABLEKS                       R4 R3 K4 ["remainingSeconds"]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K5 ["shouldShowCameraSelectionDialog"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K6 ["isAgeRestricted"]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K7 ["shouldShowNoCamerasWarning"]
       26 LOADB                            R4 0
       27 SETTABLEKS                       R4 R3 K8 ["deniedCameraPermission"]
       29 NAMECALL                         R1 R0 K10 ["setState"]
       31 CALL                             R1 2 0
       32 NEWCLOSURE                       R1 P0
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K11 ["startRecording"]
       36 NEWCLOSURE                       R1 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R1 R0 K12 ["resetLooping"]
       41 NEWCLOSURE                       R1 P2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R1 R0 K13 ["endRecording"]
       49 NEWCLOSURE                       R1 P3
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R1 R0 K14 ["showCameraSelectionDialog"]
       53 NEWCLOSURE                       R1 P4
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R1 R0 K15 ["hideCameraSelectionDialog"]
       57 NEWCLOSURE                       R1 P5
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R1 R0 K16 ["movePlayheadToBeginning"]
       61 NEWCLOSURE                       R1 P6
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R1 R0 K17 ["dismissSelf"]
       65 NEWCLOSURE                       R1 P7
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R1 R0 K18 ["toggleRecording"]
       69 NEWCLOSURE                       R1 P8
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U4
       73 SETTABLEKS                       R1 R0 K19 ["triggerReRecording"]
       75 NEWCLOSURE                       R1 P9
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          UPVAL U8
       79 SETTABLEKS                       R1 R0 K20 ["showAgeRestrictionError"]
       81 NEWCLOSURE                       R1 P10
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U8
       85 CAPTURE                          UPVAL U9
       86 SETTABLEKS                       R1 R0 K21 ["showBiometricDataCollectionDialog"]
       88 DUPCLOSURE                       R1 K22 [PROTO_13]
       89 CAPTURE                          UPVAL U10
       90 SETTABLEKS                       R1 R0 K23 ["numberOfCameras"]
       92 NEWCLOSURE                       R1 P12
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R1 R0 K24 ["checkAndShowCameraWarning"]
       96 NEWCLOSURE                       R1 P13
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R1 R0 K25 ["checkOrRequestCameraPermission"]
      100 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["RootInstance"]
        4 GETTABLEKS                       R3 R0 K2 ["Animator"]
        6 JUMPIF                           R3 ; [+11]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["getAnimationController"]
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
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["state"]
        9 GETTABLEKS                       R1 R2 K3 ["isRecording"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["HeartbeatCount"]
       14 FASTCALL2K                       MATH_FMOD R3 K4 ; [+4]
       16 LOADK                            R4 K4 [30]
       17 GETIMPORT                        R2 K7 [math.fmod]
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKN                    R2 K8 [0] ; [+5]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K9 ["checkAndShowCameraWarning"]
       25 CALL                             R2 0 0
       26 GETUPVAL                         R2 0
       27 NAMECALL                         R2 R2 K10 ["updateAvatarData"]
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 1
       31 JUMPIFNOT                        R2 ; [+11]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K11 ["faceTracker"]
       35 JUMPIFNOT                        R2 ; [+11]
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K11 ["faceTracker"]
       39 NAMECALL                         R2 R2 K12 ["Step"]
       41 CALL                             R2 1 0
       42 JUMP                             ; [+4]
       43 GETUPVAL                         R2 2
       44 NAMECALL                         R2 R2 K12 ["Step"]
       46 CALL                             R2 1 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R2 R3 K13 ["Animator"]
       50 MOVE                             R4 R0
       51 NAMECALL                         R2 R2 K14 ["StepAnimations"]
       53 CALL                             R2 2 0
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R2 R3 K15 ["track"]
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
       74 GETUPVAL                         R8 0
       75 GETTABLEKS                       R7 R8 K20 ["RecordInfo"]
       77 GETTABLEKS                       R6 R7 K21 ["startTime"]
       79 JUMPIF                           R6 ; [+5]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R6 R7 K20 ["RecordInfo"]
       83 SETTABLEKS                       R4 R6 K21 ["startTime"]
       85 GETUPVAL                         R6 3
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R9 R10 K20 ["RecordInfo"]
       89 GETTABLEKS                       R8 R9 K21 ["startTime"]
       91 SUB                              R7 R4 R8
       92 SUB                              R8 R6 R7
       93 LOADN                            R9 0
       94 JUMPIFNOTLT                      R8 R9 ; [+5]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R9 R10 K22 ["endRecording"]
       99 CALL                             R9 0 0
      100 GETUPVAL                         R13 4
      101 GETTABLEKS                       R12 R13 K24 ["TICK_FREQUENCY"]
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
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R11 R12 K30 ["RecordedFrames"]
      124 SETTABLE                         R10 R11 R9
      125 FASTCALL1                        MATH_FLOOR R8 ; [+3]
      126 MOVE                             R12 R8
      127 GETIMPORT                        R11 K26 [math.floor]
      129 CALL                             R11 1 1
      130 GETUPVAL                         R14 0
      131 GETTABLEKS                       R13 R14 K2 ["state"]
      133 GETTABLEKS                       R12 R13 K31 ["remainingSeconds"]
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
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K2 ["new"]
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
       79 GETTABLEKS                       R3 R0 K26 ["props"]
       81 GETTABLEKS                       R2 R3 K27 ["Status"]
       83 GETTABLEKS                       R1 R2 K28 ["RootInstance"]
       85 GETUPVAL                         R3 4
       86 GETTABLEKS                       R2 R3 K29 ["clearPose"]
       88 MOVE                             R3 R1
       89 CALL                             R2 1 0
       90 GETUPVAL                         R3 4
       91 GETTABLEKS                       R2 R3 K30 ["focusCameraOnFace"]
       93 GETTABLEKS                       R4 R0 K26 ["props"]
       95 GETTABLEKS                       R3 R4 K28 ["RootInstance"]
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
      205 GETUPVAL                         R3 5
      206 GETTABLEKS                       R2 R3 K51 ["Heartbeat"]
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
       10 GETTABLEKS                       R3 R0 K4 ["props"]
       12 GETTABLEKS                       R2 R3 K5 ["SetInReviewState"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dismissSelf"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Localization"]
        8 GETTABLEKS                       R5 R0 K3 ["state"]
       10 GETTABLEKS                       R4 R5 K4 ["isRecording"]
       12 GETTABLEKS                       R5 R1 K5 ["inReviewState"]
       14 GETTABLEKS                       R7 R0 K3 ["state"]
       16 GETTABLEKS                       R6 R7 K6 ["isCameraReady"]
       18 GETTABLEKS                       R8 R0 K3 ["state"]
       20 GETTABLEKS                       R7 R8 K7 ["isAgeRestricted"]
       22 GETTABLEKS                       R9 R0 K3 ["state"]
       24 GETTABLEKS                       R8 R9 K8 ["remainingSeconds"]
       26 GETTABLEKS                       R10 R0 K3 ["state"]
       28 GETTABLEKS                       R9 R10 K9 ["deniedCameraPermission"]
       30 GETTABLEKS                       R11 R0 K3 ["state"]
       32 GETTABLEKS                       R10 R11 K10 ["shouldShowCameraSelectionDialog"]
       34 GETTABLEKS                       R12 R0 K3 ["state"]
       36 GETTABLEKS                       R11 R12 K11 ["shouldShowNoCamerasWarning"]
       38 GETTABLEKS                       R13 R2 K12 ["faceCaptureTheme"]
       40 GETTABLEKS                       R12 R13 K13 ["faceCaptureDefaultButtonIconColor"]
       42 GETTABLEKS                       R14 R2 K12 ["faceCaptureTheme"]
       44 GETTABLEKS                       R13 R14 K14 ["stopRecordingButtonImage"]
       46 GETTABLEKS                       R15 R2 K12 ["faceCaptureTheme"]
       48 GETTABLEKS                       R14 R15 K15 ["errorIcon"]
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
       73 GETUPVAL                         R20 2
       74 GETTABLEKS                       R19 R20 K21 ["provide"]
       76 NEWTABLE                         R20 0 1
       78 GETTABLEKS                       R21 R0 K22 ["focus"]
       80 SETLIST                          R20 R21 1 [1]
       82 DUPTABLE                         R21 K25 [{"RecordingPanelPortal", "CameraSelectionDialog"}]
       83 NOT                              R22 R7
       84 JUMPIFNOT                        R22 ; [+887]
       85 GETUPVAL                         R23 3
       86 GETTABLEKS                       R22 R23 K26 ["createElement"]
       88 GETUPVAL                         R24 3
       89 GETTABLEKS                       R23 R24 K27 ["Portal"]
       91 DUPTABLE                         R24 K29 [{"target"}]
       92 GETTABLEKS                       R25 R0 K30 ["presentationGui"]
       94 SETTABLEKS                       R25 R24 K28 ["target"]
       96 DUPTABLE                         R25 K33 [{"RecordingPanelContainer", "WarningsPane"}]
       97 GETUPVAL                         R27 3
       98 GETTABLEKS                       R26 R27 K26 ["createElement"]
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
      116 LOADN                            R33 251
      117 CALL                             R29 4 1
      118 SETTABLEKS                       R29 R28 K35 ["Position"]
      120 GETIMPORT                        R29 K44 [Vector2.new]
      122 LOADK                            R30 K42 [0.5]
      123 LOADN                            R31 1
      124 CALL                             R29 2 1
      125 SETTABLEKS                       R29 R28 K36 ["AnchorPoint"]
      127 DUPTABLE                         R29 K47 [{"Left", "Right"}]
      128 LOADN                            R30 5
      129 SETTABLEKS                       R30 R29 K45 ["Left"]
      131 LOADN                            R30 5
      132 SETTABLEKS                       R30 R29 K46 ["Right"]
      134 SETTABLEKS                       R29 R28 K37 ["Padding"]
      136 DUPTABLE                         R29 K50 [{"RecordingPanel", "DismissButton"}]
      137 GETUPVAL                         R31 3
      138 GETTABLEKS                       R30 R31 K26 ["createElement"]
      140 GETUPVAL                         R31 5
      141 DUPTABLE                         R32 K60 [{"Size", "Padding", "Layout", "Spacing", "VerticalAlignment", "ZIndex", "Style", "Image", "BackgroundColor3", "BackgroundTransparency", "ImageTransparency"}]
      142 GETIMPORT                        R33 K41 [UDim2.new]
      144 LOADN                            R34 1
      145 LOADN                            R35 0
      146 LOADN                            R36 1
      147 LOADN                            R37 0
      148 CALL                             R33 4 1
      149 SETTABLEKS                       R33 R32 K34 ["Size"]
      151 DUPTABLE                         R33 K47 [{"Left", "Right"}]
      152 LOADN                            R34 40
      153 SETTABLEKS                       R34 R33 K45 ["Left"]
      155 LOADN                            R34 40
      156 SETTABLEKS                       R34 R33 K46 ["Right"]
      158 SETTABLEKS                       R33 R32 K37 ["Padding"]
      160 GETIMPORT                        R33 K64 [Enum.FillDirection.Horizontal]
      162 SETTABLEKS                       R33 R32 K51 ["Layout"]
      164 LOADN                            R33 3
      165 SETTABLEKS                       R33 R32 K52 ["Spacing"]
      167 GETIMPORT                        R33 K66 [Enum.VerticalAlignment.Center]
      169 SETTABLEKS                       R33 R32 K53 ["VerticalAlignment"]
      171 LOADN                            R33 1
      172 SETTABLEKS                       R33 R32 K54 ["ZIndex"]
      174 LOADK                            R33 K67 ["RoundBox"]
      175 SETTABLEKS                       R33 R32 K55 ["Style"]
      177 LOADK                            R33 K68 [""]
      178 SETTABLEKS                       R33 R32 K56 ["Image"]
      180 GETTABLEKS                       R34 R1 K1 ["Stylizer"]
      182 GETTABLEKS                       R33 R34 K69 ["Color"]
      184 SETTABLEKS                       R33 R32 K57 ["BackgroundColor3"]
      186 LOADK                            R33 K70 [0.1]
      187 SETTABLEKS                       R33 R32 K58 ["BackgroundTransparency"]
      189 LOADK                            R33 K70 [0.1]
      190 SETTABLEKS                       R33 R32 K59 ["ImageTransparency"]
      192 DUPTABLE                         R33 K78 [{"Corner", "RecordButton", "ReRecordButton", "FlashingDot", "TextLabelButton", "LoadingIndicator", "CameraSelectionButton"}]
      193 GETUPVAL                         R35 3
      194 GETTABLEKS                       R34 R35 K26 ["createElement"]
      196 LOADK                            R35 K79 ["UICorner"]
      197 DUPTABLE                         R36 K81 [{"CornerRadius"}]
      198 GETIMPORT                        R37 K83 [UDim.new]
      200 LOADN                            R38 0
      201 LOADN                            R39 8
      202 CALL                             R37 2 1
      203 SETTABLEKS                       R37 R36 K80 ["CornerRadius"]
      205 CALL                             R34 2 1
      206 SETTABLEKS                       R34 R33 K71 ["Corner"]
      208 NOT                              R34 R5
      209 JUMPIFNOT                        R34 ; [+130]
      210 GETUPVAL                         R35 3
      211 GETTABLEKS                       R34 R35 K26 ["createElement"]
      213 GETUPVAL                         R35 6
      214 DUPTABLE                         R36 K89 [{"Size", "Position", "ImageTransparency", "BackgroundTransparency", "BorderSizePixel", "OnClick", "Text", "LayoutOrder", "Style", "StyleModifier"}]
      215 GETIMPORT                        R37 K41 [UDim2.new]
      217 LOADN                            R38 0
      218 LOADN                            R39 30
      219 LOADN                            R40 0
      220 LOADN                            R41 30
      221 CALL                             R37 4 1
      222 SETTABLEKS                       R37 R36 K34 ["Size"]
      224 GETIMPORT                        R37 K41 [UDim2.new]
      226 LOADN                            R38 0
      227 LOADN                            R39 0
      228 LOADN                            R40 0
      229 LOADN                            R41 0
      230 CALL                             R37 4 1
      231 SETTABLEKS                       R37 R36 K35 ["Position"]
      233 LOADN                            R37 1
      234 SETTABLEKS                       R37 R36 K59 ["ImageTransparency"]
      236 LOADK                            R37 K42 [0.5]
      237 SETTABLEKS                       R37 R36 K58 ["BackgroundTransparency"]
      239 LOADN                            R37 1
      240 SETTABLEKS                       R37 R36 K84 ["BorderSizePixel"]
      242 GETTABLEKS                       R37 R0 K90 ["toggleRecording"]
      244 SETTABLEKS                       R37 R36 K85 ["OnClick"]
      246 LOADK                            R37 K68 [""]
      247 SETTABLEKS                       R37 R36 K86 ["Text"]
      249 LOADN                            R37 1
      250 SETTABLEKS                       R37 R36 K87 ["LayoutOrder"]
      252 DUPTABLE                         R37 K91 [{"BackgroundTransparency", "BorderSizePixel"}]
      253 LOADN                            R38 1
      254 SETTABLEKS                       R38 R37 K58 ["BackgroundTransparency"]
      256 LOADN                            R38 0
      257 SETTABLEKS                       R38 R37 K84 ["BorderSizePixel"]
      259 SETTABLEKS                       R37 R36 K55 ["Style"]
      261 JUMPIF                           R6 ; [+4]
      262 GETUPVAL                         R38 7
      263 GETTABLEKS                       R37 R38 K92 ["Disabled"]
      265 JUMPIF                           R37 ; [+1]
      266 LOADNIL                          R37
      267 SETTABLEKS                       R37 R36 K88 ["StyleModifier"]
      269 NEWTABLE                         R37 2 1
      271 GETUPVAL                         R40 3
      272 GETTABLEKS                       R39 R40 K26 ["createElement"]
      274 LOADK                            R40 K93 ["ImageLabel"]
      275 DUPTABLE                         R41 K94 [{"BackgroundTransparency", "Size", "Position", "Image"}]
      276 LOADN                            R42 1
      277 SETTABLEKS                       R42 R41 K58 ["BackgroundTransparency"]
      279 GETIMPORT                        R42 K41 [UDim2.new]
      281 LOADN                            R43 0
      282 LOADN                            R44 30
      283 LOADN                            R45 0
      284 LOADN                            R46 30
      285 CALL                             R42 4 1
      286 SETTABLEKS                       R42 R41 K34 ["Size"]
      288 GETIMPORT                        R42 K41 [UDim2.new]
      290 LOADN                            R43 0
      291 LOADN                            R44 0
      292 LOADN                            R45 0
      293 LOADN                            R46 0
      294 CALL                             R42 4 1
      295 SETTABLEKS                       R42 R41 K35 ["Position"]
      297 JUMPIFNOT                        R4 ; [+2]
      298 MOVE                             R42 R13
      299 JUMPIF                           R42 ; [+1]
      300 LOADK                            R42 K95 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/button_control_record.png"]
      301 SETTABLEKS                       R42 R41 K56 ["Image"]
      303 CALL                             R39 2 1
      304 SETTABLEKS                       R39 R37 K56 ["Image"]
      306 GETUPVAL                         R40 3
      307 GETTABLEKS                       R39 R40 K26 ["createElement"]
      309 GETUPVAL                         R40 8
      310 DUPTABLE                         R41 K96 [{"Text"}]
      311 JUMPIFNOT                        R4 ; [+6]
      312 LOADK                            R44 K97 ["FaceCapture"]
      313 LOADK                            R45 K98 ["TooltipStopRecording"]
      314 NAMECALL                         R42 R3 K99 ["getText"]
      316 CALL                             R42 3 1
      317 JUMPIF                           R42 ; [+5]
      318 LOADK                            R44 K97 ["FaceCapture"]
      319 LOADK                            R45 K100 ["TooltipStartRecording"]
      320 NAMECALL                         R42 R3 K99 ["getText"]
      322 CALL                             R42 3 1
      323 SETTABLEKS                       R42 R41 K86 ["Text"]
      325 CALL                             R39 2 1
      326 SETTABLEKS                       R39 R37 K101 ["Tooltip"]
      328 GETUPVAL                         R39 3
      329 GETTABLEKS                       R38 R39 K26 ["createElement"]
      331 GETUPVAL                         R39 9
      332 DUPTABLE                         R40 K103 [{"Cursor"}]
      333 LOADK                            R41 K104 ["PointingHand"]
      334 SETTABLEKS                       R41 R40 K102 ["Cursor"]
      336 CALL                             R38 2 -1
      337 SETLIST                          R37 R38 -1 [1]
      339 CALL                             R34 3 1
      340 SETTABLEKS                       R34 R33 K72 ["RecordButton"]
      342 MOVE                             R34 R5
      343 JUMPIFNOT                        R34 ; [+122]
      344 GETUPVAL                         R35 3
      345 GETTABLEKS                       R34 R35 K26 ["createElement"]
      347 GETUPVAL                         R35 6
      348 DUPTABLE                         R36 K89 [{"Size", "Position", "ImageTransparency", "BackgroundTransparency", "BorderSizePixel", "OnClick", "Text", "LayoutOrder", "Style", "StyleModifier"}]
      349 GETIMPORT                        R37 K41 [UDim2.new]
      351 LOADN                            R38 0
      352 LOADN                            R39 30
      353 LOADN                            R40 0
      354 LOADN                            R41 30
      355 CALL                             R37 4 1
      356 SETTABLEKS                       R37 R36 K34 ["Size"]
      358 GETIMPORT                        R37 K41 [UDim2.new]
      360 LOADN                            R38 0
      361 LOADN                            R39 0
      362 LOADN                            R40 0
      363 LOADN                            R41 0
      364 CALL                             R37 4 1
      365 SETTABLEKS                       R37 R36 K35 ["Position"]
      367 LOADN                            R37 1
      368 SETTABLEKS                       R37 R36 K59 ["ImageTransparency"]
      370 LOADK                            R37 K42 [0.5]
      371 SETTABLEKS                       R37 R36 K58 ["BackgroundTransparency"]
      373 LOADN                            R37 1
      374 SETTABLEKS                       R37 R36 K84 ["BorderSizePixel"]
      376 GETTABLEKS                       R37 R0 K105 ["triggerReRecording"]
      378 SETTABLEKS                       R37 R36 K85 ["OnClick"]
      380 LOADK                            R37 K68 [""]
      381 SETTABLEKS                       R37 R36 K86 ["Text"]
      383 LOADN                            R37 1
      384 SETTABLEKS                       R37 R36 K87 ["LayoutOrder"]
      386 DUPTABLE                         R37 K91 [{"BackgroundTransparency", "BorderSizePixel"}]
      387 LOADN                            R38 1
      388 SETTABLEKS                       R38 R37 K58 ["BackgroundTransparency"]
      390 LOADN                            R38 0
      391 SETTABLEKS                       R38 R37 K84 ["BorderSizePixel"]
      393 SETTABLEKS                       R37 R36 K55 ["Style"]
      395 JUMPIF                           R6 ; [+4]
      396 GETUPVAL                         R38 7
      397 GETTABLEKS                       R37 R38 K92 ["Disabled"]
      399 JUMPIF                           R37 ; [+1]
      400 LOADNIL                          R37
      401 SETTABLEKS                       R37 R36 K88 ["StyleModifier"]
      403 NEWTABLE                         R37 2 1
      405 GETUPVAL                         R40 3
      406 GETTABLEKS                       R39 R40 K26 ["createElement"]
      408 LOADK                            R40 K93 ["ImageLabel"]
      409 DUPTABLE                         R41 K107 [{"BackgroundTransparency", "Size", "Position", "Image", "ImageColor3"}]
      410 LOADN                            R42 1
      411 SETTABLEKS                       R42 R41 K58 ["BackgroundTransparency"]
      413 GETIMPORT                        R42 K41 [UDim2.new]
      415 LOADN                            R43 0
      416 LOADN                            R44 30
      417 LOADN                            R45 0
      418 LOADN                            R46 30
      419 CALL                             R42 4 1
      420 SETTABLEKS                       R42 R41 K34 ["Size"]
      422 GETIMPORT                        R42 K41 [UDim2.new]
      424 LOADN                            R43 0
      425 LOADN                            R44 0
      426 LOADN                            R45 0
      427 LOADN                            R46 0
      428 CALL                             R42 4 1
      429 SETTABLEKS                       R42 R41 K35 ["Position"]
      431 LOADK                            R42 K108 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/ReRecordButton.png"]
      432 SETTABLEKS                       R42 R41 K56 ["Image"]
      434 SETTABLEKS                       R12 R41 K106 ["ImageColor3"]
      436 CALL                             R39 2 1
      437 SETTABLEKS                       R39 R37 K56 ["Image"]
      439 GETUPVAL                         R40 3
      440 GETTABLEKS                       R39 R40 K26 ["createElement"]
      442 GETUPVAL                         R40 8
      443 DUPTABLE                         R41 K96 [{"Text"}]
      444 LOADK                            R44 K97 ["FaceCapture"]
      445 LOADK                            R45 K109 ["TooltipReRecording"]
      446 NAMECALL                         R42 R3 K99 ["getText"]
      448 CALL                             R42 3 1
      449 SETTABLEKS                       R42 R41 K86 ["Text"]
      451 CALL                             R39 2 1
      452 SETTABLEKS                       R39 R37 K101 ["Tooltip"]
      454 GETUPVAL                         R39 3
      455 GETTABLEKS                       R38 R39 K26 ["createElement"]
      457 GETUPVAL                         R39 9
      458 DUPTABLE                         R40 K103 [{"Cursor"}]
      459 LOADK                            R41 K104 ["PointingHand"]
      460 SETTABLEKS                       R41 R40 K102 ["Cursor"]
      462 CALL                             R38 2 -1
      463 SETLIST                          R37 R38 -1 [1]
      465 CALL                             R34 3 1
      466 SETTABLEKS                       R34 R33 K73 ["ReRecordButton"]
      468 MOVE                             R34 R4
      469 JUMPIFNOT                        R34 ; [+21]
      470 GETUPVAL                         R35 3
      471 GETTABLEKS                       R34 R35 K26 ["createElement"]
      473 GETUPVAL                         R35 10
      474 DUPTABLE                         R36 K111 [{"Size", "PaddingLeft", "LayoutOrder"}]
      475 GETIMPORT                        R37 K41 [UDim2.new]
      477 LOADN                            R38 0
      478 LOADN                            R39 20
      479 LOADN                            R40 0
      480 LOADN                            R41 7
      481 CALL                             R37 4 1
      482 SETTABLEKS                       R37 R36 K34 ["Size"]
      484 LOADN                            R37 30
      485 SETTABLEKS                       R37 R36 K110 ["PaddingLeft"]
      487 LOADN                            R37 2
      488 SETTABLEKS                       R37 R36 K87 ["LayoutOrder"]
      490 CALL                             R34 2 1
      491 SETTABLEKS                       R34 R33 K74 ["FlashingDot"]
      493 MOVE                             R34 R6
      494 JUMPIFNOT                        R34 ; [+106]
      495 GETUPVAL                         R35 3
      496 GETTABLEKS                       R34 R35 K26 ["createElement"]
      498 GETUPVAL                         R35 6
      499 DUPTABLE                         R36 K115 [{"Size", "Position", "ImageTransparency", "BackgroundTransparency", "BorderSizePixel", "OnClick", "TextXAlignment", "TextTruncate", "TextSize", "Text", "LayoutOrder", "Style"}]
      500 JUMPIFNOT                        R4 ; [+9]
      501 JUMPIFNOT                        R8 ; [+8]
      502 GETIMPORT                        R37 K41 [UDim2.new]
      504 LOADN                            R38 0
      505 LOADN                            R39 68
      506 LOADN                            R40 1
      507 LOADN                            R41 0
      508 CALL                             R37 4 1
      509 JUMPIF                           R37 ; [+7]
      510 GETIMPORT                        R37 K41 [UDim2.new]
      512 LOADN                            R38 0
      513 LOADN                            R39 60
      514 LOADN                            R40 1
      515 LOADN                            R41 0
      516 CALL                             R37 4 1
      517 SETTABLEKS                       R37 R36 K34 ["Size"]
      519 GETIMPORT                        R37 K41 [UDim2.new]
      521 LOADN                            R38 0
      522 LOADN                            R39 0
      523 LOADN                            R40 0
      524 LOADN                            R41 0
      525 CALL                             R37 4 1
      526 SETTABLEKS                       R37 R36 K35 ["Position"]
      528 LOADN                            R37 1
      529 SETTABLEKS                       R37 R36 K59 ["ImageTransparency"]
      531 LOADK                            R37 K42 [0.5]
      532 SETTABLEKS                       R37 R36 K58 ["BackgroundTransparency"]
      534 LOADN                            R37 1
      535 SETTABLEKS                       R37 R36 K84 ["BorderSizePixel"]
      537 JUMPIFNOT                        R5 ; [+3]
      538 GETTABLEKS                       R37 R0 K105 ["triggerReRecording"]
      540 JUMPIF                           R37 ; [+11]
      541 JUMPIF                           R5 ; [+4]
      542 JUMPIF                           R4 ; [+3]
      543 GETTABLEKS                       R37 R0 K90 ["toggleRecording"]
      545 JUMPIF                           R37 ; [+6]
      546 NOT                              R37 R5
      547 JUMPIFNOT                        R37 ; [+4]
      548 MOVE                             R37 R4
      549 JUMPIFNOT                        R37 ; [+2]
      550 GETTABLEKS                       R37 R0 K90 ["toggleRecording"]
      552 SETTABLEKS                       R37 R36 K85 ["OnClick"]
      554 GETIMPORT                        R37 K116 [Enum.TextXAlignment.Center]
      556 SETTABLEKS                       R37 R36 K112 ["TextXAlignment"]
      558 GETIMPORT                        R37 K118 [Enum.TextTruncate.None]
      560 SETTABLEKS                       R37 R36 K113 ["TextTruncate"]
      562 LOADN                            R37 15
      563 SETTABLEKS                       R37 R36 K114 ["TextSize"]
      565 JUMPIFNOT                        R5 ; [+6]
      566 LOADK                            R39 K97 ["FaceCapture"]
      567 LOADK                            R40 K119 ["PanelReRecording"]
      568 NAMECALL                         R37 R3 K99 ["getText"]
      570 CALL                             R37 3 1
      571 JUMPIF                           R37 ; [+12]
      572 NOT                              R37 R5
      573 JUMPIFNOT                        R37 ; [+10]
      574 JUMPIFNOT                        R4 ; [+4]
      575 MOVE                             R38 R8
      576 LOADK                            R39 K120 [" sec   "]
      577 CONCAT                           R37 R38 R39
      578 JUMPIF                           R37 ; [+5]
      579 LOADK                            R39 K97 ["FaceCapture"]
      580 LOADK                            R40 K121 ["PanelReady"]
      581 NAMECALL                         R37 R3 K99 ["getText"]
      583 CALL                             R37 3 1
      584 SETTABLEKS                       R37 R36 K86 ["Text"]
      586 LOADN                            R37 3
      587 SETTABLEKS                       R37 R36 K87 ["LayoutOrder"]
      589 DUPTABLE                         R37 K122 [{"BackgroundTransparency", "BorderSizePixel", "TextColor"}]
      590 LOADN                            R38 1
      591 SETTABLEKS                       R38 R37 K58 ["BackgroundTransparency"]
      593 LOADN                            R38 0
      594 SETTABLEKS                       R38 R37 K84 ["BorderSizePixel"]
      596 SETTABLEKS                       R16 R37 K16 ["TextColor"]
      598 SETTABLEKS                       R37 R36 K55 ["Style"]
      600 CALL                             R34 2 1
      601 SETTABLEKS                       R34 R33 K75 ["TextLabelButton"]
      603 NOT                              R34 R5
      604 JUMPIFNOT                        R34 ; [+20]
      605 NOT                              R34 R6
      606 JUMPIFNOT                        R34 ; [+18]
      607 GETUPVAL                         R35 3
      608 GETTABLEKS                       R34 R35 K26 ["createElement"]
      610 GETUPVAL                         R35 11
      611 DUPTABLE                         R36 K123 [{"Size", "LayoutOrder"}]
      612 GETIMPORT                        R37 K41 [UDim2.new]
      614 LOADN                            R38 0
      615 LOADN                            R39 60
      616 LOADN                            R40 0
      617 LOADN                            R41 15
      618 CALL                             R37 4 1
      619 SETTABLEKS                       R37 R36 K34 ["Size"]
      621 LOADN                            R37 2
      622 SETTABLEKS                       R37 R36 K87 ["LayoutOrder"]
      624 CALL                             R34 2 1
      625 SETTABLEKS                       R34 R33 K76 ["LoadingIndicator"]
      627 NOT                              R34 R5
      628 JUMPIFNOT                        R34 ; [+108]
      629 NOT                              R34 R4
      630 JUMPIFNOT                        R34 ; [+106]
      631 GETUPVAL                         R35 3
      632 GETTABLEKS                       R34 R35 K26 ["createElement"]
      634 GETUPVAL                         R35 6
      635 DUPTABLE                         R36 K124 [{"Size", "Style", "Text", "TextSize", "OnClick", "LayoutOrder"}]
      636 GETIMPORT                        R37 K126 [UDim2.fromOffset]
      638 LOADN                            R38 30
      639 LOADN                            R39 30
      640 CALL                             R37 2 1
      641 SETTABLEKS                       R37 R36 K34 ["Size"]
      643 DUPTABLE                         R37 K91 [{"BackgroundTransparency", "BorderSizePixel"}]
      644 LOADN                            R38 1
      645 SETTABLEKS                       R38 R37 K58 ["BackgroundTransparency"]
      647 LOADN                            R38 0
      648 SETTABLEKS                       R38 R37 K84 ["BorderSizePixel"]
      650 SETTABLEKS                       R37 R36 K55 ["Style"]
      652 LOADK                            R37 K68 [""]
      653 SETTABLEKS                       R37 R36 K86 ["Text"]
      655 LOADN                            R37 30
      656 SETTABLEKS                       R37 R36 K114 ["TextSize"]
      658 GETTABLEKS                       R37 R0 K127 ["showCameraSelectionDialog"]
      660 SETTABLEKS                       R37 R36 K85 ["OnClick"]
      662 LOADN                            R37 4
      663 SETTABLEKS                       R37 R36 K87 ["LayoutOrder"]
      665 NEWTABLE                         R37 2 1
      667 GETUPVAL                         R40 3
      668 GETTABLEKS                       R39 R40 K26 ["createElement"]
      670 LOADK                            R40 K93 ["ImageLabel"]
      671 DUPTABLE                         R41 K107 [{"BackgroundTransparency", "Size", "Position", "Image", "ImageColor3"}]
      672 LOADN                            R42 1
      673 SETTABLEKS                       R42 R41 K58 ["BackgroundTransparency"]
      675 GETIMPORT                        R42 K41 [UDim2.new]
      677 LOADN                            R43 0
      678 LOADN                            R44 30
      679 LOADN                            R45 0
      680 LOADN                            R46 30
      681 CALL                             R42 4 1
      682 SETTABLEKS                       R42 R41 K34 ["Size"]
      684 GETIMPORT                        R42 K41 [UDim2.new]
      686 LOADN                            R43 0
      687 LOADN                            R44 0
      688 LOADN                            R45 0
      689 LOADN                            R46 0
      690 CALL                             R42 4 1
      691 SETTABLEKS                       R42 R41 K35 ["Position"]
      693 LOADK                            R42 K128 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/MoreButton.png"]
      694 SETTABLEKS                       R42 R41 K56 ["Image"]
      696 SETTABLEKS                       R12 R41 K106 ["ImageColor3"]
      698 CALL                             R39 2 1
      699 SETTABLEKS                       R39 R37 K56 ["Image"]
      701 GETUPVAL                         R40 3
      702 GETTABLEKS                       R39 R40 K26 ["createElement"]
      704 GETUPVAL                         R40 8
      705 DUPTABLE                         R41 K129 [{"Text", "Position"}]
      706 LOADK                            R44 K97 ["FaceCapture"]
      707 LOADK                            R45 K130 ["TooltipCameraSettings"]
      708 NAMECALL                         R42 R3 K99 ["getText"]
      710 CALL                             R42 3 1
      711 SETTABLEKS                       R42 R41 K86 ["Text"]
      713 GETIMPORT                        R42 K41 [UDim2.new]
      715 LOADN                            R43 0
      716 LOADN                            R44 50
      717 LOADN                            R45 0
      718 LOADN                            R46 50
      719 CALL                             R42 4 1
      720 SETTABLEKS                       R42 R41 K35 ["Position"]
      722 CALL                             R39 2 1
      723 SETTABLEKS                       R39 R37 K101 ["Tooltip"]
      725 GETUPVAL                         R39 3
      726 GETTABLEKS                       R38 R39 K26 ["createElement"]
      728 GETUPVAL                         R39 9
      729 DUPTABLE                         R40 K103 [{"Cursor"}]
      730 LOADK                            R41 K104 ["PointingHand"]
      731 SETTABLEKS                       R41 R40 K102 ["Cursor"]
      733 CALL                             R38 2 -1
      734 SETLIST                          R37 R38 -1 [1]
      736 CALL                             R34 3 1
      737 SETTABLEKS                       R34 R33 K77 ["CameraSelectionButton"]
      739 CALL                             R30 3 1
      740 SETTABLEKS                       R30 R29 K48 ["RecordingPanel"]
      742 GETUPVAL                         R31 3
      743 GETTABLEKS                       R30 R31 K26 ["createElement"]
      745 GETUPVAL                         R31 6
      746 DUPTABLE                         R32 K131 [{"Style", "Size", "Position", "AnchorPoint", "ZIndex", "OnClick"}]
      747 DUPTABLE                         R33 K91 [{"BackgroundTransparency", "BorderSizePixel"}]
      748 LOADN                            R34 1
      749 SETTABLEKS                       R34 R33 K58 ["BackgroundTransparency"]
      751 LOADN                            R34 0
      752 SETTABLEKS                       R34 R33 K84 ["BorderSizePixel"]
      754 SETTABLEKS                       R33 R32 K55 ["Style"]
      756 GETIMPORT                        R33 K41 [UDim2.new]
      758 LOADN                            R34 0
      759 LOADN                            R35 16
      760 LOADN                            R36 0
      761 LOADN                            R37 16
      762 CALL                             R33 4 1
      763 SETTABLEKS                       R33 R32 K34 ["Size"]
      765 GETIMPORT                        R33 K41 [UDim2.new]
      767 LOADN                            R34 1
      768 LOADN                            R35 0
      769 LOADN                            R36 0
      770 LOADN                            R37 0
      771 CALL                             R33 4 1
      772 SETTABLEKS                       R33 R32 K35 ["Position"]
      774 GETIMPORT                        R33 K44 [Vector2.new]
      776 LOADK                            R34 K42 [0.5]
      777 LOADK                            R35 K42 [0.5]
      778 CALL                             R33 2 1
      779 SETTABLEKS                       R33 R32 K36 ["AnchorPoint"]
      781 LOADN                            R33 10
      782 SETTABLEKS                       R33 R32 K54 ["ZIndex"]
      784 NEWCLOSURE                       R33 P0
      785 CAPTURE                          VAL R0
      786 SETTABLEKS                       R33 R32 K85 ["OnClick"]
      788 DUPTABLE                         R33 K132 [{"Image"}]
      789 GETUPVAL                         R35 3
      790 GETTABLEKS                       R34 R35 K26 ["createElement"]
      792 LOADK                            R35 K93 ["ImageLabel"]
      793 DUPTABLE                         R36 K133 [{"BackgroundTransparency", "Size", "Image"}]
      794 LOADN                            R37 1
      795 SETTABLEKS                       R37 R36 K58 ["BackgroundTransparency"]
      797 GETIMPORT                        R37 K41 [UDim2.new]
      799 LOADN                            R38 0
      800 LOADN                            R39 16
      801 LOADN                            R40 0
      802 LOADN                            R41 16
      803 CALL                             R37 4 1
      804 SETTABLEKS                       R37 R36 K34 ["Size"]
      806 LOADK                            R37 K134 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/CloseButton.png"]
      807 SETTABLEKS                       R37 R36 K56 ["Image"]
      809 CALL                             R34 2 1
      810 SETTABLEKS                       R34 R33 K56 ["Image"]
      812 CALL                             R30 3 1
      813 SETTABLEKS                       R30 R29 K49 ["DismissButton"]
      815 CALL                             R26 3 1
      816 SETTABLEKS                       R26 R25 K31 ["RecordingPanelContainer"]
      818 GETUPVAL                         R27 3
      819 GETTABLEKS                       R26 R27 K26 ["createElement"]
      821 GETUPVAL                         R27 5
      822 DUPTABLE                         R28 K136 [{"AutomaticSize", "Position", "AnchorPoint", "Layout", "Spacing", "VerticalAlignment", "ZIndex", "Style", "ImageTransparency"}]
      823 GETIMPORT                        R29 K138 [Enum.AutomaticSize.XY]
      825 SETTABLEKS                       R29 R28 K135 ["AutomaticSize"]
      827 GETIMPORT                        R29 K41 [UDim2.new]
      829 LOADK                            R30 K42 [0.5]
      830 LOADN                            R31 0
      831 LOADN                            R32 1
      832 LOADN                            R33 206
      833 CALL                             R29 4 1
      834 SETTABLEKS                       R29 R28 K35 ["Position"]
      836 GETIMPORT                        R29 K44 [Vector2.new]
      838 LOADK                            R30 K42 [0.5]
      839 LOADN                            R31 1
      840 CALL                             R29 2 1
      841 SETTABLEKS                       R29 R28 K36 ["AnchorPoint"]
      843 GETIMPORT                        R29 K140 [Enum.FillDirection.Vertical]
      845 SETTABLEKS                       R29 R28 K51 ["Layout"]
      847 LOADN                            R29 8
      848 SETTABLEKS                       R29 R28 K52 ["Spacing"]
      850 GETIMPORT                        R29 K66 [Enum.VerticalAlignment.Center]
      852 SETTABLEKS                       R29 R28 K53 ["VerticalAlignment"]
      854 LOADN                            R29 1
      855 SETTABLEKS                       R29 R28 K54 ["ZIndex"]
      857 LOADK                            R29 K67 ["RoundBox"]
      858 SETTABLEKS                       R29 R28 K55 ["Style"]
      860 LOADN                            R29 1
      861 SETTABLEKS                       R29 R28 K59 ["ImageTransparency"]
      863 DUPTABLE                         R29 K145 [{"NoCameraWarningOverlay", "CameraPermissionDeniedWarningOverlay", "DetectingCameraOverlay", "PreviousFacsWillBeOverwrittenInfoOverlay"}]
      864 MOVE                             R30 R11
      865 JUMPIFNOT                        R30 ; [+18]
      866 GETUPVAL                         R31 3
      867 GETTABLEKS                       R30 R31 K26 ["createElement"]
      869 GETUPVAL                         R31 12
      870 DUPTABLE                         R32 K147 [{"TitleText", "Image", "LayoutOrder"}]
      871 LOADK                            R35 K97 ["FaceCapture"]
      872 LOADK                            R36 K148 ["NoCameraWarningText"]
      873 NAMECALL                         R33 R3 K99 ["getText"]
      875 CALL                             R33 3 1
      876 SETTABLEKS                       R33 R32 K146 ["TitleText"]
      878 SETTABLEKS                       R14 R32 K56 ["Image"]
      880 LOADN                            R33 1
      881 SETTABLEKS                       R33 R32 K87 ["LayoutOrder"]
      883 CALL                             R30 2 1
      884 SETTABLEKS                       R30 R29 K141 ["NoCameraWarningOverlay"]
      886 MOVE                             R30 R9
      887 JUMPIFNOT                        R30 ; [+18]
      888 GETUPVAL                         R31 3
      889 GETTABLEKS                       R30 R31 K26 ["createElement"]
      891 GETUPVAL                         R31 12
      892 DUPTABLE                         R32 K147 [{"TitleText", "Image", "LayoutOrder"}]
      893 LOADK                            R35 K97 ["FaceCapture"]
      894 LOADK                            R36 K149 ["CameraPermissionDeniedWarningText"]
      895 NAMECALL                         R33 R3 K99 ["getText"]
      897 CALL                             R33 3 1
      898 SETTABLEKS                       R33 R32 K146 ["TitleText"]
      900 SETTABLEKS                       R14 R32 K56 ["Image"]
      902 LOADN                            R33 2
      903 SETTABLEKS                       R33 R32 K87 ["LayoutOrder"]
      905 CALL                             R30 2 1
      906 SETTABLEKS                       R30 R29 K142 ["CameraPermissionDeniedWarningOverlay"]
      908 NOT                              R30 R5
      909 JUMPIFNOT                        R30 ; [+27]
      910 NOT                              R30 R6
      911 JUMPIFNOT                        R30 ; [+25]
      912 NOT                              R30 R4
      913 JUMPIFNOT                        R30 ; [+23]
      914 NOT                              R30 R11
      915 JUMPIFNOT                        R30 ; [+21]
      916 NOT                              R30 R9
      917 JUMPIFNOT                        R30 ; [+19]
      918 GETUPVAL                         R31 3
      919 GETTABLEKS                       R30 R31 K26 ["createElement"]
      921 GETUPVAL                         R31 12
      922 DUPTABLE                         R32 K147 [{"TitleText", "Image", "LayoutOrder"}]
      923 LOADK                            R35 K97 ["FaceCapture"]
      924 LOADK                            R36 K150 ["DetectingCameraTitle"]
      925 NAMECALL                         R33 R3 K99 ["getText"]
      927 CALL                             R33 3 1
      928 SETTABLEKS                       R33 R32 K146 ["TitleText"]
      930 LOADK                            R33 K68 [""]
      931 SETTABLEKS                       R33 R32 K56 ["Image"]
      933 LOADN                            R33 3
      934 SETTABLEKS                       R33 R32 K87 ["LayoutOrder"]
      936 CALL                             R30 2 1
      937 SETTABLEKS                       R30 R29 K143 ["DetectingCameraOverlay"]
      939 MOVE                             R30 R5
      940 JUMPIFNOT                        R30 ; [+25]
      941 MOVE                             R30 R6
      942 JUMPIFNOT                        R30 ; [+23]
      943 NOT                              R30 R4
      944 JUMPIFNOT                        R30 ; [+21]
      945 MOVE                             R30 R18
      946 JUMPIFNOT                        R30 ; [+19]
      947 GETUPVAL                         R31 3
      948 GETTABLEKS                       R30 R31 K26 ["createElement"]
      950 GETUPVAL                         R31 12
      951 DUPTABLE                         R32 K147 [{"TitleText", "Image", "LayoutOrder"}]
      952 LOADK                            R35 K97 ["FaceCapture"]
      953 LOADK                            R36 K151 ["OverwritingPreviousFacsTracksBody"]
      954 NAMECALL                         R33 R3 K99 ["getText"]
      956 CALL                             R33 3 1
      957 SETTABLEKS                       R33 R32 K146 ["TitleText"]
      959 LOADK                            R33 K68 [""]
      960 SETTABLEKS                       R33 R32 K56 ["Image"]
      962 LOADN                            R33 4
      963 SETTABLEKS                       R33 R32 K87 ["LayoutOrder"]
      965 CALL                             R30 2 1
      966 SETTABLEKS                       R30 R29 K144 ["PreviousFacsWillBeOverwrittenInfoOverlay"]
      968 CALL                             R26 3 1
      969 SETTABLEKS                       R26 R25 K32 ["WarningsPane"]
      971 CALL                             R22 3 1
      972 SETTABLEKS                       R22 R21 K23 ["RecordingPanelPortal"]
      974 MOVE                             R22 R10
      975 JUMPIFNOT                        R22 ; [+10]
      976 GETUPVAL                         R23 3
      977 GETTABLEKS                       R22 R23 K26 ["createElement"]
      979 GETUPVAL                         R23 13
      980 DUPTABLE                         R24 K153 [{"OnClose"}]
      981 GETTABLEKS                       R25 R0 K154 ["hideCameraSelectionDialog"]
      983 SETTABLEKS                       R25 R24 K152 ["OnClose"]
      985 CALL                             R22 2 1
      986 SETTABLEKS                       R22 R21 K24 ["CameraSelectionDialog"]
      988 CALL                             R19 2 -1
      989 RETURN                           R19 -1

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
        5 GETTABLEKS                       R2 R0 K1 ["props"]
        7 GETTABLEKS                       R1 R2 K2 ["SetInReviewState"]
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
        5 GETTABLEKS                       R4 R0 K3 ["Status"]
        7 GETTABLEKS                       R3 R4 K1 ["PlayState"]
        9 SETTABLEKS                       R3 R2 K1 ["PlayState"]
       11 GETTABLEKS                       R4 R0 K3 ["Status"]
       13 GETTABLEKS                       R3 R4 K2 ["RootInstance"]
       15 SETTABLEKS                       R3 R2 K2 ["RootInstance"]
       17 GETTABLEKS                       R3 R0 K3 ["Status"]
       19 SETTABLEKS                       R3 R2 K3 ["Status"]
       21 GETTABLEKS                       R4 R0 K3 ["Status"]
       23 GETTABLEKS                       R3 R4 K4 ["inReviewState"]
       25 SETTABLEKS                       R3 R2 K4 ["inReviewState"]
       27 GETTABLEKS                       R4 R0 K3 ["Status"]
       29 GETTABLEKS                       R3 R4 K5 ["haveToSetBackToNotLooping"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Focus"]
       34 GETIMPORT                        R7 K14 [game]
       36 LOADK                            R9 K15 ["CoreGui"]
       37 NAMECALL                         R7 R7 K16 ["GetService"]
       39 CALL                             R7 2 1
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R11 R0 K17 ["Src"]
       44 GETTABLEKS                       R10 R11 K18 ["Util"]
       46 GETTABLEKS                       R9 R10 K19 ["RigUtils"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K5 [require]
       51 GETTABLEKS                       R12 R0 K17 ["Src"]
       53 GETTABLEKS                       R11 R12 K18 ["Util"]
       55 GETTABLEKS                       R10 R11 K20 ["RigInfo"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R13 R0 K17 ["Src"]
       62 GETTABLEKS                       R12 R13 K18 ["Util"]
       64 GETTABLEKS                       R11 R12 K21 ["Constants"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K5 [require]
       69 GETTABLEKS                       R15 R0 K17 ["Src"]
       71 GETTABLEKS                       R14 R15 K22 ["Thunks"]
       73 GETTABLEKS                       R13 R14 K23 ["Recording"]
       75 GETTABLEKS                       R12 R13 K24 ["LoadRecorderFrames"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R16 R0 K17 ["Src"]
       82 GETTABLEKS                       R15 R16 K22 ["Thunks"]
       84 GETTABLEKS                       R14 R15 K23 ["Recording"]
       86 GETTABLEKS                       R13 R14 K25 ["SetFacialRecordingMode"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R16 R0 K17 ["Src"]
       93 GETTABLEKS                       R15 R16 K26 ["Actions"]
       95 GETTABLEKS                       R14 R15 K27 ["SetHaveToSetBackToNotLooping"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R17 R0 K17 ["Src"]
      102 GETTABLEKS                       R16 R17 K26 ["Actions"]
      104 GETTABLEKS                       R15 R16 K28 ["SetAnimationData"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R19 R0 K17 ["Src"]
      111 GETTABLEKS                       R18 R19 K29 ["Components"]
      113 GETTABLEKS                       R17 R18 K30 ["FacialAnimationRecorder"]
      115 GETTABLEKS                       R16 R17 K31 ["CameraSelectionDialog"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K5 [require]
      120 GETTABLEKS                       R20 R0 K17 ["Src"]
      122 GETTABLEKS                       R19 R20 K29 ["Components"]
      124 GETTABLEKS                       R18 R19 K30 ["FacialAnimationRecorder"]
      126 GETTABLEKS                       R17 R18 K32 ["ShowStyledDialog"]
      128 CALL                             R16 1 1
      129 GETIMPORT                        R17 K5 [require]
      131 GETTABLEKS                       R21 R0 K17 ["Src"]
      133 GETTABLEKS                       R20 R21 K29 ["Components"]
      135 GETTABLEKS                       R19 R20 K30 ["FacialAnimationRecorder"]
      137 GETTABLEKS                       R18 R19 K33 ["WarningDialog"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K5 [require]
      142 GETTABLEKS                       R22 R0 K17 ["Src"]
      144 GETTABLEKS                       R21 R22 K29 ["Components"]
      146 GETTABLEKS                       R20 R21 K30 ["FacialAnimationRecorder"]
      148 GETTABLEKS                       R19 R20 K34 ["WarningOverlay"]
      150 CALL                             R18 1 1
      151 GETIMPORT                        R19 K5 [require]
      153 GETTABLEKS                       R22 R0 K17 ["Src"]
      155 GETTABLEKS                       R21 R22 K18 ["Util"]
      157 GETTABLEKS                       R20 R21 K35 ["AnimationData"]
      159 CALL                             R19 1 1
      160 GETIMPORT                        R20 K5 [require]
      162 GETTABLEKS                       R23 R0 K17 ["Src"]
      164 GETTABLEKS                       R22 R23 K18 ["Util"]
      166 GETTABLEKS                       R21 R22 K36 ["RTAnimationUtil"]
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
      207 GETTABLEKS                       R28 R3 K18 ["Util"]
      209 GETTABLEKS                       R27 R28 K47 ["StyleModifier"]
      211 GETTABLEKS                       R28 R3 K48 ["UI"]
      213 GETTABLEKS                       R29 R28 K49 ["Pane"]
      215 GETTABLEKS                       R31 R3 K48 ["UI"]
      217 GETTABLEKS                       R30 R31 K50 ["Button"]
      219 GETTABLEKS                       R31 R28 K51 ["Container"]
      221 GETTABLEKS                       R32 R28 K52 ["Tooltip"]
      223 GETTABLEKS                       R33 R28 K53 ["HoverArea"]
      225 GETTABLEKS                       R34 R28 K54 ["LoadingIndicator"]
      227 GETIMPORT                        R35 K5 [require]
      229 GETIMPORT                        R38 K1 [script]
      231 GETTABLEKS                       R37 R38 K55 ["Parent"]
      233 GETTABLEKS                       R36 R37 K56 ["FlashingDot"]
      235 CALL                             R35 1 1
      236 GETIMPORT                        R36 K5 [require]
      238 GETTABLEKS                       R39 R0 K17 ["Src"]
      240 GETTABLEKS                       R38 R39 K26 ["Actions"]
      242 GETTABLEKS                       R37 R38 K57 ["SetPlayState"]
      244 CALL                             R36 1 1
      245 GETIMPORT                        R37 K5 [require]
      247 GETTABLEKS                       R40 R0 K17 ["Src"]
      249 GETTABLEKS                       R39 R40 K26 ["Actions"]
      251 GETTABLEKS                       R38 R39 K58 ["SetInReviewState"]
      253 CALL                             R37 1 1
      254 GETIMPORT                        R38 K5 [require]
      256 GETTABLEKS                       R42 R0 K17 ["Src"]
      258 GETTABLEKS                       R41 R42 K22 ["Thunks"]
      260 GETTABLEKS                       R40 R41 K59 ["Playback"]
      262 GETTABLEKS                       R39 R40 K60 ["StepAnimation"]
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
