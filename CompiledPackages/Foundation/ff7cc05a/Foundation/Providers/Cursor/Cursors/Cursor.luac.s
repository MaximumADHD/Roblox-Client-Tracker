PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["FoundationSupportPresentationContextInSelectionCursor"]
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R0 K1 ["colorMode"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["Color"]
       12 GETTABLEKS                       R4 R0 K3 ["cursorType"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K4 ["NavHighlight"]
       17 JUMPIFNOTEQ                      R4 R5 ; [+59]
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R4 R5 K5 ["createElement"]
       22 LOADK                            R5 K6 ["Frame"]
       23 DUPTABLE                         R6 K15 [{"AnchorPoint", "Position", "Size", "BorderSizePixel", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "ref"}]
       24 GETIMPORT                        R7 K18 [Vector2.new]
       26 LOADN                            R8 0
       27 LOADN                            R9 1
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K7 ["AnchorPoint"]
       31 GETIMPORT                        R7 K20 [UDim2.new]
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 LOADN                            R10 1
       36 LOADN                            R11 253
       37 CALL                             R7 4 1
       38 SETTABLEKS                       R7 R6 K8 ["Position"]
       40 GETIMPORT                        R7 K20 [UDim2.new]
       42 LOADN                            R8 1
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 LOADN                            R11 3
       46 CALL                             R7 4 1
       47 SETTABLEKS                       R7 R6 K9 ["Size"]
       49 LOADN                            R7 1
       50 SETTABLEKS                       R7 R6 K10 ["BorderSizePixel"]
       52 GETTABLE                         R10 R2 R3
       53 GETTABLEKS                       R9 R10 K21 ["Selection"]
       55 GETTABLEKS                       R8 R9 K22 ["Start"]
       57 GETTABLEKS                       R7 R8 K23 ["Color3"]
       59 SETTABLEKS                       R7 R6 K11 ["BackgroundColor3"]
       61 LOADN                            R7 0
       62 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
       64 GETTABLE                         R10 R2 R3
       65 GETTABLEKS                       R9 R10 K21 ["Selection"]
       67 GETTABLEKS                       R8 R9 K22 ["Start"]
       69 GETTABLEKS                       R7 R8 K23 ["Color3"]
       71 SETTABLEKS                       R7 R6 K13 ["BorderColor3"]
       73 SETTABLEKS                       R1 R6 K14 ["ref"]
       75 CALL                             R4 2 -1
       76 RETURN                           R4 -1
       77 GETTABLEKS                       R4 R0 K3 ["cursorType"]
       79 GETUPVAL                         R6 3
       80 GETTABLEKS                       R5 R6 K24 ["Invisible"]
       82 JUMPIFNOTEQ                      R4 R5 ; [+20]
       84 GETUPVAL                         R5 4
       85 GETTABLEKS                       R4 R5 K5 ["createElement"]
       87 LOADK                            R5 K6 ["Frame"]
       88 DUPTABLE                         R6 K25 [{"BackgroundTransparency", "Size", "ref"}]
       89 LOADN                            R7 1
       90 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
       92 GETIMPORT                        R7 K27 [UDim2.fromScale]
       94 LOADN                            R8 1
       95 LOADN                            R9 1
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R6 K9 ["Size"]
       99 SETTABLEKS                       R1 R6 K14 ["ref"]
      101 CALL                             R4 2 -1
      102 RETURN                           R4 -1
      103 GETUPVAL                         R5 5
      104 GETTABLEKS                       R6 R0 K3 ["cursorType"]
      106 GETTABLE                         R4 R5 R6
      107 GETTABLEKS                       R5 R4 K28 ["Tag"]
      109 JUMPIFNOTEQKS                    R5 K29 ["FixedSizeImage"] ; [+83]
      111 GETIMPORT                        R5 K31 [UDim2.fromOffset]
      113 GETTABLEKS                       R6 R4 K9 ["Size"]
      115 GETTABLEKS                       R7 R4 K9 ["Size"]
      117 CALL                             R5 2 1
      118 GETIMPORT                        R6 K20 [UDim2.new]
      120 LOADK                            R7 K32 [0.5]
      121 GETTABLEKS                       R11 R5 K34 ["X"]
      123 GETTABLEKS                       R10 R11 K35 ["Offset"]
      125 MINUS                            R9 R10
      126 DIVK                             R8 R9 K33 [2]
      127 LOADK                            R9 K32 [0.5]
      128 GETTABLEKS                       R13 R5 K36 ["Y"]
      130 GETTABLEKS                       R12 R13 K35 ["Offset"]
      132 MINUS                            R11 R12
      133 DIVK                             R10 R11 K33 [2]
      134 CALL                             R6 4 1
      135 GETUPVAL                         R8 4
      136 GETTABLEKS                       R7 R8 K5 ["createElement"]
      138 LOADK                            R8 K37 ["ImageLabel"]
      139 DUPTABLE                         R9 K43 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      140 GETUPVAL                         R12 6
      141 GETTABLEKS                       R13 R4 K38 ["Image"]
      143 GETTABLE                         R11 R12 R13
      144 GETTABLEKS                       R10 R11 K38 ["Image"]
      146 SETTABLEKS                       R10 R9 K38 ["Image"]
      148 LOADN                            R10 1
      149 SETTABLEKS                       R10 R9 K12 ["BackgroundTransparency"]
      151 GETUPVAL                         R12 6
      152 GETTABLEKS                       R13 R4 K38 ["Image"]
      154 GETTABLE                         R11 R12 R13
      155 GETTABLEKS                       R10 R11 K39 ["ImageRectOffset"]
      157 SETTABLEKS                       R10 R9 K39 ["ImageRectOffset"]
      159 GETUPVAL                         R12 6
      160 GETTABLEKS                       R13 R4 K38 ["Image"]
      162 GETTABLE                         R11 R12 R13
      163 GETTABLEKS                       R10 R11 K40 ["ImageRectSize"]
      165 SETTABLEKS                       R10 R9 K40 ["ImageRectSize"]
      167 SETTABLEKS                       R5 R9 K9 ["Size"]
      169 SETTABLEKS                       R6 R9 K8 ["Position"]
      171 GETTABLE                         R13 R2 R3
      172 GETTABLEKS                       R12 R13 K21 ["Selection"]
      174 GETTABLEKS                       R11 R12 K22 ["Start"]
      176 GETTABLEKS                       R10 R11 K23 ["Color3"]
      178 SETTABLEKS                       R10 R9 K41 ["ImageColor3"]
      180 GETTABLE                         R13 R2 R3
      181 GETTABLEKS                       R12 R13 K21 ["Selection"]
      183 GETTABLEKS                       R11 R12 K22 ["Start"]
      185 GETTABLEKS                       R10 R11 K44 ["Transparency"]
      187 SETTABLEKS                       R10 R9 K42 ["ImageTransparency"]
      189 SETTABLEKS                       R1 R9 K14 ["ref"]
      191 CALL                             R7 2 -1
      192 RETURN                           R7 -1
      193 GETTABLEKS                       R5 R4 K28 ["Tag"]
      195 JUMPIFNOTEQKS                    R5 K45 ["SlicedImage"] ; [+143]
      197 GETTABLEKS                       R5 R4 K46 ["InsetAdjustment"]
      199 GETIMPORT                        R6 K20 [UDim2.new]
      201 LOADN                            R7 1
      202 GETTABLEKS                       R9 R5 K34 ["X"]
      204 MULK                             R8 R9 K33 [2]
      205 LOADN                            R9 1
      206 GETTABLEKS                       R11 R5 K36 ["Y"]
      208 MULK                             R10 R11 K33 [2]
      209 CALL                             R6 4 1
      210 GETUPVAL                         R7 7
      211 GETTABLEKS                       R8 R4 K47 ["SliceCenter"]
      213 CALL                             R7 1 1
      214 GETTABLEKS                       R9 R4 K48 ["Padding"]
      216 JUMPIFNOT                        R9 ; [+39]
      217 GETUPVAL                         R9 4
      218 GETTABLEKS                       R8 R9 K5 ["createElement"]
      220 LOADK                            R9 K49 ["UIPadding"]
      221 DUPTABLE                         R10 K54 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      222 GETIMPORT                        R11 K56 [UDim.new]
      224 LOADN                            R12 0
      225 GETTABLEKS                       R13 R4 K48 ["Padding"]
      227 CALL                             R11 2 1
      228 SETTABLEKS                       R11 R10 K50 ["PaddingTop"]
      230 GETIMPORT                        R11 K56 [UDim.new]
      232 LOADN                            R12 0
      233 GETTABLEKS                       R13 R4 K48 ["Padding"]
      235 CALL                             R11 2 1
      236 SETTABLEKS                       R11 R10 K51 ["PaddingBottom"]
      238 GETIMPORT                        R11 K56 [UDim.new]
      240 LOADN                            R12 0
      241 GETTABLEKS                       R13 R4 K48 ["Padding"]
      243 CALL                             R11 2 1
      244 SETTABLEKS                       R11 R10 K52 ["PaddingLeft"]
      246 GETIMPORT                        R11 K56 [UDim.new]
      248 LOADN                            R12 0
      249 GETTABLEKS                       R13 R4 K48 ["Padding"]
      251 CALL                             R11 2 1
      252 SETTABLEKS                       R11 R10 K53 ["PaddingRight"]
      254 CALL                             R8 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R8
      257 GETUPVAL                         R10 4
      258 GETTABLEKS                       R9 R10 K5 ["createElement"]
      260 LOADK                            R10 K37 ["ImageLabel"]
      261 DUPTABLE                         R11 K59 [{"Image", "BackgroundTransparency", "ImageRectOffset", "ImageRectSize", "SliceCenter", "SliceScale", "ScaleType", "Size", "Position", "ImageColor3", "ImageTransparency", "ref"}]
      262 GETUPVAL                         R14 6
      263 GETTABLEKS                       R15 R4 K38 ["Image"]
      265 GETTABLE                         R13 R14 R15
      266 GETTABLEKS                       R12 R13 K38 ["Image"]
      268 SETTABLEKS                       R12 R11 K38 ["Image"]
      270 LOADN                            R12 1
      271 SETTABLEKS                       R12 R11 K12 ["BackgroundTransparency"]
      273 GETUPVAL                         R14 6
      274 GETTABLEKS                       R15 R4 K38 ["Image"]
      276 GETTABLE                         R13 R14 R15
      277 GETTABLEKS                       R12 R13 K39 ["ImageRectOffset"]
      279 SETTABLEKS                       R12 R11 K39 ["ImageRectOffset"]
      281 GETUPVAL                         R14 6
      282 GETTABLEKS                       R15 R4 K38 ["Image"]
      284 GETTABLE                         R13 R14 R15
      285 GETTABLEKS                       R12 R13 K40 ["ImageRectSize"]
      287 SETTABLEKS                       R12 R11 K40 ["ImageRectSize"]
      289 GETTABLEKS                       R12 R7 K60 ["center"]
      291 SETTABLEKS                       R12 R11 K47 ["SliceCenter"]
      293 GETTABLEKS                       R12 R7 K61 ["scale"]
      295 SETTABLEKS                       R12 R11 K57 ["SliceScale"]
      297 GETIMPORT                        R12 K64 [Enum.ScaleType.Slice]
      299 SETTABLEKS                       R12 R11 K58 ["ScaleType"]
      301 SETTABLEKS                       R6 R11 K9 ["Size"]
      303 GETIMPORT                        R12 K31 [UDim2.fromOffset]
      305 GETTABLEKS                       R14 R5 K34 ["X"]
      307 MINUS                            R13 R14
      308 GETTABLEKS                       R15 R5 K36 ["Y"]
      310 MINUS                            R14 R15
      311 CALL                             R12 2 1
      312 SETTABLEKS                       R12 R11 K8 ["Position"]
      314 GETTABLE                         R15 R2 R3
      315 GETTABLEKS                       R14 R15 K21 ["Selection"]
      317 GETTABLEKS                       R13 R14 K22 ["Start"]
      319 GETTABLEKS                       R12 R13 K23 ["Color3"]
      321 SETTABLEKS                       R12 R11 K41 ["ImageColor3"]
      323 GETTABLE                         R15 R2 R3
      324 GETTABLEKS                       R14 R15 K21 ["Selection"]
      326 GETTABLEKS                       R13 R14 K22 ["Start"]
      328 GETTABLEKS                       R12 R13 K44 ["Transparency"]
      330 SETTABLEKS                       R12 R11 K42 ["ImageTransparency"]
      332 SETTABLEKS                       R1 R11 K14 ["ref"]
      334 DUPTABLE                         R12 K65 [{"Padding"}]
      335 SETTABLEKS                       R8 R12 K48 ["Padding"]
      337 CALL                             R9 3 -1
      338 RETURN                           R9 -1
      339 GETTABLEKS                       R5 R4 K28 ["Tag"]
      341 JUMPIFNOTEQKS                    R5 K66 ["RoundedImage"] ; [+33]
      343 GETUPVAL                         R6 4
      344 GETTABLEKS                       R5 R6 K5 ["createElement"]
      346 GETUPVAL                         R6 8
      347 DUPTABLE                         R7 K71 [{"isVisible", "cornerRadius", "offset", "borderWidth", "colorMode", "ref"}]
      348 GETTABLEKS                       R8 R0 K67 ["isVisible"]
      350 SETTABLEKS                       R8 R7 K67 ["isVisible"]
      352 GETTABLEKS                       R8 R4 K72 ["CornerRadius"]
      354 SETTABLEKS                       R8 R7 K68 ["cornerRadius"]
      356 GETTABLEKS                       R9 R4 K35 ["Offset"]
      358 GETTABLEKS                       R10 R4 K73 ["BorderWidth"]
      360 SUB                              R8 R9 R10
      361 SETTABLEKS                       R8 R7 K69 ["offset"]
      363 GETTABLEKS                       R8 R4 K73 ["BorderWidth"]
      365 SETTABLEKS                       R8 R7 K70 ["borderWidth"]
      367 GETTABLEKS                       R8 R0 K1 ["colorMode"]
      369 SETTABLEKS                       R8 R7 K1 ["colorMode"]
      371 SETTABLEKS                       R1 R7 K14 ["ref"]
      373 CALL                             R5 2 -1
      374 RETURN                           R5 -1
      375 LOADNIL                          R4
      376 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["FoundationImages"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R3 K11 ["Images"]
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
       48 GETTABLEKS                       R10 R0 K13 ["Enums"]
       50 GETTABLEKS                       R9 R10 K15 ["ColorMode"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R12 R0 K16 ["Providers"]
       57 GETTABLEKS                       R11 R12 K17 ["Style"]
       59 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R15 K1 [script]
       64 GETTABLEKS                       R14 R15 K4 ["Parent"]
       66 GETTABLEKS                       R13 R14 K4 ["Parent"]
       68 GETTABLEKS                       R12 R13 K4 ["Parent"]
       70 GETTABLEKS                       R11 R12 K4 ["Parent"]
       72 GETTABLEKS                       R10 R11 K19 ["Components"]
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R14 R10 K20 ["Image"]
       78 GETTABLEKS                       R13 R14 K21 ["ImageSet"]
       80 GETTABLEKS                       R12 R13 K22 ["getScaledSlice"]
       82 CALL                             R11 1 1
       83 NEWTABLE                         R12 16 0
       85 GETTABLEKS                       R13 R7 K23 ["BulletUp"]
       87 DUPTABLE                         R14 K27 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
       88 LOADK                            R15 K28 ["SlicedImage"]
       89 SETTABLEKS                       R15 R14 K24 ["Tag"]
       91 LOADK                            R15 K29 ["component_assets/bulletUp_17_stroke_3"]
       92 SETTABLEKS                       R15 R14 K20 ["Image"]
       94 GETIMPORT                        R15 K32 [Rect.new]
       96 LOADN                            R16 8
       97 LOADN                            R17 8
       98 LOADN                            R18 9
       99 LOADN                            R19 9
      100 CALL                             R15 4 1
      101 SETTABLEKS                       R15 R14 K25 ["SliceCenter"]
      103 GETIMPORT                        R15 K34 [Vector2.new]
      105 LOADN                            R16 2
      106 LOADN                            R17 2
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K26 ["InsetAdjustment"]
      110 SETTABLE                         R14 R12 R13
      111 GETTABLEKS                       R13 R7 K35 ["BulletDown"]
      113 DUPTABLE                         R14 K27 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      114 LOADK                            R15 K28 ["SlicedImage"]
      115 SETTABLEKS                       R15 R14 K24 ["Tag"]
      117 LOADK                            R15 K36 ["component_assets/bulletDown_17_stroke_3"]
      118 SETTABLEKS                       R15 R14 K20 ["Image"]
      120 GETIMPORT                        R15 K32 [Rect.new]
      122 LOADN                            R16 8
      123 LOADN                            R17 8
      124 LOADN                            R18 9
      125 LOADN                            R19 9
      126 CALL                             R15 4 1
      127 SETTABLEKS                       R15 R14 K25 ["SliceCenter"]
      129 GETIMPORT                        R15 K34 [Vector2.new]
      131 LOADN                            R16 2
      132 LOADN                            R17 2
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K26 ["InsetAdjustment"]
      136 SETTABLE                         R14 R12 R13
      137 GETTABLEKS                       R13 R7 K37 ["InputFields"]
      139 DUPTABLE                         R14 K27 [{"Tag", "Image", "SliceCenter", "InsetAdjustment"}]
      140 LOADK                            R15 K28 ["SlicedImage"]
      141 SETTABLEKS                       R15 R14 K24 ["Tag"]
      143 LOADK                            R15 K38 ["component_assets/circle_22_stroke_3"]
      144 SETTABLEKS                       R15 R14 K20 ["Image"]
      146 GETIMPORT                        R15 K32 [Rect.new]
      148 LOADN                            R16 11
      149 LOADN                            R17 11
      150 LOADN                            R18 12
      151 LOADN                            R19 12
      152 CALL                             R15 4 1
      153 SETTABLEKS                       R15 R14 K25 ["SliceCenter"]
      155 GETIMPORT                        R15 K34 [Vector2.new]
      157 LOADN                            R16 7
      158 LOADN                            R17 0
      159 CALL                             R15 2 1
      160 SETTABLEKS                       R15 R14 K26 ["InsetAdjustment"]
      162 SETTABLE                         R14 R12 R13
      163 GETTABLEKS                       R13 R7 K39 ["SelectionCell"]
      165 DUPTABLE                         R14 K41 [{"Tag", "Image", "SliceCenter", "InsetAdjustment", "Padding"}]
      166 LOADK                            R15 K28 ["SlicedImage"]
      167 SETTABLEKS                       R15 R14 K24 ["Tag"]
      169 LOADK                            R15 K42 ["component_assets/square_7_stroke_3"]
      170 SETTABLEKS                       R15 R14 K20 ["Image"]
      172 GETIMPORT                        R15 K32 [Rect.new]
      174 LOADK                            R16 K43 [3.5]
      175 LOADK                            R17 K43 [3.5]
      176 LOADK                            R18 K43 [3.5]
      177 LOADK                            R19 K43 [3.5]
      178 CALL                             R15 4 1
      179 SETTABLEKS                       R15 R14 K25 ["SliceCenter"]
      181 GETIMPORT                        R15 K34 [Vector2.new]
      183 LOADN                            R16 2
      184 LOADN                            R17 2
      185 CALL                             R15 2 1
      186 SETTABLEKS                       R15 R14 K26 ["InsetAdjustment"]
      188 LOADN                            R15 50
      189 SETTABLEKS                       R15 R14 K40 ["Padding"]
      191 SETTABLE                         R14 R12 R13
      192 GETTABLEKS                       R13 R7 K44 ["SelectedKnob"]
      194 DUPTABLE                         R14 K46 [{"Tag", "Image", "Size"}]
      195 LOADK                            R15 K47 ["FixedSizeImage"]
      196 SETTABLEKS                       R15 R14 K24 ["Tag"]
      198 LOADK                            R15 K48 ["component_assets/circle_42_stroke_3"]
      199 SETTABLEKS                       R15 R14 K20 ["Image"]
      201 LOADN                            R15 42
      202 SETTABLEKS                       R15 R14 K45 ["Size"]
      204 SETTABLE                         R14 R12 R13
      205 GETTABLEKS                       R13 R7 K49 ["UnselectedKnob"]
      207 DUPTABLE                         R14 K46 [{"Tag", "Image", "Size"}]
      208 LOADK                            R15 K47 ["FixedSizeImage"]
      209 SETTABLEKS                       R15 R14 K24 ["Tag"]
      211 LOADK                            R15 K50 ["component_assets/circle_52_stroke_3"]
      212 SETTABLEKS                       R15 R14 K20 ["Image"]
      214 LOADN                            R15 52
      215 SETTABLEKS                       R15 R14 K45 ["Size"]
      217 SETTABLE                         R14 R12 R13
      218 GETTABLEKS                       R13 R7 K51 ["InputButton"]
      220 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      221 LOADK                            R15 K56 ["RoundedImage"]
      222 SETTABLEKS                       R15 R14 K24 ["Tag"]
      224 GETIMPORT                        R15 K58 [UDim.new]
      226 LOADN                            R16 0
      227 LOADN                            R17 11
      228 CALL                             R15 2 1
      229 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      231 LOADN                            R15 11
      232 SETTABLEKS                       R15 R14 K53 ["Offset"]
      234 LOADN                            R15 3
      235 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      237 SETTABLE                         R14 R12 R13
      238 GETTABLEKS                       R13 R7 K59 ["RoundedRect"]
      240 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      241 LOADK                            R15 K56 ["RoundedImage"]
      242 SETTABLEKS                       R15 R14 K24 ["Tag"]
      244 GETIMPORT                        R15 K58 [UDim.new]
      246 LOADN                            R16 0
      247 LOADN                            R17 8
      248 CALL                             R15 2 1
      249 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      251 LOADN                            R15 9
      252 SETTABLEKS                       R15 R14 K53 ["Offset"]
      254 LOADN                            R15 3
      255 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      257 SETTABLE                         R14 R12 R13
      258 GETTABLEKS                       R13 R7 K60 ["RoundedRectNoInset"]
      260 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      261 LOADK                            R15 K56 ["RoundedImage"]
      262 SETTABLEKS                       R15 R14 K24 ["Tag"]
      264 GETIMPORT                        R15 K58 [UDim.new]
      266 LOADN                            R16 0
      267 LOADN                            R17 8
      268 CALL                             R15 2 1
      269 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      271 LOADN                            R15 0
      272 SETTABLEKS                       R15 R14 K53 ["Offset"]
      274 LOADN                            R15 3
      275 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      277 SETTABLE                         R14 R12 R13
      278 GETTABLEKS                       R13 R7 K61 ["RoundedSlot"]
      280 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      281 LOADK                            R15 K56 ["RoundedImage"]
      282 SETTABLEKS                       R15 R14 K24 ["Tag"]
      284 GETIMPORT                        R15 K58 [UDim.new]
      286 LOADN                            R16 0
      287 LOADN                            R17 7
      288 CALL                             R15 2 1
      289 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      291 LOADN                            R15 0
      292 SETTABLEKS                       R15 R14 K53 ["Offset"]
      294 LOADN                            R15 3
      295 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      297 SETTABLE                         R14 R12 R13
      298 GETTABLEKS                       R13 R7 K62 ["SkinToneCircle"]
      300 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      301 LOADK                            R15 K56 ["RoundedImage"]
      302 SETTABLEKS                       R15 R14 K24 ["Tag"]
      304 GETIMPORT                        R15 K58 [UDim.new]
      306 LOADK                            R16 K63 [0.5]
      307 LOADN                            R17 0
      308 CALL                             R15 2 1
      309 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      311 LOADN                            R15 0
      312 SETTABLEKS                       R15 R14 K53 ["Offset"]
      314 LOADN                            R15 3
      315 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      317 SETTABLE                         R14 R12 R13
      318 GETTABLEKS                       R13 R7 K64 ["SmallPill"]
      320 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      321 LOADK                            R15 K56 ["RoundedImage"]
      322 SETTABLEKS                       R15 R14 K24 ["Tag"]
      324 GETIMPORT                        R15 K58 [UDim.new]
      326 LOADN                            R16 0
      327 LOADN                            R17 15
      328 CALL                             R15 2 1
      329 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      331 LOADN                            R15 0
      332 SETTABLEKS                       R15 R14 K53 ["Offset"]
      334 LOADN                            R15 3
      335 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      337 SETTABLE                         R14 R12 R13
      338 GETTABLEKS                       R13 R7 K65 ["LargePill"]
      340 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      341 LOADK                            R15 K56 ["RoundedImage"]
      342 SETTABLEKS                       R15 R14 K24 ["Tag"]
      344 GETIMPORT                        R15 K58 [UDim.new]
      346 LOADN                            R16 0
      347 LOADN                            R17 26
      348 CALL                             R15 2 1
      349 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      351 LOADN                            R15 0
      352 SETTABLEKS                       R15 R14 K53 ["Offset"]
      354 LOADN                            R15 3
      355 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      357 SETTABLE                         R14 R12 R13
      358 GETTABLEKS                       R13 R7 K66 ["Square"]
      360 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      361 LOADK                            R15 K56 ["RoundedImage"]
      362 SETTABLEKS                       R15 R14 K24 ["Tag"]
      364 GETIMPORT                        R15 K58 [UDim.new]
      366 LOADN                            R16 0
      367 LOADN                            R17 0
      368 CALL                             R15 2 1
      369 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      371 LOADN                            R15 2
      372 SETTABLEKS                       R15 R14 K53 ["Offset"]
      374 LOADN                            R15 3
      375 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      377 SETTABLE                         R14 R12 R13
      378 GETTABLEKS                       R13 R7 K67 ["Toggle"]
      380 DUPTABLE                         R14 K55 [{"Tag", "CornerRadius", "Offset", "BorderWidth"}]
      381 LOADK                            R15 K56 ["RoundedImage"]
      382 SETTABLEKS                       R15 R14 K24 ["Tag"]
      384 GETIMPORT                        R15 K58 [UDim.new]
      386 LOADN                            R16 0
      387 LOADN                            R17 13
      388 CALL                             R15 2 1
      389 SETTABLEKS                       R15 R14 K52 ["CornerRadius"]
      391 LOADN                            R15 0
      392 SETTABLEKS                       R15 R14 K53 ["Offset"]
      394 LOADN                            R15 3
      395 SETTABLEKS                       R15 R14 K54 ["BorderWidth"]
      397 SETTABLE                         R14 R12 R13
      398 GETTABLEKS                       R13 R4 K68 ["forwardRef"]
      400 DUPCLOSURE                       R14 K69 [PROTO_0]
      401 CAPTURE                          VAL R9
      402 CAPTURE                          VAL R2
      403 CAPTURE                          VAL R8
      404 CAPTURE                          VAL R7
      405 CAPTURE                          VAL R4
      406 CAPTURE                          VAL R12
      407 CAPTURE                          VAL R5
      408 CAPTURE                          VAL R11
      409 CAPTURE                          VAL R6
      410 CALL                             R13 1 1
      411 RETURN                           R13 1
