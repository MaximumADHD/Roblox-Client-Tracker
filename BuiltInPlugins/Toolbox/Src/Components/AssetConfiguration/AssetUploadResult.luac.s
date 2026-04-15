PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["clearChange"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["OVERRIDE_ASSET_ID"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["goToNextScreen"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["onClose"]
        5 CALL                             R1 0 0
        6 GETIMPORT                        R1 K3 [game]
        8 LOADK                            R3 K4 ["StudioAssetService"]
        9 NAMECALL                         R1 R1 K5 ["GetService"]
       11 CALL                             R1 2 1
       12 LOADB                            R3 0
       13 NAMECALL                         R1 R1 K6 ["FireOnUGCSubmitCompleted"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["constructCreatorDashboardConfigAvatarAssetUrl"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+7]
       10 JUMPIFEQKS                       R1 K1 [""] ; [+6]
       12 GETUPVAL                         R2 1
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["constructCreatorDashboardAvatarAssetUrl"]
        5 CALL                             R0 0 1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R0
        8 JUMPIFNOT                        R0 ; [+7]
        9 JUMPIFEQKS                       R0 K1 [""] ; [+6]
       11 GETUPVAL                         R1 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["constructCreatorDashboardCreationsPageUrl"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 JUMPIFEQKS                       R0 K1 [""] ; [+6]
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K2 ["OpenBrowserWindow"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["constructCreatorDashboardBundleConfigureUrl"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 JUMPIFNOT                        R1 ; [+7]
       10 JUMPIFEQKS                       R1 K1 [""] ; [+6]
       12 GETUPVAL                         R2 1
       13 MOVE                             R4 R1
       14 NAMECALL                         R2 R2 K2 ["OpenBrowserWindow"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K1 [{"isLoading"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R0 K3 ["goToNextScreen"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K4 ["onClose"]
       15 GETUPVAL                         R2 1
       16 JUMPIFNOT                        R2 ; [+6]
       17 DUPCLOSURE                       R2 K5 [PROTO_2]
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 SETTABLEKS                       R2 R0 K6 ["openCreatorDashboard"]
       22 JUMP                             ; [+5]
       23 DUPCLOSURE                       R2 K7 [PROTO_3]
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 SETTABLEKS                       R2 R0 K6 ["openCreatorDashboard"]
       28 DUPCLOSURE                       R2 K8 [PROTO_4]
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 SETTABLEKS                       R2 R0 K9 ["openCreatorDashboardCreationsPage"]
       33 GETUPVAL                         R2 4
       34 JUMPIFNOT                        R2 ; [+5]
       35 DUPCLOSURE                       R2 K10 [PROTO_5]
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 SETTABLEKS                       R2 R0 K11 ["openCreatorDashboardBundle"]
       40 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R3
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["FLOW_TYPE"]
        4 GETTABLEKS                       R4 R5 K1 ["UPLOAD_FLOW"]
        6 JUMPIFNOTEQ                      R0 R4 ; [+46]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["isCatalogAsset"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+7]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R4 R7 K3 ["BaseUrl"]
       17 LOADK                            R5 K4 ["catalog/"]
       18 MOVE                             R6 R1
       19 CONCAT                           R3 R4 R6
       20 RETURN                           R3 1
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K5 ["constructCreatorStoreUrl"]
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+12]
       26 GETIMPORT                        R5 K8 [string.format]
       28 LOADK                            R6 K9 ["%sasset/%s"]
       29 MOVE                             R7 R4
       30 GETUPVAL                         R8 4
       31 MOVE                             R10 R1
       32 NAMECALL                         R8 R8 K10 ["urlEncode"]
       34 CALL                             R8 2 -1
       35 CALL                             R5 -1 1
       36 MOVE                             R3 R5
       37 RETURN                           R3 1
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R5 R6 K3 ["BaseUrl"]
       41 GETIMPORT                        R6 K8 [string.format]
       43 LOADK                            R7 K11 ["%slibrary/%s/"]
       44 MOVE                             R8 R5
       45 GETUPVAL                         R9 4
       46 MOVE                             R11 R1
       47 NAMECALL                         R9 R9 K10 ["urlEncode"]
       49 CALL                             R9 2 -1
       50 CALL                             R6 -1 1
       51 MOVE                             R3 R6
       52 RETURN                           R3 1
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K2 ["isCatalogAsset"]
       56 MOVE                             R5 R2
       57 CALL                             R4 1 1
       58 JUMPIFNOT                        R4 ; [+7]
       59 GETUPVAL                         R7 2
       60 GETTABLEKS                       R4 R7 K3 ["BaseUrl"]
       62 LOADK                            R5 K4 ["catalog/"]
       63 MOVE                             R6 R1
       64 CONCAT                           R3 R4 R6
       65 RETURN                           R3 1
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R4 R5 K5 ["constructCreatorStoreUrl"]
       69 CALL                             R4 0 1
       70 JUMPIFNOT                        R4 ; [+12]
       71 GETIMPORT                        R5 K8 [string.format]
       73 LOADK                            R6 K9 ["%sasset/%s"]
       74 MOVE                             R7 R4
       75 GETUPVAL                         R8 4
       76 MOVE                             R10 R1
       77 NAMECALL                         R8 R8 K10 ["urlEncode"]
       79 CALL                             R8 2 -1
       80 CALL                             R5 -1 1
       81 MOVE                             R3 R5
       82 RETURN                           R3 1
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R5 R6 K3 ["BaseUrl"]
       86 GETIMPORT                        R6 K8 [string.format]
       88 LOADK                            R7 K11 ["%slibrary/%s/"]
       89 MOVE                             R8 R5
       90 GETUPVAL                         R9 4
       91 MOVE                             R11 R1
       92 NAMECALL                         R9 R9 K10 ["urlEncode"]
       94 CALL                             R9 2 -1
       95 CALL                             R6 -1 1
       96 MOVE                             R3 R6
       97 RETURN                           R3 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["openCreatorDashboardBundle"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["openCreatorDashboard"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["assetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["networkError"]
        6 GETTABLEKS                       R5 R1 K3 ["screenFlowType"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K4 ["FLOW_TYPE"]
       11 GETTABLEKS                       R6 R7 K5 ["UPLOAD_FLOW"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 MOVE                             R5 R4
       18 JUMPIFNOT                        R5 ; [+6]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K6 ["isCatalogAsset"]
       22 GETTABLEKS                       R6 R1 K7 ["assetTypeEnum"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K8 ["getPreviewType"]
       28 GETTABLEKS                       R7 R1 K7 ["assetTypeEnum"]
       30 GETTABLEKS                       R8 R1 K9 ["instances"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R8 R9 K10 ["ModelPreview"]
       36 JUMPIFEQ                         R6 R8 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 LOADB                            R8 1
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K11 ["Thumbnail"]
       44 JUMPIFEQ                         R6 R9 ; [+8]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R9 R10 K12 ["ImagePicker"]
       49 JUMPIFEQ                         R6 R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 GETTABLEKS                       R10 R1 K13 ["networkTable"]
       55 NEWTABLE                         R11 0 0
       57 GETIMPORT                        R12 K15 [pairs]
       59 MOVE                             R13 R10
       60 CALL                             R12 1 3
       61 FORGPREP_NEXT                    R12
       62 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       64 MOVE                             R18 R11
       65 MOVE                             R19 R16
       66 GETIMPORT                        R17 K18 [table.insert]
       68 CALL                             R17 2 0
       69 FORGLOOP                         R12 2 ; [-8]
       71 MOVE                             R9 R11
       72 GETTABLEKS                       R10 R1 K19 ["uploadSucceeded"]
       74 NOT                              R11 R10
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R12 R13 K6 ["isCatalogAsset"]
       78 GETTABLEKS                       R13 R1 K7 ["assetTypeEnum"]
       80 CALL                             R12 1 1
       81 AND                              R13 R10 R12
       82 JUMPIF                           R10 ; [+2]
       83 MOVE                             R14 R12
       84 JUMPIF                           R14 ; [+1]
       85 NOT                              R14 R12
       86 LOADB                            R15 1
       87 LOADNIL                          R16
       88 GETTABLEKS                       R17 R1 K20 ["hasSubsequent"]
       90 JUMPIFNOT                        R17 ; [+4]
       91 LOADB                            R13 0
       92 LOADB                            R15 0
       93 LOADB                            R14 0
       94 LOADB                            R16 1
       95 LOADN                            R18 72
       96 GETUPVAL                         R20 3
       97 GETTABLEKS                       R19 R20 K21 ["FONT_SIZE_MEDIUM"]
       99 ADD                              R17 R18 R19
      100 GETUPVAL                         R19 1
      101 GETTABLEKS                       R18 R19 K6 ["isCatalogAsset"]
      103 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      105 CALL                             R18 1 1
      106 JUMPIF                           R18 ; [+6]
      107 GETUPVAL                         R19 1
      108 GETTABLEKS                       R18 R19 K22 ["isUGCBundleType"]
      110 GETTABLEKS                       R19 R1 K7 ["assetTypeEnum"]
      112 CALL                             R18 1 1
      113 LOADNIL                          R19
      114 JUMPIF                           R18 ; [+13]
      115 GETTABLEKS                       R20 R1 K19 ["uploadSucceeded"]
      117 JUMPIFNOT                        R20 ; [+10]
      118 GETUPVAL                         R20 4
      119 GETTABLEKS                       R21 R1 K3 ["screenFlowType"]
      121 GETTABLEKS                       R23 R1 K24 ["assetId"]
      123 ORK                              R22 R23 K23 [0]
      124 GETTABLEKS                       R23 R1 K7 ["assetTypeEnum"]
      126 CALL                             R20 3 1
      127 MOVE                             R19 R20
      128 GETUPVAL                         R21 5
      129 GETTABLEKS                       R20 R21 K25 ["constructCreatorStoreConfigurationUrl"]
      131 GETTABLEKS                       R22 R1 K24 ["assetId"]
      133 ORK                              R21 R22 K23 [0]
      134 CALL                             R20 1 1
      135 GETUPVAL                         R22 1
      136 GETTABLEKS                       R21 R22 K26 ["isCreatorStoreAssetNotIncludingAnimation"]
      138 GETTABLEKS                       R22 R1 K7 ["assetTypeEnum"]
      140 CALL                             R21 1 1
      141 JUMPIFNOT                        R21 ; [+1]
      142 NOT                              R21 R18
      143 GETUPVAL                         R23 6
      144 GETTABLEKS                       R22 R23 K27 ["new"]
      146 CALL                             R22 0 1
      147 LOADNIL                          R23
      148 GETUPVAL                         R24 7
      149 CALL                             R24 0 1
      150 JUMPIFNOT                        R24 ; [+20]
      151 GETTABLEKS                       R24 R1 K19 ["uploadSucceeded"]
      153 JUMPIFNOT                        R24 ; [+9]
      154 GETTABLEKS                       R24 R1 K28 ["Localization"]
      156 LOADK                            R26 K29 ["AssetUploadResult"]
      157 LOADK                            R27 K30 ["SubmissionSucceeded"]
      158 NAMECALL                         R24 R24 K31 ["getText"]
      160 CALL                             R24 3 1
      161 MOVE                             R23 R24
      162 JUMP                             ; [+8]
      163 GETTABLEKS                       R24 R1 K28 ["Localization"]
      165 LOADK                            R26 K29 ["AssetUploadResult"]
      166 LOADK                            R27 K32 ["SubmissionFailed"]
      167 NAMECALL                         R24 R24 K31 ["getText"]
      169 CALL                             R24 3 1
      170 MOVE                             R23 R24
      171 GETTABLEKS                       R25 R1 K7 ["assetTypeEnum"]
      173 GETIMPORT                        R26 K36 [Enum.AssetType.EmoteAnimation]
      175 JUMPIFNOTEQ                      R25 R26 ; [+3]
      177 LOADN                            R24 150
      178 JUMP                             ; [+1]
      179 LOADN                            R24 186
      180 GETUPVAL                         R26 8
      181 GETTABLEKS                       R25 R26 K37 ["createElement"]
      183 LOADK                            R26 K38 ["Frame"]
      184 DUPTABLE                         R27 K44 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      185 GETIMPORT                        R28 K46 [Enum.AutomaticSize.Y]
      187 SETTABLEKS                       R28 R27 K39 ["AutomaticSize"]
      189 GETTABLEKS                       R29 R2 K47 ["uploadResult"]
      191 GETTABLEKS                       R28 R29 K48 ["background"]
      193 SETTABLEKS                       R28 R27 K40 ["BackgroundColor3"]
      195 LOADN                            R28 0
      196 SETTABLEKS                       R28 R27 K41 ["BackgroundTransparency"]
      198 LOADN                            R28 0
      199 SETTABLEKS                       R28 R27 K42 ["BorderSizePixel"]
      201 GETTABLEKS                       R28 R1 K43 ["Size"]
      203 SETTABLEKS                       R28 R27 K43 ["Size"]
      205 DUPTABLE                         R28 K54 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "Footer"}]
      206 MOVE                             R29 R7
      207 JUMPIFNOT                        R29 ; [+43]
      208 GETUPVAL                         R30 8
      209 GETTABLEKS                       R29 R30 K37 ["createElement"]
      211 GETUPVAL                         R30 9
      212 DUPTABLE                         R31 K60 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "UploadSucceeded"}]
      213 GETTABLEKS                       R33 R1 K62 ["assetName"]
      215 ORK                              R32 R33 K61 []
      216 SETTABLEKS                       R32 R31 K55 ["title"]
      218 LOADN                            R32 24
      219 SETTABLEKS                       R32 R31 K56 ["titleHeight"]
      221 LOADN                            R32 12
      222 SETTABLEKS                       R32 R31 K57 ["titlePadding"]
      224 GETIMPORT                        R32 K64 [UDim2.new]
      226 LOADK                            R33 K65 [0.5]
      227 LOADN                            R34 181
      228 LOADN                            R35 0
      229 LOADN                            R36 48
      230 CALL                             R32 4 1
      231 SETTABLEKS                       R32 R31 K58 ["Position"]
      233 GETIMPORT                        R32 K64 [UDim2.new]
      235 LOADN                            R33 0
      236 LOADN                            R34 150
      237 LOADN                            R35 0
      238 MOVE                             R36 R24
      239 CALL                             R32 4 1
      240 SETTABLEKS                       R32 R31 K43 ["Size"]
      242 GETTABLEKS                       R32 R1 K7 ["assetTypeEnum"]
      244 SETTABLEKS                       R32 R31 K34 ["AssetType"]
      246 GETTABLEKS                       R32 R1 K19 ["uploadSucceeded"]
      248 SETTABLEKS                       R32 R31 K59 ["UploadSucceeded"]
      250 CALL                             R29 2 1
      251 SETTABLEKS                       R29 R28 K10 ["ModelPreview"]
      253 MOVE                             R29 R8
      254 JUMPIFNOT                        R29 ; [+40]
      255 GETUPVAL                         R30 8
      256 GETTABLEKS                       R29 R30 K37 ["createElement"]
      258 LOADK                            R30 K66 ["ImageLabel"]
      259 DUPTABLE                         R31 K68 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      260 GETIMPORT                        R32 K64 [UDim2.new]
      262 LOADK                            R33 K65 [0.5]
      263 LOADN                            R34 181
      264 LOADN                            R35 0
      265 LOADN                            R36 48
      266 CALL                             R32 4 1
      267 SETTABLEKS                       R32 R31 K58 ["Position"]
      269 GETIMPORT                        R32 K64 [UDim2.new]
      271 LOADN                            R33 0
      272 LOADN                            R34 150
      273 LOADN                            R35 0
      274 LOADN                            R36 150
      275 CALL                             R32 4 1
      276 SETTABLEKS                       R32 R31 K43 ["Size"]
      278 GETUPVAL                         R33 1
      279 GETTABLEKS                       R32 R33 K69 ["getResultThumbnail"]
      281 GETTABLEKS                       R33 R1 K24 ["assetId"]
      283 GETTABLEKS                       R34 R1 K70 ["iconFile"]
      285 CALL                             R32 2 1
      286 SETTABLEKS                       R32 R31 K67 ["Image"]
      288 LOADN                            R32 1
      289 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      291 LOADN                            R32 0
      292 SETTABLEKS                       R32 R31 K42 ["BorderSizePixel"]
      294 CALL                             R29 2 1
      295 SETTABLEKS                       R29 R28 K49 ["ThumbnailPreview"]
      297 MOVE                             R29 R10
      298 JUMPIFNOT                        R29 ; [+13]
      299 GETUPVAL                         R30 8
      300 GETTABLEKS                       R29 R30 K37 ["createElement"]
      302 GETUPVAL                         R30 10
      303 DUPTABLE                         R31 K73 [{"YPos", "AssetId"}]
      304 LOADN                            R32 240
      305 SETTABLEKS                       R32 R31 K71 ["YPos"]
      307 GETTABLEKS                       R32 R1 K24 ["assetId"]
      309 SETTABLEKS                       R32 R31 K72 ["AssetId"]
      311 CALL                             R29 2 1
      312 SETTABLEKS                       R29 R28 K50 ["CopyID"]
      314 MOVE                             R29 R10
      315 JUMPIFNOT                        R29 ; [+582]
      316 GETUPVAL                         R30 8
      317 GETTABLEKS                       R29 R30 K37 ["createElement"]
      319 LOADK                            R30 K38 ["Frame"]
      320 DUPTABLE                         R31 K74 [{"Position", "Size", "BackgroundTransparency"}]
      321 GETIMPORT                        R32 K64 [UDim2.new]
      323 LOADN                            R33 0
      324 LOADN                            R34 0
      325 LOADN                            R35 0
      326 LOADN                            R36 23
      327 CALL                             R32 4 1
      328 SETTABLEKS                       R32 R31 K58 ["Position"]
      330 GETIMPORT                        R32 K64 [UDim2.new]
      332 LOADN                            R33 1
      333 LOADN                            R34 0
      334 LOADN                            R35 1
      335 LOADN                            R36 233
      336 CALL                             R32 4 1
      337 SETTABLEKS                       R32 R31 K43 ["Size"]
      339 LOADN                            R32 1
      340 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      342 DUPTABLE                         R32 K79 [{"UIListLayout", "Title", "ReasonFrame", "Rows"}]
      343 GETUPVAL                         R34 8
      344 GETTABLEKS                       R33 R34 K37 ["createElement"]
      346 LOADK                            R34 K75 ["UIListLayout"]
      347 DUPTABLE                         R35 K85 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      348 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
      350 SETTABLEKS                       R36 R35 K80 ["FillDirection"]
      352 GETIMPORT                        R36 K89 [Enum.HorizontalAlignment.Center]
      354 SETTABLEKS                       R36 R35 K81 ["HorizontalAlignment"]
      356 GETIMPORT                        R36 K91 [Enum.VerticalAlignment.Top]
      358 SETTABLEKS                       R36 R35 K82 ["VerticalAlignment"]
      360 GETIMPORT                        R36 K93 [Enum.SortOrder.LayoutOrder]
      362 SETTABLEKS                       R36 R35 K83 ["SortOrder"]
      364 GETIMPORT                        R36 K95 [UDim.new]
      366 LOADN                            R37 0
      367 LOADN                            R38 5
      368 CALL                             R36 2 1
      369 SETTABLEKS                       R36 R35 K84 ["Padding"]
      371 CALL                             R33 2 1
      372 SETTABLEKS                       R33 R32 K75 ["UIListLayout"]
      374 GETUPVAL                         R34 8
      375 GETTABLEKS                       R33 R34 K37 ["createElement"]
      377 LOADK                            R34 K96 ["TextLabel"]
      378 DUPTABLE                         R35 K103 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      379 LOADN                            R36 1
      380 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      382 GETIMPORT                        R36 K64 [UDim2.new]
      384 LOADK                            R37 K65 [0.5]
      385 LOADN                            R38 56
      386 LOADN                            R39 0
      387 LOADN                            R40 0
      388 CALL                             R36 4 1
      389 SETTABLEKS                       R36 R35 K58 ["Position"]
      391 GETIMPORT                        R36 K64 [UDim2.new]
      393 LOADN                            R37 0
      394 LOADN                            R38 144
      395 LOADN                            R39 0
      396 LOADN                            R40 36
      397 CALL                             R36 4 1
      398 SETTABLEKS                       R36 R35 K43 ["Size"]
      400 GETUPVAL                         R37 7
      401 CALL                             R37 0 1
      402 JUMPIFNOT                        R37 ; [+2]
      403 MOVE                             R36 R23
      404 JUMP                             ; [+6]
      405 GETTABLEKS                       R37 R1 K19 ["uploadSucceeded"]
      407 JUMPIFNOT                        R37 ; [+2]
      408 LOADK                            R36 K104 ["Successfully submitted!"]
      409 JUMP                             ; [+1]
      410 LOADK                            R36 K105 ["Submission failed"]
      411 SETTABLEKS                       R36 R35 K97 ["Text"]
      413 GETUPVAL                         R37 3
      414 GETTABLEKS                       R36 R37 K106 ["FONT"]
      416 SETTABLEKS                       R36 R35 K98 ["Font"]
      418 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
      420 GETTABLEKS                       R36 R37 K107 ["greenText"]
      422 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
      424 GETUPVAL                         R37 3
      425 GETTABLEKS                       R36 R37 K108 ["FONT_SIZE_TITLE"]
      427 SETTABLEKS                       R36 R35 K100 ["TextSize"]
      429 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
      431 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
      433 GETIMPORT                        R36 K110 [Enum.TextYAlignment.Center]
      435 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
      437 LOADN                            R36 1
      438 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      440 CALL                             R33 2 1
      441 SETTABLEKS                       R33 R32 K76 ["Title"]
      443 LOADB                            R33 0
      444 SETTABLEKS                       R33 R32 K77 ["ReasonFrame"]
      446 GETUPVAL                         R34 8
      447 GETTABLEKS                       R33 R34 K37 ["createElement"]
      449 LOADK                            R34 K38 ["Frame"]
      450 DUPTABLE                         R35 K111 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      451 LOADN                            R36 1
      452 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      454 GETIMPORT                        R36 K64 [UDim2.new]
      456 LOADN                            R37 0
      457 LOADN                            R38 144
      458 LOADN                            R39 0
      459 LOADN                            R40 72
      460 CALL                             R36 4 1
      461 SETTABLEKS                       R36 R35 K43 ["Size"]
      463 GETIMPORT                        R36 K64 [UDim2.new]
      465 LOADK                            R37 K65 [0.5]
      466 LOADN                            R38 56
      467 LOADN                            R39 0
      468 LOADN                            R40 49
      469 CALL                             R36 4 1
      470 SETTABLEKS                       R36 R35 K58 ["Position"]
      472 LOADN                            R36 3
      473 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      475 DUPTABLE                         R36 K118 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      476 GETUPVAL                         R38 8
      477 GETTABLEKS                       R37 R38 K37 ["createElement"]
      479 LOADK                            R38 K75 ["UIListLayout"]
      480 DUPTABLE                         R39 K119 [{"Padding", "SortOrder"}]
      481 GETIMPORT                        R40 K95 [UDim.new]
      483 LOADN                            R41 0
      484 LOADN                            R42 12
      485 CALL                             R40 2 1
      486 SETTABLEKS                       R40 R39 K84 ["Padding"]
      488 GETIMPORT                        R40 K93 [Enum.SortOrder.LayoutOrder]
      490 SETTABLEKS                       R40 R39 K83 ["SortOrder"]
      492 CALL                             R37 2 1
      493 SETTABLEKS                       R37 R36 K75 ["UIListLayout"]
      495 MOVE                             R37 R5
      496 JUMPIFNOT                        R37 ; [+55]
      497 GETUPVAL                         R38 8
      498 GETTABLEKS                       R37 R38 K37 ["createElement"]
      500 LOADK                            R38 K96 ["TextLabel"]
      501 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      502 LOADN                            R40 1
      503 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      505 GETUPVAL                         R41 3
      506 GETTABLEKS                       R40 R41 K106 ["FONT"]
      508 SETTABLEKS                       R40 R39 K98 ["Font"]
      510 GETUPVAL                         R41 7
      511 CALL                             R41 0 1
      512 JUMPIFNOT                        R41 ; [+8]
      513 GETTABLEKS                       R40 R1 K28 ["Localization"]
      515 LOADK                            R42 K29 ["AssetUploadResult"]
      516 LOADK                            R43 K121 ["AddedToModerationQueueMessage"]
      517 NAMECALL                         R40 R40 K31 ["getText"]
      519 CALL                             R40 3 1
      520 JUMP                             ; [+1]
      521 LOADK                            R40 K122 ["Asset has been added to moderation queue."]
      522 SETTABLEKS                       R40 R39 K97 ["Text"]
      524 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      526 GETTABLEKS                       R40 R41 K123 ["text"]
      528 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      530 GETUPVAL                         R41 3
      531 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      533 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      535 GETIMPORT                        R40 K64 [UDim2.new]
      537 LOADN                            R41 1
      538 LOADN                            R42 0
      539 LOADN                            R43 0
      540 LOADN                            R44 24
      541 CALL                             R40 4 1
      542 SETTABLEKS                       R40 R39 K43 ["Size"]
      544 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      546 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      548 LOADN                            R40 0
      549 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      551 CALL                             R37 2 1
      552 SETTABLEKS                       R37 R36 K112 ["ModerationMessage"]
      554 JUMPIFNOT                        R21 ; [+51]
      555 GETUPVAL                         R38 8
      556 GETTABLEKS                       R37 R38 K37 ["createElement"]
      558 LOADK                            R38 K96 ["TextLabel"]
      559 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      560 LOADN                            R40 1
      561 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      563 GETUPVAL                         R41 3
      564 GETTABLEKS                       R40 R41 K106 ["FONT"]
      566 SETTABLEKS                       R40 R39 K98 ["Font"]
      568 GETTABLEKS                       R40 R1 K28 ["Localization"]
      570 LOADK                            R42 K29 ["AssetUploadResult"]
      571 LOADK                            R43 K124 ["CreatorStoreConfigurationMessage"]
      572 NAMECALL                         R40 R40 K31 ["getText"]
      574 CALL                             R40 3 1
      575 SETTABLEKS                       R40 R39 K97 ["Text"]
      577 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      579 GETTABLEKS                       R40 R41 K123 ["text"]
      581 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      583 GETUPVAL                         R41 3
      584 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      586 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      588 GETIMPORT                        R40 K64 [UDim2.new]
      590 LOADN                            R41 1
      591 LOADN                            R42 0
      592 LOADN                            R43 0
      593 LOADN                            R44 24
      594 CALL                             R40 4 1
      595 SETTABLEKS                       R40 R39 K43 ["Size"]
      597 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      599 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      601 LOADN                            R40 1
      602 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      604 CALL                             R37 2 1
      605 JUMP                             ; [+1]
      606 LOADNIL                          R37
      607 SETTABLEKS                       R37 R36 K113 ["CreatorStoreConfigurationText"]
      609 JUMPIFNOT                        R21 ; [+54]
      610 GETUPVAL                         R38 8
      611 GETTABLEKS                       R37 R38 K37 ["createElement"]
      613 LOADK                            R38 K125 ["TextButton"]
      614 NEWTABLE                         R39 16 0
      616 LOADN                            R40 1
      617 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      619 GETUPVAL                         R41 3
      620 GETTABLEKS                       R40 R41 K106 ["FONT"]
      622 SETTABLEKS                       R40 R39 K98 ["Font"]
      624 SETTABLEKS                       R20 R39 K97 ["Text"]
      626 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      628 GETTABLEKS                       R40 R41 K126 ["link"]
      630 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      632 GETUPVAL                         R41 3
      633 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      635 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      637 GETIMPORT                        R40 K64 [UDim2.new]
      639 LOADN                            R41 1
      640 LOADN                            R42 0
      641 LOADN                            R43 0
      642 LOADN                            R44 24
      643 CALL                             R40 4 1
      644 SETTABLEKS                       R40 R39 K43 ["Size"]
      646 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      648 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      650 LOADN                            R40 2
      651 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      653 GETUPVAL                         R42 8
      654 GETTABLEKS                       R41 R42 K127 ["Event"]
      656 GETTABLEKS                       R40 R41 K128 ["Activated"]
      658 NEWCLOSURE                       R41 P0
      659 CAPTURE                          UPVAL U11
      660 CAPTURE                          VAL R20
      661 SETTABLE                         R41 R39 R40
      662 CALL                             R37 2 1
      663 JUMP                             ; [+1]
      664 LOADNIL                          R37
      665 SETTABLEKS                       R37 R36 K114 ["CreatorStoreConfigurationLink"]
      667 JUMPIF                           R18 ; [+56]
      668 GETUPVAL                         R38 8
      669 GETTABLEKS                       R37 R38 K37 ["createElement"]
      671 LOADK                            R38 K96 ["TextLabel"]
      672 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      673 LOADN                            R40 1
      674 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      676 GETUPVAL                         R41 3
      677 GETTABLEKS                       R40 R41 K106 ["FONT"]
      679 SETTABLEKS                       R40 R39 K98 ["Font"]
      681 GETUPVAL                         R41 7
      682 CALL                             R41 0 1
      683 JUMPIFNOT                        R41 ; [+8]
      684 GETTABLEKS                       R40 R1 K28 ["Localization"]
      686 LOADK                            R42 K29 ["AssetUploadResult"]
      687 LOADK                            R43 K129 ["WebsiteUrlNoticeMessage"]
      688 NAMECALL                         R40 R40 K31 ["getText"]
      690 CALL                             R40 3 1
      691 JUMP                             ; [+1]
      692 LOADK                            R40 K130 ["You may find your asset in Toolbox or on web:"]
      693 SETTABLEKS                       R40 R39 K97 ["Text"]
      695 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      697 GETTABLEKS                       R40 R41 K123 ["text"]
      699 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      701 GETUPVAL                         R41 3
      702 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      704 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      706 GETIMPORT                        R40 K64 [UDim2.new]
      708 LOADN                            R41 1
      709 LOADN                            R42 0
      710 LOADN                            R43 0
      711 LOADN                            R44 24
      712 CALL                             R40 4 1
      713 SETTABLEKS                       R40 R39 K43 ["Size"]
      715 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      717 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      719 LOADN                            R40 3
      720 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      722 CALL                             R37 2 1
      723 JUMP                             ; [+1]
      724 LOADNIL                          R37
      725 SETTABLEKS                       R37 R36 K115 ["ToolboxText"]
      727 JUMPIF                           R18 ; [+54]
      728 GETUPVAL                         R38 8
      729 GETTABLEKS                       R37 R38 K37 ["createElement"]
      731 LOADK                            R38 K125 ["TextButton"]
      732 NEWTABLE                         R39 16 0
      734 LOADN                            R40 1
      735 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      737 GETUPVAL                         R41 3
      738 GETTABLEKS                       R40 R41 K106 ["FONT"]
      740 SETTABLEKS                       R40 R39 K98 ["Font"]
      742 SETTABLEKS                       R19 R39 K97 ["Text"]
      744 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      746 GETTABLEKS                       R40 R41 K126 ["link"]
      748 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      750 GETUPVAL                         R41 3
      751 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      753 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      755 GETIMPORT                        R40 K64 [UDim2.new]
      757 LOADN                            R41 1
      758 LOADN                            R42 0
      759 LOADN                            R43 0
      760 LOADN                            R44 24
      761 CALL                             R40 4 1
      762 SETTABLEKS                       R40 R39 K43 ["Size"]
      764 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      766 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      768 LOADN                            R40 4
      769 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      771 GETUPVAL                         R42 8
      772 GETTABLEKS                       R41 R42 K127 ["Event"]
      774 GETTABLEKS                       R40 R41 K128 ["Activated"]
      776 NEWCLOSURE                       R41 P1
      777 CAPTURE                          UPVAL U11
      778 CAPTURE                          REF R19
      779 SETTABLE                         R41 R39 R40
      780 CALL                             R37 2 1
      781 JUMP                             ; [+1]
      782 LOADNIL                          R37
      783 SETTABLEKS                       R37 R36 K116 ["ToolboxLink"]
      785 JUMPIFNOT                        R18 ; [+105]
      786 GETUPVAL                         R38 8
      787 GETTABLEKS                       R37 R38 K37 ["createElement"]
      789 GETUPVAL                         R38 12
      790 DUPTABLE                         R39 K136 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
      791 GETIMPORT                        R41 K138 [game]
      793 LOADK                            R43 K139 ["UpdateAssetUploadResultBundleConfigureLink2"]
      794 NAMECALL                         R41 R41 K140 ["GetFastFlag"]
      796 CALL                             R41 2 1
      797 JUMPIFNOT                        R41 ; [+11]
      798 GETUPVAL                         R42 1
      799 GETTABLEKS                       R41 R42 K22 ["isUGCBundleType"]
      801 GETTABLEKS                       R42 R1 K7 ["assetTypeEnum"]
      803 CALL                             R41 1 1
      804 JUMPIFNOT                        R41 ; [+4]
      805 NEWCLOSURE                       R40 P2
      806 CAPTURE                          VAL R0
      807 CAPTURE                          VAL R1
      808 JUMP                             ; [+8]
      809 GETUPVAL                         R41 13
      810 JUMPIFNOT                        R41 ; [+4]
      811 NEWCLOSURE                       R40 P3
      812 CAPTURE                          VAL R0
      813 CAPTURE                          VAL R1
      814 JUMP                             ; [+2]
      815 GETTABLEKS                       R40 R0 K141 ["openCreatorDashboard"]
      817 SETTABLEKS                       R40 R39 K131 ["OnLinkClicked"]
      819 GETTABLEKS                       R40 R1 K28 ["Localization"]
      821 LOADK                            R42 K29 ["AssetUploadResult"]
      822 LOADK                            R43 K142 ["CreatorDashboardMessage"]
      823 DUPTABLE                         R44 K144 [{"creatorDashboardLink"}]
      824 GETUPVAL                         R46 3
      825 GETTABLEKS                       R45 R46 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      827 SETTABLEKS                       R45 R44 K143 ["creatorDashboardLink"]
      829 NAMECALL                         R40 R40 K31 ["getText"]
      831 CALL                             R40 4 1
      832 SETTABLEKS                       R40 R39 K97 ["Text"]
      834 GETTABLEKS                       R40 R1 K28 ["Localization"]
      836 LOADK                            R42 K146 ["General"]
      837 LOADK                            R43 K147 ["CreatorDashboard"]
      838 NAMECALL                         R40 R40 K31 ["getText"]
      840 CALL                             R40 3 1
      841 SETTABLEKS                       R40 R39 K132 ["LinkText"]
      843 GETUPVAL                         R41 3
      844 GETTABLEKS                       R40 R41 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      846 SETTABLEKS                       R40 R39 K133 ["LinkPlaceholder"]
      848 GETIMPORT                        R40 K46 [Enum.AutomaticSize.Y]
      850 SETTABLEKS                       R40 R39 K39 ["AutomaticSize"]
      852 GETIMPORT                        R40 K109 [Enum.TextXAlignment.Center]
      854 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
      856 GETIMPORT                        R40 K89 [Enum.HorizontalAlignment.Center]
      858 SETTABLEKS                       R40 R39 K81 ["HorizontalAlignment"]
      860 LOADN                            R40 144
      861 SETTABLEKS                       R40 R39 K134 ["MaxWidth"]
      863 DUPTABLE                         R40 K148 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      864 GETUPVAL                         R42 3
      865 GETTABLEKS                       R41 R42 K106 ["FONT"]
      867 SETTABLEKS                       R41 R40 K98 ["Font"]
      869 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
      871 GETTABLEKS                       R41 R42 K123 ["text"]
      873 SETTABLEKS                       R41 R40 K99 ["TextColor3"]
      875 GETUPVAL                         R42 3
      876 GETTABLEKS                       R41 R42 K108 ["FONT_SIZE_TITLE"]
      878 SETTABLEKS                       R41 R40 K100 ["TextSize"]
      880 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
      882 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
      884 SETTABLEKS                       R40 R39 K135 ["TextProps"]
      886 LOADN                            R40 5
      887 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      889 CALL                             R37 2 1
      890 JUMP                             ; [+1]
      891 LOADNIL                          R37
      892 SETTABLEKS                       R37 R36 K117 ["CreatorDashboardMsg"]
      894 CALL                             R33 3 1
      895 SETTABLEKS                       R33 R32 K78 ["Rows"]
      897 CALL                             R29 3 1
      898 SETTABLEKS                       R29 R28 K51 ["LoadingResultSuccess"]
      900 MOVE                             R29 R11
      901 JUMPIFNOT                        R29 ; [+239]
      902 GETUPVAL                         R30 8
      903 GETTABLEKS                       R29 R30 K37 ["createElement"]
      905 LOADK                            R30 K38 ["Frame"]
      906 DUPTABLE                         R31 K74 [{"Position", "Size", "BackgroundTransparency"}]
      907 GETIMPORT                        R32 K64 [UDim2.new]
      909 LOADN                            R33 0
      910 LOADN                            R34 0
      911 LOADN                            R35 0
      912 LOADN                            R36 23
      913 CALL                             R32 4 1
      914 SETTABLEKS                       R32 R31 K58 ["Position"]
      916 GETIMPORT                        R32 K64 [UDim2.new]
      918 LOADN                            R33 1
      919 LOADN                            R34 0
      920 LOADN                            R35 1
      921 LOADN                            R36 233
      922 CALL                             R32 4 1
      923 SETTABLEKS                       R32 R31 K43 ["Size"]
      925 LOADN                            R32 1
      926 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      928 DUPTABLE                         R32 K150 [{"ReasonTextFrame"}]
      929 GETUPVAL                         R34 8
      930 GETTABLEKS                       R33 R34 K37 ["createElement"]
      932 GETUPVAL                         R34 14
      933 DUPTABLE                         R35 K153 [{"AutomaticSize", "BackgroundTransparency", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
      934 GETIMPORT                        R36 K46 [Enum.AutomaticSize.Y]
      936 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
      938 LOADN                            R36 1
      939 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      941 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
      943 SETTABLEKS                       R36 R35 K151 ["Layout"]
      945 LOADN                            R36 1
      946 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      948 LOADN                            R36 8
      949 SETTABLEKS                       R36 R35 K84 ["Padding"]
      951 GETIMPORT                        R36 K64 [UDim2.new]
      953 LOADN                            R37 1
      954 LOADN                            R38 0
      955 LOADN                            R39 0
      956 LOADN                            R40 0
      957 CALL                             R36 4 1
      958 SETTABLEKS                       R36 R35 K43 ["Size"]
      960 LOADN                            R36 12
      961 SETTABLEKS                       R36 R35 K152 ["Spacing"]
      963 DUPTABLE                         R36 K155 [{"Title", "ReasonWithDashboardLink"}]
      964 GETUPVAL                         R38 8
      965 GETTABLEKS                       R37 R38 K37 ["createElement"]
      967 LOADK                            R38 K96 ["TextLabel"]
      968 DUPTABLE                         R39 K156 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      969 LOADN                            R40 1
      970 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      972 GETUPVAL                         R41 3
      973 GETTABLEKS                       R40 R41 K106 ["FONT"]
      975 SETTABLEKS                       R40 R39 K98 ["Font"]
      977 LOADN                            R40 1
      978 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      980 GETIMPORT                        R40 K64 [UDim2.new]
      982 LOADK                            R41 K65 [0.5]
      983 LOADN                            R42 56
      984 LOADN                            R43 0
      985 LOADN                            R44 0
      986 CALL                             R40 4 1
      987 SETTABLEKS                       R40 R39 K58 ["Position"]
      989 GETIMPORT                        R40 K64 [UDim2.new]
      991 LOADN                            R41 0
      992 LOADN                            R42 144
      993 LOADN                            R43 0
      994 LOADN                            R44 36
      995 CALL                             R40 4 1
      996 SETTABLEKS                       R40 R39 K43 ["Size"]
      998 GETUPVAL                         R41 7
      999 CALL                             R41 0 1
     1000 JUMPIFNOT                        R41 ; [+8]
     1001 GETTABLEKS                       R40 R1 K28 ["Localization"]
     1003 LOADK                            R42 K29 ["AssetUploadResult"]
     1004 LOADK                            R43 K32 ["SubmissionFailed"]
     1005 NAMECALL                         R40 R40 K31 ["getText"]
     1007 CALL                             R40 3 1
     1008 JUMP                             ; [+1]
     1009 LOADK                            R40 K105 ["Submission failed"]
     1010 SETTABLEKS                       R40 R39 K97 ["Text"]
     1012 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
     1014 GETTABLEKS                       R40 R41 K157 ["redText"]
     1016 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
     1018 GETUPVAL                         R41 3
     1019 GETTABLEKS                       R40 R41 K108 ["FONT_SIZE_TITLE"]
     1021 SETTABLEKS                       R40 R39 K100 ["TextSize"]
     1023 GETIMPORT                        R40 K109 [Enum.TextXAlignment.Center]
     1025 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
     1027 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
     1029 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
     1031 CALL                             R37 2 1
     1032 SETTABLEKS                       R37 R36 K76 ["Title"]
     1034 GETUPVAL                         R38 8
     1035 GETTABLEKS                       R37 R38 K37 ["createElement"]
     1037 GETUPVAL                         R38 12
     1038 DUPTABLE                         R39 K158 [{"HorizontalAlignment", "LayoutOrder", "LinkPlaceholder", "LinkText", "MaxWidth", "OnLinkClicked", "Text", "TextProps"}]
     1039 GETIMPORT                        R40 K89 [Enum.HorizontalAlignment.Center]
     1041 SETTABLEKS                       R40 R39 K81 ["HorizontalAlignment"]
     1043 LOADN                            R40 3
     1044 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
     1046 GETUPVAL                         R41 3
     1047 GETTABLEKS                       R40 R41 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1049 SETTABLEKS                       R40 R39 K133 ["LinkPlaceholder"]
     1051 GETTABLEKS                       R41 R0 K0 ["props"]
     1053 GETTABLEKS                       R40 R41 K28 ["Localization"]
     1055 LOADK                            R42 K146 ["General"]
     1056 LOADK                            R43 K147 ["CreatorDashboard"]
     1057 NAMECALL                         R40 R40 K31 ["getText"]
     1059 CALL                             R40 3 1
     1060 SETTABLEKS                       R40 R39 K132 ["LinkText"]
     1062 LOADN                            R40 144
     1063 SETTABLEKS                       R40 R39 K134 ["MaxWidth"]
     1065 GETTABLEKS                       R40 R0 K159 ["openCreatorDashboardCreationsPage"]
     1067 SETTABLEKS                       R40 R39 K131 ["OnLinkClicked"]
     1069 MOVE                             R40 R3
     1070 JUMPIFNOT                        R40 ; [+2]
     1071 GETTABLEKS                       R40 R3 K160 ["responseBody"]
     1073 SETTABLEKS                       R40 R39 K97 ["Text"]
     1075 GETUPVAL                         R41 15
     1076 CALL                             R41 0 1
     1077 JUMPIFNOT                        R41 ; [+29]
     1078 DUPTABLE                         R40 K163 [{"Font", "TextColor", "TextSelectable", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1079 GETUPVAL                         R42 3
     1080 GETTABLEKS                       R41 R42 K106 ["FONT"]
     1082 SETTABLEKS                       R41 R40 K98 ["Font"]
     1084 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
     1086 GETTABLEKS                       R41 R42 K123 ["text"]
     1088 SETTABLEKS                       R41 R40 K161 ["TextColor"]
     1090 LOADB                            R41 1
     1091 SETTABLEKS                       R41 R40 K162 ["TextSelectable"]
     1093 GETUPVAL                         R42 3
     1094 GETTABLEKS                       R41 R42 K21 ["FONT_SIZE_MEDIUM"]
     1096 SETTABLEKS                       R41 R40 K100 ["TextSize"]
     1098 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
     1100 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
     1102 GETIMPORT                        R41 K164 [Enum.TextYAlignment.Top]
     1104 SETTABLEKS                       R41 R40 K102 ["TextYAlignment"]
     1106 JUMP                             ; [+25]
     1107 DUPTABLE                         R40 K165 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1108 GETUPVAL                         R42 3
     1109 GETTABLEKS                       R41 R42 K106 ["FONT"]
     1111 SETTABLEKS                       R41 R40 K98 ["Font"]
     1113 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
     1115 GETTABLEKS                       R41 R42 K123 ["text"]
     1117 SETTABLEKS                       R41 R40 K99 ["TextColor3"]
     1119 GETUPVAL                         R42 3
     1120 GETTABLEKS                       R41 R42 K21 ["FONT_SIZE_MEDIUM"]
     1122 SETTABLEKS                       R41 R40 K100 ["TextSize"]
     1124 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
     1126 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
     1128 GETIMPORT                        R41 K164 [Enum.TextYAlignment.Top]
     1130 SETTABLEKS                       R41 R40 K102 ["TextYAlignment"]
     1132 SETTABLEKS                       R40 R39 K135 ["TextProps"]
     1134 CALL                             R37 2 1
     1135 SETTABLEKS                       R37 R36 K154 ["ReasonWithDashboardLink"]
     1137 CALL                             R33 3 1
     1138 SETTABLEKS                       R33 R32 K149 ["ReasonTextFrame"]
     1140 CALL                             R29 3 1
     1141 SETTABLEKS                       R29 R28 K52 ["LoadingResultFailure"]
     1143 GETUPVAL                         R30 8
     1144 GETTABLEKS                       R29 R30 K37 ["createElement"]
     1146 LOADK                            R30 K38 ["Frame"]
     1147 DUPTABLE                         R31 K166 [{"AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
     1148 GETIMPORT                        R32 K46 [Enum.AutomaticSize.Y]
     1150 SETTABLEKS                       R32 R31 K39 ["AutomaticSize"]
     1152 LOADN                            R32 1
     1153 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
     1155 GETIMPORT                        R32 K64 [UDim2.new]
     1157 LOADN                            R33 0
     1158 LOADN                            R34 0
     1159 LOADN                            R35 1
     1160 MINUS                            R36 R17
     1161 CALL                             R32 4 1
     1162 SETTABLEKS                       R32 R31 K58 ["Position"]
     1164 GETIMPORT                        R32 K64 [UDim2.new]
     1166 LOADN                            R33 1
     1167 LOADN                            R34 0
     1168 LOADN                            R35 0
     1169 MOVE                             R36 R17
     1170 CALL                             R32 4 1
     1171 SETTABLEKS                       R32 R31 K43 ["Size"]
     1173 DUPTABLE                         R32 K171 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1174 GETUPVAL                         R34 8
     1175 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1177 LOADK                            R34 K75 ["UIListLayout"]
     1178 DUPTABLE                         R35 K172 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1179 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
     1181 SETTABLEKS                       R36 R35 K80 ["FillDirection"]
     1183 GETIMPORT                        R36 K89 [Enum.HorizontalAlignment.Center]
     1185 SETTABLEKS                       R36 R35 K81 ["HorizontalAlignment"]
     1187 GETIMPORT                        R36 K95 [UDim.new]
     1189 LOADN                            R37 0
     1190 LOADN                            R38 10
     1191 CALL                             R36 2 1
     1192 SETTABLEKS                       R36 R35 K84 ["Padding"]
     1194 GETIMPORT                        R36 K93 [Enum.SortOrder.LayoutOrder]
     1196 SETTABLEKS                       R36 R35 K83 ["SortOrder"]
     1198 CALL                             R33 2 1
     1199 SETTABLEKS                       R33 R32 K75 ["UIListLayout"]
     1201 JUMPIFNOT                        R13 ; [+38]
     1202 GETUPVAL                         R34 8
     1203 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1205 GETUPVAL                         R34 16
     1206 DUPTABLE                         R35 K175 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1207 GETIMPORT                        R36 K177 [Enum.AutomaticSize.X]
     1209 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1211 NAMECALL                         R36 R22 K178 ["getNextOrder"]
     1213 CALL                             R36 1 1
     1214 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1216 GETTABLEKS                       R36 R0 K179 ["goToNextScreen"]
     1218 SETTABLEKS                       R36 R35 K173 ["onClick"]
     1220 GETIMPORT                        R36 K64 [UDim2.new]
     1222 LOADN                            R37 0
     1223 GETUPVAL                         R38 17
     1224 LOADN                            R39 0
     1225 LOADN                            R40 32
     1226 CALL                             R36 4 1
     1227 SETTABLEKS                       R36 R35 K43 ["Size"]
     1229 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1231 LOADK                            R38 K29 ["AssetUploadResult"]
     1232 LOADK                            R39 K180 ["SubmitAsDevelopmentItem"]
     1233 NAMECALL                         R36 R36 K31 ["getText"]
     1235 CALL                             R36 3 1
     1236 SETTABLEKS                       R36 R35 K174 ["titleText"]
     1238 CALL                             R33 2 1
     1239 JUMP                             ; [+1]
     1240 LOADNIL                          R33
     1241 SETTABLEKS                       R33 R32 K167 ["SubmitButton"]
     1243 JUMPIFNOT                        R16 ; [+38]
     1244 GETUPVAL                         R34 8
     1245 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1247 GETUPVAL                         R34 16
     1248 DUPTABLE                         R35 K175 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1249 GETIMPORT                        R36 K177 [Enum.AutomaticSize.X]
     1251 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1253 NAMECALL                         R36 R22 K178 ["getNextOrder"]
     1255 CALL                             R36 1 1
     1256 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1258 GETTABLEKS                       R36 R0 K181 ["onClose"]
     1260 SETTABLEKS                       R36 R35 K173 ["onClick"]
     1262 GETIMPORT                        R36 K64 [UDim2.new]
     1264 LOADN                            R37 0
     1265 LOADN                            R38 200
     1266 LOADN                            R39 0
     1267 LOADN                            R40 32
     1268 CALL                             R36 4 1
     1269 SETTABLEKS                       R36 R35 K43 ["Size"]
     1271 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1273 LOADK                            R38 K29 ["AssetUploadResult"]
     1274 LOADK                            R39 K182 ["NextSubmit"]
     1275 NAMECALL                         R36 R36 K31 ["getText"]
     1277 CALL                             R36 3 1
     1278 SETTABLEKS                       R36 R35 K174 ["titleText"]
     1280 CALL                             R33 2 1
     1281 JUMP                             ; [+1]
     1282 LOADNIL                          R33
     1283 SETTABLEKS                       R33 R32 K168 ["NextButton"]
     1285 JUMPIFNOT                        R13 ; [+25]
     1286 GETUPVAL                         R34 8
     1287 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1289 GETUPVAL                         R34 18
     1290 DUPTABLE                         R35 K184 [{"LayoutOrder", "OnClick", "Text"}]
     1291 NAMECALL                         R36 R22 K178 ["getNextOrder"]
     1293 CALL                             R36 1 1
     1294 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1296 GETTABLEKS                       R36 R0 K181 ["onClose"]
     1298 SETTABLEKS                       R36 R35 K183 ["OnClick"]
     1300 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1302 LOADK                            R38 K29 ["AssetUploadResult"]
     1303 LOADK                            R39 K185 ["Close"]
     1304 NAMECALL                         R36 R36 K31 ["getText"]
     1306 CALL                             R36 3 1
     1307 SETTABLEKS                       R36 R35 K97 ["Text"]
     1309 CALL                             R33 2 1
     1310 JUMP                             ; [+1]
     1311 LOADNIL                          R33
     1312 SETTABLEKS                       R33 R32 K169 ["CloseLink"]
     1314 JUMPIFNOT                        R14 ; [+34]
     1315 GETUPVAL                         R34 8
     1316 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1318 GETUPVAL                         R34 16
     1319 DUPTABLE                         R35 K186 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1320 NAMECALL                         R36 R22 K178 ["getNextOrder"]
     1322 CALL                             R36 1 1
     1323 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1325 GETTABLEKS                       R36 R0 K181 ["onClose"]
     1327 SETTABLEKS                       R36 R35 K173 ["onClick"]
     1329 GETIMPORT                        R36 K64 [UDim2.new]
     1331 LOADN                            R37 0
     1332 LOADN                            R38 120
     1333 LOADN                            R39 0
     1334 LOADN                            R40 32
     1335 CALL                             R36 4 1
     1336 SETTABLEKS                       R36 R35 K43 ["Size"]
     1338 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1340 LOADK                            R38 K29 ["AssetUploadResult"]
     1341 LOADK                            R39 K185 ["Close"]
     1342 NAMECALL                         R36 R36 K31 ["getText"]
     1344 CALL                             R36 3 1
     1345 SETTABLEKS                       R36 R35 K174 ["titleText"]
     1347 CALL                             R33 2 1
     1348 JUMP                             ; [+1]
     1349 LOADNIL                          R33
     1350 SETTABLEKS                       R33 R32 K170 ["CloseButton"]
     1352 JUMPIFNOT                        R15 ; [+23]
     1353 GETUPVAL                         R34 8
     1354 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1356 GETUPVAL                         R34 18
     1357 DUPTABLE                         R35 K184 [{"LayoutOrder", "OnClick", "Text"}]
     1358 LOADN                            R36 1
     1359 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1361 GETTABLEKS                       R36 R0 K179 ["goToNextScreen"]
     1363 SETTABLEKS                       R36 R35 K183 ["OnClick"]
     1365 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1367 LOADK                            R38 K29 ["AssetUploadResult"]
     1368 LOADK                            R39 K187 ["Back"]
     1369 NAMECALL                         R36 R36 K31 ["getText"]
     1371 CALL                             R36 3 1
     1372 SETTABLEKS                       R36 R35 K97 ["Text"]
     1374 CALL                             R33 2 1
     1375 JUMP                             ; [+1]
     1376 LOADNIL                          R33
     1377 SETTABLEKS                       R33 R32 K132 ["LinkText"]
     1379 CALL                             R29 3 1
     1380 SETTABLEKS                       R29 R28 K53 ["Footer"]
     1382 CALL                             R25 3 -1
     1383 CLOSEUPVALS                      R19
     1384 RETURN                           R25 -1

PROTO_14:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K12 [{"assetId", "assetName", "uploadSucceeded", "instances", "networkError", "screenFlowType", "assetConfigData", "assetTypeEnum", "thumbnailStatus", "networkTable", "iconFile", "hasSubsequent"}]
        6 GETTABLEKS                       R3 R0 K0 ["assetId"]
        8 SETTABLEKS                       R3 R2 K0 ["assetId"]
       10 GETTABLEKS                       R4 R0 K13 ["changed"]
       12 JUMPIFNOT                        R4 ; [+5]
       13 GETTABLEKS                       R4 R0 K13 ["changed"]
       15 GETTABLEKS                       R3 R4 K14 ["AssetConfigName"]
       17 JUMPIF                           R3 ; [+2]
       18 GETTABLEKS                       R3 R0 K1 ["assetName"]
       20 SETTABLEKS                       R3 R2 K1 ["assetName"]
       22 GETTABLEKS                       R3 R0 K2 ["uploadSucceeded"]
       24 SETTABLEKS                       R3 R2 K2 ["uploadSucceeded"]
       26 GETTABLEKS                       R3 R0 K3 ["instances"]
       28 SETTABLEKS                       R3 R2 K3 ["instances"]
       30 GETTABLEKS                       R3 R0 K4 ["networkError"]
       32 SETTABLEKS                       R3 R2 K4 ["networkError"]
       34 GETTABLEKS                       R3 R0 K5 ["screenFlowType"]
       36 SETTABLEKS                       R3 R2 K5 ["screenFlowType"]
       38 GETTABLEKS                       R3 R0 K6 ["assetConfigData"]
       40 SETTABLEKS                       R3 R2 K6 ["assetConfigData"]
       42 GETTABLEKS                       R3 R0 K7 ["assetTypeEnum"]
       44 SETTABLEKS                       R3 R2 K7 ["assetTypeEnum"]
       46 GETTABLEKS                       R3 R0 K8 ["thumbnailStatus"]
       48 SETTABLEKS                       R3 R2 K8 ["thumbnailStatus"]
       50 GETTABLEKS                       R3 R0 K9 ["networkTable"]
       52 JUMPIF                           R3 ; [+2]
       53 NEWTABLE                         R3 0 0
       55 SETTABLEKS                       R3 R2 K9 ["networkTable"]
       57 GETTABLEKS                       R3 R0 K10 ["iconFile"]
       59 SETTABLEKS                       R3 R2 K10 ["iconFile"]
       61 GETTABLEKS                       R3 R0 K11 ["hasSubsequent"]
       63 SETTABLEKS                       R3 R2 K11 ["hasSubsequent"]
       65 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        8 GETTABLEKS                       R2 R3 K1 ["CONFIGURE_ASSET"]
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R1 4
       15 CALL                             R1 0 -1
       16 CALL                             R0 -1 0
       17 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"clearChange", "goToNextScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["clearChange"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 SETTABLEKS                       R2 R1 K1 ["goToNextScreen"]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["UpdateAssetUploadResultBundleConfigureLink2"]
       22 NAMECALL                         R3 R3 K7 ["GetFastFlag"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K8 ["ChangeAvatarAssetCreatorDashboardLink"]
       28 NAMECALL                         R4 R4 K7 ["GetFastFlag"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
       34 LOADB                            R8 0
       35 NAMECALL                         R5 R5 K10 ["DefineFastFlag"]
       37 CALL                             R5 3 0
       38 GETIMPORT                        R9 K12 [script]
       40 GETTABLEKS                       R8 R9 K13 ["Parent"]
       42 GETTABLEKS                       R7 R8 K13 ["Parent"]
       44 GETTABLEKS                       R6 R7 K13 ["Parent"]
       46 GETTABLEKS                       R5 R6 K13 ["Parent"]
       48 GETTABLEKS                       R6 R5 K14 ["Packages"]
       50 GETIMPORT                        R7 K16 [require]
       52 GETTABLEKS                       R8 R6 K17 ["Roact"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K16 [require]
       57 GETTABLEKS                       R9 R6 K18 ["RoactRodux"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R10 R5 K19 ["Src"]
       62 GETTABLEKS                       R9 R10 K20 ["Util"]
       64 GETIMPORT                        R10 K16 [require]
       66 GETTABLEKS                       R11 R9 K21 ["Constants"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K16 [require]
       71 GETTABLEKS                       R12 R9 K22 ["AssetConfigConstants"]
       73 CALL                             R11 1 1
       74 GETTABLEKS                       R12 R11 K23 ["PreviewTypes"]
       76 GETIMPORT                        R13 K16 [require]
       78 GETTABLEKS                       R14 R9 K24 ["AssetConfigUtil"]
       80 CALL                             R13 1 1
       81 GETIMPORT                        R14 K16 [require]
       83 GETTABLEKS                       R15 R9 K25 ["ToolboxUtilities"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K16 [require]
       88 GETTABLEKS                       R16 R9 K26 ["Urls"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R17 K16 [require]
       93 GETTABLEKS                       R18 R6 K27 ["Framework"]
       95 CALL                             R17 1 1
       96 GETTABLEKS                       R16 R17 K28 ["ContextServices"]
       98 GETTABLEKS                       R17 R16 K29 ["withContext"]
      100 GETTABLEKS                       R19 R5 K19 ["Src"]
      102 GETTABLEKS                       R18 R19 K30 ["Components"]
      104 GETIMPORT                        R19 K16 [require]
      106 GETTABLEKS                       R20 R18 K31 ["NavButton"]
      108 CALL                             R19 1 1
      109 GETTABLEKS                       R20 R18 K32 ["AssetConfiguration"]
      111 GETIMPORT                        R21 K16 [require]
      113 GETTABLEKS                       R22 R20 K33 ["AssetThumbnailPreview"]
      115 CALL                             R21 1 1
      116 GETIMPORT                        R22 K16 [require]
      118 GETTABLEKS                       R23 R20 K34 ["ReasonFrame"]
      120 CALL                             R22 1 1
      121 GETIMPORT                        R23 K16 [require]
      123 GETTABLEKS                       R24 R20 K35 ["CopyID"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K16 [require]
      128 GETTABLEKS                       R25 R6 K27 ["Framework"]
      130 CALL                             R24 1 1
      131 GETTABLEKS                       R26 R24 K36 ["UI"]
      133 GETTABLEKS                       R25 R26 K37 ["LinkText"]
      135 GETTABLEKS                       R27 R24 K36 ["UI"]
      137 GETTABLEKS                       R26 R27 K38 ["Pane"]
      139 GETTABLEKS                       R28 R24 K36 ["UI"]
      141 GETTABLEKS                       R27 R28 K39 ["TextWithInlineLink"]
      143 GETTABLEKS                       R29 R24 K20 ["Util"]
      145 GETTABLEKS                       R28 R29 K40 ["LayoutOrderIterator"]
      147 GETTABLEKS                       R30 R5 K19 ["Src"]
      149 GETTABLEKS                       R29 R30 K41 ["Actions"]
      151 GETIMPORT                        R30 K16 [require]
      153 GETTABLEKS                       R31 R29 K42 ["SetCurrentScreen"]
      155 CALL                             R30 1 1
      156 GETIMPORT                        R31 K16 [require]
      158 GETTABLEKS                       R32 R29 K43 ["ClearChange"]
      160 CALL                             R31 1 1
      161 GETTABLEKS                       R33 R5 K19 ["Src"]
      163 GETTABLEKS                       R32 R33 K44 ["Thunks"]
      165 GETIMPORT                        R33 K16 [require]
      167 GETTABLEKS                       R36 R5 K19 ["Src"]
      169 GETTABLEKS                       R35 R36 K45 ["Flags"]
      171 GETTABLEKS                       R34 R35 K46 ["getFFlagToolboxDeprecateAssetSelection"]
      173 CALL                             R33 1 1
      174 LOADNIL                          R34
      175 MOVE                             R35 R33
      176 CALL                             R35 0 1
      177 JUMPIF                           R35 ; [+8]
      178 GETIMPORT                        R35 K16 [require]
      180 GETTABLEKS                       R37 R32 K32 ["AssetConfiguration"]
      182 GETTABLEKS                       R36 R37 K47 ["GoToNextScreen"]
      184 CALL                             R35 1 1
      185 MOVE                             R34 R35
      186 GETIMPORT                        R35 K16 [require]
      188 GETTABLEKS                       R39 R5 K19 ["Src"]
      190 GETTABLEKS                       R38 R39 K20 ["Util"]
      192 GETTABLEKS                       R37 R38 K48 ["SharedFlags"]
      194 GETTABLEKS                       R36 R37 K49 ["getFFlagToolboxFixAssetConfigResultTranslations"]
      196 CALL                             R35 1 1
      197 GETIMPORT                        R36 K16 [require]
      199 GETTABLEKS                       R39 R5 K19 ["Src"]
      201 GETTABLEKS                       R38 R39 K45 ["Flags"]
      203 GETTABLEKS                       R37 R38 K50 ["getFFlagAllowModelUploadErrorMessageToBeSelectable"]
      205 CALL                             R36 1 1
      206 GETIMPORT                        R37 K16 [require]
      208 GETTABLEKS                       R40 R5 K19 ["Src"]
      210 GETTABLEKS                       R39 R40 K45 ["Flags"]
      212 GETTABLEKS                       R38 R39 K51 ["getFFlagEnableUploadingMakeup"]
      214 CALL                             R37 1 1
      215 GETIMPORT                        R39 K1 [game]
      217 LOADK                            R41 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
      218 NAMECALL                         R39 R39 K7 ["GetFastFlag"]
      220 CALL                             R39 2 1
      221 JUMPIFNOT                        R39 ; [+2]
      222 LOADN                            R38 225
      223 JUMP                             ; [+1]
      224 LOADN                            R38 150
      225 GETTABLEKS                       R39 R7 K52 ["PureComponent"]
      227 LOADK                            R41 K53 ["AssetUploadResult"]
      228 NAMECALL                         R39 R39 K54 ["extend"]
      230 CALL                             R39 2 1
      231 DUPCLOSURE                       R40 K55 [PROTO_6]
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R3
      237 SETTABLEKS                       R40 R39 K56 ["init"]
      239 DUPCLOSURE                       R40 K57 [PROTO_7]
      240 CAPTURE                          VAL R11
      241 CAPTURE                          VAL R13
      242 CAPTURE                          VAL R0
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R2
      245 DUPCLOSURE                       R41 K58 [PROTO_8]
      246 DUPCLOSURE                       R42 K59 [PROTO_13]
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R13
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R40
      252 CAPTURE                          VAL R15
      253 CAPTURE                          VAL R28
      254 CAPTURE                          VAL R35
      255 CAPTURE                          VAL R7
      256 CAPTURE                          VAL R21
      257 CAPTURE                          VAL R23
      258 CAPTURE                          VAL R1
      259 CAPTURE                          VAL R27
      260 CAPTURE                          VAL R4
      261 CAPTURE                          VAL R26
      262 CAPTURE                          VAL R36
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R38
      265 CAPTURE                          VAL R25
      266 SETTABLEKS                       R42 R39 K60 ["render"]
      268 DUPCLOSURE                       R42 K61 [PROTO_14]
      269 NEWCLOSURE                       R43 P5
      270 CAPTURE                          VAL R31
      271 CAPTURE                          VAL R33
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R11
      274 CAPTURE                          REF R34
      275 MOVE                             R44 R17
      276 DUPTABLE                         R45 K64 [{"Stylizer", "Localization"}]
      277 GETTABLEKS                       R46 R16 K62 ["Stylizer"]
      279 SETTABLEKS                       R46 R45 K62 ["Stylizer"]
      281 GETTABLEKS                       R46 R16 K63 ["Localization"]
      283 SETTABLEKS                       R46 R45 K63 ["Localization"]
      285 CALL                             R44 1 1
      286 MOVE                             R45 R39
      287 CALL                             R44 1 1
      288 MOVE                             R39 R44
      289 GETTABLEKS                       R44 R8 K65 ["connect"]
      291 MOVE                             R45 R42
      292 MOVE                             R46 R43
      293 CALL                             R44 2 1
      294 MOVE                             R45 R39
      295 CALL                             R44 1 -1
      296 CLOSEUPVALS                      R34
      297 RETURN                           R44 -1
