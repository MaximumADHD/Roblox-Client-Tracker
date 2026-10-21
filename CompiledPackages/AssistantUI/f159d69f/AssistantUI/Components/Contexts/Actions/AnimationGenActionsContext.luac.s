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
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K2 [table.clone]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 GETIMPORT                        R8 K5 [task.spawn]
       12 MOVE                             R9 R7
       13 CALL                             R8 1 0
       14 FORGLOOP                         R3 2 ; [-5]
       16 RETURN                           R0 0

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
        2 GETTABLEKS                       R3 R3 K0 ["AnimatorRemoved"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackRestarted"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseDeselected"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AnimatorRemoved"]
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PlaybackRestarted"]
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
        2 GETTABLEKS                       R3 R3 K0 ["AnimatorRemoved"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackRestarted"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseDeselected"]
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
        5 GETTABLEKS                       R3 R3 K1 ["animatorRemoved"]
        7 DUPCLOSURE                       R5 K2 [PROTO_14]
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R3 R3 K3 ["Connect"]
       12 CALL                             R3 2 -1
       13 NAMECALL                         R1 R0 K4 ["Add"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["restartPlayback"]
       19 DUPCLOSURE                       R5 K6 [PROTO_15]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 NAMECALL                         R3 R3 K3 ["Connect"]
       24 CALL                             R3 2 -1
       25 NAMECALL                         R1 R0 K4 ["Add"]
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K7 ["poseDeselected"]
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
        1 GETTABLEKS                       R1 R1 K0 ["generateAndSaveAnimation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedRigRef"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setIsPlaying"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setCurrentTime"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openInAnimationClipEditor"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditPreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEditPreviewReach"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEditPreviewBlend"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["previewClipToUpscale"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearClipToUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertClipToUpscalePreviewRig"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_30:
        0 DUPTABLE                         R0 K11 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "openInAnimationClipEditor", "beginEditPreview", "setEditPreviewReach", "setEditPreviewBlend", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["generateAndSaveAnimationAsync"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K1 ["getSelectedRigRef"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K2 ["setIsPlaying"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K3 ["setCurrentTime"]
       21 NEWCLOSURE                       R1 P4
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K4 ["openInAnimationClipEditor"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K5 ["beginEditPreview"]
       31 NEWCLOSURE                       R1 P6
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K6 ["setEditPreviewReach"]
       36 NEWCLOSURE                       R1 P7
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 SETTABLEKS                       R1 R0 K7 ["setEditPreviewBlend"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R1 R0 K8 ["previewClipToUpscaleAsync"]
       46 NEWCLOSURE                       R1 P9
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 SETTABLEKS                       R1 R0 K9 ["clearClipToUpscalePreview"]
       51 NEWCLOSURE                       R1 P10
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R1 R0 K10 ["insertClipToUpscalePreviewRigAsync"]
       56 RETURN                           R0 1

PROTO_31:
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
       42 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       44 GETTABLEKS                       R8 R8 K16 ["useNetworking"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R4 K17 ["createElement"]
       49 GETTABLEKS                       R9 R4 K18 ["createContext"]
       51 LOADNIL                          R10
       52 CALL                             R9 1 1
       53 DUPTABLE                         R10 K25 [{["AnimatorRemoved"] = "animatorRemoved", ["PlaybackRestarted"] = "playbackRestarted", ["PoseDeselected"] = "poseDeselected"}]
       54 DUPTABLE                         R11 K26 [{"animatorRemoved", "playbackRestarted", "poseDeselected"}]
       55 NEWTABLE                         R12 0 0
       57 SETTABLEKS                       R12 R11 K20 ["animatorRemoved"]
       59 NEWTABLE                         R12 0 0
       61 SETTABLEKS                       R12 R11 K22 ["playbackRestarted"]
       63 NEWTABLE                         R12 0 0
       65 SETTABLEKS                       R12 R11 K24 ["poseDeselected"]
       67 DUPCLOSURE                       R12 K27 [PROTO_1]
       68 CAPTURE                          VAL R11
       69 DUPCLOSURE                       R13 K28 [PROTO_2]
       70 CAPTURE                          VAL R11
       71 DUPCLOSURE                       R14 K29 [PROTO_4]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R12
       74 DUPTABLE                         R15 K31 [{"animatorRemoved", "restartPlayback", "poseDeselected"}]
       75 DUPCLOSURE                       R16 K32 [PROTO_5]
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R16 R15 K20 ["animatorRemoved"]
       80 DUPCLOSURE                       R16 K33 [PROTO_6]
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R16 R15 K30 ["restartPlayback"]
       85 DUPCLOSURE                       R16 K34 [PROTO_7]
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R16 R15 K24 ["poseDeselected"]
       90 DUPCLOSURE                       R16 K35 [PROTO_8]
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R12
       94 DUPCLOSURE                       R17 K36 [PROTO_9]
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R12
       98 DUPCLOSURE                       R18 K37 [PROTO_10]
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R12
      102 DUPCLOSURE                       R19 K38 [PROTO_12]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 DUPCLOSURE                       R20 K39 [PROTO_31]
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R9
      116 DUPTABLE                         R21 K48 [{"Context", "ProviderOLD", "Provider", "guestBridgeImplementation", "useAnimatorRemoved", "usePlaybackRestarted", "usePoseDeselected", "_tests"}]
      117 SETTABLEKS                       R9 R21 K40 ["Context"]
      119 SETTABLEKS                       R19 R21 K41 ["ProviderOLD"]
      121 SETTABLEKS                       R20 R21 K42 ["Provider"]
      123 SETTABLEKS                       R15 R21 K43 ["guestBridgeImplementation"]
      125 SETTABLEKS                       R16 R21 K44 ["useAnimatorRemoved"]
      127 SETTABLEKS                       R17 R21 K45 ["usePlaybackRestarted"]
      129 SETTABLEKS                       R18 R21 K46 ["usePoseDeselected"]
      131 DUPTABLE                         R22 K51 [{"EventName", "fire"}]
      132 SETTABLEKS                       R10 R22 K49 ["EventName"]
      134 SETTABLEKS                       R13 R22 K50 ["fire"]
      136 SETTABLEKS                       R22 R21 K47 ["_tests"]
      138 RETURN                           R21 1
