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
       86 JUMPIFNOTEQ                      R2 R13 ; [+61]
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
      108 DUPTABLE                         R16 K34 [{"networkInterface", "assetId", "name", "description", "userId", "groupId", "assetTypeEnum", "expectedPrice", "instance"}]
      109 GETUPVAL                         R17 1
      110 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      112 SETTABLEKS                       R17 R16 K25 ["networkInterface"]
      114 LOADN                            R17 0
      115 SETTABLEKS                       R17 R16 K10 ["assetId"]
      117 GETUPVAL                         R17 1
      118 GETTABLEKS                       R17 R17 K28 ["name"]
      120 SETTABLEKS                       R17 R16 K28 ["name"]
      122 GETUPVAL                         R18 1
      123 GETTABLEKS                       R18 R18 K29 ["description"]
      125 ORK                              R17 R18 K35 [""]
      126 SETTABLEKS                       R17 R16 K29 ["description"]
      128 GETUPVAL                         R17 11
      129 CALL                             R17 0 1
      130 SETTABLEKS                       R17 R16 K30 ["userId"]
      132 GETUPVAL                         R17 1
      133 GETTABLEKS                       R17 R17 K31 ["groupId"]
      135 SETTABLEKS                       R17 R16 K31 ["groupId"]
      137 SETTABLEKS                       R2 R16 K1 ["assetTypeEnum"]
      139 SETTABLEKS                       R6 R16 K32 ["expectedPrice"]
      141 SETTABLEKS                       R4 R16 K33 ["instance"]
      143 CALL                             R15 1 -1
      144 NAMECALL                         R13 R0 K27 ["dispatch"]
      146 CALL                             R13 -1 0
      147 RETURN                           R0 0
      148 GETUPVAL                         R13 7
      149 GETTABLEKS                       R13 R13 K36 ["isCatalogAsset"]
      151 MOVE                             R14 R2
      152 CALL                             R13 1 1
      153 JUMPIFNOT                        R13 ; [+101]
      154 MOVE                             R14 R7
      155 JUMPIFNOT                        R14 ; [+5]
      156 MOVE                             R14 R2
      157 JUMPIFNOT                        R14 ; [+3]
      158 GETTABLEKS                       R15 R2 K37 ["Name"]
      160 GETTABLE                         R14 R7 R15
      161 MOVE                             R15 R14
      162 JUMPIFNOT                        R15 ; [+2]
      163 GETTABLEKS                       R15 R14 K38 ["allowedFileExtensions"]
      165 MOVE                             R16 R15
      166 JUMPIFNOT                        R16 ; [+6]
      167 LOADB                            R16 0
      168 LENGTH                           R17 R15
      169 LOADN                            R18 0
      170 JUMPIFNOTLT                      R18 R17 ; [+2]
      172 GETTABLEN                        R16 R15 1
      173 JUMPIFNOT                        R16 ; [+8]
      174 GETIMPORT                        R17 K41 [string.gsub]
      176 MOVE                             R18 R16
      177 LOADK                            R19 K42 ["^%."]
      178 LOADK                            R20 K35 [""]
      179 CALL                             R17 3 1
      180 MOVE                             R13 R17
      181 JUMPIF                           R13 ; [+1]
      182 LOADK                            R13 K43 ["rbxm"]
      183 JUMPIFNOT                        R5 ; [+46]
      184 NEWTABLE                         R14 0 0
      186 MOVE                             R15 R4
      187 JUMPIF                           R15 ; [+2]
      188 NEWTABLE                         R15 0 0
      190 LOADNIL                          R16
      191 LOADNIL                          R17
      192 FORGPREP                         R15
      193 NAMECALL                         R20 R19 K44 ["Clone"]
      195 CALL                             R20 1 1
      196 GETUPVAL                         R21 12
      197 MOVE                             R22 R20
      198 CALL                             R21 1 0
      199 SETTABLE                         R20 R14 R18
      200 FORGLOOP                         R15 2 ; [-8]
      202 GETUPVAL                         R17 13
      203 GETUPVAL                         R18 1
      204 GETTABLEKS                       R18 R18 K25 ["networkInterface"]
      206 GETUPVAL                         R19 1
      207 GETTABLEKS                       R19 R19 K28 ["name"]
      209 GETUPVAL                         R21 1
      210 GETTABLEKS                       R21 R21 K29 ["description"]
      212 ORK                              R20 R21 K35 [""]
      213 MOVE                             R21 R2
      214 MOVE                             R22 R14
      215 GETUPVAL                         R23 1
      216 GETTABLEKS                       R23 R23 K31 ["groupId"]
      218 GETUPVAL                         R24 1
      219 GETTABLEKS                       R24 R24 K45 ["dataSharingLicenseTypes"]
      221 GETUPVAL                         R25 1
      222 GETTABLEKS                       R25 R25 K46 ["localization"]
      224 MOVE                             R26 R6
      225 CALL                             R17 9 -1
      226 NAMECALL                         R15 R0 K27 ["dispatch"]
      228 CALL                             R15 -1 0
      229 RETURN                           R0 0
      230 GETUPVAL                         R16 14
      231 GETUPVAL                         R17 1
      232 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      234 GETUPVAL                         R18 1
      235 GETTABLEKS                       R18 R18 K28 ["name"]
      237 MOVE                             R19 R13
      238 GETUPVAL                         R21 1
      239 GETTABLEKS                       R21 R21 K29 ["description"]
      241 ORK                              R20 R21 K35 [""]
      242 MOVE                             R21 R2
      243 MOVE                             R22 R4
      244 GETUPVAL                         R23 1
      245 GETTABLEKS                       R23 R23 K45 ["dataSharingLicenseTypes"]
      247 GETUPVAL                         R24 1
      248 GETTABLEKS                       R24 R24 K46 ["localization"]
      250 CALL                             R16 8 -1
      251 NAMECALL                         R14 R0 K27 ["dispatch"]
      253 CALL                             R14 -1 0
      254 RETURN                           R0 0
      255 GETUPVAL                         R13 7
      256 GETTABLEKS                       R13 R13 K47 ["isUGCBundleType"]
      258 MOVE                             R14 R2
      259 CALL                             R13 1 1
      260 JUMPIFNOT                        R13 ; [+57]
      261 LOADNIL                          R13
      262 GETUPVAL                         R14 1
      263 GETTABLEKS                       R14 R14 K48 ["dataSharingEnabled"]
      265 JUMPIFNOT                        R14 ; [+17]
      266 GETUPVAL                         R14 1
      267 GETTABLEKS                       R14 R14 K49 ["dataSharingToggled"]
      269 JUMPIFNOT                        R14 ; [+11]
      270 NEWTABLE                         R14 0 1
      272 GETUPVAL                         R15 15
      273 GETTABLEKS                       R15 R15 K50 ["DataSharingLicenseTypes"]
      275 GETTABLEKS                       R15 R15 K51 ["RobloxGlobal"]
      277 SETLIST                          R14 R15 1 [1]
      279 MOVE                             R13 R14
      280 JUMP                             ; [+2]
      281 NEWTABLE                         R13 0 0
      283 GETUPVAL                         R16 16
      284 GETUPVAL                         R17 1
      285 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      287 MOVE                             R18 R4
      288 JUMPIFNOT                        R18 ; [+1]
      289 GETTABLEN                        R18 R4 1
      290 MOVE                             R19 R2
      291 GETUPVAL                         R20 1
      292 GETTABLEKS                       R20 R20 K28 ["name"]
      294 GETUPVAL                         R22 1
      295 GETTABLEKS                       R22 R22 K29 ["description"]
      297 ORK                              R21 R22 K35 [""]
      298 MOVE                             R22 R8
      299 GETUPVAL                         R23 1
      300 GETTABLEKS                       R23 R23 K46 ["localization"]
      302 MOVE                             R24 R6
      303 MOVE                             R25 R13
      304 GETUPVAL                         R26 1
      305 GETTABLEKS                       R26 R26 K52 ["publishService"]
      307 JUMPIFNOT                        R9 ; [+4]
      308 GETUPVAL                         R27 1
      309 GETTABLEKS                       R27 R27 K31 ["groupId"]
      311 JUMP                             ; [+1]
      312 LOADNIL                          R27
      313 CALL                             R16 11 -1
      314 NAMECALL                         R14 R0 K27 ["dispatch"]
      316 CALL                             R14 -1 0
      317 RETURN                           R0 0
      318 GETUPVAL                         R13 7
      319 GETTABLEKS                       R13 R13 K53 ["isMarketplaceAsset"]
      321 MOVE                             R14 R2
      322 CALL                             R13 1 1
      323 JUMPIFNOT                        R13 ; [+29]
      324 GETUPVAL                         R13 8
      325 MOVE                             R15 R3
      326 NAMECALL                         R13 R13 K24 ["isOverride"]
      328 CALL                             R13 2 1
      329 JUMPIFNOT                        R13 ; [+23]
      330 GETUPVAL                         R15 17
      331 GETUPVAL                         R16 1
      332 GETTABLEKS                       R16 R16 K25 ["networkInterface"]
      334 GETUPVAL                         R17 1
      335 GETTABLEKS                       R17 R17 K26 ["overrideAssetId"]
      337 GETTABLEKS                       R18 R2 K37 ["Name"]
      339 MOVE                             R19 R4
      340 GETUPVAL                         R21 18
      341 CALL                             R21 0 1
      342 JUMPIFNOT                        R21 ; [+4]
      343 GETUPVAL                         R20 1
      344 GETTABLEKS                       R20 R20 K46 ["localization"]
      346 JUMP                             ; [+1]
      347 LOADNIL                          R20
      348 CALL                             R15 5 -1
      349 NAMECALL                         R13 R0 K27 ["dispatch"]
      351 CALL                             R13 -1 0
      352 RETURN                           R0 0
      353 GETUPVAL                         R15 19
      354 DUPTABLE                         R16 K62 [{"networkInterface", "assetId", "assetTypeEnum", "name", "description", "copyOn", "commentOn", "groupId", "instances", "isMarketplaceModelsAsPackagesEnabled", "saleStatus", "price", "iconFile", "assetMediaUpdateData", "basePrice"}]
      355 GETUPVAL                         R17 1
      356 GETTABLEKS                       R17 R17 K25 ["networkInterface"]
      358 SETTABLEKS                       R17 R16 K25 ["networkInterface"]
      360 LOADN                            R17 0
      361 SETTABLEKS                       R17 R16 K10 ["assetId"]
      363 SETTABLEKS                       R2 R16 K1 ["assetTypeEnum"]
      365 GETUPVAL                         R17 1
      366 GETTABLEKS                       R17 R17 K28 ["name"]
      368 SETTABLEKS                       R17 R16 K28 ["name"]
      370 GETUPVAL                         R18 1
      371 GETTABLEKS                       R18 R18 K29 ["description"]
      373 ORK                              R17 R18 K35 [""]
      374 SETTABLEKS                       R17 R16 K29 ["description"]
      376 GETUPVAL                         R17 1
      377 GETTABLEKS                       R17 R17 K54 ["copyOn"]
      379 SETTABLEKS                       R17 R16 K54 ["copyOn"]
      381 GETUPVAL                         R17 1
      382 GETTABLEKS                       R17 R17 K55 ["commentOn"]
      384 SETTABLEKS                       R17 R16 K55 ["commentOn"]
      386 GETUPVAL                         R17 1
      387 GETTABLEKS                       R17 R17 K31 ["groupId"]
      389 SETTABLEKS                       R17 R16 K31 ["groupId"]
      391 SETTABLEKS                       R4 R16 K3 ["instances"]
      393 JUMPIFNOT                        R12 ; [+2]
      394 LOADB                            R17 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R17
      397 SETTABLEKS                       R17 R16 K56 ["isMarketplaceModelsAsPackagesEnabled"]
      399 GETUPVAL                         R17 1
      400 GETTABLEKS                       R17 R17 K63 ["status"]
      402 SETTABLEKS                       R17 R16 K57 ["saleStatus"]
      404 GETUPVAL                         R17 1
      405 GETTABLEKS                       R17 R17 K58 ["price"]
      407 SETTABLEKS                       R17 R16 K58 ["price"]
      409 GETUPVAL                         R17 1
      410 GETTABLEKS                       R17 R17 K59 ["iconFile"]
      412 SETTABLEKS                       R17 R16 K59 ["iconFile"]
      414 GETUPVAL                         R17 1
      415 GETTABLEKS                       R17 R17 K60 ["assetMediaUpdateData"]
      417 SETTABLEKS                       R17 R16 K60 ["assetMediaUpdateData"]
      419 JUMPIFNOT                        R11 ; [+3]
      420 GETTABLEKS                       R17 R11 K61 ["basePrice"]
      422 JUMP                             ; [+1]
      423 LOADNIL                          R17
      424 SETTABLEKS                       R17 R16 K61 ["basePrice"]
      426 GETUPVAL                         R18 18
      427 CALL                             R18 0 1
      428 JUMPIFNOT                        R18 ; [+4]
      429 GETUPVAL                         R17 1
      430 GETTABLEKS                       R17 R17 K46 ["localization"]
      432 JUMP                             ; [+1]
      433 LOADNIL                          R17
      434 CALL                             R15 2 -1
      435 NAMECALL                         R13 R0 K27 ["dispatch"]
      437 CALL                             R13 -1 0
      438 RETURN                           R0 0

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
