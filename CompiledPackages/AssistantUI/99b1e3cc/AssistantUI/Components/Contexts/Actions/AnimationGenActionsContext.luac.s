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
        2 GETTABLEKS                       R3 R3 K0 ["AnimationHistoryChanged"]
        4 LOADK                            R4 K1 ["animationHistory"]
        5 GETTABLEKS                       R5 R0 K2 ["chainId"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackStateChanged"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 GETTABLEKS                       R5 R0 K2 ["state"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["ThoughtReceived"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 GETTABLEKS                       R5 R0 K2 ["text"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseDeselected"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseEdited"]
        4 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["ClipToUpscalePreviewRigChanged"]
        4 GETTABLEKS                       R4 R0 K1 ["sessionId"]
        6 GETTABLEKS                       R5 R0 K2 ["rig"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackStateChanged"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R2 3 1
        7 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AnimationHistoryChanged"]
        4 LOADK                            R3 K1 ["animationHistory"]
        5 MOVE                             R4 R0
        6 CALL                             R1 3 1
        7 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ThoughtReceived"]
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ClipToUpscalePreviewRigChanged"]
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["AnimationHistoryChanged"]
        4 LOADK                            R4 K1 ["animationHistory"]
        5 GETTABLEKS                       R5 R1 K2 ["chainId"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PlaybackStateChanged"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 GETTABLEKS                       R5 R1 K2 ["state"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["ThoughtReceived"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 GETTABLEKS                       R5 R1 K2 ["text"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseDeselected"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PoseEdited"]
        4 GETTABLEKS                       R4 R1 K1 ["toolUseId"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["ClipToUpscalePreviewRigChanged"]
        4 GETTABLEKS                       R4 R1 K1 ["sessionId"]
        6 GETTABLEKS                       R5 R1 K2 ["rig"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["animationHistoryChanged"]
        7 DUPCLOSURE                       R5 K2 [PROTO_20]
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 NAMECALL                         R3 R3 K3 ["Connect"]
       12 CALL                             R3 2 -1
       13 NAMECALL                         R1 R0 K4 ["Add"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K5 ["playbackStateChanged"]
       19 DUPCLOSURE                       R5 K6 [PROTO_21]
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 NAMECALL                         R3 R3 K3 ["Connect"]
       24 CALL                             R3 2 -1
       25 NAMECALL                         R1 R0 K4 ["Add"]
       27 CALL                             R1 -1 0
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K7 ["thoughtReceived"]
       31 DUPCLOSURE                       R5 K8 [PROTO_22]
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 NAMECALL                         R3 R3 K3 ["Connect"]
       36 CALL                             R3 2 -1
       37 NAMECALL                         R1 R0 K4 ["Add"]
       39 CALL                             R1 -1 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K9 ["poseDeselected"]
       43 DUPCLOSURE                       R5 K10 [PROTO_23]
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 NAMECALL                         R3 R3 K3 ["Connect"]
       48 CALL                             R3 2 -1
       49 NAMECALL                         R1 R0 K4 ["Add"]
       51 CALL                             R1 -1 0
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K11 ["poseEdited"]
       55 DUPCLOSURE                       R5 K12 [PROTO_24]
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          UPVAL U3
       58 NAMECALL                         R3 R3 K3 ["Connect"]
       60 CALL                             R3 2 -1
       61 NAMECALL                         R1 R0 K4 ["Add"]
       63 CALL                             R1 -1 0
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R3 R3 K13 ["clipToUpscalePreviewRigChanged"]
       67 DUPCLOSURE                       R5 K14 [PROTO_25]
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U3
       70 NAMECALL                         R3 R3 K3 ["Connect"]
       72 CALL                             R3 2 -1
       73 NAMECALL                         R1 R0 K4 ["Add"]
       75 CALL                             R1 -1 0
       76 NEWCLOSURE                       R1 P6
       77 CAPTURE                          VAL R0
       78 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAnimationCardState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectAnimationVersion"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["prepareAnimationEdit"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolveGenerationSource"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getPlaybackState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generateAndSaveAnimation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["discardEditAnimationPreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedRigRef"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setIsPlaying"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setCurrentTime"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["previewClipToUpscale"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearClipToUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertClipToUpscalePreviewRig"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FOCUSED"]
        6 NAMECALL                         R0 R0 K2 ["InvokeAsync"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setClipToUpscalePreviewRig"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["endClipToUpscalePreviewSession"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generateUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateUpscalePreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openInAnimationClipEditor"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["publishAnimation"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["insertPose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deletePose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["movePose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resizePose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEditScrubbarState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resetPose"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["endEditSession"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditPreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_55:
        0 DUPTABLE                         R0 K27 [{"getAnimationCardState", "selectAnimationVersion", "prepareAnimationEdit", "resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "setClipToUpscalePreviewRig", "endClipToUpscalePreviewSession", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["getAnimationCardState"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K1 ["selectAnimationVersion"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K2 ["prepareAnimationEdit"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R1 R0 K3 ["resolveGenerationSource"]
       21 NEWCLOSURE                       R1 P4
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K4 ["getPlaybackState"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K5 ["generateAndSaveAnimationAsync"]
       31 NEWCLOSURE                       R1 P6
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K6 ["discardEditAnimationPreview"]
       36 NEWCLOSURE                       R1 P7
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 SETTABLEKS                       R1 R0 K7 ["getSelectedRigRef"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R1 R0 K8 ["setIsPlaying"]
       46 NEWCLOSURE                       R1 P9
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 SETTABLEKS                       R1 R0 K9 ["setCurrentTime"]
       51 NEWCLOSURE                       R1 P10
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R1 R0 K10 ["previewClipToUpscaleAsync"]
       56 NEWCLOSURE                       R1 P11
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          UPVAL U1
       59 SETTABLEKS                       R1 R0 K11 ["clearClipToUpscalePreview"]
       61 NEWCLOSURE                       R1 P12
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U1
       64 SETTABLEKS                       R1 R0 K12 ["insertClipToUpscalePreviewRigAsync"]
       66 NEWCLOSURE                       R1 P13
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U1
       69 SETTABLEKS                       R1 R0 K13 ["setClipToUpscalePreviewRig"]
       71 NEWCLOSURE                       R1 P14
       72 CAPTURE                          UPVAL U0
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R1 R0 K14 ["endClipToUpscalePreviewSession"]
       76 NEWCLOSURE                       R1 P15
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          UPVAL U1
       79 SETTABLEKS                       R1 R0 K15 ["generateUpscalePreviewAsync"]
       81 NEWCLOSURE                       R1 P16
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          UPVAL U1
       84 SETTABLEKS                       R1 R0 K16 ["updateUpscalePreview"]
       86 NEWCLOSURE                       R1 P17
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U1
       89 SETTABLEKS                       R1 R0 K17 ["openInAnimationClipEditor"]
       91 NEWCLOSURE                       R1 P18
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          UPVAL U1
       94 SETTABLEKS                       R1 R0 K18 ["publishAnimation"]
       96 NEWCLOSURE                       R1 P19
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U1
       99 SETTABLEKS                       R1 R0 K19 ["insertPose"]
      101 NEWCLOSURE                       R1 P20
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U1
      104 SETTABLEKS                       R1 R0 K20 ["deletePose"]
      106 NEWCLOSURE                       R1 P21
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          UPVAL U1
      109 SETTABLEKS                       R1 R0 K21 ["movePose"]
      111 NEWCLOSURE                       R1 P22
      112 CAPTURE                          UPVAL U0
      113 CAPTURE                          UPVAL U1
      114 SETTABLEKS                       R1 R0 K22 ["resizePose"]
      116 NEWCLOSURE                       R1 P23
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U1
      119 SETTABLEKS                       R1 R0 K23 ["getEditScrubbarState"]
      121 NEWCLOSURE                       R1 P24
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U1
      124 SETTABLEKS                       R1 R0 K24 ["resetPose"]
      126 NEWCLOSURE                       R1 P25
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          UPVAL U1
      129 SETTABLEKS                       R1 R0 K25 ["endEditSession"]
      131 NEWCLOSURE                       R1 P26
      132 CAPTURE                          UPVAL U0
      133 CAPTURE                          UPVAL U1
      134 SETTABLEKS                       R1 R0 K26 ["beginEditPreview"]
      136 RETURN                           R0 1

PROTO_56:
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
       51 GETTABLEKS                       R9 R0 K18 ["Types"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       58 GETTABLEKS                       R10 R10 K20 ["useNetworking"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R4 K21 ["createElement"]
       63 GETTABLEKS                       R11 R4 K22 ["createContext"]
       65 LOADNIL                          R12
       66 CALL                             R11 1 1
       67 DUPTABLE                         R12 K35 [{["AnimationHistoryChanged"] = "animationHistoryChanged", ["PlaybackStateChanged"] = "playbackStateChanged", ["ThoughtReceived"] = "thoughtReceived", ["PoseDeselected"] = "poseDeselected", ["PoseEdited"] = "poseEdited", ["ClipToUpscalePreviewRigChanged"] = "clipToUpscalePreviewRigChanged"}]
       68 DUPTABLE                         R13 K36 [{"animationHistoryChanged", "playbackStateChanged", "thoughtReceived", "poseDeselected", "poseEdited", "clipToUpscalePreviewRigChanged"}]
       69 NEWTABLE                         R14 0 0
       71 SETTABLEKS                       R14 R13 K24 ["animationHistoryChanged"]
       73 NEWTABLE                         R14 0 0
       75 SETTABLEKS                       R14 R13 K26 ["playbackStateChanged"]
       77 NEWTABLE                         R14 0 0
       79 SETTABLEKS                       R14 R13 K28 ["thoughtReceived"]
       81 NEWTABLE                         R14 0 0
       83 SETTABLEKS                       R14 R13 K30 ["poseDeselected"]
       85 NEWTABLE                         R14 0 0
       87 SETTABLEKS                       R14 R13 K32 ["poseEdited"]
       89 NEWTABLE                         R14 0 0
       91 SETTABLEKS                       R14 R13 K34 ["clipToUpscalePreviewRigChanged"]
       93 DUPCLOSURE                       R14 K37 [PROTO_1]
       94 CAPTURE                          VAL R13
       95 DUPCLOSURE                       R15 K38 [PROTO_2]
       96 CAPTURE                          VAL R13
       97 DUPCLOSURE                       R16 K39 [PROTO_4]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R14
      100 DUPTABLE                         R17 K36 [{"animationHistoryChanged", "playbackStateChanged", "thoughtReceived", "poseDeselected", "poseEdited", "clipToUpscalePreviewRigChanged"}]
      101 DUPCLOSURE                       R18 K40 [PROTO_5]
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R12
      104 SETTABLEKS                       R18 R17 K24 ["animationHistoryChanged"]
      106 DUPCLOSURE                       R18 K41 [PROTO_6]
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R18 R17 K26 ["playbackStateChanged"]
      111 DUPCLOSURE                       R18 K42 [PROTO_7]
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R12
      114 SETTABLEKS                       R18 R17 K28 ["thoughtReceived"]
      116 DUPCLOSURE                       R18 K43 [PROTO_8]
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R12
      119 SETTABLEKS                       R18 R17 K30 ["poseDeselected"]
      121 DUPCLOSURE                       R18 K44 [PROTO_9]
      122 CAPTURE                          VAL R15
      123 CAPTURE                          VAL R12
      124 SETTABLEKS                       R18 R17 K32 ["poseEdited"]
      126 DUPCLOSURE                       R18 K45 [PROTO_10]
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R12
      129 SETTABLEKS                       R18 R17 K34 ["clipToUpscalePreviewRigChanged"]
      131 DUPCLOSURE                       R18 K46 [PROTO_11]
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R12
      134 DUPCLOSURE                       R19 K47 [PROTO_12]
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R12
      137 DUPCLOSURE                       R20 K48 [PROTO_13]
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R14
      141 DUPCLOSURE                       R21 K49 [PROTO_14]
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R14
      145 DUPCLOSURE                       R22 K50 [PROTO_15]
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R14
      149 DUPCLOSURE                       R23 K51 [PROTO_16]
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R14
      153 DUPCLOSURE                       R24 K52 [PROTO_18]
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 DUPCLOSURE                       R25 K53 [PROTO_56]
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R11
      167 DUPTABLE                         R26 K65 [{"Context", "ProviderOLD", "Provider", "guestBridgeImplementation", "subscribeAnimationHistory", "subscribePlaybackState", "useThoughtReceived", "usePoseDeselected", "usePoseEdited", "useClipToUpscalePreviewRigChanged", "_tests"}]
      168 SETTABLEKS                       R11 R26 K54 ["Context"]
      170 SETTABLEKS                       R24 R26 K55 ["ProviderOLD"]
      172 SETTABLEKS                       R25 R26 K56 ["Provider"]
      174 SETTABLEKS                       R17 R26 K57 ["guestBridgeImplementation"]
      176 SETTABLEKS                       R19 R26 K58 ["subscribeAnimationHistory"]
      178 SETTABLEKS                       R18 R26 K59 ["subscribePlaybackState"]
      180 SETTABLEKS                       R20 R26 K60 ["useThoughtReceived"]
      182 SETTABLEKS                       R21 R26 K61 ["usePoseDeselected"]
      184 SETTABLEKS                       R22 R26 K62 ["usePoseEdited"]
      186 SETTABLEKS                       R23 R26 K63 ["useClipToUpscalePreviewRigChanged"]
      188 DUPTABLE                         R27 K68 [{"EventName", "fire"}]
      189 SETTABLEKS                       R12 R27 K66 ["EventName"]
      191 SETTABLEKS                       R15 R27 K67 ["fire"]
      193 SETTABLEKS                       R27 R26 K64 ["_tests"]
      195 RETURN                           R26 1
