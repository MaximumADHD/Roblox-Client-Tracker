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
        6 ADDK                             R1 R2 K1 [0.0333333333333333]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
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
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["disable"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isOpen"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+5]
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 NEWCLOSURE                       R0 P0
       10 CAPTURE                          UPVAL U1
       11 RETURN                           R0 1

PROTO_7:
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

PROTO_8:
        0 DUPTABLE                         R0 K13 [{"toggleIsPlayingAsync", "toggleIsPreviewEnabledAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "setPlaybackSpeedAsync", "stepBackAsync", "stepForwardAsync", "resetGraphAsync", "isPlaying", "isPreviewEnabled", "currentTime", "isScrubbing", "playbackSpeed"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K14 ["toggle"]
        4 SETTABLEKS                       R1 R0 K0 ["toggleIsPlayingAsync"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K14 ["toggle"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K1 ["toggleIsPreviewEnabledAsync"]
       16 GETUPVAL                         R1 3
       17 SETTABLEKS                       R1 R0 K2 ["setCurrentTimeAsync"]
       19 GETUPVAL                         R1 4
       20 SETTABLEKS                       R1 R0 K3 ["incrementIsScrubbingAsync"]
       22 GETUPVAL                         R1 5
       23 SETTABLEKS                       R1 R0 K4 ["setPlaybackSpeedAsync"]
       25 GETUPVAL                         R1 6
       26 SETTABLEKS                       R1 R0 K5 ["stepBackAsync"]
       28 GETUPVAL                         R1 7
       29 SETTABLEKS                       R1 R0 K6 ["stepForwardAsync"]
       31 GETUPVAL                         R1 8
       32 SETTABLEKS                       R1 R0 K7 ["resetGraphAsync"]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K15 ["enabled"]
       37 SETTABLEKS                       R1 R0 K8 ["isPlaying"]
       39 GETUPVAL                         R2 1
       40 CALL                             R2 0 1
       41 JUMPIFNOT                        R2 ; [+4]
       42 GETUPVAL                         R1 2
       43 GETTABLEKS                       R1 R1 K15 ["enabled"]
       45 JUMP                             ; [+1]
       46 LOADNIL                          R1
       47 SETTABLEKS                       R1 R0 K9 ["isPreviewEnabled"]
       49 GETUPVAL                         R1 9
       50 SETTABLEKS                       R1 R0 K10 ["currentTime"]
       52 GETUPVAL                         R1 10
       53 SETTABLEKS                       R1 R0 K11 ["isScrubbing"]
       55 GETUPVAL                         R1 11
       56 SETTABLEKS                       R1 R0 K12 ["playbackSpeed"]
       58 RETURN                           R0 1

PROTO_9:
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
       29 GETUPVAL                         R7 3
       30 CALL                             R7 0 1
       31 JUMPIFNOT                        R7 ; [+6]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K4 ["useToggleState"]
       35 LOADB                            R7 1
       36 CALL                             R6 1 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R6
       39 LOADN                            R8 0
       40 JUMPIFLT                         R8 R3 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K3 ["useState"]
       47 LOADN                            R9 1
       48 CALL                             R8 1 2
       49 GETUPVAL                         R10 4
       50 GETTABLEKS                       R10 R10 K6 ["useProducer"]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 0
       54 GETUPVAL                         R10 5
       55 GETTABLEKS                       R10 R10 K6 ["useProducer"]
       57 MOVE                             R11 R8
       58 CALL                             R10 1 0
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K2 ["useRef"]
       62 LOADB                            R11 0
       63 CALL                             R10 1 1
       64 GETTABLEKS                       R11 R5 K7 ["enabled"]
       66 JUMPIFNOT                        R11 ; [+1]
       67 NOT                              R11 R7
       68 SETTABLEKS                       R11 R10 K8 ["current"]
       70 GETUPVAL                         R11 6
       71 DUPTABLE                         R12 K12 [{"isAutomaticallyPlayingRef", "timeRange", "playbackSpeed"}]
       72 SETTABLEKS                       R10 R12 K9 ["isAutomaticallyPlayingRef"]
       74 GETTABLEKS                       R13 R1 K10 ["timeRange"]
       76 SETTABLEKS                       R13 R12 K10 ["timeRange"]
       78 SETTABLEKS                       R8 R12 K11 ["playbackSpeed"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R12 R11 K13 ["currentTime"]
       83 GETTABLEKS                       R13 R11 K14 ["setCurrentTime"]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R14 R14 K15 ["useCallback"]
       88 NEWCLOSURE                       R15 P0
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 NEWTABLE                         R16 0 2
       93 MOVE                             R17 R4
       94 MOVE                             R18 R2
       95 SETLIST                          R16 R17 2 [1]
       97 CALL                             R14 2 1
       98 GETUPVAL                         R15 0
       99 GETTABLEKS                       R15 R15 K15 ["useCallback"]
      101 NEWCLOSURE                       R16 P1
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R12
      105 NEWTABLE                         R17 0 2
      107 MOVE                             R18 R12
      108 MOVE                             R19 R13
      109 SETLIST                          R17 R18 2 [1]
      111 CALL                             R15 2 1
      112 GETUPVAL                         R16 0
      113 GETTABLEKS                       R16 R16 K15 ["useCallback"]
      115 NEWCLOSURE                       R17 P2
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R12
      119 NEWTABLE                         R18 0 2
      121 MOVE                             R19 R12
      122 MOVE                             R20 R13
      123 SETLIST                          R18 R19 2 [1]
      125 CALL                             R16 2 1
      126 GETUPVAL                         R17 0
      127 GETTABLEKS                       R17 R17 K15 ["useCallback"]
      129 NEWCLOSURE                       R18 P3
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R5
      133 NEWTABLE                         R19 0 0
      135 CALL                             R17 2 1
      136 GETUPVAL                         R18 0
      137 GETTABLEKS                       R18 R18 K16 ["useEffect"]
      139 NEWCLOSURE                       R19 P4
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R17
      142 NEWTABLE                         R20 0 2
      144 GETTABLEKS                       R21 R0 K17 ["isOpen"]
      146 MOVE                             R22 R17
      147 SETLIST                          R20 R21 2 [1]
      149 CALL                             R18 2 0
      150 GETUPVAL                         R18 7
      151 DUPTABLE                         R19 K20 [{"isPlaying", "currentTime", "isPreviewEnabled"}]
      152 GETTABLEKS                       R20 R5 K7 ["enabled"]
      154 SETTABLEKS                       R20 R19 K18 ["isPlaying"]
      156 SETTABLEKS                       R12 R19 K13 ["currentTime"]
      158 GETUPVAL                         R21 3
      159 CALL                             R21 0 1
      160 JUMPIFNOT                        R21 ; [+3]
      161 GETTABLEKS                       R20 R6 K7 ["enabled"]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R20
      165 SETTABLEKS                       R20 R19 K19 ["isPreviewEnabled"]
      167 CALL                             R18 1 1
      168 GETUPVAL                         R20 8
      169 JUMPIFNOT                        R20 ; [+5]
      170 GETUPVAL                         R19 9
      171 GETTABLEKS                       R19 R19 K21 ["useConsumer"]
      173 CALL                             R19 0 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R19
      176 GETUPVAL                         R20 0
      177 GETTABLEKS                       R20 R20 K15 ["useCallback"]
      179 NEWCLOSURE                       R21 P5
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R19
      183 NEWTABLE                         R22 0 2
      185 MOVE                             R23 R18
      186 MOVE                             R24 R19
      187 SETLIST                          R22 R23 2 [1]
      189 CALL                             R20 2 1
      190 GETUPVAL                         R21 10
      191 GETTABLEKS                       R21 R21 K22 ["useReplicatedState"]
      193 LOADK                            R22 K23 ["PlayStateContext_IsPlaying"]
      194 GETTABLEKS                       R23 R5 K7 ["enabled"]
      196 CALL                             R21 2 0
      197 GETUPVAL                         R21 3
      198 CALL                             R21 0 1
      199 JUMPIFNOT                        R21 ; [+13]
      200 GETUPVAL                         R21 11
      201 GETTABLEKS                       R21 R21 K6 ["useProducer"]
      203 GETTABLEKS                       R22 R6 K7 ["enabled"]
      205 CALL                             R21 1 0
      206 GETUPVAL                         R21 12
      207 GETTABLEKS                       R21 R21 K6 ["useProducer"]
      209 GETTABLEKS                       R22 R11 K24 ["initialState"]
      211 CALL                             R21 1 0
      212 JUMP                             ; [+7]
      213 GETUPVAL                         R21 10
      214 GETTABLEKS                       R21 R21 K22 ["useReplicatedState"]
      216 LOADK                            R22 K25 ["PlayStateContext_CurrentTime_DEPRECATED"]
      217 MOVE                             R23 R12
      218 MOVE                             R24 R10
      219 CALL                             R21 3 0
      220 GETUPVAL                         R21 10
      221 GETTABLEKS                       R21 R21 K22 ["useReplicatedState"]
      223 LOADK                            R22 K26 ["PlayStateContext_IsScrubbing"]
      224 MOVE                             R23 R7
      225 CALL                             R21 2 0
      226 GETUPVAL                         R21 10
      227 GETTABLEKS                       R21 R21 K27 ["useBoundAction"]
      229 LOADK                            R22 K28 ["PlayStateContext_ToggleIsPlayingAsync"]
      230 GETTABLEKS                       R23 R5 K29 ["toggle"]
      232 CALL                             R21 2 0
      233 GETUPVAL                         R21 10
      234 GETTABLEKS                       R21 R21 K27 ["useBoundAction"]
      236 LOADK                            R22 K30 ["PlayStateContext_IncrementIsScrubbing"]
      237 MOVE                             R23 R14
      238 CALL                             R21 2 0
      239 GETUPVAL                         R21 10
      240 GETTABLEKS                       R21 R21 K27 ["useBoundAction"]
      242 LOADK                            R22 K31 ["PlayStateContext_SetCurrentTime"]
      243 MOVE                             R23 R13
      244 CALL                             R21 2 0
      245 GETUPVAL                         R21 3
      246 CALL                             R21 0 1
      247 JUMPIFNOT                        R21 ; [+6]
      248 GETUPVAL                         R21 13
      249 GETTABLEKS                       R21 R21 K6 ["useProducer"]
      251 GETTABLEKS                       R22 R6 K29 ["toggle"]
      253 CALL                             R21 1 0
      254 GETUPVAL                         R21 0
      255 GETTABLEKS                       R21 R21 K32 ["useMemo"]
      257 NEWCLOSURE                       R22 P6
      258 CAPTURE                          VAL R5
      259 CAPTURE                          UPVAL U3
      260 CAPTURE                          VAL R6
      261 CAPTURE                          VAL R13
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R16
      265 CAPTURE                          VAL R15
      266 CAPTURE                          VAL R20
      267 CAPTURE                          VAL R12
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R8
      270 NEWTABLE                         R23 0 13
      272 GETTABLEKS                       R24 R5 K29 ["toggle"]
      274 MOVE                             R25 R13
      275 MOVE                             R26 R14
      276 MOVE                             R27 R9
      277 MOVE                             R28 R16
      278 MOVE                             R29 R15
      279 MOVE                             R30 R20
      280 GETTABLEKS                       R31 R5 K7 ["enabled"]
      282 MOVE                             R32 R12
      283 MOVE                             R33 R7
      284 MOVE                             R34 R8
      285 GETUPVAL                         R36 3
      286 CALL                             R36 0 1
      287 JUMPIFNOT                        R36 ; [+3]
      288 GETTABLEKS                       R35 R6 K29 ["toggle"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R35
      292 GETUPVAL                         R37 3
      293 CALL                             R37 0 1
      294 JUMPIFNOT                        R37 ; [+3]
      295 GETTABLEKS                       R36 R6 K7 ["enabled"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R36
      299 SETLIST                          R23 R24 13 [1]
      301 CALL                             R21 2 1
      302 GETUPVAL                         R22 0
      303 GETTABLEKS                       R22 R22 K33 ["createElement"]
      305 GETUPVAL                         R23 14
      306 GETTABLEKS                       R23 R23 K34 ["Provider"]
      308 DUPTABLE                         R24 K36 [{"value"}]
      309 SETTABLEKS                       R21 R24 K35 ["value"]
      311 GETTABLEKS                       R25 R0 K37 ["children"]
      313 CALL                             R22 3 -1
      314 RETURN                           R22 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setInitialState"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R0 K13 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "toggleIsPreviewEnabledAsync", "isPlaying", "isPreviewEnabled", "currentTime", "isScrubbing", "stepBackAsync", "stepForwardAsync", "resetGraphAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["toggleIsPlayingAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setCurrentTimeAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["incrementIsScrubbingAsync"]
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 GETUPVAL                         R1 4
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K3 ["toggleIsPreviewEnabledAsync"]
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K4 ["isPlaying"]
       21 GETUPVAL                         R2 3
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+2]
       24 GETUPVAL                         R1 6
       25 JUMP                             ; [+1]
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K5 ["isPreviewEnabled"]
       29 GETUPVAL                         R1 7
       30 SETTABLEKS                       R1 R0 K6 ["currentTime"]
       32 GETUPVAL                         R1 8
       33 SETTABLEKS                       R1 R0 K7 ["isScrubbing"]
       35 GETUPVAL                         R1 9
       36 GETTABLEKS                       R1 R1 K14 ["createUnimplemented"]
       38 LOADK                            R2 K8 ["stepBackAsync"]
       39 CALL                             R1 1 1
       40 SETTABLEKS                       R1 R0 K8 ["stepBackAsync"]
       42 GETUPVAL                         R1 9
       43 GETTABLEKS                       R1 R1 K14 ["createUnimplemented"]
       45 LOADK                            R2 K9 ["stepForwardAsync"]
       46 CALL                             R1 1 1
       47 SETTABLEKS                       R1 R0 K9 ["stepForwardAsync"]
       49 GETUPVAL                         R1 10
       50 SETTABLEKS                       R1 R0 K10 ["resetGraphAsync"]
       52 GETUPVAL                         R1 11
       53 SETTABLEKS                       R1 R0 K11 ["playbackSpeed"]
       55 GETUPVAL                         R1 12
       56 SETTABLEKS                       R1 R0 K12 ["setPlaybackSpeedAsync"]
       58 RETURN                           R0 1

PROTO_13:
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
       40 GETUPVAL                         R7 5
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+6]
       43 GETUPVAL                         R6 6
       44 GETTABLEKS                       R6 R6 K6 ["useConsumer"]
       46 LOADB                            R7 1
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 GETUPVAL                         R7 7
       51 GETTABLEKS                       R7 R7 K6 ["useConsumer"]
       53 LOADN                            R8 1
       54 CALL                             R7 1 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K7 ["useRef"]
       58 LOADB                            R9 0
       59 CALL                             R8 1 1
       60 MOVE                             R9 R5
       61 JUMPIFNOT                        R9 ; [+1]
       62 NOT                              R9 R4
       63 SETTABLEKS                       R9 R8 K8 ["current"]
       65 GETUPVAL                         R9 8
       66 DUPTABLE                         R10 K12 [{"timeRange", "isAutomaticallyPlayingRef", "playbackSpeed"}]
       67 GETTABLEKS                       R11 R1 K9 ["timeRange"]
       69 SETTABLEKS                       R11 R10 K9 ["timeRange"]
       71 SETTABLEKS                       R8 R10 K10 ["isAutomaticallyPlayingRef"]
       73 SETTABLEKS                       R7 R10 K11 ["playbackSpeed"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R9 K13 ["currentTime"]
       78 GETTABLEKS                       R11 R9 K14 ["setCurrentTime"]
       80 GETUPVAL                         R12 5
       81 CALL                             R12 0 1
       82 JUMPIFNOT                        R12 ; [+20]
       83 GETUPVAL                         R12 9
       84 GETTABLEKS                       R12 R12 K6 ["useConsumer"]
       86 LOADNIL                          R13
       87 CALL                             R12 1 1
       88 GETUPVAL                         R13 0
       89 GETTABLEKS                       R13 R13 K15 ["useEffect"]
       91 NEWCLOSURE                       R14 P0
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R9
       94 NEWTABLE                         R15 0 2
       96 MOVE                             R16 R12
       97 GETTABLEKS                       R17 R9 K16 ["setInitialState"]
       99 SETLIST                          R15 R16 2 [1]
      101 CALL                             R13 2 0
      102 JUMP                             ; [+18]
      103 GETUPVAL                         R12 4
      104 GETTABLEKS                       R12 R12 K2 ["useReplicatedStateListener"]
      106 LOADK                            R13 K17 ["PlayStateContext_CurrentTime_DEPRECATED"]
      107 MOVE                             R14 R10
      108 CALL                             R12 2 1
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R13 R13 K15 ["useEffect"]
      112 NEWCLOSURE                       R14 P1
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R12
      115 NEWTABLE                         R15 0 1
      117 MOVE                             R16 R12
      118 SETLIST                          R15 R16 1 [1]
      120 CALL                             R13 2 0
      121 GETUPVAL                         R12 10
      122 DUPTABLE                         R13 K21 [{"isPlaying", "currentTime", "overrideRig", "isPreviewEnabled"}]
      123 SETTABLEKS                       R5 R13 K18 ["isPlaying"]
      125 SETTABLEKS                       R10 R13 K13 ["currentTime"]
      127 GETTABLEKS                       R15 R2 K22 ["selectedRigId"]
      129 JUMPIFNOT                        R15 ; [+8]
      130 GETTABLEKS                       R14 R3 K23 ["instanceRegistry"]
      132 GETTABLEKS                       R16 R2 K22 ["selectedRigId"]
      134 NAMECALL                         R14 R14 K24 ["idToInstance"]
      136 CALL                             R14 2 1
      137 JUMP                             ; [+1]
      138 LOADNIL                          R14
      139 SETTABLEKS                       R14 R13 K19 ["overrideRig"]
      141 GETUPVAL                         R15 5
      142 CALL                             R15 0 1
      143 JUMPIFNOT                        R15 ; [+2]
      144 MOVE                             R14 R6
      145 JUMP                             ; [+1]
      146 LOADNIL                          R14
      147 SETTABLEKS                       R14 R13 K20 ["isPreviewEnabled"]
      149 CALL                             R12 1 1
      150 GETUPVAL                         R13 11
      151 JUMPIFNOT                        R13 ; [+5]
      152 GETUPVAL                         R13 12
      153 GETTABLEKS                       R13 R13 K25 ["useProducer"]
      155 MOVE                             R14 R12
      156 CALL                             R13 1 0
      157 GETUPVAL                         R13 4
      158 GETTABLEKS                       R13 R13 K26 ["useBoundAction"]
      160 LOADK                            R14 K27 ["PlayStateContext_ToggleIsPlayingAsync"]
      161 CALL                             R13 1 1
      162 GETUPVAL                         R14 4
      163 GETTABLEKS                       R14 R14 K26 ["useBoundAction"]
      165 LOADK                            R15 K28 ["PlayStateContext_SetCurrentTime"]
      166 CALL                             R14 1 1
      167 GETUPVAL                         R15 4
      168 GETTABLEKS                       R15 R15 K26 ["useBoundAction"]
      170 LOADK                            R16 K29 ["PlayStateContext_IncrementIsScrubbing"]
      171 CALL                             R15 1 1
      172 GETUPVAL                         R16 13
      173 GETTABLEKS                       R16 R16 K6 ["useConsumer"]
      175 CALL                             R16 0 1
      176 GETUPVAL                         R18 5
      177 CALL                             R18 0 1
      178 JUMPIFNOT                        R18 ; [+5]
      179 GETUPVAL                         R17 14
      180 GETTABLEKS                       R17 R17 K6 ["useConsumer"]
      182 CALL                             R17 0 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R17
      185 GETUPVAL                         R18 0
      186 GETTABLEKS                       R18 R18 K30 ["useMemo"]
      188 NEWCLOSURE                       R19 P2
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R15
      192 CAPTURE                          UPVAL U5
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R4
      198 CAPTURE                          UPVAL U15
      199 CAPTURE                          VAL R12
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R16
      202 NEWTABLE                         R20 0 11
      204 MOVE                             R21 R13
      205 MOVE                             R22 R14
      206 MOVE                             R23 R15
      207 GETUPVAL                         R25 5
      208 CALL                             R25 0 1
      209 JUMPIFNOT                        R25 ; [+2]
      210 MOVE                             R24 R17
      211 JUMP                             ; [+1]
      212 LOADNIL                          R24
      213 GETUPVAL                         R26 5
      214 CALL                             R26 0 1
      215 JUMPIFNOT                        R26 ; [+2]
      216 MOVE                             R25 R6
      217 JUMP                             ; [+1]
      218 LOADNIL                          R25
      219 MOVE                             R26 R5
      220 MOVE                             R27 R10
      221 MOVE                             R28 R4
      222 MOVE                             R29 R7
      223 MOVE                             R30 R16
      224 MOVE                             R31 R12
      225 SETLIST                          R20 R21 11 [1]
      227 CALL                             R18 2 1
      228 GETUPVAL                         R19 0
      229 GETTABLEKS                       R19 R19 K31 ["createElement"]
      231 GETUPVAL                         R20 16
      232 GETTABLEKS                       R20 R20 K32 ["Provider"]
      234 DUPTABLE                         R21 K34 [{"value"}]
      235 SETTABLEKS                       R18 R21 K33 ["value"]
      237 GETTABLEKS                       R22 R0 K35 ["children"]
      239 CALL                             R19 3 -1
      240 RETURN                           R19 -1

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
       55 GETTABLEKS                       R8 R8 K17 ["getFFlagAnimGraphUI_RunTimeDebug"]
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
       82 DUPTABLE                         R11 K31 [{["IS_PLAYING"] = "PlayStateContext_IsPlaying", ["CURRENT_TIME_DEPRECATED"] = "PlayStateContext_CurrentTime_DEPRECATED", ["IS_SCRUBBING"] = "PlayStateContext_IsScrubbing"}]
       83 DUPTABLE                         R12 K42 [{["TOGGLE_IS_PLAYING_ASYNC"] = "PlayStateContext_ToggleIsPlayingAsync", ["SET_CURRENT_TIME_ASYNC"] = "PlayStateContext_SetCurrentTime", ["INCREMENT_IS_SCRUBBING_ASYNC"] = "PlayStateContext_IncrementIsScrubbing", ["STEP_BACK_ASYNC"] = "PlayStateContext_StepBack", ["STEP_FORWARD_ASYNC"] = "PlayStateContext_StepForward"}]
       84 DUPTABLE                         R13 K60 [{["isPreviewEnabled"] = True, ["isPlaying"] = False, ["isScrubbing"] = False, ["toggleIsPlayingAsync"], ["stepBackAsync"], ["stepForwardAsync"], ["resetGraphAsync"], ["setCurrentTimeAsync"], ["incrementIsScrubbingAsync"], ["toggleIsPreviewEnabledAsync"], ["currentTime"] = 0, ["playbackSpeed"] = 1, ["setPlaybackSpeedAsync"]}]
       85 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
       87 LOADK                            R15 K48 ["toggleIsPlayingAsync"]
       88 CALL                             R14 1 1
       89 SETTABLEKS                       R14 R13 K48 ["toggleIsPlayingAsync"]
       91 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
       93 LOADK                            R15 K49 ["stepBackAsync"]
       94 CALL                             R14 1 1
       95 SETTABLEKS                       R14 R13 K49 ["stepBackAsync"]
       97 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
       99 LOADK                            R15 K50 ["stepForwardAsync"]
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K50 ["stepForwardAsync"]
      103 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
      105 LOADK                            R15 K51 ["resetGraphAsync"]
      106 CALL                             R14 1 1
      107 SETTABLEKS                       R14 R13 K51 ["resetGraphAsync"]
      109 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
      111 LOADK                            R15 K52 ["setCurrentTimeAsync"]
      112 CALL                             R14 1 1
      113 SETTABLEKS                       R14 R13 K52 ["setCurrentTimeAsync"]
      115 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
      117 LOADK                            R15 K53 ["incrementIsScrubbingAsync"]
      118 CALL                             R14 1 1
      119 SETTABLEKS                       R14 R13 K53 ["incrementIsScrubbingAsync"]
      121 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
      123 LOADK                            R15 K54 ["toggleIsPreviewEnabledAsync"]
      124 CALL                             R14 1 1
      125 SETTABLEKS                       R14 R13 K54 ["toggleIsPreviewEnabledAsync"]
      127 GETTABLEKS                       R14 R4 K61 ["createUnimplemented"]
      129 LOADK                            R15 K59 ["setPlaybackSpeedAsync"]
      130 CALL                             R14 1 1
      131 SETTABLEKS                       R14 R13 K59 ["setPlaybackSpeedAsync"]
      133 GETTABLEKS                       R14 R3 K62 ["createContext"]
      135 MOVE                             R15 R13
      136 CALL                             R14 1 1
      137 GETTABLEKS                       R15 R2 K63 ["createBoundAction"]
      139 LOADK                            R16 K64 ["PlayStateContext_SetPlaybackSpeed"]
      140 CALL                             R15 1 1
      141 GETTABLEKS                       R16 R2 K63 ["createBoundAction"]
      143 LOADK                            R17 K65 ["PlayStateContext_ToggleIsPreviewEnabledAsync"]
      144 CALL                             R16 1 1
      145 GETTABLEKS                       R17 R2 K63 ["createBoundAction"]
      147 LOADK                            R18 K66 ["PlayStateContext_ResetGraph"]
      148 DUPTABLE                         R19 K68 [{["sendToAll"] = True}]
      149 CALL                             R17 2 1
      150 GETTABLEKS                       R18 R2 K69 ["createReplicatedState"]
      152 LOADK                            R19 K70 ["PlayStateContext_PlaybackSpeed"]
      153 CALL                             R18 1 1
      154 GETTABLEKS                       R19 R2 K69 ["createReplicatedState"]
      156 LOADK                            R20 K71 ["PlayStateContext_PlayedCurrentTimeInitialState"]
      157 CALL                             R19 1 1
      158 GETTABLEKS                       R20 R2 K69 ["createReplicatedState"]
      160 LOADK                            R21 K72 ["PlayStateContext_IsPreviewEnabled"]
      161 CALL                             R20 1 1
      162 DUPCLOSURE                       R21 K73 [PROTO_9]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R17
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R14
      178 DUPCLOSURE                       R22 K74 [PROTO_13]
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R5
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R20
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R14
      196 DUPTABLE                         R23 K78 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      197 SETTABLEKS                       R14 R23 K75 ["Context"]
      199 SETTABLEKS                       R22 R23 K76 ["EditableDataModelProvider"]
      201 SETTABLEKS                       R21 R23 K77 ["UIDataModelProvider"]
      203 RETURN                           R23 1
