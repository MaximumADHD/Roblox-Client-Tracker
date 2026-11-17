PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["mock"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 1
        7 JUMP                             ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["new"]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 CALL                             R1 2 1
       14 GETUPVAL                         R4 3
       15 NAMECALL                         R2 R1 K2 ["extend"]
       17 CALL                             R2 2 1
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleModifier"]
       25 GETTABLEKS                       R5 R2 K11 ["Style"]
       27 GETTABLEKS                       R6 R5 K12 ["Themes"]
       29 GETTABLEKS                       R6 R6 K13 ["StudioTheme"]
       31 GETTABLEKS                       R7 R5 K14 ["StyleKey"]
       33 GETTABLEKS                       R8 R5 K15 ["Colors"]
       35 GETTABLEKS                       R9 R2 K16 ["UI"]
       37 GETTABLEKS                       R10 R9 K17 ["Box"]
       39 GETTABLEKS                       R11 R9 K18 ["RoundBox"]
       41 GETTABLEKS                       R12 R9 K19 ["Image"]
       43 GETTABLEKS                       R13 R5 K12 ["Themes"]
       45 GETTABLEKS                       R13 R13 K20 ["LightTheme"]
       47 GETTABLEKS                       R14 R5 K12 ["Themes"]
       49 GETTABLEKS                       R14 R14 K21 ["DarkTheme"]
       51 GETTABLEKS                       R15 R5 K22 ["getRawComponentStyle"]
       53 GETTABLEKS                       R16 R5 K23 ["ComponentSymbols"]
       55 GETTABLEKS                       R17 R2 K24 ["Dash"]
       57 GETTABLEKS                       R18 R17 K25 ["join"]
       59 GETTABLEKS                       R19 R1 K26 ["Dictionary"]
       61 GETTABLEKS                       R19 R19 K25 ["join"]
       63 MOVE                             R20 R13
       64 NEWTABLE                         R21 64 0
       66 GETTABLEKS                       R22 R7 K27 ["DialogButtonTextDisabled"]
       68 GETIMPORT                        R23 K30 [Color3.fromRGB]
       70 LOADN                            R24 184
       71 LOADN                            R25 184
       72 LOADN                            R26 184
       73 CALL                             R23 3 1
       74 SETTABLE                         R23 R21 R22
       75 GETTABLEKS                       R22 R7 K31 ["TrackShadedBackgroundColor"]
       77 GETIMPORT                        R23 K30 [Color3.fromRGB]
       79 LOADN                            R24 243
       80 LOADN                            R25 243
       81 LOADN                            R26 243
       82 CALL                             R23 3 1
       83 SETTABLE                         R23 R21 R22
       84 GETTABLEKS                       R22 R7 K32 ["TrackTitleBackgroundColor"]
       86 GETIMPORT                        R23 K30 [Color3.fromRGB]
       88 LOADN                            R24 227
       89 LOADN                            R25 227
       90 LOADN                            R26 227
       91 CALL                             R23 3 1
       92 SETTABLE                         R23 R21 R22
       93 GETTABLEKS                       R22 R7 K33 ["TrackPrimaryBackgroundColor"]
       95 GETIMPORT                        R23 K30 [Color3.fromRGB]
       97 LOADN                            R24 243
       98 LOADN                            R25 243
       99 LOADN                            R26 243
      100 CALL                             R23 3 1
      101 SETTABLE                         R23 R21 R22
      102 GETTABLEKS                       R22 R7 K34 ["TrackButtonColor"]
      104 GETIMPORT                        R23 K30 [Color3.fromRGB]
      106 LOADN                            R24 136
      107 LOADN                            R25 136
      108 LOADN                            R26 136
      109 CALL                             R23 3 1
      110 SETTABLE                         R23 R21 R22
      111 GETTABLEKS                       R22 R7 K35 ["TrackHoveredButtonColor"]
      113 GETTABLEKS                       R23 R8 K36 ["Blue"]
      115 SETTABLE                         R23 R21 R22
      116 GETTABLEKS                       R22 R7 K37 ["TrackAddButtonColor"]
      118 GETTABLEKS                       R23 R8 K38 ["Gray_Light"]
      120 SETTABLE                         R23 R21 R22
      121 GETTABLEKS                       R22 R7 K39 ["TrackHoveredAddButtonColor"]
      123 GETTABLEKS                       R23 R8 K36 ["Blue"]
      125 SETTABLE                         R23 R21 R22
      126 GETTABLEKS                       R22 R7 K40 ["TrackPlusIconColor"]
      128 GETIMPORT                        R23 K30 [Color3.fromRGB]
      130 LOADN                            R24 82
      131 LOADN                            R25 82
      132 LOADN                            R26 82
      133 CALL                             R23 3 1
      134 SETTABLE                         R23 R21 R22
      135 GETTABLEKS                       R22 R7 K41 ["TimelineDimmedColor"]
      137 GETTABLEKS                       R23 R8 K38 ["Gray_Light"]
      139 SETTABLE                         R23 R21 R22
      140 GETTABLEKS                       R22 R7 K42 ["TimelineBackgroundColor"]
      142 GETIMPORT                        R23 K30 [Color3.fromRGB]
      144 LOADN                            R24 243
      145 LOADN                            R25 243
      146 LOADN                            R26 243
      147 CALL                             R23 3 1
      148 SETTABLE                         R23 R21 R22
      149 GETTABLEKS                       R22 R7 K43 ["KeyframePrimaryClusterColor"]
      151 GETIMPORT                        R23 K30 [Color3.fromRGB]
      153 LOADN                            R24 136
      154 LOADN                            R25 136
      155 LOADN                            R26 136
      156 CALL                             R23 3 1
      157 SETTABLE                         R23 R21 R22
      158 GETTABLEKS                       R22 R7 K44 ["EventMarkerImageColor"]
      160 GETIMPORT                        R23 K30 [Color3.fromRGB]
      162 LOADN                            R24 184
      163 LOADN                            R25 184
      164 LOADN                            R26 184
      165 CALL                             R23 3 1
      166 SETTABLE                         R23 R21 R22
      167 GETTABLEKS                       R22 R7 K45 ["EventMarkerBorderColor"]
      169 GETIMPORT                        R23 K30 [Color3.fromRGB]
      171 LOADN                            R24 136
      172 LOADN                            R25 136
      173 LOADN                            R26 136
      174 CALL                             R23 3 1
      175 SETTABLE                         R23 R21 R22
      176 GETTABLEKS                       R22 R7 K46 ["ScrollBarControl"]
      178 GETTABLEKS                       R23 R8 K47 ["White"]
      180 SETTABLE                         R23 R21 R22
      181 GETTABLEKS                       R22 R7 K48 ["ScrollBarHover"]
      183 GETIMPORT                        R23 K30 [Color3.fromRGB]
      185 LOADN                            R24 231
      186 LOADN                            R25 240
      187 LOADN                            R26 250
      188 CALL                             R23 3 1
      189 SETTABLE                         R23 R21 R22
      190 GETTABLEKS                       R22 R7 K49 ["ScrollBarPressed"]
      192 GETIMPORT                        R23 K30 [Color3.fromRGB]
      194 LOADN                            R24 224
      195 LOADN                            R25 224
      196 LOADN                            R26 224
      197 CALL                             R23 3 1
      198 SETTABLE                         R23 R21 R22
      199 GETTABLEKS                       R22 R7 K50 ["StartScreenDarkTextColor"]
      201 GETTABLEKS                       R23 R8 K47 ["White"]
      203 SETTABLE                         R23 R21 R22
      204 GETTABLEKS                       R22 R7 K51 ["IKHeaderColor"]
      206 GETIMPORT                        R23 K30 [Color3.fromRGB]
      208 LOADN                            R24 243
      209 LOADN                            R25 243
      210 LOADN                            R26 243
      211 CALL                             R23 3 1
      212 SETTABLE                         R23 R21 R22
      213 GETTABLEKS                       R22 R7 K52 ["IKHeaderBorder"]
      215 GETIMPORT                        R23 K30 [Color3.fromRGB]
      217 LOADN                            R24 243
      218 LOADN                            R25 243
      219 LOADN                            R26 243
      220 CALL                             R23 3 1
      221 SETTABLE                         R23 R21 R22
      222 GETTABLEKS                       R22 R7 K53 ["KeyframePrimaryBackgroundColor"]
      224 GETTABLEKS                       R23 R8 K47 ["White"]
      226 SETTABLE                         R23 R21 R22
      227 GETTABLEKS                       R22 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
      229 GETTABLEKS                       R23 R8 K47 ["White"]
      231 SETTABLE                         R23 R21 R22
      232 GETTABLEKS                       R22 R7 K55 ["KeyframeErrorBackgroundColor"]
      234 GETIMPORT                        R23 K30 [Color3.fromRGB]
      236 LOADN                            R24 255
      237 LOADN                            R25 161
      238 LOADN                            R26 161
      239 CALL                             R23 3 1
      240 SETTABLE                         R23 R21 R22
      241 GETTABLEKS                       R22 R7 K56 ["KeyframeErrorBorderColor"]
      243 GETIMPORT                        R23 K30 [Color3.fromRGB]
      245 LOADN                            R24 168
      246 LOADN                            R25 132
      247 LOADN                            R26 132
      248 CALL                             R23 3 1
      249 SETTABLE                         R23 R21 R22
      250 GETTABLEKS                       R22 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
      252 GETIMPORT                        R23 K30 [Color3.fromRGB]
      254 LOADN                            R24 255
      255 LOADN                            R25 161
      256 LOADN                            R26 161
      257 CALL                             R23 3 1
      258 SETTABLE                         R23 R21 R22
      259 GETTABLEKS                       R22 R7 K58 ["KeyframeErrorBorderColorSelected"]
      261 GETTABLEKS                       R23 R8 K59 ["Red"]
      263 SETTABLE                         R23 R21 R22
      264 GETTABLEKS                       R22 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
      266 GETIMPORT                        R23 K30 [Color3.fromRGB]
      268 LOADN                            R24 255
      269 LOADN                            R25 161
      270 LOADN                            R26 161
      271 CALL                             R23 3 1
      272 SETTABLE                         R23 R21 R22
      273 GETTABLEKS                       R22 R7 K61 ["KeyframePrimaryErrorBorderColor"]
      275 GETIMPORT                        R23 K30 [Color3.fromRGB]
      277 LOADN                            R24 168
      278 LOADN                            R25 132
      279 LOADN                            R26 132
      280 CALL                             R23 3 1
      281 SETTABLE                         R23 R21 R22
      282 GETTABLEKS                       R22 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
      284 GETIMPORT                        R23 K30 [Color3.fromRGB]
      286 LOADN                            R24 255
      287 LOADN                            R25 161
      288 LOADN                            R26 161
      289 CALL                             R23 3 1
      290 SETTABLE                         R23 R21 R22
      291 GETTABLEKS                       R22 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
      293 GETTABLEKS                       R23 R8 K59 ["Red"]
      295 SETTABLE                         R23 R21 R22
      296 GETTABLEKS                       R22 R7 K64 ["CurvePositionX"]
      298 GETIMPORT                        R23 K30 [Color3.fromRGB]
      300 LOADN                            R24 255
      301 LOADN                            R25 0
      302 LOADN                            R26 0
      303 CALL                             R23 3 1
      304 SETTABLE                         R23 R21 R22
      305 GETTABLEKS                       R22 R7 K65 ["CurvePositionY"]
      307 GETIMPORT                        R23 K30 [Color3.fromRGB]
      309 LOADN                            R24 3
      310 LOADN                            R25 201
      311 LOADN                            R26 3
      312 CALL                             R23 3 1
      313 SETTABLE                         R23 R21 R22
      314 GETTABLEKS                       R22 R7 K66 ["CurvePositionZ"]
      316 GETIMPORT                        R23 K30 [Color3.fromRGB]
      318 LOADN                            R24 0
      319 LOADN                            R25 0
      320 LOADN                            R26 255
      321 CALL                             R23 3 1
      322 SETTABLE                         R23 R21 R22
      323 GETTABLEKS                       R22 R7 K67 ["CurveRotationX"]
      325 GETIMPORT                        R23 K30 [Color3.fromRGB]
      327 LOADN                            R24 47
      328 LOADN                            R25 128
      329 LOADN                            R26 123
      330 CALL                             R23 3 1
      331 SETTABLE                         R23 R21 R22
      332 GETTABLEKS                       R22 R7 K68 ["CurveRotationY"]
      334 GETIMPORT                        R23 K30 [Color3.fromRGB]
      336 LOADN                            R24 255
      337 LOADN                            R25 0
      338 LOADN                            R26 255
      339 CALL                             R23 3 1
      340 SETTABLE                         R23 R21 R22
      341 GETTABLEKS                       R22 R7 K69 ["CurveRotationZ"]
      343 GETIMPORT                        R23 K30 [Color3.fromRGB]
      345 LOADN                            R24 255
      346 LOADN                            R25 165
      347 LOADN                            R26 0
      348 CALL                             R23 3 1
      349 SETTABLE                         R23 R21 R22
      350 GETTABLEKS                       R22 R7 K70 ["CurveEditorButton"]
      352 LOADK                            R23 K71 ["rbxasset://textures/AnimationEditor/Button_Curve_Lightmode.png"]
      353 SETTABLE                         R23 R21 R22
      354 GETTABLEKS                       R22 R7 K72 ["DopeSheetButton"]
      356 LOADK                            R23 K73 ["rbxasset://textures/AnimationEditor/Button_Dopesheet_Lightmode.png"]
      357 SETTABLE                         R23 R21 R22
      358 GETTABLEKS                       R22 R7 K74 ["StopRecordingButtonImage"]
      360 LOADK                            R23 K75 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton_lightTheme.png"]
      361 SETTABLE                         R23 R21 R22
      362 GETTABLEKS                       R22 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
      364 GETIMPORT                        R23 K30 [Color3.fromRGB]
      366 LOADN                            R24 82
      367 LOADN                            R25 82
      368 LOADN                            R26 82
      369 CALL                             R23 3 1
      370 SETTABLE                         R23 R21 R22
      371 GETTABLEKS                       R22 R7 K77 ["FaceSliderKnob"]
      373 GETTABLEKS                       R23 R8 K36 ["Blue"]
      375 SETTABLE                         R23 R21 R22
      376 CALL                             R19 2 1
      377 GETTABLEKS                       R20 R1 K26 ["Dictionary"]
      379 GETTABLEKS                       R20 R20 K25 ["join"]
      381 MOVE                             R21 R14
      382 NEWTABLE                         R22 64 0
      384 GETTABLEKS                       R23 R7 K27 ["DialogButtonTextDisabled"]
      386 GETIMPORT                        R24 K30 [Color3.fromRGB]
      388 LOADN                            R25 92
      389 LOADN                            R26 92
      390 LOADN                            R27 92
      391 CALL                             R24 3 1
      392 SETTABLE                         R24 R22 R23
      393 GETTABLEKS                       R23 R7 K31 ["TrackShadedBackgroundColor"]
      395 GETIMPORT                        R24 K30 [Color3.fromRGB]
      397 LOADN                            R25 54
      398 LOADN                            R26 54
      399 LOADN                            R27 54
      400 CALL                             R24 3 1
      401 SETTABLE                         R24 R22 R23
      402 GETTABLEKS                       R23 R7 K32 ["TrackTitleBackgroundColor"]
      404 GETIMPORT                        R24 K30 [Color3.fromRGB]
      406 LOADN                            R25 54
      407 LOADN                            R26 54
      408 LOADN                            R27 54
      409 CALL                             R24 3 1
      410 SETTABLE                         R24 R22 R23
      411 GETTABLEKS                       R23 R7 K33 ["TrackPrimaryBackgroundColor"]
      413 GETIMPORT                        R24 K30 [Color3.fromRGB]
      415 LOADN                            R25 37
      416 LOADN                            R26 37
      417 LOADN                            R27 37
      418 CALL                             R24 3 1
      419 SETTABLE                         R24 R22 R23
      420 GETTABLEKS                       R23 R7 K34 ["TrackButtonColor"]
      422 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      424 SETTABLE                         R24 R22 R23
      425 GETTABLEKS                       R23 R7 K35 ["TrackHoveredButtonColor"]
      427 GETTABLEKS                       R24 R8 K47 ["White"]
      429 SETTABLE                         R24 R22 R23
      430 GETTABLEKS                       R23 R7 K37 ["TrackAddButtonColor"]
      432 GETTABLEKS                       R24 R8 K78 ["Gray"]
      434 SETTABLE                         R24 R22 R23
      435 GETTABLEKS                       R23 R7 K39 ["TrackHoveredAddButtonColor"]
      437 GETTABLEKS                       R24 R8 K79 ["lighter"]
      439 GETTABLEKS                       R25 R8 K78 ["Gray"]
      441 LOADK                            R26 K80 [0.26]
      442 CALL                             R24 2 1
      443 SETTABLE                         R24 R22 R23
      444 GETTABLEKS                       R23 R7 K40 ["TrackPlusIconColor"]
      446 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      448 SETTABLE                         R24 R22 R23
      449 GETTABLEKS                       R23 R7 K41 ["TimelineDimmedColor"]
      451 GETIMPORT                        R24 K30 [Color3.fromRGB]
      453 LOADN                            R25 102
      454 LOADN                            R26 102
      455 LOADN                            R27 102
      456 CALL                             R24 3 1
      457 SETTABLE                         R24 R22 R23
      458 GETTABLEKS                       R23 R7 K42 ["TimelineBackgroundColor"]
      460 GETIMPORT                        R24 K30 [Color3.fromRGB]
      462 LOADN                            R25 56
      463 LOADN                            R26 56
      464 LOADN                            R27 56
      465 CALL                             R24 3 1
      466 SETTABLE                         R24 R22 R23
      467 GETTABLEKS                       R23 R7 K43 ["KeyframePrimaryClusterColor"]
      469 GETIMPORT                        R24 K30 [Color3.fromRGB]
      471 LOADN                            R25 170
      472 LOADN                            R26 170
      473 LOADN                            R27 170
      474 CALL                             R24 3 1
      475 SETTABLE                         R24 R22 R23
      476 GETTABLEKS                       R23 R7 K44 ["EventMarkerImageColor"]
      478 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      480 SETTABLE                         R24 R22 R23
      481 GETTABLEKS                       R23 R7 K45 ["EventMarkerBorderColor"]
      483 GETTABLEKS                       R24 R8 K47 ["White"]
      485 SETTABLE                         R24 R22 R23
      486 GETTABLEKS                       R23 R7 K46 ["ScrollBarControl"]
      488 GETIMPORT                        R24 K30 [Color3.fromRGB]
      490 LOADN                            R25 64
      491 LOADN                            R26 64
      492 LOADN                            R27 64
      493 CALL                             R24 3 1
      494 SETTABLE                         R24 R22 R23
      495 GETTABLEKS                       R23 R7 K48 ["ScrollBarHover"]
      497 GETIMPORT                        R24 K30 [Color3.fromRGB]
      499 LOADN                            R25 80
      500 LOADN                            R26 80
      501 LOADN                            R27 80
      502 CALL                             R24 3 1
      503 SETTABLE                         R24 R22 R23
      504 GETTABLEKS                       R23 R7 K49 ["ScrollBarPressed"]
      506 GETIMPORT                        R24 K30 [Color3.fromRGB]
      508 LOADN                            R25 80
      509 LOADN                            R26 80
      510 LOADN                            R27 80
      511 CALL                             R24 3 1
      512 SETTABLE                         R24 R22 R23
      513 GETTABLEKS                       R23 R7 K50 ["StartScreenDarkTextColor"]
      515 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      517 SETTABLE                         R24 R22 R23
      518 GETTABLEKS                       R23 R7 K51 ["IKHeaderColor"]
      520 GETTABLEKS                       R24 R8 K81 ["Slate"]
      522 SETTABLE                         R24 R22 R23
      523 GETTABLEKS                       R23 R7 K52 ["IKHeaderBorder"]
      525 GETIMPORT                        R24 K30 [Color3.fromRGB]
      527 LOADN                            R25 26
      528 LOADN                            R26 26
      529 LOADN                            R27 26
      530 CALL                             R24 3 1
      531 SETTABLE                         R24 R22 R23
      532 GETTABLEKS                       R23 R7 K53 ["KeyframePrimaryBackgroundColor"]
      534 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      536 SETTABLE                         R24 R22 R23
      537 GETTABLEKS                       R23 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
      539 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      541 SETTABLE                         R24 R22 R23
      542 GETTABLEKS                       R23 R7 K55 ["KeyframeErrorBackgroundColor"]
      544 GETTABLEKS                       R24 R8 K79 ["lighter"]
      546 GETTABLEKS                       R25 R8 K82 ["Black"]
      548 LOADK                            R26 K83 [0.4]
      549 CALL                             R24 2 1
      550 SETTABLE                         R24 R22 R23
      551 GETTABLEKS                       R23 R7 K56 ["KeyframeErrorBorderColor"]
      553 GETIMPORT                        R24 K30 [Color3.fromRGB]
      555 LOADN                            R25 255
      556 LOADN                            R26 68
      557 LOADN                            R27 68
      558 CALL                             R24 3 1
      559 SETTABLE                         R24 R22 R23
      560 GETTABLEKS                       R23 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
      562 GETIMPORT                        R24 K30 [Color3.fromRGB]
      564 LOADN                            R25 170
      565 LOADN                            R26 170
      566 LOADN                            R27 170
      567 CALL                             R24 3 1
      568 SETTABLE                         R24 R22 R23
      569 GETTABLEKS                       R23 R7 K58 ["KeyframeErrorBorderColorSelected"]
      571 GETIMPORT                        R24 K30 [Color3.fromRGB]
      573 LOADN                            R25 255
      574 LOADN                            R26 68
      575 LOADN                            R27 68
      576 CALL                             R24 3 1
      577 SETTABLE                         R24 R22 R23
      578 GETTABLEKS                       R23 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
      580 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      582 SETTABLE                         R24 R22 R23
      583 GETTABLEKS                       R23 R7 K61 ["KeyframePrimaryErrorBorderColor"]
      585 GETIMPORT                        R24 K30 [Color3.fromRGB]
      587 LOADN                            R25 255
      588 LOADN                            R26 68
      589 LOADN                            R27 68
      590 CALL                             R24 3 1
      591 SETTABLE                         R24 R22 R23
      592 GETTABLEKS                       R23 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
      594 GETTABLEKS                       R24 R8 K38 ["Gray_Light"]
      596 SETTABLE                         R24 R22 R23
      597 GETTABLEKS                       R23 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
      599 GETIMPORT                        R24 K30 [Color3.fromRGB]
      601 LOADN                            R25 255
      602 LOADN                            R26 68
      603 LOADN                            R27 68
      604 CALL                             R24 3 1
      605 SETTABLE                         R24 R22 R23
      606 GETTABLEKS                       R23 R7 K64 ["CurvePositionX"]
      608 GETIMPORT                        R24 K30 [Color3.fromRGB]
      610 LOADN                            R25 255
      611 LOADN                            R26 0
      612 LOADN                            R27 0
      613 CALL                             R24 3 1
      614 SETTABLE                         R24 R22 R23
      615 GETTABLEKS                       R23 R7 K65 ["CurvePositionY"]
      617 GETIMPORT                        R24 K30 [Color3.fromRGB]
      619 LOADN                            R25 3
      620 LOADN                            R26 201
      621 LOADN                            R27 3
      622 CALL                             R24 3 1
      623 SETTABLE                         R24 R22 R23
      624 GETTABLEKS                       R23 R7 K66 ["CurvePositionZ"]
      626 GETIMPORT                        R24 K30 [Color3.fromRGB]
      628 LOADN                            R25 0
      629 LOADN                            R26 0
      630 LOADN                            R27 255
      631 CALL                             R24 3 1
      632 SETTABLE                         R24 R22 R23
      633 GETTABLEKS                       R23 R7 K67 ["CurveRotationX"]
      635 GETIMPORT                        R24 K30 [Color3.fromRGB]
      637 LOADN                            R25 47
      638 LOADN                            R26 128
      639 LOADN                            R27 123
      640 CALL                             R24 3 1
      641 SETTABLE                         R24 R22 R23
      642 GETTABLEKS                       R23 R7 K68 ["CurveRotationY"]
      644 GETIMPORT                        R24 K30 [Color3.fromRGB]
      646 LOADN                            R25 255
      647 LOADN                            R26 0
      648 LOADN                            R27 255
      649 CALL                             R24 3 1
      650 SETTABLE                         R24 R22 R23
      651 GETTABLEKS                       R23 R7 K69 ["CurveRotationZ"]
      653 GETIMPORT                        R24 K30 [Color3.fromRGB]
      655 LOADN                            R25 255
      656 LOADN                            R26 165
      657 LOADN                            R27 0
      658 CALL                             R24 3 1
      659 SETTABLE                         R24 R22 R23
      660 GETTABLEKS                       R23 R7 K70 ["CurveEditorButton"]
      662 LOADK                            R24 K84 ["rbxasset://textures/AnimationEditor/Button_Curve_Darkmode.png"]
      663 SETTABLE                         R24 R22 R23
      664 GETTABLEKS                       R23 R7 K72 ["DopeSheetButton"]
      666 LOADK                            R24 K85 ["rbxasset://textures/AnimationEditor/Button_Dopesheet_Darkmode.png"]
      667 SETTABLE                         R24 R22 R23
      668 GETTABLEKS                       R23 R7 K74 ["StopRecordingButtonImage"]
      670 LOADK                            R24 K86 ["rbxasset://textures/AnimationEditor/FaceCaptureUI/StopRecordButton.png"]
      671 SETTABLE                         R24 R22 R23
      672 GETTABLEKS                       R23 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
      674 GETIMPORT                        R24 K30 [Color3.fromRGB]
      676 LOADN                            R25 255
      677 LOADN                            R26 255
      678 LOADN                            R27 255
      679 CALL                             R24 3 1
      680 SETTABLE                         R24 R22 R23
      681 GETTABLEKS                       R23 R7 K77 ["FaceSliderKnob"]
      683 GETTABLEKS                       R24 R8 K47 ["White"]
      685 SETTABLE                         R24 R22 R23
      686 CALL                             R20 2 1
      687 DUPTABLE                         R21 K113 [{["autokeyOn"] = "", ["autokeyOff"] = "", ["skipBackward"] = "rbxasset://textures/AnimationEditor/button_control_previous.png", ["skipForward"] = "rbxasset://textures/AnimationEditor/button_control_next.png", ["play"] = "rbxasset://textures/AnimationEditor/button_control_play.png", ["pause"] = "rbxasset://textures/AnimationEditor/button_pause_white@2x.png", ["loop"] = "rbxasset://textures/AnimationEditor/button_loop.png", ["reverse"] = "rbxasset://textures/AnimationEditor/button_control_reverseplay.png", ["goToFirstFrame"] = "rbxasset://textures/AnimationEditor/button_control_firstframe.png", ["goToLastFrame"] = "rbxasset://textures/AnimationEditor/button_control_lastframe.png", ["selectClipDropdownIcon"] = "rbxasset://textures/AnimationEditor/btn_expand.png", ["iconColor"], ["iconHighlightColor"], ["timeInputBackground"], ["borderColor"], ["inputBorderColor"]}]
      688 GETTABLEKS                       R22 R7 K114 ["MainText"]
      690 SETTABLEKS                       R22 R21 K108 ["iconColor"]
      692 GETTABLEKS                       R22 R7 K115 ["DialogMainButtonText"]
      694 SETTABLEKS                       R22 R21 K109 ["iconHighlightColor"]
      696 GETTABLEKS                       R22 R7 K116 ["InputFieldBackground"]
      698 SETTABLEKS                       R22 R21 K110 ["timeInputBackground"]
      700 GETTABLEKS                       R22 R7 K117 ["Border"]
      702 SETTABLEKS                       R22 R21 K111 ["borderColor"]
      704 GETTABLEKS                       R22 R7 K118 ["InputFieldBorder"]
      706 SETTABLEKS                       R22 R21 K112 ["inputBorderColor"]
      708 DUPTABLE                         R22 K126 [{["itemColor"], ["hoveredItemColor"], ["textColor"], ["itemHeight"] = 22, ["textSize"] = 15}]
      709 GETTABLEKS                       R23 R7 K127 ["Item"]
      711 SETTABLEKS                       R23 R22 K119 ["itemColor"]
      713 GETTABLEKS                       R23 R7 K128 ["ItemHovered"]
      715 SETTABLEKS                       R23 R22 K120 ["hoveredItemColor"]
      717 GETTABLEKS                       R23 R7 K114 ["MainText"]
      719 SETTABLEKS                       R23 R22 K121 ["textColor"]
      721 DUPTABLE                         R23 K155 [{["backgroundColor"], ["shadedBackgroundColor"], ["titleBackgroundColor"], ["selectedBackgroundColor"], ["primaryBackgroundColor"], ["textColor"], ["primaryTextColor"], ["selectedTextColor"], ["textSize"] = 15, ["arrow"], ["contextMenu"] = "rbxasset://textures/AnimationEditor/icon_showmore.png", ["addButtonBackground"] = "rbxasset://textures/AnimationEditor/Circle.png", ["addEventBackground"] = "rbxasset://textures/AnimationEditor/addEvent_inner.png", ["addEventBorder"] = "rbxasset://textures/AnimationEditor/addEvent_border.png", ["plusIcon"] = "rbxasset://textures/AnimationEditor/icon_add.png", ["errorImage"] = "rbxasset://textures/AnimationEditor/icon_error.png", ["buttonColor"], ["hoveredButtonColor"], ["addButtonColor"], ["hoveredAddButtonColor"], ["plusIconColor"], ["hoveredPlusIconColor"]}]
      722 GETTABLEKS                       R24 R7 K156 ["MainBackground"]
      724 SETTABLEKS                       R24 R23 K129 ["backgroundColor"]
      726 GETTABLEKS                       R24 R7 K31 ["TrackShadedBackgroundColor"]
      728 SETTABLEKS                       R24 R23 K130 ["shadedBackgroundColor"]
      730 GETTABLEKS                       R24 R7 K32 ["TrackTitleBackgroundColor"]
      732 SETTABLEKS                       R24 R23 K131 ["titleBackgroundColor"]
      734 GETTABLEKS                       R24 R7 K157 ["ItemSelected"]
      736 SETTABLEKS                       R24 R23 K132 ["selectedBackgroundColor"]
      738 GETTABLEKS                       R24 R7 K33 ["TrackPrimaryBackgroundColor"]
      740 SETTABLEKS                       R24 R23 K133 ["primaryBackgroundColor"]
      742 GETTABLEKS                       R24 R7 K114 ["MainText"]
      744 SETTABLEKS                       R24 R23 K121 ["textColor"]
      746 GETTABLEKS                       R24 R7 K158 ["BrightText"]
      748 SETTABLEKS                       R24 R23 K134 ["primaryTextColor"]
      750 GETTABLEKS                       R24 R7 K159 ["MainTextSelected"]
      752 SETTABLEKS                       R24 R23 K135 ["selectedTextColor"]
      754 DUPTABLE                         R24 K164 [{["collapsed"] = "rbxasset://textures/StudioToolbox/ArrowCollapsed.png", ["expanded"] = "rbxasset://textures/StudioToolbox/ArrowExpanded.png"}]
      755 SETTABLEKS                       R24 R23 K136 ["arrow"]
      757 GETTABLEKS                       R24 R7 K34 ["TrackButtonColor"]
      759 SETTABLEKS                       R24 R23 K149 ["buttonColor"]
      761 GETTABLEKS                       R24 R7 K35 ["TrackHoveredButtonColor"]
      763 SETTABLEKS                       R24 R23 K150 ["hoveredButtonColor"]
      765 GETTABLEKS                       R24 R7 K37 ["TrackAddButtonColor"]
      767 SETTABLEKS                       R24 R23 K151 ["addButtonColor"]
      769 GETTABLEKS                       R24 R7 K39 ["TrackHoveredAddButtonColor"]
      771 SETTABLEKS                       R24 R23 K152 ["hoveredAddButtonColor"]
      773 GETTABLEKS                       R24 R7 K40 ["TrackPlusIconColor"]
      775 SETTABLEKS                       R24 R23 K153 ["plusIconColor"]
      777 GETTABLEKS                       R24 R7 K115 ["DialogMainButtonText"]
      779 SETTABLEKS                       R24 R23 K154 ["hoveredPlusIconColor"]
      781 DUPTABLE                         R24 K166 [{["mainColor"], ["textColor"], ["textSize"] = 15}]
      782 GETTABLEKS                       R25 R7 K167 ["DialogMainButton"]
      784 SETTABLEKS                       R25 R24 K165 ["mainColor"]
      786 GETTABLEKS                       R25 R7 K115 ["DialogMainButtonText"]
      788 SETTABLEKS                       R25 R24 K121 ["textColor"]
      790 DUPTABLE                         R25 K172 [{["textSize"] = 16, ["textColor"], ["backgroundColor"], ["errorBorder"], ["focusedBorder"], ["defaultBorder"]}]
      791 GETTABLEKS                       R26 R7 K114 ["MainText"]
      793 SETTABLEKS                       R26 R25 K121 ["textColor"]
      795 GETTABLEKS                       R26 R7 K116 ["InputFieldBackground"]
      797 SETTABLEKS                       R26 R25 K129 ["backgroundColor"]
      799 GETTABLEKS                       R26 R7 K173 ["ErrorText"]
      801 SETTABLEKS                       R26 R25 K169 ["errorBorder"]
      803 GETTABLEKS                       R26 R7 K167 ["DialogMainButton"]
      805 SETTABLEKS                       R26 R25 K170 ["focusedBorder"]
      807 GETTABLEKS                       R26 R7 K117 ["Border"]
      809 SETTABLEKS                       R26 R25 K171 ["defaultBorder"]
      811 DUPTABLE                         R26 K177 [{["image"] = "rbxasset://textures/AnimationEditor/btn_manage.png", ["imageColor"]}]
      812 GETTABLEKS                       R27 R7 K114 ["MainText"]
      814 SETTABLEKS                       R27 R26 K176 ["imageColor"]
      816 DUPTABLE                         R27 K180 [{"clusterColor", "primaryClusterColor"}]
      817 GETTABLEKS                       R28 R7 K27 ["DialogButtonTextDisabled"]
      819 SETTABLEKS                       R28 R27 K178 ["clusterColor"]
      821 GETTABLEKS                       R28 R7 K43 ["KeyframePrimaryClusterColor"]
      823 SETTABLEKS                       R28 R27 K179 ["primaryClusterColor"]
      825 DUPTABLE                         R28 K188 [{["backgroundColor"], ["titleColor"], ["font"], ["textSize"] = 8, ["backgroundImage"] = "rbxasset://textures/GameSettings/UncheckedBox.png", ["selectedImage"] = "rbxasset://textures/GameSettings/CheckedBoxLight.png"}]
      826 GETIMPORT                        R29 K30 [Color3.fromRGB]
      828 LOADN                            R30 182
      829 LOADN                            R31 182
      830 LOADN                            R32 182
      831 CALL                             R29 3 1
      832 SETTABLEKS                       R29 R28 K129 ["backgroundColor"]
      834 GETTABLEKS                       R29 R7 K114 ["MainText"]
      836 SETTABLEKS                       R29 R28 K181 ["titleColor"]
      838 GETIMPORT                        R29 K192 [Enum.Font.Legacy]
      840 SETTABLEKS                       R29 R28 K182 ["font"]
      842 GETIMPORT                        R29 K195 [Rect.new]
      844 LOADN                            R30 3
      845 LOADN                            R31 0
      846 LOADN                            R32 4
      847 LOADN                            R33 6
      848 CALL                             R29 4 1
      849 GETTABLEKS                       R30 R7 K77 ["FaceSliderKnob"]
      851 NEWTABLE                         R31 8 0
      853 GETIMPORT                        R32 K197 [Vector2.new]
      855 LOADK                            R33 K198 [0.5]
      856 LOADK                            R34 K198 [0.5]
      857 CALL                             R32 2 1
      858 SETTABLEKS                       R32 R31 K199 ["AnchorPoint"]
      860 SETTABLEKS                       R30 R31 K200 ["Color"]
      862 GETTABLEKS                       R32 R7 K201 ["SliderKnobImage"]
      864 SETTABLEKS                       R32 R31 K19 ["Image"]
      866 GETIMPORT                        R32 K203 [UDim2.new]
      868 LOADN                            R33 0
      869 LOADK                            R34 K204 [6.5]
      870 LOADN                            R35 0
      871 LOADK                            R36 K204 [6.5]
      872 CALL                             R32 4 1
      873 SETTABLEKS                       R32 R31 K205 ["Size"]
      875 GETTABLEKS                       R32 R4 K206 ["Disabled"]
      877 DUPTABLE                         R33 K207 [{"Color"}]
      878 GETTABLEKS                       R34 R7 K208 ["Button"]
      880 SETTABLEKS                       R34 R33 K200 ["Color"]
      882 SETTABLE                         R33 R31 R32
      883 NEWTABLE                         R32 8 0
      885 GETIMPORT                        R33 K197 [Vector2.new]
      887 LOADK                            R34 K198 [0.5]
      888 LOADK                            R35 K198 [0.5]
      889 CALL                             R33 2 1
      890 SETTABLEKS                       R33 R32 K199 ["AnchorPoint"]
      892 SETTABLEKS                       R30 R32 K200 ["Color"]
      894 GETTABLEKS                       R33 R7 K201 ["SliderKnobImage"]
      896 SETTABLEKS                       R33 R32 K19 ["Image"]
      898 GETIMPORT                        R33 K203 [UDim2.new]
      900 LOADN                            R34 0
      901 LOADN                            R35 9
      902 LOADN                            R36 0
      903 LOADN                            R37 9
      904 CALL                             R33 4 1
      905 SETTABLEKS                       R33 R32 K205 ["Size"]
      907 GETTABLEKS                       R33 R4 K206 ["Disabled"]
      909 DUPTABLE                         R34 K207 [{"Color"}]
      910 GETTABLEKS                       R35 R7 K208 ["Button"]
      912 SETTABLEKS                       R35 R34 K200 ["Color"]
      914 SETTABLE                         R34 R32 R33
      915 DUPTABLE                         R33 K220 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle", "BackgroundStyleHorizontal", "BackgroundStyleVertical"}]
      916 GETIMPORT                        R34 K197 [Vector2.new]
      918 LOADN                            R35 18
      919 LOADN                            R36 18
      920 CALL                             R34 2 1
      921 SETTABLEKS                       R34 R33 K209 ["KnobSize"]
      923 SETTABLEKS                       R12 R33 K210 ["Background"]
      925 DUPTABLE                         R34 K221 [{"Background", "Size"}]
      926 GETIMPORT                        R35 K30 [Color3.fromRGB]
      928 LOADN                            R36 87
      929 LOADN                            R37 87
      930 LOADN                            R38 87
      931 CALL                             R35 3 1
      932 SETTABLEKS                       R35 R34 K210 ["Background"]
      934 GETIMPORT                        R35 K203 [UDim2.new]
      936 LOADN                            R36 1
      937 LOADN                            R37 0
      938 LOADN                            R38 0
      939 LOADN                            R39 1
      940 CALL                             R35 4 1
      941 SETTABLEKS                       R35 R34 K205 ["Size"]
      943 SETTABLEKS                       R34 R33 K211 ["BackgroundStyle"]
      945 SETTABLEKS                       R12 R33 K212 ["Foreground"]
      947 NEWTABLE                         R34 4 0
      949 GETTABLEKS                       R35 R7 K167 ["DialogMainButton"]
      951 SETTABLEKS                       R35 R34 K210 ["Background"]
      953 GETIMPORT                        R35 K203 [UDim2.new]
      955 LOADN                            R36 1
      956 LOADN                            R37 0
      957 LOADN                            R38 0
      958 LOADN                            R39 1
      959 CALL                             R35 4 1
      960 SETTABLEKS                       R35 R34 K205 ["Size"]
      962 GETTABLEKS                       R35 R4 K206 ["Disabled"]
      964 DUPTABLE                         R36 K222 [{"Background"}]
      965 GETTABLEKS                       R37 R7 K208 ["Button"]
      967 SETTABLEKS                       R37 R36 K210 ["Background"]
      969 SETTABLE                         R36 R34 R35
      970 SETTABLEKS                       R34 R33 K213 ["ForegroundStyle"]
      972 SETTABLEKS                       R12 R33 K214 ["LowerKnobBackground"]
      974 SETTABLEKS                       R31 R33 K215 ["LowerKnobBackgroundStyle"]
      976 SETTABLEKS                       R12 R33 K216 ["UpperKnobBackground"]
      978 SETTABLEKS                       R31 R33 K217 ["UpperKnobBackgroundStyle"]
      980 DUPTABLE                         R34 K221 [{"Background", "Size"}]
      981 GETIMPORT                        R35 K30 [Color3.fromRGB]
      983 LOADN                            R36 87
      984 LOADN                            R37 87
      985 LOADN                            R38 87
      986 CALL                             R35 3 1
      987 SETTABLEKS                       R35 R34 K210 ["Background"]
      989 GETIMPORT                        R35 K203 [UDim2.new]
      991 LOADN                            R36 1
      992 LOADN                            R37 0
      993 LOADN                            R38 0
      994 LOADN                            R39 1
      995 CALL                             R35 4 1
      996 SETTABLEKS                       R35 R34 K205 ["Size"]
      998 SETTABLEKS                       R34 R33 K218 ["BackgroundStyleHorizontal"]
     1000 DUPTABLE                         R34 K221 [{"Background", "Size"}]
     1001 GETIMPORT                        R35 K30 [Color3.fromRGB]
     1003 LOADN                            R36 87
     1004 LOADN                            R37 87
     1005 LOADN                            R38 87
     1006 CALL                             R35 3 1
     1007 SETTABLEKS                       R35 R34 K210 ["Background"]
     1009 GETIMPORT                        R35 K203 [UDim2.new]
     1011 LOADN                            R36 1
     1012 LOADN                            R37 0
     1013 LOADN                            R38 0
     1014 LOADN                            R39 1
     1015 CALL                             R35 4 1
     1016 SETTABLEKS                       R35 R34 K205 ["Size"]
     1018 SETTABLEKS                       R34 R33 K219 ["BackgroundStyleVertical"]
     1020 DUPTABLE                         R34 K220 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle", "BackgroundStyleHorizontal", "BackgroundStyleVertical"}]
     1021 GETIMPORT                        R35 K197 [Vector2.new]
     1023 LOADN                            R36 18
     1024 LOADN                            R37 18
     1025 CALL                             R35 2 1
     1026 SETTABLEKS                       R35 R34 K209 ["KnobSize"]
     1028 SETTABLEKS                       R12 R34 K210 ["Background"]
     1030 DUPTABLE                         R35 K221 [{"Background", "Size"}]
     1031 GETIMPORT                        R36 K30 [Color3.fromRGB]
     1033 LOADN                            R37 87
     1034 LOADN                            R38 87
     1035 LOADN                            R39 87
     1036 CALL                             R36 3 1
     1037 SETTABLEKS                       R36 R35 K210 ["Background"]
     1039 GETIMPORT                        R36 K203 [UDim2.new]
     1041 LOADN                            R37 1
     1042 LOADN                            R38 0
     1043 LOADN                            R39 0
     1044 LOADN                            R40 1
     1045 CALL                             R36 4 1
     1046 SETTABLEKS                       R36 R35 K205 ["Size"]
     1048 SETTABLEKS                       R35 R34 K211 ["BackgroundStyle"]
     1050 SETTABLEKS                       R12 R34 K212 ["Foreground"]
     1052 NEWTABLE                         R35 4 0
     1054 GETTABLEKS                       R36 R7 K167 ["DialogMainButton"]
     1056 SETTABLEKS                       R36 R35 K210 ["Background"]
     1058 GETIMPORT                        R36 K203 [UDim2.new]
     1060 LOADN                            R37 1
     1061 LOADN                            R38 0
     1062 LOADN                            R39 0
     1063 LOADN                            R40 1
     1064 CALL                             R36 4 1
     1065 SETTABLEKS                       R36 R35 K205 ["Size"]
     1067 GETTABLEKS                       R36 R4 K206 ["Disabled"]
     1069 DUPTABLE                         R37 K222 [{"Background"}]
     1070 GETTABLEKS                       R38 R7 K208 ["Button"]
     1072 SETTABLEKS                       R38 R37 K210 ["Background"]
     1074 SETTABLE                         R37 R35 R36
     1075 SETTABLEKS                       R35 R34 K213 ["ForegroundStyle"]
     1077 SETTABLEKS                       R12 R34 K214 ["LowerKnobBackground"]
     1079 SETTABLEKS                       R32 R34 K215 ["LowerKnobBackgroundStyle"]
     1081 SETTABLEKS                       R12 R34 K216 ["UpperKnobBackground"]
     1083 SETTABLEKS                       R32 R34 K217 ["UpperKnobBackgroundStyle"]
     1085 DUPTABLE                         R35 K221 [{"Background", "Size"}]
     1086 GETIMPORT                        R36 K30 [Color3.fromRGB]
     1088 LOADN                            R37 87
     1089 LOADN                            R38 87
     1090 LOADN                            R39 87
     1091 CALL                             R36 3 1
     1092 SETTABLEKS                       R36 R35 K210 ["Background"]
     1094 GETIMPORT                        R36 K203 [UDim2.new]
     1096 LOADN                            R37 1
     1097 LOADN                            R38 0
     1098 LOADN                            R39 0
     1099 LOADN                            R40 1
     1100 CALL                             R36 4 1
     1101 SETTABLEKS                       R36 R35 K205 ["Size"]
     1103 SETTABLEKS                       R35 R34 K218 ["BackgroundStyleHorizontal"]
     1105 DUPTABLE                         R35 K221 [{"Background", "Size"}]
     1106 GETIMPORT                        R36 K30 [Color3.fromRGB]
     1108 LOADN                            R37 87
     1109 LOADN                            R38 87
     1110 LOADN                            R39 87
     1111 CALL                             R36 3 1
     1112 SETTABLEKS                       R36 R35 K210 ["Background"]
     1114 GETIMPORT                        R36 K203 [UDim2.new]
     1116 LOADN                            R37 1
     1117 LOADN                            R38 0
     1118 LOADN                            R39 0
     1119 LOADN                            R40 1
     1120 CALL                             R36 4 1
     1121 SETTABLEKS                       R36 R35 K205 ["Size"]
     1123 SETTABLEKS                       R35 R34 K219 ["BackgroundStyleVertical"]
     1125 DUPTABLE                         R35 K226 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
     1126 GETIMPORT                        R36 K197 [Vector2.new]
     1128 LOADN                            R37 18
     1129 LOADN                            R38 18
     1130 CALL                             R36 2 1
     1131 SETTABLEKS                       R36 R35 K209 ["KnobSize"]
     1133 SETTABLEKS                       R12 R35 K210 ["Background"]
     1135 DUPTABLE                         R36 K233 [{["AnchorPoint"], ["Color"], ["Position"], ["ScaleType"], ["Size"], ["SliceCenter"], ["BackgroundTransparency"] = 1, ["ImageTransparency"] = 1}]
     1136 GETIMPORT                        R37 K197 [Vector2.new]
     1138 LOADN                            R38 0
     1139 LOADK                            R39 K198 [0.5]
     1140 CALL                             R37 2 1
     1141 SETTABLEKS                       R37 R36 K199 ["AnchorPoint"]
     1143 GETIMPORT                        R37 K30 [Color3.fromRGB]
     1145 LOADN                            R38 87
     1146 LOADN                            R39 87
     1147 LOADN                            R40 87
     1148 CALL                             R37 3 1
     1149 SETTABLEKS                       R37 R36 K200 ["Color"]
     1151 GETIMPORT                        R37 K203 [UDim2.new]
     1153 LOADN                            R38 0
     1154 LOADN                            R39 0
     1155 LOADK                            R40 K198 [0.5]
     1156 LOADN                            R41 0
     1157 CALL                             R37 4 1
     1158 SETTABLEKS                       R37 R36 K227 ["Position"]
     1160 GETIMPORT                        R37 K235 [Enum.ScaleType.Slice]
     1162 SETTABLEKS                       R37 R36 K228 ["ScaleType"]
     1164 GETIMPORT                        R37 K203 [UDim2.new]
     1166 GETIMPORT                        R38 K237 [UDim.new]
     1168 LOADN                            R39 1
     1169 LOADN                            R40 0
     1170 CALL                             R38 2 1
     1171 GETIMPORT                        R39 K237 [UDim.new]
     1173 LOADN                            R40 1
     1174 LOADN                            R41 0
     1175 CALL                             R39 2 -1
     1176 CALL                             R37 -1 1
     1177 SETTABLEKS                       R37 R36 K205 ["Size"]
     1179 SETTABLEKS                       R29 R36 K229 ["SliceCenter"]
     1181 SETTABLEKS                       R36 R35 K211 ["BackgroundStyle"]
     1183 NEWTABLE                         R36 8 0
     1185 GETIMPORT                        R37 K197 [Vector2.new]
     1187 LOADN                            R38 0
     1188 LOADK                            R39 K198 [0.5]
     1189 CALL                             R37 2 1
     1190 SETTABLEKS                       R37 R36 K199 ["AnchorPoint"]
     1192 LOADK                            R37 K238 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
     1193 SETTABLEKS                       R37 R36 K19 ["Image"]
     1195 GETTABLEKS                       R37 R7 K167 ["DialogMainButton"]
     1197 SETTABLEKS                       R37 R36 K200 ["Color"]
     1199 GETIMPORT                        R37 K235 [Enum.ScaleType.Slice]
     1201 SETTABLEKS                       R37 R36 K228 ["ScaleType"]
     1203 GETIMPORT                        R37 K203 [UDim2.new]
     1205 GETIMPORT                        R38 K237 [UDim.new]
     1207 LOADN                            R39 1
     1208 LOADN                            R40 0
     1209 CALL                             R38 2 1
     1210 GETIMPORT                        R39 K237 [UDim.new]
     1212 LOADN                            R40 0
     1213 LOADN                            R41 1
     1214 CALL                             R39 2 -1
     1215 CALL                             R37 -1 1
     1216 SETTABLEKS                       R37 R36 K205 ["Size"]
     1218 SETTABLEKS                       R29 R36 K229 ["SliceCenter"]
     1220 GETTABLEKS                       R37 R4 K206 ["Disabled"]
     1222 DUPTABLE                         R38 K207 [{"Color"}]
     1223 GETTABLEKS                       R39 R7 K208 ["Button"]
     1225 SETTABLEKS                       R39 R38 K200 ["Color"]
     1227 SETTABLE                         R38 R36 R37
     1228 SETTABLEKS                       R36 R35 K213 ["ForegroundStyle"]
     1230 DUPTABLE                         R36 K207 [{"Color"}]
     1231 GETIMPORT                        R37 K30 [Color3.fromRGB]
     1233 LOADN                            R38 87
     1234 LOADN                            R39 87
     1235 LOADN                            R40 87
     1236 CALL                             R37 3 1
     1237 SETTABLEKS                       R37 R36 K200 ["Color"]
     1239 SETTABLEKS                       R36 R35 K223 ["OutlineStyle"]
     1241 SETTABLEKS                       R12 R35 K224 ["KnobBackground"]
     1243 SETTABLEKS                       R31 R35 K225 ["KnobBackgroundStyle"]
     1245 DUPTABLE                         R36 K226 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
     1246 GETIMPORT                        R37 K197 [Vector2.new]
     1248 LOADN                            R38 18
     1249 LOADN                            R39 18
     1250 CALL                             R37 2 1
     1251 SETTABLEKS                       R37 R36 K209 ["KnobSize"]
     1253 SETTABLEKS                       R12 R36 K210 ["Background"]
     1255 DUPTABLE                         R37 K233 [{["AnchorPoint"], ["Color"], ["Position"], ["ScaleType"], ["Size"], ["SliceCenter"], ["BackgroundTransparency"] = 1, ["ImageTransparency"] = 1}]
     1256 GETIMPORT                        R38 K197 [Vector2.new]
     1258 LOADN                            R39 0
     1259 LOADK                            R40 K198 [0.5]
     1260 CALL                             R38 2 1
     1261 SETTABLEKS                       R38 R37 K199 ["AnchorPoint"]
     1263 GETIMPORT                        R38 K30 [Color3.fromRGB]
     1265 LOADN                            R39 87
     1266 LOADN                            R40 87
     1267 LOADN                            R41 87
     1268 CALL                             R38 3 1
     1269 SETTABLEKS                       R38 R37 K200 ["Color"]
     1271 GETIMPORT                        R38 K203 [UDim2.new]
     1273 LOADN                            R39 0
     1274 LOADN                            R40 0
     1275 LOADK                            R41 K198 [0.5]
     1276 LOADN                            R42 0
     1277 CALL                             R38 4 1
     1278 SETTABLEKS                       R38 R37 K227 ["Position"]
     1280 GETIMPORT                        R38 K235 [Enum.ScaleType.Slice]
     1282 SETTABLEKS                       R38 R37 K228 ["ScaleType"]
     1284 GETIMPORT                        R38 K203 [UDim2.new]
     1286 GETIMPORT                        R39 K237 [UDim.new]
     1288 LOADN                            R40 1
     1289 LOADN                            R41 0
     1290 CALL                             R39 2 1
     1291 GETIMPORT                        R40 K237 [UDim.new]
     1293 LOADN                            R41 1
     1294 LOADN                            R42 0
     1295 CALL                             R40 2 -1
     1296 CALL                             R38 -1 1
     1297 SETTABLEKS                       R38 R37 K205 ["Size"]
     1299 SETTABLEKS                       R29 R37 K229 ["SliceCenter"]
     1301 SETTABLEKS                       R37 R36 K211 ["BackgroundStyle"]
     1303 NEWTABLE                         R37 8 0
     1305 GETIMPORT                        R38 K197 [Vector2.new]
     1307 LOADN                            R39 0
     1308 LOADK                            R40 K198 [0.5]
     1309 CALL                             R38 2 1
     1310 SETTABLEKS                       R38 R37 K199 ["AnchorPoint"]
     1312 LOADK                            R38 K238 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
     1313 SETTABLEKS                       R38 R37 K19 ["Image"]
     1315 GETTABLEKS                       R38 R7 K167 ["DialogMainButton"]
     1317 SETTABLEKS                       R38 R37 K200 ["Color"]
     1319 GETIMPORT                        R38 K235 [Enum.ScaleType.Slice]
     1321 SETTABLEKS                       R38 R37 K228 ["ScaleType"]
     1323 GETIMPORT                        R38 K203 [UDim2.new]
     1325 GETIMPORT                        R39 K237 [UDim.new]
     1327 LOADN                            R40 1
     1328 LOADN                            R41 0
     1329 CALL                             R39 2 1
     1330 GETIMPORT                        R40 K237 [UDim.new]
     1332 LOADN                            R41 0
     1333 LOADN                            R42 1
     1334 CALL                             R40 2 -1
     1335 CALL                             R38 -1 1
     1336 SETTABLEKS                       R38 R37 K205 ["Size"]
     1338 SETTABLEKS                       R29 R37 K229 ["SliceCenter"]
     1340 GETTABLEKS                       R38 R4 K206 ["Disabled"]
     1342 DUPTABLE                         R39 K207 [{"Color"}]
     1343 GETTABLEKS                       R40 R7 K208 ["Button"]
     1345 SETTABLEKS                       R40 R39 K200 ["Color"]
     1347 SETTABLE                         R39 R37 R38
     1348 SETTABLEKS                       R37 R36 K213 ["ForegroundStyle"]
     1350 DUPTABLE                         R37 K207 [{"Color"}]
     1351 GETIMPORT                        R38 K30 [Color3.fromRGB]
     1353 LOADN                            R39 87
     1354 LOADN                            R40 87
     1355 LOADN                            R41 87
     1356 CALL                             R38 3 1
     1357 SETTABLEKS                       R38 R37 K200 ["Color"]
     1359 SETTABLEKS                       R37 R36 K223 ["OutlineStyle"]
     1361 SETTABLEKS                       R12 R36 K224 ["KnobBackground"]
     1363 SETTABLEKS                       R32 R36 K225 ["KnobBackgroundStyle"]
     1365 DUPTABLE                         R37 K243 [{["slice"], ["backgroundImage"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["borderImage"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png"}]
     1366 GETIMPORT                        R38 K195 [Rect.new]
     1368 LOADN                            R39 3
     1369 LOADN                            R40 3
     1370 LOADN                            R41 13
     1371 LOADN                            R42 13
     1372 CALL                             R38 4 1
     1373 SETTABLEKS                       R38 R37 K239 ["slice"]
     1375 DUPTABLE                         R38 K251 [{"MediaControl", "EventFilter", "ActiveControl", "IKDefault", "IKActive", "FaceControlsEditorActive", "FaceControlsEditorDefault"}]
     1376 NEWTABLE                         R39 4 0
     1378 SETTABLEKS                       R10 R39 K210 ["Background"]
     1380 DUPTABLE                         R40 K254 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
     1381 GETTABLEKS                       R41 R7 K156 ["MainBackground"]
     1383 SETTABLEKS                       R41 R40 K200 ["Color"]
     1385 GETTABLEKS                       R41 R7 K117 ["Border"]
     1387 SETTABLEKS                       R41 R40 K252 ["BorderColor"]
     1389 SETTABLEKS                       R40 R39 K211 ["BackgroundStyle"]
     1391 GETTABLEKS                       R40 R4 K255 ["Hover"]
     1393 DUPTABLE                         R41 K256 [{"BackgroundStyle"}]
     1394 DUPTABLE                         R42 K254 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
     1395 GETTABLEKS                       R43 R7 K257 ["ButtonHover"]
     1397 SETTABLEKS                       R43 R42 K200 ["Color"]
     1399 GETTABLEKS                       R43 R7 K117 ["Border"]
     1401 SETTABLEKS                       R43 R42 K252 ["BorderColor"]
     1403 SETTABLEKS                       R42 R41 K211 ["BackgroundStyle"]
     1405 SETTABLE                         R41 R39 R40
     1406 SETTABLEKS                       R39 R38 K244 ["MediaControl"]
     1408 NEWTABLE                         R39 4 0
     1410 SETTABLEKS                       R10 R39 K210 ["Background"]
     1412 DUPTABLE                         R40 K207 [{"Color"}]
     1413 GETTABLEKS                       R41 R7 K32 ["TrackTitleBackgroundColor"]
     1415 SETTABLEKS                       R41 R40 K200 ["Color"]
     1417 SETTABLEKS                       R40 R39 K211 ["BackgroundStyle"]
     1419 GETTABLEKS                       R40 R4 K255 ["Hover"]
     1421 DUPTABLE                         R41 K256 [{"BackgroundStyle"}]
     1422 DUPTABLE                         R42 K207 [{"Color"}]
     1423 GETTABLEKS                       R43 R7 K257 ["ButtonHover"]
     1425 SETTABLEKS                       R43 R42 K200 ["Color"]
     1427 SETTABLEKS                       R42 R41 K211 ["BackgroundStyle"]
     1429 SETTABLE                         R41 R39 R40
     1430 SETTABLEKS                       R39 R38 K245 ["EventFilter"]
     1432 NEWTABLE                         R39 4 0
     1434 SETTABLEKS                       R10 R39 K210 ["Background"]
     1436 DUPTABLE                         R40 K254 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
     1437 GETTABLEKS                       R41 R7 K167 ["DialogMainButton"]
     1439 SETTABLEKS                       R41 R40 K200 ["Color"]
     1441 GETTABLEKS                       R41 R7 K167 ["DialogMainButton"]
     1443 SETTABLEKS                       R41 R40 K252 ["BorderColor"]
     1445 SETTABLEKS                       R40 R39 K211 ["BackgroundStyle"]
     1447 GETTABLEKS                       R40 R4 K255 ["Hover"]
     1449 DUPTABLE                         R41 K256 [{"BackgroundStyle"}]
     1450 DUPTABLE                         R42 K254 [{["Color"], ["BorderColor"], ["BorderSize"] = 1}]
     1451 GETTABLEKS                       R43 R7 K258 ["DialogMainButtonHover"]
     1453 SETTABLEKS                       R43 R42 K200 ["Color"]
     1455 GETTABLEKS                       R43 R7 K258 ["DialogMainButtonHover"]
     1457 SETTABLEKS                       R43 R42 K252 ["BorderColor"]
     1459 SETTABLEKS                       R42 R41 K211 ["BackgroundStyle"]
     1461 SETTABLE                         R41 R39 R40
     1462 SETTABLEKS                       R39 R38 K246 ["ActiveControl"]
     1464 DUPTABLE                         R39 K222 [{"Background"}]
     1465 SETTABLEKS                       R11 R39 K210 ["Background"]
     1467 SETTABLEKS                       R39 R38 K247 ["IKDefault"]
     1469 DUPTABLE                         R39 K222 [{"Background"}]
     1470 SETTABLEKS                       R11 R39 K210 ["Background"]
     1472 SETTABLEKS                       R39 R38 K248 ["IKActive"]
     1474 DUPTABLE                         R39 K222 [{"Background"}]
     1475 SETTABLEKS                       R11 R39 K210 ["Background"]
     1477 SETTABLEKS                       R39 R38 K249 ["FaceControlsEditorActive"]
     1479 DUPTABLE                         R39 K222 [{"Background"}]
     1480 SETTABLEKS                       R11 R39 K210 ["Background"]
     1482 SETTABLEKS                       R39 R38 K250 ["FaceControlsEditorDefault"]
     1484 MOVE                             R39 R15
     1485 LOADK                            R40 K208 ["Button"]
     1486 CALL                             R39 1 1
     1487 MOVE                             R40 R18
     1488 MOVE                             R41 R39
     1489 NEWTABLE                         R42 2 0
     1491 MOVE                             R43 R18
     1492 GETTABLEKS                       R44 R39 K259 ["&Round"]
     1494 DUPTABLE                         R45 K222 [{"Background"}]
     1495 SETTABLEKS                       R11 R45 K210 ["Background"]
     1497 CALL                             R43 2 1
     1498 SETTABLEKS                       R43 R42 K260 ["&ACEHeaderButtonDefault"]
     1500 MOVE                             R43 R18
     1501 GETTABLEKS                       R44 R39 K261 ["&RoundPrimary"]
     1503 NEWTABLE                         R45 0 0
     1505 CALL                             R43 2 1
     1506 SETTABLEKS                       R43 R42 K262 ["&ACEHeaderButtonActive"]
     1508 CALL                             R40 2 1
     1509 DUPTABLE                         R41 K269 [{["imageColor"], ["borderColor"], ["selectionBorderColor"], ["mainImage"] = "rbxasset://textures/AnimationEditor/eventMarker_inner.png", ["borderImage"] = "rbxasset://textures/AnimationEditor/eventMarker_border.png", ["selectionBorderImage"] = "rbxasset://textures/AnimationEditor/eventMarker_border_selected.png", ["textSize"] = 15}]
     1510 GETTABLEKS                       R42 R7 K44 ["EventMarkerImageColor"]
     1512 SETTABLEKS                       R42 R41 K176 ["imageColor"]
     1514 GETTABLEKS                       R42 R7 K45 ["EventMarkerBorderColor"]
     1516 SETTABLEKS                       R42 R41 K111 ["borderColor"]
     1518 GETTABLEKS                       R42 R7 K167 ["DialogMainButton"]
     1520 SETTABLEKS                       R42 R41 K263 ["selectionBorderColor"]
     1522 DUPTABLE                         R42 K278 [{["controlImage"] = "rbxasset://textures/AnimationEditor/button_zoom.png", ["arrowImage"] = "rbxasset://textures/AnimationEditor/img_triangle.png", ["imageColor"], ["controlColor"], ["hoverColor"], ["pressedColor"], ["backgroundColor"], ["borderColor"], ["borderSize"] = 1}]
     1523 GETTABLEKS                       R43 R7 K114 ["MainText"]
     1525 SETTABLEKS                       R43 R42 K176 ["imageColor"]
     1527 GETTABLEKS                       R43 R7 K46 ["ScrollBarControl"]
     1529 SETTABLEKS                       R43 R42 K274 ["controlColor"]
     1531 GETTABLEKS                       R43 R7 K48 ["ScrollBarHover"]
     1533 SETTABLEKS                       R43 R42 K275 ["hoverColor"]
     1535 GETTABLEKS                       R43 R7 K49 ["ScrollBarPressed"]
     1537 SETTABLEKS                       R43 R42 K276 ["pressedColor"]
     1539 GETTABLEKS                       R43 R7 K279 ["ScrollBarBackground"]
     1541 SETTABLEKS                       R43 R42 K129 ["backgroundColor"]
     1543 GETTABLEKS                       R43 R7 K118 ["InputFieldBorder"]
     1545 SETTABLEKS                       R43 R42 K111 ["borderColor"]
     1547 DUPTABLE                         R43 K287 [{["lineColor"], ["textColor"], ["dimmedColor"], ["barColor"], ["backgroundColor"], ["lowerTransparency"] = 0.85, ["lowerBrightTransparency"] = 0.7, ["textSize"] = 15}]
     1548 GETTABLEKS                       R44 R7 K288 ["DimmedText"]
     1550 SETTABLEKS                       R44 R43 K280 ["lineColor"]
     1552 GETTABLEKS                       R44 R7 K288 ["DimmedText"]
     1554 SETTABLEKS                       R44 R43 K121 ["textColor"]
     1556 GETTABLEKS                       R44 R7 K41 ["TimelineDimmedColor"]
     1558 SETTABLEKS                       R44 R43 K281 ["dimmedColor"]
     1560 GETTABLEKS                       R44 R7 K156 ["MainBackground"]
     1562 SETTABLEKS                       R44 R43 K282 ["barColor"]
     1564 GETTABLEKS                       R44 R7 K42 ["TimelineBackgroundColor"]
     1566 SETTABLEKS                       R44 R43 K129 ["backgroundColor"]
     1568 DUPTABLE                         R44 K300 [{["textSize"] = 16, ["subTextSize"] = 15, ["headerFont"], ["textColor"], ["subTextColor"], ["errorTextColor"], ["deleteImage"] = "rbxasset://textures/AnimationEditor/icon_close.png", ["addImage"] = "rbxasset://textures/AnimationEditor/icon_add.png", ["errorImage"] = "rbxasset://textures/AnimationEditor/icon_error.png", ["warningImage"] = "rbxasset://textures/AnimationEditor/icon_warning.png", ["headerTextSize"] = 18}]
     1569 GETIMPORT                        R45 K302 [Enum.Font.SourceSansSemibold]
     1571 SETTABLEKS                       R45 R44 K290 ["headerFont"]
     1573 GETTABLEKS                       R45 R7 K114 ["MainText"]
     1575 SETTABLEKS                       R45 R44 K121 ["textColor"]
     1577 GETTABLEKS                       R45 R7 K288 ["DimmedText"]
     1579 SETTABLEKS                       R45 R44 K291 ["subTextColor"]
     1581 GETTABLEKS                       R45 R7 K173 ["ErrorText"]
     1583 SETTABLEKS                       R45 R44 K292 ["errorTextColor"]
     1585 DUPTABLE                         R45 K308 [{["textSize"] = 16, ["textColor"], ["shadowTransparency"] = 0.75, ["shadowColor"], ["shadowSize"] = 35}]
     1586 GETTABLEKS                       R46 R7 K114 ["MainText"]
     1588 SETTABLEKS                       R46 R45 K121 ["textColor"]
     1590 GETIMPORT                        R46 K309 [Color3.new]
     1592 CALL                             R46 0 1
     1593 SETTABLEKS                       R46 R45 K305 ["shadowColor"]
     1595 DUPTABLE                         R46 K311 [{["textSize"] = 16, ["textColor"], ["darkTextColor"]}]
     1596 GETTABLEKS                       R47 R7 K114 ["MainText"]
     1598 SETTABLEKS                       R47 R46 K121 ["textColor"]
     1600 GETTABLEKS                       R47 R7 K50 ["StartScreenDarkTextColor"]
     1602 SETTABLEKS                       R47 R46 K310 ["darkTextColor"]
     1604 DUPTABLE                         R47 K312 [{"lineColor"}]
     1605 GETIMPORT                        R48 K314 [BrickColor.new]
     1607 GETIMPORT                        R49 K309 [Color3.new]
     1609 LOADN                            R50 1
     1610 LOADN                            R51 1
     1611 LOADN                            R52 1
     1612 CALL                             R49 3 -1
     1613 CALL                             R48 -1 1
     1614 SETTABLEKS                       R48 R47 K280 ["lineColor"]
     1616 DUPTABLE                         R48 K330 [{["textColor"], ["primaryTextColor"], ["textSize"] = 15, ["lineColor"], ["ikLineColor"], ["transparency"] = 0.6, ["leafNodeImage"] = "rbxasset://textures/AnimationEditor/icon_hierarchy_end_white.png", ["expandImage"] = "rbxasset://textures/AnimationEditor/button_expand.png", ["collapseImage"] = "rbxasset://textures/AnimationEditor/button_collapse.png", ["pinImage"] = "rbxasset://textures/AnimationEditor/Pin.png", ["iconColor"], ["iconHighlightColor"], ["selected"], ["headerColor"], ["headerBorder"], ["pinHover"]}]
     1617 GETTABLEKS                       R49 R7 K114 ["MainText"]
     1619 SETTABLEKS                       R49 R48 K121 ["textColor"]
     1621 GETTABLEKS                       R49 R7 K159 ["MainTextSelected"]
     1623 SETTABLEKS                       R49 R48 K134 ["primaryTextColor"]
     1625 GETTABLEKS                       R49 R7 K288 ["DimmedText"]
     1627 SETTABLEKS                       R49 R48 K280 ["lineColor"]
     1629 GETIMPORT                        R49 K30 [Color3.fromRGB]
     1631 LOADN                            R50 182
     1632 LOADN                            R51 80
     1633 LOADN                            R52 203
     1634 CALL                             R49 3 1
     1635 SETTABLEKS                       R49 R48 K315 ["ikLineColor"]
     1637 GETTABLEKS                       R49 R7 K288 ["DimmedText"]
     1639 SETTABLEKS                       R49 R48 K108 ["iconColor"]
     1641 GETTABLEKS                       R49 R7 K158 ["BrightText"]
     1643 SETTABLEKS                       R49 R48 K109 ["iconHighlightColor"]
     1645 GETTABLEKS                       R49 R7 K157 ["ItemSelected"]
     1647 SETTABLEKS                       R49 R48 K326 ["selected"]
     1649 GETTABLEKS                       R49 R7 K51 ["IKHeaderColor"]
     1651 SETTABLEKS                       R49 R48 K327 ["headerColor"]
     1653 GETTABLEKS                       R49 R7 K52 ["IKHeaderBorder"]
     1655 SETTABLEKS                       R49 R48 K328 ["headerBorder"]
     1657 GETTABLEKS                       R49 R7 K258 ["DialogMainButtonHover"]
     1659 SETTABLEKS                       R49 R48 K329 ["pinHover"]
     1661 DUPTABLE                         R49 K339 [{"Default", "Primary", "Error", "PrimaryError", "Bounce", "Constant", "Cubic", "Elastic"}]
     1662 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1663 GETTABLEKS                       R51 R7 K27 ["DialogButtonTextDisabled"]
     1665 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1667 GETTABLEKS                       R51 R7 K288 ["DimmedText"]
     1669 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1671 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1672 GETTABLEKS                       R52 R7 K27 ["DialogButtonTextDisabled"]
     1674 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1676 GETTABLEKS                       R52 R7 K167 ["DialogMainButton"]
     1678 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1680 SETTABLEKS                       R51 R50 K326 ["selected"]
     1682 SETTABLEKS                       R50 R49 K331 ["Default"]
     1684 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1685 GETTABLEKS                       R51 R7 K53 ["KeyframePrimaryBackgroundColor"]
     1687 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1689 GETTABLEKS                       R51 R7 K117 ["Border"]
     1691 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1693 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1694 GETTABLEKS                       R52 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
     1696 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1698 GETTABLEKS                       R52 R8 K36 ["Blue"]
     1700 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1702 SETTABLEKS                       R51 R50 K326 ["selected"]
     1704 SETTABLEKS                       R50 R49 K332 ["Primary"]
     1706 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1707 GETTABLEKS                       R51 R7 K55 ["KeyframeErrorBackgroundColor"]
     1709 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1711 GETTABLEKS                       R51 R7 K56 ["KeyframeErrorBorderColor"]
     1713 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1715 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1716 GETTABLEKS                       R52 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
     1718 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1720 GETTABLEKS                       R52 R7 K58 ["KeyframeErrorBorderColorSelected"]
     1722 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1724 SETTABLEKS                       R51 R50 K326 ["selected"]
     1726 SETTABLEKS                       R50 R49 K333 ["Error"]
     1728 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1729 GETTABLEKS                       R51 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
     1731 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1733 GETTABLEKS                       R51 R7 K61 ["KeyframePrimaryErrorBorderColor"]
     1735 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1737 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1738 GETTABLEKS                       R52 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
     1740 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1742 GETTABLEKS                       R52 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
     1744 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1746 SETTABLEKS                       R51 R50 K326 ["selected"]
     1748 SETTABLEKS                       R50 R49 K334 ["PrimaryError"]
     1750 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1751 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1753 LOADN                            R52 155
     1754 LOADN                            R53 198
     1755 LOADN                            R54 204
     1756 CALL                             R51 3 1
     1757 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1759 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1761 LOADN                            R52 56
     1762 LOADN                            R53 56
     1763 LOADN                            R54 56
     1764 CALL                             R51 3 1
     1765 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1767 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1768 GETIMPORT                        R52 K30 [Color3.fromRGB]
     1770 LOADN                            R53 155
     1771 LOADN                            R54 198
     1772 LOADN                            R55 204
     1773 CALL                             R52 3 1
     1774 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1776 GETTABLEKS                       R52 R7 K167 ["DialogMainButton"]
     1778 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1780 SETTABLEKS                       R51 R50 K326 ["selected"]
     1782 SETTABLEKS                       R50 R49 K335 ["Bounce"]
     1784 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1785 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1787 LOADN                            R52 156
     1788 LOADN                            R53 147
     1789 LOADN                            R54 226
     1790 CALL                             R51 3 1
     1791 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1793 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1795 LOADN                            R52 56
     1796 LOADN                            R53 56
     1797 LOADN                            R54 56
     1798 CALL                             R51 3 1
     1799 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1801 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1802 GETIMPORT                        R52 K30 [Color3.fromRGB]
     1804 LOADN                            R53 156
     1805 LOADN                            R54 147
     1806 LOADN                            R55 226
     1807 CALL                             R52 3 1
     1808 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1810 GETTABLEKS                       R52 R7 K167 ["DialogMainButton"]
     1812 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1814 SETTABLEKS                       R51 R50 K326 ["selected"]
     1816 SETTABLEKS                       R50 R49 K336 ["Constant"]
     1818 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1819 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1821 LOADN                            R52 254
     1822 LOADN                            R53 189
     1823 LOADN                            R54 81
     1824 CALL                             R51 3 1
     1825 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1827 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1829 LOADN                            R52 56
     1830 LOADN                            R53 56
     1831 LOADN                            R54 56
     1832 CALL                             R51 3 1
     1833 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1835 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1836 GETIMPORT                        R52 K30 [Color3.fromRGB]
     1838 LOADN                            R53 254
     1839 LOADN                            R54 189
     1840 LOADN                            R55 81
     1841 CALL                             R52 3 1
     1842 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1844 GETTABLEKS                       R52 R7 K167 ["DialogMainButton"]
     1846 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1848 SETTABLEKS                       R51 R50 K326 ["selected"]
     1850 SETTABLEKS                       R50 R49 K337 ["Cubic"]
     1852 DUPTABLE                         R50 K340 [{"backgroundColor", "borderColor", "selected"}]
     1853 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1855 LOADN                            R52 137
     1856 LOADN                            R53 187
     1857 LOADN                            R54 77
     1858 CALL                             R51 3 1
     1859 SETTABLEKS                       R51 R50 K129 ["backgroundColor"]
     1861 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1863 LOADN                            R52 56
     1864 LOADN                            R53 56
     1865 LOADN                            R54 56
     1866 CALL                             R51 3 1
     1867 SETTABLEKS                       R51 R50 K111 ["borderColor"]
     1869 DUPTABLE                         R51 K341 [{"backgroundColor", "borderColor"}]
     1870 GETIMPORT                        R52 K30 [Color3.fromRGB]
     1872 LOADN                            R53 137
     1873 LOADN                            R54 187
     1874 LOADN                            R55 77
     1875 CALL                             R52 3 1
     1876 SETTABLEKS                       R52 R51 K129 ["backgroundColor"]
     1878 GETTABLEKS                       R52 R7 K167 ["DialogMainButton"]
     1880 SETTABLEKS                       R52 R51 K111 ["borderColor"]
     1882 SETTABLEKS                       R51 R50 K326 ["selected"]
     1884 SETTABLEKS                       R50 R49 K338 ["Elastic"]
     1886 DUPTABLE                         R50 K357 [{["default"], ["positionX"], ["positionY"], ["positionZ"], ["rotationX"], ["rotationY"], ["rotationZ"], ["selected"], ["xAxis"], ["curveEditorButton"], ["dopesheetButton"], ["tangentControlColor"], ["tangentAutoButton"] = "rbxasset://textures/AnimationEditor/TangentHandle_Automatic_9x9.png", ["tangentDefinedButton"] = "rbxasset://textures/AnimationEditor/TangentHandle_SelfDefined_9x9.png"}]
     1887 GETTABLEKS                       R51 R7 K114 ["MainText"]
     1889 SETTABLEKS                       R51 R50 K342 ["default"]
     1891 GETTABLEKS                       R51 R7 K64 ["CurvePositionX"]
     1893 SETTABLEKS                       R51 R50 K343 ["positionX"]
     1895 GETTABLEKS                       R51 R7 K65 ["CurvePositionY"]
     1897 SETTABLEKS                       R51 R50 K344 ["positionY"]
     1899 GETTABLEKS                       R51 R7 K66 ["CurvePositionZ"]
     1901 SETTABLEKS                       R51 R50 K345 ["positionZ"]
     1903 GETTABLEKS                       R51 R7 K67 ["CurveRotationX"]
     1905 SETTABLEKS                       R51 R50 K346 ["rotationX"]
     1907 GETTABLEKS                       R51 R7 K68 ["CurveRotationY"]
     1909 SETTABLEKS                       R51 R50 K347 ["rotationY"]
     1911 GETTABLEKS                       R51 R7 K69 ["CurveRotationZ"]
     1913 SETTABLEKS                       R51 R50 K348 ["rotationZ"]
     1915 GETTABLEKS                       R51 R7 K167 ["DialogMainButton"]
     1917 SETTABLEKS                       R51 R50 K326 ["selected"]
     1919 GETTABLEKS                       R51 R7 K158 ["BrightText"]
     1921 SETTABLEKS                       R51 R50 K349 ["xAxis"]
     1923 GETTABLEKS                       R51 R7 K70 ["CurveEditorButton"]
     1925 SETTABLEKS                       R51 R50 K350 ["curveEditorButton"]
     1927 GETTABLEKS                       R51 R7 K72 ["DopeSheetButton"]
     1929 SETTABLEKS                       R51 R50 K351 ["dopesheetButton"]
     1931 GETTABLEKS                       R51 R7 K158 ["BrightText"]
     1933 SETTABLEKS                       R51 R50 K352 ["tangentControlColor"]
     1935 DUPTABLE                         R51 K362 [{["faceCaptureDefaultButtonIconColor"], ["stopRecordingButtonImage"], ["errorIcon"] = "rbxasset://textures/AnimationEditor/icon_error.png", ["warningIcon"] = "rbxasset://textures/AnimationEditor/icon_warning.png"}]
     1936 GETTABLEKS                       R52 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
     1938 SETTABLEKS                       R52 R51 K358 ["faceCaptureDefaultButtonIconColor"]
     1940 GETTABLEKS                       R52 R7 K74 ["StopRecordingButtonImage"]
     1942 SETTABLEKS                       R52 R51 K359 ["stopRecordingButtonImage"]
     1944 DUPTABLE                         R52 K364 [{["backgroundColor"], ["image"] = "rbxasset://textures/AnimationEditor/img_scrubberhead.png"}]
     1945 GETTABLEKS                       R53 R7 K167 ["DialogMainButton"]
     1947 SETTABLEKS                       R53 R52 K129 ["backgroundColor"]
     1949 DUPTABLE                         R53 K365 [{"backgroundColor"}]
     1950 GETTABLEKS                       R54 R8 K36 ["Blue"]
     1952 SETTABLEKS                       R54 R53 K129 ["backgroundColor"]
     1954 DUPTABLE                         R54 K367 [{"filterButton"}]
     1955 DUPTABLE                         R55 K370 [{["image"] = "rbxasset://textures/StudioSharedUI/filter.png", ["size"]}]
     1956 GETIMPORT                        R56 K372 [UDim2.fromOffset]
     1958 LOADN                            R57 16
     1959 LOADN                            R58 16
     1960 CALL                             R56 2 1
     1961 SETTABLEKS                       R56 R55 K369 ["size"]
     1963 SETTABLEKS                       R55 R54 K366 ["filterButton"]
     1965 DUPTABLE                         R55 K382 [{["font"], ["textColor"], ["textSize"] = 15, ["buttonHeight"] = 20, ["radioButtonBackground"] = "rbxasset://textures/GameSettings/RadioButton.png", ["radioButtonSelected"] = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png", ["contentPadding"] = 16, ["buttonPadding"] = 6}]
     1966 GETIMPORT                        R56 K384 [Enum.Font.SourceSans]
     1968 SETTABLEKS                       R56 R55 K182 ["font"]
     1970 GETTABLEKS                       R56 R7 K114 ["MainText"]
     1972 SETTABLEKS                       R56 R55 K121 ["textColor"]
     1974 NEWTABLE                         R56 64 0
     1976 GETIMPORT                        R57 K384 [Enum.Font.SourceSans]
     1978 SETTABLEKS                       R57 R56 K182 ["font"]
     1980 GETTABLEKS                       R57 R7 K156 ["MainBackground"]
     1982 SETTABLEKS                       R57 R56 K129 ["backgroundColor"]
     1984 GETTABLEKS                       R57 R7 K117 ["Border"]
     1986 SETTABLEKS                       R57 R56 K111 ["borderColor"]
     1988 SETTABLEKS                       R21 R56 K385 ["playbackTheme"]
     1990 SETTABLEKS                       R22 R56 K386 ["dropdownTheme"]
     1992 SETTABLEKS                       R23 R56 K387 ["trackTheme"]
     1994 SETTABLEKS                       R54 R56 K388 ["eventTheme"]
     1996 SETTABLEKS                       R27 R56 K389 ["keyframeTheme"]
     1998 SETTABLEKS                       R41 R56 K390 ["eventMarker"]
     2000 GETTABLEKS                       R57 R7 K167 ["DialogMainButton"]
     2002 SETTABLEKS                       R57 R56 K391 ["selectionBox"]
     2004 SETTABLEKS                       R42 R56 K392 ["zoomBarTheme"]
     2006 SETTABLEKS                       R42 R56 K393 ["scrollBarTheme"]
     2008 SETTABLEKS                       R43 R56 K394 ["timelineTheme"]
     2010 SETTABLEKS                       R24 R56 K395 ["scaleControlsTheme"]
     2012 SETTABLEKS                       R25 R56 K396 ["textBox"]
     2014 SETTABLEKS                       R26 R56 K397 ["settingsButtonTheme"]
     2016 SETTABLEKS                       R44 R56 K398 ["dialogTheme"]
     2018 SETTABLEKS                       R45 R56 K399 ["toastTheme"]
     2020 SETTABLEKS                       R46 R56 K400 ["startScreenTheme"]
     2022 SETTABLEKS                       R47 R56 K401 ["gridTheme"]
     2024 SETTABLEKS                       R48 R56 K402 ["ikTheme"]
     2026 SETTABLEKS                       R28 R56 K403 ["checkBox"]
     2028 SETTABLEKS                       R33 R56 K404 ["faceSliderTheme"]
     2030 SETTABLEKS                       R34 R56 K405 ["faceSliderMaxValueTheme"]
     2032 SETTABLEKS                       R35 R56 K406 ["faceDragBoxTheme"]
     2034 SETTABLEKS                       R36 R56 K407 ["faceDragBoxMaxValueTheme"]
     2036 SETTABLEKS                       R37 R56 K408 ["roundFrame"]
     2038 SETTABLEKS                       R38 R56 K409 ["button"]
     2040 SETTABLEKS                       R49 R56 K410 ["keyframe"]
     2042 SETTABLEKS                       R52 R56 K411 ["scrubberTheme"]
     2044 SETTABLEKS                       R51 R56 K412 ["faceCaptureTheme"]
     2046 SETTABLEKS                       R50 R56 K413 ["curveTheme"]
     2048 SETTABLEKS                       R53 R56 K414 ["progressBarTheme"]
     2050 GETTABLEKS                       R57 R16 K208 ["Button"]
     2052 SETTABLE                         R40 R56 R57
     2053 SETTABLEKS                       R55 R56 K415 ["radioButton"]
     2055 DUPCLOSURE                       R57 K416 [PROTO_0]
     2056 CAPTURE                          VAL R6
     2057 CAPTURE                          VAL R20
     2058 CAPTURE                          VAL R19
     2059 CAPTURE                          VAL R56
     2060 RETURN                           R57 1
