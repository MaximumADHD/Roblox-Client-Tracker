PROTO_0:
        0 MOVE                             R2 R0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        3 MOVE                             R4 R2
        4 LOADK                            R5 K0 ["waitForDescendant: instance cannot be nil."]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 0
        8 GETIMPORT                        R3 K4 [ipairs]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 MOVE                             R10 R7
       14 LOADN                            R11 2
       15 NAMECALL                         R8 R2 K5 ["WaitForChild"]
       17 CALL                             R8 3 1
       18 MOVE                             R12 R7
       19 LOADK                            R13 K6 [" was not found under parent "]
       20 NAMECALL                         R16 R2 K7 ["GetFullName"]
       22 CALL                             R16 1 1
       23 MOVE                             R14 R16
       24 LOADK                            R15 K8 ["."]
       25 CONCAT                           R11 R12 R15
       26 FASTCALL2                        ASSERT R8 R11 ; [+4]
       28 MOVE                             R10 R8
       29 GETIMPORT                        R9 K2 [assert]
       31 CALL                             R9 2 0
       32 MOVE                             R2 R8
       33 FORGLOOP                         R3 2 [inext] ; [-21]
       35 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["waitForDescendant"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["AnimationClipEditor"]
        7 LOADK                            R5 K2 ["EditorController"]
        8 SETLIST                          R3 R4 2 [1]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEditorController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["TrackEditor"]
       12 LOADK                            R6 K3 ["DopeSheetController"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getDopeSheetController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["DopeSheetContainer"]
       12 LOADK                            R6 K3 ["DopeSheet"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getDopeSheet"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["waitForDescendant"]
        8 MOVE                             R4 R2
        9 NEWTABLE                         R5 0 2
       11 MOVE                             R6 R1
       12 LOADK                            R7 K2 ["KeyframeDisplayArea"]
       13 SETLIST                          R5 R6 2 [1]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEditorController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 5
       11 LOADK                            R5 K2 ["TrackListAndControlContainer"]
       12 LOADK                            R6 K3 ["EventsAndTracks"]
       13 LOADK                            R7 K4 ["TrackListAndScrollBar"]
       14 LOADK                            R8 K5 ["TrackList"]
       15 LOADK                            R9 K6 ["Canvas"]
       16 SETLIST                          R4 R5 5 [1]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEditorController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["TrackListAndControlContainer"]
       12 LOADK                            R6 K3 ["AnimationControlPanel"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAnimationControlPanel"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 1
       11 LOADK                            R5 K2 ["MediaControls"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getMediaControls"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["waitForDescendant"]
        8 MOVE                             R4 R2
        9 NEWTABLE                         R5 0 4
       11 MOVE                             R6 R1
       12 LOADK                            R7 K2 ["Button"]
       13 LOADK                            R8 K3 ["Contents"]
       14 LOADK                            R9 K4 ["TextButton"]
       15 SETLIST                          R5 R6 4 [1]
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAnimationControlPanel"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 1
       11 LOADK                            R5 K2 ["TimeDisplay"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getTrackList"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 4
       11 LOADK                            R5 K2 ["SummaryTrack"]
       12 LOADK                            R6 K3 ["LeftButtonsListContainer"]
       13 LOADK                            R7 K4 ["IKController"]
       14 LOADK                            R8 K5 ["IKButton"]
       15 SETLIST                          R4 R5 4 [1]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["waitForDescendant"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 1
        6 LOADK                            R4 K1 ["Container"]
        7 SETLIST                          R3 R4 1 [1]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getIKWindow"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["BottomFrame"]
       12 LOADK                            R6 K3 ["EnableIKButton"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getIKWindow"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["TreeView"]
       12 LOADK                            R6 K2 ["TreeView"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getIKTreeView"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["waitForDescendant"]
        8 MOVE                             R4 R2
        9 NEWTABLE                         R5 0 3
       11 LOADK                            R6 K2 ["Contents"]
       12 LOADK                            R7 K3 ["List"]
       13 MOVE                             R8 R1
       14 SETLIST                          R5 R6 3 [1]
       16 CALL                             R3 2 -1
       17 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getTreeViewJoint"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["waitForDescendant"]
        9 MOVE                             R4 R2
       10 NEWTABLE                         R5 0 1
       12 LOADK                            R6 K2 ["Pin"]
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEditorController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 3
       11 LOADK                            R5 K2 ["TrackListAndControlContainer"]
       12 LOADK                            R6 K3 ["EventsAndTracks"]
       13 LOADK                            R7 K4 ["EventsTitle"]
       14 SETLIST                          R4 R5 3 [1]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getDopeSheetController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 4
       11 LOADK                            R5 K2 ["Events"]
       12 LOADK                            R6 K3 ["Track"]
       13 LOADK                            R7 K4 ["Markers"]
       14 LOADK                            R8 K5 ["KeyframeDisplayArea"]
       15 SETLIST                          R4 R5 4 [1]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["waitForDescendant"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 3
        6 LOADK                            R4 K1 ["SolidBackground"]
        7 LOADK                            R5 K2 ["Contents"]
        8 LOADK                            R6 K3 ["Container"]
        9 SETLIST                          R3 R4 3 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getEventsDialogContents"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["waitForDescendant"]
        8 MOVE                             R4 R2
        9 NEWTABLE                         R5 0 1
       11 LOADK                            R7 K2 ["Event_"]
       12 MOVE                             R8 R1
       13 CONCAT                           R6 R7 R8
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 -1
       17 RETURN                           R3 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEventsDialogContents"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["AddNew"]
       12 LOADK                            R6 K3 ["AddEventEntry"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["waitForDescendant"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["SolidBackground"]
        7 LOADK                            R5 K2 ["Contents"]
        8 SETLIST                          R3 R4 2 [1]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getStyledDialogContents"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["KeyframePane"]
       12 LOADK                            R6 K3 ["KeyframesText"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getStyledDialogContents"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 1
       11 LOADK                            R5 K2 ["Slider"]
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["waitForDescendant"]
        3 MOVE                             R3 R0
        4 NEWTABLE                         R4 0 2
        6 LOADK                            R5 K1 ["SolidBackground"]
        7 LOADK                            R6 K2 ["ButtonContainer"]
        8 SETLIST                          R4 R5 2 [1]
       10 CALL                             R2 2 1
       11 GETTABLEN                        R1 R2 1
       12 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["waitForDescendant"]
        3 MOVE                             R3 R0
        4 NEWTABLE                         R4 0 2
        6 LOADK                            R5 K1 ["SolidBackground"]
        7 LOADK                            R6 K2 ["ButtonContainer"]
        8 SETLIST                          R4 R5 2 [1]
       10 CALL                             R2 2 1
       11 GETTABLEN                        R1 R2 2
       12 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEditorController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["TrackEditor"]
       12 LOADK                            R6 K3 ["CurveEditorController"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getCurveEditorController"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["waitForDescendant"]
        8 MOVE                             R3 R1
        9 NEWTABLE                         R4 0 2
       11 LOADK                            R5 K2 ["CanvasContainer"]
       12 LOADK                            R6 K3 ["CurveCanvas"]
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["waitForDescendant"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["getEditorController"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["getDopeSheetController"]
       14 DUPCLOSURE                       R1 K6 [PROTO_3]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K7 ["getDopeSheet"]
       18 DUPCLOSURE                       R1 K8 [PROTO_4]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K9 ["getTrack"]
       22 DUPCLOSURE                       R1 K10 [PROTO_5]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K11 ["getTrackList"]
       26 DUPCLOSURE                       R1 K12 [PROTO_6]
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K13 ["getAnimationControlPanel"]
       30 DUPCLOSURE                       R1 K14 [PROTO_7]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K15 ["getMediaControls"]
       34 DUPCLOSURE                       R1 K16 [PROTO_8]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K17 ["getMediaControlButton"]
       38 DUPCLOSURE                       R1 K18 [PROTO_9]
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K19 ["getTimeDisplay"]
       42 DUPCLOSURE                       R1 K20 [PROTO_10]
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K21 ["getIKButton"]
       46 DUPCLOSURE                       R1 K22 [PROTO_11]
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K23 ["getIKWindow"]
       50 DUPCLOSURE                       R1 K24 [PROTO_12]
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K25 ["getIKEnableButton"]
       54 DUPCLOSURE                       R1 K26 [PROTO_13]
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K27 ["getIKTreeView"]
       58 DUPCLOSURE                       R1 K28 [PROTO_14]
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R1 R0 K29 ["getTreeViewJoint"]
       62 DUPCLOSURE                       R1 K30 [PROTO_15]
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R1 R0 K31 ["getTreeViewJointPin"]
       66 DUPCLOSURE                       R1 K32 [PROTO_16]
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R1 R0 K33 ["getEventsTitleTrack"]
       70 DUPCLOSURE                       R1 K34 [PROTO_17]
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R1 R0 K35 ["getEventsTrack"]
       74 DUPCLOSURE                       R1 K36 [PROTO_18]
       75 CAPTURE                          VAL R0
       76 SETTABLEKS                       R1 R0 K37 ["getEventsDialogContents"]
       78 DUPCLOSURE                       R1 K38 [PROTO_19]
       79 CAPTURE                          VAL R0
       80 SETTABLEKS                       R1 R0 K39 ["getEventEntry"]
       82 DUPCLOSURE                       R1 K40 [PROTO_20]
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R1 R0 K41 ["getAddEventEntry"]
       86 DUPCLOSURE                       R1 K42 [PROTO_21]
       87 CAPTURE                          VAL R0
       88 SETTABLEKS                       R1 R0 K43 ["getStyledDialogContents"]
       90 DUPCLOSURE                       R1 K44 [PROTO_22]
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R1 R0 K45 ["getKFRKeyframesText"]
       94 DUPCLOSURE                       R1 K46 [PROTO_23]
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R1 R0 K47 ["getKFRSlider"]
       98 DUPCLOSURE                       R1 K48 [PROTO_24]
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R1 R0 K49 ["getKFRCancel"]
      102 DUPCLOSURE                       R1 K50 [PROTO_25]
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R1 R0 K51 ["getKFROk"]
      106 DUPCLOSURE                       R1 K52 [PROTO_26]
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R1 R0 K53 ["getCurveEditorController"]
      110 DUPCLOSURE                       R1 K54 [PROTO_27]
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R1 R0 K55 ["getCurveCanvas"]
      114 RETURN                           R0 1
