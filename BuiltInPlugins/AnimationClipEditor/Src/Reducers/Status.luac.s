PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Active"}]
        3 GETTABLEKS                       R5 R1 K2 ["active"]
        5 SETTABLEKS                       R5 R4 K0 ["Active"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"AnimationFromVideoErroredOut"}]
        3 GETTABLEKS                       R5 R1 K2 ["animationFromVideoErroredOut"]
        5 SETTABLEKS                       R5 R4 K0 ["AnimationFromVideoErroredOut"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"AnimationFromVideoUploadStartTime"}]
        3 GETTABLEKS                       R5 R1 K2 ["animationFromVideoUploadStartTime"]
        5 SETTABLEKS                       R5 R4 K0 ["AnimationFromVideoUploadStartTime"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"AnimationImportProgress"}]
        3 GETTABLEKS                       R5 R1 K2 ["animationImportProgress"]
        5 SETTABLEKS                       R5 R4 K0 ["AnimationImportProgress"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"AnimationImportStatus"}]
        3 GETTABLEKS                       R5 R1 K2 ["animationImportStatus"]
        5 SETTABLEKS                       R5 R4 K0 ["AnimationImportStatus"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"AnimationTrack"}]
        3 GETTABLEKS                       R5 R1 K2 ["animationTrack"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["AnimationTrack"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PrevAnimationClip"}]
        3 GETTABLEKS                       R5 R1 K2 ["prevAnimationClip"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["PrevAnimationClip"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"AutoFocusFaceEnabled"}]
        3 GETTABLEKS                       R5 R1 K2 ["autoFocusFaceEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["AutoFocusFaceEnabled"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"VisualizeBones"}]
        3 GETTABLEKS                       R5 R1 K2 ["visualizeBones"]
        5 SETTABLEKS                       R5 R4 K0 ["VisualizeBones"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"Clipboard", "ClipboardType"}]
        3 GETTABLEKS                       R5 R1 K3 ["clipboard"]
        5 SETTABLEKS                       R5 R4 K0 ["Clipboard"]
        7 GETTABLEKS                       R5 R1 K4 ["clipboardType"]
        9 SETTABLEKS                       R5 R4 K1 ["ClipboardType"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"CreatingAnimationFromVideo"}]
        3 GETTABLEKS                       R5 R1 K2 ["creatingAnimationFromVideo"]
        5 SETTABLEKS                       R5 R4 K0 ["CreatingAnimationFromVideo"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"DefaultEulerAnglesOrder"}]
        3 GETTABLEKS                       R5 R1 K2 ["defaultEulerAnglesOrder"]
        5 SETTABLEKS                       R5 R4 K0 ["DefaultEulerAnglesOrder"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"DefaultRotationType"}]
        3 GETTABLEKS                       R5 R1 K2 ["defaultRotationType"]
        5 SETTABLEKS                       R5 R4 K0 ["DefaultRotationType"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"EditingLength"}]
        3 GETTABLEKS                       R5 R1 K2 ["editingLength"]
        5 SETTABLEKS                       R5 R4 K0 ["EditingLength"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"EditorMode", "EditorModeSwitchTime"}]
        3 GETTABLEKS                       R5 R1 K3 ["editorMode"]
        5 SETTABLEKS                       R5 R4 K0 ["EditorMode"]
        7 GETTABLEKS                       R5 R1 K4 ["editorModeSwitchTime"]
        9 SETTABLEKS                       R5 R4 K1 ["EditorModeSwitchTime"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"EventEditingTick"}]
        3 GETTABLEKS                       R5 R1 K2 ["eventEditingTick"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["EventEditingTick"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"FaceControlsEditorOpenedTimestamp"}]
        3 GETTABLEKS                       R5 R1 K0 ["FaceControlsEditorOpenedTimestamp"]
        5 SETTABLEKS                       R5 R4 K0 ["FaceControlsEditorOpenedTimestamp"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"FrameRate"}]
        3 GETTABLEKS                       R5 R1 K2 ["frameRate"]
        5 SETTABLEKS                       R5 R4 K0 ["FrameRate"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"GridSpeed"}]
        3 GETTABLEKS                       R5 R1 K2 ["gridSpeed"]
        5 SETTABLEKS                       R5 R4 K0 ["GridSpeed"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"VisualizeGrid"}]
        3 GETTABLEKS                       R5 R1 K2 ["visualizeGrid"]
        5 SETTABLEKS                       R5 R4 K0 ["VisualizeGrid"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"haveToSetBackToNotLooping"}]
        3 GETTABLEKS                       R5 R1 K0 ["haveToSetBackToNotLooping"]
        5 SETTABLEKS                       R5 R4 K0 ["haveToSetBackToNotLooping"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"HorizontalScroll", "HorizontalZoom"}]
        3 GETTABLEKS                       R5 R1 K3 ["horizontalScroll"]
        5 SETTABLEKS                       R5 R4 K0 ["HorizontalScroll"]
        7 GETTABLEKS                       R5 R1 K4 ["horizontalZoom"]
        9 SETTABLEKS                       R5 R4 K1 ["HorizontalZoom"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IKEnabled"}]
        3 GETTABLEKS                       R5 R1 K2 ["ikEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["IKEnabled"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IKMode"}]
        3 GETTABLEKS                       R5 R1 K2 ["ikMode"]
        5 SETTABLEKS                       R5 R4 K0 ["IKMode"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IKOpenedTimestamp"}]
        3 GETTABLEKS                       R5 R1 K2 ["iKOpenedTimestamp"]
        5 SETTABLEKS                       R5 R4 K0 ["IKOpenedTimestamp"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"inReviewState"}]
        3 GETTABLEKS                       R5 R1 K0 ["inReviewState"]
        5 SETTABLEKS                       R5 R4 K0 ["inReviewState"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IsDirty"}]
        3 GETTABLEKS                       R5 R1 K2 ["isDirty"]
        5 SETTABLEKS                       R5 R4 K0 ["IsDirty"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IsLegacyAnimSaves"}]
        3 GETTABLEKS                       R5 R1 K2 ["isLegacyAnimSaves"]
        5 SETTABLEKS                       R5 R4 K0 ["IsLegacyAnimSaves"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"IsSelectingTarget"}]
        3 GETTABLEKS                       R5 R1 K2 ["isSelectingTarget"]
        5 SETTABLEKS                       R5 R4 K0 ["IsSelectingTarget"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"LastSelectedPath"}]
        3 GETTABLEKS                       R5 R1 K2 ["lastSelectedPath"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["LastSelectedPath"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"LegacyAnimationInstances"}]
        3 GETTABLEKS                       R5 R1 K2 ["legacyAnimationInstances"]
        5 SETTABLEKS                       R5 R4 K0 ["LegacyAnimationInstances"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PinnedParts"}]
        3 GETTABLEKS                       R5 R1 K2 ["pinnedParts"]
        5 SETTABLEKS                       R5 R4 K0 ["PinnedParts"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PlaybackSpeed"}]
        3 GETTABLEKS                       R5 R1 K2 ["playbackSpeed"]
        5 SETTABLEKS                       R5 R4 K0 ["PlaybackSpeed"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PlaybackStartInfo"}]
        3 GETTABLEKS                       R5 R1 K2 ["playbackStartInfo"]
        5 SETTABLEKS                       R5 R4 K0 ["PlaybackStartInfo"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Playhead"}]
        3 GETTABLEKS                       R5 R1 K2 ["playhead"]
        5 SETTABLEKS                       R5 R4 K0 ["Playhead"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+19]
        3 GETTABLEKS                       R2 R1 K0 ["playState"]
        5 GETTABLEKS                       R3 R0 K1 ["PlayState"]
        7 JUMPIFEQ                         R2 R3 ; [+14]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 DUPTABLE                         R4 K3 [{"PlayState", "PlaybackStartInfo"}]
       12 GETTABLEKS                       R5 R1 K0 ["playState"]
       14 SETTABLEKS                       R5 R4 K1 ["PlayState"]
       16 NEWTABLE                         R5 0 0
       18 SETTABLEKS                       R5 R4 K2 ["PlaybackStartInfo"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R0
       24 DUPTABLE                         R4 K4 [{"PlayState"}]
       25 GETTABLEKS                       R5 R1 K0 ["playState"]
       27 SETTABLEKS                       R5 R4 K1 ["PlayState"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ReadOnly"}]
        3 GETTABLEKS                       R5 R1 K2 ["readOnly"]
        5 SETTABLEKS                       R5 R4 K0 ["ReadOnly"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_37:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ReduceKeyframesDialogMode"}]
        3 GETTABLEKS                       R5 R1 K2 ["reduceKeyframesDialogMode"]
        5 SETTABLEKS                       R5 R4 K0 ["ReduceKeyframesDialogMode"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"RightClickContextInfo"}]
        3 GETTABLEKS                       R5 R1 K2 ["rightClickContextInfo"]
        5 SETTABLEKS                       R5 R4 K0 ["RightClickContextInfo"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"RootCFrame"}]
        3 GETTABLEKS                       R5 R1 K2 ["rootCFrame"]
        5 SETTABLEKS                       R5 R4 K0 ["RootCFrame"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"RootCFrameSignal"}]
        3 GETTABLEKS                       R5 R1 K2 ["rootCFrameSignal"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["RootCFrameSignal"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"RootInstance"}]
        3 GETTABLEKS                       R5 R1 K2 ["rootInstance"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["RootInstance"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedEvents"}]
        3 GETTABLEKS                       R5 R1 K2 ["selected"]
        5 SETTABLEKS                       R5 R4 K0 ["SelectedEvents"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedKeyframes"}]
        3 GETTABLEKS                       R5 R1 K2 ["selected"]
        5 SETTABLEKS                       R5 R4 K0 ["SelectedKeyframes"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedTrackInstances"}]
        3 GETTABLEKS                       R5 R1 K2 ["selectedTrackInstances"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["SelectedTrackInstances"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedTracks"}]
        3 GETTABLEKS                       R5 R1 K2 ["selectedTracks"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["SelectedTracks"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ShowEvents"}]
        3 GETTABLEKS                       R5 R1 K2 ["showEvents"]
        5 SETTABLEKS                       R5 R4 K0 ["ShowEvents"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ShowFaceControlsEditorPanel"}]
        3 GETTABLEKS                       R5 R1 K2 ["showFaceControlsEditorPanel"]
        5 SETTABLEKS                       R5 R4 K0 ["ShowFaceControlsEditorPanel"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ShowTree"}]
        3 GETTABLEKS                       R5 R1 K2 ["showTree"]
        5 SETTABLEKS                       R5 R4 K0 ["ShowTree"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_49:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SnapMode"}]
        3 GETTABLEKS                       R5 R1 K2 ["snapMode"]
        5 SETTABLEKS                       R5 R4 K0 ["SnapMode"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"StartingPose"}]
        3 GETTABLEKS                       R5 R1 K2 ["startingPose"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["StartingPose"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SymmetryEnabled"}]
        3 GETTABLEKS                       R5 R1 K2 ["symmetryEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["SymmetryEnabled"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"TimelineUnit"}]
        3 GETTABLEKS                       R5 R1 K2 ["timelineUnit"]
        5 SETTABLEKS                       R5 R4 K0 ["TimelineUnit"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Tool"}]
        3 GETTABLEKS                       R5 R1 K2 ["tool"]
        5 SETTABLEKS                       R5 R4 K0 ["Tool"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"TopTrackIndex"}]
        3 GETTABLEKS                       R5 R1 K2 ["topTrackIndex"]
        5 SETTABLEKS                       R5 R4 K0 ["TopTrackIndex"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K3 [{"Tracks", "UnusedTracks", "UnusedFacs"}]
        3 GETTABLEKS                       R5 R1 K4 ["tracks"]
        5 SETTABLEKS                       R5 R4 K0 ["Tracks"]
        7 GETTABLEKS                       R5 R1 K5 ["unusedTracks"]
        9 SETTABLEKS                       R5 R4 K1 ["UnusedTracks"]
       11 GETTABLEKS                       R5 R1 K6 ["unusedFacs"]
       13 SETTABLEKS                       R5 R4 K2 ["UnusedFacs"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"VerticalScroll", "VerticalZoom"}]
        3 GETTABLEKS                       R5 R1 K3 ["verticalScroll"]
        5 SETTABLEKS                       R5 R4 K0 ["VerticalScroll"]
        7 GETTABLEKS                       R5 R1 K4 ["verticalZoom"]
        9 SETTABLEKS                       R5 R4 K1 ["VerticalZoom"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"WorldSpace"}]
        3 GETTABLEKS                       R6 R0 K0 ["WorldSpace"]
        5 NOT                              R5 R6
        6 SETTABLEKS                       R5 R4 K0 ["WorldSpace"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_58:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"TestCurveEditorScrollMin", "TestCurveEditorScrollMax"}]
        3 GETTABLEKS                       R5 R1 K3 ["testCurveEditorScrollMin"]
        5 SETTABLEKS                       R5 R4 K0 ["TestCurveEditorScrollMin"]
        7 GETTABLEKS                       R5 R1 K4 ["testCurveEditorScrollMax"]
        9 SETTABLEKS                       R5 R4 K1 ["TestCurveEditorScrollMax"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Dictionary"]
       23 GETTABLEKS                       R3 R3 K10 ["join"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Util"]
       31 GETTABLEKS                       R5 R5 K13 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagACEResetPlaybackOnPlayStateChange"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R1 K16 ["createReducer"]
       45 NEWTABLE                         R7 64 0
       47 LOADB                            R8 0
       48 SETTABLEKS                       R8 R7 K17 ["Active"]
       50 LOADB                            R8 0
       51 SETTABLEKS                       R8 R7 K18 ["AnimationFromVideoErroredOut"]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K19 ["AnimationFromVideoUploadStartTime"]
       56 LOADN                            R8 0
       57 SETTABLEKS                       R8 R7 K20 ["AnimationImportProgress"]
       59 GETTABLEKS                       R8 R4 K21 ["ANIMATION_FROM_VIDEO_STATUS"]
       61 GETTABLEKS                       R8 R8 K22 ["Initializing"]
       63 SETTABLEKS                       R8 R7 K23 ["AnimationImportStatus"]
       65 LOADNIL                          R8
       66 SETTABLEKS                       R8 R7 K24 ["AnimationTrack"]
       68 LOADB                            R8 0
       69 SETTABLEKS                       R8 R7 K25 ["AutoFocusFaceEnabled"]
       71 NEWTABLE                         R8 0 0
       73 SETTABLEKS                       R8 R7 K26 ["Clipboard"]
       75 LOADNIL                          R8
       76 SETTABLEKS                       R8 R7 K27 ["ClipboardType"]
       78 LOADB                            R8 0
       79 SETTABLEKS                       R8 R7 K28 ["CreatingAnimationFromVideo"]
       81 GETIMPORT                        R8 K32 [Enum.RotationOrder.XYZ]
       83 SETTABLEKS                       R8 R7 K33 ["DefaultEulerAnglesOrder"]
       85 GETTABLEKS                       R8 R4 K34 ["DEFAULT_ROTATION_TYPE"]
       87 SETTABLEKS                       R8 R7 K35 ["DefaultRotationType"]
       89 LOADN                            R8 0
       90 SETTABLEKS                       R8 R7 K36 ["EditingLength"]
       92 GETTABLEKS                       R8 R4 K37 ["EDITOR_MODE"]
       94 GETTABLEKS                       R8 R8 K38 ["DopeSheet"]
       96 SETTABLEKS                       R8 R7 K39 ["EditorMode"]
       98 LOADNIL                          R8
       99 SETTABLEKS                       R8 R7 K40 ["EditorModeSwitchTime"]
      101 LOADNIL                          R8
      102 SETTABLEKS                       R8 R7 K41 ["EventEditingTick"]
      104 LOADNIL                          R8
      105 SETTABLEKS                       R8 R7 K42 ["FaceControlsEditorOpenedTimestamp"]
      107 GETTABLEKS                       R8 R4 K43 ["DEFAULT_FRAMERATE"]
      109 SETTABLEKS                       R8 R7 K44 ["FrameRate"]
      111 LOADN                            R8 0
      112 SETTABLEKS                       R8 R7 K45 ["GridSpeed"]
      114 LOADB                            R8 0
      115 SETTABLEKS                       R8 R7 K46 ["haveToSetBackToNotLooping"]
      117 LOADN                            R8 0
      118 SETTABLEKS                       R8 R7 K47 ["HorizontalScroll"]
      120 LOADN                            R8 0
      121 SETTABLEKS                       R8 R7 K48 ["HorizontalZoom"]
      123 LOADB                            R8 0
      124 SETTABLEKS                       R8 R7 K49 ["IgnoreRootCFrameSignal"]
      126 LOADB                            R8 0
      127 SETTABLEKS                       R8 R7 K50 ["IKEnabled"]
      129 GETTABLEKS                       R8 R4 K51 ["IK_MODE"]
      131 GETTABLEKS                       R8 R8 K52 ["FullBody"]
      133 SETTABLEKS                       R8 R7 K53 ["IKMode"]
      135 LOADNIL                          R8
      136 SETTABLEKS                       R8 R7 K54 ["IKOpenedTimestamp"]
      138 LOADB                            R8 0
      139 SETTABLEKS                       R8 R7 K55 ["inReviewState"]
      141 LOADB                            R8 0
      142 SETTABLEKS                       R8 R7 K56 ["IsDirty"]
      144 LOADB                            R8 0
      145 SETTABLEKS                       R8 R7 K57 ["IsLegacyAnimSaves"]
      147 LOADB                            R8 0
      148 SETTABLEKS                       R8 R7 K58 ["IsSelectingTarget"]
      150 LOADNIL                          R8
      151 SETTABLEKS                       R8 R7 K59 ["LastSelectedPath"]
      153 NEWTABLE                         R8 0 0
      155 SETTABLEKS                       R8 R7 K60 ["LegacyAnimationInstances"]
      157 NEWTABLE                         R8 0 0
      159 SETTABLEKS                       R8 R7 K61 ["PinnedParts"]
      161 LOADN                            R8 1
      162 SETTABLEKS                       R8 R7 K62 ["PlaybackSpeed"]
      164 NEWTABLE                         R8 0 0
      166 SETTABLEKS                       R8 R7 K63 ["PlaybackStartInfo"]
      168 LOADN                            R8 0
      169 SETTABLEKS                       R8 R7 K64 ["Playhead"]
      171 GETTABLEKS                       R8 R4 K65 ["PLAY_STATE"]
      173 GETTABLEKS                       R8 R8 K66 ["Pause"]
      175 SETTABLEKS                       R8 R7 K67 ["PlayState"]
      177 LOADB                            R8 0
      178 SETTABLEKS                       R8 R7 K68 ["ReadOnly"]
      180 GETTABLEKS                       R8 R4 K69 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
      182 GETTABLEKS                       R8 R8 K70 ["Hidden"]
      184 SETTABLEKS                       R8 R7 K71 ["ReduceKeyframesDialogMode"]
      186 NEWTABLE                         R8 0 0
      188 SETTABLEKS                       R8 R7 K72 ["RightClickContextInfo"]
      190 LOADNIL                          R8
      191 SETTABLEKS                       R8 R7 K73 ["RootCFrame"]
      193 LOADNIL                          R8
      194 SETTABLEKS                       R8 R7 K74 ["RootCFrameSignal"]
      196 LOADNIL                          R8
      197 SETTABLEKS                       R8 R7 K75 ["RootInstance"]
      199 NEWTABLE                         R8 0 0
      201 SETTABLEKS                       R8 R7 K76 ["SelectedEvents"]
      203 NEWTABLE                         R8 0 0
      205 SETTABLEKS                       R8 R7 K77 ["SelectedKeyframes"]
      207 LOADNIL                          R8
      208 SETTABLEKS                       R8 R7 K78 ["SelectedTracks"]
      210 LOADB                            R8 1
      211 SETTABLEKS                       R8 R7 K79 ["ShowEvents"]
      213 LOADB                            R8 0
      214 SETTABLEKS                       R8 R7 K80 ["ShowFaceControlsEditorPanel"]
      216 LOADB                            R8 0
      217 SETTABLEKS                       R8 R7 K81 ["ShowTree"]
      219 GETTABLEKS                       R8 R4 K82 ["SNAP_MODES"]
      221 GETTABLEKS                       R8 R8 K83 ["Frames"]
      223 SETTABLEKS                       R8 R7 K84 ["SnapMode"]
      225 LOADB                            R8 0
      226 SETTABLEKS                       R8 R7 K85 ["SymmetryEnabled"]
      228 GETTABLEKS                       R8 R4 K86 ["TIMELINE_UNITS"]
      230 GETTABLEKS                       R8 R8 K87 ["SecondsDecimal"]
      232 SETTABLEKS                       R8 R7 K88 ["TimelineUnit"]
      234 GETIMPORT                        R8 K91 [Enum.RibbonTool.Rotate]
      236 SETTABLEKS                       R8 R7 K92 ["Tool"]
      238 LOADN                            R8 1
      239 SETTABLEKS                       R8 R7 K93 ["TopTrackIndex"]
      241 NEWTABLE                         R8 0 0
      243 SETTABLEKS                       R8 R7 K94 ["Tracks"]
      245 NEWTABLE                         R8 0 0
      247 SETTABLEKS                       R8 R7 K95 ["UnusedFacs"]
      249 NEWTABLE                         R8 0 0
      251 SETTABLEKS                       R8 R7 K96 ["UnusedTracks"]
      253 LOADN                            R8 0
      254 SETTABLEKS                       R8 R7 K97 ["VerticalScroll"]
      256 LOADN                            R8 0
      257 SETTABLEKS                       R8 R7 K98 ["VerticalZoom"]
      259 LOADB                            R8 1
      260 SETTABLEKS                       R8 R7 K99 ["VisualizeBones"]
      262 LOADB                            R8 1
      263 SETTABLEKS                       R8 R7 K100 ["VisualizeGrid"]
      265 LOADB                            R8 0
      266 SETTABLEKS                       R8 R7 K101 ["WorldSpace"]
      268 LOADN                            R8 0
      269 SETTABLEKS                       R8 R7 K102 ["TestCurveEditorScrollMin"]
      271 LOADN                            R8 0
      272 SETTABLEKS                       R8 R7 K103 ["TestCurveEditorScrollMax"]
      274 NEWTABLE                         R8 64 0
      276 DUPCLOSURE                       R9 K104 [PROTO_0]
      277 CAPTURE                          VAL R3
      278 SETTABLEKS                       R9 R8 K105 ["SetActive"]
      280 DUPCLOSURE                       R9 K106 [PROTO_1]
      281 CAPTURE                          VAL R3
      282 SETTABLEKS                       R9 R8 K107 ["SetAnimationFromVideoErroredOut"]
      284 DUPCLOSURE                       R9 K108 [PROTO_2]
      285 CAPTURE                          VAL R3
      286 SETTABLEKS                       R9 R8 K109 ["SetAnimationFromVideoUploadStartTime"]
      288 DUPCLOSURE                       R9 K110 [PROTO_3]
      289 CAPTURE                          VAL R3
      290 SETTABLEKS                       R9 R8 K111 ["SetAnimationImportProgress"]
      292 DUPCLOSURE                       R9 K112 [PROTO_4]
      293 CAPTURE                          VAL R3
      294 SETTABLEKS                       R9 R8 K113 ["SetAnimationImportStatus"]
      296 DUPCLOSURE                       R9 K114 [PROTO_5]
      297 CAPTURE                          VAL R3
      298 CAPTURE                          VAL R2
      299 SETTABLEKS                       R9 R8 K115 ["SetAnimationTrack"]
      301 DUPCLOSURE                       R9 K116 [PROTO_6]
      302 CAPTURE                          VAL R3
      303 CAPTURE                          VAL R2
      304 SETTABLEKS                       R9 R8 K117 ["SetPrevAnimationClip"]
      306 DUPCLOSURE                       R9 K118 [PROTO_7]
      307 CAPTURE                          VAL R3
      308 SETTABLEKS                       R9 R8 K119 ["SetAutoFocusFaceEnabled"]
      310 DUPCLOSURE                       R9 K120 [PROTO_8]
      311 CAPTURE                          VAL R3
      312 SETTABLEKS                       R9 R8 K121 ["SetBoneVisualization"]
      314 DUPCLOSURE                       R9 K122 [PROTO_9]
      315 CAPTURE                          VAL R3
      316 SETTABLEKS                       R9 R8 K123 ["SetClipboard"]
      318 DUPCLOSURE                       R9 K124 [PROTO_10]
      319 CAPTURE                          VAL R3
      320 SETTABLEKS                       R9 R8 K125 ["SetCreatingAnimationFromVideo"]
      322 DUPCLOSURE                       R9 K126 [PROTO_11]
      323 CAPTURE                          VAL R3
      324 SETTABLEKS                       R9 R8 K127 ["SetDefaultEulerAnglesOrder"]
      326 DUPCLOSURE                       R9 K128 [PROTO_12]
      327 CAPTURE                          VAL R3
      328 SETTABLEKS                       R9 R8 K129 ["SetDefaultRotationType"]
      330 DUPCLOSURE                       R9 K130 [PROTO_13]
      331 CAPTURE                          VAL R3
      332 SETTABLEKS                       R9 R8 K131 ["SetEditingLength"]
      334 DUPCLOSURE                       R9 K132 [PROTO_14]
      335 CAPTURE                          VAL R3
      336 SETTABLEKS                       R9 R8 K133 ["SetEditorMode"]
      338 DUPCLOSURE                       R10 K135 [PROTO_15]
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R2
      341 ORK                              R9 R10 K134 []
      342 SETTABLEKS                       R9 R8 K136 ["SetEventEditingTick"]
      344 DUPCLOSURE                       R9 K137 [PROTO_16]
      345 CAPTURE                          VAL R3
      346 SETTABLEKS                       R9 R8 K138 ["SetFaceControlsEditorOpenedTimestamp"]
      348 DUPCLOSURE                       R9 K139 [PROTO_17]
      349 CAPTURE                          VAL R3
      350 SETTABLEKS                       R9 R8 K140 ["SetFrameRate"]
      352 DUPCLOSURE                       R9 K141 [PROTO_18]
      353 CAPTURE                          VAL R3
      354 SETTABLEKS                       R9 R8 K142 ["SetGridSpeed"]
      356 DUPCLOSURE                       R9 K143 [PROTO_19]
      357 CAPTURE                          VAL R3
      358 SETTABLEKS                       R9 R8 K144 ["SetGridVisualization"]
      360 DUPCLOSURE                       R9 K145 [PROTO_20]
      361 CAPTURE                          VAL R3
      362 SETTABLEKS                       R9 R8 K146 ["SetHaveToSetBackToNotLooping"]
      364 DUPCLOSURE                       R9 K147 [PROTO_21]
      365 CAPTURE                          VAL R3
      366 SETTABLEKS                       R9 R8 K148 ["SetHorizontalScrollZoom"]
      368 DUPCLOSURE                       R9 K149 [PROTO_22]
      369 CAPTURE                          VAL R3
      370 SETTABLEKS                       R9 R8 K150 ["SetIKEnabled"]
      372 DUPCLOSURE                       R9 K151 [PROTO_23]
      373 CAPTURE                          VAL R3
      374 SETTABLEKS                       R9 R8 K152 ["SetIKMode"]
      376 DUPCLOSURE                       R9 K153 [PROTO_24]
      377 CAPTURE                          VAL R3
      378 SETTABLEKS                       R9 R8 K154 ["SetIKOpenedTimestamp"]
      380 DUPCLOSURE                       R9 K155 [PROTO_25]
      381 CAPTURE                          VAL R3
      382 SETTABLEKS                       R9 R8 K156 ["SetInReviewState"]
      384 DUPCLOSURE                       R9 K157 [PROTO_26]
      385 CAPTURE                          VAL R3
      386 SETTABLEKS                       R9 R8 K158 ["SetIsDirty"]
      388 DUPCLOSURE                       R9 K159 [PROTO_27]
      389 CAPTURE                          VAL R3
      390 SETTABLEKS                       R9 R8 K160 ["SetIsLegacyAnimSaves"]
      392 DUPCLOSURE                       R9 K161 [PROTO_28]
      393 CAPTURE                          VAL R3
      394 SETTABLEKS                       R9 R8 K162 ["SetIsSelectingTarget"]
      396 DUPCLOSURE                       R9 K163 [PROTO_29]
      397 CAPTURE                          VAL R3
      398 CAPTURE                          VAL R2
      399 SETTABLEKS                       R9 R8 K164 ["SetLastSelectedPath"]
      401 DUPCLOSURE                       R9 K165 [PROTO_30]
      402 CAPTURE                          VAL R3
      403 SETTABLEKS                       R9 R8 K166 ["SetLegacyAnimationInstances"]
      405 DUPCLOSURE                       R9 K167 [PROTO_31]
      406 CAPTURE                          VAL R3
      407 SETTABLEKS                       R9 R8 K168 ["SetPinnedParts"]
      409 DUPCLOSURE                       R9 K169 [PROTO_32]
      410 CAPTURE                          VAL R3
      411 SETTABLEKS                       R9 R8 K170 ["SetPlaybackSpeed"]
      413 DUPCLOSURE                       R9 K171 [PROTO_33]
      414 CAPTURE                          VAL R3
      415 SETTABLEKS                       R9 R8 K172 ["SetPlaybackStartInfo"]
      417 DUPCLOSURE                       R9 K173 [PROTO_34]
      418 CAPTURE                          VAL R3
      419 SETTABLEKS                       R9 R8 K174 ["SetPlayhead"]
      421 DUPCLOSURE                       R9 K175 [PROTO_35]
      422 CAPTURE                          VAL R5
      423 CAPTURE                          VAL R3
      424 SETTABLEKS                       R9 R8 K176 ["SetPlayState"]
      426 DUPCLOSURE                       R9 K177 [PROTO_36]
      427 CAPTURE                          VAL R3
      428 SETTABLEKS                       R9 R8 K178 ["SetReadOnly"]
      430 DUPCLOSURE                       R9 K179 [PROTO_37]
      431 CAPTURE                          VAL R3
      432 SETTABLEKS                       R9 R8 K180 ["SetReduceKeyframesDialogMode"]
      434 DUPCLOSURE                       R9 K181 [PROTO_38]
      435 CAPTURE                          VAL R3
      436 SETTABLEKS                       R9 R8 K182 ["SetRightClickContextInfo"]
      438 DUPCLOSURE                       R9 K183 [PROTO_39]
      439 CAPTURE                          VAL R3
      440 SETTABLEKS                       R9 R8 K184 ["SetRootCFrame"]
      442 DUPCLOSURE                       R9 K185 [PROTO_40]
      443 CAPTURE                          VAL R3
      444 CAPTURE                          VAL R2
      445 SETTABLEKS                       R9 R8 K186 ["SetRootCFrameSignal"]
      447 DUPCLOSURE                       R9 K187 [PROTO_41]
      448 CAPTURE                          VAL R3
      449 CAPTURE                          VAL R2
      450 SETTABLEKS                       R9 R8 K188 ["SetRootInstance"]
      452 DUPCLOSURE                       R9 K189 [PROTO_42]
      453 CAPTURE                          VAL R3
      454 SETTABLEKS                       R9 R8 K190 ["SetSelectedEvents"]
      456 DUPCLOSURE                       R9 K191 [PROTO_43]
      457 CAPTURE                          VAL R3
      458 SETTABLEKS                       R9 R8 K192 ["SetSelectedKeyframes"]
      460 DUPCLOSURE                       R9 K193 [PROTO_44]
      461 CAPTURE                          VAL R3
      462 CAPTURE                          VAL R2
      463 SETTABLEKS                       R9 R8 K194 ["SetSelectedTrackInstances"]
      465 DUPCLOSURE                       R9 K195 [PROTO_45]
      466 CAPTURE                          VAL R3
      467 CAPTURE                          VAL R2
      468 SETTABLEKS                       R9 R8 K196 ["SetSelectedTracks"]
      470 DUPCLOSURE                       R9 K197 [PROTO_46]
      471 CAPTURE                          VAL R3
      472 SETTABLEKS                       R9 R8 K198 ["SetShowEvents"]
      474 DUPCLOSURE                       R9 K199 [PROTO_47]
      475 CAPTURE                          VAL R3
      476 SETTABLEKS                       R9 R8 K200 ["SetShowFaceControlsEditorPanel"]
      478 DUPCLOSURE                       R9 K201 [PROTO_48]
      479 CAPTURE                          VAL R3
      480 SETTABLEKS                       R9 R8 K202 ["SetShowTree"]
      482 DUPCLOSURE                       R9 K203 [PROTO_49]
      483 CAPTURE                          VAL R3
      484 SETTABLEKS                       R9 R8 K204 ["SetSnapMode"]
      486 DUPCLOSURE                       R9 K205 [PROTO_50]
      487 CAPTURE                          VAL R3
      488 CAPTURE                          VAL R2
      489 SETTABLEKS                       R9 R8 K206 ["SetStartingPose"]
      491 DUPCLOSURE                       R9 K207 [PROTO_51]
      492 CAPTURE                          VAL R3
      493 SETTABLEKS                       R9 R8 K208 ["SetSymmetryEnabled"]
      495 DUPCLOSURE                       R9 K209 [PROTO_52]
      496 CAPTURE                          VAL R3
      497 SETTABLEKS                       R9 R8 K210 ["SetTimelineUnit"]
      499 DUPCLOSURE                       R9 K211 [PROTO_53]
      500 CAPTURE                          VAL R3
      501 SETTABLEKS                       R9 R8 K212 ["SetTool"]
      503 DUPCLOSURE                       R9 K213 [PROTO_54]
      504 CAPTURE                          VAL R3
      505 SETTABLEKS                       R9 R8 K214 ["SetTopTrackIndex"]
      507 DUPCLOSURE                       R9 K215 [PROTO_55]
      508 CAPTURE                          VAL R3
      509 SETTABLEKS                       R9 R8 K216 ["SetTracks"]
      511 DUPCLOSURE                       R9 K217 [PROTO_56]
      512 CAPTURE                          VAL R3
      513 SETTABLEKS                       R9 R8 K218 ["SetVerticalScrollZoom"]
      515 DUPCLOSURE                       R9 K219 [PROTO_57]
      516 CAPTURE                          VAL R3
      517 SETTABLEKS                       R9 R8 K220 ["ToggleWorldSpace"]
      519 DUPCLOSURE                       R9 K221 [PROTO_58]
      520 CAPTURE                          VAL R3
      521 SETTABLEKS                       R9 R8 K222 ["TestSetCurveEditorScroll"]
      523 CALL                             R6 2 -1
      524 RETURN                           R6 -1
