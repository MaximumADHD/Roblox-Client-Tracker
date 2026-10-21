PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["setIsPlaying"]
        7 DUPTABLE                         R2 K3 [{"toolUseId", "isPlaying"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       11 SETTABLEKS                       R0 R2 K2 ["isPlaying"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["setCurrentTime"]
        7 DUPTABLE                         R2 K3 [{"toolUseId", "currentTime"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       11 SETTABLEKS                       R0 R2 K2 ["currentTime"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["set"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["disable"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R3 2
       12 ADD                              R2 R3 R0
       13 LOADN                            R3 0
       14 GETUPVAL                         R4 3
       15 FASTCALL                         MATH_CLAMP ; [+2]
       16 GETIMPORT                        R1 K4 [math.clamp]
       18 CALL                             R1 3 1
       19 GETUPVAL                         R2 4
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R2 5
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["current"]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["disable"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+11]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["enable"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 LOADB                            R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["toolUseId"]
        9 GETTABLEKS                       R4 R0 K4 ["duration"]
       11 ORK                              R3 R4 K3 [10]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K5 ["useToggleState"]
       15 LOADB                            R5 0
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K6 ["useRef"]
       20 LOADB                            R6 0
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 3
       23 DUPTABLE                         R7 K8 [{"isPlaying", "duration"}]
       24 GETTABLEKS                       R9 R4 K9 ["enabled"]
       26 SETTABLEKS                       R9 R7 K7 ["isPlaying"]
       28 SETTABLEKS                       R3 R7 K4 ["duration"]
       30 CALL                             R6 1 3
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       34 NEWCLOSURE                       R10 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R11 0 2
       39 MOVE                             R12 R1
       40 MOVE                             R13 R2
       41 SETLIST                          R11 R12 2 [1]
       43 CALL                             R9 2 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K10 ["useCallback"]
       47 NEWCLOSURE                       R11 P1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R12 0 2
       52 MOVE                             R13 R1
       53 MOVE                             R14 R2
       54 SETLIST                          R12 R13 2 [1]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       60 NEWCLOSURE                       R12 P2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R9
       63 NEWTABLE                         R13 0 2
       65 MOVE                             R14 R4
       66 MOVE                             R15 R9
       67 SETLIST                          R13 R14 2 [1]
       69 CALL                             R11 2 1
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       73 NEWCLOSURE                       R13 P3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R10
       80 NEWTABLE                         R14 0 6
       82 MOVE                             R15 R4
       83 MOVE                             R16 R6
       84 MOVE                             R17 R3
       85 MOVE                             R18 R7
       86 MOVE                             R19 R9
       87 MOVE                             R20 R10
       88 SETLIST                          R14 R15 6 [1]
       90 CALL                             R12 2 1
       91 GETUPVAL                         R13 0
       92 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       94 NEWCLOSURE                       R14 P4
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R9
       98 NEWTABLE                         R15 0 2
      100 MOVE                             R16 R4
      101 MOVE                             R17 R9
      102 SETLIST                          R15 R16 2 [1]
      104 CALL                             R13 2 1
      105 GETUPVAL                         R14 0
      106 GETTABLEKS                       R14 R14 K10 ["useCallback"]
      108 NEWCLOSURE                       R15 P5
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R9
      112 NEWTABLE                         R16 0 2
      114 MOVE                             R17 R4
      115 MOVE                             R18 R9
      116 SETLIST                          R16 R17 2 [1]
      118 CALL                             R14 2 1
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R15 R15 K10 ["useCallback"]
      122 NEWCLOSURE                       R16 P6
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R10
      125 NEWTABLE                         R17 0 2
      127 MOVE                             R18 R7
      128 MOVE                             R19 R10
      129 SETLIST                          R17 R18 2 [1]
      131 CALL                             R15 2 1
      132 GETUPVAL                         R16 0
      133 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      135 NEWCLOSURE                       R17 P7
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R9
      138 NEWTABLE                         R18 0 2
      140 MOVE                             R19 R4
      141 MOVE                             R20 R9
      142 SETLIST                          R18 R19 2 [1]
      144 CALL                             R16 2 1
      145 GETUPVAL                         R17 0
      146 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      148 NEWCLOSURE                       R18 P8
      149 CAPTURE                          VAL R8
      150 NEWTABLE                         R19 0 1
      152 MOVE                             R20 R8
      153 SETLIST                          R19 R20 1 [1]
      155 CALL                             R17 2 1
      156 GETUPVAL                         R18 1
      157 GETTABLEKS                       R18 R18 K11 ["useAnimatorRemoved"]
      159 MOVE                             R19 R2
      160 MOVE                             R20 R16
      161 CALL                             R18 2 0
      162 GETUPVAL                         R18 1
      163 GETTABLEKS                       R18 R18 K12 ["usePlaybackRestarted"]
      165 MOVE                             R19 R2
      166 MOVE                             R20 R17
      167 CALL                             R18 2 0
      168 GETUPVAL                         R18 4
      169 CALL                             R18 0 1
      170 GETUPVAL                         R19 5
      171 GETUPVAL                         R20 6
      172 DUPTABLE                         R21 K16 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      173 GETTABLEKS                       R22 R0 K17 ["layoutOrder"]
      175 SETTABLEKS                       R22 R21 K15 ["LayoutOrder"]
      177 DUPTABLE                         R22 K20 [{"ScrubBar", "PlaybackUI"}]
      178 GETUPVAL                         R23 5
      179 GETUPVAL                         R24 7
      180 DUPTABLE                         R25 K27 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded", "isDisabled"}]
      181 MOVE                             R26 R18
      182 CALL                             R26 0 1
      183 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      185 SETTABLEKS                       R6 R25 K21 ["value"]
      187 GETIMPORT                        R26 K30 [NumberRange.new]
      189 LOADN                            R27 0
      190 MOVE                             R28 R3
      191 CALL                             R26 2 1
      192 SETTABLEKS                       R26 R25 K22 ["range"]
      194 SETTABLEKS                       R15 R25 K23 ["onValueChanged"]
      196 SETTABLEKS                       R13 R25 K24 ["onDragStarted"]
      198 SETTABLEKS                       R14 R25 K25 ["onDragEnded"]
      200 GETTABLEKS                       R26 R0 K31 ["disabled"]
      202 SETTABLEKS                       R26 R25 K26 ["isDisabled"]
      204 CALL                             R23 2 1
      205 SETTABLEKS                       R23 R22 K18 ["ScrubBar"]
      207 GETUPVAL                         R23 5
      208 GETUPVAL                         R24 6
      209 DUPTABLE                         R25 K33 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      210 MOVE                             R26 R18
      211 CALL                             R26 0 1
      212 SETTABLEKS                       R26 R25 K15 ["LayoutOrder"]
      214 DUPTABLE                         R26 K38 [{"PlayPauseButton", "BackButton", "ForwardButton", "Timestamp"}]
      215 GETUPVAL                         R27 5
      216 GETUPVAL                         R28 8
      217 DUPTABLE                         R29 K42 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      218 MOVE                             R30 R18
      219 CALL                             R30 0 1
      220 SETTABLEKS                       R30 R29 K15 ["LayoutOrder"]
      222 GETTABLEKS                       R31 R4 K9 ["enabled"]
      224 JUMPIFNOT                        R31 ; [+8]
      225 GETUPVAL                         R30 9
      226 GETTABLEKS                       R30 R30 K43 ["Enums"]
      228 GETTABLEKS                       R30 R30 K44 ["IconName"]
      230 GETTABLEKS                       R30 R30 K45 ["PauseLarge"]
      232 JUMP                             ; [+7]
      233 GETUPVAL                         R30 9
      234 GETTABLEKS                       R30 R30 K43 ["Enums"]
      236 GETTABLEKS                       R30 R30 K44 ["IconName"]
      238 GETTABLEKS                       R30 R30 K46 ["PlayLarge"]
      240 SETTABLEKS                       R30 R29 K39 ["icon"]
      242 GETUPVAL                         R30 9
      243 GETTABLEKS                       R30 R30 K43 ["Enums"]
      245 GETTABLEKS                       R30 R30 K47 ["IconSize"]
      247 GETTABLEKS                       R30 R30 K48 ["XSmall"]
      249 SETTABLEKS                       R30 R29 K40 ["size"]
      251 GETTABLEKS                       R30 R0 K31 ["disabled"]
      253 SETTABLEKS                       R30 R29 K26 ["isDisabled"]
      255 SETTABLEKS                       R11 R29 K41 ["onActivated"]
      257 CALL                             R27 2 1
      258 SETTABLEKS                       R27 R26 K34 ["PlayPauseButton"]
      260 GETUPVAL                         R27 5
      261 GETUPVAL                         R28 8
      262 DUPTABLE                         R29 K42 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      263 MOVE                             R30 R18
      264 CALL                             R30 0 1
      265 SETTABLEKS                       R30 R29 K15 ["LayoutOrder"]
      267 GETUPVAL                         R30 9
      268 GETTABLEKS                       R30 R30 K43 ["Enums"]
      270 GETTABLEKS                       R30 R30 K44 ["IconName"]
      272 GETTABLEKS                       R30 R30 K49 ["SkipStartSmall"]
      274 SETTABLEKS                       R30 R29 K39 ["icon"]
      276 GETUPVAL                         R30 9
      277 GETTABLEKS                       R30 R30 K43 ["Enums"]
      279 GETTABLEKS                       R30 R30 K47 ["IconSize"]
      281 GETTABLEKS                       R30 R30 K48 ["XSmall"]
      283 SETTABLEKS                       R30 R29 K40 ["size"]
      285 GETTABLEKS                       R30 R0 K31 ["disabled"]
      287 SETTABLEKS                       R30 R29 K26 ["isDisabled"]
      289 NEWCLOSURE                       R30 P9
      290 CAPTURE                          VAL R12
      291 CAPTURE                          UPVAL U10
      292 SETTABLEKS                       R30 R29 K41 ["onActivated"]
      294 CALL                             R27 2 1
      295 SETTABLEKS                       R27 R26 K35 ["BackButton"]
      297 GETUPVAL                         R27 5
      298 GETUPVAL                         R28 8
      299 DUPTABLE                         R29 K42 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      300 MOVE                             R30 R18
      301 CALL                             R30 0 1
      302 SETTABLEKS                       R30 R29 K15 ["LayoutOrder"]
      304 GETUPVAL                         R30 9
      305 GETTABLEKS                       R30 R30 K43 ["Enums"]
      307 GETTABLEKS                       R30 R30 K44 ["IconName"]
      309 GETTABLEKS                       R30 R30 K50 ["SkipEndSmall"]
      311 SETTABLEKS                       R30 R29 K39 ["icon"]
      313 GETUPVAL                         R30 9
      314 GETTABLEKS                       R30 R30 K43 ["Enums"]
      316 GETTABLEKS                       R30 R30 K47 ["IconSize"]
      318 GETTABLEKS                       R30 R30 K48 ["XSmall"]
      320 SETTABLEKS                       R30 R29 K40 ["size"]
      322 GETTABLEKS                       R30 R0 K31 ["disabled"]
      324 SETTABLEKS                       R30 R29 K26 ["isDisabled"]
      326 NEWCLOSURE                       R30 P10
      327 CAPTURE                          VAL R12
      328 CAPTURE                          UPVAL U10
      329 SETTABLEKS                       R30 R29 K41 ["onActivated"]
      331 CALL                             R27 2 1
      332 SETTABLEKS                       R27 R26 K36 ["ForwardButton"]
      334 GETUPVAL                         R27 5
      335 GETUPVAL                         R28 11
      336 DUPTABLE                         R29 K53 [{["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
      337 MOVE                             R30 R18
      338 CALL                             R30 0 1
      339 SETTABLEKS                       R30 R29 K15 ["LayoutOrder"]
      341 GETIMPORT                        R30 K56 [string.format]
      343 LOADK                            R31 K57 ["%.2f / %.2f"]
      344 MOVE                             R32 R6
      345 MOVE                             R33 R3
      346 CALL                             R30 3 1
      347 SETTABLEKS                       R30 R29 K52 ["Text"]
      349 CALL                             R27 2 1
      350 SETTABLEKS                       R27 R26 K37 ["Timestamp"]
      352 CALL                             R23 3 1
      353 SETTABLEKS                       R23 R22 K19 ["PlaybackUI"]
      355 CALL                             R19 3 -1
      356 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       15 GETTABLEKS                       R3 R3 K9 ["Actions"]
       17 GETTABLEKS                       R3 R3 K10 ["AnimationGenActionsContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Util"]
       24 GETTABLEKS                       R4 R4 K12 ["AnimationGen"]
       26 GETTABLEKS                       R4 R4 K13 ["AnimationGenConstants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K15 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K16 ["ReactUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Util"]
       48 GETTABLEKS                       R8 R8 K12 ["AnimationGen"]
       50 GETTABLEKS                       R8 R8 K17 ["usePlayedCurrentTime"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R4 K18 ["IconButton"]
       55 GETTABLEKS                       R9 R4 K19 ["Slider"]
       57 GETTABLEKS                       R10 R4 K20 ["Text"]
       59 GETTABLEKS                       R11 R4 K21 ["View"]
       61 GETTABLEKS                       R12 R6 K22 ["createNextOrder"]
       63 GETTABLEKS                       R13 R5 K23 ["createElement"]
       65 GETTABLEKS                       R14 R3 K24 ["DEFAULT_GENERATION_FPS"]
       67 DUPCLOSURE                       R15 K25 [PROTO_11]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R14
       79 CAPTURE                          VAL R10
       80 RETURN                           R15 1
