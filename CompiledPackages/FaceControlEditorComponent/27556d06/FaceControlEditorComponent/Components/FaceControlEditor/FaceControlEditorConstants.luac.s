PROTO_0:
        0 DUPTABLE                         R1 K6 [{"currentValue", "defaultValue", "position", "rotation", "customWidth", "customHeight"}]
        1 GETTABLEKS                       R2 R0 K0 ["currentValue"]
        3 SETTABLEKS                       R2 R1 K0 ["currentValue"]
        5 GETTABLEKS                       R2 R0 K1 ["defaultValue"]
        7 SETTABLEKS                       R2 R1 K1 ["defaultValue"]
        9 GETIMPORT                        R2 K9 [UDim2.fromScale]
       11 GETTABLEKS                       R4 R0 K2 ["position"]
       13 GETTABLEKS                       R4 R4 K10 ["X"]
       15 GETTABLEKS                       R4 R4 K11 ["Offset"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K12 ["ASPECT_RATIO_SCALE_WIDTH"]
       20 DIV                              R3 R4 R5
       21 GETTABLEKS                       R5 R0 K2 ["position"]
       23 GETTABLEKS                       R5 R5 K13 ["Y"]
       25 GETTABLEKS                       R5 R5 K11 ["Offset"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K14 ["ASPECT_RATIO_SCALE_HEIGHT"]
       30 DIV                              R4 R5 R6
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R1 K2 ["position"]
       34 GETTABLEKS                       R2 R0 K3 ["rotation"]
       36 SETTABLEKS                       R2 R1 K3 ["rotation"]
       38 GETTABLEKS                       R2 R0 K4 ["customWidth"]
       40 JUMPIF                           R2 ; [+3]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K15 ["SLIDER_DEFAULT_WIDTH"]
       44 SETTABLEKS                       R2 R1 K4 ["customWidth"]
       46 GETTABLEKS                       R2 R0 K5 ["customHeight"]
       48 SETTABLEKS                       R2 R1 K5 ["customHeight"]
       50 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K8 [{"currentValue", "defaultValue", "position", "length", "minX", "maxX", "minY", "maxY"}]
        1 GETTABLEKS                       R2 R0 K0 ["currentValue"]
        3 SETTABLEKS                       R2 R1 K0 ["currentValue"]
        5 GETTABLEKS                       R2 R0 K1 ["defaultValue"]
        7 SETTABLEKS                       R2 R1 K1 ["defaultValue"]
        9 GETIMPORT                        R2 K11 [UDim2.fromScale]
       11 GETTABLEKS                       R4 R0 K2 ["position"]
       13 GETTABLEKS                       R4 R4 K12 ["X"]
       15 GETTABLEKS                       R4 R4 K13 ["Offset"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K14 ["ASPECT_RATIO_SCALE_WIDTH"]
       20 DIV                              R3 R4 R5
       21 GETTABLEKS                       R5 R0 K2 ["position"]
       23 GETTABLEKS                       R5 R5 K15 ["Y"]
       25 GETTABLEKS                       R5 R5 K13 ["Offset"]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K16 ["ASPECT_RATIO_SCALE_HEIGHT"]
       30 DIV                              R4 R5 R6
       31 CALL                             R2 2 1
       32 SETTABLEKS                       R2 R1 K2 ["position"]
       34 GETTABLEKS                       R3 R0 K3 ["length"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K14 ["ASPECT_RATIO_SCALE_WIDTH"]
       39 DIV                              R2 R3 R4
       40 SETTABLEKS                       R2 R1 K3 ["length"]
       42 GETTABLEKS                       R2 R0 K4 ["minX"]
       44 SETTABLEKS                       R2 R1 K4 ["minX"]
       46 GETTABLEKS                       R2 R0 K5 ["maxX"]
       48 SETTABLEKS                       R2 R1 K5 ["maxX"]
       50 GETTABLEKS                       R2 R0 K6 ["minY"]
       52 SETTABLEKS                       R2 R1 K6 ["minY"]
       54 GETTABLEKS                       R2 R0 K7 ["maxY"]
       56 SETTABLEKS                       R2 R1 K7 ["maxY"]
       58 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 NEWTABLE                         R1 64 0
        5 LOADK                            R2 K0 ["LeftBrowLowerer"]
        6 SETTABLEKS                       R2 R1 K1 ["LEFT_BROW_LOWERER"]
        8 LOADK                            R2 K2 ["RightBrowLowerer"]
        9 SETTABLEKS                       R2 R1 K3 ["RIGHT_BROW_LOWERER"]
       11 LOADK                            R2 K4 ["LeftOuterBrowRaiser"]
       12 SETTABLEKS                       R2 R1 K5 ["LEFT_OUTER_BROW_RAISER"]
       14 LOADK                            R2 K6 ["RightOuterBrowRaiser"]
       15 SETTABLEKS                       R2 R1 K7 ["RIGHT_OUTER_BROW_RAISER"]
       17 LOADK                            R2 K8 ["LeftInnerBrowRaiser"]
       18 SETTABLEKS                       R2 R1 K9 ["LEFT_INNER_BROW_RAISER"]
       20 LOADK                            R2 K10 ["RightInnerBrowRaiser"]
       21 SETTABLEKS                       R2 R1 K11 ["RIGHT_INNER_BROW_RAISER"]
       23 LOADK                            R2 K12 ["LeftEyeLid"]
       24 SETTABLEKS                       R2 R1 K13 ["LEFT_EYE_LID"]
       26 LOADK                            R2 K14 ["RightEyeLid"]
       27 SETTABLEKS                       R2 R1 K15 ["RIGHT_EYE_LID"]
       29 LOADK                            R2 K16 ["LeftNoseWrinkler"]
       30 SETTABLEKS                       R2 R1 K17 ["LEFT_NOSE_WRINKLER"]
       32 LOADK                            R2 K18 ["RightNoseWrinkler"]
       33 SETTABLEKS                       R2 R1 K19 ["RIGHT_NOSE_WRINKLER"]
       35 LOADK                            R2 K20 ["LeftLipCornerPuller"]
       36 SETTABLEKS                       R2 R1 K21 ["LEFT_LIP_CORNER_PULLER"]
       38 LOADK                            R2 K22 ["RightLipCornerPuller"]
       39 SETTABLEKS                       R2 R1 K23 ["RIGHT_LIP_CORNER_PULLER"]
       41 LOADK                            R2 K24 ["LeftLipCornerDown"]
       42 SETTABLEKS                       R2 R1 K25 ["LEFT_LIP_CORNER_DOWN"]
       44 LOADK                            R2 K26 ["RightLipCornerDown"]
       45 SETTABLEKS                       R2 R1 K27 ["RIGHT_LIP_CORNER_DOWN"]
       47 LOADK                            R2 K28 ["LeftLowerLipDepressor"]
       48 SETTABLEKS                       R2 R1 K29 ["LEFT_LOWER_LIP_DEPRESSOR"]
       50 LOADK                            R2 K30 ["RightLowerLipDepressor"]
       51 SETTABLEKS                       R2 R1 K31 ["RIGHT_LOWER_LIP_DEPRESSOR"]
       53 LOADK                            R2 K32 ["LeftUpperLipRaiser"]
       54 SETTABLEKS                       R2 R1 K33 ["LEFT_UPPER_LIP_RAISER"]
       56 LOADK                            R2 K34 ["RightUpperLipRaiser"]
       57 SETTABLEKS                       R2 R1 K35 ["RIGHT_UPPER_LIP_RAISER"]
       59 LOADK                            R2 K36 ["LeftCheekPuff"]
       60 SETTABLEKS                       R2 R1 K37 ["LEFT_CHEEK_PUFF"]
       62 LOADK                            R2 K38 ["RightCheekPuff"]
       63 SETTABLEKS                       R2 R1 K39 ["RIGHT_CHEEK_PUFF"]
       65 LOADK                            R2 K40 ["LeftCheekRaiser"]
       66 SETTABLEKS                       R2 R1 K41 ["LEFT_CHEEK_RAISER"]
       68 LOADK                            R2 K42 ["RightCheekRaiser"]
       69 SETTABLEKS                       R2 R1 K43 ["RIGHT_CHEEK_RAISER"]
       71 LOADK                            R2 K44 ["LeftDimpler"]
       72 SETTABLEKS                       R2 R1 K45 ["LEFT_DIMPLER"]
       74 LOADK                            R2 K46 ["RightDimpler"]
       75 SETTABLEKS                       R2 R1 K47 ["RIGHT_DIMPLER"]
       77 LOADK                            R2 K48 ["LeftLipStretcher"]
       78 SETTABLEKS                       R2 R1 K49 ["LEFT_LIP_STRETCHER"]
       80 LOADK                            R2 K50 ["RightLipStretcher"]
       81 SETTABLEKS                       R2 R1 K51 ["RIGHT_LIP_STRETCHER"]
       83 LOADK                            R2 K52 ["Mouth"]
       84 SETTABLEKS                       R2 R1 K53 ["MOUTH"]
       86 LOADK                            R2 K54 ["LipsTogether"]
       87 SETTABLEKS                       R2 R1 K55 ["LIPS_TOGETHER"]
       89 LOADK                            R2 K56 ["ChinRaiser"]
       90 SETTABLEKS                       R2 R1 K57 ["CHIN_RAISER"]
       92 LOADK                            R2 K58 ["ChinRaiserUpperLip"]
       93 SETTABLEKS                       R2 R1 K59 ["CHIN_RAISER_UPPER_LIP"]
       95 LOADK                            R2 K60 ["Corrugator"]
       96 SETTABLEKS                       R2 R1 K61 ["CORRUGATOR"]
       98 LOADK                            R2 K62 ["Jaw"]
       99 SETTABLEKS                       R2 R1 K63 ["JAW"]
      101 LOADK                            R2 K64 ["JawDrop"]
      102 SETTABLEKS                       R2 R1 K65 ["JAW_DROP"]
      104 LOADK                            R2 K66 ["Tongue"]
      105 SETTABLEKS                       R2 R1 K67 ["TONGUE"]
      107 LOADK                            R2 K68 ["TongueOut"]
      108 SETTABLEKS                       R2 R1 K69 ["TONGUE_OUT"]
      110 LOADK                            R2 K70 ["Pucker"]
      111 SETTABLEKS                       R2 R1 K71 ["PUCKER"]
      113 LOADK                            R2 K72 ["LipPresser"]
      114 SETTABLEKS                       R2 R1 K73 ["LIP_PRESSER"]
      116 LOADK                            R2 K74 ["UpperLipSuck"]
      117 SETTABLEKS                       R2 R1 K75 ["UPPER_LIP_SUCK"]
      119 LOADK                            R2 K76 ["LowerLipSuck"]
      120 SETTABLEKS                       R2 R1 K77 ["LOWER_LIP_SUCK"]
      122 LOADK                            R2 K78 ["Funneler"]
      123 SETTABLEKS                       R2 R1 K79 ["FUNNELER"]
      125 LOADK                            R2 K80 ["FlatPucker"]
      126 SETTABLEKS                       R2 R1 K81 ["FLAT_PUCKER"]
      128 SETTABLEKS                       R1 R0 K82 ["NAMES"]
      130 LOADN                            R1 94
      131 SETTABLEKS                       R1 R0 K83 ["FACE_CONTROLS_EDITOR_FACE_FRONT_DIAGRAM_ORIGINAL_WIDTH"]
      133 LOADN                            R1 94
      134 SETTABLEKS                       R1 R0 K84 ["FACE_CONTROLS_EDITOR_FACE_FRONT_DIAGRAM_ORIGINAL_HEIGHT"]
      136 LOADN                            R1 200
      137 SETTABLEKS                       R1 R0 K85 ["FACE_CONTROLS_EDITOR_FACE_SIDE_DIAGRAM_ORIGINAL_HEIGHT"]
      139 LOADN                            R1 200
      140 SETTABLEKS                       R1 R0 K86 ["FACE_CONTROLS_EDITOR_ORIGINAL_WIDTH"]
      142 LOADN                            R1 40
      143 SETTABLEKS                       R1 R0 K87 ["FACE_CONTROLS_EDITOR_TOGGLES_CONTAINER_HEIGHT"]
      145 LOADN                            R1 20
      146 SETTABLEKS                       R1 R0 K88 ["FACE_CONTROLS_EDITOR_SPACING_BETWEEN_DIAGRAMS"]
      148 LOADN                            R1 10
      149 SETTABLEKS                       R1 R0 K89 ["SLIDER_DEFAULT_HEIGHT"]
      151 LOADN                            R1 35
      152 SETTABLEKS                       R1 R0 K90 ["SLIDER_DEFAULT_WIDTH"]
      154 LOADN                            R1 94
      155 SETTABLEKS                       R1 R0 K91 ["ASPECT_RATIO_SCALE_HEIGHT"]
      157 LOADN                            R1 94
      158 SETTABLEKS                       R1 R0 K92 ["ASPECT_RATIO_SCALE_WIDTH"]
      160 DUPCLOSURE                       R1 K93 [PROTO_0]
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R1 R0 K94 ["scaleFaceControlMapping"]
      164 DUPCLOSURE                       R1 K95 [PROTO_1]
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R1 R0 K96 ["scaleDragboxMapping"]
      168 DUPTABLE                         R1 K97 [{"ChinRaiserUpperLip", "ChinRaiser", "LipsTogether", "Mouth", "LeftCheekPuff", "LeftDimpler", "LeftLipCornerDown", "LeftLowerLipDepressor", "LeftLipCornerPuller", "LeftLipStretcher", "LeftUpperLipRaiser", "RightCheekPuff", "RightDimpler", "RightLipCornerDown", "RightLowerLipDepressor", "RightLipCornerPuller", "RightLipStretcher", "RightUpperLipRaiser", "Corrugator", "LeftBrowLowerer", "LeftOuterBrowRaiser", "LeftNoseWrinkler", "LeftInnerBrowRaiser", "RightBrowLowerer", "RightOuterBrowRaiser", "RightInnerBrowRaiser", "RightNoseWrinkler", "LeftCheekRaiser", "LeftEyeLid", "RightCheekRaiser", "RightEyeLid"}]
      169 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      171 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      172 LOADN                            R4 0
      173 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      175 LOADN                            R4 0
      176 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      178 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      180 LOADN                            R5 170
      181 LOADN                            R6 49
      182 CALL                             R4 2 1
      183 SETTABLEKS                       R4 R3 K100 ["position"]
      185 LOADN                            R4 166
      186 SETTABLEKS                       R4 R3 K101 ["rotation"]
      188 CALL                             R2 1 1
      189 SETTABLEKS                       R2 R1 K58 ["ChinRaiserUpperLip"]
      191 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      193 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      194 LOADN                            R4 0
      195 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      197 LOADN                            R4 0
      198 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      200 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      202 LOADN                            R5 150
      203 LOADN                            R6 55
      204 CALL                             R4 2 1
      205 SETTABLEKS                       R4 R3 K100 ["position"]
      207 LOADN                            R4 166
      208 SETTABLEKS                       R4 R3 K101 ["rotation"]
      210 CALL                             R2 1 1
      211 SETTABLEKS                       R2 R1 K56 ["ChinRaiser"]
      213 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      215 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      216 LOADN                            R4 0
      217 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      219 LOADN                            R4 0
      220 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      222 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      224 LOADN                            R5 165
      225 LOADN                            R6 240
      226 CALL                             R4 2 1
      227 SETTABLEKS                       R4 R3 K100 ["position"]
      229 LOADN                            R4 90
      230 SETTABLEKS                       R4 R3 K101 ["rotation"]
      232 LOADN                            R4 20
      233 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      235 CALL                             R2 1 1
      236 SETTABLEKS                       R2 R1 K54 ["LipsTogether"]
      238 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      240 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      241 LOADK                            R4 K108 [0.5]
      242 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      244 LOADK                            R4 K108 [0.5]
      245 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      247 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      249 LOADN                            R5 120
      250 LOADN                            R6 2
      251 CALL                             R4 2 1
      252 SETTABLEKS                       R4 R3 K100 ["position"]
      254 LOADN                            R4 0
      255 SETTABLEKS                       R4 R3 K101 ["rotation"]
      257 LOADN                            R4 120
      258 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      260 CALL                             R2 1 1
      261 SETTABLEKS                       R2 R1 K52 ["Mouth"]
      263 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      265 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      266 LOADN                            R4 0
      267 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      269 LOADN                            R4 0
      270 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      272 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      274 LOADN                            R5 4
      275 LOADN                            R6 229
      276 CALL                             R4 2 1
      277 SETTABLEKS                       R4 R3 K100 ["position"]
      279 LOADN                            R4 0
      280 SETTABLEKS                       R4 R3 K101 ["rotation"]
      282 CALL                             R2 1 1
      283 SETTABLEKS                       R2 R1 K36 ["LeftCheekPuff"]
      285 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      287 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      288 LOADN                            R4 0
      289 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      291 LOADN                            R4 0
      292 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      294 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      296 LOADN                            R5 255
      297 LOADN                            R6 250
      298 CALL                             R4 2 1
      299 SETTABLEKS                       R4 R3 K100 ["position"]
      301 LOADN                            R4 0
      302 SETTABLEKS                       R4 R3 K101 ["rotation"]
      304 CALL                             R2 1 1
      305 SETTABLEKS                       R2 R1 K44 ["LeftDimpler"]
      307 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      309 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      310 LOADN                            R4 0
      311 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      313 LOADN                            R4 0
      314 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      316 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      318 LOADN                            R5 226
      319 LOADN                            R6 45
      320 CALL                             R4 2 1
      321 SETTABLEKS                       R4 R3 K100 ["position"]
      323 LOADN                            R4 55
      324 SETTABLEKS                       R4 R3 K101 ["rotation"]
      326 CALL                             R2 1 1
      327 SETTABLEKS                       R2 R1 K24 ["LeftLipCornerDown"]
      329 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      331 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      332 LOADN                            R4 0
      333 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      335 LOADN                            R4 0
      336 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      338 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      340 LOADN                            R5 195
      341 LOADN                            R6 39
      342 CALL                             R4 2 1
      343 SETTABLEKS                       R4 R3 K100 ["position"]
      345 LOADN                            R4 65
      346 SETTABLEKS                       R4 R3 K101 ["rotation"]
      348 CALL                             R2 1 1
      349 SETTABLEKS                       R2 R1 K28 ["LeftLowerLipDepressor"]
      351 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      353 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      354 LOADN                            R4 0
      355 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      357 LOADN                            R4 0
      358 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      360 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      362 LOADN                            R5 220
      363 LOADN                            R6 232
      364 CALL                             R4 2 1
      365 SETTABLEKS                       R4 R3 K100 ["position"]
      367 LOADN                            R4 206
      368 SETTABLEKS                       R4 R3 K101 ["rotation"]
      370 CALL                             R2 1 1
      371 SETTABLEKS                       R2 R1 K20 ["LeftLipCornerPuller"]
      373 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      375 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      376 LOADN                            R4 0
      377 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      379 LOADN                            R4 0
      380 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      382 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      384 LOADN                            R5 240
      385 LOADN                            R6 14
      386 CALL                             R4 2 1
      387 SETTABLEKS                       R4 R3 K100 ["position"]
      389 LOADN                            R4 0
      390 SETTABLEKS                       R4 R3 K101 ["rotation"]
      392 CALL                             R2 1 1
      393 SETTABLEKS                       R2 R1 K48 ["LeftLipStretcher"]
      395 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      397 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      398 LOADN                            R4 0
      399 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      401 LOADN                            R4 0
      402 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      404 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      406 LOADN                            R5 200
      407 LOADN                            R6 220
      408 CALL                             R4 2 1
      409 SETTABLEKS                       R4 R3 K100 ["position"]
      411 LOADN                            R4 191
      412 SETTABLEKS                       R4 R3 K101 ["rotation"]
      414 CALL                             R2 1 1
      415 SETTABLEKS                       R2 R1 K32 ["LeftUpperLipRaiser"]
      417 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      419 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      420 LOADN                            R4 0
      421 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      423 LOADN                            R4 0
      424 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      426 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      428 LOADN                            R5 60
      429 LOADN                            R6 229
      430 CALL                             R4 2 1
      431 SETTABLEKS                       R4 R3 K100 ["position"]
      433 LOADN                            R4 180
      434 SETTABLEKS                       R4 R3 K101 ["rotation"]
      436 CALL                             R2 1 1
      437 SETTABLEKS                       R2 R1 K38 ["RightCheekPuff"]
      439 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      441 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      442 LOADN                            R4 0
      443 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      445 LOADN                            R4 0
      446 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      448 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      450 LOADN                            R5 65
      451 LOADN                            R6 250
      452 CALL                             R4 2 1
      453 SETTABLEKS                       R4 R3 K100 ["position"]
      455 LOADN                            R4 180
      456 SETTABLEKS                       R4 R3 K101 ["rotation"]
      458 CALL                             R2 1 1
      459 SETTABLEKS                       R2 R1 K46 ["RightDimpler"]
      461 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      463 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      464 LOADN                            R4 0
      465 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      467 LOADN                            R4 0
      468 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      470 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      472 LOADN                            R5 95
      473 LOADN                            R6 45
      474 CALL                             R4 2 1
      475 SETTABLEKS                       R4 R3 K100 ["position"]
      477 LOADN                            R4 125
      478 SETTABLEKS                       R4 R3 K101 ["rotation"]
      480 CALL                             R2 1 1
      481 SETTABLEKS                       R2 R1 K26 ["RightLipCornerDown"]
      483 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      485 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      486 LOADN                            R4 0
      487 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      489 LOADN                            R4 0
      490 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      492 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      494 LOADN                            R5 125
      495 LOADN                            R6 39
      496 CALL                             R4 2 1
      497 SETTABLEKS                       R4 R3 K100 ["position"]
      499 LOADN                            R4 114
      500 SETTABLEKS                       R4 R3 K101 ["rotation"]
      502 CALL                             R2 1 1
      503 SETTABLEKS                       R2 R1 K30 ["RightLowerLipDepressor"]
      505 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      507 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      508 LOADN                            R4 0
      509 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      511 LOADN                            R4 0
      512 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      514 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      516 LOADN                            R5 100
      517 LOADN                            R6 232
      518 CALL                             R4 2 1
      519 SETTABLEKS                       R4 R3 K100 ["position"]
      521 LOADN                            R4 126
      522 SETTABLEKS                       R4 R3 K101 ["rotation"]
      524 CALL                             R2 1 1
      525 SETTABLEKS                       R2 R1 K22 ["RightLipCornerPuller"]
      527 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      529 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      530 LOADN                            R4 0
      531 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      533 LOADN                            R4 0
      534 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      536 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      538 LOADN                            R5 85
      539 LOADN                            R6 14
      540 CALL                             R4 2 1
      541 SETTABLEKS                       R4 R3 K100 ["position"]
      543 LOADN                            R4 180
      544 SETTABLEKS                       R4 R3 K101 ["rotation"]
      546 CALL                             R2 1 1
      547 SETTABLEKS                       R2 R1 K50 ["RightLipStretcher"]
      549 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      551 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      552 LOADN                            R4 0
      553 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      555 LOADN                            R4 0
      556 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      558 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      560 LOADN                            R5 120
      561 LOADN                            R6 220
      562 CALL                             R4 2 1
      563 SETTABLEKS                       R4 R3 K100 ["position"]
      565 LOADN                            R4 146
      566 SETTABLEKS                       R4 R3 K101 ["rotation"]
      568 CALL                             R2 1 1
      569 SETTABLEKS                       R2 R1 K34 ["RightUpperLipRaiser"]
      571 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      573 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      574 LOADN                            R4 0
      575 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      577 LOADN                            R4 0
      578 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      580 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      582 LOADN                            R5 168
      583 LOADN                            R6 100
      584 CALL                             R4 2 1
      585 SETTABLEKS                       R4 R3 K100 ["position"]
      587 LOADN                            R4 0
      588 SETTABLEKS                       R4 R3 K101 ["rotation"]
      590 LOADN                            R4 20
      591 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      593 CALL                             R2 1 1
      594 SETTABLEKS                       R2 R1 K60 ["Corrugator"]
      596 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      598 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      599 LOADN                            R4 0
      600 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      602 LOADN                            R4 0
      603 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      605 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      607 LOADN                            R5 195
      608 LOADN                            R6 97
      609 CALL                             R4 2 1
      610 SETTABLEKS                       R4 R3 K100 ["position"]
      612 LOADN                            R4 100
      613 SETTABLEKS                       R4 R3 K101 ["rotation"]
      615 LOADN                            R4 20
      616 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      618 CALL                             R2 1 1
      619 SETTABLEKS                       R2 R1 K0 ["LeftBrowLowerer"]
      621 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      623 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      624 LOADN                            R4 0
      625 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      627 LOADN                            R4 0
      628 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      630 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      632 LOADN                            R5 225
      633 LOADN                            R6 55
      634 CALL                             R4 2 1
      635 SETTABLEKS                       R4 R3 K100 ["position"]
      637 LOADN                            R4 186
      638 SETTABLEKS                       R4 R3 K101 ["rotation"]
      640 CALL                             R2 1 1
      641 SETTABLEKS                       R2 R1 K4 ["LeftOuterBrowRaiser"]
      643 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      645 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      646 LOADN                            R4 0
      647 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      649 LOADN                            R4 0
      650 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      652 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      654 LOADN                            R5 175
      655 LOADN                            R6 185
      656 CALL                             R4 2 1
      657 SETTABLEKS                       R4 R3 K100 ["position"]
      659 LOADN                            R4 166
      660 SETTABLEKS                       R4 R3 K101 ["rotation"]
      662 CALL                             R2 1 1
      663 SETTABLEKS                       R2 R1 K16 ["LeftNoseWrinkler"]
      665 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      667 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      668 LOADN                            R4 0
      669 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      671 LOADN                            R4 0
      672 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      674 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      676 LOADN                            R5 180
      677 LOADN                            R6 55
      678 CALL                             R4 2 1
      679 SETTABLEKS                       R4 R3 K100 ["position"]
      681 LOADN                            R4 166
      682 SETTABLEKS                       R4 R3 K101 ["rotation"]
      684 CALL                             R2 1 1
      685 SETTABLEKS                       R2 R1 K8 ["LeftInnerBrowRaiser"]
      687 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      689 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      690 LOADN                            R4 0
      691 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      693 LOADN                            R4 0
      694 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      696 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      698 LOADN                            R5 137
      699 LOADN                            R6 97
      700 CALL                             R4 2 1
      701 SETTABLEKS                       R4 R3 K100 ["position"]
      703 LOADN                            R4 80
      704 SETTABLEKS                       R4 R3 K101 ["rotation"]
      706 LOADN                            R4 20
      707 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      709 CALL                             R2 1 1
      710 SETTABLEKS                       R2 R1 K2 ["RightBrowLowerer"]
      712 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      714 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      715 LOADN                            R4 0
      716 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      718 LOADN                            R4 0
      719 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      721 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      723 LOADN                            R5 95
      724 LOADN                            R6 55
      725 CALL                             R4 2 1
      726 SETTABLEKS                       R4 R3 K100 ["position"]
      728 LOADN                            R4 146
      729 SETTABLEKS                       R4 R3 K101 ["rotation"]
      731 CALL                             R2 1 1
      732 SETTABLEKS                       R2 R1 K6 ["RightOuterBrowRaiser"]
      734 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      736 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      737 LOADN                            R4 0
      738 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      740 LOADN                            R4 0
      741 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      743 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      745 LOADN                            R5 142
      746 LOADN                            R6 55
      747 CALL                             R4 2 1
      748 SETTABLEKS                       R4 R3 K100 ["position"]
      750 LOADN                            R4 166
      751 SETTABLEKS                       R4 R3 K101 ["rotation"]
      753 CALL                             R2 1 1
      754 SETTABLEKS                       R2 R1 K10 ["RightInnerBrowRaiser"]
      756 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      758 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      759 LOADN                            R4 0
      760 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      762 LOADN                            R4 0
      763 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      765 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      767 LOADN                            R5 147
      768 LOADN                            R6 185
      769 CALL                             R4 2 1
      770 SETTABLEKS                       R4 R3 K100 ["position"]
      772 LOADN                            R4 166
      773 SETTABLEKS                       R4 R3 K101 ["rotation"]
      775 CALL                             R2 1 1
      776 SETTABLEKS                       R2 R1 K18 ["RightNoseWrinkler"]
      778 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      780 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      781 LOADN                            R4 0
      782 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      784 LOADN                            R4 0
      785 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      787 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      789 LOADN                            R5 255
      790 LOADN                            R6 175
      791 CALL                             R4 2 1
      792 SETTABLEKS                       R4 R3 K100 ["position"]
      794 LOADN                            R4 141
      795 SETTABLEKS                       R4 R3 K101 ["rotation"]
      797 CALL                             R2 1 1
      798 SETTABLEKS                       R2 R1 K40 ["LeftCheekRaiser"]
      800 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      802 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      803 LOADK                            R4 K108 [0.5]
      804 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      806 LOADK                            R4 K108 [0.5]
      807 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      809 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      811 LOADN                            R5 185
      812 LOADN                            R6 145
      813 CALL                             R4 2 1
      814 SETTABLEKS                       R4 R3 K100 ["position"]
      816 LOADN                            R4 90
      817 SETTABLEKS                       R4 R3 K101 ["rotation"]
      819 LOADN                            R4 30
      820 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      822 CALL                             R2 1 1
      823 SETTABLEKS                       R2 R1 K12 ["LeftEyeLid"]
      825 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      827 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      828 LOADN                            R4 0
      829 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      831 LOADN                            R4 0
      832 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      834 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      836 LOADN                            R5 65
      837 LOADN                            R6 175
      838 CALL                             R4 2 1
      839 SETTABLEKS                       R4 R3 K100 ["position"]
      841 LOADN                            R4 194
      842 SETTABLEKS                       R4 R3 K101 ["rotation"]
      844 CALL                             R2 1 1
      845 SETTABLEKS                       R2 R1 K42 ["RightCheekRaiser"]
      847 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      849 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      850 LOADK                            R4 K108 [0.5]
      851 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      853 LOADK                            R4 K108 [0.5]
      854 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      856 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      858 LOADN                            R5 135
      859 LOADN                            R6 145
      860 CALL                             R4 2 1
      861 SETTABLEKS                       R4 R3 K100 ["position"]
      863 LOADN                            R4 90
      864 SETTABLEKS                       R4 R3 K101 ["rotation"]
      866 LOADN                            R4 30
      867 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      869 CALL                             R2 1 1
      870 SETTABLEKS                       R2 R1 K14 ["RightEyeLid"]
      872 SETTABLEKS                       R1 R0 K109 ["frontViewControls"]
      874 DUPTABLE                         R1 K110 [{"FlatPucker", "Funneler", "LowerLipSuck", "LipPresser", "Pucker", "UpperLipSuck", "JawDrop", "Jaw", "Tongue", "TongueOut"}]
      875 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      877 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      878 LOADN                            R4 0
      879 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      881 LOADN                            R4 0
      882 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      884 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      886 LOADN                            R5 70
      887 LOADN                            R6 4
      888 CALL                             R4 2 1
      889 SETTABLEKS                       R4 R3 K100 ["position"]
      891 LOADN                            R4 0
      892 SETTABLEKS                       R4 R3 K101 ["rotation"]
      894 LOADN                            R4 50
      895 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      897 CALL                             R2 1 1
      898 SETTABLEKS                       R2 R1 K80 ["FlatPucker"]
      900 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      902 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      903 LOADN                            R4 0
      904 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      906 LOADN                            R4 0
      907 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      909 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      911 LOADN                            R5 70
      912 LOADN                            R6 200
      913 CALL                             R4 2 1
      914 SETTABLEKS                       R4 R3 K100 ["position"]
      916 LOADN                            R4 0
      917 SETTABLEKS                       R4 R3 K101 ["rotation"]
      919 LOADN                            R4 50
      920 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      922 CALL                             R2 1 1
      923 SETTABLEKS                       R2 R1 K78 ["Funneler"]
      925 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      927 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
      928 LOADN                            R4 0
      929 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      931 LOADN                            R4 0
      932 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      934 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      936 LOADN                            R5 140
      937 LOADN                            R6 24
      938 CALL                             R4 2 1
      939 SETTABLEKS                       R4 R3 K100 ["position"]
      941 LOADN                            R4 231
      942 SETTABLEKS                       R4 R3 K101 ["rotation"]
      944 CALL                             R2 1 1
      945 SETTABLEKS                       R2 R1 K76 ["LowerLipSuck"]
      947 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      949 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      950 LOADN                            R4 0
      951 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      953 LOADN                            R4 0
      954 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      956 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      958 LOADN                            R5 140
      959 LOADN                            R6 230
      960 CALL                             R4 2 1
      961 SETTABLEKS                       R4 R3 K100 ["position"]
      963 LOADN                            R4 166
      964 SETTABLEKS                       R4 R3 K101 ["rotation"]
      966 LOADN                            R4 20
      967 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      969 CALL                             R2 1 1
      970 SETTABLEKS                       R2 R1 K72 ["LipPresser"]
      972 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      974 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
      975 LOADN                            R4 0
      976 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      978 LOADN                            R4 0
      979 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
      981 GETIMPORT                        R4 K105 [UDim2.fromOffset]
      983 LOADN                            R5 70
      984 LOADN                            R6 230
      985 CALL                             R4 2 1
      986 SETTABLEKS                       R4 R3 K100 ["position"]
      988 LOADN                            R4 0
      989 SETTABLEKS                       R4 R3 K101 ["rotation"]
      991 LOADN                            R4 50
      992 SETTABLEKS                       R4 R3 K106 ["customWidth"]
      994 CALL                             R2 1 1
      995 SETTABLEKS                       R2 R1 K70 ["Pucker"]
      997 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      999 DUPTABLE                         R3 K102 [{"currentValue", "defaultValue", "position", "rotation"}]
     1000 LOADN                            R4 0
     1001 SETTABLEKS                       R4 R3 K98 ["currentValue"]
     1003 LOADN                            R4 0
     1004 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
     1006 GETIMPORT                        R4 K105 [UDim2.fromOffset]
     1008 LOADN                            R5 140
     1009 LOADN                            R6 185
     1010 CALL                             R4 2 1
     1011 SETTABLEKS                       R4 R3 K100 ["position"]
     1013 LOADN                            R4 36
     1014 SETTABLEKS                       R4 R3 K101 ["rotation"]
     1016 CALL                             R2 1 1
     1017 SETTABLEKS                       R2 R1 K74 ["UpperLipSuck"]
     1019 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
     1021 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
     1022 LOADN                            R4 0
     1023 SETTABLEKS                       R4 R3 K98 ["currentValue"]
     1025 LOADN                            R4 0
     1026 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
     1028 GETIMPORT                        R4 K105 [UDim2.fromOffset]
     1030 LOADN                            R5 203
     1031 LOADN                            R6 84
     1032 CALL                             R4 2 1
     1033 SETTABLEKS                       R4 R3 K100 ["position"]
     1035 LOADN                            R4 90
     1036 SETTABLEKS                       R4 R3 K101 ["rotation"]
     1038 LOADN                            R4 40
     1039 SETTABLEKS                       R4 R3 K106 ["customWidth"]
     1041 CALL                             R2 1 1
     1042 SETTABLEKS                       R2 R1 K64 ["JawDrop"]
     1044 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
     1046 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
     1047 LOADK                            R4 K108 [0.5]
     1048 SETTABLEKS                       R4 R3 K98 ["currentValue"]
     1050 LOADK                            R4 K108 [0.5]
     1051 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
     1053 GETIMPORT                        R4 K105 [UDim2.fromOffset]
     1055 LOADN                            R5 170
     1056 LOADN                            R6 10
     1057 CALL                             R4 2 1
     1058 SETTABLEKS                       R4 R3 K100 ["position"]
     1060 LOADN                            R4 0
     1061 SETTABLEKS                       R4 R3 K101 ["rotation"]
     1063 LOADN                            R4 60
     1064 SETTABLEKS                       R4 R3 K106 ["customWidth"]
     1066 CALL                             R2 1 1
     1067 SETTABLEKS                       R2 R1 K62 ["Jaw"]
     1069 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
     1071 DUPTABLE                         R3 K107 [{"currentValue", "defaultValue", "position", "rotation", "customWidth"}]
     1072 LOADK                            R4 K108 [0.5]
     1073 SETTABLEKS                       R4 R3 K98 ["currentValue"]
     1075 LOADK                            R4 K108 [0.5]
     1076 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
     1078 GETIMPORT                        R4 K105 [UDim2.fromOffset]
     1080 LOADN                            R5 24
     1081 LOADN                            R6 240
     1082 CALL                             R4 2 1
     1083 SETTABLEKS                       R4 R3 K100 ["position"]
     1085 LOADN                            R4 166
     1086 SETTABLEKS                       R4 R3 K101 ["rotation"]
     1088 LOADN                            R4 50
     1089 SETTABLEKS                       R4 R3 K106 ["customWidth"]
     1091 CALL                             R2 1 1
     1092 SETTABLEKS                       R2 R1 K66 ["Tongue"]
     1094 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
     1096 DUPTABLE                         R3 K111 [{"currentValue", "defaultValue", "position", "customWidth", "rotation"}]
     1097 LOADN                            R4 0
     1098 SETTABLEKS                       R4 R3 K98 ["currentValue"]
     1100 LOADN                            R4 0
     1101 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
     1103 GETIMPORT                        R4 K105 [UDim2.fromOffset]
     1105 LOADN                            R5 220
     1106 LOADN                            R6 240
     1107 CALL                             R4 2 1
     1108 SETTABLEKS                       R4 R3 K100 ["position"]
     1110 LOADN                            R4 50
     1111 SETTABLEKS                       R4 R3 K106 ["customWidth"]
     1113 LOADN                            R4 180
     1114 SETTABLEKS                       R4 R3 K101 ["rotation"]
     1116 CALL                             R2 1 1
     1117 SETTABLEKS                       R2 R1 K68 ["TongueOut"]
     1119 SETTABLEKS                       R1 R0 K112 ["sideViewControls"]
     1121 DUPTABLE                         R1 K114 [{"EyesDragBox"}]
     1122 GETTABLEKS                       R2 R0 K96 ["scaleDragboxMapping"]
     1124 DUPTABLE                         R3 K120 [{"currentValue", "defaultValue", "position", "rotation", "length", "minX", "maxX", "minY", "maxY"}]
     1125 GETIMPORT                        R4 K123 [Vector2.new]
     1127 LOADN                            R5 0
     1128 LOADN                            R6 0
     1129 CALL                             R4 2 1
     1130 SETTABLEKS                       R4 R3 K98 ["currentValue"]
     1132 GETIMPORT                        R4 K123 [Vector2.new]
     1134 LOADN                            R5 0
     1135 LOADN                            R6 0
     1136 CALL                             R4 2 1
     1137 SETTABLEKS                       R4 R3 K99 ["defaultValue"]
     1139 GETIMPORT                        R4 K105 [UDim2.fromOffset]
     1141 LOADN                            R5 157
     1142 LOADN                            R6 130
     1143 CALL                             R4 2 1
     1144 SETTABLEKS                       R4 R3 K100 ["position"]
     1146 LOADN                            R4 0
     1147 SETTABLEKS                       R4 R3 K101 ["rotation"]
     1149 LOADN                            R4 35
     1150 SETTABLEKS                       R4 R3 K115 ["length"]
     1152 LOADN                            R4 255
     1153 SETTABLEKS                       R4 R3 K116 ["minX"]
     1155 LOADN                            R4 1
     1156 SETTABLEKS                       R4 R3 K117 ["maxX"]
     1158 LOADN                            R4 255
     1159 SETTABLEKS                       R4 R3 K118 ["minY"]
     1161 LOADN                            R4 1
     1162 SETTABLEKS                       R4 R3 K119 ["maxY"]
     1164 CALL                             R2 1 1
     1165 SETTABLEKS                       R2 R1 K113 ["EyesDragBox"]
     1167 SETTABLEKS                       R1 R0 K124 ["dragBoxControls"]
     1169 NEWTABLE                         R1 0 0
     1171 SETTABLEKS                       R1 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
     1173 GETTABLEKS                       R1 R0 K109 ["frontViewControls"]
     1175 LOADNIL                          R2
     1176 LOADNIL                          R3
     1177 FORGPREP                         R1
     1178 GETTABLEKS                       R6 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
     1180 SETTABLE                         R5 R6 R4
     1181 FORGLOOP                         R1 2 ; [-4]
     1183 GETTABLEKS                       R1 R0 K112 ["sideViewControls"]
     1185 LOADNIL                          R2
     1186 LOADNIL                          R3
     1187 FORGPREP                         R1
     1188 GETTABLEKS                       R6 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
     1190 SETTABLE                         R5 R6 R4
     1191 FORGLOOP                         R1 2 ; [-4]
     1193 GETTABLEKS                       R1 R0 K124 ["dragBoxControls"]
     1195 LOADNIL                          R2
     1196 LOADNIL                          R3
     1197 FORGPREP                         R1
     1198 GETTABLEKS                       R6 R0 K125 ["FacsPropertiesToFaceControlInfoMap"]
     1200 SETTABLE                         R5 R6 R4
     1201 FORGLOOP                         R1 2 ; [-4]
     1203 RETURN                           R0 1
