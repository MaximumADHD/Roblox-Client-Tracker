PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["knobSize"]
        2 GETTABLEKS                       R2 R3 K1 ["X"]
        4 GETTABLEKS                       R1 R2 K2 ["Offset"]
        6 GETTABLEKS                       R5 R0 K4 ["size"]
        8 GETTABLEKS                       R4 R5 K5 ["height"]
       10 SUB                              R3 R4 R1
       11 DIVK                             R2 R3 K3 [2]
       12 DUPTABLE                         R3 K8 [{"input", "knob"}]
       13 DUPTABLE                         R4 K11 [{"tag", "size", "stroke"}]
       14 GETTABLEKS                       R5 R0 K9 ["tag"]
       16 SETTABLEKS                       R5 R4 K9 ["tag"]
       18 GETIMPORT                        R5 K14 [UDim2.fromOffset]
       20 GETTABLEKS                       R7 R0 K4 ["size"]
       22 GETTABLEKS                       R6 R7 K15 ["width"]
       24 GETTABLEKS                       R8 R0 K4 ["size"]
       26 GETTABLEKS                       R7 R8 K5 ["height"]
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
       53 GETTABLEKS                       R10 R0 K4 ["size"]
       55 GETTABLEKS                       R9 R10 K15 ["width"]
       57 SUB                              R8 R9 R1
       58 SUB                              R7 R8 R2
       59 LOADK                            R8 K24 [0.5]
       60 LOADN                            R9 0
       61 CALL                             R5 4 1
       62 SETTABLEKS                       R5 R4 K20 ["onPosition"]
       64 SETTABLEKS                       R4 R3 K7 ["knob"]
       66 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FoundationToggleVisualUpdate"]
        3 JUMPIFNOT                        R2 ; [+58]
        4 DUPTABLE                         R1 K2 [{"input"}]
        5 DUPTABLE                         R2 K5 [{"colors", "cursorRadius"}]
        6 DUPTABLE                         R3 K11 [{"backgroundStyle", "hoverStyle", "checkedStyle", "labelStyle", "labelHoverStyle"}]
        7 GETTABLEKS                       R6 R0 K12 ["Color"]
        9 GETTABLEKS                       R5 R6 K13 ["ActionStandard"]
       11 GETTABLEKS                       R4 R5 K14 ["Background"]
       13 SETTABLEKS                       R4 R3 K6 ["backgroundStyle"]
       15 GETTABLEKS                       R6 R0 K12 ["Color"]
       17 GETTABLEKS                       R5 R6 K15 ["State"]
       19 GETTABLEKS                       R4 R5 K16 ["Hover"]
       21 SETTABLEKS                       R4 R3 K7 ["hoverStyle"]
       23 GETTABLEKS                       R6 R0 K12 ["Color"]
       25 GETTABLEKS                       R5 R6 K17 ["System"]
       27 GETTABLEKS                       R4 R5 K18 ["Contrast"]
       29 SETTABLEKS                       R4 R3 K8 ["checkedStyle"]
       31 GETTABLEKS                       R6 R0 K12 ["Color"]
       33 GETTABLEKS                       R5 R6 K19 ["Content"]
       35 GETTABLEKS                       R4 R5 K20 ["Emphasis"]
       37 SETTABLEKS                       R4 R3 K9 ["labelStyle"]
       39 GETTABLEKS                       R6 R0 K12 ["Color"]
       41 GETTABLEKS                       R5 R6 K19 ["Content"]
       43 GETTABLEKS                       R4 R5 K20 ["Emphasis"]
       45 SETTABLEKS                       R4 R3 K10 ["labelHoverStyle"]
       47 SETTABLEKS                       R3 R2 K3 ["colors"]
       49 GETIMPORT                        R3 K23 [UDim.new]
       51 LOADN                            R4 0
       52 GETTABLEKS                       R6 R0 K24 ["Radius"]
       54 GETTABLEKS                       R5 R6 K25 ["Circle"]
       56 CALL                             R3 2 1
       57 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       59 SETTABLEKS                       R2 R1 K1 ["input"]
       61 JUMP                             ; [+22]
       62 DUPTABLE                         R1 K2 [{"input"}]
       63 DUPTABLE                         R2 K26 [{"checkedStyle", "cursorRadius"}]
       64 GETTABLEKS                       R5 R0 K12 ["Color"]
       66 GETTABLEKS                       R4 R5 K27 ["ActionEmphasis"]
       68 GETTABLEKS                       R3 R4 K14 ["Background"]
       70 SETTABLEKS                       R3 R2 K8 ["checkedStyle"]
       72 GETIMPORT                        R3 K23 [UDim.new]
       74 LOADN                            R4 0
       75 GETTABLEKS                       R6 R0 K24 ["Radius"]
       77 GETTABLEKS                       R5 R6 K25 ["Circle"]
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       82 SETTABLEKS                       R2 R1 K1 ["input"]
       84 GETUPVAL                         R4 0
       85 GETTABLEKS                       R3 R4 K0 ["FoundationToggleVisualUpdate"]
       87 JUMPIFNOT                        R3 ; [+159]
       88 NEWTABLE                         R2 4 0
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R3 R4 K28 ["XSmall"]
       93 GETUPVAL                         R4 2
       94 DUPTABLE                         R5 K33 [{"tag", "size", "knobSize", "strokeThickness"}]
       95 LOADK                            R6 K34 ["radius-circle"]
       96 SETTABLEKS                       R6 R5 K29 ["tag"]
       98 DUPTABLE                         R6 K37 [{"width", "height"}]
       99 GETTABLEKS                       R8 R0 K38 ["Size"]
      101 GETTABLEKS                       R7 R8 K39 ["Size_700"]
      103 SETTABLEKS                       R7 R6 K35 ["width"]
      105 GETTABLEKS                       R8 R0 K38 ["Size"]
      107 GETTABLEKS                       R7 R8 K40 ["Size_400"]
      109 SETTABLEKS                       R7 R6 K36 ["height"]
      111 SETTABLEKS                       R6 R5 K30 ["size"]
      113 GETUPVAL                         R6 3
      114 MOVE                             R7 R0
      115 GETUPVAL                         R9 1
      116 GETTABLEKS                       R8 R9 K28 ["XSmall"]
      118 CALL                             R6 2 1
      119 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      121 GETTABLEKS                       R7 R0 K41 ["Stroke"]
      123 GETTABLEKS                       R6 R7 K42 ["None"]
      125 SETTABLEKS                       R6 R5 K32 ["strokeThickness"]
      127 CALL                             R4 1 1
      128 SETTABLE                         R4 R2 R3
      129 GETUPVAL                         R4 1
      130 GETTABLEKS                       R3 R4 K43 ["Small"]
      132 GETUPVAL                         R4 2
      133 DUPTABLE                         R5 K33 [{"tag", "size", "knobSize", "strokeThickness"}]
      134 LOADK                            R6 K34 ["radius-circle"]
      135 SETTABLEKS                       R6 R5 K29 ["tag"]
      137 DUPTABLE                         R6 K37 [{"width", "height"}]
      138 GETTABLEKS                       R8 R0 K38 ["Size"]
      140 GETTABLEKS                       R7 R8 K44 ["Size_800"]
      142 SETTABLEKS                       R7 R6 K35 ["width"]
      144 GETTABLEKS                       R8 R0 K38 ["Size"]
      146 GETTABLEKS                       R7 R8 K45 ["Size_500"]
      148 SETTABLEKS                       R7 R6 K36 ["height"]
      150 SETTABLEKS                       R6 R5 K30 ["size"]
      152 GETUPVAL                         R6 3
      153 MOVE                             R7 R0
      154 GETUPVAL                         R9 1
      155 GETTABLEKS                       R8 R9 K43 ["Small"]
      157 CALL                             R6 2 1
      158 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      160 GETTABLEKS                       R7 R0 K41 ["Stroke"]
      162 GETTABLEKS                       R6 R7 K42 ["None"]
      164 SETTABLEKS                       R6 R5 K32 ["strokeThickness"]
      166 CALL                             R4 1 1
      167 SETTABLE                         R4 R2 R3
      168 GETUPVAL                         R4 1
      169 GETTABLEKS                       R3 R4 K46 ["Medium"]
      171 GETUPVAL                         R4 2
      172 DUPTABLE                         R5 K33 [{"tag", "size", "knobSize", "strokeThickness"}]
      173 LOADK                            R6 K34 ["radius-circle"]
      174 SETTABLEKS                       R6 R5 K29 ["tag"]
      176 DUPTABLE                         R6 K37 [{"width", "height"}]
      177 GETTABLEKS                       R8 R0 K38 ["Size"]
      179 GETTABLEKS                       R7 R8 K47 ["Size_1000"]
      181 SETTABLEKS                       R7 R6 K35 ["width"]
      183 GETTABLEKS                       R8 R0 K38 ["Size"]
      185 GETTABLEKS                       R7 R8 K48 ["Size_600"]
      187 SETTABLEKS                       R7 R6 K36 ["height"]
      189 SETTABLEKS                       R6 R5 K30 ["size"]
      191 GETUPVAL                         R6 3
      192 MOVE                             R7 R0
      193 GETUPVAL                         R9 1
      194 GETTABLEKS                       R8 R9 K46 ["Medium"]
      196 CALL                             R6 2 1
      197 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      199 GETTABLEKS                       R7 R0 K41 ["Stroke"]
      201 GETTABLEKS                       R6 R7 K42 ["None"]
      203 SETTABLEKS                       R6 R5 K32 ["strokeThickness"]
      205 CALL                             R4 1 1
      206 SETTABLE                         R4 R2 R3
      207 GETUPVAL                         R4 1
      208 GETTABLEKS                       R3 R4 K49 ["Large"]
      210 GETUPVAL                         R4 2
      211 DUPTABLE                         R5 K33 [{"tag", "size", "knobSize", "strokeThickness"}]
      212 LOADK                            R6 K34 ["radius-circle"]
      213 SETTABLEKS                       R6 R5 K29 ["tag"]
      215 DUPTABLE                         R6 K37 [{"width", "height"}]
      216 GETTABLEKS                       R8 R0 K38 ["Size"]
      218 GETTABLEKS                       R7 R8 K50 ["Size_1100"]
      220 SETTABLEKS                       R7 R6 K35 ["width"]
      222 GETTABLEKS                       R8 R0 K38 ["Size"]
      224 GETTABLEKS                       R7 R8 K48 ["Size_600"]
      226 SETTABLEKS                       R7 R6 K36 ["height"]
      228 SETTABLEKS                       R6 R5 K30 ["size"]
      230 GETUPVAL                         R6 3
      231 MOVE                             R7 R0
      232 GETUPVAL                         R9 1
      233 GETTABLEKS                       R8 R9 K46 ["Medium"]
      235 CALL                             R6 2 1
      236 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      238 GETTABLEKS                       R7 R0 K41 ["Stroke"]
      240 GETTABLEKS                       R6 R7 K42 ["None"]
      242 SETTABLEKS                       R6 R5 K32 ["strokeThickness"]
      244 CALL                             R4 1 1
      245 SETTABLE                         R4 R2 R3
      246 JUMP                             ; [+134]
      247 NEWTABLE                         R2 4 0
      249 GETUPVAL                         R4 1
      250 GETTABLEKS                       R3 R4 K28 ["XSmall"]
      252 GETUPVAL                         R4 2
      253 DUPTABLE                         R5 K51 [{"tag", "size", "knobSize"}]
      254 LOADK                            R6 K52 ["radius-large"]
      255 SETTABLEKS                       R6 R5 K29 ["tag"]
      257 DUPTABLE                         R6 K37 [{"width", "height"}]
      258 GETTABLEKS                       R8 R0 K38 ["Size"]
      260 GETTABLEKS                       R7 R8 K39 ["Size_700"]
      262 SETTABLEKS                       R7 R6 K35 ["width"]
      264 GETTABLEKS                       R8 R0 K38 ["Size"]
      266 GETTABLEKS                       R7 R8 K53 ["Size_300"]
      268 SETTABLEKS                       R7 R6 K36 ["height"]
      270 SETTABLEKS                       R6 R5 K30 ["size"]
      272 GETUPVAL                         R6 3
      273 MOVE                             R7 R0
      274 GETUPVAL                         R9 1
      275 GETTABLEKS                       R8 R9 K28 ["XSmall"]
      277 CALL                             R6 2 1
      278 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      280 CALL                             R4 1 1
      281 SETTABLE                         R4 R2 R3
      282 GETUPVAL                         R4 1
      283 GETTABLEKS                       R3 R4 K43 ["Small"]
      285 GETUPVAL                         R4 2
      286 DUPTABLE                         R5 K51 [{"tag", "size", "knobSize"}]
      287 LOADK                            R6 K52 ["radius-large"]
      288 SETTABLEKS                       R6 R5 K29 ["tag"]
      290 DUPTABLE                         R6 K37 [{"width", "height"}]
      291 GETTABLEKS                       R8 R0 K38 ["Size"]
      293 GETTABLEKS                       R7 R8 K44 ["Size_800"]
      295 SETTABLEKS                       R7 R6 K35 ["width"]
      297 GETTABLEKS                       R8 R0 K38 ["Size"]
      299 GETTABLEKS                       R7 R8 K40 ["Size_400"]
      301 SETTABLEKS                       R7 R6 K36 ["height"]
      303 SETTABLEKS                       R6 R5 K30 ["size"]
      305 GETUPVAL                         R6 3
      306 MOVE                             R7 R0
      307 GETUPVAL                         R9 1
      308 GETTABLEKS                       R8 R9 K43 ["Small"]
      310 CALL                             R6 2 1
      311 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      313 CALL                             R4 1 1
      314 SETTABLE                         R4 R2 R3
      315 GETUPVAL                         R4 1
      316 GETTABLEKS                       R3 R4 K46 ["Medium"]
      318 GETUPVAL                         R4 2
      319 DUPTABLE                         R5 K51 [{"tag", "size", "knobSize"}]
      320 LOADK                            R6 K52 ["radius-large"]
      321 SETTABLEKS                       R6 R5 K29 ["tag"]
      323 DUPTABLE                         R6 K37 [{"width", "height"}]
      324 GETTABLEKS                       R8 R0 K38 ["Size"]
      326 GETTABLEKS                       R7 R8 K47 ["Size_1000"]
      328 SETTABLEKS                       R7 R6 K35 ["width"]
      330 GETTABLEKS                       R8 R0 K38 ["Size"]
      332 GETTABLEKS                       R7 R8 K45 ["Size_500"]
      334 SETTABLEKS                       R7 R6 K36 ["height"]
      336 SETTABLEKS                       R6 R5 K30 ["size"]
      338 GETUPVAL                         R6 3
      339 MOVE                             R7 R0
      340 GETUPVAL                         R9 1
      341 GETTABLEKS                       R8 R9 K46 ["Medium"]
      343 CALL                             R6 2 1
      344 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      346 CALL                             R4 1 1
      347 SETTABLE                         R4 R2 R3
      348 GETUPVAL                         R4 1
      349 GETTABLEKS                       R3 R4 K49 ["Large"]
      351 GETUPVAL                         R4 2
      352 DUPTABLE                         R5 K51 [{"tag", "size", "knobSize"}]
      353 LOADK                            R6 K34 ["radius-circle"]
      354 SETTABLEKS                       R6 R5 K29 ["tag"]
      356 DUPTABLE                         R6 K37 [{"width", "height"}]
      357 GETTABLEKS                       R8 R0 K38 ["Size"]
      359 GETTABLEKS                       R7 R8 K54 ["Size_1600"]
      361 SETTABLEKS                       R7 R6 K35 ["width"]
      363 GETTABLEKS                       R8 R0 K38 ["Size"]
      365 GETTABLEKS                       R7 R8 K55 ["Size_900"]
      367 SETTABLEKS                       R7 R6 K36 ["height"]
      369 SETTABLEKS                       R6 R5 K30 ["size"]
      371 GETUPVAL                         R6 3
      372 MOVE                             R7 R0
      373 GETUPVAL                         R9 1
      374 GETTABLEKS                       R8 R9 K49 ["Large"]
      376 CALL                             R6 2 1
      377 SETTABLEKS                       R6 R5 K31 ["knobSize"]
      379 CALL                             R4 1 1
      380 SETTABLE                         R4 R2 R3
      381 DUPTABLE                         R3 K58 [{"common", "sizes"}]
      382 SETTABLEKS                       R1 R3 K56 ["common"]
      384 SETTABLEKS                       R2 R3 K57 ["sizes"]
      386 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["InternalInput"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["InputSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["ControlState"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R6 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R8 K14 ["Style"]
       41 GETTABLEKS                       R6 R7 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Utility"]
       48 GETTABLEKS                       R7 R8 K16 ["Flags"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Providers"]
       55 GETTABLEKS                       R9 R10 K14 ["Style"]
       57 GETTABLEKS                       R8 R9 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K6 ["Components"]
       64 GETTABLEKS                       R10 R11 K18 ["Knob"]
       66 GETTABLEKS                       R9 R10 K19 ["getKnobSize"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 DUPCLOSURE                       R10 K21 [PROTO_1]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R11 K22 [PROTO_2]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R4
       79 RETURN                           R11 1
