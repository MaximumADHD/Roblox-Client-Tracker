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
       93 JUMPIFNOTEQ                      R2 R14 ; [+58]
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
      115 DUPTABLE                         R17 K36 [{["networkInterface"], ["assetId"] = 0, ["name"], ["description"], ["userId"], ["groupId"], ["assetTypeEnum"], ["expectedPrice"], ["instance"]}]
      116 GETUPVAL                         R18 2
      117 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      119 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      121 GETUPVAL                         R18 2
      122 GETTABLEKS                       R18 R18 K30 ["name"]
      124 SETTABLEKS                       R18 R17 K30 ["name"]
      126 GETUPVAL                         R19 2
      127 GETTABLEKS                       R19 R19 K31 ["description"]
      129 ORK                              R18 R19 K37 [""]
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
      147 CALL                             R16 1 -1
      148 NAMECALL                         R14 R0 K28 ["dispatch"]
      150 CALL                             R14 -1 0
      151 RETURN                           R0 0
      152 GETUPVAL                         R14 8
      153 GETTABLEKS                       R14 R14 K38 ["isCatalogAsset"]
      155 MOVE                             R15 R2
      156 CALL                             R14 1 1
      157 JUMPIFNOT                        R14 ; [+101]
      158 MOVE                             R15 R7
      159 JUMPIFNOT                        R15 ; [+5]
      160 MOVE                             R15 R2
      161 JUMPIFNOT                        R15 ; [+3]
      162 GETTABLEKS                       R16 R2 K39 ["Name"]
      164 GETTABLE                         R15 R7 R16
      165 MOVE                             R16 R15
      166 JUMPIFNOT                        R16 ; [+2]
      167 GETTABLEKS                       R16 R15 K40 ["allowedFileExtensions"]
      169 MOVE                             R17 R16
      170 JUMPIFNOT                        R17 ; [+6]
      171 LOADB                            R17 0
      172 LENGTH                           R18 R16
      173 LOADN                            R19 0
      174 JUMPIFNOTLT                      R19 R18 ; [+2]
      176 GETTABLEN                        R17 R16 1
      177 JUMPIFNOT                        R17 ; [+8]
      178 GETIMPORT                        R18 K43 [string.gsub]
      180 MOVE                             R19 R17
      181 LOADK                            R20 K44 ["^%."]
      182 LOADK                            R21 K37 [""]
      183 CALL                             R18 3 1
      184 MOVE                             R14 R18
      185 JUMPIF                           R14 ; [+1]
      186 LOADK                            R14 K45 ["rbxm"]
      187 JUMPIFNOT                        R5 ; [+46]
      188 NEWTABLE                         R15 0 0
      190 MOVE                             R16 R4
      191 JUMPIF                           R16 ; [+2]
      192 NEWTABLE                         R16 0 0
      194 LOADNIL                          R17
      195 LOADNIL                          R18
      196 FORGPREP                         R16
      197 NAMECALL                         R21 R20 K46 ["Clone"]
      199 CALL                             R21 1 1
      200 GETUPVAL                         R22 13
      201 MOVE                             R23 R21
      202 CALL                             R22 1 0
      203 SETTABLE                         R21 R15 R19
      204 FORGLOOP                         R16 2 ; [-8]
      206 GETUPVAL                         R18 14
      207 GETUPVAL                         R19 2
      208 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      210 GETUPVAL                         R20 2
      211 GETTABLEKS                       R20 R20 K30 ["name"]
      213 GETUPVAL                         R22 2
      214 GETTABLEKS                       R22 R22 K31 ["description"]
      216 ORK                              R21 R22 K37 [""]
      217 MOVE                             R22 R2
      218 MOVE                             R23 R15
      219 GETUPVAL                         R24 2
      220 GETTABLEKS                       R24 R24 K33 ["groupId"]
      222 GETUPVAL                         R25 2
      223 GETTABLEKS                       R25 R25 K47 ["dataSharingLicenseTypes"]
      225 GETUPVAL                         R26 2
      226 GETTABLEKS                       R26 R26 K48 ["localization"]
      228 MOVE                             R27 R6
      229 CALL                             R18 9 -1
      230 NAMECALL                         R16 R0 K28 ["dispatch"]
      232 CALL                             R16 -1 0
      233 RETURN                           R0 0
      234 GETUPVAL                         R17 15
      235 GETUPVAL                         R18 2
      236 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      238 GETUPVAL                         R19 2
      239 GETTABLEKS                       R19 R19 K30 ["name"]
      241 MOVE                             R20 R14
      242 GETUPVAL                         R22 2
      243 GETTABLEKS                       R22 R22 K31 ["description"]
      245 ORK                              R21 R22 K37 [""]
      246 MOVE                             R22 R2
      247 MOVE                             R23 R4
      248 GETUPVAL                         R24 2
      249 GETTABLEKS                       R24 R24 K47 ["dataSharingLicenseTypes"]
      251 GETUPVAL                         R25 2
      252 GETTABLEKS                       R25 R25 K48 ["localization"]
      254 CALL                             R17 8 -1
      255 NAMECALL                         R15 R0 K28 ["dispatch"]
      257 CALL                             R15 -1 0
      258 RETURN                           R0 0
      259 GETUPVAL                         R14 8
      260 GETTABLEKS                       R14 R14 K49 ["isUGCBundleType"]
      262 MOVE                             R15 R2
      263 CALL                             R14 1 1
      264 JUMPIFNOT                        R14 ; [+68]
      265 LOADNIL                          R14
      266 GETUPVAL                         R15 2
      267 GETTABLEKS                       R15 R15 K50 ["dataSharingEnabled"]
      269 JUMPIFNOT                        R15 ; [+17]
      270 GETUPVAL                         R15 2
      271 GETTABLEKS                       R15 R15 K51 ["dataSharingToggled"]
      273 JUMPIFNOT                        R15 ; [+11]
      274 NEWTABLE                         R15 0 1
      276 GETUPVAL                         R16 16
      277 GETTABLEKS                       R16 R16 K52 ["DataSharingLicenseTypes"]
      279 GETTABLEKS                       R16 R16 K53 ["RobloxGlobal"]
      281 SETLIST                          R15 R16 1 [1]
      283 MOVE                             R14 R15
      284 JUMP                             ; [+2]
      285 NEWTABLE                         R14 0 0
      287 GETUPVAL                         R16 1
      288 CALL                             R16 0 1
      289 JUMPIFNOT                        R16 ; [+6]
      290 GETUPVAL                         R15 17
      291 GETTABLEKS                       R15 R15 K54 ["isEmissiveFromAttributes"]
      293 MOVE                             R16 R10
      294 CALL                             R15 1 1
      295 JUMP                             ; [+1]
      296 LOADNIL                          R15
      297 GETUPVAL                         R18 18
      298 GETUPVAL                         R19 2
      299 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      301 MOVE                             R20 R4
      302 JUMPIFNOT                        R20 ; [+1]
      303 GETTABLEN                        R20 R4 1
      304 MOVE                             R21 R2
      305 GETUPVAL                         R22 2
      306 GETTABLEKS                       R22 R22 K30 ["name"]
      308 GETUPVAL                         R24 2
      309 GETTABLEKS                       R24 R24 K31 ["description"]
      311 ORK                              R23 R24 K37 [""]
      312 MOVE                             R24 R8
      313 GETUPVAL                         R25 2
      314 GETTABLEKS                       R25 R25 K48 ["localization"]
      316 MOVE                             R26 R6
      317 MOVE                             R27 R14
      318 GETUPVAL                         R28 2
      319 GETTABLEKS                       R28 R28 K55 ["publishService"]
      321 JUMPIFNOT                        R9 ; [+4]
      322 GETUPVAL                         R29 2
      323 GETTABLEKS                       R29 R29 K33 ["groupId"]
      325 JUMP                             ; [+1]
      326 LOADNIL                          R29
      327 MOVE                             R30 R15
      328 CALL                             R18 12 -1
      329 NAMECALL                         R16 R0 K28 ["dispatch"]
      331 CALL                             R16 -1 0
      332 RETURN                           R0 0
      333 GETUPVAL                         R14 8
      334 GETTABLEKS                       R14 R14 K56 ["isMarketplaceAsset"]
      336 MOVE                             R15 R2
      337 CALL                             R14 1 1
      338 JUMPIFNOT                        R14 ; [+29]
      339 GETUPVAL                         R14 9
      340 MOVE                             R16 R3
      341 NAMECALL                         R14 R14 K25 ["isOverride"]
      343 CALL                             R14 2 1
      344 JUMPIFNOT                        R14 ; [+23]
      345 GETUPVAL                         R16 19
      346 GETUPVAL                         R17 2
      347 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      349 GETUPVAL                         R18 2
      350 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      352 GETTABLEKS                       R19 R2 K39 ["Name"]
      354 MOVE                             R20 R4
      355 GETUPVAL                         R22 20
      356 CALL                             R22 0 1
      357 JUMPIFNOT                        R22 ; [+4]
      358 GETUPVAL                         R21 2
      359 GETTABLEKS                       R21 R21 K48 ["localization"]
      361 JUMP                             ; [+1]
      362 LOADNIL                          R21
      363 CALL                             R16 5 -1
      364 NAMECALL                         R14 R0 K28 ["dispatch"]
      366 CALL                             R14 -1 0
      367 RETURN                           R0 0
      368 GETUPVAL                         R16 21
      369 DUPTABLE                         R17 K65 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      370 GETUPVAL                         R18 2
      371 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      373 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      375 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      377 GETUPVAL                         R18 2
      378 GETTABLEKS                       R18 R18 K30 ["name"]
      380 SETTABLEKS                       R18 R17 K30 ["name"]
      382 GETUPVAL                         R19 2
      383 GETTABLEKS                       R19 R19 K31 ["description"]
      385 ORK                              R18 R19 K37 [""]
      386 SETTABLEKS                       R18 R17 K31 ["description"]
      388 GETUPVAL                         R18 2
      389 GETTABLEKS                       R18 R18 K57 ["copyOn"]
      391 SETTABLEKS                       R18 R17 K57 ["copyOn"]
      393 GETUPVAL                         R18 2
      394 GETTABLEKS                       R18 R18 K58 ["commentOn"]
      396 SETTABLEKS                       R18 R17 K58 ["commentOn"]
      398 GETUPVAL                         R18 2
      399 GETTABLEKS                       R18 R18 K33 ["groupId"]
      401 SETTABLEKS                       R18 R17 K33 ["groupId"]
      403 SETTABLEKS                       R4 R17 K3 ["instances"]
      405 JUMPIFNOT                        R13 ; [+2]
      406 LOADB                            R18 1
      407 JUMP                             ; [+1]
      408 LOADNIL                          R18
      409 SETTABLEKS                       R18 R17 K59 ["isMarketplaceModelsAsPackagesEnabled"]
      411 GETUPVAL                         R18 2
      412 GETTABLEKS                       R18 R18 K66 ["status"]
      414 SETTABLEKS                       R18 R17 K60 ["saleStatus"]
      416 GETUPVAL                         R18 2
      417 GETTABLEKS                       R18 R18 K61 ["price"]
      419 SETTABLEKS                       R18 R17 K61 ["price"]
      421 GETUPVAL                         R18 2
      422 GETTABLEKS                       R18 R18 K62 ["iconFile"]
      424 SETTABLEKS                       R18 R17 K62 ["iconFile"]
      426 GETUPVAL                         R18 2
      427 GETTABLEKS                       R18 R18 K63 ["assetMediaUpdateData"]
      429 SETTABLEKS                       R18 R17 K63 ["assetMediaUpdateData"]
      431 JUMPIFNOT                        R12 ; [+3]
      432 GETTABLEKS                       R18 R12 K64 ["basePrice"]
      434 JUMP                             ; [+1]
      435 LOADNIL                          R18
      436 SETTABLEKS                       R18 R17 K64 ["basePrice"]
      438 GETUPVAL                         R19 20
      439 CALL                             R19 0 1
      440 JUMPIFNOT                        R19 ; [+4]
      441 GETUPVAL                         R18 2
      442 GETTABLEKS                       R18 R18 K48 ["localization"]
      444 JUMP                             ; [+1]
      445 LOADNIL                          R18
      446 CALL                             R16 2 -1
      447 NAMECALL                         R14 R0 K28 ["dispatch"]
      449 CALL                             R14 -1 0
      450 RETURN                           R0 0

PROTO_2:
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
       23 RETURN                           R1 1

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
       58 GETTABLEKS                       R7 R7 K17 ["getFFlagToolboxDynamicUploadFee"]
       60 CALL                             R6 1 1
       61 GETTABLEKS                       R7 R0 K10 ["Src"]
       63 GETTABLEKS                       R7 R7 K14 ["Util"]
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R7 K18 ["AssetConfigUtil"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R7 K19 ["Constants"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R7 K20 ["MetadataType"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R7 K21 ["FiatUtil"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R7 K22 ["getUserId"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETTABLEKS                       R14 R7 K23 ["fixUpPreValidation"]
       94 CALL                             R13 1 1
       95 LOADNIL                          R14
       96 JUMPIFNOT                        R2 ; [+6]
       97 GETIMPORT                        R15 K9 [require]
       99 GETTABLEKS                       R16 R7 K24 ["getIsIXPVariableEnabled"]
      101 CALL                             R15 1 1
      102 MOVE                             R14 R15
      103 GETIMPORT                        R15 K9 [require]
      105 GETTABLEKS                       R16 R0 K10 ["Src"]
      107 GETTABLEKS                       R16 R16 K25 ["Types"]
      109 GETTABLEKS                       R16 R16 K26 ["ConfigTypes"]
      111 CALL                             R15 1 1
      112 GETTABLEKS                       R16 R0 K10 ["Src"]
      114 GETTABLEKS                       R16 R16 K27 ["Networking"]
      116 GETTABLEKS                       R16 R16 K28 ["Requests"]
      118 GETIMPORT                        R17 K9 [require]
      120 GETTABLEKS                       R18 R16 K29 ["UploadCatalogItemRequest"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K9 [require]
      125 GETTABLEKS                       R19 R16 K30 ["PostUploadAssetRequest"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K9 [require]
      130 GETTABLEKS                       R20 R16 K31 ["PostOverrideAssetRequest"]
      132 CALL                             R19 1 1
      133 GETIMPORT                        R20 K9 [require]
      135 GETTABLEKS                       R21 R16 K32 ["PostUploadAnimationRequest"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K9 [require]
      140 GETTABLEKS                       R22 R16 K33 ["PostOverrideAnimationRequest"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K9 [require]
      145 GETTABLEKS                       R23 R16 K34 ["UGCBundleUploadRequest"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K9 [require]
      150 GETTABLEKS                       R24 R16 K35 ["UGCAccessoryUploadRequest"]
      152 CALL                             R23 1 1
      153 DUPCLOSURE                       R24 K36 [PROTO_0]
      154 NEWCLOSURE                       R25 P1
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R2
      160 CAPTURE                          REF R14
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R18
      176 CLOSEUPVALS                      R14
      177 RETURN                           R25 1
