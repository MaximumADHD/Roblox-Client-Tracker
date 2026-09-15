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
      181 GETUPVAL                         R12 4
      182 GETTABLEKS                       R12 R12 K14 ["createElement"]
      184 GETUPVAL                         R13 6
      185 DUPTABLE                         R14 K56 [{"loadingText", "loadingTime", "holdPercent", "onFinish"}]
      186 GETUPVAL                         R16 0
      187 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      189 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      191 CALL                             R16 1 1
      192 JUMPIF                           R16 ; [+2]
      193 LOADK                            R15 K57 ["Uploading"]
      194 JUMP                             ; [+1]
      195 LOADNIL                          R15
      196 SETTABLEKS                       R15 R14 K52 ["loadingText"]
      198 GETUPVAL                         R16 0
      199 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      201 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      203 CALL                             R16 1 1
      204 JUMPIF                           R16 ; [+2]
      205 LOADK                            R15 K39 [0.5]
      206 JUMP                             ; [+1]
      207 LOADNIL                          R15
      208 SETTABLEKS                       R15 R14 K53 ["loadingTime"]
      210 GETUPVAL                         R16 0
      211 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      213 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      215 CALL                             R16 1 1
      216 JUMPIF                           R16 ; [+2]
      217 LOADK                            R15 K58 [0.92]
      218 JUMP                             ; [+1]
      219 LOADNIL                          R15
      220 SETTABLEKS                       R15 R14 K54 ["holdPercent"]
      222 GETUPVAL                         R16 0
      223 GETTABLEKS                       R16 R16 K40 ["isUGCBundleType"]
      225 GETTABLEKS                       R17 R1 K3 ["assetTypeEnum"]
      227 CALL                             R16 1 1
      228 JUMPIFNOT                        R16 ; [+3]
      229 GETTABLEKS                       R15 R1 K59 ["onNext"]
      231 JUMP                             ; [+8]
      232 GETTABLEKS                       R16 R1 K60 ["uploadSucceeded"]
      234 JUMPIFEQKNIL                     R16 ; [+4]
      236 GETTABLEKS                       R15 R1 K59 ["onNext"]
      238 JUMPIF                           R15 ; [+1]
      239 LOADNIL                          R15
      240 SETTABLEKS                       R15 R14 K55 ["onFinish"]
      242 CALL                             R12 2 1
      243 SETTABLEKS                       R12 R11 K25 ["LoadingBar"]
      245 CALL                             R8 3 -1
      246 RETURN                           R8 -1

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
       63 GETTABLEKS                       R14 R14 K19 ["getFFlagEnableUploadingAvatarAnimations"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R5 K20 ["AvatarAnimationStudioToolboxTextures"]
       70 CALL                             R14 1 1
       71 GETTABLEKS                       R15 R0 K9 ["Src"]
       73 GETTABLEKS                       R15 R15 K21 ["Components"]
       75 GETTABLEKS                       R15 R15 K22 ["AssetConfiguration"]
       77 GETIMPORT                        R16 K5 [require]
       79 GETTABLEKS                       R17 R15 K23 ["UploadProgressBar"]
       81 CALL                             R16 1 1
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R15 K24 ["AssetThumbnailPreview"]
       86 CALL                             R17 1 1
       87 GETTABLEKS                       R18 R2 K25 ["PureComponent"]
       89 LOADK                            R20 K26 ["AssetUpload"]
       90 NAMECALL                         R18 R18 K27 ["extend"]
       92 CALL                             R18 2 1
       93 DUPCLOSURE                       R19 K28 [PROTO_0]
       94 SETTABLEKS                       R19 R18 K29 ["init"]
       96 DUPCLOSURE                       R19 K30 [PROTO_1]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R16
      104 SETTABLEKS                       R19 R18 K31 ["render"]
      106 DUPCLOSURE                       R19 K32 [PROTO_2]
      107 CAPTURE                          VAL R13
      108 DUPCLOSURE                       R20 K33 [PROTO_4]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R6
      111 MOVE                             R21 R12
      112 DUPTABLE                         R22 K35 [{"Stylizer"}]
      113 GETTABLEKS                       R23 R11 K34 ["Stylizer"]
      115 SETTABLEKS                       R23 R22 K34 ["Stylizer"]
      117 CALL                             R21 1 1
      118 MOVE                             R22 R18
      119 CALL                             R21 1 1
      120 MOVE                             R18 R21
      121 GETTABLEKS                       R21 R3 K36 ["connect"]
      123 MOVE                             R22 R19
      124 MOVE                             R23 R20
      125 CALL                             R21 2 1
      126 MOVE                             R22 R18
      127 CALL                             R21 1 -1
      128 RETURN                           R21 -1
