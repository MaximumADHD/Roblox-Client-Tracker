PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["knobSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R1 R1 K2 ["Offset"]
        6 GETTABLEKS                       R4 R0 K4 ["size"]
        8 GETTABLEKS                       R4 R4 K5 ["height"]
       10 SUB                              R3 R4 R1
       11 DIVK                             R2 R3 K3 [2]
       12 DUPTABLE                         R3 K8 [{"input", "knob"}]
       13 DUPTABLE                         R4 K11 [{"tag", "size", "stroke"}]
       14 GETTABLEKS                       R5 R0 K9 ["tag"]
       16 SETTABLEKS                       R5 R4 K9 ["tag"]
       18 GETIMPORT                        R5 K14 [UDim2.fromOffset]
       20 GETTABLEKS                       R6 R0 K4 ["size"]
       22 GETTABLEKS                       R6 R6 K15 ["width"]
       24 GETTABLEKS                       R7 R0 K4 ["size"]
       26 GETTABLEKS                       R7 R7 K5 ["height"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K4 ["size"]
       31 DUPTABLE                         R5 K17 [{"thickness"}]
       32 GETTABLEKS                       R6 R0 K18 ["strokeThickness"]
       34 SETTABLEKS                       R6 R5 K16 ["thickness"]
       36 SETTABLEKS                       R5 R4 K10 ["stroke"]
       38 SETTABLEKS                       R4 R3 K6 ["input"]
       40 DUPTABLE                         R4 K21 [{"offPosition", "onPosition"}]
       41 GETIMPORT                        R5 K23 [UDim2.new]
       43 LOADN                            R6 0
       44 MOVE                             R7 R2
       45 LOADK                            R8 K24 [0.5]
       46 LOADN                            R9 0
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R4 K19 ["offPosition"]
       50 GETIMPORT                        R5 K23 [UDim2.new]
       52 LOADN                            R6 0
       53 GETTABLEKS                       R9 R0 K4 ["size"]
       55 GETTABLEKS                       R9 R9 K15 ["width"]
       57 SUB                              R8 R9 R1
       58 SUB                              R7 R8 R2
       59 LOADK                            R8 K24 [0.5]
       60 LOADN                            R9 0
       61 CALL                             R5 4 1
       62 SETTABLEKS                       R5 R4 K20 ["onPosition"]
       64 SETTABLEKS                       R4 R3 K7 ["knob"]
       66 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FoundationToggleVisualUpdate"]
        3 JUMPIFNOT                        R2 ; [+58]
        4 DUPTABLE                         R1 K2 [{"input"}]
        5 DUPTABLE                         R2 K5 [{"colors", "cursorRadius"}]
        6 DUPTABLE                         R3 K11 [{"backgroundStyle", "hoverStyle", "checkedStyle", "labelStyle", "labelHoverStyle"}]
        7 GETTABLEKS                       R4 R0 K12 ["Color"]
        9 GETTABLEKS                       R4 R4 K13 ["ActionStandard"]
       11 GETTABLEKS                       R4 R4 K14 ["Background"]
       13 SETTABLEKS                       R4 R3 K6 ["backgroundStyle"]
       15 GETTABLEKS                       R4 R0 K12 ["Color"]
       17 GETTABLEKS                       R4 R4 K15 ["State"]
       19 GETTABLEKS                       R4 R4 K16 ["Hover"]
       21 SETTABLEKS                       R4 R3 K7 ["hoverStyle"]
       23 GETTABLEKS                       R4 R0 K12 ["Color"]
       25 GETTABLEKS                       R4 R4 K17 ["System"]
       27 GETTABLEKS                       R4 R4 K18 ["Contrast"]
       29 SETTABLEKS                       R4 R3 K8 ["checkedStyle"]
       31 GETTABLEKS                       R4 R0 K12 ["Color"]
       33 GETTABLEKS                       R4 R4 K19 ["Content"]
       35 GETTABLEKS                       R4 R4 K20 ["Emphasis"]
       37 SETTABLEKS                       R4 R3 K9 ["labelStyle"]
       39 GETTABLEKS                       R4 R0 K12 ["Color"]
       41 GETTABLEKS                       R4 R4 K19 ["Content"]
       43 GETTABLEKS                       R4 R4 K20 ["Emphasis"]
       45 SETTABLEKS                       R4 R3 K10 ["labelHoverStyle"]
       47 SETTABLEKS                       R3 R2 K3 ["colors"]
       49 GETIMPORT                        R3 K23 [UDim.new]
       51 LOADN                            R4 0
       52 GETTABLEKS                       R5 R0 K24 ["Radius"]
       54 GETTABLEKS                       R5 R5 K25 ["Circle"]
       56 CALL                             R3 2 1
       57 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       59 SETTABLEKS                       R2 R1 K1 ["input"]
       61 JUMP                             ; [+35]
       62 DUPTABLE                         R1 K2 [{"input"}]
       63 DUPTABLE                         R2 K26 [{"checkedStyle", "cursorRadius"}]
       64 GETTABLEKS                       R3 R0 K12 ["Color"]
       66 GETTABLEKS                       R3 R3 K27 ["ActionEmphasis"]
       68 GETTABLEKS                       R3 R3 K14 ["Background"]
       70 SETTABLEKS                       R3 R2 K8 ["checkedStyle"]
       72 GETUPVAL                         R4 0
       73 GETTABLEKS                       R4 R4 K28 ["FoundationInternalInputSelectedStylesAndSpacing"]
       75 JUMPIFNOT                        R4 ; [+9]
       76 GETIMPORT                        R3 K23 [UDim.new]
       78 LOADN                            R4 0
       79 GETTABLEKS                       R5 R0 K24 ["Radius"]
       81 GETTABLEKS                       R5 R5 K25 ["Circle"]
       83 CALL                             R3 2 1
       84 JUMP                             ; [+8]
       85 GETIMPORT                        R3 K23 [UDim.new]
       87 LOADN                            R4 0
       88 GETTABLEKS                       R5 R0 K24 ["Radius"]
       90 GETTABLEKS                       R5 R5 K29 ["Medium"]
       92 CALL                             R3 2 1
       93 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       95 SETTABLEKS                       R2 R1 K1 ["input"]
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R3 R3 K0 ["FoundationToggleVisualUpdate"]
      100 JUMPIFNOT                        R3 ; [+147]
      101 NEWTABLE                         R2 4 0
      103 GETUPVAL                         R3 1
      104 GETTABLEKS                       R3 R3 K30 ["XSmall"]
      106 GETUPVAL                         R4 2
      107 DUPTABLE                         R5 K36 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      108 DUPTABLE                         R6 K39 [{"width", "height"}]
      109 GETTABLEKS                       R7 R0 K40 ["Size"]
      111 GETTABLEKS                       R7 R7 K41 ["Size_700"]
      113 SETTABLEKS                       R7 R6 K37 ["width"]
      115 GETTABLEKS                       R7 R0 K40 ["Size"]
      117 GETTABLEKS                       R7 R7 K42 ["Size_400"]
      119 SETTABLEKS                       R7 R6 K38 ["height"]
      121 SETTABLEKS                       R6 R5 K33 ["size"]
      123 GETUPVAL                         R6 3
      124 MOVE                             R7 R0
      125 GETUPVAL                         R8 1
      126 GETTABLEKS                       R8 R8 K30 ["XSmall"]
      128 CALL                             R6 2 1
      129 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      131 GETTABLEKS                       R6 R0 K43 ["Stroke"]
      133 GETTABLEKS                       R6 R6 K44 ["None"]
      135 SETTABLEKS                       R6 R5 K35 ["strokeThickness"]
      137 CALL                             R4 1 1
      138 SETTABLE                         R4 R2 R3
      139 GETUPVAL                         R3 1
      140 GETTABLEKS                       R3 R3 K45 ["Small"]
      142 GETUPVAL                         R4 2
      143 DUPTABLE                         R5 K36 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      144 DUPTABLE                         R6 K39 [{"width", "height"}]
      145 GETTABLEKS                       R7 R0 K40 ["Size"]
      147 GETTABLEKS                       R7 R7 K46 ["Size_800"]
      149 SETTABLEKS                       R7 R6 K37 ["width"]
      151 GETTABLEKS                       R7 R0 K40 ["Size"]
      153 GETTABLEKS                       R7 R7 K47 ["Size_500"]
      155 SETTABLEKS                       R7 R6 K38 ["height"]
      157 SETTABLEKS                       R6 R5 K33 ["size"]
      159 GETUPVAL                         R6 3
      160 MOVE                             R7 R0
      161 GETUPVAL                         R8 1
      162 GETTABLEKS                       R8 R8 K45 ["Small"]
      164 CALL                             R6 2 1
      165 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      167 GETTABLEKS                       R6 R0 K43 ["Stroke"]
      169 GETTABLEKS                       R6 R6 K44 ["None"]
      171 SETTABLEKS                       R6 R5 K35 ["strokeThickness"]
      173 CALL                             R4 1 1
      174 SETTABLE                         R4 R2 R3
      175 GETUPVAL                         R3 1
      176 GETTABLEKS                       R3 R3 K29 ["Medium"]
      178 GETUPVAL                         R4 2
      179 DUPTABLE                         R5 K36 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      180 DUPTABLE                         R6 K39 [{"width", "height"}]
      181 GETTABLEKS                       R7 R0 K40 ["Size"]
      183 GETTABLEKS                       R7 R7 K48 ["Size_1000"]
      185 SETTABLEKS                       R7 R6 K37 ["width"]
      187 GETTABLEKS                       R7 R0 K40 ["Size"]
      189 GETTABLEKS                       R7 R7 K49 ["Size_600"]
      191 SETTABLEKS                       R7 R6 K38 ["height"]
      193 SETTABLEKS                       R6 R5 K33 ["size"]
      195 GETUPVAL                         R6 3
      196 MOVE                             R7 R0
      197 GETUPVAL                         R8 1
      198 GETTABLEKS                       R8 R8 K29 ["Medium"]
      200 CALL                             R6 2 1
      201 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      203 GETTABLEKS                       R6 R0 K43 ["Stroke"]
      205 GETTABLEKS                       R6 R6 K44 ["None"]
      207 SETTABLEKS                       R6 R5 K35 ["strokeThickness"]
      209 CALL                             R4 1 1
      210 SETTABLE                         R4 R2 R3
      211 GETUPVAL                         R3 1
      212 GETTABLEKS                       R3 R3 K50 ["Large"]
      214 GETUPVAL                         R4 2
      215 DUPTABLE                         R5 K36 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      216 DUPTABLE                         R6 K39 [{"width", "height"}]
      217 GETTABLEKS                       R7 R0 K40 ["Size"]
      219 GETTABLEKS                       R7 R7 K51 ["Size_1100"]
      221 SETTABLEKS                       R7 R6 K37 ["width"]
      223 GETTABLEKS                       R7 R0 K40 ["Size"]
      225 GETTABLEKS                       R7 R7 K49 ["Size_600"]
      227 SETTABLEKS                       R7 R6 K38 ["height"]
      229 SETTABLEKS                       R6 R5 K33 ["size"]
      231 GETUPVAL                         R6 3
      232 MOVE                             R7 R0
      233 GETUPVAL                         R8 1
      234 GETTABLEKS                       R8 R8 K29 ["Medium"]
      236 CALL                             R6 2 1
      237 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      239 GETTABLEKS                       R6 R0 K43 ["Stroke"]
      241 GETTABLEKS                       R6 R6 K44 ["None"]
      243 SETTABLEKS                       R6 R5 K35 ["strokeThickness"]
      245 CALL                             R4 1 1
      246 SETTABLE                         R4 R2 R3
      247 JUMP                             ; [+122]
      248 NEWTABLE                         R2 4 0
      250 GETUPVAL                         R3 1
      251 GETTABLEKS                       R3 R3 K30 ["XSmall"]
      253 GETUPVAL                         R4 2
      254 DUPTABLE                         R5 K53 [{["tag"] = "radius-large", ["size"], ["knobSize"]}]
      255 DUPTABLE                         R6 K39 [{"width", "height"}]
      256 GETTABLEKS                       R7 R0 K40 ["Size"]
      258 GETTABLEKS                       R7 R7 K41 ["Size_700"]
      260 SETTABLEKS                       R7 R6 K37 ["width"]
      262 GETTABLEKS                       R7 R0 K40 ["Size"]
      264 GETTABLEKS                       R7 R7 K54 ["Size_300"]
      266 SETTABLEKS                       R7 R6 K38 ["height"]
      268 SETTABLEKS                       R6 R5 K33 ["size"]
      270 GETUPVAL                         R6 3
      271 MOVE                             R7 R0
      272 GETUPVAL                         R8 1
      273 GETTABLEKS                       R8 R8 K30 ["XSmall"]
      275 CALL                             R6 2 1
      276 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      278 CALL                             R4 1 1
      279 SETTABLE                         R4 R2 R3
      280 GETUPVAL                         R3 1
      281 GETTABLEKS                       R3 R3 K45 ["Small"]
      283 GETUPVAL                         R4 2
      284 DUPTABLE                         R5 K53 [{["tag"] = "radius-large", ["size"], ["knobSize"]}]
      285 DUPTABLE                         R6 K39 [{"width", "height"}]
      286 GETTABLEKS                       R7 R0 K40 ["Size"]
      288 GETTABLEKS                       R7 R7 K46 ["Size_800"]
      290 SETTABLEKS                       R7 R6 K37 ["width"]
      292 GETTABLEKS                       R7 R0 K40 ["Size"]
      294 GETTABLEKS                       R7 R7 K42 ["Size_400"]
      296 SETTABLEKS                       R7 R6 K38 ["height"]
      298 SETTABLEKS                       R6 R5 K33 ["size"]
      300 GETUPVAL                         R6 3
      301 MOVE                             R7 R0
      302 GETUPVAL                         R8 1
      303 GETTABLEKS                       R8 R8 K45 ["Small"]
      305 CALL                             R6 2 1
      306 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      308 CALL                             R4 1 1
      309 SETTABLE                         R4 R2 R3
      310 GETUPVAL                         R3 1
      311 GETTABLEKS                       R3 R3 K29 ["Medium"]
      313 GETUPVAL                         R4 2
      314 DUPTABLE                         R5 K53 [{["tag"] = "radius-large", ["size"], ["knobSize"]}]
      315 DUPTABLE                         R6 K39 [{"width", "height"}]
      316 GETTABLEKS                       R7 R0 K40 ["Size"]
      318 GETTABLEKS                       R7 R7 K48 ["Size_1000"]
      320 SETTABLEKS                       R7 R6 K37 ["width"]
      322 GETTABLEKS                       R7 R0 K40 ["Size"]
      324 GETTABLEKS                       R7 R7 K47 ["Size_500"]
      326 SETTABLEKS                       R7 R6 K38 ["height"]
      328 SETTABLEKS                       R6 R5 K33 ["size"]
      330 GETUPVAL                         R6 3
      331 MOVE                             R7 R0
      332 GETUPVAL                         R8 1
      333 GETTABLEKS                       R8 R8 K29 ["Medium"]
      335 CALL                             R6 2 1
      336 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      338 CALL                             R4 1 1
      339 SETTABLE                         R4 R2 R3
      340 GETUPVAL                         R3 1
      341 GETTABLEKS                       R3 R3 K50 ["Large"]
      343 GETUPVAL                         R4 2
      344 DUPTABLE                         R5 K55 [{["tag"] = "radius-circle", ["size"], ["knobSize"]}]
      345 DUPTABLE                         R6 K39 [{"width", "height"}]
      346 GETTABLEKS                       R7 R0 K40 ["Size"]
      348 GETTABLEKS                       R7 R7 K56 ["Size_1600"]
      350 SETTABLEKS                       R7 R6 K37 ["width"]
      352 GETTABLEKS                       R7 R0 K40 ["Size"]
      354 GETTABLEKS                       R7 R7 K57 ["Size_900"]
      356 SETTABLEKS                       R7 R6 K38 ["height"]
      358 SETTABLEKS                       R6 R5 K33 ["size"]
      360 GETUPVAL                         R6 3
      361 MOVE                             R7 R0
      362 GETUPVAL                         R8 1
      363 GETTABLEKS                       R8 R8 K50 ["Large"]
      365 CALL                             R6 2 1
      366 SETTABLEKS                       R6 R5 K34 ["knobSize"]
      368 CALL                             R4 1 1
      369 SETTABLE                         R4 R2 R3
      370 DUPTABLE                         R3 K60 [{"common", "sizes"}]
      371 SETTABLEKS                       R1 R3 K58 ["common"]
      373 SETTABLEKS                       R2 R3 K59 ["sizes"]
      375 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useVariants"]
        3 LOADK                            R3 K1 ["Toggle"]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R4 R2 K2 ["common"]
       10 GETTABLEKS                       R6 R2 K3 ["sizes"]
       12 GETTABLE                         R5 R6 R1
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["InternalInput"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["ControlState"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Providers"]
       39 GETTABLEKS                       R6 R6 K14 ["Style"]
       41 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Utility"]
       48 GETTABLEKS                       R7 R7 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K17 ["Knob"]
       57 GETTABLEKS                       R8 R8 K18 ["getKnobSize"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K13 ["Providers"]
       64 GETTABLEKS                       R9 R9 K14 ["Style"]
       66 GETTABLEKS                       R9 R9 K19 ["VariantsContext"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 DUPCLOSURE                       R10 K21 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R11 K22 [PROTO_2]
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 RETURN                           R11 1
