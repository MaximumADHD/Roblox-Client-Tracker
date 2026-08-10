PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnButtonClicked"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Key"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K1 ["PROMPT_BUTTON_SIZE"]
        5 GETTABLEKS                       R5 R5 K2 ["Y"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K1 ["PROMPT_BUTTON_SIZE"]
       10 GETTABLEKS                       R6 R6 K3 ["X"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K4 ["createElement"]
       15 GETUPVAL                         R8 2
       16 DUPTABLE                         R9 K10 [{"Size", "LayoutOrder", "Style", "Text", "OnClick"}]
       17 GETIMPORT                        R10 K13 [UDim2.new]
       19 LOADN                            R11 0
       20 MOVE                             R12 R6
       21 LOADN                            R13 0
       22 MOVE                             R14 R5
       23 CALL                             R10 4 1
       24 SETTABLEKS                       R10 R9 K5 ["Size"]
       26 SETTABLEKS                       R1 R9 K6 ["LayoutOrder"]
       28 GETTABLEKS                       R10 R2 K7 ["Style"]
       30 SETTABLEKS                       R10 R9 K7 ["Style"]
       32 GETTABLEKS                       R10 R2 K8 ["Text"]
       34 SETTABLEKS                       R10 R9 K8 ["Text"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R10 R9 K9 ["OnClick"]
       41 CALL                             R7 2 -1
       42 RETURN                           R7 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["dialogTheme"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["PROMPT_BUTTON_PADDING"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["PROMPT_BUTTON_SIZE"]
       12 GETTABLEKS                       R5 R5 K5 ["Y"]
       14 GETTABLEKS                       R6 R1 K6 ["Buttons"]
       16 GETTABLEKS                       R7 R1 K7 ["PromptText"]
       18 GETTABLEKS                       R8 R1 K8 ["Size"]
       20 JUMPIF                           R8 ; [+3]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K9 ["PROMPT_SIZE"]
       24 LOADB                            R9 0
       25 GETUPVAL                         R10 1
       26 CALL                             R10 0 1
       27 JUMPIFNOT                        R10 ; [+4]
       28 GETUPVAL                         R10 2
       29 CALL                             R10 0 1
       30 JUMPIF                           R10 ; [+1]
       31 LOADB                            R9 1
       32 GETUPVAL                         R10 1
       33 CALL                             R10 0 1
       34 JUMPIFNOT                        R10 ; [+5]
       35 GETUPVAL                         R10 2
       36 CALL                             R10 0 1
       37 JUMPIFNOT                        R10 ; [+2]
       38 JUMPIF                           R7 ; [+1]
       39 LOADB                            R9 1
       40 LOADNIL                          R10
       41 JUMPIFNOT                        R7 ; [+38]
       42 DUPTABLE                         R11 K10 [{"PromptText"}]
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R12 R12 K11 ["createElement"]
       46 LOADK                            R13 K12 ["TextLabel"]
       47 DUPTABLE                         R14 K22 [{["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["Font"], ["Text"], ["TextWrapped"] = True}]
       48 GETIMPORT                        R15 K25 [UDim2.new]
       50 LOADN                            R16 1
       51 LOADN                            R17 0
       52 LOADN                            R18 1
       53 LOADN                            R19 0
       54 CALL                             R15 4 1
       55 SETTABLEKS                       R15 R14 K8 ["Size"]
       57 GETTABLEKS                       R15 R3 K26 ["textSize"]
       59 SETTABLEKS                       R15 R14 K15 ["TextSize"]
       61 GETTABLEKS                       R15 R3 K27 ["textColor"]
       63 SETTABLEKS                       R15 R14 K16 ["TextColor3"]
       65 GETIMPORT                        R15 K30 [Enum.TextXAlignment.Left]
       67 SETTABLEKS                       R15 R14 K17 ["TextXAlignment"]
       69 GETTABLEKS                       R15 R2 K31 ["font"]
       71 SETTABLEKS                       R15 R14 K18 ["Font"]
       73 SETTABLEKS                       R7 R14 K19 ["Text"]
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K7 ["PromptText"]
       78 MOVE                             R10 R11
       79 JUMP                             ; [+6]
       80 GETTABLEKS                       R11 R0 K0 ["props"]
       82 GETUPVAL                         R12 3
       83 GETTABLEKS                       R12 R12 K32 ["Children"]
       85 GETTABLE                         R10 R11 R12
       86 DUPTABLE                         R11 K34 [{"Layout"}]
       87 GETUPVAL                         R12 3
       88 GETTABLEKS                       R12 R12 K11 ["createElement"]
       90 LOADK                            R13 K35 ["UIListLayout"]
       91 DUPTABLE                         R14 K40 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       92 GETIMPORT                        R15 K42 [Enum.SortOrder.LayoutOrder]
       94 SETTABLEKS                       R15 R14 K36 ["SortOrder"]
       96 GETIMPORT                        R15 K44 [Enum.FillDirection.Horizontal]
       98 SETTABLEKS                       R15 R14 K37 ["FillDirection"]
      100 GETIMPORT                        R15 K46 [Enum.HorizontalAlignment.Center]
      102 SETTABLEKS                       R15 R14 K38 ["HorizontalAlignment"]
      104 GETIMPORT                        R15 K48 [UDim.new]
      106 LOADN                            R16 0
      107 MOVE                             R17 R4
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K39 ["Padding"]
      111 CALL                             R12 2 1
      112 SETTABLEKS                       R12 R11 K33 ["Layout"]
      114 GETIMPORT                        R12 K50 [ipairs]
      116 MOVE                             R13 R6
      117 CALL                             R12 1 3
      118 FORGPREP_INEXT                   R12
      119 MOVE                             R18 R11
      120 MOVE                             R21 R15
      121 MOVE                             R22 R16
      122 GETTABLEKS                       R23 R3 K26 ["textSize"]
      124 NAMECALL                         R19 R0 K51 ["renderButton"]
      126 CALL                             R19 4 -1
      127 FASTCALL                         TABLE_INSERT ; [+2]
      128 GETIMPORT                        R17 K54 [table.insert]
      130 CALL                             R17 -1 0
      131 FORGLOOP                         R12 2 [inext] ; [-13]
      133 GETUPVAL                         R12 3
      134 GETTABLEKS                       R12 R12 K11 ["createElement"]
      136 GETUPVAL                         R13 4
      137 NEWTABLE                         R14 0 0
      139 DUPTABLE                         R15 K56 [{"Background"}]
      140 GETUPVAL                         R16 3
      141 GETTABLEKS                       R16 R16 K11 ["createElement"]
      143 LOADK                            R17 K57 ["Frame"]
      144 DUPTABLE                         R18 K62 [{["Size"], ["BackgroundTransparency"] = 0.35, ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      145 GETIMPORT                        R19 K25 [UDim2.new]
      147 LOADN                            R20 1
      148 LOADN                            R21 0
      149 LOADN                            R22 1
      150 LOADN                            R23 0
      151 CALL                             R19 4 1
      152 SETTABLEKS                       R19 R18 K8 ["Size"]
      154 GETIMPORT                        R19 K64 [Color3.new]
      156 CALL                             R19 0 1
      157 SETTABLEKS                       R19 R18 K61 ["BackgroundColor3"]
      159 DUPTABLE                         R19 K66 [{"CenterFrame"}]
      160 GETUPVAL                         R20 3
      161 GETTABLEKS                       R20 R20 K11 ["createElement"]
      163 LOADK                            R21 K67 ["ImageButton"]
      164 DUPTABLE                         R22 K73 [{["Size"], ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["AutoButtonColor"] = False, ["ImageTransparency"] = 1}]
      165 JUMPIFNOT                        R9 ; [+11]
      166 GETIMPORT                        R23 K25 [UDim2.new]
      168 LOADN                            R24 0
      169 GETTABLEKS                       R25 R8 K74 ["X"]
      171 GETTABLEKS                       R25 R25 K75 ["Offset"]
      173 LOADK                            R26 K76 [0.9]
      174 LOADN                            R27 0
      175 CALL                             R23 4 1
      176 JUMP                             ; [+1]
      177 MOVE                             R23 R8
      178 SETTABLEKS                       R23 R22 K8 ["Size"]
      180 GETIMPORT                        R23 K25 [UDim2.new]
      182 LOADK                            R24 K77 [0.5]
      183 LOADN                            R25 0
      184 LOADK                            R26 K77 [0.5]
      185 LOADN                            R27 0
      186 CALL                             R23 4 1
      187 SETTABLEKS                       R23 R22 K68 ["Position"]
      189 GETIMPORT                        R23 K79 [Vector2.new]
      191 LOADK                            R24 K77 [0.5]
      192 LOADK                            R25 K77 [0.5]
      193 CALL                             R23 2 1
      194 SETTABLEKS                       R23 R22 K69 ["AnchorPoint"]
      196 GETTABLEKS                       R23 R2 K80 ["backgroundColor"]
      198 SETTABLEKS                       R23 R22 K61 ["BackgroundColor3"]
      200 DUPTABLE                         R23 K83 [{"SizeConstraint", "Padding", "Container", "Buttons"}]
      201 JUMPIFNOT                        R9 ; [+20]
      202 GETUPVAL                         R24 3
      203 GETTABLEKS                       R24 R24 K11 ["createElement"]
      205 LOADK                            R25 K84 ["UISizeConstraint"]
      206 DUPTABLE                         R26 K86 [{"MaxSize"}]
      207 GETIMPORT                        R27 K79 [Vector2.new]
      209 GETTABLEKS                       R28 R8 K74 ["X"]
      211 GETTABLEKS                       R28 R28 K75 ["Offset"]
      213 GETTABLEKS                       R29 R8 K5 ["Y"]
      215 GETTABLEKS                       R29 R29 K75 ["Offset"]
      217 CALL                             R27 2 1
      218 SETTABLEKS                       R27 R26 K85 ["MaxSize"]
      220 CALL                             R24 2 1
      221 JUMP                             ; [+1]
      222 LOADNIL                          R24
      223 SETTABLEKS                       R24 R23 K81 ["SizeConstraint"]
      225 GETUPVAL                         R24 3
      226 GETTABLEKS                       R24 R24 K11 ["createElement"]
      228 LOADK                            R25 K87 ["UIPadding"]
      229 DUPTABLE                         R26 K92 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      230 GETIMPORT                        R27 K48 [UDim.new]
      232 LOADN                            R28 0
      233 GETUPVAL                         R29 0
      234 GETTABLEKS                       R29 R29 K93 ["PROMPT_VERTICAL_PADDING"]
      236 CALL                             R27 2 1
      237 SETTABLEKS                       R27 R26 K88 ["PaddingTop"]
      239 GETIMPORT                        R27 K48 [UDim.new]
      241 LOADN                            R28 0
      242 GETUPVAL                         R29 0
      243 GETTABLEKS                       R29 R29 K93 ["PROMPT_VERTICAL_PADDING"]
      245 CALL                             R27 2 1
      246 SETTABLEKS                       R27 R26 K89 ["PaddingBottom"]
      248 GETIMPORT                        R27 K48 [UDim.new]
      250 LOADN                            R28 0
      251 GETUPVAL                         R29 0
      252 GETTABLEKS                       R29 R29 K94 ["PROMPT_HORIZONTAL_PADDING"]
      254 CALL                             R27 2 1
      255 SETTABLEKS                       R27 R26 K90 ["PaddingLeft"]
      257 GETIMPORT                        R27 K48 [UDim.new]
      259 LOADN                            R28 0
      260 GETUPVAL                         R29 0
      261 GETTABLEKS                       R29 R29 K94 ["PROMPT_HORIZONTAL_PADDING"]
      263 CALL                             R27 2 1
      264 SETTABLEKS                       R27 R26 K91 ["PaddingRight"]
      266 CALL                             R24 2 1
      267 SETTABLEKS                       R24 R23 K39 ["Padding"]
      269 GETUPVAL                         R24 3
      270 GETTABLEKS                       R24 R24 K11 ["createElement"]
      272 JUMPIFNOT                        R9 ; [+2]
      273 LOADK                            R25 K95 ["ScrollingFrame"]
      274 JUMP                             ; [+1]
      275 LOADK                            R25 K57 ["Frame"]
      276 JUMPIFNOT                        R9 ; [+68]
      277 DUPTABLE                         R26 K106 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ScrollBarThickness"] = 8, ["ScrollBarImageColor3"], ["ScrollBarImageTransparency"] = 0, ["ScrollingDirection"], ["CanvasSize"], ["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["MidImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png"}]
      278 GETIMPORT                        R27 K25 [UDim2.new]
      280 LOADN                            R28 1
      281 LOADN                            R29 0
      282 LOADN                            R30 1
      283 GETUPVAL                         R33 0
      284 GETTABLEKS                       R33 R33 K93 ["PROMPT_VERTICAL_PADDING"]
      286 ADD                              R32 R5 R33
      287 MINUS                            R31 R32
      288 CALL                             R27 4 1
      289 SETTABLEKS                       R27 R26 K8 ["Size"]
      291 GETIMPORT                        R27 K79 [Vector2.new]
      293 LOADK                            R28 K77 [0.5]
      294 LOADN                            R29 0
      295 CALL                             R27 2 1
      296 SETTABLEKS                       R27 R26 K69 ["AnchorPoint"]
      298 GETIMPORT                        R27 K25 [UDim2.new]
      300 LOADK                            R28 K77 [0.5]
      301 LOADN                            R29 0
      302 LOADN                            R30 0
      303 LOADN                            R31 0
      304 CALL                             R27 4 1
      305 SETTABLEKS                       R27 R26 K68 ["Position"]
      307 GETIMPORT                        R27 K108 [Color3.fromRGB]
      309 LOADN                            R28 160
      310 LOADN                            R29 160
      311 LOADN                            R30 160
      312 CALL                             R27 3 1
      313 SETTABLEKS                       R27 R26 K98 ["ScrollBarImageColor3"]
      315 GETIMPORT                        R27 K109 [Enum.ScrollingDirection.Y]
      317 SETTABLEKS                       R27 R26 K100 ["ScrollingDirection"]
      319 GETIMPORT                        R27 K25 [UDim2.new]
      321 LOADN                            R28 1
      322 LOADN                            R29 0
      323 LOADN                            R30 0
      324 GETTABLEKS                       R34 R1 K110 ["ContentHeight"]
      326 JUMPIF                           R34 ; [+4]
      327 GETTABLEKS                       R34 R8 K5 ["Y"]
      329 GETTABLEKS                       R34 R34 K75 ["Offset"]
      331 GETUPVAL                         R36 0
      332 GETTABLEKS                       R36 R36 K93 ["PROMPT_VERTICAL_PADDING"]
      334 MULK                             R35 R36 K111 [2]
      335 SUB                              R33 R34 R35
      336 SUB                              R32 R33 R5
      337 GETUPVAL                         R33 0
      338 GETTABLEKS                       R33 R33 K93 ["PROMPT_VERTICAL_PADDING"]
      340 SUB                              R31 R32 R33
      341 CALL                             R27 4 1
      342 SETTABLEKS                       R27 R26 K101 ["CanvasSize"]
      344 JUMP                             ; [+30]
      345 DUPTABLE                         R26 K112 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      346 GETIMPORT                        R27 K25 [UDim2.new]
      348 LOADN                            R28 1
      349 LOADN                            R29 0
      350 LOADN                            R30 1
      351 GETUPVAL                         R33 0
      352 GETTABLEKS                       R33 R33 K93 ["PROMPT_VERTICAL_PADDING"]
      354 ADD                              R32 R5 R33
      355 MINUS                            R31 R32
      356 CALL                             R27 4 1
      357 SETTABLEKS                       R27 R26 K8 ["Size"]
      359 GETIMPORT                        R27 K79 [Vector2.new]
      361 LOADK                            R28 K77 [0.5]
      362 LOADN                            R29 0
      363 CALL                             R27 2 1
      364 SETTABLEKS                       R27 R26 K69 ["AnchorPoint"]
      366 GETIMPORT                        R27 K25 [UDim2.new]
      368 LOADK                            R28 K77 [0.5]
      369 LOADN                            R29 0
      370 LOADN                            R30 0
      371 LOADN                            R31 0
      372 CALL                             R27 4 1
      373 SETTABLEKS                       R27 R26 K68 ["Position"]
      375 MOVE                             R27 R10
      376 CALL                             R24 3 1
      377 SETTABLEKS                       R24 R23 K82 ["Container"]
      379 GETUPVAL                         R24 3
      380 GETTABLEKS                       R24 R24 K11 ["createElement"]
      382 LOADK                            R25 K57 ["Frame"]
      383 DUPTABLE                         R26 K112 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      384 GETIMPORT                        R27 K25 [UDim2.new]
      386 LOADN                            R28 1
      387 LOADN                            R29 0
      388 LOADN                            R30 0
      389 MOVE                             R31 R5
      390 CALL                             R27 4 1
      391 SETTABLEKS                       R27 R26 K8 ["Size"]
      393 GETIMPORT                        R27 K79 [Vector2.new]
      395 LOADK                            R28 K77 [0.5]
      396 LOADN                            R29 1
      397 CALL                             R27 2 1
      398 SETTABLEKS                       R27 R26 K69 ["AnchorPoint"]
      400 GETIMPORT                        R27 K25 [UDim2.new]
      402 LOADK                            R28 K77 [0.5]
      403 LOADN                            R29 0
      404 LOADN                            R30 1
      405 LOADN                            R31 0
      406 CALL                             R27 4 1
      407 SETTABLEKS                       R27 R26 K68 ["Position"]
      409 MOVE                             R27 R11
      410 CALL                             R24 3 1
      411 SETTABLEKS                       R24 R23 K6 ["Buttons"]
      413 CALL                             R20 3 1
      414 SETTABLEKS                       R20 R19 K65 ["CenterFrame"]
      416 CALL                             R16 3 1
      417 SETTABLEKS                       R16 R15 K55 ["Background"]
      419 CALL                             R12 3 -1
      420 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["LuaFlags"]
       27 GETTABLEKS                       R4 R4 K12 ["GetFFlagACEImportScale"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["LuaFlags"]
       34 GETTABLEKS                       R5 R5 K13 ["GetFFlagACEFixPromptTextClipping"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K14 ["Framework"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R5 K15 ["UI"]
       46 GETTABLEKS                       R6 R6 K16 ["Button"]
       48 GETTABLEKS                       R7 R5 K15 ["UI"]
       50 GETTABLEKS                       R7 R7 K17 ["CaptureFocus"]
       52 GETTABLEKS                       R8 R5 K18 ["ContextServices"]
       54 GETTABLEKS                       R9 R8 K19 ["withContext"]
       56 GETTABLEKS                       R10 R1 K20 ["PureComponent"]
       58 LOADK                            R12 K21 ["FocusedPrompt"]
       59 NAMECALL                         R10 R10 K22 ["extend"]
       61 CALL                             R10 2 1
       62 DUPCLOSURE                       R11 K23 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R11 R10 K24 ["renderButton"]
       68 DUPCLOSURE                       R11 K25 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 SETTABLEKS                       R11 R10 K26 ["render"]
       76 MOVE                             R11 R9
       77 DUPTABLE                         R12 K28 [{"Stylizer"}]
       78 GETTABLEKS                       R13 R8 K27 ["Stylizer"]
       80 SETTABLEKS                       R13 R12 K27 ["Stylizer"]
       82 CALL                             R11 1 1
       83 MOVE                             R12 R10
       84 CALL                             R11 1 1
       85 MOVE                             R10 R11
       86 RETURN                           R10 1
