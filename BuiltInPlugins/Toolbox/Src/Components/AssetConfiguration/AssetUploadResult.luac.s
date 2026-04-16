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
      210 JUMPIFNOT                        R29 ; [+51]
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
      257 GETTABLEKS                       R32 R1 K19 ["uploadSucceeded"]
      259 SETTABLEKS                       R32 R31 K59 ["UploadSucceeded"]
      261 CALL                             R29 2 1
      262 SETTABLEKS                       R29 R28 K10 ["ModelPreview"]
      264 MOVE                             R29 R8
      265 JUMPIFNOT                        R29 ; [+40]
      266 GETUPVAL                         R30 9
      267 GETTABLEKS                       R29 R30 K37 ["createElement"]
      269 LOADK                            R30 K66 ["ImageLabel"]
      270 DUPTABLE                         R31 K68 [{"Position", "Size", "Image", "BackgroundTransparency", "BorderSizePixel"}]
      271 GETIMPORT                        R32 K64 [UDim2.new]
      273 LOADK                            R33 K65 [0.5]
      274 LOADN                            R34 181
      275 LOADN                            R35 0
      276 LOADN                            R36 48
      277 CALL                             R32 4 1
      278 SETTABLEKS                       R32 R31 K58 ["Position"]
      280 GETIMPORT                        R32 K64 [UDim2.new]
      282 LOADN                            R33 0
      283 LOADN                            R34 150
      284 LOADN                            R35 0
      285 LOADN                            R36 150
      286 CALL                             R32 4 1
      287 SETTABLEKS                       R32 R31 K43 ["Size"]
      289 GETUPVAL                         R33 1
      290 GETTABLEKS                       R32 R33 K69 ["getResultThumbnail"]
      292 GETTABLEKS                       R33 R1 K24 ["assetId"]
      294 GETTABLEKS                       R34 R1 K70 ["iconFile"]
      296 CALL                             R32 2 1
      297 SETTABLEKS                       R32 R31 K67 ["Image"]
      299 LOADN                            R32 1
      300 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      302 LOADN                            R32 0
      303 SETTABLEKS                       R32 R31 K42 ["BorderSizePixel"]
      305 CALL                             R29 2 1
      306 SETTABLEKS                       R29 R28 K49 ["ThumbnailPreview"]
      308 MOVE                             R29 R10
      309 JUMPIFNOT                        R29 ; [+13]
      310 GETUPVAL                         R30 9
      311 GETTABLEKS                       R29 R30 K37 ["createElement"]
      313 GETUPVAL                         R30 12
      314 DUPTABLE                         R31 K73 [{"YPos", "AssetId"}]
      315 LOADN                            R32 240
      316 SETTABLEKS                       R32 R31 K71 ["YPos"]
      318 GETTABLEKS                       R32 R1 K24 ["assetId"]
      320 SETTABLEKS                       R32 R31 K72 ["AssetId"]
      322 CALL                             R29 2 1
      323 SETTABLEKS                       R29 R28 K50 ["CopyID"]
      325 MOVE                             R29 R10
      326 JUMPIFNOT                        R29 ; [+582]
      327 GETUPVAL                         R30 9
      328 GETTABLEKS                       R29 R30 K37 ["createElement"]
      330 LOADK                            R30 K38 ["Frame"]
      331 DUPTABLE                         R31 K74 [{"Position", "Size", "BackgroundTransparency"}]
      332 GETIMPORT                        R32 K64 [UDim2.new]
      334 LOADN                            R33 0
      335 LOADN                            R34 0
      336 LOADN                            R35 0
      337 LOADN                            R36 23
      338 CALL                             R32 4 1
      339 SETTABLEKS                       R32 R31 K58 ["Position"]
      341 GETIMPORT                        R32 K64 [UDim2.new]
      343 LOADN                            R33 1
      344 LOADN                            R34 0
      345 LOADN                            R35 1
      346 LOADN                            R36 233
      347 CALL                             R32 4 1
      348 SETTABLEKS                       R32 R31 K43 ["Size"]
      350 LOADN                            R32 1
      351 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      353 DUPTABLE                         R32 K79 [{"UIListLayout", "Title", "ReasonFrame", "Rows"}]
      354 GETUPVAL                         R34 9
      355 GETTABLEKS                       R33 R34 K37 ["createElement"]
      357 LOADK                            R34 K75 ["UIListLayout"]
      358 DUPTABLE                         R35 K85 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      359 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
      361 SETTABLEKS                       R36 R35 K80 ["FillDirection"]
      363 GETIMPORT                        R36 K89 [Enum.HorizontalAlignment.Center]
      365 SETTABLEKS                       R36 R35 K81 ["HorizontalAlignment"]
      367 GETIMPORT                        R36 K91 [Enum.VerticalAlignment.Top]
      369 SETTABLEKS                       R36 R35 K82 ["VerticalAlignment"]
      371 GETIMPORT                        R36 K93 [Enum.SortOrder.LayoutOrder]
      373 SETTABLEKS                       R36 R35 K83 ["SortOrder"]
      375 GETIMPORT                        R36 K95 [UDim.new]
      377 LOADN                            R37 0
      378 LOADN                            R38 5
      379 CALL                             R36 2 1
      380 SETTABLEKS                       R36 R35 K84 ["Padding"]
      382 CALL                             R33 2 1
      383 SETTABLEKS                       R33 R32 K75 ["UIListLayout"]
      385 GETUPVAL                         R34 9
      386 GETTABLEKS                       R33 R34 K37 ["createElement"]
      388 LOADK                            R34 K96 ["TextLabel"]
      389 DUPTABLE                         R35 K103 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      390 LOADN                            R36 1
      391 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      393 GETIMPORT                        R36 K64 [UDim2.new]
      395 LOADK                            R37 K65 [0.5]
      396 LOADN                            R38 56
      397 LOADN                            R39 0
      398 LOADN                            R40 0
      399 CALL                             R36 4 1
      400 SETTABLEKS                       R36 R35 K58 ["Position"]
      402 GETIMPORT                        R36 K64 [UDim2.new]
      404 LOADN                            R37 0
      405 LOADN                            R38 144
      406 LOADN                            R39 0
      407 LOADN                            R40 36
      408 CALL                             R36 4 1
      409 SETTABLEKS                       R36 R35 K43 ["Size"]
      411 GETUPVAL                         R37 7
      412 CALL                             R37 0 1
      413 JUMPIFNOT                        R37 ; [+2]
      414 MOVE                             R36 R23
      415 JUMP                             ; [+6]
      416 GETTABLEKS                       R37 R1 K19 ["uploadSucceeded"]
      418 JUMPIFNOT                        R37 ; [+2]
      419 LOADK                            R36 K104 ["Successfully submitted!"]
      420 JUMP                             ; [+1]
      421 LOADK                            R36 K105 ["Submission failed"]
      422 SETTABLEKS                       R36 R35 K97 ["Text"]
      424 GETUPVAL                         R37 3
      425 GETTABLEKS                       R36 R37 K106 ["FONT"]
      427 SETTABLEKS                       R36 R35 K98 ["Font"]
      429 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
      431 GETTABLEKS                       R36 R37 K107 ["greenText"]
      433 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
      435 GETUPVAL                         R37 3
      436 GETTABLEKS                       R36 R37 K108 ["FONT_SIZE_TITLE"]
      438 SETTABLEKS                       R36 R35 K100 ["TextSize"]
      440 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
      442 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
      444 GETIMPORT                        R36 K110 [Enum.TextYAlignment.Center]
      446 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
      448 LOADN                            R36 1
      449 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      451 CALL                             R33 2 1
      452 SETTABLEKS                       R33 R32 K76 ["Title"]
      454 LOADB                            R33 0
      455 SETTABLEKS                       R33 R32 K77 ["ReasonFrame"]
      457 GETUPVAL                         R34 9
      458 GETTABLEKS                       R33 R34 K37 ["createElement"]
      460 LOADK                            R34 K38 ["Frame"]
      461 DUPTABLE                         R35 K111 [{"BackgroundTransparency", "Size", "Position", "LayoutOrder"}]
      462 LOADN                            R36 1
      463 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      465 GETIMPORT                        R36 K64 [UDim2.new]
      467 LOADN                            R37 0
      468 LOADN                            R38 144
      469 LOADN                            R39 0
      470 LOADN                            R40 72
      471 CALL                             R36 4 1
      472 SETTABLEKS                       R36 R35 K43 ["Size"]
      474 GETIMPORT                        R36 K64 [UDim2.new]
      476 LOADK                            R37 K65 [0.5]
      477 LOADN                            R38 56
      478 LOADN                            R39 0
      479 LOADN                            R40 49
      480 CALL                             R36 4 1
      481 SETTABLEKS                       R36 R35 K58 ["Position"]
      483 LOADN                            R36 3
      484 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
      486 DUPTABLE                         R36 K118 [{"UIListLayout", "ModerationMessage", "CreatorStoreConfigurationText", "CreatorStoreConfigurationLink", "ToolboxText", "ToolboxLink", "CreatorDashboardMsg"}]
      487 GETUPVAL                         R38 9
      488 GETTABLEKS                       R37 R38 K37 ["createElement"]
      490 LOADK                            R38 K75 ["UIListLayout"]
      491 DUPTABLE                         R39 K119 [{"Padding", "SortOrder"}]
      492 GETIMPORT                        R40 K95 [UDim.new]
      494 LOADN                            R41 0
      495 LOADN                            R42 12
      496 CALL                             R40 2 1
      497 SETTABLEKS                       R40 R39 K84 ["Padding"]
      499 GETIMPORT                        R40 K93 [Enum.SortOrder.LayoutOrder]
      501 SETTABLEKS                       R40 R39 K83 ["SortOrder"]
      503 CALL                             R37 2 1
      504 SETTABLEKS                       R37 R36 K75 ["UIListLayout"]
      506 MOVE                             R37 R5
      507 JUMPIFNOT                        R37 ; [+55]
      508 GETUPVAL                         R38 9
      509 GETTABLEKS                       R37 R38 K37 ["createElement"]
      511 LOADK                            R38 K96 ["TextLabel"]
      512 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      513 LOADN                            R40 1
      514 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      516 GETUPVAL                         R41 3
      517 GETTABLEKS                       R40 R41 K106 ["FONT"]
      519 SETTABLEKS                       R40 R39 K98 ["Font"]
      521 GETUPVAL                         R41 7
      522 CALL                             R41 0 1
      523 JUMPIFNOT                        R41 ; [+8]
      524 GETTABLEKS                       R40 R1 K28 ["Localization"]
      526 LOADK                            R42 K29 ["AssetUploadResult"]
      527 LOADK                            R43 K121 ["AddedToModerationQueueMessage"]
      528 NAMECALL                         R40 R40 K31 ["getText"]
      530 CALL                             R40 3 1
      531 JUMP                             ; [+1]
      532 LOADK                            R40 K122 ["Asset has been added to moderation queue."]
      533 SETTABLEKS                       R40 R39 K97 ["Text"]
      535 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      537 GETTABLEKS                       R40 R41 K123 ["text"]
      539 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      541 GETUPVAL                         R41 3
      542 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      544 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      546 GETIMPORT                        R40 K64 [UDim2.new]
      548 LOADN                            R41 1
      549 LOADN                            R42 0
      550 LOADN                            R43 0
      551 LOADN                            R44 24
      552 CALL                             R40 4 1
      553 SETTABLEKS                       R40 R39 K43 ["Size"]
      555 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      557 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      559 LOADN                            R40 0
      560 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      562 CALL                             R37 2 1
      563 SETTABLEKS                       R37 R36 K112 ["ModerationMessage"]
      565 JUMPIFNOT                        R21 ; [+51]
      566 GETUPVAL                         R38 9
      567 GETTABLEKS                       R37 R38 K37 ["createElement"]
      569 LOADK                            R38 K96 ["TextLabel"]
      570 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      571 LOADN                            R40 1
      572 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      574 GETUPVAL                         R41 3
      575 GETTABLEKS                       R40 R41 K106 ["FONT"]
      577 SETTABLEKS                       R40 R39 K98 ["Font"]
      579 GETTABLEKS                       R40 R1 K28 ["Localization"]
      581 LOADK                            R42 K29 ["AssetUploadResult"]
      582 LOADK                            R43 K124 ["CreatorStoreConfigurationMessage"]
      583 NAMECALL                         R40 R40 K31 ["getText"]
      585 CALL                             R40 3 1
      586 SETTABLEKS                       R40 R39 K97 ["Text"]
      588 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      590 GETTABLEKS                       R40 R41 K123 ["text"]
      592 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      594 GETUPVAL                         R41 3
      595 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      597 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      599 GETIMPORT                        R40 K64 [UDim2.new]
      601 LOADN                            R41 1
      602 LOADN                            R42 0
      603 LOADN                            R43 0
      604 LOADN                            R44 24
      605 CALL                             R40 4 1
      606 SETTABLEKS                       R40 R39 K43 ["Size"]
      608 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      610 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      612 LOADN                            R40 1
      613 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      615 CALL                             R37 2 1
      616 JUMP                             ; [+1]
      617 LOADNIL                          R37
      618 SETTABLEKS                       R37 R36 K113 ["CreatorStoreConfigurationText"]
      620 JUMPIFNOT                        R21 ; [+54]
      621 GETUPVAL                         R38 9
      622 GETTABLEKS                       R37 R38 K37 ["createElement"]
      624 LOADK                            R38 K125 ["TextButton"]
      625 NEWTABLE                         R39 16 0
      627 LOADN                            R40 1
      628 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      630 GETUPVAL                         R41 3
      631 GETTABLEKS                       R40 R41 K106 ["FONT"]
      633 SETTABLEKS                       R40 R39 K98 ["Font"]
      635 SETTABLEKS                       R20 R39 K97 ["Text"]
      637 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      639 GETTABLEKS                       R40 R41 K126 ["link"]
      641 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      643 GETUPVAL                         R41 3
      644 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      646 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      648 GETIMPORT                        R40 K64 [UDim2.new]
      650 LOADN                            R41 1
      651 LOADN                            R42 0
      652 LOADN                            R43 0
      653 LOADN                            R44 24
      654 CALL                             R40 4 1
      655 SETTABLEKS                       R40 R39 K43 ["Size"]
      657 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      659 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      661 LOADN                            R40 2
      662 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      664 GETUPVAL                         R42 9
      665 GETTABLEKS                       R41 R42 K127 ["Event"]
      667 GETTABLEKS                       R40 R41 K128 ["Activated"]
      669 NEWCLOSURE                       R41 P0
      670 CAPTURE                          UPVAL U13
      671 CAPTURE                          VAL R20
      672 SETTABLE                         R41 R39 R40
      673 CALL                             R37 2 1
      674 JUMP                             ; [+1]
      675 LOADNIL                          R37
      676 SETTABLEKS                       R37 R36 K114 ["CreatorStoreConfigurationLink"]
      678 JUMPIF                           R18 ; [+56]
      679 GETUPVAL                         R38 9
      680 GETTABLEKS                       R37 R38 K37 ["createElement"]
      682 LOADK                            R38 K96 ["TextLabel"]
      683 DUPTABLE                         R39 K120 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      684 LOADN                            R40 1
      685 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      687 GETUPVAL                         R41 3
      688 GETTABLEKS                       R40 R41 K106 ["FONT"]
      690 SETTABLEKS                       R40 R39 K98 ["Font"]
      692 GETUPVAL                         R41 7
      693 CALL                             R41 0 1
      694 JUMPIFNOT                        R41 ; [+8]
      695 GETTABLEKS                       R40 R1 K28 ["Localization"]
      697 LOADK                            R42 K29 ["AssetUploadResult"]
      698 LOADK                            R43 K129 ["WebsiteUrlNoticeMessage"]
      699 NAMECALL                         R40 R40 K31 ["getText"]
      701 CALL                             R40 3 1
      702 JUMP                             ; [+1]
      703 LOADK                            R40 K130 ["You may find your asset in Toolbox or on web:"]
      704 SETTABLEKS                       R40 R39 K97 ["Text"]
      706 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      708 GETTABLEKS                       R40 R41 K123 ["text"]
      710 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      712 GETUPVAL                         R41 3
      713 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      715 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      717 GETIMPORT                        R40 K64 [UDim2.new]
      719 LOADN                            R41 1
      720 LOADN                            R42 0
      721 LOADN                            R43 0
      722 LOADN                            R44 24
      723 CALL                             R40 4 1
      724 SETTABLEKS                       R40 R39 K43 ["Size"]
      726 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      728 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      730 LOADN                            R40 3
      731 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      733 CALL                             R37 2 1
      734 JUMP                             ; [+1]
      735 LOADNIL                          R37
      736 SETTABLEKS                       R37 R36 K115 ["ToolboxText"]
      738 JUMPIF                           R18 ; [+54]
      739 GETUPVAL                         R38 9
      740 GETTABLEKS                       R37 R38 K37 ["createElement"]
      742 LOADK                            R38 K125 ["TextButton"]
      743 NEWTABLE                         R39 16 0
      745 LOADN                            R40 1
      746 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
      748 GETUPVAL                         R41 3
      749 GETTABLEKS                       R40 R41 K106 ["FONT"]
      751 SETTABLEKS                       R40 R39 K98 ["Font"]
      753 SETTABLEKS                       R19 R39 K97 ["Text"]
      755 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
      757 GETTABLEKS                       R40 R41 K126 ["link"]
      759 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
      761 GETUPVAL                         R41 3
      762 GETTABLEKS                       R40 R41 K21 ["FONT_SIZE_MEDIUM"]
      764 SETTABLEKS                       R40 R39 K100 ["TextSize"]
      766 GETIMPORT                        R40 K64 [UDim2.new]
      768 LOADN                            R41 1
      769 LOADN                            R42 0
      770 LOADN                            R43 0
      771 LOADN                            R44 24
      772 CALL                             R40 4 1
      773 SETTABLEKS                       R40 R39 K43 ["Size"]
      775 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
      777 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      779 LOADN                            R40 4
      780 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      782 GETUPVAL                         R42 9
      783 GETTABLEKS                       R41 R42 K127 ["Event"]
      785 GETTABLEKS                       R40 R41 K128 ["Activated"]
      787 NEWCLOSURE                       R41 P1
      788 CAPTURE                          UPVAL U13
      789 CAPTURE                          REF R19
      790 SETTABLE                         R41 R39 R40
      791 CALL                             R37 2 1
      792 JUMP                             ; [+1]
      793 LOADNIL                          R37
      794 SETTABLEKS                       R37 R36 K116 ["ToolboxLink"]
      796 JUMPIFNOT                        R18 ; [+105]
      797 GETUPVAL                         R38 9
      798 GETTABLEKS                       R37 R38 K37 ["createElement"]
      800 GETUPVAL                         R38 14
      801 DUPTABLE                         R39 K136 [{"OnLinkClicked", "Text", "LinkText", "LinkPlaceholder", "AutomaticSize", "TextXAlignment", "HorizontalAlignment", "MaxWidth", "TextProps", "LayoutOrder"}]
      802 GETIMPORT                        R41 K138 [game]
      804 LOADK                            R43 K139 ["UpdateAssetUploadResultBundleConfigureLink2"]
      805 NAMECALL                         R41 R41 K140 ["GetFastFlag"]
      807 CALL                             R41 2 1
      808 JUMPIFNOT                        R41 ; [+11]
      809 GETUPVAL                         R42 1
      810 GETTABLEKS                       R41 R42 K22 ["isUGCBundleType"]
      812 GETTABLEKS                       R42 R1 K7 ["assetTypeEnum"]
      814 CALL                             R41 1 1
      815 JUMPIFNOT                        R41 ; [+4]
      816 NEWCLOSURE                       R40 P2
      817 CAPTURE                          VAL R0
      818 CAPTURE                          VAL R1
      819 JUMP                             ; [+8]
      820 GETUPVAL                         R41 15
      821 JUMPIFNOT                        R41 ; [+4]
      822 NEWCLOSURE                       R40 P3
      823 CAPTURE                          VAL R0
      824 CAPTURE                          VAL R1
      825 JUMP                             ; [+2]
      826 GETTABLEKS                       R40 R0 K141 ["openCreatorDashboard"]
      828 SETTABLEKS                       R40 R39 K131 ["OnLinkClicked"]
      830 GETTABLEKS                       R40 R1 K28 ["Localization"]
      832 LOADK                            R42 K29 ["AssetUploadResult"]
      833 LOADK                            R43 K142 ["CreatorDashboardMessage"]
      834 DUPTABLE                         R44 K144 [{"creatorDashboardLink"}]
      835 GETUPVAL                         R46 3
      836 GETTABLEKS                       R45 R46 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      838 SETTABLEKS                       R45 R44 K143 ["creatorDashboardLink"]
      840 NAMECALL                         R40 R40 K31 ["getText"]
      842 CALL                             R40 4 1
      843 SETTABLEKS                       R40 R39 K97 ["Text"]
      845 GETTABLEKS                       R40 R1 K28 ["Localization"]
      847 LOADK                            R42 K146 ["General"]
      848 LOADK                            R43 K147 ["CreatorDashboard"]
      849 NAMECALL                         R40 R40 K31 ["getText"]
      851 CALL                             R40 3 1
      852 SETTABLEKS                       R40 R39 K132 ["LinkText"]
      854 GETUPVAL                         R41 3
      855 GETTABLEKS                       R40 R41 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
      857 SETTABLEKS                       R40 R39 K133 ["LinkPlaceholder"]
      859 GETIMPORT                        R40 K46 [Enum.AutomaticSize.Y]
      861 SETTABLEKS                       R40 R39 K39 ["AutomaticSize"]
      863 GETIMPORT                        R40 K109 [Enum.TextXAlignment.Center]
      865 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
      867 GETIMPORT                        R40 K89 [Enum.HorizontalAlignment.Center]
      869 SETTABLEKS                       R40 R39 K81 ["HorizontalAlignment"]
      871 LOADN                            R40 144
      872 SETTABLEKS                       R40 R39 K134 ["MaxWidth"]
      874 DUPTABLE                         R40 K148 [{"Font", "TextColor3", "TextSize", "TextXAlignment"}]
      875 GETUPVAL                         R42 3
      876 GETTABLEKS                       R41 R42 K106 ["FONT"]
      878 SETTABLEKS                       R41 R40 K98 ["Font"]
      880 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
      882 GETTABLEKS                       R41 R42 K123 ["text"]
      884 SETTABLEKS                       R41 R40 K99 ["TextColor3"]
      886 GETUPVAL                         R42 3
      887 GETTABLEKS                       R41 R42 K108 ["FONT_SIZE_TITLE"]
      889 SETTABLEKS                       R41 R40 K100 ["TextSize"]
      891 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
      893 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
      895 SETTABLEKS                       R40 R39 K135 ["TextProps"]
      897 LOADN                            R40 5
      898 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
      900 CALL                             R37 2 1
      901 JUMP                             ; [+1]
      902 LOADNIL                          R37
      903 SETTABLEKS                       R37 R36 K117 ["CreatorDashboardMsg"]
      905 CALL                             R33 3 1
      906 SETTABLEKS                       R33 R32 K78 ["Rows"]
      908 CALL                             R29 3 1
      909 SETTABLEKS                       R29 R28 K51 ["LoadingResultSuccess"]
      911 MOVE                             R29 R11
      912 JUMPIFNOT                        R29 ; [+383]
      913 GETUPVAL                         R30 9
      914 GETTABLEKS                       R29 R30 K37 ["createElement"]
      916 LOADK                            R30 K38 ["Frame"]
      917 DUPTABLE                         R31 K74 [{"Position", "Size", "BackgroundTransparency"}]
      918 GETIMPORT                        R32 K64 [UDim2.new]
      920 LOADN                            R33 0
      921 LOADN                            R34 0
      922 LOADN                            R35 0
      923 LOADN                            R36 23
      924 CALL                             R32 4 1
      925 SETTABLEKS                       R32 R31 K58 ["Position"]
      927 GETIMPORT                        R32 K64 [UDim2.new]
      929 LOADN                            R33 1
      930 LOADN                            R34 0
      931 LOADN                            R35 1
      932 LOADN                            R36 233
      933 CALL                             R32 4 1
      934 SETTABLEKS                       R32 R31 K43 ["Size"]
      936 LOADN                            R32 1
      937 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
      939 DUPTABLE                         R32 K151 [{"Title", "Reason", "ReasonTextFrame"}]
      940 GETUPVAL                         R34 16
      941 CALL                             R34 0 1
      942 JUMPIF                           R34 ; [+66]
      943 GETUPVAL                         R34 9
      944 GETTABLEKS                       R33 R34 K37 ["createElement"]
      946 LOADK                            R34 K96 ["TextLabel"]
      947 DUPTABLE                         R35 K152 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      948 LOADN                            R36 1
      949 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
      951 GETUPVAL                         R37 3
      952 GETTABLEKS                       R36 R37 K106 ["FONT"]
      954 SETTABLEKS                       R36 R35 K98 ["Font"]
      956 GETIMPORT                        R36 K64 [UDim2.new]
      958 LOADK                            R37 K65 [0.5]
      959 LOADN                            R38 56
      960 LOADN                            R39 0
      961 LOADN                            R40 0
      962 CALL                             R36 4 1
      963 SETTABLEKS                       R36 R35 K58 ["Position"]
      965 GETIMPORT                        R36 K64 [UDim2.new]
      967 LOADN                            R37 0
      968 LOADN                            R38 144
      969 LOADN                            R39 0
      970 LOADN                            R40 36
      971 CALL                             R36 4 1
      972 SETTABLEKS                       R36 R35 K43 ["Size"]
      974 GETUPVAL                         R37 7
      975 CALL                             R37 0 1
      976 JUMPIFNOT                        R37 ; [+8]
      977 GETTABLEKS                       R36 R1 K28 ["Localization"]
      979 LOADK                            R38 K29 ["AssetUploadResult"]
      980 LOADK                            R39 K32 ["SubmissionFailed"]
      981 NAMECALL                         R36 R36 K31 ["getText"]
      983 CALL                             R36 3 1
      984 JUMP                             ; [+1]
      985 LOADK                            R36 K105 ["Submission failed"]
      986 SETTABLEKS                       R36 R35 K97 ["Text"]
      988 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
      990 GETTABLEKS                       R36 R37 K153 ["redText"]
      992 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
      994 GETUPVAL                         R37 3
      995 GETTABLEKS                       R36 R37 K108 ["FONT_SIZE_TITLE"]
      997 SETTABLEKS                       R36 R35 K100 ["TextSize"]
      999 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
     1001 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
     1003 GETIMPORT                        R36 K110 [Enum.TextYAlignment.Center]
     1005 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
     1007 CALL                             R33 2 1
     1008 JUMP                             ; [+1]
     1009 LOADNIL                          R33
     1010 SETTABLEKS                       R33 R32 K76 ["Title"]
     1012 GETUPVAL                         R34 16
     1013 CALL                             R34 0 1
     1014 JUMPIF                           R34 ; [+61]
     1015 GETUPVAL                         R34 9
     1016 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1018 LOADK                            R34 K96 ["TextLabel"]
     1019 DUPTABLE                         R35 K155 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1020 LOADN                            R36 1
     1021 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
     1023 GETUPVAL                         R37 3
     1024 GETTABLEKS                       R36 R37 K106 ["FONT"]
     1026 SETTABLEKS                       R36 R35 K98 ["Font"]
     1028 GETIMPORT                        R36 K64 [UDim2.new]
     1030 LOADK                            R37 K65 [0.5]
     1031 LOADN                            R38 56
     1032 LOADN                            R39 0
     1033 LOADN                            R40 49
     1034 CALL                             R36 4 1
     1035 SETTABLEKS                       R36 R35 K58 ["Position"]
     1037 GETIMPORT                        R36 K64 [UDim2.new]
     1039 LOADN                            R37 0
     1040 LOADN                            R38 144
     1041 LOADN                            R39 0
     1042 LOADN                            R40 72
     1043 CALL                             R36 4 1
     1044 SETTABLEKS                       R36 R35 K43 ["Size"]
     1046 MOVE                             R36 R3
     1047 JUMPIFNOT                        R36 ; [+2]
     1048 GETTABLEKS                       R36 R3 K156 ["responseBody"]
     1050 SETTABLEKS                       R36 R35 K97 ["Text"]
     1052 LOADB                            R36 1
     1053 SETTABLEKS                       R36 R35 K154 ["TextWrapped"]
     1055 GETTABLEKS                       R37 R2 K47 ["uploadResult"]
     1057 GETTABLEKS                       R36 R37 K123 ["text"]
     1059 SETTABLEKS                       R36 R35 K99 ["TextColor3"]
     1061 GETUPVAL                         R37 3
     1062 GETTABLEKS                       R36 R37 K21 ["FONT_SIZE_MEDIUM"]
     1064 SETTABLEKS                       R36 R35 K100 ["TextSize"]
     1066 GETIMPORT                        R36 K109 [Enum.TextXAlignment.Center]
     1068 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
     1070 GETIMPORT                        R36 K157 [Enum.TextYAlignment.Top]
     1072 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
     1074 CALL                             R33 2 1
     1075 JUMP                             ; [+1]
     1076 LOADNIL                          R33
     1077 SETTABLEKS                       R33 R32 K149 ["Reason"]
     1079 GETUPVAL                         R34 16
     1080 CALL                             R34 0 1
     1081 JUMPIFNOT                        R34 ; [+210]
     1082 GETUPVAL                         R34 9
     1083 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1085 GETUPVAL                         R34 17
     1086 DUPTABLE                         R35 K160 [{"AutomaticSize", "BackgroundTransparency", "Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
     1087 GETIMPORT                        R36 K46 [Enum.AutomaticSize.Y]
     1089 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1091 LOADN                            R36 1
     1092 SETTABLEKS                       R36 R35 K41 ["BackgroundTransparency"]
     1094 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
     1096 SETTABLEKS                       R36 R35 K158 ["Layout"]
     1098 LOADN                            R36 1
     1099 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1101 LOADN                            R36 8
     1102 SETTABLEKS                       R36 R35 K84 ["Padding"]
     1104 GETIMPORT                        R36 K64 [UDim2.new]
     1106 LOADN                            R37 1
     1107 LOADN                            R38 0
     1108 LOADN                            R39 0
     1109 LOADN                            R40 0
     1110 CALL                             R36 4 1
     1111 SETTABLEKS                       R36 R35 K43 ["Size"]
     1113 LOADN                            R36 12
     1114 SETTABLEKS                       R36 R35 K159 ["Spacing"]
     1116 DUPTABLE                         R36 K162 [{"Title", "ReasonWithDashboardLink"}]
     1117 GETUPVAL                         R38 9
     1118 GETTABLEKS                       R37 R38 K37 ["createElement"]
     1120 LOADK                            R38 K96 ["TextLabel"]
     1121 DUPTABLE                         R39 K163 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1122 LOADN                            R40 1
     1123 SETTABLEKS                       R40 R39 K41 ["BackgroundTransparency"]
     1125 GETUPVAL                         R41 3
     1126 GETTABLEKS                       R40 R41 K106 ["FONT"]
     1128 SETTABLEKS                       R40 R39 K98 ["Font"]
     1130 LOADN                            R40 1
     1131 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
     1133 GETIMPORT                        R40 K64 [UDim2.new]
     1135 LOADK                            R41 K65 [0.5]
     1136 LOADN                            R42 56
     1137 LOADN                            R43 0
     1138 LOADN                            R44 0
     1139 CALL                             R40 4 1
     1140 SETTABLEKS                       R40 R39 K58 ["Position"]
     1142 GETIMPORT                        R40 K64 [UDim2.new]
     1144 LOADN                            R41 0
     1145 LOADN                            R42 144
     1146 LOADN                            R43 0
     1147 LOADN                            R44 36
     1148 CALL                             R40 4 1
     1149 SETTABLEKS                       R40 R39 K43 ["Size"]
     1151 GETUPVAL                         R41 7
     1152 CALL                             R41 0 1
     1153 JUMPIFNOT                        R41 ; [+8]
     1154 GETTABLEKS                       R40 R1 K28 ["Localization"]
     1156 LOADK                            R42 K29 ["AssetUploadResult"]
     1157 LOADK                            R43 K32 ["SubmissionFailed"]
     1158 NAMECALL                         R40 R40 K31 ["getText"]
     1160 CALL                             R40 3 1
     1161 JUMP                             ; [+1]
     1162 LOADK                            R40 K105 ["Submission failed"]
     1163 SETTABLEKS                       R40 R39 K97 ["Text"]
     1165 GETTABLEKS                       R41 R2 K47 ["uploadResult"]
     1167 GETTABLEKS                       R40 R41 K153 ["redText"]
     1169 SETTABLEKS                       R40 R39 K99 ["TextColor3"]
     1171 GETUPVAL                         R41 3
     1172 GETTABLEKS                       R40 R41 K108 ["FONT_SIZE_TITLE"]
     1174 SETTABLEKS                       R40 R39 K100 ["TextSize"]
     1176 GETIMPORT                        R40 K109 [Enum.TextXAlignment.Center]
     1178 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
     1180 GETIMPORT                        R40 K110 [Enum.TextYAlignment.Center]
     1182 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
     1184 CALL                             R37 2 1
     1185 SETTABLEKS                       R37 R36 K76 ["Title"]
     1187 GETUPVAL                         R38 9
     1188 GETTABLEKS                       R37 R38 K37 ["createElement"]
     1190 GETUPVAL                         R38 14
     1191 DUPTABLE                         R39 K164 [{"HorizontalAlignment", "LayoutOrder", "LinkPlaceholder", "LinkText", "MaxWidth", "OnLinkClicked", "Text", "TextProps"}]
     1192 GETIMPORT                        R40 K89 [Enum.HorizontalAlignment.Center]
     1194 SETTABLEKS                       R40 R39 K81 ["HorizontalAlignment"]
     1196 LOADN                            R40 3
     1197 SETTABLEKS                       R40 R39 K92 ["LayoutOrder"]
     1199 GETUPVAL                         R41 3
     1200 GETTABLEKS                       R40 R41 K145 ["CREATOR_DASHBOARD_LINK_PLACEHOLDER"]
     1202 SETTABLEKS                       R40 R39 K133 ["LinkPlaceholder"]
     1204 GETTABLEKS                       R41 R0 K0 ["props"]
     1206 GETTABLEKS                       R40 R41 K28 ["Localization"]
     1208 LOADK                            R42 K146 ["General"]
     1209 LOADK                            R43 K147 ["CreatorDashboard"]
     1210 NAMECALL                         R40 R40 K31 ["getText"]
     1212 CALL                             R40 3 1
     1213 SETTABLEKS                       R40 R39 K132 ["LinkText"]
     1215 LOADN                            R40 144
     1216 SETTABLEKS                       R40 R39 K134 ["MaxWidth"]
     1218 GETTABLEKS                       R40 R0 K165 ["openCreatorDashboardCreationsPage"]
     1220 SETTABLEKS                       R40 R39 K131 ["OnLinkClicked"]
     1222 MOVE                             R40 R3
     1223 JUMPIFNOT                        R40 ; [+2]
     1224 GETTABLEKS                       R40 R3 K156 ["responseBody"]
     1226 SETTABLEKS                       R40 R39 K97 ["Text"]
     1228 GETUPVAL                         R41 18
     1229 CALL                             R41 0 1
     1230 JUMPIFNOT                        R41 ; [+29]
     1231 DUPTABLE                         R40 K168 [{"Font", "TextColor", "TextSelectable", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1232 GETUPVAL                         R42 3
     1233 GETTABLEKS                       R41 R42 K106 ["FONT"]
     1235 SETTABLEKS                       R41 R40 K98 ["Font"]
     1237 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
     1239 GETTABLEKS                       R41 R42 K123 ["text"]
     1241 SETTABLEKS                       R41 R40 K166 ["TextColor"]
     1243 LOADB                            R41 1
     1244 SETTABLEKS                       R41 R40 K167 ["TextSelectable"]
     1246 GETUPVAL                         R42 3
     1247 GETTABLEKS                       R41 R42 K21 ["FONT_SIZE_MEDIUM"]
     1249 SETTABLEKS                       R41 R40 K100 ["TextSize"]
     1251 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
     1253 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
     1255 GETIMPORT                        R41 K157 [Enum.TextYAlignment.Top]
     1257 SETTABLEKS                       R41 R40 K102 ["TextYAlignment"]
     1259 JUMP                             ; [+25]
     1260 DUPTABLE                         R40 K169 [{"Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
     1261 GETUPVAL                         R42 3
     1262 GETTABLEKS                       R41 R42 K106 ["FONT"]
     1264 SETTABLEKS                       R41 R40 K98 ["Font"]
     1266 GETTABLEKS                       R42 R2 K47 ["uploadResult"]
     1268 GETTABLEKS                       R41 R42 K123 ["text"]
     1270 SETTABLEKS                       R41 R40 K99 ["TextColor3"]
     1272 GETUPVAL                         R42 3
     1273 GETTABLEKS                       R41 R42 K21 ["FONT_SIZE_MEDIUM"]
     1275 SETTABLEKS                       R41 R40 K100 ["TextSize"]
     1277 GETIMPORT                        R41 K109 [Enum.TextXAlignment.Center]
     1279 SETTABLEKS                       R41 R40 K101 ["TextXAlignment"]
     1281 GETIMPORT                        R41 K157 [Enum.TextYAlignment.Top]
     1283 SETTABLEKS                       R41 R40 K102 ["TextYAlignment"]
     1285 SETTABLEKS                       R40 R39 K135 ["TextProps"]
     1287 CALL                             R37 2 1
     1288 SETTABLEKS                       R37 R36 K161 ["ReasonWithDashboardLink"]
     1290 CALL                             R33 3 1
     1291 JUMP                             ; [+1]
     1292 LOADNIL                          R33
     1293 SETTABLEKS                       R33 R32 K150 ["ReasonTextFrame"]
     1295 CALL                             R29 3 1
     1296 SETTABLEKS                       R29 R28 K52 ["LoadingResultFailure"]
     1298 GETUPVAL                         R30 9
     1299 GETTABLEKS                       R29 R30 K37 ["createElement"]
     1301 LOADK                            R30 K38 ["Frame"]
     1302 DUPTABLE                         R31 K170 [{"AutomaticSize", "BackgroundTransparency", "Position", "Size"}]
     1303 GETIMPORT                        R32 K46 [Enum.AutomaticSize.Y]
     1305 SETTABLEKS                       R32 R31 K39 ["AutomaticSize"]
     1307 LOADN                            R32 1
     1308 SETTABLEKS                       R32 R31 K41 ["BackgroundTransparency"]
     1310 GETIMPORT                        R32 K64 [UDim2.new]
     1312 LOADN                            R33 0
     1313 LOADN                            R34 0
     1314 LOADN                            R35 1
     1315 MINUS                            R36 R17
     1316 CALL                             R32 4 1
     1317 SETTABLEKS                       R32 R31 K58 ["Position"]
     1319 GETIMPORT                        R32 K64 [UDim2.new]
     1321 LOADN                            R33 1
     1322 LOADN                            R34 0
     1323 LOADN                            R35 0
     1324 MOVE                             R36 R17
     1325 CALL                             R32 4 1
     1326 SETTABLEKS                       R32 R31 K43 ["Size"]
     1328 DUPTABLE                         R32 K175 [{"UIListLayout", "SubmitButton", "NextButton", "CloseLink", "CloseButton", "LinkText"}]
     1329 GETUPVAL                         R34 9
     1330 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1332 LOADK                            R34 K75 ["UIListLayout"]
     1333 DUPTABLE                         R35 K176 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder"}]
     1334 GETIMPORT                        R36 K87 [Enum.FillDirection.Vertical]
     1336 SETTABLEKS                       R36 R35 K80 ["FillDirection"]
     1338 GETIMPORT                        R36 K89 [Enum.HorizontalAlignment.Center]
     1340 SETTABLEKS                       R36 R35 K81 ["HorizontalAlignment"]
     1342 GETIMPORT                        R36 K95 [UDim.new]
     1344 LOADN                            R37 0
     1345 LOADN                            R38 10
     1346 CALL                             R36 2 1
     1347 SETTABLEKS                       R36 R35 K84 ["Padding"]
     1349 GETIMPORT                        R36 K93 [Enum.SortOrder.LayoutOrder]
     1351 SETTABLEKS                       R36 R35 K83 ["SortOrder"]
     1353 CALL                             R33 2 1
     1354 SETTABLEKS                       R33 R32 K75 ["UIListLayout"]
     1356 JUMPIFNOT                        R13 ; [+38]
     1357 GETUPVAL                         R34 9
     1358 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1360 GETUPVAL                         R34 19
     1361 DUPTABLE                         R35 K179 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1362 GETIMPORT                        R36 K181 [Enum.AutomaticSize.X]
     1364 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1366 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1368 CALL                             R36 1 1
     1369 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1371 GETTABLEKS                       R36 R0 K183 ["goToNextScreen"]
     1373 SETTABLEKS                       R36 R35 K177 ["onClick"]
     1375 GETIMPORT                        R36 K64 [UDim2.new]
     1377 LOADN                            R37 0
     1378 GETUPVAL                         R38 20
     1379 LOADN                            R39 0
     1380 LOADN                            R40 32
     1381 CALL                             R36 4 1
     1382 SETTABLEKS                       R36 R35 K43 ["Size"]
     1384 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1386 LOADK                            R38 K29 ["AssetUploadResult"]
     1387 LOADK                            R39 K184 ["SubmitAsDevelopmentItem"]
     1388 NAMECALL                         R36 R36 K31 ["getText"]
     1390 CALL                             R36 3 1
     1391 SETTABLEKS                       R36 R35 K178 ["titleText"]
     1393 CALL                             R33 2 1
     1394 JUMP                             ; [+1]
     1395 LOADNIL                          R33
     1396 SETTABLEKS                       R33 R32 K171 ["SubmitButton"]
     1398 JUMPIFNOT                        R16 ; [+38]
     1399 GETUPVAL                         R34 9
     1400 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1402 GETUPVAL                         R34 19
     1403 DUPTABLE                         R35 K179 [{"AutomaticSize", "LayoutOrder", "onClick", "Size", "titleText"}]
     1404 GETIMPORT                        R36 K181 [Enum.AutomaticSize.X]
     1406 SETTABLEKS                       R36 R35 K39 ["AutomaticSize"]
     1408 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1410 CALL                             R36 1 1
     1411 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1413 GETTABLEKS                       R36 R0 K185 ["onClose"]
     1415 SETTABLEKS                       R36 R35 K177 ["onClick"]
     1417 GETIMPORT                        R36 K64 [UDim2.new]
     1419 LOADN                            R37 0
     1420 LOADN                            R38 200
     1421 LOADN                            R39 0
     1422 LOADN                            R40 32
     1423 CALL                             R36 4 1
     1424 SETTABLEKS                       R36 R35 K43 ["Size"]
     1426 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1428 LOADK                            R38 K29 ["AssetUploadResult"]
     1429 LOADK                            R39 K186 ["NextSubmit"]
     1430 NAMECALL                         R36 R36 K31 ["getText"]
     1432 CALL                             R36 3 1
     1433 SETTABLEKS                       R36 R35 K178 ["titleText"]
     1435 CALL                             R33 2 1
     1436 JUMP                             ; [+1]
     1437 LOADNIL                          R33
     1438 SETTABLEKS                       R33 R32 K172 ["NextButton"]
     1440 JUMPIFNOT                        R13 ; [+25]
     1441 GETUPVAL                         R34 9
     1442 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1444 GETUPVAL                         R34 21
     1445 DUPTABLE                         R35 K188 [{"LayoutOrder", "OnClick", "Text"}]
     1446 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1448 CALL                             R36 1 1
     1449 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1451 GETTABLEKS                       R36 R0 K185 ["onClose"]
     1453 SETTABLEKS                       R36 R35 K187 ["OnClick"]
     1455 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1457 LOADK                            R38 K29 ["AssetUploadResult"]
     1458 LOADK                            R39 K189 ["Close"]
     1459 NAMECALL                         R36 R36 K31 ["getText"]
     1461 CALL                             R36 3 1
     1462 SETTABLEKS                       R36 R35 K97 ["Text"]
     1464 CALL                             R33 2 1
     1465 JUMP                             ; [+1]
     1466 LOADNIL                          R33
     1467 SETTABLEKS                       R33 R32 K173 ["CloseLink"]
     1469 JUMPIFNOT                        R14 ; [+34]
     1470 GETUPVAL                         R34 9
     1471 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1473 GETUPVAL                         R34 19
     1474 DUPTABLE                         R35 K190 [{"LayoutOrder", "onClick", "Size", "titleText"}]
     1475 NAMECALL                         R36 R22 K182 ["getNextOrder"]
     1477 CALL                             R36 1 1
     1478 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1480 GETTABLEKS                       R36 R0 K185 ["onClose"]
     1482 SETTABLEKS                       R36 R35 K177 ["onClick"]
     1484 GETIMPORT                        R36 K64 [UDim2.new]
     1486 LOADN                            R37 0
     1487 LOADN                            R38 120
     1488 LOADN                            R39 0
     1489 LOADN                            R40 32
     1490 CALL                             R36 4 1
     1491 SETTABLEKS                       R36 R35 K43 ["Size"]
     1493 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1495 LOADK                            R38 K29 ["AssetUploadResult"]
     1496 LOADK                            R39 K189 ["Close"]
     1497 NAMECALL                         R36 R36 K31 ["getText"]
     1499 CALL                             R36 3 1
     1500 SETTABLEKS                       R36 R35 K178 ["titleText"]
     1502 CALL                             R33 2 1
     1503 JUMP                             ; [+1]
     1504 LOADNIL                          R33
     1505 SETTABLEKS                       R33 R32 K174 ["CloseButton"]
     1507 JUMPIFNOT                        R15 ; [+23]
     1508 GETUPVAL                         R34 9
     1509 GETTABLEKS                       R33 R34 K37 ["createElement"]
     1511 GETUPVAL                         R34 21
     1512 DUPTABLE                         R35 K188 [{"LayoutOrder", "OnClick", "Text"}]
     1513 LOADN                            R36 1
     1514 SETTABLEKS                       R36 R35 K92 ["LayoutOrder"]
     1516 GETTABLEKS                       R36 R0 K183 ["goToNextScreen"]
     1518 SETTABLEKS                       R36 R35 K187 ["OnClick"]
     1520 GETTABLEKS                       R36 R1 K28 ["Localization"]
     1522 LOADK                            R38 K29 ["AssetUploadResult"]
     1523 LOADK                            R39 K191 ["Back"]
     1524 NAMECALL                         R36 R36 K31 ["getText"]
     1526 CALL                             R36 3 1
     1527 SETTABLEKS                       R36 R35 K97 ["Text"]
     1529 CALL                             R33 2 1
     1530 JUMP                             ; [+1]
     1531 LOADNIL                          R33
     1532 SETTABLEKS                       R33 R32 K132 ["LinkText"]
     1534 CALL                             R29 3 1
     1535 SETTABLEKS                       R29 R28 K53 ["Footer"]
     1537 CALL                             R25 3 -1
     1538 CLOSEUPVALS                      R19
     1539 RETURN                           R25 -1

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
      231 GETIMPORT                        R41 K1 [game]
      233 LOADK                            R43 K9 ["ToolboxFixSubmitDevelopmentItemWidth"]
      234 NAMECALL                         R41 R41 K7 ["GetFastFlag"]
      236 CALL                             R41 2 1
      237 JUMPIFNOT                        R41 ; [+2]
      238 LOADN                            R40 225
      239 JUMP                             ; [+1]
      240 LOADN                            R40 150
      241 GETTABLEKS                       R41 R7 K54 ["PureComponent"]
      243 LOADK                            R43 K55 ["AssetUploadResult"]
      244 NAMECALL                         R41 R41 K56 ["extend"]
      246 CALL                             R41 2 1
      247 DUPCLOSURE                       R42 K57 [PROTO_6]
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R4
      250 CAPTURE                          VAL R15
      251 CAPTURE                          VAL R1
      252 CAPTURE                          VAL R36
      253 CAPTURE                          VAL R3
      254 SETTABLEKS                       R42 R41 K58 ["init"]
      256 DUPCLOSURE                       R42 K59 [PROTO_7]
      257 CAPTURE                          VAL R11
      258 CAPTURE                          VAL R13
      259 CAPTURE                          VAL R0
      260 CAPTURE                          VAL R15
      261 CAPTURE                          VAL R2
      262 DUPCLOSURE                       R43 K60 [PROTO_8]
      263 DUPCLOSURE                       R44 K61 [PROTO_13]
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R13
      266 CAPTURE                          VAL R12
      267 CAPTURE                          VAL R10
      268 CAPTURE                          VAL R42
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R28
      271 CAPTURE                          VAL R35
      272 CAPTURE                          VAL R38
      273 CAPTURE                          VAL R7
      274 CAPTURE                          VAL R21
      275 CAPTURE                          VAL R39
      276 CAPTURE                          VAL R23
      277 CAPTURE                          VAL R1
      278 CAPTURE                          VAL R27
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R36
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R37
      283 CAPTURE                          VAL R19
      284 CAPTURE                          VAL R40
      285 CAPTURE                          VAL R25
      286 SETTABLEKS                       R44 R41 K62 ["render"]
      288 DUPCLOSURE                       R44 K63 [PROTO_14]
      289 NEWCLOSURE                       R45 P5
      290 CAPTURE                          VAL R31
      291 CAPTURE                          VAL R33
      292 CAPTURE                          VAL R30
      293 CAPTURE                          VAL R11
      294 CAPTURE                          REF R34
      295 MOVE                             R46 R17
      296 DUPTABLE                         R47 K66 [{"Stylizer", "Localization"}]
      297 GETTABLEKS                       R48 R16 K64 ["Stylizer"]
      299 SETTABLEKS                       R48 R47 K64 ["Stylizer"]
      301 GETTABLEKS                       R48 R16 K65 ["Localization"]
      303 SETTABLEKS                       R48 R47 K65 ["Localization"]
      305 CALL                             R46 1 1
      306 MOVE                             R47 R41
      307 CALL                             R46 1 1
      308 MOVE                             R41 R46
      309 GETTABLEKS                       R46 R8 K67 ["connect"]
      311 MOVE                             R47 R44
      312 MOVE                             R48 R45
      313 CALL                             R46 2 1
      314 MOVE                             R47 R41
      315 CALL                             R46 1 -1
      316 CLOSEUPVALS                      R34
      317 RETURN                           R46 -1
