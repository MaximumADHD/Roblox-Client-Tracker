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
       28 GETUPVAL                         R2 4
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+5]
       31 DUPCLOSURE                       R2 K8 [PROTO_4]
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 SETTABLEKS                       R2 R0 K9 ["openCreatorDashboardCreationsPage"]
       36 GETUPVAL                         R2 5
       37 JUMPIFNOT                        R2 ; [+5]
       38 DUPCLOSURE                       R2 K10 [PROTO_5]
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 SETTABLEKS                       R2 R0 K11 ["openCreatorDashboardBundle"]
       43 RETURN                           R0 0

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
      171 GETUPVAL                         R25 8
      172 CALL                             R25 0 1
      173 JUMPIFNOT                        R25 ; [+8]
      174 GETTABLEKS                       R25 R1 K7 ["assetTypeEnum"]
      176 GETIMPORT                        R26 K36 [Enum.AssetType.EmoteAnimation]
      178 JUMPIFNOTEQ                      R25 R26 ; [+3]
      180 LOADN                            R24 150
      181 JUMP                             ; [+1]
      182 LOADN                            R24 186
      183 GETUPVAL                         R26 9
      184 GETTABLEKS                       R25 R26 K37 ["createElement"]
      186 LOADK                            R26 K38 ["Frame"]
      187 DUPTABLE                         R27 K44 [{"AutomaticSize", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
      188 GETIMPORT                        R28 K46 [Enum.AutomaticSize.Y]
      190 SETTABLEKS                       R28 R27 K39 ["AutomaticSize"]
      192 GETTABLEKS                       R29 R2 K47 ["uploadResult"]
      194 GETTABLEKS                       R28 R29 K48 ["background"]
      196 SETTABLEKS                       R28 R27 K40 ["BackgroundColor3"]
      198 LOADN                            R28 0
      199 SETTABLEKS                       R28 R27 K41 ["BackgroundTransparency"]
      201 LOADN                            R28 0
      202 SETTABLEKS                       R28 R27 K42 ["BorderSizePixel"]
      204 GETTABLEKS                       R28 R1 K43 ["Size"]
      206 SETTABLEKS                       R28 R27 K43 ["Size"]
      208 DUPTABLE                         R28 K54 [{"ModelPreview", "ThumbnailPreview", "CopyID", "LoadingResultSuccess", "LoadingResultFailure", "Footer"}]
      209 MOVE                             R29 R7
      210 JUMPIFNOT                        R29 ; [+56]
      211 GETUPVAL                         R30 9
      212 GETTABLEKS                       R29 R30 K37 ["createElement"]
      214 GETUPVAL                         R30 10
      215 DUPTABLE                         R31 K60 [{"title", "titleHeight", "titlePadding", "Position", "Size", "AssetType", "UploadSucceeded"}]
      216 GETTABLEKS                       R33 R1 K62 ["assetName"]
      218 ORK                              R32 R33 K61 []
      219 SETTABLEKS                       R32 R31 K55 ["title"]
      221 LOADN                            R32 24
      222 SETTABLEKS                       R32 R31 K56 ["titleHeight"]
      224 LOADN                            R32 12
      225 SETTABLEKS                       R32 R31 K57 ["titlePadding"]
      227 GETIMPORT                        R32 K64 [UDim2.new]
      229 LOADK                            R33 K65 [0.5]
      230 LOADN                            R34 181
      231 LOADN                            R35 0
      232 LOADN                            R36 48
      233 CALL                             R32 4 1
      234 SETTABLEKS                       R32 R31 K58 ["Position"]
      236 GETIMPORT                        R32 K64 [UDim2.new]
      238 LOADN                            R33 0
      239 LOADN                            R34 150
      240 LOADN                            R35 0
      241 MOVE                             R36 R24
      242 CALL                             R32 4 1
      243 SETTABLEKS                       R32 R31 K43 ["Size"]
      245 GETUPVAL                         R33 8
      246 CALL                             R33 0 1
      247 JUMPIF                           R33 ; [+3]
      248 GETUPVAL                         R33 11
      249 CALL                             R33 0 1
      250 JUMPIFNOT                        R33 ; [+3]
      251 GETTABLEKS                       R32 R1 K7 ["assetTypeEnum"]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R32
      255 SETTABLEKS                       R32 R31 K34 ["AssetType"]
      257 GETUPVAL                         R33 12
      258 CALL                             R33 0 1
      259 JUMPIFNOT                        R33 ; [+3]
      260 GETTABLEKS                       R32 R1 K19 ["uploadSucceeded"]
      262 JUMP                             ; [+1]
      263 LOADNIL                          R32
      264 SETTABLEKS                       R32 R31 K59 ["UploadSucceeded"]
      266 CALL                             R29 2 1
      267 SETTABLEKS                       R29 R28 K10 ["ModelPreview"]
      269 MOVE                             R29 R8
      270 JUMPIFNOT                        R29 ; [+40]
      271 GETUPVAL                         R30 9
      272 GETTABLEKS                       R29 R30 K37 ["createElement"]
      274 LOADK                            R30 K66 ["ImageLabel"]
      275 DUPTABLE                         R31 K68 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      276 GETIMPORT                        R32 K64 [UDim2.new]
      278 LOADK                            R33 K65 [0.5]
      279 LOADN                            R34 181
      280 LOADN                            R35 0
      281 LOADN                            R36 48
      282 CALL                             R32 4 1
      283 SETTABLEKS                       R32 R31 K58 ["Position"]
      285 GETIMPORT                        R32 K64 [UDim2.new]
      287 LOADN                            R33 0
      288 LOADN                            R34 150
      289 LOADN                            R35 0
      290 LOADN                            R36 150
      291 CALL                             R32 4 1
      292 SETTABLEKS                       R32 R31 K43 ["Size"]
      294 GETUPVAL                         R33 1
      295 GETTABLEKS                       R32 R33 K69 ["getResultThumbnail"]
      297 GETTABLEKS                       R33 R1 K24 ["assetId"]
      299 GETTABLEKS                       R34 R1 K70 ["iconFile"]
      301 CALL                             R32 2 1
      302 SETTABLEKS                       R32 R31 K67 ["Image"]
      304 LOADN                            R32 1
      305 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      307 LOADN                            R32 0
      308 SETTABLEKS                       R32 R31 K42 ["BorderSizePixel"]
      310 CALL                             R29 2 1
      311 SETTABLEKS                       R29 R28 K49 ["ThumbnailPreview"]
      313 MOVE                             R29 R10
      314 JUMPIFNOT                        R29 ; [+13]
      315 GETUPVAL                         R30 9
      316 GETTABLEKS                       R29 R30 K37 ["createElement"]
      318 GETUPVAL                         R30 13
      319 DUPTABLE                         R31 K73 [{"YPos", "AssetId"}]
      320 LOADN                            R32 240
      321 SETTABLEKS                       R32 R31 K71 ["YPos"]
      323 GETTABLEKS                       R32 R1 K24 ["assetId"]
      325 SETTABLEKS                       R32 R31 K72 ["AssetId"]
      327 CALL                             R29 2 1
      328 SETTABLEKS                       R29 R28 K50 ["CopyID"]
      330 MOVE                             R29 R10
      331 JUMPIFNOT                        R29 ; [+582]
      332 GETUPVAL                         R30 9
      333 GETTABLEKS                       R29 R30 K37 ["createElement"]
      335 LOADK                            R30 K38 ["Frame"]
      336 DUPTABLE                         R31 K74 [{"Position", "Size", "BackgroundTransparency"}]
      337 GETIMPORT                        R32 K64 [UDim2.new]
      339 LOADN                            R33 0
      340 LOADN                            R34 0
      341 LOADN                            R35 0
      342 LOADN                            R36 23
      343 CALL                             R32 4 1
      344 SETTABLEKS                       R32 R31 K58 ["Position"]
      346 GETIMPORT                        R32 K64 [UDim2.new]
      348 LOADN                            R33 1
      349 LOADN                            R34 0
      350 LOADN                            R35 1
      351 LOADN                            R36 233
      352 CALL                             R32 4 1
      353 SETTABLEKS                       R32 R31 K43 ["Size"]
      355 LOADN                            R32 1
      356 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      358 DUPTABLE                         R32 K79 [{"UIListLayout", "Title", "ReasonFrame", "Rows"}]
      359 GETUPVAL                         R34 9
      360 GETTABLEKS                       R33 R34 K37 ["createElement"]
      362 LOADK                            R34 K75 ["UIListLayout"]
      363 DUPTABLE                         R35 K85 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      364 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
      366 SETTABLEKS                       R36 R35 K80 ["FillDirection"]
      368 GETIMPORT                        R36 K89 [Enum.HorizontalAlignment.Center]
      370 SETTABLEKS                       R36 R35 K81 ["HorizontalAlignment"]
      372 GETIMPORT                        R36 K91 [Enum.VerticalAlignment.Top]
      374 SETTABLEKS                       R36 R35 K82 ["VerticalAlignment"]
      376 GETIMPORT                        R36 K93 [Enum.SortOrder.LayoutOrder]
      378 SETTABLEKS                       R36 R35 K83 ["SortOrder"]
      380 GETIMPORT                        R36 K95 [UDim.new]
      382 LOADN                            R37 0
      383 LOADN                            R38 5
      384 CALL                             R36 2 1
      385 SETTABLEKS                       R36 R35 K84 ["Padding"]
      387 CALL                             R33 2 1
      388 SETTABLEKS                       R33 R32 K75 ["UIListLayout"]
      390 GETUPVAL                         R34 9
      391 GETTABLEKS                       R33 R34 K37 ["createElement"]
      393 LOADK                            R34 K96 ["TextLabel"]
      394 DUPTABLE                         R35 K103 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      395 LOADN                            R36 1
      396 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      398 GETIMPORT                        R36 K64 [UDim2.new]
      400 LOADK                            R37 K65 [0.5]
      401 LOADN                            R38 56
      402 LOADN                            R39 0
      403 LOADN                            R40 0
      404 CALL                             R36 4 1
      405 SETTABLEKS                       R36 R35 K58 ["Position"]
      407 GETIMPORT                        R36 K64 [UDim2.new]
      409 LOADN                            R37 0
      410 LOADN                            R38 144
      411 LOADN                            R39 0
      412 LOADN                            R40 36
      413 CALL                             R36 4 1
      414 SETTABLEKS                       R36 R35 K43 ["Size"]
      416 GETUPVAL                         R37 7
      417 CALL                             R37 0 1
      418 JUMPIFNOT                        R37 ; [+2]
      419 MOVE                             R36 R23
      420 JUMP                             ; [+6]
      421 GETTABLEKS                       R37 R1 K19 ["uploadSucceeded"]
      423 JUMPIFNOT                        R37 ; [+2]
      424 LOADK                            R36 K104 ["Successfully submitted!"]
      425 JUMP                             ; [+1]
      426 LOADK                            R36 K105 ["Submission failed"]
      427 SETTABLEKS                       R36 R35 K97 ["Text"]
      429 GETUPVAL                         R37 3
      430 GETTABLEKS                       R36 R37 K106 ["FONT"]
      432 SETTABLEKS                       R36 R35 K98 ["Font"]
      434 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
      436 GETTABLEKS                       R36 R37 K107 ["greenText"]
      438 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
      440 GETUPVAL                         R37 3
      441 GETTABLEKS                       R36 R37 K108 ["FONT_SIZE_TITLE"]
      443 SETTABLEKS                       R36 R35 K100 ["TextSize"]
      445 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
      447 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
      449 GETIMPORT                        R36 K110 [Enum.TextYAlignment.Center]
      451 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
      453 LOADN                            R36 1
      454 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      456 CALL                             R33 2 1
      457 SETTABLEKS                       R33 R32 K76 ["Title"]
      459 LOADB                            R33 0
      460 SETTABLEKS                       R33 R32 K77 ["ReasonFrame"]
      462 GETUPVAL                         R34 9
      463 GETTABLEKS                       R33 R34 K37 ["createElement"]
      465 LOADK                            R34 K38 ["Frame"]
      466 DUPTABLE                         R35 K111 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      467 LOADN                            R36 1
      468 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      470 GETIMPORT                        R36 K64 [UDim2.new]
      472 LOADN                            R37 0
      473 LOADN                            R38 144
      474 LOADN                            R39 0
      475 LOADN                            R40 72
      476 CALL                             R36 4 1
      477 SETTABLEKS                       R36 R35 K43 ["Size"]
      479 GETIMPORT                        R36 K64 [UDim2.new]
      481 LOADK                            R37 K65 [0.5]
      482 LOADN                            R38 56
      483 LOADN                            R39 0
      484 LOADN                            R40 49
      485 CALL                             R36 4 1
      486 SETTABLEKS                       R36 R35 K58 ["Position"]
      488 LOADN                            R36 3
      489 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      491 DUPTABLE                         R36 K118 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      492 GETUPVAL                         R38 9
      493 GETTABLEKS                       R37 R38 K37 ["createElement"]
      495 LOADK                            R38 K75 ["UIListLayout"]
      496 DUPTABLE                         R39 K119 [{"Padding", "SortOrder"}]
      497 GETIMPORT                        R40 K95 [UDim.new]
      499 LOADN                            R41 0
      500 LOADN                            R42 12
      501 CALL                             R40 2 1
      502 SETTABLEKS                       R40 R39 K84 ["Padding"]
      504 GETIMPORT                        R40 K93 [Enum.SortOrder.LayoutOrder]
      506 SETTABLEKS                       R40 R39 K83 ["SortOrder"]
      508 CALL                             R37 2 1
      509 SETTABLEKS                       R37 R36 K75 ["UIListLayout"]
      511 MOVE                             R37 R5
      512 JUMPIFNOT                        R37 ; [+55]
      513 GETUPVAL                         R38 9
      514 GETTABLEKS                       R37 R38 K37 ["createElement"]
      516 LOADK                            R38 K96 ["TextLabel"]
      517 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      518 LOADN                            R40 1
      519 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      521 GETUPVAL                         R41 3
      522 GETTABLEKS                       R40 R41 K106 ["FONT"]
      524 SETTABLEKS                       R40 R39 K98 ["Font"]
      526 GETUPVAL                         R41 7
      527 CALL                             R41 0 1
      528 JUMPIFNOT                        R41 ; [+8]
      529 GETTABLEKS                       R40 R1 K28 ["Localization"]
      531 LOADK                            R42 K29 ["AssetUploadResult"]
      532 LOADK                            R43 K121 ["AddedToModerationQueueMessage"]
      533 NAMECALL                         R40 R40 K31 ["getText"]
      535 CALL                             R40 3 1
      536 JUMP                             ; [+1]
      537 LOADK                            R40 K122 ["Asset has been added to moderation queue."]
      538 SETTABLEKS                       R40 R39 K97 ["Text"]
      540 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      542 GETTABLEKS                       R40 R41 K123 ["text"]
      544 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      546 GETUPVAL                         R41 3
      547 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      549 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      551 GETIMPORT                        R40 K64 [UDim2.new]
      553 LOADN                            R41 1
      554 LOADN                            R42 0
      555 LOADN                            R43 0
      556 LOADN                            R44 24
      557 CALL                             R40 4 1
      558 SETTABLEKS                       R40 R39 K43 ["Size"]
      560 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      562 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      564 LOADN                            R40 0
      565 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      567 CALL                             R37 2 1
      568 SETTABLEKS                       R37 R36 K112 ["ModerationMessage"]
      570 JUMPIFNOT                        R21 ; [+51]
      571 GETUPVAL                         R38 9
      572 GETTABLEKS                       R37 R38 K37 ["createElement"]
      574 LOADK                            R38 K96 ["TextLabel"]
      575 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      576 LOADN                            R40 1
      577 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      579 GETUPVAL                         R41 3
      580 GETTABLEKS                       R40 R41 K106 ["FONT"]
      582 SETTABLEKS                       R40 R39 K98 ["Font"]
      584 GETTABLEKS                       R40 R1 K28 ["Localization"]
      586 LOADK                            R42 K29 ["AssetUploadResult"]
      587 LOADK                            R43 K124 ["CreatorStoreConfigurationMessage"]
      588 NAMECALL                         R40 R40 K31 ["getText"]
      590 CALL                             R40 3 1
      591 SETTABLEKS                       R40 R39 K97 ["Text"]
      593 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      595 GETTABLEKS                       R40 R41 K123 ["text"]
      597 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      599 GETUPVAL                         R41 3
      600 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      602 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      604 GETIMPORT                        R40 K64 [UDim2.new]
      606 LOADN                            R41 1
      607 LOADN                            R42 0
      608 LOADN                            R43 0
      609 LOADN                            R44 24
      610 CALL                             R40 4 1
      611 SETTABLEKS                       R40 R39 K43 ["Size"]
      613 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      615 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      617 LOADN                            R40 1
      618 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      620 CALL                             R37 2 1
      621 JUMP                             ; [+1]
      622 LOADNIL                          R37
      623 SETTABLEKS                       R37 R36 K113 ["CreatorStoreConfigurationText"]
      625 JUMPIFNOT                        R21 ; [+54]
      626 GETUPVAL                         R38 9
      627 GETTABLEKS                       R37 R38 K37 ["createElement"]
      629 LOADK                            R38 K125 ["TextButton"]
      630 NEWTABLE                         R39 16 0
      632 LOADN                            R40 1
      633 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      635 GETUPVAL                         R41 3
      636 GETTABLEKS                       R40 R41 K106 ["FONT"]
      638 SETTABLEKS                       R40 R39 K98 ["Font"]
      640 SETTABLEKS                       R20 R39 K97 ["Text"]
      642 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      644 GETTABLEKS                       R40 R41 K126 ["link"]
      646 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      648 GETUPVAL                         R41 3
      649 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      651 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      653 GETIMPORT                        R40 K64 [UDim2.new]
      655 LOADN                            R41 1
      656 LOADN                            R42 0
      657 LOADN                            R43 0
      658 LOADN                            R44 24
      659 CALL                             R40 4 1
      660 SETTABLEKS                       R40 R39 K43 ["Size"]
      662 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      664 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      666 LOADN                            R40 2
      667 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      669 GETUPVAL                         R42 9
      670 GETTABLEKS                       R41 R42 K127 ["Event"]
      672 GETTABLEKS                       R40 R41 K128 ["Activated"]
      674 NEWCLOSURE                       R41 P0
      675 CAPTURE                          UPVAL U14
      676 CAPTURE                          VAL R20
      677 SETTABLE                         R41 R39 R40
      678 CALL                             R37 2 1
      679 JUMP                             ; [+1]
      680 LOADNIL                          R37
      681 SETTABLEKS                       R37 R36 K114 ["CreatorStoreConfigurationLink"]
      683 JUMPIF                           R18 ; [+56]
      684 GETUPVAL                         R38 9
      685 GETTABLEKS                       R37 R38 K37 ["createElement"]
      687 LOADK                            R38 K96 ["TextLabel"]
      688 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      689 LOADN                            R40 1
      690 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      692 GETUPVAL                         R41 3
      693 GETTABLEKS                       R40 R41 K106 ["FONT"]
      695 SETTABLEKS                       R40 R39 K98 ["Font"]
      697 GETUPVAL                         R41 7
      698 CALL                             R41 0 1
      699 JUMPIFNOT                        R41 ; [+8]
      700 GETTABLEKS                       R40 R1 K28 ["Localization"]
      702 LOADK                            R42 K29 ["AssetUploadResult"]
      703 LOADK                            R43 K129 ["WebsiteUrlNoticeMessage"]
      704 NAMECALL                         R40 R40 K31 ["getText"]
      706 CALL                             R40 3 1
      707 JUMP                             ; [+1]
      708 LOADK                            R40 K130 ["You may find your asset in Toolbox or on web:"]
      709 SETTABLEKS                       R40 R39 K97 ["Text"]
      711 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      713 GETTABLEKS                       R40 R41 K123 ["text"]
      715 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      717 GETUPVAL                         R41 3
      718 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      720 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      722 GETIMPORT                        R40 K64 [UDim2.new]
      724 LOADN                            R41 1
      725 LOADN                            R42 0
      726 LOADN                            R43 0
      727 LOADN                            R44 24
      728 CALL                             R40 4 1
      729 SETTABLEKS                       R40 R39 K43 ["Size"]
      731 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      733 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      735 LOADN                            R40 3
      736 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      738 CALL                             R37 2 1
      739 JUMP                             ; [+1]
      740 LOADNIL                          R37
      741 SETTABLEKS                       R37 R36 K115 ["ToolboxText"]
      743 JUMPIF                           R18 ; [+54]
      744 GETUPVAL                         R38 9
      745 GETTABLEKS                       R37 R38 K37 ["createElement"]
      747 LOADK                            R38 K125 ["TextButton"]
      748 NEWTABLE                         R39 16 0
      750 LOADN                            R40 1
      751 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      753 GETUPVAL                         R41 3
      754 GETTABLEKS                       R40 R41 K106 ["FONT"]
      756 SETTABLEKS                       R40 R39 K98 ["Font"]
      758 SETTABLEKS                       R19 R39 K97 ["Text"]
      760 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      762 GETTABLEKS                       R40 R41 K126 ["link"]
      764 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      766 GETUPVAL                         R41 3
      767 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      769 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      771 GETIMPORT                        R40 K64 [UDim2.new]
      773 LOADN                            R41 1
      774 LOADN                            R42 0
      775 LOADN                            R43 0
      776 LOADN                            R44 24
      777 CALL                             R40 4 1
      778 SETTABLEKS                       R40 R39 K43 ["Size"]
      780 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      782 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      784 LOADN                            R40 4
      785 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      787 GETUPVAL                         R42 9
      788 GETTABLEKS                       R41 R42 K127 ["Event"]
      790 GETTABLEKS                       R40 R41 K128 ["Activated"]
      792 NEWCLOSURE                       R41 P1
      793 CAPTURE                          UPVAL U14
      794 CAPTURE                          REF R19
      795 SETTABLE                         R41 R39 R40
      796 CALL                             R37 2 1
      797 JUMP                             ; [+1]
      798 LOADNIL                          R37
      799 SETTABLEKS                       R37 R36 K116 ["ToolboxLink"]
      801 JUMPIFNOT                        R18 ; [+105]
      802 GETUPVAL                         R38 9
      803 GETTABLEKS                       R37 R38 K37 ["createElement"]
      805 GETUPVAL                         R38 15
      806 DUPTABLE                         R39 K136 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
      807 GETIMPORT                        R41 K138 [game]
      809 LOADK                            R43 K139 ["UpdateAssetUploadResultBundleConfigureLink2"]
      810 NAMECALL                         R41 R41 K140 ["GetFastFlag"]
      812 CALL                             R41 2 1
      813 JUMPIFNOT                        R41 ; [+11]
      814 GETUPVAL                         R42 1
      815 GETTABLEKS                       R41 R42 K22 ["isUGCBundleType"]
      817 GETTABLEKS                       R42 R1 K7 ["assetTypeEnum"]
      819 CALL                             R41 1 1
      820 JUMPIFNOT                        R41 ; [+4]
      821 NEWCLOSURE                       R40 P2
      822 CAPTURE                          VAL R0
      823 CAPTURE                          VAL R1
      824 JUMP                             ; [+8]
      825 GETUPVAL                         R41 16
      826 JUMPIFNOT                        R41 ; [+4]
      827 NEWCLOSURE                       R40 P3
      828 CAPTURE                          VAL R0
      829 CAPTURE                          VAL R1
      830 JUMP                             ; [+2]
      831 GETTABLEKS                       R40 R0 K141 ["openCreatorDashboard"]
      833 SETTABLEKS                       R40 R39 K131 ["OnLinkClicked"]
      835 GETTABLEKS                       R40 R1 K28 ["Localization"]
      837 LOADK                            R42 K29 ["AssetUploadResult"]
      838 LOADK                            R43 K142 ["CreatorDashboardMessage"]
      839 DUPTABLE                         R44 K144 [{"creatorDashboardLink"}]
      840 GETUPVAL                         R46 3
      841 GETTABLEKS                       R45 R46 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      843 SETTABLEKS                       R45 R44 K143 ["creatorDashboardLink"]
      845 NAMECALL                         R40 R40 K31 ["getText"]
      847 CALL                             R40 4 1
      848 SETTABLEKS                       R40 R39 K97 ["Text"]
      850 GETTABLEKS                       R40 R1 K28 ["Localization"]
      852 LOADK                            R42 K146 ["General"]
      853 LOADK                            R43 K147 ["CreatorDashboard"]
      854 NAMECALL                         R40 R40 K31 ["getText"]
      856 CALL                             R40 3 1
      857 SETTABLEKS                       R40 R39 K132 ["LinkText"]
      859 GETUPVAL                         R41 3
      860 GETTABLEKS                       R40 R41 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      862 SETTABLEKS                       R40 R39 K133 ["LinkPlaceholder"]
      864 GETIMPORT                        R40 K46 [Enum.AutomaticSize.Y]
      866 SETTABLEKS                       R40 R39 K39 ["AutomaticSize"]
      868 GETIMPORT                        R40 K109 [Enum.TextXAlignment.Center]
      870 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
      872 GETIMPORT                        R40 K89 [Enum.HorizontalAlignment.Center]
      874 SETTABLEKS                       R40 R39 K81 ["HorizontalAlignment"]
      876 LOADN                            R40 144
      877 SETTABLEKS                       R40 R39 K134 ["MaxWidth"]
      879 DUPTABLE                         R40 K148 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      880 GETUPVAL                         R42 3
      881 GETTABLEKS                       R41 R42 K106 ["FONT"]
      883 SETTABLEKS                       R41 R40 K98 ["Font"]
      885 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
      887 GETTABLEKS                       R41 R42 K123 ["text"]
      889 SETTABLEKS                       R41 R40 K99 ["TextColor3"]
      891 GETUPVAL                         R42 3
      892 GETTABLEKS                       R41 R42 K108 ["FONT_SIZE_TITLE"]
      894 SETTABLEKS                       R41 R40 K100 ["TextSize"]
      896 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
      898 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
      900 SETTABLEKS                       R40 R39 K135 ["TextProps"]
      902 LOADN                            R40 5
      903 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      905 CALL                             R37 2 1
      906 JUMP                             ; [+1]
      907 LOADNIL                          R37
      908 SETTABLEKS                       R37 R36 K117 ["CreatorDashboardMsg"]
      910 CALL                             R33 3 1
      911 SETTABLEKS                       R33 R32 K78 ["Rows"]
      913 CALL                             R29 3 1
      914 SETTABLEKS                       R29 R28 K51 ["LoadingResultSuccess"]
      916 MOVE                             R29 R11
      917 JUMPIFNOT                        R29 ; [+383]
      918 GETUPVAL                         R30 9
      919 GETTABLEKS                       R29 R30 K37 ["createElement"]
      921 LOADK                            R30 K38 ["Frame"]
      922 DUPTABLE                         R31 K74 [{"Position", "Size", "BackgroundTransparency"}]
      923 GETIMPORT                        R32 K64 [UDim2.new]
      925 LOADN                            R33 0
      926 LOADN                            R34 0
      927 LOADN                            R35 0
      928 LOADN                            R36 23
      929 CALL                             R32 4 1
      930 SETTABLEKS                       R32 R31 K58 ["Position"]
      932 GETIMPORT                        R32 K64 [UDim2.new]
      934 LOADN                            R33 1
      935 LOADN                            R34 0
      936 LOADN                            R35 1
      937 LOADN                            R36 233
      938 CALL                             R32 4 1
      939 SETTABLEKS                       R32 R31 K43 ["Size"]
      941 LOADN                            R32 1
      942 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      944 DUPTABLE                         R32 K151 [{"Title", "Reason", "ReasonTextFrame"}]
      945 GETUPVAL                         R34 17
      946 CALL                             R34 0 1
      947 JUMPIF                           R34 ; [+66]
      948 GETUPVAL                         R34 9
      949 GETTABLEKS                       R33 R34 K37 ["createElement"]
      951 LOADK                            R34 K96 ["TextLabel"]
      952 DUPTABLE                         R35 K152 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      953 LOADN                            R36 1
      954 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      956 GETUPVAL                         R37 3
      957 GETTABLEKS                       R36 R37 K106 ["FONT"]
      959 SETTABLEKS                       R36 R35 K98 ["Font"]
      961 GETIMPORT                        R36 K64 [UDim2.new]
      963 LOADK                            R37 K65 [0.5]
      964 LOADN                            R38 56
      965 LOADN                            R39 0
      966 LOADN                            R40 0
      967 CALL                             R36 4 1
      968 SETTABLEKS                       R36 R35 K58 ["Position"]
      970 GETIMPORT                        R36 K64 [UDim2.new]
      972 LOADN                            R37 0
      973 LOADN                            R38 144
      974 LOADN                            R39 0
      975 LOADN                            R40 36
      976 CALL                             R36 4 1
      977 SETTABLEKS                       R36 R35 K43 ["Size"]
      979 GETUPVAL                         R37 7
      980 CALL                             R37 0 1
      981 JUMPIFNOT                        R37 ; [+8]
      982 GETTABLEKS                       R36 R1 K28 ["Localization"]
      984 LOADK                            R38 K29 ["AssetUploadResult"]
      985 LOADK                            R39 K32 ["SubmissionFailed"]
      986 NAMECALL                         R36 R36 K31 ["getText"]
      988 CALL                             R36 3 1
      989 JUMP                             ; [+1]
      990 LOADK                            R36 K105 ["Submission failed"]
      991 SETTABLEKS                       R36 R35 K97 ["Text"]
      993 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
      995 GETTABLEKS                       R36 R37 K153 ["redText"]
      997 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
      999 GETUPVAL                         R37 3
     1000 GETTABLEKS                       R36 R37 K108 ["FONT_SIZE_TITLE"]
     1002 SETTABLEKS                       R36 R35 K100 ["TextSize"]
     1004 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
     1006 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
     1008 GETIMPORT                        R36 K110 [Enum.TextYAlignment.Center]
     1010 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
     1012 CALL                             R33 2 1
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R33
     1015 SETTABLEKS                       R33 R32 K76 ["Title"]
     1017 GETUPVAL                         R34 17
     1018 CALL                             R34 0 1
     1019 JUMPIF                           R34 ; [+61]
     1020 GETUPVAL                         R34 9
     1021 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1023 LOADK                            R34 K96 ["TextLabel"]
     1024 DUPTABLE                         R35 K155 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1025 LOADN                            R36 1
     1026 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
     1028 GETUPVAL                         R37 3
     1029 GETTABLEKS                       R36 R37 K106 ["FONT"]
     1031 SETTABLEKS                       R36 R35 K98 ["Font"]
     1033 GETIMPORT                        R36 K64 [UDim2.new]
     1035 LOADK                            R37 K65 [0.5]
     1036 LOADN                            R38 56
     1037 LOADN                            R39 0
     1038 LOADN                            R40 49
     1039 CALL                             R36 4 1
     1040 SETTABLEKS                       R36 R35 K58 ["Position"]
     1042 GETIMPORT                        R36 K64 [UDim2.new]
     1044 LOADN                            R37 0
     1045 LOADN                            R38 144
     1046 LOADN                            R39 0
     1047 LOADN                            R40 72
     1048 CALL                             R36 4 1
     1049 SETTABLEKS                       R36 R35 K43 ["Size"]
     1051 MOVE                             R36 R3
     1052 JUMPIFNOT                        R36 ; [+2]
     1053 GETTABLEKS                       R36 R3 K156 ["responseBody"]
     1055 SETTABLEKS                       R36 R35 K97 ["Text"]
     1057 LOADB                            R36 1
     1058 SETTABLEKS                       R36 R35 K154 ["TextWrapped"]
     1060 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
     1062 GETTABLEKS                       R36 R37 K123 ["text"]
     1064 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
     1066 GETUPVAL                         R37 3
     1067 GETTABLEKS                       R36 R37 K21 ["FONT_SIZE_MEDIUM"]
     1069 SETTABLEKS                       R36 R35 K100 ["TextSize"]
     1071 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
     1073 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
     1075 GETIMPORT                        R36 K157 [Enum.TextYAlignment.Top]
     1077 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
     1079 CALL                             R33 2 1
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R33
     1082 SETTABLEKS                       R33 R32 K149 ["Reason"]
     1084 GETUPVAL                         R34 17
     1085 CALL                             R34 0 1
     1086 JUMPIFNOT                        R34 ; [+210]
     1087 GETUPVAL                         R34 9
     1088 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1090 GETUPVAL                         R34 18
     1091 DUPTABLE                         R35 K160 [{"AutomaticSize", "BackgroundTransparency", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
     1092 GETIMPORT                        R36 K46 [Enum.AutomaticSize.Y]
     1094 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1096 LOADN                            R36 1
     1097 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
     1099 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
     1101 SETTABLEKS                       R36 R35 K158 ["Layout"]
     1103 LOADN                            R36 1
     1104 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1106 LOADN                            R36 8
     1107 SETTABLEKS                       R36 R35 K84 ["Padding"]
     1109 GETIMPORT                        R36 K64 [UDim2.new]
     1111 LOADN                            R37 1
     1112 LOADN                            R38 0
     1113 LOADN                            R39 0
     1114 LOADN                            R40 0
     1115 CALL                             R36 4 1
     1116 SETTABLEKS                       R36 R35 K43 ["Size"]
     1118 LOADN                            R36 12
     1119 SETTABLEKS                       R36 R35 K159 ["Spacing"]
     1121 DUPTABLE                         R36 K162 [{"Title", "ReasonWithDashboardLink"}]
     1122 GETUPVAL                         R38 9
     1123 GETTABLEKS                       R37 R38 K37 ["createElement"]
     1125 LOADK                            R38 K96 ["TextLabel"]
     1126 DUPTABLE                         R39 K163 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1127 LOADN                            R40 1
     1128 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
     1130 GETUPVAL                         R41 3
     1131 GETTABLEKS                       R40 R41 K106 ["FONT"]
     1133 SETTABLEKS                       R40 R39 K98 ["Font"]
     1135 LOADN                            R40 1
     1136 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
     1138 GETIMPORT                        R40 K64 [UDim2.new]
     1140 LOADK                            R41 K65 [0.5]
     1141 LOADN                            R42 56
     1142 LOADN                            R43 0
     1143 LOADN                            R44 0
     1144 CALL                             R40 4 1
     1145 SETTABLEKS                       R40 R39 K58 ["Position"]
     1147 GETIMPORT                        R40 K64 [UDim2.new]
     1149 LOADN                            R41 0
     1150 LOADN                            R42 144
     1151 LOADN                            R43 0
     1152 LOADN                            R44 36
     1153 CALL                             R40 4 1
     1154 SETTABLEKS                       R40 R39 K43 ["Size"]
     1156 GETUPVAL                         R41 7
     1157 CALL                             R41 0 1
     1158 JUMPIFNOT                        R41 ; [+8]
     1159 GETTABLEKS                       R40 R1 K28 ["Localization"]
     1161 LOADK                            R42 K29 ["AssetUploadResult"]
     1162 LOADK                            R43 K32 ["SubmissionFailed"]
     1163 NAMECALL                         R40 R40 K31 ["getText"]
     1165 CALL                             R40 3 1
     1166 JUMP                             ; [+1]
     1167 LOADK                            R40 K105 ["Submission failed"]
     1168 SETTABLEKS                       R40 R39 K97 ["Text"]
     1170 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
     1172 GETTABLEKS                       R40 R41 K153 ["redText"]
     1174 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
     1176 GETUPVAL                         R41 3
     1177 GETTABLEKS                       R40 R41 K108 ["FONT_SIZE_TITLE"]
     1179 SETTABLEKS                       R40 R39 K100 ["TextSize"]
     1181 GETIMPORT                        R40 K109 [Enum.TextXAlignment.Center]
     1183 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
     1185 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
     1187 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
     1189 CALL                             R37 2 1
     1190 SETTABLEKS                       R37 R36 K76 ["Title"]
     1192 GETUPVAL                         R38 9
     1193 GETTABLEKS                       R37 R38 K37 ["createElement"]
     1195 GETUPVAL                         R38 15
     1196 DUPTABLE                         R39 K164 [{"HorizontalAlignment", "LayoutOrder", "LinkPlaceholder", "LinkText", "MaxWidth", "OnLinkClicked", "Text", "TextProps"}]
     1197 GETIMPORT                        R40 K89 [Enum.HorizontalAlignment.Center]
     1199 SETTABLEKS                       R40 R39 K81 ["HorizontalAlignment"]
     1201 LOADN                            R40 3
     1202 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
     1204 GETUPVAL                         R41 3
     1205 GETTABLEKS                       R40 R41 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1207 SETTABLEKS                       R40 R39 K133 ["LinkPlaceholder"]
     1209 GETTABLEKS                       R41 R0 K0 ["props"]
     1211 GETTABLEKS                       R40 R41 K28 ["Localization"]
     1213 LOADK                            R42 K146 ["General"]
     1214 LOADK                            R43 K147 ["CreatorDashboard"]
     1215 NAMECALL                         R40 R40 K31 ["getText"]
     1217 CALL                             R40 3 1
     1218 SETTABLEKS                       R40 R39 K132 ["LinkText"]
     1220 LOADN                            R40 144
     1221 SETTABLEKS                       R40 R39 K134 ["MaxWidth"]
     1223 GETTABLEKS                       R40 R0 K165 ["openCreatorDashboardCreationsPage"]
     1225 SETTABLEKS                       R40 R39 K131 ["OnLinkClicked"]
     1227 MOVE                             R40 R3
     1228 JUMPIFNOT                        R40 ; [+2]
     1229 GETTABLEKS                       R40 R3 K156 ["responseBody"]
     1231 SETTABLEKS                       R40 R39 K97 ["Text"]
     1233 GETUPVAL                         R41 19
     1234 CALL                             R41 0 1
     1235 JUMPIFNOT                        R41 ; [+29]
     1236 DUPTABLE                         R40 K168 [{"Font", "TextColor", "TextSelectable", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1237 GETUPVAL                         R42 3
     1238 GETTABLEKS                       R41 R42 K106 ["FONT"]
     1240 SETTABLEKS                       R41 R40 K98 ["Font"]
     1242 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
     1244 GETTABLEKS                       R41 R42 K123 ["text"]
     1246 SETTABLEKS                       R41 R40 K166 ["TextColor"]
     1248 LOADB                            R41 1
     1249 SETTABLEKS                       R41 R40 K167 ["TextSelectable"]
     1251 GETUPVAL                         R42 3
     1252 GETTABLEKS                       R41 R42 K21 ["FONT_SIZE_MEDIUM"]
     1254 SETTABLEKS                       R41 R40 K100 ["TextSize"]
     1256 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
     1258 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
     1260 GETIMPORT                        R41 K157 [Enum.TextYAlignment.Top]
     1262 SETTABLEKS                       R41 R40 K102 ["TextYAlignment"]
     1264 JUMP                             ; [+25]
     1265 DUPTABLE                         R40 K169 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1266 GETUPVAL                         R42 3
     1267 GETTABLEKS                       R41 R42 K106 ["FONT"]
     1269 SETTABLEKS                       R41 R40 K98 ["Font"]
     1271 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
     1273 GETTABLEKS                       R41 R42 K123 ["text"]
     1275 SETTABLEKS                       R41 R40 K99 ["TextColor3"]
     1277 GETUPVAL                         R42 3
     1278 GETTABLEKS                       R41 R42 K21 ["FONT_SIZE_MEDIUM"]
     1280 SETTABLEKS                       R41 R40 K100 ["TextSize"]
     1282 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
     1284 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
     1286 GETIMPORT                        R41 K157 [Enum.TextYAlignment.Top]
     1288 SETTABLEKS                       R41 R40 K102 ["TextYAlignment"]
     1290 SETTABLEKS                       R40 R39 K135 ["TextProps"]
     1292 CALL                             R37 2 1
     1293 SETTABLEKS                       R37 R36 K161 ["ReasonWithDashboardLink"]
     1295 CALL                             R33 3 1
     1296 JUMP                             ; [+1]
     1297 LOADNIL                          R33
     1298 SETTABLEKS                       R33 R32 K150 ["ReasonTextFrame"]
     1300 CALL                             R29 3 1
     1301 SETTABLEKS                       R29 R28 K52 ["LoadingResultFailure"]
     1303 GETUPVAL                         R30 9
     1304 GETTABLEKS                       R29 R30 K37 ["createElement"]
     1306 LOADK                            R30 K38 ["Frame"]
     1307 DUPTABLE                         R31 K170 [{"AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
     1308 GETIMPORT                        R32 K46 [Enum.AutomaticSize.Y]
     1310 SETTABLEKS                       R32 R31 K39 ["AutomaticSize"]
     1312 LOADN                            R32 1
     1313 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
     1315 GETIMPORT                        R32 K64 [UDim2.new]
     1317 LOADN                            R33 0
     1318 LOADN                            R34 0
     1319 LOADN                            R35 1
     1320 MINUS                            R36 R17
     1321 CALL                             R32 4 1
     1322 SETTABLEKS                       R32 R31 K58 ["Position"]
     1324 GETIMPORT                        R32 K64 [UDim2.new]
     1326 LOADN                            R33 1
     1327 LOADN                            R34 0
     1328 LOADN                            R35 0
     1329 MOVE                             R36 R17
     1330 CALL                             R32 4 1
     1331 SETTABLEKS                       R32 R31 K43 ["Size"]
     1333 DUPTABLE                         R32 K175 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1334 GETUPVAL                         R34 9
     1335 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1337 LOADK                            R34 K75 ["UIListLayout"]
     1338 DUPTABLE                         R35 K176 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1339 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
     1341 SETTABLEKS                       R36 R35 K80 ["FillDirection"]
     1343 GETIMPORT                        R36 K89 [Enum.HorizontalAlignment.Center]
     1345 SETTABLEKS                       R36 R35 K81 ["HorizontalAlignment"]
     1347 GETIMPORT                        R36 K95 [UDim.new]
     1349 LOADN                            R37 0
     1350 LOADN                            R38 10
     1351 CALL                             R36 2 1
     1352 SETTABLEKS                       R36 R35 K84 ["Padding"]
     1354 GETIMPORT                        R36 K93 [Enum.SortOrder.LayoutOrder]
     1356 SETTABLEKS                       R36 R35 K83 ["SortOrder"]
     1358 CALL                             R33 2 1
     1359 SETTABLEKS                       R33 R32 K75 ["UIListLayout"]
     1361 JUMPIFNOT                        R13 ; [+38]
     1362 GETUPVAL                         R34 9
     1363 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1365 GETUPVAL                         R34 20
     1366 DUPTABLE                         R35 K179 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1367 GETIMPORT                        R36 K181 [Enum.AutomaticSize.X]
     1369 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1371 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1373 CALL                             R36 1 1
     1374 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1376 GETTABLEKS                       R36 R0 K183 ["goToNextScreen"]
     1378 SETTABLEKS                       R36 R35 K177 ["onClick"]
     1380 GETIMPORT                        R36 K64 [UDim2.new]
     1382 LOADN                            R37 0
     1383 GETUPVAL                         R38 21
     1384 LOADN                            R39 0
     1385 LOADN                            R40 32
     1386 CALL                             R36 4 1
     1387 SETTABLEKS                       R36 R35 K43 ["Size"]
     1389 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1391 LOADK                            R38 K29 ["AssetUploadResult"]
     1392 LOADK                            R39 K184 ["SubmitAsDevelopmentItem"]
     1393 NAMECALL                         R36 R36 K31 ["getText"]
     1395 CALL                             R36 3 1
     1396 SETTABLEKS                       R36 R35 K178 ["titleText"]
     1398 CALL                             R33 2 1
     1399 JUMP                             ; [+1]
     1400 LOADNIL                          R33
     1401 SETTABLEKS                       R33 R32 K171 ["SubmitButton"]
     1403 JUMPIFNOT                        R16 ; [+38]
     1404 GETUPVAL                         R34 9
     1405 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1407 GETUPVAL                         R34 20
     1408 DUPTABLE                         R35 K179 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1409 GETIMPORT                        R36 K181 [Enum.AutomaticSize.X]
     1411 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1413 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1415 CALL                             R36 1 1
     1416 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1418 GETTABLEKS                       R36 R0 K185 ["onClose"]
     1420 SETTABLEKS                       R36 R35 K177 ["onClick"]
     1422 GETIMPORT                        R36 K64 [UDim2.new]
     1424 LOADN                            R37 0
     1425 LOADN                            R38 200
     1426 LOADN                            R39 0
     1427 LOADN                            R40 32
     1428 CALL                             R36 4 1
     1429 SETTABLEKS                       R36 R35 K43 ["Size"]
     1431 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1433 LOADK                            R38 K29 ["AssetUploadResult"]
     1434 LOADK                            R39 K186 ["NextSubmit"]
     1435 NAMECALL                         R36 R36 K31 ["getText"]
     1437 CALL                             R36 3 1
     1438 SETTABLEKS                       R36 R35 K178 ["titleText"]
     1440 CALL                             R33 2 1
     1441 JUMP                             ; [+1]
     1442 LOADNIL                          R33
     1443 SETTABLEKS                       R33 R32 K172 ["NextButton"]
     1445 JUMPIFNOT                        R13 ; [+25]
     1446 GETUPVAL                         R34 9
     1447 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1449 GETUPVAL                         R34 22
     1450 DUPTABLE                         R35 K188 [{"LayoutOrder", "OnClick", "Text"}]
     1451 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1453 CALL                             R36 1 1
     1454 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1456 GETTABLEKS                       R36 R0 K185 ["onClose"]
     1458 SETTABLEKS                       R36 R35 K187 ["OnClick"]
     1460 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1462 LOADK                            R38 K29 ["AssetUploadResult"]
     1463 LOADK                            R39 K189 ["Close"]
     1464 NAMECALL                         R36 R36 K31 ["getText"]
     1466 CALL                             R36 3 1
     1467 SETTABLEKS                       R36 R35 K97 ["Text"]
     1469 CALL                             R33 2 1
     1470 JUMP                             ; [+1]
     1471 LOADNIL                          R33
     1472 SETTABLEKS                       R33 R32 K173 ["CloseLink"]
     1474 JUMPIFNOT                        R14 ; [+34]
     1475 GETUPVAL                         R34 9
     1476 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1478 GETUPVAL                         R34 20
     1479 DUPTABLE                         R35 K190 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1480 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1482 CALL                             R36 1 1
     1483 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1485 GETTABLEKS                       R36 R0 K185 ["onClose"]
     1487 SETTABLEKS                       R36 R35 K177 ["onClick"]
     1489 GETIMPORT                        R36 K64 [UDim2.new]
     1491 LOADN                            R37 0
     1492 LOADN                            R38 120
     1493 LOADN                            R39 0
     1494 LOADN                            R40 32
     1495 CALL                             R36 4 1
     1496 SETTABLEKS                       R36 R35 K43 ["Size"]
     1498 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1500 LOADK                            R38 K29 ["AssetUploadResult"]
     1501 LOADK                            R39 K189 ["Close"]
     1502 NAMECALL                         R36 R36 K31 ["getText"]
     1504 CALL                             R36 3 1
     1505 SETTABLEKS                       R36 R35 K178 ["titleText"]
     1507 CALL                             R33 2 1
     1508 JUMP                             ; [+1]
     1509 LOADNIL                          R33
     1510 SETTABLEKS                       R33 R32 K174 ["CloseButton"]
     1512 JUMPIFNOT                        R15 ; [+23]
     1513 GETUPVAL                         R34 9
     1514 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1516 GETUPVAL                         R34 22
     1517 DUPTABLE                         R35 K188 [{"LayoutOrder", "OnClick", "Text"}]
     1518 LOADN                            R36 1
     1519 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1521 GETTABLEKS                       R36 R0 K183 ["goToNextScreen"]
     1523 SETTABLEKS                       R36 R35 K187 ["OnClick"]
     1525 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1527 LOADK                            R38 K29 ["AssetUploadResult"]
     1528 LOADK                            R39 K191 ["Back"]
     1529 NAMECALL                         R36 R36 K31 ["getText"]
     1531 CALL                             R36 3 1
     1532 SETTABLEKS                       R36 R35 K97 ["Text"]
     1534 CALL                             R33 2 1
     1535 JUMP                             ; [+1]
     1536 LOADNIL                          R33
     1537 SETTABLEKS                       R33 R32 K132 ["LinkText"]
     1539 CALL                             R29 3 1
     1540 SETTABLEKS                       R29 R28 K53 ["Footer"]
     1542 CALL                             R25 3 -1
     1543 CLOSEUPVALS                      R19
     1544 RETURN                           R25 -1

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
      199 GETTABLEKS                       R38 R9 K48 ["SharedFlags"]
      201 GETTABLEKS                       R37 R38 K50 ["getFFlagEnableUnknownErrorCreatorDashboardMessage"]
      203 CALL                             R36 1 1
      204 GETIMPORT                        R37 K16 [require]
      206 GETTABLEKS                       R40 R5 K19 ["Src"]
      208 GETTABLEKS                       R39 R40 K45 ["Flags"]
      210 GETTABLEKS                       R38 R39 K51 ["getFFlagAllowModelUploadErrorMessageToBeSelectable"]
      212 CALL                             R37 1 1
      213 GETIMPORT                        R38 K16 [require]
      215 GETTABLEKS                       R41 R5 K19 ["Src"]
      217 GETTABLEKS                       R40 R41 K45 ["Flags"]
      219 GETTABLEKS                       R39 R40 K52 ["getFFlagEnableUploadingEmote"]
      221 CALL                             R38 1 1
      222 GETIMPORT                        R39 K16 [require]
      224 GETTABLEKS                       R42 R5 K19 ["Src"]
      226 GETTABLEKS                       R41 R42 K45 ["Flags"]
      228 GETTABLEKS                       R40 R41 K53 ["getFFlagEnableUploadingMakeup"]
      230 CALL                             R39 1 1
      231 GETIMPORT                        R40 K16 [require]
      233 GETTABLEKS                       R43 R5 K19 ["Src"]
      235 GETTABLEKS                       R42 R43 K45 ["Flags"]
      237 GETTABLEKS                       R41 R42 K54 ["getFFlagUpdateAlertIcon"]
      239 CALL                             R40 1 1
      240 GETIMPORT                        R42 K1 [game]
      242 LOADK                            R44 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
      243 NAMECALL                         R42 R42 K7 ["GetFastFlag"]
      245 CALL                             R42 2 1
      246 JUMPIFNOT                        R42 ; [+2]
      247 LOADN                            R41 225
      248 JUMP                             ; [+1]
      249 LOADN                            R41 150
      250 GETTABLEKS                       R42 R7 K55 ["PureComponent"]
      252 LOADK                            R44 K56 ["AssetUploadResult"]
      253 NAMECALL                         R42 R42 K57 ["extend"]
      255 CALL                             R42 2 1
      256 DUPCLOSURE                       R43 K58 [PROTO_6]
      257 CAPTURE                          VAL R11
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R15
      260 CAPTURE                          VAL R1
      261 CAPTURE                          VAL R36
      262 CAPTURE                          VAL R3
      263 SETTABLEKS                       R43 R42 K59 ["init"]
      265 DUPCLOSURE                       R43 K60 [PROTO_7]
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R13
      268 CAPTURE                          VAL R0
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R2
      271 DUPCLOSURE                       R44 K61 [PROTO_8]
      272 DUPCLOSURE                       R45 K62 [PROTO_13]
      273 CAPTURE                          VAL R11
      274 CAPTURE                          VAL R13
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R43
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R28
      280 CAPTURE                          VAL R35
      281 CAPTURE                          VAL R38
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R21
      284 CAPTURE                          VAL R39
      285 CAPTURE                          VAL R40
      286 CAPTURE                          VAL R23
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R27
      289 CAPTURE                          VAL R4
      290 CAPTURE                          VAL R36
      291 CAPTURE                          VAL R26
      292 CAPTURE                          VAL R37
      293 CAPTURE                          VAL R19
      294 CAPTURE                          VAL R41
      295 CAPTURE                          VAL R25
      296 SETTABLEKS                       R45 R42 K63 ["render"]
      298 DUPCLOSURE                       R45 K64 [PROTO_14]
      299 NEWCLOSURE                       R46 P5
      300 CAPTURE                          VAL R31
      301 CAPTURE                          VAL R33
      302 CAPTURE                          VAL R30
      303 CAPTURE                          VAL R11
      304 CAPTURE                          REF R34
      305 MOVE                             R47 R17
      306 DUPTABLE                         R48 K67 [{"Stylizer", "Localization"}]
      307 GETTABLEKS                       R49 R16 K65 ["Stylizer"]
      309 SETTABLEKS                       R49 R48 K65 ["Stylizer"]
      311 GETTABLEKS                       R49 R16 K66 ["Localization"]
      313 SETTABLEKS                       R49 R48 K66 ["Localization"]
      315 CALL                             R47 1 1
      316 MOVE                             R48 R42
      317 CALL                             R47 1 1
      318 MOVE                             R42 R47
      319 GETTABLEKS                       R47 R8 K68 ["connect"]
      321 MOVE                             R48 R45
      322 MOVE                             R49 R46
      323 CALL                             R47 2 1
      324 MOVE                             R48 R42
      325 CALL                             R47 1 -1
      326 CLOSEUPVALS                      R34
      327 RETURN                           R47 -1
