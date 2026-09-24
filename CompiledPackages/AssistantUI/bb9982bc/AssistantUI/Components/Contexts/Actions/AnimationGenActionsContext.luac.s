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
        1 LOADK                            R3 K0 ["animatorRemoved"]
        2 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["playbackRestarted"]
        2 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["poseDeselected"]
        2 GETTABLEKS                       R4 R0 K1 ["toolUseId"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 LOADK                            R4 K1 ["animatorRemoved"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 3
       11 LOADK                            R5 K1 ["animatorRemoved"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 SETLIST                          R4 R5 3 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 LOADK                            R4 K1 ["playbackRestarted"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 3
       11 LOADK                            R5 K1 ["playbackRestarted"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 SETLIST                          R4 R5 3 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEffect"]
        3 LOADK                            R4 K1 ["poseDeselected"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 3
       11 LOADK                            R5 K1 ["poseDeselected"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 SETLIST                          R4 R5 3 [1]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["createAnimationGenBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenBridgeTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["createElement"]
       25 GETTABLEKS                       R4 R2 K12 ["createContext"]
       27 LOADNIL                          R5
       28 CALL                             R4 1 1
       29 DUPTABLE                         R5 K19 [{["AnimatorRemoved"] = "animatorRemoved", ["PlaybackRestarted"] = "playbackRestarted", ["PoseDeselected"] = "poseDeselected"}]
       30 DUPTABLE                         R6 K20 [{"animatorRemoved", "playbackRestarted", "poseDeselected"}]
       31 NEWTABLE                         R7 0 0
       33 SETTABLEKS                       R7 R6 K14 ["animatorRemoved"]
       35 NEWTABLE                         R7 0 0
       37 SETTABLEKS                       R7 R6 K16 ["playbackRestarted"]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K18 ["poseDeselected"]
       43 DUPCLOSURE                       R7 K21 [PROTO_1]
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R8 K22 [PROTO_2]
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R9 K23 [PROTO_4]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R7
       50 DUPTABLE                         R10 K25 [{"animatorRemoved", "restartPlayback", "poseDeselected"}]
       51 DUPCLOSURE                       R11 K26 [PROTO_5]
       52 CAPTURE                          VAL R8
       53 SETTABLEKS                       R11 R10 K14 ["animatorRemoved"]
       55 DUPCLOSURE                       R11 K27 [PROTO_6]
       56 CAPTURE                          VAL R8
       57 SETTABLEKS                       R11 R10 K24 ["restartPlayback"]
       59 DUPCLOSURE                       R11 K28 [PROTO_7]
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R11 R10 K18 ["poseDeselected"]
       63 DUPCLOSURE                       R11 K29 [PROTO_8]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R7
       66 DUPCLOSURE                       R12 K30 [PROTO_9]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 DUPCLOSURE                       R13 K31 [PROTO_10]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R14 K32 [PROTO_12]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R4
       76 DUPTABLE                         R15 K39 [{"Context", "Provider", "guestBridgeImplementation", "useAnimatorRemoved", "usePlaybackRestarted", "usePoseDeselected"}]
       77 SETTABLEKS                       R4 R15 K33 ["Context"]
       79 SETTABLEKS                       R14 R15 K34 ["Provider"]
       81 SETTABLEKS                       R10 R15 K35 ["guestBridgeImplementation"]
       83 SETTABLEKS                       R11 R15 K36 ["useAnimatorRemoved"]
       85 SETTABLEKS                       R12 R15 K37 ["usePlaybackRestarted"]
       87 SETTABLEKS                       R13 R15 K38 ["usePoseDeselected"]
       89 RETURN                           R15 1
