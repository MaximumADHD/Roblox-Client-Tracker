PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UGCValidationAccurateBoundingBoxTargetPercentage"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 -1
        6 FASTCALL                         TONUMBER ; [+2]
        7 GETIMPORT                        R0 K5 [tonumber]
        9 CALL                             R0 -1 1
       10 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UGCValidationAccurateBoundingBoxPercentageWeight"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 -1
        6 FASTCALL                         TONUMBER ; [+2]
        7 GETIMPORT                        R0 K5 [tonumber]
        9 CALL                             R0 -1 1
       10 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidationAccurateBoundingBoxMaxIterations"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UGCValidationAccurateBoundingBoxConvergedLength"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 -1
        6 FASTCALL                         TONUMBER ; [+2]
        7 GETIMPORT                        R0 K5 [tonumber]
        9 CALL                             R0 -1 1
       10 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UGCValidateAccurateBoundingBoxInflationThreshold"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 -1
        6 FASTCALL                         TONUMBER ; [+2]
        7 GETIMPORT                        R0 K5 [tonumber]
        9 CALL                             R0 -1 1
       10 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UGCValidateAccurateBoundingBoxRasterMethodNeckAttachmentCrop"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UGCValidateAccurateBoundingBoxRasterMethodNeckAttachmentCropMargin"]
        3 NAMECALL                         R1 R1 K3 ["GetFastString"]
        5 CALL                             R1 2 -1
        6 FASTCALL                         TONUMBER ; [+2]
        7 GETIMPORT                        R0 K5 [tonumber]
        9 CALL                             R0 -1 1
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationAccurateBoundingBoxTargetPercentage"]
        4 LOADK                            R3 K3 ["98.0"]
        5 NAMECALL                         R0 R0 K4 ["DefineFastString"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K5 ["UGCValidationAccurateBoundingBoxPercentageWeight"]
       11 LOADK                            R3 K6 ["0.05"]
       12 NAMECALL                         R0 R0 K4 ["DefineFastString"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K7 ["UGCValidationAccurateBoundingBoxMaxIterations"]
       18 LOADN                            R3 244
       19 NAMECALL                         R0 R0 K8 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K9 ["UGCValidationAccurateBoundingBoxConvergedLength"]
       25 LOADK                            R3 K10 ["0.001"]
       26 NAMECALL                         R0 R0 K4 ["DefineFastString"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K11 ["UGCValidateAccurateBoundingBoxInflationThreshold"]
       32 LOADK                            R3 K12 ["0.334"]
       33 NAMECALL                         R0 R0 K4 ["DefineFastString"]
       35 CALL                             R0 3 0
       36 GETIMPORT                        R0 K1 [game]
       38 LOADK                            R2 K13 ["UGCValidateAccurateBoundingBoxRasterMethod"]
       39 LOADB                            R3 0
       40 NAMECALL                         R0 R0 K14 ["DefineFastFlag"]
       42 CALL                             R0 3 0
       43 GETIMPORT                        R0 K1 [game]
       45 LOADK                            R2 K15 ["UGCValidateAccurateBoundingBoxRasterMethodNeckAttachmentCrop"]
       46 LOADB                            R3 0
       47 NAMECALL                         R0 R0 K14 ["DefineFastFlag"]
       49 CALL                             R0 3 0
       50 GETIMPORT                        R0 K1 [game]
       52 LOADK                            R2 K16 ["UGCValidateAccurateBoundingBoxRasterMethodNeckAttachmentCropMargin"]
       53 LOADK                            R3 K6 ["0.05"]
       54 NAMECALL                         R0 R0 K4 ["DefineFastString"]
       56 CALL                             R0 3 0
       57 NEWTABLE                         R0 8 0
       59 DUPCLOSURE                       R1 K17 [PROTO_0]
       60 SETTABLEKS                       R1 R0 K18 ["targetPercentage"]
       62 DUPCLOSURE                       R1 K19 [PROTO_1]
       63 SETTABLEKS                       R1 R0 K20 ["percentageWeight"]
       65 DUPCLOSURE                       R1 K21 [PROTO_2]
       66 SETTABLEKS                       R1 R0 K22 ["maxIterations"]
       68 DUPCLOSURE                       R1 K23 [PROTO_3]
       69 SETTABLEKS                       R1 R0 K24 ["convergedLength"]
       71 DUPCLOSURE                       R1 K25 [PROTO_4]
       72 SETTABLEKS                       R1 R0 K26 ["inflationThreshold"]
       74 DUPCLOSURE                       R1 K27 [PROTO_5]
       75 SETTABLEKS                       R1 R0 K28 ["neckAttachmentCrop"]
       77 DUPCLOSURE                       R1 K29 [PROTO_6]
       78 SETTABLEKS                       R1 R0 K30 ["neckAttachmentCropMargin"]
       80 GETIMPORT                        R1 K1 [game]
       82 LOADK                            R3 K31 ["UGCValidationInflationThresholdDynamicHeadX"]
       83 LOADK                            R4 K12 ["0.334"]
       84 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       86 CALL                             R1 3 0
       87 GETIMPORT                        R1 K1 [game]
       89 LOADK                            R3 K32 ["UGCValidationInflationThresholdDynamicHeadY"]
       90 LOADK                            R4 K12 ["0.334"]
       91 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       93 CALL                             R1 3 0
       94 GETIMPORT                        R1 K1 [game]
       96 LOADK                            R3 K33 ["UGCValidationInflationThresholdDynamicHeadZ"]
       97 LOADK                            R4 K12 ["0.334"]
       98 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      100 CALL                             R1 3 0
      101 GETIMPORT                        R1 K1 [game]
      103 LOADK                            R3 K34 ["UGCValidationInflationThresholdTorsoX"]
      104 LOADK                            R4 K12 ["0.334"]
      105 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      107 CALL                             R1 3 0
      108 GETIMPORT                        R1 K1 [game]
      110 LOADK                            R3 K35 ["UGCValidationInflationThresholdTorsoY"]
      111 LOADK                            R4 K12 ["0.334"]
      112 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      114 CALL                             R1 3 0
      115 GETIMPORT                        R1 K1 [game]
      117 LOADK                            R3 K36 ["UGCValidationInflationThresholdTorsoZ"]
      118 LOADK                            R4 K12 ["0.334"]
      119 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      121 CALL                             R1 3 0
      122 GETIMPORT                        R1 K1 [game]
      124 LOADK                            R3 K37 ["UGCValidationInflationThresholdArmsX"]
      125 LOADK                            R4 K38 ["1.0"]
      126 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      128 CALL                             R1 3 0
      129 GETIMPORT                        R1 K1 [game]
      131 LOADK                            R3 K39 ["UGCValidationInflationThresholdArmsY"]
      132 LOADK                            R4 K12 ["0.334"]
      133 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      135 CALL                             R1 3 0
      136 GETIMPORT                        R1 K1 [game]
      138 LOADK                            R3 K40 ["UGCValidationInflationThresholdArmsZ"]
      139 LOADK                            R4 K38 ["1.0"]
      140 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      142 CALL                             R1 3 0
      143 GETIMPORT                        R1 K1 [game]
      145 LOADK                            R3 K41 ["UGCValidationInflationThresholdLegsX"]
      146 LOADK                            R4 K42 ["0.7"]
      147 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      149 CALL                             R1 3 0
      150 GETIMPORT                        R1 K1 [game]
      152 LOADK                            R3 K43 ["UGCValidationInflationThresholdLegsY"]
      153 LOADK                            R4 K12 ["0.334"]
      154 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      156 CALL                             R1 3 0
      157 GETIMPORT                        R1 K1 [game]
      159 LOADK                            R3 K44 ["UGCValidationInflationThresholdLegsZ"]
      160 LOADK                            R4 K42 ["0.7"]
      161 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      163 CALL                             R1 3 0
      164 DUPTABLE                         R1 K48 [{"X", "Y", "Z"}]
      165 GETIMPORT                        R3 K1 [game]
      167 LOADK                            R5 K31 ["UGCValidationInflationThresholdDynamicHeadX"]
      168 NAMECALL                         R3 R3 K49 ["GetFastString"]
      170 CALL                             R3 2 -1
      171 FASTCALL                         TONUMBER ; [+2]
      172 GETIMPORT                        R2 K51 [tonumber]
      174 CALL                             R2 -1 1
      175 SETTABLEKS                       R2 R1 K45 ["X"]
      177 GETIMPORT                        R3 K1 [game]
      179 LOADK                            R5 K32 ["UGCValidationInflationThresholdDynamicHeadY"]
      180 NAMECALL                         R3 R3 K49 ["GetFastString"]
      182 CALL                             R3 2 -1
      183 FASTCALL                         TONUMBER ; [+2]
      184 GETIMPORT                        R2 K51 [tonumber]
      186 CALL                             R2 -1 1
      187 SETTABLEKS                       R2 R1 K46 ["Y"]
      189 GETIMPORT                        R3 K1 [game]
      191 LOADK                            R5 K33 ["UGCValidationInflationThresholdDynamicHeadZ"]
      192 NAMECALL                         R3 R3 K49 ["GetFastString"]
      194 CALL                             R3 2 -1
      195 FASTCALL                         TONUMBER ; [+2]
      196 GETIMPORT                        R2 K51 [tonumber]
      198 CALL                             R2 -1 1
      199 SETTABLEKS                       R2 R1 K47 ["Z"]
      201 DUPTABLE                         R2 K48 [{"X", "Y", "Z"}]
      202 GETIMPORT                        R4 K1 [game]
      204 LOADK                            R6 K34 ["UGCValidationInflationThresholdTorsoX"]
      205 NAMECALL                         R4 R4 K49 ["GetFastString"]
      207 CALL                             R4 2 -1
      208 FASTCALL                         TONUMBER ; [+2]
      209 GETIMPORT                        R3 K51 [tonumber]
      211 CALL                             R3 -1 1
      212 SETTABLEKS                       R3 R2 K45 ["X"]
      214 GETIMPORT                        R4 K1 [game]
      216 LOADK                            R6 K35 ["UGCValidationInflationThresholdTorsoY"]
      217 NAMECALL                         R4 R4 K49 ["GetFastString"]
      219 CALL                             R4 2 -1
      220 FASTCALL                         TONUMBER ; [+2]
      221 GETIMPORT                        R3 K51 [tonumber]
      223 CALL                             R3 -1 1
      224 SETTABLEKS                       R3 R2 K46 ["Y"]
      226 GETIMPORT                        R4 K1 [game]
      228 LOADK                            R6 K36 ["UGCValidationInflationThresholdTorsoZ"]
      229 NAMECALL                         R4 R4 K49 ["GetFastString"]
      231 CALL                             R4 2 -1
      232 FASTCALL                         TONUMBER ; [+2]
      233 GETIMPORT                        R3 K51 [tonumber]
      235 CALL                             R3 -1 1
      236 SETTABLEKS                       R3 R2 K47 ["Z"]
      238 DUPTABLE                         R3 K48 [{"X", "Y", "Z"}]
      239 GETIMPORT                        R5 K1 [game]
      241 LOADK                            R7 K37 ["UGCValidationInflationThresholdArmsX"]
      242 NAMECALL                         R5 R5 K49 ["GetFastString"]
      244 CALL                             R5 2 -1
      245 FASTCALL                         TONUMBER ; [+2]
      246 GETIMPORT                        R4 K51 [tonumber]
      248 CALL                             R4 -1 1
      249 SETTABLEKS                       R4 R3 K45 ["X"]
      251 GETIMPORT                        R5 K1 [game]
      253 LOADK                            R7 K39 ["UGCValidationInflationThresholdArmsY"]
      254 NAMECALL                         R5 R5 K49 ["GetFastString"]
      256 CALL                             R5 2 -1
      257 FASTCALL                         TONUMBER ; [+2]
      258 GETIMPORT                        R4 K51 [tonumber]
      260 CALL                             R4 -1 1
      261 SETTABLEKS                       R4 R3 K46 ["Y"]
      263 GETIMPORT                        R5 K1 [game]
      265 LOADK                            R7 K40 ["UGCValidationInflationThresholdArmsZ"]
      266 NAMECALL                         R5 R5 K49 ["GetFastString"]
      268 CALL                             R5 2 -1
      269 FASTCALL                         TONUMBER ; [+2]
      270 GETIMPORT                        R4 K51 [tonumber]
      272 CALL                             R4 -1 1
      273 SETTABLEKS                       R4 R3 K47 ["Z"]
      275 DUPTABLE                         R4 K48 [{"X", "Y", "Z"}]
      276 GETIMPORT                        R6 K1 [game]
      278 LOADK                            R8 K41 ["UGCValidationInflationThresholdLegsX"]
      279 NAMECALL                         R6 R6 K49 ["GetFastString"]
      281 CALL                             R6 2 -1
      282 FASTCALL                         TONUMBER ; [+2]
      283 GETIMPORT                        R5 K51 [tonumber]
      285 CALL                             R5 -1 1
      286 SETTABLEKS                       R5 R4 K45 ["X"]
      288 GETIMPORT                        R6 K1 [game]
      290 LOADK                            R8 K43 ["UGCValidationInflationThresholdLegsY"]
      291 NAMECALL                         R6 R6 K49 ["GetFastString"]
      293 CALL                             R6 2 -1
      294 FASTCALL                         TONUMBER ; [+2]
      295 GETIMPORT                        R5 K51 [tonumber]
      297 CALL                             R5 -1 1
      298 SETTABLEKS                       R5 R4 K46 ["Y"]
      300 GETIMPORT                        R6 K1 [game]
      302 LOADK                            R8 K44 ["UGCValidationInflationThresholdLegsZ"]
      303 NAMECALL                         R6 R6 K49 ["GetFastString"]
      305 CALL                             R6 2 -1
      306 FASTCALL                         TONUMBER ; [+2]
      307 GETIMPORT                        R5 K51 [tonumber]
      309 CALL                             R5 -1 1
      310 SETTABLEKS                       R5 R4 K47 ["Z"]
      312 NEWTABLE                         R5 8 0
      314 GETIMPORT                        R6 K55 [Enum.AssetType.DynamicHead]
      316 SETTABLE                         R1 R5 R6
      317 GETIMPORT                        R6 K57 [Enum.AssetType.Torso]
      319 SETTABLE                         R2 R5 R6
      320 GETIMPORT                        R6 K59 [Enum.AssetType.LeftArm]
      322 SETTABLE                         R3 R5 R6
      323 GETIMPORT                        R6 K61 [Enum.AssetType.RightArm]
      325 SETTABLE                         R3 R5 R6
      326 GETIMPORT                        R6 K63 [Enum.AssetType.LeftLeg]
      328 SETTABLE                         R4 R5 R6
      329 GETIMPORT                        R6 K65 [Enum.AssetType.RightLeg]
      331 SETTABLE                         R4 R5 R6
      332 SETTABLEKS                       R5 R0 K66 ["AssetTypeToAxisThresholds"]
      334 RETURN                           R0 1
