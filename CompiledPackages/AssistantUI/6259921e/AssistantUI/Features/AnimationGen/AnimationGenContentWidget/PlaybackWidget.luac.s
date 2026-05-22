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
      124 CALL                             R14 0 1
      125 GETUPVAL                         R15 4
      126 GETUPVAL                         R16 5
      127 DUPTABLE                         R17 K15 [{"tag", "LayoutOrder"}]
      128 LOADK                            R18 K16 ["col size-full-0 auto-y padding-small gap-small"]
      129 SETTABLEKS                       R18 R17 K13 ["tag"]
      131 GETTABLEKS                       R18 R0 K17 ["layoutOrder"]
      133 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      135 DUPTABLE                         R18 K20 [{"ScrubBar", "PlaybackUI"}]
      136 GETUPVAL                         R19 4
      137 GETUPVAL                         R20 6
      138 DUPTABLE                         R21 K26 [{"LayoutOrder", "value", "range", "onValueChanged", "onDragStarted", "onDragEnded"}]
      139 MOVE                             R22 R14
      140 CALL                             R22 0 1
      141 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      143 SETTABLEKS                       R6 R21 K21 ["value"]
      145 GETIMPORT                        R22 K29 [NumberRange.new]
      147 LOADN                            R23 0
      148 MOVE                             R24 R1
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K22 ["range"]
      152 SETTABLEKS                       R12 R21 K23 ["onValueChanged"]
      154 SETTABLEKS                       R10 R21 K24 ["onDragStarted"]
      156 SETTABLEKS                       R11 R21 K25 ["onDragEnded"]
      158 CALL                             R19 2 1
      159 SETTABLEKS                       R19 R18 K18 ["ScrubBar"]
      161 GETUPVAL                         R19 4
      162 GETUPVAL                         R20 5
      163 DUPTABLE                         R21 K15 [{"tag", "LayoutOrder"}]
      164 LOADK                            R22 K30 ["auto-xy row align-y-center gap-small"]
      165 SETTABLEKS                       R22 R21 K13 ["tag"]
      167 MOVE                             R22 R14
      168 CALL                             R22 0 1
      169 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      171 DUPTABLE                         R22 K36 [{"PlayPauseButton", "BackButton", "ForwardButton", "SpeedDropdown", "Timestamp"}]
      172 GETUPVAL                         R23 4
      173 GETUPVAL                         R24 7
      174 DUPTABLE                         R25 K40 [{"LayoutOrder", "icon", "size", "onActivated"}]
      175 MOVE                             R26 R14
      176 CALL                             R26 0 1
      177 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      179 GETTABLEKS                       R27 R2 K8 ["enabled"]
      181 JUMPIFNOT                        R27 ; [+8]
      182 GETUPVAL                         R26 8
      183 GETTABLEKS                       R26 R26 K41 ["Enums"]
      185 GETTABLEKS                       R26 R26 K42 ["IconName"]
      187 GETTABLEKS                       R26 R26 K43 ["PauseLarge"]
      189 JUMP                             ; [+7]
      190 GETUPVAL                         R26 8
      191 GETTABLEKS                       R26 R26 K41 ["Enums"]
      193 GETTABLEKS                       R26 R26 K42 ["IconName"]
      195 GETTABLEKS                       R26 R26 K44 ["PlayLarge"]
      197 SETTABLEKS                       R26 R25 K37 ["icon"]
      199 GETUPVAL                         R26 8
      200 GETTABLEKS                       R26 R26 K41 ["Enums"]
      202 GETTABLEKS                       R26 R26 K45 ["IconSize"]
      204 GETTABLEKS                       R26 R26 K46 ["XSmall"]
      206 SETTABLEKS                       R26 R25 K38 ["size"]
      208 SETTABLEKS                       R8 R25 K39 ["onActivated"]
      210 CALL                             R23 2 1
      211 SETTABLEKS                       R23 R22 K31 ["PlayPauseButton"]
      213 GETUPVAL                         R23 4
      214 GETUPVAL                         R24 7
      215 DUPTABLE                         R25 K40 [{"LayoutOrder", "icon", "size", "onActivated"}]
      216 MOVE                             R26 R14
      217 CALL                             R26 0 1
      218 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      220 GETUPVAL                         R26 8
      221 GETTABLEKS                       R26 R26 K41 ["Enums"]
      223 GETTABLEKS                       R26 R26 K42 ["IconName"]
      225 GETTABLEKS                       R26 R26 K47 ["SkipStartSmall"]
      227 SETTABLEKS                       R26 R25 K37 ["icon"]
      229 GETUPVAL                         R26 8
      230 GETTABLEKS                       R26 R26 K41 ["Enums"]
      232 GETTABLEKS                       R26 R26 K45 ["IconSize"]
      234 GETTABLEKS                       R26 R26 K46 ["XSmall"]
      236 SETTABLEKS                       R26 R25 K38 ["size"]
      238 NEWCLOSURE                       R26 P6
      239 CAPTURE                          VAL R9
      240 SETTABLEKS                       R26 R25 K39 ["onActivated"]
      242 CALL                             R23 2 1
      243 SETTABLEKS                       R23 R22 K32 ["BackButton"]
      245 GETUPVAL                         R23 4
      246 GETUPVAL                         R24 7
      247 DUPTABLE                         R25 K40 [{"LayoutOrder", "icon", "size", "onActivated"}]
      248 MOVE                             R26 R14
      249 CALL                             R26 0 1
      250 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      252 GETUPVAL                         R26 8
      253 GETTABLEKS                       R26 R26 K41 ["Enums"]
      255 GETTABLEKS                       R26 R26 K42 ["IconName"]
      257 GETTABLEKS                       R26 R26 K48 ["SkipEndSmall"]
      259 SETTABLEKS                       R26 R25 K37 ["icon"]
      261 GETUPVAL                         R26 8
      262 GETTABLEKS                       R26 R26 K41 ["Enums"]
      264 GETTABLEKS                       R26 R26 K45 ["IconSize"]
      266 GETTABLEKS                       R26 R26 K46 ["XSmall"]
      268 SETTABLEKS                       R26 R25 K38 ["size"]
      270 NEWCLOSURE                       R26 P7
      271 CAPTURE                          VAL R9
      272 SETTABLEKS                       R26 R25 K39 ["onActivated"]
      274 CALL                             R23 2 1
      275 SETTABLEKS                       R23 R22 K33 ["ForwardButton"]
      277 GETUPVAL                         R23 4
      278 GETUPVAL                         R24 9
      279 GETTABLEKS                       R24 R24 K49 ["Root"]
      281 DUPTABLE                         R25 K54 [{"LayoutOrder", "label", "value", "size", "width", "items", "onItemChanged"}]
      282 MOVE                             R26 R14
      283 CALL                             R26 0 1
      284 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      286 LOADK                            R26 K55 [""]
      287 SETTABLEKS                       R26 R25 K50 ["label"]
      289 SETTABLEKS                       R3 R25 K21 ["value"]
      291 GETUPVAL                         R26 8
      292 GETTABLEKS                       R26 R26 K41 ["Enums"]
      294 GETTABLEKS                       R26 R26 K56 ["InputSize"]
      296 GETTABLEKS                       R26 R26 K57 ["Small"]
      298 SETTABLEKS                       R26 R25 K38 ["size"]
      300 GETIMPORT                        R26 K59 [UDim.new]
      302 LOADN                            R27 0
      303 LOADN                            R28 76
      304 CALL                             R26 2 1
      305 SETTABLEKS                       R26 R25 K51 ["width"]
      307 GETUPVAL                         R26 10
      308 SETTABLEKS                       R26 R25 K52 ["items"]
      310 SETTABLEKS                       R13 R25 K53 ["onItemChanged"]
      312 CALL                             R23 2 1
      313 SETTABLEKS                       R23 R22 K34 ["SpeedDropdown"]
      315 GETUPVAL                         R23 4
      316 GETUPVAL                         R24 11
      317 DUPTABLE                         R25 K61 [{"LayoutOrder", "tag", "Text"}]
      318 MOVE                             R26 R14
      319 CALL                             R26 0 1
      320 SETTABLEKS                       R26 R25 K14 ["LayoutOrder"]
      322 LOADK                            R26 K62 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
      323 SETTABLEKS                       R26 R25 K13 ["tag"]
      325 GETIMPORT                        R26 K65 [string.format]
      327 LOADK                            R27 K66 ["%.2f / %.2f"]
      328 MOVE                             R28 R6
      329 MOVE                             R29 R1
      330 CALL                             R26 3 1
      331 SETTABLEKS                       R26 R25 K60 ["Text"]
      333 CALL                             R23 2 1
      334 SETTABLEKS                       R23 R22 K35 ["Timestamp"]
      336 CALL                             R19 3 1
      337 SETTABLEKS                       R19 R18 K19 ["PlaybackUI"]
      339 CALL                             R15 3 -1
      340 RETURN                           R15 -1

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
       32 GETTABLEKS                       R7 R1 K11 ["AnimationGenTool"]
       34 GETTABLEKS                       R7 R7 K12 ["usePlayedCurrentTime"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R3 K13 ["Dropdown"]
       39 GETTABLEKS                       R8 R3 K14 ["IconButton"]
       41 GETTABLEKS                       R9 R3 K15 ["Slider"]
       43 GETTABLEKS                       R10 R3 K16 ["Text"]
       45 GETTABLEKS                       R11 R3 K17 ["View"]
       47 GETTABLEKS                       R12 R5 K18 ["createNextOrder"]
       49 GETTABLEKS                       R13 R4 K19 ["createElement"]
       51 NEWTABLE                         R14 0 5
       53 DUPTABLE                         R15 K22 [{"id", "text"}]
       54 LOADK                            R16 K23 [0.25]
       55 SETTABLEKS                       R16 R15 K20 ["id"]
       57 LOADK                            R16 K24 ["0.25x"]
       58 SETTABLEKS                       R16 R15 K21 ["text"]
       60 DUPTABLE                         R16 K22 [{"id", "text"}]
       61 LOADK                            R17 K25 [0.5]
       62 SETTABLEKS                       R17 R16 K20 ["id"]
       64 LOADK                            R17 K26 ["0.5x"]
       65 SETTABLEKS                       R17 R16 K21 ["text"]
       67 DUPTABLE                         R17 K22 [{"id", "text"}]
       68 LOADN                            R18 1
       69 SETTABLEKS                       R18 R17 K20 ["id"]
       71 LOADK                            R18 K27 ["1x"]
       72 SETTABLEKS                       R18 R17 K21 ["text"]
       74 DUPTABLE                         R18 K22 [{"id", "text"}]
       75 LOADN                            R19 2
       76 SETTABLEKS                       R19 R18 K20 ["id"]
       78 LOADK                            R19 K28 ["2x"]
       79 SETTABLEKS                       R19 R18 K21 ["text"]
       81 DUPTABLE                         R19 K22 [{"id", "text"}]
       82 LOADN                            R20 4
       83 SETTABLEKS                       R20 R19 K20 ["id"]
       85 LOADK                            R20 K29 ["4x"]
       86 SETTABLEKS                       R20 R19 K21 ["text"]
       88 SETLIST                          R14 R15 5 [1]
       90 DUPCLOSURE                       R15 K30 [PROTO_8]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R10
      103 RETURN                           R15 1
