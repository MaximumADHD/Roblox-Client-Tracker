PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETTABLEKS                       R3 R1 K0 ["Min"]
        5 SUB                              R2 R0 R3
        6 JUMP                             ; [+1]
        7 MOVE                             R2 R0
        8 GETTABLEKS                       R4 R1 K0 ["Min"]
       10 GETTABLEKS                       R7 R1 K1 ["Max"]
       12 GETTABLEKS                       R8 R1 K0 ["Min"]
       14 SUB                              R6 R7 R8
       15 MOD                              R5 R2 R6
       16 ADD                              R3 R4 R5
       17 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["defaultTime"]
        6 JUMPIFEQKNIL                     R1 ; [+19]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["defaultTime"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["timeRange"]
       14 GETTABLEKS                       R2 R2 K2 ["Min"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["timeRange"]
       19 GETTABLEKS                       R3 R3 K3 ["Max"]
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R0 K6 [math.clamp]
       24 CALL                             R0 3 1
       25 RETURN                           R0 1
       26 GETUPVAL                         R0 1
       27 GETTABLEKS                       R0 R0 K1 ["timeRange"]
       29 GETTABLEKS                       R0 R0 K2 ["Min"]
       31 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K5 [{"startPosition", "startTime", "isPlaying", "playbackSpeed", "timeRange"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["startPosition"]
        5 GETIMPORT                        R1 K8 [os.clock]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K1 ["startTime"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K9 ["isAutomaticallyPlayingRef"]
       13 GETTABLEKS                       R1 R1 K10 ["current"]
       15 SETTABLEKS                       R1 R0 K2 ["isPlaying"]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K10 ["current"]
       20 SETTABLEKS                       R1 R0 K3 ["playbackSpeed"]
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K10 ["current"]
       25 SETTABLEKS                       R1 R0 K4 ["timeRange"]
       27 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["startPosition"]
        3 GETIMPORT                        R5 K3 [os.clock]
        5 CALL                             R5 0 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K4 ["startTime"]
        9 SUB                              R4 R5 R6
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K5 ["playbackSpeed"]
       13 MUL                              R3 R4 R5
       14 ADD                              R1 R2 R3
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["timeRange"]
       18 GETUPVAL                         R4 1
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETTABLEKS                       R4 R2 K7 ["Min"]
       23 SUB                              R3 R1 R4
       24 JUMP                             ; [+1]
       25 MOVE                             R3 R1
       26 GETTABLEKS                       R4 R2 K7 ["Min"]
       28 GETTABLEKS                       R7 R2 K8 ["Max"]
       30 GETTABLEKS                       R8 R2 K7 ["Min"]
       32 SUB                              R6 R7 R8
       33 MOD                              R5 R3 R6
       34 ADD                              R0 R4 R5
       35 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
        3 JUMPIF                           R0 ; [+53]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+23]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R2 R2 K1 ["wrapPausedTime"]
       11 JUMPIFNOTEQKB                    R2 FALSE ; [+19]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["startPosition"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["timeRange"]
       19 GETTABLEKS                       R3 R3 K4 ["Min"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K3 ["timeRange"]
       24 GETTABLEKS                       R4 R4 K5 ["Max"]
       26 FASTCALL                         MATH_CLAMP ; [+2]
       27 GETIMPORT                        R1 K8 [math.clamp]
       29 CALL                             R1 3 1
       30 JUMP                             ; [+23]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K2 ["startPosition"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K3 ["timeRange"]
       37 GETUPVAL                         R5 2
       38 CALL                             R5 0 1
       39 JUMPIFNOT                        R5 ; [+4]
       40 GETTABLEKS                       R5 R3 K4 ["Min"]
       42 SUB                              R4 R2 R5
       43 JUMP                             ; [+1]
       44 MOVE                             R4 R2
       45 GETTABLEKS                       R5 R3 K4 ["Min"]
       47 GETTABLEKS                       R8 R3 K5 ["Max"]
       49 GETTABLEKS                       R9 R3 K4 ["Min"]
       51 SUB                              R7 R8 R9
       52 MOD                              R6 R4 R7
       53 ADD                              R1 R5 R6
       54 CALL                             R0 1 0
       55 LOADNIL                          R0
       56 RETURN                           R0 1
       57 NEWCLOSURE                       R0 P0
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U2
       61 GETUPVAL                         R1 4
       62 GETTABLEKS                       R1 R1 K9 ["RenderStepped"]
       64 MOVE                             R3 R0
       65 NAMECALL                         R1 R1 K10 ["Connect"]
       67 CALL                             R1 2 1
       68 GETUPVAL                         R2 1
       69 NEWCLOSURE                       R3 P1
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U2
       72 CALL                             R2 1 0
       73 NEWCLOSURE                       R2 P2
       74 CAPTURE                          VAL R1
       75 RETURN                           R2 1

PROTO_9:
        0 DUPTABLE                         R0 K5 [{"currentTime", "currentTimeRef", "setCurrentTime", "initialState", "setInitialState"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["currentTime"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["currentTimeRef"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["setCurrentTime"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["initialState"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setInitialState"]
       16 RETURN                           R0 1

PROTO_10:
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
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R5 0 2
       20 GETTABLEKS                       R6 R0 K1 ["timeRange"]
       22 GETTABLEKS                       R7 R0 K4 ["defaultTime"]
       24 SETLIST                          R5 R6 2 [1]
       26 CALL                             R3 2 1
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K5 ["useState"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R7 0 3
       40 MOVE                             R8 R3
       41 GETTABLEKS                       R9 R0 K6 ["isAutomaticallyPlayingRef"]
       43 MOVE                             R10 R2
       44 SETLIST                          R7 R8 3 [1]
       46 CALL                             R5 2 -1
       47 CALL                             R4 -1 2
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R6 R6 K5 ["useState"]
       51 MOVE                             R7 R3
       52 CALL                             R6 1 2
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K0 ["useRefToState"]
       56 MOVE                             R9 R6
       57 CALL                             R8 1 1
       58 GETUPVAL                         R9 1
       59 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       61 NEWCLOSURE                       R10 P2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 NEWTABLE                         R11 0 3
       68 MOVE                             R12 R5
       69 MOVE                             R13 R1
       70 MOVE                             R14 R2
       71 SETLIST                          R11 R12 3 [1]
       73 CALL                             R9 2 1
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K7 ["useEffect"]
       77 NEWCLOSURE                       R11 P3
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R1
       83 NEWTABLE                         R12 0 4
       85 GETTABLEKS                       R13 R0 K6 ["isAutomaticallyPlayingRef"]
       87 GETTABLEKS                       R13 R13 K8 ["current"]
       89 GETTABLEKS                       R14 R2 K8 ["current"]
       91 GETTABLEKS                       R15 R1 K8 ["current"]
       93 MOVE                             R16 R8
       94 SETLIST                          R12 R13 4 [1]
       96 CALL                             R10 2 0
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K7 ["useEffect"]
      100 NEWCLOSURE                       R11 P4
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R7
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U3
      106 NEWTABLE                         R12 0 2
      108 MOVE                             R13 R4
      109 GETTABLEKS                       R14 R0 K9 ["wrapPausedTime"]
      111 SETLIST                          R12 R13 2 [1]
      113 CALL                             R10 2 0
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R10 R10 K10 ["useMemo"]
      117 NEWCLOSURE                       R11 P5
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R5
      123 NEWTABLE                         R12 0 5
      125 MOVE                             R13 R6
      126 MOVE                             R14 R8
      127 MOVE                             R15 R9
      128 MOVE                             R16 R4
      129 MOVE                             R17 R5
      130 SETLIST                          R12 R13 5 [1]
      132 CALL                             R10 2 -1
      133 RETURN                           R10 -1

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
       31 GETTABLEKS                       R5 R5 K14 ["getFFlagAnimationEditorPluginUI"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K15 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R6 K16 [PROTO_10]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 RETURN                           R6 1
