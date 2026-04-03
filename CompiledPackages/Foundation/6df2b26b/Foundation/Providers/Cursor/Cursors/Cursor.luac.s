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
      103 JUMPIFNOTEQKS                    R4 K25 ["FixedSizeImage"] ; [+85]
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
      129 GETUPVAL                         R7 2
      130 GETTABLEKS                       R6 R7 K2 ["createElement"]
      132 LOADK                            R7 K33 ["ImageLabel"]
      133 DUPTABLE                         R8 K39 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      134 GETUPVAL                         R11 4
      135 GETTABLEKS                       R12 R3 K34 ["Image"]
      137 GETTABLE                         R10 R11 R12
      138 GETTABLEKS                       R9 R10 K34 ["Image"]
      140 SETTABLEKS                       R9 R8 K34 ["Image"]
      142 LOADN                            R9 1
      143 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
      145 GETUPVAL                         R11 4
      146 GETTABLEKS                       R12 R3 K34 ["Image"]
      148 GETTABLE                         R10 R11 R12
      149 GETTABLEKS                       R9 R10 K35 ["ImageRectOffset"]
      151 SETTABLEKS                       R9 R8 K35 ["ImageRectOffset"]
      153 GETUPVAL                         R11 4
      154 GETTABLEKS                       R12 R3 K34 ["Image"]
      156 GETTABLE                         R10 R11 R12
      157 GETTABLEKS                       R9 R10 K36 ["ImageRectSize"]
      159 SETTABLEKS                       R9 R8 K36 ["ImageRectSize"]
      161 SETTABLEKS                       R4 R8 K6 ["Size"]
      163 SETTABLEKS                       R5 R8 K5 ["Position"]
      165 GETTABLEKS                       R12 R2 K18 ["Color"]
      167 GETTABLEKS                       R11 R12 K19 ["Selection"]
      169 GETTABLEKS                       R10 R11 K20 ["Start"]
      171 GETTABLEKS                       R9 R10 K21 ["Color3"]
      173 SETTABLEKS                       R9 R8 K37 ["ImageColor3"]
      175 GETTABLEKS                       R12 R2 K18 ["Color"]
      177 GETTABLEKS                       R11 R12 K19 ["Selection"]
      179 GETTABLEKS                       R10 R11 K20 ["Start"]
      181 GETTABLEKS                       R9 R10 K40 ["Transparency"]
      183 SETTABLEKS                       R9 R8 K38 ["ImageTransparency"]
      185 SETTABLEKS                       R1 R8 K11 ["ref"]
      187 CALL                             R6 2 -1
      188 RETURN                           R6 -1
      189 GETTABLEKS                       R4 R3 K24 ["Tag"]
      191 JUMPIFNOTEQKS                    R4 K41 ["SlicedImage"] ; [+164]
      193 GETTABLEKS                       R4 R3 K42 ["InsetAdjustment"]
      195 GETIMPORT                        R5 K17 [UDim2.new]
      197 LOADN                            R6 1
      198 GETTABLEKS                       R8 R4 K30 ["X"]
      200 MULK                             R7 R8 K29 [2]
      201 LOADN                            R8 1
      202 GETTABLEKS                       R10 R4 K32 ["Y"]
      204 MULK                             R9 R10 K29 [2]
      205 CALL                             R5 4 1
      206 GETUPVAL                         R8 5
      207 GETTABLEKS                       R7 R8 K43 ["FoundationCursorScaledSliceFix"]
      209 JUMPIFNOT                        R7 ; [+5]
      210 GETUPVAL                         R6 6
      211 GETTABLEKS                       R7 R3 K44 ["SliceCenter"]
      213 CALL                             R6 1 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R6
      216 GETTABLEKS                       R8 R3 K45 ["Padding"]
      218 JUMPIFNOT                        R8 ; [+39]
      219 GETUPVAL                         R8 2
      220 GETTABLEKS                       R7 R8 K2 ["createElement"]
      222 LOADK                            R8 K46 ["UIPadding"]
      223 DUPTABLE                         R9 K51 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      224 GETIMPORT                        R10 K53 [UDim.new]
      226 LOADN                            R11 0
      227 GETTABLEKS                       R12 R3 K45 ["Padding"]
      229 CALL                             R10 2 1
      230 SETTABLEKS                       R10 R9 K47 ["PaddingTop"]
      232 GETIMPORT                        R10 K53 [UDim.new]
      234 LOADN                            R11 0
      235 GETTABLEKS                       R12 R3 K45 ["Padding"]
      237 CALL                             R10 2 1
      238 SETTABLEKS                       R10 R9 K48 ["PaddingBottom"]
      240 GETIMPORT                        R10 K53 [UDim.new]
      242 LOADN                            R11 0
      243 GETTABLEKS                       R12 R3 K45 ["Padding"]
      245 CALL                             R10 2 1
      246 SETTABLEKS                       R10 R9 K49 ["PaddingLeft"]
      248 GETIMPORT                        R10 K53 [UDim.new]
      250 LOADN                            R11 0
      251 GETTABLEKS                       R12 R3 K45 ["Padding"]
      253 CALL                             R10 2 1
      254 SETTABLEKS                       R10 R9 K50 ["PaddingRight"]
      256 CALL                             R7 2 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R7
      259 GETUPVAL                         R9 2
      260 GETTABLEKS                       R8 R9 K2 ["createElement"]
      262 LOADK                            R9 K33 ["ImageLabel"]
      263 DUPTABLE                         R10 K56 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "SliceCenter", "SliceScale", "ScaleType", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      264 GETUPVAL                         R13 4
      265 GETTABLEKS                       R14 R3 K34 ["Image"]
      267 GETTABLE                         R12 R13 R14
      268 GETTABLEKS                       R11 R12 K34 ["Image"]
      270 SETTABLEKS                       R11 R10 K34 ["Image"]
      272 LOADN                            R11 1
      273 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
      275 GETUPVAL                         R13 4
      276 GETTABLEKS                       R14 R3 K34 ["Image"]
      278 GETTABLE                         R12 R13 R14
      279 GETTABLEKS                       R11 R12 K35 ["ImageRectOffset"]
      281 SETTABLEKS                       R11 R10 K35 ["ImageRectOffset"]
      283 GETUPVAL                         R13 4
      284 GETTABLEKS                       R14 R3 K34 ["Image"]
      286 GETTABLE                         R12 R13 R14
      287 GETTABLEKS                       R11 R12 K36 ["ImageRectSize"]
      289 SETTABLEKS                       R11 R10 K36 ["ImageRectSize"]
      291 GETUPVAL                         R13 5
      292 GETTABLEKS                       R12 R13 K43 ["FoundationCursorScaledSliceFix"]
      294 JUMPIFNOT                        R12 ; [+3]
      295 GETTABLEKS                       R11 R6 K57 ["center"]
      297 JUMP                             ; [+2]
      298 GETTABLEKS                       R11 R3 K44 ["SliceCenter"]
      300 SETTABLEKS                       R11 R10 K44 ["SliceCenter"]
      302 GETUPVAL                         R13 5
      303 GETTABLEKS                       R12 R13 K43 ["FoundationCursorScaledSliceFix"]
      305 JUMPIFNOT                        R12 ; [+3]
      306 GETTABLEKS                       R11 R6 K58 ["scale"]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R11
      310 SETTABLEKS                       R11 R10 K54 ["SliceScale"]
      312 GETIMPORT                        R11 K61 [Enum.ScaleType.Slice]
      314 SETTABLEKS                       R11 R10 K55 ["ScaleType"]
      316 SETTABLEKS                       R5 R10 K6 ["Size"]
      318 GETIMPORT                        R11 K27 [UDim2.fromOffset]
      320 GETTABLEKS                       R13 R4 K30 ["X"]
      322 MINUS                            R12 R13
      323 GETTABLEKS                       R14 R4 K32 ["Y"]
      325 MINUS                            R13 R14
      326 CALL                             R11 2 1
      327 SETTABLEKS                       R11 R10 K5 ["Position"]
      329 GETTABLEKS                       R14 R2 K18 ["Color"]
      331 GETTABLEKS                       R13 R14 K19 ["Selection"]
      333 GETTABLEKS                       R12 R13 K20 ["Start"]
      335 GETTABLEKS                       R11 R12 K21 ["Color3"]
      337 SETTABLEKS                       R11 R10 K37 ["ImageColor3"]
      339 GETTABLEKS                       R14 R2 K18 ["Color"]
      341 GETTABLEKS                       R13 R14 K19 ["Selection"]
      343 GETTABLEKS                       R12 R13 K20 ["Start"]
      345 GETTABLEKS                       R11 R12 K40 ["Transparency"]
      347 SETTABLEKS                       R11 R10 K38 ["ImageTransparency"]
      349 SETTABLEKS                       R1 R10 K11 ["ref"]
      351 DUPTABLE                         R11 K62 [{"Padding"}]
      352 SETTABLEKS                       R7 R11 K45 ["Padding"]
      354 CALL                             R8 3 -1
      355 RETURN                           R8 -1
      356 GETTABLEKS                       R4 R3 K24 ["Tag"]
      358 JUMPIFNOTEQKS                    R4 K63 ["RoundedImage"] ; [+29]
      360 GETUPVAL                         R5 2
      361 GETTABLEKS                       R4 R5 K2 ["createElement"]
      363 GETUPVAL                         R5 7
      364 DUPTABLE                         R6 K68 [{"isVisible", "cornerRadius", "offset", "borderWidth", "ref"}]
      365 GETTABLEKS                       R7 R0 K64 ["isVisible"]
      367 SETTABLEKS                       R7 R6 K64 ["isVisible"]
      369 GETTABLEKS                       R7 R3 K69 ["CornerRadius"]
      371 SETTABLEKS                       R7 R6 K65 ["cornerRadius"]
      373 GETTABLEKS                       R8 R3 K31 ["Offset"]
      375 GETTABLEKS                       R9 R3 K70 ["BorderWidth"]
      377 SUB                              R7 R8 R9
      378 SETTABLEKS                       R7 R6 K66 ["offset"]
      380 GETTABLEKS                       R7 R3 K70 ["BorderWidth"]
      382 SETTABLEKS                       R7 R6 K67 ["borderWidth"]
      384 SETTABLEKS                       R1 R6 K11 ["ref"]
      386 CALL                             R4 2 -1
      387 RETURN                           R4 -1
      388 LOADNIL                          R3
      389 RETURN                           R3 1

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
       23 GETIMPORT                        R9 K1 [script]
       25 GETTABLEKS                       R8 R9 K4 ["Parent"]
       27 GETTABLEKS                       R7 R8 K4 ["Parent"]
       29 GETTABLEKS                       R6 R7 K10 ["CursorComponent"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R8 R0 K11 ["Enums"]
       36 GETTABLEKS                       R7 R8 K12 ["CursorType"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R10 R0 K13 ["Providers"]
       43 GETTABLEKS                       R9 R10 K14 ["Style"]
       45 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R13 K1 [script]
       50 GETTABLEKS                       R12 R13 K4 ["Parent"]
       52 GETTABLEKS                       R11 R12 K4 ["Parent"]
       54 GETTABLEKS                       R10 R11 K4 ["Parent"]
       56 GETTABLEKS                       R9 R10 K4 ["Parent"]
       58 GETTABLEKS                       R8 R9 K16 ["Components"]
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R12 R8 K17 ["Image"]
       64 GETTABLEKS                       R11 R12 K18 ["ImageSet"]
       66 GETTABLEKS                       R10 R11 K19 ["getScaledSlice"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R12 R0 K20 ["Utility"]
       73 GETTABLEKS                       R11 R12 K21 ["Flags"]
       75 CALL                             R10 1 1
       76 NEWTABLE                         R11 16 0
       78 GETTABLEKS                       R12 R6 K22 ["BulletUp"]
       80 DUPTABLE                         R13 K26 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
       81 LOADK                            R14 K27 ["SlicedImage"]
       82 SETTABLEKS                       R14 R13 K23 ["Tag"]
       84 LOADK                            R14 K28 ["component_assets/bulletUp_17_stroke_3"]
       85 SETTABLEKS                       R14 R13 K17 ["Image"]
       87 GETIMPORT                        R14 K31 [Rect.new]
       89 LOADN                            R15 8
       90 LOADN                            R16 8
       91 LOADN                            R17 9
       92 LOADN                            R18 9
       93 CALL                             R14 4 1
       94 SETTABLEKS                       R14 R13 K24 ["SliceCenter"]
       96 GETIMPORT                        R14 K33 [Vector2.new]
       98 LOADN                            R15 2
       99 LOADN                            R16 2
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K25 ["InsetAdjustment"]
      103 SETTABLE                         R13 R11 R12
      104 GETTABLEKS                       R12 R6 K34 ["BulletDown"]
      106 DUPTABLE                         R13 K26 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      107 LOADK                            R14 K27 ["SlicedImage"]
      108 SETTABLEKS                       R14 R13 K23 ["Tag"]
      110 LOADK                            R14 K35 ["component_assets/bulletDown_17_stroke_3"]
      111 SETTABLEKS                       R14 R13 K17 ["Image"]
      113 GETIMPORT                        R14 K31 [Rect.new]
      115 LOADN                            R15 8
      116 LOADN                            R16 8
      117 LOADN                            R17 9
      118 LOADN                            R18 9
      119 CALL                             R14 4 1
      120 SETTABLEKS                       R14 R13 K24 ["SliceCenter"]
      122 GETIMPORT                        R14 K33 [Vector2.new]
      124 LOADN                            R15 2
      125 LOADN                            R16 2
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K25 ["InsetAdjustment"]
      129 SETTABLE                         R13 R11 R12
      130 GETTABLEKS                       R12 R6 K36 ["InputFields"]
      132 DUPTABLE                         R13 K26 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      133 LOADK                            R14 K27 ["SlicedImage"]
      134 SETTABLEKS                       R14 R13 K23 ["Tag"]
      136 LOADK                            R14 K37 ["component_assets/circle_22_stroke_3"]
      137 SETTABLEKS                       R14 R13 K17 ["Image"]
      139 GETIMPORT                        R14 K31 [Rect.new]
      141 LOADN                            R15 11
      142 LOADN                            R16 11
      143 LOADN                            R17 12
      144 LOADN                            R18 12
      145 CALL                             R14 4 1
      146 SETTABLEKS                       R14 R13 K24 ["SliceCenter"]
      148 GETIMPORT                        R14 K33 [Vector2.new]
      150 LOADN                            R15 7
      151 LOADN                            R16 0
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K25 ["InsetAdjustment"]
      155 SETTABLE                         R13 R11 R12
      156 GETTABLEKS                       R12 R6 K38 ["SelectionCell"]
      158 DUPTABLE                         R13 K40 [{"Tag", "Image", "SliceCenter", "InsetAdjustment", "Padding"}]
      159 LOADK                            R14 K27 ["SlicedImage"]
      160 SETTABLEKS                       R14 R13 K23 ["Tag"]
      162 LOADK                            R14 K41 ["component_assets/square_7_stroke_3"]
      163 SETTABLEKS                       R14 R13 K17 ["Image"]
      165 GETIMPORT                        R14 K31 [Rect.new]
      167 LOADK                            R15 K42 [3.5]
      168 LOADK                            R16 K42 [3.5]
      169 LOADK                            R17 K42 [3.5]
      170 LOADK                            R18 K42 [3.5]
      171 CALL                             R14 4 1
      172 SETTABLEKS                       R14 R13 K24 ["SliceCenter"]
      174 GETIMPORT                        R14 K33 [Vector2.new]
      176 LOADN                            R15 2
      177 LOADN                            R16 2
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K25 ["InsetAdjustment"]
      181 LOADN                            R14 50
      182 SETTABLEKS                       R14 R13 K39 ["Padding"]
      184 SETTABLE                         R13 R11 R12
      185 GETTABLEKS                       R12 R6 K43 ["SelectedKnob"]
      187 DUPTABLE                         R13 K45 [{"Tag", "Image", "Size"}]
      188 LOADK                            R14 K46 ["FixedSizeImage"]
      189 SETTABLEKS                       R14 R13 K23 ["Tag"]
      191 LOADK                            R14 K47 ["component_assets/circle_42_stroke_3"]
      192 SETTABLEKS                       R14 R13 K17 ["Image"]
      194 LOADN                            R14 42
      195 SETTABLEKS                       R14 R13 K44 ["Size"]
      197 SETTABLE                         R13 R11 R12
      198 GETTABLEKS                       R12 R6 K48 ["UnselectedKnob"]
      200 DUPTABLE                         R13 K45 [{"Tag", "Image", "Size"}]
      201 LOADK                            R14 K46 ["FixedSizeImage"]
      202 SETTABLEKS                       R14 R13 K23 ["Tag"]
      204 LOADK                            R14 K49 ["component_assets/circle_52_stroke_3"]
      205 SETTABLEKS                       R14 R13 K17 ["Image"]
      207 LOADN                            R14 52
      208 SETTABLEKS                       R14 R13 K44 ["Size"]
      210 SETTABLE                         R13 R11 R12
      211 GETTABLEKS                       R12 R6 K50 ["InputButton"]
      213 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      214 LOADK                            R14 K55 ["RoundedImage"]
      215 SETTABLEKS                       R14 R13 K23 ["Tag"]
      217 GETIMPORT                        R14 K57 [UDim.new]
      219 LOADN                            R15 0
      220 LOADN                            R16 11
      221 CALL                             R14 2 1
      222 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      224 LOADN                            R14 11
      225 SETTABLEKS                       R14 R13 K52 ["Offset"]
      227 LOADN                            R14 3
      228 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      230 SETTABLE                         R13 R11 R12
      231 GETTABLEKS                       R12 R6 K58 ["RoundedRect"]
      233 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      234 LOADK                            R14 K55 ["RoundedImage"]
      235 SETTABLEKS                       R14 R13 K23 ["Tag"]
      237 GETIMPORT                        R14 K57 [UDim.new]
      239 LOADN                            R15 0
      240 LOADN                            R16 8
      241 CALL                             R14 2 1
      242 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      244 LOADN                            R14 9
      245 SETTABLEKS                       R14 R13 K52 ["Offset"]
      247 LOADN                            R14 3
      248 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      250 SETTABLE                         R13 R11 R12
      251 GETTABLEKS                       R12 R6 K59 ["RoundedRectNoInset"]
      253 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      254 LOADK                            R14 K55 ["RoundedImage"]
      255 SETTABLEKS                       R14 R13 K23 ["Tag"]
      257 GETIMPORT                        R14 K57 [UDim.new]
      259 LOADN                            R15 0
      260 LOADN                            R16 8
      261 CALL                             R14 2 1
      262 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      264 LOADN                            R14 0
      265 SETTABLEKS                       R14 R13 K52 ["Offset"]
      267 LOADN                            R14 3
      268 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      270 SETTABLE                         R13 R11 R12
      271 GETTABLEKS                       R12 R6 K60 ["RoundedSlot"]
      273 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      274 LOADK                            R14 K55 ["RoundedImage"]
      275 SETTABLEKS                       R14 R13 K23 ["Tag"]
      277 GETIMPORT                        R14 K57 [UDim.new]
      279 LOADN                            R15 0
      280 LOADN                            R16 7
      281 CALL                             R14 2 1
      282 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      284 LOADN                            R14 0
      285 SETTABLEKS                       R14 R13 K52 ["Offset"]
      287 LOADN                            R14 3
      288 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      290 SETTABLE                         R13 R11 R12
      291 GETTABLEKS                       R12 R6 K61 ["SkinToneCircle"]
      293 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      294 LOADK                            R14 K55 ["RoundedImage"]
      295 SETTABLEKS                       R14 R13 K23 ["Tag"]
      297 GETIMPORT                        R14 K57 [UDim.new]
      299 LOADK                            R15 K62 [0.5]
      300 LOADN                            R16 0
      301 CALL                             R14 2 1
      302 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      304 LOADN                            R14 0
      305 SETTABLEKS                       R14 R13 K52 ["Offset"]
      307 LOADN                            R14 3
      308 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      310 SETTABLE                         R13 R11 R12
      311 GETTABLEKS                       R12 R6 K63 ["SmallPill"]
      313 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      314 LOADK                            R14 K55 ["RoundedImage"]
      315 SETTABLEKS                       R14 R13 K23 ["Tag"]
      317 GETIMPORT                        R14 K57 [UDim.new]
      319 LOADN                            R15 0
      320 LOADN                            R16 15
      321 CALL                             R14 2 1
      322 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      324 LOADN                            R14 0
      325 SETTABLEKS                       R14 R13 K52 ["Offset"]
      327 LOADN                            R14 3
      328 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      330 SETTABLE                         R13 R11 R12
      331 GETTABLEKS                       R12 R6 K64 ["LargePill"]
      333 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      334 LOADK                            R14 K55 ["RoundedImage"]
      335 SETTABLEKS                       R14 R13 K23 ["Tag"]
      337 GETIMPORT                        R14 K57 [UDim.new]
      339 LOADN                            R15 0
      340 LOADN                            R16 26
      341 CALL                             R14 2 1
      342 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      344 LOADN                            R14 0
      345 SETTABLEKS                       R14 R13 K52 ["Offset"]
      347 LOADN                            R14 3
      348 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      350 SETTABLE                         R13 R11 R12
      351 GETTABLEKS                       R12 R6 K65 ["Square"]
      353 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      354 LOADK                            R14 K55 ["RoundedImage"]
      355 SETTABLEKS                       R14 R13 K23 ["Tag"]
      357 GETIMPORT                        R14 K57 [UDim.new]
      359 LOADN                            R15 0
      360 LOADN                            R16 0
      361 CALL                             R14 2 1
      362 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      364 LOADN                            R14 2
      365 SETTABLEKS                       R14 R13 K52 ["Offset"]
      367 LOADN                            R14 3
      368 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      370 SETTABLE                         R13 R11 R12
      371 GETTABLEKS                       R12 R6 K66 ["Toggle"]
      373 DUPTABLE                         R13 K54 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      374 LOADK                            R14 K55 ["RoundedImage"]
      375 SETTABLEKS                       R14 R13 K23 ["Tag"]
      377 GETIMPORT                        R14 K57 [UDim.new]
      379 LOADN                            R15 0
      380 LOADN                            R16 13
      381 CALL                             R14 2 1
      382 SETTABLEKS                       R14 R13 K51 ["CornerRadius"]
      384 LOADN                            R14 0
      385 SETTABLEKS                       R14 R13 K52 ["Offset"]
      387 LOADN                            R14 3
      388 SETTABLEKS                       R14 R13 K53 ["BorderWidth"]
      390 SETTABLE                         R13 R11 R12
      391 GETTABLEKS                       R12 R2 K67 ["forwardRef"]
      393 DUPCLOSURE                       R13 K68 [PROTO_0]
      394 CAPTURE                          VAL R7
      395 CAPTURE                          VAL R6
      396 CAPTURE                          VAL R2
      397 CAPTURE                          VAL R11
      398 CAPTURE                          VAL R4
      399 CAPTURE                          VAL R10
      400 CAPTURE                          VAL R9
      401 CAPTURE                          VAL R5
      402 CALL                             R12 1 1
      403 RETURN                           R12 1
