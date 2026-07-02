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
       68 JUMPIFNOTEQ                      R3 R4 ; [+17]
       70 GETUPVAL                         R3 2
       71 GETTABLEKS                       R3 R3 K2 ["createElement"]
       73 LOADK                            R4 K3 ["Frame"]
       74 DUPTABLE                         R5 K25 [{["BackgroundTransparency"] = 1, ["Size"], ["ref"]}]
       75 GETIMPORT                        R6 K27 [UDim2.fromScale]
       77 LOADN                            R7 1
       78 LOADN                            R8 1
       79 CALL                             R6 2 1
       80 SETTABLEKS                       R6 R5 K6 ["Size"]
       82 SETTABLEKS                       R1 R5 K13 ["ref"]
       84 CALL                             R3 2 -1
       85 RETURN                           R3 -1
       86 GETUPVAL                         R4 3
       87 GETTABLEKS                       R5 R0 K0 ["cursorType"]
       89 GETTABLE                         R3 R4 R5
       90 GETTABLEKS                       R4 R3 K28 ["Tag"]
       92 JUMPIFNOTEQKS                    R4 K29 ["FixedSizeImage"] ; [+82]
       94 GETIMPORT                        R4 K31 [UDim2.fromOffset]
       96 GETTABLEKS                       R5 R3 K6 ["Size"]
       98 GETTABLEKS                       R6 R3 K6 ["Size"]
      100 CALL                             R4 2 1
      101 GETIMPORT                        R5 K19 [UDim2.new]
      103 LOADK                            R6 K32 [0.5]
      104 GETTABLEKS                       R9 R4 K34 ["X"]
      106 GETTABLEKS                       R9 R9 K35 ["Offset"]
      108 MINUS                            R8 R9
      109 DIVK                             R7 R8 K33 [2]
      110 LOADK                            R8 K32 [0.5]
      111 GETTABLEKS                       R11 R4 K36 ["Y"]
      113 GETTABLEKS                       R11 R11 K35 ["Offset"]
      115 MINUS                            R10 R11
      116 DIVK                             R9 R10 K33 [2]
      117 CALL                             R5 4 1
      118 GETUPVAL                         R6 2
      119 GETTABLEKS                       R6 R6 K2 ["createElement"]
      121 LOADK                            R7 K37 ["ImageLabel"]
      122 DUPTABLE                         R8 K43 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      123 GETUPVAL                         R10 4
      124 GETTABLEKS                       R11 R3 K38 ["Image"]
      126 GETTABLE                         R9 R10 R11
      127 GETTABLEKS                       R9 R9 K38 ["Image"]
      129 SETTABLEKS                       R9 R8 K38 ["Image"]
      131 GETUPVAL                         R10 4
      132 GETTABLEKS                       R11 R3 K38 ["Image"]
      134 GETTABLE                         R9 R10 R11
      135 GETTABLEKS                       R9 R9 K39 ["ImageRectOffset"]
      137 SETTABLEKS                       R9 R8 K39 ["ImageRectOffset"]
      139 GETUPVAL                         R10 4
      140 GETTABLEKS                       R11 R3 K38 ["Image"]
      142 GETTABLE                         R9 R10 R11
      143 GETTABLEKS                       R9 R9 K40 ["ImageRectSize"]
      145 SETTABLEKS                       R9 R8 K40 ["ImageRectSize"]
      147 SETTABLEKS                       R4 R8 K6 ["Size"]
      149 SETTABLEKS                       R5 R8 K5 ["Position"]
      151 GETTABLEKS                       R9 R2 K20 ["Color"]
      153 GETTABLEKS                       R9 R9 K21 ["Selection"]
      155 GETTABLEKS                       R9 R9 K22 ["Start"]
      157 GETTABLEKS                       R9 R9 K23 ["Color3"]
      159 SETTABLEKS                       R9 R8 K41 ["ImageColor3"]
      161 GETTABLEKS                       R9 R2 K20 ["Color"]
      163 GETTABLEKS                       R9 R9 K21 ["Selection"]
      165 GETTABLEKS                       R9 R9 K22 ["Start"]
      167 GETTABLEKS                       R9 R9 K44 ["Transparency"]
      169 SETTABLEKS                       R9 R8 K42 ["ImageTransparency"]
      171 SETTABLEKS                       R1 R8 K13 ["ref"]
      173 CALL                             R6 2 -1
      174 RETURN                           R6 -1
      175 GETTABLEKS                       R4 R3 K28 ["Tag"]
      177 JUMPIFNOTEQKS                    R4 K45 ["SlicedImage"] ; [+142]
      179 GETTABLEKS                       R4 R3 K46 ["InsetAdjustment"]
      181 GETIMPORT                        R5 K19 [UDim2.new]
      183 LOADN                            R6 1
      184 GETTABLEKS                       R8 R4 K34 ["X"]
      186 MULK                             R7 R8 K33 [2]
      187 LOADN                            R8 1
      188 GETTABLEKS                       R10 R4 K36 ["Y"]
      190 MULK                             R9 R10 K33 [2]
      191 CALL                             R5 4 1
      192 GETUPVAL                         R6 5
      193 GETTABLEKS                       R7 R3 K47 ["SliceCenter"]
      195 CALL                             R6 1 1
      196 GETTABLEKS                       R8 R3 K48 ["Padding"]
      198 JUMPIFNOT                        R8 ; [+39]
      199 GETUPVAL                         R7 2
      200 GETTABLEKS                       R7 R7 K2 ["createElement"]
      202 LOADK                            R8 K49 ["UIPadding"]
      203 DUPTABLE                         R9 K54 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      204 GETIMPORT                        R10 K56 [UDim.new]
      206 LOADN                            R11 0
      207 GETTABLEKS                       R12 R3 K48 ["Padding"]
      209 CALL                             R10 2 1
      210 SETTABLEKS                       R10 R9 K50 ["PaddingTop"]
      212 GETIMPORT                        R10 K56 [UDim.new]
      214 LOADN                            R11 0
      215 GETTABLEKS                       R12 R3 K48 ["Padding"]
      217 CALL                             R10 2 1
      218 SETTABLEKS                       R10 R9 K51 ["PaddingBottom"]
      220 GETIMPORT                        R10 K56 [UDim.new]
      222 LOADN                            R11 0
      223 GETTABLEKS                       R12 R3 K48 ["Padding"]
      225 CALL                             R10 2 1
      226 SETTABLEKS                       R10 R9 K52 ["PaddingLeft"]
      228 GETIMPORT                        R10 K56 [UDim.new]
      230 LOADN                            R11 0
      231 GETTABLEKS                       R12 R3 K48 ["Padding"]
      233 CALL                             R10 2 1
      234 SETTABLEKS                       R10 R9 K53 ["PaddingRight"]
      236 CALL                             R7 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R7
      239 GETUPVAL                         R8 2
      240 GETTABLEKS                       R8 R8 K2 ["createElement"]
      242 LOADK                            R9 K37 ["ImageLabel"]
      243 DUPTABLE                         R10 K59 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["SliceCenter"], ["SliceScale"], ["ScaleType"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      244 GETUPVAL                         R12 4
      245 GETTABLEKS                       R13 R3 K38 ["Image"]
      247 GETTABLE                         R11 R12 R13
      248 GETTABLEKS                       R11 R11 K38 ["Image"]
      250 SETTABLEKS                       R11 R10 K38 ["Image"]
      252 GETUPVAL                         R12 4
      253 GETTABLEKS                       R13 R3 K38 ["Image"]
      255 GETTABLE                         R11 R12 R13
      256 GETTABLEKS                       R11 R11 K39 ["ImageRectOffset"]
      258 SETTABLEKS                       R11 R10 K39 ["ImageRectOffset"]
      260 GETUPVAL                         R12 4
      261 GETTABLEKS                       R13 R3 K38 ["Image"]
      263 GETTABLE                         R11 R12 R13
      264 GETTABLEKS                       R11 R11 K40 ["ImageRectSize"]
      266 SETTABLEKS                       R11 R10 K40 ["ImageRectSize"]
      268 GETTABLEKS                       R11 R6 K60 ["center"]
      270 SETTABLEKS                       R11 R10 K47 ["SliceCenter"]
      272 GETTABLEKS                       R11 R6 K61 ["scale"]
      274 SETTABLEKS                       R11 R10 K57 ["SliceScale"]
      276 GETIMPORT                        R11 K64 [Enum.ScaleType.Slice]
      278 SETTABLEKS                       R11 R10 K58 ["ScaleType"]
      280 SETTABLEKS                       R5 R10 K6 ["Size"]
      282 GETIMPORT                        R11 K31 [UDim2.fromOffset]
      284 GETTABLEKS                       R13 R4 K34 ["X"]
      286 MINUS                            R12 R13
      287 GETTABLEKS                       R14 R4 K36 ["Y"]
      289 MINUS                            R13 R14
      290 CALL                             R11 2 1
      291 SETTABLEKS                       R11 R10 K5 ["Position"]
      293 GETTABLEKS                       R11 R2 K20 ["Color"]
      295 GETTABLEKS                       R11 R11 K21 ["Selection"]
      297 GETTABLEKS                       R11 R11 K22 ["Start"]
      299 GETTABLEKS                       R11 R11 K23 ["Color3"]
      301 SETTABLEKS                       R11 R10 K41 ["ImageColor3"]
      303 GETTABLEKS                       R11 R2 K20 ["Color"]
      305 GETTABLEKS                       R11 R11 K21 ["Selection"]
      307 GETTABLEKS                       R11 R11 K22 ["Start"]
      309 GETTABLEKS                       R11 R11 K44 ["Transparency"]
      311 SETTABLEKS                       R11 R10 K42 ["ImageTransparency"]
      313 SETTABLEKS                       R1 R10 K13 ["ref"]
      315 DUPTABLE                         R11 K65 [{"Padding"}]
      316 SETTABLEKS                       R7 R11 K48 ["Padding"]
      318 CALL                             R8 3 -1
      319 RETURN                           R8 -1
      320 GETTABLEKS                       R4 R3 K28 ["Tag"]
      322 JUMPIFNOTEQKS                    R4 K66 ["RoundedImage"] ; [+29]
      324 GETUPVAL                         R4 2
      325 GETTABLEKS                       R4 R4 K2 ["createElement"]
      327 GETUPVAL                         R5 6
      328 DUPTABLE                         R6 K71 [{"isVisible", "cornerRadius", "offset", "borderWidth", "ref"}]
      329 GETTABLEKS                       R7 R0 K67 ["isVisible"]
      331 SETTABLEKS                       R7 R6 K67 ["isVisible"]
      333 GETTABLEKS                       R7 R3 K72 ["CornerRadius"]
      335 SETTABLEKS                       R7 R6 K68 ["cornerRadius"]
      337 GETTABLEKS                       R8 R3 K35 ["Offset"]
      339 GETTABLEKS                       R9 R3 K73 ["BorderWidth"]
      341 SUB                              R7 R8 R9
      342 SETTABLEKS                       R7 R6 K69 ["offset"]
      344 GETTABLEKS                       R7 R3 K73 ["BorderWidth"]
      346 SETTABLEKS                       R7 R6 K70 ["borderWidth"]
      348 SETTABLEKS                       R1 R6 K13 ["ref"]
      350 CALL                             R4 2 -1
      351 RETURN                           R4 -1
      352 LOADNIL                          R3
      353 RETURN                           R3 1

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
       73 DUPTABLE                         R12 K26 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletUp_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
       74 GETIMPORT                        R13 K29 [Rect.new]
       76 LOADN                            R14 8
       77 LOADN                            R15 8
       78 LOADN                            R16 9
       79 LOADN                            R17 9
       80 CALL                             R13 4 1
       81 SETTABLEKS                       R13 R12 K24 ["SliceCenter"]
       83 GETIMPORT                        R13 K31 [Vector2.new]
       85 LOADN                            R14 2
       86 LOADN                            R15 2
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K25 ["InsetAdjustment"]
       90 SETTABLE                         R12 R10 R11
       91 GETTABLEKS                       R11 R6 K32 ["BulletDown"]
       93 DUPTABLE                         R12 K34 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletDown_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
       94 GETIMPORT                        R13 K29 [Rect.new]
       96 LOADN                            R14 8
       97 LOADN                            R15 8
       98 LOADN                            R16 9
       99 LOADN                            R17 9
      100 CALL                             R13 4 1
      101 SETTABLEKS                       R13 R12 K24 ["SliceCenter"]
      103 GETIMPORT                        R13 K31 [Vector2.new]
      105 LOADN                            R14 2
      106 LOADN                            R15 2
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K25 ["InsetAdjustment"]
      110 SETTABLE                         R12 R10 R11
      111 GETTABLEKS                       R11 R6 K35 ["InputFields"]
      113 DUPTABLE                         R12 K37 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/circle_22_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      114 GETIMPORT                        R13 K29 [Rect.new]
      116 LOADN                            R14 11
      117 LOADN                            R15 11
      118 LOADN                            R16 12
      119 LOADN                            R17 12
      120 CALL                             R13 4 1
      121 SETTABLEKS                       R13 R12 K24 ["SliceCenter"]
      123 GETIMPORT                        R13 K31 [Vector2.new]
      125 LOADN                            R14 7
      126 LOADN                            R15 0
      127 CALL                             R13 2 1
      128 SETTABLEKS                       R13 R12 K25 ["InsetAdjustment"]
      130 SETTABLE                         R12 R10 R11
      131 GETTABLEKS                       R11 R6 K38 ["SelectionCell"]
      133 DUPTABLE                         R12 K42 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/square_7_stroke_3", ["SliceCenter"], ["InsetAdjustment"], ["Padding"] = 50}]
      134 GETIMPORT                        R13 K29 [Rect.new]
      136 LOADK                            R14 K43 [3.5]
      137 LOADK                            R15 K43 [3.5]
      138 LOADK                            R16 K43 [3.5]
      139 LOADK                            R17 K43 [3.5]
      140 CALL                             R13 4 1
      141 SETTABLEKS                       R13 R12 K24 ["SliceCenter"]
      143 GETIMPORT                        R13 K31 [Vector2.new]
      145 LOADN                            R14 2
      146 LOADN                            R15 2
      147 CALL                             R13 2 1
      148 SETTABLEKS                       R13 R12 K25 ["InsetAdjustment"]
      150 SETTABLE                         R12 R10 R11
      151 GETTABLEKS                       R11 R6 K44 ["SelectedKnob"]
      153 DUPTABLE                         R12 K49 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_42_stroke_3", ["Size"] = 42}]
      154 SETTABLE                         R12 R10 R11
      155 GETTABLEKS                       R11 R6 K50 ["UnselectedKnob"]
      157 DUPTABLE                         R12 K53 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_52_stroke_3", ["Size"] = 52}]
      158 SETTABLE                         R12 R10 R11
      159 GETTABLEKS                       R11 R6 K54 ["InputButton"]
      161 DUPTABLE                         R12 K61 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 11, ["BorderWidth"] = 3}]
      162 GETIMPORT                        R13 K63 [UDim.new]
      164 LOADN                            R14 0
      165 LOADN                            R15 11
      166 CALL                             R13 2 1
      167 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      169 SETTABLE                         R12 R10 R11
      170 GETTABLEKS                       R11 R6 K64 ["RoundedRect"]
      172 DUPTABLE                         R12 K66 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 9, ["BorderWidth"] = 3}]
      173 GETIMPORT                        R13 K63 [UDim.new]
      175 LOADN                            R14 0
      176 LOADN                            R15 8
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      180 SETTABLE                         R12 R10 R11
      181 GETTABLEKS                       R11 R6 K67 ["RoundedRectNoInset"]
      183 DUPTABLE                         R12 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      184 GETIMPORT                        R13 K63 [UDim.new]
      186 LOADN                            R14 0
      187 LOADN                            R15 8
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      191 SETTABLE                         R12 R10 R11
      192 GETTABLEKS                       R11 R6 K70 ["RoundedSlot"]
      194 DUPTABLE                         R12 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      195 GETIMPORT                        R13 K63 [UDim.new]
      197 LOADN                            R14 0
      198 LOADN                            R15 7
      199 CALL                             R13 2 1
      200 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      202 SETTABLE                         R12 R10 R11
      203 GETTABLEKS                       R11 R6 K71 ["SkinToneCircle"]
      205 DUPTABLE                         R12 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      206 GETIMPORT                        R13 K63 [UDim.new]
      208 LOADK                            R14 K72 [0.5]
      209 LOADN                            R15 0
      210 CALL                             R13 2 1
      211 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      213 SETTABLE                         R12 R10 R11
      214 GETTABLEKS                       R11 R6 K73 ["SmallPill"]
      216 DUPTABLE                         R12 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      217 GETIMPORT                        R13 K63 [UDim.new]
      219 LOADN                            R14 0
      220 LOADN                            R15 15
      221 CALL                             R13 2 1
      222 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      224 SETTABLE                         R12 R10 R11
      225 GETTABLEKS                       R11 R6 K74 ["LargePill"]
      227 DUPTABLE                         R12 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      228 GETIMPORT                        R13 K63 [UDim.new]
      230 LOADN                            R14 0
      231 LOADN                            R15 26
      232 CALL                             R13 2 1
      233 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      235 SETTABLE                         R12 R10 R11
      236 GETTABLEKS                       R11 R6 K75 ["Square"]
      238 DUPTABLE                         R12 K77 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 2, ["BorderWidth"] = 3}]
      239 GETIMPORT                        R13 K63 [UDim.new]
      241 LOADN                            R14 0
      242 LOADN                            R15 0
      243 CALL                             R13 2 1
      244 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      246 SETTABLE                         R12 R10 R11
      247 GETTABLEKS                       R11 R6 K78 ["Toggle"]
      249 DUPTABLE                         R12 K69 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      250 GETIMPORT                        R13 K63 [UDim.new]
      252 LOADN                            R14 0
      253 LOADN                            R15 13
      254 CALL                             R13 2 1
      255 SETTABLEKS                       R13 R12 K56 ["CornerRadius"]
      257 SETTABLE                         R12 R10 R11
      258 GETTABLEKS                       R11 R3 K79 ["forwardRef"]
      260 DUPCLOSURE                       R12 K80 [PROTO_0]
      261 CAPTURE                          VAL R7
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R10
      265 CAPTURE                          VAL R4
      266 CAPTURE                          VAL R9
      267 CAPTURE                          VAL R5
      268 CALL                             R11 1 1
      269 RETURN                           R11 1
