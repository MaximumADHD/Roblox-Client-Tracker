PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+5]
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R3 R1 K0 ["Name"]
        6 GETTABLE                         R2 R0 R3
        7 MOVE                             R3 R2
        8 JUMPIFNOT                        R3 ; [+2]
        9 GETTABLEKS                       R3 R2 K1 ["allowedFileExtensions"]
       11 MOVE                             R4 R3
       12 JUMPIFNOT                        R4 ; [+6]
       13 LOADB                            R4 0
       14 LENGTH                           R5 R3
       15 LOADN                            R6 0
       16 JUMPIFNOTLT                      R6 R5 ; [+2]
       18 GETTABLEN                        R4 R3 1
       19 JUMPIFNOT                        R4 ; [+7]
       20 GETIMPORT                        R5 K4 [string.gsub]
       22 MOVE                             R6 R4
       23 LOADK                            R7 K5 ["^%."]
       24 LOADK                            R8 K6 [""]
       25 CALL                             R5 3 1
       26 JUMPIF                           R5 ; [+1]
       27 LOADK                            R5 K7 ["rbxm"]
       28 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R1 R0 K0 ["getState"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETTABLEKS                       R2 R1 K1 ["assetTypeEnum"]
       12 GETTABLEKS                       R3 R1 K2 ["currentTab"]
       14 GETTABLEKS                       R4 R1 K3 ["instances"]
       16 GETTABLEKS                       R5 R1 K4 ["isUploadFeeEnabled"]
       18 GETTABLEKS                       R6 R1 K5 ["uploadFee"]
       20 GETTABLEKS                       R7 R1 K6 ["allowedAssetTypesForUpload"]
       22 GETTABLEKS                       R8 R1 K7 ["allowedBundleTypeSettings"]
       24 GETTABLEKS                       R9 R1 K8 ["groupBundlesUploadEnabledForUser"]
       26 GETTABLEKS                       R10 R1 K9 ["idToFiatProductMap"]
       28 JUMPIF                           R10 ; [+2]
       29 NEWTABLE                         R10 0 0
       31 GETUPVAL                         R13 1
       32 GETTABLEKS                       R13 R13 K10 ["assetId"]
       34 GETTABLE                         R12 R10 R13
       35 JUMPIFNOT                        R12 ; [+5]
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K10 ["assetId"]
       39 GETTABLE                         R11 R10 R12
       40 JUMP                             ; [+4]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K11 ["getDefaultFiatProduct"]
       44 CALL                             R11 0 1
       45 GETUPVAL                         R12 3
       46 JUMPIF                           R12 ; [+9]
       47 GETUPVAL                         R12 4
       48 JUMPIFNOT                        R12 ; [+7]
       49 GETUPVAL                         R12 5
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K12 ["ixp"]
       53 LOADK                            R14 K13 ["MarketplaceModelsAsPackages"]
       54 LOADK                            R15 K14 ["MarketplaceModelsAsPackagesEnabled"]
       55 CALL                             R12 3 1
       56 GETUPVAL                         R13 6
       57 CALL                             R13 0 1
       58 JUMPIFNOT                        R13 ; [+21]
       59 GETUPVAL                         R13 7
       60 GETTABLEKS                       R13 R13 K15 ["isMakeupAsset"]
       62 MOVE                             R14 R2
       63 CALL                             R13 1 1
       64 JUMPIFNOT                        R13 ; [+15]
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K16 ["selectedColor"]
       68 JUMPIFNOT                        R13 ; [+11]
       69 JUMPIFNOT                        R4 ; [+10]
       70 GETTABLEN                        R13 R4 1
       71 JUMPIFNOT                        R13 ; [+8]
       72 GETUPVAL                         R13 7
       73 GETTABLEKS                       R13 R13 K17 ["addMakeupThumbnailConfiguration"]
       75 GETTABLEN                        R14 R4 1
       76 GETUPVAL                         R15 1
       77 GETTABLEKS                       R15 R15 K16 ["selectedColor"]
       79 CALL                             R13 2 0
       80 GETIMPORT                        R13 K21 [Enum.AssetType.Animation]
       82 JUMPIFEQ                         R2 R13 ; [+5]
       84 GETIMPORT                        R13 K23 [Enum.AssetType.EmoteAnimation]
       86 JUMPIFNOTEQ                      R2 R13 ; [+58]
       88 GETUPVAL                         R13 8
       89 MOVE                             R15 R3
       90 NAMECALL                         R13 R13 K24 ["isOverride"]
       92 CALL                             R13 2 1
       93 JUMPIFNOT                        R13 ; [+13]
       94 GETUPVAL                         R15 9
       95 GETUPVAL                         R16 1
       96 GETTABLEKS                       R16 R16 K25 ["networkInterface"]
       98 GETUPVAL                         R17 1
       99 GETTABLEKS                       R17 R17 K26 ["overrideAssetId"]
      101 MOVE                             R18 R4
      102 CALL                             R15 3 -1
      103 NAMECALL                         R13 R0 K27 ["dispatch"]
      105 CALL                             R13 -1 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R15 10
      108 DUPTABLE                         R16 K35 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"]}]
      109 GETUPVAL                         R17 1
      110 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      112 SETTABLEKS                       R17 R16 K25 ["networkInterface"]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R17 R17 K29 ["name"]
      117 SETTABLEKS                       R17 R16 K29 ["name"]
      119 GETUPVAL                         R18 1
      120 GETTABLEKS                       R18 R18 K30 ["description"]
      122 ORK                              R17 R18 K36 [""]
      123 SETTABLEKS                       R17 R16 K30 ["description"]
      125 GETUPVAL                         R17 11
      126 CALL                             R17 0 1
      127 SETTABLEKS                       R17 R16 K31 ["userId"]
      129 GETUPVAL                         R17 1
      130 GETTABLEKS                       R17 R17 K32 ["groupId"]
      132 SETTABLEKS                       R17 R16 K32 ["groupId"]
      134 SETTABLEKS                       R2 R16 K1 ["assetTypeEnum"]
      136 SETTABLEKS                       R6 R16 K33 ["expectedPrice"]
      138 SETTABLEKS                       R4 R16 K34 ["instance"]
      140 CALL                             R15 1 -1
      141 NAMECALL                         R13 R0 K27 ["dispatch"]
      143 CALL                             R13 -1 0
      144 RETURN                           R0 0
      145 GETUPVAL                         R13 7
      146 GETTABLEKS                       R13 R13 K37 ["isCatalogAsset"]
      148 MOVE                             R14 R2
      149 CALL                             R13 1 1
      150 JUMPIFNOT                        R13 ; [+101]
      151 MOVE                             R14 R7
      152 JUMPIFNOT                        R14 ; [+5]
      153 MOVE                             R14 R2
      154 JUMPIFNOT                        R14 ; [+3]
      155 GETTABLEKS                       R15 R2 K38 ["Name"]
      157 GETTABLE                         R14 R7 R15
      158 MOVE                             R15 R14
      159 JUMPIFNOT                        R15 ; [+2]
      160 GETTABLEKS                       R15 R14 K39 ["allowedFileExtensions"]
      162 MOVE                             R16 R15
      163 JUMPIFNOT                        R16 ; [+6]
      164 LOADB                            R16 0
      165 LENGTH                           R17 R15
      166 LOADN                            R18 0
      167 JUMPIFNOTLT                      R18 R17 ; [+2]
      169 GETTABLEN                        R16 R15 1
      170 JUMPIFNOT                        R16 ; [+8]
      171 GETIMPORT                        R17 K42 [string.gsub]
      173 MOVE                             R18 R16
      174 LOADK                            R19 K43 ["^%."]
      175 LOADK                            R20 K36 [""]
      176 CALL                             R17 3 1
      177 MOVE                             R13 R17
      178 JUMPIF                           R13 ; [+1]
      179 LOADK                            R13 K44 ["rbxm"]
      180 JUMPIFNOT                        R5 ; [+46]
      181 NEWTABLE                         R14 0 0
      183 MOVE                             R15 R4
      184 JUMPIF                           R15 ; [+2]
      185 NEWTABLE                         R15 0 0
      187 LOADNIL                          R16
      188 LOADNIL                          R17
      189 FORGPREP                         R15
      190 NAMECALL                         R20 R19 K45 ["Clone"]
      192 CALL                             R20 1 1
      193 GETUPVAL                         R21 12
      194 MOVE                             R22 R20
      195 CALL                             R21 1 0
      196 SETTABLE                         R20 R14 R18
      197 FORGLOOP                         R15 2 ; [-8]
      199 GETUPVAL                         R17 13
      200 GETUPVAL                         R18 1
      201 GETTABLEKS                       R18 R18 K25 ["networkInterface"]
      203 GETUPVAL                         R19 1
      204 GETTABLEKS                       R19 R19 K29 ["name"]
      206 GETUPVAL                         R21 1
      207 GETTABLEKS                       R21 R21 K30 ["description"]
      209 ORK                              R20 R21 K36 [""]
      210 MOVE                             R21 R2
      211 MOVE                             R22 R14
      212 GETUPVAL                         R23 1
      213 GETTABLEKS                       R23 R23 K32 ["groupId"]
      215 GETUPVAL                         R24 1
      216 GETTABLEKS                       R24 R24 K46 ["dataSharingLicenseTypes"]
      218 GETUPVAL                         R25 1
      219 GETTABLEKS                       R25 R25 K47 ["localization"]
      221 MOVE                             R26 R6
      222 CALL                             R17 9 -1
      223 NAMECALL                         R15 R0 K27 ["dispatch"]
      225 CALL                             R15 -1 0
      226 RETURN                           R0 0
      227 GETUPVAL                         R16 14
      228 GETUPVAL                         R17 1
      229 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      231 GETUPVAL                         R18 1
      232 GETTABLEKS                       R18 R18 K29 ["name"]
      234 MOVE                             R19 R13
      235 GETUPVAL                         R21 1
      236 GETTABLEKS                       R21 R21 K30 ["description"]
      238 ORK                              R20 R21 K36 [""]
      239 MOVE                             R21 R2
      240 MOVE                             R22 R4
      241 GETUPVAL                         R23 1
      242 GETTABLEKS                       R23 R23 K46 ["dataSharingLicenseTypes"]
      244 GETUPVAL                         R24 1
      245 GETTABLEKS                       R24 R24 K47 ["localization"]
      247 CALL                             R16 8 -1
      248 NAMECALL                         R14 R0 K27 ["dispatch"]
      250 CALL                             R14 -1 0
      251 RETURN                           R0 0
      252 GETUPVAL                         R13 7
      253 GETTABLEKS                       R13 R13 K48 ["isUGCBundleType"]
      255 MOVE                             R14 R2
      256 CALL                             R13 1 1
      257 JUMPIFNOT                        R13 ; [+57]
      258 LOADNIL                          R13
      259 GETUPVAL                         R14 1
      260 GETTABLEKS                       R14 R14 K49 ["dataSharingEnabled"]
      262 JUMPIFNOT                        R14 ; [+17]
      263 GETUPVAL                         R14 1
      264 GETTABLEKS                       R14 R14 K50 ["dataSharingToggled"]
      266 JUMPIFNOT                        R14 ; [+11]
      267 NEWTABLE                         R14 0 1
      269 GETUPVAL                         R15 15
      270 GETTABLEKS                       R15 R15 K51 ["DataSharingLicenseTypes"]
      272 GETTABLEKS                       R15 R15 K52 ["RobloxGlobal"]
      274 SETLIST                          R14 R15 1 [1]
      276 MOVE                             R13 R14
      277 JUMP                             ; [+2]
      278 NEWTABLE                         R13 0 0
      280 GETUPVAL                         R16 16
      281 GETUPVAL                         R17 1
      282 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      284 MOVE                             R18 R4
      285 JUMPIFNOT                        R18 ; [+1]
      286 GETTABLEN                        R18 R4 1
      287 MOVE                             R19 R2
      288 GETUPVAL                         R20 1
      289 GETTABLEKS                       R20 R20 K29 ["name"]
      291 GETUPVAL                         R22 1
      292 GETTABLEKS                       R22 R22 K30 ["description"]
      294 ORK                              R21 R22 K36 [""]
      295 MOVE                             R22 R8
      296 GETUPVAL                         R23 1
      297 GETTABLEKS                       R23 R23 K47 ["localization"]
      299 MOVE                             R24 R6
      300 MOVE                             R25 R13
      301 GETUPVAL                         R26 1
      302 GETTABLEKS                       R26 R26 K53 ["publishService"]
      304 JUMPIFNOT                        R9 ; [+4]
      305 GETUPVAL                         R27 1
      306 GETTABLEKS                       R27 R27 K32 ["groupId"]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R27
      310 CALL                             R16 11 -1
      311 NAMECALL                         R14 R0 K27 ["dispatch"]
      313 CALL                             R14 -1 0
      314 RETURN                           R0 0
      315 GETUPVAL                         R13 7
      316 GETTABLEKS                       R13 R13 K54 ["isMarketplaceAsset"]
      318 MOVE                             R14 R2
      319 CALL                             R13 1 1
      320 JUMPIFNOT                        R13 ; [+29]
      321 GETUPVAL                         R13 8
      322 MOVE                             R15 R3
      323 NAMECALL                         R13 R13 K24 ["isOverride"]
      325 CALL                             R13 2 1
      326 JUMPIFNOT                        R13 ; [+23]
      327 GETUPVAL                         R15 17
      328 GETUPVAL                         R16 1
      329 GETTABLEKS                       R16 R16 K25 ["networkInterface"]
      331 GETUPVAL                         R17 1
      332 GETTABLEKS                       R17 R17 K26 ["overrideAssetId"]
      334 GETTABLEKS                       R18 R2 K38 ["Name"]
      336 MOVE                             R19 R4
      337 GETUPVAL                         R21 18
      338 CALL                             R21 0 1
      339 JUMPIFNOT                        R21 ; [+4]
      340 GETUPVAL                         R20 1
      341 GETTABLEKS                       R20 R20 K47 ["localization"]
      343 JUMP                             ; [+1]
      344 LOADNIL                          R20
      345 CALL                             R15 5 -1
      346 NAMECALL                         R13 R0 K27 ["dispatch"]
      348 CALL                             R13 -1 0
      349 RETURN                           R0 0
      350 GETUPVAL                         R15 19
      351 DUPTABLE                         R16 K63 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      352 GETUPVAL                         R17 1
      353 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      355 SETTABLEKS                       R17 R16 K25 ["networkInterface"]
      357 SETTABLEKS                       R2 R16 K1 ["assetTypeEnum"]
      359 GETUPVAL                         R17 1
      360 GETTABLEKS                       R17 R17 K29 ["name"]
      362 SETTABLEKS                       R17 R16 K29 ["name"]
      364 GETUPVAL                         R18 1
      365 GETTABLEKS                       R18 R18 K30 ["description"]
      367 ORK                              R17 R18 K36 [""]
      368 SETTABLEKS                       R17 R16 K30 ["description"]
      370 GETUPVAL                         R17 1
      371 GETTABLEKS                       R17 R17 K55 ["copyOn"]
      373 SETTABLEKS                       R17 R16 K55 ["copyOn"]
      375 GETUPVAL                         R17 1
      376 GETTABLEKS                       R17 R17 K56 ["commentOn"]
      378 SETTABLEKS                       R17 R16 K56 ["commentOn"]
      380 GETUPVAL                         R17 1
      381 GETTABLEKS                       R17 R17 K32 ["groupId"]
      383 SETTABLEKS                       R17 R16 K32 ["groupId"]
      385 SETTABLEKS                       R4 R16 K3 ["instances"]
      387 JUMPIFNOT                        R12 ; [+2]
      388 LOADB                            R17 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R17
      391 SETTABLEKS                       R17 R16 K57 ["isMarketplaceModelsAsPackagesEnabled"]
      393 GETUPVAL                         R17 1
      394 GETTABLEKS                       R17 R17 K64 ["status"]
      396 SETTABLEKS                       R17 R16 K58 ["saleStatus"]
      398 GETUPVAL                         R17 1
      399 GETTABLEKS                       R17 R17 K59 ["price"]
      401 SETTABLEKS                       R17 R16 K59 ["price"]
      403 GETUPVAL                         R17 1
      404 GETTABLEKS                       R17 R17 K60 ["iconFile"]
      406 SETTABLEKS                       R17 R16 K60 ["iconFile"]
      408 GETUPVAL                         R17 1
      409 GETTABLEKS                       R17 R17 K61 ["assetMediaUpdateData"]
      411 SETTABLEKS                       R17 R16 K61 ["assetMediaUpdateData"]
      413 JUMPIFNOT                        R11 ; [+3]
      414 GETTABLEKS                       R17 R11 K62 ["basePrice"]
      416 JUMP                             ; [+1]
      417 LOADNIL                          R17
      418 SETTABLEKS                       R17 R16 K62 ["basePrice"]
      420 GETUPVAL                         R18 18
      421 CALL                             R18 0 1
      422 JUMPIFNOT                        R18 ; [+4]
      423 GETUPVAL                         R17 1
      424 GETTABLEKS                       R17 R17 K47 ["localization"]
      426 JUMP                             ; [+1]
      427 LOADNIL                          R17
      428 CALL                             R15 2 -1
      429 NAMECALL                         R13 R0 K27 ["dispatch"]
      431 CALL                             R13 -1 0
      432 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 CAPTURE                          UPVAL U16
       19 CAPTURE                          UPVAL U17
       20 CAPTURE                          UPVAL U18
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["ToolboxSetMarketplaceModelsAsPackagesForAll"]
       14 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K4 [game]
       19 LOADK                            R4 K7 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
       20 NAMECALL                         R2 R2 K6 ["GetFastFlag"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K9 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagToolboxPublishFlowHelpers"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagEnableUploadingMakeup"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Util"]
       47 GETTABLEKS                       R6 R6 K15 ["SharedFlags"]
       49 GETTABLEKS                       R6 R6 K16 ["getFFlagToolboxTranslateUploadError"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R0 K10 ["Src"]
       54 GETTABLEKS                       R6 R6 K14 ["Util"]
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R6 K17 ["AssetConfigUtil"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R6 K18 ["Constants"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R6 K19 ["FiatUtil"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R6 K20 ["getUserId"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R6 K21 ["fixUpPreValidation"]
       80 CALL                             R11 1 1
       81 LOADNIL                          R12
       82 JUMPIFNOT                        R2 ; [+6]
       83 GETIMPORT                        R13 K9 [require]
       85 GETTABLEKS                       R14 R6 K22 ["getIsIXPVariableEnabled"]
       87 CALL                             R13 1 1
       88 MOVE                             R12 R13
       89 GETIMPORT                        R13 K9 [require]
       91 GETTABLEKS                       R14 R0 K10 ["Src"]
       93 GETTABLEKS                       R14 R14 K23 ["Types"]
       95 GETTABLEKS                       R14 R14 K24 ["ConfigTypes"]
       97 CALL                             R13 1 1
       98 GETTABLEKS                       R14 R0 K10 ["Src"]
      100 GETTABLEKS                       R14 R14 K25 ["Networking"]
      102 GETTABLEKS                       R14 R14 K26 ["Requests"]
      104 GETIMPORT                        R15 K9 [require]
      106 GETTABLEKS                       R16 R14 K27 ["UploadCatalogItemRequest"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K9 [require]
      111 GETTABLEKS                       R17 R14 K28 ["PostUploadAssetRequest"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K9 [require]
      116 GETTABLEKS                       R18 R14 K29 ["PostOverrideAssetRequest"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K9 [require]
      121 GETTABLEKS                       R19 R14 K30 ["PostUploadAnimationRequest"]
      123 CALL                             R18 1 1
      124 GETIMPORT                        R19 K9 [require]
      126 GETTABLEKS                       R20 R14 K31 ["PostOverrideAnimationRequest"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K9 [require]
      131 GETTABLEKS                       R21 R14 K32 ["UGCBundleUploadRequest"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K9 [require]
      136 GETTABLEKS                       R22 R14 K33 ["UGCAccessoryUploadRequest"]
      138 CALL                             R21 1 1
      139 DUPCLOSURE                       R22 K34 [PROTO_0]
      140 NEWCLOSURE                       R23 P1
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R2
      145 CAPTURE                          REF R12
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R16
      160 CLOSEUPVALS                      R12
      161 RETURN                           R23 1
