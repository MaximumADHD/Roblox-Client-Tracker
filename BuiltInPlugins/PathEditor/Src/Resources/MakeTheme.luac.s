PROTO_0:
        0 LOADNIL                          R1
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["mock"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["new"]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R2 R1 K2 ["extend"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["join"]
       25 GETTABLEKS                       R4 R1 K9 ["Style"]
       27 GETTABLEKS                       R5 R4 K10 ["Themes"]
       29 GETTABLEKS                       R5 R5 K11 ["StudioTheme"]
       31 GETTABLEKS                       R6 R4 K10 ["Themes"]
       33 GETTABLEKS                       R6 R6 K12 ["DarkTheme"]
       35 GETTABLEKS                       R7 R4 K10 ["Themes"]
       37 GETTABLEKS                       R7 R7 K13 ["LightTheme"]
       39 GETTABLEKS                       R8 R4 K14 ["StyleKey"]
       41 GETTABLEKS                       R9 R1 K15 ["Util"]
       43 GETTABLEKS                       R9 R9 K16 ["StyleModifier"]
       45 GETTABLEKS                       R10 R4 K10 ["Themes"]
       47 GETTABLEKS                       R10 R10 K17 ["BaseTheme"]
       49 GETIMPORT                        R11 K4 [require]
       51 GETTABLEKS                       R12 R0 K18 ["Src"]
       53 GETTABLEKS                       R12 R12 K19 ["Resources"]
       55 GETTABLEKS                       R12 R12 K20 ["Constants"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R12 R4 K21 ["ComponentSymbols"]
       60 LOADK                            R15 K22 ["DraggablePoint"]
       61 NAMECALL                         R13 R12 K23 ["add"]
       63 CALL                             R13 2 0
       64 LOADK                            R15 K24 ["Line"]
       65 NAMECALL                         R13 R12 K23 ["add"]
       67 CALL                             R13 2 0
       68 LOADK                            R15 K25 ["ControlPointVisual"]
       69 NAMECALL                         R13 R12 K23 ["add"]
       71 CALL                             R13 2 0
       72 GETIMPORT                        R13 K28 [string.format]
       74 LOADK                            R14 K29 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Large/"]
       75 LOADK                            R15 K30 ["Light"]
       76 CALL                             R13 2 1
       77 GETIMPORT                        R14 K28 [string.format]
       79 LOADK                            R15 K29 ["rbxasset://studio_svg_textures/Lua/PathEditor/%s/Large/"]
       80 LOADK                            R16 K31 ["Dark"]
       81 CALL                             R14 2 1
       82 NEWTABLE                         R15 8 0
       84 GETTABLEKS                       R16 R12 K32 ["Image"]
       86 GETTABLEKS                       R17 R2 K8 ["join"]
       88 GETTABLEKS                       R19 R12 K32 ["Image"]
       90 GETTABLE                         R18 R10 R19
       91 NEWTABLE                         R19 2 0
       93 DUPTABLE                         R20 K35 [{"Image", "Size", "AnchorPoint"}]
       94 LOADK                            R21 K36 ["rbxasset://textures/PathEditor/Control_Point_Selected.png"]
       95 SETTABLEKS                       R21 R20 K32 ["Image"]
       97 GETIMPORT                        R21 K39 [UDim2.fromOffset]
       99 LOADN                            R22 12
      100 LOADN                            R23 12
      101 CALL                             R21 2 1
      102 SETTABLEKS                       R21 R20 K33 ["Size"]
      104 GETIMPORT                        R21 K42 [Vector2.new]
      106 LOADK                            R22 K43 [0.5]
      107 LOADK                            R23 K43 [0.5]
      108 CALL                             R21 2 1
      109 SETTABLEKS                       R21 R20 K34 ["AnchorPoint"]
      111 SETTABLEKS                       R20 R19 K44 ["&ControlPoint"]
      113 DUPTABLE                         R20 K46 [{"Image", "Size", "AnchorPoint", "ImageTransparency"}]
      114 LOADK                            R21 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      115 SETTABLEKS                       R21 R20 K32 ["Image"]
      117 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      119 LOADN                            R22 12
      120 LOADN                            R23 12
      121 CALL                             R21 2 1
      122 SETTABLEKS                       R21 R20 K33 ["Size"]
      124 GETIMPORT                        R21 K42 [Vector2.new]
      126 LOADK                            R22 K43 [0.5]
      127 LOADK                            R23 K43 [0.5]
      128 CALL                             R21 2 1
      129 SETTABLEKS                       R21 R20 K34 ["AnchorPoint"]
      131 LOADK                            R21 K43 [0.5]
      132 SETTABLEKS                       R21 R20 K45 ["ImageTransparency"]
      134 SETTABLEKS                       R20 R19 K48 ["&PhantomTangent"]
      136 CALL                             R17 2 1
      137 SETTABLE                         R17 R15 R16
      138 GETTABLEKS                       R16 R12 K49 ["Button"]
      140 GETTABLEKS                       R17 R2 K8 ["join"]
      142 GETTABLEKS                       R19 R12 K49 ["Button"]
      144 GETTABLE                         R18 R10 R19
      145 NEWTABLE                         R19 1 0
      147 GETTABLEKS                       R20 R2 K8 ["join"]
      149 GETTABLEKS                       R23 R12 K49 ["Button"]
      151 GETTABLE                         R22 R10 R23
      152 GETTABLEKS                       R21 R22 K50 ["&RoundSubtle"]
      154 NEWTABLE                         R22 1 0
      156 GETTABLEKS                       R23 R9 K51 ["Disabled"]
      158 DUPTABLE                         R24 K54 [{"BackgroundStyle", "TextColor"}]
      159 GETTABLEKS                       R25 R2 K8 ["join"]
      161 GETTABLEKS                       R27 R12 K55 ["RoundBox"]
      163 GETTABLE                         R26 R10 R27
      164 DUPTABLE                         R27 K57 [{"Color"}]
      165 GETTABLEKS                       R28 R8 K58 ["ActionActivated"]
      167 SETTABLEKS                       R28 R27 K56 ["Color"]
      169 CALL                             R25 2 1
      170 SETTABLEKS                       R25 R24 K52 ["BackgroundStyle"]
      172 GETTABLEKS                       R25 R8 K59 ["ActionFocusBorder"]
      174 SETTABLEKS                       R25 R24 K53 ["TextColor"]
      176 SETTABLE                         R24 R22 R23
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K60 ["&ModeButton"]
      180 CALL                             R17 2 1
      181 SETTABLE                         R17 R15 R16
      182 GETTABLEKS                       R16 R12 K24 ["Line"]
      184 NEWTABLE                         R17 8 0
      186 LOADN                            R18 1
      187 SETTABLEKS                       R18 R17 K61 ["Thickness"]
      189 GETIMPORT                        R18 K63 [Color3.new]
      191 LOADN                            R19 0
      192 LOADN                            R20 0
      193 LOADN                            R21 0
      194 CALL                             R18 3 1
      195 SETTABLEKS                       R18 R17 K56 ["Color"]
      197 DUPTABLE                         R18 K65 [{"Color", "ContrastColor"}]
      198 GETIMPORT                        R19 K63 [Color3.new]
      200 LOADN                            R20 250
      201 LOADN                            R21 250
      202 LOADN                            R22 250
      203 CALL                             R19 3 1
      204 SETTABLEKS                       R19 R18 K56 ["Color"]
      206 GETTABLEKS                       R19 R8 K59 ["ActionFocusBorder"]
      208 SETTABLEKS                       R19 R18 K64 ["ContrastColor"]
      210 SETTABLEKS                       R18 R17 K66 ["&Tangent"]
      212 DUPTABLE                         R18 K65 [{"Color", "ContrastColor"}]
      213 GETIMPORT                        R19 K63 [Color3.new]
      215 LOADN                            R20 250
      216 LOADN                            R21 250
      217 LOADN                            R22 250
      218 CALL                             R19 3 1
      219 SETTABLEKS                       R19 R18 K56 ["Color"]
      221 GETTABLEKS                       R19 R8 K59 ["ActionFocusBorder"]
      223 SETTABLEKS                       R19 R18 K64 ["ContrastColor"]
      225 SETTABLEKS                       R18 R17 K48 ["&PhantomTangent"]
      227 DUPTABLE                         R18 K65 [{"Color", "ContrastColor"}]
      228 GETIMPORT                        R19 K63 [Color3.new]
      230 LOADN                            R20 250
      231 LOADN                            R21 250
      232 LOADN                            R22 250
      233 CALL                             R19 3 1
      234 SETTABLEKS                       R19 R18 K56 ["Color"]
      236 GETTABLEKS                       R19 R8 K59 ["ActionFocusBorder"]
      238 SETTABLEKS                       R19 R18 K64 ["ContrastColor"]
      240 SETTABLEKS                       R18 R17 K67 ["&Visualization"]
      242 SETTABLE                         R17 R15 R16
      243 GETTABLEKS                       R16 R12 K22 ["DraggablePoint"]
      245 NEWTABLE                         R17 16 0
      247 GETTABLEKS                       R18 R11 K68 ["PointSize"]
      249 SETTABLEKS                       R18 R17 K68 ["PointSize"]
      251 LOADN                            R18 1
      252 SETTABLEKS                       R18 R17 K69 ["BackgroundTransparency"]
      254 LOADB                            R18 0
      255 SETTABLEKS                       R18 R17 K70 ["HasControlPointVisual"]
      257 DUPTABLE                         R18 K71 [{"AnchorPoint"}]
      258 GETIMPORT                        R19 K42 [Vector2.new]
      260 LOADN                            R20 0
      261 LOADN                            R21 0
      262 CALL                             R19 2 1
      263 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      265 SETTABLEKS                       R18 R17 K72 ["&AddPoint"]
      267 DUPTABLE                         R18 K75 [{"StrokeWidth", "StrokeColor"}]
      268 LOADN                            R19 1
      269 SETTABLEKS                       R19 R18 K73 ["StrokeWidth"]
      271 GETIMPORT                        R19 K63 [Color3.new]
      273 LOADN                            R20 250
      274 LOADN                            R21 250
      275 LOADN                            R22 250
      276 CALL                             R19 3 1
      277 SETTABLEKS                       R19 R18 K74 ["StrokeColor"]
      279 SETTABLEKS                       R18 R17 K76 ["&RubberBand"]
      281 NEWTABLE                         R18 8 0
      283 LOADB                            R19 1
      284 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      286 LOADN                            R19 6
      287 SETTABLEKS                       R19 R18 K77 ["Padding"]
      289 GETIMPORT                        R19 K42 [Vector2.new]
      291 LOADK                            R20 K43 [0.5]
      292 LOADK                            R21 K43 [0.5]
      293 CALL                             R19 2 1
      294 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      296 LOADK                            R19 K78 ["rbxasset://textures/PathEditor/Control_Point.png"]
      297 SETTABLEKS                       R19 R18 K79 ["BackgroundImage"]
      299 GETTABLEKS                       R19 R9 K80 ["Hover"]
      301 DUPTABLE                         R20 K81 [{"BackgroundImage"}]
      302 LOADK                            R21 K82 ["rbxasset://textures/PathEditor/Control_Point_Hover.png"]
      303 SETTABLEKS                       R21 R20 K79 ["BackgroundImage"]
      305 SETTABLE                         R20 R18 R19
      306 GETTABLEKS                       R19 R9 K83 ["Selected"]
      308 DUPTABLE                         R20 K84 [{"BackgroundImage", "Padding"}]
      309 LOADK                            R21 K36 ["rbxasset://textures/PathEditor/Control_Point_Selected.png"]
      310 SETTABLEKS                       R21 R20 K79 ["BackgroundImage"]
      312 LOADN                            R21 4
      313 SETTABLEKS                       R21 R20 K77 ["Padding"]
      315 SETTABLE                         R20 R18 R19
      316 SETTABLEKS                       R18 R17 K44 ["&ControlPoint"]
      318 DUPTABLE                         R18 K85 [{"HasControlPointVisual", "AnchorPoint", "BackgroundImage", "PointSize"}]
      319 LOADB                            R19 1
      320 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      322 GETIMPORT                        R19 K42 [Vector2.new]
      324 LOADK                            R20 K43 [0.5]
      325 LOADK                            R21 K43 [0.5]
      326 CALL                             R19 2 1
      327 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      329 LOADK                            R19 K78 ["rbxasset://textures/PathEditor/Control_Point.png"]
      330 SETTABLEKS                       R19 R18 K79 ["BackgroundImage"]
      332 GETIMPORT                        R19 K42 [Vector2.new]
      334 LOADN                            R20 6
      335 LOADN                            R21 6
      336 CALL                             R19 2 1
      337 SETTABLEKS                       R19 R18 K68 ["PointSize"]
      339 SETTABLEKS                       R18 R17 K86 ["&PhantomControlPoint"]
      341 NEWTABLE                         R18 8 0
      343 LOADB                            R19 1
      344 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      346 LOADN                            R19 4
      347 SETTABLEKS                       R19 R18 K77 ["Padding"]
      349 GETIMPORT                        R19 K42 [Vector2.new]
      351 LOADK                            R20 K43 [0.5]
      352 LOADK                            R21 K43 [0.5]
      353 CALL                             R19 2 1
      354 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      356 LOADN                            R19 1
      357 SETTABLEKS                       R19 R18 K69 ["BackgroundTransparency"]
      359 LOADK                            R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      360 SETTABLEKS                       R19 R18 K79 ["BackgroundImage"]
      362 GETTABLEKS                       R19 R9 K80 ["Hover"]
      364 DUPTABLE                         R20 K81 [{"BackgroundImage"}]
      365 LOADK                            R21 K87 ["rbxasset://textures/PathEditor/Tangent_Handle_Hover.png"]
      366 SETTABLEKS                       R21 R20 K79 ["BackgroundImage"]
      368 SETTABLE                         R20 R18 R19
      369 GETTABLEKS                       R19 R9 K83 ["Selected"]
      371 DUPTABLE                         R20 K88 [{"Padding", "BackgroundImage"}]
      372 LOADN                            R21 2
      373 SETTABLEKS                       R21 R20 K77 ["Padding"]
      375 LOADK                            R21 K89 ["rbxasset://textures/PathEditor/Tangent_Handle_Selected.png"]
      376 SETTABLEKS                       R21 R20 K79 ["BackgroundImage"]
      378 SETTABLE                         R20 R18 R19
      379 SETTABLEKS                       R18 R17 K66 ["&Tangent"]
      381 DUPTABLE                         R18 K90 [{"HasControlPointVisual", "Padding", "AnchorPoint", "BackgroundImage"}]
      382 LOADB                            R19 1
      383 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      385 LOADN                            R19 4
      386 SETTABLEKS                       R19 R18 K77 ["Padding"]
      388 GETIMPORT                        R19 K42 [Vector2.new]
      390 LOADK                            R20 K43 [0.5]
      391 LOADK                            R21 K43 [0.5]
      392 CALL                             R19 2 1
      393 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      395 LOADK                            R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      396 SETTABLEKS                       R19 R18 K79 ["BackgroundImage"]
      398 SETTABLEKS                       R18 R17 K48 ["&PhantomTangent"]
      400 DUPTABLE                         R18 K91 [{"HasControlPointVisual", "BackgroundImage", "AnchorPoint", "BackgroundTransparency"}]
      401 LOADB                            R19 1
      402 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      404 LOADK                            R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      405 SETTABLEKS                       R19 R18 K79 ["BackgroundImage"]
      407 GETIMPORT                        R19 K42 [Vector2.new]
      409 LOADK                            R20 K43 [0.5]
      410 LOADK                            R21 K43 [0.5]
      411 CALL                             R19 2 1
      412 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      414 LOADN                            R19 1
      415 SETTABLEKS                       R19 R18 K69 ["BackgroundTransparency"]
      417 SETTABLEKS                       R18 R17 K92 ["&HiddenTangent"]
      419 NEWTABLE                         R18 8 0
      421 LOADB                            R19 1
      422 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      424 GETIMPORT                        R19 K42 [Vector2.new]
      426 LOADK                            R20 K43 [0.5]
      427 LOADK                            R21 K43 [0.5]
      428 CALL                             R19 2 1
      429 SETTABLEKS                       R19 R18 K34 ["AnchorPoint"]
      431 GETIMPORT                        R19 K42 [Vector2.new]
      433 LOADN                            R20 5
      434 LOADN                            R21 5
      435 CALL                             R19 2 1
      436 SETTABLEKS                       R19 R18 K68 ["PointSize"]
      438 LOADK                            R19 K47 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      439 SETTABLEKS                       R19 R18 K79 ["BackgroundImage"]
      441 GETTABLEKS                       R19 R9 K83 ["Selected"]
      443 DUPTABLE                         R20 K75 [{"StrokeWidth", "StrokeColor"}]
      444 LOADN                            R21 1
      445 SETTABLEKS                       R21 R20 K73 ["StrokeWidth"]
      447 GETTABLEKS                       R21 R8 K59 ["ActionFocusBorder"]
      449 SETTABLEKS                       R21 R20 K74 ["StrokeColor"]
      451 SETTABLE                         R20 R18 R19
      452 SETTABLEKS                       R18 R17 K93 ["&ScaleHandle"]
      454 SETTABLE                         R17 R15 R16
      455 GETTABLEKS                       R16 R12 K25 ["ControlPointVisual"]
      457 NEWTABLE                         R17 16 0
      459 GETIMPORT                        R18 K39 [UDim2.fromOffset]
      461 LOADN                            R19 5
      462 LOADN                            R20 5
      463 CALL                             R18 2 1
      464 SETTABLEKS                       R18 R17 K68 ["PointSize"]
      466 GETIMPORT                        R18 K95 [Color3.fromRGB]
      468 LOADN                            R19 250
      469 LOADN                            R20 250
      470 LOADN                            R21 250
      471 CALL                             R18 3 1
      472 SETTABLEKS                       R18 R17 K96 ["BackgroundColor3"]
      474 GETTABLEKS                       R18 R8 K59 ["ActionFocusBorder"]
      476 SETTABLEKS                       R18 R17 K74 ["StrokeColor"]
      478 LOADK                            R18 K97 [1.5]
      479 SETTABLEKS                       R18 R17 K73 ["StrokeWidth"]
      481 GETIMPORT                        R18 K101 [Enum.LineJoinMode.Round]
      483 SETTABLEKS                       R18 R17 K99 ["LineJoinMode"]
      485 DUPTABLE                         R18 K103 [{"CornerRadius"}]
      486 GETIMPORT                        R19 K105 [UDim.new]
      488 LOADN                            R20 1
      489 LOADN                            R21 0
      490 CALL                             R19 2 1
      491 SETTABLEKS                       R19 R18 K102 ["CornerRadius"]
      493 SETTABLEKS                       R18 R17 K106 ["AddPoint"]
      495 NEWTABLE                         R18 4 0
      497 GETIMPORT                        R19 K105 [UDim.new]
      499 LOADN                            R20 1
      500 LOADN                            R21 0
      501 CALL                             R19 2 1
      502 SETTABLEKS                       R19 R18 K102 ["CornerRadius"]
      504 GETTABLEKS                       R19 R9 K80 ["Hover"]
      506 DUPTABLE                         R20 K107 [{"PointSize"}]
      507 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      509 LOADN                            R22 7
      510 LOADN                            R23 7
      511 CALL                             R21 2 1
      512 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      514 SETTABLE                         R20 R18 R19
      515 GETTABLEKS                       R19 R9 K83 ["Selected"]
      517 DUPTABLE                         R20 K108 [{"PointSize", "BackgroundColor3", "StrokeColor"}]
      518 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      520 LOADN                            R22 7
      521 LOADN                            R23 7
      522 CALL                             R21 2 1
      523 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      525 GETTABLEKS                       R21 R8 K59 ["ActionFocusBorder"]
      527 SETTABLEKS                       R21 R20 K96 ["BackgroundColor3"]
      529 GETIMPORT                        R21 K95 [Color3.fromRGB]
      531 LOADN                            R22 250
      532 LOADN                            R23 250
      533 LOADN                            R24 250
      534 CALL                             R21 3 1
      535 SETTABLEKS                       R21 R20 K74 ["StrokeColor"]
      537 SETTABLE                         R20 R18 R19
      538 SETTABLEKS                       R18 R17 K109 ["ControlPoint"]
      540 DUPTABLE                         R18 K110 [{"CornerRadius", "PointSize", "StrokeWidth"}]
      541 GETIMPORT                        R19 K105 [UDim.new]
      543 LOADN                            R20 1
      544 LOADN                            R21 0
      545 CALL                             R19 2 1
      546 SETTABLEKS                       R19 R18 K102 ["CornerRadius"]
      548 GETIMPORT                        R19 K39 [UDim2.fromOffset]
      550 LOADN                            R20 2
      551 LOADN                            R21 2
      552 CALL                             R19 2 1
      553 SETTABLEKS                       R19 R18 K68 ["PointSize"]
      555 LOADN                            R19 1
      556 SETTABLEKS                       R19 R18 K73 ["StrokeWidth"]
      558 SETTABLEKS                       R18 R17 K111 ["PhantomControlPoint"]
      560 NEWTABLE                         R18 8 0
      562 GETIMPORT                        R19 K113 [Enum.LineJoinMode.Miter]
      564 SETTABLEKS                       R19 R18 K99 ["LineJoinMode"]
      566 GETIMPORT                        R19 K105 [UDim.new]
      568 LOADN                            R20 0
      569 LOADN                            R21 0
      570 CALL                             R19 2 1
      571 SETTABLEKS                       R19 R18 K102 ["CornerRadius"]
      573 LOADN                            R19 45
      574 SETTABLEKS                       R19 R18 K114 ["Rotation"]
      576 GETTABLEKS                       R19 R9 K80 ["Hover"]
      578 DUPTABLE                         R20 K107 [{"PointSize"}]
      579 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      581 LOADN                            R22 7
      582 LOADN                            R23 7
      583 CALL                             R21 2 1
      584 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      586 SETTABLE                         R20 R18 R19
      587 GETTABLEKS                       R19 R9 K83 ["Selected"]
      589 DUPTABLE                         R20 K108 [{"PointSize", "BackgroundColor3", "StrokeColor"}]
      590 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      592 LOADN                            R22 7
      593 LOADN                            R23 7
      594 CALL                             R21 2 1
      595 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      597 GETTABLEKS                       R21 R8 K59 ["ActionFocusBorder"]
      599 SETTABLEKS                       R21 R20 K96 ["BackgroundColor3"]
      601 GETIMPORT                        R21 K95 [Color3.fromRGB]
      603 LOADN                            R22 250
      604 LOADN                            R23 250
      605 LOADN                            R24 250
      606 CALL                             R21 3 1
      607 SETTABLEKS                       R21 R20 K74 ["StrokeColor"]
      609 SETTABLE                         R20 R18 R19
      610 SETTABLEKS                       R18 R17 K115 ["Tangent"]
      612 DUPTABLE                         R18 K116 [{"LineJoinMode", "CornerRadius", "Rotation"}]
      613 GETIMPORT                        R19 K113 [Enum.LineJoinMode.Miter]
      615 SETTABLEKS                       R19 R18 K99 ["LineJoinMode"]
      617 GETIMPORT                        R19 K105 [UDim.new]
      619 LOADN                            R20 0
      620 LOADN                            R21 0
      621 CALL                             R19 2 1
      622 SETTABLEKS                       R19 R18 K102 ["CornerRadius"]
      624 LOADN                            R19 45
      625 SETTABLEKS                       R19 R18 K114 ["Rotation"]
      627 SETTABLEKS                       R18 R17 K117 ["PhantomTangent"]
      629 SETTABLE                         R17 R15 R16
      630 DUPTABLE                         R16 K121 [{"AddPointCursor", "AddTangentCursor", "MoveCursor"}]
      631 GETTABLEKS                       R17 R8 K118 ["AddPointCursor"]
      633 SETTABLEKS                       R17 R16 K118 ["AddPointCursor"]
      635 GETTABLEKS                       R17 R8 K119 ["AddTangentCursor"]
      637 SETTABLEKS                       R17 R16 K119 ["AddTangentCursor"]
      639 GETTABLEKS                       R17 R8 K120 ["MoveCursor"]
      641 SETTABLEKS                       R17 R16 K120 ["MoveCursor"]
      643 SETTABLEKS                       R16 R15 K122 ["MouseIcons"]
      645 DUPTABLE                         R16 K131 [{"DeleteButtonSize", "ModeButtonSize", "DoneButtonSize", "SeparatorSize", "SeparatorPadding", "AddPointImage", "AddTangentImage", "MoveImage"}]
      646 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      648 LOADN                            R18 100
      649 LOADN                            R19 30
      650 CALL                             R17 2 1
      651 SETTABLEKS                       R17 R16 K123 ["DeleteButtonSize"]
      653 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      655 LOADN                            R18 30
      656 LOADN                            R19 30
      657 CALL                             R17 2 1
      658 SETTABLEKS                       R17 R16 K124 ["ModeButtonSize"]
      660 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      662 LOADN                            R18 100
      663 LOADN                            R19 30
      664 CALL                             R17 2 1
      665 SETTABLEKS                       R17 R16 K125 ["DoneButtonSize"]
      667 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      669 LOADN                            R18 2
      670 LOADN                            R19 30
      671 CALL                             R17 2 1
      672 SETTABLEKS                       R17 R16 K126 ["SeparatorSize"]
      674 LOADN                            R17 4
      675 SETTABLEKS                       R17 R16 K127 ["SeparatorPadding"]
      677 GETTABLEKS                       R17 R8 K106 ["AddPoint"]
      679 SETTABLEKS                       R17 R16 K128 ["AddPointImage"]
      681 GETTABLEKS                       R17 R8 K132 ["AddTangent"]
      683 SETTABLEKS                       R17 R16 K129 ["AddTangentImage"]
      685 GETTABLEKS                       R17 R8 K133 ["Move"]
      687 SETTABLEKS                       R17 R16 K130 ["MoveImage"]
      689 SETTABLEKS                       R16 R15 K134 ["PathToolbar"]
      691 GETTABLEKS                       R16 R2 K8 ["join"]
      693 MOVE                             R17 R6
      694 NEWTABLE                         R18 8 0
      696 GETTABLEKS                       R19 R8 K118 ["AddPointCursor"]
      698 MOVE                             R21 R14
      699 LOADK                            R22 K135 ["Path2DAddPoint.png"]
      700 CONCAT                           R20 R21 R22
      701 SETTABLE                         R20 R18 R19
      702 GETTABLEKS                       R19 R8 K119 ["AddTangentCursor"]
      704 MOVE                             R21 R14
      705 LOADK                            R22 K135 ["Path2DAddPoint.png"]
      706 CONCAT                           R20 R21 R22
      707 SETTABLE                         R20 R18 R19
      708 GETTABLEKS                       R19 R8 K120 ["MoveCursor"]
      710 MOVE                             R21 R14
      711 LOADK                            R22 K136 ["Path2DCursor.png"]
      712 CONCAT                           R20 R21 R22
      713 SETTABLE                         R20 R18 R19
      714 GETTABLEKS                       R19 R8 K106 ["AddPoint"]
      716 MOVE                             R21 R14
      717 LOADK                            R22 K135 ["Path2DAddPoint.png"]
      718 CONCAT                           R20 R21 R22
      719 SETTABLE                         R20 R18 R19
      720 GETTABLEKS                       R19 R8 K132 ["AddTangent"]
      722 MOVE                             R21 R14
      723 LOADK                            R22 K137 ["Path2DAddTangent.png"]
      724 CONCAT                           R20 R21 R22
      725 SETTABLE                         R20 R18 R19
      726 GETTABLEKS                       R19 R8 K133 ["Move"]
      728 MOVE                             R21 R14
      729 LOADK                            R22 K138 ["Path2DMove.png"]
      730 CONCAT                           R20 R21 R22
      731 SETTABLE                         R20 R18 R19
      732 CALL                             R16 2 1
      733 GETTABLEKS                       R17 R2 K8 ["join"]
      735 MOVE                             R18 R7
      736 NEWTABLE                         R19 8 0
      738 GETTABLEKS                       R20 R8 K118 ["AddPointCursor"]
      740 MOVE                             R22 R13
      741 LOADK                            R23 K135 ["Path2DAddPoint.png"]
      742 CONCAT                           R21 R22 R23
      743 SETTABLE                         R21 R19 R20
      744 GETTABLEKS                       R20 R8 K119 ["AddTangentCursor"]
      746 MOVE                             R22 R13
      747 LOADK                            R23 K135 ["Path2DAddPoint.png"]
      748 CONCAT                           R21 R22 R23
      749 SETTABLE                         R21 R19 R20
      750 GETTABLEKS                       R20 R8 K120 ["MoveCursor"]
      752 MOVE                             R22 R13
      753 LOADK                            R23 K136 ["Path2DCursor.png"]
      754 CONCAT                           R21 R22 R23
      755 SETTABLE                         R21 R19 R20
      756 GETTABLEKS                       R20 R8 K106 ["AddPoint"]
      758 MOVE                             R22 R13
      759 LOADK                            R23 K135 ["Path2DAddPoint.png"]
      760 CONCAT                           R21 R22 R23
      761 SETTABLE                         R21 R19 R20
      762 GETTABLEKS                       R20 R8 K132 ["AddTangent"]
      764 MOVE                             R22 R13
      765 LOADK                            R23 K137 ["Path2DAddTangent.png"]
      766 CONCAT                           R21 R22 R23
      767 SETTABLE                         R21 R19 R20
      768 GETTABLEKS                       R20 R8 K133 ["Move"]
      770 MOVE                             R22 R13
      771 LOADK                            R23 K138 ["Path2DMove.png"]
      772 CONCAT                           R21 R22 R23
      773 SETTABLE                         R21 R19 R20
      774 CALL                             R17 2 1
      775 DUPCLOSURE                       R18 K139 [PROTO_0]
      776 CAPTURE                          VAL R5
      777 CAPTURE                          VAL R16
      778 CAPTURE                          VAL R17
      779 CAPTURE                          VAL R15
      780 RETURN                           R18 1
