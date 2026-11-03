PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["frameIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["frameIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQ                      R3 R1 ; [+5]
        3 GETUPVAL                         R4 1
        4 LENGTH                           R3 R4
        5 ADDK                             R2 R3 K0 [1]
        6 RETURN                           R2 1
        7 MOVE                             R2 R0
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onMarkerPressed"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["frameIndex"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onResizePressed"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["frameIndex"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["frameIndex"]
        3 GETTABLE                         R2 R0 R3
        4 ORK                              R1 R2 K0 [False]
        5 GETUPVAL                         R2 1
        6 JUMPIFNOTEQ                      R1 R2 ; [+2]
        8 RETURN                           R0 1
        9 GETIMPORT                        R1 K4 [table.clone]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K1 ["frameIndex"]
       16 GETUPVAL                         R3 1
       17 SETTABLE                         R3 R1 R2
       18 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 GETTABLEKS                       R4 R0 K1 ["borderColor"]
       10 GETTABLEKS                       R5 R0 K2 ["borderTransparency"]
       12 GETTABLEKS                       R6 R1 K3 ["Color"]
       14 GETTABLEKS                       R6 R6 K4 ["Surface"]
       16 GETTABLEKS                       R6 R6 K5 ["Surface_100"]
       18 GETTABLEKS                       R6 R6 K6 ["Color3"]
       20 GETTABLEKS                       R7 R1 K3 ["Color"]
       22 GETTABLEKS                       R7 R7 K4 ["Surface"]
       24 GETTABLEKS                       R7 R7 K7 ["Surface_200"]
       26 GETTABLEKS                       R7 R7 K6 ["Color3"]
       28 GETTABLEKS                       R8 R0 K8 ["timelineHeight"]
       30 GETTABLEKS                       R9 R0 K9 ["keyframeAreaHeight"]
       32 JUMPIF                           R9 ; [+6]
       33 GETTABLEKS                       R11 R0 K11 ["trackHeight"]
       35 GETTABLEKS                       R12 R0 K8 ["timelineHeight"]
       37 SUB                              R10 R11 R12
       38 SUBK                             R9 R10 K10 [2]
       39 GETTABLEKS                       R10 R0 K11 ["trackHeight"]
       41 GETTABLEKS                       R11 R0 K12 ["duration"]
       43 LOADN                            R12 0
       44 JUMPIFNOTLE                      R11 R12 ; [+3]
       46 LOADNIL                          R12
       47 RETURN                           R12 1
       48 NEWTABLE                         R12 4 0
       50 GETUPVAL                         R13 2
       51 GETUPVAL                         R14 3
       52 DUPTABLE                         R15 K18 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       53 GETIMPORT                        R16 K21 [UDim2.new]
       55 LOADN                            R17 1
       56 LOADN                            R18 -2
       57 LOADN                            R19 0
       58 MOVE                             R20 R8
       59 CALL                             R16 4 1
       60 SETTABLEKS                       R16 R15 K13 ["Size"]
       62 GETIMPORT                        R16 K23 [UDim2.fromOffset]
       64 LOADN                            R17 1
       65 LOADN                            R18 1
       66 CALL                             R16 2 1
       67 SETTABLEKS                       R16 R15 K14 ["Position"]
       69 DUPTABLE                         R16 K24 [{"Color3"}]
       70 SETTABLEKS                       R7 R16 K6 ["Color3"]
       72 SETTABLEKS                       R16 R15 K15 ["backgroundStyle"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K25 ["TimelineRow"]
       77 GETUPVAL                         R13 2
       78 GETUPVAL                         R14 3
       79 DUPTABLE                         R15 K18 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0}]
       80 GETIMPORT                        R16 K21 [UDim2.new]
       82 LOADN                            R17 1
       83 LOADN                            R18 -2
       84 LOADN                            R19 0
       85 MOVE                             R20 R9
       86 CALL                             R16 4 1
       87 SETTABLEKS                       R16 R15 K13 ["Size"]
       89 GETIMPORT                        R16 K23 [UDim2.fromOffset]
       91 LOADN                            R17 1
       92 ADDK                             R18 R8 K26 [1]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K14 ["Position"]
       96 DUPTABLE                         R16 K24 [{"Color3"}]
       97 SETTABLEKS                       R6 R16 K6 ["Color3"]
       99 SETTABLEKS                       R16 R15 K15 ["backgroundStyle"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K27 ["KeyframeArea"]
      104 GETUPVAL                         R13 2
      105 GETUPVAL                         R14 3
      106 DUPTABLE                         R15 K29 [{["Size"], ["Position"], ["backgroundStyle"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      107 GETIMPORT                        R16 K21 [UDim2.new]
      109 LOADN                            R17 1
      110 LOADN                            R18 0
      111 LOADN                            R19 0
      112 LOADN                            R20 1
      113 CALL                             R16 4 1
      114 SETTABLEKS                       R16 R15 K13 ["Size"]
      116 GETIMPORT                        R16 K23 [UDim2.fromOffset]
      118 LOADN                            R17 0
      119 MOVE                             R18 R8
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K14 ["Position"]
      123 DUPTABLE                         R16 K31 [{"Color3", "Transparency"}]
      124 SETTABLEKS                       R4 R16 K6 ["Color3"]
      126 SETTABLEKS                       R5 R16 K30 ["Transparency"]
      128 SETTABLEKS                       R16 R15 K15 ["backgroundStyle"]
      130 CALL                             R13 2 1
      131 SETTABLEKS                       R13 R12 K32 ["HorizontalSeparator"]
      133 GETTABLEKS                       R13 R0 K33 ["getTickInterval"]
      135 MOVE                             R14 R11
      136 CALL                             R13 1 1
      137 DIV                              R15 R11 R13
      138 FASTCALL1                        MATH_CEIL R15 ; [+2]
      139 GETIMPORT                        R14 K36 [math.ceil]
      141 CALL                             R14 1 1
      142 LOADN                            R17 0
      143 SUBK                             R15 R14 K26 [1]
      144 LOADN                            R16 1
      145 FORNPREP                         R15
      146 MUL                              R18 R17 R13
      147 DIV                              R19 R18 R11
      148 GETTABLEKS                       R20 R0 K37 ["formatTickLabel"]
      150 MOVE                             R21 R18
      151 MOVE                             R22 R13
      152 CALL                             R20 2 1
      153 LOADK                            R22 K38 ["label_"]
      154 FASTCALL1                        TOSTRING R17 ; [+3]
      155 MOVE                             R24 R17
      156 GETIMPORT                        R23 K40 [tostring]
      158 CALL                             R23 1 1
      159 CONCAT                           R21 R22 R23
      160 GETUPVAL                         R22 2
      161 GETUPVAL                         R23 4
      162 DUPTABLE                         R24 K45 [{["tag"] = "content-muted text-align-x-left auto-y", ["Position"], ["Text"], ["fontStyle"], ["ZIndex"] = 2}]
      163 GETIMPORT                        R25 K21 [UDim2.new]
      165 MOVE                             R26 R19
      166 LOADN                            R27 5
      167 LOADN                            R28 0
      168 LOADN                            R29 0
      169 CALL                             R25 4 1
      170 SETTABLEKS                       R25 R24 K14 ["Position"]
      172 SETTABLEKS                       R20 R24 K43 ["Text"]
      174 DUPTABLE                         R25 K48 [{["FontSize"] = 16}]
      175 SETTABLEKS                       R25 R24 K44 ["fontStyle"]
      177 CALL                             R22 2 1
      178 SETTABLE                         R22 R12 R21
      179 LOADN                            R21 0
      180 JUMPIFNOTLT                      R21 R17 ; [+43]
      182 LOADK                            R22 K49 ["divider_"]
      183 FASTCALL1                        TOSTRING R17 ; [+3]
      184 MOVE                             R24 R17
      185 GETIMPORT                        R23 K40 [tostring]
      187 CALL                             R23 1 1
      188 CONCAT                           R21 R22 R23
      189 GETUPVAL                         R22 2
      190 GETUPVAL                         R23 3
      191 DUPTABLE                         R24 K51 [{["Size"], ["Position"], ["AnchorPoint"], ["backgroundStyle"], ["BorderSizePixel"] = 0, ["ZIndex"] = 2}]
      192 GETIMPORT                        R25 K21 [UDim2.new]
      194 LOADN                            R26 0
      195 LOADN                            R27 1
      196 LOADN                            R28 1
      197 LOADN                            R29 0
      198 CALL                             R25 4 1
      199 SETTABLEKS                       R25 R24 K13 ["Size"]
      201 GETIMPORT                        R25 K53 [UDim2.fromScale]
      203 MOVE                             R26 R19
      204 LOADN                            R27 0
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K14 ["Position"]
      208 GETIMPORT                        R25 K55 [Vector2.new]
      210 LOADK                            R26 K56 [0.5]
      211 LOADN                            R27 0
      212 CALL                             R25 2 1
      213 SETTABLEKS                       R25 R24 K50 ["AnchorPoint"]
      215 DUPTABLE                         R25 K31 [{"Color3", "Transparency"}]
      216 SETTABLEKS                       R4 R25 K6 ["Color3"]
      218 SETTABLEKS                       R5 R25 K30 ["Transparency"]
      220 SETTABLEKS                       R25 R24 K15 ["backgroundStyle"]
      222 CALL                             R22 2 1
      223 SETTABLE                         R22 R12 R21
      224 FORNLOOP                         R15
      225 GETTABLEKS                       R15 R0 K57 ["markers"]
      227 JUMPIFNOT                        R15 ; [+176]
      228 LOADK                            R17 K56 [0.5]
      229 MUL                              R16 R17 R9
      230 ADD                              R15 R8 R16
      231 GETTABLEKS                       R16 R0 K58 ["dragPreview"]
      233 JUMPIFNOT                        R16 ; [+3]
      234 GETTABLEKS                       R17 R16 K59 ["frameIndex"]
      236 JUMP                             ; [+2]
      237 GETTABLEKS                       R17 R0 K60 ["selectedFrameIndex"]
      239 GETIMPORT                        R18 K63 [table.clone]
      241 GETTABLEKS                       R19 R0 K57 ["markers"]
      243 CALL                             R18 1 1
      244 GETIMPORT                        R19 K65 [table.sort]
      246 MOVE                             R20 R18
      247 DUPCLOSURE                       R21 K66 [PROTO_0]
      248 CALL                             R19 2 0
      249 NEWCLOSURE                       R19 P1
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R18
      252 LOADNIL                          R20
      253 LOADN                            R21 0
      254 MOVE                             R22 R18
      255 LOADNIL                          R23
      256 LOADNIL                          R24
      257 FORGPREP                         R22
      258 GETTABLEKS                       R28 R26 K59 ["frameIndex"]
      260 JUMPIFNOTEQ                      R17 R28 ; [+4]
      262 LENGTH                           R29 R18
      263 ADDK                             R27 R29 K26 [1]
      264 JUMP                             ; [+1]
      265 MOVE                             R27 R25
      266 GETTABLEKS                       R29 R26 K59 ["frameIndex"]
      268 GETTABLE                         R28 R2 R29
      269 JUMPIFNOT                        R28 ; [+5]
      270 JUMPIFNOTLT                      R21 R27 ; [+4]
      272 GETTABLEKS                       R20 R26 K59 ["frameIndex"]
      274 MOVE                             R21 R27
      275 FORGLOOP                         R22 2 ; [-18]
      277 MOVE                             R22 R18
      278 LOADNIL                          R23
      279 LOADNIL                          R24
      280 FORGPREP                         R22
      281 JUMPIFEQKNIL                     R16 ; [+9]
      283 GETTABLEKS                       R28 R16 K59 ["frameIndex"]
      285 GETTABLEKS                       R29 R26 K59 ["frameIndex"]
      287 JUMPIFNOTEQ                      R28 R29 ; [+3]
      289 MOVE                             R27 R16
      290 JUMP                             ; [+1]
      291 LOADNIL                          R27
      292 JUMPIFEQKNIL                     R27 ; [+4]
      294 GETTABLEKS                       R28 R27 K67 ["bounds"]
      296 JUMP                             ; [+2]
      297 GETTABLEKS                       R28 R26 K67 ["bounds"]
      299 GETTABLEKS                       R30 R26 K59 ["frameIndex"]
      301 JUMPIFEQ                         R17 R30 ; [+2]
      303 LOADB                            R29 0 +1
      304 LOADB                            R29 1
      305 GETTABLEKS                       R31 R26 K59 ["frameIndex"]
      307 JUMPIFNOTEQ                      R17 R31 ; [+4]
      309 LENGTH                           R32 R18
      310 ADDK                             R30 R32 K26 [1]
      311 JUMP                             ; [+1]
      312 MOVE                             R30 R25
      313 LOADK                            R31 K68 ["marker_%*"]
      314 GETTABLEKS                       R33 R26 K59 ["frameIndex"]
      316 NAMECALL                         R31 R31 K69 ["format"]
      318 CALL                             R31 2 1
      319 GETUPVAL                         R32 2
      320 GETUPVAL                         R33 5
      321 DUPTABLE                         R34 K79 [{"bounds", "duration", "yCenter", "color", "isSelected", "isHovered", "zIndex", "draggedEdge", "onMovePressed", "onResizePressed", "onHoverChanged"}]
      322 SETTABLEKS                       R28 R34 K67 ["bounds"]
      324 SETTABLEKS                       R11 R34 K12 ["duration"]
      326 SETTABLEKS                       R15 R34 K70 ["yCenter"]
      328 GETTABLEKS                       R36 R26 K80 ["isEdited"]
      330 JUMPIFNOT                        R36 ; [+9]
      331 GETTABLEKS                       R35 R1 K3 ["Color"]
      333 GETTABLEKS                       R35 R35 K81 ["System"]
      335 GETTABLEKS                       R35 R35 K82 ["Alert"]
      337 GETTABLEKS                       R35 R35 K6 ["Color3"]
      339 JUMP                             ; [+8]
      340 GETTABLEKS                       R35 R1 K3 ["Color"]
      342 GETTABLEKS                       R35 R35 K83 ["Content"]
      344 GETTABLEKS                       R35 R35 K84 ["Muted"]
      346 GETTABLEKS                       R35 R35 K6 ["Color3"]
      348 SETTABLEKS                       R35 R34 K71 ["color"]
      350 SETTABLEKS                       R29 R34 K72 ["isSelected"]
      352 GETTABLEKS                       R36 R26 K59 ["frameIndex"]
      354 JUMPIFEQ                         R20 R36 ; [+2]
      356 LOADB                            R35 0 +1
      357 LOADB                            R35 1
      358 SETTABLEKS                       R35 R34 K73 ["isHovered"]
      360 ADDK                             R35 R30 K10 [2]
      361 SETTABLEKS                       R35 R34 K74 ["zIndex"]
      363 JUMPIFEQKNIL                     R27 ; [+8]
      365 GETTABLEKS                       R36 R27 K85 ["kind"]
      367 JUMPIFEQKS                       R36 K86 ["move"] ; [+4]
      369 GETTABLEKS                       R35 R27 K85 ["kind"]
      371 JUMP                             ; [+1]
      372 LOADNIL                          R35
      373 SETTABLEKS                       R35 R34 K75 ["draggedEdge"]
      375 GETTABLEKS                       R36 R0 K87 ["onMarkerPressed"]
      377 JUMPIFNOT                        R36 ; [+4]
      378 NEWCLOSURE                       R35 P2
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R26
      381 JUMP                             ; [+1]
      382 LOADNIL                          R35
      383 SETTABLEKS                       R35 R34 K76 ["onMovePressed"]
      385 GETTABLEKS                       R36 R0 K77 ["onResizePressed"]
      387 JUMPIFNOT                        R36 ; [+4]
      388 NEWCLOSURE                       R35 P3
      389 CAPTURE                          VAL R0
      390 CAPTURE                          VAL R26
      391 JUMP                             ; [+1]
      392 LOADNIL                          R35
      393 SETTABLEKS                       R35 R34 K77 ["onResizePressed"]
      395 NEWCLOSURE                       R35 P4
      396 CAPTURE                          VAL R3
      397 CAPTURE                          VAL R26
      398 SETTABLEKS                       R35 R34 K78 ["onHoverChanged"]
      400 CALL                             R32 2 1
      401 SETTABLE                         R32 R12 R31
      402 FORGLOOP                         R22 2 ; [-122]
      404 GETUPVAL                         R15 2
      405 GETUPVAL                         R16 3
      406 DUPTABLE                         R17 K88 [{"Size"}]
      407 GETIMPORT                        R18 K21 [UDim2.new]
      409 LOADN                            R19 1
      410 LOADN                            R20 0
      411 LOADN                            R21 0
      412 MOVE                             R22 R10
      413 CALL                             R18 4 1
      414 SETTABLEKS                       R18 R17 K13 ["Size"]
      416 MOVE                             R18 R12
      417 CALL                             R15 3 -1
      418 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["KeyframeInterval"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["AnimationGen"]
       29 GETTABLEKS                       R5 R5 K11 ["Posing"]
       31 GETTABLEKS                       R5 R5 K12 ["PoseInterval"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R1 K13 ["React"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R7 K1 [script]
       43 GETTABLEKS                       R7 R7 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K14 ["usePoseIntervalDrag"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R2 K15 ["Text"]
       50 GETTABLEKS                       R8 R2 K16 ["View"]
       52 GETTABLEKS                       R9 R2 K17 ["Hooks"]
       54 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       56 GETTABLEKS                       R10 R5 K19 ["createElement"]
       58 DUPCLOSURE                       R11 K20 [PROTO_6]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R3
       65 RETURN                           R11 1
