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
       12 GETTABLEKS                       R5 R1 K5 ["animationPackType"]
       14 JUMPIFEQKNIL                     R5 ; [+8]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["getAvatarAnimationPartThumbnailUri"]
       19 GETTABLEKS                       R5 R1 K5 ["animationPackType"]
       21 CALL                             R4 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 LOADB                            R5 0
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K7 ["ModelPreview"]
       28 JUMPIFNOTEQ                      R3 R6 ; [+5]
       30 JUMPIFEQKNIL                     R4 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 LOADB                            R6 1
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K8 ["Thumbnail"]
       38 JUMPIFEQ                         R3 R7 ; [+11]
       40 LOADB                            R6 1
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K9 ["ImagePicker"]
       44 JUMPIFEQ                         R3 R7 ; [+5]
       46 JUMPIFNOTEQKNIL                  R4 ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 GETTABLEKS                       R8 R1 K3 ["assetTypeEnum"]
       52 GETIMPORT                        R9 K13 [Enum.AssetType.EmoteAnimation]
       54 JUMPIFNOTEQ                      R8 R9 ; [+3]
       56 LOADN                            R7 150
       57 JUMP                             ; [+1]
       58 LOADN                            R7 186
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R8 R8 K14 ["createElement"]
       62 LOADK                            R9 K15 ["Frame"]
       63 DUPTABLE                         R10 K21 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
       64 GETTABLEKS                       R11 R2 K22 ["typeValidation"]
       66 GETTABLEKS                       R11 R11 K23 ["background"]
       68 SETTABLEKS                       R11 R10 K16 ["BackgroundColor3"]
       70 GETTABLEKS                       R11 R1 K20 ["Size"]
       72 SETTABLEKS                       R11 R10 K20 ["Size"]
       74 DUPTABLE                         R11 K26 [{"ModelPreview", "ThumbnailPreview", "LoadingBar"}]
       75 MOVE                             R12 R5
       76 JUMPIFNOT                        R12 ; [+45]
       77 GETUPVAL                         R12 3
       78 GETTABLEKS                       R12 R12 K14 ["createElement"]
       80 GETUPVAL                         R13 4
       81 DUPTABLE                         R14 K34 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"], ["AssetType"], ["AllowedBundleTypeSettings"]}]
       82 GETTABLEKS                       R15 R1 K35 ["assetName"]
       84 SETTABLEKS                       R15 R14 K27 ["title"]
       86 GETIMPORT                        R15 K38 [UDim2.new]
       88 LOADK                            R16 K39 [0.5]
       89 LOADN                            R17 -75
       90 LOADN                            R18 0
       91 LOADN                            R19 48
       92 CALL                             R15 4 1
       93 SETTABLEKS                       R15 R14 K32 ["Position"]
       95 GETIMPORT                        R15 K38 [UDim2.new]
       97 LOADN                            R16 0
       98 LOADN                            R17 150
       99 LOADN                            R18 0
      100 MOVE                             R19 R7
      101 CALL                             R15 4 1
      102 SETTABLEKS                       R15 R14 K20 ["Size"]
      104 GETTABLEKS                       R15 R1 K3 ["assetTypeEnum"]
      106 SETTABLEKS                       R15 R14 K11 ["AssetType"]
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      111 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      113 CALL                             R16 1 1
      114 JUMPIFNOT                        R16 ; [+3]
      115 GETTABLEKS                       R15 R1 K41 ["allowedBundleTypeSettings"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R15
      119 SETTABLEKS                       R15 R14 K33 ["AllowedBundleTypeSettings"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K7 ["ModelPreview"]
      124 MOVE                             R12 R6
      125 JUMPIFNOT                        R12 ; [+44]
      126 GETUPVAL                         R12 3
      127 GETTABLEKS                       R12 R12 K14 ["createElement"]
      129 LOADK                            R13 K42 ["ImageLabel"]
      130 DUPTABLE                         R14 K46 [{["Position"], ["Size"], ["Image"], ["ScaleType"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      131 GETIMPORT                        R15 K38 [UDim2.new]
      133 LOADK                            R16 K39 [0.5]
      134 LOADN                            R17 -75
      135 LOADN                            R18 0
      136 LOADN                            R19 48
      137 CALL                             R15 4 1
      138 SETTABLEKS                       R15 R14 K32 ["Position"]
      140 GETIMPORT                        R15 K38 [UDim2.new]
      142 LOADN                            R16 0
      143 LOADN                            R17 150
      144 LOADN                            R18 0
      145 LOADN                            R19 150
      146 CALL                             R15 4 1
      147 SETTABLEKS                       R15 R14 K20 ["Size"]
      149 MOVE                             R15 R4
      150 JUMPIF                           R15 ; [+8]
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R15 R15 K47 ["getResultThumbnail"]
      154 GETTABLEKS                       R16 R1 K48 ["assetId"]
      156 GETTABLEKS                       R17 R1 K49 ["iconFile"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K43 ["Image"]
      161 JUMPIFEQKNIL                     R4 ; [+4]
      163 GETIMPORT                        R15 K51 [Enum.ScaleType.Fit]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R15
      167 SETTABLEKS                       R15 R14 K44 ["ScaleType"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K24 ["ThumbnailPreview"]
      172 GETUPVAL                         R12 3
      173 GETTABLEKS                       R12 R12 K14 ["createElement"]
      175 GETUPVAL                         R13 5
      176 DUPTABLE                         R14 K56 [{"loadingText", "loadingTime", "holdPercent", "onFinish"}]
      177 GETUPVAL                         R16 0
      178 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      180 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      182 CALL                             R16 1 1
      183 JUMPIF                           R16 ; [+2]
      184 LOADK                            R15 K57 ["Uploading"]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R15
      187 SETTABLEKS                       R15 R14 K52 ["loadingText"]
      189 GETUPVAL                         R16 0
      190 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      192 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      194 CALL                             R16 1 1
      195 JUMPIF                           R16 ; [+2]
      196 LOADK                            R15 K39 [0.5]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R15
      199 SETTABLEKS                       R15 R14 K53 ["loadingTime"]
      201 GETUPVAL                         R16 0
      202 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      204 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      206 CALL                             R16 1 1
      207 JUMPIF                           R16 ; [+2]
      208 LOADK                            R15 K58 [0.92]
      209 JUMP                             ; [+1]
      210 LOADNIL                          R15
      211 SETTABLEKS                       R15 R14 K54 ["holdPercent"]
      213 GETUPVAL                         R16 0
      214 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      216 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      218 CALL                             R16 1 1
      219 JUMPIFNOT                        R16 ; [+3]
      220 GETTABLEKS                       R15 R1 K59 ["onNext"]
      222 JUMP                             ; [+8]
      223 GETTABLEKS                       R16 R1 K60 ["uploadSucceeded"]
      225 JUMPIFEQKNIL                     R16 ; [+4]
      227 GETTABLEKS                       R15 R1 K59 ["onNext"]
      229 JUMPIF                           R15 ; [+1]
      230 LOADNIL                          R15
      231 SETTABLEKS                       R15 R14 K55 ["onFinish"]
      233 CALL                             R12 2 1
      234 SETTABLEKS                       R12 R11 K25 ["LoadingBar"]
      236 CALL                             R8 3 -1
      237 RETURN                           R8 -1

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
       34 GETTABLEKS                       R3 R0 K5 ["animationPackType"]
       36 SETTABLEKS                       R3 R2 K5 ["animationPackType"]
       38 GETTABLEKS                       R3 R0 K6 ["assetTypeEnum"]
       40 SETTABLEKS                       R3 R2 K6 ["assetTypeEnum"]
       42 GETTABLEKS                       R3 R0 K7 ["thumbnailStatus"]
       44 SETTABLEKS                       R3 R2 K7 ["thumbnailStatus"]
       46 GETTABLEKS                       R3 R0 K8 ["iconFile"]
       48 SETTABLEKS                       R3 R2 K8 ["iconFile"]
       50 GETTABLEKS                       R3 R0 K9 ["allowedBundleTypeSettings"]
       52 SETTABLEKS                       R3 R2 K9 ["allowedBundleTypeSettings"]
       54 RETURN                           R2 1

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
       59 GETTABLEKS                       R14 R5 K18 ["AvatarAnimationStudioToolboxTextures"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R14 R0 K9 ["Src"]
       64 GETTABLEKS                       R14 R14 K19 ["Components"]
       66 GETTABLEKS                       R14 R14 K20 ["AssetConfiguration"]
       68 GETIMPORT                        R15 K5 [require]
       70 GETTABLEKS                       R16 R14 K21 ["UploadProgressBar"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K5 [require]
       75 GETTABLEKS                       R17 R14 K22 ["AssetThumbnailPreview"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R17 R2 K23 ["PureComponent"]
       80 LOADK                            R19 K24 ["AssetUpload"]
       81 NAMECALL                         R17 R17 K25 ["extend"]
       83 CALL                             R17 2 1
       84 DUPCLOSURE                       R18 K26 [PROTO_0]
       85 SETTABLEKS                       R18 R17 K27 ["init"]
       87 DUPCLOSURE                       R18 K28 [PROTO_1]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R16
       93 CAPTURE                          VAL R15
       94 SETTABLEKS                       R18 R17 K29 ["render"]
       96 DUPCLOSURE                       R18 K30 [PROTO_2]
       97 DUPCLOSURE                       R19 K31 [PROTO_4]
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R6
      100 MOVE                             R20 R12
      101 DUPTABLE                         R21 K33 [{"Stylizer"}]
      102 GETTABLEKS                       R22 R11 K32 ["Stylizer"]
      104 SETTABLEKS                       R22 R21 K32 ["Stylizer"]
      106 CALL                             R20 1 1
      107 MOVE                             R21 R17
      108 CALL                             R20 1 1
      109 MOVE                             R17 R20
      110 GETTABLEKS                       R20 R3 K34 ["connect"]
      112 MOVE                             R21 R18
      113 MOVE                             R22 R19
      114 CALL                             R20 2 1
      115 MOVE                             R21 R17
      116 CALL                             R20 1 -1
      117 RETURN                           R20 -1
