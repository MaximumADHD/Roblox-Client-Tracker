PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["HistoryFrame"]
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 GETTABLEKS                       R2 R0 K2 ["SetScrubberOffset"]
       11 LOADN                            R3 0
       12 LOADNIL                          R4
       13 CALL                             R2 2 0
       14 JUMPIF                           R1 ; [+5]
       15 GETTABLEKS                       R2 R0 K2 ["SetScrubberOffset"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetScrubberOffset"]
        5 LOADNIL                          R2
        6 LOADN                            R3 1
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetScrubberOffset"]
        5 LOADNIL                          R2
        6 LOADN                            R3 -1
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPlayPauseClicked"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onPreviousClicked"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["onNextClicked"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["FrameBuffer"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 JUMPIFNOT                        R3 ; [+30]
       10 NAMECALL                         R7 R3 K3 ["getSize"]
       12 CALL                             R7 1 1
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K4 ["FRAMERATE"]
       16 DIV                              R4 R7 R8
       17 LOADN                            R7 1
       18 GETTABLEKS                       R10 R1 K6 ["HistoryOffset"]
       20 ORK                              R9 R10 K5 [0]
       21 DIV                              R8 R9 R4
       22 ADD                              R5 R7 R8
       23 GETTABLEKS                       R7 R3 K7 ["first"]
       25 JUMPIFNOT                        R7 ; [+13]
       26 GETTABLEKS                       R7 R3 K8 ["last"]
       28 JUMPIFNOT                        R7 ; [+10]
       29 GETTABLEKS                       R7 R3 K8 ["last"]
       31 GETTABLEKS                       R7 R7 K9 ["timestamp"]
       33 GETTABLEKS                       R8 R3 K7 ["first"]
       35 GETTABLEKS                       R8 R8 K9 ["timestamp"]
       37 SUB                              R6 R7 R8
       38 JUMP                             ; [+1]
       39 LOADN                            R6 0
       40 GETUPVAL                         R7 1
       41 LOADK                            R9 K10 ["Padding"]
       42 NAMECALL                         R7 R7 K11 ["GetAttribute"]
       44 CALL                             R7 2 1
       45 GETTABLEKS                       R7 R7 K12 ["Offset"]
       47 GETTABLEKS                       R9 R1 K13 ["HistoryFrame"]
       49 JUMPIFEQKNIL                     R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K14 ["createElement"]
       56 GETUPVAL                         R10 3
       57 NEWTABLE                         R11 1 0
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R12 R12 K15 ["Tag"]
       62 LOADK                            R13 K16 ["Toolbar X-Fill X-RowS X-Middle"]
       63 SETTABLE                         R13 R11 R12
       64 DUPTABLE                         R12 K22 [{"Timeline", "Previous", "PlayPauseButton", "Next", "SettingsButton"}]
       65 JUMPIFNOT                        R3 ; [+72]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K14 ["createElement"]
       69 GETUPVAL                         R14 4
       70 NEWTABLE                         R15 8 0
       72 GETIMPORT                        R16 K25 [UDim2.new]
       74 LOADN                            R17 1
       75 LOADN                            R18 -100
       76 LOADN                            R19 1
       77 LOADN                            R20 0
       78 CALL                             R16 4 1
       79 SETTABLEKS                       R16 R15 K26 ["Size"]
       81 SETTABLEKS                       R4 R15 K27 ["Timespan"]
       83 LOADN                            R16 1
       84 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
       86 SETTABLEKS                       R7 R15 K29 ["MouseOffset"]
       88 GETUPVAL                         R16 2
       89 GETTABLEKS                       R16 R16 K15 ["Tag"]
       91 LOADK                            R17 K17 ["Timeline"]
       92 SETTABLE                         R17 R15 R16
       93 DUPTABLE                         R16 K32 [{"Scrubber", "BufferBar"}]
       94 GETUPVAL                         R17 2
       95 GETTABLEKS                       R17 R17 K14 ["createElement"]
       97 GETUPVAL                         R18 5
       98 DUPTABLE                         R19 K36 [{["Position"], ["ZIndex"] = 2}]
       99 GETIMPORT                        R20 K38 [UDim2.fromScale]
      101 MOVE                             R21 R5
      102 LOADN                            R22 0
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K33 ["Position"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K30 ["Scrubber"]
      109 GETUPVAL                         R17 2
      110 GETTABLEKS                       R17 R17 K14 ["createElement"]
      112 GETUPVAL                         R18 3
      113 DUPTABLE                         R19 K40 [{["ZIndex"] = 1, ["Size"]}]
      114 GETIMPORT                        R20 K25 [UDim2.new]
      116 DIV                              R22 R6 R4
      117 LOADN                            R23 0
      118 LOADN                            R24 1
      119 FASTCALL                         MATH_CLAMP ; [+2]
      120 GETIMPORT                        R21 K43 [math.clamp]
      122 CALL                             R21 3 1
      123 LOADN                            R22 0
      124 LOADN                            R23 0
      125 GETUPVAL                         R24 1
      126 LOADK                            R26 K44 ["BufferBarHeight"]
      127 NAMECALL                         R24 R24 K11 ["GetAttribute"]
      129 CALL                             R24 2 -1
      130 CALL                             R20 -1 1
      131 SETTABLEKS                       R20 R19 K26 ["Size"]
      133 CALL                             R17 2 1
      134 SETTABLEKS                       R17 R16 K31 ["BufferBar"]
      136 CALL                             R13 3 1
      137 JUMP                             ; [+15]
      138 GETUPVAL                         R13 2
      139 GETTABLEKS                       R13 R13 K14 ["createElement"]
      141 GETUPVAL                         R14 3
      142 DUPTABLE                         R15 K45 [{"Size"}]
      143 GETIMPORT                        R16 K25 [UDim2.new]
      145 LOADN                            R17 1
      146 LOADN                            R18 -100
      147 LOADN                            R19 1
      148 LOADN                            R20 0
      149 CALL                             R16 4 1
      150 SETTABLEKS                       R16 R15 K26 ["Size"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K17 ["Timeline"]
      155 GETUPVAL                         R13 2
      156 GETTABLEKS                       R13 R13 K14 ["createElement"]
      158 GETUPVAL                         R14 6
      159 NEWTABLE                         R15 8 0
      161 LOADK                            R16 K46 ["Round"]
      162 SETTABLEKS                       R16 R15 K47 ["Style"]
      164 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      166 LOADN                            R17 20
      167 LOADN                            R18 20
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K26 ["Size"]
      171 LOADN                            R16 2
      172 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      174 GETTABLEKS                       R16 R0 K50 ["onPreviousClicked"]
      176 SETTABLEKS                       R16 R15 K51 ["OnClick"]
      178 GETUPVAL                         R16 2
      179 GETTABLEKS                       R16 R16 K15 ["Tag"]
      181 LOADK                            R17 K52 ["MediaButton"]
      182 SETTABLE                         R17 R15 R16
      183 DUPTABLE                         R16 K55 [{"Icon", "Tooltip"}]
      184 GETUPVAL                         R17 2
      185 GETTABLEKS                       R17 R17 K14 ["createElement"]
      187 GETUPVAL                         R18 7
      188 DUPTABLE                         R19 K58 [{["Image"] = "rbxasset://textures/CompositorDebugger/previous.png"}]
      189 CALL                             R17 2 1
      190 SETTABLEKS                       R17 R16 K53 ["Icon"]
      192 GETUPVAL                         R17 2
      193 GETTABLEKS                       R17 R17 K14 ["createElement"]
      195 GETUPVAL                         R18 8
      196 DUPTABLE                         R19 K60 [{"Text"}]
      197 LOADK                            R22 K61 ["Tooltips"]
      198 LOADK                            R23 K62 ["PrevFrame"]
      199 NAMECALL                         R20 R2 K63 ["getText"]
      201 CALL                             R20 3 1
      202 SETTABLEKS                       R20 R19 K59 ["Text"]
      204 CALL                             R17 2 1
      205 SETTABLEKS                       R17 R16 K54 ["Tooltip"]
      207 CALL                             R13 3 1
      208 SETTABLEKS                       R13 R12 K18 ["Previous"]
      210 GETUPVAL                         R13 2
      211 GETTABLEKS                       R13 R13 K14 ["createElement"]
      213 GETUPVAL                         R14 6
      214 DUPTABLE                         R15 K65 [{["Style"] = "Round", ["Size"], ["LayoutOrder"] = 3, ["OnClick"]}]
      215 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      217 LOADN                            R17 20
      218 LOADN                            R18 20
      219 CALL                             R16 2 1
      220 SETTABLEKS                       R16 R15 K26 ["Size"]
      222 GETTABLEKS                       R16 R0 K66 ["onPlayPauseClicked"]
      224 SETTABLEKS                       R16 R15 K51 ["OnClick"]
      226 DUPTABLE                         R16 K55 [{"Icon", "Tooltip"}]
      227 GETUPVAL                         R17 2
      228 GETTABLEKS                       R17 R17 K14 ["createElement"]
      230 GETUPVAL                         R18 7
      231 DUPTABLE                         R19 K68 [{"Size", "Position", "AnchorPoint", "Image"}]
      232 GETIMPORT                        R20 K49 [UDim2.fromOffset]
      234 LOADN                            R21 20
      235 LOADN                            R22 20
      236 CALL                             R20 2 1
      237 SETTABLEKS                       R20 R19 K26 ["Size"]
      239 GETIMPORT                        R20 K38 [UDim2.fromScale]
      241 LOADK                            R21 K69 [0.5]
      242 LOADK                            R22 K69 [0.5]
      243 CALL                             R20 2 1
      244 SETTABLEKS                       R20 R19 K33 ["Position"]
      246 GETIMPORT                        R20 K71 [Vector2.new]
      248 LOADK                            R21 K69 [0.5]
      249 LOADK                            R22 K69 [0.5]
      250 CALL                             R20 2 1
      251 SETTABLEKS                       R20 R19 K67 ["AnchorPoint"]
      253 JUMPIFNOT                        R8 ; [+2]
      254 LOADK                            R20 K72 ["rbxasset://textures/CompositorDebugger/pause.png"]
      255 JUMP                             ; [+1]
      256 LOADK                            R20 K73 ["rbxasset://textures/CompositorDebugger/play.png"]
      257 SETTABLEKS                       R20 R19 K56 ["Image"]
      259 CALL                             R17 2 1
      260 SETTABLEKS                       R17 R16 K53 ["Icon"]
      262 GETUPVAL                         R17 2
      263 GETTABLEKS                       R17 R17 K14 ["createElement"]
      265 GETUPVAL                         R18 8
      266 DUPTABLE                         R19 K60 [{"Text"}]
      267 LOADK                            R22 K61 ["Tooltips"]
      268 JUMPIFNOT                        R8 ; [+2]
      269 LOADK                            R23 K74 ["Pause"]
      270 JUMP                             ; [+1]
      271 LOADK                            R23 K75 ["Resume"]
      272 NAMECALL                         R20 R2 K63 ["getText"]
      274 CALL                             R20 3 1
      275 SETTABLEKS                       R20 R19 K59 ["Text"]
      277 CALL                             R17 2 1
      278 SETTABLEKS                       R17 R16 K54 ["Tooltip"]
      280 CALL                             R13 3 1
      281 SETTABLEKS                       R13 R12 K19 ["PlayPauseButton"]
      283 GETUPVAL                         R13 2
      284 GETTABLEKS                       R13 R13 K14 ["createElement"]
      286 GETUPVAL                         R14 6
      287 DUPTABLE                         R15 K77 [{["Style"] = "Round", ["Size"], ["LayoutOrder"] = 4, ["OnClick"]}]
      288 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      290 LOADN                            R17 20
      291 LOADN                            R18 20
      292 CALL                             R16 2 1
      293 SETTABLEKS                       R16 R15 K26 ["Size"]
      295 GETTABLEKS                       R16 R0 K78 ["onNextClicked"]
      297 SETTABLEKS                       R16 R15 K51 ["OnClick"]
      299 DUPTABLE                         R16 K55 [{"Icon", "Tooltip"}]
      300 GETUPVAL                         R17 2
      301 GETTABLEKS                       R17 R17 K14 ["createElement"]
      303 GETUPVAL                         R18 7
      304 DUPTABLE                         R19 K80 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "rbxasset://textures/CompositorDebugger/next.png"}]
      305 GETIMPORT                        R20 K49 [UDim2.fromOffset]
      307 LOADN                            R21 20
      308 LOADN                            R22 20
      309 CALL                             R20 2 1
      310 SETTABLEKS                       R20 R19 K26 ["Size"]
      312 GETIMPORT                        R20 K38 [UDim2.fromScale]
      314 LOADK                            R21 K69 [0.5]
      315 LOADK                            R22 K69 [0.5]
      316 CALL                             R20 2 1
      317 SETTABLEKS                       R20 R19 K33 ["Position"]
      319 GETIMPORT                        R20 K71 [Vector2.new]
      321 LOADK                            R21 K69 [0.5]
      322 LOADK                            R22 K69 [0.5]
      323 CALL                             R20 2 1
      324 SETTABLEKS                       R20 R19 K67 ["AnchorPoint"]
      326 CALL                             R17 2 1
      327 SETTABLEKS                       R17 R16 K53 ["Icon"]
      329 GETUPVAL                         R17 2
      330 GETTABLEKS                       R17 R17 K14 ["createElement"]
      332 GETUPVAL                         R18 8
      333 DUPTABLE                         R19 K60 [{"Text"}]
      334 LOADK                            R22 K61 ["Tooltips"]
      335 LOADK                            R23 K81 ["NextFrame"]
      336 NAMECALL                         R20 R2 K63 ["getText"]
      338 CALL                             R20 3 1
      339 SETTABLEKS                       R20 R19 K59 ["Text"]
      341 CALL                             R17 2 1
      342 SETTABLEKS                       R17 R16 K54 ["Tooltip"]
      344 CALL                             R13 3 1
      345 SETTABLEKS                       R13 R12 K20 ["Next"]
      347 GETUPVAL                         R13 2
      348 GETTABLEKS                       R13 R13 K14 ["createElement"]
      350 GETUPVAL                         R14 9
      351 DUPTABLE                         R15 K83 [{["Size"], ["FrameBuffer"], ["LayoutOrder"] = 5, ["AnchorPoint"]}]
      352 GETIMPORT                        R16 K49 [UDim2.fromOffset]
      354 LOADN                            R17 20
      355 LOADN                            R18 20
      356 CALL                             R16 2 1
      357 SETTABLEKS                       R16 R15 K26 ["Size"]
      359 GETTABLEKS                       R16 R1 K2 ["FrameBuffer"]
      361 SETTABLEKS                       R16 R15 K2 ["FrameBuffer"]
      363 GETIMPORT                        R16 K71 [Vector2.new]
      365 LOADN                            R17 1
      366 LOADK                            R18 K69 [0.5]
      367 CALL                             R16 2 1
      368 SETTABLEKS                       R16 R15 K67 ["AnchorPoint"]
      370 DUPTABLE                         R16 K84 [{"Tooltip"}]
      371 GETUPVAL                         R17 2
      372 GETTABLEKS                       R17 R17 K14 ["createElement"]
      374 GETUPVAL                         R18 8
      375 DUPTABLE                         R19 K60 [{"Text"}]
      376 LOADK                            R22 K61 ["Tooltips"]
      377 LOADK                            R23 K85 ["Settings"]
      378 NAMECALL                         R20 R2 K63 ["getText"]
      380 CALL                             R20 3 1
      381 SETTABLEKS                       R20 R19 K59 ["Text"]
      383 CALL                             R17 2 1
      384 SETTABLEKS                       R17 R16 K54 ["Tooltip"]
      386 CALL                             R13 3 1
      387 SETTABLEKS                       R13 R12 K21 ["SettingsButton"]
      389 CALL                             R9 3 -1
      390 RETURN                           R9 -1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"HistoryFrame", "HistoryOffset"}]
        1 GETTABLEKS                       R3 R0 K3 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["HistoryFrame"]
        5 SETTABLEKS                       R3 R2 K0 ["HistoryFrame"]
        7 GETTABLEKS                       R3 R0 K3 ["Status"]
        9 GETTABLEKS                       R3 R3 K1 ["HistoryOffset"]
       11 SETTABLEKS                       R3 R2 K1 ["HistoryOffset"]
       13 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"SetScrubberOffset"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetScrubberOffset"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       34 GETTABLEKS                       R7 R4 K13 ["Localization"]
       36 GETTABLEKS                       R8 R1 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["Button"]
       40 GETTABLEKS                       R10 R8 K16 ["Image"]
       42 GETTABLEKS                       R11 R8 K17 ["Pane"]
       44 GETTABLEKS                       R12 R8 K18 ["Tooltip"]
       46 GETTABLEKS                       R13 R0 K19 ["Src"]
       48 GETTABLEKS                       R13 R13 K20 ["Thunks"]
       50 GETIMPORT                        R14 K5 [require]
       52 GETTABLEKS                       R15 R13 K21 ["SetScrubberOffset"]
       54 CALL                             R14 1 1
       55 GETTABLEKS                       R15 R0 K19 ["Src"]
       57 GETTABLEKS                       R15 R15 K22 ["Util"]
       59 GETIMPORT                        R16 K5 [require]
       61 GETTABLEKS                       R17 R15 K23 ["Constants"]
       63 CALL                             R16 1 1
       64 GETIMPORT                        R17 K5 [require]
       66 GETIMPORT                        R18 K1 [script]
       68 GETTABLEKS                       R18 R18 K24 ["scrubber"]
       70 CALL                             R17 1 1
       71 GETIMPORT                        R18 K5 [require]
       73 GETIMPORT                        R19 K1 [script]
       75 GETTABLEKS                       R19 R19 K25 ["settingsButton"]
       77 CALL                             R18 1 1
       78 GETIMPORT                        R19 K5 [require]
       80 GETIMPORT                        R20 K1 [script]
       82 GETTABLEKS                       R20 R20 K26 ["timeline"]
       84 CALL                             R19 1 1
       85 GETIMPORT                        R20 K5 [require]
       87 GETIMPORT                        R21 K1 [script]
       89 GETTABLEKS                       R21 R21 K27 ["styles"]
       91 CALL                             R20 1 1
       92 GETIMPORT                        R21 K5 [require]
       94 GETTABLEKS                       R22 R0 K19 ["Src"]
       96 GETTABLEKS                       R22 R22 K28 ["Types"]
       98 CALL                             R21 1 1
       99 GETTABLEKS                       R22 R2 K29 ["PureComponent"]
      101 LOADK                            R24 K30 ["Toolbar"]
      102 NAMECALL                         R22 R22 K31 ["extend"]
      104 CALL                             R22 2 1
      105 DUPCLOSURE                       R23 K32 [PROTO_3]
      106 SETTABLEKS                       R23 R22 K33 ["init"]
      108 DUPCLOSURE                       R23 K34 [PROTO_4]
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R20
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R17
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R18
      119 SETTABLEKS                       R23 R22 K35 ["render"]
      121 MOVE                             R23 R5
      122 DUPTABLE                         R24 K36 [{"Analytics", "Localization"}]
      123 SETTABLEKS                       R6 R24 K12 ["Analytics"]
      125 SETTABLEKS                       R7 R24 K13 ["Localization"]
      127 CALL                             R23 1 1
      128 MOVE                             R24 R22
      129 CALL                             R23 1 1
      130 MOVE                             R22 R23
      131 DUPCLOSURE                       R23 K37 [PROTO_5]
      132 DUPCLOSURE                       R24 K38 [PROTO_7]
      133 CAPTURE                          VAL R14
      134 GETTABLEKS                       R25 R3 K39 ["connect"]
      136 MOVE                             R26 R23
      137 MOVE                             R27 R24
      138 CALL                             R25 2 1
      139 MOVE                             R26 R22
      140 CALL                             R25 1 1
      141 MOVE                             R22 R25
      142 RETURN                           R22 1
