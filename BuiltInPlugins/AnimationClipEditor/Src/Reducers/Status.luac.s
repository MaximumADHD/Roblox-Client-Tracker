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
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PlayState"}]
        3 GETTABLEKS                       R5 R1 K2 ["playState"]
        5 SETTABLEKS                       R5 R4 K0 ["PlayState"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

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
        2 DUPTABLE                         R4 K1 [{"RootInstance"}]
        3 GETTABLEKS                       R5 R1 K2 ["rootInstance"]
        5 JUMPIF                           R5 ; [+3]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K3 ["None"]
        9 SETTABLEKS                       R5 R4 K0 ["RootInstance"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedEvents"}]
        3 GETTABLEKS                       R5 R1 K2 ["selected"]
        5 SETTABLEKS                       R5 R4 K0 ["SelectedEvents"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedKeyframes"}]
        3 GETTABLEKS                       R5 R1 K2 ["selected"]
        5 SETTABLEKS                       R5 R4 K0 ["SelectedKeyframes"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_42:
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

PROTO_43:
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

PROTO_44:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ShowEvents"}]
        3 GETTABLEKS                       R5 R1 K2 ["showEvents"]
        5 SETTABLEKS                       R5 R4 K0 ["ShowEvents"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_45:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ShowFaceControlsEditorPanel"}]
        3 GETTABLEKS                       R5 R1 K2 ["showFaceControlsEditorPanel"]
        5 SETTABLEKS                       R5 R4 K0 ["ShowFaceControlsEditorPanel"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_46:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ShowTree"}]
        3 GETTABLEKS                       R5 R1 K2 ["showTree"]
        5 SETTABLEKS                       R5 R4 K0 ["ShowTree"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SnapMode"}]
        3 GETTABLEKS                       R5 R1 K2 ["snapMode"]
        5 SETTABLEKS                       R5 R4 K0 ["SnapMode"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_48:
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

PROTO_49:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SymmetryEnabled"}]
        3 GETTABLEKS                       R5 R1 K2 ["symmetryEnabled"]
        5 SETTABLEKS                       R5 R4 K0 ["SymmetryEnabled"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"TimelineUnit"}]
        3 GETTABLEKS                       R5 R1 K2 ["timelineUnit"]
        5 SETTABLEKS                       R5 R4 K0 ["TimelineUnit"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Tool"}]
        3 GETTABLEKS                       R5 R1 K2 ["tool"]
        5 SETTABLEKS                       R5 R4 K0 ["Tool"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"TopTrackIndex"}]
        3 GETTABLEKS                       R5 R1 K2 ["topTrackIndex"]
        5 SETTABLEKS                       R5 R4 K0 ["TopTrackIndex"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_53:
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

PROTO_54:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"VerticalScroll", "VerticalZoom"}]
        3 GETTABLEKS                       R5 R1 K3 ["verticalScroll"]
        5 SETTABLEKS                       R5 R4 K0 ["VerticalScroll"]
        7 GETTABLEKS                       R5 R1 K4 ["verticalZoom"]
        9 SETTABLEKS                       R5 R4 K1 ["VerticalZoom"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"WorldSpace"}]
        3 GETTABLEKS                       R6 R0 K0 ["WorldSpace"]
        5 NOT                              R5 R6
        6 SETTABLEKS                       R5 R4 K0 ["WorldSpace"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_56:
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
       34 GETTABLEKS                       R5 R1 K14 ["createReducer"]
       36 NEWTABLE                         R6 64 0
       38 LOADB                            R7 0
       39 SETTABLEKS                       R7 R6 K15 ["Active"]
       41 LOADB                            R7 0
       42 SETTABLEKS                       R7 R6 K16 ["AnimationFromVideoErroredOut"]
       44 LOADNIL                          R7
       45 SETTABLEKS                       R7 R6 K17 ["AnimationFromVideoUploadStartTime"]
       47 LOADN                            R7 0
       48 SETTABLEKS                       R7 R6 K18 ["AnimationImportProgress"]
       50 GETTABLEKS                       R7 R4 K19 ["ANIMATION_FROM_VIDEO_STATUS"]
       52 GETTABLEKS                       R7 R7 K20 ["Initializing"]
       54 SETTABLEKS                       R7 R6 K21 ["AnimationImportStatus"]
       56 LOADNIL                          R7
       57 SETTABLEKS                       R7 R6 K22 ["AnimationTrack"]
       59 LOADB                            R7 0
       60 SETTABLEKS                       R7 R6 K23 ["AutoFocusFaceEnabled"]
       62 NEWTABLE                         R7 0 0
       64 SETTABLEKS                       R7 R6 K24 ["Clipboard"]
       66 LOADNIL                          R7
       67 SETTABLEKS                       R7 R6 K25 ["ClipboardType"]
       69 LOADB                            R7 0
       70 SETTABLEKS                       R7 R6 K26 ["CreatingAnimationFromVideo"]
       72 GETIMPORT                        R7 K30 [Enum.RotationOrder.XYZ]
       74 SETTABLEKS                       R7 R6 K31 ["DefaultEulerAnglesOrder"]
       76 GETTABLEKS                       R7 R4 K32 ["DEFAULT_ROTATION_TYPE"]
       78 SETTABLEKS                       R7 R6 K33 ["DefaultRotationType"]
       80 LOADN                            R7 0
       81 SETTABLEKS                       R7 R6 K34 ["EditingLength"]
       83 GETTABLEKS                       R7 R4 K35 ["EDITOR_MODE"]
       85 GETTABLEKS                       R7 R7 K36 ["DopeSheet"]
       87 SETTABLEKS                       R7 R6 K37 ["EditorMode"]
       89 LOADNIL                          R7
       90 SETTABLEKS                       R7 R6 K38 ["EditorModeSwitchTime"]
       92 LOADNIL                          R7
       93 SETTABLEKS                       R7 R6 K39 ["EventEditingTick"]
       95 LOADNIL                          R7
       96 SETTABLEKS                       R7 R6 K40 ["FaceControlsEditorOpenedTimestamp"]
       98 GETTABLEKS                       R7 R4 K41 ["DEFAULT_FRAMERATE"]
      100 SETTABLEKS                       R7 R6 K42 ["FrameRate"]
      102 LOADN                            R7 0
      103 SETTABLEKS                       R7 R6 K43 ["GridSpeed"]
      105 LOADB                            R7 0
      106 SETTABLEKS                       R7 R6 K44 ["haveToSetBackToNotLooping"]
      108 LOADN                            R7 0
      109 SETTABLEKS                       R7 R6 K45 ["HorizontalScroll"]
      111 LOADN                            R7 0
      112 SETTABLEKS                       R7 R6 K46 ["HorizontalZoom"]
      114 LOADB                            R7 0
      115 SETTABLEKS                       R7 R6 K47 ["IKEnabled"]
      117 GETTABLEKS                       R7 R4 K48 ["IK_MODE"]
      119 GETTABLEKS                       R7 R7 K49 ["FullBody"]
      121 SETTABLEKS                       R7 R6 K50 ["IKMode"]
      123 LOADNIL                          R7
      124 SETTABLEKS                       R7 R6 K51 ["IKOpenedTimestamp"]
      126 LOADB                            R7 0
      127 SETTABLEKS                       R7 R6 K52 ["inReviewState"]
      129 LOADB                            R7 0
      130 SETTABLEKS                       R7 R6 K53 ["IsDirty"]
      132 LOADB                            R7 0
      133 SETTABLEKS                       R7 R6 K54 ["IsLegacyAnimSaves"]
      135 LOADB                            R7 0
      136 SETTABLEKS                       R7 R6 K55 ["IsSelectingTarget"]
      138 LOADNIL                          R7
      139 SETTABLEKS                       R7 R6 K56 ["LastSelectedPath"]
      141 NEWTABLE                         R7 0 0
      143 SETTABLEKS                       R7 R6 K57 ["LegacyAnimationInstances"]
      145 NEWTABLE                         R7 0 0
      147 SETTABLEKS                       R7 R6 K58 ["PinnedParts"]
      149 LOADN                            R7 1
      150 SETTABLEKS                       R7 R6 K59 ["PlaybackSpeed"]
      152 NEWTABLE                         R7 0 0
      154 SETTABLEKS                       R7 R6 K60 ["PlaybackStartInfo"]
      156 LOADN                            R7 0
      157 SETTABLEKS                       R7 R6 K61 ["Playhead"]
      159 GETTABLEKS                       R7 R4 K62 ["PLAY_STATE"]
      161 GETTABLEKS                       R7 R7 K63 ["Pause"]
      163 SETTABLEKS                       R7 R6 K64 ["PlayState"]
      165 LOADB                            R7 0
      166 SETTABLEKS                       R7 R6 K65 ["ReadOnly"]
      168 GETTABLEKS                       R7 R4 K66 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
      170 GETTABLEKS                       R7 R7 K67 ["Hidden"]
      172 SETTABLEKS                       R7 R6 K68 ["ReduceKeyframesDialogMode"]
      174 NEWTABLE                         R7 0 0
      176 SETTABLEKS                       R7 R6 K69 ["RightClickContextInfo"]
      178 LOADNIL                          R7
      179 SETTABLEKS                       R7 R6 K70 ["RootInstance"]
      181 NEWTABLE                         R7 0 0
      183 SETTABLEKS                       R7 R6 K71 ["SelectedEvents"]
      185 NEWTABLE                         R7 0 0
      187 SETTABLEKS                       R7 R6 K72 ["SelectedKeyframes"]
      189 LOADNIL                          R7
      190 SETTABLEKS                       R7 R6 K73 ["SelectedTracks"]
      192 LOADB                            R7 1
      193 SETTABLEKS                       R7 R6 K74 ["ShowEvents"]
      195 LOADB                            R7 0
      196 SETTABLEKS                       R7 R6 K75 ["ShowFaceControlsEditorPanel"]
      198 LOADB                            R7 0
      199 SETTABLEKS                       R7 R6 K76 ["ShowTree"]
      201 GETTABLEKS                       R7 R4 K77 ["SNAP_MODES"]
      203 GETTABLEKS                       R7 R7 K78 ["Frames"]
      205 SETTABLEKS                       R7 R6 K79 ["SnapMode"]
      207 LOADB                            R7 0
      208 SETTABLEKS                       R7 R6 K80 ["SymmetryEnabled"]
      210 GETTABLEKS                       R7 R4 K81 ["TIMELINE_UNITS"]
      212 GETTABLEKS                       R7 R7 K82 ["SecondsDecimal"]
      214 SETTABLEKS                       R7 R6 K83 ["TimelineUnit"]
      216 GETIMPORT                        R7 K86 [Enum.RibbonTool.Rotate]
      218 SETTABLEKS                       R7 R6 K87 ["Tool"]
      220 LOADN                            R7 1
      221 SETTABLEKS                       R7 R6 K88 ["TopTrackIndex"]
      223 NEWTABLE                         R7 0 0
      225 SETTABLEKS                       R7 R6 K89 ["Tracks"]
      227 NEWTABLE                         R7 0 0
      229 SETTABLEKS                       R7 R6 K90 ["UnusedFacs"]
      231 NEWTABLE                         R7 0 0
      233 SETTABLEKS                       R7 R6 K91 ["UnusedTracks"]
      235 LOADN                            R7 0
      236 SETTABLEKS                       R7 R6 K92 ["VerticalScroll"]
      238 LOADN                            R7 0
      239 SETTABLEKS                       R7 R6 K93 ["VerticalZoom"]
      241 LOADB                            R7 1
      242 SETTABLEKS                       R7 R6 K94 ["VisualizeBones"]
      244 LOADB                            R7 1
      245 SETTABLEKS                       R7 R6 K95 ["VisualizeGrid"]
      247 LOADB                            R7 0
      248 SETTABLEKS                       R7 R6 K96 ["WorldSpace"]
      250 LOADN                            R7 0
      251 SETTABLEKS                       R7 R6 K97 ["TestCurveEditorScrollMin"]
      253 LOADN                            R7 0
      254 SETTABLEKS                       R7 R6 K98 ["TestCurveEditorScrollMax"]
      256 NEWTABLE                         R7 64 0
      258 DUPCLOSURE                       R8 K99 [PROTO_0]
      259 CAPTURE                          VAL R3
      260 SETTABLEKS                       R8 R7 K100 ["SetActive"]
      262 DUPCLOSURE                       R8 K101 [PROTO_1]
      263 CAPTURE                          VAL R3
      264 SETTABLEKS                       R8 R7 K102 ["SetAnimationFromVideoErroredOut"]
      266 DUPCLOSURE                       R8 K103 [PROTO_2]
      267 CAPTURE                          VAL R3
      268 SETTABLEKS                       R8 R7 K104 ["SetAnimationFromVideoUploadStartTime"]
      270 DUPCLOSURE                       R8 K105 [PROTO_3]
      271 CAPTURE                          VAL R3
      272 SETTABLEKS                       R8 R7 K106 ["SetAnimationImportProgress"]
      274 DUPCLOSURE                       R8 K107 [PROTO_4]
      275 CAPTURE                          VAL R3
      276 SETTABLEKS                       R8 R7 K108 ["SetAnimationImportStatus"]
      278 DUPCLOSURE                       R8 K109 [PROTO_5]
      279 CAPTURE                          VAL R3
      280 CAPTURE                          VAL R2
      281 SETTABLEKS                       R8 R7 K110 ["SetAnimationTrack"]
      283 DUPCLOSURE                       R8 K111 [PROTO_6]
      284 CAPTURE                          VAL R3
      285 CAPTURE                          VAL R2
      286 SETTABLEKS                       R8 R7 K112 ["SetPrevAnimationClip"]
      288 DUPCLOSURE                       R8 K113 [PROTO_7]
      289 CAPTURE                          VAL R3
      290 SETTABLEKS                       R8 R7 K114 ["SetAutoFocusFaceEnabled"]
      292 DUPCLOSURE                       R8 K115 [PROTO_8]
      293 CAPTURE                          VAL R3
      294 SETTABLEKS                       R8 R7 K116 ["SetBoneVisualization"]
      296 DUPCLOSURE                       R8 K117 [PROTO_9]
      297 CAPTURE                          VAL R3
      298 SETTABLEKS                       R8 R7 K118 ["SetClipboard"]
      300 DUPCLOSURE                       R8 K119 [PROTO_10]
      301 CAPTURE                          VAL R3
      302 SETTABLEKS                       R8 R7 K120 ["SetCreatingAnimationFromVideo"]
      304 DUPCLOSURE                       R8 K121 [PROTO_11]
      305 CAPTURE                          VAL R3
      306 SETTABLEKS                       R8 R7 K122 ["SetDefaultEulerAnglesOrder"]
      308 DUPCLOSURE                       R8 K123 [PROTO_12]
      309 CAPTURE                          VAL R3
      310 SETTABLEKS                       R8 R7 K124 ["SetDefaultRotationType"]
      312 DUPCLOSURE                       R8 K125 [PROTO_13]
      313 CAPTURE                          VAL R3
      314 SETTABLEKS                       R8 R7 K126 ["SetEditingLength"]
      316 DUPCLOSURE                       R8 K127 [PROTO_14]
      317 CAPTURE                          VAL R3
      318 SETTABLEKS                       R8 R7 K128 ["SetEditorMode"]
      320 DUPCLOSURE                       R9 K130 [PROTO_15]
      321 CAPTURE                          VAL R3
      322 CAPTURE                          VAL R2
      323 ORK                              R8 R9 K129 []
      324 SETTABLEKS                       R8 R7 K131 ["SetEventEditingTick"]
      326 DUPCLOSURE                       R8 K132 [PROTO_16]
      327 CAPTURE                          VAL R3
      328 SETTABLEKS                       R8 R7 K133 ["SetFaceControlsEditorOpenedTimestamp"]
      330 DUPCLOSURE                       R8 K134 [PROTO_17]
      331 CAPTURE                          VAL R3
      332 SETTABLEKS                       R8 R7 K135 ["SetFrameRate"]
      334 DUPCLOSURE                       R8 K136 [PROTO_18]
      335 CAPTURE                          VAL R3
      336 SETTABLEKS                       R8 R7 K137 ["SetGridSpeed"]
      338 DUPCLOSURE                       R8 K138 [PROTO_19]
      339 CAPTURE                          VAL R3
      340 SETTABLEKS                       R8 R7 K139 ["SetGridVisualization"]
      342 DUPCLOSURE                       R8 K140 [PROTO_20]
      343 CAPTURE                          VAL R3
      344 SETTABLEKS                       R8 R7 K141 ["SetHaveToSetBackToNotLooping"]
      346 DUPCLOSURE                       R8 K142 [PROTO_21]
      347 CAPTURE                          VAL R3
      348 SETTABLEKS                       R8 R7 K143 ["SetHorizontalScrollZoom"]
      350 DUPCLOSURE                       R8 K144 [PROTO_22]
      351 CAPTURE                          VAL R3
      352 SETTABLEKS                       R8 R7 K145 ["SetIKEnabled"]
      354 DUPCLOSURE                       R8 K146 [PROTO_23]
      355 CAPTURE                          VAL R3
      356 SETTABLEKS                       R8 R7 K147 ["SetIKMode"]
      358 DUPCLOSURE                       R8 K148 [PROTO_24]
      359 CAPTURE                          VAL R3
      360 SETTABLEKS                       R8 R7 K149 ["SetIKOpenedTimestamp"]
      362 DUPCLOSURE                       R8 K150 [PROTO_25]
      363 CAPTURE                          VAL R3
      364 SETTABLEKS                       R8 R7 K151 ["SetInReviewState"]
      366 DUPCLOSURE                       R8 K152 [PROTO_26]
      367 CAPTURE                          VAL R3
      368 SETTABLEKS                       R8 R7 K153 ["SetIsDirty"]
      370 DUPCLOSURE                       R8 K154 [PROTO_27]
      371 CAPTURE                          VAL R3
      372 SETTABLEKS                       R8 R7 K155 ["SetIsLegacyAnimSaves"]
      374 DUPCLOSURE                       R8 K156 [PROTO_28]
      375 CAPTURE                          VAL R3
      376 SETTABLEKS                       R8 R7 K157 ["SetIsSelectingTarget"]
      378 DUPCLOSURE                       R8 K158 [PROTO_29]
      379 CAPTURE                          VAL R3
      380 CAPTURE                          VAL R2
      381 SETTABLEKS                       R8 R7 K159 ["SetLastSelectedPath"]
      383 DUPCLOSURE                       R8 K160 [PROTO_30]
      384 CAPTURE                          VAL R3
      385 SETTABLEKS                       R8 R7 K161 ["SetLegacyAnimationInstances"]
      387 DUPCLOSURE                       R8 K162 [PROTO_31]
      388 CAPTURE                          VAL R3
      389 SETTABLEKS                       R8 R7 K163 ["SetPinnedParts"]
      391 DUPCLOSURE                       R8 K164 [PROTO_32]
      392 CAPTURE                          VAL R3
      393 SETTABLEKS                       R8 R7 K165 ["SetPlaybackSpeed"]
      395 DUPCLOSURE                       R8 K166 [PROTO_33]
      396 CAPTURE                          VAL R3
      397 SETTABLEKS                       R8 R7 K167 ["SetPlaybackStartInfo"]
      399 DUPCLOSURE                       R8 K168 [PROTO_34]
      400 CAPTURE                          VAL R3
      401 SETTABLEKS                       R8 R7 K169 ["SetPlayhead"]
      403 DUPCLOSURE                       R8 K170 [PROTO_35]
      404 CAPTURE                          VAL R3
      405 SETTABLEKS                       R8 R7 K171 ["SetPlayState"]
      407 DUPCLOSURE                       R8 K172 [PROTO_36]
      408 CAPTURE                          VAL R3
      409 SETTABLEKS                       R8 R7 K173 ["SetReadOnly"]
      411 DUPCLOSURE                       R8 K174 [PROTO_37]
      412 CAPTURE                          VAL R3
      413 SETTABLEKS                       R8 R7 K175 ["SetReduceKeyframesDialogMode"]
      415 DUPCLOSURE                       R8 K176 [PROTO_38]
      416 CAPTURE                          VAL R3
      417 SETTABLEKS                       R8 R7 K177 ["SetRightClickContextInfo"]
      419 DUPCLOSURE                       R8 K178 [PROTO_39]
      420 CAPTURE                          VAL R3
      421 CAPTURE                          VAL R2
      422 SETTABLEKS                       R8 R7 K179 ["SetRootInstance"]
      424 DUPCLOSURE                       R8 K180 [PROTO_40]
      425 CAPTURE                          VAL R3
      426 SETTABLEKS                       R8 R7 K181 ["SetSelectedEvents"]
      428 DUPCLOSURE                       R8 K182 [PROTO_41]
      429 CAPTURE                          VAL R3
      430 SETTABLEKS                       R8 R7 K183 ["SetSelectedKeyframes"]
      432 DUPCLOSURE                       R8 K184 [PROTO_42]
      433 CAPTURE                          VAL R3
      434 CAPTURE                          VAL R2
      435 SETTABLEKS                       R8 R7 K185 ["SetSelectedTrackInstances"]
      437 DUPCLOSURE                       R8 K186 [PROTO_43]
      438 CAPTURE                          VAL R3
      439 CAPTURE                          VAL R2
      440 SETTABLEKS                       R8 R7 K187 ["SetSelectedTracks"]
      442 DUPCLOSURE                       R8 K188 [PROTO_44]
      443 CAPTURE                          VAL R3
      444 SETTABLEKS                       R8 R7 K189 ["SetShowEvents"]
      446 DUPCLOSURE                       R8 K190 [PROTO_45]
      447 CAPTURE                          VAL R3
      448 SETTABLEKS                       R8 R7 K191 ["SetShowFaceControlsEditorPanel"]
      450 DUPCLOSURE                       R8 K192 [PROTO_46]
      451 CAPTURE                          VAL R3
      452 SETTABLEKS                       R8 R7 K193 ["SetShowTree"]
      454 DUPCLOSURE                       R8 K194 [PROTO_47]
      455 CAPTURE                          VAL R3
      456 SETTABLEKS                       R8 R7 K195 ["SetSnapMode"]
      458 DUPCLOSURE                       R8 K196 [PROTO_48]
      459 CAPTURE                          VAL R3
      460 CAPTURE                          VAL R2
      461 SETTABLEKS                       R8 R7 K197 ["SetStartingPose"]
      463 DUPCLOSURE                       R8 K198 [PROTO_49]
      464 CAPTURE                          VAL R3
      465 SETTABLEKS                       R8 R7 K199 ["SetSymmetryEnabled"]
      467 DUPCLOSURE                       R8 K200 [PROTO_50]
      468 CAPTURE                          VAL R3
      469 SETTABLEKS                       R8 R7 K201 ["SetTimelineUnit"]
      471 DUPCLOSURE                       R8 K202 [PROTO_51]
      472 CAPTURE                          VAL R3
      473 SETTABLEKS                       R8 R7 K203 ["SetTool"]
      475 DUPCLOSURE                       R8 K204 [PROTO_52]
      476 CAPTURE                          VAL R3
      477 SETTABLEKS                       R8 R7 K205 ["SetTopTrackIndex"]
      479 DUPCLOSURE                       R8 K206 [PROTO_53]
      480 CAPTURE                          VAL R3
      481 SETTABLEKS                       R8 R7 K207 ["SetTracks"]
      483 DUPCLOSURE                       R8 K208 [PROTO_54]
      484 CAPTURE                          VAL R3
      485 SETTABLEKS                       R8 R7 K209 ["SetVerticalScrollZoom"]
      487 DUPCLOSURE                       R8 K210 [PROTO_55]
      488 CAPTURE                          VAL R3
      489 SETTABLEKS                       R8 R7 K211 ["ToggleWorldSpace"]
      491 DUPCLOSURE                       R8 K212 [PROTO_56]
      492 CAPTURE                          VAL R3
      493 SETTABLEKS                       R8 R7 K213 ["TestSetCurveEditorScroll"]
      495 CALL                             R5 2 -1
      496 RETURN                           R5 -1
