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
      159 DUPTABLE                         R17 K18 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
      160 GETTABLEKS                       R18 R0 K19 ["layoutOrder"]
      162 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      164 DUPTABLE                         R18 K22 [{"ScrubBar", "PlaybackUI"}]
      165 GETUPVAL                         R19 5
      166 GETUPVAL                         R20 7
      167 DUPTABLE                         R21 K28 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded"}]
      168 MOVE                             R22 R14
      169 CALL                             R22 0 1
      170 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      172 SETTABLEKS                       R6 R21 K23 ["value"]
      174 GETIMPORT                        R22 K31 [NumberRange.new]
      176 LOADN                            R23 0
      177 MOVE                             R24 R1
      178 CALL                             R22 2 1
      179 SETTABLEKS                       R22 R21 K24 ["range"]
      181 SETTABLEKS                       R12 R21 K25 ["onValueChanged"]
      183 SETTABLEKS                       R10 R21 K26 ["onDragStarted"]
      185 SETTABLEKS                       R11 R21 K27 ["onDragEnded"]
      187 CALL                             R19 2 1
      188 SETTABLEKS                       R19 R18 K20 ["ScrubBar"]
      190 GETUPVAL                         R19 5
      191 GETUPVAL                         R20 6
      192 DUPTABLE                         R21 K33 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      193 MOVE                             R22 R14
      194 CALL                             R22 0 1
      195 SETTABLEKS                       R22 R21 K17 ["LayoutOrder"]
      197 DUPTABLE                         R22 K39 [{"PlayPauseButton", "BackButton", "ForwardButton", "SpeedDropdown", "Timestamp"}]
      198 GETUPVAL                         R23 5
      199 GETUPVAL                         R24 8
      200 DUPTABLE                         R25 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      201 MOVE                             R26 R14
      202 CALL                             R26 0 1
      203 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      205 GETTABLEKS                       R27 R2 K8 ["enabled"]
      207 JUMPIFNOT                        R27 ; [+8]
      208 GETUPVAL                         R26 9
      209 GETTABLEKS                       R26 R26 K44 ["Enums"]
      211 GETTABLEKS                       R26 R26 K45 ["IconName"]
      213 GETTABLEKS                       R26 R26 K46 ["PauseLarge"]
      215 JUMP                             ; [+7]
      216 GETUPVAL                         R26 9
      217 GETTABLEKS                       R26 R26 K44 ["Enums"]
      219 GETTABLEKS                       R26 R26 K45 ["IconName"]
      221 GETTABLEKS                       R26 R26 K47 ["PlayLarge"]
      223 SETTABLEKS                       R26 R25 K40 ["icon"]
      225 GETUPVAL                         R26 9
      226 GETTABLEKS                       R26 R26 K44 ["Enums"]
      228 GETTABLEKS                       R26 R26 K48 ["IconSize"]
      230 GETTABLEKS                       R26 R26 K49 ["XSmall"]
      232 SETTABLEKS                       R26 R25 K41 ["size"]
      234 SETTABLEKS                       R8 R25 K42 ["onActivated"]
      236 CALL                             R23 2 1
      237 SETTABLEKS                       R23 R22 K34 ["PlayPauseButton"]
      239 GETUPVAL                         R23 5
      240 GETUPVAL                         R24 8
      241 DUPTABLE                         R25 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      242 MOVE                             R26 R14
      243 CALL                             R26 0 1
      244 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      246 GETUPVAL                         R26 9
      247 GETTABLEKS                       R26 R26 K44 ["Enums"]
      249 GETTABLEKS                       R26 R26 K45 ["IconName"]
      251 GETTABLEKS                       R26 R26 K50 ["SkipStartSmall"]
      253 SETTABLEKS                       R26 R25 K40 ["icon"]
      255 GETUPVAL                         R26 9
      256 GETTABLEKS                       R26 R26 K44 ["Enums"]
      258 GETTABLEKS                       R26 R26 K48 ["IconSize"]
      260 GETTABLEKS                       R26 R26 K49 ["XSmall"]
      262 SETTABLEKS                       R26 R25 K41 ["size"]
      264 NEWCLOSURE                       R26 P8
      265 CAPTURE                          VAL R9
      266 SETTABLEKS                       R26 R25 K42 ["onActivated"]
      268 CALL                             R23 2 1
      269 SETTABLEKS                       R23 R22 K35 ["BackButton"]
      271 GETUPVAL                         R23 5
      272 GETUPVAL                         R24 8
      273 DUPTABLE                         R25 K43 [{"LayoutOrder", "icon", "size", "onActivated"}]
      274 MOVE                             R26 R14
      275 CALL                             R26 0 1
      276 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      278 GETUPVAL                         R26 9
      279 GETTABLEKS                       R26 R26 K44 ["Enums"]
      281 GETTABLEKS                       R26 R26 K45 ["IconName"]
      283 GETTABLEKS                       R26 R26 K51 ["SkipEndSmall"]
      285 SETTABLEKS                       R26 R25 K40 ["icon"]
      287 GETUPVAL                         R26 9
      288 GETTABLEKS                       R26 R26 K44 ["Enums"]
      290 GETTABLEKS                       R26 R26 K48 ["IconSize"]
      292 GETTABLEKS                       R26 R26 K49 ["XSmall"]
      294 SETTABLEKS                       R26 R25 K41 ["size"]
      296 NEWCLOSURE                       R26 P9
      297 CAPTURE                          VAL R9
      298 SETTABLEKS                       R26 R25 K42 ["onActivated"]
      300 CALL                             R23 2 1
      301 SETTABLEKS                       R23 R22 K36 ["ForwardButton"]
      303 GETUPVAL                         R23 5
      304 GETUPVAL                         R24 10
      305 GETTABLEKS                       R24 R24 K52 ["Root"]
      307 DUPTABLE                         R25 K58 [{["LayoutOrder"], ["label"] = "", ["value"], ["size"], ["width"], ["items"], ["onItemChanged"]}]
      308 MOVE                             R26 R14
      309 CALL                             R26 0 1
      310 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      312 SETTABLEKS                       R3 R25 K23 ["value"]
      314 GETUPVAL                         R26 9
      315 GETTABLEKS                       R26 R26 K44 ["Enums"]
      317 GETTABLEKS                       R26 R26 K59 ["InputSize"]
      319 GETTABLEKS                       R26 R26 K60 ["Small"]
      321 SETTABLEKS                       R26 R25 K41 ["size"]
      323 GETIMPORT                        R26 K62 [UDim.new]
      325 LOADN                            R27 0
      326 LOADN                            R28 76
      327 CALL                             R26 2 1
      328 SETTABLEKS                       R26 R25 K55 ["width"]
      330 GETUPVAL                         R26 11
      331 SETTABLEKS                       R26 R25 K56 ["items"]
      333 SETTABLEKS                       R13 R25 K57 ["onItemChanged"]
      335 CALL                             R23 2 1
      336 SETTABLEKS                       R23 R22 K37 ["SpeedDropdown"]
      338 GETUPVAL                         R23 5
      339 GETUPVAL                         R24 12
      340 DUPTABLE                         R25 K65 [{["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
      341 MOVE                             R26 R14
      342 CALL                             R26 0 1
      343 SETTABLEKS                       R26 R25 K17 ["LayoutOrder"]
      345 GETIMPORT                        R26 K68 [string.format]
      347 LOADK                            R27 K69 ["%.2f / %.2f"]
      348 MOVE                             R28 R6
      349 MOVE                             R29 R1
      350 CALL                             R26 3 1
      351 SETTABLEKS                       R26 R25 K64 ["Text"]
      353 CALL                             R23 2 1
      354 SETTABLEKS                       R23 R22 K38 ["Timestamp"]
      356 CALL                             R19 3 1
      357 SETTABLEKS                       R19 R18 K21 ["PlaybackUI"]
      359 CALL                             R15 3 -1
      360 RETURN                           R15 -1

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
       65 DUPTABLE                         R17 K27 [{["id"] = 0.25, ["text"] = "0.25x"}]
       66 DUPTABLE                         R18 K30 [{["id"] = 0.5, ["text"] = "0.5x"}]
       67 DUPTABLE                         R19 K33 [{["id"] = 1, ["text"] = "1x"}]
       68 DUPTABLE                         R20 K36 [{["id"] = 2, ["text"] = "2x"}]
       69 DUPTABLE                         R21 K39 [{["id"] = 4, ["text"] = "4x"}]
       70 SETLIST                          R16 R17 5 [1]
       72 DUPCLOSURE                       R17 K40 [PROTO_10]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R16
       85 CAPTURE                          VAL R12
       86 RETURN                           R17 1
