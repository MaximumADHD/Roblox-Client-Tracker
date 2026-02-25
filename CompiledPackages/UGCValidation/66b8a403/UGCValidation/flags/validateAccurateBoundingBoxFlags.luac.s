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
       43 NEWTABLE                         R0 8 0
       45 DUPCLOSURE                       R1 K15 [PROTO_0]
       46 SETTABLEKS                       R1 R0 K16 ["targetPercentage"]
       48 DUPCLOSURE                       R1 K17 [PROTO_1]
       49 SETTABLEKS                       R1 R0 K18 ["percentageWeight"]
       51 DUPCLOSURE                       R1 K19 [PROTO_2]
       52 SETTABLEKS                       R1 R0 K20 ["maxIterations"]
       54 DUPCLOSURE                       R1 K21 [PROTO_3]
       55 SETTABLEKS                       R1 R0 K22 ["convergedLength"]
       57 DUPCLOSURE                       R1 K23 [PROTO_4]
       58 SETTABLEKS                       R1 R0 K24 ["inflationThreshold"]
       60 GETIMPORT                        R1 K1 [game]
       62 LOADK                            R3 K25 ["UGCValidationInflationThresholdDynamicHeadX"]
       63 LOADK                            R4 K12 ["0.334"]
       64 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       66 CALL                             R1 3 0
       67 GETIMPORT                        R1 K1 [game]
       69 LOADK                            R3 K26 ["UGCValidationInflationThresholdDynamicHeadY"]
       70 LOADK                            R4 K12 ["0.334"]
       71 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       73 CALL                             R1 3 0
       74 GETIMPORT                        R1 K1 [game]
       76 LOADK                            R3 K27 ["UGCValidationInflationThresholdDynamicHeadZ"]
       77 LOADK                            R4 K12 ["0.334"]
       78 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       80 CALL                             R1 3 0
       81 GETIMPORT                        R1 K1 [game]
       83 LOADK                            R3 K28 ["UGCValidationInflationThresholdTorsoX"]
       84 LOADK                            R4 K12 ["0.334"]
       85 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       87 CALL                             R1 3 0
       88 GETIMPORT                        R1 K1 [game]
       90 LOADK                            R3 K29 ["UGCValidationInflationThresholdTorsoY"]
       91 LOADK                            R4 K12 ["0.334"]
       92 NAMECALL                         R1 R1 K4 ["DefineFastString"]
       94 CALL                             R1 3 0
       95 GETIMPORT                        R1 K1 [game]
       97 LOADK                            R3 K30 ["UGCValidationInflationThresholdTorsoZ"]
       98 LOADK                            R4 K12 ["0.334"]
       99 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      101 CALL                             R1 3 0
      102 GETIMPORT                        R1 K1 [game]
      104 LOADK                            R3 K31 ["UGCValidationInflationThresholdArmsX"]
      105 LOADK                            R4 K32 ["1.0"]
      106 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      108 CALL                             R1 3 0
      109 GETIMPORT                        R1 K1 [game]
      111 LOADK                            R3 K33 ["UGCValidationInflationThresholdArmsY"]
      112 LOADK                            R4 K12 ["0.334"]
      113 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      115 CALL                             R1 3 0
      116 GETIMPORT                        R1 K1 [game]
      118 LOADK                            R3 K34 ["UGCValidationInflationThresholdArmsZ"]
      119 LOADK                            R4 K32 ["1.0"]
      120 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      122 CALL                             R1 3 0
      123 GETIMPORT                        R1 K1 [game]
      125 LOADK                            R3 K35 ["UGCValidationInflationThresholdLegsX"]
      126 LOADK                            R4 K36 ["0.7"]
      127 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      129 CALL                             R1 3 0
      130 GETIMPORT                        R1 K1 [game]
      132 LOADK                            R3 K37 ["UGCValidationInflationThresholdLegsY"]
      133 LOADK                            R4 K12 ["0.334"]
      134 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      136 CALL                             R1 3 0
      137 GETIMPORT                        R1 K1 [game]
      139 LOADK                            R3 K38 ["UGCValidationInflationThresholdLegsZ"]
      140 LOADK                            R4 K36 ["0.7"]
      141 NAMECALL                         R1 R1 K4 ["DefineFastString"]
      143 CALL                             R1 3 0
      144 DUPTABLE                         R1 K42 [{"X", "Y", "Z"}]
      145 GETIMPORT                        R3 K1 [game]
      147 LOADK                            R5 K25 ["UGCValidationInflationThresholdDynamicHeadX"]
      148 NAMECALL                         R3 R3 K43 ["GetFastString"]
      150 CALL                             R3 2 -1
      151 FASTCALL                         TONUMBER ; [+2]
      152 GETIMPORT                        R2 K45 [tonumber]
      154 CALL                             R2 -1 1
      155 SETTABLEKS                       R2 R1 K39 ["X"]
      157 GETIMPORT                        R3 K1 [game]
      159 LOADK                            R5 K26 ["UGCValidationInflationThresholdDynamicHeadY"]
      160 NAMECALL                         R3 R3 K43 ["GetFastString"]
      162 CALL                             R3 2 -1
      163 FASTCALL                         TONUMBER ; [+2]
      164 GETIMPORT                        R2 K45 [tonumber]
      166 CALL                             R2 -1 1
      167 SETTABLEKS                       R2 R1 K40 ["Y"]
      169 GETIMPORT                        R3 K1 [game]
      171 LOADK                            R5 K27 ["UGCValidationInflationThresholdDynamicHeadZ"]
      172 NAMECALL                         R3 R3 K43 ["GetFastString"]
      174 CALL                             R3 2 -1
      175 FASTCALL                         TONUMBER ; [+2]
      176 GETIMPORT                        R2 K45 [tonumber]
      178 CALL                             R2 -1 1
      179 SETTABLEKS                       R2 R1 K41 ["Z"]
      181 DUPTABLE                         R2 K42 [{"X", "Y", "Z"}]
      182 GETIMPORT                        R4 K1 [game]
      184 LOADK                            R6 K28 ["UGCValidationInflationThresholdTorsoX"]
      185 NAMECALL                         R4 R4 K43 ["GetFastString"]
      187 CALL                             R4 2 -1
      188 FASTCALL                         TONUMBER ; [+2]
      189 GETIMPORT                        R3 K45 [tonumber]
      191 CALL                             R3 -1 1
      192 SETTABLEKS                       R3 R2 K39 ["X"]
      194 GETIMPORT                        R4 K1 [game]
      196 LOADK                            R6 K29 ["UGCValidationInflationThresholdTorsoY"]
      197 NAMECALL                         R4 R4 K43 ["GetFastString"]
      199 CALL                             R4 2 -1
      200 FASTCALL                         TONUMBER ; [+2]
      201 GETIMPORT                        R3 K45 [tonumber]
      203 CALL                             R3 -1 1
      204 SETTABLEKS                       R3 R2 K40 ["Y"]
      206 GETIMPORT                        R4 K1 [game]
      208 LOADK                            R6 K30 ["UGCValidationInflationThresholdTorsoZ"]
      209 NAMECALL                         R4 R4 K43 ["GetFastString"]
      211 CALL                             R4 2 -1
      212 FASTCALL                         TONUMBER ; [+2]
      213 GETIMPORT                        R3 K45 [tonumber]
      215 CALL                             R3 -1 1
      216 SETTABLEKS                       R3 R2 K41 ["Z"]
      218 DUPTABLE                         R3 K42 [{"X", "Y", "Z"}]
      219 GETIMPORT                        R5 K1 [game]
      221 LOADK                            R7 K31 ["UGCValidationInflationThresholdArmsX"]
      222 NAMECALL                         R5 R5 K43 ["GetFastString"]
      224 CALL                             R5 2 -1
      225 FASTCALL                         TONUMBER ; [+2]
      226 GETIMPORT                        R4 K45 [tonumber]
      228 CALL                             R4 -1 1
      229 SETTABLEKS                       R4 R3 K39 ["X"]
      231 GETIMPORT                        R5 K1 [game]
      233 LOADK                            R7 K33 ["UGCValidationInflationThresholdArmsY"]
      234 NAMECALL                         R5 R5 K43 ["GetFastString"]
      236 CALL                             R5 2 -1
      237 FASTCALL                         TONUMBER ; [+2]
      238 GETIMPORT                        R4 K45 [tonumber]
      240 CALL                             R4 -1 1
      241 SETTABLEKS                       R4 R3 K40 ["Y"]
      243 GETIMPORT                        R5 K1 [game]
      245 LOADK                            R7 K34 ["UGCValidationInflationThresholdArmsZ"]
      246 NAMECALL                         R5 R5 K43 ["GetFastString"]
      248 CALL                             R5 2 -1
      249 FASTCALL                         TONUMBER ; [+2]
      250 GETIMPORT                        R4 K45 [tonumber]
      252 CALL                             R4 -1 1
      253 SETTABLEKS                       R4 R3 K41 ["Z"]
      255 DUPTABLE                         R4 K42 [{"X", "Y", "Z"}]
      256 GETIMPORT                        R6 K1 [game]
      258 LOADK                            R8 K35 ["UGCValidationInflationThresholdLegsX"]
      259 NAMECALL                         R6 R6 K43 ["GetFastString"]
      261 CALL                             R6 2 -1
      262 FASTCALL                         TONUMBER ; [+2]
      263 GETIMPORT                        R5 K45 [tonumber]
      265 CALL                             R5 -1 1
      266 SETTABLEKS                       R5 R4 K39 ["X"]
      268 GETIMPORT                        R6 K1 [game]
      270 LOADK                            R8 K37 ["UGCValidationInflationThresholdLegsY"]
      271 NAMECALL                         R6 R6 K43 ["GetFastString"]
      273 CALL                             R6 2 -1
      274 FASTCALL                         TONUMBER ; [+2]
      275 GETIMPORT                        R5 K45 [tonumber]
      277 CALL                             R5 -1 1
      278 SETTABLEKS                       R5 R4 K40 ["Y"]
      280 GETIMPORT                        R6 K1 [game]
      282 LOADK                            R8 K38 ["UGCValidationInflationThresholdLegsZ"]
      283 NAMECALL                         R6 R6 K43 ["GetFastString"]
      285 CALL                             R6 2 -1
      286 FASTCALL                         TONUMBER ; [+2]
      287 GETIMPORT                        R5 K45 [tonumber]
      289 CALL                             R5 -1 1
      290 SETTABLEKS                       R5 R4 K41 ["Z"]
      292 NEWTABLE                         R5 8 0
      294 GETIMPORT                        R6 K49 [Enum.AssetType.DynamicHead]
      296 SETTABLE                         R1 R5 R6
      297 GETIMPORT                        R6 K51 [Enum.AssetType.Torso]
      299 SETTABLE                         R2 R5 R6
      300 GETIMPORT                        R6 K53 [Enum.AssetType.LeftArm]
      302 SETTABLE                         R3 R5 R6
      303 GETIMPORT                        R6 K55 [Enum.AssetType.RightArm]
      305 SETTABLE                         R3 R5 R6
      306 GETIMPORT                        R6 K57 [Enum.AssetType.LeftLeg]
      308 SETTABLE                         R4 R5 R6
      309 GETIMPORT                        R6 K59 [Enum.AssetType.RightLeg]
      311 SETTABLE                         R4 R5 R6
      312 SETTABLEKS                       R5 R0 K60 ["AssetTypeToAxisThresholds"]
      314 RETURN                           R0 1
