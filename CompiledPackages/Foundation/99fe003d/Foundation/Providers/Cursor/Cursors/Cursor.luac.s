PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["colorMode"]
        4 GETTABLEKS                       R4 R0 K1 ["cursorType"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["NavHighlight"]
        9 JUMPIFNOTEQ                      R4 R5 ; [+53]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 LOADK                            R5 K4 ["Frame"]
       15 DUPTABLE                         R6 K15 [{["AnchorPoint"], ["Position"], ["Size"], ["BorderSizePixel"] = 1, ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderColor3"], ["ref"]}]
       16 GETIMPORT                        R7 K18 [Vector2.new]
       18 LOADN                            R8 0
       19 LOADN                            R9 1
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K5 ["AnchorPoint"]
       23 GETIMPORT                        R7 K20 [UDim2.new]
       25 LOADN                            R8 0
       26 LOADN                            R9 0
       27 LOADN                            R10 1
       28 LOADN                            R11 -3
       29 CALL                             R7 4 1
       30 SETTABLEKS                       R7 R6 K6 ["Position"]
       32 GETIMPORT                        R7 K20 [UDim2.new]
       34 LOADN                            R8 1
       35 LOADN                            R9 0
       36 LOADN                            R10 0
       37 LOADN                            R11 3
       38 CALL                             R7 4 1
       39 SETTABLEKS                       R7 R6 K7 ["Size"]
       41 GETTABLE                         R7 R2 R3
       42 GETTABLEKS                       R7 R7 K21 ["Selection"]
       44 GETTABLEKS                       R7 R7 K22 ["Start"]
       46 GETTABLEKS                       R7 R7 K23 ["Color3"]
       48 SETTABLEKS                       R7 R6 K10 ["BackgroundColor3"]
       50 GETTABLE                         R7 R2 R3
       51 GETTABLEKS                       R7 R7 K21 ["Selection"]
       53 GETTABLEKS                       R7 R7 K22 ["Start"]
       55 GETTABLEKS                       R7 R7 K23 ["Color3"]
       57 SETTABLEKS                       R7 R6 K13 ["BorderColor3"]
       59 SETTABLEKS                       R1 R6 K14 ["ref"]
       61 CALL                             R4 2 -1
       62 RETURN                           R4 -1
       63 GETTABLEKS                       R4 R0 K1 ["cursorType"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K24 ["Invisible"]
       68 JUMPIFNOTEQ                      R4 R5 ; [+17]
       70 GETUPVAL                         R4 2
       71 GETTABLEKS                       R4 R4 K3 ["createElement"]
       73 LOADK                            R5 K4 ["Frame"]
       74 DUPTABLE                         R6 K25 [{["BackgroundTransparency"] = 1, ["Size"], ["ref"]}]
       75 GETIMPORT                        R7 K27 [UDim2.fromScale]
       77 LOADN                            R8 1
       78 LOADN                            R9 1
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K7 ["Size"]
       82 SETTABLEKS                       R1 R6 K14 ["ref"]
       84 CALL                             R4 2 -1
       85 RETURN                           R4 -1
       86 GETUPVAL                         R5 3
       87 GETTABLEKS                       R6 R0 K1 ["cursorType"]
       89 GETTABLE                         R4 R5 R6
       90 GETTABLEKS                       R5 R4 K28 ["Tag"]
       92 JUMPIFNOTEQKS                    R5 K29 ["FixedSizeImage"] ; [+80]
       94 GETIMPORT                        R5 K31 [UDim2.fromOffset]
       96 GETTABLEKS                       R6 R4 K7 ["Size"]
       98 GETTABLEKS                       R7 R4 K7 ["Size"]
      100 CALL                             R5 2 1
      101 GETIMPORT                        R6 K20 [UDim2.new]
      103 LOADK                            R7 K32 [0.5]
      104 GETTABLEKS                       R10 R5 K34 ["X"]
      106 GETTABLEKS                       R10 R10 K35 ["Offset"]
      108 MINUS                            R9 R10
      109 DIVK                             R8 R9 K33 [2]
      110 LOADK                            R9 K32 [0.5]
      111 GETTABLEKS                       R12 R5 K36 ["Y"]
      113 GETTABLEKS                       R12 R12 K35 ["Offset"]
      115 MINUS                            R11 R12
      116 DIVK                             R10 R11 K33 [2]
      117 CALL                             R6 4 1
      118 GETUPVAL                         R7 2
      119 GETTABLEKS                       R7 R7 K3 ["createElement"]
      121 LOADK                            R8 K37 ["ImageLabel"]
      122 DUPTABLE                         R9 K43 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      123 GETUPVAL                         R11 4
      124 GETTABLEKS                       R12 R4 K38 ["Image"]
      126 GETTABLE                         R10 R11 R12
      127 GETTABLEKS                       R10 R10 K38 ["Image"]
      129 SETTABLEKS                       R10 R9 K38 ["Image"]
      131 GETUPVAL                         R11 4
      132 GETTABLEKS                       R12 R4 K38 ["Image"]
      134 GETTABLE                         R10 R11 R12
      135 GETTABLEKS                       R10 R10 K39 ["ImageRectOffset"]
      137 SETTABLEKS                       R10 R9 K39 ["ImageRectOffset"]
      139 GETUPVAL                         R11 4
      140 GETTABLEKS                       R12 R4 K38 ["Image"]
      142 GETTABLE                         R10 R11 R12
      143 GETTABLEKS                       R10 R10 K40 ["ImageRectSize"]
      145 SETTABLEKS                       R10 R9 K40 ["ImageRectSize"]
      147 SETTABLEKS                       R5 R9 K7 ["Size"]
      149 SETTABLEKS                       R6 R9 K6 ["Position"]
      151 GETTABLE                         R10 R2 R3
      152 GETTABLEKS                       R10 R10 K21 ["Selection"]
      154 GETTABLEKS                       R10 R10 K22 ["Start"]
      156 GETTABLEKS                       R10 R10 K23 ["Color3"]
      158 SETTABLEKS                       R10 R9 K41 ["ImageColor3"]
      160 GETTABLE                         R10 R2 R3
      161 GETTABLEKS                       R10 R10 K21 ["Selection"]
      163 GETTABLEKS                       R10 R10 K22 ["Start"]
      165 GETTABLEKS                       R10 R10 K44 ["Transparency"]
      167 SETTABLEKS                       R10 R9 K42 ["ImageTransparency"]
      169 SETTABLEKS                       R1 R9 K14 ["ref"]
      171 CALL                             R7 2 -1
      172 RETURN                           R7 -1
      173 GETTABLEKS                       R5 R4 K28 ["Tag"]
      175 JUMPIFNOTEQKS                    R5 K45 ["SlicedImage"] ; [+140]
      177 GETTABLEKS                       R5 R4 K46 ["InsetAdjustment"]
      179 GETIMPORT                        R6 K20 [UDim2.new]
      181 LOADN                            R7 1
      182 GETTABLEKS                       R9 R5 K34 ["X"]
      184 MULK                             R8 R9 K33 [2]
      185 LOADN                            R9 1
      186 GETTABLEKS                       R11 R5 K36 ["Y"]
      188 MULK                             R10 R11 K33 [2]
      189 CALL                             R6 4 1
      190 GETUPVAL                         R7 5
      191 GETTABLEKS                       R8 R4 K47 ["SliceCenter"]
      193 CALL                             R7 1 1
      194 GETTABLEKS                       R9 R4 K48 ["Padding"]
      196 JUMPIFNOT                        R9 ; [+39]
      197 GETUPVAL                         R8 2
      198 GETTABLEKS                       R8 R8 K3 ["createElement"]
      200 LOADK                            R9 K49 ["UIPadding"]
      201 DUPTABLE                         R10 K54 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      202 GETIMPORT                        R11 K56 [UDim.new]
      204 LOADN                            R12 0
      205 GETTABLEKS                       R13 R4 K48 ["Padding"]
      207 CALL                             R11 2 1
      208 SETTABLEKS                       R11 R10 K50 ["PaddingTop"]
      210 GETIMPORT                        R11 K56 [UDim.new]
      212 LOADN                            R12 0
      213 GETTABLEKS                       R13 R4 K48 ["Padding"]
      215 CALL                             R11 2 1
      216 SETTABLEKS                       R11 R10 K51 ["PaddingBottom"]
      218 GETIMPORT                        R11 K56 [UDim.new]
      220 LOADN                            R12 0
      221 GETTABLEKS                       R13 R4 K48 ["Padding"]
      223 CALL                             R11 2 1
      224 SETTABLEKS                       R11 R10 K52 ["PaddingLeft"]
      226 GETIMPORT                        R11 K56 [UDim.new]
      228 LOADN                            R12 0
      229 GETTABLEKS                       R13 R4 K48 ["Padding"]
      231 CALL                             R11 2 1
      232 SETTABLEKS                       R11 R10 K53 ["PaddingRight"]
      234 CALL                             R8 2 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R8
      237 GETUPVAL                         R9 2
      238 GETTABLEKS                       R9 R9 K3 ["createElement"]
      240 LOADK                            R10 K37 ["ImageLabel"]
      241 DUPTABLE                         R11 K59 [{["Image"], ["BackgroundTransparency"] = 1, ["ImageRectOffset"], ["ImageRectSize"], ["SliceCenter"], ["SliceScale"], ["ScaleType"], ["Size"], ["Position"], ["ImageColor3"], ["ImageTransparency"], ["ref"]}]
      242 GETUPVAL                         R13 4
      243 GETTABLEKS                       R14 R4 K38 ["Image"]
      245 GETTABLE                         R12 R13 R14
      246 GETTABLEKS                       R12 R12 K38 ["Image"]
      248 SETTABLEKS                       R12 R11 K38 ["Image"]
      250 GETUPVAL                         R13 4
      251 GETTABLEKS                       R14 R4 K38 ["Image"]
      253 GETTABLE                         R12 R13 R14
      254 GETTABLEKS                       R12 R12 K39 ["ImageRectOffset"]
      256 SETTABLEKS                       R12 R11 K39 ["ImageRectOffset"]
      258 GETUPVAL                         R13 4
      259 GETTABLEKS                       R14 R4 K38 ["Image"]
      261 GETTABLE                         R12 R13 R14
      262 GETTABLEKS                       R12 R12 K40 ["ImageRectSize"]
      264 SETTABLEKS                       R12 R11 K40 ["ImageRectSize"]
      266 GETTABLEKS                       R12 R7 K60 ["center"]
      268 SETTABLEKS                       R12 R11 K47 ["SliceCenter"]
      270 GETTABLEKS                       R12 R7 K61 ["scale"]
      272 SETTABLEKS                       R12 R11 K57 ["SliceScale"]
      274 GETIMPORT                        R12 K64 [Enum.ScaleType.Slice]
      276 SETTABLEKS                       R12 R11 K58 ["ScaleType"]
      278 SETTABLEKS                       R6 R11 K7 ["Size"]
      280 GETIMPORT                        R12 K31 [UDim2.fromOffset]
      282 GETTABLEKS                       R14 R5 K34 ["X"]
      284 MINUS                            R13 R14
      285 GETTABLEKS                       R15 R5 K36 ["Y"]
      287 MINUS                            R14 R15
      288 CALL                             R12 2 1
      289 SETTABLEKS                       R12 R11 K6 ["Position"]
      291 GETTABLE                         R12 R2 R3
      292 GETTABLEKS                       R12 R12 K21 ["Selection"]
      294 GETTABLEKS                       R12 R12 K22 ["Start"]
      296 GETTABLEKS                       R12 R12 K23 ["Color3"]
      298 SETTABLEKS                       R12 R11 K41 ["ImageColor3"]
      300 GETTABLE                         R12 R2 R3
      301 GETTABLEKS                       R12 R12 K21 ["Selection"]
      303 GETTABLEKS                       R12 R12 K22 ["Start"]
      305 GETTABLEKS                       R12 R12 K44 ["Transparency"]
      307 SETTABLEKS                       R12 R11 K42 ["ImageTransparency"]
      309 SETTABLEKS                       R1 R11 K14 ["ref"]
      311 DUPTABLE                         R12 K65 [{"Padding"}]
      312 SETTABLEKS                       R8 R12 K48 ["Padding"]
      314 CALL                             R9 3 -1
      315 RETURN                           R9 -1
      316 GETTABLEKS                       R5 R4 K28 ["Tag"]
      318 JUMPIFNOTEQKS                    R5 K66 ["RoundedImage"] ; [+33]
      320 GETUPVAL                         R5 2
      321 GETTABLEKS                       R5 R5 K3 ["createElement"]
      323 GETUPVAL                         R6 6
      324 DUPTABLE                         R7 K71 [{"isVisible", "cornerRadius", "offset", "borderWidth", "colorMode", "ref"}]
      325 GETTABLEKS                       R8 R0 K67 ["isVisible"]
      327 SETTABLEKS                       R8 R7 K67 ["isVisible"]
      329 GETTABLEKS                       R8 R4 K72 ["CornerRadius"]
      331 SETTABLEKS                       R8 R7 K68 ["cornerRadius"]
      333 GETTABLEKS                       R9 R4 K35 ["Offset"]
      335 GETTABLEKS                       R10 R4 K73 ["BorderWidth"]
      337 SUB                              R8 R9 R10
      338 SETTABLEKS                       R8 R7 K69 ["offset"]
      340 GETTABLEKS                       R8 R4 K73 ["BorderWidth"]
      342 SETTABLEKS                       R8 R7 K70 ["borderWidth"]
      344 GETTABLEKS                       R8 R0 K0 ["colorMode"]
      346 SETTABLEKS                       R8 R7 K0 ["colorMode"]
      348 SETTABLEKS                       R1 R7 K14 ["ref"]
      350 CALL                             R5 2 -1
      351 RETURN                           R5 -1
      352 LOADNIL                          R4
      353 RETURN                           R4 1

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
       80 DUPTABLE                         R13 K27 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletUp_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
       81 GETIMPORT                        R14 K30 [Rect.new]
       83 LOADN                            R15 8
       84 LOADN                            R16 8
       85 LOADN                            R17 9
       86 LOADN                            R18 9
       87 CALL                             R14 4 1
       88 SETTABLEKS                       R14 R13 K25 ["SliceCenter"]
       90 GETIMPORT                        R14 K32 [Vector2.new]
       92 LOADN                            R15 2
       93 LOADN                            R16 2
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K26 ["InsetAdjustment"]
       97 SETTABLE                         R13 R11 R12
       98 GETTABLEKS                       R12 R6 K33 ["BulletDown"]
      100 DUPTABLE                         R13 K35 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/bulletDown_17_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      101 GETIMPORT                        R14 K30 [Rect.new]
      103 LOADN                            R15 8
      104 LOADN                            R16 8
      105 LOADN                            R17 9
      106 LOADN                            R18 9
      107 CALL                             R14 4 1
      108 SETTABLEKS                       R14 R13 K25 ["SliceCenter"]
      110 GETIMPORT                        R14 K32 [Vector2.new]
      112 LOADN                            R15 2
      113 LOADN                            R16 2
      114 CALL                             R14 2 1
      115 SETTABLEKS                       R14 R13 K26 ["InsetAdjustment"]
      117 SETTABLE                         R13 R11 R12
      118 GETTABLEKS                       R12 R6 K36 ["InputFields"]
      120 DUPTABLE                         R13 K38 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/circle_22_stroke_3", ["SliceCenter"], ["InsetAdjustment"]}]
      121 GETIMPORT                        R14 K30 [Rect.new]
      123 LOADN                            R15 11
      124 LOADN                            R16 11
      125 LOADN                            R17 12
      126 LOADN                            R18 12
      127 CALL                             R14 4 1
      128 SETTABLEKS                       R14 R13 K25 ["SliceCenter"]
      130 GETIMPORT                        R14 K32 [Vector2.new]
      132 LOADN                            R15 7
      133 LOADN                            R16 0
      134 CALL                             R14 2 1
      135 SETTABLEKS                       R14 R13 K26 ["InsetAdjustment"]
      137 SETTABLE                         R13 R11 R12
      138 GETTABLEKS                       R12 R6 K39 ["SelectionCell"]
      140 DUPTABLE                         R13 K43 [{["Tag"] = "SlicedImage", ["Image"] = "component_assets/square_7_stroke_3", ["SliceCenter"], ["InsetAdjustment"], ["Padding"] = 50}]
      141 GETIMPORT                        R14 K30 [Rect.new]
      143 LOADK                            R15 K44 [3.5]
      144 LOADK                            R16 K44 [3.5]
      145 LOADK                            R17 K44 [3.5]
      146 LOADK                            R18 K44 [3.5]
      147 CALL                             R14 4 1
      148 SETTABLEKS                       R14 R13 K25 ["SliceCenter"]
      150 GETIMPORT                        R14 K32 [Vector2.new]
      152 LOADN                            R15 2
      153 LOADN                            R16 2
      154 CALL                             R14 2 1
      155 SETTABLEKS                       R14 R13 K26 ["InsetAdjustment"]
      157 SETTABLE                         R13 R11 R12
      158 GETTABLEKS                       R12 R6 K45 ["SelectedKnob"]
      160 DUPTABLE                         R13 K50 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_42_stroke_3", ["Size"] = 42}]
      161 SETTABLE                         R13 R11 R12
      162 GETTABLEKS                       R12 R6 K51 ["UnselectedKnob"]
      164 DUPTABLE                         R13 K54 [{["Tag"] = "FixedSizeImage", ["Image"] = "component_assets/circle_52_stroke_3", ["Size"] = 52}]
      165 SETTABLE                         R13 R11 R12
      166 GETTABLEKS                       R12 R6 K55 ["InputButton"]
      168 DUPTABLE                         R13 K62 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 11, ["BorderWidth"] = 3}]
      169 GETIMPORT                        R14 K64 [UDim.new]
      171 LOADN                            R15 0
      172 LOADN                            R16 11
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      176 SETTABLE                         R13 R11 R12
      177 GETTABLEKS                       R12 R6 K65 ["RoundedRect"]
      179 DUPTABLE                         R13 K67 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 9, ["BorderWidth"] = 3}]
      180 GETIMPORT                        R14 K64 [UDim.new]
      182 LOADN                            R15 0
      183 LOADN                            R16 8
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      187 SETTABLE                         R13 R11 R12
      188 GETTABLEKS                       R12 R6 K68 ["RoundedRectNoInset"]
      190 DUPTABLE                         R13 K70 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      191 GETIMPORT                        R14 K64 [UDim.new]
      193 LOADN                            R15 0
      194 LOADN                            R16 8
      195 CALL                             R14 2 1
      196 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      198 SETTABLE                         R13 R11 R12
      199 GETTABLEKS                       R12 R6 K71 ["RoundedSlot"]
      201 DUPTABLE                         R13 K70 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      202 GETIMPORT                        R14 K64 [UDim.new]
      204 LOADN                            R15 0
      205 LOADN                            R16 7
      206 CALL                             R14 2 1
      207 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      209 SETTABLE                         R13 R11 R12
      210 GETTABLEKS                       R12 R6 K72 ["SkinToneCircle"]
      212 DUPTABLE                         R13 K70 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      213 GETIMPORT                        R14 K64 [UDim.new]
      215 LOADK                            R15 K73 [0.5]
      216 LOADN                            R16 0
      217 CALL                             R14 2 1
      218 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      220 SETTABLE                         R13 R11 R12
      221 GETTABLEKS                       R12 R6 K74 ["SmallPill"]
      223 DUPTABLE                         R13 K70 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      224 GETIMPORT                        R14 K64 [UDim.new]
      226 LOADN                            R15 0
      227 LOADN                            R16 15
      228 CALL                             R14 2 1
      229 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      231 SETTABLE                         R13 R11 R12
      232 GETTABLEKS                       R12 R6 K75 ["LargePill"]
      234 DUPTABLE                         R13 K70 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      235 GETIMPORT                        R14 K64 [UDim.new]
      237 LOADN                            R15 0
      238 LOADN                            R16 26
      239 CALL                             R14 2 1
      240 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      242 SETTABLE                         R13 R11 R12
      243 GETTABLEKS                       R12 R6 K76 ["Square"]
      245 DUPTABLE                         R13 K78 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 2, ["BorderWidth"] = 3}]
      246 GETIMPORT                        R14 K64 [UDim.new]
      248 LOADN                            R15 0
      249 LOADN                            R16 0
      250 CALL                             R14 2 1
      251 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      253 SETTABLE                         R13 R11 R12
      254 GETTABLEKS                       R12 R6 K79 ["Toggle"]
      256 DUPTABLE                         R13 K70 [{["Tag"] = "RoundedImage", ["CornerRadius"], ["Offset"] = 0, ["BorderWidth"] = 3}]
      257 GETIMPORT                        R14 K64 [UDim.new]
      259 LOADN                            R15 0
      260 LOADN                            R16 13
      261 CALL                             R14 2 1
      262 SETTABLEKS                       R14 R13 K57 ["CornerRadius"]
      264 SETTABLE                         R13 R11 R12
      265 GETTABLEKS                       R12 R3 K80 ["forwardRef"]
      267 DUPCLOSURE                       R13 K81 [PROTO_0]
      268 CAPTURE                          VAL R8
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R4
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R5
      275 CALL                             R12 1 1
      276 RETURN                           R12 1
