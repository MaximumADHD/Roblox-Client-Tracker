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
       32 GETTABLEKS                       R7 R1 K3 ["assetTypeEnum"]
       34 GETIMPORT                        R8 K11 [Enum.AssetType.EmoteAnimation]
       36 JUMPIFNOTEQ                      R7 R8 ; [+3]
       38 LOADN                            R6 150
       39 JUMP                             ; [+1]
       40 LOADN                            R6 186
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R7 R8 K12 ["createElement"]
       44 LOADK                            R8 K13 ["Frame"]
       45 DUPTABLE                         R9 K18 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       46 GETTABLEKS                       R11 R2 K19 ["typeValidation"]
       48 GETTABLEKS                       R10 R11 K20 ["background"]
       50 SETTABLEKS                       R10 R9 K14 ["BackgroundColor3"]
       52 LOADN                            R10 0
       53 SETTABLEKS                       R10 R9 K15 ["BackgroundTransparency"]
       55 LOADN                            R10 0
       56 SETTABLEKS                       R10 R9 K16 ["BorderSizePixel"]
       58 GETTABLEKS                       R10 R1 K17 ["Size"]
       60 SETTABLEKS                       R10 R9 K17 ["Size"]
       62 DUPTABLE                         R10 K23 [{"ModelPreview", "ThumbnailPreview", "LoadingBar"}]
       63 MOVE                             R11 R4
       64 JUMPIFNOT                        R11 ; [+59]
       65 GETUPVAL                         R12 2
       66 GETTABLEKS                       R11 R12 K12 ["createElement"]
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
       98 GETUPVAL                         R15 4
       99 CALL                             R15 0 1
      100 JUMPIFNOT                        R15 ; [+3]
      101 GETTABLEKS                       R14 R1 K3 ["assetTypeEnum"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R14
      105 SETTABLEKS                       R14 R13 K9 ["AssetType"]
      107 GETUPVAL                         R15 4
      108 CALL                             R15 0 1
      109 JUMPIFNOT                        R15 ; [+10]
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R15 R16 K35 ["isUGCBundleType"]
      113 GETTABLEKS                       R16 R1 K3 ["assetTypeEnum"]
      115 CALL                             R15 1 1
      116 JUMPIFNOT                        R15 ; [+3]
      117 GETTABLEKS                       R14 R1 K36 ["allowedBundleTypeSettings"]
      119 JUMP                             ; [+1]
      120 LOADNIL                          R14
      121 SETTABLEKS                       R14 R13 K28 ["AllowedBundleTypeSettings"]
      123 CALL                             R11 2 1
      124 SETTABLEKS                       R11 R10 K5 ["ModelPreview"]
      126 MOVE                             R11 R5
      127 JUMPIFNOT                        R11 ; [+40]
      128 GETUPVAL                         R12 2
      129 GETTABLEKS                       R11 R12 K12 ["createElement"]
      131 LOADK                            R12 K37 ["ImageLabel"]
      132 DUPTABLE                         R13 K39 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      133 GETIMPORT                        R14 K33 [UDim2.new]
      135 LOADK                            R15 K34 [0.5]
      136 LOADN                            R16 181
      137 LOADN                            R17 0
      138 LOADN                            R18 48
      139 CALL                             R14 4 1
      140 SETTABLEKS                       R14 R13 K27 ["Position"]
      142 GETIMPORT                        R14 K33 [UDim2.new]
      144 LOADN                            R15 0
      145 LOADN                            R16 150
      146 LOADN                            R17 0
      147 LOADN                            R18 150
      148 CALL                             R14 4 1
      149 SETTABLEKS                       R14 R13 K17 ["Size"]
      151 GETUPVAL                         R15 0
      152 GETTABLEKS                       R14 R15 K40 ["getResultThumbnail"]
      154 GETTABLEKS                       R15 R1 K41 ["assetId"]
      156 GETTABLEKS                       R16 R1 K42 ["iconFile"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K38 ["Image"]
      161 LOADN                            R14 1
      162 SETTABLEKS                       R14 R13 K15 ["BackgroundTransparency"]
      164 LOADN                            R14 0
      165 SETTABLEKS                       R14 R13 K16 ["BorderSizePixel"]
      167 CALL                             R11 2 1
      168 SETTABLEKS                       R11 R10 K21 ["ThumbnailPreview"]
      170 GETUPVAL                         R13 0
      171 GETTABLEKS                       R12 R13 K35 ["isUGCBundleType"]
      173 GETTABLEKS                       R13 R1 K3 ["assetTypeEnum"]
      175 CALL                             R12 1 1
      176 JUMPIFNOT                        R12 ; [+11]
      177 GETUPVAL                         R12 2
      178 GETTABLEKS                       R11 R12 K12 ["createElement"]
      180 GETUPVAL                         R12 5
      181 DUPTABLE                         R13 K44 [{"onFinish"}]
      182 GETTABLEKS                       R14 R1 K45 ["onNext"]
      184 SETTABLEKS                       R14 R13 K43 ["onFinish"]
      186 CALL                             R11 2 1
      187 JUMP                             ; [+43]
      188 GETUPVAL                         R12 2
      189 GETTABLEKS                       R11 R12 K12 ["createElement"]
      191 GETUPVAL                         R12 6
      192 DUPTABLE                         R13 K49 [{"loadingText", "loadingTime", "holdPercent", "Size", "Position", "onFinish"}]
      193 LOADK                            R14 K50 ["Uploading"]
      194 SETTABLEKS                       R14 R13 K46 ["loadingText"]
      196 LOADK                            R14 K34 [0.5]
      197 SETTABLEKS                       R14 R13 K47 ["loadingTime"]
      199 LOADK                            R14 K51 [0.92]
      200 SETTABLEKS                       R14 R13 K48 ["holdPercent"]
      202 GETIMPORT                        R14 K33 [UDim2.new]
      204 LOADN                            R15 0
      205 LOADN                            R16 144
      206 LOADN                            R17 0
      207 LOADN                            R18 6
      208 CALL                             R14 4 1
      209 SETTABLEKS                       R14 R13 K17 ["Size"]
      211 GETIMPORT                        R14 K33 [UDim2.new]
      213 LOADK                            R15 K34 [0.5]
      214 LOADN                            R16 56
      215 LOADN                            R17 0
      216 LOADN                            R18 58
      217 CALL                             R14 4 1
      218 SETTABLEKS                       R14 R13 K27 ["Position"]
      220 GETTABLEKS                       R15 R1 K52 ["uploadSucceeded"]
      222 JUMPIFEQKNIL                     R15 ; [+4]
      224 GETTABLEKS                       R14 R1 K45 ["onNext"]
      226 JUMPIF                           R14 ; [+1]
      227 LOADNIL                          R14
      228 SETTABLEKS                       R14 R13 K43 ["onFinish"]
      230 CALL                             R11 2 1
      231 SETTABLEKS                       R11 R10 K22 ["LoadingBar"]
      233 CALL                             R7 3 -1
      234 RETURN                           R7 -1

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
       89 GETTABLEKS                       R18 R2 K25 ["PureComponent"]
       91 LOADK                            R20 K26 ["AssetUpload"]
       92 NAMECALL                         R18 R18 K27 ["extend"]
       94 CALL                             R18 2 1
       95 DUPCLOSURE                       R19 K28 [PROTO_0]
       96 SETTABLEKS                       R19 R18 K29 ["init"]
       98 DUPCLOSURE                       R19 K30 [PROTO_1]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R14
      106 SETTABLEKS                       R19 R18 K31 ["render"]
      108 DUPCLOSURE                       R19 K32 [PROTO_2]
      109 CAPTURE                          VAL R17
      110 DUPCLOSURE                       R20 K33 [PROTO_4]
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R6
      113 MOVE                             R21 R12
      114 DUPTABLE                         R22 K35 [{"Stylizer"}]
      115 GETTABLEKS                       R23 R11 K34 ["Stylizer"]
      117 SETTABLEKS                       R23 R22 K34 ["Stylizer"]
      119 CALL                             R21 1 1
      120 MOVE                             R22 R18
      121 CALL                             R21 1 1
      122 MOVE                             R18 R21
      123 GETTABLEKS                       R21 R3 K36 ["connect"]
      125 MOVE                             R22 R19
      126 MOVE                             R23 R20
      127 CALL                             R21 2 1
      128 MOVE                             R22 R18
      129 CALL                             R21 1 -1
      130 RETURN                           R21 -1
