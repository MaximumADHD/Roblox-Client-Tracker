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
        6 LOADN                            R3 255
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
       65 JUMPIFNOT                        R3 ; [+78]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K14 ["createElement"]
       69 GETUPVAL                         R14 4
       70 NEWTABLE                         R15 8 0
       72 GETIMPORT                        R16 K25 [UDim2.new]
       74 LOADN                            R17 1
       75 LOADN                            R18 156
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
       98 DUPTABLE                         R19 K35 [{"Position", "ZIndex"}]
       99 GETIMPORT                        R20 K37 [UDim2.fromScale]
      101 MOVE                             R21 R5
      102 LOADN                            R22 0
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K33 ["Position"]
      106 LOADN                            R20 2
      107 SETTABLEKS                       R20 R19 K34 ["ZIndex"]
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K30 ["Scrubber"]
      112 GETUPVAL                         R17 2
      113 GETTABLEKS                       R17 R17 K14 ["createElement"]
      115 GETUPVAL                         R18 3
      116 DUPTABLE                         R19 K38 [{"ZIndex", "Size"}]
      117 LOADN                            R20 1
      118 SETTABLEKS                       R20 R19 K34 ["ZIndex"]
      120 GETIMPORT                        R20 K25 [UDim2.new]
      122 DIV                              R22 R6 R4
      123 LOADN                            R23 0
      124 LOADN                            R24 1
      125 FASTCALL                         MATH_CLAMP ; [+2]
      126 GETIMPORT                        R21 K41 [math.clamp]
      128 CALL                             R21 3 1
      129 LOADN                            R22 0
      130 LOADN                            R23 0
      131 GETUPVAL                         R24 1
      132 LOADK                            R26 K42 ["BufferBarHeight"]
      133 NAMECALL                         R24 R24 K11 ["GetAttribute"]
      135 CALL                             R24 2 -1
      136 CALL                             R20 -1 1
      137 SETTABLEKS                       R20 R19 K26 ["Size"]
      139 CALL                             R17 2 1
      140 SETTABLEKS                       R17 R16 K31 ["BufferBar"]
      142 CALL                             R13 3 1
      143 JUMP                             ; [+15]
      144 GETUPVAL                         R13 2
      145 GETTABLEKS                       R13 R13 K14 ["createElement"]
      147 GETUPVAL                         R14 3
      148 DUPTABLE                         R15 K43 [{"Size"}]
      149 GETIMPORT                        R16 K25 [UDim2.new]
      151 LOADN                            R17 1
      152 LOADN                            R18 156
      153 LOADN                            R19 1
      154 LOADN                            R20 0
      155 CALL                             R16 4 1
      156 SETTABLEKS                       R16 R15 K26 ["Size"]
      158 CALL                             R13 2 1
      159 SETTABLEKS                       R13 R12 K17 ["Timeline"]
      161 GETUPVAL                         R13 2
      162 GETTABLEKS                       R13 R13 K14 ["createElement"]
      164 GETUPVAL                         R14 6
      165 NEWTABLE                         R15 8 0
      167 LOADK                            R16 K44 ["Round"]
      168 SETTABLEKS                       R16 R15 K45 ["Style"]
      170 GETIMPORT                        R16 K47 [UDim2.fromOffset]
      172 LOADN                            R17 20
      173 LOADN                            R18 20
      174 CALL                             R16 2 1
      175 SETTABLEKS                       R16 R15 K26 ["Size"]
      177 LOADN                            R16 2
      178 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      180 GETTABLEKS                       R16 R0 K48 ["onPreviousClicked"]
      182 SETTABLEKS                       R16 R15 K49 ["OnClick"]
      184 GETUPVAL                         R16 2
      185 GETTABLEKS                       R16 R16 K15 ["Tag"]
      187 LOADK                            R17 K50 ["MediaButton"]
      188 SETTABLE                         R17 R15 R16
      189 DUPTABLE                         R16 K53 [{"Icon", "Tooltip"}]
      190 GETUPVAL                         R17 2
      191 GETTABLEKS                       R17 R17 K14 ["createElement"]
      193 GETUPVAL                         R18 7
      194 DUPTABLE                         R19 K55 [{"Image"}]
      195 LOADK                            R20 K56 ["rbxasset://textures/CompositorDebugger/previous.png"]
      196 SETTABLEKS                       R20 R19 K54 ["Image"]
      198 CALL                             R17 2 1
      199 SETTABLEKS                       R17 R16 K51 ["Icon"]
      201 GETUPVAL                         R17 2
      202 GETTABLEKS                       R17 R17 K14 ["createElement"]
      204 GETUPVAL                         R18 8
      205 DUPTABLE                         R19 K58 [{"Text"}]
      206 LOADK                            R22 K59 ["Tooltips"]
      207 LOADK                            R23 K60 ["PrevFrame"]
      208 NAMECALL                         R20 R2 K61 ["getText"]
      210 CALL                             R20 3 1
      211 SETTABLEKS                       R20 R19 K57 ["Text"]
      213 CALL                             R17 2 1
      214 SETTABLEKS                       R17 R16 K52 ["Tooltip"]
      216 CALL                             R13 3 1
      217 SETTABLEKS                       R13 R12 K18 ["Previous"]
      219 GETUPVAL                         R13 2
      220 GETTABLEKS                       R13 R13 K14 ["createElement"]
      222 GETUPVAL                         R14 6
      223 DUPTABLE                         R15 K62 [{"Style", "Size", "LayoutOrder", "OnClick"}]
      224 LOADK                            R16 K44 ["Round"]
      225 SETTABLEKS                       R16 R15 K45 ["Style"]
      227 GETIMPORT                        R16 K47 [UDim2.fromOffset]
      229 LOADN                            R17 20
      230 LOADN                            R18 20
      231 CALL                             R16 2 1
      232 SETTABLEKS                       R16 R15 K26 ["Size"]
      234 LOADN                            R16 3
      235 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      237 GETTABLEKS                       R16 R0 K63 ["onPlayPauseClicked"]
      239 SETTABLEKS                       R16 R15 K49 ["OnClick"]
      241 DUPTABLE                         R16 K53 [{"Icon", "Tooltip"}]
      242 GETUPVAL                         R17 2
      243 GETTABLEKS                       R17 R17 K14 ["createElement"]
      245 GETUPVAL                         R18 7
      246 DUPTABLE                         R19 K65 [{"Size", "Position", "AnchorPoint", "Image"}]
      247 GETIMPORT                        R20 K47 [UDim2.fromOffset]
      249 LOADN                            R21 20
      250 LOADN                            R22 20
      251 CALL                             R20 2 1
      252 SETTABLEKS                       R20 R19 K26 ["Size"]
      254 GETIMPORT                        R20 K37 [UDim2.fromScale]
      256 LOADK                            R21 K66 [0.5]
      257 LOADK                            R22 K66 [0.5]
      258 CALL                             R20 2 1
      259 SETTABLEKS                       R20 R19 K33 ["Position"]
      261 GETIMPORT                        R20 K68 [Vector2.new]
      263 LOADK                            R21 K66 [0.5]
      264 LOADK                            R22 K66 [0.5]
      265 CALL                             R20 2 1
      266 SETTABLEKS                       R20 R19 K64 ["AnchorPoint"]
      268 JUMPIFNOT                        R8 ; [+2]
      269 LOADK                            R20 K69 ["rbxasset://textures/CompositorDebugger/pause.png"]
      270 JUMP                             ; [+1]
      271 LOADK                            R20 K70 ["rbxasset://textures/CompositorDebugger/play.png"]
      272 SETTABLEKS                       R20 R19 K54 ["Image"]
      274 CALL                             R17 2 1
      275 SETTABLEKS                       R17 R16 K51 ["Icon"]
      277 GETUPVAL                         R17 2
      278 GETTABLEKS                       R17 R17 K14 ["createElement"]
      280 GETUPVAL                         R18 8
      281 DUPTABLE                         R19 K58 [{"Text"}]
      282 LOADK                            R22 K59 ["Tooltips"]
      283 JUMPIFNOT                        R8 ; [+2]
      284 LOADK                            R23 K71 ["Pause"]
      285 JUMP                             ; [+1]
      286 LOADK                            R23 K72 ["Resume"]
      287 NAMECALL                         R20 R2 K61 ["getText"]
      289 CALL                             R20 3 1
      290 SETTABLEKS                       R20 R19 K57 ["Text"]
      292 CALL                             R17 2 1
      293 SETTABLEKS                       R17 R16 K52 ["Tooltip"]
      295 CALL                             R13 3 1
      296 SETTABLEKS                       R13 R12 K19 ["PlayPauseButton"]
      298 GETUPVAL                         R13 2
      299 GETTABLEKS                       R13 R13 K14 ["createElement"]
      301 GETUPVAL                         R14 6
      302 DUPTABLE                         R15 K62 [{"Style", "Size", "LayoutOrder", "OnClick"}]
      303 LOADK                            R16 K44 ["Round"]
      304 SETTABLEKS                       R16 R15 K45 ["Style"]
      306 GETIMPORT                        R16 K47 [UDim2.fromOffset]
      308 LOADN                            R17 20
      309 LOADN                            R18 20
      310 CALL                             R16 2 1
      311 SETTABLEKS                       R16 R15 K26 ["Size"]
      313 LOADN                            R16 4
      314 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      316 GETTABLEKS                       R16 R0 K73 ["onNextClicked"]
      318 SETTABLEKS                       R16 R15 K49 ["OnClick"]
      320 DUPTABLE                         R16 K53 [{"Icon", "Tooltip"}]
      321 GETUPVAL                         R17 2
      322 GETTABLEKS                       R17 R17 K14 ["createElement"]
      324 GETUPVAL                         R18 7
      325 DUPTABLE                         R19 K65 [{"Size", "Position", "AnchorPoint", "Image"}]
      326 GETIMPORT                        R20 K47 [UDim2.fromOffset]
      328 LOADN                            R21 20
      329 LOADN                            R22 20
      330 CALL                             R20 2 1
      331 SETTABLEKS                       R20 R19 K26 ["Size"]
      333 GETIMPORT                        R20 K37 [UDim2.fromScale]
      335 LOADK                            R21 K66 [0.5]
      336 LOADK                            R22 K66 [0.5]
      337 CALL                             R20 2 1
      338 SETTABLEKS                       R20 R19 K33 ["Position"]
      340 GETIMPORT                        R20 K68 [Vector2.new]
      342 LOADK                            R21 K66 [0.5]
      343 LOADK                            R22 K66 [0.5]
      344 CALL                             R20 2 1
      345 SETTABLEKS                       R20 R19 K64 ["AnchorPoint"]
      347 LOADK                            R20 K74 ["rbxasset://textures/CompositorDebugger/next.png"]
      348 SETTABLEKS                       R20 R19 K54 ["Image"]
      350 CALL                             R17 2 1
      351 SETTABLEKS                       R17 R16 K51 ["Icon"]
      353 GETUPVAL                         R17 2
      354 GETTABLEKS                       R17 R17 K14 ["createElement"]
      356 GETUPVAL                         R18 8
      357 DUPTABLE                         R19 K58 [{"Text"}]
      358 LOADK                            R22 K59 ["Tooltips"]
      359 LOADK                            R23 K75 ["NextFrame"]
      360 NAMECALL                         R20 R2 K61 ["getText"]
      362 CALL                             R20 3 1
      363 SETTABLEKS                       R20 R19 K57 ["Text"]
      365 CALL                             R17 2 1
      366 SETTABLEKS                       R17 R16 K52 ["Tooltip"]
      368 CALL                             R13 3 1
      369 SETTABLEKS                       R13 R12 K20 ["Next"]
      371 GETUPVAL                         R13 2
      372 GETTABLEKS                       R13 R13 K14 ["createElement"]
      374 GETUPVAL                         R14 9
      375 DUPTABLE                         R15 K76 [{"Size", "FrameBuffer", "LayoutOrder", "AnchorPoint"}]
      376 GETIMPORT                        R16 K47 [UDim2.fromOffset]
      378 LOADN                            R17 20
      379 LOADN                            R18 20
      380 CALL                             R16 2 1
      381 SETTABLEKS                       R16 R15 K26 ["Size"]
      383 GETTABLEKS                       R16 R1 K2 ["FrameBuffer"]
      385 SETTABLEKS                       R16 R15 K2 ["FrameBuffer"]
      387 LOADN                            R16 5
      388 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
      390 GETIMPORT                        R16 K68 [Vector2.new]
      392 LOADN                            R17 1
      393 LOADK                            R18 K66 [0.5]
      394 CALL                             R16 2 1
      395 SETTABLEKS                       R16 R15 K64 ["AnchorPoint"]
      397 DUPTABLE                         R16 K77 [{"Tooltip"}]
      398 GETUPVAL                         R17 2
      399 GETTABLEKS                       R17 R17 K14 ["createElement"]
      401 GETUPVAL                         R18 8
      402 DUPTABLE                         R19 K58 [{"Text"}]
      403 LOADK                            R22 K59 ["Tooltips"]
      404 LOADK                            R23 K78 ["Settings"]
      405 NAMECALL                         R20 R2 K61 ["getText"]
      407 CALL                             R20 3 1
      408 SETTABLEKS                       R20 R19 K57 ["Text"]
      410 CALL                             R17 2 1
      411 SETTABLEKS                       R17 R16 K52 ["Tooltip"]
      413 CALL                             R13 3 1
      414 SETTABLEKS                       R13 R12 K21 ["SettingsButton"]
      416 CALL                             R9 3 -1
      417 RETURN                           R9 -1

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
