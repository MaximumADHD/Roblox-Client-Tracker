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
        1 GETTABLEKS                       R0 R0 K0 ["disable"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setHostIsPlaying"]
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["setHostIsPlaying"]
       11 LOADB                            R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setHostCurrentTime"]
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["setHostCurrentTime"]
       10 LOADN                            R1 0
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K1 ["enabled"]
       15 JUMPIFNOT                        R0 ; [+9]
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K2 ["setHostIsPlaying"]
       19 JUMPIFNOT                        R0 ; [+5]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K2 ["setHostIsPlaying"]
       23 LOADB                            R1 1
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [-0.0333333333333333]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [0.0333333333333333]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K1 ["duration"]
        2 ORK                              R1 R2 K0 [10]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["useToggleState"]
        6 LOADB                            R3 0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["useState"]
       11 LOADN                            R4 1
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["useRef"]
       16 LOADB                            R6 0
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K7 [{"isPlaying", "playbackSpeed", "duration"}]
       20 GETTABLEKS                       R8 R2 K8 ["enabled"]
       22 SETTABLEKS                       R8 R7 K5 ["isPlaying"]
       24 SETTABLEKS                       R3 R7 K6 ["playbackSpeed"]
       26 SETTABLEKS                       R1 R7 K1 ["duration"]
       28 CALL                             R6 1 2
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K9 ["useCallback"]
       32 NEWCLOSURE                       R9 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R10 0 2
       37 MOVE                             R11 R2
       38 GETTABLEKS                       R12 R0 K10 ["setHostIsPlaying"]
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R11 0 6
       54 MOVE                             R12 R2
       55 MOVE                             R13 R6
       56 MOVE                             R14 R1
       57 MOVE                             R15 R7
       58 GETTABLEKS                       R16 R0 K10 ["setHostIsPlaying"]
       60 GETTABLEKS                       R17 R0 K11 ["setHostCurrentTime"]
       62 SETLIST                          R11 R12 6 [1]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       68 NEWCLOSURE                       R11 P2
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R0
       72 NEWTABLE                         R12 0 2
       74 MOVE                             R13 R2
       75 GETTABLEKS                       R14 R0 K10 ["setHostIsPlaying"]
       77 SETLIST                          R12 R13 2 [1]
       79 CALL                             R10 2 1
       80 GETUPVAL                         R11 1
       81 GETTABLEKS                       R11 R11 K9 ["useCallback"]
       83 NEWCLOSURE                       R12 P3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R13 0 2
       89 MOVE                             R14 R2
       90 GETTABLEKS                       R15 R0 K10 ["setHostIsPlaying"]
       92 SETLIST                          R13 R14 2 [1]
       94 CALL                             R11 2 1
       95 GETUPVAL                         R12 1
       96 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       98 NEWCLOSURE                       R13 P4
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R0
      101 NEWTABLE                         R14 0 2
      103 MOVE                             R15 R7
      104 GETTABLEKS                       R16 R0 K11 ["setHostCurrentTime"]
      106 SETLIST                          R14 R15 2 [1]
      108 CALL                             R12 2 1
      109 GETUPVAL                         R13 1
      110 GETTABLEKS                       R13 R13 K9 ["useCallback"]
      112 NEWCLOSURE                       R14 P5
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 NEWTABLE                         R15 0 2
      117 MOVE                             R16 R4
      118 GETTABLEKS                       R17 R0 K12 ["setHostPlaybackSpeed"]
      120 SETLIST                          R15 R16 2 [1]
      122 CALL                             R13 2 1
      123 GETUPVAL                         R14 3
      124 GETTABLEKS                       R15 R0 K13 ["animatorRemovedSignal"]
      126 NEWCLOSURE                       R16 P6
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R0
      129 NEWTABLE                         R17 0 2
      131 MOVE                             R18 R2
      132 GETTABLEKS                       R19 R0 K10 ["setHostIsPlaying"]
      134 SETLIST                          R17 R18 2 [1]
      136 CALL                             R14 3 0
      137 GETUPVAL                         R14 3
      138 GETTABLEKS                       R15 R0 K14 ["rigSelectedSignal"]
      140 NEWCLOSURE                       R16 P7
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R2
      144 NEWTABLE                         R17 0 4
      146 MOVE                             R18 R7
      147 GETTABLEKS                       R19 R0 K11 ["setHostCurrentTime"]
      149 MOVE                             R20 R2
      150 GETTABLEKS                       R21 R0 K10 ["setHostIsPlaying"]
      152 SETLIST                          R17 R18 4 [1]
      154 CALL                             R14 3 0
      155 GETUPVAL                         R14 4
      156 CALL                             R14 0 1
      157 GETUPVAL                         R15 5
      158 GETUPVAL                         R16 6
      159 DUPTABLE                         R17 K17 [{"tag", "LayoutOrder"}]
      160 LOADK                            R18 K18 ["col size-full-0 auto-y padding-small gap-small"]
      161 SETTABLEKS                       R18 R17 K15 ["tag"]
      163 GETTABLEKS                       R18 R0 K19 ["layoutOrder"]
      165 SETTABLEKS                       R18 R17 K16 ["LayoutOrder"]
      167 DUPTABLE                         R18 K22 [{"ScrubBar", "PlaybackUI"}]
      168 GETUPVAL                         R19 5
      169 GETUPVAL                         R20 7
      170 DUPTABLE                         R21 K28 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded"}]
      171 MOVE                             R22 R14
      172 CALL                             R22 0 1
      173 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      175 SETTABLEKS                       R6 R21 K23 ["value"]
      177 GETIMPORT                        R22 K31 [NumberRange.new]
      179 LOADN                            R23 0
      180 MOVE                             R24 R1
      181 CALL                             R22 2 1
      182 SETTABLEKS                       R22 R21 K24 ["range"]
      184 SETTABLEKS                       R12 R21 K25 ["onValueChanged"]
      186 SETTABLEKS                       R10 R21 K26 ["onDragStarted"]
      188 SETTABLEKS                       R11 R21 K27 ["onDragEnded"]
      190 CALL                             R19 2 1
      191 SETTABLEKS                       R19 R18 K20 ["ScrubBar"]
      193 GETUPVAL                         R19 5
      194 GETUPVAL                         R20 6
      195 DUPTABLE                         R21 K17 [{"tag", "LayoutOrder"}]
      196 LOADK                            R22 K32 ["auto-xy row align-y-center gap-small"]
      197 SETTABLEKS                       R22 R21 K15 ["tag"]
      199 MOVE                             R22 R14
      200 CALL                             R22 0 1
      201 SETTABLEKS                       R22 R21 K16 ["LayoutOrder"]
      203 DUPTABLE                         R22 K38 [{"PlayPauseButton", "BackButton", "ForwardButton", "SpeedDropdown", "Timestamp"}]
      204 GETUPVAL                         R23 5
      205 GETUPVAL                         R24 8
      206 DUPTABLE                         R25 K42 [{"LayoutOrder", "icon", "size", "onActivated"}]
      207 MOVE                             R26 R14
      208 CALL                             R26 0 1
      209 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      211 GETTABLEKS                       R27 R2 K8 ["enabled"]
      213 JUMPIFNOT                        R27 ; [+8]
      214 GETUPVAL                         R26 9
      215 GETTABLEKS                       R26 R26 K43 ["Enums"]
      217 GETTABLEKS                       R26 R26 K44 ["IconName"]
      219 GETTABLEKS                       R26 R26 K45 ["PauseLarge"]
      221 JUMP                             ; [+7]
      222 GETUPVAL                         R26 9
      223 GETTABLEKS                       R26 R26 K43 ["Enums"]
      225 GETTABLEKS                       R26 R26 K44 ["IconName"]
      227 GETTABLEKS                       R26 R26 K46 ["PlayLarge"]
      229 SETTABLEKS                       R26 R25 K39 ["icon"]
      231 GETUPVAL                         R26 9
      232 GETTABLEKS                       R26 R26 K43 ["Enums"]
      234 GETTABLEKS                       R26 R26 K47 ["IconSize"]
      236 GETTABLEKS                       R26 R26 K48 ["XSmall"]
      238 SETTABLEKS                       R26 R25 K40 ["size"]
      240 SETTABLEKS                       R8 R25 K41 ["onActivated"]
      242 CALL                             R23 2 1
      243 SETTABLEKS                       R23 R22 K33 ["PlayPauseButton"]
      245 GETUPVAL                         R23 5
      246 GETUPVAL                         R24 8
      247 DUPTABLE                         R25 K42 [{"LayoutOrder", "icon", "size", "onActivated"}]
      248 MOVE                             R26 R14
      249 CALL                             R26 0 1
      250 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      252 GETUPVAL                         R26 9
      253 GETTABLEKS                       R26 R26 K43 ["Enums"]
      255 GETTABLEKS                       R26 R26 K44 ["IconName"]
      257 GETTABLEKS                       R26 R26 K49 ["SkipStartSmall"]
      259 SETTABLEKS                       R26 R25 K39 ["icon"]
      261 GETUPVAL                         R26 9
      262 GETTABLEKS                       R26 R26 K43 ["Enums"]
      264 GETTABLEKS                       R26 R26 K47 ["IconSize"]
      266 GETTABLEKS                       R26 R26 K48 ["XSmall"]
      268 SETTABLEKS                       R26 R25 K40 ["size"]
      270 NEWCLOSURE                       R26 P8
      271 CAPTURE                          VAL R9
      272 SETTABLEKS                       R26 R25 K41 ["onActivated"]
      274 CALL                             R23 2 1
      275 SETTABLEKS                       R23 R22 K34 ["BackButton"]
      277 GETUPVAL                         R23 5
      278 GETUPVAL                         R24 8
      279 DUPTABLE                         R25 K42 [{"LayoutOrder", "icon", "size", "onActivated"}]
      280 MOVE                             R26 R14
      281 CALL                             R26 0 1
      282 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      284 GETUPVAL                         R26 9
      285 GETTABLEKS                       R26 R26 K43 ["Enums"]
      287 GETTABLEKS                       R26 R26 K44 ["IconName"]
      289 GETTABLEKS                       R26 R26 K50 ["SkipEndSmall"]
      291 SETTABLEKS                       R26 R25 K39 ["icon"]
      293 GETUPVAL                         R26 9
      294 GETTABLEKS                       R26 R26 K43 ["Enums"]
      296 GETTABLEKS                       R26 R26 K47 ["IconSize"]
      298 GETTABLEKS                       R26 R26 K48 ["XSmall"]
      300 SETTABLEKS                       R26 R25 K40 ["size"]
      302 NEWCLOSURE                       R26 P9
      303 CAPTURE                          VAL R9
      304 SETTABLEKS                       R26 R25 K41 ["onActivated"]
      306 CALL                             R23 2 1
      307 SETTABLEKS                       R23 R22 K35 ["ForwardButton"]
      309 GETUPVAL                         R23 5
      310 GETUPVAL                         R24 10
      311 GETTABLEKS                       R24 R24 K51 ["Root"]
      313 DUPTABLE                         R25 K56 [{"LayoutOrder", "label", "value", "size", "width", "items", "onItemChanged"}]
      314 MOVE                             R26 R14
      315 CALL                             R26 0 1
      316 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      318 LOADK                            R26 K57 [""]
      319 SETTABLEKS                       R26 R25 K52 ["label"]
      321 SETTABLEKS                       R3 R25 K23 ["value"]
      323 GETUPVAL                         R26 9
      324 GETTABLEKS                       R26 R26 K43 ["Enums"]
      326 GETTABLEKS                       R26 R26 K58 ["InputSize"]
      328 GETTABLEKS                       R26 R26 K59 ["Small"]
      330 SETTABLEKS                       R26 R25 K40 ["size"]
      332 GETIMPORT                        R26 K61 [UDim.new]
      334 LOADN                            R27 0
      335 LOADN                            R28 76
      336 CALL                             R26 2 1
      337 SETTABLEKS                       R26 R25 K53 ["width"]
      339 GETUPVAL                         R26 11
      340 SETTABLEKS                       R26 R25 K54 ["items"]
      342 SETTABLEKS                       R13 R25 K55 ["onItemChanged"]
      344 CALL                             R23 2 1
      345 SETTABLEKS                       R23 R22 K36 ["SpeedDropdown"]
      347 GETUPVAL                         R23 5
      348 GETUPVAL                         R24 12
      349 DUPTABLE                         R25 K63 [{"LayoutOrder", "tag", "Text"}]
      350 MOVE                             R26 R14
      351 CALL                             R26 0 1
      352 SETTABLEKS                       R26 R25 K16 ["LayoutOrder"]
      354 LOADK                            R26 K64 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
      355 SETTABLEKS                       R26 R25 K15 ["tag"]
      357 GETIMPORT                        R26 K67 [string.format]
      359 LOADK                            R27 K68 ["%.2f / %.2f"]
      360 MOVE                             R28 R6
      361 MOVE                             R29 R1
      362 CALL                             R26 3 1
      363 SETTABLEKS                       R26 R25 K62 ["Text"]
      365 CALL                             R23 2 1
      366 SETTABLEKS                       R23 R22 K37 ["Timestamp"]
      368 CALL                             R19 3 1
      369 SETTABLEKS                       R19 R18 K21 ["PlaybackUI"]
      371 CALL                             R15 3 -1
      372 RETURN                           R15 -1

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
       17 GETTABLEKS                       R4 R2 K8 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R2 K10 ["ReactUtils"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R2 K11 ["Signal"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K7 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R8 R8 K13 ["useEventConnection"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K7 [require]
       44 GETTABLEKS                       R9 R1 K14 ["AnimationGenTool"]
       46 GETTABLEKS                       R9 R9 K15 ["usePlayedCurrentTime"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R3 K16 ["Dropdown"]
       51 GETTABLEKS                       R10 R3 K17 ["IconButton"]
       53 GETTABLEKS                       R11 R3 K18 ["Slider"]
       55 GETTABLEKS                       R12 R3 K19 ["Text"]
       57 GETTABLEKS                       R13 R3 K20 ["View"]
       59 GETTABLEKS                       R14 R5 K21 ["createNextOrder"]
       61 GETTABLEKS                       R15 R4 K22 ["createElement"]
       63 NEWTABLE                         R16 0 5
       65 DUPTABLE                         R17 K25 [{"id", "text"}]
       66 LOADK                            R18 K26 [0.25]
       67 SETTABLEKS                       R18 R17 K23 ["id"]
       69 LOADK                            R18 K27 ["0.25x"]
       70 SETTABLEKS                       R18 R17 K24 ["text"]
       72 DUPTABLE                         R18 K25 [{"id", "text"}]
       73 LOADK                            R19 K28 [0.5]
       74 SETTABLEKS                       R19 R18 K23 ["id"]
       76 LOADK                            R19 K29 ["0.5x"]
       77 SETTABLEKS                       R19 R18 K24 ["text"]
       79 DUPTABLE                         R19 K25 [{"id", "text"}]
       80 LOADN                            R20 1
       81 SETTABLEKS                       R20 R19 K23 ["id"]
       83 LOADK                            R20 K30 ["1x"]
       84 SETTABLEKS                       R20 R19 K24 ["text"]
       86 DUPTABLE                         R20 K25 [{"id", "text"}]
       87 LOADN                            R21 2
       88 SETTABLEKS                       R21 R20 K23 ["id"]
       90 LOADK                            R21 K31 ["2x"]
       91 SETTABLEKS                       R21 R20 K24 ["text"]
       93 DUPTABLE                         R21 K25 [{"id", "text"}]
       94 LOADN                            R22 4
       95 SETTABLEKS                       R22 R21 K23 ["id"]
       97 LOADK                            R22 K32 ["4x"]
       98 SETTABLEKS                       R22 R21 K24 ["text"]
      100 SETLIST                          R16 R17 5 [1]
      102 DUPCLOSURE                       R17 K33 [PROTO_10]
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R12
      116 RETURN                           R17 1
