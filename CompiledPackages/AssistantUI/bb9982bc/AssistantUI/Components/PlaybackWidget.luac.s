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
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

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
       29 GETTABLEKS                       R11 R4 K11 ["enabled"]
       31 SETTABLEKS                       R11 R9 K8 ["isPlaying"]
       33 SETTABLEKS                       R5 R9 K9 ["playbackSpeed"]
       35 SETTABLEKS                       R3 R9 K4 ["duration"]
       37 CALL                             R8 1 3
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R11 R11 K12 ["useCallback"]
       41 NEWCLOSURE                       R12 P0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R13 0 2
       46 MOVE                             R14 R1
       47 MOVE                             R15 R2
       48 SETLIST                          R13 R14 2 [1]
       50 CALL                             R11 2 1
       51 GETUPVAL                         R12 0
       52 GETTABLEKS                       R12 R12 K12 ["useCallback"]
       54 NEWCLOSURE                       R13 P1
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R14 0 2
       59 MOVE                             R15 R1
       60 MOVE                             R16 R2
       61 SETLIST                          R14 R15 2 [1]
       63 CALL                             R12 2 1
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R13 R13 K12 ["useCallback"]
       67 NEWCLOSURE                       R14 P2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 NEWTABLE                         R15 0 2
       72 MOVE                             R16 R1
       73 MOVE                             R17 R2
       74 SETLIST                          R15 R16 2 [1]
       76 CALL                             R13 2 1
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K12 ["useCallback"]
       80 NEWCLOSURE                       R15 P3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R11
       83 NEWTABLE                         R16 0 2
       85 MOVE                             R17 R4
       86 MOVE                             R18 R11
       87 SETLIST                          R16 R17 2 [1]
       89 CALL                             R14 2 1
       90 GETUPVAL                         R15 0
       91 GETTABLEKS                       R15 R15 K12 ["useCallback"]
       93 NEWCLOSURE                       R16 P4
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R12
      100 NEWTABLE                         R17 0 6
      102 MOVE                             R18 R4
      103 MOVE                             R19 R8
      104 MOVE                             R20 R3
      105 MOVE                             R21 R9
      106 MOVE                             R22 R11
      107 MOVE                             R23 R12
      108 SETLIST                          R17 R18 6 [1]
      110 CALL                             R15 2 1
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R16 R16 K12 ["useCallback"]
      114 NEWCLOSURE                       R17 P5
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R11
      118 NEWTABLE                         R18 0 2
      120 MOVE                             R19 R4
      121 MOVE                             R20 R11
      122 SETLIST                          R18 R19 2 [1]
      124 CALL                             R16 2 1
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R17 R17 K12 ["useCallback"]
      128 NEWCLOSURE                       R18 P6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R11
      132 NEWTABLE                         R19 0 2
      134 MOVE                             R20 R4
      135 MOVE                             R21 R11
      136 SETLIST                          R19 R20 2 [1]
      138 CALL                             R17 2 1
      139 GETUPVAL                         R18 0
      140 GETTABLEKS                       R18 R18 K12 ["useCallback"]
      142 NEWCLOSURE                       R19 P7
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R12
      145 NEWTABLE                         R20 0 2
      147 MOVE                             R21 R9
      148 MOVE                             R22 R12
      149 SETLIST                          R20 R21 2 [1]
      151 CALL                             R18 2 1
      152 GETUPVAL                         R19 0
      153 GETTABLEKS                       R19 R19 K12 ["useCallback"]
      155 NEWCLOSURE                       R20 P8
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R13
      158 NEWTABLE                         R21 0 2
      160 MOVE                             R22 R6
      161 MOVE                             R23 R13
      162 SETLIST                          R21 R22 2 [1]
      164 CALL                             R19 2 1
      165 GETUPVAL                         R20 0
      166 GETTABLEKS                       R20 R20 K12 ["useCallback"]
      168 NEWCLOSURE                       R21 P9
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R11
      171 NEWTABLE                         R22 0 2
      173 MOVE                             R23 R4
      174 MOVE                             R24 R11
      175 SETLIST                          R22 R23 2 [1]
      177 CALL                             R20 2 1
      178 GETUPVAL                         R21 0
      179 GETTABLEKS                       R21 R21 K12 ["useCallback"]
      181 NEWCLOSURE                       R22 P10
      182 CAPTURE                          VAL R10
      183 NEWTABLE                         R23 0 1
      185 MOVE                             R24 R10
      186 SETLIST                          R23 R24 1 [1]
      188 CALL                             R21 2 1
      189 GETUPVAL                         R22 1
      190 GETTABLEKS                       R22 R22 K13 ["useAnimatorRemoved"]
      192 MOVE                             R23 R2
      193 MOVE                             R24 R20
      194 CALL                             R22 2 0
      195 GETUPVAL                         R22 1
      196 GETTABLEKS                       R22 R22 K14 ["usePlaybackRestarted"]
      198 MOVE                             R23 R2
      199 MOVE                             R24 R21
      200 CALL                             R22 2 0
      201 GETUPVAL                         R22 4
      202 CALL                             R22 0 1
      203 GETUPVAL                         R23 5
      204 GETUPVAL                         R24 6
      205 DUPTABLE                         R25 K18 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      206 GETTABLEKS                       R26 R0 K19 ["layoutOrder"]
      208 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      210 DUPTABLE                         R26 K22 [{"ScrubBar", "PlaybackUI"}]
      211 GETUPVAL                         R27 5
      212 GETUPVAL                         R28 7
      213 DUPTABLE                         R29 K28 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded"}]
      214 MOVE                             R30 R22
      215 CALL                             R30 0 1
      216 SETTABLEKS                       R30 R29 K17 ["LayoutOrder"]
      218 SETTABLEKS                       R8 R29 K23 ["value"]
      220 GETIMPORT                        R30 K31 [NumberRange.new]
      222 LOADN                            R31 0
      223 MOVE                             R32 R3
      224 CALL                             R30 2 1
      225 SETTABLEKS                       R30 R29 K24 ["range"]
      227 SETTABLEKS                       R18 R29 K25 ["onValueChanged"]
      229 SETTABLEKS                       R16 R29 K26 ["onDragStarted"]
      231 SETTABLEKS                       R17 R29 K27 ["onDragEnded"]
      233 CALL                             R27 2 1
      234 SETTABLEKS                       R27 R26 K20 ["ScrubBar"]
      236 GETUPVAL                         R27 5
      237 GETUPVAL                         R28 6
      238 DUPTABLE                         R29 K33 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      239 MOVE                             R30 R22
      240 CALL                             R30 0 1
      241 SETTABLEKS                       R30 R29 K17 ["LayoutOrder"]
      243 DUPTABLE                         R30 K39 [{"PlayPauseButton", "BackButton", "ForwardButton", "SpeedDropdown", "Timestamp"}]
      244 GETUPVAL                         R31 5
      245 GETUPVAL                         R32 8
      246 DUPTABLE                         R33 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      247 MOVE                             R34 R22
      248 CALL                             R34 0 1
      249 SETTABLEKS                       R34 R33 K17 ["LayoutOrder"]
      251 GETTABLEKS                       R35 R4 K11 ["enabled"]
      253 JUMPIFNOT                        R35 ; [+8]
      254 GETUPVAL                         R34 9
      255 GETTABLEKS                       R34 R34 K44 ["Enums"]
      257 GETTABLEKS                       R34 R34 K45 ["IconName"]
      259 GETTABLEKS                       R34 R34 K46 ["PauseLarge"]
      261 JUMP                             ; [+7]
      262 GETUPVAL                         R34 9
      263 GETTABLEKS                       R34 R34 K44 ["Enums"]
      265 GETTABLEKS                       R34 R34 K45 ["IconName"]
      267 GETTABLEKS                       R34 R34 K47 ["PlayLarge"]
      269 SETTABLEKS                       R34 R33 K40 ["icon"]
      271 GETUPVAL                         R34 9
      272 GETTABLEKS                       R34 R34 K44 ["Enums"]
      274 GETTABLEKS                       R34 R34 K48 ["IconSize"]
      276 GETTABLEKS                       R34 R34 K49 ["XSmall"]
      278 SETTABLEKS                       R34 R33 K41 ["size"]
      280 SETTABLEKS                       R14 R33 K42 ["onActivated"]
      282 CALL                             R31 2 1
      283 SETTABLEKS                       R31 R30 K34 ["PlayPauseButton"]
      285 GETUPVAL                         R31 5
      286 GETUPVAL                         R32 8
      287 DUPTABLE                         R33 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      288 MOVE                             R34 R22
      289 CALL                             R34 0 1
      290 SETTABLEKS                       R34 R33 K17 ["LayoutOrder"]
      292 GETUPVAL                         R34 9
      293 GETTABLEKS                       R34 R34 K44 ["Enums"]
      295 GETTABLEKS                       R34 R34 K45 ["IconName"]
      297 GETTABLEKS                       R34 R34 K50 ["SkipStartSmall"]
      299 SETTABLEKS                       R34 R33 K40 ["icon"]
      301 GETUPVAL                         R34 9
      302 GETTABLEKS                       R34 R34 K44 ["Enums"]
      304 GETTABLEKS                       R34 R34 K48 ["IconSize"]
      306 GETTABLEKS                       R34 R34 K49 ["XSmall"]
      308 SETTABLEKS                       R34 R33 K41 ["size"]
      310 NEWCLOSURE                       R34 P11
      311 CAPTURE                          VAL R15
      312 CAPTURE                          UPVAL U10
      313 SETTABLEKS                       R34 R33 K42 ["onActivated"]
      315 CALL                             R31 2 1
      316 SETTABLEKS                       R31 R30 K35 ["BackButton"]
      318 GETUPVAL                         R31 5
      319 GETUPVAL                         R32 8
      320 DUPTABLE                         R33 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      321 MOVE                             R34 R22
      322 CALL                             R34 0 1
      323 SETTABLEKS                       R34 R33 K17 ["LayoutOrder"]
      325 GETUPVAL                         R34 9
      326 GETTABLEKS                       R34 R34 K44 ["Enums"]
      328 GETTABLEKS                       R34 R34 K45 ["IconName"]
      330 GETTABLEKS                       R34 R34 K51 ["SkipEndSmall"]
      332 SETTABLEKS                       R34 R33 K40 ["icon"]
      334 GETUPVAL                         R34 9
      335 GETTABLEKS                       R34 R34 K44 ["Enums"]
      337 GETTABLEKS                       R34 R34 K48 ["IconSize"]
      339 GETTABLEKS                       R34 R34 K49 ["XSmall"]
      341 SETTABLEKS                       R34 R33 K41 ["size"]
      343 NEWCLOSURE                       R34 P12
      344 CAPTURE                          VAL R15
      345 CAPTURE                          UPVAL U10
      346 SETTABLEKS                       R34 R33 K42 ["onActivated"]
      348 CALL                             R31 2 1
      349 SETTABLEKS                       R31 R30 K36 ["ForwardButton"]
      351 GETUPVAL                         R31 5
      352 GETUPVAL                         R32 11
      353 GETTABLEKS                       R32 R32 K52 ["Root"]
      355 DUPTABLE                         R33 K58 [{["LayoutOrder"], ["label"] = "", ["value"], ["size"], ["width"], ["items"], ["onItemChanged"]}]
      356 MOVE                             R34 R22
      357 CALL                             R34 0 1
      358 SETTABLEKS                       R34 R33 K17 ["LayoutOrder"]
      360 SETTABLEKS                       R5 R33 K23 ["value"]
      362 GETUPVAL                         R34 9
      363 GETTABLEKS                       R34 R34 K44 ["Enums"]
      365 GETTABLEKS                       R34 R34 K59 ["InputSize"]
      367 GETTABLEKS                       R34 R34 K60 ["Small"]
      369 SETTABLEKS                       R34 R33 K41 ["size"]
      371 GETIMPORT                        R34 K62 [UDim.new]
      373 LOADN                            R35 0
      374 LOADN                            R36 76
      375 CALL                             R34 2 1
      376 SETTABLEKS                       R34 R33 K55 ["width"]
      378 GETUPVAL                         R34 12
      379 SETTABLEKS                       R34 R33 K56 ["items"]
      381 SETTABLEKS                       R19 R33 K57 ["onItemChanged"]
      383 CALL                             R31 2 1
      384 SETTABLEKS                       R31 R30 K37 ["SpeedDropdown"]
      386 GETUPVAL                         R31 5
      387 GETUPVAL                         R32 13
      388 DUPTABLE                         R33 K65 [{["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
      389 MOVE                             R34 R22
      390 CALL                             R34 0 1
      391 SETTABLEKS                       R34 R33 K17 ["LayoutOrder"]
      393 GETIMPORT                        R34 K68 [string.format]
      395 LOADK                            R35 K69 ["%.2f / %.2f"]
      396 MOVE                             R36 R8
      397 MOVE                             R37 R3
      398 CALL                             R34 3 1
      399 SETTABLEKS                       R34 R33 K64 ["Text"]
      401 CALL                             R31 2 1
      402 SETTABLEKS                       R31 R30 K38 ["Timestamp"]
      404 CALL                             R27 3 1
      405 SETTABLEKS                       R27 R26 K21 ["PlaybackUI"]
      407 CALL                             R23 3 -1
      408 RETURN                           R23 -1

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
       53 GETTABLEKS                       R8 R4 K18 ["Dropdown"]
       55 GETTABLEKS                       R9 R4 K19 ["IconButton"]
       57 GETTABLEKS                       R10 R4 K20 ["Slider"]
       59 GETTABLEKS                       R11 R4 K21 ["Text"]
       61 GETTABLEKS                       R12 R4 K22 ["View"]
       63 GETTABLEKS                       R13 R6 K23 ["createNextOrder"]
       65 GETTABLEKS                       R14 R5 K24 ["createElement"]
       67 GETTABLEKS                       R15 R3 K25 ["DEFAULT_GENERATION_FPS"]
       69 NEWTABLE                         R16 0 5
       71 DUPTABLE                         R17 K30 [{["id"] = 0.25, ["text"] = "0.25x"}]
       72 DUPTABLE                         R18 K33 [{["id"] = 0.5, ["text"] = "0.5x"}]
       73 DUPTABLE                         R19 K36 [{["id"] = 1, ["text"] = "1x"}]
       74 DUPTABLE                         R20 K39 [{["id"] = 2, ["text"] = "2x"}]
       75 DUPTABLE                         R21 K42 [{["id"] = 4, ["text"] = "4x"}]
       76 SETLIST                          R16 R17 5 [1]
       78 DUPCLOSURE                       R17 K43 [PROTO_13]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R11
       93 RETURN                           R17 1
