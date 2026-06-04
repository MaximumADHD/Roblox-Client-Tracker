PROTO_0:
        0 DUPTABLE                         R2 K1 [{"isLoading"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 RETURN                           R0 0

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
       66 DUPTABLE                         R10 K20 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       67 GETTABLEKS                       R11 R2 K21 ["typeValidation"]
       69 GETTABLEKS                       R11 R11 K22 ["background"]
       71 SETTABLEKS                       R11 R10 K16 ["BackgroundColor3"]
       73 LOADN                            R11 0
       74 SETTABLEKS                       R11 R10 K17 ["BackgroundTransparency"]
       76 LOADN                            R11 0
       77 SETTABLEKS                       R11 R10 K18 ["BorderSizePixel"]
       79 GETTABLEKS                       R11 R1 K19 ["Size"]
       81 SETTABLEKS                       R11 R10 K19 ["Size"]
       83 DUPTABLE                         R11 K25 [{"ModelPreview", "ThumbnailPreview", "LoadingBar"}]
       84 MOVE                             R12 R5
       85 JUMPIFNOT                        R12 ; [+51]
       86 GETUPVAL                         R12 4
       87 GETTABLEKS                       R12 R12 K14 ["createElement"]
       89 GETUPVAL                         R13 5
       90 DUPTABLE                         R14 K31 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "AllowedBundleTypeSettings"}]
       91 GETTABLEKS                       R15 R1 K32 ["assetName"]
       93 SETTABLEKS                       R15 R14 K26 ["title"]
       95 LOADN                            R15 24
       96 SETTABLEKS                       R15 R14 K27 ["titleHeight"]
       98 LOADN                            R15 12
       99 SETTABLEKS                       R15 R14 K28 ["titlePadding"]
      101 GETIMPORT                        R15 K35 [UDim2.new]
      103 LOADK                            R16 K36 [0.5]
      104 LOADN                            R17 181
      105 LOADN                            R18 0
      106 LOADN                            R19 48
      107 CALL                             R15 4 1
      108 SETTABLEKS                       R15 R14 K29 ["Position"]
      110 GETIMPORT                        R15 K35 [UDim2.new]
      112 LOADN                            R16 0
      113 LOADN                            R17 150
      114 LOADN                            R18 0
      115 MOVE                             R19 R7
      116 CALL                             R15 4 1
      117 SETTABLEKS                       R15 R14 K19 ["Size"]
      119 GETTABLEKS                       R15 R1 K3 ["assetTypeEnum"]
      121 SETTABLEKS                       R15 R14 K11 ["AssetType"]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K37 ["isUGCBundleType"]
      126 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      128 CALL                             R16 1 1
      129 JUMPIFNOT                        R16 ; [+3]
      130 GETTABLEKS                       R15 R1 K38 ["allowedBundleTypeSettings"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R15
      134 SETTABLEKS                       R15 R14 K30 ["AllowedBundleTypeSettings"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K7 ["ModelPreview"]
      139 MOVE                             R12 R6
      140 JUMPIFNOT                        R12 ; [+56]
      141 GETUPVAL                         R12 4
      142 GETTABLEKS                       R12 R12 K14 ["createElement"]
      144 LOADK                            R13 K39 ["ImageLabel"]
      145 DUPTABLE                         R14 K42 [{"Position", "Size", "Image", "ScaleType", "BackgroundTransparency", "BorderSizePixel"}]
      146 GETIMPORT                        R15 K35 [UDim2.new]
      148 LOADK                            R16 K36 [0.5]
      149 LOADN                            R17 181
      150 LOADN                            R18 0
      151 LOADN                            R19 48
      152 CALL                             R15 4 1
      153 SETTABLEKS                       R15 R14 K29 ["Position"]
      155 GETIMPORT                        R15 K35 [UDim2.new]
      157 LOADN                            R16 0
      158 LOADN                            R17 150
      159 LOADN                            R18 0
      160 LOADN                            R19 150
      161 CALL                             R15 4 1
      162 SETTABLEKS                       R15 R14 K19 ["Size"]
      164 GETUPVAL                         R16 1
      165 CALL                             R16 0 1
      166 JUMPIFNOT                        R16 ; [+2]
      167 MOVE                             R15 R4
      168 JUMPIF                           R15 ; [+8]
      169 GETUPVAL                         R15 0
      170 GETTABLEKS                       R15 R15 K43 ["getResultThumbnail"]
      172 GETTABLEKS                       R16 R1 K44 ["assetId"]
      174 GETTABLEKS                       R17 R1 K45 ["iconFile"]
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K40 ["Image"]
      179 GETUPVAL                         R16 1
      180 CALL                             R16 0 1
      181 JUMPIFNOT                        R16 ; [+5]
      182 JUMPIFEQKNIL                     R4 ; [+4]
      184 GETIMPORT                        R15 K47 [Enum.ScaleType.Fit]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R15
      188 SETTABLEKS                       R15 R14 K41 ["ScaleType"]
      190 LOADN                            R15 1
      191 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
      193 LOADN                            R15 0
      194 SETTABLEKS                       R15 R14 K18 ["BorderSizePixel"]
      196 CALL                             R12 2 1
      197 SETTABLEKS                       R12 R11 K23 ["ThumbnailPreview"]
      199 GETUPVAL                         R13 6
      200 CALL                             R13 0 1
      201 JUMPIFNOT                        R13 ; [+63]
      202 GETUPVAL                         R12 4
      203 GETTABLEKS                       R12 R12 K14 ["createElement"]
      205 GETUPVAL                         R13 7
      206 DUPTABLE                         R14 K52 [{"loadingText", "loadingTime", "holdPercent", "onFinish"}]
      207 GETUPVAL                         R16 0
      208 GETTABLEKS                       R16 R16 K37 ["isUGCBundleType"]
      210 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      212 CALL                             R16 1 1
      213 JUMPIF                           R16 ; [+2]
      214 LOADK                            R15 K53 ["Uploading"]
      215 JUMP                             ; [+1]
      216 LOADNIL                          R15
      217 SETTABLEKS                       R15 R14 K48 ["loadingText"]
      219 GETUPVAL                         R16 0
      220 GETTABLEKS                       R16 R16 K37 ["isUGCBundleType"]
      222 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      224 CALL                             R16 1 1
      225 JUMPIF                           R16 ; [+2]
      226 LOADK                            R15 K36 [0.5]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R15
      229 SETTABLEKS                       R15 R14 K49 ["loadingTime"]
      231 GETUPVAL                         R16 0
      232 GETTABLEKS                       R16 R16 K37 ["isUGCBundleType"]
      234 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      236 CALL                             R16 1 1
      237 JUMPIF                           R16 ; [+2]
      238 LOADK                            R15 K54 [0.92]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R15
      241 SETTABLEKS                       R15 R14 K50 ["holdPercent"]
      243 GETUPVAL                         R16 0
      244 GETTABLEKS                       R16 R16 K37 ["isUGCBundleType"]
      246 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      248 CALL                             R16 1 1
      249 JUMPIFNOT                        R16 ; [+3]
      250 GETTABLEKS                       R15 R1 K55 ["onNext"]
      252 JUMP                             ; [+8]
      253 GETTABLEKS                       R16 R1 K56 ["uploadSucceeded"]
      255 JUMPIFEQKNIL                     R16 ; [+4]
      257 GETTABLEKS                       R15 R1 K55 ["onNext"]
      259 JUMPIF                           R15 ; [+1]
      260 LOADNIL                          R15
      261 SETTABLEKS                       R15 R14 K51 ["onFinish"]
      263 CALL                             R12 2 1
      264 JUMP                             ; [+61]
      265 GETUPVAL                         R13 0
      266 GETTABLEKS                       R13 R13 K37 ["isUGCBundleType"]
      268 GETTABLEKS                       R14 R1 K3 ["assetTypeEnum"]
      270 CALL                             R13 1 1
      271 JUMPIFNOT                        R13 ; [+11]
      272 GETUPVAL                         R12 4
      273 GETTABLEKS                       R12 R12 K14 ["createElement"]
      275 GETUPVAL                         R13 8
      276 DUPTABLE                         R14 K57 [{"onFinish"}]
      277 GETTABLEKS                       R15 R1 K55 ["onNext"]
      279 SETTABLEKS                       R15 R14 K51 ["onFinish"]
      281 CALL                             R12 2 1
      282 JUMP                             ; [+43]
      283 GETUPVAL                         R12 4
      284 GETTABLEKS                       R12 R12 K14 ["createElement"]
      286 GETUPVAL                         R13 9
      287 DUPTABLE                         R14 K58 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
      288 LOADK                            R15 K53 ["Uploading"]
      289 SETTABLEKS                       R15 R14 K48 ["loadingText"]
      291 LOADK                            R15 K36 [0.5]
      292 SETTABLEKS                       R15 R14 K49 ["loadingTime"]
      294 LOADK                            R15 K54 [0.92]
      295 SETTABLEKS                       R15 R14 K50 ["holdPercent"]
      297 GETIMPORT                        R15 K35 [UDim2.new]
      299 LOADN                            R16 0
      300 LOADN                            R17 144
      301 LOADN                            R18 0
      302 LOADN                            R19 6
      303 CALL                             R15 4 1
      304 SETTABLEKS                       R15 R14 K19 ["Size"]
      306 GETIMPORT                        R15 K35 [UDim2.new]
      308 LOADK                            R16 K36 [0.5]
      309 LOADN                            R17 56
      310 LOADN                            R18 0
      311 LOADN                            R19 58
      312 CALL                             R15 4 1
      313 SETTABLEKS                       R15 R14 K29 ["Position"]
      315 GETTABLEKS                       R16 R1 K56 ["uploadSucceeded"]
      317 JUMPIFEQKNIL                     R16 ; [+4]
      319 GETTABLEKS                       R15 R1 K55 ["onNext"]
      321 JUMPIF                           R15 ; [+1]
      322 LOADNIL                          R15
      323 SETTABLEKS                       R15 R14 K51 ["onFinish"]
      325 CALL                             R12 2 1
      326 SETTABLEKS                       R12 R11 K24 ["LoadingBar"]
      328 CALL                             R8 3 -1
      329 RETURN                           R8 -1

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
