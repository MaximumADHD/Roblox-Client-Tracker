PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["FoundationSupportPresentationContextInSelectionCursor"]
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R0 K1 ["colorMode"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["Color"]
       12 GETTABLEKS                       R4 R0 K3 ["cursorType"]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K4 ["NavHighlight"]
       17 JUMPIFNOTEQ                      R4 R5 ; [+53]
       19 GETUPVAL                         R4 4
       20 GETTABLEKS                       R4 R4 K5 ["createElement"]
       22 LOADK                            R5 K6 ["Frame"]
       23 DUPTABLE                         R6 K17 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 1, ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderColor3"], ["ref"]}]
       24 GETIMPORT                        R7 K20 [Vector2.new]
       26 LOADN                            R8 0
       27 LOADN                            R9 1
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K7 ["AnchorPoint"]
       31 GETIMPORT                        R7 K22 [UDim2.new]
       33 LOADN                            R8 0
       34 LOADN                            R9 0
       35 LOADN                            R10 1
       36 LOADN                            R11 -3
       37 CALL                             R7 4 1
       38 SETTABLEKS                       R7 R6 K8 ["Position"]
       40 GETIMPORT                        R7 K22 [UDim2.new]
       42 LOADN                            R8 1
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 LOADN                            R11 3
       46 CALL                             R7 4 1
       47 SETTABLEKS                       R7 R6 K9 ["Size"]
       49 GETTABLE                         R7 R2 R3
       50 GETTABLEKS                       R7 R7 K23 ["Selection"]
       52 GETTABLEKS                       R7 R7 K24 ["Start"]
       54 GETTABLEKS                       R7 R7 K25 ["Color3"]
       56 SETTABLEKS                       R7 R6 K12 ["BackgroundColor3"]
       58 GETTABLE                         R7 R2 R3
       59 GETTABLEKS                       R7 R7 K23 ["Selection"]
       61 GETTABLEKS                       R7 R7 K24 ["Start"]
       63 GETTABLEKS                       R7 R7 K25 ["Color3"]
       65 SETTABLEKS                       R7 R6 K15 ["BorderColor3"]
       67 SETTABLEKS                       R1 R6 K16 ["ref"]
       69 CALL                             R4 2 -1
       70 RETURN                           R4 -1
       71 GETTABLEKS                       R4 R0 K3 ["cursorType"]
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R5 R5 K26 ["Invisible"]
       76 JUMPIFNOTEQ                      R4 R5 ; [+17]
       78 GETUPVAL                         R4 4
       79 GETTABLEKS                       R4 R4 K5 ["createElement"]
       81 LOADK                            R5 K6 ["Frame"]
       82 DUPTABLE                         R6 K27 [{["BackgroundTransparency"] = 1, ["Size"], ["ref"]}]
       83 GETIMPORT                        R7 K29 [UDim2.fromScale]
       85 LOADN                            R8 1
       86 LOADN                            R9 1
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K9 ["Size"]
       90 SETTABLEKS                       R1 R6 K16 ["ref"]
       92 CALL                             R4 2 -1
       93 RETURN                           R4 -1
       94 GETUPVAL                         R5 5
       95 GETTABLEKS                       R6 R0 K3 ["cursorType"]
       97 GETTABLE                         R4 R5 R6
       98 GETTABLEKS                       R5 R4 K30 ["Tag"]
      100 JUMPIFNOTEQKS                    R5 K31 ["FixedSizeImage"] ; [+80]
      102 GETIMPORT                        R5 K33 [UDim2.fromOffset]
      104 GETTABLEKS                       R6 R4 K9 ["Size"]
      106 GETTABLEKS                       R7 R4 K9 ["Size"]
      108 CALL                             R5 2 1
      109 GETIMPORT                        R6 K22 [UDim2.new]
      111 LOADK                            R7 K34 [0.5]
      112 GETTABLEKS                       R10 R5 K36 ["X"]
      114 GETTABLEKS                       R10 R10 K37 ["Offset"]
      116 MINUS                            R9 R10
      117 DIVK                             R8 R9 K35 [2]
      118 LOADK                            R9 K34 [0.5]
      119 GETTABLEKS                       R12 R5 K38 ["Y"]
      121 GETTABLEKS                       R12 R12 K37 ["Offset"]
      123 MINUS                            R11 R12
      124 DIVK                             R10 R11 K35 [2]
      125 CALL                             R6 4 1
      126 GETUPVAL                         R7 4
      127 GETTABLEKS                       R7 R7 K5 ["createElement"]
      129 LOADK                            R8 K39 ["ImageLabel"]
      130 DUPTABLE                         R9 K45 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      131 GETUPVAL                         R11 6
      132 GETTABLEKS                       R12 R4 K40 ["Image"]
      134 GETTABLE                         R10 R11 R12
      135 GETTABLEKS                       R10 R10 K40 ["Image"]
      137 SETTABLEKS                       R10 R9 K40 ["Image"]
      139 GETUPVAL                         R11 6
      140 GETTABLEKS                       R12 R4 K40 ["Image"]
      142 GETTABLE                         R10 R11 R12
      143 GETTABLEKS                       R10 R10 K41 ["ImageRectOffset"]
      145 SETTABLEKS                       R10 R9 K41 ["ImageRectOffset"]
      147 GETUPVAL                         R11 6
      148 GETTABLEKS                       R12 R4 K40 ["Image"]
      150 GETTABLE                         R10 R11 R12
      151 GETTABLEKS                       R10 R10 K42 ["ImageRectSize"]
      153 SETTABLEKS                       R10 R9 K42 ["ImageRectSize"]
      155 SETTABLEKS                       R5 R9 K9 ["Size"]
      157 SETTABLEKS                       R6 R9 K8 ["Position"]
      159 GETTABLE                         R10 R2 R3
      160 GETTABLEKS                       R10 R10 K23 ["Selection"]
      162 GETTABLEKS                       R10 R10 K24 ["Start"]
      164 GETTABLEKS                       R10 R10 K25 ["Color3"]
      166 SETTABLEKS                       R10 R9 K43 ["ImageColor3"]
      168 GETTABLE                         R10 R2 R3
      169 GETTABLEKS                       R10 R10 K23 ["Selection"]
      171 GETTABLEKS                       R10 R10 K24 ["Start"]
      173 GETTABLEKS                       R10 R10 K46 ["Transparency"]
      175 SETTABLEKS                       R10 R9 K44 ["ImageTransparency"]
      177 SETTABLEKS                       R1 R9 K16 ["ref"]
      179 CALL                             R7 2 -1
      180 RETURN                           R7 -1
      181 GETTABLEKS                       R5 R4 K30 ["Tag"]
      183 JUMPIFNOTEQKS                    R5 K47 ["SlicedImage"] ; [+140]
      185 GETTABLEKS                       R5 R4 K48 ["InsetAdjustment"]
      187 GETIMPORT                        R6 K22 [UDim2.new]
      189 LOADN                            R7 1
      190 GETTABLEKS                       R9 R5 K36 ["X"]
      192 MULK                             R8 R9 K35 [2]
      193 LOADN                            R9 1
      194 GETTABLEKS                       R11 R5 K38 ["Y"]
      196 MULK                             R10 R11 K35 [2]
      197 CALL                             R6 4 1
      198 GETUPVAL                         R7 7
      199 GETTABLEKS                       R8 R4 K49 ["SliceCenter"]
      201 CALL                             R7 1 1
      202 GETTABLEKS                       R9 R4 K50 ["Padding"]
      204 JUMPIFNOT                        R9 ; [+39]
      205 GETUPVAL                         R8 4
      206 GETTABLEKS                       R8 R8 K5 ["createElement"]
      208 LOADK                            R9 K51 ["UIPadding"]
      209 DUPTABLE                         R10 K56 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      210 GETIMPORT                        R11 K58 [UDim.new]
      212 LOADN                            R12 0
      213 GETTABLEKS                       R13 R4 K50 ["Padding"]
      215 CALL                             R11 2 1
      216 SETTABLEKS                       R11 R10 K52 ["PaddingTop"]
      218 GETIMPORT                        R11 K58 [UDim.new]
      220 LOADN                            R12 0
      221 GETTABLEKS                       R13 R4 K50 ["Padding"]
      223 CALL                             R11 2 1
      224 SETTABLEKS                       R11 R10 K53 ["PaddingBottom"]
      226 GETIMPORT                        R11 K58 [UDim.new]
      228 LOADN                            R12 0
      229 GETTABLEKS                       R13 R4 K50 ["Padding"]
      231 CALL                             R11 2 1
      232 SETTABLEKS                       R11 R10 K54 ["PaddingLeft"]
      234 GETIMPORT                        R11 K58 [UDim.new]
      236 LOADN                            R12 0
      237 GETTABLEKS                       R13 R4 K50 ["Padding"]
      239 CALL                             R11 2 1
      240 SETTABLEKS                       R11 R10 K55 ["PaddingRight"]
      242 CALL                             R8 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R8
      245 GETUPVAL                         R9 4
      246 GETTABLEKS                       R9 R9 K5 ["createElement"]
      248 LOADK                            R10 K39 ["ImageLabel"]
      249 DUPTABLE                         R11 K61 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["SliceCenter"], ["SliceScale"], ["ScaleType"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      250 GETUPVAL                         R13 6
      251 GETTABLEKS                       R14 R4 K40 ["Image"]
      253 GETTABLE                         R12 R13 R14
      254 GETTABLEKS                       R12 R12 K40 ["Image"]
      256 SETTABLEKS                       R12 R11 K40 ["Image"]
      258 GETUPVAL                         R13 6
      259 GETTABLEKS                       R14 R4 K40 ["Image"]
      261 GETTABLE                         R12 R13 R14
      262 GETTABLEKS                       R12 R12 K41 ["ImageRectOffset"]
      264 SETTABLEKS                       R12 R11 K41 ["ImageRectOffset"]
      266 GETUPVAL                         R13 6
      267 GETTABLEKS                       R14 R4 K40 ["Image"]
      269 GETTABLE                         R12 R13 R14
      270 GETTABLEKS                       R12 R12 K42 ["ImageRectSize"]
      272 SETTABLEKS                       R12 R11 K42 ["ImageRectSize"]
      274 GETTABLEKS                       R12 R7 K62 ["center"]
      276 SETTABLEKS                       R12 R11 K49 ["SliceCenter"]
      278 GETTABLEKS                       R12 R7 K63 ["scale"]
      280 SETTABLEKS                       R12 R11 K59 ["SliceScale"]
      282 GETIMPORT                        R12 K66 [Enum.ScaleType.Slice]
      284 SETTABLEKS                       R12 R11 K60 ["ScaleType"]
      286 SETTABLEKS                       R6 R11 K9 ["Size"]
      288 GETIMPORT                        R12 K33 [UDim2.fromOffset]
      290 GETTABLEKS                       R14 R5 K36 ["X"]
      292 MINUS                            R13 R14
      293 GETTABLEKS                       R15 R5 K38 ["Y"]
      295 MINUS                            R14 R15
      296 CALL                             R12 2 1
      297 SETTABLEKS                       R12 R11 K8 ["Position"]
      299 GETTABLE                         R12 R2 R3
      300 GETTABLEKS                       R12 R12 K23 ["Selection"]
      302 GETTABLEKS                       R12 R12 K24 ["Start"]
      304 GETTABLEKS                       R12 R12 K25 ["Color3"]
      306 SETTABLEKS                       R12 R11 K43 ["ImageColor3"]
      308 GETTABLE                         R12 R2 R3
      309 GETTABLEKS                       R12 R12 K23 ["Selection"]
      311 GETTABLEKS                       R12 R12 K24 ["Start"]
      313 GETTABLEKS                       R12 R12 K46 ["Transparency"]
      315 SETTABLEKS                       R12 R11 K44 ["ImageTransparency"]
      317 SETTABLEKS                       R1 R11 K16 ["ref"]
      319 DUPTABLE                         R12 K67 [{"Padding"}]
      320 SETTABLEKS                       R8 R12 K50 ["Padding"]
      322 CALL                             R9 3 -1
      323 RETURN                           R9 -1
      324 GETTABLEKS                       R5 R4 K30 ["Tag"]
      326 JUMPIFNOTEQKS                    R5 K68 ["RoundedImage"] ; [+33]
      328 GETUPVAL                         R5 4
      329 GETTABLEKS                       R5 R5 K5 ["createElement"]
      331 GETUPVAL                         R6 8
      332 DUPTABLE                         R7 K73 [{"isVisible", "cornerRadius", "offset", "borderWidth", "colorMode", "ref"}]
      333 GETTABLEKS                       R8 R0 K69 ["isVisible"]
      335 SETTABLEKS                       R8 R7 K69 ["isVisible"]
      337 GETTABLEKS                       R8 R4 K74 ["CornerRadius"]
      339 SETTABLEKS                       R8 R7 K70 ["cornerRadius"]
      341 GETTABLEKS                       R9 R4 K37 ["Offset"]
      343 GETTABLEKS                       R10 R4 K75 ["BorderWidth"]
      345 SUB                              R8 R9 R10
      346 SETTABLEKS                       R8 R7 K71 ["offset"]
      348 GETTABLEKS                       R8 R4 K75 ["BorderWidth"]
      350 SETTABLEKS                       R8 R7 K72 ["borderWidth"]
      352 GETTABLEKS                       R8 R0 K1 ["colorMode"]
      354 SETTABLEKS                       R8 R7 K1 ["colorMode"]
      356 SETTABLEKS                       R1 R7 K16 ["ref"]
      358 CALL                             R5 2 -1
      359 RETURN                           R5 -1
      360 LOADNIL                          R4
      361 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["FoundationImages"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R3 K11 ["Images"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R7 R7 K4 ["Parent"]
       34 GETTABLEKS                       R7 R7 K4 ["Parent"]
       36 GETTABLEKS                       R7 R7 K12 ["CursorComponent"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Enums"]
       43 GETTABLEKS                       R8 R8 K14 ["CursorType"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K13 ["Enums"]
       50 GETTABLEKS                       R9 R9 K15 ["ColorMode"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K16 ["Providers"]
       57 GETTABLEKS                       R10 R10 K17 ["Style"]
       59 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K4 ["Parent"]
       68 GETTABLEKS                       R10 R10 K4 ["Parent"]
       70 GETTABLEKS                       R10 R10 K4 ["Parent"]
       72 GETTABLEKS                       R10 R10 K19 ["Components"]
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R10 K20 ["Image"]
       78 GETTABLEKS                       R12 R12 K21 ["ImageSet"]
       80 GETTABLEKS                       R12 R12 K22 ["getScaledSlice"]
       82 CALL                             R11 1 1
       83 NEWTABLE                         R12 16 0
       85 GETTABLEKS                       R13 R7 K23 ["BulletUp"]
       87 DUPTABLE                         R14 K29 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletUp_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
       88 GETIMPORT                        R15 K32 [Rect.new]
       90 LOADN                            R16 8
       91 LOADN                            R17 8
       92 LOADN                            R18 9
       93 LOADN                            R19 9
       94 CALL                             R15 4 1
       95 SETTABLEKS                       R15 R14 K27 ["SliceCenter"]
       97 GETIMPORT                        R15 K34 [Vector2.new]
       99 LOADN                            R16 2
      100 LOADN                            R17 2
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R14 K28 ["InsetAdjustment"]
      104 SETTABLE                         R14 R12 R13
      105 GETTABLEKS                       R13 R7 K35 ["BulletDown"]
      107 DUPTABLE                         R14 K37 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletDown_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      108 GETIMPORT                        R15 K32 [Rect.new]
      110 LOADN                            R16 8
      111 LOADN                            R17 8
      112 LOADN                            R18 9
      113 LOADN                            R19 9
      114 CALL                             R15 4 1
      115 SETTABLEKS                       R15 R14 K27 ["SliceCenter"]
      117 GETIMPORT                        R15 K34 [Vector2.new]
      119 LOADN                            R16 2
      120 LOADN                            R17 2
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K28 ["InsetAdjustment"]
      124 SETTABLE                         R14 R12 R13
      125 GETTABLEKS                       R13 R7 K38 ["InputFields"]
      127 DUPTABLE                         R14 K40 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/circle_22_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      128 GETIMPORT                        R15 K32 [Rect.new]
      130 LOADN                            R16 11
      131 LOADN                            R17 11
      132 LOADN                            R18 12
      133 LOADN                            R19 12
      134 CALL                             R15 4 1
      135 SETTABLEKS                       R15 R14 K27 ["SliceCenter"]
      137 GETIMPORT                        R15 K34 [Vector2.new]
      139 LOADN                            R16 7
      140 LOADN                            R17 0
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K28 ["InsetAdjustment"]
      144 SETTABLE                         R14 R12 R13
      145 GETTABLEKS                       R13 R7 K41 ["SelectionCell"]
      147 DUPTABLE                         R14 K45 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/square_7_stroke_3", ["SliceCenter"], ["InsetAdjustment"], ["Padding"] = 50}]
      148 GETIMPORT                        R15 K32 [Rect.new]
      150 LOADK                            R16 K46 [3.5]
      151 LOADK                            R17 K46 [3.5]
      152 LOADK                            R18 K46 [3.5]
      153 LOADK                            R19 K46 [3.5]
      154 CALL                             R15 4 1
      155 SETTABLEKS                       R15 R14 K27 ["SliceCenter"]
      157 GETIMPORT                        R15 K34 [Vector2.new]
      159 LOADN                            R16 2
      160 LOADN                            R17 2
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K28 ["InsetAdjustment"]
      164 SETTABLE                         R14 R12 R13
      165 GETTABLEKS                       R13 R7 K47 ["SelectedKnob"]
      167 DUPTABLE                         R14 K52 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_42_stroke_3", ["Size"] = 42}]
      168 SETTABLE                         R14 R12 R13
      169 GETTABLEKS                       R13 R7 K53 ["UnselectedKnob"]
      171 DUPTABLE                         R14 K56 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_52_stroke_3", ["Size"] = 52}]
      172 SETTABLE                         R14 R12 R13
      173 GETTABLEKS                       R13 R7 K57 ["InputButton"]
      175 DUPTABLE                         R14 K64 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 11, ["BorderWidth"] = 3}]
      176 GETIMPORT                        R15 K66 [UDim.new]
      178 LOADN                            R16 0
      179 LOADN                            R17 11
      180 CALL                             R15 2 1
      181 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      183 SETTABLE                         R14 R12 R13
      184 GETTABLEKS                       R13 R7 K67 ["RoundedRect"]
      186 DUPTABLE                         R14 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 9, ["BorderWidth"] = 3}]
      187 GETIMPORT                        R15 K66 [UDim.new]
      189 LOADN                            R16 0
      190 LOADN                            R17 8
      191 CALL                             R15 2 1
      192 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      194 SETTABLE                         R14 R12 R13
      195 GETTABLEKS                       R13 R7 K70 ["RoundedRectNoInset"]
      197 DUPTABLE                         R14 K72 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      198 GETIMPORT                        R15 K66 [UDim.new]
      200 LOADN                            R16 0
      201 LOADN                            R17 8
      202 CALL                             R15 2 1
      203 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      205 SETTABLE                         R14 R12 R13
      206 GETTABLEKS                       R13 R7 K73 ["RoundedSlot"]
      208 DUPTABLE                         R14 K72 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      209 GETIMPORT                        R15 K66 [UDim.new]
      211 LOADN                            R16 0
      212 LOADN                            R17 7
      213 CALL                             R15 2 1
      214 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      216 SETTABLE                         R14 R12 R13
      217 GETTABLEKS                       R13 R7 K74 ["SkinToneCircle"]
      219 DUPTABLE                         R14 K72 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      220 GETIMPORT                        R15 K66 [UDim.new]
      222 LOADK                            R16 K75 [0.5]
      223 LOADN                            R17 0
      224 CALL                             R15 2 1
      225 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      227 SETTABLE                         R14 R12 R13
      228 GETTABLEKS                       R13 R7 K76 ["SmallPill"]
      230 DUPTABLE                         R14 K72 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      231 GETIMPORT                        R15 K66 [UDim.new]
      233 LOADN                            R16 0
      234 LOADN                            R17 15
      235 CALL                             R15 2 1
      236 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      238 SETTABLE                         R14 R12 R13
      239 GETTABLEKS                       R13 R7 K77 ["LargePill"]
      241 DUPTABLE                         R14 K72 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      242 GETIMPORT                        R15 K66 [UDim.new]
      244 LOADN                            R16 0
      245 LOADN                            R17 26
      246 CALL                             R15 2 1
      247 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      249 SETTABLE                         R14 R12 R13
      250 GETTABLEKS                       R13 R7 K78 ["Square"]
      252 DUPTABLE                         R14 K80 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 2, ["BorderWidth"] = 3}]
      253 GETIMPORT                        R15 K66 [UDim.new]
      255 LOADN                            R16 0
      256 LOADN                            R17 0
      257 CALL                             R15 2 1
      258 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      260 SETTABLE                         R14 R12 R13
      261 GETTABLEKS                       R13 R7 K81 ["Toggle"]
      263 DUPTABLE                         R14 K72 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      264 GETIMPORT                        R15 K66 [UDim.new]
      266 LOADN                            R16 0
      267 LOADN                            R17 13
      268 CALL                             R15 2 1
      269 SETTABLEKS                       R15 R14 K59 ["CornerRadius"]
      271 SETTABLE                         R14 R12 R13
      272 GETTABLEKS                       R13 R4 K82 ["forwardRef"]
      274 DUPCLOSURE                       R14 K83 [PROTO_0]
      275 CAPTURE                          VAL R9
      276 CAPTURE                          VAL R2
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R7
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R12
      281 CAPTURE                          VAL R5
      282 CAPTURE                          VAL R11
      283 CAPTURE                          VAL R6
      284 CALL                             R13 1 1
      285 RETURN                           R13 1
