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
      162 JUMPIFNOT                        R14 ; [+104]
      163 MOVE                             R15 R7
      164 JUMPIFNOT                        R15 ; [+5]
      165 MOVE                             R15 R2
      166 JUMPIFNOT                        R15 ; [+3]
      167 GETTABLEKS                       R16 R2 K40 ["Name"]
      169 GETTABLE                         R15 R7 R16
      170 MOVE                             R16 R15
      171 JUMPIFNOT                        R16 ; [+2]
      172 GETTABLEKS                       R16 R15 K41 ["allowedFileExtensions"]
      174 MOVE                             R17 R16
      175 JUMPIFNOT                        R17 ; [+6]
      176 LOADB                            R17 0
      177 LENGTH                           R18 R16
      178 LOADN                            R19 0
      179 JUMPIFNOTLT                      R19 R18 ; [+2]
      181 GETTABLEN                        R17 R16 1
      182 JUMPIFNOT                        R17 ; [+8]
      183 GETIMPORT                        R18 K44 [string.gsub]
      185 MOVE                             R19 R17
      186 LOADK                            R20 K45 ["^%."]
      187 LOADK                            R21 K38 [""]
      188 CALL                             R18 3 1
      189 MOVE                             R14 R18
      190 JUMPIF                           R14 ; [+1]
      191 LOADK                            R14 K46 ["rbxm"]
      192 JUMPIFNOT                        R5 ; [+49]
      193 NEWTABLE                         R15 0 0
      195 MOVE                             R16 R4
      196 JUMPIF                           R16 ; [+2]
      197 NEWTABLE                         R16 0 0
      199 LOADNIL                          R17
      200 LOADNIL                          R18
      201 FORGPREP                         R16
      202 NAMECALL                         R21 R20 K47 ["Clone"]
      204 CALL                             R21 1 1
      205 GETUPVAL                         R22 13
      206 MOVE                             R23 R21
      207 CALL                             R22 1 0
      208 SETTABLE                         R21 R15 R19
      209 FORGLOOP                         R16 2 ; [-8]
      211 GETUPVAL                         R18 14
      212 GETUPVAL                         R19 2
      213 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      215 GETUPVAL                         R20 2
      216 GETTABLEKS                       R20 R20 K30 ["name"]
      218 GETUPVAL                         R22 2
      219 GETTABLEKS                       R22 R22 K31 ["description"]
      221 ORK                              R21 R22 K38 [""]
      222 MOVE                             R22 R2
      223 MOVE                             R23 R15
      224 GETUPVAL                         R24 2
      225 GETTABLEKS                       R24 R24 K33 ["groupId"]
      227 GETUPVAL                         R25 2
      228 GETTABLEKS                       R25 R25 K48 ["dataSharingLicenseTypes"]
      230 GETUPVAL                         R26 2
      231 GETTABLEKS                       R26 R26 K49 ["localization"]
      233 MOVE                             R27 R6
      234 GETUPVAL                         R28 2
      235 GETTABLEKS                       R28 R28 K50 ["publishOnApprovalCreationContext"]
      237 CALL                             R18 10 -1
      238 NAMECALL                         R16 R0 K28 ["dispatch"]
      240 CALL                             R16 -1 0
      241 RETURN                           R0 0
      242 GETUPVAL                         R17 15
      243 GETUPVAL                         R18 2
      244 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      246 GETUPVAL                         R19 2
      247 GETTABLEKS                       R19 R19 K30 ["name"]
      249 MOVE                             R20 R14
      250 GETUPVAL                         R22 2
      251 GETTABLEKS                       R22 R22 K31 ["description"]
      253 ORK                              R21 R22 K38 [""]
      254 MOVE                             R22 R2
      255 MOVE                             R23 R4
      256 GETUPVAL                         R24 2
      257 GETTABLEKS                       R24 R24 K48 ["dataSharingLicenseTypes"]
      259 GETUPVAL                         R25 2
      260 GETTABLEKS                       R25 R25 K49 ["localization"]
      262 CALL                             R17 8 -1
      263 NAMECALL                         R15 R0 K28 ["dispatch"]
      265 CALL                             R15 -1 0
      266 RETURN                           R0 0
      267 GETUPVAL                         R14 8
      268 GETTABLEKS                       R14 R14 K51 ["isUGCBundleType"]
      270 MOVE                             R15 R2
      271 CALL                             R14 1 1
      272 JUMPIFNOT                        R14 ; [+68]
      273 LOADNIL                          R14
      274 GETUPVAL                         R15 2
      275 GETTABLEKS                       R15 R15 K52 ["dataSharingEnabled"]
      277 JUMPIFNOT                        R15 ; [+17]
      278 GETUPVAL                         R15 2
      279 GETTABLEKS                       R15 R15 K53 ["dataSharingToggled"]
      281 JUMPIFNOT                        R15 ; [+11]
      282 NEWTABLE                         R15 0 1
      284 GETUPVAL                         R16 16
      285 GETTABLEKS                       R16 R16 K54 ["DataSharingLicenseTypes"]
      287 GETTABLEKS                       R16 R16 K55 ["RobloxGlobal"]
      289 SETLIST                          R15 R16 1 [1]
      291 MOVE                             R14 R15
      292 JUMP                             ; [+2]
      293 NEWTABLE                         R14 0 0
      295 GETUPVAL                         R16 1
      296 CALL                             R16 0 1
      297 JUMPIFNOT                        R16 ; [+6]
      298 GETUPVAL                         R15 17
      299 GETTABLEKS                       R15 R15 K56 ["isEmissiveFromAttributes"]
      301 MOVE                             R16 R10
      302 CALL                             R15 1 1
      303 JUMP                             ; [+1]
      304 LOADNIL                          R15
      305 GETUPVAL                         R18 18
      306 GETUPVAL                         R19 2
      307 GETTABLEKS                       R19 R19 K26 ["networkInterface"]
      309 MOVE                             R20 R4
      310 JUMPIFNOT                        R20 ; [+1]
      311 GETTABLEN                        R20 R4 1
      312 MOVE                             R21 R2
      313 GETUPVAL                         R22 2
      314 GETTABLEKS                       R22 R22 K30 ["name"]
      316 GETUPVAL                         R24 2
      317 GETTABLEKS                       R24 R24 K31 ["description"]
      319 ORK                              R23 R24 K38 [""]
      320 MOVE                             R24 R8
      321 GETUPVAL                         R25 2
      322 GETTABLEKS                       R25 R25 K49 ["localization"]
      324 MOVE                             R26 R6
      325 MOVE                             R27 R14
      326 GETUPVAL                         R28 2
      327 GETTABLEKS                       R28 R28 K36 ["publishService"]
      329 JUMPIFNOT                        R9 ; [+4]
      330 GETUPVAL                         R29 2
      331 GETTABLEKS                       R29 R29 K33 ["groupId"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R29
      335 MOVE                             R30 R15
      336 CALL                             R18 12 -1
      337 NAMECALL                         R16 R0 K28 ["dispatch"]
      339 CALL                             R16 -1 0
      340 RETURN                           R0 0
      341 GETUPVAL                         R14 8
      342 GETTABLEKS                       R14 R14 K57 ["isMarketplaceAsset"]
      344 MOVE                             R15 R2
      345 CALL                             R14 1 1
      346 JUMPIFNOT                        R14 ; [+29]
      347 GETUPVAL                         R14 9
      348 MOVE                             R16 R3
      349 NAMECALL                         R14 R14 K25 ["isOverride"]
      351 CALL                             R14 2 1
      352 JUMPIFNOT                        R14 ; [+23]
      353 GETUPVAL                         R16 19
      354 GETUPVAL                         R17 2
      355 GETTABLEKS                       R17 R17 K26 ["networkInterface"]
      357 GETUPVAL                         R18 2
      358 GETTABLEKS                       R18 R18 K27 ["overrideAssetId"]
      360 GETTABLEKS                       R19 R2 K40 ["Name"]
      362 MOVE                             R20 R4
      363 GETUPVAL                         R22 20
      364 CALL                             R22 0 1
      365 JUMPIFNOT                        R22 ; [+4]
      366 GETUPVAL                         R21 2
      367 GETTABLEKS                       R21 R21 K49 ["localization"]
      369 JUMP                             ; [+1]
      370 LOADNIL                          R21
      371 CALL                             R16 5 -1
      372 NAMECALL                         R14 R0 K28 ["dispatch"]
      374 CALL                             R14 -1 0
      375 RETURN                           R0 0
      376 GETUPVAL                         R16 21
      377 DUPTABLE                         R17 K66 [{["networkInterface"], ["assetId"] = 0, ["assetTypeEnum"], ["name"], ["description"], ["copyOn"], ["commentOn"], ["groupId"], ["instances"], ["isMarketplaceModelsAsPackagesEnabled"], ["saleStatus"], ["price"], ["iconFile"], ["assetMediaUpdateData"], ["basePrice"]}]
      378 GETUPVAL                         R18 2
      379 GETTABLEKS                       R18 R18 K26 ["networkInterface"]
      381 SETTABLEKS                       R18 R17 K26 ["networkInterface"]
      383 SETTABLEKS                       R2 R17 K1 ["assetTypeEnum"]
      385 GETUPVAL                         R18 2
      386 GETTABLEKS                       R18 R18 K30 ["name"]
      388 SETTABLEKS                       R18 R17 K30 ["name"]
      390 GETUPVAL                         R19 2
      391 GETTABLEKS                       R19 R19 K31 ["description"]
      393 ORK                              R18 R19 K38 [""]
      394 SETTABLEKS                       R18 R17 K31 ["description"]
      396 GETUPVAL                         R18 2
      397 GETTABLEKS                       R18 R18 K58 ["copyOn"]
      399 SETTABLEKS                       R18 R17 K58 ["copyOn"]
      401 GETUPVAL                         R18 2
      402 GETTABLEKS                       R18 R18 K59 ["commentOn"]
      404 SETTABLEKS                       R18 R17 K59 ["commentOn"]
      406 GETUPVAL                         R18 2
      407 GETTABLEKS                       R18 R18 K33 ["groupId"]
      409 SETTABLEKS                       R18 R17 K33 ["groupId"]
      411 SETTABLEKS                       R4 R17 K3 ["instances"]
      413 JUMPIFNOT                        R13 ; [+2]
      414 LOADB                            R18 1
      415 JUMP                             ; [+1]
      416 LOADNIL                          R18
      417 SETTABLEKS                       R18 R17 K60 ["isMarketplaceModelsAsPackagesEnabled"]
      419 GETUPVAL                         R18 2
      420 GETTABLEKS                       R18 R18 K67 ["status"]
      422 SETTABLEKS                       R18 R17 K61 ["saleStatus"]
      424 GETUPVAL                         R18 2
      425 GETTABLEKS                       R18 R18 K62 ["price"]
      427 SETTABLEKS                       R18 R17 K62 ["price"]
      429 GETUPVAL                         R18 2
      430 GETTABLEKS                       R18 R18 K63 ["iconFile"]
      432 SETTABLEKS                       R18 R17 K63 ["iconFile"]
      434 GETUPVAL                         R18 2
      435 GETTABLEKS                       R18 R18 K64 ["assetMediaUpdateData"]
      437 SETTABLEKS                       R18 R17 K64 ["assetMediaUpdateData"]
      439 JUMPIFNOT                        R12 ; [+3]
      440 GETTABLEKS                       R18 R12 K65 ["basePrice"]
      442 JUMP                             ; [+1]
      443 LOADNIL                          R18
      444 SETTABLEKS                       R18 R17 K65 ["basePrice"]
      446 GETUPVAL                         R19 20
      447 CALL                             R19 0 1
      448 JUMPIFNOT                        R19 ; [+4]
      449 GETUPVAL                         R18 2
      450 GETTABLEKS                       R18 R18 K49 ["localization"]
      452 JUMP                             ; [+1]
      453 LOADNIL                          R18
      454 CALL                             R16 2 -1
      455 NAMECALL                         R14 R0 K28 ["dispatch"]
      457 CALL                             R14 -1 0
      458 RETURN                           R0 0

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
