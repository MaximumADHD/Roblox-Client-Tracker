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
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["disable"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isOpen"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+5]
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 NEWCLOSURE                       R0 P0
       10 CAPTURE                          UPVAL U1
       11 RETURN                           R0 1

PROTO_7:
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
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R9 R10 K6 ["useProducer"]
       42 MOVE                             R10 R8
       43 CALL                             R9 1 0
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R9 R10 K6 ["useProducer"]
       47 MOVE                             R10 R7
       48 CALL                             R9 1 0
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R9 R10 K2 ["useRef"]
       52 LOADB                            R10 0
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R10 R5 K7 ["enabled"]
       56 JUMPIFNOT                        R10 ; [+1]
       57 NOT                              R10 R6
       58 SETTABLEKS                       R10 R9 K8 ["current"]
       60 GETUPVAL                         R10 5
       61 DUPTABLE                         R11 K12 [{"isAutomaticallyPlayingRef", "timeRange", "playbackSpeed"}]
       62 SETTABLEKS                       R9 R11 K9 ["isAutomaticallyPlayingRef"]
       64 GETTABLEKS                       R12 R1 K10 ["timeRange"]
       66 SETTABLEKS                       R12 R11 K10 ["timeRange"]
       68 SETTABLEKS                       R7 R11 K11 ["playbackSpeed"]
       70 CALL                             R10 1 2
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R12 R13 K13 ["useCallback"]
       74 NEWCLOSURE                       R13 P0
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R4
       77 NEWTABLE                         R14 0 2
       79 MOVE                             R15 R4
       80 MOVE                             R16 R2
       81 SETLIST                          R14 R15 2 [1]
       83 CALL                             R12 2 1
       84 GETUPVAL                         R14 0
       85 GETTABLEKS                       R13 R14 K13 ["useCallback"]
       87 NEWCLOSURE                       R14 P1
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R10
       91 NEWTABLE                         R15 0 2
       93 MOVE                             R16 R10
       94 MOVE                             R17 R11
       95 SETLIST                          R15 R16 2 [1]
       97 CALL                             R13 2 1
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R14 R15 K13 ["useCallback"]
      101 NEWCLOSURE                       R15 P2
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R10
      105 NEWTABLE                         R16 0 2
      107 MOVE                             R17 R10
      108 MOVE                             R18 R11
      109 SETLIST                          R16 R17 2 [1]
      111 CALL                             R14 2 1
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R15 R16 K13 ["useCallback"]
      115 NEWCLOSURE                       R16 P3
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R5
      119 NEWTABLE                         R17 0 0
      121 CALL                             R15 2 1
      122 GETUPVAL                         R17 0
      123 GETTABLEKS                       R16 R17 K14 ["useEffect"]
      125 NEWCLOSURE                       R17 P4
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R15
      128 NEWTABLE                         R18 0 2
      130 GETTABLEKS                       R19 R0 K15 ["isOpen"]
      132 MOVE                             R20 R15
      133 SETLIST                          R18 R19 2 [1]
      135 CALL                             R16 2 0
      136 GETUPVAL                         R16 6
      137 DUPTABLE                         R17 K18 [{"isPlaying", "currentTime"}]
      138 GETTABLEKS                       R18 R5 K7 ["enabled"]
      140 SETTABLEKS                       R18 R17 K16 ["isPlaying"]
      142 SETTABLEKS                       R10 R17 K17 ["currentTime"]
      144 CALL                             R16 1 0
      145 GETUPVAL                         R17 7
      146 GETTABLEKS                       R16 R17 K19 ["useReplicatedState"]
      148 GETUPVAL                         R18 8
      149 GETTABLEKS                       R17 R18 K20 ["IS_PLAYING"]
      151 GETTABLEKS                       R18 R5 K7 ["enabled"]
      153 CALL                             R16 2 0
      154 GETUPVAL                         R17 7
      155 GETTABLEKS                       R16 R17 K19 ["useReplicatedState"]
      157 GETUPVAL                         R18 8
      158 GETTABLEKS                       R17 R18 K21 ["CURRENT_TIME"]
      160 MOVE                             R18 R10
      161 MOVE                             R19 R9
      162 CALL                             R16 3 0
      163 GETUPVAL                         R17 7
      164 GETTABLEKS                       R16 R17 K19 ["useReplicatedState"]
      166 GETUPVAL                         R18 8
      167 GETTABLEKS                       R17 R18 K22 ["IS_SCRUBBING"]
      169 MOVE                             R18 R6
      170 CALL                             R16 2 0
      171 GETUPVAL                         R17 7
      172 GETTABLEKS                       R16 R17 K23 ["useBoundAction"]
      174 GETUPVAL                         R18 9
      175 GETTABLEKS                       R17 R18 K24 ["TOGGLE_IS_PLAYING_ASYNC"]
      177 GETTABLEKS                       R18 R5 K25 ["toggle"]
      179 CALL                             R16 2 0
      180 GETUPVAL                         R17 7
      181 GETTABLEKS                       R16 R17 K23 ["useBoundAction"]
      183 GETUPVAL                         R18 9
      184 GETTABLEKS                       R17 R18 K26 ["INCREMENT_IS_SCRUBBING_ASYNC"]
      186 MOVE                             R18 R12
      187 CALL                             R16 2 0
      188 GETUPVAL                         R17 7
      189 GETTABLEKS                       R16 R17 K23 ["useBoundAction"]
      191 GETUPVAL                         R18 9
      192 GETTABLEKS                       R17 R18 K27 ["SET_CURRENT_TIME_ASYNC"]
      194 MOVE                             R18 R11
      195 CALL                             R16 2 0
      196 DUPTABLE                         R16 K35 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "setPlaybackSpeedAsync", "stepBackAsync", "stepForwardAsync", "isPlaying", "currentTime", "isScrubbing", "playbackSpeed"}]
      197 GETTABLEKS                       R17 R5 K25 ["toggle"]
      199 SETTABLEKS                       R17 R16 K28 ["toggleIsPlayingAsync"]
      201 SETTABLEKS                       R11 R16 K29 ["setCurrentTimeAsync"]
      203 SETTABLEKS                       R12 R16 K30 ["incrementIsScrubbingAsync"]
      205 SETTABLEKS                       R8 R16 K31 ["setPlaybackSpeedAsync"]
      207 SETTABLEKS                       R14 R16 K32 ["stepBackAsync"]
      209 SETTABLEKS                       R13 R16 K33 ["stepForwardAsync"]
      211 GETTABLEKS                       R17 R5 K7 ["enabled"]
      213 SETTABLEKS                       R17 R16 K16 ["isPlaying"]
      215 SETTABLEKS                       R10 R16 K17 ["currentTime"]
      217 SETTABLEKS                       R6 R16 K34 ["isScrubbing"]
      219 SETTABLEKS                       R7 R16 K11 ["playbackSpeed"]
      221 GETUPVAL                         R18 0
      222 GETTABLEKS                       R17 R18 K36 ["createElement"]
      224 GETUPVAL                         R19 10
      225 GETTABLEKS                       R18 R19 K37 ["Provider"]
      227 DUPTABLE                         R19 K39 [{"value"}]
      228 SETTABLEKS                       R16 R19 K38 ["value"]
      230 GETTABLEKS                       R20 R0 K40 ["children"]
      232 CALL                             R17 3 -1
      233 RETURN                           R17 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
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
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R4 R5 K6 ["useConsumer"]
       33 LOADN                            R5 1
       34 CALL                             R4 1 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K7 ["useRef"]
       38 LOADB                            R6 0
       39 CALL                             R5 1 1
       40 MOVE                             R6 R3
       41 JUMPIFNOT                        R6 ; [+1]
       42 NOT                              R6 R2
       43 SETTABLEKS                       R6 R5 K8 ["current"]
       45 GETUPVAL                         R6 5
       46 DUPTABLE                         R7 K12 [{"timeRange", "isAutomaticallyPlayingRef", "playbackSpeed"}]
       47 GETTABLEKS                       R8 R1 K9 ["timeRange"]
       49 SETTABLEKS                       R8 R7 K9 ["timeRange"]
       51 SETTABLEKS                       R5 R7 K10 ["isAutomaticallyPlayingRef"]
       53 SETTABLEKS                       R4 R7 K11 ["playbackSpeed"]
       55 CALL                             R6 1 2
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R8 R9 K2 ["useReplicatedStateListener"]
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R9 R10 K13 ["CURRENT_TIME"]
       62 MOVE                             R10 R6
       63 CALL                             R8 2 1
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K14 ["useEffect"]
       67 NEWCLOSURE                       R10 P0
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 NEWTABLE                         R11 0 1
       72 MOVE                             R12 R8
       73 SETLIST                          R11 R12 1 [1]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R9 6
       77 DUPTABLE                         R10 K17 [{"isPlaying", "currentTime"}]
       78 SETTABLEKS                       R3 R10 K15 ["isPlaying"]
       80 SETTABLEKS                       R6 R10 K16 ["currentTime"]
       82 CALL                             R9 1 0
       83 DUPTABLE                         R9 K25 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "isPlaying", "currentTime", "isScrubbing", "stepBackAsync", "stepForwardAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
       84 GETUPVAL                         R11 2
       85 GETTABLEKS                       R10 R11 K26 ["useBoundAction"]
       87 GETUPVAL                         R12 7
       88 GETTABLEKS                       R11 R12 K27 ["TOGGLE_IS_PLAYING_ASYNC"]
       90 CALL                             R10 1 1
       91 SETTABLEKS                       R10 R9 K18 ["toggleIsPlayingAsync"]
       93 GETUPVAL                         R11 2
       94 GETTABLEKS                       R10 R11 K26 ["useBoundAction"]
       96 GETUPVAL                         R12 7
       97 GETTABLEKS                       R11 R12 K28 ["SET_CURRENT_TIME_ASYNC"]
       99 CALL                             R10 1 1
      100 SETTABLEKS                       R10 R9 K19 ["setCurrentTimeAsync"]
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R10 R11 K26 ["useBoundAction"]
      105 GETUPVAL                         R12 7
      106 GETTABLEKS                       R11 R12 K29 ["INCREMENT_IS_SCRUBBING_ASYNC"]
      108 CALL                             R10 1 1
      109 SETTABLEKS                       R10 R9 K20 ["incrementIsScrubbingAsync"]
      111 SETTABLEKS                       R3 R9 K15 ["isPlaying"]
      113 SETTABLEKS                       R6 R9 K16 ["currentTime"]
      115 SETTABLEKS                       R2 R9 K21 ["isScrubbing"]
      117 GETUPVAL                         R11 8
      118 GETTABLEKS                       R10 R11 K30 ["createUnimplemented"]
      120 LOADK                            R11 K22 ["stepBackAsync"]
      121 CALL                             R10 1 1
      122 SETTABLEKS                       R10 R9 K22 ["stepBackAsync"]
      124 GETUPVAL                         R11 8
      125 GETTABLEKS                       R10 R11 K30 ["createUnimplemented"]
      127 LOADK                            R11 K23 ["stepForwardAsync"]
      128 CALL                             R10 1 1
      129 SETTABLEKS                       R10 R9 K23 ["stepForwardAsync"]
      131 SETTABLEKS                       R4 R9 K11 ["playbackSpeed"]
      133 GETUPVAL                         R11 9
      134 GETTABLEKS                       R10 R11 K6 ["useConsumer"]
      136 CALL                             R10 0 1
      137 SETTABLEKS                       R10 R9 K24 ["setPlaybackSpeedAsync"]
      139 GETUPVAL                         R11 0
      140 GETTABLEKS                       R10 R11 K31 ["createElement"]
      142 GETUPVAL                         R12 10
      143 GETTABLEKS                       R11 R12 K32 ["Provider"]
      145 DUPTABLE                         R12 K34 [{"value"}]
      146 SETTABLEKS                       R9 R12 K33 ["value"]
      148 GETTABLEKS                       R13 R0 K35 ["children"]
      150 CALL                             R10 3 -1
      151 RETURN                           R10 -1

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
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R7 R8 K16 ["usePreviewPlayback"]
       52 CALL                             R6 1 1
       53 DUPTABLE                         R7 K20 [{"IS_PLAYING", "CURRENT_TIME", "IS_SCRUBBING"}]
       54 LOADK                            R8 K21 ["PlayStateContext_IsPlaying"]
       55 SETTABLEKS                       R8 R7 K17 ["IS_PLAYING"]
       57 LOADK                            R8 K22 ["PlayStateContext_CurrentTime"]
       58 SETTABLEKS                       R8 R7 K18 ["CURRENT_TIME"]
       60 LOADK                            R8 K23 ["PlayStateContext_IsScrubbing"]
       61 SETTABLEKS                       R8 R7 K19 ["IS_SCRUBBING"]
       63 DUPTABLE                         R8 K29 [{"TOGGLE_IS_PLAYING_ASYNC", "SET_CURRENT_TIME_ASYNC", "INCREMENT_IS_SCRUBBING_ASYNC", "STEP_BACK_ASYNC", "STEP_FORWARD_ASYNC"}]
       64 LOADK                            R9 K30 ["PlayStateContext_ToggleIsPlayingAsync"]
       65 SETTABLEKS                       R9 R8 K24 ["TOGGLE_IS_PLAYING_ASYNC"]
       67 LOADK                            R9 K31 ["PlayStateContext_SetCurrentTime"]
       68 SETTABLEKS                       R9 R8 K25 ["SET_CURRENT_TIME_ASYNC"]
       70 LOADK                            R9 K32 ["PlayStateContext_IncrementIsScrubbing"]
       71 SETTABLEKS                       R9 R8 K26 ["INCREMENT_IS_SCRUBBING_ASYNC"]
       73 LOADK                            R9 K33 ["PlayStateContext_StepBack"]
       74 SETTABLEKS                       R9 R8 K27 ["STEP_BACK_ASYNC"]
       76 LOADK                            R9 K34 ["PlayStateContext_StepForward"]
       77 SETTABLEKS                       R9 R8 K28 ["STEP_FORWARD_ASYNC"]
       79 DUPTABLE                         R9 K45 [{"isPlaying", "isScrubbing", "toggleIsPlayingAsync", "stepBackAsync", "stepForwardAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "currentTime", "playbackSpeed", "setPlaybackSpeedAsync"}]
       80 LOADB                            R10 0
       81 SETTABLEKS                       R10 R9 K35 ["isPlaying"]
       83 LOADB                            R10 0
       84 SETTABLEKS                       R10 R9 K36 ["isScrubbing"]
       86 GETTABLEKS                       R10 R3 K46 ["createUnimplemented"]
       88 LOADK                            R11 K37 ["toggleIsPlayingAsync"]
       89 CALL                             R10 1 1
       90 SETTABLEKS                       R10 R9 K37 ["toggleIsPlayingAsync"]
       92 GETTABLEKS                       R10 R3 K46 ["createUnimplemented"]
       94 LOADK                            R11 K38 ["stepBackAsync"]
       95 CALL                             R10 1 1
       96 SETTABLEKS                       R10 R9 K38 ["stepBackAsync"]
       98 GETTABLEKS                       R10 R3 K46 ["createUnimplemented"]
      100 LOADK                            R11 K39 ["stepForwardAsync"]
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K39 ["stepForwardAsync"]
      104 GETTABLEKS                       R10 R3 K46 ["createUnimplemented"]
      106 LOADK                            R11 K40 ["setCurrentTimeAsync"]
      107 CALL                             R10 1 1
      108 SETTABLEKS                       R10 R9 K40 ["setCurrentTimeAsync"]
      110 GETTABLEKS                       R10 R3 K46 ["createUnimplemented"]
      112 LOADK                            R11 K41 ["incrementIsScrubbingAsync"]
      113 CALL                             R10 1 1
      114 SETTABLEKS                       R10 R9 K41 ["incrementIsScrubbingAsync"]
      116 LOADN                            R10 0
      117 SETTABLEKS                       R10 R9 K42 ["currentTime"]
      119 LOADN                            R10 1
      120 SETTABLEKS                       R10 R9 K43 ["playbackSpeed"]
      122 GETTABLEKS                       R10 R3 K46 ["createUnimplemented"]
      124 LOADK                            R11 K44 ["setPlaybackSpeedAsync"]
      125 CALL                             R10 1 1
      126 SETTABLEKS                       R10 R9 K44 ["setPlaybackSpeedAsync"]
      128 GETTABLEKS                       R10 R2 K47 ["createContext"]
      130 MOVE                             R11 R9
      131 CALL                             R10 1 1
      132 GETTABLEKS                       R11 R1 K48 ["createBoundAction"]
      134 LOADK                            R12 K49 ["PlayStateContext_SetPlaybackSpeed"]
      135 CALL                             R11 1 1
      136 GETTABLEKS                       R12 R1 K50 ["createReplicatedState"]
      138 LOADK                            R13 K51 ["PlayStateContext_PlaybackSpeed"]
      139 CALL                             R12 1 1
      140 DUPCLOSURE                       R13 K52 [PROTO_7]
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R10
      152 DUPCLOSURE                       R14 K53 [PROTO_9]
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R10
      164 DUPTABLE                         R15 K57 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      165 SETTABLEKS                       R10 R15 K54 ["Context"]
      167 SETTABLEKS                       R14 R15 K55 ["EditableDataModelProvider"]
      169 SETTABLEKS                       R13 R15 K56 ["UIDataModelProvider"]
      171 RETURN                           R15 1
