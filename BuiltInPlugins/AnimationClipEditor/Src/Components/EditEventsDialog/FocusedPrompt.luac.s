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
       25 JUMPIFNOT                        R7 ; [+44]
       26 DUPTABLE                         R10 K10 [{"PromptText"}]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R11 R11 K11 ["createElement"]
       30 LOADK                            R12 K12 ["TextLabel"]
       31 DUPTABLE                         R13 K20 [{"Size", "BackgroundTransparency", "TextSize", "TextColor3", "TextXAlignment", "Font", "Text", "TextWrapped"}]
       32 GETIMPORT                        R14 K23 [UDim2.new]
       34 LOADN                            R15 1
       35 LOADN                            R16 0
       36 LOADN                            R17 1
       37 LOADN                            R18 0
       38 CALL                             R14 4 1
       39 SETTABLEKS                       R14 R13 K8 ["Size"]
       41 LOADN                            R14 1
       42 SETTABLEKS                       R14 R13 K13 ["BackgroundTransparency"]
       44 GETTABLEKS                       R14 R3 K24 ["textSize"]
       46 SETTABLEKS                       R14 R13 K14 ["TextSize"]
       48 GETTABLEKS                       R14 R3 K25 ["textColor"]
       50 SETTABLEKS                       R14 R13 K15 ["TextColor3"]
       52 GETIMPORT                        R14 K28 [Enum.TextXAlignment.Left]
       54 SETTABLEKS                       R14 R13 K16 ["TextXAlignment"]
       56 GETTABLEKS                       R14 R2 K29 ["font"]
       58 SETTABLEKS                       R14 R13 K17 ["Font"]
       60 SETTABLEKS                       R7 R13 K18 ["Text"]
       62 LOADB                            R14 1
       63 SETTABLEKS                       R14 R13 K19 ["TextWrapped"]
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K7 ["PromptText"]
       68 MOVE                             R9 R10
       69 JUMP                             ; [+6]
       70 GETTABLEKS                       R10 R0 K0 ["props"]
       72 GETUPVAL                         R11 1
       73 GETTABLEKS                       R11 R11 K30 ["Children"]
       75 GETTABLE                         R9 R10 R11
       76 DUPTABLE                         R10 K32 [{"Layout"}]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K11 ["createElement"]
       80 LOADK                            R12 K33 ["UIListLayout"]
       81 DUPTABLE                         R13 K38 [{"SortOrder", "FillDirection", "HorizontalAlignment", "Padding"}]
       82 GETIMPORT                        R14 K40 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R14 R13 K34 ["SortOrder"]
       86 GETIMPORT                        R14 K42 [Enum.FillDirection.Horizontal]
       88 SETTABLEKS                       R14 R13 K35 ["FillDirection"]
       90 GETIMPORT                        R14 K44 [Enum.HorizontalAlignment.Center]
       92 SETTABLEKS                       R14 R13 K36 ["HorizontalAlignment"]
       94 GETIMPORT                        R14 K46 [UDim.new]
       96 LOADN                            R15 0
       97 MOVE                             R16 R4
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K37 ["Padding"]
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K31 ["Layout"]
      104 GETIMPORT                        R11 K48 [ipairs]
      106 MOVE                             R12 R6
      107 CALL                             R11 1 3
      108 FORGPREP_INEXT                   R11
      109 MOVE                             R17 R10
      110 MOVE                             R20 R14
      111 MOVE                             R21 R15
      112 GETTABLEKS                       R22 R3 K24 ["textSize"]
      114 NAMECALL                         R18 R0 K49 ["renderButton"]
      116 CALL                             R18 4 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R16 K52 [table.insert]
      120 CALL                             R16 -1 0
      121 FORGLOOP                         R11 2 [inext] ; [-13]
      123 GETUPVAL                         R11 1
      124 GETTABLEKS                       R11 R11 K11 ["createElement"]
      126 GETUPVAL                         R12 2
      127 NEWTABLE                         R13 0 0
      129 DUPTABLE                         R14 K54 [{"Background"}]
      130 GETUPVAL                         R15 1
      131 GETTABLEKS                       R15 R15 K11 ["createElement"]
      133 LOADK                            R16 K55 ["Frame"]
      134 DUPTABLE                         R17 K58 [{"Size", "BackgroundTransparency", "BorderSizePixel", "BackgroundColor3"}]
      135 GETIMPORT                        R18 K23 [UDim2.new]
      137 LOADN                            R19 1
      138 LOADN                            R20 0
      139 LOADN                            R21 1
      140 LOADN                            R22 0
      141 CALL                             R18 4 1
      142 SETTABLEKS                       R18 R17 K8 ["Size"]
      144 LOADK                            R18 K59 [0.35]
      145 SETTABLEKS                       R18 R17 K13 ["BackgroundTransparency"]
      147 LOADN                            R18 0
      148 SETTABLEKS                       R18 R17 K56 ["BorderSizePixel"]
      150 GETIMPORT                        R18 K61 [Color3.new]
      152 CALL                             R18 0 1
      153 SETTABLEKS                       R18 R17 K57 ["BackgroundColor3"]
      155 DUPTABLE                         R18 K63 [{"CenterFrame"}]
      156 GETUPVAL                         R19 1
      157 GETTABLEKS                       R19 R19 K11 ["createElement"]
      159 LOADK                            R20 K64 ["ImageButton"]
      160 DUPTABLE                         R21 K69 [{"Size", "Position", "AnchorPoint", "BorderSizePixel", "BackgroundColor3", "AutoButtonColor", "ImageTransparency"}]
      161 GETUPVAL                         R23 3
      162 CALL                             R23 0 1
      163 JUMPIFNOT                        R23 ; [+11]
      164 GETIMPORT                        R22 K23 [UDim2.new]
      166 LOADN                            R23 0
      167 GETTABLEKS                       R24 R8 K70 ["X"]
      169 GETTABLEKS                       R24 R24 K71 ["Offset"]
      171 LOADK                            R25 K72 [0.9]
      172 LOADN                            R26 0
      173 CALL                             R22 4 1
      174 JUMP                             ; [+1]
      175 MOVE                             R22 R8
      176 SETTABLEKS                       R22 R21 K8 ["Size"]
      178 GETIMPORT                        R22 K23 [UDim2.new]
      180 LOADK                            R23 K73 [0.5]
      181 LOADN                            R24 0
      182 LOADK                            R25 K73 [0.5]
      183 LOADN                            R26 0
      184 CALL                             R22 4 1
      185 SETTABLEKS                       R22 R21 K65 ["Position"]
      187 GETIMPORT                        R22 K75 [Vector2.new]
      189 LOADK                            R23 K73 [0.5]
      190 LOADK                            R24 K73 [0.5]
      191 CALL                             R22 2 1
      192 SETTABLEKS                       R22 R21 K66 ["AnchorPoint"]
      194 LOADN                            R22 0
      195 SETTABLEKS                       R22 R21 K56 ["BorderSizePixel"]
      197 GETTABLEKS                       R22 R2 K76 ["backgroundColor"]
      199 SETTABLEKS                       R22 R21 K57 ["BackgroundColor3"]
      201 LOADB                            R22 0
      202 SETTABLEKS                       R22 R21 K67 ["AutoButtonColor"]
      204 LOADN                            R22 1
      205 SETTABLEKS                       R22 R21 K68 ["ImageTransparency"]
      207 DUPTABLE                         R22 K79 [{"SizeConstraint", "Padding", "Container", "Buttons"}]
      208 GETUPVAL                         R24 3
      209 CALL                             R24 0 1
      210 JUMPIFNOT                        R24 ; [+20]
      211 GETUPVAL                         R23 1
      212 GETTABLEKS                       R23 R23 K11 ["createElement"]
      214 LOADK                            R24 K80 ["UISizeConstraint"]
      215 DUPTABLE                         R25 K82 [{"MaxSize"}]
      216 GETIMPORT                        R26 K75 [Vector2.new]
      218 GETTABLEKS                       R27 R8 K70 ["X"]
      220 GETTABLEKS                       R27 R27 K71 ["Offset"]
      222 GETTABLEKS                       R28 R8 K5 ["Y"]
      224 GETTABLEKS                       R28 R28 K71 ["Offset"]
      226 CALL                             R26 2 1
      227 SETTABLEKS                       R26 R25 K81 ["MaxSize"]
      229 CALL                             R23 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R23
      232 SETTABLEKS                       R23 R22 K77 ["SizeConstraint"]
      234 GETUPVAL                         R23 1
      235 GETTABLEKS                       R23 R23 K11 ["createElement"]
      237 LOADK                            R24 K83 ["UIPadding"]
      238 DUPTABLE                         R25 K88 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      239 GETIMPORT                        R26 K46 [UDim.new]
      241 LOADN                            R27 0
      242 GETUPVAL                         R28 0
      243 GETTABLEKS                       R28 R28 K89 ["PROMPT_VERTICAL_PADDING"]
      245 CALL                             R26 2 1
      246 SETTABLEKS                       R26 R25 K84 ["PaddingTop"]
      248 GETIMPORT                        R26 K46 [UDim.new]
      250 LOADN                            R27 0
      251 GETUPVAL                         R28 0
      252 GETTABLEKS                       R28 R28 K89 ["PROMPT_VERTICAL_PADDING"]
      254 CALL                             R26 2 1
      255 SETTABLEKS                       R26 R25 K85 ["PaddingBottom"]
      257 GETIMPORT                        R26 K46 [UDim.new]
      259 LOADN                            R27 0
      260 GETUPVAL                         R28 0
      261 GETTABLEKS                       R28 R28 K90 ["PROMPT_HORIZONTAL_PADDING"]
      263 CALL                             R26 2 1
      264 SETTABLEKS                       R26 R25 K86 ["PaddingLeft"]
      266 GETIMPORT                        R26 K46 [UDim.new]
      268 LOADN                            R27 0
      269 GETUPVAL                         R28 0
      270 GETTABLEKS                       R28 R28 K90 ["PROMPT_HORIZONTAL_PADDING"]
      272 CALL                             R26 2 1
      273 SETTABLEKS                       R26 R25 K87 ["PaddingRight"]
      275 CALL                             R23 2 1
      276 SETTABLEKS                       R23 R22 K37 ["Padding"]
      278 GETUPVAL                         R23 1
      279 GETTABLEKS                       R23 R23 K11 ["createElement"]
      281 GETUPVAL                         R25 3
      282 CALL                             R25 0 1
      283 JUMPIFNOT                        R25 ; [+2]
      284 LOADK                            R24 K91 ["ScrollingFrame"]
      285 JUMP                             ; [+1]
      286 LOADK                            R24 K55 ["Frame"]
      287 GETUPVAL                         R26 3
      288 CALL                             R26 0 1
      289 JUMPIFNOT                        R26 ; [+89]
      290 DUPTABLE                         R25 K100 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "BorderSizePixel", "ScrollBarThickness", "ScrollBarImageColor3", "ScrollBarImageTransparency", "ScrollingDirection", "CanvasSize", "TopImage", "MidImage", "BottomImage"}]
      291 GETIMPORT                        R26 K23 [UDim2.new]
      293 LOADN                            R27 1
      294 LOADN                            R28 0
      295 LOADN                            R29 1
      296 GETUPVAL                         R32 0
      297 GETTABLEKS                       R32 R32 K89 ["PROMPT_VERTICAL_PADDING"]
      299 ADD                              R31 R5 R32
      300 MINUS                            R30 R31
      301 CALL                             R26 4 1
      302 SETTABLEKS                       R26 R25 K8 ["Size"]
      304 GETIMPORT                        R26 K75 [Vector2.new]
      306 LOADK                            R27 K73 [0.5]
      307 LOADN                            R28 0
      308 CALL                             R26 2 1
      309 SETTABLEKS                       R26 R25 K66 ["AnchorPoint"]
      311 GETIMPORT                        R26 K23 [UDim2.new]
      313 LOADK                            R27 K73 [0.5]
      314 LOADN                            R28 0
      315 LOADN                            R29 0
      316 LOADN                            R30 0
      317 CALL                             R26 4 1
      318 SETTABLEKS                       R26 R25 K65 ["Position"]
      320 LOADN                            R26 1
      321 SETTABLEKS                       R26 R25 K13 ["BackgroundTransparency"]
      323 LOADN                            R26 0
      324 SETTABLEKS                       R26 R25 K56 ["BorderSizePixel"]
      326 LOADN                            R26 8
      327 SETTABLEKS                       R26 R25 K92 ["ScrollBarThickness"]
      329 GETIMPORT                        R26 K102 [Color3.fromRGB]
      331 LOADN                            R27 160
      332 LOADN                            R28 160
      333 LOADN                            R29 160
      334 CALL                             R26 3 1
      335 SETTABLEKS                       R26 R25 K93 ["ScrollBarImageColor3"]
      337 LOADN                            R26 0
      338 SETTABLEKS                       R26 R25 K94 ["ScrollBarImageTransparency"]
      340 GETIMPORT                        R26 K103 [Enum.ScrollingDirection.Y]
      342 SETTABLEKS                       R26 R25 K95 ["ScrollingDirection"]
      344 GETIMPORT                        R26 K23 [UDim2.new]
      346 LOADN                            R27 1
      347 LOADN                            R28 0
      348 LOADN                            R29 0
      349 GETTABLEKS                       R33 R1 K104 ["ContentHeight"]
      351 JUMPIF                           R33 ; [+4]
      352 GETTABLEKS                       R33 R8 K5 ["Y"]
      354 GETTABLEKS                       R33 R33 K71 ["Offset"]
      356 GETUPVAL                         R35 0
      357 GETTABLEKS                       R35 R35 K89 ["PROMPT_VERTICAL_PADDING"]
      359 MULK                             R34 R35 K105 [2]
      360 SUB                              R32 R33 R34
      361 SUB                              R31 R32 R5
      362 GETUPVAL                         R32 0
      363 GETTABLEKS                       R32 R32 K89 ["PROMPT_VERTICAL_PADDING"]
      365 SUB                              R30 R31 R32
      366 CALL                             R26 4 1
      367 SETTABLEKS                       R26 R25 K96 ["CanvasSize"]
      369 LOADK                            R26 K106 ["rbxasset://textures/ui/Scroll/scroll-middle.png"]
      370 SETTABLEKS                       R26 R25 K97 ["TopImage"]
      372 LOADK                            R26 K106 ["rbxasset://textures/ui/Scroll/scroll-middle.png"]
      373 SETTABLEKS                       R26 R25 K98 ["MidImage"]
      375 LOADK                            R26 K106 ["rbxasset://textures/ui/Scroll/scroll-middle.png"]
      376 SETTABLEKS                       R26 R25 K99 ["BottomImage"]
      378 JUMP                             ; [+33]
      379 DUPTABLE                         R25 K107 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      380 GETIMPORT                        R26 K23 [UDim2.new]
      382 LOADN                            R27 1
      383 LOADN                            R28 0
      384 LOADN                            R29 1
      385 GETUPVAL                         R32 0
      386 GETTABLEKS                       R32 R32 K89 ["PROMPT_VERTICAL_PADDING"]
      388 ADD                              R31 R5 R32
      389 MINUS                            R30 R31
      390 CALL                             R26 4 1
      391 SETTABLEKS                       R26 R25 K8 ["Size"]
      393 GETIMPORT                        R26 K75 [Vector2.new]
      395 LOADK                            R27 K73 [0.5]
      396 LOADN                            R28 0
      397 CALL                             R26 2 1
      398 SETTABLEKS                       R26 R25 K66 ["AnchorPoint"]
      400 GETIMPORT                        R26 K23 [UDim2.new]
      402 LOADK                            R27 K73 [0.5]
      403 LOADN                            R28 0
      404 LOADN                            R29 0
      405 LOADN                            R30 0
      406 CALL                             R26 4 1
      407 SETTABLEKS                       R26 R25 K65 ["Position"]
      409 LOADN                            R26 1
      410 SETTABLEKS                       R26 R25 K13 ["BackgroundTransparency"]
      412 MOVE                             R26 R9
      413 CALL                             R23 3 1
      414 SETTABLEKS                       R23 R22 K78 ["Container"]
      416 GETUPVAL                         R23 1
      417 GETTABLEKS                       R23 R23 K11 ["createElement"]
      419 LOADK                            R24 K55 ["Frame"]
      420 DUPTABLE                         R25 K107 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      421 GETIMPORT                        R26 K23 [UDim2.new]
      423 LOADN                            R27 1
      424 LOADN                            R28 0
      425 LOADN                            R29 0
      426 MOVE                             R30 R5
      427 CALL                             R26 4 1
      428 SETTABLEKS                       R26 R25 K8 ["Size"]
      430 GETIMPORT                        R26 K75 [Vector2.new]
      432 LOADK                            R27 K73 [0.5]
      433 LOADN                            R28 1
      434 CALL                             R26 2 1
      435 SETTABLEKS                       R26 R25 K66 ["AnchorPoint"]
      437 GETIMPORT                        R26 K23 [UDim2.new]
      439 LOADK                            R27 K73 [0.5]
      440 LOADN                            R28 0
      441 LOADN                            R29 1
      442 LOADN                            R30 0
      443 CALL                             R26 4 1
      444 SETTABLEKS                       R26 R25 K65 ["Position"]
      446 LOADN                            R26 1
      447 SETTABLEKS                       R26 R25 K13 ["BackgroundTransparency"]
      449 MOVE                             R26 R10
      450 CALL                             R23 3 1
      451 SETTABLEKS                       R23 R22 K6 ["Buttons"]
      453 CALL                             R19 3 1
      454 SETTABLEKS                       R19 R18 K62 ["CenterFrame"]
      456 CALL                             R15 3 1
      457 SETTABLEKS                       R15 R14 K53 ["Background"]
      459 CALL                             R11 3 -1
      460 RETURN                           R11 -1

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
