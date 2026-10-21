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
      155 JUMPIFNOT                        R14 ; [+160]
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
      227 MOVE                             R15 R7
      228 JUMPIFNOT                        R15 ; [+5]
      229 MOVE                             R15 R2
      230 JUMPIFNOT                        R15 ; [+3]
      231 GETTABLEKS                       R16 R2 K45 ["Name"]
      233 GETTABLE                         R15 R7 R16
      234 MOVE                             R16 R15
      235 JUMPIFNOT                        R16 ; [+2]
      236 GETTABLEKS                       R16 R15 K46 ["allowedFileExtensions"]
      238 MOVE                             R17 R16
      239 JUMPIFNOT                        R17 ; [+6]
      240 LOADB                            R17 0
      241 LENGTH                           R18 R16
      242 LOADN                            R19 0
      243 JUMPIFNOTLT                      R19 R18 ; [+2]
      245 GETTABLEN                        R17 R16 1
      246 JUMPIFNOT                        R17 ; [+8]
      247 GETIMPORT                        R18 K49 [string.gsub]
      249 MOVE                             R19 R17
      250 LOADK                            R20 K50 ["^%."]
      251 LOADK                            R21 K38 [""]
      252 CALL                             R18 3 1
      253 MOVE                             R14 R18
      254 JUMPIF                           R14 ; [+1]
      255 LOADK                            R14 K51 ["rbxm"]
      256 JUMPIFNOT                        R5 ; [+34]
      257 GETUPVAL                         R15 12
      258 MOVE                             R16 R4
      259 CALL                             R15 1 1
      260 GETUPVAL                         R18 14
      261 GETUPVAL                         R19 1
      262 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      264 GETUPVAL                         R20 1
      265 GETTABLEKS                       R20 R20 K30 ["name"]
      267 GETUPVAL                         R22 1
      268 GETTABLEKS                       R22 R22 K31 ["description"]
      270 ORK                              R21 R22 K38 [""]
      271 MOVE                             R22 R2
      272 MOVE                             R23 R15
      273 GETUPVAL                         R24 1
      274 GETTABLEKS                       R24 R24 K33 ["groupId"]
      276 GETUPVAL                         R25 1
      277 GETTABLEKS                       R25 R25 K42 ["dataSharingLicenseTypes"]
      279 GETUPVAL                         R26 1
      280 GETTABLEKS                       R26 R26 K43 ["localization"]
      282 MOVE                             R27 R6
      283 GETUPVAL                         R28 1
      284 GETTABLEKS                       R28 R28 K52 ["publishOnApprovalCreationContext"]
      286 CALL                             R18 10 -1
      287 NAMECALL                         R16 R0 K28 ["dispatch"]
      289 CALL                             R16 -1 0
      290 RETURN                           R0 0
      291 GETUPVAL                         R17 15
      292 GETUPVAL                         R18 1
      293 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      295 GETUPVAL                         R19 1
      296 GETTABLEKS                       R19 R19 K30 ["name"]
      298 MOVE                             R20 R14
      299 GETUPVAL                         R22 1
      300 GETTABLEKS                       R22 R22 K31 ["description"]
      302 ORK                              R21 R22 K38 [""]
      303 MOVE                             R22 R2
      304 MOVE                             R23 R4
      305 GETUPVAL                         R24 1
      306 GETTABLEKS                       R24 R24 K42 ["dataSharingLicenseTypes"]
      308 GETUPVAL                         R25 1
      309 GETTABLEKS                       R25 R25 K43 ["localization"]
      311 CALL                             R17 8 -1
      312 NAMECALL                         R15 R0 K28 ["dispatch"]
      314 CALL                             R15 -1 0
      315 RETURN                           R0 0
      316 GETUPVAL                         R14 6
      317 GETTABLEKS                       R14 R14 K53 ["isUGCBundleType"]
      319 MOVE                             R15 R2
      320 CALL                             R14 1 1
      321 JUMPIFNOT                        R14 ; [+68]
      322 LOADNIL                          R14
      323 GETUPVAL                         R15 1
      324 GETTABLEKS                       R15 R15 K54 ["dataSharingEnabled"]
      326 JUMPIFNOT                        R15 ; [+17]
      327 GETUPVAL                         R15 1
      328 GETTABLEKS                       R15 R15 K55 ["dataSharingToggled"]
      330 JUMPIFNOT                        R15 ; [+11]
      331 NEWTABLE                         R15 0 1
      333 GETUPVAL                         R16 16
      334 GETTABLEKS                       R16 R16 K56 ["DataSharingLicenseTypes"]
      336 GETTABLEKS                       R16 R16 K57 ["RobloxGlobal"]
      338 SETLIST                          R15 R16 1 [1]
      340 MOVE                             R14 R15
      341 JUMP                             ; [+2]
      342 NEWTABLE                         R14 0 0
      344 GETUPVAL                         R16 0
      345 CALL                             R16 0 1
      346 JUMPIFNOT                        R16 ; [+6]
      347 GETUPVAL                         R15 17
      348 GETTABLEKS                       R15 R15 K58 ["isEmissiveFromAttributes"]
      350 MOVE                             R16 R10
      351 CALL                             R15 1 1
      352 JUMP                             ; [+1]
      353 LOADNIL                          R15
      354 GETUPVAL                         R18 18
      355 GETUPVAL                         R19 1
      356 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      358 MOVE                             R20 R4
      359 JUMPIFNOT                        R20 ; [+1]
      360 GETTABLEN                        R20 R4 1
      361 MOVE                             R21 R2
      362 GETUPVAL                         R22 1
      363 GETTABLEKS                       R22 R22 K30 ["name"]
      365 GETUPVAL                         R24 1
      366 GETTABLEKS                       R24 R24 K31 ["description"]
      368 ORK                              R23 R24 K38 [""]
      369 MOVE                             R24 R8
      370 GETUPVAL                         R25 1
      371 GETTABLEKS                       R25 R25 K43 ["localization"]
      373 MOVE                             R26 R6
      374 MOVE                             R27 R14
      375 GETUPVAL                         R28 1
      376 GETTABLEKS                       R28 R28 K36 ["publishService"]
      378 JUMPIFNOT                        R9 ; [+4]
      379 GETUPVAL                         R29 1
      380 GETTABLEKS                       R29 R29 K33 ["groupId"]
      382 JUMP                             ; [+1]
      383 LOADNIL                          R29
      384 MOVE                             R30 R15
      385 CALL                             R18 12 -1
      386 NAMECALL                         R16 R0 K28 ["dispatch"]
      388 CALL                             R16 -1 0
      389 RETURN                           R0 0
      390 GETUPVAL                         R14 6
      391 GETTABLEKS                       R14 R14 K59 ["isMarketplaceAsset"]
      393 MOVE                             R15 R2
      394 CALL                             R14 1 1
      395 JUMPIFNOT                        R14 ; [+24]
      396 GETUPVAL                         R14 7
      397 MOVE                             R16 R3
      398 NAMECALL                         R14 R14 K25 ["isOverride"]
      400 CALL                             R14 2 1
      401 JUMPIFNOT                        R14 ; [+18]
      402 GETUPVAL                         R16 19
      403 GETUPVAL                         R17 1
      404 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      406 GETUPVAL                         R18 1
      407 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      409 GETTABLEKS                       R19 R2 K45 ["Name"]
      411 MOVE                             R20 R4
      412 GETUPVAL                         R21 1
      413 GETTABLEKS                       R21 R21 K43 ["localization"]
      415 CALL                             R16 5 -1
      416 NAMECALL                         R14 R0 K28 ["dispatch"]
      418 CALL                             R14 -1 0
      419 RETURN                           R0 0
      420 GETUPVAL                         R16 20
      421 DUPTABLE                         R17 K68 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      422 GETUPVAL                         R18 1
      423 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      425 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      427 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      429 GETUPVAL                         R18 1
      430 GETTABLEKS                       R18 R18 K30 ["name"]
      432 SETTABLEKS                       R18 R17 K30 ["name"]
      434 GETUPVAL                         R19 1
      435 GETTABLEKS                       R19 R19 K31 ["description"]
      437 ORK                              R18 R19 K38 [""]
      438 SETTABLEKS                       R18 R17 K31 ["description"]
      440 GETUPVAL                         R18 1
      441 GETTABLEKS                       R18 R18 K60 ["copyOn"]
      443 SETTABLEKS                       R18 R17 K60 ["copyOn"]
      445 GETUPVAL                         R18 1
      446 GETTABLEKS                       R18 R18 K61 ["commentOn"]
      448 SETTABLEKS                       R18 R17 K61 ["commentOn"]
      450 GETUPVAL                         R18 1
      451 GETTABLEKS                       R18 R18 K33 ["groupId"]
      453 SETTABLEKS                       R18 R17 K33 ["groupId"]
      455 SETTABLEKS                       R4 R17 K3 ["instances"]
      457 JUMPIFNOT                        R13 ; [+2]
      458 LOADB                            R18 1
      459 JUMP                             ; [+1]
      460 LOADNIL                          R18
      461 SETTABLEKS                       R18 R17 K62 ["isMarketplaceModelsAsPackagesEnabled"]
      463 GETUPVAL                         R18 1
      464 GETTABLEKS                       R18 R18 K69 ["status"]
      466 SETTABLEKS                       R18 R17 K63 ["saleStatus"]
      468 GETUPVAL                         R18 1
      469 GETTABLEKS                       R18 R18 K64 ["price"]
      471 SETTABLEKS                       R18 R17 K64 ["price"]
      473 GETUPVAL                         R18 1
      474 GETTABLEKS                       R18 R18 K65 ["iconFile"]
      476 SETTABLEKS                       R18 R17 K65 ["iconFile"]
      478 GETUPVAL                         R18 1
      479 GETTABLEKS                       R18 R18 K66 ["assetMediaUpdateData"]
      481 SETTABLEKS                       R18 R17 K66 ["assetMediaUpdateData"]
      483 JUMPIFNOT                        R12 ; [+3]
      484 GETTABLEKS                       R18 R12 K67 ["basePrice"]
      486 JUMP                             ; [+1]
      487 LOADNIL                          R18
      488 SETTABLEKS                       R18 R17 K67 ["basePrice"]
      490 GETUPVAL                         R18 1
      491 GETTABLEKS                       R18 R18 K43 ["localization"]
      493 CALL                             R16 2 -1
      494 NAMECALL                         R14 R0 K28 ["dispatch"]
      496 CALL                             R14 -1 0
      497 RETURN                           R0 0

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
       22 RETURN                           R1 1

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
       41 GETTABLEKS                       R5 R0 K10 ["Src"]
       43 GETTABLEKS                       R5 R5 K14 ["Util"]
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R5 K15 ["AssetConfigUtil"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R5 K16 ["Constants"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R5 K17 ["MetadataType"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K9 [require]
       62 GETTABLEKS                       R10 R5 K18 ["FiatUtil"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K9 [require]
       67 GETTABLEKS                       R11 R5 K19 ["getUserId"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K9 [require]
       72 GETTABLEKS                       R12 R5 K20 ["fixUpPreValidation"]
       74 CALL                             R11 1 1
       75 LOADNIL                          R12
       76 JUMPIFNOT                        R2 ; [+6]
       77 GETIMPORT                        R13 K9 [require]
       79 GETTABLEKS                       R14 R5 K21 ["getIsIXPVariableEnabled"]
       81 CALL                             R13 1 1
       82 MOVE                             R12 R13
       83 GETIMPORT                        R13 K9 [require]
       85 GETTABLEKS                       R14 R0 K10 ["Src"]
       87 GETTABLEKS                       R14 R14 K22 ["Types"]
       89 GETTABLEKS                       R14 R14 K23 ["ConfigTypes"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R14 R0 K10 ["Src"]
       94 GETTABLEKS                       R14 R14 K24 ["Networking"]
       96 GETTABLEKS                       R14 R14 K25 ["Requests"]
       98 GETIMPORT                        R15 K9 [require]
      100 GETTABLEKS                       R16 R14 K26 ["UploadCatalogItemRequest"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K9 [require]
      105 GETTABLEKS                       R17 R14 K27 ["PostUploadAssetRequest"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K9 [require]
      110 GETTABLEKS                       R18 R14 K28 ["PostOverrideAssetRequest"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K9 [require]
      115 GETTABLEKS                       R19 R14 K29 ["PostUploadAnimationRequest"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K9 [require]
      120 GETTABLEKS                       R20 R14 K30 ["PostOverrideAnimationRequest"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K9 [require]
      125 GETTABLEKS                       R21 R14 K31 ["UGCBundleUploadRequest"]
      127 CALL                             R20 1 1
      128 GETIMPORT                        R21 K9 [require]
      130 GETTABLEKS                       R22 R14 K32 ["UGCAccessoryUploadRequest"]
      132 CALL                             R21 1 1
      133 GETIMPORT                        R22 K9 [require]
      135 GETTABLEKS                       R23 R14 K33 ["AvatarItemUpdateUploadRequest"]
      137 CALL                             R22 1 1
      138 DUPCLOSURE                       R23 K34 [PROTO_0]
      139 DUPCLOSURE                       R24 K35 [PROTO_1]
      140 CAPTURE                          VAL R11
      141 NEWCLOSURE                       R25 P2
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R2
      146 CAPTURE                          REF R12
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R24
      154 CAPTURE                          VAL R22
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R16
      162 CLOSEUPVALS                      R12
      163 RETURN                           R25 1
