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
       61 JUMP                             ; [+22]
       62 DUPTABLE                         R1 K2 [{"input"}]
       63 DUPTABLE                         R2 K26 [{"checkedStyle", "cursorRadius"}]
       64 GETTABLEKS                       R3 R0 K12 ["Color"]
       66 GETTABLEKS                       R3 R3 K27 ["ActionEmphasis"]
       68 GETTABLEKS                       R3 R3 K14 ["Background"]
       70 SETTABLEKS                       R3 R2 K8 ["checkedStyle"]
       72 GETIMPORT                        R3 K23 [UDim.new]
       74 LOADN                            R4 0
       75 GETTABLEKS                       R5 R0 K24 ["Radius"]
       77 GETTABLEKS                       R5 R5 K25 ["Circle"]
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R2 K4 ["cursorRadius"]
       82 SETTABLEKS                       R2 R1 K1 ["input"]
       84 GETUPVAL                         R3 0
       85 GETTABLEKS                       R3 R3 K0 ["FoundationToggleVisualUpdate"]
       87 JUMPIFNOT                        R3 ; [+147]
       88 NEWTABLE                         R2 4 0
       90 GETUPVAL                         R3 1
       91 GETTABLEKS                       R3 R3 K28 ["XSmall"]
       93 GETUPVAL                         R4 2
       94 DUPTABLE                         R5 K34 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
       95 DUPTABLE                         R6 K37 [{"width", "height"}]
       96 GETTABLEKS                       R7 R0 K38 ["Size"]
       98 GETTABLEKS                       R7 R7 K39 ["Size_700"]
      100 SETTABLEKS                       R7 R6 K35 ["width"]
      102 GETTABLEKS                       R7 R0 K38 ["Size"]
      104 GETTABLEKS                       R7 R7 K40 ["Size_400"]
      106 SETTABLEKS                       R7 R6 K36 ["height"]
      108 SETTABLEKS                       R6 R5 K31 ["size"]
      110 GETUPVAL                         R6 3
      111 MOVE                             R7 R0
      112 GETUPVAL                         R8 1
      113 GETTABLEKS                       R8 R8 K28 ["XSmall"]
      115 CALL                             R6 2 1
      116 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      118 GETTABLEKS                       R6 R0 K41 ["Stroke"]
      120 GETTABLEKS                       R6 R6 K42 ["None"]
      122 SETTABLEKS                       R6 R5 K33 ["strokeThickness"]
      124 CALL                             R4 1 1
      125 SETTABLE                         R4 R2 R3
      126 GETUPVAL                         R3 1
      127 GETTABLEKS                       R3 R3 K43 ["Small"]
      129 GETUPVAL                         R4 2
      130 DUPTABLE                         R5 K34 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      131 DUPTABLE                         R6 K37 [{"width", "height"}]
      132 GETTABLEKS                       R7 R0 K38 ["Size"]
      134 GETTABLEKS                       R7 R7 K44 ["Size_800"]
      136 SETTABLEKS                       R7 R6 K35 ["width"]
      138 GETTABLEKS                       R7 R0 K38 ["Size"]
      140 GETTABLEKS                       R7 R7 K45 ["Size_500"]
      142 SETTABLEKS                       R7 R6 K36 ["height"]
      144 SETTABLEKS                       R6 R5 K31 ["size"]
      146 GETUPVAL                         R6 3
      147 MOVE                             R7 R0
      148 GETUPVAL                         R8 1
      149 GETTABLEKS                       R8 R8 K43 ["Small"]
      151 CALL                             R6 2 1
      152 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      154 GETTABLEKS                       R6 R0 K41 ["Stroke"]
      156 GETTABLEKS                       R6 R6 K42 ["None"]
      158 SETTABLEKS                       R6 R5 K33 ["strokeThickness"]
      160 CALL                             R4 1 1
      161 SETTABLE                         R4 R2 R3
      162 GETUPVAL                         R3 1
      163 GETTABLEKS                       R3 R3 K46 ["Medium"]
      165 GETUPVAL                         R4 2
      166 DUPTABLE                         R5 K34 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      167 DUPTABLE                         R6 K37 [{"width", "height"}]
      168 GETTABLEKS                       R7 R0 K38 ["Size"]
      170 GETTABLEKS                       R7 R7 K47 ["Size_1000"]
      172 SETTABLEKS                       R7 R6 K35 ["width"]
      174 GETTABLEKS                       R7 R0 K38 ["Size"]
      176 GETTABLEKS                       R7 R7 K48 ["Size_600"]
      178 SETTABLEKS                       R7 R6 K36 ["height"]
      180 SETTABLEKS                       R6 R5 K31 ["size"]
      182 GETUPVAL                         R6 3
      183 MOVE                             R7 R0
      184 GETUPVAL                         R8 1
      185 GETTABLEKS                       R8 R8 K46 ["Medium"]
      187 CALL                             R6 2 1
      188 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      190 GETTABLEKS                       R6 R0 K41 ["Stroke"]
      192 GETTABLEKS                       R6 R6 K42 ["None"]
      194 SETTABLEKS                       R6 R5 K33 ["strokeThickness"]
      196 CALL                             R4 1 1
      197 SETTABLE                         R4 R2 R3
      198 GETUPVAL                         R3 1
      199 GETTABLEKS                       R3 R3 K49 ["Large"]
      201 GETUPVAL                         R4 2
      202 DUPTABLE                         R5 K34 [{["tag"] = "radius-circle", ["size"], ["knobSize"], ["strokeThickness"]}]
      203 DUPTABLE                         R6 K37 [{"width", "height"}]
      204 GETTABLEKS                       R7 R0 K38 ["Size"]
      206 GETTABLEKS                       R7 R7 K50 ["Size_1100"]
      208 SETTABLEKS                       R7 R6 K35 ["width"]
      210 GETTABLEKS                       R7 R0 K38 ["Size"]
      212 GETTABLEKS                       R7 R7 K48 ["Size_600"]
      214 SETTABLEKS                       R7 R6 K36 ["height"]
      216 SETTABLEKS                       R6 R5 K31 ["size"]
      218 GETUPVAL                         R6 3
      219 MOVE                             R7 R0
      220 GETUPVAL                         R8 1
      221 GETTABLEKS                       R8 R8 K46 ["Medium"]
      223 CALL                             R6 2 1
      224 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      226 GETTABLEKS                       R6 R0 K41 ["Stroke"]
      228 GETTABLEKS                       R6 R6 K42 ["None"]
      230 SETTABLEKS                       R6 R5 K33 ["strokeThickness"]
      232 CALL                             R4 1 1
      233 SETTABLE                         R4 R2 R3
      234 JUMP                             ; [+122]
      235 NEWTABLE                         R2 4 0
      237 GETUPVAL                         R3 1
      238 GETTABLEKS                       R3 R3 K28 ["XSmall"]
      240 GETUPVAL                         R4 2
      241 DUPTABLE                         R5 K52 [{["tag"] = "radius-large", ["size"], ["knobSize"]}]
      242 DUPTABLE                         R6 K37 [{"width", "height"}]
      243 GETTABLEKS                       R7 R0 K38 ["Size"]
      245 GETTABLEKS                       R7 R7 K39 ["Size_700"]
      247 SETTABLEKS                       R7 R6 K35 ["width"]
      249 GETTABLEKS                       R7 R0 K38 ["Size"]
      251 GETTABLEKS                       R7 R7 K53 ["Size_300"]
      253 SETTABLEKS                       R7 R6 K36 ["height"]
      255 SETTABLEKS                       R6 R5 K31 ["size"]
      257 GETUPVAL                         R6 3
      258 MOVE                             R7 R0
      259 GETUPVAL                         R8 1
      260 GETTABLEKS                       R8 R8 K28 ["XSmall"]
      262 CALL                             R6 2 1
      263 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      265 CALL                             R4 1 1
      266 SETTABLE                         R4 R2 R3
      267 GETUPVAL                         R3 1
      268 GETTABLEKS                       R3 R3 K43 ["Small"]
      270 GETUPVAL                         R4 2
      271 DUPTABLE                         R5 K52 [{["tag"] = "radius-large", ["size"], ["knobSize"]}]
      272 DUPTABLE                         R6 K37 [{"width", "height"}]
      273 GETTABLEKS                       R7 R0 K38 ["Size"]
      275 GETTABLEKS                       R7 R7 K44 ["Size_800"]
      277 SETTABLEKS                       R7 R6 K35 ["width"]
      279 GETTABLEKS                       R7 R0 K38 ["Size"]
      281 GETTABLEKS                       R7 R7 K40 ["Size_400"]
      283 SETTABLEKS                       R7 R6 K36 ["height"]
      285 SETTABLEKS                       R6 R5 K31 ["size"]
      287 GETUPVAL                         R6 3
      288 MOVE                             R7 R0
      289 GETUPVAL                         R8 1
      290 GETTABLEKS                       R8 R8 K43 ["Small"]
      292 CALL                             R6 2 1
      293 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      295 CALL                             R4 1 1
      296 SETTABLE                         R4 R2 R3
      297 GETUPVAL                         R3 1
      298 GETTABLEKS                       R3 R3 K46 ["Medium"]
      300 GETUPVAL                         R4 2
      301 DUPTABLE                         R5 K52 [{["tag"] = "radius-large", ["size"], ["knobSize"]}]
      302 DUPTABLE                         R6 K37 [{"width", "height"}]
      303 GETTABLEKS                       R7 R0 K38 ["Size"]
      305 GETTABLEKS                       R7 R7 K47 ["Size_1000"]
      307 SETTABLEKS                       R7 R6 K35 ["width"]
      309 GETTABLEKS                       R7 R0 K38 ["Size"]
      311 GETTABLEKS                       R7 R7 K45 ["Size_500"]
      313 SETTABLEKS                       R7 R6 K36 ["height"]
      315 SETTABLEKS                       R6 R5 K31 ["size"]
      317 GETUPVAL                         R6 3
      318 MOVE                             R7 R0
      319 GETUPVAL                         R8 1
      320 GETTABLEKS                       R8 R8 K46 ["Medium"]
      322 CALL                             R6 2 1
      323 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      325 CALL                             R4 1 1
      326 SETTABLE                         R4 R2 R3
      327 GETUPVAL                         R3 1
      328 GETTABLEKS                       R3 R3 K49 ["Large"]
      330 GETUPVAL                         R4 2
      331 DUPTABLE                         R5 K54 [{["tag"] = "radius-circle", ["size"], ["knobSize"]}]
      332 DUPTABLE                         R6 K37 [{"width", "height"}]
      333 GETTABLEKS                       R7 R0 K38 ["Size"]
      335 GETTABLEKS                       R7 R7 K55 ["Size_1600"]
      337 SETTABLEKS                       R7 R6 K35 ["width"]
      339 GETTABLEKS                       R7 R0 K38 ["Size"]
      341 GETTABLEKS                       R7 R7 K56 ["Size_900"]
      343 SETTABLEKS                       R7 R6 K36 ["height"]
      345 SETTABLEKS                       R6 R5 K31 ["size"]
      347 GETUPVAL                         R6 3
      348 MOVE                             R7 R0
      349 GETUPVAL                         R8 1
      350 GETTABLEKS                       R8 R8 K49 ["Large"]
      352 CALL                             R6 2 1
      353 SETTABLEKS                       R6 R5 K32 ["knobSize"]
      355 CALL                             R4 1 1
      356 SETTABLE                         R4 R2 R3
      357 DUPTABLE                         R3 K59 [{"common", "sizes"}]
      358 SETTABLEKS                       R1 R3 K57 ["common"]
      360 SETTABLEKS                       R2 R3 K58 ["sizes"]
      362 RETURN                           R3 1

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
       53 GETTABLEKS                       R8 R0 K13 ["Providers"]
       55 GETTABLEKS                       R8 R8 K14 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K18 ["Knob"]
       66 GETTABLEKS                       R9 R9 K19 ["getKnobSize"]
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
