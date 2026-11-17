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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 ADDK                             R1 R2 K1 [0.03333333333333333]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 SUBK                             R1 R2 K1 [0.03333333333333333]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["disable"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+5]
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 NEWCLOSURE                       R0 P0
       10 CAPTURE                          UPVAL U1
       11 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 FASTCALL2K                       ASSERT R1 K0 ; [+4]
       12 LOADK                            R2 K0 ["Luau"]
       13 GETIMPORT                        R0 K2 [assert]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 2
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K17 [{"toggleIsPlayingAsync", "setIsPlayingAsync", "toggleIsPreviewEnabledAsync", "setIsPreviewEnabledAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "setPlaybackSpeedAsync", "stepBackAsync", "stepForwardAsync", "goToStartAsync", "resetGraphAsync", "isPlaying", "isPreviewEnabled", "currentTime", "currentTimeRef", "isScrubbing", "playbackSpeed"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K18 ["toggle"]
        4 SETTABLEKS                       R1 R0 K0 ["toggleIsPlayingAsync"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K19 ["set"]
        9 SETTABLEKS                       R1 R0 K1 ["setIsPlayingAsync"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K18 ["toggle"]
       14 SETTABLEKS                       R1 R0 K2 ["toggleIsPreviewEnabledAsync"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K19 ["set"]
       19 SETTABLEKS                       R1 R0 K3 ["setIsPreviewEnabledAsync"]
       21 GETUPVAL                         R1 2
       22 SETTABLEKS                       R1 R0 K4 ["setCurrentTimeAsync"]
       24 GETUPVAL                         R1 3
       25 SETTABLEKS                       R1 R0 K5 ["incrementIsScrubbingAsync"]
       27 GETUPVAL                         R1 4
       28 SETTABLEKS                       R1 R0 K6 ["setPlaybackSpeedAsync"]
       30 GETUPVAL                         R1 5
       31 SETTABLEKS                       R1 R0 K7 ["stepBackAsync"]
       33 GETUPVAL                         R1 6
       34 SETTABLEKS                       R1 R0 K8 ["stepForwardAsync"]
       36 GETUPVAL                         R1 7
       37 SETTABLEKS                       R1 R0 K9 ["goToStartAsync"]
       39 GETUPVAL                         R1 8
       40 SETTABLEKS                       R1 R0 K10 ["resetGraphAsync"]
       42 GETUPVAL                         R1 0
       43 GETTABLEKS                       R1 R1 K20 ["enabled"]
       45 SETTABLEKS                       R1 R0 K11 ["isPlaying"]
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K20 ["enabled"]
       50 SETTABLEKS                       R1 R0 K12 ["isPreviewEnabled"]
       52 GETUPVAL                         R1 9
       53 SETTABLEKS                       R1 R0 K13 ["currentTime"]
       55 GETUPVAL                         R1 10
       56 SETTABLEKS                       R1 R0 K14 ["currentTimeRef"]
       58 GETUPVAL                         R1 11
       59 SETTABLEKS                       R1 R0 K15 ["isScrubbing"]
       61 GETUPVAL                         R1 12
       62 SETTABLEKS                       R1 R0 K16 ["playbackSpeed"]
       64 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADN                            R3 0
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useState"]
       15 LOADN                            R4 0
       16 CALL                             R3 1 2
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["useToggleState"]
       20 GETTABLEKS                       R7 R0 K5 ["defaultPlayingState"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+3]
       24 LOADB                            R6 0
       25 JUMP                             ; [+2]
       26 GETTABLEKS                       R6 R0 K5 ["defaultPlayingState"]
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K4 ["useToggleState"]
       32 LOADB                            R7 1
       33 CALL                             R6 1 1
       34 LOADN                            R8 0
       35 JUMPIFLT                         R8 R3 ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K3 ["useState"]
       42 LOADN                            R9 1
       43 CALL                             R8 1 2
       44 GETUPVAL                         R10 3
       45 GETTABLEKS                       R10 R10 K6 ["useProducer"]
       47 MOVE                             R11 R9
       48 CALL                             R10 1 0
       49 GETUPVAL                         R10 4
       50 GETTABLEKS                       R10 R10 K6 ["useProducer"]
       52 MOVE                             R11 R8
       53 CALL                             R10 1 0
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K2 ["useRef"]
       57 LOADB                            R11 0
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R5 K7 ["enabled"]
       61 JUMPIFNOT                        R11 ; [+1]
       62 NOT                              R11 R7
       63 SETTABLEKS                       R11 R10 K8 ["current"]
       65 GETUPVAL                         R11 5
       66 DUPTABLE                         R12 K15 [{"isAutomaticallyPlayingRef", "timeRange", "playbackSpeed", "defaultTime", "wrapPausedTime", "clampTimeToRange"}]
       67 SETTABLEKS                       R10 R12 K9 ["isAutomaticallyPlayingRef"]
       69 GETTABLEKS                       R13 R1 K10 ["timeRange"]
       71 SETTABLEKS                       R13 R12 K10 ["timeRange"]
       73 SETTABLEKS                       R8 R12 K11 ["playbackSpeed"]
       75 GETTABLEKS                       R13 R0 K16 ["defaultCurrentTime"]
       77 SETTABLEKS                       R13 R12 K12 ["defaultTime"]
       79 GETTABLEKS                       R13 R0 K13 ["wrapPausedTime"]
       81 SETTABLEKS                       R13 R12 K13 ["wrapPausedTime"]
       83 GETTABLEKS                       R13 R0 K14 ["clampTimeToRange"]
       85 SETTABLEKS                       R13 R12 K14 ["clampTimeToRange"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R11 K17 ["currentTime"]
       90 GETTABLEKS                       R13 R11 K18 ["currentTimeRef"]
       92 GETTABLEKS                       R14 R11 K19 ["setCurrentTime"]
       94 GETTABLEKS                       R15 R1 K10 ["timeRange"]
       96 GETTABLEKS                       R15 R15 K20 ["Min"]
       98 GETUPVAL                         R16 0
       99 GETTABLEKS                       R16 R16 K21 ["useCallback"]
      101 NEWCLOSURE                       R17 P0
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R4
      104 NEWTABLE                         R18 0 2
      106 MOVE                             R19 R4
      107 MOVE                             R20 R2
      108 SETLIST                          R18 R19 2 [1]
      110 CALL                             R16 2 1
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R17 R17 K21 ["useCallback"]
      114 NEWCLOSURE                       R18 P1
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R12
      118 NEWTABLE                         R19 0 2
      120 MOVE                             R20 R12
      121 MOVE                             R21 R14
      122 SETLIST                          R19 R20 2 [1]
      124 CALL                             R17 2 1
      125 GETUPVAL                         R18 0
      126 GETTABLEKS                       R18 R18 K21 ["useCallback"]
      128 NEWCLOSURE                       R19 P2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R12
      132 NEWTABLE                         R20 0 2
      134 MOVE                             R21 R12
      135 MOVE                             R22 R14
      136 SETLIST                          R20 R21 2 [1]
      138 CALL                             R18 2 1
      139 GETUPVAL                         R19 0
      140 GETTABLEKS                       R19 R19 K21 ["useCallback"]
      142 NEWCLOSURE                       R20 P3
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R15
      145 NEWTABLE                         R21 0 2
      147 MOVE                             R22 R14
      148 MOVE                             R23 R15
      149 SETLIST                          R21 R22 2 [1]
      151 CALL                             R19 2 1
      152 GETUPVAL                         R20 0
      153 GETTABLEKS                       R20 R20 K21 ["useCallback"]
      155 NEWCLOSURE                       R21 P4
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R5
      159 NEWTABLE                         R22 0 0
      161 CALL                             R20 2 1
      162 GETUPVAL                         R21 0
      163 GETTABLEKS                       R21 R21 K22 ["useEffect"]
      165 NEWCLOSURE                       R22 P5
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R20
      168 NEWTABLE                         R23 0 2
      170 GETTABLEKS                       R24 R0 K23 ["isOpen"]
      172 MOVE                             R25 R20
      173 SETLIST                          R23 R24 2 [1]
      175 CALL                             R21 2 0
      176 GETUPVAL                         R21 6
      177 DUPTABLE                         R22 K26 [{"isPlaying", "currentTime", "isPreviewEnabled"}]
      178 GETTABLEKS                       R23 R5 K7 ["enabled"]
      180 SETTABLEKS                       R23 R22 K24 ["isPlaying"]
      182 SETTABLEKS                       R12 R22 K17 ["currentTime"]
      184 GETUPVAL                         R24 7
      185 CALL                             R24 0 1
      186 JUMPIFNOT                        R24 ; [+10]
      187 GETTABLEKS                       R23 R6 K7 ["enabled"]
      189 JUMPIFNOT                        R23 ; [+9]
      190 GETTABLEKS                       R24 R0 K27 ["isGraphPreviewEnabled"]
      192 JUMPIFNOTEQKB                    R24 FALSE ; [+2]
      194 LOADB                            R23 0 +1
      195 LOADB                            R23 1
      196 JUMP                             ; [+2]
      197 GETTABLEKS                       R23 R6 K7 ["enabled"]
      199 SETTABLEKS                       R23 R22 K25 ["isPreviewEnabled"]
      201 CALL                             R21 1 1
      202 GETUPVAL                         R23 8
      203 JUMPIFNOT                        R23 ; [+5]
      204 GETUPVAL                         R22 9
      205 GETTABLEKS                       R22 R22 K28 ["useConsumer"]
      207 CALL                             R22 0 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R22
      210 GETUPVAL                         R23 0
      211 GETTABLEKS                       R23 R23 K21 ["useCallback"]
      213 NEWCLOSURE                       R24 P6
      214 CAPTURE                          UPVAL U8
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R22
      217 NEWTABLE                         R25 0 2
      219 MOVE                             R26 R21
      220 MOVE                             R27 R22
      221 SETLIST                          R25 R26 2 [1]
      223 CALL                             R23 2 1
      224 GETUPVAL                         R24 10
      225 GETTABLEKS                       R24 R24 K29 ["useReplicatedState"]
      227 LOADK                            R25 K30 ["PlayStateContext_IsPlaying"]
      228 GETTABLEKS                       R26 R5 K7 ["enabled"]
      230 CALL                             R24 2 0
      231 GETUPVAL                         R24 11
      232 GETTABLEKS                       R24 R24 K6 ["useProducer"]
      234 GETTABLEKS                       R25 R6 K7 ["enabled"]
      236 CALL                             R24 1 0
      237 GETUPVAL                         R24 12
      238 GETTABLEKS                       R24 R24 K6 ["useProducer"]
      240 GETTABLEKS                       R25 R11 K31 ["initialState"]
      242 CALL                             R24 1 0
      243 GETUPVAL                         R24 10
      244 GETTABLEKS                       R24 R24 K29 ["useReplicatedState"]
      246 LOADK                            R25 K32 ["PlayStateContext_IsScrubbing"]
      247 MOVE                             R26 R7
      248 CALL                             R24 2 0
      249 GETUPVAL                         R24 10
      250 GETTABLEKS                       R24 R24 K33 ["useBoundAction"]
      252 LOADK                            R25 K34 ["PlayStateContext_ToggleIsPlayingAsync"]
      253 GETTABLEKS                       R26 R5 K35 ["toggle"]
      255 CALL                             R24 2 0
      256 GETUPVAL                         R24 10
      257 GETTABLEKS                       R24 R24 K33 ["useBoundAction"]
      259 LOADK                            R25 K36 ["PlayStateContext_IncrementIsScrubbing"]
      260 MOVE                             R26 R16
      261 CALL                             R24 2 0
      262 GETUPVAL                         R24 10
      263 GETTABLEKS                       R24 R24 K33 ["useBoundAction"]
      265 LOADK                            R25 K37 ["PlayStateContext_SetCurrentTime"]
      266 MOVE                             R26 R14
      267 CALL                             R24 2 0
      268 GETUPVAL                         R24 13
      269 GETTABLEKS                       R24 R24 K6 ["useProducer"]
      271 GETTABLEKS                       R25 R6 K35 ["toggle"]
      273 CALL                             R24 1 0
      274 GETUPVAL                         R24 7
      275 CALL                             R24 0 1
      276 JUMPIFNOT                        R24 ; [+12]
      277 GETUPVAL                         R24 14
      278 GETTABLEKS                       R24 R24 K6 ["useProducer"]
      280 GETTABLEKS                       R25 R5 K38 ["set"]
      282 CALL                             R24 1 0
      283 GETUPVAL                         R24 15
      284 GETTABLEKS                       R24 R24 K6 ["useProducer"]
      286 GETTABLEKS                       R25 R6 K38 ["set"]
      288 CALL                             R24 1 0
      289 GETUPVAL                         R24 0
      290 GETTABLEKS                       R24 R24 K39 ["useMemo"]
      292 NEWCLOSURE                       R25 P7
      293 CAPTURE                          VAL R5
      294 CAPTURE                          VAL R6
      295 CAPTURE                          VAL R14
      296 CAPTURE                          VAL R16
      297 CAPTURE                          VAL R9
      298 CAPTURE                          VAL R18
      299 CAPTURE                          VAL R17
      300 CAPTURE                          VAL R19
      301 CAPTURE                          VAL R23
      302 CAPTURE                          VAL R12
      303 CAPTURE                          VAL R13
      304 CAPTURE                          VAL R7
      305 CAPTURE                          VAL R8
      306 NEWTABLE                         R26 0 17
      308 GETTABLEKS                       R27 R5 K35 ["toggle"]
      310 GETTABLEKS                       R28 R5 K38 ["set"]
      312 MOVE                             R29 R14
      313 MOVE                             R30 R16
      314 MOVE                             R31 R9
      315 MOVE                             R32 R18
      316 MOVE                             R33 R17
      317 MOVE                             R34 R19
      318 MOVE                             R35 R23
      319 GETTABLEKS                       R36 R5 K7 ["enabled"]
      321 MOVE                             R37 R12
      322 MOVE                             R38 R13
      323 MOVE                             R39 R7
      324 MOVE                             R40 R8
      325 GETTABLEKS                       R41 R6 K35 ["toggle"]
      327 GETTABLEKS                       R42 R6 K38 ["set"]
      329 SETLIST                          R26 R27 16 [1]
      331 GETTABLEKS                       R27 R6 K7 ["enabled"]
      333 SETLIST                          R26 R27 1 [17]
      335 CALL                             R24 2 1
      336 GETUPVAL                         R25 0
      337 GETTABLEKS                       R25 R25 K40 ["createElement"]
      339 GETUPVAL                         R26 16
      340 GETTABLEKS                       R26 R26 K41 ["Provider"]
      342 DUPTABLE                         R27 K43 [{"value"}]
      343 SETTABLEKS                       R24 R27 K42 ["value"]
      345 GETTABLEKS                       R28 R0 K44 ["children"]
      347 CALL                             R25 3 -1
      348 RETURN                           R25 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setInitialState"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R0 K17 [{"toggleIsPlayingAsync", "setIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "toggleIsPreviewEnabledAsync", "setIsPreviewEnabledAsync", "isPlaying", "isPreviewEnabled", "currentTime", "currentTimeRef", "isScrubbing", "stepBackAsync", "stepForwardAsync", "goToStartAsync", "resetGraphAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["toggleIsPlayingAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setIsPlayingAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["setCurrentTimeAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["incrementIsScrubbingAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["toggleIsPreviewEnabledAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setIsPreviewEnabledAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["isPlaying"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["isPreviewEnabled"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["currentTime"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["currentTimeRef"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["isScrubbing"]
       34 GETUPVAL                         R1 11
       35 GETTABLEKS                       R1 R1 K18 ["createUnimplemented"]
       37 LOADK                            R2 K11 ["stepBackAsync"]
       38 CALL                             R1 1 1
       39 SETTABLEKS                       R1 R0 K11 ["stepBackAsync"]
       41 GETUPVAL                         R1 11
       42 GETTABLEKS                       R1 R1 K18 ["createUnimplemented"]
       44 LOADK                            R2 K12 ["stepForwardAsync"]
       45 CALL                             R1 1 1
       46 SETTABLEKS                       R1 R0 K12 ["stepForwardAsync"]
       48 GETUPVAL                         R1 12
       49 SETTABLEKS                       R1 R0 K13 ["goToStartAsync"]
       51 GETUPVAL                         R1 13
       52 SETTABLEKS                       R1 R0 K14 ["resetGraphAsync"]
       54 GETUPVAL                         R1 14
       55 SETTABLEKS                       R1 R0 K15 ["playbackSpeed"]
       57 GETUPVAL                         R1 15
       58 SETTABLEKS                       R1 R0 K16 ["setPlaybackSpeedAsync"]
       60 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K2 ["useReplicatedStateListener"]
       24 LOADK                            R5 K3 ["PlayStateContext_IsScrubbing"]
       25 LOADB                            R6 0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K2 ["useReplicatedStateListener"]
       30 LOADK                            R6 K4 ["PlayStateContext_IsPlaying"]
       31 GETTABLEKS                       R8 R0 K5 ["defaultPlayingState"]
       33 JUMPIFNOTEQKNIL                  R8 ; [+3]
       35 LOADB                            R7 0
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R7 R0 K5 ["defaultPlayingState"]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 5
       41 GETTABLEKS                       R6 R6 K6 ["useConsumer"]
       43 LOADB                            R7 1
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 6
       46 GETTABLEKS                       R7 R7 K6 ["useConsumer"]
       48 LOADN                            R8 1
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K7 ["useRef"]
       53 LOADB                            R9 0
       54 CALL                             R8 1 1
       55 MOVE                             R9 R5
       56 JUMPIFNOT                        R9 ; [+1]
       57 NOT                              R9 R4
       58 SETTABLEKS                       R9 R8 K8 ["current"]
       60 GETUPVAL                         R9 7
       61 DUPTABLE                         R10 K15 [{"timeRange", "isAutomaticallyPlayingRef", "playbackSpeed", "defaultTime", "wrapPausedTime", "clampTimeToRange"}]
       62 GETTABLEKS                       R11 R1 K9 ["timeRange"]
       64 SETTABLEKS                       R11 R10 K9 ["timeRange"]
       66 SETTABLEKS                       R8 R10 K10 ["isAutomaticallyPlayingRef"]
       68 SETTABLEKS                       R7 R10 K11 ["playbackSpeed"]
       70 GETTABLEKS                       R11 R0 K16 ["defaultCurrentTime"]
       72 SETTABLEKS                       R11 R10 K12 ["defaultTime"]
       74 GETTABLEKS                       R11 R0 K13 ["wrapPausedTime"]
       76 SETTABLEKS                       R11 R10 K13 ["wrapPausedTime"]
       78 GETTABLEKS                       R11 R0 K14 ["clampTimeToRange"]
       80 SETTABLEKS                       R11 R10 K14 ["clampTimeToRange"]
       82 CALL                             R9 1 1
       83 GETTABLEKS                       R10 R9 K17 ["currentTime"]
       85 GETTABLEKS                       R11 R9 K18 ["currentTimeRef"]
       87 GETUPVAL                         R12 8
       88 GETTABLEKS                       R12 R12 K6 ["useConsumer"]
       90 LOADNIL                          R13
       91 CALL                             R12 1 1
       92 GETUPVAL                         R13 0
       93 GETTABLEKS                       R13 R13 K19 ["useEffect"]
       95 NEWCLOSURE                       R14 P0
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R9
       98 NEWTABLE                         R15 0 2
      100 MOVE                             R16 R12
      101 GETTABLEKS                       R17 R9 K20 ["setInitialState"]
      103 SETLIST                          R15 R16 2 [1]
      105 CALL                             R13 2 0
      106 GETUPVAL                         R13 9
      107 DUPTABLE                         R14 K24 [{"isPlaying", "currentTime", "overrideRig", "isPreviewEnabled"}]
      108 SETTABLEKS                       R5 R14 K21 ["isPlaying"]
      110 SETTABLEKS                       R10 R14 K17 ["currentTime"]
      112 GETTABLEKS                       R16 R2 K25 ["selectedRigId"]
      114 JUMPIFNOT                        R16 ; [+8]
      115 GETTABLEKS                       R15 R3 K26 ["instanceRegistry"]
      117 GETTABLEKS                       R17 R2 K25 ["selectedRigId"]
      119 NAMECALL                         R15 R15 K27 ["idToInstance"]
      121 CALL                             R15 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R15
      124 SETTABLEKS                       R15 R14 K22 ["overrideRig"]
      126 GETUPVAL                         R16 10
      127 CALL                             R16 0 1
      128 JUMPIFNOT                        R16 ; [+9]
      129 MOVE                             R15 R6
      130 JUMPIFNOT                        R15 ; [+8]
      131 GETTABLEKS                       R16 R0 K28 ["isGraphPreviewEnabled"]
      133 JUMPIFNOTEQKB                    R16 FALSE ; [+2]
      135 LOADB                            R15 0 +1
      136 LOADB                            R15 1
      137 JUMP                             ; [+1]
      138 MOVE                             R15 R6
      139 SETTABLEKS                       R15 R14 K23 ["isPreviewEnabled"]
      141 CALL                             R13 1 1
      142 GETUPVAL                         R14 11
      143 JUMPIFNOT                        R14 ; [+5]
      144 GETUPVAL                         R14 12
      145 GETTABLEKS                       R14 R14 K29 ["useProducer"]
      147 MOVE                             R15 R13
      148 CALL                             R14 1 0
      149 GETUPVAL                         R14 4
      150 GETTABLEKS                       R14 R14 K30 ["useBoundAction"]
      152 LOADK                            R15 K31 ["PlayStateContext_ToggleIsPlayingAsync"]
      153 CALL                             R14 1 1
      154 GETUPVAL                         R15 4
      155 GETTABLEKS                       R15 R15 K30 ["useBoundAction"]
      157 LOADK                            R16 K32 ["PlayStateContext_SetCurrentTime"]
      158 CALL                             R15 1 1
      159 GETUPVAL                         R16 4
      160 GETTABLEKS                       R16 R16 K30 ["useBoundAction"]
      162 LOADK                            R17 K33 ["PlayStateContext_IncrementIsScrubbing"]
      163 CALL                             R16 1 1
      164 GETUPVAL                         R17 13
      165 GETTABLEKS                       R17 R17 K6 ["useConsumer"]
      167 CALL                             R17 0 1
      168 GETUPVAL                         R18 14
      169 GETTABLEKS                       R18 R18 K6 ["useConsumer"]
      171 CALL                             R18 0 1
      172 GETUPVAL                         R20 10
      173 CALL                             R20 0 1
      174 JUMPIFNOT                        R20 ; [+5]
      175 GETUPVAL                         R19 15
      176 GETTABLEKS                       R19 R19 K6 ["useConsumer"]
      178 CALL                             R19 0 1
      179 JUMP                             ; [+3]
      180 GETUPVAL                         R19 16
      181 GETTABLEKS                       R19 R19 K34 ["setIsPlayingAsync"]
      183 GETUPVAL                         R21 10
      184 CALL                             R21 0 1
      185 JUMPIFNOT                        R21 ; [+5]
      186 GETUPVAL                         R20 17
      187 GETTABLEKS                       R20 R20 K6 ["useConsumer"]
      189 CALL                             R20 0 1
      190 JUMP                             ; [+3]
      191 GETUPVAL                         R20 16
      192 GETTABLEKS                       R20 R20 K35 ["setIsPreviewEnabledAsync"]
      194 GETTABLEKS                       R21 R1 K9 ["timeRange"]
      196 GETTABLEKS                       R21 R21 K36 ["Min"]
      198 GETUPVAL                         R22 0
      199 GETTABLEKS                       R22 R22 K37 ["useCallback"]
      201 NEWCLOSURE                       R23 P1
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R21
      204 NEWTABLE                         R24 0 2
      206 MOVE                             R25 R15
      207 MOVE                             R26 R21
      208 SETLIST                          R24 R25 2 [1]
      210 CALL                             R22 2 1
      211 GETUPVAL                         R23 0
      212 GETTABLEKS                       R23 R23 K38 ["useMemo"]
      214 NEWCLOSURE                       R24 P2
      215 CAPTURE                          VAL R14
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R15
      218 CAPTURE                          VAL R16
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R20
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R10
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R4
      226 CAPTURE                          UPVAL U18
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R17
      231 NEWTABLE                         R25 0 15
      233 MOVE                             R26 R14
      234 MOVE                             R27 R19
      235 MOVE                             R28 R20
      236 MOVE                             R29 R22
      237 MOVE                             R30 R11
      238 MOVE                             R31 R15
      239 MOVE                             R32 R16
      240 MOVE                             R33 R18
      241 MOVE                             R34 R6
      242 MOVE                             R35 R5
      243 MOVE                             R36 R10
      244 MOVE                             R37 R4
      245 MOVE                             R38 R7
      246 MOVE                             R39 R17
      247 MOVE                             R40 R13
      248 SETLIST                          R25 R26 15 [1]
      250 CALL                             R23 2 1
      251 GETUPVAL                         R24 0
      252 GETTABLEKS                       R24 R24 K39 ["createElement"]
      254 GETUPVAL                         R25 19
      255 GETTABLEKS                       R25 R25 K40 ["Provider"]
      257 DUPTABLE                         R26 K42 [{"value"}]
      258 SETTABLEKS                       R23 R26 K41 ["value"]
      260 GETTABLEKS                       R27 R0 K43 ["children"]
      262 CALL                             R24 3 -1
      263 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceRegistryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Networking"]
       20 GETTABLEKS                       R3 R3 K10 ["NetworkUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["RigListContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["TimeRangeContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K17 ["getFFlagAnimationEditorPluginUI"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K18 ["PlayStateContext"]
       64 GETTABLEKS                       R9 R9 K19 ["usePlayedCurrentTime"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K18 ["PlayStateContext"]
       73 GETTABLEKS                       R10 R10 K20 ["usePreviewPlayback"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K22 [game]
       78 LOADK                            R12 K23 ["AnimGraphResetAPI"]
       79 NAMECALL                         R10 R10 K24 ["GetEngineFeature"]
       81 CALL                             R10 2 1
       82 DUPTABLE                         R11 K29 [{["IS_PLAYING"] = "PlayStateContext_IsPlaying", ["IS_SCRUBBING"] = "PlayStateContext_IsScrubbing"}]
       83 DUPTABLE                         R12 K40 [{["TOGGLE_IS_PLAYING_ASYNC"] = "PlayStateContext_ToggleIsPlayingAsync", ["SET_CURRENT_TIME_ASYNC"] = "PlayStateContext_SetCurrentTime", ["INCREMENT_IS_SCRUBBING_ASYNC"] = "PlayStateContext_IncrementIsScrubbing", ["STEP_BACK_ASYNC"] = "PlayStateContext_StepBack", ["STEP_FORWARD_ASYNC"] = "PlayStateContext_StepForward"}]
       84 DUPTABLE                         R13 K62 [{["isPreviewEnabled"] = True, ["isPlaying"] = False, ["isScrubbing"] = False, ["toggleIsPlayingAsync"], ["setIsPlayingAsync"], ["stepBackAsync"], ["stepForwardAsync"], ["goToStartAsync"], ["resetGraphAsync"], ["setCurrentTimeAsync"], ["incrementIsScrubbingAsync"], ["toggleIsPreviewEnabledAsync"], ["setIsPreviewEnabledAsync"], ["currentTime"] = 0, ["currentTimeRef"], ["playbackSpeed"] = 1, ["setPlaybackSpeedAsync"]}]
       85 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
       87 LOADK                            R15 K46 ["toggleIsPlayingAsync"]
       88 CALL                             R14 1 1
       89 SETTABLEKS                       R14 R13 K46 ["toggleIsPlayingAsync"]
       91 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
       93 LOADK                            R15 K47 ["setIsPlayingAsync"]
       94 CALL                             R14 1 1
       95 SETTABLEKS                       R14 R13 K47 ["setIsPlayingAsync"]
       97 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
       99 LOADK                            R15 K48 ["stepBackAsync"]
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K48 ["stepBackAsync"]
      103 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      105 LOADK                            R15 K49 ["stepForwardAsync"]
      106 CALL                             R14 1 1
      107 SETTABLEKS                       R14 R13 K49 ["stepForwardAsync"]
      109 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      111 LOADK                            R15 K50 ["goToStartAsync"]
      112 CALL                             R14 1 1
      113 SETTABLEKS                       R14 R13 K50 ["goToStartAsync"]
      115 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      117 LOADK                            R15 K51 ["resetGraphAsync"]
      118 CALL                             R14 1 1
      119 SETTABLEKS                       R14 R13 K51 ["resetGraphAsync"]
      121 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      123 LOADK                            R15 K52 ["setCurrentTimeAsync"]
      124 CALL                             R14 1 1
      125 SETTABLEKS                       R14 R13 K52 ["setCurrentTimeAsync"]
      127 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      129 LOADK                            R15 K53 ["incrementIsScrubbingAsync"]
      130 CALL                             R14 1 1
      131 SETTABLEKS                       R14 R13 K53 ["incrementIsScrubbingAsync"]
      133 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      135 LOADK                            R15 K54 ["toggleIsPreviewEnabledAsync"]
      136 CALL                             R14 1 1
      137 SETTABLEKS                       R14 R13 K54 ["toggleIsPreviewEnabledAsync"]
      139 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      141 LOADK                            R15 K55 ["setIsPreviewEnabledAsync"]
      142 CALL                             R14 1 1
      143 SETTABLEKS                       R14 R13 K55 ["setIsPreviewEnabledAsync"]
      145 DUPTABLE                         R14 K65 [{["current"] = 0}]
      146 SETTABLEKS                       R14 R13 K58 ["currentTimeRef"]
      148 GETTABLEKS                       R14 R4 K63 ["createUnimplemented"]
      150 LOADK                            R15 K61 ["setPlaybackSpeedAsync"]
      151 CALL                             R14 1 1
      152 SETTABLEKS                       R14 R13 K61 ["setPlaybackSpeedAsync"]
      154 GETTABLEKS                       R14 R3 K66 ["createContext"]
      156 MOVE                             R15 R13
      157 CALL                             R14 1 1
      158 GETTABLEKS                       R15 R2 K67 ["createBoundAction"]
      160 LOADK                            R16 K68 ["PlayStateContext_SetIsPlayingAsync"]
      161 CALL                             R15 1 1
      162 GETTABLEKS                       R16 R2 K67 ["createBoundAction"]
      164 LOADK                            R17 K69 ["PlayStateContext_SetIsPreviewEnabledAsync"]
      165 CALL                             R16 1 1
      166 GETTABLEKS                       R17 R2 K67 ["createBoundAction"]
      168 LOADK                            R18 K70 ["PlayStateContext_SetPlaybackSpeed"]
      169 CALL                             R17 1 1
      170 GETTABLEKS                       R18 R2 K67 ["createBoundAction"]
      172 LOADK                            R19 K71 ["PlayStateContext_ToggleIsPreviewEnabledAsync"]
      173 CALL                             R18 1 1
      174 GETTABLEKS                       R19 R2 K67 ["createBoundAction"]
      176 LOADK                            R20 K72 ["PlayStateContext_ResetGraph"]
      177 DUPTABLE                         R21 K74 [{["sendToAll"] = True}]
      178 CALL                             R19 2 1
      179 GETTABLEKS                       R20 R2 K75 ["createReplicatedState"]
      181 LOADK                            R21 K76 ["PlayStateContext_PlaybackSpeed"]
      182 CALL                             R20 1 1
      183 GETTABLEKS                       R21 R2 K75 ["createReplicatedState"]
      185 LOADK                            R22 K77 ["PlayStateContext_PlayedCurrentTimeInitialState"]
      186 CALL                             R21 1 1
      187 GETTABLEKS                       R22 R2 K75 ["createReplicatedState"]
      189 LOADK                            R23 K78 ["PlayStateContext_IsPreviewEnabled"]
      190 CALL                             R22 1 1
      191 DUPCLOSURE                       R23 K79 [PROTO_10]
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R21
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R14
      209 DUPCLOSURE                       R24 K80 [PROTO_14]
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R5
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R22
      216 CAPTURE                          VAL R20
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R9
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R10
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R17
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R16
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R14
      230 DUPTABLE                         R25 K84 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      231 SETTABLEKS                       R14 R25 K81 ["Context"]
      233 SETTABLEKS                       R24 R25 K82 ["EditableDataModelProvider"]
      235 SETTABLEKS                       R23 R25 K83 ["UIDataModelProvider"]
      237 RETURN                           R25 1
