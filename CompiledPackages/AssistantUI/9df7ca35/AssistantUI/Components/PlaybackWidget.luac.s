PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPlaying"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["setPlaying"]
        7 LOADB                            R2 0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["seek"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["currentTime"]
       15 ADD                              R3 R4 R0
       16 LOADN                            R4 0
       17 GETUPVAL                         R5 1
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R2 K6 [math.clamp]
       21 CALL                             R2 3 1
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [-1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DIVRK                            R1 K0 [1] R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["toolUseId"]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K3 [{"toolUseId", "duration", "disabled"}]
        4 SETTABLEKS                       R1 R3 K0 ["toolUseId"]
        6 GETTABLEKS                       R5 R0 K1 ["duration"]
        8 ORK                              R4 R5 K4 [10]
        9 SETTABLEKS                       R4 R3 K1 ["duration"]
       11 GETTABLEKS                       R4 R0 K2 ["disabled"]
       13 SETTABLEKS                       R4 R3 K2 ["disabled"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K1 ["duration"]
       18 LOADB                            R4 1
       19 GETTABLEKS                       R5 R0 K2 ["disabled"]
       21 JUMPIFEQKB                       R5 TRUE ; [+4]
       23 GETTABLEKS                       R5 R2 K5 ["available"]
       25 NOT                              R4 R5
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 NEWTABLE                         R7 0 2
       34 MOVE                             R8 R2
       35 MOVE                             R9 R3
       36 SETLIST                          R7 R8 2 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 2
       40 CALL                             R6 0 1
       41 GETUPVAL                         R7 3
       42 GETUPVAL                         R8 4
       43 DUPTABLE                         R9 K10 [{["tag"] = "col gap-small size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       44 GETTABLEKS                       R10 R0 K11 ["layoutOrder"]
       46 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       48 DUPTABLE                         R10 K14 [{"ScrubBar", "PlaybackRow"}]
       49 GETUPVAL                         R11 3
       50 GETUPVAL                         R12 5
       51 DUPTABLE                         R13 K21 [{"LayoutOrder", "value", "range", "isDisabled", "onValueChanged", "onDragStarted", "onDragEnded"}]
       52 MOVE                             R14 R6
       53 CALL                             R14 0 1
       54 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       56 GETTABLEKS                       R14 R2 K22 ["currentTime"]
       58 SETTABLEKS                       R14 R13 K15 ["value"]
       60 GETIMPORT                        R14 K25 [NumberRange.new]
       62 LOADN                            R15 0
       63 MOVE                             R16 R3
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K16 ["range"]
       67 GETTABLEKS                       R14 R0 K2 ["disabled"]
       69 SETTABLEKS                       R14 R13 K17 ["isDisabled"]
       71 GETTABLEKS                       R14 R2 K26 ["seek"]
       73 SETTABLEKS                       R14 R13 K18 ["onValueChanged"]
       75 GETTABLEKS                       R14 R2 K27 ["beginScrub"]
       77 SETTABLEKS                       R14 R13 K19 ["onDragStarted"]
       79 GETTABLEKS                       R14 R2 K28 ["endScrub"]
       81 SETTABLEKS                       R14 R13 K20 ["onDragEnded"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K12 ["ScrubBar"]
       86 GETUPVAL                         R11 3
       87 GETUPVAL                         R12 4
       88 DUPTABLE                         R13 K30 [{["tag"] = "row flex-x-between align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       89 MOVE                             R14 R6
       90 CALL                             R14 0 1
       91 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       93 DUPTABLE                         R14 K33 [{"PlaybackUI", "TrailingContent"}]
       94 GETUPVAL                         R15 3
       95 GETUPVAL                         R16 4
       96 DUPTABLE                         R17 K35 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       97 MOVE                             R18 R6
       98 CALL                             R18 0 1
       99 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      101 DUPTABLE                         R18 K40 [{"PlayPauseButton", "BackButton", "ForwardButton", "Timestamp"}]
      102 GETUPVAL                         R19 3
      103 GETUPVAL                         R20 6
      104 DUPTABLE                         R21 K44 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      105 MOVE                             R22 R6
      106 CALL                             R22 0 1
      107 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      109 GETTABLEKS                       R23 R2 K45 ["isPlaying"]
      111 JUMPIFNOT                        R23 ; [+8]
      112 GETUPVAL                         R22 7
      113 GETTABLEKS                       R22 R22 K46 ["Enums"]
      115 GETTABLEKS                       R22 R22 K47 ["IconName"]
      117 GETTABLEKS                       R22 R22 K48 ["PauseLarge"]
      119 JUMP                             ; [+7]
      120 GETUPVAL                         R22 7
      121 GETTABLEKS                       R22 R22 K46 ["Enums"]
      123 GETTABLEKS                       R22 R22 K47 ["IconName"]
      125 GETTABLEKS                       R22 R22 K49 ["PlayLarge"]
      127 SETTABLEKS                       R22 R21 K41 ["icon"]
      129 GETUPVAL                         R22 7
      130 GETTABLEKS                       R22 R22 K46 ["Enums"]
      132 GETTABLEKS                       R22 R22 K50 ["IconSize"]
      134 GETTABLEKS                       R22 R22 K51 ["XSmall"]
      136 SETTABLEKS                       R22 R21 K42 ["size"]
      138 SETTABLEKS                       R4 R21 K17 ["isDisabled"]
      140 GETTABLEKS                       R22 R2 K52 ["togglePlaying"]
      142 SETTABLEKS                       R22 R21 K43 ["onActivated"]
      144 CALL                             R19 2 1
      145 SETTABLEKS                       R19 R18 K36 ["PlayPauseButton"]
      147 GETUPVAL                         R19 3
      148 GETUPVAL                         R20 6
      149 DUPTABLE                         R21 K44 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      150 MOVE                             R22 R6
      151 CALL                             R22 0 1
      152 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      154 GETUPVAL                         R22 7
      155 GETTABLEKS                       R22 R22 K46 ["Enums"]
      157 GETTABLEKS                       R22 R22 K47 ["IconName"]
      159 GETTABLEKS                       R22 R22 K53 ["SkipStartSmall"]
      161 SETTABLEKS                       R22 R21 K41 ["icon"]
      163 GETUPVAL                         R22 7
      164 GETTABLEKS                       R22 R22 K46 ["Enums"]
      166 GETTABLEKS                       R22 R22 K50 ["IconSize"]
      168 GETTABLEKS                       R22 R22 K51 ["XSmall"]
      170 SETTABLEKS                       R22 R21 K42 ["size"]
      172 SETTABLEKS                       R4 R21 K17 ["isDisabled"]
      174 NEWCLOSURE                       R22 P1
      175 CAPTURE                          VAL R5
      176 CAPTURE                          UPVAL U8
      177 SETTABLEKS                       R22 R21 K43 ["onActivated"]
      179 CALL                             R19 2 1
      180 SETTABLEKS                       R19 R18 K37 ["BackButton"]
      182 GETUPVAL                         R19 3
      183 GETUPVAL                         R20 6
      184 DUPTABLE                         R21 K44 [{"LayoutOrder", "icon", "size", "isDisabled", "onActivated"}]
      185 MOVE                             R22 R6
      186 CALL                             R22 0 1
      187 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      189 GETUPVAL                         R22 7
      190 GETTABLEKS                       R22 R22 K46 ["Enums"]
      192 GETTABLEKS                       R22 R22 K47 ["IconName"]
      194 GETTABLEKS                       R22 R22 K54 ["SkipEndSmall"]
      196 SETTABLEKS                       R22 R21 K41 ["icon"]
      198 GETUPVAL                         R22 7
      199 GETTABLEKS                       R22 R22 K46 ["Enums"]
      201 GETTABLEKS                       R22 R22 K50 ["IconSize"]
      203 GETTABLEKS                       R22 R22 K51 ["XSmall"]
      205 SETTABLEKS                       R22 R21 K42 ["size"]
      207 SETTABLEKS                       R4 R21 K17 ["isDisabled"]
      209 NEWCLOSURE                       R22 P2
      210 CAPTURE                          VAL R5
      211 CAPTURE                          UPVAL U8
      212 SETTABLEKS                       R22 R21 K43 ["onActivated"]
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K38 ["ForwardButton"]
      217 GETUPVAL                         R19 3
      218 GETUPVAL                         R20 9
      219 DUPTABLE                         R21 K57 [{["LayoutOrder"], ["tag"] = "shrink auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
      220 MOVE                             R22 R6
      221 CALL                             R22 0 1
      222 SETTABLEKS                       R22 R21 K9 ["LayoutOrder"]
      224 GETIMPORT                        R22 K60 [string.format]
      226 LOADK                            R23 K61 ["%.2f / %.2f"]
      227 GETTABLEKS                       R24 R2 K22 ["currentTime"]
      229 MOVE                             R25 R3
      230 CALL                             R22 3 1
      231 SETTABLEKS                       R22 R21 K56 ["Text"]
      233 CALL                             R19 2 1
      234 SETTABLEKS                       R19 R18 K39 ["Timestamp"]
      236 CALL                             R15 3 1
      237 SETTABLEKS                       R15 R14 K31 ["PlaybackUI"]
      239 GETTABLEKS                       R15 R0 K62 ["trailingContent"]
      241 JUMPIFNOT                        R15 ; [+10]
      242 GETUPVAL                         R15 3
      243 GETUPVAL                         R16 4
      244 DUPTABLE                         R17 K64 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      245 MOVE                             R18 R6
      246 CALL                             R18 0 1
      247 SETTABLEKS                       R18 R17 K9 ["LayoutOrder"]
      249 GETTABLEKS                       R18 R0 K62 ["trailingContent"]
      251 CALL                             R15 3 1
      252 SETTABLEKS                       R15 R14 K32 ["TrailingContent"]
      254 CALL                             R11 3 1
      255 SETTABLEKS                       R11 R10 K13 ["PlaybackRow"]
      257 CALL                             R7 3 -1
      258 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["AnimationGen"]
       15 GETTABLEKS                       R3 R3 K9 ["AnimationGenConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["ReactUtils"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Hooks"]
       37 GETTABLEKS                       R7 R7 K14 ["useAnimationPlaybackController"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R3 K15 ["IconButton"]
       42 GETTABLEKS                       R8 R3 K16 ["Slider"]
       44 GETTABLEKS                       R9 R3 K17 ["Text"]
       46 GETTABLEKS                       R10 R3 K18 ["View"]
       48 GETTABLEKS                       R11 R5 K19 ["createNextOrder"]
       50 GETTABLEKS                       R12 R4 K20 ["createElement"]
       52 GETTABLEKS                       R13 R2 K21 ["DEFAULT_GENERATION_FPS"]
       54 DUPCLOSURE                       R14 K22 [PROTO_3]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R11
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R13
       64 CAPTURE                          VAL R9
       65 RETURN                           R14 1
