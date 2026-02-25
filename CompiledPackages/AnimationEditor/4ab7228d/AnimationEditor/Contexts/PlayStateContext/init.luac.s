PROTO_0:
        0 GETUPVAL                         R2 0
        1 ADD                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R1 K0 ["current"]
        3 ADD                              R2 R2 R0
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 GETUPVAL                         R1 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 ADDK                             R1 R2 K1 [0.0333333333333333]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 SUBK                             R1 R2 K1 [0.0333333333333333]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useRef"]
       10 LOADN                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["useState"]
       15 LOADN                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K4 ["useToggleState"]
       20 GETTABLEKS                       R7 R0 K5 ["defaultPlayingState"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+3]
       24 LOADB                            R6 0
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R6 R0 K5 ["defaultPlayingState"]
       28 CALL                             R5 1 1
       29 LOADN                            R7 0
       30 JUMPIFLT                         R7 R3 ; [+2]
       32 LOADB                            R6 0 +1
       33 LOADB                            R6 1
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R7 R8 K3 ["useState"]
       37 LOADN                            R8 1
       38 CALL                             R7 1 2
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R9 R10 K2 ["useRef"]
       42 LOADB                            R10 0
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R5 K6 ["enabled"]
       46 JUMPIFNOT                        R10 ; [+1]
       47 NOT                              R10 R6
       48 SETTABLEKS                       R10 R9 K7 ["current"]
       50 GETUPVAL                         R10 3
       51 DUPTABLE                         R11 K11 [{"isAutomaticallyPlayingRef", "timeRange", "playbackSpeed"}]
       52 SETTABLEKS                       R9 R11 K8 ["isAutomaticallyPlayingRef"]
       54 GETTABLEKS                       R12 R1 K9 ["timeRange"]
       56 SETTABLEKS                       R12 R11 K9 ["timeRange"]
       58 SETTABLEKS                       R7 R11 K10 ["playbackSpeed"]
       60 CALL                             R10 1 2
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R12 R13 K12 ["useCallback"]
       64 NEWCLOSURE                       R13 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R4
       67 NEWTABLE                         R14 0 2
       69 MOVE                             R15 R4
       70 MOVE                             R16 R2
       71 SETLIST                          R14 R15 2 [1]
       73 CALL                             R12 2 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K12 ["useCallback"]
       77 NEWCLOSURE                       R14 P1
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 NEWTABLE                         R15 0 2
       83 MOVE                             R16 R10
       84 MOVE                             R17 R11
       85 SETLIST                          R15 R16 2 [1]
       87 CALL                             R13 2 1
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R14 R15 K12 ["useCallback"]
       91 NEWCLOSURE                       R15 P2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 NEWTABLE                         R16 0 2
       97 MOVE                             R17 R10
       98 MOVE                             R18 R11
       99 SETLIST                          R16 R17 2 [1]
      101 CALL                             R14 2 1
      102 GETUPVAL                         R16 4
      103 GETTABLEKS                       R15 R16 K13 ["useReplicatedState"]
      105 GETUPVAL                         R17 5
      106 GETTABLEKS                       R16 R17 K14 ["IS_PLAYING"]
      108 GETTABLEKS                       R17 R5 K6 ["enabled"]
      110 CALL                             R15 2 0
      111 GETUPVAL                         R16 4
      112 GETTABLEKS                       R15 R16 K13 ["useReplicatedState"]
      114 GETUPVAL                         R17 5
      115 GETTABLEKS                       R16 R17 K15 ["CURRENT_TIME"]
      117 MOVE                             R17 R10
      118 MOVE                             R18 R9
      119 CALL                             R15 3 0
      120 GETUPVAL                         R16 4
      121 GETTABLEKS                       R15 R16 K13 ["useReplicatedState"]
      123 GETUPVAL                         R17 5
      124 GETTABLEKS                       R16 R17 K16 ["IS_SCRUBBING"]
      126 MOVE                             R17 R6
      127 CALL                             R15 2 0
      128 GETUPVAL                         R16 4
      129 GETTABLEKS                       R15 R16 K17 ["useBoundAction"]
      131 GETUPVAL                         R17 6
      132 GETTABLEKS                       R16 R17 K18 ["TOGGLE_IS_PLAYING_ASYNC"]
      134 GETTABLEKS                       R17 R5 K19 ["toggle"]
      136 CALL                             R15 2 0
      137 GETUPVAL                         R16 4
      138 GETTABLEKS                       R15 R16 K17 ["useBoundAction"]
      140 GETUPVAL                         R17 6
      141 GETTABLEKS                       R16 R17 K20 ["INCREMENT_IS_SCRUBBING_ASYNC"]
      143 MOVE                             R17 R12
      144 CALL                             R15 2 0
      145 GETUPVAL                         R16 4
      146 GETTABLEKS                       R15 R16 K17 ["useBoundAction"]
      148 GETUPVAL                         R17 6
      149 GETTABLEKS                       R16 R17 K21 ["SET_CURRENT_TIME_ASYNC"]
      151 MOVE                             R17 R11
      152 CALL                             R15 2 0
      153 GETUPVAL                         R16 4
      154 GETTABLEKS                       R15 R16 K17 ["useBoundAction"]
      156 GETUPVAL                         R17 6
      157 GETTABLEKS                       R16 R17 K22 ["SET_PLAYBACK_SPEED"]
      159 MOVE                             R17 R8
      160 CALL                             R15 2 0
      161 DUPTABLE                         R15 K32 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "setPlaybackSpeedAsync", "stepBackAsync", "stepForwardAsync", "isPlaying", "currentTime", "isScrubbing", "playbackSpeed"}]
      162 GETTABLEKS                       R16 R5 K19 ["toggle"]
      164 SETTABLEKS                       R16 R15 K23 ["toggleIsPlayingAsync"]
      166 SETTABLEKS                       R11 R15 K24 ["setCurrentTimeAsync"]
      168 SETTABLEKS                       R12 R15 K25 ["incrementIsScrubbingAsync"]
      170 SETTABLEKS                       R8 R15 K26 ["setPlaybackSpeedAsync"]
      172 SETTABLEKS                       R14 R15 K27 ["stepBackAsync"]
      174 SETTABLEKS                       R13 R15 K28 ["stepForwardAsync"]
      176 GETTABLEKS                       R16 R5 K6 ["enabled"]
      178 SETTABLEKS                       R16 R15 K29 ["isPlaying"]
      180 SETTABLEKS                       R10 R15 K30 ["currentTime"]
      182 SETTABLEKS                       R6 R15 K31 ["isScrubbing"]
      184 SETTABLEKS                       R7 R15 K10 ["playbackSpeed"]
      186 GETUPVAL                         R17 0
      187 GETTABLEKS                       R16 R17 K33 ["createElement"]
      189 GETUPVAL                         R18 7
      190 GETTABLEKS                       R17 R18 K34 ["Provider"]
      192 DUPTABLE                         R18 K36 [{"value"}]
      193 SETTABLEKS                       R15 R18 K35 ["value"]
      195 GETTABLEKS                       R19 R0 K37 ["children"]
      197 CALL                             R16 3 -1
      198 RETURN                           R16 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["useReplicatedStateListener"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K3 ["IS_SCRUBBING"]
       13 LOADB                            R4 0
       14 CALL                             R2 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K2 ["useReplicatedStateListener"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["IS_PLAYING"]
       21 GETTABLEKS                       R6 R0 K5 ["defaultPlayingState"]
       23 JUMPIFNOTEQKNIL                  R6 ; [+3]
       25 LOADB                            R5 0
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R5 R0 K5 ["defaultPlayingState"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K2 ["useReplicatedStateListener"]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K6 ["PLAYBACK_SPEED"]
       36 LOADN                            R6 1
       37 CALL                             R4 2 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K7 ["useRef"]
       41 LOADB                            R6 0
       42 CALL                             R5 1 1
       43 MOVE                             R6 R3
       44 JUMPIFNOT                        R6 ; [+1]
       45 NOT                              R6 R2
       46 SETTABLEKS                       R6 R5 K8 ["current"]
       48 GETUPVAL                         R6 4
       49 DUPTABLE                         R7 K12 [{"timeRange", "isAutomaticallyPlayingRef", "playbackSpeed"}]
       50 GETTABLEKS                       R8 R1 K9 ["timeRange"]
       52 SETTABLEKS                       R8 R7 K9 ["timeRange"]
       54 SETTABLEKS                       R5 R7 K10 ["isAutomaticallyPlayingRef"]
       56 SETTABLEKS                       R4 R7 K11 ["playbackSpeed"]
       58 CALL                             R6 1 2
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R8 R9 K2 ["useReplicatedStateListener"]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R9 R10 K13 ["CURRENT_TIME"]
       65 MOVE                             R10 R6
       66 CALL                             R8 2 1
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K14 ["useEffect"]
       70 NEWCLOSURE                       R10 P0
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R8
       73 NEWTABLE                         R11 0 1
       75 MOVE                             R12 R8
       76 SETLIST                          R11 R12 1 [1]
       78 CALL                             R9 2 0
       79 DUPTABLE                         R9 K24 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "isPlaying", "currentTime", "isScrubbing", "stepBackAsync", "stepForwardAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
       80 GETUPVAL                         R11 2
       81 GETTABLEKS                       R10 R11 K25 ["useBoundAction"]
       83 GETUPVAL                         R12 5
       84 GETTABLEKS                       R11 R12 K26 ["TOGGLE_IS_PLAYING_ASYNC"]
       86 CALL                             R10 1 1
       87 SETTABLEKS                       R10 R9 K15 ["toggleIsPlayingAsync"]
       89 GETUPVAL                         R11 2
       90 GETTABLEKS                       R10 R11 K25 ["useBoundAction"]
       92 GETUPVAL                         R12 5
       93 GETTABLEKS                       R11 R12 K27 ["SET_CURRENT_TIME_ASYNC"]
       95 CALL                             R10 1 1
       96 SETTABLEKS                       R10 R9 K16 ["setCurrentTimeAsync"]
       98 GETUPVAL                         R11 2
       99 GETTABLEKS                       R10 R11 K25 ["useBoundAction"]
      101 GETUPVAL                         R12 5
      102 GETTABLEKS                       R11 R12 K28 ["INCREMENT_IS_SCRUBBING_ASYNC"]
      104 CALL                             R10 1 1
      105 SETTABLEKS                       R10 R9 K17 ["incrementIsScrubbingAsync"]
      107 SETTABLEKS                       R3 R9 K18 ["isPlaying"]
      109 SETTABLEKS                       R6 R9 K19 ["currentTime"]
      111 SETTABLEKS                       R2 R9 K20 ["isScrubbing"]
      113 GETUPVAL                         R11 6
      114 GETTABLEKS                       R10 R11 K29 ["createUnimplemented"]
      116 LOADK                            R11 K21 ["stepBackAsync"]
      117 CALL                             R10 1 1
      118 SETTABLEKS                       R10 R9 K21 ["stepBackAsync"]
      120 GETUPVAL                         R11 6
      121 GETTABLEKS                       R10 R11 K29 ["createUnimplemented"]
      123 LOADK                            R11 K22 ["stepForwardAsync"]
      124 CALL                             R10 1 1
      125 SETTABLEKS                       R10 R9 K22 ["stepForwardAsync"]
      127 SETTABLEKS                       R4 R9 K11 ["playbackSpeed"]
      129 GETUPVAL                         R11 2
      130 GETTABLEKS                       R10 R11 K25 ["useBoundAction"]
      132 GETUPVAL                         R12 5
      133 GETTABLEKS                       R11 R12 K30 ["SET_PLAYBACK_SPEED"]
      135 CALL                             R10 1 1
      136 SETTABLEKS                       R10 R9 K23 ["setPlaybackSpeedAsync"]
      138 GETUPVAL                         R11 0
      139 GETTABLEKS                       R10 R11 K31 ["createElement"]
      141 GETUPVAL                         R12 7
      142 GETTABLEKS                       R11 R12 K32 ["Provider"]
      144 DUPTABLE                         R12 K34 [{"value"}]
      145 SETTABLEKS                       R9 R12 K33 ["value"]
      147 GETTABLEKS                       R13 R0 K35 ["children"]
      149 CALL                             R10 3 -1
      150 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Networking"]
       13 GETTABLEKS                       R2 R3 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K13 ["TimeRangeContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Contexts"]
       41 GETTABLEKS                       R7 R8 K14 ["PlayStateContext"]
       43 GETTABLEKS                       R6 R7 K15 ["usePlayedCurrentTime"]
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K20 [{"IS_PLAYING", "CURRENT_TIME", "PLAYBACK_SPEED", "IS_SCRUBBING"}]
       47 LOADK                            R7 K21 ["PlayStateContext_IsPlaying"]
       48 SETTABLEKS                       R7 R6 K16 ["IS_PLAYING"]
       50 LOADK                            R7 K22 ["PlayStateContext_CurrentTime"]
       51 SETTABLEKS                       R7 R6 K17 ["CURRENT_TIME"]
       53 LOADK                            R7 K23 ["PlayStateContext_PlaybackSpeed"]
       54 SETTABLEKS                       R7 R6 K18 ["PLAYBACK_SPEED"]
       56 LOADK                            R7 K24 ["PlayStateContext_IsScrubbing"]
       57 SETTABLEKS                       R7 R6 K19 ["IS_SCRUBBING"]
       59 DUPTABLE                         R7 K31 [{"TOGGLE_IS_PLAYING_ASYNC", "SET_CURRENT_TIME_ASYNC", "SET_PLAYBACK_SPEED", "INCREMENT_IS_SCRUBBING_ASYNC", "STEP_BACK_ASYNC", "STEP_FORWARD_ASYNC"}]
       60 LOADK                            R8 K32 ["PlayStateContext_ToggleIsPlayingAsync"]
       61 SETTABLEKS                       R8 R7 K25 ["TOGGLE_IS_PLAYING_ASYNC"]
       63 LOADK                            R8 K33 ["PlayStateContext_SetCurrentTime"]
       64 SETTABLEKS                       R8 R7 K26 ["SET_CURRENT_TIME_ASYNC"]
       66 LOADK                            R8 K34 ["PlayStateContext_SetPlaybackSpeed"]
       67 SETTABLEKS                       R8 R7 K27 ["SET_PLAYBACK_SPEED"]
       69 LOADK                            R8 K35 ["PlayStateContext_IncrementIsScrubbing"]
       70 SETTABLEKS                       R8 R7 K28 ["INCREMENT_IS_SCRUBBING_ASYNC"]
       72 LOADK                            R8 K36 ["PlayStateContext_StepBack"]
       73 SETTABLEKS                       R8 R7 K29 ["STEP_BACK_ASYNC"]
       75 LOADK                            R8 K37 ["PlayStateContext_StepForward"]
       76 SETTABLEKS                       R8 R7 K30 ["STEP_FORWARD_ASYNC"]
       78 DUPTABLE                         R8 K48 [{"isPlaying", "isScrubbing", "toggleIsPlayingAsync", "stepBackAsync", "stepForwardAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "currentTime", "playbackSpeed", "setPlaybackSpeedAsync"}]
       79 LOADB                            R9 0
       80 SETTABLEKS                       R9 R8 K38 ["isPlaying"]
       82 LOADB                            R9 0
       83 SETTABLEKS                       R9 R8 K39 ["isScrubbing"]
       85 GETTABLEKS                       R9 R3 K49 ["createUnimplemented"]
       87 LOADK                            R10 K40 ["toggleIsPlayingAsync"]
       88 CALL                             R9 1 1
       89 SETTABLEKS                       R9 R8 K40 ["toggleIsPlayingAsync"]
       91 GETTABLEKS                       R9 R3 K49 ["createUnimplemented"]
       93 LOADK                            R10 K41 ["stepBackAsync"]
       94 CALL                             R9 1 1
       95 SETTABLEKS                       R9 R8 K41 ["stepBackAsync"]
       97 GETTABLEKS                       R9 R3 K49 ["createUnimplemented"]
       99 LOADK                            R10 K42 ["stepForwardAsync"]
      100 CALL                             R9 1 1
      101 SETTABLEKS                       R9 R8 K42 ["stepForwardAsync"]
      103 GETTABLEKS                       R9 R3 K49 ["createUnimplemented"]
      105 LOADK                            R10 K43 ["setCurrentTimeAsync"]
      106 CALL                             R9 1 1
      107 SETTABLEKS                       R9 R8 K43 ["setCurrentTimeAsync"]
      109 GETTABLEKS                       R9 R3 K49 ["createUnimplemented"]
      111 LOADK                            R10 K44 ["incrementIsScrubbingAsync"]
      112 CALL                             R9 1 1
      113 SETTABLEKS                       R9 R8 K44 ["incrementIsScrubbingAsync"]
      115 LOADN                            R9 0
      116 SETTABLEKS                       R9 R8 K45 ["currentTime"]
      118 LOADN                            R9 1
      119 SETTABLEKS                       R9 R8 K46 ["playbackSpeed"]
      121 GETTABLEKS                       R9 R3 K49 ["createUnimplemented"]
      123 LOADK                            R10 K47 ["setPlaybackSpeedAsync"]
      124 CALL                             R9 1 1
      125 SETTABLEKS                       R9 R8 K47 ["setPlaybackSpeedAsync"]
      127 GETTABLEKS                       R9 R2 K50 ["createContext"]
      129 MOVE                             R10 R8
      130 CALL                             R9 1 1
      131 DUPCLOSURE                       R10 K51 [PROTO_4]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R9
      140 DUPCLOSURE                       R11 K52 [PROTO_6]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R9
      149 DUPTABLE                         R12 K56 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      150 SETTABLEKS                       R9 R12 K53 ["Context"]
      152 SETTABLEKS                       R11 R12 K54 ["EditableDataModelProvider"]
      154 SETTABLEKS                       R10 R12 K55 ["UIDataModelProvider"]
      156 RETURN                           R12 1
