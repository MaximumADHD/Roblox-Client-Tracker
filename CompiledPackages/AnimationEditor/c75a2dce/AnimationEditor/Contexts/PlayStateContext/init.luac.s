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
        0 DUPTABLE                         R0 K12 [{"toggleIsPlayingAsync", "toggleIsPreviewEnabledAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "setPlaybackSpeedAsync", "stepBackAsync", "stepForwardAsync", "isPlaying", "isPreviewEnabled", "currentTime", "isScrubbing", "playbackSpeed"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K13 ["toggle"]
        4 SETTABLEKS                       R1 R0 K0 ["toggleIsPlayingAsync"]
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K13 ["toggle"]
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
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K14 ["enabled"]
       34 SETTABLEKS                       R1 R0 K7 ["isPlaying"]
       36 GETUPVAL                         R2 1
       37 CALL                             R2 0 1
       38 JUMPIFNOT                        R2 ; [+4]
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R1 R1 K14 ["enabled"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K8 ["isPreviewEnabled"]
       46 GETUPVAL                         R1 8
       47 SETTABLEKS                       R1 R0 K9 ["currentTime"]
       49 GETUPVAL                         R1 9
       50 SETTABLEKS                       R1 R0 K10 ["isScrubbing"]
       52 GETUPVAL                         R1 10
       53 SETTABLEKS                       R1 R0 K11 ["playbackSpeed"]
       55 RETURN                           R0 1

PROTO_8:
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
      167 CALL                             R18 1 0
      168 GETUPVAL                         R18 8
      169 GETTABLEKS                       R18 R18 K21 ["useReplicatedState"]
      171 LOADK                            R19 K22 ["PlayStateContext_IsPlaying"]
      172 GETTABLEKS                       R20 R5 K7 ["enabled"]
      174 CALL                             R18 2 0
      175 GETUPVAL                         R18 3
      176 CALL                             R18 0 1
      177 JUMPIFNOT                        R18 ; [+13]
      178 GETUPVAL                         R18 9
      179 GETTABLEKS                       R18 R18 K6 ["useProducer"]
      181 GETTABLEKS                       R19 R6 K7 ["enabled"]
      183 CALL                             R18 1 0
      184 GETUPVAL                         R18 10
      185 GETTABLEKS                       R18 R18 K6 ["useProducer"]
      187 GETTABLEKS                       R19 R11 K23 ["initialState"]
      189 CALL                             R18 1 0
      190 JUMP                             ; [+7]
      191 GETUPVAL                         R18 8
      192 GETTABLEKS                       R18 R18 K21 ["useReplicatedState"]
      194 LOADK                            R19 K24 ["PlayStateContext_CurrentTime_DEPRECATED"]
      195 MOVE                             R20 R12
      196 MOVE                             R21 R10
      197 CALL                             R18 3 0
      198 GETUPVAL                         R18 8
      199 GETTABLEKS                       R18 R18 K21 ["useReplicatedState"]
      201 LOADK                            R19 K25 ["PlayStateContext_IsScrubbing"]
      202 MOVE                             R20 R7
      203 CALL                             R18 2 0
      204 GETUPVAL                         R18 8
      205 GETTABLEKS                       R18 R18 K26 ["useBoundAction"]
      207 LOADK                            R19 K27 ["PlayStateContext_ToggleIsPlayingAsync"]
      208 GETTABLEKS                       R20 R5 K28 ["toggle"]
      210 CALL                             R18 2 0
      211 GETUPVAL                         R18 8
      212 GETTABLEKS                       R18 R18 K26 ["useBoundAction"]
      214 LOADK                            R19 K29 ["PlayStateContext_IncrementIsScrubbing"]
      215 MOVE                             R20 R14
      216 CALL                             R18 2 0
      217 GETUPVAL                         R18 8
      218 GETTABLEKS                       R18 R18 K26 ["useBoundAction"]
      220 LOADK                            R19 K30 ["PlayStateContext_SetCurrentTime"]
      221 MOVE                             R20 R13
      222 CALL                             R18 2 0
      223 GETUPVAL                         R18 3
      224 CALL                             R18 0 1
      225 JUMPIFNOT                        R18 ; [+6]
      226 GETUPVAL                         R18 11
      227 GETTABLEKS                       R18 R18 K6 ["useProducer"]
      229 GETTABLEKS                       R19 R6 K28 ["toggle"]
      231 CALL                             R18 1 0
      232 GETUPVAL                         R18 0
      233 GETTABLEKS                       R18 R18 K31 ["useMemo"]
      235 NEWCLOSURE                       R19 P5
      236 CAPTURE                          VAL R5
      237 CAPTURE                          UPVAL U3
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R13
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R9
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R8
      247 NEWTABLE                         R20 0 12
      249 GETTABLEKS                       R21 R5 K28 ["toggle"]
      251 MOVE                             R22 R13
      252 MOVE                             R23 R14
      253 MOVE                             R24 R9
      254 MOVE                             R25 R16
      255 MOVE                             R26 R15
      256 GETTABLEKS                       R27 R5 K7 ["enabled"]
      258 MOVE                             R28 R12
      259 MOVE                             R29 R7
      260 MOVE                             R30 R8
      261 GETUPVAL                         R32 3
      262 CALL                             R32 0 1
      263 JUMPIFNOT                        R32 ; [+3]
      264 GETTABLEKS                       R31 R6 K28 ["toggle"]
      266 JUMP                             ; [+1]
      267 LOADNIL                          R31
      268 GETUPVAL                         R33 3
      269 CALL                             R33 0 1
      270 JUMPIFNOT                        R33 ; [+3]
      271 GETTABLEKS                       R32 R6 K7 ["enabled"]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R32
      275 SETLIST                          R20 R21 12 [1]
      277 CALL                             R18 2 1
      278 GETUPVAL                         R19 0
      279 GETTABLEKS                       R19 R19 K32 ["createElement"]
      281 GETUPVAL                         R20 12
      282 GETTABLEKS                       R20 R20 K33 ["Provider"]
      284 DUPTABLE                         R21 K35 [{"value"}]
      285 SETTABLEKS                       R18 R21 K34 ["value"]
      287 GETTABLEKS                       R22 R0 K36 ["children"]
      289 CALL                             R19 3 -1
      290 RETURN                           R19 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setInitialState"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K12 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "toggleIsPreviewEnabledAsync", "isPlaying", "isPreviewEnabled", "currentTime", "isScrubbing", "stepBackAsync", "stepForwardAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
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
       36 GETTABLEKS                       R1 R1 K13 ["createUnimplemented"]
       38 LOADK                            R2 K8 ["stepBackAsync"]
       39 CALL                             R1 1 1
       40 SETTABLEKS                       R1 R0 K8 ["stepBackAsync"]
       42 GETUPVAL                         R1 9
       43 GETTABLEKS                       R1 R1 K13 ["createUnimplemented"]
       45 LOADK                            R2 K9 ["stepForwardAsync"]
       46 CALL                             R1 1 1
       47 SETTABLEKS                       R1 R0 K9 ["stepForwardAsync"]
       49 GETUPVAL                         R1 10
       50 SETTABLEKS                       R1 R0 K10 ["playbackSpeed"]
       52 GETUPVAL                         R1 11
       53 SETTABLEKS                       R1 R0 K11 ["setPlaybackSpeedAsync"]
       55 RETURN                           R0 1

PROTO_12:
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
      149 CALL                             R12 1 0
      150 GETUPVAL                         R12 4
      151 GETTABLEKS                       R12 R12 K25 ["useBoundAction"]
      153 LOADK                            R13 K26 ["PlayStateContext_ToggleIsPlayingAsync"]
      154 CALL                             R12 1 1
      155 GETUPVAL                         R13 4
      156 GETTABLEKS                       R13 R13 K25 ["useBoundAction"]
      158 LOADK                            R14 K27 ["PlayStateContext_SetCurrentTime"]
      159 CALL                             R13 1 1
      160 GETUPVAL                         R14 4
      161 GETTABLEKS                       R14 R14 K25 ["useBoundAction"]
      163 LOADK                            R15 K28 ["PlayStateContext_IncrementIsScrubbing"]
      164 CALL                             R14 1 1
      165 GETUPVAL                         R15 11
      166 GETTABLEKS                       R15 R15 K6 ["useConsumer"]
      168 CALL                             R15 0 1
      169 GETUPVAL                         R17 5
      170 CALL                             R17 0 1
      171 JUMPIFNOT                        R17 ; [+5]
      172 GETUPVAL                         R16 12
      173 GETTABLEKS                       R16 R16 K6 ["useConsumer"]
      175 CALL                             R16 0 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R16
      178 GETUPVAL                         R17 0
      179 GETTABLEKS                       R17 R17 K29 ["useMemo"]
      181 NEWCLOSURE                       R18 P2
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R14
      185 CAPTURE                          UPVAL U5
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R4
      191 CAPTURE                          UPVAL U13
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R15
      194 NEWTABLE                         R19 0 10
      196 MOVE                             R20 R12
      197 MOVE                             R21 R13
      198 MOVE                             R22 R14
      199 GETUPVAL                         R24 5
      200 CALL                             R24 0 1
      201 JUMPIFNOT                        R24 ; [+2]
      202 MOVE                             R23 R16
      203 JUMP                             ; [+1]
      204 LOADNIL                          R23
      205 GETUPVAL                         R25 5
      206 CALL                             R25 0 1
      207 JUMPIFNOT                        R25 ; [+2]
      208 MOVE                             R24 R6
      209 JUMP                             ; [+1]
      210 LOADNIL                          R24
      211 MOVE                             R25 R5
      212 MOVE                             R26 R10
      213 MOVE                             R27 R4
      214 MOVE                             R28 R7
      215 MOVE                             R29 R15
      216 SETLIST                          R19 R20 10 [1]
      218 CALL                             R17 2 1
      219 GETUPVAL                         R18 0
      220 GETTABLEKS                       R18 R18 K30 ["createElement"]
      222 GETUPVAL                         R19 14
      223 GETTABLEKS                       R19 R19 K31 ["Provider"]
      225 DUPTABLE                         R20 K33 [{"value"}]
      226 SETTABLEKS                       R17 R20 K32 ["value"]
      228 GETTABLEKS                       R21 R0 K34 ["children"]
      230 CALL                             R18 3 -1
      231 RETURN                           R18 -1

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
       76 DUPTABLE                         R10 K27 [{["IS_PLAYING"] = "PlayStateContext_IsPlaying", ["CURRENT_TIME_DEPRECATED"] = "PlayStateContext_CurrentTime_DEPRECATED", ["IS_SCRUBBING"] = "PlayStateContext_IsScrubbing"}]
       77 DUPTABLE                         R11 K38 [{["TOGGLE_IS_PLAYING_ASYNC"] = "PlayStateContext_ToggleIsPlayingAsync", ["SET_CURRENT_TIME_ASYNC"] = "PlayStateContext_SetCurrentTime", ["INCREMENT_IS_SCRUBBING_ASYNC"] = "PlayStateContext_IncrementIsScrubbing", ["STEP_BACK_ASYNC"] = "PlayStateContext_StepBack", ["STEP_FORWARD_ASYNC"] = "PlayStateContext_StepForward"}]
       78 DUPTABLE                         R12 K55 [{["isPreviewEnabled"] = True, ["isPlaying"] = False, ["isScrubbing"] = False, ["toggleIsPlayingAsync"], ["stepBackAsync"], ["stepForwardAsync"], ["setCurrentTimeAsync"], ["incrementIsScrubbingAsync"], ["toggleIsPreviewEnabledAsync"], ["currentTime"] = 0, ["playbackSpeed"] = 1, ["setPlaybackSpeedAsync"]}]
       79 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
       81 LOADK                            R14 K44 ["toggleIsPlayingAsync"]
       82 CALL                             R13 1 1
       83 SETTABLEKS                       R13 R12 K44 ["toggleIsPlayingAsync"]
       85 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
       87 LOADK                            R14 K45 ["stepBackAsync"]
       88 CALL                             R13 1 1
       89 SETTABLEKS                       R13 R12 K45 ["stepBackAsync"]
       91 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
       93 LOADK                            R14 K46 ["stepForwardAsync"]
       94 CALL                             R13 1 1
       95 SETTABLEKS                       R13 R12 K46 ["stepForwardAsync"]
       97 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
       99 LOADK                            R14 K47 ["setCurrentTimeAsync"]
      100 CALL                             R13 1 1
      101 SETTABLEKS                       R13 R12 K47 ["setCurrentTimeAsync"]
      103 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
      105 LOADK                            R14 K48 ["incrementIsScrubbingAsync"]
      106 CALL                             R13 1 1
      107 SETTABLEKS                       R13 R12 K48 ["incrementIsScrubbingAsync"]
      109 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
      111 LOADK                            R14 K49 ["toggleIsPreviewEnabledAsync"]
      112 CALL                             R13 1 1
      113 SETTABLEKS                       R13 R12 K49 ["toggleIsPreviewEnabledAsync"]
      115 GETTABLEKS                       R13 R4 K56 ["createUnimplemented"]
      117 LOADK                            R14 K54 ["setPlaybackSpeedAsync"]
      118 CALL                             R13 1 1
      119 SETTABLEKS                       R13 R12 K54 ["setPlaybackSpeedAsync"]
      121 GETTABLEKS                       R13 R3 K57 ["createContext"]
      123 MOVE                             R14 R12
      124 CALL                             R13 1 1
      125 GETTABLEKS                       R14 R2 K58 ["createBoundAction"]
      127 LOADK                            R15 K59 ["PlayStateContext_SetPlaybackSpeed"]
      128 CALL                             R14 1 1
      129 GETTABLEKS                       R15 R2 K58 ["createBoundAction"]
      131 LOADK                            R16 K60 ["PlayStateContext_ToggleIsPreviewEnabledAsync"]
      132 CALL                             R15 1 1
      133 GETTABLEKS                       R16 R2 K61 ["createReplicatedState"]
      135 LOADK                            R17 K62 ["PlayStateContext_PlaybackSpeed"]
      136 CALL                             R16 1 1
      137 GETTABLEKS                       R17 R2 K61 ["createReplicatedState"]
      139 LOADK                            R18 K63 ["PlayStateContext_PlayedCurrentTimeInitialState"]
      140 CALL                             R17 1 1
      141 GETTABLEKS                       R18 R2 K61 ["createReplicatedState"]
      143 LOADK                            R19 K64 ["PlayStateContext_IsPreviewEnabled"]
      144 CALL                             R18 1 1
      145 DUPCLOSURE                       R19 K65 [PROTO_8]
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R13
      159 DUPCLOSURE                       R20 K66 [PROTO_12]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R13
      175 DUPTABLE                         R21 K70 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      176 SETTABLEKS                       R13 R21 K67 ["Context"]
      178 SETTABLEKS                       R20 R21 K68 ["EditableDataModelProvider"]
      180 SETTABLEKS                       R19 R21 K69 ["UIDataModelProvider"]
      182 RETURN                           R21 1
