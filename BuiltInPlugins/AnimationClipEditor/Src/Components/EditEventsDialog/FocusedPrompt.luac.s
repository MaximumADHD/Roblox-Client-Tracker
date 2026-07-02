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
       24 LOADNIL                          R9
       25 JUMPIFNOT                        R7 ; [+38]
       26 DUPTABLE                         R10 K10 [{"PromptText"}]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R11 R11 K11 ["createElement"]
       30 LOADK                            R12 K12 ["TextLabel"]
       31 DUPTABLE                         R13 K22 [{["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["Font"], ["Text"], ["TextWrapped"] = True}]
       32 GETIMPORT                        R14 K25 [UDim2.new]
       34 LOADN                            R15 1
       35 LOADN                            R16 0
       36 LOADN                            R17 1
       37 LOADN                            R18 0
       38 CALL                             R14 4 1
       39 SETTABLEKS                       R14 R13 K8 ["Size"]
       41 GETTABLEKS                       R14 R3 K26 ["textSize"]
       43 SETTABLEKS                       R14 R13 K15 ["TextSize"]
       45 GETTABLEKS                       R14 R3 K27 ["textColor"]
       47 SETTABLEKS                       R14 R13 K16 ["TextColor3"]
       49 GETIMPORT                        R14 K30 [Enum.TextXAlignment.Left]
       51 SETTABLEKS                       R14 R13 K17 ["TextXAlignment"]
       53 GETTABLEKS                       R14 R2 K31 ["font"]
       55 SETTABLEKS                       R14 R13 K18 ["Font"]
       57 SETTABLEKS                       R7 R13 K19 ["Text"]
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K7 ["PromptText"]
       62 MOVE                             R9 R10
       63 JUMP                             ; [+6]
       64 GETTABLEKS                       R10 R0 K0 ["props"]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K32 ["Children"]
       69 GETTABLE                         R9 R10 R11
       70 DUPTABLE                         R10 K34 [{"Layout"}]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R11 R11 K11 ["createElement"]
       74 LOADK                            R12 K35 ["UIListLayout"]
       75 DUPTABLE                         R13 K40 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       76 GETIMPORT                        R14 K42 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R14 R13 K36 ["SortOrder"]
       80 GETIMPORT                        R14 K44 [Enum.FillDirection.Horizontal]
       82 SETTABLEKS                       R14 R13 K37 ["FillDirection"]
       84 GETIMPORT                        R14 K46 [Enum.HorizontalAlignment.Center]
       86 SETTABLEKS                       R14 R13 K38 ["HorizontalAlignment"]
       88 GETIMPORT                        R14 K48 [UDim.new]
       90 LOADN                            R15 0
       91 MOVE                             R16 R4
       92 CALL                             R14 2 1
       93 SETTABLEKS                       R14 R13 K39 ["Padding"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K33 ["Layout"]
       98 GETIMPORT                        R11 K50 [ipairs]
      100 MOVE                             R12 R6
      101 CALL                             R11 1 3
      102 FORGPREP_INEXT                   R11
      103 MOVE                             R17 R10
      104 MOVE                             R20 R14
      105 MOVE                             R21 R15
      106 GETTABLEKS                       R22 R3 K26 ["textSize"]
      108 NAMECALL                         R18 R0 K51 ["renderButton"]
      110 CALL                             R18 4 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R16 K54 [table.insert]
      114 CALL                             R16 -1 0
      115 FORGLOOP                         R11 2 [inext] ; [-13]
      117 GETUPVAL                         R11 1
      118 GETTABLEKS                       R11 R11 K11 ["createElement"]
      120 GETUPVAL                         R12 2
      121 NEWTABLE                         R13 0 0
      123 DUPTABLE                         R14 K56 [{"Background"}]
      124 GETUPVAL                         R15 1
      125 GETTABLEKS                       R15 R15 K11 ["createElement"]
      127 LOADK                            R16 K57 ["Frame"]
      128 DUPTABLE                         R17 K62 [{["Size"], ["BackgroundTransparency"] = 0.35, ["BorderSizePixel"] = 0, ["BackgroundColor3"]}]
      129 GETIMPORT                        R18 K25 [UDim2.new]
      131 LOADN                            R19 1
      132 LOADN                            R20 0
      133 LOADN                            R21 1
      134 LOADN                            R22 0
      135 CALL                             R18 4 1
      136 SETTABLEKS                       R18 R17 K8 ["Size"]
      138 GETIMPORT                        R18 K64 [Color3.new]
      140 CALL                             R18 0 1
      141 SETTABLEKS                       R18 R17 K61 ["BackgroundColor3"]
      143 DUPTABLE                         R18 K66 [{"CenterFrame"}]
      144 GETUPVAL                         R19 1
      145 GETTABLEKS                       R19 R19 K11 ["createElement"]
      147 LOADK                            R20 K67 ["ImageButton"]
      148 DUPTABLE                         R21 K73 [{["Size"], ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundColor3"], ["AutoButtonColor"] = False, ["ImageTransparency"] = 1}]
      149 GETUPVAL                         R23 3
      150 CALL                             R23 0 1
      151 JUMPIFNOT                        R23 ; [+11]
      152 GETIMPORT                        R22 K25 [UDim2.new]
      154 LOADN                            R23 0
      155 GETTABLEKS                       R24 R8 K74 ["X"]
      157 GETTABLEKS                       R24 R24 K75 ["Offset"]
      159 LOADK                            R25 K76 [0.9]
      160 LOADN                            R26 0
      161 CALL                             R22 4 1
      162 JUMP                             ; [+1]
      163 MOVE                             R22 R8
      164 SETTABLEKS                       R22 R21 K8 ["Size"]
      166 GETIMPORT                        R22 K25 [UDim2.new]
      168 LOADK                            R23 K77 [0.5]
      169 LOADN                            R24 0
      170 LOADK                            R25 K77 [0.5]
      171 LOADN                            R26 0
      172 CALL                             R22 4 1
      173 SETTABLEKS                       R22 R21 K68 ["Position"]
      175 GETIMPORT                        R22 K79 [Vector2.new]
      177 LOADK                            R23 K77 [0.5]
      178 LOADK                            R24 K77 [0.5]
      179 CALL                             R22 2 1
      180 SETTABLEKS                       R22 R21 K69 ["AnchorPoint"]
      182 GETTABLEKS                       R22 R2 K80 ["backgroundColor"]
      184 SETTABLEKS                       R22 R21 K61 ["BackgroundColor3"]
      186 DUPTABLE                         R22 K83 [{"SizeConstraint", "Padding", "Container", "Buttons"}]
      187 GETUPVAL                         R24 3
      188 CALL                             R24 0 1
      189 JUMPIFNOT                        R24 ; [+20]
      190 GETUPVAL                         R23 1
      191 GETTABLEKS                       R23 R23 K11 ["createElement"]
      193 LOADK                            R24 K84 ["UISizeConstraint"]
      194 DUPTABLE                         R25 K86 [{"MaxSize"}]
      195 GETIMPORT                        R26 K79 [Vector2.new]
      197 GETTABLEKS                       R27 R8 K74 ["X"]
      199 GETTABLEKS                       R27 R27 K75 ["Offset"]
      201 GETTABLEKS                       R28 R8 K5 ["Y"]
      203 GETTABLEKS                       R28 R28 K75 ["Offset"]
      205 CALL                             R26 2 1
      206 SETTABLEKS                       R26 R25 K85 ["MaxSize"]
      208 CALL                             R23 2 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R23
      211 SETTABLEKS                       R23 R22 K81 ["SizeConstraint"]
      213 GETUPVAL                         R23 1
      214 GETTABLEKS                       R23 R23 K11 ["createElement"]
      216 LOADK                            R24 K87 ["UIPadding"]
      217 DUPTABLE                         R25 K92 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      218 GETIMPORT                        R26 K48 [UDim.new]
      220 LOADN                            R27 0
      221 GETUPVAL                         R28 0
      222 GETTABLEKS                       R28 R28 K93 ["PROMPT_VERTICAL_PADDING"]
      224 CALL                             R26 2 1
      225 SETTABLEKS                       R26 R25 K88 ["PaddingTop"]
      227 GETIMPORT                        R26 K48 [UDim.new]
      229 LOADN                            R27 0
      230 GETUPVAL                         R28 0
      231 GETTABLEKS                       R28 R28 K93 ["PROMPT_VERTICAL_PADDING"]
      233 CALL                             R26 2 1
      234 SETTABLEKS                       R26 R25 K89 ["PaddingBottom"]
      236 GETIMPORT                        R26 K48 [UDim.new]
      238 LOADN                            R27 0
      239 GETUPVAL                         R28 0
      240 GETTABLEKS                       R28 R28 K94 ["PROMPT_HORIZONTAL_PADDING"]
      242 CALL                             R26 2 1
      243 SETTABLEKS                       R26 R25 K90 ["PaddingLeft"]
      245 GETIMPORT                        R26 K48 [UDim.new]
      247 LOADN                            R27 0
      248 GETUPVAL                         R28 0
      249 GETTABLEKS                       R28 R28 K94 ["PROMPT_HORIZONTAL_PADDING"]
      251 CALL                             R26 2 1
      252 SETTABLEKS                       R26 R25 K91 ["PaddingRight"]
      254 CALL                             R23 2 1
      255 SETTABLEKS                       R23 R22 K39 ["Padding"]
      257 GETUPVAL                         R23 1
      258 GETTABLEKS                       R23 R23 K11 ["createElement"]
      260 GETUPVAL                         R25 3
      261 CALL                             R25 0 1
      262 JUMPIFNOT                        R25 ; [+2]
      263 LOADK                            R24 K95 ["ScrollingFrame"]
      264 JUMP                             ; [+1]
      265 LOADK                            R24 K57 ["Frame"]
      266 GETUPVAL                         R26 3
      267 CALL                             R26 0 1
      268 JUMPIFNOT                        R26 ; [+68]
      269 DUPTABLE                         R25 K106 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ScrollBarThickness"] = 8, ["ScrollBarImageColor3"], ["ScrollBarImageTransparency"] = 0, ["ScrollingDirection"], ["CanvasSize"], ["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["MidImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png", ["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png"}]
      270 GETIMPORT                        R26 K25 [UDim2.new]
      272 LOADN                            R27 1
      273 LOADN                            R28 0
      274 LOADN                            R29 1
      275 GETUPVAL                         R32 0
      276 GETTABLEKS                       R32 R32 K93 ["PROMPT_VERTICAL_PADDING"]
      278 ADD                              R31 R5 R32
      279 MINUS                            R30 R31
      280 CALL                             R26 4 1
      281 SETTABLEKS                       R26 R25 K8 ["Size"]
      283 GETIMPORT                        R26 K79 [Vector2.new]
      285 LOADK                            R27 K77 [0.5]
      286 LOADN                            R28 0
      287 CALL                             R26 2 1
      288 SETTABLEKS                       R26 R25 K69 ["AnchorPoint"]
      290 GETIMPORT                        R26 K25 [UDim2.new]
      292 LOADK                            R27 K77 [0.5]
      293 LOADN                            R28 0
      294 LOADN                            R29 0
      295 LOADN                            R30 0
      296 CALL                             R26 4 1
      297 SETTABLEKS                       R26 R25 K68 ["Position"]
      299 GETIMPORT                        R26 K108 [Color3.fromRGB]
      301 LOADN                            R27 160
      302 LOADN                            R28 160
      303 LOADN                            R29 160
      304 CALL                             R26 3 1
      305 SETTABLEKS                       R26 R25 K98 ["ScrollBarImageColor3"]
      307 GETIMPORT                        R26 K109 [Enum.ScrollingDirection.Y]
      309 SETTABLEKS                       R26 R25 K100 ["ScrollingDirection"]
      311 GETIMPORT                        R26 K25 [UDim2.new]
      313 LOADN                            R27 1
      314 LOADN                            R28 0
      315 LOADN                            R29 0
      316 GETTABLEKS                       R33 R1 K110 ["ContentHeight"]
      318 JUMPIF                           R33 ; [+4]
      319 GETTABLEKS                       R33 R8 K5 ["Y"]
      321 GETTABLEKS                       R33 R33 K75 ["Offset"]
      323 GETUPVAL                         R35 0
      324 GETTABLEKS                       R35 R35 K93 ["PROMPT_VERTICAL_PADDING"]
      326 MULK                             R34 R35 K111 [2]
      327 SUB                              R32 R33 R34
      328 SUB                              R31 R32 R5
      329 GETUPVAL                         R32 0
      330 GETTABLEKS                       R32 R32 K93 ["PROMPT_VERTICAL_PADDING"]
      332 SUB                              R30 R31 R32
      333 CALL                             R26 4 1
      334 SETTABLEKS                       R26 R25 K101 ["CanvasSize"]
      336 JUMP                             ; [+30]
      337 DUPTABLE                         R25 K112 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      338 GETIMPORT                        R26 K25 [UDim2.new]
      340 LOADN                            R27 1
      341 LOADN                            R28 0
      342 LOADN                            R29 1
      343 GETUPVAL                         R32 0
      344 GETTABLEKS                       R32 R32 K93 ["PROMPT_VERTICAL_PADDING"]
      346 ADD                              R31 R5 R32
      347 MINUS                            R30 R31
      348 CALL                             R26 4 1
      349 SETTABLEKS                       R26 R25 K8 ["Size"]
      351 GETIMPORT                        R26 K79 [Vector2.new]
      353 LOADK                            R27 K77 [0.5]
      354 LOADN                            R28 0
      355 CALL                             R26 2 1
      356 SETTABLEKS                       R26 R25 K69 ["AnchorPoint"]
      358 GETIMPORT                        R26 K25 [UDim2.new]
      360 LOADK                            R27 K77 [0.5]
      361 LOADN                            R28 0
      362 LOADN                            R29 0
      363 LOADN                            R30 0
      364 CALL                             R26 4 1
      365 SETTABLEKS                       R26 R25 K68 ["Position"]
      367 MOVE                             R26 R9
      368 CALL                             R23 3 1
      369 SETTABLEKS                       R23 R22 K82 ["Container"]
      371 GETUPVAL                         R23 1
      372 GETTABLEKS                       R23 R23 K11 ["createElement"]
      374 LOADK                            R24 K57 ["Frame"]
      375 DUPTABLE                         R25 K112 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      376 GETIMPORT                        R26 K25 [UDim2.new]
      378 LOADN                            R27 1
      379 LOADN                            R28 0
      380 LOADN                            R29 0
      381 MOVE                             R30 R5
      382 CALL                             R26 4 1
      383 SETTABLEKS                       R26 R25 K8 ["Size"]
      385 GETIMPORT                        R26 K79 [Vector2.new]
      387 LOADK                            R27 K77 [0.5]
      388 LOADN                            R28 1
      389 CALL                             R26 2 1
      390 SETTABLEKS                       R26 R25 K69 ["AnchorPoint"]
      392 GETIMPORT                        R26 K25 [UDim2.new]
      394 LOADK                            R27 K77 [0.5]
      395 LOADN                            R28 0
      396 LOADN                            R29 1
      397 LOADN                            R30 0
      398 CALL                             R26 4 1
      399 SETTABLEKS                       R26 R25 K68 ["Position"]
      401 MOVE                             R26 R10
      402 CALL                             R23 3 1
      403 SETTABLEKS                       R23 R22 K6 ["Buttons"]
      405 CALL                             R19 3 1
      406 SETTABLEKS                       R19 R18 K65 ["CenterFrame"]
      408 CALL                             R15 3 1
      409 SETTABLEKS                       R15 R14 K55 ["Background"]
      411 CALL                             R11 3 -1
      412 RETURN                           R11 -1

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
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K13 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K14 ["UI"]
       39 GETTABLEKS                       R5 R5 K15 ["Button"]
       41 GETTABLEKS                       R6 R4 K14 ["UI"]
       43 GETTABLEKS                       R6 R6 K16 ["CaptureFocus"]
       45 GETTABLEKS                       R7 R4 K17 ["ContextServices"]
       47 GETTABLEKS                       R8 R7 K18 ["withContext"]
       49 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       51 LOADK                            R11 K20 ["FocusedPrompt"]
       52 NAMECALL                         R9 R9 K21 ["extend"]
       54 CALL                             R9 2 1
       55 DUPCLOSURE                       R10 K22 [PROTO_1]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R10 R9 K23 ["renderButton"]
       61 DUPCLOSURE                       R10 K24 [PROTO_2]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R10 R9 K25 ["render"]
       68 MOVE                             R10 R8
       69 DUPTABLE                         R11 K27 [{"Stylizer"}]
       70 GETTABLEKS                       R12 R7 K26 ["Stylizer"]
       72 SETTABLEKS                       R12 R11 K26 ["Stylizer"]
       74 CALL                             R10 1 1
       75 MOVE                             R11 R9
       76 CALL                             R10 1 1
       77 MOVE                             R9 R10
       78 RETURN                           R9 1
