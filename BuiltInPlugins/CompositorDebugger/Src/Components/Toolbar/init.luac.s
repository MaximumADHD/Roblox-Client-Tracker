PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetScrubberOffset"]
        5 LOADNIL                          R2
        6 LOADN                            R3 1
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R8 R9 K4 ["FRAMERATE"]
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
       29 GETTABLEKS                       R8 R3 K8 ["last"]
       31 GETTABLEKS                       R7 R8 K9 ["timestamp"]
       33 GETTABLEKS                       R9 R3 K7 ["first"]
       35 GETTABLEKS                       R8 R9 K9 ["timestamp"]
       37 SUB                              R6 R7 R8
       38 JUMP                             ; [+1]
       39 LOADN                            R6 0
       40 GETUPVAL                         R8 1
       41 LOADK                            R10 K10 ["Padding"]
       42 NAMECALL                         R8 R8 K11 ["GetAttribute"]
       44 CALL                             R8 2 1
       45 GETTABLEKS                       R7 R8 K12 ["Offset"]
       47 GETTABLEKS                       R9 R1 K13 ["HistoryFrame"]
       49 JUMPIFEQKNIL                     R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R9 R10 K14 ["createNextOrder"]
       56 CALL                             R9 0 1
       57 GETUPVAL                         R11 3
       58 GETTABLEKS                       R10 R11 K15 ["createElement"]
       60 GETUPVAL                         R11 4
       61 NEWTABLE                         R12 1 0
       63 GETUPVAL                         R14 3
       64 GETTABLEKS                       R13 R14 K16 ["Tag"]
       66 LOADK                            R14 K17 ["Toolbar X-Fill X-RowS X-Middle"]
       67 SETTABLE                         R14 R12 R13
       68 DUPTABLE                         R13 K24 [{"DebuggerViewModeButton", "Timeline", "Previous", "PlayPauseButton", "Next", "SettingsButton"}]
       69 GETUPVAL                         R15 5
       70 CALL                             R15 0 1
       71 JUMPIFNOT                        R15 ; [+21]
       72 GETUPVAL                         R15 6
       73 CALL                             R15 0 1
       74 JUMPIFNOT                        R15 ; [+18]
       75 GETUPVAL                         R15 3
       76 GETTABLEKS                       R14 R15 K15 ["createElement"]
       78 GETUPVAL                         R15 7
       79 DUPTABLE                         R16 K27 [{"LayoutOrder", "Size"}]
       80 MOVE                             R17 R9
       81 CALL                             R17 0 1
       82 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
       84 GETIMPORT                        R17 K30 [UDim2.fromOffset]
       86 LOADN                            R18 20
       87 LOADN                            R19 20
       88 CALL                             R17 2 1
       89 SETTABLEKS                       R17 R16 K26 ["Size"]
       91 CALL                             R14 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R14
       94 SETTABLEKS                       R14 R13 K18 ["DebuggerViewModeButton"]
       96 JUMPIFNOT                        R3 ; [+90]
       97 GETUPVAL                         R15 3
       98 GETTABLEKS                       R14 R15 K15 ["createElement"]
      100 GETUPVAL                         R15 8
      101 NEWTABLE                         R16 8 0
      103 GETIMPORT                        R17 K32 [UDim2.new]
      105 LOADN                            R18 1
      106 GETUPVAL                         R21 5
      107 CALL                             R21 0 1
      108 JUMPIFNOT                        R21 ; [+2]
      109 LOADN                            R20 5
      110 JUMP                             ; [+1]
      111 LOADN                            R20 4
      112 MULK                             R19 R20 K33 [-25]
      113 LOADN                            R20 1
      114 LOADN                            R21 0
      115 CALL                             R17 4 1
      116 SETTABLEKS                       R17 R16 K26 ["Size"]
      118 SETTABLEKS                       R4 R16 K34 ["Timespan"]
      120 GETUPVAL                         R18 5
      121 CALL                             R18 0 1
      122 JUMPIFNOT                        R18 ; [+3]
      123 MOVE                             R17 R9
      124 CALL                             R17 0 1
      125 JUMP                             ; [+1]
      126 LOADN                            R17 1
      127 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      129 SETTABLEKS                       R7 R16 K35 ["MouseOffset"]
      131 GETUPVAL                         R18 3
      132 GETTABLEKS                       R17 R18 K16 ["Tag"]
      134 LOADK                            R18 K19 ["Timeline"]
      135 SETTABLE                         R18 R16 R17
      136 DUPTABLE                         R17 K38 [{"Scrubber", "BufferBar"}]
      137 GETUPVAL                         R19 3
      138 GETTABLEKS                       R18 R19 K15 ["createElement"]
      140 GETUPVAL                         R19 9
      141 DUPTABLE                         R20 K41 [{"Position", "ZIndex"}]
      142 GETIMPORT                        R21 K43 [UDim2.fromScale]
      144 MOVE                             R22 R5
      145 LOADN                            R23 0
      146 CALL                             R21 2 1
      147 SETTABLEKS                       R21 R20 K39 ["Position"]
      149 LOADN                            R21 2
      150 SETTABLEKS                       R21 R20 K40 ["ZIndex"]
      152 CALL                             R18 2 1
      153 SETTABLEKS                       R18 R17 K36 ["Scrubber"]
      155 GETUPVAL                         R19 3
      156 GETTABLEKS                       R18 R19 K15 ["createElement"]
      158 GETUPVAL                         R19 4
      159 DUPTABLE                         R20 K44 [{"ZIndex", "Size"}]
      160 LOADN                            R21 1
      161 SETTABLEKS                       R21 R20 K40 ["ZIndex"]
      163 GETIMPORT                        R21 K32 [UDim2.new]
      165 DIV                              R23 R6 R4
      166 LOADN                            R24 0
      167 LOADN                            R25 1
      168 FASTCALL                         MATH_CLAMP ; [+2]
      169 GETIMPORT                        R22 K47 [math.clamp]
      171 CALL                             R22 3 1
      172 LOADN                            R23 0
      173 LOADN                            R24 0
      174 GETUPVAL                         R25 1
      175 LOADK                            R27 K48 ["BufferBarHeight"]
      176 NAMECALL                         R25 R25 K11 ["GetAttribute"]
      178 CALL                             R25 2 -1
      179 CALL                             R21 -1 1
      180 SETTABLEKS                       R21 R20 K26 ["Size"]
      182 CALL                             R18 2 1
      183 SETTABLEKS                       R18 R17 K37 ["BufferBar"]
      185 CALL                             R14 3 1
      186 JUMP                             ; [+15]
      187 GETUPVAL                         R15 3
      188 GETTABLEKS                       R14 R15 K15 ["createElement"]
      190 GETUPVAL                         R15 4
      191 DUPTABLE                         R16 K49 [{"Size"}]
      192 GETIMPORT                        R17 K32 [UDim2.new]
      194 LOADN                            R18 1
      195 LOADN                            R19 156
      196 LOADN                            R20 1
      197 LOADN                            R21 0
      198 CALL                             R17 4 1
      199 SETTABLEKS                       R17 R16 K26 ["Size"]
      201 CALL                             R14 2 1
      202 SETTABLEKS                       R14 R13 K19 ["Timeline"]
      204 GETUPVAL                         R15 3
      205 GETTABLEKS                       R14 R15 K15 ["createElement"]
      207 GETUPVAL                         R15 10
      208 NEWTABLE                         R16 8 0
      210 LOADK                            R17 K50 ["Round"]
      211 SETTABLEKS                       R17 R16 K51 ["Style"]
      213 GETIMPORT                        R17 K30 [UDim2.fromOffset]
      215 LOADN                            R18 20
      216 LOADN                            R19 20
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K26 ["Size"]
      220 GETUPVAL                         R18 5
      221 CALL                             R18 0 1
      222 JUMPIFNOT                        R18 ; [+3]
      223 MOVE                             R17 R9
      224 CALL                             R17 0 1
      225 JUMP                             ; [+1]
      226 LOADN                            R17 2
      227 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      229 GETTABLEKS                       R17 R0 K52 ["onPreviousClicked"]
      231 SETTABLEKS                       R17 R16 K53 ["OnClick"]
      233 GETUPVAL                         R18 3
      234 GETTABLEKS                       R17 R18 K16 ["Tag"]
      236 LOADK                            R18 K54 ["MediaButton"]
      237 SETTABLE                         R18 R16 R17
      238 DUPTABLE                         R17 K57 [{"Icon", "Tooltip"}]
      239 GETUPVAL                         R19 3
      240 GETTABLEKS                       R18 R19 K15 ["createElement"]
      242 GETUPVAL                         R19 11
      243 DUPTABLE                         R20 K59 [{"Image"}]
      244 LOADK                            R21 K60 ["rbxasset://textures/CompositorDebugger/previous.png"]
      245 SETTABLEKS                       R21 R20 K58 ["Image"]
      247 CALL                             R18 2 1
      248 SETTABLEKS                       R18 R17 K55 ["Icon"]
      250 GETUPVAL                         R19 3
      251 GETTABLEKS                       R18 R19 K15 ["createElement"]
      253 GETUPVAL                         R19 12
      254 DUPTABLE                         R20 K62 [{"Text"}]
      255 LOADK                            R23 K63 ["Tooltips"]
      256 LOADK                            R24 K64 ["PrevFrame"]
      257 NAMECALL                         R21 R2 K65 ["getText"]
      259 CALL                             R21 3 1
      260 SETTABLEKS                       R21 R20 K61 ["Text"]
      262 CALL                             R18 2 1
      263 SETTABLEKS                       R18 R17 K56 ["Tooltip"]
      265 CALL                             R14 3 1
      266 SETTABLEKS                       R14 R13 K20 ["Previous"]
      268 GETUPVAL                         R15 3
      269 GETTABLEKS                       R14 R15 K15 ["createElement"]
      271 GETUPVAL                         R15 10
      272 DUPTABLE                         R16 K66 [{"Style", "Size", "LayoutOrder", "OnClick"}]
      273 LOADK                            R17 K50 ["Round"]
      274 SETTABLEKS                       R17 R16 K51 ["Style"]
      276 GETIMPORT                        R17 K30 [UDim2.fromOffset]
      278 LOADN                            R18 20
      279 LOADN                            R19 20
      280 CALL                             R17 2 1
      281 SETTABLEKS                       R17 R16 K26 ["Size"]
      283 GETUPVAL                         R18 5
      284 CALL                             R18 0 1
      285 JUMPIFNOT                        R18 ; [+3]
      286 MOVE                             R17 R9
      287 CALL                             R17 0 1
      288 JUMP                             ; [+1]
      289 LOADN                            R17 3
      290 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      292 GETTABLEKS                       R17 R0 K67 ["onPlayPauseClicked"]
      294 SETTABLEKS                       R17 R16 K53 ["OnClick"]
      296 DUPTABLE                         R17 K57 [{"Icon", "Tooltip"}]
      297 GETUPVAL                         R19 3
      298 GETTABLEKS                       R18 R19 K15 ["createElement"]
      300 GETUPVAL                         R19 11
      301 DUPTABLE                         R20 K69 [{"Size", "Position", "AnchorPoint", "Image"}]
      302 GETIMPORT                        R21 K30 [UDim2.fromOffset]
      304 LOADN                            R22 20
      305 LOADN                            R23 20
      306 CALL                             R21 2 1
      307 SETTABLEKS                       R21 R20 K26 ["Size"]
      309 GETIMPORT                        R21 K43 [UDim2.fromScale]
      311 LOADK                            R22 K70 [0.5]
      312 LOADK                            R23 K70 [0.5]
      313 CALL                             R21 2 1
      314 SETTABLEKS                       R21 R20 K39 ["Position"]
      316 GETIMPORT                        R21 K72 [Vector2.new]
      318 LOADK                            R22 K70 [0.5]
      319 LOADK                            R23 K70 [0.5]
      320 CALL                             R21 2 1
      321 SETTABLEKS                       R21 R20 K68 ["AnchorPoint"]
      323 JUMPIFNOT                        R8 ; [+2]
      324 LOADK                            R21 K73 ["rbxasset://textures/CompositorDebugger/pause.png"]
      325 JUMP                             ; [+1]
      326 LOADK                            R21 K74 ["rbxasset://textures/CompositorDebugger/play.png"]
      327 SETTABLEKS                       R21 R20 K58 ["Image"]
      329 CALL                             R18 2 1
      330 SETTABLEKS                       R18 R17 K55 ["Icon"]
      332 GETUPVAL                         R19 3
      333 GETTABLEKS                       R18 R19 K15 ["createElement"]
      335 GETUPVAL                         R19 12
      336 DUPTABLE                         R20 K62 [{"Text"}]
      337 LOADK                            R23 K63 ["Tooltips"]
      338 JUMPIFNOT                        R8 ; [+2]
      339 LOADK                            R24 K75 ["Pause"]
      340 JUMP                             ; [+1]
      341 LOADK                            R24 K76 ["Resume"]
      342 NAMECALL                         R21 R2 K65 ["getText"]
      344 CALL                             R21 3 1
      345 SETTABLEKS                       R21 R20 K61 ["Text"]
      347 CALL                             R18 2 1
      348 SETTABLEKS                       R18 R17 K56 ["Tooltip"]
      350 CALL                             R14 3 1
      351 SETTABLEKS                       R14 R13 K21 ["PlayPauseButton"]
      353 GETUPVAL                         R15 3
      354 GETTABLEKS                       R14 R15 K15 ["createElement"]
      356 GETUPVAL                         R15 10
      357 DUPTABLE                         R16 K66 [{"Style", "Size", "LayoutOrder", "OnClick"}]
      358 LOADK                            R17 K50 ["Round"]
      359 SETTABLEKS                       R17 R16 K51 ["Style"]
      361 GETIMPORT                        R17 K30 [UDim2.fromOffset]
      363 LOADN                            R18 20
      364 LOADN                            R19 20
      365 CALL                             R17 2 1
      366 SETTABLEKS                       R17 R16 K26 ["Size"]
      368 GETUPVAL                         R18 5
      369 CALL                             R18 0 1
      370 JUMPIFNOT                        R18 ; [+3]
      371 MOVE                             R17 R9
      372 CALL                             R17 0 1
      373 JUMP                             ; [+1]
      374 LOADN                            R17 4
      375 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      377 GETTABLEKS                       R17 R0 K77 ["onNextClicked"]
      379 SETTABLEKS                       R17 R16 K53 ["OnClick"]
      381 DUPTABLE                         R17 K57 [{"Icon", "Tooltip"}]
      382 GETUPVAL                         R19 3
      383 GETTABLEKS                       R18 R19 K15 ["createElement"]
      385 GETUPVAL                         R19 11
      386 DUPTABLE                         R20 K69 [{"Size", "Position", "AnchorPoint", "Image"}]
      387 GETIMPORT                        R21 K30 [UDim2.fromOffset]
      389 LOADN                            R22 20
      390 LOADN                            R23 20
      391 CALL                             R21 2 1
      392 SETTABLEKS                       R21 R20 K26 ["Size"]
      394 GETIMPORT                        R21 K43 [UDim2.fromScale]
      396 LOADK                            R22 K70 [0.5]
      397 LOADK                            R23 K70 [0.5]
      398 CALL                             R21 2 1
      399 SETTABLEKS                       R21 R20 K39 ["Position"]
      401 GETIMPORT                        R21 K72 [Vector2.new]
      403 LOADK                            R22 K70 [0.5]
      404 LOADK                            R23 K70 [0.5]
      405 CALL                             R21 2 1
      406 SETTABLEKS                       R21 R20 K68 ["AnchorPoint"]
      408 LOADK                            R21 K78 ["rbxasset://textures/CompositorDebugger/next.png"]
      409 SETTABLEKS                       R21 R20 K58 ["Image"]
      411 CALL                             R18 2 1
      412 SETTABLEKS                       R18 R17 K55 ["Icon"]
      414 GETUPVAL                         R19 3
      415 GETTABLEKS                       R18 R19 K15 ["createElement"]
      417 GETUPVAL                         R19 12
      418 DUPTABLE                         R20 K62 [{"Text"}]
      419 LOADK                            R23 K63 ["Tooltips"]
      420 LOADK                            R24 K79 ["NextFrame"]
      421 NAMECALL                         R21 R2 K65 ["getText"]
      423 CALL                             R21 3 1
      424 SETTABLEKS                       R21 R20 K61 ["Text"]
      426 CALL                             R18 2 1
      427 SETTABLEKS                       R18 R17 K56 ["Tooltip"]
      429 CALL                             R14 3 1
      430 SETTABLEKS                       R14 R13 K22 ["Next"]
      432 GETUPVAL                         R15 3
      433 GETTABLEKS                       R14 R15 K15 ["createElement"]
      435 GETUPVAL                         R15 13
      436 DUPTABLE                         R16 K80 [{"Size", "FrameBuffer", "LayoutOrder", "AnchorPoint"}]
      437 GETIMPORT                        R17 K30 [UDim2.fromOffset]
      439 LOADN                            R18 20
      440 LOADN                            R19 20
      441 CALL                             R17 2 1
      442 SETTABLEKS                       R17 R16 K26 ["Size"]
      444 GETTABLEKS                       R17 R1 K2 ["FrameBuffer"]
      446 SETTABLEKS                       R17 R16 K2 ["FrameBuffer"]
      448 GETUPVAL                         R18 5
      449 CALL                             R18 0 1
      450 JUMPIFNOT                        R18 ; [+3]
      451 MOVE                             R17 R9
      452 CALL                             R17 0 1
      453 JUMP                             ; [+1]
      454 LOADN                            R17 5
      455 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      457 GETIMPORT                        R17 K72 [Vector2.new]
      459 LOADN                            R18 1
      460 LOADK                            R19 K70 [0.5]
      461 CALL                             R17 2 1
      462 SETTABLEKS                       R17 R16 K68 ["AnchorPoint"]
      464 DUPTABLE                         R17 K81 [{"Tooltip"}]
      465 GETUPVAL                         R19 3
      466 GETTABLEKS                       R18 R19 K15 ["createElement"]
      468 GETUPVAL                         R19 12
      469 DUPTABLE                         R20 K62 [{"Text"}]
      470 LOADK                            R23 K63 ["Tooltips"]
      471 LOADK                            R24 K82 ["Settings"]
      472 NAMECALL                         R21 R2 K65 ["getText"]
      474 CALL                             R21 3 1
      475 SETTABLEKS                       R21 R20 K61 ["Text"]
      477 CALL                             R18 2 1
      478 SETTABLEKS                       R18 R17 K56 ["Tooltip"]
      480 CALL                             R14 3 1
      481 SETTABLEKS                       R14 R13 K23 ["SettingsButton"]
      483 CALL                             R10 3 -1
      484 RETURN                           R10 -1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"HistoryFrame", "HistoryOffset"}]
        1 GETTABLEKS                       R4 R0 K3 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["HistoryFrame"]
        5 SETTABLEKS                       R3 R2 K0 ["HistoryFrame"]
        7 GETTABLEKS                       R4 R0 K3 ["Status"]
        9 GETTABLEKS                       R3 R4 K1 ["HistoryOffset"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R9 R0 K11 ["Src"]
       39 GETTABLEKS                       R8 R9 K12 ["Components"]
       41 GETTABLEKS                       R7 R8 K13 ["Toolbar"]
       43 GETTABLEKS                       R6 R7 K14 ["DebuggerViewModeButton"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K6 ["Packages"]
       50 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K11 ["Src"]
       57 GETTABLEKS                       R9 R10 K16 ["Flags"]
       59 GETTABLEKS                       R8 R9 K17 ["getFFlagCompositorNodeView"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K11 ["Src"]
       66 GETTABLEKS                       R10 R11 K16 ["Flags"]
       68 GETTABLEKS                       R9 R10 K18 ["getFFlagCompositorNodeViewButton"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R2 K19 ["ContextServices"]
       73 GETTABLEKS                       R10 R9 K20 ["withContext"]
       75 GETTABLEKS                       R11 R9 K21 ["Analytics"]
       77 GETTABLEKS                       R12 R9 K22 ["Localization"]
       79 GETTABLEKS                       R13 R2 K23 ["UI"]
       81 GETTABLEKS                       R14 R13 K24 ["Button"]
       83 GETTABLEKS                       R15 R13 K25 ["Image"]
       85 GETTABLEKS                       R16 R13 K26 ["Pane"]
       87 GETTABLEKS                       R17 R13 K27 ["Tooltip"]
       89 GETTABLEKS                       R19 R0 K11 ["Src"]
       91 GETTABLEKS                       R18 R19 K28 ["Thunks"]
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R20 R18 K29 ["SetScrubberOffset"]
       97 CALL                             R19 1 1
       98 GETIMPORT                        R20 K5 [require]
      100 GETIMPORT                        R22 K1 [script]
      102 GETTABLEKS                       R21 R22 K30 ["scrubber"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K5 [require]
      107 GETIMPORT                        R23 K1 [script]
      109 GETTABLEKS                       R22 R23 K31 ["settingsButton"]
      111 CALL                             R21 1 1
      112 GETIMPORT                        R22 K5 [require]
      114 GETIMPORT                        R24 K1 [script]
      116 GETTABLEKS                       R23 R24 K32 ["timeline"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K5 [require]
      121 GETIMPORT                        R25 K1 [script]
      123 GETTABLEKS                       R24 R25 K33 ["styles"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K5 [require]
      128 GETTABLEKS                       R26 R0 K11 ["Src"]
      130 GETTABLEKS                       R25 R26 K34 ["Types"]
      132 CALL                             R24 1 1
      133 GETTABLEKS                       R25 R1 K35 ["Constants"]
      135 GETTABLEKS                       R26 R3 K36 ["PureComponent"]
      137 LOADK                            R28 K13 ["Toolbar"]
      138 NAMECALL                         R26 R26 K37 ["extend"]
      140 CALL                             R26 2 1
      141 DUPCLOSURE                       R27 K38 [PROTO_3]
      142 SETTABLEKS                       R27 R26 K39 ["init"]
      144 DUPCLOSURE                       R27 K40 [PROTO_4]
      145 CAPTURE                          VAL R25
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R16
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R21
      159 SETTABLEKS                       R27 R26 K41 ["render"]
      161 MOVE                             R27 R10
      162 DUPTABLE                         R28 K42 [{"Analytics", "Localization"}]
      163 SETTABLEKS                       R11 R28 K21 ["Analytics"]
      165 SETTABLEKS                       R12 R28 K22 ["Localization"]
      167 CALL                             R27 1 1
      168 MOVE                             R28 R26
      169 CALL                             R27 1 1
      170 MOVE                             R26 R27
      171 DUPCLOSURE                       R27 K43 [PROTO_5]
      172 DUPCLOSURE                       R28 K44 [PROTO_7]
      173 CAPTURE                          VAL R19
      174 GETTABLEKS                       R29 R4 K45 ["connect"]
      176 MOVE                             R30 R27
      177 MOVE                             R31 R28
      178 CALL                             R29 2 1
      179 MOVE                             R30 R26
      180 CALL                             R29 1 1
      181 MOVE                             R26 R29
      182 RETURN                           R26 1
