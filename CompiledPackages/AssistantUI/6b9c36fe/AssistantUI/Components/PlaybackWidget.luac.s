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
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["setPlaybackSpeed"]
        7 DUPTABLE                         R2 K3 [{"toolUseId", "playbackSpeed"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K1 ["toolUseId"]
       11 SETTABLEKS                       R0 R2 K2 ["playbackSpeed"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [-0.0333333333333333]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [0.0333333333333333]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
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
       18 GETTABLEKS                       R5 R5 K6 ["useState"]
       20 LOADN                            R6 1
       21 CALL                             R5 1 2
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K7 ["useRef"]
       25 LOADB                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R8 3
       28 DUPTABLE                         R9 K10 [{"isPlaying", "playbackSpeed", "duration"}]
       29 GETTABLEKS                       R10 R4 K11 ["enabled"]
       31 SETTABLEKS                       R10 R9 K8 ["isPlaying"]
       33 SETTABLEKS                       R5 R9 K9 ["playbackSpeed"]
       35 SETTABLEKS                       R3 R9 K4 ["duration"]
       37 CALL                             R8 1 2
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R10 R10 K12 ["useCallback"]
       41 NEWCLOSURE                       R11 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R12 0 2
       46 MOVE                             R13 R1
       47 MOVE                             R14 R2
       48 SETLIST                          R12 R13 2 [1]
       50 CALL                             R10 2 1
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       54 NEWCLOSURE                       R12 P1
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R13 0 2
       59 MOVE                             R14 R1
       60 MOVE                             R15 R2
       61 SETLIST                          R13 R14 2 [1]
       63 CALL                             R11 2 1
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       67 NEWCLOSURE                       R13 P2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 NEWTABLE                         R14 0 2
       72 MOVE                             R15 R1
       73 MOVE                             R16 R2
       74 SETLIST                          R14 R15 2 [1]
       76 CALL                             R12 2 1
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R13 R13 K12 ["useCallback"]
       80 NEWCLOSURE                       R14 P3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R10
       83 NEWTABLE                         R15 0 2
       85 MOVE                             R16 R4
       86 MOVE                             R17 R10
       87 SETLIST                          R15 R16 2 [1]
       89 CALL                             R13 2 1
       90 GETUPVAL                         R14 0
       91 GETTABLEKS                       R14 R14 K12 ["useCallback"]
       93 NEWCLOSURE                       R15 P4
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R11
      100 NEWTABLE                         R16 0 6
      102 MOVE                             R17 R4
      103 MOVE                             R18 R8
      104 MOVE                             R19 R3
      105 MOVE                             R20 R9
      106 MOVE                             R21 R10
      107 MOVE                             R22 R11
      108 SETLIST                          R16 R17 6 [1]
      110 CALL                             R14 2 1
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K12 ["useCallback"]
      114 NEWCLOSURE                       R16 P5
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R10
      118 NEWTABLE                         R17 0 2
      120 MOVE                             R18 R4
      121 MOVE                             R19 R10
      122 SETLIST                          R17 R18 2 [1]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R16 0
      126 GETTABLEKS                       R16 R16 K12 ["useCallback"]
      128 NEWCLOSURE                       R17 P6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R10
      132 NEWTABLE                         R18 0 2
      134 MOVE                             R19 R4
      135 MOVE                             R20 R10
      136 SETLIST                          R18 R19 2 [1]
      138 CALL                             R16 2 1
      139 GETUPVAL                         R17 0
      140 GETTABLEKS                       R17 R17 K12 ["useCallback"]
      142 NEWCLOSURE                       R18 P7
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R11
      145 NEWTABLE                         R19 0 2
      147 MOVE                             R20 R9
      148 MOVE                             R21 R11
      149 SETLIST                          R19 R20 2 [1]
      151 CALL                             R17 2 1
      152 GETUPVAL                         R18 0
      153 GETTABLEKS                       R18 R18 K12 ["useCallback"]
      155 NEWCLOSURE                       R19 P8
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R12
      158 NEWTABLE                         R20 0 2
      160 MOVE                             R21 R6
      161 MOVE                             R22 R12
      162 SETLIST                          R20 R21 2 [1]
      164 CALL                             R18 2 1
      165 GETUPVAL                         R19 0
      166 GETTABLEKS                       R19 R19 K12 ["useCallback"]
      168 NEWCLOSURE                       R20 P9
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R10
      171 NEWTABLE                         R21 0 2
      173 MOVE                             R22 R4
      174 MOVE                             R23 R10
      175 SETLIST                          R21 R22 2 [1]
      177 CALL                             R19 2 1
      178 GETUPVAL                         R20 0
      179 GETTABLEKS                       R20 R20 K12 ["useCallback"]
      181 NEWCLOSURE                       R21 P10
      182 CAPTURE                          VAL R9
      183 NEWTABLE                         R22 0 1
      185 MOVE                             R23 R9
      186 SETLIST                          R22 R23 1 [1]
      188 CALL                             R20 2 1
      189 GETUPVAL                         R21 1
      190 GETTABLEKS                       R21 R21 K13 ["useAnimatorRemoved"]
      192 MOVE                             R22 R2
      193 MOVE                             R23 R19
      194 CALL                             R21 2 0
      195 GETUPVAL                         R21 1
      196 GETTABLEKS                       R21 R21 K14 ["usePlaybackRestarted"]
      198 MOVE                             R22 R2
      199 MOVE                             R23 R20
      200 CALL                             R21 2 0
      201 GETUPVAL                         R21 4
      202 CALL                             R21 0 1
      203 GETUPVAL                         R22 5
      204 GETUPVAL                         R23 6
      205 DUPTABLE                         R24 K18 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      206 GETTABLEKS                       R25 R0 K19 ["layoutOrder"]
      208 SETTABLEKS                       R25 R24 K17 ["LayoutOrder"]
      210 DUPTABLE                         R25 K22 [{"ScrubBar", "PlaybackUI"}]
      211 GETUPVAL                         R26 5
      212 GETUPVAL                         R27 7
      213 DUPTABLE                         R28 K28 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded"}]
      214 MOVE                             R29 R21
      215 CALL                             R29 0 1
      216 SETTABLEKS                       R29 R28 K17 ["LayoutOrder"]
      218 SETTABLEKS                       R8 R28 K23 ["value"]
      220 GETIMPORT                        R29 K31 [NumberRange.new]
      222 LOADN                            R30 0
      223 MOVE                             R31 R3
      224 CALL                             R29 2 1
      225 SETTABLEKS                       R29 R28 K24 ["range"]
      227 SETTABLEKS                       R17 R28 K25 ["onValueChanged"]
      229 SETTABLEKS                       R15 R28 K26 ["onDragStarted"]
      231 SETTABLEKS                       R16 R28 K27 ["onDragEnded"]
      233 CALL                             R26 2 1
      234 SETTABLEKS                       R26 R25 K20 ["ScrubBar"]
      236 GETUPVAL                         R26 5
      237 GETUPVAL                         R27 6
      238 DUPTABLE                         R28 K33 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      239 MOVE                             R29 R21
      240 CALL                             R29 0 1
      241 SETTABLEKS                       R29 R28 K17 ["LayoutOrder"]
      243 DUPTABLE                         R29 K39 [{"PlayPauseButton", "BackButton", "ForwardButton", "SpeedDropdown", "Timestamp"}]
      244 GETUPVAL                         R30 5
      245 GETUPVAL                         R31 8
      246 DUPTABLE                         R32 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      247 MOVE                             R33 R21
      248 CALL                             R33 0 1
      249 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      251 GETTABLEKS                       R34 R4 K11 ["enabled"]
      253 JUMPIFNOT                        R34 ; [+8]
      254 GETUPVAL                         R33 9
      255 GETTABLEKS                       R33 R33 K44 ["Enums"]
      257 GETTABLEKS                       R33 R33 K45 ["IconName"]
      259 GETTABLEKS                       R33 R33 K46 ["PauseLarge"]
      261 JUMP                             ; [+7]
      262 GETUPVAL                         R33 9
      263 GETTABLEKS                       R33 R33 K44 ["Enums"]
      265 GETTABLEKS                       R33 R33 K45 ["IconName"]
      267 GETTABLEKS                       R33 R33 K47 ["PlayLarge"]
      269 SETTABLEKS                       R33 R32 K40 ["icon"]
      271 GETUPVAL                         R33 9
      272 GETTABLEKS                       R33 R33 K44 ["Enums"]
      274 GETTABLEKS                       R33 R33 K48 ["IconSize"]
      276 GETTABLEKS                       R33 R33 K49 ["XSmall"]
      278 SETTABLEKS                       R33 R32 K41 ["size"]
      280 SETTABLEKS                       R13 R32 K42 ["onActivated"]
      282 CALL                             R30 2 1
      283 SETTABLEKS                       R30 R29 K34 ["PlayPauseButton"]
      285 GETUPVAL                         R30 5
      286 GETUPVAL                         R31 8
      287 DUPTABLE                         R32 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      288 MOVE                             R33 R21
      289 CALL                             R33 0 1
      290 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      292 GETUPVAL                         R33 9
      293 GETTABLEKS                       R33 R33 K44 ["Enums"]
      295 GETTABLEKS                       R33 R33 K45 ["IconName"]
      297 GETTABLEKS                       R33 R33 K50 ["SkipStartSmall"]
      299 SETTABLEKS                       R33 R32 K40 ["icon"]
      301 GETUPVAL                         R33 9
      302 GETTABLEKS                       R33 R33 K44 ["Enums"]
      304 GETTABLEKS                       R33 R33 K48 ["IconSize"]
      306 GETTABLEKS                       R33 R33 K49 ["XSmall"]
      308 SETTABLEKS                       R33 R32 K41 ["size"]
      310 NEWCLOSURE                       R33 P11
      311 CAPTURE                          VAL R14
      312 SETTABLEKS                       R33 R32 K42 ["onActivated"]
      314 CALL                             R30 2 1
      315 SETTABLEKS                       R30 R29 K35 ["BackButton"]
      317 GETUPVAL                         R30 5
      318 GETUPVAL                         R31 8
      319 DUPTABLE                         R32 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      320 MOVE                             R33 R21
      321 CALL                             R33 0 1
      322 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      324 GETUPVAL                         R33 9
      325 GETTABLEKS                       R33 R33 K44 ["Enums"]
      327 GETTABLEKS                       R33 R33 K45 ["IconName"]
      329 GETTABLEKS                       R33 R33 K51 ["SkipEndSmall"]
      331 SETTABLEKS                       R33 R32 K40 ["icon"]
      333 GETUPVAL                         R33 9
      334 GETTABLEKS                       R33 R33 K44 ["Enums"]
      336 GETTABLEKS                       R33 R33 K48 ["IconSize"]
      338 GETTABLEKS                       R33 R33 K49 ["XSmall"]
      340 SETTABLEKS                       R33 R32 K41 ["size"]
      342 NEWCLOSURE                       R33 P12
      343 CAPTURE                          VAL R14
      344 SETTABLEKS                       R33 R32 K42 ["onActivated"]
      346 CALL                             R30 2 1
      347 SETTABLEKS                       R30 R29 K36 ["ForwardButton"]
      349 GETUPVAL                         R30 5
      350 GETUPVAL                         R31 10
      351 GETTABLEKS                       R31 R31 K52 ["Root"]
      353 DUPTABLE                         R32 K58 [{["LayoutOrder"], ["label"] = "", ["value"], ["size"], ["width"], ["items"], ["onItemChanged"]}]
      354 MOVE                             R33 R21
      355 CALL                             R33 0 1
      356 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      358 SETTABLEKS                       R5 R32 K23 ["value"]
      360 GETUPVAL                         R33 9
      361 GETTABLEKS                       R33 R33 K44 ["Enums"]
      363 GETTABLEKS                       R33 R33 K59 ["InputSize"]
      365 GETTABLEKS                       R33 R33 K60 ["Small"]
      367 SETTABLEKS                       R33 R32 K41 ["size"]
      369 GETIMPORT                        R33 K62 [UDim.new]
      371 LOADN                            R34 0
      372 LOADN                            R35 76
      373 CALL                             R33 2 1
      374 SETTABLEKS                       R33 R32 K55 ["width"]
      376 GETUPVAL                         R33 11
      377 SETTABLEKS                       R33 R32 K56 ["items"]
      379 SETTABLEKS                       R18 R32 K57 ["onItemChanged"]
      381 CALL                             R30 2 1
      382 SETTABLEKS                       R30 R29 K37 ["SpeedDropdown"]
      384 GETUPVAL                         R30 5
      385 GETUPVAL                         R31 12
      386 DUPTABLE                         R32 K65 [{["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
      387 MOVE                             R33 R21
      388 CALL                             R33 0 1
      389 SETTABLEKS                       R33 R32 K17 ["LayoutOrder"]
      391 GETIMPORT                        R33 K68 [string.format]
      393 LOADK                            R34 K69 ["%.2f / %.2f"]
      394 MOVE                             R35 R8
      395 MOVE                             R36 R3
      396 CALL                             R33 3 1
      397 SETTABLEKS                       R33 R32 K64 ["Text"]
      399 CALL                             R30 2 1
      400 SETTABLEKS                       R30 R29 K38 ["Timestamp"]
      402 CALL                             R26 3 1
      403 SETTABLEKS                       R26 R25 K21 ["PlaybackUI"]
      405 CALL                             R22 3 -1
      406 RETURN                           R22 -1

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
       22 GETTABLEKS                       R4 R1 K11 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Util"]
       39 GETTABLEKS                       R7 R7 K15 ["AnimationGen"]
       41 GETTABLEKS                       R7 R7 K16 ["usePlayedCurrentTime"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R3 K17 ["Dropdown"]
       46 GETTABLEKS                       R8 R3 K18 ["IconButton"]
       48 GETTABLEKS                       R9 R3 K19 ["Slider"]
       50 GETTABLEKS                       R10 R3 K20 ["Text"]
       52 GETTABLEKS                       R11 R3 K21 ["View"]
       54 GETTABLEKS                       R12 R5 K22 ["createNextOrder"]
       56 GETTABLEKS                       R13 R4 K23 ["createElement"]
       58 NEWTABLE                         R14 0 5
       60 DUPTABLE                         R15 K28 [{["id"] = 0.25, ["text"] = "0.25x"}]
       61 DUPTABLE                         R16 K31 [{["id"] = 0.5, ["text"] = "0.5x"}]
       62 DUPTABLE                         R17 K34 [{["id"] = 1, ["text"] = "1x"}]
       63 DUPTABLE                         R18 K37 [{["id"] = 2, ["text"] = "2x"}]
       64 DUPTABLE                         R19 K40 [{["id"] = 4, ["text"] = "4x"}]
       65 SETLIST                          R14 R15 5 [1]
       67 DUPCLOSURE                       R15 K41 [PROTO_13]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R10
       81 RETURN                           R15 1
