PROTO_0:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["getPreviewType"]
        7 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
        9 GETTABLEKS                       R5 R1 K4 ["instances"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 1
       13 CALL                             R5 0 1
       14 JUMPIFNOT                        R5 ; [+11]
       15 GETTABLEKS                       R5 R1 K5 ["animationPackType"]
       17 JUMPIFEQKNIL                     R5 ; [+8]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K6 ["getAvatarAnimationPartThumbnailUri"]
       22 GETTABLEKS                       R5 R1 K5 ["animationPackType"]
       24 CALL                             R4 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 LOADB                            R5 0
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K7 ["ModelPreview"]
       31 JUMPIFNOTEQ                      R3 R6 ; [+5]
       33 JUMPIFEQKNIL                     R4 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 LOADB                            R6 1
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K8 ["Thumbnail"]
       41 JUMPIFEQ                         R3 R7 ; [+11]
       43 LOADB                            R6 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K9 ["ImagePicker"]
       47 JUMPIFEQ                         R3 R7 ; [+5]
       49 JUMPIFNOTEQKNIL                  R4 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 GETTABLEKS                       R8 R1 K3 ["assetTypeEnum"]
       55 GETIMPORT                        R9 K13 [Enum.AssetType.EmoteAnimation]
       57 JUMPIFNOTEQ                      R8 R9 ; [+3]
       59 LOADN                            R7 150
       60 JUMP                             ; [+1]
       61 LOADN                            R7 186
       62 GETUPVAL                         R8 4
       63 GETTABLEKS                       R8 R8 K14 ["createElement"]
       65 LOADK                            R9 K15 ["Frame"]
       66 DUPTABLE                         R10 K21 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
       67 GETTABLEKS                       R11 R2 K22 ["typeValidation"]
       69 GETTABLEKS                       R11 R11 K23 ["background"]
       71 SETTABLEKS                       R11 R10 K16 ["BackgroundColor3"]
       73 GETTABLEKS                       R11 R1 K20 ["Size"]
       75 SETTABLEKS                       R11 R10 K20 ["Size"]
       77 DUPTABLE                         R11 K26 [{"ModelPreview", "ThumbnailPreview", "LoadingBar"}]
       78 MOVE                             R12 R5
       79 JUMPIFNOT                        R12 ; [+45]
       80 GETUPVAL                         R12 4
       81 GETTABLEKS                       R12 R12 K14 ["createElement"]
       83 GETUPVAL                         R13 5
       84 DUPTABLE                         R14 K34 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"], ["AssetType"], ["AllowedBundleTypeSettings"]}]
       85 GETTABLEKS                       R15 R1 K35 ["assetName"]
       87 SETTABLEKS                       R15 R14 K27 ["title"]
       89 GETIMPORT                        R15 K38 [UDim2.new]
       91 LOADK                            R16 K39 [0.5]
       92 LOADN                            R17 -75
       93 LOADN                            R18 0
       94 LOADN                            R19 48
       95 CALL                             R15 4 1
       96 SETTABLEKS                       R15 R14 K32 ["Position"]
       98 GETIMPORT                        R15 K38 [UDim2.new]
      100 LOADN                            R16 0
      101 LOADN                            R17 150
      102 LOADN                            R18 0
      103 MOVE                             R19 R7
      104 CALL                             R15 4 1
      105 SETTABLEKS                       R15 R14 K20 ["Size"]
      107 GETTABLEKS                       R15 R1 K3 ["assetTypeEnum"]
      109 SETTABLEKS                       R15 R14 K11 ["AssetType"]
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      114 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      116 CALL                             R16 1 1
      117 JUMPIFNOT                        R16 ; [+3]
      118 GETTABLEKS                       R15 R1 K41 ["allowedBundleTypeSettings"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R15
      122 SETTABLEKS                       R15 R14 K33 ["AllowedBundleTypeSettings"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K7 ["ModelPreview"]
      127 MOVE                             R12 R6
      128 JUMPIFNOT                        R12 ; [+50]
      129 GETUPVAL                         R12 4
      130 GETTABLEKS                       R12 R12 K14 ["createElement"]
      132 LOADK                            R13 K42 ["ImageLabel"]
      133 DUPTABLE                         R14 K46 [{["Position"], ["Size"], ["Image"], ["ScaleType"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      134 GETIMPORT                        R15 K38 [UDim2.new]
      136 LOADK                            R16 K39 [0.5]
      137 LOADN                            R17 -75
      138 LOADN                            R18 0
      139 LOADN                            R19 48
      140 CALL                             R15 4 1
      141 SETTABLEKS                       R15 R14 K32 ["Position"]
      143 GETIMPORT                        R15 K38 [UDim2.new]
      145 LOADN                            R16 0
      146 LOADN                            R17 150
      147 LOADN                            R18 0
      148 LOADN                            R19 150
      149 CALL                             R15 4 1
      150 SETTABLEKS                       R15 R14 K20 ["Size"]
      152 GETUPVAL                         R16 1
      153 CALL                             R16 0 1
      154 JUMPIFNOT                        R16 ; [+2]
      155 MOVE                             R15 R4
      156 JUMPIF                           R15 ; [+8]
      157 GETUPVAL                         R15 0
      158 GETTABLEKS                       R15 R15 K47 ["getResultThumbnail"]
      160 GETTABLEKS                       R16 R1 K48 ["assetId"]
      162 GETTABLEKS                       R17 R1 K49 ["iconFile"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K43 ["Image"]
      167 GETUPVAL                         R16 1
      168 CALL                             R16 0 1
      169 JUMPIFNOT                        R16 ; [+5]
      170 JUMPIFEQKNIL                     R4 ; [+4]
      172 GETIMPORT                        R15 K51 [Enum.ScaleType.Fit]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R15
      176 SETTABLEKS                       R15 R14 K44 ["ScaleType"]
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K24 ["ThumbnailPreview"]
      181 GETUPVAL                         R13 6
      182 CALL                             R13 0 1
      183 JUMPIFNOT                        R13 ; [+63]
      184 GETUPVAL                         R12 4
      185 GETTABLEKS                       R12 R12 K14 ["createElement"]
      187 GETUPVAL                         R13 7
      188 DUPTABLE                         R14 K56 [{"loadingText", "loadingTime", "holdPercent", "onFinish"}]
      189 GETUPVAL                         R16 0
      190 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      192 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      194 CALL                             R16 1 1
      195 JUMPIF                           R16 ; [+2]
      196 LOADK                            R15 K57 ["Uploading"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R15
      199 SETTABLEKS                       R15 R14 K52 ["loadingText"]
      201 GETUPVAL                         R16 0
      202 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      204 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      206 CALL                             R16 1 1
      207 JUMPIF                           R16 ; [+2]
      208 LOADK                            R15 K39 [0.5]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R15
      211 SETTABLEKS                       R15 R14 K53 ["loadingTime"]
      213 GETUPVAL                         R16 0
      214 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      216 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      218 CALL                             R16 1 1
      219 JUMPIF                           R16 ; [+2]
      220 LOADK                            R15 K58 [0.92]
      221 JUMP                             ; [+1]
      222 LOADNIL                          R15
      223 SETTABLEKS                       R15 R14 K54 ["holdPercent"]
      225 GETUPVAL                         R16 0
      226 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      228 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      230 CALL                             R16 1 1
      231 JUMPIFNOT                        R16 ; [+3]
      232 GETTABLEKS                       R15 R1 K59 ["onNext"]
      234 JUMP                             ; [+8]
      235 GETTABLEKS                       R16 R1 K60 ["uploadSucceeded"]
      237 JUMPIFEQKNIL                     R16 ; [+4]
      239 GETTABLEKS                       R15 R1 K59 ["onNext"]
      241 JUMPIF                           R15 ; [+1]
      242 LOADNIL                          R15
      243 SETTABLEKS                       R15 R14 K55 ["onFinish"]
      245 CALL                             R12 2 1
      246 JUMP                             ; [+52]
      247 GETUPVAL                         R13 0
      248 GETTABLEKS                       R13 R13 K40 ["isUGCBundleType"]
      250 GETTABLEKS                       R14 R1 K3 ["assetTypeEnum"]
      252 CALL                             R13 1 1
      253 JUMPIFNOT                        R13 ; [+11]
      254 GETUPVAL                         R12 4
      255 GETTABLEKS                       R12 R12 K14 ["createElement"]
      257 GETUPVAL                         R13 8
      258 DUPTABLE                         R14 K61 [{"onFinish"}]
      259 GETTABLEKS                       R15 R1 K59 ["onNext"]
      261 SETTABLEKS                       R15 R14 K55 ["onFinish"]
      263 CALL                             R12 2 1
      264 JUMP                             ; [+34]
      265 GETUPVAL                         R12 4
      266 GETTABLEKS                       R12 R12 K14 ["createElement"]
      268 GETUPVAL                         R13 9
      269 DUPTABLE                         R14 K62 [{["loadingText"] = "Uploading", ["loadingTime"] = 0.5, ["holdPercent"] = 0.92, ["Size"], ["Position"], ["onFinish"]}]
      270 GETIMPORT                        R15 K38 [UDim2.new]
      272 LOADN                            R16 0
      273 LOADN                            R17 400
      274 LOADN                            R18 0
      275 LOADN                            R19 6
      276 CALL                             R15 4 1
      277 SETTABLEKS                       R15 R14 K20 ["Size"]
      279 GETIMPORT                        R15 K38 [UDim2.new]
      281 LOADK                            R16 K39 [0.5]
      282 LOADN                            R17 -200
      283 LOADN                            R18 0
      284 LOADN                            R19 314
      285 CALL                             R15 4 1
      286 SETTABLEKS                       R15 R14 K32 ["Position"]
      288 GETTABLEKS                       R16 R1 K60 ["uploadSucceeded"]
      290 JUMPIFEQKNIL                     R16 ; [+4]
      292 GETTABLEKS                       R15 R1 K59 ["onNext"]
      294 JUMPIF                           R15 ; [+1]
      295 LOADNIL                          R15
      296 SETTABLEKS                       R15 R14 K55 ["onFinish"]
      298 CALL                             R12 2 1
      299 SETTABLEKS                       R12 R11 K25 ["LoadingBar"]
      301 CALL                             R8 3 -1
      302 RETURN                           R8 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K10 [{"uploadSucceeded", "instances", "assetId", "assetName", "screenFlowType", "animationPackType", "assetTypeEnum", "thumbnailStatus", "iconFile", "allowedBundleTypeSettings"}]
        6 GETTABLEKS                       R3 R0 K0 ["uploadSucceeded"]
        8 SETTABLEKS                       R3 R2 K0 ["uploadSucceeded"]
       10 GETTABLEKS                       R3 R0 K1 ["instances"]
       12 SETTABLEKS                       R3 R2 K1 ["instances"]
       14 GETTABLEKS                       R3 R0 K2 ["assetId"]
       16 SETTABLEKS                       R3 R2 K2 ["assetId"]
       18 GETTABLEKS                       R4 R0 K11 ["changed"]
       20 JUMPIFNOT                        R4 ; [+5]
       21 GETTABLEKS                       R3 R0 K11 ["changed"]
       23 GETTABLEKS                       R3 R3 K12 ["AssetConfigName"]
       25 JUMPIF                           R3 ; [+2]
       26 GETTABLEKS                       R3 R0 K3 ["assetName"]
       28 SETTABLEKS                       R3 R2 K3 ["assetName"]
       30 GETTABLEKS                       R3 R0 K4 ["screenFlowType"]
       32 SETTABLEKS                       R3 R2 K4 ["screenFlowType"]
       34 GETUPVAL                         R4 0
       35 CALL                             R4 0 1
       36 JUMPIFNOT                        R4 ; [+3]
       37 GETTABLEKS                       R3 R0 K5 ["animationPackType"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R3
       41 SETTABLEKS                       R3 R2 K5 ["animationPackType"]
       43 GETTABLEKS                       R3 R0 K6 ["assetTypeEnum"]
       45 SETTABLEKS                       R3 R2 K6 ["assetTypeEnum"]
       47 GETTABLEKS                       R3 R0 K7 ["thumbnailStatus"]
       49 SETTABLEKS                       R3 R2 K7 ["thumbnailStatus"]
       51 GETTABLEKS                       R3 R0 K8 ["iconFile"]
       53 SETTABLEKS                       R3 R2 K8 ["iconFile"]
       55 GETTABLEKS                       R3 R0 K9 ["allowedBundleTypeSettings"]
       57 SETTABLEKS                       R3 R2 K9 ["allowedBundleTypeSettings"]
       59 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R2 K1 ["UPLOAD_ASSET_RESULT"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"onNext"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["onNext"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R5 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["AssetConfigConstants"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R6 K12 ["PreviewTypes"]
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R5 K13 ["AssetConfigUtil"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R9 R0 K9 ["Src"]
       46 GETTABLEKS                       R9 R9 K14 ["Actions"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R9 K15 ["SetCurrentScreen"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R11 R4 K16 ["ContextServices"]
       55 GETTABLEKS                       R12 R11 K17 ["withContext"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K9 ["Src"]
       61 GETTABLEKS                       R14 R14 K18 ["Flags"]
       63 GETTABLEKS                       R14 R14 K19 ["getFFlagToolboxAssetConfigFoundationMigration"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R0 K9 ["Src"]
       70 GETTABLEKS                       R15 R15 K18 ["Flags"]
       72 GETTABLEKS                       R15 R15 K20 ["getFFlagEnableUploadingAvatarAnimations"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K5 [require]
       77 GETTABLEKS                       R16 R5 K21 ["AvatarAnimationStudioToolboxTextures"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R0 K9 ["Src"]
       82 GETTABLEKS                       R16 R16 K22 ["Components"]
       84 GETTABLEKS                       R16 R16 K23 ["AssetConfiguration"]
       86 GETIMPORT                        R17 K5 [require]
       88 GETTABLEKS                       R18 R16 K24 ["UploadProgressBar"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R16 K25 ["LoadingBarWrapper"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R16 K26 ["ProgressBarWrapper"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K5 [require]
      103 GETTABLEKS                       R21 R16 K27 ["AssetThumbnailPreview"]
      105 CALL                             R20 1 1
      106 GETTABLEKS                       R21 R2 K28 ["PureComponent"]
      108 LOADK                            R23 K29 ["AssetUpload"]
      109 NAMECALL                         R21 R21 K30 ["extend"]
      111 CALL                             R21 2 1
      112 DUPCLOSURE                       R22 K31 [PROTO_0]
      113 SETTABLEKS                       R22 R21 K32 ["init"]
      115 DUPCLOSURE                       R22 K33 [PROTO_1]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R20
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R19
      125 CAPTURE                          VAL R18
      126 SETTABLEKS                       R22 R21 K34 ["render"]
      128 DUPCLOSURE                       R22 K35 [PROTO_2]
      129 CAPTURE                          VAL R14
      130 DUPCLOSURE                       R23 K36 [PROTO_4]
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R6
      133 MOVE                             R24 R12
      134 DUPTABLE                         R25 K38 [{"Stylizer"}]
      135 GETTABLEKS                       R26 R11 K37 ["Stylizer"]
      137 SETTABLEKS                       R26 R25 K37 ["Stylizer"]
      139 CALL                             R24 1 1
      140 MOVE                             R25 R21
      141 CALL                             R24 1 1
      142 MOVE                             R21 R24
      143 GETTABLEKS                       R24 R3 K39 ["connect"]
      145 MOVE                             R25 R22
      146 MOVE                             R26 R23
      147 CALL                             R24 2 1
      148 MOVE                             R25 R21
      149 CALL                             R24 1 -1
      150 RETURN                           R24 -1
