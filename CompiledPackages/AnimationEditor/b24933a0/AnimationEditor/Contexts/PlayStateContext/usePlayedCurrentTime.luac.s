PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["timeRange"]
        3 GETTABLEKS                       R0 R0 K1 ["Min"]
        5 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K5 [{"startPosition", "startTime", "isPlaying", "playbackSpeed", "timeRange"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["timeRange"]
        4 GETTABLEKS                       R1 R1 K6 ["Min"]
        6 SETTABLEKS                       R1 R0 K0 ["startPosition"]
        8 GETIMPORT                        R1 K9 [os.clock]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K1 ["startTime"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K10 ["isAutomaticallyPlayingRef"]
       16 GETTABLEKS                       R1 R1 K11 ["current"]
       18 SETTABLEKS                       R1 R0 K2 ["isPlaying"]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K11 ["current"]
       23 SETTABLEKS                       R1 R0 K3 ["playbackSpeed"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K11 ["current"]
       28 SETTABLEKS                       R1 R0 K4 ["timeRange"]
       30 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K5 [{"startPosition", "startTime", "isPlaying", "playbackSpeed", "timeRange"}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K6 ["current"]
        5 GETTABLEKS                       R5 R5 K7 ["Min"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K6 ["current"]
       10 GETTABLEKS                       R6 R6 K8 ["Max"]
       12 FASTCALL3                        MATH_CLAMP R0 R5 R6
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K11 [math.clamp]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K0 ["startPosition"]
       20 GETIMPORT                        R3 K14 [os.clock]
       22 CALL                             R3 0 1
       23 SETTABLEKS                       R3 R2 K1 ["startTime"]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K15 ["isAutomaticallyPlayingRef"]
       28 GETTABLEKS                       R3 R3 K6 ["current"]
       30 SETTABLEKS                       R3 R2 K2 ["isPlaying"]
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K6 ["current"]
       35 SETTABLEKS                       R3 R2 K3 ["playbackSpeed"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K6 ["current"]
       40 SETTABLEKS                       R3 R2 K4 ["timeRange"]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K5 [{"startPosition", "startTime", "isPlaying", "playbackSpeed", "timeRange"}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K6 ["current"]
        5 SETTABLEKS                       R2 R1 K0 ["startPosition"]
        7 GETIMPORT                        R2 K9 [os.clock]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K1 ["startTime"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K10 ["isAutomaticallyPlayingRef"]
       15 GETTABLEKS                       R2 R2 K6 ["current"]
       17 SETTABLEKS                       R2 R1 K2 ["isPlaying"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K6 ["current"]
       22 SETTABLEKS                       R2 R1 K3 ["playbackSpeed"]
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K6 ["current"]
       27 SETTABLEKS                       R2 R1 K4 ["timeRange"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["timeRange"]
        3 GETTABLEKS                       R1 R1 K1 ["Min"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K2 ["startPosition"]
        8 GETIMPORT                        R7 K5 [os.clock]
       10 CALL                             R7 0 1
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K6 ["startTime"]
       14 SUB                              R6 R7 R8
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K7 ["playbackSpeed"]
       18 MUL                              R5 R6 R7
       19 ADD                              R3 R4 R5
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["timeRange"]
       23 GETTABLEKS                       R5 R5 K8 ["Max"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K0 ["timeRange"]
       28 GETTABLEKS                       R6 R6 K1 ["Min"]
       30 SUB                              R4 R5 R6
       31 MOD                              R2 R3 R4
       32 ADD                              R0 R1 R2
       33 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
        3 JUMPIF                           R0 ; [+25]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["timeRange"]
        8 GETTABLEKS                       R2 R2 K2 ["Min"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["startPosition"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K1 ["timeRange"]
       16 GETTABLEKS                       R6 R6 K4 ["Max"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K1 ["timeRange"]
       21 GETTABLEKS                       R7 R7 K2 ["Min"]
       23 SUB                              R5 R6 R7
       24 MOD                              R3 R4 R5
       25 ADD                              R1 R2 R3
       26 CALL                             R0 1 0
       27 LOADNIL                          R0
       28 RETURN                           R0 1
       29 NEWCLOSURE                       R0 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U0
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R1 K5 ["RenderStepped"]
       35 MOVE                             R3 R0
       36 NAMECALL                         R1 R1 K6 ["Connect"]
       38 CALL                             R1 2 1
       39 GETUPVAL                         R2 1
       40 NEWCLOSURE                       R3 P1
       41 CAPTURE                          UPVAL U0
       42 CALL                             R2 1 0
       43 NEWCLOSURE                       R2 P2
       44 CAPTURE                          VAL R1
       45 RETURN                           R2 1

PROTO_8:
        0 DUPTABLE                         R0 K4 [{"currentTime", "setCurrentTime", "initialState", "setInitialState"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["currentTime"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setCurrentTime"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["initialState"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setInitialState"]
       13 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRefToState"]
        3 GETTABLEKS                       R2 R0 K1 ["timeRange"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useRefToState"]
        9 GETTABLEKS                       R3 R0 K2 ["playbackSpeed"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K1 ["timeRange"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K4 ["useState"]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R7 0 3
       36 GETTABLEKS                       R8 R0 K1 ["timeRange"]
       38 GETTABLEKS                       R9 R0 K5 ["isAutomaticallyPlayingRef"]
       40 MOVE                             R10 R2
       41 SETLIST                          R7 R8 3 [1]
       43 CALL                             R5 2 -1
       44 CALL                             R4 -1 2
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K4 ["useState"]
       48 MOVE                             R7 R3
       49 CALL                             R6 1 2
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K0 ["useRefToState"]
       53 MOVE                             R9 R6
       54 CALL                             R8 1 1
       55 GETUPVAL                         R9 1
       56 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R11 0 3
       65 MOVE                             R12 R5
       66 MOVE                             R13 R1
       67 MOVE                             R14 R2
       68 SETLIST                          R11 R12 3 [1]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       74 NEWCLOSURE                       R11 P3
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R1
       80 NEWTABLE                         R12 0 4
       82 GETTABLEKS                       R13 R0 K5 ["isAutomaticallyPlayingRef"]
       84 GETTABLEKS                       R13 R13 K7 ["current"]
       86 GETTABLEKS                       R14 R2 K7 ["current"]
       88 GETTABLEKS                       R15 R1 K7 ["current"]
       90 MOVE                             R16 R8
       91 SETLIST                          R12 R13 4 [1]
       93 CALL                             R10 2 0
       94 GETUPVAL                         R10 1
       95 GETTABLEKS                       R10 R10 K6 ["useEffect"]
       97 NEWCLOSURE                       R11 P4
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R7
      100 CAPTURE                          UPVAL U2
      101 NEWTABLE                         R12 0 1
      103 MOVE                             R13 R4
      104 SETLIST                          R12 R13 1 [1]
      106 CALL                             R10 2 0
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K8 ["useMemo"]
      110 NEWCLOSURE                       R11 P5
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R5
      115 NEWTABLE                         R12 0 4
      117 MOVE                             R13 R6
      118 MOVE                             R14 R9
      119 MOVE                             R15 R4
      120 MOVE                             R16 R5
      121 SETLIST                          R12 R13 4 [1]
      123 CALL                             R10 2 -1
      124 RETURN                           R10 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["timeRange"]
        3 GETTABLEKS                       R0 R0 K1 ["Min"]
        5 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["current"]
        4 GETTABLEKS                       R4 R4 K1 ["Min"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["current"]
        9 GETTABLEKS                       R5 R5 K2 ["Max"]
       11 FASTCALL3                        MATH_CLAMP R0 R4 R5
       13 MOVE                             R3 R0
       14 GETIMPORT                        R2 K5 [math.clamp]
       16 CALL                             R2 3 1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R2 R0 K1 ["Min"]
        5 GETUPVAL                         R5 1
        6 GETIMPORT                        R8 K4 [os.clock]
        8 CALL                             R8 0 1
        9 GETUPVAL                         R9 2
       10 SUB                              R7 R8 R9
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R8 R8 K0 ["current"]
       14 MUL                              R6 R7 R8
       15 ADD                              R4 R5 R6
       16 GETTABLEKS                       R6 R0 K5 ["Max"]
       18 GETTABLEKS                       R7 R0 K1 ["Min"]
       20 SUB                              R5 R6 R7
       21 MOD                              R3 R4 R5
       22 ADD                              R1 R2 R3
       23 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isAutomaticallyPlayingRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isAutomaticallyPlayingRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 1
        9 GETIMPORT                        R1 K4 [os.clock]
       11 CALL                             R1 0 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U4
       19 GETUPVAL                         R3 5
       20 GETTABLEKS                       R3 R3 K5 ["RenderStepped"]
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K6 ["Connect"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["isAutomaticallyPlayingRef"]
       29 GETTABLEKS                       R4 R4 K1 ["current"]
       31 JUMPIF                           R4 ; [+1]
       32 JUMP                             ; [+7]
       33 GETUPVAL                         R4 2
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CALL                             R4 1 0
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1

PROTO_16:
        0 DUPTABLE                         R0 K5 [{[1], ["setCurrentTime"], ["initialState"] = , ["setInitialState"] = }]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["currentTime"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setCurrentTime"]
        7 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRefToState"]
        3 GETTABLEKS                       R2 R0 K1 ["timeRange"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useRefToState"]
        9 GETTABLEKS                       R3 R0 K2 ["playbackSpeed"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R0 K1 ["timeRange"]
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K4 ["useState"]
       27 MOVE                             R5 R3
       28 CALL                             R4 1 2
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R8 0 1
       37 MOVE                             R9 R1
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       44 NEWCLOSURE                       R8 P2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U2
       51 NEWTABLE                         R9 0 2
       53 GETTABLEKS                       R10 R0 K6 ["isAutomaticallyPlayingRef"]
       55 GETTABLEKS                       R10 R10 K7 ["current"]
       57 MOVE                             R11 R1
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R7 1
       62 GETTABLEKS                       R7 R7 K8 ["useMemo"]
       64 NEWCLOSURE                       R8 P3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 NEWTABLE                         R9 0 2
       69 MOVE                             R10 R4
       70 MOVE                             R11 R6
       71 SETLIST                          R9 R10 2 [1]
       73 CALL                             R7 2 -1
       74 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Flags"]
       31 GETTABLEKS                       R5 R5 K14 ["getFFlagAnimGraphUI_RunTimeDebug"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K15 [PROTO_9]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 DUPCLOSURE                       R6 K16 [PROTO_17]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 MOVE                             R8 R4
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+2]
       45 MOVE                             R7 R5
       46 RETURN                           R7 1
       47 MOVE                             R7 R6
       48 RETURN                           R7 1
