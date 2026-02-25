PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["cursorType"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["NavHighlight"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+61]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["createElement"]
       12 LOADK                            R4 K3 ["Frame"]
       13 DUPTABLE                         R5 K12 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "ref"}]
       14 GETIMPORT                        R6 K15 [Vector2.new]
       16 LOADN                            R7 0
       17 LOADN                            R8 1
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K4 ["AnchorPoint"]
       21 GETIMPORT                        R6 K17 [UDim2.new]
       23 LOADN                            R7 0
       24 LOADN                            R8 0
       25 LOADN                            R9 1
       26 LOADN                            R10 253
       27 CALL                             R6 4 1
       28 SETTABLEKS                       R6 R5 K5 ["Position"]
       30 GETIMPORT                        R6 K17 [UDim2.new]
       32 LOADN                            R7 1
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 LOADN                            R10 3
       36 CALL                             R6 4 1
       37 SETTABLEKS                       R6 R5 K6 ["Size"]
       39 LOADN                            R6 1
       40 SETTABLEKS                       R6 R5 K7 ["BorderSizePixel"]
       42 GETTABLEKS                       R9 R2 K18 ["Color"]
       44 GETTABLEKS                       R8 R9 K19 ["Selection"]
       46 GETTABLEKS                       R7 R8 K20 ["Start"]
       48 GETTABLEKS                       R6 R7 K21 ["Color3"]
       50 SETTABLEKS                       R6 R5 K8 ["BackgroundColor3"]
       52 LOADN                            R6 0
       53 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
       55 GETTABLEKS                       R9 R2 K18 ["Color"]
       57 GETTABLEKS                       R8 R9 K19 ["Selection"]
       59 GETTABLEKS                       R7 R8 K20 ["Start"]
       61 GETTABLEKS                       R6 R7 K21 ["Color3"]
       63 SETTABLEKS                       R6 R5 K10 ["BorderColor3"]
       65 SETTABLEKS                       R1 R5 K11 ["ref"]
       67 CALL                             R3 2 -1
       68 RETURN                           R3 -1
       69 GETTABLEKS                       R3 R0 K0 ["cursorType"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R4 R5 K22 ["Invisible"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+22]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R3 R4 K2 ["createElement"]
       79 LOADK                            R4 K3 ["Frame"]
       80 DUPTABLE                         R5 K23 [{"BackgroundTransparency", "Size", "ref"}]
       81 LOADN                            R6 1
       82 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
       84 GETIMPORT                        R6 K17 [UDim2.new]
       86 LOADN                            R7 1
       87 LOADN                            R8 0
       88 LOADN                            R9 1
       89 LOADN                            R10 0
       90 CALL                             R6 4 1
       91 SETTABLEKS                       R6 R5 K6 ["Size"]
       93 SETTABLEKS                       R1 R5 K11 ["ref"]
       95 CALL                             R3 2 -1
       96 RETURN                           R3 -1
       97 GETUPVAL                         R4 3
       98 GETTABLEKS                       R5 R0 K0 ["cursorType"]
      100 GETTABLE                         R3 R4 R5
      101 GETTABLEKS                       R4 R3 K24 ["Tag"]
      103 JUMPIFNOTEQKS                    R4 K25 ["FixedSizeImage"] ; [+114]
      105 GETIMPORT                        R4 K27 [UDim2.fromOffset]
      107 GETTABLEKS                       R5 R3 K6 ["Size"]
      109 GETTABLEKS                       R6 R3 K6 ["Size"]
      111 CALL                             R4 2 1
      112 GETIMPORT                        R5 K17 [UDim2.new]
      114 LOADK                            R6 K28 [0.5]
      115 GETTABLEKS                       R10 R4 K30 ["X"]
      117 GETTABLEKS                       R9 R10 K31 ["Offset"]
      119 MINUS                            R8 R9
      120 DIVK                             R7 R8 K29 [2]
      121 LOADK                            R8 K28 [0.5]
      122 GETTABLEKS                       R12 R4 K32 ["Y"]
      124 GETTABLEKS                       R11 R12 K31 ["Offset"]
      126 MINUS                            R10 R11
      127 DIVK                             R9 R10 K29 [2]
      128 CALL                             R5 4 1
      129 GETUPVAL                         R8 4
      130 GETTABLEKS                       R7 R8 K33 ["FoundationRemoveCursorProviderTestOutput"]
      132 JUMPIFNOT                        R7 ; [+60]
      133 GETUPVAL                         R7 2
      134 GETTABLEKS                       R6 R7 K2 ["createElement"]
      136 LOADK                            R7 K34 ["ImageLabel"]
      137 DUPTABLE                         R8 K40 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      138 GETUPVAL                         R11 5
      139 GETTABLEKS                       R12 R3 K35 ["Image"]
      141 GETTABLE                         R10 R11 R12
      142 GETTABLEKS                       R9 R10 K35 ["Image"]
      144 SETTABLEKS                       R9 R8 K35 ["Image"]
      146 LOADN                            R9 1
      147 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
      149 GETUPVAL                         R11 5
      150 GETTABLEKS                       R12 R3 K35 ["Image"]
      152 GETTABLE                         R10 R11 R12
      153 GETTABLEKS                       R9 R10 K36 ["ImageRectOffset"]
      155 SETTABLEKS                       R9 R8 K36 ["ImageRectOffset"]
      157 GETUPVAL                         R11 5
      158 GETTABLEKS                       R12 R3 K35 ["Image"]
      160 GETTABLE                         R10 R11 R12
      161 GETTABLEKS                       R9 R10 K37 ["ImageRectSize"]
      163 SETTABLEKS                       R9 R8 K37 ["ImageRectSize"]
      165 SETTABLEKS                       R4 R8 K6 ["Size"]
      167 SETTABLEKS                       R5 R8 K5 ["Position"]
      169 GETTABLEKS                       R12 R2 K18 ["Color"]
      171 GETTABLEKS                       R11 R12 K19 ["Selection"]
      173 GETTABLEKS                       R10 R11 K20 ["Start"]
      175 GETTABLEKS                       R9 R10 K21 ["Color3"]
      177 SETTABLEKS                       R9 R8 K38 ["ImageColor3"]
      179 GETTABLEKS                       R12 R2 K18 ["Color"]
      181 GETTABLEKS                       R11 R12 K19 ["Selection"]
      183 GETTABLEKS                       R10 R11 K20 ["Start"]
      185 GETTABLEKS                       R9 R10 K41 ["Transparency"]
      187 SETTABLEKS                       R9 R8 K39 ["ImageTransparency"]
      189 SETTABLEKS                       R1 R8 K11 ["ref"]
      191 CALL                             R6 2 1
      192 RETURN                           R6 1
      193 GETUPVAL                         R7 2
      194 GETTABLEKS                       R6 R7 K2 ["createElement"]
      196 GETUPVAL                         R7 6
      197 DUPTABLE                         R8 K43 [{"Image", "imageStyle", "Size", "Position", "ref"}]
      198 GETTABLEKS                       R9 R3 K35 ["Image"]
      200 SETTABLEKS                       R9 R8 K35 ["Image"]
      202 GETTABLEKS                       R11 R2 K18 ["Color"]
      204 GETTABLEKS                       R10 R11 K19 ["Selection"]
      206 GETTABLEKS                       R9 R10 K20 ["Start"]
      208 SETTABLEKS                       R9 R8 K42 ["imageStyle"]
      210 SETTABLEKS                       R4 R8 K6 ["Size"]
      212 SETTABLEKS                       R5 R8 K5 ["Position"]
      214 SETTABLEKS                       R1 R8 K11 ["ref"]
      216 CALL                             R6 2 1
      217 RETURN                           R6 1
      218 GETTABLEKS                       R4 R3 K24 ["Tag"]
      220 JUMPIFNOTEQKS                    R4 K44 ["SlicedImage"] ; [+185]
      222 GETTABLEKS                       R4 R3 K45 ["InsetAdjustment"]
      224 GETIMPORT                        R5 K17 [UDim2.new]
      226 LOADN                            R6 1
      227 GETTABLEKS                       R8 R4 K30 ["X"]
      229 MULK                             R7 R8 K29 [2]
      230 LOADN                            R8 1
      231 GETTABLEKS                       R10 R4 K32 ["Y"]
      233 MULK                             R9 R10 K29 [2]
      234 CALL                             R5 4 1
      235 GETTABLEKS                       R7 R3 K46 ["Padding"]
      237 JUMPIFNOT                        R7 ; [+39]
      238 GETUPVAL                         R7 2
      239 GETTABLEKS                       R6 R7 K2 ["createElement"]
      241 LOADK                            R7 K47 ["UIPadding"]
      242 DUPTABLE                         R8 K52 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      243 GETIMPORT                        R9 K54 [UDim.new]
      245 LOADN                            R10 0
      246 GETTABLEKS                       R11 R3 K46 ["Padding"]
      248 CALL                             R9 2 1
      249 SETTABLEKS                       R9 R8 K48 ["PaddingTop"]
      251 GETIMPORT                        R9 K54 [UDim.new]
      253 LOADN                            R10 0
      254 GETTABLEKS                       R11 R3 K46 ["Padding"]
      256 CALL                             R9 2 1
      257 SETTABLEKS                       R9 R8 K49 ["PaddingBottom"]
      259 GETIMPORT                        R9 K54 [UDim.new]
      261 LOADN                            R10 0
      262 GETTABLEKS                       R11 R3 K46 ["Padding"]
      264 CALL                             R9 2 1
      265 SETTABLEKS                       R9 R8 K50 ["PaddingLeft"]
      267 GETIMPORT                        R9 K54 [UDim.new]
      269 LOADN                            R10 0
      270 GETTABLEKS                       R11 R3 K46 ["Padding"]
      272 CALL                             R9 2 1
      273 SETTABLEKS                       R9 R8 K51 ["PaddingRight"]
      275 CALL                             R6 2 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R6
      278 GETUPVAL                         R9 4
      279 GETTABLEKS                       R8 R9 K33 ["FoundationRemoveCursorProviderTestOutput"]
      281 JUMPIFNOT                        R8 ; [+80]
      282 GETUPVAL                         R8 2
      283 GETTABLEKS                       R7 R8 K2 ["createElement"]
      285 LOADK                            R8 K34 ["ImageLabel"]
      286 DUPTABLE                         R9 K57 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "SliceCenter", "ScaleType", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      287 GETUPVAL                         R12 5
      288 GETTABLEKS                       R13 R3 K35 ["Image"]
      290 GETTABLE                         R11 R12 R13
      291 GETTABLEKS                       R10 R11 K35 ["Image"]
      293 SETTABLEKS                       R10 R9 K35 ["Image"]
      295 LOADN                            R10 1
      296 SETTABLEKS                       R10 R9 K9 ["BackgroundTransparency"]
      298 GETUPVAL                         R12 5
      299 GETTABLEKS                       R13 R3 K35 ["Image"]
      301 GETTABLE                         R11 R12 R13
      302 GETTABLEKS                       R10 R11 K36 ["ImageRectOffset"]
      304 SETTABLEKS                       R10 R9 K36 ["ImageRectOffset"]
      306 GETUPVAL                         R12 5
      307 GETTABLEKS                       R13 R3 K35 ["Image"]
      309 GETTABLE                         R11 R12 R13
      310 GETTABLEKS                       R10 R11 K37 ["ImageRectSize"]
      312 SETTABLEKS                       R10 R9 K37 ["ImageRectSize"]
      314 GETTABLEKS                       R10 R3 K55 ["SliceCenter"]
      316 SETTABLEKS                       R10 R9 K55 ["SliceCenter"]
      318 GETIMPORT                        R10 K60 [Enum.ScaleType.Slice]
      320 SETTABLEKS                       R10 R9 K56 ["ScaleType"]
      322 SETTABLEKS                       R5 R9 K6 ["Size"]
      324 GETIMPORT                        R10 K27 [UDim2.fromOffset]
      326 GETTABLEKS                       R12 R4 K30 ["X"]
      328 MINUS                            R11 R12
      329 GETTABLEKS                       R13 R4 K32 ["Y"]
      331 MINUS                            R12 R13
      332 CALL                             R10 2 1
      333 SETTABLEKS                       R10 R9 K5 ["Position"]
      335 GETTABLEKS                       R13 R2 K18 ["Color"]
      337 GETTABLEKS                       R12 R13 K19 ["Selection"]
      339 GETTABLEKS                       R11 R12 K20 ["Start"]
      341 GETTABLEKS                       R10 R11 K21 ["Color3"]
      343 SETTABLEKS                       R10 R9 K38 ["ImageColor3"]
      345 GETTABLEKS                       R13 R2 K18 ["Color"]
      347 GETTABLEKS                       R12 R13 K19 ["Selection"]
      349 GETTABLEKS                       R11 R12 K20 ["Start"]
      351 GETTABLEKS                       R10 R11 K41 ["Transparency"]
      353 SETTABLEKS                       R10 R9 K39 ["ImageTransparency"]
      355 SETTABLEKS                       R1 R9 K11 ["ref"]
      357 DUPTABLE                         R10 K61 [{"Padding"}]
      358 SETTABLEKS                       R6 R10 K46 ["Padding"]
      360 CALL                             R7 3 1
      361 RETURN                           R7 1
      362 GETUPVAL                         R8 2
      363 GETTABLEKS                       R7 R8 K2 ["createElement"]
      365 GETUPVAL                         R8 6
      366 DUPTABLE                         R9 K63 [{"Image", "imageStyle", "slice", "Size", "Position", "ref"}]
      367 GETTABLEKS                       R10 R3 K35 ["Image"]
      369 SETTABLEKS                       R10 R9 K35 ["Image"]
      371 GETTABLEKS                       R12 R2 K18 ["Color"]
      373 GETTABLEKS                       R11 R12 K19 ["Selection"]
      375 GETTABLEKS                       R10 R11 K20 ["Start"]
      377 SETTABLEKS                       R10 R9 K42 ["imageStyle"]
      379 DUPTABLE                         R10 K65 [{"center"}]
      380 GETTABLEKS                       R11 R3 K55 ["SliceCenter"]
      382 SETTABLEKS                       R11 R10 K64 ["center"]
      384 SETTABLEKS                       R10 R9 K62 ["slice"]
      386 SETTABLEKS                       R5 R9 K6 ["Size"]
      388 GETIMPORT                        R10 K27 [UDim2.fromOffset]
      390 GETTABLEKS                       R12 R4 K30 ["X"]
      392 MINUS                            R11 R12
      393 GETTABLEKS                       R13 R4 K32 ["Y"]
      395 MINUS                            R12 R13
      396 CALL                             R10 2 1
      397 SETTABLEKS                       R10 R9 K5 ["Position"]
      399 SETTABLEKS                       R1 R9 K11 ["ref"]
      401 DUPTABLE                         R10 K61 [{"Padding"}]
      402 SETTABLEKS                       R6 R10 K46 ["Padding"]
      404 CALL                             R7 3 1
      405 RETURN                           R7 1
      406 GETTABLEKS                       R4 R3 K24 ["Tag"]
      408 JUMPIFNOTEQKS                    R4 K66 ["RoundedImage"] ; [+29]
      410 GETUPVAL                         R5 2
      411 GETTABLEKS                       R4 R5 K2 ["createElement"]
      413 GETUPVAL                         R5 7
      414 DUPTABLE                         R6 K71 [{"isVisible", "cornerRadius", "offset", "borderWidth", "ref"}]
      415 GETTABLEKS                       R7 R0 K67 ["isVisible"]
      417 SETTABLEKS                       R7 R6 K67 ["isVisible"]
      419 GETTABLEKS                       R7 R3 K72 ["CornerRadius"]
      421 SETTABLEKS                       R7 R6 K68 ["cornerRadius"]
      423 GETTABLEKS                       R8 R3 K31 ["Offset"]
      425 GETTABLEKS                       R9 R3 K73 ["BorderWidth"]
      427 SUB                              R7 R8 R9
      428 SETTABLEKS                       R7 R6 K69 ["offset"]
      430 GETTABLEKS                       R7 R3 K73 ["BorderWidth"]
      432 SETTABLEKS                       R7 R6 K70 ["borderWidth"]
      434 SETTABLEKS                       R1 R6 K11 ["ref"]
      436 CALL                             R4 2 -1
      437 RETURN                           R4 -1
      438 LOADNIL                          R3
      439 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["FoundationImages"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Images"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["Image"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K6 [require]
       30 GETIMPORT                        R10 K1 [script]
       32 GETTABLEKS                       R9 R10 K4 ["Parent"]
       34 GETTABLEKS                       R8 R9 K4 ["Parent"]
       36 GETTABLEKS                       R7 R8 K12 ["CursorComponent"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Enums"]
       43 GETTABLEKS                       R8 R9 K14 ["CursorType"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R11 R0 K15 ["Providers"]
       50 GETTABLEKS                       R10 R11 K16 ["Style"]
       52 GETTABLEKS                       R9 R10 K17 ["useTokens"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K6 [require]
       57 GETTABLEKS                       R11 R0 K18 ["Utility"]
       59 GETTABLEKS                       R10 R11 K19 ["Flags"]
       61 CALL                             R9 1 1
       62 NEWTABLE                         R10 16 0
       64 GETTABLEKS                       R11 R7 K20 ["BulletUp"]
       66 DUPTABLE                         R12 K24 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
       67 LOADK                            R13 K25 ["SlicedImage"]
       68 SETTABLEKS                       R13 R12 K21 ["Tag"]
       70 LOADK                            R13 K26 ["component_assets/bulletUp_17_stroke_3"]
       71 SETTABLEKS                       R13 R12 K11 ["Image"]
       73 GETIMPORT                        R13 K29 [Rect.new]
       75 LOADN                            R14 8
       76 LOADN                            R15 8
       77 LOADN                            R16 9
       78 LOADN                            R17 9
       79 CALL                             R13 4 1
       80 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
       82 GETIMPORT                        R13 K31 [Vector2.new]
       84 LOADN                            R14 2
       85 LOADN                            R15 2
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
       89 SETTABLE                         R12 R10 R11
       90 GETTABLEKS                       R11 R7 K32 ["BulletDown"]
       92 DUPTABLE                         R12 K24 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
       93 LOADK                            R13 K25 ["SlicedImage"]
       94 SETTABLEKS                       R13 R12 K21 ["Tag"]
       96 LOADK                            R13 K33 ["component_assets/bulletDown_17_stroke_3"]
       97 SETTABLEKS                       R13 R12 K11 ["Image"]
       99 GETIMPORT                        R13 K29 [Rect.new]
      101 LOADN                            R14 8
      102 LOADN                            R15 8
      103 LOADN                            R16 9
      104 LOADN                            R17 9
      105 CALL                             R13 4 1
      106 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
      108 GETIMPORT                        R13 K31 [Vector2.new]
      110 LOADN                            R14 2
      111 LOADN                            R15 2
      112 CALL                             R13 2 1
      113 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
      115 SETTABLE                         R12 R10 R11
      116 GETTABLEKS                       R11 R7 K34 ["InputFields"]
      118 DUPTABLE                         R12 K24 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      119 LOADK                            R13 K25 ["SlicedImage"]
      120 SETTABLEKS                       R13 R12 K21 ["Tag"]
      122 LOADK                            R13 K35 ["component_assets/circle_22_stroke_3"]
      123 SETTABLEKS                       R13 R12 K11 ["Image"]
      125 GETIMPORT                        R13 K29 [Rect.new]
      127 LOADN                            R14 11
      128 LOADN                            R15 11
      129 LOADN                            R16 12
      130 LOADN                            R17 12
      131 CALL                             R13 4 1
      132 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
      134 GETIMPORT                        R13 K31 [Vector2.new]
      136 LOADN                            R14 7
      137 LOADN                            R15 0
      138 CALL                             R13 2 1
      139 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
      141 SETTABLE                         R12 R10 R11
      142 GETTABLEKS                       R11 R7 K36 ["SelectionCell"]
      144 DUPTABLE                         R12 K38 [{"Tag", "Image", "SliceCenter", "InsetAdjustment", "Padding"}]
      145 LOADK                            R13 K25 ["SlicedImage"]
      146 SETTABLEKS                       R13 R12 K21 ["Tag"]
      148 LOADK                            R13 K39 ["component_assets/square_7_stroke_3"]
      149 SETTABLEKS                       R13 R12 K11 ["Image"]
      151 GETIMPORT                        R13 K29 [Rect.new]
      153 LOADK                            R14 K40 [3.5]
      154 LOADK                            R15 K40 [3.5]
      155 LOADK                            R16 K40 [3.5]
      156 LOADK                            R17 K40 [3.5]
      157 CALL                             R13 4 1
      158 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
      160 GETIMPORT                        R13 K31 [Vector2.new]
      162 LOADN                            R14 2
      163 LOADN                            R15 2
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
      167 LOADN                            R13 50
      168 SETTABLEKS                       R13 R12 K37 ["Padding"]
      170 SETTABLE                         R12 R10 R11
      171 GETTABLEKS                       R11 R7 K41 ["SelectedKnob"]
      173 DUPTABLE                         R12 K43 [{"Tag", "Image", "Size"}]
      174 LOADK                            R13 K44 ["FixedSizeImage"]
      175 SETTABLEKS                       R13 R12 K21 ["Tag"]
      177 LOADK                            R13 K45 ["component_assets/circle_42_stroke_3"]
      178 SETTABLEKS                       R13 R12 K11 ["Image"]
      180 LOADN                            R13 42
      181 SETTABLEKS                       R13 R12 K42 ["Size"]
      183 SETTABLE                         R12 R10 R11
      184 GETTABLEKS                       R11 R7 K46 ["UnselectedKnob"]
      186 DUPTABLE                         R12 K43 [{"Tag", "Image", "Size"}]
      187 LOADK                            R13 K44 ["FixedSizeImage"]
      188 SETTABLEKS                       R13 R12 K21 ["Tag"]
      190 LOADK                            R13 K47 ["component_assets/circle_52_stroke_3"]
      191 SETTABLEKS                       R13 R12 K11 ["Image"]
      193 LOADN                            R13 52
      194 SETTABLEKS                       R13 R12 K42 ["Size"]
      196 SETTABLE                         R12 R10 R11
      197 GETTABLEKS                       R11 R7 K48 ["InputButton"]
      199 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      200 LOADK                            R13 K53 ["RoundedImage"]
      201 SETTABLEKS                       R13 R12 K21 ["Tag"]
      203 GETIMPORT                        R13 K55 [UDim.new]
      205 LOADN                            R14 0
      206 LOADN                            R15 11
      207 CALL                             R13 2 1
      208 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      210 LOADN                            R13 11
      211 SETTABLEKS                       R13 R12 K50 ["Offset"]
      213 LOADN                            R13 3
      214 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      216 SETTABLE                         R12 R10 R11
      217 GETTABLEKS                       R11 R7 K56 ["RoundedRect"]
      219 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      220 LOADK                            R13 K53 ["RoundedImage"]
      221 SETTABLEKS                       R13 R12 K21 ["Tag"]
      223 GETIMPORT                        R13 K55 [UDim.new]
      225 LOADN                            R14 0
      226 LOADN                            R15 8
      227 CALL                             R13 2 1
      228 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      230 LOADN                            R13 9
      231 SETTABLEKS                       R13 R12 K50 ["Offset"]
      233 LOADN                            R13 3
      234 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      236 SETTABLE                         R12 R10 R11
      237 GETTABLEKS                       R11 R7 K57 ["RoundedRectNoInset"]
      239 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      240 LOADK                            R13 K53 ["RoundedImage"]
      241 SETTABLEKS                       R13 R12 K21 ["Tag"]
      243 GETIMPORT                        R13 K55 [UDim.new]
      245 LOADN                            R14 0
      246 LOADN                            R15 8
      247 CALL                             R13 2 1
      248 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      250 LOADN                            R13 0
      251 SETTABLEKS                       R13 R12 K50 ["Offset"]
      253 LOADN                            R13 3
      254 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      256 SETTABLE                         R12 R10 R11
      257 GETTABLEKS                       R11 R7 K58 ["RoundedSlot"]
      259 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      260 LOADK                            R13 K53 ["RoundedImage"]
      261 SETTABLEKS                       R13 R12 K21 ["Tag"]
      263 GETIMPORT                        R13 K55 [UDim.new]
      265 LOADN                            R14 0
      266 LOADN                            R15 7
      267 CALL                             R13 2 1
      268 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      270 LOADN                            R13 0
      271 SETTABLEKS                       R13 R12 K50 ["Offset"]
      273 LOADN                            R13 3
      274 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      276 SETTABLE                         R12 R10 R11
      277 GETTABLEKS                       R11 R7 K59 ["SkinToneCircle"]
      279 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      280 LOADK                            R13 K53 ["RoundedImage"]
      281 SETTABLEKS                       R13 R12 K21 ["Tag"]
      283 GETIMPORT                        R13 K55 [UDim.new]
      285 LOADK                            R14 K60 [0.5]
      286 LOADN                            R15 0
      287 CALL                             R13 2 1
      288 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      290 LOADN                            R13 0
      291 SETTABLEKS                       R13 R12 K50 ["Offset"]
      293 LOADN                            R13 3
      294 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      296 SETTABLE                         R12 R10 R11
      297 GETTABLEKS                       R11 R7 K61 ["SmallPill"]
      299 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      300 LOADK                            R13 K53 ["RoundedImage"]
      301 SETTABLEKS                       R13 R12 K21 ["Tag"]
      303 GETIMPORT                        R13 K55 [UDim.new]
      305 LOADN                            R14 0
      306 LOADN                            R15 15
      307 CALL                             R13 2 1
      308 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      310 LOADN                            R13 0
      311 SETTABLEKS                       R13 R12 K50 ["Offset"]
      313 LOADN                            R13 3
      314 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      316 SETTABLE                         R12 R10 R11
      317 GETTABLEKS                       R11 R7 K62 ["LargePill"]
      319 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      320 LOADK                            R13 K53 ["RoundedImage"]
      321 SETTABLEKS                       R13 R12 K21 ["Tag"]
      323 GETIMPORT                        R13 K55 [UDim.new]
      325 LOADN                            R14 0
      326 LOADN                            R15 26
      327 CALL                             R13 2 1
      328 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      330 LOADN                            R13 0
      331 SETTABLEKS                       R13 R12 K50 ["Offset"]
      333 LOADN                            R13 3
      334 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      336 SETTABLE                         R12 R10 R11
      337 GETTABLEKS                       R11 R7 K63 ["Square"]
      339 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      340 LOADK                            R13 K53 ["RoundedImage"]
      341 SETTABLEKS                       R13 R12 K21 ["Tag"]
      343 GETIMPORT                        R13 K55 [UDim.new]
      345 LOADN                            R14 0
      346 LOADN                            R15 0
      347 CALL                             R13 2 1
      348 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      350 LOADN                            R13 2
      351 SETTABLEKS                       R13 R12 K50 ["Offset"]
      353 LOADN                            R13 3
      354 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      356 SETTABLE                         R12 R10 R11
      357 GETTABLEKS                       R11 R7 K64 ["Toggle"]
      359 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      360 LOADK                            R13 K53 ["RoundedImage"]
      361 SETTABLEKS                       R13 R12 K21 ["Tag"]
      363 GETIMPORT                        R13 K55 [UDim.new]
      365 LOADN                            R14 0
      366 LOADN                            R15 13
      367 CALL                             R13 2 1
      368 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      370 LOADN                            R13 0
      371 SETTABLEKS                       R13 R12 K50 ["Offset"]
      373 LOADN                            R13 3
      374 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      376 SETTABLE                         R12 R10 R11
      377 GETTABLEKS                       R11 R2 K65 ["forwardRef"]
      379 DUPCLOSURE                       R12 K66 [PROTO_0]
      380 CAPTURE                          VAL R8
      381 CAPTURE                          VAL R7
      382 CAPTURE                          VAL R2
      383 CAPTURE                          VAL R10
      384 CAPTURE                          VAL R9
      385 CAPTURE                          VAL R4
      386 CAPTURE                          VAL R5
      387 CAPTURE                          VAL R6
      388 CALL                             R11 1 1
      389 RETURN                           R11 1
