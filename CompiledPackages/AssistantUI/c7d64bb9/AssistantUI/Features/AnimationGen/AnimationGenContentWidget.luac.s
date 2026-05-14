PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["set"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["setHostIsPlaying"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K2 ["setHostIsPlaying"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["disable"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["setHostIsPlaying"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["setHostIsPlaying"]
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R3 2
       18 ADD                              R2 R3 R0
       19 LOADN                            R3 0
       20 GETUPVAL                         R4 3
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R1 K5 [math.clamp]
       24 CALL                             R1 3 1
       25 GETUPVAL                         R2 4
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K6 ["setHostCurrentTime"]
       31 JUMPIFNOT                        R2 ; [+5]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K6 ["setHostCurrentTime"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["disable"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["setHostIsPlaying"]
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K3 ["setHostIsPlaying"]
       19 LOADB                            R1 0
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["enable"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["setHostIsPlaying"]
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["setHostIsPlaying"]
       19 LOADB                            R1 1
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setHostCurrentTime"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["setHostCurrentTime"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setHostPlaybackSpeed"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["setHostPlaybackSpeed"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [-0.0333333333333333]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [0.0333333333333333]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["previewState"]
        2 JUMPIFEQKS                       R2 K1 ["Generating"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 GETTABLEKS                       R3 R0 K0 ["previewState"]
        8 JUMPIFEQKS                       R3 K2 ["GenerationSucceeded"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R4 R0 K4 ["duration"]
       14 ORK                              R3 R4 K3 [10]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K5 ["useToggleState"]
       18 LOADB                            R5 0
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["useState"]
       23 LOADN                            R6 1
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K7 ["useRef"]
       28 LOADB                            R8 0
       29 CALL                             R7 1 1
       30 GETUPVAL                         R8 2
       31 DUPTABLE                         R9 K10 [{"isPlaying", "playbackSpeed", "duration"}]
       32 GETTABLEKS                       R10 R4 K11 ["enabled"]
       34 SETTABLEKS                       R10 R9 K8 ["isPlaying"]
       36 SETTABLEKS                       R5 R9 K9 ["playbackSpeed"]
       38 SETTABLEKS                       R3 R9 K4 ["duration"]
       40 CALL                             R8 1 2
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K12 ["useCallback"]
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R12 0 2
       49 MOVE                             R13 R4
       50 GETTABLEKS                       R14 R0 K13 ["setHostIsPlaying"]
       52 SETLIST                          R12 R13 2 [1]
       54 CALL                             R10 2 1
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       58 NEWCLOSURE                       R12 P1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R9
       64 NEWTABLE                         R13 0 6
       66 MOVE                             R14 R4
       67 MOVE                             R15 R8
       68 MOVE                             R16 R3
       69 MOVE                             R17 R9
       70 GETTABLEKS                       R18 R0 K13 ["setHostIsPlaying"]
       72 GETTABLEKS                       R19 R0 K14 ["setHostCurrentTime"]
       74 SETLIST                          R13 R14 6 [1]
       76 CALL                             R11 2 1
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R14 0 2
       86 MOVE                             R15 R4
       87 GETTABLEKS                       R16 R0 K13 ["setHostIsPlaying"]
       89 SETLIST                          R14 R15 2 [1]
       91 CALL                             R12 2 1
       92 GETUPVAL                         R13 1
       93 GETTABLEKS                       R13 R13 K12 ["useCallback"]
       95 NEWCLOSURE                       R14 P3
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R0
       99 NEWTABLE                         R15 0 2
      101 MOVE                             R16 R4
      102 GETTABLEKS                       R17 R0 K13 ["setHostIsPlaying"]
      104 SETLIST                          R15 R16 2 [1]
      106 CALL                             R13 2 1
      107 GETUPVAL                         R14 1
      108 GETTABLEKS                       R14 R14 K12 ["useCallback"]
      110 NEWCLOSURE                       R15 P4
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R0
      113 NEWTABLE                         R16 0 2
      115 MOVE                             R17 R9
      116 GETTABLEKS                       R18 R0 K14 ["setHostCurrentTime"]
      118 SETLIST                          R16 R17 2 [1]
      120 CALL                             R14 2 1
      121 GETUPVAL                         R15 1
      122 GETTABLEKS                       R15 R15 K12 ["useCallback"]
      124 NEWCLOSURE                       R16 P5
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R0
      127 NEWTABLE                         R17 0 2
      129 MOVE                             R18 R6
      130 GETTABLEKS                       R19 R0 K15 ["setHostPlaybackSpeed"]
      132 SETLIST                          R17 R18 2 [1]
      134 CALL                             R15 2 1
      135 GETUPVAL                         R16 3
      136 CALL                             R16 0 1
      137 GETUPVAL                         R17 4
      138 GETUPVAL                         R18 5
      139 DUPTABLE                         R19 K18 [{"tag", "LayoutOrder"}]
      140 LOADK                            R20 K19 ["col size-full-0 auto-y padding-small gap-small"]
      141 SETTABLEKS                       R20 R19 K16 ["tag"]
      143 GETTABLEKS                       R20 R0 K17 ["LayoutOrder"]
      145 SETTABLEKS                       R20 R19 K17 ["LayoutOrder"]
      147 DUPTABLE                         R20 K23 [{"Label", "ScrubBar", "PlaybackUI"}]
      148 GETUPVAL                         R21 4
      149 GETUPVAL                         R22 6
      150 DUPTABLE                         R23 K25 [{"tag", "LayoutOrder", "Text"}]
      151 LOADK                            R24 K26 ["size-full-0 auto-y text-label-small content-default"]
      152 SETTABLEKS                       R24 R23 K16 ["tag"]
      154 MOVE                             R24 R16
      155 CALL                             R24 0 1
      156 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      158 LOADK                            R25 K27 ["Preview state: %*"]
      159 GETTABLEKS                       R27 R0 K0 ["previewState"]
      161 NAMECALL                         R25 R25 K28 ["format"]
      163 CALL                             R25 2 1
      164 MOVE                             R24 R25
      165 SETTABLEKS                       R24 R23 K24 ["Text"]
      167 DUPTABLE                         R24 K30 [{"Shimmer"}]
      168 MOVE                             R25 R1
      169 JUMPIFNOT                        R25 ; [+3]
      170 GETUPVAL                         R25 4
      171 GETUPVAL                         R26 7
      172 CALL                             R25 1 1
      173 SETTABLEKS                       R25 R24 K29 ["Shimmer"]
      175 CALL                             R21 3 1
      176 SETTABLEKS                       R21 R20 K20 ["Label"]
      178 MOVE                             R21 R2
      179 JUMPIFNOT                        R21 ; [+23]
      180 GETUPVAL                         R21 4
      181 GETUPVAL                         R22 8
      182 DUPTABLE                         R23 K36 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded"}]
      183 MOVE                             R24 R16
      184 CALL                             R24 0 1
      185 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      187 SETTABLEKS                       R8 R23 K31 ["value"]
      189 GETIMPORT                        R24 K39 [NumberRange.new]
      191 LOADN                            R25 0
      192 MOVE                             R26 R3
      193 CALL                             R24 2 1
      194 SETTABLEKS                       R24 R23 K32 ["range"]
      196 SETTABLEKS                       R14 R23 K33 ["onValueChanged"]
      198 SETTABLEKS                       R12 R23 K34 ["onDragStarted"]
      200 SETTABLEKS                       R13 R23 K35 ["onDragEnded"]
      202 CALL                             R21 2 1
      203 SETTABLEKS                       R21 R20 K21 ["ScrubBar"]
      205 MOVE                             R21 R2
      206 JUMPIFNOT                        R21 ; [+204]
      207 GETUPVAL                         R21 4
      208 GETUPVAL                         R22 5
      209 DUPTABLE                         R23 K18 [{"tag", "LayoutOrder"}]
      210 LOADK                            R24 K40 ["auto-xy row align-y-center gap-small"]
      211 SETTABLEKS                       R24 R23 K16 ["tag"]
      213 MOVE                             R24 R16
      214 CALL                             R24 0 1
      215 SETTABLEKS                       R24 R23 K17 ["LayoutOrder"]
      217 DUPTABLE                         R24 K46 [{"PlayPauseButton", "BackButton", "ForwardButton", "SpeedDropdown", "Timestamp"}]
      218 GETUPVAL                         R25 4
      219 GETUPVAL                         R26 9
      220 DUPTABLE                         R27 K52 [{"LayoutOrder", "text", "size", "variant", "width", "onActivated"}]
      221 MOVE                             R28 R16
      222 CALL                             R28 0 1
      223 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      225 GETTABLEKS                       R29 R4 K11 ["enabled"]
      227 JUMPIFNOT                        R29 ; [+2]
      228 LOADK                            R28 K53 ["Pause"]
      229 JUMP                             ; [+1]
      230 LOADK                            R28 K54 ["Play"]
      231 SETTABLEKS                       R28 R27 K47 ["text"]
      233 GETUPVAL                         R28 10
      234 GETTABLEKS                       R28 R28 K55 ["Enums"]
      236 GETTABLEKS                       R28 R28 K56 ["InputSize"]
      238 GETTABLEKS                       R28 R28 K57 ["Small"]
      240 SETTABLEKS                       R28 R27 K48 ["size"]
      242 GETUPVAL                         R28 10
      243 GETTABLEKS                       R28 R28 K55 ["Enums"]
      245 GETTABLEKS                       R28 R28 K58 ["ButtonVariant"]
      247 GETTABLEKS                       R28 R28 K24 ["Text"]
      249 SETTABLEKS                       R28 R27 K49 ["variant"]
      251 GETIMPORT                        R28 K60 [UDim.new]
      253 LOADN                            R29 0
      254 LOADN                            R30 67
      255 CALL                             R28 2 1
      256 SETTABLEKS                       R28 R27 K50 ["width"]
      258 SETTABLEKS                       R10 R27 K51 ["onActivated"]
      260 CALL                             R25 2 1
      261 SETTABLEKS                       R25 R24 K41 ["PlayPauseButton"]
      263 GETUPVAL                         R25 4
      264 GETUPVAL                         R26 9
      265 DUPTABLE                         R27 K62 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      266 MOVE                             R28 R16
      267 CALL                             R28 0 1
      268 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      270 LOADK                            R28 K63 ["<"]
      271 SETTABLEKS                       R28 R27 K47 ["text"]
      273 GETUPVAL                         R28 10
      274 GETTABLEKS                       R28 R28 K55 ["Enums"]
      276 GETTABLEKS                       R28 R28 K56 ["InputSize"]
      278 GETTABLEKS                       R28 R28 K57 ["Small"]
      280 SETTABLEKS                       R28 R27 K48 ["size"]
      282 GETUPVAL                         R28 10
      283 GETTABLEKS                       R28 R28 K55 ["Enums"]
      285 GETTABLEKS                       R28 R28 K58 ["ButtonVariant"]
      287 GETTABLEKS                       R28 R28 K24 ["Text"]
      289 SETTABLEKS                       R28 R27 K49 ["variant"]
      291 GETUPVAL                         R28 10
      292 GETTABLEKS                       R28 R28 K55 ["Enums"]
      294 GETTABLEKS                       R28 R28 K64 ["FillBehavior"]
      296 GETTABLEKS                       R28 R28 K65 ["Fill"]
      298 SETTABLEKS                       R28 R27 K61 ["fillBehavior"]
      300 NEWCLOSURE                       R28 P6
      301 CAPTURE                          VAL R11
      302 SETTABLEKS                       R28 R27 K51 ["onActivated"]
      304 CALL                             R25 2 1
      305 SETTABLEKS                       R25 R24 K42 ["BackButton"]
      307 GETUPVAL                         R25 4
      308 GETUPVAL                         R26 9
      309 DUPTABLE                         R27 K62 [{"LayoutOrder", "text", "size", "variant", "fillBehavior", "onActivated"}]
      310 MOVE                             R28 R16
      311 CALL                             R28 0 1
      312 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      314 LOADK                            R28 K66 [">"]
      315 SETTABLEKS                       R28 R27 K47 ["text"]
      317 GETUPVAL                         R28 10
      318 GETTABLEKS                       R28 R28 K55 ["Enums"]
      320 GETTABLEKS                       R28 R28 K56 ["InputSize"]
      322 GETTABLEKS                       R28 R28 K57 ["Small"]
      324 SETTABLEKS                       R28 R27 K48 ["size"]
      326 GETUPVAL                         R28 10
      327 GETTABLEKS                       R28 R28 K55 ["Enums"]
      329 GETTABLEKS                       R28 R28 K58 ["ButtonVariant"]
      331 GETTABLEKS                       R28 R28 K24 ["Text"]
      333 SETTABLEKS                       R28 R27 K49 ["variant"]
      335 GETUPVAL                         R28 10
      336 GETTABLEKS                       R28 R28 K55 ["Enums"]
      338 GETTABLEKS                       R28 R28 K64 ["FillBehavior"]
      340 GETTABLEKS                       R28 R28 K65 ["Fill"]
      342 SETTABLEKS                       R28 R27 K61 ["fillBehavior"]
      344 NEWCLOSURE                       R28 P7
      345 CAPTURE                          VAL R11
      346 SETTABLEKS                       R28 R27 K51 ["onActivated"]
      348 CALL                             R25 2 1
      349 SETTABLEKS                       R25 R24 K43 ["ForwardButton"]
      351 GETUPVAL                         R25 4
      352 GETUPVAL                         R26 11
      353 GETTABLEKS                       R26 R26 K67 ["Root"]
      355 DUPTABLE                         R27 K71 [{"LayoutOrder", "label", "value", "size", "width", "items", "onItemChanged"}]
      356 MOVE                             R28 R16
      357 CALL                             R28 0 1
      358 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      360 LOADK                            R28 K72 [""]
      361 SETTABLEKS                       R28 R27 K68 ["label"]
      363 SETTABLEKS                       R5 R27 K31 ["value"]
      365 GETUPVAL                         R28 10
      366 GETTABLEKS                       R28 R28 K55 ["Enums"]
      368 GETTABLEKS                       R28 R28 K56 ["InputSize"]
      370 GETTABLEKS                       R28 R28 K57 ["Small"]
      372 SETTABLEKS                       R28 R27 K48 ["size"]
      374 GETIMPORT                        R28 K60 [UDim.new]
      376 LOADN                            R29 0
      377 LOADN                            R30 76
      378 CALL                             R28 2 1
      379 SETTABLEKS                       R28 R27 K50 ["width"]
      381 GETUPVAL                         R28 12
      382 SETTABLEKS                       R28 R27 K69 ["items"]
      384 SETTABLEKS                       R15 R27 K70 ["onItemChanged"]
      386 CALL                             R25 2 1
      387 SETTABLEKS                       R25 R24 K44 ["SpeedDropdown"]
      389 GETUPVAL                         R25 4
      390 GETUPVAL                         R26 6
      391 DUPTABLE                         R27 K73 [{"LayoutOrder", "tag", "Text"}]
      392 MOVE                             R28 R16
      393 CALL                             R28 0 1
      394 SETTABLEKS                       R28 R27 K17 ["LayoutOrder"]
      396 LOADK                            R28 K74 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
      397 SETTABLEKS                       R28 R27 K16 ["tag"]
      399 GETIMPORT                        R28 K76 [string.format]
      401 LOADK                            R29 K77 ["%.2f / %.2f"]
      402 MOVE                             R30 R8
      403 MOVE                             R31 R3
      404 CALL                             R28 3 1
      405 SETTABLEKS                       R28 R27 K24 ["Text"]
      407 CALL                             R25 2 1
      408 SETTABLEKS                       R25 R24 K45 ["Timestamp"]
      410 CALL                             R21 3 1
      411 SETTABLEKS                       R21 R20 K22 ["PlaybackUI"]
      413 CALL                             R17 3 -1
      414 RETURN                           R17 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"previewState", "prompt", "duration"}]
        9 GETTABLEKS                       R2 R0 K3 ["previewState"]
       11 SETTABLEKS                       R2 R1 K3 ["previewState"]
       13 GETTABLEKS                       R2 R0 K4 ["prompt"]
       15 SETTABLEKS                       R2 R1 K4 ["prompt"]
       17 GETTABLEKS                       R2 R0 K5 ["duration"]
       19 SETTABLEKS                       R2 R1 K5 ["duration"]
       21 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K7 [{"type", "previewState", "prompt", "duration"}]
        9 LOADK                            R3 K8 ["AnimationGen"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 GETTABLEKS                       R3 R0 K4 ["previewState"]
       14 SETTABLEKS                       R3 R2 K4 ["previewState"]
       16 GETTABLEKS                       R3 R0 K5 ["prompt"]
       18 SETTABLEKS                       R3 R2 K5 ["prompt"]
       20 GETTABLEKS                       R3 R0 K6 ["duration"]
       22 SETTABLEKS                       R3 R2 K6 ["duration"]
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AnimationGen"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["AnimationGenTypes"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["Foundation"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R2 K10 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R2 K11 ["ReactUtils"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Util"]
       39 GETTABLEKS                       R8 R8 K13 ["Serializer"]
       41 GETTABLEKS                       R8 R8 K14 ["SerializerTypes"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K7 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Components"]
       48 GETTABLEKS                       R9 R9 K16 ["ShimmerGradient"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K7 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Types"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K7 [require]
       58 GETTABLEKS                       R11 R1 K18 ["AnimationGenTool"]
       60 GETTABLEKS                       R11 R11 K19 ["usePlayedCurrentTime"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K7 [require]
       65 GETTABLEKS                       R12 R0 K20 ["Flags"]
       67 GETTABLEKS                       R12 R12 K21 ["FFlagAssistantMultipleChatPersistence"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R12 R4 K22 ["Button"]
       72 GETTABLEKS                       R13 R4 K23 ["Dropdown"]
       74 GETTABLEKS                       R14 R4 K24 ["Slider"]
       76 GETTABLEKS                       R15 R4 K25 ["Text"]
       78 GETTABLEKS                       R16 R4 K26 ["View"]
       80 GETTABLEKS                       R17 R6 K27 ["createNextOrder"]
       82 GETTABLEKS                       R18 R5 K28 ["createElement"]
       84 NEWTABLE                         R19 0 5
       86 DUPTABLE                         R20 K31 [{"id", "text"}]
       87 LOADK                            R21 K32 [0.25]
       88 SETTABLEKS                       R21 R20 K29 ["id"]
       90 LOADK                            R21 K33 ["0.25x"]
       91 SETTABLEKS                       R21 R20 K30 ["text"]
       93 DUPTABLE                         R21 K31 [{"id", "text"}]
       94 LOADK                            R22 K34 [0.5]
       95 SETTABLEKS                       R22 R21 K29 ["id"]
       97 LOADK                            R22 K35 ["0.5x"]
       98 SETTABLEKS                       R22 R21 K30 ["text"]
      100 DUPTABLE                         R22 K31 [{"id", "text"}]
      101 LOADN                            R23 1
      102 SETTABLEKS                       R23 R22 K29 ["id"]
      104 LOADK                            R23 K36 ["1x"]
      105 SETTABLEKS                       R23 R22 K30 ["text"]
      107 DUPTABLE                         R23 K31 [{"id", "text"}]
      108 LOADN                            R24 2
      109 SETTABLEKS                       R24 R23 K29 ["id"]
      111 LOADK                            R24 K37 ["2x"]
      112 SETTABLEKS                       R24 R23 K30 ["text"]
      114 DUPTABLE                         R24 K31 [{"id", "text"}]
      115 LOADN                            R25 4
      116 SETTABLEKS                       R25 R24 K29 ["id"]
      118 LOADK                            R25 K38 ["4x"]
      119 SETTABLEKS                       R25 R24 K30 ["text"]
      121 SETLIST                          R19 R20 5 [1]
      123 DUPCLOSURE                       R20 K39 [PROTO_8]
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R19
      137 DUPTABLE                         R21 K42 [{"toMeta", "fromMeta"}]
      138 DUPCLOSURE                       R22 K43 [PROTO_9]
      139 CAPTURE                          VAL R11
      140 SETTABLEKS                       R22 R21 K40 ["toMeta"]
      142 DUPCLOSURE                       R22 K44 [PROTO_10]
      143 CAPTURE                          VAL R11
      144 SETTABLEKS                       R22 R21 K41 ["fromMeta"]
      146 DUPTABLE                         R22 K48 [{"Type", "ContentWidget", "Serialization"}]
      147 LOADK                            R23 K4 ["AnimationGen"]
      148 SETTABLEKS                       R23 R22 K45 ["Type"]
      150 GETTABLEKS                       R23 R5 K49 ["memo"]
      152 MOVE                             R24 R20
      153 CALL                             R23 1 1
      154 SETTABLEKS                       R23 R22 K46 ["ContentWidget"]
      156 SETTABLEKS                       R21 R22 K47 ["Serialization"]
      158 RETURN                           R22 1
