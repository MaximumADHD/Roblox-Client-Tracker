PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["colorMode"]
        4 GETTABLEKS                       R4 R0 K1 ["cursorType"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["NavHighlight"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+59]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 LOADK                            R5 K4 ["Frame"]
       15 DUPTABLE                         R6 K13 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "ref"}]
       16 GETIMPORT                        R7 K16 [Vector2.new]
       18 LOADN                            R8 0
       19 LOADN                            R9 1
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K5 ["AnchorPoint"]
       23 GETIMPORT                        R7 K18 [UDim2.new]
       25 LOADN                            R8 0
       26 LOADN                            R9 0
       27 LOADN                            R10 1
       28 LOADN                            R11 253
       29 CALL                             R7 4 1
       30 SETTABLEKS                       R7 R6 K6 ["Position"]
       32 GETIMPORT                        R7 K18 [UDim2.new]
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 LOADN                            R10 0
       37 LOADN                            R11 3
       38 CALL                             R7 4 1
       39 SETTABLEKS                       R7 R6 K7 ["Size"]
       41 LOADN                            R7 1
       42 SETTABLEKS                       R7 R6 K8 ["BorderSizePixel"]
       44 GETTABLE                         R7 R2 R3
       45 GETTABLEKS                       R7 R7 K19 ["Selection"]
       47 GETTABLEKS                       R7 R7 K20 ["Start"]
       49 GETTABLEKS                       R7 R7 K21 ["Color3"]
       51 SETTABLEKS                       R7 R6 K9 ["BackgroundColor3"]
       53 LOADN                            R7 0
       54 SETTABLEKS                       R7 R6 K10 ["BackgroundTransparency"]
       56 GETTABLE                         R7 R2 R3
       57 GETTABLEKS                       R7 R7 K19 ["Selection"]
       59 GETTABLEKS                       R7 R7 K20 ["Start"]
       61 GETTABLEKS                       R7 R7 K21 ["Color3"]
       63 SETTABLEKS                       R7 R6 K11 ["BorderColor3"]
       65 SETTABLEKS                       R1 R6 K12 ["ref"]
       67 CALL                             R4 2 -1
       68 RETURN                           R4 -1
       69 GETTABLEKS                       R4 R0 K1 ["cursorType"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K22 ["Invisible"]
       74 JUMPIFNOTEQ                      R4 R5 ; [+20]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R4 R4 K3 ["createElement"]
       79 LOADK                            R5 K4 ["Frame"]
       80 DUPTABLE                         R6 K23 [{"BackgroundTransparency", "Size", "ref"}]
       81 LOADN                            R7 1
       82 SETTABLEKS                       R7 R6 K10 ["BackgroundTransparency"]
       84 GETIMPORT                        R7 K25 [UDim2.fromScale]
       86 LOADN                            R8 1
       87 LOADN                            R9 1
       88 CALL                             R7 2 1
       89 SETTABLEKS                       R7 R6 K7 ["Size"]
       91 SETTABLEKS                       R1 R6 K12 ["ref"]
       93 CALL                             R4 2 -1
       94 RETURN                           R4 -1
       95 GETUPVAL                         R5 3
       96 GETTABLEKS                       R6 R0 K1 ["cursorType"]
       98 GETTABLE                         R4 R5 R6
       99 GETTABLEKS                       R5 R4 K26 ["Tag"]
      101 JUMPIFNOTEQKS                    R5 K27 ["FixedSizeImage"] ; [+83]
      103 GETIMPORT                        R5 K29 [UDim2.fromOffset]
      105 GETTABLEKS                       R6 R4 K7 ["Size"]
      107 GETTABLEKS                       R7 R4 K7 ["Size"]
      109 CALL                             R5 2 1
      110 GETIMPORT                        R6 K18 [UDim2.new]
      112 LOADK                            R7 K30 [0.5]
      113 GETTABLEKS                       R10 R5 K32 ["X"]
      115 GETTABLEKS                       R10 R10 K33 ["Offset"]
      117 MINUS                            R9 R10
      118 DIVK                             R8 R9 K31 [2]
      119 LOADK                            R9 K30 [0.5]
      120 GETTABLEKS                       R12 R5 K34 ["Y"]
      122 GETTABLEKS                       R12 R12 K33 ["Offset"]
      124 MINUS                            R11 R12
      125 DIVK                             R10 R11 K31 [2]
      126 CALL                             R6 4 1
      127 GETUPVAL                         R7 2
      128 GETTABLEKS                       R7 R7 K3 ["createElement"]
      130 LOADK                            R8 K35 ["ImageLabel"]
      131 DUPTABLE                         R9 K41 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      132 GETUPVAL                         R11 4
      133 GETTABLEKS                       R12 R4 K36 ["Image"]
      135 GETTABLE                         R10 R11 R12
      136 GETTABLEKS                       R10 R10 K36 ["Image"]
      138 SETTABLEKS                       R10 R9 K36 ["Image"]
      140 LOADN                            R10 1
      141 SETTABLEKS                       R10 R9 K10 ["BackgroundTransparency"]
      143 GETUPVAL                         R11 4
      144 GETTABLEKS                       R12 R4 K36 ["Image"]
      146 GETTABLE                         R10 R11 R12
      147 GETTABLEKS                       R10 R10 K37 ["ImageRectOffset"]
      149 SETTABLEKS                       R10 R9 K37 ["ImageRectOffset"]
      151 GETUPVAL                         R11 4
      152 GETTABLEKS                       R12 R4 K36 ["Image"]
      154 GETTABLE                         R10 R11 R12
      155 GETTABLEKS                       R10 R10 K38 ["ImageRectSize"]
      157 SETTABLEKS                       R10 R9 K38 ["ImageRectSize"]
      159 SETTABLEKS                       R5 R9 K7 ["Size"]
      161 SETTABLEKS                       R6 R9 K6 ["Position"]
      163 GETTABLE                         R10 R2 R3
      164 GETTABLEKS                       R10 R10 K19 ["Selection"]
      166 GETTABLEKS                       R10 R10 K20 ["Start"]
      168 GETTABLEKS                       R10 R10 K21 ["Color3"]
      170 SETTABLEKS                       R10 R9 K39 ["ImageColor3"]
      172 GETTABLE                         R10 R2 R3
      173 GETTABLEKS                       R10 R10 K19 ["Selection"]
      175 GETTABLEKS                       R10 R10 K20 ["Start"]
      177 GETTABLEKS                       R10 R10 K42 ["Transparency"]
      179 SETTABLEKS                       R10 R9 K40 ["ImageTransparency"]
      181 SETTABLEKS                       R1 R9 K12 ["ref"]
      183 CALL                             R7 2 -1
      184 RETURN                           R7 -1
      185 GETTABLEKS                       R5 R4 K26 ["Tag"]
      187 JUMPIFNOTEQKS                    R5 K43 ["SlicedImage"] ; [+143]
      189 GETTABLEKS                       R5 R4 K44 ["InsetAdjustment"]
      191 GETIMPORT                        R6 K18 [UDim2.new]
      193 LOADN                            R7 1
      194 GETTABLEKS                       R9 R5 K32 ["X"]
      196 MULK                             R8 R9 K31 [2]
      197 LOADN                            R9 1
      198 GETTABLEKS                       R11 R5 K34 ["Y"]
      200 MULK                             R10 R11 K31 [2]
      201 CALL                             R6 4 1
      202 GETUPVAL                         R7 5
      203 GETTABLEKS                       R8 R4 K45 ["SliceCenter"]
      205 CALL                             R7 1 1
      206 GETTABLEKS                       R9 R4 K46 ["Padding"]
      208 JUMPIFNOT                        R9 ; [+39]
      209 GETUPVAL                         R8 2
      210 GETTABLEKS                       R8 R8 K3 ["createElement"]
      212 LOADK                            R9 K47 ["UIPadding"]
      213 DUPTABLE                         R10 K52 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      214 GETIMPORT                        R11 K54 [UDim.new]
      216 LOADN                            R12 0
      217 GETTABLEKS                       R13 R4 K46 ["Padding"]
      219 CALL                             R11 2 1
      220 SETTABLEKS                       R11 R10 K48 ["PaddingTop"]
      222 GETIMPORT                        R11 K54 [UDim.new]
      224 LOADN                            R12 0
      225 GETTABLEKS                       R13 R4 K46 ["Padding"]
      227 CALL                             R11 2 1
      228 SETTABLEKS                       R11 R10 K49 ["PaddingBottom"]
      230 GETIMPORT                        R11 K54 [UDim.new]
      232 LOADN                            R12 0
      233 GETTABLEKS                       R13 R4 K46 ["Padding"]
      235 CALL                             R11 2 1
      236 SETTABLEKS                       R11 R10 K50 ["PaddingLeft"]
      238 GETIMPORT                        R11 K54 [UDim.new]
      240 LOADN                            R12 0
      241 GETTABLEKS                       R13 R4 K46 ["Padding"]
      243 CALL                             R11 2 1
      244 SETTABLEKS                       R11 R10 K51 ["PaddingRight"]
      246 CALL                             R8 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R8
      249 GETUPVAL                         R9 2
      250 GETTABLEKS                       R9 R9 K3 ["createElement"]
      252 LOADK                            R10 K35 ["ImageLabel"]
      253 DUPTABLE                         R11 K57 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "SliceCenter", "SliceScale", "ScaleType", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      254 GETUPVAL                         R13 4
      255 GETTABLEKS                       R14 R4 K36 ["Image"]
      257 GETTABLE                         R12 R13 R14
      258 GETTABLEKS                       R12 R12 K36 ["Image"]
      260 SETTABLEKS                       R12 R11 K36 ["Image"]
      262 LOADN                            R12 1
      263 SETTABLEKS                       R12 R11 K10 ["BackgroundTransparency"]
      265 GETUPVAL                         R13 4
      266 GETTABLEKS                       R14 R4 K36 ["Image"]
      268 GETTABLE                         R12 R13 R14
      269 GETTABLEKS                       R12 R12 K37 ["ImageRectOffset"]
      271 SETTABLEKS                       R12 R11 K37 ["ImageRectOffset"]
      273 GETUPVAL                         R13 4
      274 GETTABLEKS                       R14 R4 K36 ["Image"]
      276 GETTABLE                         R12 R13 R14
      277 GETTABLEKS                       R12 R12 K38 ["ImageRectSize"]
      279 SETTABLEKS                       R12 R11 K38 ["ImageRectSize"]
      281 GETTABLEKS                       R12 R7 K58 ["center"]
      283 SETTABLEKS                       R12 R11 K45 ["SliceCenter"]
      285 GETTABLEKS                       R12 R7 K59 ["scale"]
      287 SETTABLEKS                       R12 R11 K55 ["SliceScale"]
      289 GETIMPORT                        R12 K62 [Enum.ScaleType.Slice]
      291 SETTABLEKS                       R12 R11 K56 ["ScaleType"]
      293 SETTABLEKS                       R6 R11 K7 ["Size"]
      295 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      297 GETTABLEKS                       R14 R5 K32 ["X"]
      299 MINUS                            R13 R14
      300 GETTABLEKS                       R15 R5 K34 ["Y"]
      302 MINUS                            R14 R15
      303 CALL                             R12 2 1
      304 SETTABLEKS                       R12 R11 K6 ["Position"]
      306 GETTABLE                         R12 R2 R3
      307 GETTABLEKS                       R12 R12 K19 ["Selection"]
      309 GETTABLEKS                       R12 R12 K20 ["Start"]
      311 GETTABLEKS                       R12 R12 K21 ["Color3"]
      313 SETTABLEKS                       R12 R11 K39 ["ImageColor3"]
      315 GETTABLE                         R12 R2 R3
      316 GETTABLEKS                       R12 R12 K19 ["Selection"]
      318 GETTABLEKS                       R12 R12 K20 ["Start"]
      320 GETTABLEKS                       R12 R12 K42 ["Transparency"]
      322 SETTABLEKS                       R12 R11 K40 ["ImageTransparency"]
      324 SETTABLEKS                       R1 R11 K12 ["ref"]
      326 DUPTABLE                         R12 K63 [{"Padding"}]
      327 SETTABLEKS                       R8 R12 K46 ["Padding"]
      329 CALL                             R9 3 -1
      330 RETURN                           R9 -1
      331 GETTABLEKS                       R5 R4 K26 ["Tag"]
      333 JUMPIFNOTEQKS                    R5 K64 ["RoundedImage"] ; [+33]
      335 GETUPVAL                         R5 2
      336 GETTABLEKS                       R5 R5 K3 ["createElement"]
      338 GETUPVAL                         R6 6
      339 DUPTABLE                         R7 K69 [{"isVisible", "cornerRadius", "offset", "borderWidth", "colorMode", "ref"}]
      340 GETTABLEKS                       R8 R0 K65 ["isVisible"]
      342 SETTABLEKS                       R8 R7 K65 ["isVisible"]
      344 GETTABLEKS                       R8 R4 K70 ["CornerRadius"]
      346 SETTABLEKS                       R8 R7 K66 ["cornerRadius"]
      348 GETTABLEKS                       R9 R4 K33 ["Offset"]
      350 GETTABLEKS                       R10 R4 K71 ["BorderWidth"]
      352 SUB                              R8 R9 R10
      353 SETTABLEKS                       R8 R7 K67 ["offset"]
      355 GETTABLEKS                       R8 R4 K71 ["BorderWidth"]
      357 SETTABLEKS                       R8 R7 K68 ["borderWidth"]
      359 GETTABLEKS                       R8 R0 K0 ["colorMode"]
      361 SETTABLEKS                       R8 R7 K0 ["colorMode"]
      363 SETTABLEKS                       R1 R7 K12 ["ref"]
      365 CALL                             R5 2 -1
      366 RETURN                           R5 -1
      367 LOADNIL                          R4
      368 RETURN                           R4 1

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
       41 GETTABLEKS                       R8 R0 K11 ["Enums"]
       43 GETTABLEKS                       R8 R8 K13 ["ColorMode"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Providers"]
       50 GETTABLEKS                       R9 R9 K15 ["Style"]
       52 GETTABLEKS                       R9 R9 K16 ["useTokens"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K4 ["Parent"]
       61 GETTABLEKS                       R9 R9 K4 ["Parent"]
       63 GETTABLEKS                       R9 R9 K4 ["Parent"]
       65 GETTABLEKS                       R9 R9 K17 ["Components"]
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R9 K18 ["Image"]
       71 GETTABLEKS                       R11 R11 K19 ["ImageSet"]
       73 GETTABLEKS                       R11 R11 K20 ["getScaledSlice"]
       75 CALL                             R10 1 1
       76 NEWTABLE                         R11 16 0
       78 GETTABLEKS                       R12 R6 K21 ["BulletUp"]
       80 DUPTABLE                         R13 K25 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
       81 LOADK                            R14 K26 ["SlicedImage"]
       82 SETTABLEKS                       R14 R13 K22 ["Tag"]
       84 LOADK                            R14 K27 ["component_assets/bulletUp_17_stroke_3"]
       85 SETTABLEKS                       R14 R13 K18 ["Image"]
       87 GETIMPORT                        R14 K30 [Rect.new]
       89 LOADN                            R15 8
       90 LOADN                            R16 8
       91 LOADN                            R17 9
       92 LOADN                            R18 9
       93 CALL                             R14 4 1
       94 SETTABLEKS                       R14 R13 K23 ["SliceCenter"]
       96 GETIMPORT                        R14 K32 [Vector2.new]
       98 LOADN                            R15 2
       99 LOADN                            R16 2
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K24 ["InsetAdjustment"]
      103 SETTABLE                         R13 R11 R12
      104 GETTABLEKS                       R12 R6 K33 ["BulletDown"]
      106 DUPTABLE                         R13 K25 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      107 LOADK                            R14 K26 ["SlicedImage"]
      108 SETTABLEKS                       R14 R13 K22 ["Tag"]
      110 LOADK                            R14 K34 ["component_assets/bulletDown_17_stroke_3"]
      111 SETTABLEKS                       R14 R13 K18 ["Image"]
      113 GETIMPORT                        R14 K30 [Rect.new]
      115 LOADN                            R15 8
      116 LOADN                            R16 8
      117 LOADN                            R17 9
      118 LOADN                            R18 9
      119 CALL                             R14 4 1
      120 SETTABLEKS                       R14 R13 K23 ["SliceCenter"]
      122 GETIMPORT                        R14 K32 [Vector2.new]
      124 LOADN                            R15 2
      125 LOADN                            R16 2
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K24 ["InsetAdjustment"]
      129 SETTABLE                         R13 R11 R12
      130 GETTABLEKS                       R12 R6 K35 ["InputFields"]
      132 DUPTABLE                         R13 K25 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      133 LOADK                            R14 K26 ["SlicedImage"]
      134 SETTABLEKS                       R14 R13 K22 ["Tag"]
      136 LOADK                            R14 K36 ["component_assets/circle_22_stroke_3"]
      137 SETTABLEKS                       R14 R13 K18 ["Image"]
      139 GETIMPORT                        R14 K30 [Rect.new]
      141 LOADN                            R15 11
      142 LOADN                            R16 11
      143 LOADN                            R17 12
      144 LOADN                            R18 12
      145 CALL                             R14 4 1
      146 SETTABLEKS                       R14 R13 K23 ["SliceCenter"]
      148 GETIMPORT                        R14 K32 [Vector2.new]
      150 LOADN                            R15 7
      151 LOADN                            R16 0
      152 CALL                             R14 2 1
      153 SETTABLEKS                       R14 R13 K24 ["InsetAdjustment"]
      155 SETTABLE                         R13 R11 R12
      156 GETTABLEKS                       R12 R6 K37 ["SelectionCell"]
      158 DUPTABLE                         R13 K39 [{"Tag", "Image", "SliceCenter", "InsetAdjustment", "Padding"}]
      159 LOADK                            R14 K26 ["SlicedImage"]
      160 SETTABLEKS                       R14 R13 K22 ["Tag"]
      162 LOADK                            R14 K40 ["component_assets/square_7_stroke_3"]
      163 SETTABLEKS                       R14 R13 K18 ["Image"]
      165 GETIMPORT                        R14 K30 [Rect.new]
      167 LOADK                            R15 K41 [3.5]
      168 LOADK                            R16 K41 [3.5]
      169 LOADK                            R17 K41 [3.5]
      170 LOADK                            R18 K41 [3.5]
      171 CALL                             R14 4 1
      172 SETTABLEKS                       R14 R13 K23 ["SliceCenter"]
      174 GETIMPORT                        R14 K32 [Vector2.new]
      176 LOADN                            R15 2
      177 LOADN                            R16 2
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K24 ["InsetAdjustment"]
      181 LOADN                            R14 50
      182 SETTABLEKS                       R14 R13 K38 ["Padding"]
      184 SETTABLE                         R13 R11 R12
      185 GETTABLEKS                       R12 R6 K42 ["SelectedKnob"]
      187 DUPTABLE                         R13 K44 [{"Tag", "Image", "Size"}]
      188 LOADK                            R14 K45 ["FixedSizeImage"]
      189 SETTABLEKS                       R14 R13 K22 ["Tag"]
      191 LOADK                            R14 K46 ["component_assets/circle_42_stroke_3"]
      192 SETTABLEKS                       R14 R13 K18 ["Image"]
      194 LOADN                            R14 42
      195 SETTABLEKS                       R14 R13 K43 ["Size"]
      197 SETTABLE                         R13 R11 R12
      198 GETTABLEKS                       R12 R6 K47 ["UnselectedKnob"]
      200 DUPTABLE                         R13 K44 [{"Tag", "Image", "Size"}]
      201 LOADK                            R14 K45 ["FixedSizeImage"]
      202 SETTABLEKS                       R14 R13 K22 ["Tag"]
      204 LOADK                            R14 K48 ["component_assets/circle_52_stroke_3"]
      205 SETTABLEKS                       R14 R13 K18 ["Image"]
      207 LOADN                            R14 52
      208 SETTABLEKS                       R14 R13 K43 ["Size"]
      210 SETTABLE                         R13 R11 R12
      211 GETTABLEKS                       R12 R6 K49 ["InputButton"]
      213 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      214 LOADK                            R14 K54 ["RoundedImage"]
      215 SETTABLEKS                       R14 R13 K22 ["Tag"]
      217 GETIMPORT                        R14 K56 [UDim.new]
      219 LOADN                            R15 0
      220 LOADN                            R16 11
      221 CALL                             R14 2 1
      222 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      224 LOADN                            R14 11
      225 SETTABLEKS                       R14 R13 K51 ["Offset"]
      227 LOADN                            R14 3
      228 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      230 SETTABLE                         R13 R11 R12
      231 GETTABLEKS                       R12 R6 K57 ["RoundedRect"]
      233 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      234 LOADK                            R14 K54 ["RoundedImage"]
      235 SETTABLEKS                       R14 R13 K22 ["Tag"]
      237 GETIMPORT                        R14 K56 [UDim.new]
      239 LOADN                            R15 0
      240 LOADN                            R16 8
      241 CALL                             R14 2 1
      242 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      244 LOADN                            R14 9
      245 SETTABLEKS                       R14 R13 K51 ["Offset"]
      247 LOADN                            R14 3
      248 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      250 SETTABLE                         R13 R11 R12
      251 GETTABLEKS                       R12 R6 K58 ["RoundedRectNoInset"]
      253 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      254 LOADK                            R14 K54 ["RoundedImage"]
      255 SETTABLEKS                       R14 R13 K22 ["Tag"]
      257 GETIMPORT                        R14 K56 [UDim.new]
      259 LOADN                            R15 0
      260 LOADN                            R16 8
      261 CALL                             R14 2 1
      262 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      264 LOADN                            R14 0
      265 SETTABLEKS                       R14 R13 K51 ["Offset"]
      267 LOADN                            R14 3
      268 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      270 SETTABLE                         R13 R11 R12
      271 GETTABLEKS                       R12 R6 K59 ["RoundedSlot"]
      273 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      274 LOADK                            R14 K54 ["RoundedImage"]
      275 SETTABLEKS                       R14 R13 K22 ["Tag"]
      277 GETIMPORT                        R14 K56 [UDim.new]
      279 LOADN                            R15 0
      280 LOADN                            R16 7
      281 CALL                             R14 2 1
      282 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      284 LOADN                            R14 0
      285 SETTABLEKS                       R14 R13 K51 ["Offset"]
      287 LOADN                            R14 3
      288 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      290 SETTABLE                         R13 R11 R12
      291 GETTABLEKS                       R12 R6 K60 ["SkinToneCircle"]
      293 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      294 LOADK                            R14 K54 ["RoundedImage"]
      295 SETTABLEKS                       R14 R13 K22 ["Tag"]
      297 GETIMPORT                        R14 K56 [UDim.new]
      299 LOADK                            R15 K61 [0.5]
      300 LOADN                            R16 0
      301 CALL                             R14 2 1
      302 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      304 LOADN                            R14 0
      305 SETTABLEKS                       R14 R13 K51 ["Offset"]
      307 LOADN                            R14 3
      308 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      310 SETTABLE                         R13 R11 R12
      311 GETTABLEKS                       R12 R6 K62 ["SmallPill"]
      313 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      314 LOADK                            R14 K54 ["RoundedImage"]
      315 SETTABLEKS                       R14 R13 K22 ["Tag"]
      317 GETIMPORT                        R14 K56 [UDim.new]
      319 LOADN                            R15 0
      320 LOADN                            R16 15
      321 CALL                             R14 2 1
      322 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      324 LOADN                            R14 0
      325 SETTABLEKS                       R14 R13 K51 ["Offset"]
      327 LOADN                            R14 3
      328 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      330 SETTABLE                         R13 R11 R12
      331 GETTABLEKS                       R12 R6 K63 ["LargePill"]
      333 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      334 LOADK                            R14 K54 ["RoundedImage"]
      335 SETTABLEKS                       R14 R13 K22 ["Tag"]
      337 GETIMPORT                        R14 K56 [UDim.new]
      339 LOADN                            R15 0
      340 LOADN                            R16 26
      341 CALL                             R14 2 1
      342 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      344 LOADN                            R14 0
      345 SETTABLEKS                       R14 R13 K51 ["Offset"]
      347 LOADN                            R14 3
      348 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      350 SETTABLE                         R13 R11 R12
      351 GETTABLEKS                       R12 R6 K64 ["Square"]
      353 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      354 LOADK                            R14 K54 ["RoundedImage"]
      355 SETTABLEKS                       R14 R13 K22 ["Tag"]
      357 GETIMPORT                        R14 K56 [UDim.new]
      359 LOADN                            R15 0
      360 LOADN                            R16 0
      361 CALL                             R14 2 1
      362 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      364 LOADN                            R14 2
      365 SETTABLEKS                       R14 R13 K51 ["Offset"]
      367 LOADN                            R14 3
      368 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      370 SETTABLE                         R13 R11 R12
      371 GETTABLEKS                       R12 R6 K65 ["Toggle"]
      373 DUPTABLE                         R13 K53 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      374 LOADK                            R14 K54 ["RoundedImage"]
      375 SETTABLEKS                       R14 R13 K22 ["Tag"]
      377 GETIMPORT                        R14 K56 [UDim.new]
      379 LOADN                            R15 0
      380 LOADN                            R16 13
      381 CALL                             R14 2 1
      382 SETTABLEKS                       R14 R13 K50 ["CornerRadius"]
      384 LOADN                            R14 0
      385 SETTABLEKS                       R14 R13 K51 ["Offset"]
      387 LOADN                            R14 3
      388 SETTABLEKS                       R14 R13 K52 ["BorderWidth"]
      390 SETTABLE                         R13 R11 R12
      391 GETTABLEKS                       R12 R3 K66 ["forwardRef"]
      393 DUPCLOSURE                       R13 K67 [PROTO_0]
      394 CAPTURE                          VAL R8
      395 CAPTURE                          VAL R6
      396 CAPTURE                          VAL R3
      397 CAPTURE                          VAL R11
      398 CAPTURE                          VAL R4
      399 CAPTURE                          VAL R10
      400 CAPTURE                          VAL R5
      401 CALL                             R12 1 1
      402 RETURN                           R12 1
