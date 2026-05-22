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
       13 GETTABLEKS                       R5 R5 K5 ["ModelPreview"]
       15 JUMPIFEQ                         R3 R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 LOADB                            R5 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K6 ["Thumbnail"]
       23 JUMPIFEQ                         R3 R6 ; [+8]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K7 ["ImagePicker"]
       28 JUMPIFEQ                         R3 R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 GETTABLEKS                       R7 R1 K3 ["assetTypeEnum"]
       34 GETIMPORT                        R8 K11 [Enum.AssetType.EmoteAnimation]
       36 JUMPIFNOTEQ                      R7 R8 ; [+3]
       38 LOADN                            R6 150
       39 JUMP                             ; [+1]
       40 LOADN                            R6 186
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K12 ["createElement"]
       44 LOADK                            R8 K13 ["Frame"]
       45 DUPTABLE                         R9 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       46 GETTABLEKS                       R10 R2 K19 ["typeValidation"]
       48 GETTABLEKS                       R10 R10 K20 ["background"]
       50 SETTABLEKS                       R10 R9 K14 ["BackgroundColor3"]
       52 LOADN                            R10 0
       53 SETTABLEKS                       R10 R9 K15 ["BackgroundTransparency"]
       55 LOADN                            R10 0
       56 SETTABLEKS                       R10 R9 K16 ["BorderSizePixel"]
       58 GETTABLEKS                       R10 R1 K17 ["Size"]
       60 SETTABLEKS                       R10 R9 K17 ["Size"]
       62 DUPTABLE                         R10 K23 [{"ModelPreview", "ThumbnailPreview", "LoadingBar"}]
       63 MOVE                             R11 R4
       64 JUMPIFNOT                        R11 ; [+51]
       65 GETUPVAL                         R11 2
       66 GETTABLEKS                       R11 R11 K12 ["createElement"]
       68 GETUPVAL                         R12 3
       69 DUPTABLE                         R13 K29 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "AllowedBundleTypeSettings"}]
       70 GETTABLEKS                       R14 R1 K30 ["assetName"]
       72 SETTABLEKS                       R14 R13 K24 ["title"]
       74 LOADN                            R14 24
       75 SETTABLEKS                       R14 R13 K25 ["titleHeight"]
       77 LOADN                            R14 12
       78 SETTABLEKS                       R14 R13 K26 ["titlePadding"]
       80 GETIMPORT                        R14 K33 [UDim2.new]
       82 LOADK                            R15 K34 [0.5]
       83 LOADN                            R16 181
       84 LOADN                            R17 0
       85 LOADN                            R18 48
       86 CALL                             R14 4 1
       87 SETTABLEKS                       R14 R13 K27 ["Position"]
       89 GETIMPORT                        R14 K33 [UDim2.new]
       91 LOADN                            R15 0
       92 LOADN                            R16 150
       93 LOADN                            R17 0
       94 MOVE                             R18 R6
       95 CALL                             R14 4 1
       96 SETTABLEKS                       R14 R13 K17 ["Size"]
       98 GETTABLEKS                       R14 R1 K3 ["assetTypeEnum"]
      100 SETTABLEKS                       R14 R13 K9 ["AssetType"]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R15 R15 K35 ["isUGCBundleType"]
      105 GETTABLEKS                       R16 R1 K3 ["assetTypeEnum"]
      107 CALL                             R15 1 1
      108 JUMPIFNOT                        R15 ; [+3]
      109 GETTABLEKS                       R14 R1 K36 ["allowedBundleTypeSettings"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R14
      113 SETTABLEKS                       R14 R13 K28 ["AllowedBundleTypeSettings"]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K5 ["ModelPreview"]
      118 MOVE                             R11 R5
      119 JUMPIFNOT                        R11 ; [+40]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K12 ["createElement"]
      123 LOADK                            R12 K37 ["ImageLabel"]
      124 DUPTABLE                         R13 K39 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      125 GETIMPORT                        R14 K33 [UDim2.new]
      127 LOADK                            R15 K34 [0.5]
      128 LOADN                            R16 181
      129 LOADN                            R17 0
      130 LOADN                            R18 48
      131 CALL                             R14 4 1
      132 SETTABLEKS                       R14 R13 K27 ["Position"]
      134 GETIMPORT                        R14 K33 [UDim2.new]
      136 LOADN                            R15 0
      137 LOADN                            R16 150
      138 LOADN                            R17 0
      139 LOADN                            R18 150
      140 CALL                             R14 4 1
      141 SETTABLEKS                       R14 R13 K17 ["Size"]
      143 GETUPVAL                         R14 0
      144 GETTABLEKS                       R14 R14 K40 ["getResultThumbnail"]
      146 GETTABLEKS                       R15 R1 K41 ["assetId"]
      148 GETTABLEKS                       R16 R1 K42 ["iconFile"]
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K38 ["Image"]
      153 LOADN                            R14 1
      154 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      156 LOADN                            R14 0
      157 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R10 K21 ["ThumbnailPreview"]
      162 GETUPVAL                         R12 0
      163 GETTABLEKS                       R12 R12 K35 ["isUGCBundleType"]
      165 GETTABLEKS                       R13 R1 K3 ["assetTypeEnum"]
      167 CALL                             R12 1 1
      168 JUMPIFNOT                        R12 ; [+11]
      169 GETUPVAL                         R11 2
      170 GETTABLEKS                       R11 R11 K12 ["createElement"]
      172 GETUPVAL                         R12 4
      173 DUPTABLE                         R13 K44 [{"onFinish"}]
      174 GETTABLEKS                       R14 R1 K45 ["onNext"]
      176 SETTABLEKS                       R14 R13 K43 ["onFinish"]
      178 CALL                             R11 2 1
      179 JUMP                             ; [+43]
      180 GETUPVAL                         R11 2
      181 GETTABLEKS                       R11 R11 K12 ["createElement"]
      183 GETUPVAL                         R12 5
      184 DUPTABLE                         R13 K49 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
      185 LOADK                            R14 K50 ["Uploading"]
      186 SETTABLEKS                       R14 R13 K46 ["loadingText"]
      188 LOADK                            R14 K34 [0.5]
      189 SETTABLEKS                       R14 R13 K47 ["loadingTime"]
      191 LOADK                            R14 K51 [0.92]
      192 SETTABLEKS                       R14 R13 K48 ["holdPercent"]
      194 GETIMPORT                        R14 K33 [UDim2.new]
      196 LOADN                            R15 0
      197 LOADN                            R16 144
      198 LOADN                            R17 0
      199 LOADN                            R18 6
      200 CALL                             R14 4 1
      201 SETTABLEKS                       R14 R13 K17 ["Size"]
      203 GETIMPORT                        R14 K33 [UDim2.new]
      205 LOADK                            R15 K34 [0.5]
      206 LOADN                            R16 56
      207 LOADN                            R17 0
      208 LOADN                            R18 58
      209 CALL                             R14 4 1
      210 SETTABLEKS                       R14 R13 K27 ["Position"]
      212 GETTABLEKS                       R15 R1 K52 ["uploadSucceeded"]
      214 JUMPIFEQKNIL                     R15 ; [+4]
      216 GETTABLEKS                       R14 R1 K45 ["onNext"]
      218 JUMPIF                           R14 ; [+1]
      219 LOADNIL                          R14
      220 SETTABLEKS                       R14 R13 K43 ["onFinish"]
      222 CALL                             R11 2 1
      223 SETTABLEKS                       R11 R10 K22 ["LoadingBar"]
      225 CALL                             R7 3 -1
      226 RETURN                           R7 -1

PROTO_2:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K9 [{"uploadSucceeded", "instances", "assetId", "assetName", "screenFlowType", "assetTypeEnum", "thumbnailStatus", "iconFile", "allowedBundleTypeSettings"}]
        6 GETTABLEKS                       R3 R0 K0 ["uploadSucceeded"]
        8 SETTABLEKS                       R3 R2 K0 ["uploadSucceeded"]
       10 GETTABLEKS                       R3 R0 K1 ["instances"]
       12 SETTABLEKS                       R3 R2 K1 ["instances"]
       14 GETTABLEKS                       R3 R0 K2 ["assetId"]
       16 SETTABLEKS                       R3 R2 K2 ["assetId"]
       18 GETTABLEKS                       R4 R0 K10 ["changed"]
       20 JUMPIFNOT                        R4 ; [+5]
       21 GETTABLEKS                       R3 R0 K10 ["changed"]
       23 GETTABLEKS                       R3 R3 K11 ["AssetConfigName"]
       25 JUMPIF                           R3 ; [+2]
       26 GETTABLEKS                       R3 R0 K3 ["assetName"]
       28 SETTABLEKS                       R3 R2 K3 ["assetName"]
       30 GETTABLEKS                       R3 R0 K4 ["screenFlowType"]
       32 SETTABLEKS                       R3 R2 K4 ["screenFlowType"]
       34 GETTABLEKS                       R3 R0 K5 ["assetTypeEnum"]
       36 SETTABLEKS                       R3 R2 K5 ["assetTypeEnum"]
       38 GETTABLEKS                       R3 R0 K6 ["thumbnailStatus"]
       40 SETTABLEKS                       R3 R2 K6 ["thumbnailStatus"]
       42 GETTABLEKS                       R3 R0 K7 ["iconFile"]
       44 SETTABLEKS                       R3 R2 K7 ["iconFile"]
       46 GETTABLEKS                       R3 R0 K8 ["allowedBundleTypeSettings"]
       48 SETTABLEKS                       R3 R2 K8 ["allowedBundleTypeSettings"]
       50 RETURN                           R2 1

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
       57 GETTABLEKS                       R13 R0 K9 ["Src"]
       59 GETTABLEKS                       R13 R13 K18 ["Components"]
       61 GETTABLEKS                       R13 R13 K19 ["AssetConfiguration"]
       63 GETIMPORT                        R14 K5 [require]
       65 GETTABLEKS                       R15 R13 K20 ["LoadingBarWrapper"]
       67 CALL                             R14 1 1
       68 GETIMPORT                        R15 K5 [require]
       70 GETTABLEKS                       R16 R13 K21 ["ProgressBarWrapper"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K5 [require]
       75 GETTABLEKS                       R17 R13 K22 ["AssetThumbnailPreview"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R17 R2 K23 ["PureComponent"]
       80 LOADK                            R19 K24 ["AssetUpload"]
       81 NAMECALL                         R17 R17 K25 ["extend"]
       83 CALL                             R17 2 1
       84 DUPCLOSURE                       R18 K26 [PROTO_0]
       85 SETTABLEKS                       R18 R17 K27 ["init"]
       87 DUPCLOSURE                       R18 K28 [PROTO_1]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R16
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R14
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
