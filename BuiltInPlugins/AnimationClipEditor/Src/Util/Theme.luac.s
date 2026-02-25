PROTO_0:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["mock"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 1
        7 JUMP                             ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["new"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleModifier"]
       25 GETTABLEKS                       R5 R2 K11 ["Style"]
       27 GETTABLEKS                       R7 R5 K12 ["Themes"]
       29 GETTABLEKS                       R6 R7 K13 ["StudioTheme"]
       31 GETTABLEKS                       R7 R5 K14 ["StyleKey"]
       33 GETTABLEKS                       R8 R5 K15 ["Colors"]
       35 GETTABLEKS                       R9 R2 K16 ["UI"]
       37 GETTABLEKS                       R10 R9 K17 ["Box"]
       39 GETTABLEKS                       R11 R9 K18 ["RoundBox"]
       41 GETTABLEKS                       R12 R9 K19 ["Image"]
       43 GETTABLEKS                       R14 R5 K12 ["Themes"]
       45 GETTABLEKS                       R13 R14 K20 ["LightTheme"]
       47 GETTABLEKS                       R15 R5 K12 ["Themes"]
       49 GETTABLEKS                       R14 R15 K21 ["DarkTheme"]
       51 GETTABLEKS                       R15 R5 K22 ["getRawComponentStyle"]
       53 GETTABLEKS                       R16 R5 K23 ["ComponentSymbols"]
       55 GETTABLEKS                       R17 R2 K24 ["Dash"]
       57 GETTABLEKS                       R18 R17 K25 ["join"]
       59 GETTABLEKS                       R20 R1 K26 ["Dictionary"]
       61 GETTABLEKS                       R19 R20 K25 ["join"]
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
      377 GETTABLEKS                       R21 R1 K26 ["Dictionary"]
      379 GETTABLEKS                       R20 R21 K25 ["join"]
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
      687 DUPTABLE                         R21 K103 [{"autokeyOn", "autokeyOff", "skipBackward", "skipForward", "play", "pause", "loop", "reverse", "goToFirstFrame", "goToLastFrame", "selectClipDropdownIcon", "iconColor", "iconHighlightColor", "timeInputBackground", "borderColor", "inputBorderColor"}]
      688 LOADK                            R22 K104 [""]
      689 SETTABLEKS                       R22 R21 K87 ["autokeyOn"]
      691 LOADK                            R22 K104 [""]
      692 SETTABLEKS                       R22 R21 K88 ["autokeyOff"]
      694 LOADK                            R22 K105 ["rbxasset://textures/AnimationEditor/button_control_previous.png"]
      695 SETTABLEKS                       R22 R21 K89 ["skipBackward"]
      697 LOADK                            R22 K106 ["rbxasset://textures/AnimationEditor/button_control_next.png"]
      698 SETTABLEKS                       R22 R21 K90 ["skipForward"]
      700 LOADK                            R22 K107 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
      701 SETTABLEKS                       R22 R21 K91 ["play"]
      703 LOADK                            R22 K108 ["rbxasset://textures/AnimationEditor/button_pause_white@2x.png"]
      704 SETTABLEKS                       R22 R21 K92 ["pause"]
      706 LOADK                            R22 K109 ["rbxasset://textures/AnimationEditor/button_loop.png"]
      707 SETTABLEKS                       R22 R21 K93 ["loop"]
      709 LOADK                            R22 K110 ["rbxasset://textures/AnimationEditor/button_control_reverseplay.png"]
      710 SETTABLEKS                       R22 R21 K94 ["reverse"]
      712 LOADK                            R22 K111 ["rbxasset://textures/AnimationEditor/button_control_firstframe.png"]
      713 SETTABLEKS                       R22 R21 K95 ["goToFirstFrame"]
      715 LOADK                            R22 K112 ["rbxasset://textures/AnimationEditor/button_control_lastframe.png"]
      716 SETTABLEKS                       R22 R21 K96 ["goToLastFrame"]
      718 LOADK                            R22 K113 ["rbxasset://textures/AnimationEditor/btn_expand.png"]
      719 SETTABLEKS                       R22 R21 K97 ["selectClipDropdownIcon"]
      721 GETTABLEKS                       R22 R7 K114 ["MainText"]
      723 SETTABLEKS                       R22 R21 K98 ["iconColor"]
      725 GETTABLEKS                       R22 R7 K115 ["DialogMainButtonText"]
      727 SETTABLEKS                       R22 R21 K99 ["iconHighlightColor"]
      729 GETTABLEKS                       R22 R7 K116 ["InputFieldBackground"]
      731 SETTABLEKS                       R22 R21 K100 ["timeInputBackground"]
      733 GETTABLEKS                       R22 R7 K117 ["Border"]
      735 SETTABLEKS                       R22 R21 K101 ["borderColor"]
      737 GETTABLEKS                       R22 R7 K118 ["InputFieldBorder"]
      739 SETTABLEKS                       R22 R21 K102 ["inputBorderColor"]
      741 DUPTABLE                         R22 K124 [{"itemColor", "hoveredItemColor", "textColor", "itemHeight", "textSize"}]
      742 GETTABLEKS                       R23 R7 K125 ["Item"]
      744 SETTABLEKS                       R23 R22 K119 ["itemColor"]
      746 GETTABLEKS                       R23 R7 K126 ["ItemHovered"]
      748 SETTABLEKS                       R23 R22 K120 ["hoveredItemColor"]
      750 GETTABLEKS                       R23 R7 K114 ["MainText"]
      752 SETTABLEKS                       R23 R22 K121 ["textColor"]
      754 LOADN                            R23 22
      755 SETTABLEKS                       R23 R22 K122 ["itemHeight"]
      757 LOADN                            R23 15
      758 SETTABLEKS                       R23 R22 K123 ["textSize"]
      760 DUPTABLE                         R23 K147 [{"backgroundColor", "shadedBackgroundColor", "titleBackgroundColor", "selectedBackgroundColor", "primaryBackgroundColor", "textColor", "primaryTextColor", "selectedTextColor", "textSize", "arrow", "contextMenu", "addButtonBackground", "addEventBackground", "addEventBorder", "plusIcon", "errorImage", "buttonColor", "hoveredButtonColor", "addButtonColor", "hoveredAddButtonColor", "plusIconColor", "hoveredPlusIconColor"}]
      761 GETTABLEKS                       R24 R7 K148 ["MainBackground"]
      763 SETTABLEKS                       R24 R23 K127 ["backgroundColor"]
      765 GETTABLEKS                       R24 R7 K31 ["TrackShadedBackgroundColor"]
      767 SETTABLEKS                       R24 R23 K128 ["shadedBackgroundColor"]
      769 GETTABLEKS                       R24 R7 K32 ["TrackTitleBackgroundColor"]
      771 SETTABLEKS                       R24 R23 K129 ["titleBackgroundColor"]
      773 GETTABLEKS                       R24 R7 K149 ["ItemSelected"]
      775 SETTABLEKS                       R24 R23 K130 ["selectedBackgroundColor"]
      777 GETTABLEKS                       R24 R7 K33 ["TrackPrimaryBackgroundColor"]
      779 SETTABLEKS                       R24 R23 K131 ["primaryBackgroundColor"]
      781 GETTABLEKS                       R24 R7 K114 ["MainText"]
      783 SETTABLEKS                       R24 R23 K121 ["textColor"]
      785 GETTABLEKS                       R24 R7 K150 ["BrightText"]
      787 SETTABLEKS                       R24 R23 K132 ["primaryTextColor"]
      789 GETTABLEKS                       R24 R7 K151 ["MainTextSelected"]
      791 SETTABLEKS                       R24 R23 K133 ["selectedTextColor"]
      793 LOADN                            R24 15
      794 SETTABLEKS                       R24 R23 K123 ["textSize"]
      796 DUPTABLE                         R24 K154 [{"collapsed", "expanded"}]
      797 LOADK                            R25 K155 ["rbxasset://textures/StudioToolbox/ArrowCollapsed.png"]
      798 SETTABLEKS                       R25 R24 K152 ["collapsed"]
      800 LOADK                            R25 K156 ["rbxasset://textures/StudioToolbox/ArrowExpanded.png"]
      801 SETTABLEKS                       R25 R24 K153 ["expanded"]
      803 SETTABLEKS                       R24 R23 K134 ["arrow"]
      805 LOADK                            R24 K157 ["rbxasset://textures/AnimationEditor/icon_showmore.png"]
      806 SETTABLEKS                       R24 R23 K135 ["contextMenu"]
      808 LOADK                            R24 K158 ["rbxasset://textures/AnimationEditor/Circle.png"]
      809 SETTABLEKS                       R24 R23 K136 ["addButtonBackground"]
      811 LOADK                            R24 K159 ["rbxasset://textures/AnimationEditor/addEvent_inner.png"]
      812 SETTABLEKS                       R24 R23 K137 ["addEventBackground"]
      814 LOADK                            R24 K160 ["rbxasset://textures/AnimationEditor/addEvent_border.png"]
      815 SETTABLEKS                       R24 R23 K138 ["addEventBorder"]
      817 LOADK                            R24 K161 ["rbxasset://textures/AnimationEditor/icon_add.png"]
      818 SETTABLEKS                       R24 R23 K139 ["plusIcon"]
      820 LOADK                            R24 K162 ["rbxasset://textures/AnimationEditor/icon_error.png"]
      821 SETTABLEKS                       R24 R23 K140 ["errorImage"]
      823 GETTABLEKS                       R24 R7 K34 ["TrackButtonColor"]
      825 SETTABLEKS                       R24 R23 K141 ["buttonColor"]
      827 GETTABLEKS                       R24 R7 K35 ["TrackHoveredButtonColor"]
      829 SETTABLEKS                       R24 R23 K142 ["hoveredButtonColor"]
      831 GETTABLEKS                       R24 R7 K37 ["TrackAddButtonColor"]
      833 SETTABLEKS                       R24 R23 K143 ["addButtonColor"]
      835 GETTABLEKS                       R24 R7 K39 ["TrackHoveredAddButtonColor"]
      837 SETTABLEKS                       R24 R23 K144 ["hoveredAddButtonColor"]
      839 GETTABLEKS                       R24 R7 K40 ["TrackPlusIconColor"]
      841 SETTABLEKS                       R24 R23 K145 ["plusIconColor"]
      843 GETTABLEKS                       R24 R7 K115 ["DialogMainButtonText"]
      845 SETTABLEKS                       R24 R23 K146 ["hoveredPlusIconColor"]
      847 DUPTABLE                         R24 K164 [{"mainColor", "textColor", "textSize"}]
      848 GETTABLEKS                       R25 R7 K165 ["DialogMainButton"]
      850 SETTABLEKS                       R25 R24 K163 ["mainColor"]
      852 GETTABLEKS                       R25 R7 K115 ["DialogMainButtonText"]
      854 SETTABLEKS                       R25 R24 K121 ["textColor"]
      856 LOADN                            R25 15
      857 SETTABLEKS                       R25 R24 K123 ["textSize"]
      859 DUPTABLE                         R25 K169 [{"textSize", "textColor", "backgroundColor", "errorBorder", "focusedBorder", "defaultBorder"}]
      860 LOADN                            R26 16
      861 SETTABLEKS                       R26 R25 K123 ["textSize"]
      863 GETTABLEKS                       R26 R7 K114 ["MainText"]
      865 SETTABLEKS                       R26 R25 K121 ["textColor"]
      867 GETTABLEKS                       R26 R7 K116 ["InputFieldBackground"]
      869 SETTABLEKS                       R26 R25 K127 ["backgroundColor"]
      871 GETTABLEKS                       R26 R7 K170 ["ErrorText"]
      873 SETTABLEKS                       R26 R25 K166 ["errorBorder"]
      875 GETTABLEKS                       R26 R7 K165 ["DialogMainButton"]
      877 SETTABLEKS                       R26 R25 K167 ["focusedBorder"]
      879 GETTABLEKS                       R26 R7 K117 ["Border"]
      881 SETTABLEKS                       R26 R25 K168 ["defaultBorder"]
      883 DUPTABLE                         R26 K173 [{"image", "imageColor"}]
      884 LOADK                            R27 K174 ["rbxasset://textures/AnimationEditor/btn_manage.png"]
      885 SETTABLEKS                       R27 R26 K171 ["image"]
      887 GETTABLEKS                       R27 R7 K114 ["MainText"]
      889 SETTABLEKS                       R27 R26 K172 ["imageColor"]
      891 DUPTABLE                         R27 K177 [{"clusterColor", "primaryClusterColor"}]
      892 GETTABLEKS                       R28 R7 K27 ["DialogButtonTextDisabled"]
      894 SETTABLEKS                       R28 R27 K175 ["clusterColor"]
      896 GETTABLEKS                       R28 R7 K43 ["KeyframePrimaryClusterColor"]
      898 SETTABLEKS                       R28 R27 K176 ["primaryClusterColor"]
      900 DUPTABLE                         R28 K182 [{"backgroundColor", "titleColor", "font", "textSize", "backgroundImage", "selectedImage"}]
      901 GETIMPORT                        R29 K30 [Color3.fromRGB]
      903 LOADN                            R30 182
      904 LOADN                            R31 182
      905 LOADN                            R32 182
      906 CALL                             R29 3 1
      907 SETTABLEKS                       R29 R28 K127 ["backgroundColor"]
      909 GETTABLEKS                       R29 R7 K114 ["MainText"]
      911 SETTABLEKS                       R29 R28 K178 ["titleColor"]
      913 GETIMPORT                        R29 K186 [Enum.Font.Legacy]
      915 SETTABLEKS                       R29 R28 K179 ["font"]
      917 LOADN                            R29 8
      918 SETTABLEKS                       R29 R28 K123 ["textSize"]
      920 LOADK                            R29 K187 ["rbxasset://textures/GameSettings/UncheckedBox.png"]
      921 SETTABLEKS                       R29 R28 K180 ["backgroundImage"]
      923 LOADK                            R29 K188 ["rbxasset://textures/GameSettings/CheckedBoxLight.png"]
      924 SETTABLEKS                       R29 R28 K181 ["selectedImage"]
      926 GETIMPORT                        R29 K191 [Rect.new]
      928 LOADN                            R30 3
      929 LOADN                            R31 0
      930 LOADN                            R32 4
      931 LOADN                            R33 6
      932 CALL                             R29 4 1
      933 GETTABLEKS                       R30 R7 K77 ["FaceSliderKnob"]
      935 NEWTABLE                         R31 8 0
      937 GETIMPORT                        R32 K193 [Vector2.new]
      939 LOADK                            R33 K194 [0.5]
      940 LOADK                            R34 K194 [0.5]
      941 CALL                             R32 2 1
      942 SETTABLEKS                       R32 R31 K195 ["AnchorPoint"]
      944 SETTABLEKS                       R30 R31 K196 ["Color"]
      946 GETTABLEKS                       R32 R7 K197 ["SliderKnobImage"]
      948 SETTABLEKS                       R32 R31 K19 ["Image"]
      950 GETIMPORT                        R32 K199 [UDim2.new]
      952 LOADN                            R33 0
      953 LOADK                            R34 K200 [6.5]
      954 LOADN                            R35 0
      955 LOADK                            R36 K200 [6.5]
      956 CALL                             R32 4 1
      957 SETTABLEKS                       R32 R31 K201 ["Size"]
      959 GETTABLEKS                       R32 R4 K202 ["Disabled"]
      961 DUPTABLE                         R33 K203 [{"Color"}]
      962 GETTABLEKS                       R34 R7 K204 ["Button"]
      964 SETTABLEKS                       R34 R33 K196 ["Color"]
      966 SETTABLE                         R33 R31 R32
      967 NEWTABLE                         R32 8 0
      969 GETIMPORT                        R33 K193 [Vector2.new]
      971 LOADK                            R34 K194 [0.5]
      972 LOADK                            R35 K194 [0.5]
      973 CALL                             R33 2 1
      974 SETTABLEKS                       R33 R32 K195 ["AnchorPoint"]
      976 SETTABLEKS                       R30 R32 K196 ["Color"]
      978 GETTABLEKS                       R33 R7 K197 ["SliderKnobImage"]
      980 SETTABLEKS                       R33 R32 K19 ["Image"]
      982 GETIMPORT                        R33 K199 [UDim2.new]
      984 LOADN                            R34 0
      985 LOADN                            R35 9
      986 LOADN                            R36 0
      987 LOADN                            R37 9
      988 CALL                             R33 4 1
      989 SETTABLEKS                       R33 R32 K201 ["Size"]
      991 GETTABLEKS                       R33 R4 K202 ["Disabled"]
      993 DUPTABLE                         R34 K203 [{"Color"}]
      994 GETTABLEKS                       R35 R7 K204 ["Button"]
      996 SETTABLEKS                       R35 R34 K196 ["Color"]
      998 SETTABLE                         R34 R32 R33
      999 DUPTABLE                         R33 K216 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle", "BackgroundStyleHorizontal", "BackgroundStyleVertical"}]
     1000 GETIMPORT                        R34 K193 [Vector2.new]
     1002 LOADN                            R35 18
     1003 LOADN                            R36 18
     1004 CALL                             R34 2 1
     1005 SETTABLEKS                       R34 R33 K205 ["KnobSize"]
     1007 SETTABLEKS                       R12 R33 K206 ["Background"]
     1009 DUPTABLE                         R34 K217 [{"Background", "Size"}]
     1010 GETIMPORT                        R35 K30 [Color3.fromRGB]
     1012 LOADN                            R36 87
     1013 LOADN                            R37 87
     1014 LOADN                            R38 87
     1015 CALL                             R35 3 1
     1016 SETTABLEKS                       R35 R34 K206 ["Background"]
     1018 GETIMPORT                        R35 K199 [UDim2.new]
     1020 LOADN                            R36 1
     1021 LOADN                            R37 0
     1022 LOADN                            R38 0
     1023 LOADN                            R39 1
     1024 CALL                             R35 4 1
     1025 SETTABLEKS                       R35 R34 K201 ["Size"]
     1027 SETTABLEKS                       R34 R33 K207 ["BackgroundStyle"]
     1029 SETTABLEKS                       R12 R33 K208 ["Foreground"]
     1031 NEWTABLE                         R34 4 0
     1033 GETTABLEKS                       R35 R7 K165 ["DialogMainButton"]
     1035 SETTABLEKS                       R35 R34 K206 ["Background"]
     1037 GETIMPORT                        R35 K199 [UDim2.new]
     1039 LOADN                            R36 1
     1040 LOADN                            R37 0
     1041 LOADN                            R38 0
     1042 LOADN                            R39 1
     1043 CALL                             R35 4 1
     1044 SETTABLEKS                       R35 R34 K201 ["Size"]
     1046 GETTABLEKS                       R35 R4 K202 ["Disabled"]
     1048 DUPTABLE                         R36 K218 [{"Background"}]
     1049 GETTABLEKS                       R37 R7 K204 ["Button"]
     1051 SETTABLEKS                       R37 R36 K206 ["Background"]
     1053 SETTABLE                         R36 R34 R35
     1054 SETTABLEKS                       R34 R33 K209 ["ForegroundStyle"]
     1056 SETTABLEKS                       R12 R33 K210 ["LowerKnobBackground"]
     1058 SETTABLEKS                       R31 R33 K211 ["LowerKnobBackgroundStyle"]
     1060 SETTABLEKS                       R12 R33 K212 ["UpperKnobBackground"]
     1062 SETTABLEKS                       R31 R33 K213 ["UpperKnobBackgroundStyle"]
     1064 DUPTABLE                         R34 K217 [{"Background", "Size"}]
     1065 GETIMPORT                        R35 K30 [Color3.fromRGB]
     1067 LOADN                            R36 87
     1068 LOADN                            R37 87
     1069 LOADN                            R38 87
     1070 CALL                             R35 3 1
     1071 SETTABLEKS                       R35 R34 K206 ["Background"]
     1073 GETIMPORT                        R35 K199 [UDim2.new]
     1075 LOADN                            R36 1
     1076 LOADN                            R37 0
     1077 LOADN                            R38 0
     1078 LOADN                            R39 1
     1079 CALL                             R35 4 1
     1080 SETTABLEKS                       R35 R34 K201 ["Size"]
     1082 SETTABLEKS                       R34 R33 K214 ["BackgroundStyleHorizontal"]
     1084 DUPTABLE                         R34 K217 [{"Background", "Size"}]
     1085 GETIMPORT                        R35 K30 [Color3.fromRGB]
     1087 LOADN                            R36 87
     1088 LOADN                            R37 87
     1089 LOADN                            R38 87
     1090 CALL                             R35 3 1
     1091 SETTABLEKS                       R35 R34 K206 ["Background"]
     1093 GETIMPORT                        R35 K199 [UDim2.new]
     1095 LOADN                            R36 1
     1096 LOADN                            R37 0
     1097 LOADN                            R38 0
     1098 LOADN                            R39 1
     1099 CALL                             R35 4 1
     1100 SETTABLEKS                       R35 R34 K201 ["Size"]
     1102 SETTABLEKS                       R34 R33 K215 ["BackgroundStyleVertical"]
     1104 DUPTABLE                         R34 K216 [{"KnobSize", "Background", "BackgroundStyle", "Foreground", "ForegroundStyle", "LowerKnobBackground", "LowerKnobBackgroundStyle", "UpperKnobBackground", "UpperKnobBackgroundStyle", "BackgroundStyleHorizontal", "BackgroundStyleVertical"}]
     1105 GETIMPORT                        R35 K193 [Vector2.new]
     1107 LOADN                            R36 18
     1108 LOADN                            R37 18
     1109 CALL                             R35 2 1
     1110 SETTABLEKS                       R35 R34 K205 ["KnobSize"]
     1112 SETTABLEKS                       R12 R34 K206 ["Background"]
     1114 DUPTABLE                         R35 K217 [{"Background", "Size"}]
     1115 GETIMPORT                        R36 K30 [Color3.fromRGB]
     1117 LOADN                            R37 87
     1118 LOADN                            R38 87
     1119 LOADN                            R39 87
     1120 CALL                             R36 3 1
     1121 SETTABLEKS                       R36 R35 K206 ["Background"]
     1123 GETIMPORT                        R36 K199 [UDim2.new]
     1125 LOADN                            R37 1
     1126 LOADN                            R38 0
     1127 LOADN                            R39 0
     1128 LOADN                            R40 1
     1129 CALL                             R36 4 1
     1130 SETTABLEKS                       R36 R35 K201 ["Size"]
     1132 SETTABLEKS                       R35 R34 K207 ["BackgroundStyle"]
     1134 SETTABLEKS                       R12 R34 K208 ["Foreground"]
     1136 NEWTABLE                         R35 4 0
     1138 GETTABLEKS                       R36 R7 K165 ["DialogMainButton"]
     1140 SETTABLEKS                       R36 R35 K206 ["Background"]
     1142 GETIMPORT                        R36 K199 [UDim2.new]
     1144 LOADN                            R37 1
     1145 LOADN                            R38 0
     1146 LOADN                            R39 0
     1147 LOADN                            R40 1
     1148 CALL                             R36 4 1
     1149 SETTABLEKS                       R36 R35 K201 ["Size"]
     1151 GETTABLEKS                       R36 R4 K202 ["Disabled"]
     1153 DUPTABLE                         R37 K218 [{"Background"}]
     1154 GETTABLEKS                       R38 R7 K204 ["Button"]
     1156 SETTABLEKS                       R38 R37 K206 ["Background"]
     1158 SETTABLE                         R37 R35 R36
     1159 SETTABLEKS                       R35 R34 K209 ["ForegroundStyle"]
     1161 SETTABLEKS                       R12 R34 K210 ["LowerKnobBackground"]
     1163 SETTABLEKS                       R32 R34 K211 ["LowerKnobBackgroundStyle"]
     1165 SETTABLEKS                       R12 R34 K212 ["UpperKnobBackground"]
     1167 SETTABLEKS                       R32 R34 K213 ["UpperKnobBackgroundStyle"]
     1169 DUPTABLE                         R35 K217 [{"Background", "Size"}]
     1170 GETIMPORT                        R36 K30 [Color3.fromRGB]
     1172 LOADN                            R37 87
     1173 LOADN                            R38 87
     1174 LOADN                            R39 87
     1175 CALL                             R36 3 1
     1176 SETTABLEKS                       R36 R35 K206 ["Background"]
     1178 GETIMPORT                        R36 K199 [UDim2.new]
     1180 LOADN                            R37 1
     1181 LOADN                            R38 0
     1182 LOADN                            R39 0
     1183 LOADN                            R40 1
     1184 CALL                             R36 4 1
     1185 SETTABLEKS                       R36 R35 K201 ["Size"]
     1187 SETTABLEKS                       R35 R34 K214 ["BackgroundStyleHorizontal"]
     1189 DUPTABLE                         R35 K217 [{"Background", "Size"}]
     1190 GETIMPORT                        R36 K30 [Color3.fromRGB]
     1192 LOADN                            R37 87
     1193 LOADN                            R38 87
     1194 LOADN                            R39 87
     1195 CALL                             R36 3 1
     1196 SETTABLEKS                       R36 R35 K206 ["Background"]
     1198 GETIMPORT                        R36 K199 [UDim2.new]
     1200 LOADN                            R37 1
     1201 LOADN                            R38 0
     1202 LOADN                            R39 0
     1203 LOADN                            R40 1
     1204 CALL                             R36 4 1
     1205 SETTABLEKS                       R36 R35 K201 ["Size"]
     1207 SETTABLEKS                       R35 R34 K215 ["BackgroundStyleVertical"]
     1209 DUPTABLE                         R35 K222 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
     1210 GETIMPORT                        R36 K193 [Vector2.new]
     1212 LOADN                            R37 18
     1213 LOADN                            R38 18
     1214 CALL                             R36 2 1
     1215 SETTABLEKS                       R36 R35 K205 ["KnobSize"]
     1217 SETTABLEKS                       R12 R35 K206 ["Background"]
     1219 DUPTABLE                         R36 K228 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
     1220 GETIMPORT                        R37 K193 [Vector2.new]
     1222 LOADN                            R38 0
     1223 LOADK                            R39 K194 [0.5]
     1224 CALL                             R37 2 1
     1225 SETTABLEKS                       R37 R36 K195 ["AnchorPoint"]
     1227 GETIMPORT                        R37 K30 [Color3.fromRGB]
     1229 LOADN                            R38 87
     1230 LOADN                            R39 87
     1231 LOADN                            R40 87
     1232 CALL                             R37 3 1
     1233 SETTABLEKS                       R37 R36 K196 ["Color"]
     1235 GETIMPORT                        R37 K199 [UDim2.new]
     1237 LOADN                            R38 0
     1238 LOADN                            R39 0
     1239 LOADK                            R40 K194 [0.5]
     1240 LOADN                            R41 0
     1241 CALL                             R37 4 1
     1242 SETTABLEKS                       R37 R36 K223 ["Position"]
     1244 GETIMPORT                        R37 K230 [Enum.ScaleType.Slice]
     1246 SETTABLEKS                       R37 R36 K224 ["ScaleType"]
     1248 GETIMPORT                        R37 K199 [UDim2.new]
     1250 GETIMPORT                        R38 K232 [UDim.new]
     1252 LOADN                            R39 1
     1253 LOADN                            R40 0
     1254 CALL                             R38 2 1
     1255 GETIMPORT                        R39 K232 [UDim.new]
     1257 LOADN                            R40 1
     1258 LOADN                            R41 0
     1259 CALL                             R39 2 -1
     1260 CALL                             R37 -1 1
     1261 SETTABLEKS                       R37 R36 K201 ["Size"]
     1263 SETTABLEKS                       R29 R36 K225 ["SliceCenter"]
     1265 LOADN                            R37 1
     1266 SETTABLEKS                       R37 R36 K226 ["BackgroundTransparency"]
     1268 LOADN                            R37 1
     1269 SETTABLEKS                       R37 R36 K227 ["ImageTransparency"]
     1271 SETTABLEKS                       R36 R35 K207 ["BackgroundStyle"]
     1273 NEWTABLE                         R36 8 0
     1275 GETIMPORT                        R37 K193 [Vector2.new]
     1277 LOADN                            R38 0
     1278 LOADK                            R39 K194 [0.5]
     1279 CALL                             R37 2 1
     1280 SETTABLEKS                       R37 R36 K195 ["AnchorPoint"]
     1282 LOADK                            R37 K233 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
     1283 SETTABLEKS                       R37 R36 K19 ["Image"]
     1285 GETTABLEKS                       R37 R7 K165 ["DialogMainButton"]
     1287 SETTABLEKS                       R37 R36 K196 ["Color"]
     1289 GETIMPORT                        R37 K230 [Enum.ScaleType.Slice]
     1291 SETTABLEKS                       R37 R36 K224 ["ScaleType"]
     1293 GETIMPORT                        R37 K199 [UDim2.new]
     1295 GETIMPORT                        R38 K232 [UDim.new]
     1297 LOADN                            R39 1
     1298 LOADN                            R40 0
     1299 CALL                             R38 2 1
     1300 GETIMPORT                        R39 K232 [UDim.new]
     1302 LOADN                            R40 0
     1303 LOADN                            R41 1
     1304 CALL                             R39 2 -1
     1305 CALL                             R37 -1 1
     1306 SETTABLEKS                       R37 R36 K201 ["Size"]
     1308 SETTABLEKS                       R29 R36 K225 ["SliceCenter"]
     1310 GETTABLEKS                       R37 R4 K202 ["Disabled"]
     1312 DUPTABLE                         R38 K203 [{"Color"}]
     1313 GETTABLEKS                       R39 R7 K204 ["Button"]
     1315 SETTABLEKS                       R39 R38 K196 ["Color"]
     1317 SETTABLE                         R38 R36 R37
     1318 SETTABLEKS                       R36 R35 K209 ["ForegroundStyle"]
     1320 DUPTABLE                         R36 K203 [{"Color"}]
     1321 GETIMPORT                        R37 K30 [Color3.fromRGB]
     1323 LOADN                            R38 87
     1324 LOADN                            R39 87
     1325 LOADN                            R40 87
     1326 CALL                             R37 3 1
     1327 SETTABLEKS                       R37 R36 K196 ["Color"]
     1329 SETTABLEKS                       R36 R35 K219 ["OutlineStyle"]
     1331 SETTABLEKS                       R12 R35 K220 ["KnobBackground"]
     1333 SETTABLEKS                       R31 R35 K221 ["KnobBackgroundStyle"]
     1335 DUPTABLE                         R36 K222 [{"KnobSize", "Background", "BackgroundStyle", "ForegroundStyle", "OutlineStyle", "KnobBackground", "KnobBackgroundStyle"}]
     1336 GETIMPORT                        R37 K193 [Vector2.new]
     1338 LOADN                            R38 18
     1339 LOADN                            R39 18
     1340 CALL                             R37 2 1
     1341 SETTABLEKS                       R37 R36 K205 ["KnobSize"]
     1343 SETTABLEKS                       R12 R36 K206 ["Background"]
     1345 DUPTABLE                         R37 K228 [{"AnchorPoint", "Color", "Position", "ScaleType", "Size", "SliceCenter", "BackgroundTransparency", "ImageTransparency"}]
     1346 GETIMPORT                        R38 K193 [Vector2.new]
     1348 LOADN                            R39 0
     1349 LOADK                            R40 K194 [0.5]
     1350 CALL                             R38 2 1
     1351 SETTABLEKS                       R38 R37 K195 ["AnchorPoint"]
     1353 GETIMPORT                        R38 K30 [Color3.fromRGB]
     1355 LOADN                            R39 87
     1356 LOADN                            R40 87
     1357 LOADN                            R41 87
     1358 CALL                             R38 3 1
     1359 SETTABLEKS                       R38 R37 K196 ["Color"]
     1361 GETIMPORT                        R38 K199 [UDim2.new]
     1363 LOADN                            R39 0
     1364 LOADN                            R40 0
     1365 LOADK                            R41 K194 [0.5]
     1366 LOADN                            R42 0
     1367 CALL                             R38 4 1
     1368 SETTABLEKS                       R38 R37 K223 ["Position"]
     1370 GETIMPORT                        R38 K230 [Enum.ScaleType.Slice]
     1372 SETTABLEKS                       R38 R37 K224 ["ScaleType"]
     1374 GETIMPORT                        R38 K199 [UDim2.new]
     1376 GETIMPORT                        R39 K232 [UDim.new]
     1378 LOADN                            R40 1
     1379 LOADN                            R41 0
     1380 CALL                             R39 2 1
     1381 GETIMPORT                        R40 K232 [UDim.new]
     1383 LOADN                            R41 1
     1384 LOADN                            R42 0
     1385 CALL                             R40 2 -1
     1386 CALL                             R38 -1 1
     1387 SETTABLEKS                       R38 R37 K201 ["Size"]
     1389 SETTABLEKS                       R29 R37 K225 ["SliceCenter"]
     1391 LOADN                            R38 1
     1392 SETTABLEKS                       R38 R37 K226 ["BackgroundTransparency"]
     1394 LOADN                            R38 1
     1395 SETTABLEKS                       R38 R37 K227 ["ImageTransparency"]
     1397 SETTABLEKS                       R37 R36 K207 ["BackgroundStyle"]
     1399 NEWTABLE                         R37 8 0
     1401 GETIMPORT                        R38 K193 [Vector2.new]
     1403 LOADN                            R39 0
     1404 LOADK                            R40 K194 [0.5]
     1405 CALL                             R38 2 1
     1406 SETTABLEKS                       R38 R37 K195 ["AnchorPoint"]
     1408 LOADK                            R38 K233 ["rbxasset://textures/DeveloperFramework/slider_bg.png"]
     1409 SETTABLEKS                       R38 R37 K19 ["Image"]
     1411 GETTABLEKS                       R38 R7 K165 ["DialogMainButton"]
     1413 SETTABLEKS                       R38 R37 K196 ["Color"]
     1415 GETIMPORT                        R38 K230 [Enum.ScaleType.Slice]
     1417 SETTABLEKS                       R38 R37 K224 ["ScaleType"]
     1419 GETIMPORT                        R38 K199 [UDim2.new]
     1421 GETIMPORT                        R39 K232 [UDim.new]
     1423 LOADN                            R40 1
     1424 LOADN                            R41 0
     1425 CALL                             R39 2 1
     1426 GETIMPORT                        R40 K232 [UDim.new]
     1428 LOADN                            R41 0
     1429 LOADN                            R42 1
     1430 CALL                             R40 2 -1
     1431 CALL                             R38 -1 1
     1432 SETTABLEKS                       R38 R37 K201 ["Size"]
     1434 SETTABLEKS                       R29 R37 K225 ["SliceCenter"]
     1436 GETTABLEKS                       R38 R4 K202 ["Disabled"]
     1438 DUPTABLE                         R39 K203 [{"Color"}]
     1439 GETTABLEKS                       R40 R7 K204 ["Button"]
     1441 SETTABLEKS                       R40 R39 K196 ["Color"]
     1443 SETTABLE                         R39 R37 R38
     1444 SETTABLEKS                       R37 R36 K209 ["ForegroundStyle"]
     1446 DUPTABLE                         R37 K203 [{"Color"}]
     1447 GETIMPORT                        R38 K30 [Color3.fromRGB]
     1449 LOADN                            R39 87
     1450 LOADN                            R40 87
     1451 LOADN                            R41 87
     1452 CALL                             R38 3 1
     1453 SETTABLEKS                       R38 R37 K196 ["Color"]
     1455 SETTABLEKS                       R37 R36 K219 ["OutlineStyle"]
     1457 SETTABLEKS                       R12 R36 K220 ["KnobBackground"]
     1459 SETTABLEKS                       R32 R36 K221 ["KnobBackgroundStyle"]
     1461 DUPTABLE                         R37 K236 [{"slice", "backgroundImage", "borderImage"}]
     1462 GETIMPORT                        R38 K191 [Rect.new]
     1464 LOADN                            R39 3
     1465 LOADN                            R40 3
     1466 LOADN                            R41 13
     1467 LOADN                            R42 13
     1468 CALL                             R38 4 1
     1469 SETTABLEKS                       R38 R37 K234 ["slice"]
     1471 LOADK                            R38 K237 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
     1472 SETTABLEKS                       R38 R37 K180 ["backgroundImage"]
     1474 LOADK                            R38 K238 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
     1475 SETTABLEKS                       R38 R37 K235 ["borderImage"]
     1477 DUPTABLE                         R38 K246 [{"MediaControl", "EventFilter", "ActiveControl", "IKDefault", "IKActive", "FaceControlsEditorActive", "FaceControlsEditorDefault"}]
     1478 NEWTABLE                         R39 4 0
     1480 SETTABLEKS                       R10 R39 K206 ["Background"]
     1482 DUPTABLE                         R40 K249 [{"Color", "BorderColor", "BorderSize"}]
     1483 GETTABLEKS                       R41 R7 K148 ["MainBackground"]
     1485 SETTABLEKS                       R41 R40 K196 ["Color"]
     1487 GETTABLEKS                       R41 R7 K117 ["Border"]
     1489 SETTABLEKS                       R41 R40 K247 ["BorderColor"]
     1491 LOADN                            R41 1
     1492 SETTABLEKS                       R41 R40 K248 ["BorderSize"]
     1494 SETTABLEKS                       R40 R39 K207 ["BackgroundStyle"]
     1496 GETTABLEKS                       R40 R4 K250 ["Hover"]
     1498 DUPTABLE                         R41 K251 [{"BackgroundStyle"}]
     1499 DUPTABLE                         R42 K249 [{"Color", "BorderColor", "BorderSize"}]
     1500 GETTABLEKS                       R43 R7 K252 ["ButtonHover"]
     1502 SETTABLEKS                       R43 R42 K196 ["Color"]
     1504 GETTABLEKS                       R43 R7 K117 ["Border"]
     1506 SETTABLEKS                       R43 R42 K247 ["BorderColor"]
     1508 LOADN                            R43 1
     1509 SETTABLEKS                       R43 R42 K248 ["BorderSize"]
     1511 SETTABLEKS                       R42 R41 K207 ["BackgroundStyle"]
     1513 SETTABLE                         R41 R39 R40
     1514 SETTABLEKS                       R39 R38 K239 ["MediaControl"]
     1516 NEWTABLE                         R39 4 0
     1518 SETTABLEKS                       R10 R39 K206 ["Background"]
     1520 DUPTABLE                         R40 K203 [{"Color"}]
     1521 GETTABLEKS                       R41 R7 K32 ["TrackTitleBackgroundColor"]
     1523 SETTABLEKS                       R41 R40 K196 ["Color"]
     1525 SETTABLEKS                       R40 R39 K207 ["BackgroundStyle"]
     1527 GETTABLEKS                       R40 R4 K250 ["Hover"]
     1529 DUPTABLE                         R41 K251 [{"BackgroundStyle"}]
     1530 DUPTABLE                         R42 K203 [{"Color"}]
     1531 GETTABLEKS                       R43 R7 K252 ["ButtonHover"]
     1533 SETTABLEKS                       R43 R42 K196 ["Color"]
     1535 SETTABLEKS                       R42 R41 K207 ["BackgroundStyle"]
     1537 SETTABLE                         R41 R39 R40
     1538 SETTABLEKS                       R39 R38 K240 ["EventFilter"]
     1540 NEWTABLE                         R39 4 0
     1542 SETTABLEKS                       R10 R39 K206 ["Background"]
     1544 DUPTABLE                         R40 K249 [{"Color", "BorderColor", "BorderSize"}]
     1545 GETTABLEKS                       R41 R7 K165 ["DialogMainButton"]
     1547 SETTABLEKS                       R41 R40 K196 ["Color"]
     1549 GETTABLEKS                       R41 R7 K165 ["DialogMainButton"]
     1551 SETTABLEKS                       R41 R40 K247 ["BorderColor"]
     1553 LOADN                            R41 1
     1554 SETTABLEKS                       R41 R40 K248 ["BorderSize"]
     1556 SETTABLEKS                       R40 R39 K207 ["BackgroundStyle"]
     1558 GETTABLEKS                       R40 R4 K250 ["Hover"]
     1560 DUPTABLE                         R41 K251 [{"BackgroundStyle"}]
     1561 DUPTABLE                         R42 K249 [{"Color", "BorderColor", "BorderSize"}]
     1562 GETTABLEKS                       R43 R7 K253 ["DialogMainButtonHover"]
     1564 SETTABLEKS                       R43 R42 K196 ["Color"]
     1566 GETTABLEKS                       R43 R7 K253 ["DialogMainButtonHover"]
     1568 SETTABLEKS                       R43 R42 K247 ["BorderColor"]
     1570 LOADN                            R43 1
     1571 SETTABLEKS                       R43 R42 K248 ["BorderSize"]
     1573 SETTABLEKS                       R42 R41 K207 ["BackgroundStyle"]
     1575 SETTABLE                         R41 R39 R40
     1576 SETTABLEKS                       R39 R38 K241 ["ActiveControl"]
     1578 DUPTABLE                         R39 K218 [{"Background"}]
     1579 SETTABLEKS                       R11 R39 K206 ["Background"]
     1581 SETTABLEKS                       R39 R38 K242 ["IKDefault"]
     1583 DUPTABLE                         R39 K218 [{"Background"}]
     1584 SETTABLEKS                       R11 R39 K206 ["Background"]
     1586 SETTABLEKS                       R39 R38 K243 ["IKActive"]
     1588 DUPTABLE                         R39 K218 [{"Background"}]
     1589 SETTABLEKS                       R11 R39 K206 ["Background"]
     1591 SETTABLEKS                       R39 R38 K244 ["FaceControlsEditorActive"]
     1593 DUPTABLE                         R39 K218 [{"Background"}]
     1594 SETTABLEKS                       R11 R39 K206 ["Background"]
     1596 SETTABLEKS                       R39 R38 K245 ["FaceControlsEditorDefault"]
     1598 MOVE                             R39 R15
     1599 LOADK                            R40 K204 ["Button"]
     1600 CALL                             R39 1 1
     1601 MOVE                             R40 R18
     1602 MOVE                             R41 R39
     1603 NEWTABLE                         R42 2 0
     1605 MOVE                             R43 R18
     1606 GETTABLEKS                       R44 R39 K254 ["&Round"]
     1608 DUPTABLE                         R45 K218 [{"Background"}]
     1609 SETTABLEKS                       R11 R45 K206 ["Background"]
     1611 CALL                             R43 2 1
     1612 SETTABLEKS                       R43 R42 K255 ["&ACEHeaderButtonDefault"]
     1614 MOVE                             R43 R18
     1615 GETTABLEKS                       R44 R39 K256 ["&RoundPrimary"]
     1617 NEWTABLE                         R45 0 0
     1619 CALL                             R43 2 1
     1620 SETTABLEKS                       R43 R42 K257 ["&ACEHeaderButtonActive"]
     1622 CALL                             R40 2 1
     1623 DUPTABLE                         R41 K261 [{"imageColor", "borderColor", "selectionBorderColor", "mainImage", "borderImage", "selectionBorderImage", "textSize"}]
     1624 GETTABLEKS                       R42 R7 K44 ["EventMarkerImageColor"]
     1626 SETTABLEKS                       R42 R41 K172 ["imageColor"]
     1628 GETTABLEKS                       R42 R7 K45 ["EventMarkerBorderColor"]
     1630 SETTABLEKS                       R42 R41 K101 ["borderColor"]
     1632 GETTABLEKS                       R42 R7 K165 ["DialogMainButton"]
     1634 SETTABLEKS                       R42 R41 K258 ["selectionBorderColor"]
     1636 LOADK                            R42 K6 ["Packages"]
     1637 SETTABLEKS                       R42 R41 K259 ["mainImage"]
     1639 LOADK                            R42 K7 ["Cryo"]
     1640 SETTABLEKS                       R42 R41 K235 ["borderImage"]
     1642 LOADK                            R42 K8 ["Framework"]
     1643 SETTABLEKS                       R42 R41 K260 ["selectionBorderImage"]
     1645 LOADN                            R42 15
     1646 SETTABLEKS                       R42 R41 K123 ["textSize"]
     1648 DUPTABLE                         R42 K271 [{"controlImage", "arrowImage", "imageColor", "controlColor", "hoverColor", "pressedColor", "backgroundColor", "borderColor", "borderSize"}]
     1649 LOADK                            R43 K16 ["UI"]
     1650 SETTABLEKS                       R43 R42 K265 ["controlImage"]
     1652 LOADK                            R43 K17 ["Box"]
     1653 SETTABLEKS                       R43 R42 K266 ["arrowImage"]
     1655 GETTABLEKS                       R43 R7 K114 ["MainText"]
     1657 SETTABLEKS                       R43 R42 K172 ["imageColor"]
     1659 GETTABLEKS                       R43 R7 K46 ["ScrollBarControl"]
     1661 SETTABLEKS                       R43 R42 K267 ["controlColor"]
     1663 GETTABLEKS                       R43 R7 K48 ["ScrollBarHover"]
     1665 SETTABLEKS                       R43 R42 K268 ["hoverColor"]
     1667 GETTABLEKS                       R43 R7 K49 ["ScrollBarPressed"]
     1669 SETTABLEKS                       R43 R42 K269 ["pressedColor"]
     1671 GETTABLEKS                       R43 R7 K274 ["ScrollBarBackground"]
     1673 SETTABLEKS                       R43 R42 K127 ["backgroundColor"]
     1675 GETTABLEKS                       R43 R7 K118 ["InputFieldBorder"]
     1677 SETTABLEKS                       R43 R42 K101 ["borderColor"]
     1679 LOADN                            R43 1
     1680 SETTABLEKS                       R43 R42 K270 ["borderSize"]
     1682 DUPTABLE                         R43 K280 [{"lineColor", "textColor", "dimmedColor", "barColor", "backgroundColor", "lowerTransparency", "lowerBrightTransparency", "textSize"}]
     1683 GETTABLEKS                       R44 R7 K281 ["DimmedText"]
     1685 SETTABLEKS                       R44 R43 K275 ["lineColor"]
     1687 GETTABLEKS                       R44 R7 K281 ["DimmedText"]
     1689 SETTABLEKS                       R44 R43 K121 ["textColor"]
     1691 GETTABLEKS                       R44 R7 K41 ["TimelineDimmedColor"]
     1693 SETTABLEKS                       R44 R43 K276 ["dimmedColor"]
     1695 GETTABLEKS                       R44 R7 K148 ["MainBackground"]
     1697 SETTABLEKS                       R44 R43 K277 ["barColor"]
     1699 GETTABLEKS                       R44 R7 K42 ["TimelineBackgroundColor"]
     1701 SETTABLEKS                       R44 R43 K127 ["backgroundColor"]
     1703 LOADK                            R44 K26 ["Dictionary"]
     1704 SETTABLEKS                       R44 R43 K278 ["lowerTransparency"]
     1706 LOADK                            R44 K27 ["DialogButtonTextDisabled"]
     1707 SETTABLEKS                       R44 R43 K279 ["lowerBrightTransparency"]
     1709 LOADN                            R44 15
     1710 SETTABLEKS                       R44 R43 K123 ["textSize"]
     1712 DUPTABLE                         R44 K292 [{"textSize", "subTextSize", "headerFont", "textColor", "subTextColor", "errorTextColor", "deleteImage", "addImage", "errorImage", "warningImage", "headerTextSize"}]
     1713 LOADN                            R45 16
     1714 SETTABLEKS                       R45 R44 K123 ["textSize"]
     1716 LOADN                            R45 15
     1717 SETTABLEKS                       R45 R44 K284 ["subTextSize"]
     1719 GETIMPORT                        R45 K294 [Enum.Font.SourceSansSemibold]
     1721 SETTABLEKS                       R45 R44 K285 ["headerFont"]
     1723 GETTABLEKS                       R45 R7 K114 ["MainText"]
     1725 SETTABLEKS                       R45 R44 K121 ["textColor"]
     1727 GETTABLEKS                       R45 R7 K281 ["DimmedText"]
     1729 SETTABLEKS                       R45 R44 K286 ["subTextColor"]
     1731 GETTABLEKS                       R45 R7 K170 ["ErrorText"]
     1733 SETTABLEKS                       R45 R44 K287 ["errorTextColor"]
     1735 LOADK                            R45 K39 ["TrackHoveredAddButtonColor"]
     1736 SETTABLEKS                       R45 R44 K288 ["deleteImage"]
     1738 LOADK                            R45 K161 ["rbxasset://textures/AnimationEditor/icon_add.png"]
     1739 SETTABLEKS                       R45 R44 K289 ["addImage"]
     1741 LOADK                            R45 K162 ["rbxasset://textures/AnimationEditor/icon_error.png"]
     1742 SETTABLEKS                       R45 R44 K140 ["errorImage"]
     1744 LOADK                            R45 K40 ["TrackPlusIconColor"]
     1745 SETTABLEKS                       R45 R44 K290 ["warningImage"]
     1747 LOADN                            R45 18
     1748 SETTABLEKS                       R45 R44 K291 ["headerTextSize"]
     1750 DUPTABLE                         R45 K300 [{"textSize", "textColor", "shadowTransparency", "shadowColor", "shadowSize"}]
     1751 LOADN                            R46 16
     1752 SETTABLEKS                       R46 R45 K123 ["textSize"]
     1754 GETTABLEKS                       R46 R7 K114 ["MainText"]
     1756 SETTABLEKS                       R46 R45 K121 ["textColor"]
     1758 LOADK                            R46 K45 ["EventMarkerBorderColor"]
     1759 SETTABLEKS                       R46 R45 K297 ["shadowTransparency"]
     1761 GETIMPORT                        R46 K302 [Color3.new]
     1763 CALL                             R46 0 1
     1764 SETTABLEKS                       R46 R45 K298 ["shadowColor"]
     1766 LOADN                            R46 35
     1767 SETTABLEKS                       R46 R45 K299 ["shadowSize"]
     1769 DUPTABLE                         R46 K304 [{"textSize", "textColor", "darkTextColor"}]
     1770 LOADN                            R47 16
     1771 SETTABLEKS                       R47 R46 K123 ["textSize"]
     1773 GETTABLEKS                       R47 R7 K114 ["MainText"]
     1775 SETTABLEKS                       R47 R46 K121 ["textColor"]
     1777 GETTABLEKS                       R47 R7 K50 ["StartScreenDarkTextColor"]
     1779 SETTABLEKS                       R47 R46 K303 ["darkTextColor"]
     1781 DUPTABLE                         R47 K305 [{"lineColor"}]
     1782 GETIMPORT                        R48 K307 [BrickColor.new]
     1784 GETIMPORT                        R49 K302 [Color3.new]
     1786 LOADN                            R50 1
     1787 LOADN                            R51 1
     1788 LOADN                            R52 1
     1789 CALL                             R49 3 -1
     1790 CALL                             R48 -1 1
     1791 SETTABLEKS                       R48 R47 K275 ["lineColor"]
     1793 DUPTABLE                         R48 K318 [{"textColor", "primaryTextColor", "textSize", "lineColor", "ikLineColor", "transparency", "leafNodeImage", "expandImage", "collapseImage", "pinImage", "iconColor", "iconHighlightColor", "selected", "headerColor", "headerBorder", "pinHover"}]
     1794 GETTABLEKS                       R49 R7 K114 ["MainText"]
     1796 SETTABLEKS                       R49 R48 K121 ["textColor"]
     1798 GETTABLEKS                       R49 R7 K151 ["MainTextSelected"]
     1800 SETTABLEKS                       R49 R48 K132 ["primaryTextColor"]
     1802 LOADN                            R49 15
     1803 SETTABLEKS                       R49 R48 K123 ["textSize"]
     1805 GETTABLEKS                       R49 R7 K281 ["DimmedText"]
     1807 SETTABLEKS                       R49 R48 K275 ["lineColor"]
     1809 GETIMPORT                        R49 K30 [Color3.fromRGB]
     1811 LOADN                            R50 182
     1812 LOADN                            R51 80
     1813 LOADN                            R52 203
     1814 CALL                             R49 3 1
     1815 SETTABLEKS                       R49 R48 K308 ["ikLineColor"]
     1817 LOADK                            R49 K63 ["KeyframePrimaryErrorBorderColorSelected"]
     1818 SETTABLEKS                       R49 R48 K309 ["transparency"]
     1820 LOADK                            R49 K64 ["CurvePositionX"]
     1821 SETTABLEKS                       R49 R48 K310 ["leafNodeImage"]
     1823 LOADK                            R49 K65 ["CurvePositionY"]
     1824 SETTABLEKS                       R49 R48 K311 ["expandImage"]
     1826 LOADK                            R49 K66 ["CurvePositionZ"]
     1827 SETTABLEKS                       R49 R48 K312 ["collapseImage"]
     1829 LOADK                            R49 K67 ["CurveRotationX"]
     1830 SETTABLEKS                       R49 R48 K313 ["pinImage"]
     1832 GETTABLEKS                       R49 R7 K281 ["DimmedText"]
     1834 SETTABLEKS                       R49 R48 K98 ["iconColor"]
     1836 GETTABLEKS                       R49 R7 K150 ["BrightText"]
     1838 SETTABLEKS                       R49 R48 K99 ["iconHighlightColor"]
     1840 GETTABLEKS                       R49 R7 K149 ["ItemSelected"]
     1842 SETTABLEKS                       R49 R48 K314 ["selected"]
     1844 GETTABLEKS                       R49 R7 K51 ["IKHeaderColor"]
     1846 SETTABLEKS                       R49 R48 K315 ["headerColor"]
     1848 GETTABLEKS                       R49 R7 K52 ["IKHeaderBorder"]
     1850 SETTABLEKS                       R49 R48 K316 ["headerBorder"]
     1852 GETTABLEKS                       R49 R7 K253 ["DialogMainButtonHover"]
     1854 SETTABLEKS                       R49 R48 K317 ["pinHover"]
     1856 DUPTABLE                         R49 K332 [{"Default", "Primary", "Error", "PrimaryError", "Bounce", "Constant", "Cubic", "Elastic"}]
     1857 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     1858 GETTABLEKS                       R51 R7 K27 ["DialogButtonTextDisabled"]
     1860 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     1862 GETTABLEKS                       R51 R7 K281 ["DimmedText"]
     1864 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     1866 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     1867 GETTABLEKS                       R52 R7 K27 ["DialogButtonTextDisabled"]
     1869 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     1871 GETTABLEKS                       R52 R7 K165 ["DialogMainButton"]
     1873 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     1875 SETTABLEKS                       R51 R50 K314 ["selected"]
     1877 SETTABLEKS                       R50 R49 K324 ["Default"]
     1879 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     1880 GETTABLEKS                       R51 R7 K53 ["KeyframePrimaryBackgroundColor"]
     1882 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     1884 GETTABLEKS                       R51 R7 K117 ["Border"]
     1886 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     1888 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     1889 GETTABLEKS                       R52 R7 K54 ["KeyframePrimaryBackgroundColorSelected"]
     1891 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     1893 GETTABLEKS                       R52 R8 K36 ["Blue"]
     1895 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     1897 SETTABLEKS                       R51 R50 K314 ["selected"]
     1899 SETTABLEKS                       R50 R49 K325 ["Primary"]
     1901 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     1902 GETTABLEKS                       R51 R7 K55 ["KeyframeErrorBackgroundColor"]
     1904 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     1906 GETTABLEKS                       R51 R7 K56 ["KeyframeErrorBorderColor"]
     1908 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     1910 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     1911 GETTABLEKS                       R52 R7 K57 ["KeyframeErrorBackgroundColorSelected"]
     1913 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     1915 GETTABLEKS                       R52 R7 K58 ["KeyframeErrorBorderColorSelected"]
     1917 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     1919 SETTABLEKS                       R51 R50 K314 ["selected"]
     1921 SETTABLEKS                       R50 R49 K326 ["Error"]
     1923 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     1924 GETTABLEKS                       R51 R7 K60 ["KeyframePrimaryErrorBackgroundColor"]
     1926 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     1928 GETTABLEKS                       R51 R7 K61 ["KeyframePrimaryErrorBorderColor"]
     1930 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     1932 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     1933 GETTABLEKS                       R52 R7 K62 ["KeyframePrimaryErrorBackgroundColorSelected"]
     1935 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     1937 GETTABLEKS                       R52 R7 K63 ["KeyframePrimaryErrorBorderColorSelected"]
     1939 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     1941 SETTABLEKS                       R51 R50 K314 ["selected"]
     1943 SETTABLEKS                       R50 R49 K327 ["PrimaryError"]
     1945 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     1946 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1948 LOADN                            R52 155
     1949 LOADN                            R53 198
     1950 LOADN                            R54 204
     1951 CALL                             R51 3 1
     1952 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     1954 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1956 LOADN                            R52 56
     1957 LOADN                            R53 56
     1958 LOADN                            R54 56
     1959 CALL                             R51 3 1
     1960 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     1962 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     1963 GETIMPORT                        R52 K30 [Color3.fromRGB]
     1965 LOADN                            R53 155
     1966 LOADN                            R54 198
     1967 LOADN                            R55 204
     1968 CALL                             R52 3 1
     1969 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     1971 GETTABLEKS                       R52 R7 K165 ["DialogMainButton"]
     1973 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     1975 SETTABLEKS                       R51 R50 K314 ["selected"]
     1977 SETTABLEKS                       R50 R49 K328 ["Bounce"]
     1979 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     1980 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1982 LOADN                            R52 156
     1983 LOADN                            R53 147
     1984 LOADN                            R54 226
     1985 CALL                             R51 3 1
     1986 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     1988 GETIMPORT                        R51 K30 [Color3.fromRGB]
     1990 LOADN                            R52 56
     1991 LOADN                            R53 56
     1992 LOADN                            R54 56
     1993 CALL                             R51 3 1
     1994 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     1996 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     1997 GETIMPORT                        R52 K30 [Color3.fromRGB]
     1999 LOADN                            R53 156
     2000 LOADN                            R54 147
     2001 LOADN                            R55 226
     2002 CALL                             R52 3 1
     2003 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     2005 GETTABLEKS                       R52 R7 K165 ["DialogMainButton"]
     2007 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     2009 SETTABLEKS                       R51 R50 K314 ["selected"]
     2011 SETTABLEKS                       R50 R49 K329 ["Constant"]
     2013 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     2014 GETIMPORT                        R51 K30 [Color3.fromRGB]
     2016 LOADN                            R52 254
     2017 LOADN                            R53 189
     2018 LOADN                            R54 81
     2019 CALL                             R51 3 1
     2020 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     2022 GETIMPORT                        R51 K30 [Color3.fromRGB]
     2024 LOADN                            R52 56
     2025 LOADN                            R53 56
     2026 LOADN                            R54 56
     2027 CALL                             R51 3 1
     2028 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     2030 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     2031 GETIMPORT                        R52 K30 [Color3.fromRGB]
     2033 LOADN                            R53 254
     2034 LOADN                            R54 189
     2035 LOADN                            R55 81
     2036 CALL                             R52 3 1
     2037 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     2039 GETTABLEKS                       R52 R7 K165 ["DialogMainButton"]
     2041 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     2043 SETTABLEKS                       R51 R50 K314 ["selected"]
     2045 SETTABLEKS                       R50 R49 K330 ["Cubic"]
     2047 DUPTABLE                         R50 K333 [{"backgroundColor", "borderColor", "selected"}]
     2048 GETIMPORT                        R51 K30 [Color3.fromRGB]
     2050 LOADN                            R52 137
     2051 LOADN                            R53 187
     2052 LOADN                            R54 77
     2053 CALL                             R51 3 1
     2054 SETTABLEKS                       R51 R50 K127 ["backgroundColor"]
     2056 GETIMPORT                        R51 K30 [Color3.fromRGB]
     2058 LOADN                            R52 56
     2059 LOADN                            R53 56
     2060 LOADN                            R54 56
     2061 CALL                             R51 3 1
     2062 SETTABLEKS                       R51 R50 K101 ["borderColor"]
     2064 DUPTABLE                         R51 K334 [{"backgroundColor", "borderColor"}]
     2065 GETIMPORT                        R52 K30 [Color3.fromRGB]
     2067 LOADN                            R53 137
     2068 LOADN                            R54 187
     2069 LOADN                            R55 77
     2070 CALL                             R52 3 1
     2071 SETTABLEKS                       R52 R51 K127 ["backgroundColor"]
     2073 GETTABLEKS                       R52 R7 K165 ["DialogMainButton"]
     2075 SETTABLEKS                       R52 R51 K101 ["borderColor"]
     2077 SETTABLEKS                       R51 R50 K314 ["selected"]
     2079 SETTABLEKS                       R50 R49 K331 ["Elastic"]
     2081 DUPTABLE                         R50 K348 [{"default", "positionX", "positionY", "positionZ", "rotationX", "rotationY", "rotationZ", "selected", "xAxis", "curveEditorButton", "dopesheetButton", "tangentControlColor", "tangentAutoButton", "tangentDefinedButton"}]
     2082 GETTABLEKS                       R51 R7 K114 ["MainText"]
     2084 SETTABLEKS                       R51 R50 K335 ["default"]
     2086 GETTABLEKS                       R51 R7 K64 ["CurvePositionX"]
     2088 SETTABLEKS                       R51 R50 K336 ["positionX"]
     2090 GETTABLEKS                       R51 R7 K65 ["CurvePositionY"]
     2092 SETTABLEKS                       R51 R50 K337 ["positionY"]
     2094 GETTABLEKS                       R51 R7 K66 ["CurvePositionZ"]
     2096 SETTABLEKS                       R51 R50 K338 ["positionZ"]
     2098 GETTABLEKS                       R51 R7 K67 ["CurveRotationX"]
     2100 SETTABLEKS                       R51 R50 K339 ["rotationX"]
     2102 GETTABLEKS                       R51 R7 K68 ["CurveRotationY"]
     2104 SETTABLEKS                       R51 R50 K340 ["rotationY"]
     2106 GETTABLEKS                       R51 R7 K69 ["CurveRotationZ"]
     2108 SETTABLEKS                       R51 R50 K341 ["rotationZ"]
     2110 GETTABLEKS                       R51 R7 K165 ["DialogMainButton"]
     2112 SETTABLEKS                       R51 R50 K314 ["selected"]
     2114 GETTABLEKS                       R51 R7 K150 ["BrightText"]
     2116 SETTABLEKS                       R51 R50 K342 ["xAxis"]
     2118 GETTABLEKS                       R51 R7 K70 ["CurveEditorButton"]
     2120 SETTABLEKS                       R51 R50 K343 ["curveEditorButton"]
     2122 GETTABLEKS                       R51 R7 K72 ["DopeSheetButton"]
     2124 SETTABLEKS                       R51 R50 K344 ["dopesheetButton"]
     2126 GETTABLEKS                       R51 R7 K150 ["BrightText"]
     2128 SETTABLEKS                       R51 R50 K345 ["tangentControlColor"]
     2130 LOADK                            R51 K93 ["loop"]
     2131 SETTABLEKS                       R51 R50 K346 ["tangentAutoButton"]
     2133 LOADK                            R51 K94 ["reverse"]
     2134 SETTABLEKS                       R51 R50 K347 ["tangentDefinedButton"]
     2136 DUPTABLE                         R51 K355 [{"faceCaptureDefaultButtonIconColor", "stopRecordingButtonImage", "errorIcon", "warningIcon"}]
     2137 GETTABLEKS                       R52 R7 K76 ["FaceCaptureDefaultButtonIconColor"]
     2139 SETTABLEKS                       R52 R51 K351 ["faceCaptureDefaultButtonIconColor"]
     2141 GETTABLEKS                       R52 R7 K74 ["StopRecordingButtonImage"]
     2143 SETTABLEKS                       R52 R51 K352 ["stopRecordingButtonImage"]
     2145 LOADK                            R52 K162 ["rbxasset://textures/AnimationEditor/icon_error.png"]
     2146 SETTABLEKS                       R52 R51 K353 ["errorIcon"]
     2148 LOADK                            R52 K40 ["TrackPlusIconColor"]
     2149 SETTABLEKS                       R52 R51 K354 ["warningIcon"]
     2151 DUPTABLE                         R52 K356 [{"backgroundColor", "image"}]
     2152 GETTABLEKS                       R53 R7 K165 ["DialogMainButton"]
     2154 SETTABLEKS                       R53 R52 K127 ["backgroundColor"]
     2156 LOADK                            R53 K101 ["borderColor"]
     2157 SETTABLEKS                       R53 R52 K171 ["image"]
     2159 DUPTABLE                         R53 K358 [{"backgroundColor"}]
     2160 GETTABLEKS                       R54 R8 K36 ["Blue"]
     2162 SETTABLEKS                       R54 R53 K127 ["backgroundColor"]
     2164 DUPTABLE                         R54 K360 [{"filterButton"}]
     2165 DUPTABLE                         R55 K362 [{"image", "size"}]
     2166 LOADK                            R56 K107 ["rbxasset://textures/AnimationEditor/button_control_play.png"]
     2167 SETTABLEKS                       R56 R55 K171 ["image"]
     2169 GETIMPORT                        R56 K365 [UDim2.fromOffset]
     2171 LOADN                            R57 16
     2172 LOADN                            R58 16
     2173 CALL                             R56 2 1
     2174 SETTABLEKS                       R56 R55 K361 ["size"]
     2176 SETTABLEKS                       R55 R54 K359 ["filterButton"]
     2178 DUPTABLE                         R55 K371 [{"font", "textColor", "textSize", "buttonHeight", "radioButtonBackground", "radioButtonSelected", "contentPadding", "buttonPadding"}]
     2179 GETIMPORT                        R56 K373 [Enum.Font.SourceSans]
     2181 SETTABLEKS                       R56 R55 K179 ["font"]
     2183 GETTABLEKS                       R56 R7 K114 ["MainText"]
     2185 SETTABLEKS                       R56 R55 K121 ["textColor"]
     2187 LOADN                            R56 15
     2188 SETTABLEKS                       R56 R55 K123 ["textSize"]
     2190 LOADN                            R56 20
     2191 SETTABLEKS                       R56 R55 K366 ["buttonHeight"]
     2193 LOADK                            R56 K118 ["InputFieldBorder"]
     2194 SETTABLEKS                       R56 R55 K367 ["radioButtonBackground"]
     2196 LOADK                            R56 K119 ["itemColor"]
     2197 SETTABLEKS                       R56 R55 K368 ["radioButtonSelected"]
     2199 LOADN                            R56 16
     2200 SETTABLEKS                       R56 R55 K369 ["contentPadding"]
     2202 LOADN                            R56 6
     2203 SETTABLEKS                       R56 R55 K370 ["buttonPadding"]
     2205 NEWTABLE                         R56 64 0
     2207 GETIMPORT                        R57 K373 [Enum.Font.SourceSans]
     2209 SETTABLEKS                       R57 R56 K179 ["font"]
     2211 GETTABLEKS                       R57 R7 K148 ["MainBackground"]
     2213 SETTABLEKS                       R57 R56 K127 ["backgroundColor"]
     2215 GETTABLEKS                       R57 R7 K117 ["Border"]
     2217 SETTABLEKS                       R57 R56 K101 ["borderColor"]
     2219 SETTABLEKS                       R21 R56 K376 ["playbackTheme"]
     2221 SETTABLEKS                       R22 R56 K377 ["dropdownTheme"]
     2223 SETTABLEKS                       R23 R56 K378 ["trackTheme"]
     2225 SETTABLEKS                       R54 R56 K379 ["eventTheme"]
     2227 SETTABLEKS                       R27 R56 K380 ["keyframeTheme"]
     2229 SETTABLEKS                       R41 R56 K381 ["eventMarker"]
     2231 GETTABLEKS                       R57 R7 K165 ["DialogMainButton"]
     2233 SETTABLEKS                       R57 R56 K382 ["selectionBox"]
     2235 SETTABLEKS                       R42 R56 K383 ["zoomBarTheme"]
     2237 SETTABLEKS                       R42 R56 K384 ["scrollBarTheme"]
     2239 SETTABLEKS                       R43 R56 K385 ["timelineTheme"]
     2241 SETTABLEKS                       R24 R56 K386 ["scaleControlsTheme"]
     2243 SETTABLEKS                       R25 R56 K387 ["textBox"]
     2245 SETTABLEKS                       R26 R56 K388 ["settingsButtonTheme"]
     2247 SETTABLEKS                       R44 R56 K389 ["dialogTheme"]
     2249 SETTABLEKS                       R45 R56 K390 ["toastTheme"]
     2251 SETTABLEKS                       R46 R56 K391 ["startScreenTheme"]
     2253 SETTABLEKS                       R47 R56 K392 ["gridTheme"]
     2255 SETTABLEKS                       R48 R56 K393 ["ikTheme"]
     2257 SETTABLEKS                       R28 R56 K394 ["checkBox"]
     2259 SETTABLEKS                       R33 R56 K395 ["faceSliderTheme"]
     2261 SETTABLEKS                       R34 R56 K396 ["faceSliderMaxValueTheme"]
     2263 SETTABLEKS                       R35 R56 K397 ["faceDragBoxTheme"]
     2265 SETTABLEKS                       R36 R56 K398 ["faceDragBoxMaxValueTheme"]
     2267 SETTABLEKS                       R37 R56 K399 ["roundFrame"]
     2269 SETTABLEKS                       R38 R56 K400 ["button"]
     2271 SETTABLEKS                       R49 R56 K401 ["keyframe"]
     2273 SETTABLEKS                       R52 R56 K402 ["scrubberTheme"]
     2275 SETTABLEKS                       R51 R56 K403 ["faceCaptureTheme"]
     2277 SETTABLEKS                       R50 R56 K404 ["curveTheme"]
     2279 SETTABLEKS                       R53 R56 K405 ["progressBarTheme"]
     2281 GETTABLEKS                       R57 R16 K204 ["Button"]
     2283 SETTABLE                         R40 R56 R57
     2284 SETTABLEKS                       R55 R56 K406 ["radioButton"]
     2286 DUPCLOSURE                       R57 K407 [PROTO_0]
     2287 CAPTURE                          VAL R6
     2288 CAPTURE                          VAL R20
     2289 CAPTURE                          VAL R19
     2290 CAPTURE                          VAL R56
     2291 RETURN                           R57 1
