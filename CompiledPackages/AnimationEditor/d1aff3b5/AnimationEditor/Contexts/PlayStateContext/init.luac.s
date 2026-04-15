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
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K2 ["useReplicatedStateListener"]
       24 GETUPVAL                         R6 5
       25 GETTABLEKS                       R5 R6 K3 ["IS_SCRUBBING"]
       27 LOADB                            R6 0
       28 CALL                             R4 2 1
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R5 R6 K2 ["useReplicatedStateListener"]
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R6 R7 K4 ["IS_PLAYING"]
       35 GETTABLEKS                       R8 R0 K5 ["defaultPlayingState"]
       37 JUMPIFNOTEQKNIL                  R8 ; [+3]
       39 LOADB                            R7 0
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R7 R0 K5 ["defaultPlayingState"]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 6
       45 GETTABLEKS                       R6 R7 K6 ["useConsumer"]
       47 LOADN                            R7 1
       48 CALL                             R6 1 1
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R7 R8 K7 ["useRef"]
       52 LOADB                            R8 0
       53 CALL                             R7 1 1
       54 MOVE                             R8 R5
       55 JUMPIFNOT                        R8 ; [+1]
       56 NOT                              R8 R4
       57 SETTABLEKS                       R8 R7 K8 ["current"]
       59 GETUPVAL                         R8 7
       60 DUPTABLE                         R9 K12 [{"timeRange", "isAutomaticallyPlayingRef", "playbackSpeed"}]
       61 GETTABLEKS                       R10 R1 K9 ["timeRange"]
       63 SETTABLEKS                       R10 R9 K9 ["timeRange"]
       65 SETTABLEKS                       R7 R9 K10 ["isAutomaticallyPlayingRef"]
       67 SETTABLEKS                       R6 R9 K11 ["playbackSpeed"]
       69 CALL                             R8 1 2
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R10 R11 K2 ["useReplicatedStateListener"]
       73 GETUPVAL                         R12 5
       74 GETTABLEKS                       R11 R12 K13 ["CURRENT_TIME"]
       76 MOVE                             R12 R8
       77 CALL                             R10 2 1
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R11 R12 K14 ["useEffect"]
       81 NEWCLOSURE                       R12 P0
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 NEWTABLE                         R13 0 1
       86 MOVE                             R14 R10
       87 SETLIST                          R13 R14 1 [1]
       89 CALL                             R11 2 0
       90 GETUPVAL                         R11 8
       91 DUPTABLE                         R12 K18 [{"isPlaying", "currentTime", "overrideRig"}]
       92 SETTABLEKS                       R5 R12 K15 ["isPlaying"]
       94 SETTABLEKS                       R8 R12 K16 ["currentTime"]
       96 GETTABLEKS                       R14 R2 K19 ["selectedRigId"]
       98 JUMPIFNOT                        R14 ; [+8]
       99 GETTABLEKS                       R13 R3 K20 ["instanceRegistry"]
      101 GETTABLEKS                       R15 R2 K19 ["selectedRigId"]
      103 NAMECALL                         R13 R13 K21 ["idToInstance"]
      105 CALL                             R13 2 1
      106 JUMP                             ; [+1]
      107 LOADNIL                          R13
      108 SETTABLEKS                       R13 R12 K17 ["overrideRig"]
      110 CALL                             R11 1 0
      111 DUPTABLE                         R11 K29 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "isPlaying", "currentTime", "isScrubbing", "stepBackAsync", "stepForwardAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
      112 GETUPVAL                         R13 4
      113 GETTABLEKS                       R12 R13 K30 ["useBoundAction"]
      115 GETUPVAL                         R14 9
      116 GETTABLEKS                       R13 R14 K31 ["TOGGLE_IS_PLAYING_ASYNC"]
      118 CALL                             R12 1 1
      119 SETTABLEKS                       R12 R11 K22 ["toggleIsPlayingAsync"]
      121 GETUPVAL                         R13 4
      122 GETTABLEKS                       R12 R13 K30 ["useBoundAction"]
      124 GETUPVAL                         R14 9
      125 GETTABLEKS                       R13 R14 K32 ["SET_CURRENT_TIME_ASYNC"]
      127 CALL                             R12 1 1
      128 SETTABLEKS                       R12 R11 K23 ["setCurrentTimeAsync"]
      130 GETUPVAL                         R13 4
      131 GETTABLEKS                       R12 R13 K30 ["useBoundAction"]
      133 GETUPVAL                         R14 9
      134 GETTABLEKS                       R13 R14 K33 ["INCREMENT_IS_SCRUBBING_ASYNC"]
      136 CALL                             R12 1 1
      137 SETTABLEKS                       R12 R11 K24 ["incrementIsScrubbingAsync"]
      139 SETTABLEKS                       R5 R11 K15 ["isPlaying"]
      141 SETTABLEKS                       R8 R11 K16 ["currentTime"]
      143 SETTABLEKS                       R4 R11 K25 ["isScrubbing"]
      145 GETUPVAL                         R13 10
      146 GETTABLEKS                       R12 R13 K34 ["createUnimplemented"]
      148 LOADK                            R13 K26 ["stepBackAsync"]
      149 CALL                             R12 1 1
      150 SETTABLEKS                       R12 R11 K26 ["stepBackAsync"]
      152 GETUPVAL                         R13 10
      153 GETTABLEKS                       R12 R13 K34 ["createUnimplemented"]
      155 LOADK                            R13 K27 ["stepForwardAsync"]
      156 CALL                             R12 1 1
      157 SETTABLEKS                       R12 R11 K27 ["stepForwardAsync"]
      159 SETTABLEKS                       R6 R11 K11 ["playbackSpeed"]
      161 GETUPVAL                         R13 11
      162 GETTABLEKS                       R12 R13 K6 ["useConsumer"]
      164 CALL                             R12 0 1
      165 SETTABLEKS                       R12 R11 K28 ["setPlaybackSpeedAsync"]
      167 GETUPVAL                         R13 0
      168 GETTABLEKS                       R12 R13 K35 ["createElement"]
      170 GETUPVAL                         R14 12
      171 GETTABLEKS                       R13 R14 K36 ["Provider"]
      173 DUPTABLE                         R14 K38 [{"value"}]
      174 SETTABLEKS                       R11 R14 K37 ["value"]
      176 GETTABLEKS                       R15 R0 K39 ["children"]
      178 CALL                             R12 3 -1
      179 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R3 K7 ["InstanceRegistryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K9 ["Networking"]
       20 GETTABLEKS                       R3 R4 K10 ["NetworkUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K14 ["RigListContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K15 ["TimeRangeContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       55 GETTABLEKS                       R9 R10 K16 ["PlayStateContext"]
       57 GETTABLEKS                       R8 R9 K17 ["usePlayedCurrentTime"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R9 R10 K18 ["usePreviewPlayback"]
       66 CALL                             R8 1 1
       67 DUPTABLE                         R9 K22 [{"IS_PLAYING", "CURRENT_TIME", "IS_SCRUBBING"}]
       68 LOADK                            R10 K23 ["PlayStateContext_IsPlaying"]
       69 SETTABLEKS                       R10 R9 K19 ["IS_PLAYING"]
       71 LOADK                            R10 K24 ["PlayStateContext_CurrentTime"]
       72 SETTABLEKS                       R10 R9 K20 ["CURRENT_TIME"]
       74 LOADK                            R10 K25 ["PlayStateContext_IsScrubbing"]
       75 SETTABLEKS                       R10 R9 K21 ["IS_SCRUBBING"]
       77 DUPTABLE                         R10 K31 [{"TOGGLE_IS_PLAYING_ASYNC", "SET_CURRENT_TIME_ASYNC", "INCREMENT_IS_SCRUBBING_ASYNC", "STEP_BACK_ASYNC", "STEP_FORWARD_ASYNC"}]
       78 LOADK                            R11 K32 ["PlayStateContext_ToggleIsPlayingAsync"]
       79 SETTABLEKS                       R11 R10 K26 ["TOGGLE_IS_PLAYING_ASYNC"]
       81 LOADK                            R11 K33 ["PlayStateContext_SetCurrentTime"]
       82 SETTABLEKS                       R11 R10 K27 ["SET_CURRENT_TIME_ASYNC"]
       84 LOADK                            R11 K34 ["PlayStateContext_IncrementIsScrubbing"]
       85 SETTABLEKS                       R11 R10 K28 ["INCREMENT_IS_SCRUBBING_ASYNC"]
       87 LOADK                            R11 K35 ["PlayStateContext_StepBack"]
       88 SETTABLEKS                       R11 R10 K29 ["STEP_BACK_ASYNC"]
       90 LOADK                            R11 K36 ["PlayStateContext_StepForward"]
       91 SETTABLEKS                       R11 R10 K30 ["STEP_FORWARD_ASYNC"]
       93 DUPTABLE                         R11 K47 [{"isPlaying", "isScrubbing", "toggleIsPlayingAsync", "stepBackAsync", "stepForwardAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "currentTime", "playbackSpeed", "setPlaybackSpeedAsync"}]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K37 ["isPlaying"]
       97 LOADB                            R12 0
       98 SETTABLEKS                       R12 R11 K38 ["isScrubbing"]
      100 GETTABLEKS                       R12 R4 K48 ["createUnimplemented"]
      102 LOADK                            R13 K39 ["toggleIsPlayingAsync"]
      103 CALL                             R12 1 1
      104 SETTABLEKS                       R12 R11 K39 ["toggleIsPlayingAsync"]
      106 GETTABLEKS                       R12 R4 K48 ["createUnimplemented"]
      108 LOADK                            R13 K40 ["stepBackAsync"]
      109 CALL                             R12 1 1
      110 SETTABLEKS                       R12 R11 K40 ["stepBackAsync"]
      112 GETTABLEKS                       R12 R4 K48 ["createUnimplemented"]
      114 LOADK                            R13 K41 ["stepForwardAsync"]
      115 CALL                             R12 1 1
      116 SETTABLEKS                       R12 R11 K41 ["stepForwardAsync"]
      118 GETTABLEKS                       R12 R4 K48 ["createUnimplemented"]
      120 LOADK                            R13 K42 ["setCurrentTimeAsync"]
      121 CALL                             R12 1 1
      122 SETTABLEKS                       R12 R11 K42 ["setCurrentTimeAsync"]
      124 GETTABLEKS                       R12 R4 K48 ["createUnimplemented"]
      126 LOADK                            R13 K43 ["incrementIsScrubbingAsync"]
      127 CALL                             R12 1 1
      128 SETTABLEKS                       R12 R11 K43 ["incrementIsScrubbingAsync"]
      130 LOADN                            R12 0
      131 SETTABLEKS                       R12 R11 K44 ["currentTime"]
      133 LOADN                            R12 1
      134 SETTABLEKS                       R12 R11 K45 ["playbackSpeed"]
      136 GETTABLEKS                       R12 R4 K48 ["createUnimplemented"]
      138 LOADK                            R13 K46 ["setPlaybackSpeedAsync"]
      139 CALL                             R12 1 1
      140 SETTABLEKS                       R12 R11 K46 ["setPlaybackSpeedAsync"]
      142 GETTABLEKS                       R12 R3 K49 ["createContext"]
      144 MOVE                             R13 R11
      145 CALL                             R12 1 1
      146 GETTABLEKS                       R13 R2 K50 ["createBoundAction"]
      148 LOADK                            R14 K51 ["PlayStateContext_SetPlaybackSpeed"]
      149 CALL                             R13 1 1
      150 GETTABLEKS                       R14 R2 K52 ["createReplicatedState"]
      152 LOADK                            R15 K53 ["PlayStateContext_PlaybackSpeed"]
      153 CALL                             R14 1 1
      154 DUPCLOSURE                       R15 K54 [PROTO_7]
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R12
      166 DUPCLOSURE                       R16 K55 [PROTO_9]
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R5
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R9
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R12
      180 DUPTABLE                         R17 K59 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      181 SETTABLEKS                       R12 R17 K56 ["Context"]
      183 SETTABLEKS                       R16 R17 K57 ["EditableDataModelProvider"]
      185 SETTABLEKS                       R15 R17 K58 ["UIDataModelProvider"]
      187 RETURN                           R17 1
