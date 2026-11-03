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
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K14 ["toggle"]
        9 SETTABLEKS                       R1 R0 K1 ["toggleIsPreviewEnabledAsync"]
       11 GETUPVAL                         R1 2
       12 SETTABLEKS                       R1 R0 K2 ["setCurrentTimeAsync"]
       14 GETUPVAL                         R1 3
       15 SETTABLEKS                       R1 R0 K3 ["incrementIsScrubbingAsync"]
       17 GETUPVAL                         R1 4
       18 SETTABLEKS                       R1 R0 K4 ["setPlaybackSpeedAsync"]
       20 GETUPVAL                         R1 5
       21 SETTABLEKS                       R1 R0 K5 ["stepBackAsync"]
       23 GETUPVAL                         R1 6
       24 SETTABLEKS                       R1 R0 K6 ["stepForwardAsync"]
       26 GETUPVAL                         R1 7
       27 SETTABLEKS                       R1 R0 K7 ["resetGraphAsync"]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K15 ["enabled"]
       32 SETTABLEKS                       R1 R0 K8 ["isPlaying"]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K15 ["enabled"]
       37 SETTABLEKS                       R1 R0 K9 ["isPreviewEnabled"]
       39 GETUPVAL                         R1 8
       40 SETTABLEKS                       R1 R0 K10 ["currentTime"]
       42 GETUPVAL                         R1 9
       43 SETTABLEKS                       R1 R0 K11 ["isScrubbing"]
       45 GETUPVAL                         R1 10
       46 SETTABLEKS                       R1 R0 K12 ["playbackSpeed"]
       48 RETURN                           R0 1

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
       66 DUPTABLE                         R12 K12 [{"isAutomaticallyPlayingRef", "timeRange", "playbackSpeed"}]
       67 SETTABLEKS                       R10 R12 K9 ["isAutomaticallyPlayingRef"]
       69 GETTABLEKS                       R13 R1 K10 ["timeRange"]
       71 SETTABLEKS                       R13 R12 K10 ["timeRange"]
       73 SETTABLEKS                       R8 R12 K11 ["playbackSpeed"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R11 K13 ["currentTime"]
       78 GETTABLEKS                       R13 R11 K14 ["setCurrentTime"]
       80 GETUPVAL                         R14 0
       81 GETTABLEKS                       R14 R14 K15 ["useCallback"]
       83 NEWCLOSURE                       R15 P0
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 NEWTABLE                         R16 0 2
       88 MOVE                             R17 R4
       89 MOVE                             R18 R2
       90 SETLIST                          R16 R17 2 [1]
       92 CALL                             R14 2 1
       93 GETUPVAL                         R15 0
       94 GETTABLEKS                       R15 R15 K15 ["useCallback"]
       96 NEWCLOSURE                       R16 P1
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R12
      100 NEWTABLE                         R17 0 2
      102 MOVE                             R18 R12
      103 MOVE                             R19 R13
      104 SETLIST                          R17 R18 2 [1]
      106 CALL                             R15 2 1
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R16 R16 K15 ["useCallback"]
      110 NEWCLOSURE                       R17 P2
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 NEWTABLE                         R18 0 2
      116 MOVE                             R19 R12
      117 MOVE                             R20 R13
      118 SETLIST                          R18 R19 2 [1]
      120 CALL                             R16 2 1
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R17 R17 K15 ["useCallback"]
      124 NEWCLOSURE                       R18 P3
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R5
      128 NEWTABLE                         R19 0 0
      130 CALL                             R17 2 1
      131 GETUPVAL                         R18 0
      132 GETTABLEKS                       R18 R18 K16 ["useEffect"]
      134 NEWCLOSURE                       R19 P4
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R17
      137 NEWTABLE                         R20 0 2
      139 GETTABLEKS                       R21 R0 K17 ["isOpen"]
      141 MOVE                             R22 R17
      142 SETLIST                          R20 R21 2 [1]
      144 CALL                             R18 2 0
      145 GETUPVAL                         R18 6
      146 DUPTABLE                         R19 K20 [{"isPlaying", "currentTime", "isPreviewEnabled"}]
      147 GETTABLEKS                       R20 R5 K7 ["enabled"]
      149 SETTABLEKS                       R20 R19 K18 ["isPlaying"]
      151 SETTABLEKS                       R12 R19 K13 ["currentTime"]
      153 GETTABLEKS                       R20 R6 K7 ["enabled"]
      155 SETTABLEKS                       R20 R19 K19 ["isPreviewEnabled"]
      157 CALL                             R18 1 1
      158 GETUPVAL                         R20 7
      159 JUMPIFNOT                        R20 ; [+5]
      160 GETUPVAL                         R19 8
      161 GETTABLEKS                       R19 R19 K21 ["useConsumer"]
      163 CALL                             R19 0 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R19
      166 GETUPVAL                         R20 0
      167 GETTABLEKS                       R20 R20 K15 ["useCallback"]
      169 NEWCLOSURE                       R21 P5
      170 CAPTURE                          UPVAL U7
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R19
      173 NEWTABLE                         R22 0 2
      175 MOVE                             R23 R18
      176 MOVE                             R24 R19
      177 SETLIST                          R22 R23 2 [1]
      179 CALL                             R20 2 1
      180 GETUPVAL                         R21 9
      181 GETTABLEKS                       R21 R21 K22 ["useReplicatedState"]
      183 LOADK                            R22 K23 ["PlayStateContext_IsPlaying"]
      184 GETTABLEKS                       R23 R5 K7 ["enabled"]
      186 CALL                             R21 2 0
      187 GETUPVAL                         R21 10
      188 GETTABLEKS                       R21 R21 K6 ["useProducer"]
      190 GETTABLEKS                       R22 R6 K7 ["enabled"]
      192 CALL                             R21 1 0
      193 GETUPVAL                         R21 11
      194 GETTABLEKS                       R21 R21 K6 ["useProducer"]
      196 GETTABLEKS                       R22 R11 K24 ["initialState"]
      198 CALL                             R21 1 0
      199 GETUPVAL                         R21 9
      200 GETTABLEKS                       R21 R21 K22 ["useReplicatedState"]
      202 LOADK                            R22 K25 ["PlayStateContext_IsScrubbing"]
      203 MOVE                             R23 R7
      204 CALL                             R21 2 0
      205 GETUPVAL                         R21 9
      206 GETTABLEKS                       R21 R21 K26 ["useBoundAction"]
      208 LOADK                            R22 K27 ["PlayStateContext_ToggleIsPlayingAsync"]
      209 GETTABLEKS                       R23 R5 K28 ["toggle"]
      211 CALL                             R21 2 0
      212 GETUPVAL                         R21 9
      213 GETTABLEKS                       R21 R21 K26 ["useBoundAction"]
      215 LOADK                            R22 K29 ["PlayStateContext_IncrementIsScrubbing"]
      216 MOVE                             R23 R14
      217 CALL                             R21 2 0
      218 GETUPVAL                         R21 9
      219 GETTABLEKS                       R21 R21 K26 ["useBoundAction"]
      221 LOADK                            R22 K30 ["PlayStateContext_SetCurrentTime"]
      222 MOVE                             R23 R13
      223 CALL                             R21 2 0
      224 GETUPVAL                         R21 12
      225 GETTABLEKS                       R21 R21 K6 ["useProducer"]
      227 GETTABLEKS                       R22 R6 K28 ["toggle"]
      229 CALL                             R21 1 0
      230 GETUPVAL                         R21 0
      231 GETTABLEKS                       R21 R21 K31 ["useMemo"]
      233 NEWCLOSURE                       R22 P6
      234 CAPTURE                          VAL R5
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R13
      237 CAPTURE                          VAL R14
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R16
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R8
      245 NEWTABLE                         R23 0 13
      247 GETTABLEKS                       R24 R5 K28 ["toggle"]
      249 MOVE                             R25 R13
      250 MOVE                             R26 R14
      251 MOVE                             R27 R9
      252 MOVE                             R28 R16
      253 MOVE                             R29 R15
      254 MOVE                             R30 R20
      255 GETTABLEKS                       R31 R5 K7 ["enabled"]
      257 MOVE                             R32 R12
      258 MOVE                             R33 R7
      259 MOVE                             R34 R8
      260 GETTABLEKS                       R35 R6 K28 ["toggle"]
      262 GETTABLEKS                       R36 R6 K7 ["enabled"]
      264 SETLIST                          R23 R24 13 [1]
      266 CALL                             R21 2 1
      267 GETUPVAL                         R22 0
      268 GETTABLEKS                       R22 R22 K32 ["createElement"]
      270 GETUPVAL                         R23 13
      271 GETTABLEKS                       R23 R23 K33 ["Provider"]
      273 DUPTABLE                         R24 K35 [{"value"}]
      274 SETTABLEKS                       R21 R24 K34 ["value"]
      276 GETTABLEKS                       R25 R0 K36 ["children"]
      278 CALL                             R22 3 -1
      279 RETURN                           R22 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setInitialState"]
        6 GETUPVAL                         R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R0 K13 [{"toggleIsPlayingAsync", "setCurrentTimeAsync", "incrementIsScrubbingAsync", "toggleIsPreviewEnabledAsync", "isPlaying", "isPreviewEnabled", "currentTime", "isScrubbing", "stepBackAsync", "stepForwardAsync", "resetGraphAsync", "playbackSpeed", "setPlaybackSpeedAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["toggleIsPlayingAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setCurrentTimeAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["incrementIsScrubbingAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["toggleIsPreviewEnabledAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["isPlaying"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["isPreviewEnabled"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["currentTime"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["isScrubbing"]
       25 GETUPVAL                         R1 8
       26 GETTABLEKS                       R1 R1 K14 ["createUnimplemented"]
       28 LOADK                            R2 K8 ["stepBackAsync"]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K8 ["stepBackAsync"]
       32 GETUPVAL                         R1 8
       33 GETTABLEKS                       R1 R1 K14 ["createUnimplemented"]
       35 LOADK                            R2 K9 ["stepForwardAsync"]
       36 CALL                             R1 1 1
       37 SETTABLEKS                       R1 R0 K9 ["stepForwardAsync"]
       39 GETUPVAL                         R1 9
       40 SETTABLEKS                       R1 R0 K10 ["resetGraphAsync"]
       42 GETUPVAL                         R1 10
       43 SETTABLEKS                       R1 R0 K11 ["playbackSpeed"]
       45 GETUPVAL                         R1 11
       46 SETTABLEKS                       R1 R0 K12 ["setPlaybackSpeedAsync"]
       48 RETURN                           R0 1

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
       61 DUPTABLE                         R10 K12 [{"timeRange", "isAutomaticallyPlayingRef", "playbackSpeed"}]
       62 GETTABLEKS                       R11 R1 K9 ["timeRange"]
       64 SETTABLEKS                       R11 R10 K9 ["timeRange"]
       66 SETTABLEKS                       R8 R10 K10 ["isAutomaticallyPlayingRef"]
       68 SETTABLEKS                       R7 R10 K11 ["playbackSpeed"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R9 K13 ["currentTime"]
       73 GETUPVAL                         R11 8
       74 GETTABLEKS                       R11 R11 K6 ["useConsumer"]
       76 LOADNIL                          R12
       77 CALL                             R11 1 1
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R12 R12 K14 ["useEffect"]
       81 NEWCLOSURE                       R13 P0
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R9
       84 NEWTABLE                         R14 0 2
       86 MOVE                             R15 R11
       87 GETTABLEKS                       R16 R9 K15 ["setInitialState"]
       89 SETLIST                          R14 R15 2 [1]
       91 CALL                             R12 2 0
       92 GETUPVAL                         R12 9
       93 DUPTABLE                         R13 K19 [{"isPlaying", "currentTime", "overrideRig", "isPreviewEnabled"}]
       94 SETTABLEKS                       R5 R13 K16 ["isPlaying"]
       96 SETTABLEKS                       R10 R13 K13 ["currentTime"]
       98 GETTABLEKS                       R15 R2 K20 ["selectedRigId"]
      100 JUMPIFNOT                        R15 ; [+8]
      101 GETTABLEKS                       R14 R3 K21 ["instanceRegistry"]
      103 GETTABLEKS                       R16 R2 K20 ["selectedRigId"]
      105 NAMECALL                         R14 R14 K22 ["idToInstance"]
      107 CALL                             R14 2 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K17 ["overrideRig"]
      112 SETTABLEKS                       R6 R13 K18 ["isPreviewEnabled"]
      114 CALL                             R12 1 1
      115 GETUPVAL                         R13 10
      116 JUMPIFNOT                        R13 ; [+5]
      117 GETUPVAL                         R13 11
      118 GETTABLEKS                       R13 R13 K23 ["useProducer"]
      120 MOVE                             R14 R12
      121 CALL                             R13 1 0
      122 GETUPVAL                         R13 4
      123 GETTABLEKS                       R13 R13 K24 ["useBoundAction"]
      125 LOADK                            R14 K25 ["PlayStateContext_ToggleIsPlayingAsync"]
      126 CALL                             R13 1 1
      127 GETUPVAL                         R14 4
      128 GETTABLEKS                       R14 R14 K24 ["useBoundAction"]
      130 LOADK                            R15 K26 ["PlayStateContext_SetCurrentTime"]
      131 CALL                             R14 1 1
      132 GETUPVAL                         R15 4
      133 GETTABLEKS                       R15 R15 K24 ["useBoundAction"]
      135 LOADK                            R16 K27 ["PlayStateContext_IncrementIsScrubbing"]
      136 CALL                             R15 1 1
      137 GETUPVAL                         R16 12
      138 GETTABLEKS                       R16 R16 K6 ["useConsumer"]
      140 CALL                             R16 0 1
      141 GETUPVAL                         R17 13
      142 GETTABLEKS                       R17 R17 K6 ["useConsumer"]
      144 CALL                             R17 0 1
      145 GETUPVAL                         R18 0
      146 GETTABLEKS                       R18 R18 K28 ["useMemo"]
      148 NEWCLOSURE                       R19 P1
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R6
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R4
      157 CAPTURE                          UPVAL U14
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R16
      161 NEWTABLE                         R20 0 11
      163 MOVE                             R21 R13
      164 MOVE                             R22 R14
      165 MOVE                             R23 R15
      166 MOVE                             R24 R17
      167 MOVE                             R25 R6
      168 MOVE                             R26 R5
      169 MOVE                             R27 R10
      170 MOVE                             R28 R4
      171 MOVE                             R29 R7
      172 MOVE                             R30 R16
      173 MOVE                             R31 R12
      174 SETLIST                          R20 R21 11 [1]
      176 CALL                             R18 2 1
      177 GETUPVAL                         R19 0
      178 GETTABLEKS                       R19 R19 K29 ["createElement"]
      180 GETUPVAL                         R20 15
      181 GETTABLEKS                       R20 R20 K30 ["Provider"]
      183 DUPTABLE                         R21 K32 [{"value"}]
      184 SETTABLEKS                       R18 R21 K31 ["value"]
      186 GETTABLEKS                       R22 R0 K33 ["children"]
      188 CALL                             R19 3 -1
      189 RETURN                           R19 -1

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
       53 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       55 GETTABLEKS                       R8 R8 K16 ["PlayStateContext"]
       57 GETTABLEKS                       R8 R8 K17 ["usePlayedCurrentTime"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       64 GETTABLEKS                       R9 R9 K16 ["PlayStateContext"]
       66 GETTABLEKS                       R9 R9 K18 ["usePreviewPlayback"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K20 [game]
       71 LOADK                            R11 K21 ["AnimGraphResetAPI"]
       72 NAMECALL                         R9 R9 K22 ["GetEngineFeature"]
       74 CALL                             R9 2 1
       75 DUPTABLE                         R10 K27 [{["IS_PLAYING"] = "PlayStateContext_IsPlaying", ["IS_SCRUBBING"] = "PlayStateContext_IsScrubbing"}]
       76 DUPTABLE                         R11 K38 [{["TOGGLE_IS_PLAYING_ASYNC"] = "PlayStateContext_ToggleIsPlayingAsync", ["SET_CURRENT_TIME_ASYNC"] = "PlayStateContext_SetCurrentTime", ["INCREMENT_IS_SCRUBBING_ASYNC"] = "PlayStateContext_IncrementIsScrubbing", ["STEP_BACK_ASYNC"] = "PlayStateContext_StepBack", ["STEP_FORWARD_ASYNC"] = "PlayStateContext_StepForward"}]
       77 DUPTABLE                         R12 K56 [{["isPreviewEnabled"] = True, ["isPlaying"] = False, ["isScrubbing"] = False, ["toggleIsPlayingAsync"], ["stepBackAsync"], ["stepForwardAsync"], ["resetGraphAsync"], ["setCurrentTimeAsync"], ["incrementIsScrubbingAsync"], ["toggleIsPreviewEnabledAsync"], ["currentTime"] = 0, ["playbackSpeed"] = 1, ["setPlaybackSpeedAsync"]}]
       78 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
       80 LOADK                            R14 K44 ["toggleIsPlayingAsync"]
       81 CALL                             R13 1 1
       82 SETTABLEKS                       R13 R12 K44 ["toggleIsPlayingAsync"]
       84 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
       86 LOADK                            R14 K45 ["stepBackAsync"]
       87 CALL                             R13 1 1
       88 SETTABLEKS                       R13 R12 K45 ["stepBackAsync"]
       90 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
       92 LOADK                            R14 K46 ["stepForwardAsync"]
       93 CALL                             R13 1 1
       94 SETTABLEKS                       R13 R12 K46 ["stepForwardAsync"]
       96 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
       98 LOADK                            R14 K47 ["resetGraphAsync"]
       99 CALL                             R13 1 1
      100 SETTABLEKS                       R13 R12 K47 ["resetGraphAsync"]
      102 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
      104 LOADK                            R14 K48 ["setCurrentTimeAsync"]
      105 CALL                             R13 1 1
      106 SETTABLEKS                       R13 R12 K48 ["setCurrentTimeAsync"]
      108 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
      110 LOADK                            R14 K49 ["incrementIsScrubbingAsync"]
      111 CALL                             R13 1 1
      112 SETTABLEKS                       R13 R12 K49 ["incrementIsScrubbingAsync"]
      114 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
      116 LOADK                            R14 K50 ["toggleIsPreviewEnabledAsync"]
      117 CALL                             R13 1 1
      118 SETTABLEKS                       R13 R12 K50 ["toggleIsPreviewEnabledAsync"]
      120 GETTABLEKS                       R13 R4 K57 ["createUnimplemented"]
      122 LOADK                            R14 K55 ["setPlaybackSpeedAsync"]
      123 CALL                             R13 1 1
      124 SETTABLEKS                       R13 R12 K55 ["setPlaybackSpeedAsync"]
      126 GETTABLEKS                       R13 R3 K58 ["createContext"]
      128 MOVE                             R14 R12
      129 CALL                             R13 1 1
      130 GETTABLEKS                       R14 R2 K59 ["createBoundAction"]
      132 LOADK                            R15 K60 ["PlayStateContext_SetPlaybackSpeed"]
      133 CALL                             R14 1 1
      134 GETTABLEKS                       R15 R2 K59 ["createBoundAction"]
      136 LOADK                            R16 K61 ["PlayStateContext_ToggleIsPreviewEnabledAsync"]
      137 CALL                             R15 1 1
      138 GETTABLEKS                       R16 R2 K59 ["createBoundAction"]
      140 LOADK                            R17 K62 ["PlayStateContext_ResetGraph"]
      141 DUPTABLE                         R18 K64 [{["sendToAll"] = True}]
      142 CALL                             R16 2 1
      143 GETTABLEKS                       R17 R2 K65 ["createReplicatedState"]
      145 LOADK                            R18 K66 ["PlayStateContext_PlaybackSpeed"]
      146 CALL                             R17 1 1
      147 GETTABLEKS                       R18 R2 K65 ["createReplicatedState"]
      149 LOADK                            R19 K67 ["PlayStateContext_PlayedCurrentTimeInitialState"]
      150 CALL                             R18 1 1
      151 GETTABLEKS                       R19 R2 K65 ["createReplicatedState"]
      153 LOADK                            R20 K68 ["PlayStateContext_IsPreviewEnabled"]
      154 CALL                             R19 1 1
      155 DUPCLOSURE                       R20 K69 [PROTO_9]
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R13
      170 DUPCLOSURE                       R21 K70 [PROTO_12]
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R9
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R13
      187 DUPTABLE                         R22 K74 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      188 SETTABLEKS                       R13 R22 K71 ["Context"]
      190 SETTABLEKS                       R21 R22 K72 ["EditableDataModelProvider"]
      192 SETTABLEKS                       R20 R22 K73 ["UIDataModelProvider"]
      194 RETURN                           R22 1
