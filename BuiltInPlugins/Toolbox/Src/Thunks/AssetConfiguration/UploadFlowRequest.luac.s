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
       22 GETTABLEKS                       R10 R1 K9 ["specialAttributes"]
       24 GETTABLEKS                       R11 R1 K10 ["idToFiatProductMap"]
       26 JUMPIF                           R11 ; [+2]
       27 NEWTABLE                         R11 0 0
       29 GETUPVAL                         R14 0
       30 GETTABLEKS                       R14 R14 K11 ["assetId"]
       32 GETTABLE                         R13 R11 R14
       33 JUMPIFNOT                        R13 ; [+5]
       34 GETUPVAL                         R13 0
       35 GETTABLEKS                       R13 R13 K11 ["assetId"]
       37 GETTABLE                         R12 R11 R13
       38 JUMP                             ; [+4]
       39 GETUPVAL                         R12 1
       40 GETTABLEKS                       R12 R12 K12 ["getDefaultFiatProduct"]
       42 CALL                             R12 0 1
       43 GETUPVAL                         R13 2
       44 JUMPIF                           R13 ; [+9]
       45 GETUPVAL                         R13 3
       46 JUMPIFNOT                        R13 ; [+7]
       47 GETUPVAL                         R13 4
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K13 ["ixp"]
       51 LOADK                            R15 K14 ["MarketplaceModelsAsPackages"]
       52 LOADK                            R16 K15 ["MarketplaceModelsAsPackagesEnabled"]
       53 CALL                             R13 3 1
       54 GETUPVAL                         R14 5
       55 GETTABLEKS                       R14 R14 K16 ["isMakeupAsset"]
       57 MOVE                             R15 R2
       58 CALL                             R14 1 1
       59 JUMPIFNOT                        R14 ; [+15]
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R14 R14 K17 ["selectedColor"]
       63 JUMPIFNOT                        R14 ; [+11]
       64 JUMPIFNOT                        R4 ; [+10]
       65 GETTABLEN                        R14 R4 1
       66 JUMPIFNOT                        R14 ; [+8]
       67 GETUPVAL                         R14 5
       68 GETTABLEKS                       R14 R14 K18 ["addMakeupThumbnailConfiguration"]
       70 GETTABLEN                        R15 R4 1
       71 GETUPVAL                         R16 0
       72 GETTABLEKS                       R16 R16 K17 ["selectedColor"]
       74 CALL                             R14 2 0
       75 GETUPVAL                         R14 6
       76 CALL                             R14 0 1
       77 JUMPIFNOT                        R14 ; [+63]
       78 GETUPVAL                         R14 5
       79 GETTABLEKS                       R14 R14 K19 ["isTextDocumentAsset"]
       81 MOVE                             R15 R2
       82 CALL                             R14 1 1
       83 JUMPIFNOT                        R14 ; [+57]
       84 MOVE                             R14 R4
       85 JUMPIFNOT                        R14 ; [+1]
       86 GETTABLEN                        R14 R4 1
       87 LOADB                            R16 0
       88 JUMPIFEQKNIL                     R14 ; [+5]
       90 LOADK                            R18 K20 ["TextDocument"]
       91 NAMECALL                         R16 R14 K21 ["IsA"]
       93 CALL                             R16 2 1
       94 FASTCALL2K                       ASSERT R16 K22 ; [+4]
       96 LOADK                            R17 K22 ["TextDocument upload requires a TextDocument"]
       97 GETIMPORT                        R15 K24 [assert]
       99 CALL                             R15 2 0
      100 GETUPVAL                         R17 7
      101 DUPTABLE                         R18 K30 [{"name", "description", "groupId", "instance", "overrideAssetId"}]
      102 GETUPVAL                         R19 0
      103 GETTABLEKS                       R19 R19 K25 ["name"]
      105 SETTABLEKS                       R19 R18 K25 ["name"]
      107 GETUPVAL                         R20 0
      108 GETTABLEKS                       R20 R20 K26 ["description"]
      110 ORK                              R19 R20 K31 [""]
      111 SETTABLEKS                       R19 R18 K26 ["description"]
      113 GETUPVAL                         R19 0
      114 GETTABLEKS                       R19 R19 K27 ["groupId"]
      116 SETTABLEKS                       R19 R18 K27 ["groupId"]
      118 SETTABLEKS                       R14 R18 K28 ["instance"]
      120 GETUPVAL                         R20 8
      121 MOVE                             R22 R3
      122 NAMECALL                         R20 R20 K32 ["isOverride"]
      124 CALL                             R20 2 1
      125 JUMPIFNOT                        R20 ; [+4]
      126 GETUPVAL                         R19 0
      127 GETTABLEKS                       R19 R19 K29 ["overrideAssetId"]
      129 JUMP                             ; [+1]
      130 LOADNIL                          R19
      131 SETTABLEKS                       R19 R18 K29 ["overrideAssetId"]
      133 GETUPVAL                         R19 0
      134 GETTABLEKS                       R19 R19 K33 ["localization"]
      136 CALL                             R17 2 -1
      137 NAMECALL                         R15 R0 K34 ["dispatch"]
      139 CALL                             R15 -1 0
      140 RETURN                           R0 0
      141 GETIMPORT                        R14 K38 [Enum.AssetType.Animation]
      143 JUMPIFEQ                         R2 R14 ; [+5]
      145 GETIMPORT                        R14 K40 [Enum.AssetType.EmoteAnimation]
      147 JUMPIFNOTEQ                      R2 R14 ; [+63]
      149 GETUPVAL                         R14 8
      150 MOVE                             R16 R3
      151 NAMECALL                         R14 R14 K32 ["isOverride"]
      153 CALL                             R14 2 1
      154 JUMPIFNOT                        R14 ; [+13]
      155 GETUPVAL                         R16 9
      156 GETUPVAL                         R17 0
      157 GETTABLEKS                       R17 R17 K41 ["networkInterface"]
      159 GETUPVAL                         R18 0
      160 GETTABLEKS                       R18 R18 K29 ["overrideAssetId"]
      162 MOVE                             R19 R4
      163 CALL                             R16 3 -1
      164 NAMECALL                         R14 R0 K34 ["dispatch"]
      166 CALL                             R14 -1 0
      167 RETURN                           R0 0
      168 GETUPVAL                         R16 10
      169 DUPTABLE                         R17 K46 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"], ["publishService"]}]
      170 GETUPVAL                         R18 0
      171 GETTABLEKS                       R18 R18 K41 ["networkInterface"]
      173 SETTABLEKS                       R18 R17 K41 ["networkInterface"]
      175 GETUPVAL                         R18 0
      176 GETTABLEKS                       R18 R18 K25 ["name"]
      178 SETTABLEKS                       R18 R17 K25 ["name"]
      180 GETUPVAL                         R19 0
      181 GETTABLEKS                       R19 R19 K26 ["description"]
      183 ORK                              R18 R19 K31 [""]
      184 SETTABLEKS                       R18 R17 K26 ["description"]
      186 GETUPVAL                         R18 11
      187 CALL                             R18 0 1
      188 SETTABLEKS                       R18 R17 K43 ["userId"]
      190 GETUPVAL                         R18 0
      191 GETTABLEKS                       R18 R18 K27 ["groupId"]
      193 SETTABLEKS                       R18 R17 K27 ["groupId"]
      195 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      197 SETTABLEKS                       R6 R17 K44 ["expectedPrice"]
      199 SETTABLEKS                       R4 R17 K28 ["instance"]
      201 GETUPVAL                         R18 0
      202 GETTABLEKS                       R18 R18 K45 ["publishService"]
      204 SETTABLEKS                       R18 R17 K45 ["publishService"]
      206 CALL                             R16 1 -1
      207 NAMECALL                         R14 R0 K34 ["dispatch"]
      209 CALL                             R14 -1 0
      210 RETURN                           R0 0
      211 GETUPVAL                         R14 5
      212 GETTABLEKS                       R14 R14 K47 ["isCatalogAsset"]
      214 MOVE                             R15 R2
      215 CALL                             R14 1 1
      216 JUMPIFNOT                        R14 ; [+138]
      217 GETUPVAL                         R14 12
      218 CALL                             R14 0 1
      219 JUMPIFNOT                        R14 ; [+68]
      220 GETUPVAL                         R14 5
      221 GETTABLEKS                       R14 R14 K48 ["isAvatarItemUpdateSupported"]
      223 MOVE                             R15 R2
      224 CALL                             R14 1 1
      225 JUMPIFNOT                        R14 ; [+62]
      226 GETUPVAL                         R14 8
      227 MOVE                             R16 R3
      228 NAMECALL                         R14 R14 K32 ["isOverride"]
      230 CALL                             R14 2 1
      231 JUMPIFNOT                        R14 ; [+56]
      232 GETUPVAL                         R14 0
      233 GETTABLEKS                       R14 R14 K29 ["overrideAssetId"]
      235 JUMPIFNOT                        R14 ; [+52]
      236 GETUPVAL                         R14 13
      237 MOVE                             R15 R4
      238 CALL                             R14 1 1
      239 GETUPVAL                         R17 14
      240 DUPTABLE                         R18 K51 [{"networkInterface", "name", "description", "assetTypeEnum", "instances", "groupId", "originalAssetId", "dataSharingLicenseTypes", "localization", "uploadFee"}]
      241 GETUPVAL                         R19 0
      242 GETTABLEKS                       R19 R19 K41 ["networkInterface"]
      244 SETTABLEKS                       R19 R18 K41 ["networkInterface"]
      246 GETUPVAL                         R19 0
      247 GETTABLEKS                       R19 R19 K25 ["name"]
      249 SETTABLEKS                       R19 R18 K25 ["name"]
      251 GETUPVAL                         R20 0
      252 GETTABLEKS                       R20 R20 K26 ["description"]
      254 ORK                              R19 R20 K31 [""]
      255 SETTABLEKS                       R19 R18 K26 ["description"]
      257 SETTABLEKS                       R2 R18 K1 ["assetTypeEnum"]
      259 SETTABLEKS                       R14 R18 K3 ["instances"]
      261 GETUPVAL                         R19 0
      262 GETTABLEKS                       R19 R19 K27 ["groupId"]
      264 SETTABLEKS                       R19 R18 K27 ["groupId"]
      266 GETUPVAL                         R19 0
      267 GETTABLEKS                       R19 R19 K29 ["overrideAssetId"]
      269 SETTABLEKS                       R19 R18 K49 ["originalAssetId"]
      271 GETUPVAL                         R19 0
      272 GETTABLEKS                       R19 R19 K50 ["dataSharingLicenseTypes"]
      274 SETTABLEKS                       R19 R18 K50 ["dataSharingLicenseTypes"]
      276 GETUPVAL                         R19 0
      277 GETTABLEKS                       R19 R19 K33 ["localization"]
      279 SETTABLEKS                       R19 R18 K33 ["localization"]
      281 SETTABLEKS                       R6 R18 K5 ["uploadFee"]
      283 CALL                             R17 1 -1
      284 NAMECALL                         R15 R0 K34 ["dispatch"]
      286 CALL                             R15 -1 0
      287 RETURN                           R0 0
      288 JUMPIFNOT                        R5 ; [+34]
      289 GETUPVAL                         R14 13
      290 MOVE                             R15 R4
      291 CALL                             R14 1 1
      292 GETUPVAL                         R17 15
      293 GETUPVAL                         R18 0
      294 GETTABLEKS                       R18 R18 K41 ["networkInterface"]
      296 GETUPVAL                         R19 0
      297 GETTABLEKS                       R19 R19 K25 ["name"]
      299 GETUPVAL                         R21 0
      300 GETTABLEKS                       R21 R21 K26 ["description"]
      302 ORK                              R20 R21 K31 [""]
      303 MOVE                             R21 R2
      304 MOVE                             R22 R14
      305 GETUPVAL                         R23 0
      306 GETTABLEKS                       R23 R23 K27 ["groupId"]
      308 GETUPVAL                         R24 0
      309 GETTABLEKS                       R24 R24 K50 ["dataSharingLicenseTypes"]
      311 GETUPVAL                         R25 0
      312 GETTABLEKS                       R25 R25 K33 ["localization"]
      314 MOVE                             R26 R6
      315 GETUPVAL                         R27 0
      316 GETTABLEKS                       R27 R27 K52 ["publishOnApprovalCreationContext"]
      318 CALL                             R17 10 -1
      319 NAMECALL                         R15 R0 K34 ["dispatch"]
      321 CALL                             R15 -1 0
      322 RETURN                           R0 0
      323 GETUPVAL                         R14 16
      324 CALL                             R14 0 1
      325 JUMPIF                           R14 ; [+205]
      326 GETUPVAL                         R14 17
      327 MOVE                             R15 R7
      328 MOVE                             R16 R2
      329 CALL                             R14 2 1
      330 GETUPVAL                         R17 18
      331 GETUPVAL                         R18 0
      332 GETTABLEKS                       R18 R18 K41 ["networkInterface"]
      334 GETUPVAL                         R19 0
      335 GETTABLEKS                       R19 R19 K25 ["name"]
      337 MOVE                             R20 R14
      338 GETUPVAL                         R22 0
      339 GETTABLEKS                       R22 R22 K26 ["description"]
      341 ORK                              R21 R22 K31 [""]
      342 MOVE                             R22 R2
      343 MOVE                             R23 R4
      344 GETUPVAL                         R24 0
      345 GETTABLEKS                       R24 R24 K50 ["dataSharingLicenseTypes"]
      347 GETUPVAL                         R25 0
      348 GETTABLEKS                       R25 R25 K33 ["localization"]
      350 CALL                             R17 8 -1
      351 NAMECALL                         R15 R0 K34 ["dispatch"]
      353 CALL                             R15 -1 0
      354 RETURN                           R0 0
      355 GETUPVAL                         R14 5
      356 GETTABLEKS                       R14 R14 K53 ["isUGCBundleType"]
      358 MOVE                             R15 R2
      359 CALL                             R14 1 1
      360 JUMPIFNOT                        R14 ; [+63]
      361 LOADNIL                          R14
      362 GETUPVAL                         R15 0
      363 GETTABLEKS                       R15 R15 K54 ["dataSharingEnabled"]
      365 JUMPIFNOT                        R15 ; [+17]
      366 GETUPVAL                         R15 0
      367 GETTABLEKS                       R15 R15 K55 ["dataSharingToggled"]
      369 JUMPIFNOT                        R15 ; [+11]
      370 NEWTABLE                         R15 0 1
      372 GETUPVAL                         R16 19
      373 GETTABLEKS                       R16 R16 K56 ["DataSharingLicenseTypes"]
      375 GETTABLEKS                       R16 R16 K57 ["RobloxGlobal"]
      377 SETLIST                          R15 R16 1 [1]
      379 MOVE                             R14 R15
      380 JUMP                             ; [+2]
      381 NEWTABLE                         R14 0 0
      383 GETUPVAL                         R15 20
      384 GETTABLEKS                       R15 R15 K58 ["isEmissiveFromAttributes"]
      386 MOVE                             R16 R10
      387 CALL                             R15 1 1
      388 GETUPVAL                         R18 21
      389 GETUPVAL                         R19 0
      390 GETTABLEKS                       R19 R19 K41 ["networkInterface"]
      392 MOVE                             R20 R4
      393 JUMPIFNOT                        R20 ; [+1]
      394 GETTABLEN                        R20 R4 1
      395 MOVE                             R21 R2
      396 GETUPVAL                         R22 0
      397 GETTABLEKS                       R22 R22 K25 ["name"]
      399 GETUPVAL                         R24 0
      400 GETTABLEKS                       R24 R24 K26 ["description"]
      402 ORK                              R23 R24 K31 [""]
      403 MOVE                             R24 R8
      404 GETUPVAL                         R25 0
      405 GETTABLEKS                       R25 R25 K33 ["localization"]
      407 MOVE                             R26 R6
      408 MOVE                             R27 R14
      409 GETUPVAL                         R28 0
      410 GETTABLEKS                       R28 R28 K45 ["publishService"]
      412 JUMPIFNOT                        R9 ; [+4]
      413 GETUPVAL                         R29 0
      414 GETTABLEKS                       R29 R29 K27 ["groupId"]
      416 JUMP                             ; [+1]
      417 LOADNIL                          R29
      418 MOVE                             R30 R15
      419 CALL                             R18 12 -1
      420 NAMECALL                         R16 R0 K34 ["dispatch"]
      422 CALL                             R16 -1 0
      423 RETURN                           R0 0
      424 GETUPVAL                         R14 5
      425 GETTABLEKS                       R14 R14 K59 ["isMarketplaceAsset"]
      427 MOVE                             R15 R2
      428 CALL                             R14 1 1
      429 JUMPIFNOT                        R14 ; [+24]
      430 GETUPVAL                         R14 8
      431 MOVE                             R16 R3
      432 NAMECALL                         R14 R14 K32 ["isOverride"]
      434 CALL                             R14 2 1
      435 JUMPIFNOT                        R14 ; [+18]
      436 GETUPVAL                         R16 22
      437 GETUPVAL                         R17 0
      438 GETTABLEKS                       R17 R17 K41 ["networkInterface"]
      440 GETUPVAL                         R18 0
      441 GETTABLEKS                       R18 R18 K29 ["overrideAssetId"]
      443 GETTABLEKS                       R19 R2 K60 ["Name"]
      445 MOVE                             R20 R4
      446 GETUPVAL                         R21 0
      447 GETTABLEKS                       R21 R21 K33 ["localization"]
      449 CALL                             R16 5 -1
      450 NAMECALL                         R14 R0 K34 ["dispatch"]
      452 CALL                             R14 -1 0
      453 RETURN                           R0 0
      454 GETUPVAL                         R16 23
      455 DUPTABLE                         R17 K69 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      456 GETUPVAL                         R18 0
      457 GETTABLEKS                       R18 R18 K41 ["networkInterface"]
      459 SETTABLEKS                       R18 R17 K41 ["networkInterface"]
      461 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      463 GETUPVAL                         R18 0
      464 GETTABLEKS                       R18 R18 K25 ["name"]
      466 SETTABLEKS                       R18 R17 K25 ["name"]
      468 GETUPVAL                         R19 0
      469 GETTABLEKS                       R19 R19 K26 ["description"]
      471 ORK                              R18 R19 K31 [""]
      472 SETTABLEKS                       R18 R17 K26 ["description"]
      474 GETUPVAL                         R18 0
      475 GETTABLEKS                       R18 R18 K61 ["copyOn"]
      477 SETTABLEKS                       R18 R17 K61 ["copyOn"]
      479 GETUPVAL                         R18 0
      480 GETTABLEKS                       R18 R18 K62 ["commentOn"]
      482 SETTABLEKS                       R18 R17 K62 ["commentOn"]
      484 GETUPVAL                         R18 0
      485 GETTABLEKS                       R18 R18 K27 ["groupId"]
      487 SETTABLEKS                       R18 R17 K27 ["groupId"]
      489 SETTABLEKS                       R4 R17 K3 ["instances"]
      491 JUMPIFNOT                        R13 ; [+2]
      492 LOADB                            R18 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R18
      495 SETTABLEKS                       R18 R17 K63 ["isMarketplaceModelsAsPackagesEnabled"]
      497 GETUPVAL                         R18 0
      498 GETTABLEKS                       R18 R18 K70 ["status"]
      500 SETTABLEKS                       R18 R17 K64 ["saleStatus"]
      502 GETUPVAL                         R18 0
      503 GETTABLEKS                       R18 R18 K65 ["price"]
      505 SETTABLEKS                       R18 R17 K65 ["price"]
      507 GETUPVAL                         R18 0
      508 GETTABLEKS                       R18 R18 K66 ["iconFile"]
      510 SETTABLEKS                       R18 R17 K66 ["iconFile"]
      512 GETUPVAL                         R18 0
      513 GETTABLEKS                       R18 R18 K67 ["assetMediaUpdateData"]
      515 SETTABLEKS                       R18 R17 K67 ["assetMediaUpdateData"]
      517 JUMPIFNOT                        R12 ; [+3]
      518 GETTABLEKS                       R18 R12 K68 ["basePrice"]
      520 JUMP                             ; [+1]
      521 LOADNIL                          R18
      522 SETTABLEKS                       R18 R17 K68 ["basePrice"]
      524 GETUPVAL                         R18 0
      525 GETTABLEKS                       R18 R18 K33 ["localization"]
      527 CALL                             R16 2 -1
      528 NAMECALL                         R14 R0 K34 ["dispatch"]
      530 CALL                             R14 -1 0
      531 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
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
       29 GETTABLEKS                       R4 R4 K12 ["getFFlagEnableUpdateAvatarItem"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K9 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K9 [require]
       43 GETTABLEKS                       R6 R0 K10 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Flags"]
       47 GETTABLEKS                       R6 R6 K14 ["getEngineFeatureStudioTextDocumentUploadAsset"]
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
      108 MOVE                             R17 R4
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
      124 GETTABLEKS                       R19 R15 K29 ["PostUploadTextDocumentRequest"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K9 [require]
      129 GETTABLEKS                       R20 R15 K30 ["PostOverrideAssetRequest"]
      131 CALL                             R19 1 1
      132 GETIMPORT                        R20 K9 [require]
      134 GETTABLEKS                       R21 R15 K31 ["PostUploadAnimationRequest"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K9 [require]
      139 GETTABLEKS                       R22 R15 K32 ["PostOverrideAnimationRequest"]
      141 CALL                             R21 1 1
      142 GETIMPORT                        R22 K9 [require]
      144 GETTABLEKS                       R23 R15 K33 ["UGCBundleUploadRequest"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K9 [require]
      149 GETTABLEKS                       R24 R15 K34 ["UGCAccessoryUploadRequest"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K9 [require]
      154 GETTABLEKS                       R25 R15 K35 ["AvatarItemUpdateUploadRequest"]
      156 CALL                             R24 1 1
      157 LOADNIL                          R25
      158 MOVE                             R26 R4
      159 CALL                             R26 0 1
      160 JUMPIF                           R26 ; [+1]
      161 DUPCLOSURE                       R25 K36 [PROTO_0]
      162 DUPCLOSURE                       R26 K37 [PROTO_1]
      163 CAPTURE                          VAL R12
      164 NEWCLOSURE                       R27 P2
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R2
      168 CAPTURE                          REF R13
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R4
      181 CAPTURE                          REF R25
      182 CAPTURE                          REF R16
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R17
      188 CLOSEUPVALS                      R13
      189 RETURN                           R27 1
