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
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Clone"]
       11 CALL                             R7 1 1
       12 GETUPVAL                         R8 0
       13 MOVE                             R9 R7
       14 CALL                             R8 1 0
       15 SETTABLE                         R7 R1 R5
       16 FORGLOOP                         R2 2 ; [-8]
       18 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R1 K1 ["assetTypeEnum"]
        8 GETTABLEKS                       R3 R1 K2 ["currentTab"]
       10 GETTABLEKS                       R4 R1 K3 ["instances"]
       12 GETTABLEKS                       R5 R1 K4 ["isUploadFeeEnabled"]
       14 GETTABLEKS                       R6 R1 K5 ["uploadFee"]
       16 GETTABLEKS                       R7 R1 K6 ["allowedAssetTypesForUpload"]
       18 GETTABLEKS                       R8 R1 K7 ["allowedBundleTypeSettings"]
       20 GETTABLEKS                       R9 R1 K8 ["groupBundlesUploadEnabledForUser"]
       22 GETUPVAL                         R11 0
       23 CALL                             R11 0 1
       24 JUMPIFNOT                        R11 ; [+3]
       25 GETTABLEKS                       R10 R1 K9 ["specialAttributes"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R10
       29 GETTABLEKS                       R11 R1 K10 ["idToFiatProductMap"]
       31 JUMPIF                           R11 ; [+2]
       32 NEWTABLE                         R11 0 0
       34 GETUPVAL                         R14 1
       35 GETTABLEKS                       R14 R14 K11 ["assetId"]
       37 GETTABLE                         R13 R11 R14
       38 JUMPIFNOT                        R13 ; [+5]
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R13 R13 K11 ["assetId"]
       42 GETTABLE                         R12 R11 R13
       43 JUMP                             ; [+4]
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K12 ["getDefaultFiatProduct"]
       47 CALL                             R12 0 1
       48 GETUPVAL                         R13 3
       49 JUMPIF                           R13 ; [+9]
       50 GETUPVAL                         R13 4
       51 JUMPIFNOT                        R13 ; [+7]
       52 GETUPVAL                         R13 5
       53 GETUPVAL                         R14 1
       54 GETTABLEKS                       R14 R14 K13 ["ixp"]
       56 LOADK                            R15 K14 ["MarketplaceModelsAsPackages"]
       57 LOADK                            R16 K15 ["MarketplaceModelsAsPackagesEnabled"]
       58 CALL                             R13 3 1
       59 GETUPVAL                         R14 6
       60 GETTABLEKS                       R14 R14 K16 ["isMakeupAsset"]
       62 MOVE                             R15 R2
       63 CALL                             R14 1 1
       64 JUMPIFNOT                        R14 ; [+15]
       65 GETUPVAL                         R14 1
       66 GETTABLEKS                       R14 R14 K17 ["selectedColor"]
       68 JUMPIFNOT                        R14 ; [+11]
       69 JUMPIFNOT                        R4 ; [+10]
       70 GETTABLEN                        R14 R4 1
       71 JUMPIFNOT                        R14 ; [+8]
       72 GETUPVAL                         R14 6
       73 GETTABLEKS                       R14 R14 K18 ["addMakeupThumbnailConfiguration"]
       75 GETTABLEN                        R15 R4 1
       76 GETUPVAL                         R16 1
       77 GETTABLEKS                       R16 R16 K17 ["selectedColor"]
       79 CALL                             R14 2 0
       80 GETIMPORT                        R14 K22 [Enum.AssetType.Animation]
       82 JUMPIFEQ                         R2 R14 ; [+5]
       84 GETIMPORT                        R14 K24 [Enum.AssetType.EmoteAnimation]
       86 JUMPIFNOTEQ                      R2 R14 ; [+63]
       88 GETUPVAL                         R14 7
       89 MOVE                             R16 R3
       90 NAMECALL                         R14 R14 K25 ["isOverride"]
       92 CALL                             R14 2 1
       93 JUMPIFNOT                        R14 ; [+13]
       94 GETUPVAL                         R16 8
       95 GETUPVAL                         R17 1
       96 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
       98 GETUPVAL                         R18 1
       99 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      101 MOVE                             R19 R4
      102 CALL                             R16 3 -1
      103 NAMECALL                         R14 R0 K28 ["dispatch"]
      105 CALL                             R14 -1 0
      106 RETURN                           R0 0
      107 GETUPVAL                         R16 9
      108 DUPTABLE                         R17 K37 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
      109 GETUPVAL                         R18 1
      110 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      112 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      114 GETUPVAL                         R18 1
      115 GETTABLEKS                       R18 R18 K30 ["name"]
      117 SETTABLEKS                       R18 R17 K30 ["name"]
      119 GETUPVAL                         R19 1
      120 GETTABLEKS                       R19 R19 K31 ["description"]
      122 ORK                              R18 R19 K38 [""]
      123 SETTABLEKS                       R18 R17 K31 ["description"]
      125 GETUPVAL                         R18 10
      126 CALL                             R18 0 1
      127 SETTABLEKS                       R18 R17 K32 ["userId"]
      129 GETUPVAL                         R18 1
      130 GETTABLEKS                       R18 R18 K33 ["groupId"]
      132 SETTABLEKS                       R18 R17 K33 ["groupId"]
      134 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      136 SETTABLEKS                       R6 R17 K34 ["expectedPrice"]
      138 SETTABLEKS                       R4 R17 K35 ["instance"]
      140 GETUPVAL                         R18 1
      141 GETTABLEKS                       R18 R18 K36 ["publishService"]
      143 SETTABLEKS                       R18 R17 K36 ["publishService"]
      145 CALL                             R16 1 -1
      146 NAMECALL                         R14 R0 K28 ["dispatch"]
      148 CALL                             R14 -1 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R14 6
      151 GETTABLEKS                       R14 R14 K39 ["isCatalogAsset"]
      153 MOVE                             R15 R2
      154 CALL                             R14 1 1
      155 JUMPIFNOT                        R14 ; [+138]
      156 GETUPVAL                         R14 11
      157 CALL                             R14 0 1
      158 JUMPIFNOT                        R14 ; [+68]
      159 GETUPVAL                         R14 6
      160 GETTABLEKS                       R14 R14 K40 ["isAvatarItemUpdateSupported"]
      162 MOVE                             R15 R2
      163 CALL                             R14 1 1
      164 JUMPIFNOT                        R14 ; [+62]
      165 GETUPVAL                         R14 7
      166 MOVE                             R16 R3
      167 NAMECALL                         R14 R14 K25 ["isOverride"]
      169 CALL                             R14 2 1
      170 JUMPIFNOT                        R14 ; [+56]
      171 GETUPVAL                         R14 1
      172 GETTABLEKS                       R14 R14 K27 ["overrideAssetId"]
      174 JUMPIFNOT                        R14 ; [+52]
      175 GETUPVAL                         R14 12
      176 MOVE                             R15 R4
      177 CALL                             R14 1 1
      178 GETUPVAL                         R17 13
      179 DUPTABLE                         R18 K44 [{"networkInterface", "name", "description", "assetTypeEnum", "instances", "groupId", "originalAssetId", "dataSharingLicenseTypes", "localization", "uploadFee"}]
      180 GETUPVAL                         R19 1
      181 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      183 SETTABLEKS                       R19 R18 K26 ["networkInterface"]
      185 GETUPVAL                         R19 1
      186 GETTABLEKS                       R19 R19 K30 ["name"]
      188 SETTABLEKS                       R19 R18 K30 ["name"]
      190 GETUPVAL                         R20 1
      191 GETTABLEKS                       R20 R20 K31 ["description"]
      193 ORK                              R19 R20 K38 [""]
      194 SETTABLEKS                       R19 R18 K31 ["description"]
      196 SETTABLEKS                       R2 R18 K1 ["assetTypeEnum"]
      198 SETTABLEKS                       R14 R18 K3 ["instances"]
      200 GETUPVAL                         R19 1
      201 GETTABLEKS                       R19 R19 K33 ["groupId"]
      203 SETTABLEKS                       R19 R18 K33 ["groupId"]
      205 GETUPVAL                         R19 1
      206 GETTABLEKS                       R19 R19 K27 ["overrideAssetId"]
      208 SETTABLEKS                       R19 R18 K41 ["originalAssetId"]
      210 GETUPVAL                         R19 1
      211 GETTABLEKS                       R19 R19 K42 ["dataSharingLicenseTypes"]
      213 SETTABLEKS                       R19 R18 K42 ["dataSharingLicenseTypes"]
      215 GETUPVAL                         R19 1
      216 GETTABLEKS                       R19 R19 K43 ["localization"]
      218 SETTABLEKS                       R19 R18 K43 ["localization"]
      220 SETTABLEKS                       R6 R18 K5 ["uploadFee"]
      222 CALL                             R17 1 -1
      223 NAMECALL                         R15 R0 K28 ["dispatch"]
      225 CALL                             R15 -1 0
      226 RETURN                           R0 0
      227 JUMPIFNOT                        R5 ; [+34]
      228 GETUPVAL                         R14 12
      229 MOVE                             R15 R4
      230 CALL                             R14 1 1
      231 GETUPVAL                         R17 14
      232 GETUPVAL                         R18 1
      233 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      235 GETUPVAL                         R19 1
      236 GETTABLEKS                       R19 R19 K30 ["name"]
      238 GETUPVAL                         R21 1
      239 GETTABLEKS                       R21 R21 K31 ["description"]
      241 ORK                              R20 R21 K38 [""]
      242 MOVE                             R21 R2
      243 MOVE                             R22 R14
      244 GETUPVAL                         R23 1
      245 GETTABLEKS                       R23 R23 K33 ["groupId"]
      247 GETUPVAL                         R24 1
      248 GETTABLEKS                       R24 R24 K42 ["dataSharingLicenseTypes"]
      250 GETUPVAL                         R25 1
      251 GETTABLEKS                       R25 R25 K43 ["localization"]
      253 MOVE                             R26 R6
      254 GETUPVAL                         R27 1
      255 GETTABLEKS                       R27 R27 K45 ["publishOnApprovalCreationContext"]
      257 CALL                             R17 10 -1
      258 NAMECALL                         R15 R0 K28 ["dispatch"]
      260 CALL                             R15 -1 0
      261 RETURN                           R0 0
      262 GETUPVAL                         R14 15
      263 CALL                             R14 0 1
      264 JUMPIF                           R14 ; [+210]
      265 GETUPVAL                         R14 16
      266 MOVE                             R15 R7
      267 MOVE                             R16 R2
      268 CALL                             R14 2 1
      269 GETUPVAL                         R17 17
      270 GETUPVAL                         R18 1
      271 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      273 GETUPVAL                         R19 1
      274 GETTABLEKS                       R19 R19 K30 ["name"]
      276 MOVE                             R20 R14
      277 GETUPVAL                         R22 1
      278 GETTABLEKS                       R22 R22 K31 ["description"]
      280 ORK                              R21 R22 K38 [""]
      281 MOVE                             R22 R2
      282 MOVE                             R23 R4
      283 GETUPVAL                         R24 1
      284 GETTABLEKS                       R24 R24 K42 ["dataSharingLicenseTypes"]
      286 GETUPVAL                         R25 1
      287 GETTABLEKS                       R25 R25 K43 ["localization"]
      289 CALL                             R17 8 -1
      290 NAMECALL                         R15 R0 K28 ["dispatch"]
      292 CALL                             R15 -1 0
      293 RETURN                           R0 0
      294 GETUPVAL                         R14 6
      295 GETTABLEKS                       R14 R14 K46 ["isUGCBundleType"]
      297 MOVE                             R15 R2
      298 CALL                             R14 1 1
      299 JUMPIFNOT                        R14 ; [+68]
      300 LOADNIL                          R14
      301 GETUPVAL                         R15 1
      302 GETTABLEKS                       R15 R15 K47 ["dataSharingEnabled"]
      304 JUMPIFNOT                        R15 ; [+17]
      305 GETUPVAL                         R15 1
      306 GETTABLEKS                       R15 R15 K48 ["dataSharingToggled"]
      308 JUMPIFNOT                        R15 ; [+11]
      309 NEWTABLE                         R15 0 1
      311 GETUPVAL                         R16 18
      312 GETTABLEKS                       R16 R16 K49 ["DataSharingLicenseTypes"]
      314 GETTABLEKS                       R16 R16 K50 ["RobloxGlobal"]
      316 SETLIST                          R15 R16 1 [1]
      318 MOVE                             R14 R15
      319 JUMP                             ; [+2]
      320 NEWTABLE                         R14 0 0
      322 GETUPVAL                         R16 0
      323 CALL                             R16 0 1
      324 JUMPIFNOT                        R16 ; [+6]
      325 GETUPVAL                         R15 19
      326 GETTABLEKS                       R15 R15 K51 ["isEmissiveFromAttributes"]
      328 MOVE                             R16 R10
      329 CALL                             R15 1 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R15
      332 GETUPVAL                         R18 20
      333 GETUPVAL                         R19 1
      334 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      336 MOVE                             R20 R4
      337 JUMPIFNOT                        R20 ; [+1]
      338 GETTABLEN                        R20 R4 1
      339 MOVE                             R21 R2
      340 GETUPVAL                         R22 1
      341 GETTABLEKS                       R22 R22 K30 ["name"]
      343 GETUPVAL                         R24 1
      344 GETTABLEKS                       R24 R24 K31 ["description"]
      346 ORK                              R23 R24 K38 [""]
      347 MOVE                             R24 R8
      348 GETUPVAL                         R25 1
      349 GETTABLEKS                       R25 R25 K43 ["localization"]
      351 MOVE                             R26 R6
      352 MOVE                             R27 R14
      353 GETUPVAL                         R28 1
      354 GETTABLEKS                       R28 R28 K36 ["publishService"]
      356 JUMPIFNOT                        R9 ; [+4]
      357 GETUPVAL                         R29 1
      358 GETTABLEKS                       R29 R29 K33 ["groupId"]
      360 JUMP                             ; [+1]
      361 LOADNIL                          R29
      362 MOVE                             R30 R15
      363 CALL                             R18 12 -1
      364 NAMECALL                         R16 R0 K28 ["dispatch"]
      366 CALL                             R16 -1 0
      367 RETURN                           R0 0
      368 GETUPVAL                         R14 6
      369 GETTABLEKS                       R14 R14 K52 ["isMarketplaceAsset"]
      371 MOVE                             R15 R2
      372 CALL                             R14 1 1
      373 JUMPIFNOT                        R14 ; [+24]
      374 GETUPVAL                         R14 7
      375 MOVE                             R16 R3
      376 NAMECALL                         R14 R14 K25 ["isOverride"]
      378 CALL                             R14 2 1
      379 JUMPIFNOT                        R14 ; [+18]
      380 GETUPVAL                         R16 21
      381 GETUPVAL                         R17 1
      382 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      384 GETUPVAL                         R18 1
      385 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      387 GETTABLEKS                       R19 R2 K53 ["Name"]
      389 MOVE                             R20 R4
      390 GETUPVAL                         R21 1
      391 GETTABLEKS                       R21 R21 K43 ["localization"]
      393 CALL                             R16 5 -1
      394 NAMECALL                         R14 R0 K28 ["dispatch"]
      396 CALL                             R14 -1 0
      397 RETURN                           R0 0
      398 GETUPVAL                         R16 22
      399 DUPTABLE                         R17 K62 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      400 GETUPVAL                         R18 1
      401 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      403 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      405 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      407 GETUPVAL                         R18 1
      408 GETTABLEKS                       R18 R18 K30 ["name"]
      410 SETTABLEKS                       R18 R17 K30 ["name"]
      412 GETUPVAL                         R19 1
      413 GETTABLEKS                       R19 R19 K31 ["description"]
      415 ORK                              R18 R19 K38 [""]
      416 SETTABLEKS                       R18 R17 K31 ["description"]
      418 GETUPVAL                         R18 1
      419 GETTABLEKS                       R18 R18 K54 ["copyOn"]
      421 SETTABLEKS                       R18 R17 K54 ["copyOn"]
      423 GETUPVAL                         R18 1
      424 GETTABLEKS                       R18 R18 K55 ["commentOn"]
      426 SETTABLEKS                       R18 R17 K55 ["commentOn"]
      428 GETUPVAL                         R18 1
      429 GETTABLEKS                       R18 R18 K33 ["groupId"]
      431 SETTABLEKS                       R18 R17 K33 ["groupId"]
      433 SETTABLEKS                       R4 R17 K3 ["instances"]
      435 JUMPIFNOT                        R13 ; [+2]
      436 LOADB                            R18 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R18
      439 SETTABLEKS                       R18 R17 K56 ["isMarketplaceModelsAsPackagesEnabled"]
      441 GETUPVAL                         R18 1
      442 GETTABLEKS                       R18 R18 K63 ["status"]
      444 SETTABLEKS                       R18 R17 K57 ["saleStatus"]
      446 GETUPVAL                         R18 1
      447 GETTABLEKS                       R18 R18 K58 ["price"]
      449 SETTABLEKS                       R18 R17 K58 ["price"]
      451 GETUPVAL                         R18 1
      452 GETTABLEKS                       R18 R18 K59 ["iconFile"]
      454 SETTABLEKS                       R18 R17 K59 ["iconFile"]
      456 GETUPVAL                         R18 1
      457 GETTABLEKS                       R18 R18 K60 ["assetMediaUpdateData"]
      459 SETTABLEKS                       R18 R17 K60 ["assetMediaUpdateData"]
      461 JUMPIFNOT                        R12 ; [+3]
      462 GETTABLEKS                       R18 R12 K61 ["basePrice"]
      464 JUMP                             ; [+1]
      465 LOADNIL                          R18
      466 SETTABLEKS                       R18 R17 K61 ["basePrice"]
      468 GETUPVAL                         R18 1
      469 GETTABLEKS                       R18 R18 K43 ["localization"]
      471 CALL                             R16 2 -1
      472 NAMECALL                         R14 R0 K28 ["dispatch"]
      474 CALL                             R14 -1 0
      475 RETURN                           R0 0

PROTO_3:
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
       21 CAPTURE                          UPVAL U19
       22 CAPTURE                          UPVAL U20
       23 CAPTURE                          UPVAL U21
       24 RETURN                           R1 1

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
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagEnableUpdateAvatarItem"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagToolboxDynamicUploadFee"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Flags"]
       47 GETTABLEKS                       R6 R6 K14 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R0 K10 ["Src"]
       52 GETTABLEKS                       R6 R6 K15 ["Util"]
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R6 K16 ["AssetConfigUtil"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R6 K17 ["Constants"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R6 K18 ["MetadataType"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R6 K19 ["FiatUtil"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R12 R6 K20 ["getUserId"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K9 [require]
       81 GETTABLEKS                       R13 R6 K21 ["fixUpPreValidation"]
       83 CALL                             R12 1 1
       84 LOADNIL                          R13
       85 JUMPIFNOT                        R2 ; [+6]
       86 GETIMPORT                        R14 K9 [require]
       88 GETTABLEKS                       R15 R6 K22 ["getIsIXPVariableEnabled"]
       90 CALL                             R14 1 1
       91 MOVE                             R13 R14
       92 GETIMPORT                        R14 K9 [require]
       94 GETTABLEKS                       R15 R0 K10 ["Src"]
       96 GETTABLEKS                       R15 R15 K23 ["Types"]
       98 GETTABLEKS                       R15 R15 K24 ["ConfigTypes"]
      100 CALL                             R14 1 1
      101 GETTABLEKS                       R15 R0 K10 ["Src"]
      103 GETTABLEKS                       R15 R15 K25 ["Networking"]
      105 GETTABLEKS                       R15 R15 K26 ["Requests"]
      107 LOADNIL                          R16
      108 MOVE                             R17 R5
      109 CALL                             R17 0 1
      110 JUMPIF                           R17 ; [+6]
      111 GETIMPORT                        R17 K9 [require]
      113 GETTABLEKS                       R18 R15 K27 ["UploadCatalogItemRequest"]
      115 CALL                             R17 1 1
      116 MOVE                             R16 R17
      117 GETIMPORT                        R17 K9 [require]
      119 GETTABLEKS                       R18 R15 K28 ["PostUploadAssetRequest"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K9 [require]
      124 GETTABLEKS                       R19 R15 K29 ["PostOverrideAssetRequest"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K9 [require]
      129 GETTABLEKS                       R20 R15 K30 ["PostUploadAnimationRequest"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K9 [require]
      134 GETTABLEKS                       R21 R15 K31 ["PostOverrideAnimationRequest"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K9 [require]
      139 GETTABLEKS                       R22 R15 K32 ["UGCBundleUploadRequest"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K9 [require]
      144 GETTABLEKS                       R23 R15 K33 ["UGCAccessoryUploadRequest"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K9 [require]
      149 GETTABLEKS                       R24 R15 K34 ["AvatarItemUpdateUploadRequest"]
      151 CALL                             R23 1 1
      152 LOADNIL                          R24
      153 MOVE                             R25 R5
      154 CALL                             R25 0 1
      155 JUMPIF                           R25 ; [+1]
      156 DUPCLOSURE                       R24 K35 [PROTO_0]
      157 DUPCLOSURE                       R25 K36 [PROTO_1]
      158 CAPTURE                          VAL R12
      159 NEWCLOSURE                       R26 P2
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R2
      164 CAPTURE                          REF R13
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R20
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R5
      175 CAPTURE                          REF R24
      176 CAPTURE                          REF R16
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R17
      182 CLOSEUPVALS                      R13
      183 RETURN                           R26 1
