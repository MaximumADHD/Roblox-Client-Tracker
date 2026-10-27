PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K2 [table.find]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+8]
       11 LENGTH                           R3 R0
       12 GETTABLE                         R2 R0 R3
       13 SETTABLE                         R2 R0 R1
       14 GETIMPORT                        R2 K4 [table.remove]
       16 MOVE                             R3 R0
       17 LENGTH                           R4 R0
       18 CALL                             R2 2 0
       19 LENGTH                           R2 R0
       20 JUMPIFNOTEQKN                    R2 K5 [0] ; [+5]
       22 GETUPVAL                         R2 0
       23 GETUPVAL                         R3 1
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLE                         R4 R3 R1
        3 JUMPIF                           R4 ; [+3]
        4 NEWTABLE                         R4 0 0
        6 SETTABLE                         R4 R3 R1
        7 GETTABLE                         R5 R3 R1
        8 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       10 MOVE                             R6 R2
       11 GETIMPORT                        R4 K2 [table.insert]
       13 CALL                             R4 2 0
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R2
       18 RETURN                           R4 1

PROTO_2:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETIMPORT                        R3 K2 [table.clone]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 3
       10 FORGPREP                         R3
       11 GETIMPORT                        R8 K5 [task.spawn]
       13 MOVE                             R9 R7
       14 GETVARARGS                       R10 -1
       15 CALL                             R8 -1 0
       16 FORGLOOP                         R3 2 ; [-6]
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 3
        7 CALL                             R0 3 1
        8 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 NEWTABLE                         R5 0 3
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 SETLIST                          R5 R6 3 [1]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackStateChanged"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 GETTABLEKS                       R5 R0 K2 ["state"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseDeselected"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseEdited"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackStateChanged"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 1
        7 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PoseDeselected"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 3
       13 MOVE                             R6 R2
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 SETLIST                          R5 R6 3 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PoseEdited"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 NEWTABLE                         R5 0 3
       13 MOVE                             R6 R2
       14 MOVE                             R7 R0
       15 MOVE                             R8 R1
       16 SETLIST                          R5 R6 3 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Provider"]
       16 DUPTABLE                         R4 K3 [{"value"}]
       17 SETTABLEKS                       R1 R4 K1 ["value"]
       19 GETTABLEKS                       R5 R0 K4 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackStateChanged"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 GETTABLEKS                       R5 R1 K2 ["state"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseDeselected"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseEdited"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["playbackStateChanged"]
        7 DUPCLOSURE                       R5 K2 [PROTO_14]
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R3 R3 K3 ["Connect"]
       12 CALL                             R3 2 -1
       13 NAMECALL                         R1 R0 K4 ["Add"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["poseDeselected"]
       19 DUPCLOSURE                       R5 K6 [PROTO_15]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 NAMECALL                         R3 R3 K3 ["Connect"]
       24 CALL                             R3 2 -1
       25 NAMECALL                         R1 R0 K4 ["Add"]
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K7 ["poseEdited"]
       31 DUPCLOSURE                       R5 K8 [PROTO_16]
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 NAMECALL                         R3 R3 K3 ["Connect"]
       36 CALL                             R3 2 -1
       37 NAMECALL                         R1 R0 K4 ["Add"]
       39 CALL                             R1 -1 0
       40 NEWCLOSURE                       R1 P3
       41 CAPTURE                          VAL R0
       42 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolveGenerationSource"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getPlaybackState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generateAndSaveAnimation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["discardEditAnimationPreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedRigRef"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setIsPlaying"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setCurrentTime"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["previewClipToUpscale"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearClipToUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertClipToUpscalePreviewRig"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generateUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openInAnimationClipEditor"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["publishAnimation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertPose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deletePose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["movePose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resizePose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEditScrubbarState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resetPose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["endEditSession"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditPreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_41:
        0 DUPTABLE                         R0 K22 [{"resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["resolveGenerationSource"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K1 ["getPlaybackState"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K2 ["generateAndSaveAnimationAsync"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K3 ["discardEditAnimationPreview"]
       21 NEWCLOSURE                       R1 P4
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K4 ["getSelectedRigRef"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K5 ["setIsPlaying"]
       31 NEWCLOSURE                       R1 P6
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K6 ["setCurrentTime"]
       36 NEWCLOSURE                       R1 P7
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 SETTABLEKS                       R1 R0 K7 ["previewClipToUpscaleAsync"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R1 R0 K8 ["clearClipToUpscalePreview"]
       46 NEWCLOSURE                       R1 P9
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 SETTABLEKS                       R1 R0 K9 ["insertClipToUpscalePreviewRigAsync"]
       51 NEWCLOSURE                       R1 P10
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R1 R0 K10 ["generateUpscalePreviewAsync"]
       56 NEWCLOSURE                       R1 P11
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U1
       59 SETTABLEKS                       R1 R0 K11 ["updateUpscalePreview"]
       61 NEWCLOSURE                       R1 P12
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U1
       64 SETTABLEKS                       R1 R0 K12 ["openInAnimationClipEditor"]
       66 NEWCLOSURE                       R1 P13
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U1
       69 SETTABLEKS                       R1 R0 K13 ["publishAnimation"]
       71 NEWCLOSURE                       R1 P14
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R1 R0 K14 ["insertPose"]
       76 NEWCLOSURE                       R1 P15
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          UPVAL U1
       79 SETTABLEKS                       R1 R0 K15 ["deletePose"]
       81 NEWCLOSURE                       R1 P16
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U1
       84 SETTABLEKS                       R1 R0 K16 ["movePose"]
       86 NEWCLOSURE                       R1 P17
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U1
       89 SETTABLEKS                       R1 R0 K17 ["resizePose"]
       91 NEWCLOSURE                       R1 P18
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U1
       94 SETTABLEKS                       R1 R0 K18 ["getEditScrubbarState"]
       96 NEWCLOSURE                       R1 P19
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U1
       99 SETTABLEKS                       R1 R0 K19 ["resetPose"]
      101 NEWCLOSURE                       R1 P20
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U1
      104 SETTABLEKS                       R1 R0 K20 ["endEditSession"]
      106 NEWCLOSURE                       R1 P21
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U1
      109 SETTABLEKS                       R1 R0 K21 ["beginEditPreview"]
      111 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R1
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["useLayoutEffect"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R2
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       31 NEWCLOSURE                       R4 P2
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U6
       34 NEWTABLE                         R5 0 1
       36 MOVE                             R6 R2
       37 SETLIST                          R5 R6 1 [1]
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 7
       41 GETUPVAL                         R5 8
       42 GETTABLEKS                       R5 R5 K2 ["Provider"]
       44 DUPTABLE                         R6 K4 [{"value"}]
       45 SETTABLEKS                       R3 R6 K3 ["value"]
       47 GETTABLEKS                       R7 R0 K5 ["children"]
       49 CALL                             R4 3 -1
       50 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Bridges"]
       28 GETTABLEKS                       R6 R6 K11 ["createAnimationGenBridge"]
       30 GETTABLEKS                       R6 R6 K12 ["AnimationGenBridgeTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Remotes"]
       37 GETTABLEKS                       R7 R7 K14 ["AnimationGenRemotes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Util"]
       44 GETTABLEKS                       R8 R8 K16 ["AnimationGen"]
       46 GETTABLEKS                       R8 R8 K17 ["HostTypes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K18 ["Hooks"]
       53 GETTABLEKS                       R9 R9 K19 ["useNetworking"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R4 K20 ["createElement"]
       58 GETTABLEKS                       R10 R4 K21 ["createContext"]
       60 LOADNIL                          R11
       61 CALL                             R10 1 1
       62 DUPTABLE                         R11 K28 [{["PlaybackStateChanged"] = "playbackStateChanged", ["PoseDeselected"] = "poseDeselected", ["PoseEdited"] = "poseEdited"}]
       63 DUPTABLE                         R12 K29 [{"playbackStateChanged", "poseDeselected", "poseEdited"}]
       64 NEWTABLE                         R13 0 0
       66 SETTABLEKS                       R13 R12 K23 ["playbackStateChanged"]
       68 NEWTABLE                         R13 0 0
       70 SETTABLEKS                       R13 R12 K25 ["poseDeselected"]
       72 NEWTABLE                         R13 0 0
       74 SETTABLEKS                       R13 R12 K27 ["poseEdited"]
       76 DUPCLOSURE                       R13 K30 [PROTO_1]
       77 CAPTURE                          VAL R12
       78 DUPCLOSURE                       R14 K31 [PROTO_2]
       79 CAPTURE                          VAL R12
       80 DUPCLOSURE                       R15 K32 [PROTO_4]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R13
       83 DUPTABLE                         R16 K29 [{"playbackStateChanged", "poseDeselected", "poseEdited"}]
       84 DUPCLOSURE                       R17 K33 [PROTO_5]
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R11
       87 SETTABLEKS                       R17 R16 K23 ["playbackStateChanged"]
       89 DUPCLOSURE                       R17 K34 [PROTO_6]
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R11
       92 SETTABLEKS                       R17 R16 K25 ["poseDeselected"]
       94 DUPCLOSURE                       R17 K35 [PROTO_7]
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R17 R16 K27 ["poseEdited"]
       99 DUPCLOSURE                       R17 K36 [PROTO_8]
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R11
      102 DUPCLOSURE                       R18 K37 [PROTO_9]
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R13
      106 DUPCLOSURE                       R19 K38 [PROTO_10]
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R13
      110 DUPCLOSURE                       R20 K39 [PROTO_12]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R10
      114 DUPCLOSURE                       R21 K40 [PROTO_42]
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R10
      124 DUPTABLE                         R22 K49 [{"Context", "ProviderOLD", "Provider", "guestBridgeImplementation", "subscribePlaybackState", "usePoseDeselected", "usePoseEdited", "_tests"}]
      125 SETTABLEKS                       R10 R22 K41 ["Context"]
      127 SETTABLEKS                       R20 R22 K42 ["ProviderOLD"]
      129 SETTABLEKS                       R21 R22 K43 ["Provider"]
      131 SETTABLEKS                       R16 R22 K44 ["guestBridgeImplementation"]
      133 SETTABLEKS                       R17 R22 K45 ["subscribePlaybackState"]
      135 SETTABLEKS                       R18 R22 K46 ["usePoseDeselected"]
      137 SETTABLEKS                       R19 R22 K47 ["usePoseEdited"]
      139 DUPTABLE                         R23 K52 [{"EventName", "fire"}]
      140 SETTABLEKS                       R11 R23 K50 ["EventName"]
      142 SETTABLEKS                       R14 R23 K51 ["fire"]
      144 SETTABLEKS                       R23 R22 K48 ["_tests"]
      146 RETURN                           R22 1
