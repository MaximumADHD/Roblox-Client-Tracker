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
       93 DUPTABLE                         R20 K36 [{["Image"] = "rbxasset://textures/PathEditor/Control_Point_Selected.png", ["Size"], ["AnchorPoint"]}]
       94 GETIMPORT                        R21 K39 [UDim2.fromOffset]
       96 LOADN                            R22 12
       97 LOADN                            R23 12
       98 CALL                             R21 2 1
       99 SETTABLEKS                       R21 R20 K34 ["Size"]
      101 GETIMPORT                        R21 K42 [Vector2.new]
      103 LOADK                            R22 K43 [0.5]
      104 LOADK                            R23 K43 [0.5]
      105 CALL                             R21 2 1
      106 SETTABLEKS                       R21 R20 K35 ["AnchorPoint"]
      108 SETTABLEKS                       R20 R19 K44 ["&ControlPoint"]
      110 DUPTABLE                         R20 K47 [{["Image"] = "rbxasset://textures/PathEditor/Tangent_Handle.png", ["Size"], ["AnchorPoint"], ["ImageTransparency"] = 0.5}]
      111 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      113 LOADN                            R22 12
      114 LOADN                            R23 12
      115 CALL                             R21 2 1
      116 SETTABLEKS                       R21 R20 K34 ["Size"]
      118 GETIMPORT                        R21 K42 [Vector2.new]
      120 LOADK                            R22 K43 [0.5]
      121 LOADK                            R23 K43 [0.5]
      122 CALL                             R21 2 1
      123 SETTABLEKS                       R21 R20 K35 ["AnchorPoint"]
      125 SETTABLEKS                       R20 R19 K48 ["&PhantomTangent"]
      127 CALL                             R17 2 1
      128 SETTABLE                         R17 R15 R16
      129 GETTABLEKS                       R16 R12 K49 ["Button"]
      131 GETTABLEKS                       R17 R2 K8 ["join"]
      133 GETTABLEKS                       R19 R12 K49 ["Button"]
      135 GETTABLE                         R18 R10 R19
      136 NEWTABLE                         R19 1 0
      138 GETTABLEKS                       R20 R2 K8 ["join"]
      140 GETTABLEKS                       R23 R12 K49 ["Button"]
      142 GETTABLE                         R22 R10 R23
      143 GETTABLEKS                       R21 R22 K50 ["&RoundSubtle"]
      145 NEWTABLE                         R22 1 0
      147 GETTABLEKS                       R23 R9 K51 ["Disabled"]
      149 DUPTABLE                         R24 K54 [{"BackgroundStyle", "TextColor"}]
      150 GETTABLEKS                       R25 R2 K8 ["join"]
      152 GETTABLEKS                       R27 R12 K55 ["RoundBox"]
      154 GETTABLE                         R26 R10 R27
      155 DUPTABLE                         R27 K57 [{"Color"}]
      156 GETTABLEKS                       R28 R8 K58 ["ActionActivated"]
      158 SETTABLEKS                       R28 R27 K56 ["Color"]
      160 CALL                             R25 2 1
      161 SETTABLEKS                       R25 R24 K52 ["BackgroundStyle"]
      163 GETTABLEKS                       R25 R8 K59 ["ActionFocusBorder"]
      165 SETTABLEKS                       R25 R24 K53 ["TextColor"]
      167 SETTABLE                         R24 R22 R23
      168 CALL                             R20 2 1
      169 SETTABLEKS                       R20 R19 K60 ["&ModeButton"]
      171 CALL                             R17 2 1
      172 SETTABLE                         R17 R15 R16
      173 GETTABLEKS                       R16 R12 K24 ["Line"]
      175 NEWTABLE                         R17 8 0
      177 LOADN                            R18 1
      178 SETTABLEKS                       R18 R17 K61 ["Thickness"]
      180 GETIMPORT                        R18 K63 [Color3.new]
      182 LOADN                            R19 0
      183 LOADN                            R20 0
      184 LOADN                            R21 0
      185 CALL                             R18 3 1
      186 SETTABLEKS                       R18 R17 K56 ["Color"]
      188 DUPTABLE                         R18 K65 [{"Color", "ContrastColor"}]
      189 GETIMPORT                        R19 K63 [Color3.new]
      191 LOADN                            R20 250
      192 LOADN                            R21 250
      193 LOADN                            R22 250
      194 CALL                             R19 3 1
      195 SETTABLEKS                       R19 R18 K56 ["Color"]
      197 GETTABLEKS                       R19 R8 K59 ["ActionFocusBorder"]
      199 SETTABLEKS                       R19 R18 K64 ["ContrastColor"]
      201 SETTABLEKS                       R18 R17 K66 ["&Tangent"]
      203 DUPTABLE                         R18 K65 [{"Color", "ContrastColor"}]
      204 GETIMPORT                        R19 K63 [Color3.new]
      206 LOADN                            R20 250
      207 LOADN                            R21 250
      208 LOADN                            R22 250
      209 CALL                             R19 3 1
      210 SETTABLEKS                       R19 R18 K56 ["Color"]
      212 GETTABLEKS                       R19 R8 K59 ["ActionFocusBorder"]
      214 SETTABLEKS                       R19 R18 K64 ["ContrastColor"]
      216 SETTABLEKS                       R18 R17 K48 ["&PhantomTangent"]
      218 DUPTABLE                         R18 K65 [{"Color", "ContrastColor"}]
      219 GETIMPORT                        R19 K63 [Color3.new]
      221 LOADN                            R20 250
      222 LOADN                            R21 250
      223 LOADN                            R22 250
      224 CALL                             R19 3 1
      225 SETTABLEKS                       R19 R18 K56 ["Color"]
      227 GETTABLEKS                       R19 R8 K59 ["ActionFocusBorder"]
      229 SETTABLEKS                       R19 R18 K64 ["ContrastColor"]
      231 SETTABLEKS                       R18 R17 K67 ["&Visualization"]
      233 SETTABLE                         R17 R15 R16
      234 GETTABLEKS                       R16 R12 K22 ["DraggablePoint"]
      236 NEWTABLE                         R17 16 0
      238 GETTABLEKS                       R18 R11 K68 ["PointSize"]
      240 SETTABLEKS                       R18 R17 K68 ["PointSize"]
      242 LOADN                            R18 1
      243 SETTABLEKS                       R18 R17 K69 ["BackgroundTransparency"]
      245 LOADB                            R18 0
      246 SETTABLEKS                       R18 R17 K70 ["HasControlPointVisual"]
      248 DUPTABLE                         R18 K71 [{"AnchorPoint"}]
      249 GETIMPORT                        R19 K42 [Vector2.new]
      251 LOADN                            R20 0
      252 LOADN                            R21 0
      253 CALL                             R19 2 1
      254 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      256 SETTABLEKS                       R18 R17 K72 ["&AddPoint"]
      258 DUPTABLE                         R18 K76 [{["StrokeWidth"] = 1, ["StrokeColor"]}]
      259 GETIMPORT                        R19 K63 [Color3.new]
      261 LOADN                            R20 250
      262 LOADN                            R21 250
      263 LOADN                            R22 250
      264 CALL                             R19 3 1
      265 SETTABLEKS                       R19 R18 K75 ["StrokeColor"]
      267 SETTABLEKS                       R18 R17 K77 ["&RubberBand"]
      269 NEWTABLE                         R18 8 0
      271 LOADB                            R19 1
      272 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      274 LOADN                            R19 6
      275 SETTABLEKS                       R19 R18 K78 ["Padding"]
      277 GETIMPORT                        R19 K42 [Vector2.new]
      279 LOADK                            R20 K43 [0.5]
      280 LOADK                            R21 K43 [0.5]
      281 CALL                             R19 2 1
      282 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      284 LOADK                            R19 K79 ["rbxasset://textures/PathEditor/Control_Point.png"]
      285 SETTABLEKS                       R19 R18 K80 ["BackgroundImage"]
      287 GETTABLEKS                       R19 R9 K81 ["Hover"]
      289 DUPTABLE                         R20 K83 [{["BackgroundImage"] = "rbxasset://textures/PathEditor/Control_Point_Hover.png"}]
      290 SETTABLE                         R20 R18 R19
      291 GETTABLEKS                       R19 R9 K84 ["Selected"]
      293 DUPTABLE                         R20 K86 [{["BackgroundImage"] = "rbxasset://textures/PathEditor/Control_Point_Selected.png", ["Padding"] = 4}]
      294 SETTABLE                         R20 R18 R19
      295 SETTABLEKS                       R18 R17 K44 ["&ControlPoint"]
      297 DUPTABLE                         R18 K88 [{["HasControlPointVisual"] = True, ["AnchorPoint"], ["BackgroundImage"] = "rbxasset://textures/PathEditor/Control_Point.png", ["PointSize"]}]
      298 GETIMPORT                        R19 K42 [Vector2.new]
      300 LOADK                            R20 K43 [0.5]
      301 LOADK                            R21 K43 [0.5]
      302 CALL                             R19 2 1
      303 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      305 GETIMPORT                        R19 K42 [Vector2.new]
      307 LOADN                            R20 6
      308 LOADN                            R21 6
      309 CALL                             R19 2 1
      310 SETTABLEKS                       R19 R18 K68 ["PointSize"]
      312 SETTABLEKS                       R18 R17 K89 ["&PhantomControlPoint"]
      314 NEWTABLE                         R18 8 0
      316 LOADB                            R19 1
      317 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      319 LOADN                            R19 4
      320 SETTABLEKS                       R19 R18 K78 ["Padding"]
      322 GETIMPORT                        R19 K42 [Vector2.new]
      324 LOADK                            R20 K43 [0.5]
      325 LOADK                            R21 K43 [0.5]
      326 CALL                             R19 2 1
      327 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      329 LOADN                            R19 1
      330 SETTABLEKS                       R19 R18 K69 ["BackgroundTransparency"]
      332 LOADK                            R19 K45 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      333 SETTABLEKS                       R19 R18 K80 ["BackgroundImage"]
      335 GETTABLEKS                       R19 R9 K81 ["Hover"]
      337 DUPTABLE                         R20 K91 [{["BackgroundImage"] = "rbxasset://textures/PathEditor/Tangent_Handle_Hover.png"}]
      338 SETTABLE                         R20 R18 R19
      339 GETTABLEKS                       R19 R9 K84 ["Selected"]
      341 DUPTABLE                         R20 K94 [{["Padding"] = 2, ["BackgroundImage"] = "rbxasset://textures/PathEditor/Tangent_Handle_Selected.png"}]
      342 SETTABLE                         R20 R18 R19
      343 SETTABLEKS                       R18 R17 K66 ["&Tangent"]
      345 DUPTABLE                         R18 K95 [{["HasControlPointVisual"] = True, ["Padding"] = 4, ["AnchorPoint"], ["BackgroundImage"] = "rbxasset://textures/PathEditor/Tangent_Handle.png"}]
      346 GETIMPORT                        R19 K42 [Vector2.new]
      348 LOADK                            R20 K43 [0.5]
      349 LOADK                            R21 K43 [0.5]
      350 CALL                             R19 2 1
      351 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      353 SETTABLEKS                       R18 R17 K48 ["&PhantomTangent"]
      355 DUPTABLE                         R18 K96 [{["HasControlPointVisual"] = True, ["BackgroundImage"] = "rbxasset://textures/PathEditor/Tangent_Handle.png", ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
      356 GETIMPORT                        R19 K42 [Vector2.new]
      358 LOADK                            R20 K43 [0.5]
      359 LOADK                            R21 K43 [0.5]
      360 CALL                             R19 2 1
      361 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      363 SETTABLEKS                       R18 R17 K97 ["&HiddenTangent"]
      365 NEWTABLE                         R18 8 0
      367 LOADB                            R19 1
      368 SETTABLEKS                       R19 R18 K70 ["HasControlPointVisual"]
      370 GETIMPORT                        R19 K42 [Vector2.new]
      372 LOADK                            R20 K43 [0.5]
      373 LOADK                            R21 K43 [0.5]
      374 CALL                             R19 2 1
      375 SETTABLEKS                       R19 R18 K35 ["AnchorPoint"]
      377 GETIMPORT                        R19 K42 [Vector2.new]
      379 LOADN                            R20 5
      380 LOADN                            R21 5
      381 CALL                             R19 2 1
      382 SETTABLEKS                       R19 R18 K68 ["PointSize"]
      384 LOADK                            R19 K45 ["rbxasset://textures/PathEditor/Tangent_Handle.png"]
      385 SETTABLEKS                       R19 R18 K80 ["BackgroundImage"]
      387 GETTABLEKS                       R19 R9 K84 ["Selected"]
      389 DUPTABLE                         R20 K76 [{["StrokeWidth"] = 1, ["StrokeColor"]}]
      390 GETTABLEKS                       R21 R8 K59 ["ActionFocusBorder"]
      392 SETTABLEKS                       R21 R20 K75 ["StrokeColor"]
      394 SETTABLE                         R20 R18 R19
      395 SETTABLEKS                       R18 R17 K98 ["&ScaleHandle"]
      397 SETTABLE                         R17 R15 R16
      398 GETTABLEKS                       R16 R12 K25 ["ControlPointVisual"]
      400 NEWTABLE                         R17 16 0
      402 GETIMPORT                        R18 K39 [UDim2.fromOffset]
      404 LOADN                            R19 5
      405 LOADN                            R20 5
      406 CALL                             R18 2 1
      407 SETTABLEKS                       R18 R17 K68 ["PointSize"]
      409 GETIMPORT                        R18 K100 [Color3.fromRGB]
      411 LOADN                            R19 250
      412 LOADN                            R20 250
      413 LOADN                            R21 250
      414 CALL                             R18 3 1
      415 SETTABLEKS                       R18 R17 K101 ["BackgroundColor3"]
      417 GETTABLEKS                       R18 R8 K59 ["ActionFocusBorder"]
      419 SETTABLEKS                       R18 R17 K75 ["StrokeColor"]
      421 LOADK                            R18 K102 [1.5]
      422 SETTABLEKS                       R18 R17 K73 ["StrokeWidth"]
      424 GETIMPORT                        R18 K106 [Enum.LineJoinMode.Round]
      426 SETTABLEKS                       R18 R17 K104 ["LineJoinMode"]
      428 DUPTABLE                         R18 K108 [{"CornerRadius"}]
      429 GETIMPORT                        R19 K110 [UDim.new]
      431 LOADN                            R20 1
      432 LOADN                            R21 0
      433 CALL                             R19 2 1
      434 SETTABLEKS                       R19 R18 K107 ["CornerRadius"]
      436 SETTABLEKS                       R18 R17 K111 ["AddPoint"]
      438 NEWTABLE                         R18 4 0
      440 GETIMPORT                        R19 K110 [UDim.new]
      442 LOADN                            R20 1
      443 LOADN                            R21 0
      444 CALL                             R19 2 1
      445 SETTABLEKS                       R19 R18 K107 ["CornerRadius"]
      447 GETTABLEKS                       R19 R9 K81 ["Hover"]
      449 DUPTABLE                         R20 K112 [{"PointSize"}]
      450 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      452 LOADN                            R22 7
      453 LOADN                            R23 7
      454 CALL                             R21 2 1
      455 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      457 SETTABLE                         R20 R18 R19
      458 GETTABLEKS                       R19 R9 K84 ["Selected"]
      460 DUPTABLE                         R20 K113 [{"PointSize", "BackgroundColor3", "StrokeColor"}]
      461 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      463 LOADN                            R22 7
      464 LOADN                            R23 7
      465 CALL                             R21 2 1
      466 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      468 GETTABLEKS                       R21 R8 K59 ["ActionFocusBorder"]
      470 SETTABLEKS                       R21 R20 K101 ["BackgroundColor3"]
      472 GETIMPORT                        R21 K100 [Color3.fromRGB]
      474 LOADN                            R22 250
      475 LOADN                            R23 250
      476 LOADN                            R24 250
      477 CALL                             R21 3 1
      478 SETTABLEKS                       R21 R20 K75 ["StrokeColor"]
      480 SETTABLE                         R20 R18 R19
      481 SETTABLEKS                       R18 R17 K114 ["ControlPoint"]
      483 DUPTABLE                         R18 K115 [{["CornerRadius"], ["PointSize"], ["StrokeWidth"] = 1}]
      484 GETIMPORT                        R19 K110 [UDim.new]
      486 LOADN                            R20 1
      487 LOADN                            R21 0
      488 CALL                             R19 2 1
      489 SETTABLEKS                       R19 R18 K107 ["CornerRadius"]
      491 GETIMPORT                        R19 K39 [UDim2.fromOffset]
      493 LOADN                            R20 2
      494 LOADN                            R21 2
      495 CALL                             R19 2 1
      496 SETTABLEKS                       R19 R18 K68 ["PointSize"]
      498 SETTABLEKS                       R18 R17 K116 ["PhantomControlPoint"]
      500 NEWTABLE                         R18 8 0
      502 GETIMPORT                        R19 K118 [Enum.LineJoinMode.Miter]
      504 SETTABLEKS                       R19 R18 K104 ["LineJoinMode"]
      506 GETIMPORT                        R19 K110 [UDim.new]
      508 LOADN                            R20 0
      509 LOADN                            R21 0
      510 CALL                             R19 2 1
      511 SETTABLEKS                       R19 R18 K107 ["CornerRadius"]
      513 LOADN                            R19 45
      514 SETTABLEKS                       R19 R18 K119 ["Rotation"]
      516 GETTABLEKS                       R19 R9 K81 ["Hover"]
      518 DUPTABLE                         R20 K112 [{"PointSize"}]
      519 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      521 LOADN                            R22 7
      522 LOADN                            R23 7
      523 CALL                             R21 2 1
      524 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      526 SETTABLE                         R20 R18 R19
      527 GETTABLEKS                       R19 R9 K84 ["Selected"]
      529 DUPTABLE                         R20 K113 [{"PointSize", "BackgroundColor3", "StrokeColor"}]
      530 GETIMPORT                        R21 K39 [UDim2.fromOffset]
      532 LOADN                            R22 7
      533 LOADN                            R23 7
      534 CALL                             R21 2 1
      535 SETTABLEKS                       R21 R20 K68 ["PointSize"]
      537 GETTABLEKS                       R21 R8 K59 ["ActionFocusBorder"]
      539 SETTABLEKS                       R21 R20 K101 ["BackgroundColor3"]
      541 GETIMPORT                        R21 K100 [Color3.fromRGB]
      543 LOADN                            R22 250
      544 LOADN                            R23 250
      545 LOADN                            R24 250
      546 CALL                             R21 3 1
      547 SETTABLEKS                       R21 R20 K75 ["StrokeColor"]
      549 SETTABLE                         R20 R18 R19
      550 SETTABLEKS                       R18 R17 K120 ["Tangent"]
      552 DUPTABLE                         R18 K122 [{["LineJoinMode"], ["CornerRadius"], ["Rotation"] = 45}]
      553 GETIMPORT                        R19 K118 [Enum.LineJoinMode.Miter]
      555 SETTABLEKS                       R19 R18 K104 ["LineJoinMode"]
      557 GETIMPORT                        R19 K110 [UDim.new]
      559 LOADN                            R20 0
      560 LOADN                            R21 0
      561 CALL                             R19 2 1
      562 SETTABLEKS                       R19 R18 K107 ["CornerRadius"]
      564 SETTABLEKS                       R18 R17 K123 ["PhantomTangent"]
      566 SETTABLE                         R17 R15 R16
      567 DUPTABLE                         R16 K127 [{"AddPointCursor", "AddTangentCursor", "MoveCursor"}]
      568 GETTABLEKS                       R17 R8 K124 ["AddPointCursor"]
      570 SETTABLEKS                       R17 R16 K124 ["AddPointCursor"]
      572 GETTABLEKS                       R17 R8 K125 ["AddTangentCursor"]
      574 SETTABLEKS                       R17 R16 K125 ["AddTangentCursor"]
      576 GETTABLEKS                       R17 R8 K126 ["MoveCursor"]
      578 SETTABLEKS                       R17 R16 K126 ["MoveCursor"]
      580 SETTABLEKS                       R16 R15 K128 ["MouseIcons"]
      582 DUPTABLE                         R16 K137 [{["DeleteButtonSize"], ["ModeButtonSize"], ["DoneButtonSize"], ["SeparatorSize"], ["SeparatorPadding"] = 4, ["AddPointImage"], ["AddTangentImage"], ["MoveImage"]}]
      583 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      585 LOADN                            R18 100
      586 LOADN                            R19 30
      587 CALL                             R17 2 1
      588 SETTABLEKS                       R17 R16 K129 ["DeleteButtonSize"]
      590 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      592 LOADN                            R18 30
      593 LOADN                            R19 30
      594 CALL                             R17 2 1
      595 SETTABLEKS                       R17 R16 K130 ["ModeButtonSize"]
      597 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      599 LOADN                            R18 100
      600 LOADN                            R19 30
      601 CALL                             R17 2 1
      602 SETTABLEKS                       R17 R16 K131 ["DoneButtonSize"]
      604 GETIMPORT                        R17 K39 [UDim2.fromOffset]
      606 LOADN                            R18 2
      607 LOADN                            R19 30
      608 CALL                             R17 2 1
      609 SETTABLEKS                       R17 R16 K132 ["SeparatorSize"]
      611 GETTABLEKS                       R17 R8 K111 ["AddPoint"]
      613 SETTABLEKS                       R17 R16 K134 ["AddPointImage"]
      615 GETTABLEKS                       R17 R8 K138 ["AddTangent"]
      617 SETTABLEKS                       R17 R16 K135 ["AddTangentImage"]
      619 GETTABLEKS                       R17 R8 K139 ["Move"]
      621 SETTABLEKS                       R17 R16 K136 ["MoveImage"]
      623 SETTABLEKS                       R16 R15 K140 ["PathToolbar"]
      625 GETTABLEKS                       R16 R2 K8 ["join"]
      627 MOVE                             R17 R6
      628 NEWTABLE                         R18 8 0
      630 GETTABLEKS                       R19 R8 K124 ["AddPointCursor"]
      632 MOVE                             R21 R14
      633 LOADK                            R22 K141 ["Path2DAddPoint.png"]
      634 CONCAT                           R20 R21 R22
      635 SETTABLE                         R20 R18 R19
      636 GETTABLEKS                       R19 R8 K125 ["AddTangentCursor"]
      638 MOVE                             R21 R14
      639 LOADK                            R22 K141 ["Path2DAddPoint.png"]
      640 CONCAT                           R20 R21 R22
      641 SETTABLE                         R20 R18 R19
      642 GETTABLEKS                       R19 R8 K126 ["MoveCursor"]
      644 MOVE                             R21 R14
      645 LOADK                            R22 K142 ["Path2DCursor.png"]
      646 CONCAT                           R20 R21 R22
      647 SETTABLE                         R20 R18 R19
      648 GETTABLEKS                       R19 R8 K111 ["AddPoint"]
      650 MOVE                             R21 R14
      651 LOADK                            R22 K141 ["Path2DAddPoint.png"]
      652 CONCAT                           R20 R21 R22
      653 SETTABLE                         R20 R18 R19
      654 GETTABLEKS                       R19 R8 K138 ["AddTangent"]
      656 MOVE                             R21 R14
      657 LOADK                            R22 K143 ["Path2DAddTangent.png"]
      658 CONCAT                           R20 R21 R22
      659 SETTABLE                         R20 R18 R19
      660 GETTABLEKS                       R19 R8 K139 ["Move"]
      662 MOVE                             R21 R14
      663 LOADK                            R22 K144 ["Path2DMove.png"]
      664 CONCAT                           R20 R21 R22
      665 SETTABLE                         R20 R18 R19
      666 CALL                             R16 2 1
      667 GETTABLEKS                       R17 R2 K8 ["join"]
      669 MOVE                             R18 R7
      670 NEWTABLE                         R19 8 0
      672 GETTABLEKS                       R20 R8 K124 ["AddPointCursor"]
      674 MOVE                             R22 R13
      675 LOADK                            R23 K141 ["Path2DAddPoint.png"]
      676 CONCAT                           R21 R22 R23
      677 SETTABLE                         R21 R19 R20
      678 GETTABLEKS                       R20 R8 K125 ["AddTangentCursor"]
      680 MOVE                             R22 R13
      681 LOADK                            R23 K141 ["Path2DAddPoint.png"]
      682 CONCAT                           R21 R22 R23
      683 SETTABLE                         R21 R19 R20
      684 GETTABLEKS                       R20 R8 K126 ["MoveCursor"]
      686 MOVE                             R22 R13
      687 LOADK                            R23 K142 ["Path2DCursor.png"]
      688 CONCAT                           R21 R22 R23
      689 SETTABLE                         R21 R19 R20
      690 GETTABLEKS                       R20 R8 K111 ["AddPoint"]
      692 MOVE                             R22 R13
      693 LOADK                            R23 K141 ["Path2DAddPoint.png"]
      694 CONCAT                           R21 R22 R23
      695 SETTABLE                         R21 R19 R20
      696 GETTABLEKS                       R20 R8 K138 ["AddTangent"]
      698 MOVE                             R22 R13
      699 LOADK                            R23 K143 ["Path2DAddTangent.png"]
      700 CONCAT                           R21 R22 R23
      701 SETTABLE                         R21 R19 R20
      702 GETTABLEKS                       R20 R8 K139 ["Move"]
      704 MOVE                             R22 R13
      705 LOADK                            R23 K144 ["Path2DMove.png"]
      706 CONCAT                           R21 R22 R23
      707 SETTABLE                         R21 R19 R20
      708 CALL                             R17 2 1
      709 DUPCLOSURE                       R18 K145 [PROTO_0]
      710 CAPTURE                          VAL R5
      711 CAPTURE                          VAL R16
      712 CAPTURE                          VAL R17
      713 CAPTURE                          VAL R15
      714 RETURN                           R18 1
