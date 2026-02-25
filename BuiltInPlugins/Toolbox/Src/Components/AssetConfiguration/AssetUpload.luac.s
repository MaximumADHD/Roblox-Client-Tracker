PROTO_0:
        0 DUPTABLE                         R2 K1 [{"isLoading"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["getPreviewType"]
        7 GETTABLEKS                       R4 R1 K3 ["assetTypeEnum"]
        9 GETTABLEKS                       R5 R1 K4 ["instances"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K5 ["ModelPreview"]
       15 JUMPIFEQ                         R3 R5 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 LOADB                            R5 1
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K6 ["Thumbnail"]
       23 JUMPIFEQ                         R3 R6 ; [+8]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K7 ["ImagePicker"]
       28 JUMPIFEQ                         R3 R6 ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 GETUPVAL                         R7 2
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+8]
       35 GETTABLEKS                       R7 R1 K3 ["assetTypeEnum"]
       37 GETIMPORT                        R8 K11 [Enum.AssetType.EmoteAnimation]
       39 JUMPIFNOTEQ                      R7 R8 ; [+3]
       41 LOADN                            R6 150
       42 JUMP                             ; [+1]
       43 LOADN                            R6 186
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K12 ["createElement"]
       47 LOADK                            R8 K13 ["Frame"]
       48 DUPTABLE                         R9 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       49 GETTABLEKS                       R11 R2 K19 ["typeValidation"]
       51 GETTABLEKS                       R10 R11 K20 ["background"]
       53 SETTABLEKS                       R10 R9 K14 ["BackgroundColor3"]
       55 LOADN                            R10 0
       56 SETTABLEKS                       R10 R9 K15 ["BackgroundTransparency"]
       58 LOADN                            R10 0
       59 SETTABLEKS                       R10 R9 K16 ["BorderSizePixel"]
       61 GETTABLEKS                       R10 R1 K17 ["Size"]
       63 SETTABLEKS                       R10 R9 K17 ["Size"]
       65 DUPTABLE                         R10 K23 [{"ModelPreview", "ThumbnailPreview", "LoadingBar"}]
       66 MOVE                             R11 R4
       67 JUMPIFNOT                        R11 ; [+59]
       68 GETUPVAL                         R12 3
       69 GETTABLEKS                       R11 R12 K12 ["createElement"]
       71 GETUPVAL                         R12 4
       72 DUPTABLE                         R13 K29 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "AllowedBundleTypeSettings"}]
       73 GETTABLEKS                       R14 R1 K30 ["assetName"]
       75 SETTABLEKS                       R14 R13 K24 ["title"]
       77 LOADN                            R14 24
       78 SETTABLEKS                       R14 R13 K25 ["titleHeight"]
       80 LOADN                            R14 12
       81 SETTABLEKS                       R14 R13 K26 ["titlePadding"]
       83 GETIMPORT                        R14 K33 [UDim2.new]
       85 LOADK                            R15 K34 [0.5]
       86 LOADN                            R16 181
       87 LOADN                            R17 0
       88 LOADN                            R18 48
       89 CALL                             R14 4 1
       90 SETTABLEKS                       R14 R13 K27 ["Position"]
       92 GETIMPORT                        R14 K33 [UDim2.new]
       94 LOADN                            R15 0
       95 LOADN                            R16 150
       96 LOADN                            R17 0
       97 MOVE                             R18 R6
       98 CALL                             R14 4 1
       99 SETTABLEKS                       R14 R13 K17 ["Size"]
      101 GETUPVAL                         R15 5
      102 CALL                             R15 0 1
      103 JUMPIFNOT                        R15 ; [+3]
      104 GETTABLEKS                       R14 R1 K3 ["assetTypeEnum"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R14
      108 SETTABLEKS                       R14 R13 K9 ["AssetType"]
      110 GETUPVAL                         R15 5
      111 CALL                             R15 0 1
      112 JUMPIFNOT                        R15 ; [+10]
      113 GETUPVAL                         R16 0
      114 GETTABLEKS                       R15 R16 K35 ["isUGCBundleType"]
      116 GETTABLEKS                       R16 R1 K3 ["assetTypeEnum"]
      118 CALL                             R15 1 1
      119 JUMPIFNOT                        R15 ; [+3]
      120 GETTABLEKS                       R14 R1 K36 ["allowedBundleTypeSettings"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R14
      124 SETTABLEKS                       R14 R13 K28 ["AllowedBundleTypeSettings"]
      126 CALL                             R11 2 1
      127 SETTABLEKS                       R11 R10 K5 ["ModelPreview"]
      129 MOVE                             R11 R5
      130 JUMPIFNOT                        R11 ; [+40]
      131 GETUPVAL                         R12 3
      132 GETTABLEKS                       R11 R12 K12 ["createElement"]
      134 LOADK                            R12 K37 ["ImageLabel"]
      135 DUPTABLE                         R13 K39 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      136 GETIMPORT                        R14 K33 [UDim2.new]
      138 LOADK                            R15 K34 [0.5]
      139 LOADN                            R16 181
      140 LOADN                            R17 0
      141 LOADN                            R18 48
      142 CALL                             R14 4 1
      143 SETTABLEKS                       R14 R13 K27 ["Position"]
      145 GETIMPORT                        R14 K33 [UDim2.new]
      147 LOADN                            R15 0
      148 LOADN                            R16 150
      149 LOADN                            R17 0
      150 LOADN                            R18 150
      151 CALL                             R14 4 1
      152 SETTABLEKS                       R14 R13 K17 ["Size"]
      154 GETUPVAL                         R15 0
      155 GETTABLEKS                       R14 R15 K40 ["getResultThumbnail"]
      157 GETTABLEKS                       R15 R1 K41 ["assetId"]
      159 GETTABLEKS                       R16 R1 K42 ["iconFile"]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K38 ["Image"]
      164 LOADN                            R14 1
      165 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      167 LOADN                            R14 0
      168 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
      170 CALL                             R11 2 1
      171 SETTABLEKS                       R11 R10 K21 ["ThumbnailPreview"]
      173 GETUPVAL                         R13 0
      174 GETTABLEKS                       R12 R13 K35 ["isUGCBundleType"]
      176 GETTABLEKS                       R13 R1 K3 ["assetTypeEnum"]
      178 CALL                             R12 1 1
      179 JUMPIFNOT                        R12 ; [+11]
      180 GETUPVAL                         R12 3
      181 GETTABLEKS                       R11 R12 K12 ["createElement"]
      183 GETUPVAL                         R12 6
      184 DUPTABLE                         R13 K44 [{"onFinish"}]
      185 GETTABLEKS                       R14 R1 K45 ["onNext"]
      187 SETTABLEKS                       R14 R13 K43 ["onFinish"]
      189 CALL                             R11 2 1
      190 JUMP                             ; [+43]
      191 GETUPVAL                         R12 3
      192 GETTABLEKS                       R11 R12 K12 ["createElement"]
      194 GETUPVAL                         R12 7
      195 DUPTABLE                         R13 K49 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
      196 LOADK                            R14 K50 ["Uploading"]
      197 SETTABLEKS                       R14 R13 K46 ["loadingText"]
      199 LOADK                            R14 K34 [0.5]
      200 SETTABLEKS                       R14 R13 K47 ["loadingTime"]
      202 LOADK                            R14 K51 [0.92]
      203 SETTABLEKS                       R14 R13 K48 ["holdPercent"]
      205 GETIMPORT                        R14 K33 [UDim2.new]
      207 LOADN                            R15 0
      208 LOADN                            R16 144
      209 LOADN                            R17 0
      210 LOADN                            R18 6
      211 CALL                             R14 4 1
      212 SETTABLEKS                       R14 R13 K17 ["Size"]
      214 GETIMPORT                        R14 K33 [UDim2.new]
      216 LOADK                            R15 K34 [0.5]
      217 LOADN                            R16 56
      218 LOADN                            R17 0
      219 LOADN                            R18 58
      220 CALL                             R14 4 1
      221 SETTABLEKS                       R14 R13 K27 ["Position"]
      223 GETTABLEKS                       R15 R1 K52 ["uploadSucceeded"]
      225 JUMPIFEQKNIL                     R15 ; [+4]
      227 GETTABLEKS                       R14 R1 K45 ["onNext"]
      229 JUMPIF                           R14 ; [+1]
      230 LOADNIL                          R14
      231 SETTABLEKS                       R14 R13 K43 ["onFinish"]
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K22 ["LoadingBar"]
      236 CALL                             R7 3 -1
      237 RETURN                           R7 -1

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
       21 GETTABLEKS                       R4 R0 K10 ["changed"]
       23 GETTABLEKS                       R3 R4 K11 ["AssetConfigName"]
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
       46 GETUPVAL                         R4 0
       47 CALL                             R4 0 1
       48 JUMPIFNOT                        R4 ; [+3]
       49 GETTABLEKS                       R3 R0 K8 ["allowedBundleTypeSettings"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R3
       53 SETTABLEKS                       R3 R2 K8 ["allowedBundleTypeSettings"]
       55 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        5 GETTABLEKS                       R2 R3 K1 ["UPLOAD_ASSET_RESULT"]
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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
       28 GETTABLEKS                       R6 R0 K9 ["Src"]
       30 GETTABLEKS                       R5 R6 K10 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K11 ["AssetConfigConstants"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R6 K12 ["PreviewTypes"]
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R5 K13 ["AssetConfigUtil"]
       43 CALL                             R8 1 1
       44 GETTABLEKS                       R10 R0 K9 ["Src"]
       46 GETTABLEKS                       R9 R10 K14 ["Actions"]
       48 GETIMPORT                        R10 K5 [require]
       50 GETTABLEKS                       R11 R9 K15 ["SetCurrentScreen"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R11 R4 K16 ["ContextServices"]
       55 GETTABLEKS                       R12 R11 K17 ["withContext"]
       57 GETTABLEKS                       R15 R0 K9 ["Src"]
       59 GETTABLEKS                       R14 R15 K18 ["Components"]
       61 GETTABLEKS                       R13 R14 K19 ["AssetConfiguration"]
       63 GETIMPORT                        R14 K5 [require]
       65 GETTABLEKS                       R15 R13 K20 ["LoadingBarWrapper"]
       67 CALL                             R14 1 1
       68 GETIMPORT                        R15 K5 [require]
       70 GETTABLEKS                       R16 R13 K21 ["ProgressBarWrapper"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K5 [require]
       75 GETTABLEKS                       R17 R13 K22 ["AssetThumbnailPreview"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K5 [require]
       80 GETTABLEKS                       R21 R0 K9 ["Src"]
       82 GETTABLEKS                       R20 R21 K10 ["Util"]
       84 GETTABLEKS                       R19 R20 K23 ["SharedFlags"]
       86 GETTABLEKS                       R18 R19 K24 ["getFFlagToolboxFilterMeshPartsInBundleUpload"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K5 [require]
       91 GETTABLEKS                       R21 R0 K9 ["Src"]
       93 GETTABLEKS                       R20 R21 K25 ["Flags"]
       95 GETTABLEKS                       R19 R20 K26 ["getFFlagEnableUploadingEmote"]
       97 CALL                             R18 1 1
       98 GETTABLEKS                       R19 R2 K27 ["PureComponent"]
      100 LOADK                            R21 K28 ["AssetUpload"]
      101 NAMECALL                         R19 R19 K29 ["extend"]
      103 CALL                             R19 2 1
      104 DUPCLOSURE                       R20 K30 [PROTO_0]
      105 SETTABLEKS                       R20 R19 K31 ["init"]
      107 DUPCLOSURE                       R20 K32 [PROTO_1]
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R14
      116 SETTABLEKS                       R20 R19 K33 ["render"]
      118 DUPCLOSURE                       R20 K34 [PROTO_2]
      119 CAPTURE                          VAL R17
      120 DUPCLOSURE                       R21 K35 [PROTO_4]
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R6
      123 MOVE                             R22 R12
      124 DUPTABLE                         R23 K37 [{"Stylizer"}]
      125 GETTABLEKS                       R24 R11 K36 ["Stylizer"]
      127 SETTABLEKS                       R24 R23 K36 ["Stylizer"]
      129 CALL                             R22 1 1
      130 MOVE                             R23 R19
      131 CALL                             R22 1 1
      132 MOVE                             R19 R22
      133 GETTABLEKS                       R22 R3 K38 ["connect"]
      135 MOVE                             R23 R20
      136 MOVE                             R24 R21
      137 CALL                             R22 2 1
      138 MOVE                             R23 R19
      139 CALL                             R22 1 -1
      140 RETURN                           R22 -1
