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
      130 LOADN                            R1 350
      131 SETTABLEKS                       R1 R0 K83 ["FACE_CONTROLS_EDITOR_FACE_FRONT_DIAGRAM_ORIGINAL_WIDTH"]
      133 LOADN                            R1 350
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
      154 LOADN                            R1 350
      155 SETTABLEKS                       R1 R0 K91 ["ASPECT_RATIO_SCALE_HEIGHT"]
      157 LOADN                            R1 350
      158 SETTABLEKS                       R1 R0 K92 ["ASPECT_RATIO_SCALE_WIDTH"]
      160 DUPCLOSURE                       R1 K93 [PROTO_0]
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R1 R0 K94 ["scaleFaceControlMapping"]
      164 DUPCLOSURE                       R1 K95 [PROTO_1]
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R1 R0 K96 ["scaleDragboxMapping"]
      168 DUPTABLE                         R1 K97 [{"ChinRaiserUpperLip", "ChinRaiser", "LipsTogether", "Mouth", "LeftCheekPuff", "LeftDimpler", "LeftLipCornerDown", "LeftLowerLipDepressor", "LeftLipCornerPuller", "LeftLipStretcher", "LeftUpperLipRaiser", "RightCheekPuff", "RightDimpler", "RightLipCornerDown", "RightLowerLipDepressor", "RightLipCornerPuller", "RightLipStretcher", "RightUpperLipRaiser", "Corrugator", "LeftBrowLowerer", "LeftOuterBrowRaiser", "LeftNoseWrinkler", "LeftInnerBrowRaiser", "RightBrowLowerer", "RightOuterBrowRaiser", "RightInnerBrowRaiser", "RightNoseWrinkler", "LeftCheekRaiser", "LeftEyeLid", "RightCheekRaiser", "RightEyeLid"}]
      169 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      171 DUPTABLE                         R3 K104 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90}]
      172 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      174 LOADN                            R5 170
      175 LOADN                            R6 305
      176 CALL                             R4 2 1
      177 SETTABLEKS                       R4 R3 K101 ["position"]
      179 CALL                             R2 1 1
      180 SETTABLEKS                       R2 R1 K58 ["ChinRaiserUpperLip"]
      182 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      184 DUPTABLE                         R3 K104 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90}]
      185 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      187 LOADN                            R5 150
      188 LOADN                            R6 311
      189 CALL                             R4 2 1
      190 SETTABLEKS                       R4 R3 K101 ["position"]
      192 CALL                             R2 1 1
      193 SETTABLEKS                       R2 R1 K56 ["ChinRaiser"]
      195 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      197 DUPTABLE                         R3 K111 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 90, ["customWidth"] = 20}]
      198 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      200 LOADN                            R5 165
      201 LOADN                            R6 240
      202 CALL                             R4 2 1
      203 SETTABLEKS                       R4 R3 K101 ["position"]
      205 CALL                             R2 1 1
      206 SETTABLEKS                       R2 R1 K54 ["LipsTogether"]
      208 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      210 DUPTABLE                         R3 K114 [{["currentValue"] = 0.5, ["defaultValue"] = 0.5, ["position"], ["rotation"] = 0, ["customWidth"] = 120}]
      211 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      213 LOADN                            R5 120
      214 LOADN                            R6 258
      215 CALL                             R4 2 1
      216 SETTABLEKS                       R4 R3 K101 ["position"]
      218 CALL                             R2 1 1
      219 SETTABLEKS                       R2 R1 K52 ["Mouth"]
      221 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      223 DUPTABLE                         R3 K115 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0}]
      224 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      226 LOADN                            R5 260
      227 LOADN                            R6 229
      228 CALL                             R4 2 1
      229 SETTABLEKS                       R4 R3 K101 ["position"]
      231 CALL                             R2 1 1
      232 SETTABLEKS                       R2 R1 K36 ["LeftCheekPuff"]
      234 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      236 DUPTABLE                         R3 K115 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0}]
      237 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      239 LOADN                            R5 255
      240 LOADN                            R6 250
      241 CALL                             R4 2 1
      242 SETTABLEKS                       R4 R3 K101 ["position"]
      244 CALL                             R2 1 1
      245 SETTABLEKS                       R2 R1 K44 ["LeftDimpler"]
      247 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      249 DUPTABLE                         R3 K117 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 55}]
      250 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      252 LOADN                            R5 226
      253 LOADN                            R6 301
      254 CALL                             R4 2 1
      255 SETTABLEKS                       R4 R3 K101 ["position"]
      257 CALL                             R2 1 1
      258 SETTABLEKS                       R2 R1 K24 ["LeftLipCornerDown"]
      260 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      262 DUPTABLE                         R3 K119 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 65}]
      263 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      265 LOADN                            R5 195
      266 LOADN                            R6 295
      267 CALL                             R4 2 1
      268 SETTABLEKS                       R4 R3 K101 ["position"]
      270 CALL                             R2 1 1
      271 SETTABLEKS                       R2 R1 K28 ["LeftLowerLipDepressor"]
      273 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      275 DUPTABLE                         R3 K121 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -50}]
      276 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      278 LOADN                            R5 220
      279 LOADN                            R6 232
      280 CALL                             R4 2 1
      281 SETTABLEKS                       R4 R3 K101 ["position"]
      283 CALL                             R2 1 1
      284 SETTABLEKS                       R2 R1 K20 ["LeftLipCornerPuller"]
      286 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      288 DUPTABLE                         R3 K115 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0}]
      289 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      291 LOADN                            R5 240
      292 LOADN                            R6 270
      293 CALL                             R4 2 1
      294 SETTABLEKS                       R4 R3 K101 ["position"]
      296 CALL                             R2 1 1
      297 SETTABLEKS                       R2 R1 K48 ["LeftLipStretcher"]
      299 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      301 DUPTABLE                         R3 K123 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -65}]
      302 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      304 LOADN                            R5 200
      305 LOADN                            R6 220
      306 CALL                             R4 2 1
      307 SETTABLEKS                       R4 R3 K101 ["position"]
      309 CALL                             R2 1 1
      310 SETTABLEKS                       R2 R1 K32 ["LeftUpperLipRaiser"]
      312 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      314 DUPTABLE                         R3 K125 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 180}]
      315 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      317 LOADN                            R5 60
      318 LOADN                            R6 229
      319 CALL                             R4 2 1
      320 SETTABLEKS                       R4 R3 K101 ["position"]
      322 CALL                             R2 1 1
      323 SETTABLEKS                       R2 R1 K38 ["RightCheekPuff"]
      325 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      327 DUPTABLE                         R3 K125 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 180}]
      328 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      330 LOADN                            R5 65
      331 LOADN                            R6 250
      332 CALL                             R4 2 1
      333 SETTABLEKS                       R4 R3 K101 ["position"]
      335 CALL                             R2 1 1
      336 SETTABLEKS                       R2 R1 K46 ["RightDimpler"]
      338 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      340 DUPTABLE                         R3 K127 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 125}]
      341 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      343 LOADN                            R5 95
      344 LOADN                            R6 301
      345 CALL                             R4 2 1
      346 SETTABLEKS                       R4 R3 K101 ["position"]
      348 CALL                             R2 1 1
      349 SETTABLEKS                       R2 R1 K26 ["RightLipCornerDown"]
      351 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      353 DUPTABLE                         R3 K129 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 114}]
      354 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      356 LOADN                            R5 125
      357 LOADN                            R6 295
      358 CALL                             R4 2 1
      359 SETTABLEKS                       R4 R3 K101 ["position"]
      361 CALL                             R2 1 1
      362 SETTABLEKS                       R2 R1 K30 ["RightLowerLipDepressor"]
      364 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      366 DUPTABLE                         R3 K131 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -130}]
      367 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      369 LOADN                            R5 100
      370 LOADN                            R6 232
      371 CALL                             R4 2 1
      372 SETTABLEKS                       R4 R3 K101 ["position"]
      374 CALL                             R2 1 1
      375 SETTABLEKS                       R2 R1 K22 ["RightLipCornerPuller"]
      377 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      379 DUPTABLE                         R3 K125 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 180}]
      380 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      382 LOADN                            R5 85
      383 LOADN                            R6 270
      384 CALL                             R4 2 1
      385 SETTABLEKS                       R4 R3 K101 ["position"]
      387 CALL                             R2 1 1
      388 SETTABLEKS                       R2 R1 K50 ["RightLipStretcher"]
      390 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      392 DUPTABLE                         R3 K133 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -110}]
      393 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      395 LOADN                            R5 120
      396 LOADN                            R6 220
      397 CALL                             R4 2 1
      398 SETTABLEKS                       R4 R3 K101 ["position"]
      400 CALL                             R2 1 1
      401 SETTABLEKS                       R2 R1 K34 ["RightUpperLipRaiser"]
      403 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      405 DUPTABLE                         R3 K134 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0, ["customWidth"] = 20}]
      406 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      408 LOADN                            R5 168
      409 LOADN                            R6 100
      410 CALL                             R4 2 1
      411 SETTABLEKS                       R4 R3 K101 ["position"]
      413 CALL                             R2 1 1
      414 SETTABLEKS                       R2 R1 K60 ["Corrugator"]
      416 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      418 DUPTABLE                         R3 K136 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 100, ["customWidth"] = 20}]
      419 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      421 LOADN                            R5 195
      422 LOADN                            R6 97
      423 CALL                             R4 2 1
      424 SETTABLEKS                       R4 R3 K101 ["position"]
      426 CALL                             R2 1 1
      427 SETTABLEKS                       R2 R1 K0 ["LeftBrowLowerer"]
      429 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      431 DUPTABLE                         R3 K138 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -70}]
      432 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      434 LOADN                            R5 225
      435 LOADN                            R6 55
      436 CALL                             R4 2 1
      437 SETTABLEKS                       R4 R3 K101 ["position"]
      439 CALL                             R2 1 1
      440 SETTABLEKS                       R2 R1 K4 ["LeftOuterBrowRaiser"]
      442 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      444 DUPTABLE                         R3 K104 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90}]
      445 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      447 LOADN                            R5 175
      448 LOADN                            R6 185
      449 CALL                             R4 2 1
      450 SETTABLEKS                       R4 R3 K101 ["position"]
      452 CALL                             R2 1 1
      453 SETTABLEKS                       R2 R1 K16 ["LeftNoseWrinkler"]
      455 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      457 DUPTABLE                         R3 K104 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90}]
      458 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      460 LOADN                            R5 180
      461 LOADN                            R6 55
      462 CALL                             R4 2 1
      463 SETTABLEKS                       R4 R3 K101 ["position"]
      465 CALL                             R2 1 1
      466 SETTABLEKS                       R2 R1 K8 ["LeftInnerBrowRaiser"]
      468 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      470 DUPTABLE                         R3 K140 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 80, ["customWidth"] = 20}]
      471 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      473 LOADN                            R5 137
      474 LOADN                            R6 97
      475 CALL                             R4 2 1
      476 SETTABLEKS                       R4 R3 K101 ["position"]
      478 CALL                             R2 1 1
      479 SETTABLEKS                       R2 R1 K2 ["RightBrowLowerer"]
      481 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      483 DUPTABLE                         R3 K133 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -110}]
      484 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      486 LOADN                            R5 95
      487 LOADN                            R6 55
      488 CALL                             R4 2 1
      489 SETTABLEKS                       R4 R3 K101 ["position"]
      491 CALL                             R2 1 1
      492 SETTABLEKS                       R2 R1 K6 ["RightOuterBrowRaiser"]
      494 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      496 DUPTABLE                         R3 K104 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90}]
      497 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      499 LOADN                            R5 142
      500 LOADN                            R6 55
      501 CALL                             R4 2 1
      502 SETTABLEKS                       R4 R3 K101 ["position"]
      504 CALL                             R2 1 1
      505 SETTABLEKS                       R2 R1 K10 ["RightInnerBrowRaiser"]
      507 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      509 DUPTABLE                         R3 K104 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90}]
      510 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      512 LOADN                            R5 147
      513 LOADN                            R6 185
      514 CALL                             R4 2 1
      515 SETTABLEKS                       R4 R3 K101 ["position"]
      517 CALL                             R2 1 1
      518 SETTABLEKS                       R2 R1 K18 ["RightNoseWrinkler"]
      520 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      522 DUPTABLE                         R3 K142 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -115}]
      523 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      525 LOADN                            R5 255
      526 LOADN                            R6 175
      527 CALL                             R4 2 1
      528 SETTABLEKS                       R4 R3 K101 ["position"]
      530 CALL                             R2 1 1
      531 SETTABLEKS                       R2 R1 K40 ["LeftCheekRaiser"]
      533 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      535 DUPTABLE                         R3 K144 [{["currentValue"] = 0.5, ["defaultValue"] = 0.5, ["position"], ["rotation"] = 90, ["customWidth"] = 30}]
      536 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      538 LOADN                            R5 185
      539 LOADN                            R6 145
      540 CALL                             R4 2 1
      541 SETTABLEKS                       R4 R3 K101 ["position"]
      543 CALL                             R2 1 1
      544 SETTABLEKS                       R2 R1 K12 ["LeftEyeLid"]
      546 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      548 DUPTABLE                         R3 K146 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -62}]
      549 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      551 LOADN                            R5 65
      552 LOADN                            R6 175
      553 CALL                             R4 2 1
      554 SETTABLEKS                       R4 R3 K101 ["position"]
      556 CALL                             R2 1 1
      557 SETTABLEKS                       R2 R1 K42 ["RightCheekRaiser"]
      559 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      561 DUPTABLE                         R3 K144 [{["currentValue"] = 0.5, ["defaultValue"] = 0.5, ["position"], ["rotation"] = 90, ["customWidth"] = 30}]
      562 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      564 LOADN                            R5 135
      565 LOADN                            R6 145
      566 CALL                             R4 2 1
      567 SETTABLEKS                       R4 R3 K101 ["position"]
      569 CALL                             R2 1 1
      570 SETTABLEKS                       R2 R1 K14 ["RightEyeLid"]
      572 SETTABLEKS                       R1 R0 K147 ["frontViewControls"]
      574 DUPTABLE                         R1 K148 [{"FlatPucker", "Funneler", "LowerLipSuck", "LipPresser", "Pucker", "UpperLipSuck", "JawDrop", "Jaw", "Tongue", "TongueOut"}]
      575 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      577 DUPTABLE                         R3 K150 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0, ["customWidth"] = 50}]
      578 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      580 LOADN                            R5 70
      581 LOADN                            R6 260
      582 CALL                             R4 2 1
      583 SETTABLEKS                       R4 R3 K101 ["position"]
      585 CALL                             R2 1 1
      586 SETTABLEKS                       R2 R1 K80 ["FlatPucker"]
      588 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      590 DUPTABLE                         R3 K150 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0, ["customWidth"] = 50}]
      591 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      593 LOADN                            R5 70
      594 LOADN                            R6 200
      595 CALL                             R4 2 1
      596 SETTABLEKS                       R4 R3 K101 ["position"]
      598 CALL                             R2 1 1
      599 SETTABLEKS                       R2 R1 K78 ["Funneler"]
      601 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      603 DUPTABLE                         R3 K152 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -25}]
      604 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      606 LOADN                            R5 140
      607 LOADN                            R6 280
      608 CALL                             R4 2 1
      609 SETTABLEKS                       R4 R3 K101 ["position"]
      611 CALL                             R2 1 1
      612 SETTABLEKS                       R2 R1 K76 ["LowerLipSuck"]
      614 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      616 DUPTABLE                         R3 K153 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = -90, ["customWidth"] = 20}]
      617 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      619 LOADN                            R5 140
      620 LOADN                            R6 230
      621 CALL                             R4 2 1
      622 SETTABLEKS                       R4 R3 K101 ["position"]
      624 CALL                             R2 1 1
      625 SETTABLEKS                       R2 R1 K72 ["LipPresser"]
      627 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      629 DUPTABLE                         R3 K150 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 0, ["customWidth"] = 50}]
      630 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      632 LOADN                            R5 70
      633 LOADN                            R6 230
      634 CALL                             R4 2 1
      635 SETTABLEKS                       R4 R3 K101 ["position"]
      637 CALL                             R2 1 1
      638 SETTABLEKS                       R2 R1 K70 ["Pucker"]
      640 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      642 DUPTABLE                         R3 K155 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 36}]
      643 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      645 LOADN                            R5 140
      646 LOADN                            R6 185
      647 CALL                             R4 2 1
      648 SETTABLEKS                       R4 R3 K101 ["position"]
      650 CALL                             R2 1 1
      651 SETTABLEKS                       R2 R1 K74 ["UpperLipSuck"]
      653 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      655 DUPTABLE                         R3 K157 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["rotation"] = 90, ["customWidth"] = 40}]
      656 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      658 LOADN                            R5 203
      659 LOADN                            R6 340
      660 CALL                             R4 2 1
      661 SETTABLEKS                       R4 R3 K101 ["position"]
      663 CALL                             R2 1 1
      664 SETTABLEKS                       R2 R1 K64 ["JawDrop"]
      666 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      668 DUPTABLE                         R3 K159 [{["currentValue"] = 0.5, ["defaultValue"] = 0.5, ["position"], ["rotation"] = 0, ["customWidth"] = 60}]
      669 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      671 LOADN                            R5 170
      672 LOADN                            R6 10
      673 CALL                             R4 2 1
      674 SETTABLEKS                       R4 R3 K101 ["position"]
      676 CALL                             R2 1 1
      677 SETTABLEKS                       R2 R1 K62 ["Jaw"]
      679 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      681 DUPTABLE                         R3 K160 [{["currentValue"] = 0.5, ["defaultValue"] = 0.5, ["position"], ["rotation"] = -90, ["customWidth"] = 50}]
      682 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      684 LOADN                            R5 280
      685 LOADN                            R6 240
      686 CALL                             R4 2 1
      687 SETTABLEKS                       R4 R3 K101 ["position"]
      689 CALL                             R2 1 1
      690 SETTABLEKS                       R2 R1 K66 ["Tongue"]
      692 GETTABLEKS                       R2 R0 K94 ["scaleFaceControlMapping"]
      694 DUPTABLE                         R3 K161 [{["currentValue"] = 0, ["defaultValue"] = 0, ["position"], ["customWidth"] = 50, ["rotation"] = 180}]
      695 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      697 LOADN                            R5 220
      698 LOADN                            R6 240
      699 CALL                             R4 2 1
      700 SETTABLEKS                       R4 R3 K101 ["position"]
      702 CALL                             R2 1 1
      703 SETTABLEKS                       R2 R1 K68 ["TongueOut"]
      705 SETTABLEKS                       R1 R0 K162 ["sideViewControls"]
      707 DUPTABLE                         R1 K164 [{"EyesDragBox"}]
      708 GETTABLEKS                       R2 R0 K96 ["scaleDragboxMapping"]
      710 DUPTABLE                         R3 K173 [{["currentValue"], ["defaultValue"], ["position"], ["rotation"] = 0, ["length"] = 35, ["minX"] = -1, ["maxX"] = 1, ["minY"] = -1, ["maxY"] = 1}]
      711 GETIMPORT                        R4 K176 [Vector2.new]
      713 LOADN                            R5 0
      714 LOADN                            R6 0
      715 CALL                             R4 2 1
      716 SETTABLEKS                       R4 R3 K98 ["currentValue"]
      718 GETIMPORT                        R4 K176 [Vector2.new]
      720 LOADN                            R5 0
      721 LOADN                            R6 0
      722 CALL                             R4 2 1
      723 SETTABLEKS                       R4 R3 K100 ["defaultValue"]
      725 GETIMPORT                        R4 K107 [UDim2.fromOffset]
      727 LOADN                            R5 157
      728 LOADN                            R6 130
      729 CALL                             R4 2 1
      730 SETTABLEKS                       R4 R3 K101 ["position"]
      732 CALL                             R2 1 1
      733 SETTABLEKS                       R2 R1 K163 ["EyesDragBox"]
      735 SETTABLEKS                       R1 R0 K177 ["dragBoxControls"]
      737 NEWTABLE                         R1 0 0
      739 SETTABLEKS                       R1 R0 K178 ["FacsPropertiesToFaceControlInfoMap"]
      741 GETTABLEKS                       R1 R0 K147 ["frontViewControls"]
      743 LOADNIL                          R2
      744 LOADNIL                          R3
      745 FORGPREP                         R1
      746 GETTABLEKS                       R6 R0 K178 ["FacsPropertiesToFaceControlInfoMap"]
      748 SETTABLE                         R5 R6 R4
      749 FORGLOOP                         R1 2 ; [-4]
      751 GETTABLEKS                       R1 R0 K162 ["sideViewControls"]
      753 LOADNIL                          R2
      754 LOADNIL                          R3
      755 FORGPREP                         R1
      756 GETTABLEKS                       R6 R0 K178 ["FacsPropertiesToFaceControlInfoMap"]
      758 SETTABLE                         R5 R6 R4
      759 FORGLOOP                         R1 2 ; [-4]
      761 GETTABLEKS                       R1 R0 K177 ["dragBoxControls"]
      763 LOADNIL                          R2
      764 LOADNIL                          R3
      765 FORGPREP                         R1
      766 GETTABLEKS                       R6 R0 K178 ["FacsPropertiesToFaceControlInfoMap"]
      768 SETTABLE                         R5 R6 R4
      769 FORGLOOP                         R1 2 ; [-4]
      771 RETURN                           R0 1
