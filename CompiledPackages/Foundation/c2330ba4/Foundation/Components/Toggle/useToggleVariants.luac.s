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
       61 JUMP                             ; [+35]
       62 DUPTABLE                         R1 K2 [{"input"}]
       63 DUPTABLE                         R2 K26 [{"checkedStyle", "cursorRadius"}]
       64 GETTABLEKS                       R5 R0 K12 ["Color"]
       66 GETTABLEKS                       R4 R5 K27 ["ActionEmphasis"]
       68 GETTABLEKS                       R3 R4 K14 ["Background"]
       70 SETTABLEKS                       R3 R2 K8 ["checkedStyle"]
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R4 R5 K28 ["FoundationInternalInputSelectedStylesAndSpacing"]
       75 JUMPIFNOT                        R4 ; [+9]
       76 GETIMPORT                        R3 K23 [UDim.new]
       78 LOADN                            R4 0
       79 GETTABLEKS                       R6 R0 K24 ["Radius"]
       81 GETTABLEKS                       R5 R6 K25 ["Circle"]
       83 CALL                             R3 2 1
       84 JUMP                             ; [+8]
       85 GETIMPORT                        R3 K23 [UDim.new]
       87 LOADN                            R4 0
       88 GETTABLEKS                       R6 R0 K24 ["Radius"]
       90 GETTABLEKS                       R5 R6 K29 ["Medium"]
       92 CALL                             R3 2 1
       93 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       95 SETTABLEKS                       R2 R1 K1 ["input"]
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R3 R4 K0 ["FoundationToggleVisualUpdate"]
      100 JUMPIFNOT                        R3 ; [+159]
      101 NEWTABLE                         R2 4 0
      103 GETUPVAL                         R4 1
      104 GETTABLEKS                       R3 R4 K30 ["XSmall"]
      106 GETUPVAL                         R4 2
      107 DUPTABLE                         R5 K35 [{"tag", "size", "knobSize", "strokeThickness"}]
      108 LOADK                            R6 K36 ["radius-circle"]
      109 SETTABLEKS                       R6 R5 K31 ["tag"]
      111 DUPTABLE                         R6 K39 [{"width", "height"}]
      112 GETTABLEKS                       R8 R0 K40 ["Size"]
      114 GETTABLEKS                       R7 R8 K41 ["Size_700"]
      116 SETTABLEKS                       R7 R6 K37 ["width"]
      118 GETTABLEKS                       R8 R0 K40 ["Size"]
      120 GETTABLEKS                       R7 R8 K42 ["Size_400"]
      122 SETTABLEKS                       R7 R6 K38 ["height"]
      124 SETTABLEKS                       R6 R5 K32 ["size"]
      126 GETUPVAL                         R6 3
      127 MOVE                             R7 R0
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R8 R9 K30 ["XSmall"]
      131 CALL                             R6 2 1
      132 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      134 GETTABLEKS                       R7 R0 K43 ["Stroke"]
      136 GETTABLEKS                       R6 R7 K44 ["None"]
      138 SETTABLEKS                       R6 R5 K34 ["strokeThickness"]
      140 CALL                             R4 1 1
      141 SETTABLE                         R4 R2 R3
      142 GETUPVAL                         R4 1
      143 GETTABLEKS                       R3 R4 K45 ["Small"]
      145 GETUPVAL                         R4 2
      146 DUPTABLE                         R5 K35 [{"tag", "size", "knobSize", "strokeThickness"}]
      147 LOADK                            R6 K36 ["radius-circle"]
      148 SETTABLEKS                       R6 R5 K31 ["tag"]
      150 DUPTABLE                         R6 K39 [{"width", "height"}]
      151 GETTABLEKS                       R8 R0 K40 ["Size"]
      153 GETTABLEKS                       R7 R8 K46 ["Size_800"]
      155 SETTABLEKS                       R7 R6 K37 ["width"]
      157 GETTABLEKS                       R8 R0 K40 ["Size"]
      159 GETTABLEKS                       R7 R8 K47 ["Size_500"]
      161 SETTABLEKS                       R7 R6 K38 ["height"]
      163 SETTABLEKS                       R6 R5 K32 ["size"]
      165 GETUPVAL                         R6 3
      166 MOVE                             R7 R0
      167 GETUPVAL                         R9 1
      168 GETTABLEKS                       R8 R9 K45 ["Small"]
      170 CALL                             R6 2 1
      171 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      173 GETTABLEKS                       R7 R0 K43 ["Stroke"]
      175 GETTABLEKS                       R6 R7 K44 ["None"]
      177 SETTABLEKS                       R6 R5 K34 ["strokeThickness"]
      179 CALL                             R4 1 1
      180 SETTABLE                         R4 R2 R3
      181 GETUPVAL                         R4 1
      182 GETTABLEKS                       R3 R4 K29 ["Medium"]
      184 GETUPVAL                         R4 2
      185 DUPTABLE                         R5 K35 [{"tag", "size", "knobSize", "strokeThickness"}]
      186 LOADK                            R6 K36 ["radius-circle"]
      187 SETTABLEKS                       R6 R5 K31 ["tag"]
      189 DUPTABLE                         R6 K39 [{"width", "height"}]
      190 GETTABLEKS                       R8 R0 K40 ["Size"]
      192 GETTABLEKS                       R7 R8 K48 ["Size_1000"]
      194 SETTABLEKS                       R7 R6 K37 ["width"]
      196 GETTABLEKS                       R8 R0 K40 ["Size"]
      198 GETTABLEKS                       R7 R8 K49 ["Size_600"]
      200 SETTABLEKS                       R7 R6 K38 ["height"]
      202 SETTABLEKS                       R6 R5 K32 ["size"]
      204 GETUPVAL                         R6 3
      205 MOVE                             R7 R0
      206 GETUPVAL                         R9 1
      207 GETTABLEKS                       R8 R9 K29 ["Medium"]
      209 CALL                             R6 2 1
      210 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      212 GETTABLEKS                       R7 R0 K43 ["Stroke"]
      214 GETTABLEKS                       R6 R7 K44 ["None"]
      216 SETTABLEKS                       R6 R5 K34 ["strokeThickness"]
      218 CALL                             R4 1 1
      219 SETTABLE                         R4 R2 R3
      220 GETUPVAL                         R4 1
      221 GETTABLEKS                       R3 R4 K50 ["Large"]
      223 GETUPVAL                         R4 2
      224 DUPTABLE                         R5 K35 [{"tag", "size", "knobSize", "strokeThickness"}]
      225 LOADK                            R6 K36 ["radius-circle"]
      226 SETTABLEKS                       R6 R5 K31 ["tag"]
      228 DUPTABLE                         R6 K39 [{"width", "height"}]
      229 GETTABLEKS                       R8 R0 K40 ["Size"]
      231 GETTABLEKS                       R7 R8 K51 ["Size_1100"]
      233 SETTABLEKS                       R7 R6 K37 ["width"]
      235 GETTABLEKS                       R8 R0 K40 ["Size"]
      237 GETTABLEKS                       R7 R8 K49 ["Size_600"]
      239 SETTABLEKS                       R7 R6 K38 ["height"]
      241 SETTABLEKS                       R6 R5 K32 ["size"]
      243 GETUPVAL                         R6 3
      244 MOVE                             R7 R0
      245 GETUPVAL                         R9 1
      246 GETTABLEKS                       R8 R9 K29 ["Medium"]
      248 CALL                             R6 2 1
      249 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      251 GETTABLEKS                       R7 R0 K43 ["Stroke"]
      253 GETTABLEKS                       R6 R7 K44 ["None"]
      255 SETTABLEKS                       R6 R5 K34 ["strokeThickness"]
      257 CALL                             R4 1 1
      258 SETTABLE                         R4 R2 R3
      259 JUMP                             ; [+134]
      260 NEWTABLE                         R2 4 0
      262 GETUPVAL                         R4 1
      263 GETTABLEKS                       R3 R4 K30 ["XSmall"]
      265 GETUPVAL                         R4 2
      266 DUPTABLE                         R5 K52 [{"tag", "size", "knobSize"}]
      267 LOADK                            R6 K53 ["radius-large"]
      268 SETTABLEKS                       R6 R5 K31 ["tag"]
      270 DUPTABLE                         R6 K39 [{"width", "height"}]
      271 GETTABLEKS                       R8 R0 K40 ["Size"]
      273 GETTABLEKS                       R7 R8 K41 ["Size_700"]
      275 SETTABLEKS                       R7 R6 K37 ["width"]
      277 GETTABLEKS                       R8 R0 K40 ["Size"]
      279 GETTABLEKS                       R7 R8 K54 ["Size_300"]
      281 SETTABLEKS                       R7 R6 K38 ["height"]
      283 SETTABLEKS                       R6 R5 K32 ["size"]
      285 GETUPVAL                         R6 3
      286 MOVE                             R7 R0
      287 GETUPVAL                         R9 1
      288 GETTABLEKS                       R8 R9 K30 ["XSmall"]
      290 CALL                             R6 2 1
      291 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      293 CALL                             R4 1 1
      294 SETTABLE                         R4 R2 R3
      295 GETUPVAL                         R4 1
      296 GETTABLEKS                       R3 R4 K45 ["Small"]
      298 GETUPVAL                         R4 2
      299 DUPTABLE                         R5 K52 [{"tag", "size", "knobSize"}]
      300 LOADK                            R6 K53 ["radius-large"]
      301 SETTABLEKS                       R6 R5 K31 ["tag"]
      303 DUPTABLE                         R6 K39 [{"width", "height"}]
      304 GETTABLEKS                       R8 R0 K40 ["Size"]
      306 GETTABLEKS                       R7 R8 K46 ["Size_800"]
      308 SETTABLEKS                       R7 R6 K37 ["width"]
      310 GETTABLEKS                       R8 R0 K40 ["Size"]
      312 GETTABLEKS                       R7 R8 K42 ["Size_400"]
      314 SETTABLEKS                       R7 R6 K38 ["height"]
      316 SETTABLEKS                       R6 R5 K32 ["size"]
      318 GETUPVAL                         R6 3
      319 MOVE                             R7 R0
      320 GETUPVAL                         R9 1
      321 GETTABLEKS                       R8 R9 K45 ["Small"]
      323 CALL                             R6 2 1
      324 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      326 CALL                             R4 1 1
      327 SETTABLE                         R4 R2 R3
      328 GETUPVAL                         R4 1
      329 GETTABLEKS                       R3 R4 K29 ["Medium"]
      331 GETUPVAL                         R4 2
      332 DUPTABLE                         R5 K52 [{"tag", "size", "knobSize"}]
      333 LOADK                            R6 K53 ["radius-large"]
      334 SETTABLEKS                       R6 R5 K31 ["tag"]
      336 DUPTABLE                         R6 K39 [{"width", "height"}]
      337 GETTABLEKS                       R8 R0 K40 ["Size"]
      339 GETTABLEKS                       R7 R8 K48 ["Size_1000"]
      341 SETTABLEKS                       R7 R6 K37 ["width"]
      343 GETTABLEKS                       R8 R0 K40 ["Size"]
      345 GETTABLEKS                       R7 R8 K47 ["Size_500"]
      347 SETTABLEKS                       R7 R6 K38 ["height"]
      349 SETTABLEKS                       R6 R5 K32 ["size"]
      351 GETUPVAL                         R6 3
      352 MOVE                             R7 R0
      353 GETUPVAL                         R9 1
      354 GETTABLEKS                       R8 R9 K29 ["Medium"]
      356 CALL                             R6 2 1
      357 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      359 CALL                             R4 1 1
      360 SETTABLE                         R4 R2 R3
      361 GETUPVAL                         R4 1
      362 GETTABLEKS                       R3 R4 K50 ["Large"]
      364 GETUPVAL                         R4 2
      365 DUPTABLE                         R5 K52 [{"tag", "size", "knobSize"}]
      366 LOADK                            R6 K36 ["radius-circle"]
      367 SETTABLEKS                       R6 R5 K31 ["tag"]
      369 DUPTABLE                         R6 K39 [{"width", "height"}]
      370 GETTABLEKS                       R8 R0 K40 ["Size"]
      372 GETTABLEKS                       R7 R8 K55 ["Size_1600"]
      374 SETTABLEKS                       R7 R6 K37 ["width"]
      376 GETTABLEKS                       R8 R0 K40 ["Size"]
      378 GETTABLEKS                       R7 R8 K56 ["Size_900"]
      380 SETTABLEKS                       R7 R6 K38 ["height"]
      382 SETTABLEKS                       R6 R5 K32 ["size"]
      384 GETUPVAL                         R6 3
      385 MOVE                             R7 R0
      386 GETUPVAL                         R9 1
      387 GETTABLEKS                       R8 R9 K50 ["Large"]
      389 CALL                             R6 2 1
      390 SETTABLEKS                       R6 R5 K33 ["knobSize"]
      392 CALL                             R4 1 1
      393 SETTABLE                         R4 R2 R3
      394 DUPTABLE                         R3 K59 [{"common", "sizes"}]
      395 SETTABLEKS                       R1 R3 K57 ["common"]
      397 SETTABLEKS                       R2 R3 K58 ["sizes"]
      399 RETURN                           R3 1

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
       53 GETTABLEKS                       R10 R0 K6 ["Components"]
       55 GETTABLEKS                       R9 R10 K17 ["Knob"]
       57 GETTABLEKS                       R8 R9 K18 ["getKnobSize"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K13 ["Providers"]
       64 GETTABLEKS                       R10 R11 K14 ["Style"]
       66 GETTABLEKS                       R9 R10 K19 ["VariantsContext"]
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
