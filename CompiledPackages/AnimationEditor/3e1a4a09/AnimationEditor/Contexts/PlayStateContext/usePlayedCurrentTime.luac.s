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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+29]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["defaultTime"]
        6 JUMPIFEQKNIL                     R0 ; [+25]
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+18]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["defaultTime"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K1 ["timeRange"]
       16 GETTABLEKS                       R2 R2 K2 ["Min"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K1 ["timeRange"]
       21 GETTABLEKS                       R3 R3 K3 ["Max"]
       23 FASTCALL                         MATH_CLAMP ; [+2]
       24 GETIMPORT                        R0 K6 [math.clamp]
       26 CALL                             R0 3 1
       27 RETURN                           R0 1
       28 GETUPVAL                         R0 1
       29 GETTABLEKS                       R0 R0 K0 ["defaultTime"]
       31 RETURN                           R0 1
       32 GETUPVAL                         R0 1
       33 GETTABLEKS                       R0 R0 K1 ["timeRange"]
       35 GETTABLEKS                       R0 R0 K2 ["Min"]
       37 RETURN                           R0 1

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
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+17]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K6 ["current"]
        7 GETTABLEKS                       R5 R5 K7 ["Min"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K6 ["current"]
       12 GETTABLEKS                       R6 R6 K8 ["Max"]
       14 FASTCALL3                        MATH_CLAMP R0 R5 R6
       16 MOVE                             R4 R0
       17 GETIMPORT                        R3 K11 [math.clamp]
       19 CALL                             R3 3 1
       20 JUMP                             ; [+1]
       21 MOVE                             R3 R0
       22 SETTABLEKS                       R3 R2 K0 ["startPosition"]
       24 GETIMPORT                        R3 K14 [os.clock]
       26 CALL                             R3 0 1
       27 SETTABLEKS                       R3 R2 K1 ["startTime"]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K15 ["isAutomaticallyPlayingRef"]
       32 GETTABLEKS                       R3 R3 K6 ["current"]
       34 SETTABLEKS                       R3 R2 K2 ["isPlaying"]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K6 ["current"]
       39 SETTABLEKS                       R3 R2 K3 ["playbackSpeed"]
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K6 ["current"]
       44 SETTABLEKS                       R3 R2 K4 ["timeRange"]
       46 CALL                             R1 1 0
       47 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K5 [{"startPosition", "startTime", "isPlaying", "playbackSpeed", "timeRange"}]
        1 GETTABLEKS                       R3 R0 K2 ["isPlaying"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 GETUPVAL                         R2 0
        5 JUMP                             ; [+49]
        6 GETUPVAL                         R3 1
        7 JUMPIF                           R3 ; [+3]
        8 GETTABLEKS                       R2 R0 K0 ["startPosition"]
       10 JUMP                             ; [+44]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K6 ["wrapPausedTime"]
       14 JUMPIFNOTEQKB                    R3 FALSE ; [+18]
       16 GETTABLEKS                       R3 R0 K0 ["startPosition"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K7 ["current"]
       21 GETTABLEKS                       R4 R4 K8 ["Min"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K7 ["current"]
       26 GETTABLEKS                       R5 R5 K9 ["Max"]
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R2 K12 [math.clamp]
       31 CALL                             R2 3 1
       32 JUMP                             ; [+22]
       33 GETTABLEKS                       R3 R0 K0 ["startPosition"]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K7 ["current"]
       38 GETUPVAL                         R6 4
       39 CALL                             R6 0 1
       40 JUMPIFNOT                        R6 ; [+4]
       41 GETTABLEKS                       R6 R4 K8 ["Min"]
       43 SUB                              R5 R3 R6
       44 JUMP                             ; [+1]
       45 MOVE                             R5 R3
       46 GETTABLEKS                       R6 R4 K8 ["Min"]
       48 GETTABLEKS                       R9 R4 K9 ["Max"]
       50 GETTABLEKS                       R10 R4 K8 ["Min"]
       52 SUB                              R8 R9 R10
       53 MOD                              R7 R5 R8
       54 ADD                              R2 R6 R7
       55 SETTABLEKS                       R2 R1 K0 ["startPosition"]
       57 GETIMPORT                        R2 K15 [os.clock]
       59 CALL                             R2 0 1
       60 SETTABLEKS                       R2 R1 K1 ["startTime"]
       62 GETUPVAL                         R2 2
       63 GETTABLEKS                       R2 R2 K16 ["isAutomaticallyPlayingRef"]
       65 GETTABLEKS                       R2 R2 K7 ["current"]
       67 SETTABLEKS                       R2 R1 K2 ["isPlaying"]
       69 GETUPVAL                         R2 5
       70 GETTABLEKS                       R2 R2 K7 ["current"]
       72 SETTABLEKS                       R2 R1 K3 ["playbackSpeed"]
       74 GETUPVAL                         R2 3
       75 GETTABLEKS                       R2 R2 K7 ["current"]
       77 SETTABLEKS                       R2 R1 K4 ["timeRange"]
       79 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 GETUPVAL                         R1 2
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U6
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 2
       17 DUPTABLE                         R1 K6 [{"startPosition", "startTime", "isPlaying", "playbackSpeed", "timeRange"}]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K0 ["current"]
       21 SETTABLEKS                       R2 R1 K1 ["startPosition"]
       23 GETIMPORT                        R2 K9 [os.clock]
       25 CALL                             R2 0 1
       26 SETTABLEKS                       R2 R1 K2 ["startTime"]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K10 ["isAutomaticallyPlayingRef"]
       31 GETTABLEKS                       R2 R2 K0 ["current"]
       33 SETTABLEKS                       R2 R1 K3 ["isPlaying"]
       35 GETUPVAL                         R2 6
       36 GETTABLEKS                       R2 R2 K0 ["current"]
       38 SETTABLEKS                       R2 R1 K4 ["playbackSpeed"]
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R2 R2 K0 ["current"]
       43 SETTABLEKS                       R2 R1 K5 ["timeRange"]
       45 CALL                             R0 1 0
       46 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R5 K2 [os.clock]
        3 CALL                             R5 0 1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K3 ["startTime"]
        7 SUB                              R4 R5 R6
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["playbackSpeed"]
       11 MUL                              R3 R4 R5
       12 ADD                              R1 R2 R3
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["timeRange"]
       16 GETUPVAL                         R4 2
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+4]
       19 GETTABLEKS                       R4 R2 K6 ["Min"]
       21 SUB                              R3 R1 R4
       22 JUMP                             ; [+1]
       23 MOVE                             R3 R1
       24 GETTABLEKS                       R4 R2 K6 ["Min"]
       26 GETTABLEKS                       R7 R2 K7 ["Max"]
       28 GETTABLEKS                       R8 R2 K6 ["Min"]
       30 SUB                              R6 R7 R8
       31 MOD                              R5 R3 R6
       32 ADD                              R0 R4 R5
       33 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
        3 JUMPIF                           R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["startPosition"]
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 RETURN                           R0 1
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["isPlaying"]
       16 JUMPIF                           R0 ; [+53]
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R2 3
       19 CALL                             R2 0 1
       20 JUMPIFNOT                        R2 ; [+23]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K2 ["wrapPausedTime"]
       24 JUMPIFNOTEQKB                    R2 FALSE ; [+19]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K1 ["startPosition"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K3 ["timeRange"]
       32 GETTABLEKS                       R3 R3 K4 ["Min"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K3 ["timeRange"]
       37 GETTABLEKS                       R4 R4 K5 ["Max"]
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R1 K8 [math.clamp]
       42 CALL                             R1 3 1
       43 JUMP                             ; [+23]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K1 ["startPosition"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K3 ["timeRange"]
       50 GETUPVAL                         R5 3
       51 CALL                             R5 0 1
       52 JUMPIFNOT                        R5 ; [+4]
       53 GETTABLEKS                       R5 R3 K4 ["Min"]
       55 SUB                              R4 R2 R5
       56 JUMP                             ; [+1]
       57 MOVE                             R4 R2
       58 GETTABLEKS                       R5 R3 K4 ["Min"]
       60 GETTABLEKS                       R8 R3 K5 ["Max"]
       62 GETTABLEKS                       R9 R3 K4 ["Min"]
       64 SUB                              R7 R8 R9
       65 MOD                              R6 R4 R7
       66 ADD                              R1 R5 R6
       67 CALL                             R0 1 0
       68 LOADNIL                          R0
       69 RETURN                           R0 1
       70 GETUPVAL                         R0 0
       71 GETTABLEKS                       R0 R0 K1 ["startPosition"]
       73 GETUPVAL                         R1 1
       74 JUMPIF                           R1 ; [+19]
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R1 R1 K3 ["timeRange"]
       78 GETTABLEKS                       R1 R1 K4 ["Min"]
       80 JUMPIFLT                         R0 R1 ; [+8]
       82 GETUPVAL                         R1 0
       83 GETTABLEKS                       R1 R1 K3 ["timeRange"]
       85 GETTABLEKS                       R1 R1 K5 ["Max"]
       87 JUMPIFNOTLT                      R1 R0 ; [+6]
       89 GETUPVAL                         R1 0
       90 GETTABLEKS                       R1 R1 K3 ["timeRange"]
       92 GETTABLEKS                       R0 R1 K4 ["Min"]
       94 NEWCLOSURE                       R1 P0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          REF R0
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U3
       99 GETUPVAL                         R2 5
      100 GETTABLEKS                       R2 R2 K9 ["RenderStepped"]
      102 MOVE                             R4 R1
      103 NAMECALL                         R2 R2 K10 ["Connect"]
      105 CALL                             R2 2 1
      106 GETUPVAL                         R3 2
      107 NEWCLOSURE                       R4 P1
      108 CAPTURE                          REF R0
      109 CAPTURE                          UPVAL U0
      110 CAPTURE                          UPVAL U3
      111 CALL                             R3 1 0
      112 NEWCLOSURE                       R3 P2
      113 CAPTURE                          VAL R2
      114 CLOSEUPVALS                      R0
      115 RETURN                           R3 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+6]
        4 GETTABLEKS                       R2 R0 K0 ["clampTimeToRange"]
        6 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["useRefToState"]
       13 GETTABLEKS                       R3 R0 K2 ["timeRange"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["useRefToState"]
       19 GETTABLEKS                       R4 R0 K3 ["playbackSpeed"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R6 0 3
       31 GETTABLEKS                       R7 R0 K2 ["timeRange"]
       33 GETTABLEKS                       R8 R0 K5 ["defaultTime"]
       35 MOVE                             R9 R1
       36 SETLIST                          R6 R7 3 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K6 ["useState"]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R8 0 3
       52 MOVE                             R9 R4
       53 GETTABLEKS                       R10 R0 K7 ["isAutomaticallyPlayingRef"]
       55 MOVE                             R11 R3
       56 SETLIST                          R8 R9 3 [1]
       58 CALL                             R6 2 -1
       59 CALL                             R5 -1 2
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R7 R7 K6 ["useState"]
       63 MOVE                             R8 R4
       64 CALL                             R7 1 2
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K1 ["useRefToState"]
       68 MOVE                             R10 R7
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 2
       71 GETTABLEKS                       R10 R10 K4 ["useCallback"]
       73 NEWCLOSURE                       R11 P2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R3
       79 NEWTABLE                         R12 0 4
       81 MOVE                             R13 R6
       82 MOVE                             R14 R2
       83 MOVE                             R15 R3
       84 MOVE                             R16 R1
       85 SETLIST                          R12 R13 4 [1]
       87 CALL                             R10 2 1
       88 GETUPVAL                         R11 2
       89 GETTABLEKS                       R11 R11 K8 ["useEffect"]
       91 NEWCLOSURE                       R12 P3
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 NEWTABLE                         R13 0 4
      101 GETTABLEKS                       R14 R0 K7 ["isAutomaticallyPlayingRef"]
      103 GETTABLEKS                       R14 R14 K9 ["current"]
      105 GETTABLEKS                       R15 R3 K9 ["current"]
      107 GETTABLEKS                       R16 R2 K9 ["current"]
      109 MOVE                             R17 R9
      110 SETLIST                          R13 R14 4 [1]
      112 CALL                             R11 2 0
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R11 R11 K8 ["useEffect"]
      116 NEWCLOSURE                       R12 P4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R8
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U3
      123 NEWTABLE                         R13 0 3
      125 MOVE                             R14 R5
      126 GETTABLEKS                       R15 R0 K10 ["wrapPausedTime"]
      128 MOVE                             R16 R1
      129 SETLIST                          R13 R14 3 [1]
      131 CALL                             R11 2 0
      132 GETUPVAL                         R11 2
      133 GETTABLEKS                       R11 R11 K11 ["useMemo"]
      135 NEWCLOSURE                       R12 P5
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R6
      141 NEWTABLE                         R13 0 5
      143 MOVE                             R14 R7
      144 MOVE                             R15 R9
      145 MOVE                             R16 R10
      146 MOVE                             R17 R5
      147 MOVE                             R18 R6
      148 SETLIST                          R13 R14 5 [1]
      150 CALL                             R11 2 -1
      151 RETURN                           R11 -1

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
       36 DUPCLOSURE                       R6 K16 [PROTO_11]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 RETURN                           R6 1
