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
        1 GETTABLEKS                       R1 R1 K0 ["setPlaybackSpeed"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["openInAnimationClipEditor"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditPreview"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEditPreviewReach"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["Fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R0 K8 [{"generateAndSaveAnimationAsync", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "openInAnimationClipEditor", "beginEditPreview", "setEditPreviewReach"}]
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
       24 SETTABLEKS                       R1 R0 K4 ["setPlaybackSpeed"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R1 R0 K5 ["openInAnimationClipEditor"]
       31 NEWCLOSURE                       R1 P6
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 SETTABLEKS                       R1 R0 K6 ["beginEditPreview"]
       36 NEWCLOSURE                       R1 P7
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 SETTABLEKS                       R1 R0 K7 ["setEditPreviewReach"]
       41 RETURN                           R0 1

PROTO_28:
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
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Bridges"]
       23 GETTABLEKS                       R5 R5 K10 ["createAnimationGenBridge"]
       25 GETTABLEKS                       R5 R5 K11 ["AnimationGenBridgeTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Remotes"]
       32 GETTABLEKS                       R6 R6 K13 ["AnimationGenRemotes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Util"]
       39 GETTABLEKS                       R7 R7 K15 ["Bin"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       46 GETTABLEKS                       R8 R8 K17 ["useNetworking"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R3 K18 ["createElement"]
       51 GETTABLEKS                       R9 R3 K19 ["createContext"]
       53 LOADNIL                          R10
       54 CALL                             R9 1 1
       55 DUPTABLE                         R10 K26 [{["AnimatorRemoved"] = "animatorRemoved", ["PlaybackRestarted"] = "playbackRestarted", ["PoseDeselected"] = "poseDeselected"}]
       56 DUPTABLE                         R11 K27 [{"animatorRemoved", "playbackRestarted", "poseDeselected"}]
       57 NEWTABLE                         R12 0 0
       59 SETTABLEKS                       R12 R11 K21 ["animatorRemoved"]
       61 NEWTABLE                         R12 0 0
       63 SETTABLEKS                       R12 R11 K23 ["playbackRestarted"]
       65 NEWTABLE                         R12 0 0
       67 SETTABLEKS                       R12 R11 K25 ["poseDeselected"]
       69 DUPCLOSURE                       R12 K28 [PROTO_1]
       70 CAPTURE                          VAL R11
       71 DUPCLOSURE                       R13 K29 [PROTO_2]
       72 CAPTURE                          VAL R11
       73 DUPCLOSURE                       R14 K30 [PROTO_4]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R12
       76 DUPTABLE                         R15 K32 [{"animatorRemoved", "restartPlayback", "poseDeselected"}]
       77 DUPCLOSURE                       R16 K33 [PROTO_5]
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R10
       80 SETTABLEKS                       R16 R15 K21 ["animatorRemoved"]
       82 DUPCLOSURE                       R16 K34 [PROTO_6]
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R10
       85 SETTABLEKS                       R16 R15 K31 ["restartPlayback"]
       87 DUPCLOSURE                       R16 K35 [PROTO_7]
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R16 R15 K25 ["poseDeselected"]
       92 DUPCLOSURE                       R16 K36 [PROTO_8]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R12
       96 DUPCLOSURE                       R17 K37 [PROTO_9]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R12
      100 DUPCLOSURE                       R18 K38 [PROTO_10]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R12
      104 DUPCLOSURE                       R19 K39 [PROTO_12]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R9
      108 DUPCLOSURE                       R20 K40 [PROTO_28]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R9
      118 DUPTABLE                         R21 K49 [{"Context", "ProviderOLD", "Provider", "guestBridgeImplementation", "useAnimatorRemoved", "usePlaybackRestarted", "usePoseDeselected", "_tests"}]
      119 SETTABLEKS                       R9 R21 K41 ["Context"]
      121 SETTABLEKS                       R19 R21 K42 ["ProviderOLD"]
      123 SETTABLEKS                       R20 R21 K43 ["Provider"]
      125 SETTABLEKS                       R15 R21 K44 ["guestBridgeImplementation"]
      127 SETTABLEKS                       R16 R21 K45 ["useAnimatorRemoved"]
      129 SETTABLEKS                       R17 R21 K46 ["usePlaybackRestarted"]
      131 SETTABLEKS                       R18 R21 K47 ["usePoseDeselected"]
      133 DUPTABLE                         R22 K52 [{"EventName", "fire"}]
      134 SETTABLEKS                       R10 R22 K50 ["EventName"]
      136 SETTABLEKS                       R13 R22 K51 ["fire"]
      138 SETTABLEKS                       R22 R21 K48 ["_tests"]
      140 RETURN                           R21 1
