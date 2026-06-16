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
      115 SETTABLEKS                       R7 R6 K47 ["IgnoreRootCFrameSignal"]
      117 LOADB                            R7 0
      118 SETTABLEKS                       R7 R6 K48 ["IKEnabled"]
      120 GETTABLEKS                       R7 R4 K49 ["IK_MODE"]
      122 GETTABLEKS                       R7 R7 K50 ["FullBody"]
      124 SETTABLEKS                       R7 R6 K51 ["IKMode"]
      126 LOADNIL                          R7
      127 SETTABLEKS                       R7 R6 K52 ["IKOpenedTimestamp"]
      129 LOADB                            R7 0
      130 SETTABLEKS                       R7 R6 K53 ["inReviewState"]
      132 LOADB                            R7 0
      133 SETTABLEKS                       R7 R6 K54 ["IsDirty"]
      135 LOADB                            R7 0
      136 SETTABLEKS                       R7 R6 K55 ["IsLegacyAnimSaves"]
      138 LOADB                            R7 0
      139 SETTABLEKS                       R7 R6 K56 ["IsSelectingTarget"]
      141 LOADNIL                          R7
      142 SETTABLEKS                       R7 R6 K57 ["LastSelectedPath"]
      144 NEWTABLE                         R7 0 0
      146 SETTABLEKS                       R7 R6 K58 ["LegacyAnimationInstances"]
      148 NEWTABLE                         R7 0 0
      150 SETTABLEKS                       R7 R6 K59 ["PinnedParts"]
      152 LOADN                            R7 1
      153 SETTABLEKS                       R7 R6 K60 ["PlaybackSpeed"]
      155 NEWTABLE                         R7 0 0
      157 SETTABLEKS                       R7 R6 K61 ["PlaybackStartInfo"]
      159 LOADN                            R7 0
      160 SETTABLEKS                       R7 R6 K62 ["Playhead"]
      162 GETTABLEKS                       R7 R4 K63 ["PLAY_STATE"]
      164 GETTABLEKS                       R7 R7 K64 ["Pause"]
      166 SETTABLEKS                       R7 R6 K65 ["PlayState"]
      168 LOADB                            R7 0
      169 SETTABLEKS                       R7 R6 K66 ["ReadOnly"]
      171 GETTABLEKS                       R7 R4 K67 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
      173 GETTABLEKS                       R7 R7 K68 ["Hidden"]
      175 SETTABLEKS                       R7 R6 K69 ["ReduceKeyframesDialogMode"]
      177 NEWTABLE                         R7 0 0
      179 SETTABLEKS                       R7 R6 K70 ["RightClickContextInfo"]
      181 LOADNIL                          R7
      182 SETTABLEKS                       R7 R6 K71 ["RootCFrame"]
      184 LOADNIL                          R7
      185 SETTABLEKS                       R7 R6 K72 ["RootCFrameSignal"]
      187 LOADNIL                          R7
      188 SETTABLEKS                       R7 R6 K73 ["RootInstance"]
      190 NEWTABLE                         R7 0 0
      192 SETTABLEKS                       R7 R6 K74 ["SelectedEvents"]
      194 NEWTABLE                         R7 0 0
      196 SETTABLEKS                       R7 R6 K75 ["SelectedKeyframes"]
      198 LOADNIL                          R7
      199 SETTABLEKS                       R7 R6 K76 ["SelectedTracks"]
      201 LOADB                            R7 1
      202 SETTABLEKS                       R7 R6 K77 ["ShowEvents"]
      204 LOADB                            R7 0
      205 SETTABLEKS                       R7 R6 K78 ["ShowFaceControlsEditorPanel"]
      207 LOADB                            R7 0
      208 SETTABLEKS                       R7 R6 K79 ["ShowTree"]
      210 GETTABLEKS                       R7 R4 K80 ["SNAP_MODES"]
      212 GETTABLEKS                       R7 R7 K81 ["Frames"]
      214 SETTABLEKS                       R7 R6 K82 ["SnapMode"]
      216 LOADB                            R7 0
      217 SETTABLEKS                       R7 R6 K83 ["SymmetryEnabled"]
      219 GETTABLEKS                       R7 R4 K84 ["TIMELINE_UNITS"]
      221 GETTABLEKS                       R7 R7 K85 ["SecondsDecimal"]
      223 SETTABLEKS                       R7 R6 K86 ["TimelineUnit"]
      225 GETIMPORT                        R7 K89 [Enum.RibbonTool.Rotate]
      227 SETTABLEKS                       R7 R6 K90 ["Tool"]
      229 LOADN                            R7 1
      230 SETTABLEKS                       R7 R6 K91 ["TopTrackIndex"]
      232 NEWTABLE                         R7 0 0
      234 SETTABLEKS                       R7 R6 K92 ["Tracks"]
      236 NEWTABLE                         R7 0 0
      238 SETTABLEKS                       R7 R6 K93 ["UnusedFacs"]
      240 NEWTABLE                         R7 0 0
      242 SETTABLEKS                       R7 R6 K94 ["UnusedTracks"]
      244 LOADN                            R7 0
      245 SETTABLEKS                       R7 R6 K95 ["VerticalScroll"]
      247 LOADN                            R7 0
      248 SETTABLEKS                       R7 R6 K96 ["VerticalZoom"]
      250 LOADB                            R7 1
      251 SETTABLEKS                       R7 R6 K97 ["VisualizeBones"]
      253 LOADB                            R7 1
      254 SETTABLEKS                       R7 R6 K98 ["VisualizeGrid"]
      256 LOADB                            R7 0
      257 SETTABLEKS                       R7 R6 K99 ["WorldSpace"]
      259 LOADN                            R7 0
      260 SETTABLEKS                       R7 R6 K100 ["TestCurveEditorScrollMin"]
      262 LOADN                            R7 0
      263 SETTABLEKS                       R7 R6 K101 ["TestCurveEditorScrollMax"]
      265 NEWTABLE                         R7 64 0
      267 DUPCLOSURE                       R8 K102 [PROTO_0]
      268 CAPTURE                          VAL R3
      269 SETTABLEKS                       R8 R7 K103 ["SetActive"]
      271 DUPCLOSURE                       R8 K104 [PROTO_1]
      272 CAPTURE                          VAL R3
      273 SETTABLEKS                       R8 R7 K105 ["SetAnimationFromVideoErroredOut"]
      275 DUPCLOSURE                       R8 K106 [PROTO_2]
      276 CAPTURE                          VAL R3
      277 SETTABLEKS                       R8 R7 K107 ["SetAnimationFromVideoUploadStartTime"]
      279 DUPCLOSURE                       R8 K108 [PROTO_3]
      280 CAPTURE                          VAL R3
      281 SETTABLEKS                       R8 R7 K109 ["SetAnimationImportProgress"]
      283 DUPCLOSURE                       R8 K110 [PROTO_4]
      284 CAPTURE                          VAL R3
      285 SETTABLEKS                       R8 R7 K111 ["SetAnimationImportStatus"]
      287 DUPCLOSURE                       R8 K112 [PROTO_5]
      288 CAPTURE                          VAL R3
      289 CAPTURE                          VAL R2
      290 SETTABLEKS                       R8 R7 K113 ["SetAnimationTrack"]
      292 DUPCLOSURE                       R8 K114 [PROTO_6]
      293 CAPTURE                          VAL R3
      294 CAPTURE                          VAL R2
      295 SETTABLEKS                       R8 R7 K115 ["SetPrevAnimationClip"]
      297 DUPCLOSURE                       R8 K116 [PROTO_7]
      298 CAPTURE                          VAL R3
      299 SETTABLEKS                       R8 R7 K117 ["SetAutoFocusFaceEnabled"]
      301 DUPCLOSURE                       R8 K118 [PROTO_8]
      302 CAPTURE                          VAL R3
      303 SETTABLEKS                       R8 R7 K119 ["SetBoneVisualization"]
      305 DUPCLOSURE                       R8 K120 [PROTO_9]
      306 CAPTURE                          VAL R3
      307 SETTABLEKS                       R8 R7 K121 ["SetClipboard"]
      309 DUPCLOSURE                       R8 K122 [PROTO_10]
      310 CAPTURE                          VAL R3
      311 SETTABLEKS                       R8 R7 K123 ["SetCreatingAnimationFromVideo"]
      313 DUPCLOSURE                       R8 K124 [PROTO_11]
      314 CAPTURE                          VAL R3
      315 SETTABLEKS                       R8 R7 K125 ["SetDefaultEulerAnglesOrder"]
      317 DUPCLOSURE                       R8 K126 [PROTO_12]
      318 CAPTURE                          VAL R3
      319 SETTABLEKS                       R8 R7 K127 ["SetDefaultRotationType"]
      321 DUPCLOSURE                       R8 K128 [PROTO_13]
      322 CAPTURE                          VAL R3
      323 SETTABLEKS                       R8 R7 K129 ["SetEditingLength"]
      325 DUPCLOSURE                       R8 K130 [PROTO_14]
      326 CAPTURE                          VAL R3
      327 SETTABLEKS                       R8 R7 K131 ["SetEditorMode"]
      329 DUPCLOSURE                       R9 K133 [PROTO_15]
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R2
      332 ORK                              R8 R9 K132 []
      333 SETTABLEKS                       R8 R7 K134 ["SetEventEditingTick"]
      335 DUPCLOSURE                       R8 K135 [PROTO_16]
      336 CAPTURE                          VAL R3
      337 SETTABLEKS                       R8 R7 K136 ["SetFaceControlsEditorOpenedTimestamp"]
      339 DUPCLOSURE                       R8 K137 [PROTO_17]
      340 CAPTURE                          VAL R3
      341 SETTABLEKS                       R8 R7 K138 ["SetFrameRate"]
      343 DUPCLOSURE                       R8 K139 [PROTO_18]
      344 CAPTURE                          VAL R3
      345 SETTABLEKS                       R8 R7 K140 ["SetGridSpeed"]
      347 DUPCLOSURE                       R8 K141 [PROTO_19]
      348 CAPTURE                          VAL R3
      349 SETTABLEKS                       R8 R7 K142 ["SetGridVisualization"]
      351 DUPCLOSURE                       R8 K143 [PROTO_20]
      352 CAPTURE                          VAL R3
      353 SETTABLEKS                       R8 R7 K144 ["SetHaveToSetBackToNotLooping"]
      355 DUPCLOSURE                       R8 K145 [PROTO_21]
      356 CAPTURE                          VAL R3
      357 SETTABLEKS                       R8 R7 K146 ["SetHorizontalScrollZoom"]
      359 DUPCLOSURE                       R8 K147 [PROTO_22]
      360 CAPTURE                          VAL R3
      361 SETTABLEKS                       R8 R7 K148 ["SetIKEnabled"]
      363 DUPCLOSURE                       R8 K149 [PROTO_23]
      364 CAPTURE                          VAL R3
      365 SETTABLEKS                       R8 R7 K150 ["SetIKMode"]
      367 DUPCLOSURE                       R8 K151 [PROTO_24]
      368 CAPTURE                          VAL R3
      369 SETTABLEKS                       R8 R7 K152 ["SetIKOpenedTimestamp"]
      371 DUPCLOSURE                       R8 K153 [PROTO_25]
      372 CAPTURE                          VAL R3
      373 SETTABLEKS                       R8 R7 K154 ["SetInReviewState"]
      375 DUPCLOSURE                       R8 K155 [PROTO_26]
      376 CAPTURE                          VAL R3
      377 SETTABLEKS                       R8 R7 K156 ["SetIsDirty"]
      379 DUPCLOSURE                       R8 K157 [PROTO_27]
      380 CAPTURE                          VAL R3
      381 SETTABLEKS                       R8 R7 K158 ["SetIsLegacyAnimSaves"]
      383 DUPCLOSURE                       R8 K159 [PROTO_28]
      384 CAPTURE                          VAL R3
      385 SETTABLEKS                       R8 R7 K160 ["SetIsSelectingTarget"]
      387 DUPCLOSURE                       R8 K161 [PROTO_29]
      388 CAPTURE                          VAL R3
      389 CAPTURE                          VAL R2
      390 SETTABLEKS                       R8 R7 K162 ["SetLastSelectedPath"]
      392 DUPCLOSURE                       R8 K163 [PROTO_30]
      393 CAPTURE                          VAL R3
      394 SETTABLEKS                       R8 R7 K164 ["SetLegacyAnimationInstances"]
      396 DUPCLOSURE                       R8 K165 [PROTO_31]
      397 CAPTURE                          VAL R3
      398 SETTABLEKS                       R8 R7 K166 ["SetPinnedParts"]
      400 DUPCLOSURE                       R8 K167 [PROTO_32]
      401 CAPTURE                          VAL R3
      402 SETTABLEKS                       R8 R7 K168 ["SetPlaybackSpeed"]
      404 DUPCLOSURE                       R8 K169 [PROTO_33]
      405 CAPTURE                          VAL R3
      406 SETTABLEKS                       R8 R7 K170 ["SetPlaybackStartInfo"]
      408 DUPCLOSURE                       R8 K171 [PROTO_34]
      409 CAPTURE                          VAL R3
      410 SETTABLEKS                       R8 R7 K172 ["SetPlayhead"]
      412 DUPCLOSURE                       R8 K173 [PROTO_35]
      413 CAPTURE                          VAL R3
      414 SETTABLEKS                       R8 R7 K174 ["SetPlayState"]
      416 DUPCLOSURE                       R8 K175 [PROTO_36]
      417 CAPTURE                          VAL R3
      418 SETTABLEKS                       R8 R7 K176 ["SetReadOnly"]
      420 DUPCLOSURE                       R8 K177 [PROTO_37]
      421 CAPTURE                          VAL R3
      422 SETTABLEKS                       R8 R7 K178 ["SetReduceKeyframesDialogMode"]
      424 DUPCLOSURE                       R8 K179 [PROTO_38]
      425 CAPTURE                          VAL R3
      426 SETTABLEKS                       R8 R7 K180 ["SetRightClickContextInfo"]
      428 DUPCLOSURE                       R8 K181 [PROTO_39]
      429 CAPTURE                          VAL R3
      430 SETTABLEKS                       R8 R7 K182 ["SetRootCFrame"]
      432 DUPCLOSURE                       R8 K183 [PROTO_40]
      433 CAPTURE                          VAL R3
      434 CAPTURE                          VAL R2
      435 SETTABLEKS                       R8 R7 K184 ["SetRootCFrameSignal"]
      437 DUPCLOSURE                       R8 K185 [PROTO_41]
      438 CAPTURE                          VAL R3
      439 CAPTURE                          VAL R2
      440 SETTABLEKS                       R8 R7 K186 ["SetRootInstance"]
      442 DUPCLOSURE                       R8 K187 [PROTO_42]
      443 CAPTURE                          VAL R3
      444 SETTABLEKS                       R8 R7 K188 ["SetSelectedEvents"]
      446 DUPCLOSURE                       R8 K189 [PROTO_43]
      447 CAPTURE                          VAL R3
      448 SETTABLEKS                       R8 R7 K190 ["SetSelectedKeyframes"]
      450 DUPCLOSURE                       R8 K191 [PROTO_44]
      451 CAPTURE                          VAL R3
      452 CAPTURE                          VAL R2
      453 SETTABLEKS                       R8 R7 K192 ["SetSelectedTrackInstances"]
      455 DUPCLOSURE                       R8 K193 [PROTO_45]
      456 CAPTURE                          VAL R3
      457 CAPTURE                          VAL R2
      458 SETTABLEKS                       R8 R7 K194 ["SetSelectedTracks"]
      460 DUPCLOSURE                       R8 K195 [PROTO_46]
      461 CAPTURE                          VAL R3
      462 SETTABLEKS                       R8 R7 K196 ["SetShowEvents"]
      464 DUPCLOSURE                       R8 K197 [PROTO_47]
      465 CAPTURE                          VAL R3
      466 SETTABLEKS                       R8 R7 K198 ["SetShowFaceControlsEditorPanel"]
      468 DUPCLOSURE                       R8 K199 [PROTO_48]
      469 CAPTURE                          VAL R3
      470 SETTABLEKS                       R8 R7 K200 ["SetShowTree"]
      472 DUPCLOSURE                       R8 K201 [PROTO_49]
      473 CAPTURE                          VAL R3
      474 SETTABLEKS                       R8 R7 K202 ["SetSnapMode"]
      476 DUPCLOSURE                       R8 K203 [PROTO_50]
      477 CAPTURE                          VAL R3
      478 CAPTURE                          VAL R2
      479 SETTABLEKS                       R8 R7 K204 ["SetStartingPose"]
      481 DUPCLOSURE                       R8 K205 [PROTO_51]
      482 CAPTURE                          VAL R3
      483 SETTABLEKS                       R8 R7 K206 ["SetSymmetryEnabled"]
      485 DUPCLOSURE                       R8 K207 [PROTO_52]
      486 CAPTURE                          VAL R3
      487 SETTABLEKS                       R8 R7 K208 ["SetTimelineUnit"]
      489 DUPCLOSURE                       R8 K209 [PROTO_53]
      490 CAPTURE                          VAL R3
      491 SETTABLEKS                       R8 R7 K210 ["SetTool"]
      493 DUPCLOSURE                       R8 K211 [PROTO_54]
      494 CAPTURE                          VAL R3
      495 SETTABLEKS                       R8 R7 K212 ["SetTopTrackIndex"]
      497 DUPCLOSURE                       R8 K213 [PROTO_55]
      498 CAPTURE                          VAL R3
      499 SETTABLEKS                       R8 R7 K214 ["SetTracks"]
      501 DUPCLOSURE                       R8 K215 [PROTO_56]
      502 CAPTURE                          VAL R3
      503 SETTABLEKS                       R8 R7 K216 ["SetVerticalScrollZoom"]
      505 DUPCLOSURE                       R8 K217 [PROTO_57]
      506 CAPTURE                          VAL R3
      507 SETTABLEKS                       R8 R7 K218 ["ToggleWorldSpace"]
      509 DUPCLOSURE                       R8 K219 [PROTO_58]
      510 CAPTURE                          VAL R3
      511 SETTABLEKS                       R8 R7 K220 ["TestSetCurveEditorScroll"]
      513 CALL                             R5 2 -1
      514 RETURN                           R5 -1
