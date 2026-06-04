PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["cursorType"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["NavHighlight"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+61]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
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
       42 GETTABLEKS                       R6 R2 K18 ["Color"]
       44 GETTABLEKS                       R6 R6 K19 ["Selection"]
       46 GETTABLEKS                       R6 R6 K20 ["Start"]
       48 GETTABLEKS                       R6 R6 K21 ["Color3"]
       50 SETTABLEKS                       R6 R5 K8 ["BackgroundColor3"]
       52 LOADN                            R6 0
       53 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
       55 GETTABLEKS                       R6 R2 K18 ["Color"]
       57 GETTABLEKS                       R6 R6 K19 ["Selection"]
       59 GETTABLEKS                       R6 R6 K20 ["Start"]
       61 GETTABLEKS                       R6 R6 K21 ["Color3"]
       63 SETTABLEKS                       R6 R5 K10 ["BorderColor3"]
       65 SETTABLEKS                       R1 R5 K11 ["ref"]
       67 CALL                             R3 2 -1
       68 RETURN                           R3 -1
       69 GETTABLEKS                       R3 R0 K0 ["cursorType"]
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R4 R4 K22 ["Invisible"]
       74 JUMPIFNOTEQ                      R3 R4 ; [+20]
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K2 ["createElement"]
       79 LOADK                            R4 K3 ["Frame"]
       80 DUPTABLE                         R5 K23 [{"BackgroundTransparency", "Size", "ref"}]
       81 LOADN                            R6 1
       82 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
       84 GETIMPORT                        R6 K25 [UDim2.fromScale]
       86 LOADN                            R7 1
       87 LOADN                            R8 1
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R5 K6 ["Size"]
       91 SETTABLEKS                       R1 R5 K11 ["ref"]
       93 CALL                             R3 2 -1
       94 RETURN                           R3 -1
       95 GETUPVAL                         R4 3
       96 GETTABLEKS                       R5 R0 K0 ["cursorType"]
       98 GETTABLE                         R3 R4 R5
       99 GETTABLEKS                       R4 R3 K26 ["Tag"]
      101 JUMPIFNOTEQKS                    R4 K27 ["FixedSizeImage"] ; [+85]
      103 GETIMPORT                        R4 K29 [UDim2.fromOffset]
      105 GETTABLEKS                       R5 R3 K6 ["Size"]
      107 GETTABLEKS                       R6 R3 K6 ["Size"]
      109 CALL                             R4 2 1
      110 GETIMPORT                        R5 K17 [UDim2.new]
      112 LOADK                            R6 K30 [0.5]
      113 GETTABLEKS                       R9 R4 K32 ["X"]
      115 GETTABLEKS                       R9 R9 K33 ["Offset"]
      117 MINUS                            R8 R9
      118 DIVK                             R7 R8 K31 [2]
      119 LOADK                            R8 K30 [0.5]
      120 GETTABLEKS                       R11 R4 K34 ["Y"]
      122 GETTABLEKS                       R11 R11 K33 ["Offset"]
      124 MINUS                            R10 R11
      125 DIVK                             R9 R10 K31 [2]
      126 CALL                             R5 4 1
      127 GETUPVAL                         R6 2
      128 GETTABLEKS                       R6 R6 K2 ["createElement"]
      130 LOADK                            R7 K35 ["ImageLabel"]
      131 DUPTABLE                         R8 K41 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      132 GETUPVAL                         R10 4
      133 GETTABLEKS                       R11 R3 K36 ["Image"]
      135 GETTABLE                         R9 R10 R11
      136 GETTABLEKS                       R9 R9 K36 ["Image"]
      138 SETTABLEKS                       R9 R8 K36 ["Image"]
      140 LOADN                            R9 1
      141 SETTABLEKS                       R9 R8 K9 ["BackgroundTransparency"]
      143 GETUPVAL                         R10 4
      144 GETTABLEKS                       R11 R3 K36 ["Image"]
      146 GETTABLE                         R9 R10 R11
      147 GETTABLEKS                       R9 R9 K37 ["ImageRectOffset"]
      149 SETTABLEKS                       R9 R8 K37 ["ImageRectOffset"]
      151 GETUPVAL                         R10 4
      152 GETTABLEKS                       R11 R3 K36 ["Image"]
      154 GETTABLE                         R9 R10 R11
      155 GETTABLEKS                       R9 R9 K38 ["ImageRectSize"]
      157 SETTABLEKS                       R9 R8 K38 ["ImageRectSize"]
      159 SETTABLEKS                       R4 R8 K6 ["Size"]
      161 SETTABLEKS                       R5 R8 K5 ["Position"]
      163 GETTABLEKS                       R9 R2 K18 ["Color"]
      165 GETTABLEKS                       R9 R9 K19 ["Selection"]
      167 GETTABLEKS                       R9 R9 K20 ["Start"]
      169 GETTABLEKS                       R9 R9 K21 ["Color3"]
      171 SETTABLEKS                       R9 R8 K39 ["ImageColor3"]
      173 GETTABLEKS                       R9 R2 K18 ["Color"]
      175 GETTABLEKS                       R9 R9 K19 ["Selection"]
      177 GETTABLEKS                       R9 R9 K20 ["Start"]
      179 GETTABLEKS                       R9 R9 K42 ["Transparency"]
      181 SETTABLEKS                       R9 R8 K40 ["ImageTransparency"]
      183 SETTABLEKS                       R1 R8 K11 ["ref"]
      185 CALL                             R6 2 -1
      186 RETURN                           R6 -1
      187 GETTABLEKS                       R4 R3 K26 ["Tag"]
      189 JUMPIFNOTEQKS                    R4 K43 ["SlicedImage"] ; [+145]
      191 GETTABLEKS                       R4 R3 K44 ["InsetAdjustment"]
      193 GETIMPORT                        R5 K17 [UDim2.new]
      195 LOADN                            R6 1
      196 GETTABLEKS                       R8 R4 K32 ["X"]
      198 MULK                             R7 R8 K31 [2]
      199 LOADN                            R8 1
      200 GETTABLEKS                       R10 R4 K34 ["Y"]
      202 MULK                             R9 R10 K31 [2]
      203 CALL                             R5 4 1
      204 GETUPVAL                         R6 5
      205 GETTABLEKS                       R7 R3 K45 ["SliceCenter"]
      207 CALL                             R6 1 1
      208 GETTABLEKS                       R8 R3 K46 ["Padding"]
      210 JUMPIFNOT                        R8 ; [+39]
      211 GETUPVAL                         R7 2
      212 GETTABLEKS                       R7 R7 K2 ["createElement"]
      214 LOADK                            R8 K47 ["UIPadding"]
      215 DUPTABLE                         R9 K52 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      216 GETIMPORT                        R10 K54 [UDim.new]
      218 LOADN                            R11 0
      219 GETTABLEKS                       R12 R3 K46 ["Padding"]
      221 CALL                             R10 2 1
      222 SETTABLEKS                       R10 R9 K48 ["PaddingTop"]
      224 GETIMPORT                        R10 K54 [UDim.new]
      226 LOADN                            R11 0
      227 GETTABLEKS                       R12 R3 K46 ["Padding"]
      229 CALL                             R10 2 1
      230 SETTABLEKS                       R10 R9 K49 ["PaddingBottom"]
      232 GETIMPORT                        R10 K54 [UDim.new]
      234 LOADN                            R11 0
      235 GETTABLEKS                       R12 R3 K46 ["Padding"]
      237 CALL                             R10 2 1
      238 SETTABLEKS                       R10 R9 K50 ["PaddingLeft"]
      240 GETIMPORT                        R10 K54 [UDim.new]
      242 LOADN                            R11 0
      243 GETTABLEKS                       R12 R3 K46 ["Padding"]
      245 CALL                             R10 2 1
      246 SETTABLEKS                       R10 R9 K51 ["PaddingRight"]
      248 CALL                             R7 2 1
      249 JUMP                             ; [+1]
      250 LOADNIL                          R7
      251 GETUPVAL                         R8 2
      252 GETTABLEKS                       R8 R8 K2 ["createElement"]
      254 LOADK                            R9 K35 ["ImageLabel"]
      255 DUPTABLE                         R10 K57 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "SliceCenter", "SliceScale", "ScaleType", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      256 GETUPVAL                         R12 4
      257 GETTABLEKS                       R13 R3 K36 ["Image"]
      259 GETTABLE                         R11 R12 R13
      260 GETTABLEKS                       R11 R11 K36 ["Image"]
      262 SETTABLEKS                       R11 R10 K36 ["Image"]
      264 LOADN                            R11 1
      265 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
      267 GETUPVAL                         R12 4
      268 GETTABLEKS                       R13 R3 K36 ["Image"]
      270 GETTABLE                         R11 R12 R13
      271 GETTABLEKS                       R11 R11 K37 ["ImageRectOffset"]
      273 SETTABLEKS                       R11 R10 K37 ["ImageRectOffset"]
      275 GETUPVAL                         R12 4
      276 GETTABLEKS                       R13 R3 K36 ["Image"]
      278 GETTABLE                         R11 R12 R13
      279 GETTABLEKS                       R11 R11 K38 ["ImageRectSize"]
      281 SETTABLEKS                       R11 R10 K38 ["ImageRectSize"]
      283 GETTABLEKS                       R11 R6 K58 ["center"]
      285 SETTABLEKS                       R11 R10 K45 ["SliceCenter"]
      287 GETTABLEKS                       R11 R6 K59 ["scale"]
      289 SETTABLEKS                       R11 R10 K55 ["SliceScale"]
      291 GETIMPORT                        R11 K62 [Enum.ScaleType.Slice]
      293 SETTABLEKS                       R11 R10 K56 ["ScaleType"]
      295 SETTABLEKS                       R5 R10 K6 ["Size"]
      297 GETIMPORT                        R11 K29 [UDim2.fromOffset]
      299 GETTABLEKS                       R13 R4 K32 ["X"]
      301 MINUS                            R12 R13
      302 GETTABLEKS                       R14 R4 K34 ["Y"]
      304 MINUS                            R13 R14
      305 CALL                             R11 2 1
      306 SETTABLEKS                       R11 R10 K5 ["Position"]
      308 GETTABLEKS                       R11 R2 K18 ["Color"]
      310 GETTABLEKS                       R11 R11 K19 ["Selection"]
      312 GETTABLEKS                       R11 R11 K20 ["Start"]
      314 GETTABLEKS                       R11 R11 K21 ["Color3"]
      316 SETTABLEKS                       R11 R10 K39 ["ImageColor3"]
      318 GETTABLEKS                       R11 R2 K18 ["Color"]
      320 GETTABLEKS                       R11 R11 K19 ["Selection"]
      322 GETTABLEKS                       R11 R11 K20 ["Start"]
      324 GETTABLEKS                       R11 R11 K42 ["Transparency"]
      326 SETTABLEKS                       R11 R10 K40 ["ImageTransparency"]
      328 SETTABLEKS                       R1 R10 K11 ["ref"]
      330 DUPTABLE                         R11 K63 [{"Padding"}]
      331 SETTABLEKS                       R7 R11 K46 ["Padding"]
      333 CALL                             R8 3 -1
      334 RETURN                           R8 -1
      335 GETTABLEKS                       R4 R3 K26 ["Tag"]
      337 JUMPIFNOTEQKS                    R4 K64 ["RoundedImage"] ; [+29]
      339 GETUPVAL                         R4 2
      340 GETTABLEKS                       R4 R4 K2 ["createElement"]
      342 GETUPVAL                         R5 6
      343 DUPTABLE                         R6 K69 [{"isVisible", "cornerRadius", "offset", "borderWidth", "ref"}]
      344 GETTABLEKS                       R7 R0 K65 ["isVisible"]
      346 SETTABLEKS                       R7 R6 K65 ["isVisible"]
      348 GETTABLEKS                       R7 R3 K70 ["CornerRadius"]
      350 SETTABLEKS                       R7 R6 K66 ["cornerRadius"]
      352 GETTABLEKS                       R8 R3 K33 ["Offset"]
      354 GETTABLEKS                       R9 R3 K71 ["BorderWidth"]
      356 SUB                              R7 R8 R9
      357 SETTABLEKS                       R7 R6 K67 ["offset"]
      359 GETTABLEKS                       R7 R3 K71 ["BorderWidth"]
      361 SETTABLEKS                       R7 R6 K68 ["borderWidth"]
      363 SETTABLEKS                       R1 R6 K11 ["ref"]
      365 CALL                             R4 2 -1
      366 RETURN                           R4 -1
      367 LOADNIL                          R3
      368 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["FoundationImages"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["Images"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R6 R6 K4 ["Parent"]
       27 GETTABLEKS                       R6 R6 K4 ["Parent"]
       29 GETTABLEKS                       R6 R6 K10 ["CursorComponent"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Enums"]
       36 GETTABLEKS                       R7 R7 K12 ["CursorType"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Providers"]
       43 GETTABLEKS                       R8 R8 K14 ["Style"]
       45 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R8 R8 K4 ["Parent"]
       52 GETTABLEKS                       R8 R8 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K4 ["Parent"]
       56 GETTABLEKS                       R8 R8 K4 ["Parent"]
       58 GETTABLEKS                       R8 R8 K16 ["Components"]
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R8 K17 ["Image"]
       64 GETTABLEKS                       R10 R10 K18 ["ImageSet"]
       66 GETTABLEKS                       R10 R10 K19 ["getScaledSlice"]
       68 CALL                             R9 1 1
       69 NEWTABLE                         R10 16 0
       71 GETTABLEKS                       R11 R6 K20 ["BulletUp"]
       73 DUPTABLE                         R12 K24 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
       74 LOADK                            R13 K25 ["SlicedImage"]
       75 SETTABLEKS                       R13 R12 K21 ["Tag"]
       77 LOADK                            R13 K26 ["component_assets/bulletUp_17_stroke_3"]
       78 SETTABLEKS                       R13 R12 K17 ["Image"]
       80 GETIMPORT                        R13 K29 [Rect.new]
       82 LOADN                            R14 8
       83 LOADN                            R15 8
       84 LOADN                            R16 9
       85 LOADN                            R17 9
       86 CALL                             R13 4 1
       87 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
       89 GETIMPORT                        R13 K31 [Vector2.new]
       91 LOADN                            R14 2
       92 LOADN                            R15 2
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
       96 SETTABLE                         R12 R10 R11
       97 GETTABLEKS                       R11 R6 K32 ["BulletDown"]
       99 DUPTABLE                         R12 K24 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      100 LOADK                            R13 K25 ["SlicedImage"]
      101 SETTABLEKS                       R13 R12 K21 ["Tag"]
      103 LOADK                            R13 K33 ["component_assets/bulletDown_17_stroke_3"]
      104 SETTABLEKS                       R13 R12 K17 ["Image"]
      106 GETIMPORT                        R13 K29 [Rect.new]
      108 LOADN                            R14 8
      109 LOADN                            R15 8
      110 LOADN                            R16 9
      111 LOADN                            R17 9
      112 CALL                             R13 4 1
      113 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
      115 GETIMPORT                        R13 K31 [Vector2.new]
      117 LOADN                            R14 2
      118 LOADN                            R15 2
      119 CALL                             R13 2 1
      120 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
      122 SETTABLE                         R12 R10 R11
      123 GETTABLEKS                       R11 R6 K34 ["InputFields"]
      125 DUPTABLE                         R12 K24 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      126 LOADK                            R13 K25 ["SlicedImage"]
      127 SETTABLEKS                       R13 R12 K21 ["Tag"]
      129 LOADK                            R13 K35 ["component_assets/circle_22_stroke_3"]
      130 SETTABLEKS                       R13 R12 K17 ["Image"]
      132 GETIMPORT                        R13 K29 [Rect.new]
      134 LOADN                            R14 11
      135 LOADN                            R15 11
      136 LOADN                            R16 12
      137 LOADN                            R17 12
      138 CALL                             R13 4 1
      139 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
      141 GETIMPORT                        R13 K31 [Vector2.new]
      143 LOADN                            R14 7
      144 LOADN                            R15 0
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
      148 SETTABLE                         R12 R10 R11
      149 GETTABLEKS                       R11 R6 K36 ["SelectionCell"]
      151 DUPTABLE                         R12 K38 [{"Tag", "Image", "SliceCenter", "InsetAdjustment", "Padding"}]
      152 LOADK                            R13 K25 ["SlicedImage"]
      153 SETTABLEKS                       R13 R12 K21 ["Tag"]
      155 LOADK                            R13 K39 ["component_assets/square_7_stroke_3"]
      156 SETTABLEKS                       R13 R12 K17 ["Image"]
      158 GETIMPORT                        R13 K29 [Rect.new]
      160 LOADK                            R14 K40 [3.5]
      161 LOADK                            R15 K40 [3.5]
      162 LOADK                            R16 K40 [3.5]
      163 LOADK                            R17 K40 [3.5]
      164 CALL                             R13 4 1
      165 SETTABLEKS                       R13 R12 K22 ["SliceCenter"]
      167 GETIMPORT                        R13 K31 [Vector2.new]
      169 LOADN                            R14 2
      170 LOADN                            R15 2
      171 CALL                             R13 2 1
      172 SETTABLEKS                       R13 R12 K23 ["InsetAdjustment"]
      174 LOADN                            R13 50
      175 SETTABLEKS                       R13 R12 K37 ["Padding"]
      177 SETTABLE                         R12 R10 R11
      178 GETTABLEKS                       R11 R6 K41 ["SelectedKnob"]
      180 DUPTABLE                         R12 K43 [{"Tag", "Image", "Size"}]
      181 LOADK                            R13 K44 ["FixedSizeImage"]
      182 SETTABLEKS                       R13 R12 K21 ["Tag"]
      184 LOADK                            R13 K45 ["component_assets/circle_42_stroke_3"]
      185 SETTABLEKS                       R13 R12 K17 ["Image"]
      187 LOADN                            R13 42
      188 SETTABLEKS                       R13 R12 K42 ["Size"]
      190 SETTABLE                         R12 R10 R11
      191 GETTABLEKS                       R11 R6 K46 ["UnselectedKnob"]
      193 DUPTABLE                         R12 K43 [{"Tag", "Image", "Size"}]
      194 LOADK                            R13 K44 ["FixedSizeImage"]
      195 SETTABLEKS                       R13 R12 K21 ["Tag"]
      197 LOADK                            R13 K47 ["component_assets/circle_52_stroke_3"]
      198 SETTABLEKS                       R13 R12 K17 ["Image"]
      200 LOADN                            R13 52
      201 SETTABLEKS                       R13 R12 K42 ["Size"]
      203 SETTABLE                         R12 R10 R11
      204 GETTABLEKS                       R11 R6 K48 ["InputButton"]
      206 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      207 LOADK                            R13 K53 ["RoundedImage"]
      208 SETTABLEKS                       R13 R12 K21 ["Tag"]
      210 GETIMPORT                        R13 K55 [UDim.new]
      212 LOADN                            R14 0
      213 LOADN                            R15 11
      214 CALL                             R13 2 1
      215 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      217 LOADN                            R13 11
      218 SETTABLEKS                       R13 R12 K50 ["Offset"]
      220 LOADN                            R13 3
      221 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      223 SETTABLE                         R12 R10 R11
      224 GETTABLEKS                       R11 R6 K56 ["RoundedRect"]
      226 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      227 LOADK                            R13 K53 ["RoundedImage"]
      228 SETTABLEKS                       R13 R12 K21 ["Tag"]
      230 GETIMPORT                        R13 K55 [UDim.new]
      232 LOADN                            R14 0
      233 LOADN                            R15 8
      234 CALL                             R13 2 1
      235 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      237 LOADN                            R13 9
      238 SETTABLEKS                       R13 R12 K50 ["Offset"]
      240 LOADN                            R13 3
      241 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      243 SETTABLE                         R12 R10 R11
      244 GETTABLEKS                       R11 R6 K57 ["RoundedRectNoInset"]
      246 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      247 LOADK                            R13 K53 ["RoundedImage"]
      248 SETTABLEKS                       R13 R12 K21 ["Tag"]
      250 GETIMPORT                        R13 K55 [UDim.new]
      252 LOADN                            R14 0
      253 LOADN                            R15 8
      254 CALL                             R13 2 1
      255 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      257 LOADN                            R13 0
      258 SETTABLEKS                       R13 R12 K50 ["Offset"]
      260 LOADN                            R13 3
      261 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      263 SETTABLE                         R12 R10 R11
      264 GETTABLEKS                       R11 R6 K58 ["RoundedSlot"]
      266 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      267 LOADK                            R13 K53 ["RoundedImage"]
      268 SETTABLEKS                       R13 R12 K21 ["Tag"]
      270 GETIMPORT                        R13 K55 [UDim.new]
      272 LOADN                            R14 0
      273 LOADN                            R15 7
      274 CALL                             R13 2 1
      275 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      277 LOADN                            R13 0
      278 SETTABLEKS                       R13 R12 K50 ["Offset"]
      280 LOADN                            R13 3
      281 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      283 SETTABLE                         R12 R10 R11
      284 GETTABLEKS                       R11 R6 K59 ["SkinToneCircle"]
      286 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      287 LOADK                            R13 K53 ["RoundedImage"]
      288 SETTABLEKS                       R13 R12 K21 ["Tag"]
      290 GETIMPORT                        R13 K55 [UDim.new]
      292 LOADK                            R14 K60 [0.5]
      293 LOADN                            R15 0
      294 CALL                             R13 2 1
      295 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      297 LOADN                            R13 0
      298 SETTABLEKS                       R13 R12 K50 ["Offset"]
      300 LOADN                            R13 3
      301 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      303 SETTABLE                         R12 R10 R11
      304 GETTABLEKS                       R11 R6 K61 ["SmallPill"]
      306 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      307 LOADK                            R13 K53 ["RoundedImage"]
      308 SETTABLEKS                       R13 R12 K21 ["Tag"]
      310 GETIMPORT                        R13 K55 [UDim.new]
      312 LOADN                            R14 0
      313 LOADN                            R15 15
      314 CALL                             R13 2 1
      315 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      317 LOADN                            R13 0
      318 SETTABLEKS                       R13 R12 K50 ["Offset"]
      320 LOADN                            R13 3
      321 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      323 SETTABLE                         R12 R10 R11
      324 GETTABLEKS                       R11 R6 K62 ["LargePill"]
      326 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      327 LOADK                            R13 K53 ["RoundedImage"]
      328 SETTABLEKS                       R13 R12 K21 ["Tag"]
      330 GETIMPORT                        R13 K55 [UDim.new]
      332 LOADN                            R14 0
      333 LOADN                            R15 26
      334 CALL                             R13 2 1
      335 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      337 LOADN                            R13 0
      338 SETTABLEKS                       R13 R12 K50 ["Offset"]
      340 LOADN                            R13 3
      341 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      343 SETTABLE                         R12 R10 R11
      344 GETTABLEKS                       R11 R6 K63 ["Square"]
      346 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      347 LOADK                            R13 K53 ["RoundedImage"]
      348 SETTABLEKS                       R13 R12 K21 ["Tag"]
      350 GETIMPORT                        R13 K55 [UDim.new]
      352 LOADN                            R14 0
      353 LOADN                            R15 0
      354 CALL                             R13 2 1
      355 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      357 LOADN                            R13 2
      358 SETTABLEKS                       R13 R12 K50 ["Offset"]
      360 LOADN                            R13 3
      361 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      363 SETTABLE                         R12 R10 R11
      364 GETTABLEKS                       R11 R6 K64 ["Toggle"]
      366 DUPTABLE                         R12 K52 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      367 LOADK                            R13 K53 ["RoundedImage"]
      368 SETTABLEKS                       R13 R12 K21 ["Tag"]
      370 GETIMPORT                        R13 K55 [UDim.new]
      372 LOADN                            R14 0
      373 LOADN                            R15 13
      374 CALL                             R13 2 1
      375 SETTABLEKS                       R13 R12 K49 ["CornerRadius"]
      377 LOADN                            R13 0
      378 SETTABLEKS                       R13 R12 K50 ["Offset"]
      380 LOADN                            R13 3
      381 SETTABLEKS                       R13 R12 K51 ["BorderWidth"]
      383 SETTABLE                         R12 R10 R11
      384 GETTABLEKS                       R11 R3 K65 ["forwardRef"]
      386 DUPCLOSURE                       R12 K66 [PROTO_0]
      387 CAPTURE                          VAL R7
      388 CAPTURE                          VAL R6
      389 CAPTURE                          VAL R3
      390 CAPTURE                          VAL R10
      391 CAPTURE                          VAL R4
      392 CAPTURE                          VAL R9
      393 CAPTURE                          VAL R5
      394 CALL                             R11 1 1
      395 RETURN                           R11 1
