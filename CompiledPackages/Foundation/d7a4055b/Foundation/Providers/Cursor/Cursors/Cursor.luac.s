PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["cursorType"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["NavHighlight"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+55]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["createElement"]
       12 LOADK                            R4 K3 ["Frame"]
       13 DUPTABLE                         R5 K14 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 1, ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderColor3"], ["ref"]}]
       14 GETIMPORT                        R6 K17 [Vector2.new]
       16 LOADN                            R7 0
       17 LOADN                            R8 1
       18 CALL                             R6 2 1
       19 SETTABLEKS                       R6 R5 K4 ["AnchorPoint"]
       21 GETIMPORT                        R6 K19 [UDim2.new]
       23 LOADN                            R7 0
       24 LOADN                            R8 0
       25 LOADN                            R9 1
       26 LOADN                            R10 -3
       27 CALL                             R6 4 1
       28 SETTABLEKS                       R6 R5 K5 ["Position"]
       30 GETIMPORT                        R6 K19 [UDim2.new]
       32 LOADN                            R7 1
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 LOADN                            R10 3
       36 CALL                             R6 4 1
       37 SETTABLEKS                       R6 R5 K6 ["Size"]
       39 GETTABLEKS                       R6 R2 K20 ["Color"]
       41 GETTABLEKS                       R6 R6 K21 ["Selection"]
       43 GETTABLEKS                       R6 R6 K22 ["Start"]
       45 GETTABLEKS                       R6 R6 K23 ["Color3"]
       47 SETTABLEKS                       R6 R5 K9 ["BackgroundColor3"]
       49 GETTABLEKS                       R6 R2 K20 ["Color"]
       51 GETTABLEKS                       R6 R6 K21 ["Selection"]
       53 GETTABLEKS                       R6 R6 K22 ["Start"]
       55 GETTABLEKS                       R6 R6 K23 ["Color3"]
       57 SETTABLEKS                       R6 R5 K12 ["BorderColor3"]
       59 SETTABLEKS                       R1 R5 K13 ["ref"]
       61 CALL                             R3 2 -1
       62 RETURN                           R3 -1
       63 GETTABLEKS                       R3 R0 K0 ["cursorType"]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K24 ["Invisible"]
       68 JUMPIFNOTEQ                      R3 R4 ; [+19]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R3 R3 K2 ["createElement"]
       73 LOADK                            R4 K3 ["Frame"]
       74 DUPTABLE                         R5 K25 [{["BackgroundTransparency"] = 1, ["Size"], ["ref"]}]
       75 GETIMPORT                        R6 K19 [UDim2.new]
       77 LOADN                            R7 1
       78 LOADN                            R8 0
       79 LOADN                            R9 1
       80 LOADN                            R10 0
       81 CALL                             R6 4 1
       82 SETTABLEKS                       R6 R5 K6 ["Size"]
       84 SETTABLEKS                       R1 R5 K13 ["ref"]
       86 CALL                             R3 2 -1
       87 RETURN                           R3 -1
       88 GETUPVAL                         R4 3
       89 GETTABLEKS                       R5 R0 K0 ["cursorType"]
       91 GETTABLE                         R3 R4 R5
       92 GETTABLEKS                       R4 R3 K26 ["Tag"]
       94 JUMPIFNOTEQKS                    R4 K27 ["FixedSizeImage"] ; [+82]
       96 GETIMPORT                        R4 K29 [UDim2.fromOffset]
       98 GETTABLEKS                       R5 R3 K6 ["Size"]
      100 GETTABLEKS                       R6 R3 K6 ["Size"]
      102 CALL                             R4 2 1
      103 GETIMPORT                        R5 K19 [UDim2.new]
      105 LOADK                            R6 K30 [0.5]
      106 GETTABLEKS                       R9 R4 K32 ["X"]
      108 GETTABLEKS                       R9 R9 K33 ["Offset"]
      110 MINUS                            R8 R9
      111 DIVK                             R7 R8 K31 [2]
      112 LOADK                            R8 K30 [0.5]
      113 GETTABLEKS                       R11 R4 K34 ["Y"]
      115 GETTABLEKS                       R11 R11 K33 ["Offset"]
      117 MINUS                            R10 R11
      118 DIVK                             R9 R10 K31 [2]
      119 CALL                             R5 4 1
      120 GETUPVAL                         R6 2
      121 GETTABLEKS                       R6 R6 K2 ["createElement"]
      123 LOADK                            R7 K35 ["ImageLabel"]
      124 DUPTABLE                         R8 K41 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      125 GETUPVAL                         R10 4
      126 GETTABLEKS                       R11 R3 K36 ["Image"]
      128 GETTABLE                         R9 R10 R11
      129 GETTABLEKS                       R9 R9 K36 ["Image"]
      131 SETTABLEKS                       R9 R8 K36 ["Image"]
      133 GETUPVAL                         R10 4
      134 GETTABLEKS                       R11 R3 K36 ["Image"]
      136 GETTABLE                         R9 R10 R11
      137 GETTABLEKS                       R9 R9 K37 ["ImageRectOffset"]
      139 SETTABLEKS                       R9 R8 K37 ["ImageRectOffset"]
      141 GETUPVAL                         R10 4
      142 GETTABLEKS                       R11 R3 K36 ["Image"]
      144 GETTABLE                         R9 R10 R11
      145 GETTABLEKS                       R9 R9 K38 ["ImageRectSize"]
      147 SETTABLEKS                       R9 R8 K38 ["ImageRectSize"]
      149 SETTABLEKS                       R4 R8 K6 ["Size"]
      151 SETTABLEKS                       R5 R8 K5 ["Position"]
      153 GETTABLEKS                       R9 R2 K20 ["Color"]
      155 GETTABLEKS                       R9 R9 K21 ["Selection"]
      157 GETTABLEKS                       R9 R9 K22 ["Start"]
      159 GETTABLEKS                       R9 R9 K23 ["Color3"]
      161 SETTABLEKS                       R9 R8 K39 ["ImageColor3"]
      163 GETTABLEKS                       R9 R2 K20 ["Color"]
      165 GETTABLEKS                       R9 R9 K21 ["Selection"]
      167 GETTABLEKS                       R9 R9 K22 ["Start"]
      169 GETTABLEKS                       R9 R9 K42 ["Transparency"]
      171 SETTABLEKS                       R9 R8 K40 ["ImageTransparency"]
      173 SETTABLEKS                       R1 R8 K13 ["ref"]
      175 CALL                             R6 2 -1
      176 RETURN                           R6 -1
      177 GETTABLEKS                       R4 R3 K26 ["Tag"]
      179 JUMPIFNOTEQKS                    R4 K43 ["SlicedImage"] ; [+161]
      181 GETTABLEKS                       R4 R3 K44 ["InsetAdjustment"]
      183 GETIMPORT                        R5 K19 [UDim2.new]
      185 LOADN                            R6 1
      186 GETTABLEKS                       R8 R4 K32 ["X"]
      188 MULK                             R7 R8 K31 [2]
      189 LOADN                            R8 1
      190 GETTABLEKS                       R10 R4 K34 ["Y"]
      192 MULK                             R9 R10 K31 [2]
      193 CALL                             R5 4 1
      194 GETUPVAL                         R7 5
      195 GETTABLEKS                       R7 R7 K45 ["FoundationCursorScaledSliceFix"]
      197 JUMPIFNOT                        R7 ; [+5]
      198 GETUPVAL                         R6 6
      199 GETTABLEKS                       R7 R3 K46 ["SliceCenter"]
      201 CALL                             R6 1 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R6
      204 GETTABLEKS                       R8 R3 K47 ["Padding"]
      206 JUMPIFNOT                        R8 ; [+39]
      207 GETUPVAL                         R7 2
      208 GETTABLEKS                       R7 R7 K2 ["createElement"]
      210 LOADK                            R8 K48 ["UIPadding"]
      211 DUPTABLE                         R9 K53 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      212 GETIMPORT                        R10 K55 [UDim.new]
      214 LOADN                            R11 0
      215 GETTABLEKS                       R12 R3 K47 ["Padding"]
      217 CALL                             R10 2 1
      218 SETTABLEKS                       R10 R9 K49 ["PaddingTop"]
      220 GETIMPORT                        R10 K55 [UDim.new]
      222 LOADN                            R11 0
      223 GETTABLEKS                       R12 R3 K47 ["Padding"]
      225 CALL                             R10 2 1
      226 SETTABLEKS                       R10 R9 K50 ["PaddingBottom"]
      228 GETIMPORT                        R10 K55 [UDim.new]
      230 LOADN                            R11 0
      231 GETTABLEKS                       R12 R3 K47 ["Padding"]
      233 CALL                             R10 2 1
      234 SETTABLEKS                       R10 R9 K51 ["PaddingLeft"]
      236 GETIMPORT                        R10 K55 [UDim.new]
      238 LOADN                            R11 0
      239 GETTABLEKS                       R12 R3 K47 ["Padding"]
      241 CALL                             R10 2 1
      242 SETTABLEKS                       R10 R9 K52 ["PaddingRight"]
      244 CALL                             R7 2 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R7
      247 GETUPVAL                         R8 2
      248 GETTABLEKS                       R8 R8 K2 ["createElement"]
      250 LOADK                            R9 K35 ["ImageLabel"]
      251 DUPTABLE                         R10 K58 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["SliceCenter"], ["SliceScale"], ["ScaleType"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      252 GETUPVAL                         R12 4
      253 GETTABLEKS                       R13 R3 K36 ["Image"]
      255 GETTABLE                         R11 R12 R13
      256 GETTABLEKS                       R11 R11 K36 ["Image"]
      258 SETTABLEKS                       R11 R10 K36 ["Image"]
      260 GETUPVAL                         R12 4
      261 GETTABLEKS                       R13 R3 K36 ["Image"]
      263 GETTABLE                         R11 R12 R13
      264 GETTABLEKS                       R11 R11 K37 ["ImageRectOffset"]
      266 SETTABLEKS                       R11 R10 K37 ["ImageRectOffset"]
      268 GETUPVAL                         R12 4
      269 GETTABLEKS                       R13 R3 K36 ["Image"]
      271 GETTABLE                         R11 R12 R13
      272 GETTABLEKS                       R11 R11 K38 ["ImageRectSize"]
      274 SETTABLEKS                       R11 R10 K38 ["ImageRectSize"]
      276 GETUPVAL                         R12 5
      277 GETTABLEKS                       R12 R12 K45 ["FoundationCursorScaledSliceFix"]
      279 JUMPIFNOT                        R12 ; [+3]
      280 GETTABLEKS                       R11 R6 K59 ["center"]
      282 JUMP                             ; [+2]
      283 GETTABLEKS                       R11 R3 K46 ["SliceCenter"]
      285 SETTABLEKS                       R11 R10 K46 ["SliceCenter"]
      287 GETUPVAL                         R12 5
      288 GETTABLEKS                       R12 R12 K45 ["FoundationCursorScaledSliceFix"]
      290 JUMPIFNOT                        R12 ; [+3]
      291 GETTABLEKS                       R11 R6 K60 ["scale"]
      293 JUMP                             ; [+1]
      294 LOADNIL                          R11
      295 SETTABLEKS                       R11 R10 K56 ["SliceScale"]
      297 GETIMPORT                        R11 K63 [Enum.ScaleType.Slice]
      299 SETTABLEKS                       R11 R10 K57 ["ScaleType"]
      301 SETTABLEKS                       R5 R10 K6 ["Size"]
      303 GETIMPORT                        R11 K29 [UDim2.fromOffset]
      305 GETTABLEKS                       R13 R4 K32 ["X"]
      307 MINUS                            R12 R13
      308 GETTABLEKS                       R14 R4 K34 ["Y"]
      310 MINUS                            R13 R14
      311 CALL                             R11 2 1
      312 SETTABLEKS                       R11 R10 K5 ["Position"]
      314 GETTABLEKS                       R11 R2 K20 ["Color"]
      316 GETTABLEKS                       R11 R11 K21 ["Selection"]
      318 GETTABLEKS                       R11 R11 K22 ["Start"]
      320 GETTABLEKS                       R11 R11 K23 ["Color3"]
      322 SETTABLEKS                       R11 R10 K39 ["ImageColor3"]
      324 GETTABLEKS                       R11 R2 K20 ["Color"]
      326 GETTABLEKS                       R11 R11 K21 ["Selection"]
      328 GETTABLEKS                       R11 R11 K22 ["Start"]
      330 GETTABLEKS                       R11 R11 K42 ["Transparency"]
      332 SETTABLEKS                       R11 R10 K40 ["ImageTransparency"]
      334 SETTABLEKS                       R1 R10 K13 ["ref"]
      336 DUPTABLE                         R11 K64 [{"Padding"}]
      337 SETTABLEKS                       R7 R11 K47 ["Padding"]
      339 CALL                             R8 3 -1
      340 RETURN                           R8 -1
      341 GETTABLEKS                       R4 R3 K26 ["Tag"]
      343 JUMPIFNOTEQKS                    R4 K65 ["RoundedImage"] ; [+29]
      345 GETUPVAL                         R4 2
      346 GETTABLEKS                       R4 R4 K2 ["createElement"]
      348 GETUPVAL                         R5 7
      349 DUPTABLE                         R6 K70 [{"isVisible", "cornerRadius", "offset", "borderWidth", "ref"}]
      350 GETTABLEKS                       R7 R0 K66 ["isVisible"]
      352 SETTABLEKS                       R7 R6 K66 ["isVisible"]
      354 GETTABLEKS                       R7 R3 K71 ["CornerRadius"]
      356 SETTABLEKS                       R7 R6 K67 ["cornerRadius"]
      358 GETTABLEKS                       R8 R3 K33 ["Offset"]
      360 GETTABLEKS                       R9 R3 K72 ["BorderWidth"]
      362 SUB                              R7 R8 R9
      363 SETTABLEKS                       R7 R6 K68 ["offset"]
      365 GETTABLEKS                       R7 R3 K72 ["BorderWidth"]
      367 SETTABLEKS                       R7 R6 K69 ["borderWidth"]
      369 SETTABLEKS                       R1 R6 K13 ["ref"]
      371 CALL                             R4 2 -1
      372 RETURN                           R4 -1
      373 LOADNIL                          R3
      374 RETURN                           R3 1

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
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K20 ["Utility"]
       73 GETTABLEKS                       R11 R11 K21 ["Flags"]
       75 CALL                             R10 1 1
       76 NEWTABLE                         R11 16 0
       78 GETTABLEKS                       R12 R6 K22 ["BulletUp"]
       80 DUPTABLE                         R13 K28 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletUp_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
       81 GETIMPORT                        R14 K31 [Rect.new]
       83 LOADN                            R15 8
       84 LOADN                            R16 8
       85 LOADN                            R17 9
       86 LOADN                            R18 9
       87 CALL                             R14 4 1
       88 SETTABLEKS                       R14 R13 K26 ["SliceCenter"]
       90 GETIMPORT                        R14 K33 [Vector2.new]
       92 LOADN                            R15 2
       93 LOADN                            R16 2
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K27 ["InsetAdjustment"]
       97 SETTABLE                         R13 R11 R12
       98 GETTABLEKS                       R12 R6 K34 ["BulletDown"]
      100 DUPTABLE                         R13 K36 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletDown_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      101 GETIMPORT                        R14 K31 [Rect.new]
      103 LOADN                            R15 8
      104 LOADN                            R16 8
      105 LOADN                            R17 9
      106 LOADN                            R18 9
      107 CALL                             R14 4 1
      108 SETTABLEKS                       R14 R13 K26 ["SliceCenter"]
      110 GETIMPORT                        R14 K33 [Vector2.new]
      112 LOADN                            R15 2
      113 LOADN                            R16 2
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K27 ["InsetAdjustment"]
      117 SETTABLE                         R13 R11 R12
      118 GETTABLEKS                       R12 R6 K37 ["InputFields"]
      120 DUPTABLE                         R13 K39 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/circle_22_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      121 GETIMPORT                        R14 K31 [Rect.new]
      123 LOADN                            R15 11
      124 LOADN                            R16 11
      125 LOADN                            R17 12
      126 LOADN                            R18 12
      127 CALL                             R14 4 1
      128 SETTABLEKS                       R14 R13 K26 ["SliceCenter"]
      130 GETIMPORT                        R14 K33 [Vector2.new]
      132 LOADN                            R15 7
      133 LOADN                            R16 0
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K27 ["InsetAdjustment"]
      137 SETTABLE                         R13 R11 R12
      138 GETTABLEKS                       R12 R6 K40 ["SelectionCell"]
      140 DUPTABLE                         R13 K44 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/square_7_stroke_3", ["SliceCenter"], ["InsetAdjustment"], ["Padding"] = 50}]
      141 GETIMPORT                        R14 K31 [Rect.new]
      143 LOADK                            R15 K45 [3.5]
      144 LOADK                            R16 K45 [3.5]
      145 LOADK                            R17 K45 [3.5]
      146 LOADK                            R18 K45 [3.5]
      147 CALL                             R14 4 1
      148 SETTABLEKS                       R14 R13 K26 ["SliceCenter"]
      150 GETIMPORT                        R14 K33 [Vector2.new]
      152 LOADN                            R15 2
      153 LOADN                            R16 2
      154 CALL                             R14 2 1
      155 SETTABLEKS                       R14 R13 K27 ["InsetAdjustment"]
      157 SETTABLE                         R13 R11 R12
      158 GETTABLEKS                       R12 R6 K46 ["SelectedKnob"]
      160 DUPTABLE                         R13 K51 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_42_stroke_3", ["Size"] = 42}]
      161 SETTABLE                         R13 R11 R12
      162 GETTABLEKS                       R12 R6 K52 ["UnselectedKnob"]
      164 DUPTABLE                         R13 K55 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_52_stroke_3", ["Size"] = 52}]
      165 SETTABLE                         R13 R11 R12
      166 GETTABLEKS                       R12 R6 K56 ["InputButton"]
      168 DUPTABLE                         R13 K63 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 11, ["BorderWidth"] = 3}]
      169 GETIMPORT                        R14 K65 [UDim.new]
      171 LOADN                            R15 0
      172 LOADN                            R16 11
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      176 SETTABLE                         R13 R11 R12
      177 GETTABLEKS                       R12 R6 K66 ["RoundedRect"]
      179 DUPTABLE                         R13 K68 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 9, ["BorderWidth"] = 3}]
      180 GETIMPORT                        R14 K65 [UDim.new]
      182 LOADN                            R15 0
      183 LOADN                            R16 8
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      187 SETTABLE                         R13 R11 R12
      188 GETTABLEKS                       R12 R6 K69 ["RoundedRectNoInset"]
      190 DUPTABLE                         R13 K71 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      191 GETIMPORT                        R14 K65 [UDim.new]
      193 LOADN                            R15 0
      194 LOADN                            R16 8
      195 CALL                             R14 2 1
      196 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      198 SETTABLE                         R13 R11 R12
      199 GETTABLEKS                       R12 R6 K72 ["RoundedSlot"]
      201 DUPTABLE                         R13 K71 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      202 GETIMPORT                        R14 K65 [UDim.new]
      204 LOADN                            R15 0
      205 LOADN                            R16 7
      206 CALL                             R14 2 1
      207 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      209 SETTABLE                         R13 R11 R12
      210 GETTABLEKS                       R12 R6 K73 ["SkinToneCircle"]
      212 DUPTABLE                         R13 K71 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      213 GETIMPORT                        R14 K65 [UDim.new]
      215 LOADK                            R15 K74 [0.5]
      216 LOADN                            R16 0
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      220 SETTABLE                         R13 R11 R12
      221 GETTABLEKS                       R12 R6 K75 ["SmallPill"]
      223 DUPTABLE                         R13 K71 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      224 GETIMPORT                        R14 K65 [UDim.new]
      226 LOADN                            R15 0
      227 LOADN                            R16 15
      228 CALL                             R14 2 1
      229 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      231 SETTABLE                         R13 R11 R12
      232 GETTABLEKS                       R12 R6 K76 ["LargePill"]
      234 DUPTABLE                         R13 K71 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      235 GETIMPORT                        R14 K65 [UDim.new]
      237 LOADN                            R15 0
      238 LOADN                            R16 26
      239 CALL                             R14 2 1
      240 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      242 SETTABLE                         R13 R11 R12
      243 GETTABLEKS                       R12 R6 K77 ["Square"]
      245 DUPTABLE                         R13 K79 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 2, ["BorderWidth"] = 3}]
      246 GETIMPORT                        R14 K65 [UDim.new]
      248 LOADN                            R15 0
      249 LOADN                            R16 0
      250 CALL                             R14 2 1
      251 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      253 SETTABLE                         R13 R11 R12
      254 GETTABLEKS                       R12 R6 K80 ["Toggle"]
      256 DUPTABLE                         R13 K71 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      257 GETIMPORT                        R14 K65 [UDim.new]
      259 LOADN                            R15 0
      260 LOADN                            R16 13
      261 CALL                             R14 2 1
      262 SETTABLEKS                       R14 R13 K58 ["CornerRadius"]
      264 SETTABLE                         R13 R11 R12
      265 GETTABLEKS                       R12 R2 K81 ["forwardRef"]
      267 DUPCLOSURE                       R13 K82 [PROTO_0]
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R2
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R5
      276 CALL                             R12 1 1
      277 RETURN                           R12 1
