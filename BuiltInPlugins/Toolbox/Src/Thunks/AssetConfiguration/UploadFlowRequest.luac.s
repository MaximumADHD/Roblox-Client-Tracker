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
       26 GETUPVAL                         R11 1
       27 CALL                             R11 0 1
       28 JUMPIFNOT                        R11 ; [+3]
       29 GETTABLEKS                       R10 R1 K9 ["specialAttributes"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R10
       33 GETTABLEKS                       R11 R1 K10 ["idToFiatProductMap"]
       35 JUMPIF                           R11 ; [+2]
       36 NEWTABLE                         R11 0 0
       38 GETUPVAL                         R14 2
       39 GETTABLEKS                       R14 R14 K11 ["assetId"]
       41 GETTABLE                         R13 R11 R14
       42 JUMPIFNOT                        R13 ; [+5]
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R13 R13 K11 ["assetId"]
       46 GETTABLE                         R12 R11 R13
       47 JUMP                             ; [+4]
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R12 R12 K12 ["getDefaultFiatProduct"]
       51 CALL                             R12 0 1
       52 GETUPVAL                         R13 4
       53 JUMPIF                           R13 ; [+9]
       54 GETUPVAL                         R13 5
       55 JUMPIFNOT                        R13 ; [+7]
       56 GETUPVAL                         R13 6
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K13 ["ixp"]
       60 LOADK                            R15 K14 ["MarketplaceModelsAsPackages"]
       61 LOADK                            R16 K15 ["MarketplaceModelsAsPackagesEnabled"]
       62 CALL                             R13 3 1
       63 GETUPVAL                         R14 7
       64 CALL                             R14 0 1
       65 JUMPIFNOT                        R14 ; [+21]
       66 GETUPVAL                         R14 8
       67 GETTABLEKS                       R14 R14 K16 ["isMakeupAsset"]
       69 MOVE                             R15 R2
       70 CALL                             R14 1 1
       71 JUMPIFNOT                        R14 ; [+15]
       72 GETUPVAL                         R14 2
       73 GETTABLEKS                       R14 R14 K17 ["selectedColor"]
       75 JUMPIFNOT                        R14 ; [+11]
       76 JUMPIFNOT                        R4 ; [+10]
       77 GETTABLEN                        R14 R4 1
       78 JUMPIFNOT                        R14 ; [+8]
       79 GETUPVAL                         R14 8
       80 GETTABLEKS                       R14 R14 K18 ["addMakeupThumbnailConfiguration"]
       82 GETTABLEN                        R15 R4 1
       83 GETUPVAL                         R16 2
       84 GETTABLEKS                       R16 R16 K17 ["selectedColor"]
       86 CALL                             R14 2 0
       87 GETIMPORT                        R14 K22 [Enum.AssetType.Animation]
       89 JUMPIFEQ                         R2 R14 ; [+5]
       91 GETIMPORT                        R14 K24 [Enum.AssetType.EmoteAnimation]
       93 JUMPIFNOTEQ                      R2 R14 ; [+63]
       95 GETUPVAL                         R14 9
       96 MOVE                             R16 R3
       97 NAMECALL                         R14 R14 K25 ["isOverride"]
       99 CALL                             R14 2 1
      100 JUMPIFNOT                        R14 ; [+13]
      101 GETUPVAL                         R16 10
      102 GETUPVAL                         R17 2
      103 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      105 GETUPVAL                         R18 2
      106 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      108 MOVE                             R19 R4
      109 CALL                             R16 3 -1
      110 NAMECALL                         R14 R0 K28 ["dispatch"]
      112 CALL                             R14 -1 0
      113 RETURN                           R0 0
      114 GETUPVAL                         R16 11
      115 DUPTABLE                         R17 K37 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
      116 GETUPVAL                         R18 2
      117 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      119 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      121 GETUPVAL                         R18 2
      122 GETTABLEKS                       R18 R18 K30 ["name"]
      124 SETTABLEKS                       R18 R17 K30 ["name"]
      126 GETUPVAL                         R19 2
      127 GETTABLEKS                       R19 R19 K31 ["description"]
      129 ORK                              R18 R19 K38 [""]
      130 SETTABLEKS                       R18 R17 K31 ["description"]
      132 GETUPVAL                         R18 12
      133 CALL                             R18 0 1
      134 SETTABLEKS                       R18 R17 K32 ["userId"]
      136 GETUPVAL                         R18 2
      137 GETTABLEKS                       R18 R18 K33 ["groupId"]
      139 SETTABLEKS                       R18 R17 K33 ["groupId"]
      141 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      143 SETTABLEKS                       R6 R17 K34 ["expectedPrice"]
      145 SETTABLEKS                       R4 R17 K35 ["instance"]
      147 GETUPVAL                         R18 2
      148 GETTABLEKS                       R18 R18 K36 ["publishService"]
      150 SETTABLEKS                       R18 R17 K36 ["publishService"]
      152 CALL                             R16 1 -1
      153 NAMECALL                         R14 R0 K28 ["dispatch"]
      155 CALL                             R14 -1 0
      156 RETURN                           R0 0
      157 GETUPVAL                         R14 8
      158 GETTABLEKS                       R14 R14 K39 ["isCatalogAsset"]
      160 MOVE                             R15 R2
      161 CALL                             R14 1 1
      162 JUMPIFNOT                        R14 ; [+160]
      163 GETUPVAL                         R14 13
      164 CALL                             R14 0 1
      165 JUMPIFNOT                        R14 ; [+68]
      166 GETUPVAL                         R14 8
      167 GETTABLEKS                       R14 R14 K40 ["isAvatarItemUpdateSupported"]
      169 MOVE                             R15 R2
      170 CALL                             R14 1 1
      171 JUMPIFNOT                        R14 ; [+62]
      172 GETUPVAL                         R14 9
      173 MOVE                             R16 R3
      174 NAMECALL                         R14 R14 K25 ["isOverride"]
      176 CALL                             R14 2 1
      177 JUMPIFNOT                        R14 ; [+56]
      178 GETUPVAL                         R14 2
      179 GETTABLEKS                       R14 R14 K27 ["overrideAssetId"]
      181 JUMPIFNOT                        R14 ; [+52]
      182 GETUPVAL                         R14 14
      183 MOVE                             R15 R4
      184 CALL                             R14 1 1
      185 GETUPVAL                         R17 15
      186 DUPTABLE                         R18 K44 [{"networkInterface", "name", "description", "assetTypeEnum", "instances", "groupId", "originalAssetId", "dataSharingLicenseTypes", "localization", "uploadFee"}]
      187 GETUPVAL                         R19 2
      188 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      190 SETTABLEKS                       R19 R18 K26 ["networkInterface"]
      192 GETUPVAL                         R19 2
      193 GETTABLEKS                       R19 R19 K30 ["name"]
      195 SETTABLEKS                       R19 R18 K30 ["name"]
      197 GETUPVAL                         R20 2
      198 GETTABLEKS                       R20 R20 K31 ["description"]
      200 ORK                              R19 R20 K38 [""]
      201 SETTABLEKS                       R19 R18 K31 ["description"]
      203 SETTABLEKS                       R2 R18 K1 ["assetTypeEnum"]
      205 SETTABLEKS                       R14 R18 K3 ["instances"]
      207 GETUPVAL                         R19 2
      208 GETTABLEKS                       R19 R19 K33 ["groupId"]
      210 SETTABLEKS                       R19 R18 K33 ["groupId"]
      212 GETUPVAL                         R19 2
      213 GETTABLEKS                       R19 R19 K27 ["overrideAssetId"]
      215 SETTABLEKS                       R19 R18 K41 ["originalAssetId"]
      217 GETUPVAL                         R19 2
      218 GETTABLEKS                       R19 R19 K42 ["dataSharingLicenseTypes"]
      220 SETTABLEKS                       R19 R18 K42 ["dataSharingLicenseTypes"]
      222 GETUPVAL                         R19 2
      223 GETTABLEKS                       R19 R19 K43 ["localization"]
      225 SETTABLEKS                       R19 R18 K43 ["localization"]
      227 SETTABLEKS                       R6 R18 K5 ["uploadFee"]
      229 CALL                             R17 1 -1
      230 NAMECALL                         R15 R0 K28 ["dispatch"]
      232 CALL                             R15 -1 0
      233 RETURN                           R0 0
      234 MOVE                             R15 R7
      235 JUMPIFNOT                        R15 ; [+5]
      236 MOVE                             R15 R2
      237 JUMPIFNOT                        R15 ; [+3]
      238 GETTABLEKS                       R16 R2 K45 ["Name"]
      240 GETTABLE                         R15 R7 R16
      241 MOVE                             R16 R15
      242 JUMPIFNOT                        R16 ; [+2]
      243 GETTABLEKS                       R16 R15 K46 ["allowedFileExtensions"]
      245 MOVE                             R17 R16
      246 JUMPIFNOT                        R17 ; [+6]
      247 LOADB                            R17 0
      248 LENGTH                           R18 R16
      249 LOADN                            R19 0
      250 JUMPIFNOTLT                      R19 R18 ; [+2]
      252 GETTABLEN                        R17 R16 1
      253 JUMPIFNOT                        R17 ; [+8]
      254 GETIMPORT                        R18 K49 [string.gsub]
      256 MOVE                             R19 R17
      257 LOADK                            R20 K50 ["^%."]
      258 LOADK                            R21 K38 [""]
      259 CALL                             R18 3 1
      260 MOVE                             R14 R18
      261 JUMPIF                           R14 ; [+1]
      262 LOADK                            R14 K51 ["rbxm"]
      263 JUMPIFNOT                        R5 ; [+34]
      264 GETUPVAL                         R15 14
      265 MOVE                             R16 R4
      266 CALL                             R15 1 1
      267 GETUPVAL                         R18 16
      268 GETUPVAL                         R19 2
      269 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      271 GETUPVAL                         R20 2
      272 GETTABLEKS                       R20 R20 K30 ["name"]
      274 GETUPVAL                         R22 2
      275 GETTABLEKS                       R22 R22 K31 ["description"]
      277 ORK                              R21 R22 K38 [""]
      278 MOVE                             R22 R2
      279 MOVE                             R23 R15
      280 GETUPVAL                         R24 2
      281 GETTABLEKS                       R24 R24 K33 ["groupId"]
      283 GETUPVAL                         R25 2
      284 GETTABLEKS                       R25 R25 K42 ["dataSharingLicenseTypes"]
      286 GETUPVAL                         R26 2
      287 GETTABLEKS                       R26 R26 K43 ["localization"]
      289 MOVE                             R27 R6
      290 GETUPVAL                         R28 2
      291 GETTABLEKS                       R28 R28 K52 ["publishOnApprovalCreationContext"]
      293 CALL                             R18 10 -1
      294 NAMECALL                         R16 R0 K28 ["dispatch"]
      296 CALL                             R16 -1 0
      297 RETURN                           R0 0
      298 GETUPVAL                         R17 17
      299 GETUPVAL                         R18 2
      300 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      302 GETUPVAL                         R19 2
      303 GETTABLEKS                       R19 R19 K30 ["name"]
      305 MOVE                             R20 R14
      306 GETUPVAL                         R22 2
      307 GETTABLEKS                       R22 R22 K31 ["description"]
      309 ORK                              R21 R22 K38 [""]
      310 MOVE                             R22 R2
      311 MOVE                             R23 R4
      312 GETUPVAL                         R24 2
      313 GETTABLEKS                       R24 R24 K42 ["dataSharingLicenseTypes"]
      315 GETUPVAL                         R25 2
      316 GETTABLEKS                       R25 R25 K43 ["localization"]
      318 CALL                             R17 8 -1
      319 NAMECALL                         R15 R0 K28 ["dispatch"]
      321 CALL                             R15 -1 0
      322 RETURN                           R0 0
      323 GETUPVAL                         R14 8
      324 GETTABLEKS                       R14 R14 K53 ["isUGCBundleType"]
      326 MOVE                             R15 R2
      327 CALL                             R14 1 1
      328 JUMPIFNOT                        R14 ; [+68]
      329 LOADNIL                          R14
      330 GETUPVAL                         R15 2
      331 GETTABLEKS                       R15 R15 K54 ["dataSharingEnabled"]
      333 JUMPIFNOT                        R15 ; [+17]
      334 GETUPVAL                         R15 2
      335 GETTABLEKS                       R15 R15 K55 ["dataSharingToggled"]
      337 JUMPIFNOT                        R15 ; [+11]
      338 NEWTABLE                         R15 0 1
      340 GETUPVAL                         R16 18
      341 GETTABLEKS                       R16 R16 K56 ["DataSharingLicenseTypes"]
      343 GETTABLEKS                       R16 R16 K57 ["RobloxGlobal"]
      345 SETLIST                          R15 R16 1 [1]
      347 MOVE                             R14 R15
      348 JUMP                             ; [+2]
      349 NEWTABLE                         R14 0 0
      351 GETUPVAL                         R16 1
      352 CALL                             R16 0 1
      353 JUMPIFNOT                        R16 ; [+6]
      354 GETUPVAL                         R15 19
      355 GETTABLEKS                       R15 R15 K58 ["isEmissiveFromAttributes"]
      357 MOVE                             R16 R10
      358 CALL                             R15 1 1
      359 JUMP                             ; [+1]
      360 LOADNIL                          R15
      361 GETUPVAL                         R18 20
      362 GETUPVAL                         R19 2
      363 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      365 MOVE                             R20 R4
      366 JUMPIFNOT                        R20 ; [+1]
      367 GETTABLEN                        R20 R4 1
      368 MOVE                             R21 R2
      369 GETUPVAL                         R22 2
      370 GETTABLEKS                       R22 R22 K30 ["name"]
      372 GETUPVAL                         R24 2
      373 GETTABLEKS                       R24 R24 K31 ["description"]
      375 ORK                              R23 R24 K38 [""]
      376 MOVE                             R24 R8
      377 GETUPVAL                         R25 2
      378 GETTABLEKS                       R25 R25 K43 ["localization"]
      380 MOVE                             R26 R6
      381 MOVE                             R27 R14
      382 GETUPVAL                         R28 2
      383 GETTABLEKS                       R28 R28 K36 ["publishService"]
      385 JUMPIFNOT                        R9 ; [+4]
      386 GETUPVAL                         R29 2
      387 GETTABLEKS                       R29 R29 K33 ["groupId"]
      389 JUMP                             ; [+1]
      390 LOADNIL                          R29
      391 MOVE                             R30 R15
      392 CALL                             R18 12 -1
      393 NAMECALL                         R16 R0 K28 ["dispatch"]
      395 CALL                             R16 -1 0
      396 RETURN                           R0 0
      397 GETUPVAL                         R14 8
      398 GETTABLEKS                       R14 R14 K59 ["isMarketplaceAsset"]
      400 MOVE                             R15 R2
      401 CALL                             R14 1 1
      402 JUMPIFNOT                        R14 ; [+29]
      403 GETUPVAL                         R14 9
      404 MOVE                             R16 R3
      405 NAMECALL                         R14 R14 K25 ["isOverride"]
      407 CALL                             R14 2 1
      408 JUMPIFNOT                        R14 ; [+23]
      409 GETUPVAL                         R16 21
      410 GETUPVAL                         R17 2
      411 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      413 GETUPVAL                         R18 2
      414 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      416 GETTABLEKS                       R19 R2 K45 ["Name"]
      418 MOVE                             R20 R4
      419 GETUPVAL                         R22 22
      420 CALL                             R22 0 1
      421 JUMPIFNOT                        R22 ; [+4]
      422 GETUPVAL                         R21 2
      423 GETTABLEKS                       R21 R21 K43 ["localization"]
      425 JUMP                             ; [+1]
      426 LOADNIL                          R21
      427 CALL                             R16 5 -1
      428 NAMECALL                         R14 R0 K28 ["dispatch"]
      430 CALL                             R14 -1 0
      431 RETURN                           R0 0
      432 GETUPVAL                         R16 23
      433 DUPTABLE                         R17 K68 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      434 GETUPVAL                         R18 2
      435 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      437 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      439 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      441 GETUPVAL                         R18 2
      442 GETTABLEKS                       R18 R18 K30 ["name"]
      444 SETTABLEKS                       R18 R17 K30 ["name"]
      446 GETUPVAL                         R19 2
      447 GETTABLEKS                       R19 R19 K31 ["description"]
      449 ORK                              R18 R19 K38 [""]
      450 SETTABLEKS                       R18 R17 K31 ["description"]
      452 GETUPVAL                         R18 2
      453 GETTABLEKS                       R18 R18 K60 ["copyOn"]
      455 SETTABLEKS                       R18 R17 K60 ["copyOn"]
      457 GETUPVAL                         R18 2
      458 GETTABLEKS                       R18 R18 K61 ["commentOn"]
      460 SETTABLEKS                       R18 R17 K61 ["commentOn"]
      462 GETUPVAL                         R18 2
      463 GETTABLEKS                       R18 R18 K33 ["groupId"]
      465 SETTABLEKS                       R18 R17 K33 ["groupId"]
      467 SETTABLEKS                       R4 R17 K3 ["instances"]
      469 JUMPIFNOT                        R13 ; [+2]
      470 LOADB                            R18 1
      471 JUMP                             ; [+1]
      472 LOADNIL                          R18
      473 SETTABLEKS                       R18 R17 K62 ["isMarketplaceModelsAsPackagesEnabled"]
      475 GETUPVAL                         R18 2
      476 GETTABLEKS                       R18 R18 K69 ["status"]
      478 SETTABLEKS                       R18 R17 K63 ["saleStatus"]
      480 GETUPVAL                         R18 2
      481 GETTABLEKS                       R18 R18 K64 ["price"]
      483 SETTABLEKS                       R18 R17 K64 ["price"]
      485 GETUPVAL                         R18 2
      486 GETTABLEKS                       R18 R18 K65 ["iconFile"]
      488 SETTABLEKS                       R18 R17 K65 ["iconFile"]
      490 GETUPVAL                         R18 2
      491 GETTABLEKS                       R18 R18 K66 ["assetMediaUpdateData"]
      493 SETTABLEKS                       R18 R17 K66 ["assetMediaUpdateData"]
      495 JUMPIFNOT                        R12 ; [+3]
      496 GETTABLEKS                       R18 R12 K67 ["basePrice"]
      498 JUMP                             ; [+1]
      499 LOADNIL                          R18
      500 SETTABLEKS                       R18 R17 K67 ["basePrice"]
      502 GETUPVAL                         R19 22
      503 CALL                             R19 0 1
      504 JUMPIFNOT                        R19 ; [+4]
      505 GETUPVAL                         R18 2
      506 GETTABLEKS                       R18 R18 K43 ["localization"]
      508 JUMP                             ; [+1]
      509 LOADNIL                          R18
      510 CALL                             R16 2 -1
      511 NAMECALL                         R14 R0 K28 ["dispatch"]
      513 CALL                             R14 -1 0
      514 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
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
       24 CAPTURE                          UPVAL U22
       25 RETURN                           R1 1

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
       52 GETIMPORT                        R6 K9 [require]
       54 GETTABLEKS                       R7 R0 K10 ["Src"]
       56 GETTABLEKS                       R7 R7 K11 ["Flags"]
       58 GETTABLEKS                       R7 R7 K17 ["getFFlagEnableUpdateAvatarItem"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K9 [require]
       63 GETTABLEKS                       R8 R0 K10 ["Src"]
       65 GETTABLEKS                       R8 R8 K11 ["Flags"]
       67 GETTABLEKS                       R8 R8 K18 ["getFFlagToolboxDynamicUploadFee"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R0 K10 ["Src"]
       72 GETTABLEKS                       R8 R8 K14 ["Util"]
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R8 K19 ["AssetConfigUtil"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R8 K20 ["Constants"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R8 K21 ["MetadataType"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R8 K22 ["FiatUtil"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R8 K23 ["getUserId"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R15 R8 K24 ["fixUpPreValidation"]
      103 CALL                             R14 1 1
      104 LOADNIL                          R15
      105 JUMPIFNOT                        R2 ; [+6]
      106 GETIMPORT                        R16 K9 [require]
      108 GETTABLEKS                       R17 R8 K25 ["getIsIXPVariableEnabled"]
      110 CALL                             R16 1 1
      111 MOVE                             R15 R16
      112 GETIMPORT                        R16 K9 [require]
      114 GETTABLEKS                       R17 R0 K10 ["Src"]
      116 GETTABLEKS                       R17 R17 K26 ["Types"]
      118 GETTABLEKS                       R17 R17 K27 ["ConfigTypes"]
      120 CALL                             R16 1 1
      121 GETTABLEKS                       R17 R0 K10 ["Src"]
      123 GETTABLEKS                       R17 R17 K28 ["Networking"]
      125 GETTABLEKS                       R17 R17 K29 ["Requests"]
      127 GETIMPORT                        R18 K9 [require]
      129 GETTABLEKS                       R19 R17 K30 ["UploadCatalogItemRequest"]
      131 CALL                             R18 1 1
      132 GETIMPORT                        R19 K9 [require]
      134 GETTABLEKS                       R20 R17 K31 ["PostUploadAssetRequest"]
      136 CALL                             R19 1 1
      137 GETIMPORT                        R20 K9 [require]
      139 GETTABLEKS                       R21 R17 K32 ["PostOverrideAssetRequest"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K9 [require]
      144 GETTABLEKS                       R22 R17 K33 ["PostUploadAnimationRequest"]
      146 CALL                             R21 1 1
      147 GETIMPORT                        R22 K9 [require]
      149 GETTABLEKS                       R23 R17 K34 ["PostOverrideAnimationRequest"]
      151 CALL                             R22 1 1
      152 GETIMPORT                        R23 K9 [require]
      154 GETTABLEKS                       R24 R17 K35 ["UGCBundleUploadRequest"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K9 [require]
      159 GETTABLEKS                       R25 R17 K36 ["UGCAccessoryUploadRequest"]
      161 CALL                             R24 1 1
      162 GETIMPORT                        R25 K9 [require]
      164 GETTABLEKS                       R26 R17 K37 ["AvatarItemUpdateUploadRequest"]
      166 CALL                             R25 1 1
      167 DUPCLOSURE                       R26 K38 [PROTO_0]
      168 DUPCLOSURE                       R27 K39 [PROTO_1]
      169 CAPTURE                          VAL R14
      170 NEWCLOSURE                       R28 P2
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R2
      176 CAPTURE                          REF R15
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R13
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R25
      186 CAPTURE                          VAL R24
      187 CAPTURE                          VAL R18
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R19
      194 CLOSEUPVALS                      R15
      195 RETURN                           R28 1
