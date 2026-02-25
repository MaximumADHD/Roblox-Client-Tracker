PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["assetData"]
        4 GETTABLEKS                       R3 R2 K2 ["Asset"]
        6 GETTABLEKS                       R4 R3 K3 ["Id"]
        8 GETTABLEKS                       R5 R1 K4 ["Owned"]
       10 GETTABLEKS                       R7 R2 K2 ["Asset"]
       12 GETTABLEKS                       R6 R7 K5 ["TypeId"]
       14 JUMPIF                           R6 ; [+4]
       15 GETIMPORT                        R7 K9 [Enum.AssetType.Model]
       17 GETTABLEKS                       R6 R7 K10 ["Value"]
       19 GETIMPORT                        R9 K12 [Enum.AssetType.Plugin]
       21 GETTABLEKS                       R8 R9 K10 ["Value"]
       23 JUMPIFEQ                         R6 R8 ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 LOADNIL                          R8
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R11 R12 K13 ["shouldShowPrices"]
       33 GETTABLEKS                       R12 R1 K14 ["categoryName"]
       35 CALL                             R11 1 1
       36 JUMPIFNOT                        R11 ; [+109]
       37 GETTABLEKS                       R12 R2 K15 ["FiatProduct"]
       39 JUMPIFNOT                        R12 ; [+51]
       40 GETTABLEKS                       R13 R12 K16 ["PurchasePrice"]
       42 JUMPIFNOT                        R13 ; [+48]
       43 LOADB                            R10 0
       44 GETUPVAL                         R14 1
       45 GETTABLEKS                       R13 R14 K17 ["isFree"]
       47 GETTABLEKS                       R14 R12 K18 ["Price"]
       49 CALL                             R13 1 1
       50 MOVE                             R8 R13
       51 JUMPIFNOT                        R8 ; [+19]
       52 JUMPIFNOT                        R7 ; [+9]
       53 GETTABLEKS                       R13 R1 K19 ["Localization"]
       55 LOADK                            R15 K20 ["Common"]
       56 LOADK                            R16 K21 ["Install"]
       57 NAMECALL                         R13 R13 K22 ["getText"]
       59 CALL                             R13 3 1
       60 MOVE                             R9 R13
       61 JUMP                             ; [+84]
       62 GETTABLEKS                       R13 R1 K19 ["Localization"]
       64 LOADK                            R15 K23 ["Purchase"]
       65 LOADK                            R16 K24 ["Free"]
       66 NAMECALL                         R13 R13 K22 ["getText"]
       68 CALL                             R13 3 1
       69 MOVE                             R9 R13
       70 JUMP                             ; [+75]
       71 GETUPVAL                         R14 1
       72 GETTABLEKS                       R13 R14 K25 ["displayStringFromMoney"]
       74 GETTABLEKS                       R14 R12 K16 ["PurchasePrice"]
       76 GETTABLEKS                       R15 R1 K19 ["Localization"]
       78 CALL                             R13 2 1
       79 GETTABLEKS                       R14 R1 K19 ["Localization"]
       81 LOADK                            R16 K23 ["Purchase"]
       82 LOADK                            R17 K26 ["BuyForPrice"]
       83 DUPTABLE                         R18 K28 [{"price"}]
       84 SETTABLEKS                       R13 R18 K27 ["price"]
       86 NAMECALL                         R14 R14 K22 ["getText"]
       88 CALL                             R14 4 1
       89 MOVE                             R9 R14
       90 JUMP                             ; [+55]
       91 GETUPVAL                         R13 2
       92 CALL                             R13 0 1
       93 JUMPIFNOT                        R13 ; [+17]
       94 GETUPVAL                         R14 3
       95 GETTABLEKS                       R13 R14 K29 ["shouldDebugWarnings"]
       97 CALL                             R13 0 1
       98 JUMPIFNOT                        R13 ; [+47]
       99 GETIMPORT                        R13 K31 [warn]
      101 LOADK                            R14 K32 ["Expected fiatProduct for categoryName %s, but found none for assetId %s"]
      102 GETTABLEKS                       R16 R1 K14 ["categoryName"]
      104 GETTABLEKS                       R17 R3 K3 ["Id"]
      106 NAMECALL                         R14 R14 K33 ["format"]
      108 CALL                             R14 3 -1
      109 CALL                             R13 -1 0
      110 JUMP                             ; [+35]
      111 LOADB                            R10 1
      112 GETTABLEKS                       R14 R2 K34 ["Product"]
      114 JUMPIFNOT                        R14 ; [+5]
      115 GETTABLEKS                       R14 R2 K34 ["Product"]
      117 GETTABLEKS                       R13 R14 K18 ["Price"]
      119 JUMPIF                           R13 ; [+1]
      120 LOADN                            R13 0
      121 JUMPIFEQKN                       R13 K35 [0] ; [+2]
      123 LOADB                            R8 0 +1
      124 LOADB                            R8 1
      125 JUMPIFNOT                        R8 ; [+19]
      126 JUMPIFNOT                        R7 ; [+9]
      127 GETTABLEKS                       R14 R1 K19 ["Localization"]
      129 LOADK                            R16 K20 ["Common"]
      130 LOADK                            R17 K21 ["Install"]
      131 NAMECALL                         R14 R14 K22 ["getText"]
      133 CALL                             R14 3 1
      134 MOVE                             R9 R14
      135 JUMP                             ; [+10]
      136 GETTABLEKS                       R14 R1 K19 ["Localization"]
      138 LOADK                            R16 K23 ["Purchase"]
      139 LOADK                            R17 K24 ["Free"]
      140 NAMECALL                         R14 R14 K22 ["getText"]
      142 CALL                             R14 3 1
      143 MOVE                             R9 R14
      144 JUMP                             ; [+1]
      145 MOVE                             R9 R13
      146 LOADNIL                          R12
      147 GETTABLEKS                       R14 R0 K0 ["props"]
      149 GETTABLEKS                       R13 R14 K36 ["previewPluginData"]
      151 JUMPIFNOT                        R13 ; [+2]
      152 GETTABLEKS                       R12 R13 K37 ["versionId"]
      154 LOADNIL                          R14
      155 LOADNIL                          R15
      156 LOADNIL                          R16
      157 MOVE                             R17 R7
      158 JUMPIFNOT                        R17 ; [+5]
      159 GETUPVAL                         R17 4
      160 MOVE                             R19 R4
      161 NAMECALL                         R17 R17 K38 ["IsPluginInstalled"]
      163 CALL                             R17 2 1
      164 MOVE                             R14 R17
      165 GETIMPORT                        R19 K40 [Enum.AssetType.FontFamily]
      167 GETTABLEKS                       R18 R19 K10 ["Value"]
      169 JUMPIFEQ                         R6 R18 ; [+2]
      171 LOADB                            R17 0 +1
      172 LOADB                            R17 1
      173 OR                               R18 R7 R17
      174 MOVE                             R19 R7
      175 JUMPIFNOT                        R19 ; [+7]
      176 LOADB                            R19 0
      177 JUMPIFNOTEQKNIL                  R12 ; [+5]
      179 JUMPIFEQKNIL                     R5 ; [+2]
      181 LOADB                            R19 0 +1
      182 LOADB                            R19 1
      183 MOVE                             R15 R19
      184 MOVE                             R19 R7
      185 JUMPIFNOT                        R19 ; [+10]
      186 NOT                              R19 R15
      187 JUMPIFNOT                        R19 ; [+8]
      188 MOVE                             R19 R12
      189 JUMPIFNOT                        R19 ; [+6]
      190 GETUPVAL                         R19 4
      191 MOVE                             R21 R4
      192 MOVE                             R22 R12
      193 NAMECALL                         R19 R19 K41 ["IsPluginUpToDate"]
      195 CALL                             R19 3 1
      196 MOVE                             R16 R19
      197 GETTABLEKS                       R19 R1 K42 ["PurchaseStatus"]
      199 GETUPVAL                         R21 5
      200 GETTABLEKS                       R20 R21 K43 ["Success"]
      202 JUMPIFEQ                         R19 R20 ; [+6]
      204 GETUPVAL                         R21 5
      205 GETTABLEKS                       R20 R21 K44 ["Waiting"]
      207 JUMPIFNOTEQ                      R19 R20 ; [+3]
      209 JUMPIF                           R14 ; [+1]
      210 LOADB                            R15 1
      211 MOVE                             R20 R18
      212 JUMPIFNOT                        R20 ; [+4]
      213 GETTABLEKS                       R21 R0 K45 ["state"]
      215 GETTABLEKS                       R20 R21 K46 ["showInstallationBar"]
      217 OR                               R15 R15 R20
      218 LOADB                            R21 1
      219 GETIMPORT                        R23 K9 [Enum.AssetType.Model]
      221 GETTABLEKS                       R22 R23 K10 ["Value"]
      223 JUMPIFEQ                         R6 R22 ; [+7]
      225 MOVE                             R21 R7
      226 JUMPIF                           R21 ; [+4]
      227 GETTABLEKS                       R22 R0 K45 ["state"]
      229 GETTABLEKS                       R21 R22 K47 ["overrideEnableVoting"]
      231 MOVE                             R22 R7
      232 JUMPIFNOT                        R22 ; [+1]
      233 NOT                              R22 R14
      234 JUMPIFNOT                        R7 ; [+4]
      235 MOVE                             R23 R15
      236 JUMPIF                           R23 ; [+15]
      237 MOVE                             R23 R16
      238 JUMPIF                           R23 ; [+13]
      239 JUMPIFNOT                        R7 ; [+3]
      240 LOADB                            R23 1
      241 JUMPIFEQKNIL                     R12 ; [+10]
      243 JUMPIFNOT                        R17 ; [+2]
      244 MOVE                             R23 R5
      245 JUMPIF                           R23 ; [+6]
      246 MOVE                             R23 R18
      247 JUMPIFNOT                        R23 ; [+4]
      248 JUMPIFEQKNIL                     R5 ; [+2]
      250 LOADB                            R23 0 +1
      251 LOADB                            R23 1
      252 MOVE                             R24 R23
      253 JUMPIFNOT                        R24 ; [+7]
      254 GETUPVAL                         R26 5
      255 GETTABLEKS                       R25 R26 K48 ["Failed"]
      257 JUMPIFNOTEQ                      R19 R25 ; [+2]
      259 LOADB                            R24 0 +1
      260 LOADB                            R24 1
      261 MOVE                             R23 R24
      262 JUMPIF                           R11 ; [+1]
      263 JUMPIFNOT                        R18 ; [+3]
      264 GETTABLEKS                       R24 R0 K49 ["tryInstall"]
      266 JUMP                             ; [+2]
      267 GETTABLEKS                       R24 R0 K50 ["tryInsert"]
      269 LOADNIL                          R25
      270 GETTABLEKS                       R26 R1 K19 ["Localization"]
      272 LOADK                            R28 K20 ["Common"]
      273 LOADK                            R29 K51 ["Insert"]
      274 NAMECALL                         R26 R26 K22 ["getText"]
      276 CALL                             R26 3 1
      277 JUMPIFNOT                        R7 ; [+75]
      278 JUMPIFNOTEQKNIL                  R12 ; [+10]
      280 GETTABLEKS                       R27 R1 K19 ["Localization"]
      282 LOADK                            R29 K20 ["Common"]
      283 LOADK                            R30 K52 ["Loading"]
      284 NAMECALL                         R27 R27 K22 ["getText"]
      286 CALL                             R27 3 1
      287 MOVE                             R26 R27
      288 JUMP                             ; [+87]
      289 JUMPIFNOT                        R15 ; [+20]
      290 JUMPIF                           R8 ; [+1]
      291 JUMPIFNOT                        R5 ; [+9]
      292 GETTABLEKS                       R27 R1 K19 ["Localization"]
      294 LOADK                            R29 K53 ["General"]
      295 LOADK                            R30 K54 ["Installing"]
      296 NAMECALL                         R27 R27 K22 ["getText"]
      298 CALL                             R27 3 1
      299 MOVE                             R26 R27
      300 JUMP                             ; [+75]
      301 GETTABLEKS                       R27 R1 K19 ["Localization"]
      303 LOADK                            R29 K23 ["Purchase"]
      304 LOADK                            R30 K55 ["PendingPurchase"]
      305 NAMECALL                         R27 R27 K22 ["getText"]
      307 CALL                             R27 3 1
      308 MOVE                             R26 R27
      309 JUMP                             ; [+66]
      310 JUMPIF                           R14 ; [+23]
      311 JUMPIF                           R5 ; [+13]
      312 JUMPIFNOT                        R9 ; [+2]
      313 MOVE                             R26 R9
      314 JUMP                             ; [+8]
      315 GETTABLEKS                       R27 R1 K19 ["Localization"]
      317 LOADK                            R29 K20 ["Common"]
      318 LOADK                            R30 K21 ["Install"]
      319 NAMECALL                         R27 R27 K22 ["getText"]
      321 CALL                             R27 3 1
      322 MOVE                             R26 R27
      323 MOVE                             R25 R10
      324 JUMP                             ; [+51]
      325 GETTABLEKS                       R27 R1 K19 ["Localization"]
      327 LOADK                            R29 K20 ["Common"]
      328 LOADK                            R30 K21 ["Install"]
      329 NAMECALL                         R27 R27 K22 ["getText"]
      331 CALL                             R27 3 1
      332 MOVE                             R26 R27
      333 JUMP                             ; [+42]
      334 JUMPIF                           R16 ; [+9]
      335 GETTABLEKS                       R27 R1 K19 ["Localization"]
      337 LOADK                            R29 K20 ["Common"]
      338 LOADK                            R30 K56 ["Update"]
      339 NAMECALL                         R27 R27 K22 ["getText"]
      341 CALL                             R27 3 1
      342 MOVE                             R26 R27
      343 JUMP                             ; [+32]
      344 GETTABLEKS                       R27 R1 K19 ["Localization"]
      346 LOADK                            R29 K20 ["Common"]
      347 LOADK                            R30 K57 ["Installed"]
      348 NAMECALL                         R27 R27 K22 ["getText"]
      350 CALL                             R27 3 1
      351 MOVE                             R26 R27
      352 JUMP                             ; [+23]
      353 JUMPIFNOT                        R11 ; [+3]
      354 JUMPIF                           R5 ; [+2]
      355 OR                               R26 R9 R26
      356 JUMP                             ; [+19]
      357 JUMPIFNOT                        R15 ; [+18]
      358 JUMPIFNOT                        R8 ; [+9]
      359 GETTABLEKS                       R27 R1 K19 ["Localization"]
      361 LOADK                            R29 K53 ["General"]
      362 LOADK                            R30 K54 ["Installing"]
      363 NAMECALL                         R27 R27 K22 ["getText"]
      365 CALL                             R27 3 1
      366 MOVE                             R26 R27
      367 JUMP                             ; [+8]
      368 GETTABLEKS                       R27 R1 K19 ["Localization"]
      370 LOADK                            R29 K23 ["Purchase"]
      371 LOADK                            R30 K55 ["PendingPurchase"]
      372 NAMECALL                         R27 R27 K22 ["getText"]
      374 CALL                             R27 3 1
      375 MOVE                             R26 R27
      376 JUMPIFNOT                        R17 ; [+21]
      377 JUMPIFNOT                        R5 ; [+9]
      378 GETTABLEKS                       R27 R1 K19 ["Localization"]
      380 LOADK                            R29 K20 ["Common"]
      381 LOADK                            R30 K57 ["Installed"]
      382 NAMECALL                         R27 R27 K22 ["getText"]
      384 CALL                             R27 3 1
      385 MOVE                             R26 R27
      386 JUMP                             ; [+11]
      387 JUMPIFNOT                        R11 ; [+2]
      388 OR                               R26 R9 R26
      389 JUMP                             ; [+8]
      390 GETTABLEKS                       R27 R1 K19 ["Localization"]
      392 LOADK                            R29 K20 ["Common"]
      393 LOADK                            R30 K21 ["Install"]
      394 NAMECALL                         R27 R27 K22 ["getText"]
      396 CALL                             R27 3 1
      397 MOVE                             R26 R27
      398 DUPTABLE                         R27 K65 [{"InstallDisabled", "ActionBarText", "ShowInstallationBar", "ShowRobuxIcon", "HasRating", "IsUninstalledPlugin", "TryInsert"}]
      399 SETTABLEKS                       R23 R27 K58 ["InstallDisabled"]
      401 SETTABLEKS                       R26 R27 K59 ["ActionBarText"]
      403 SETTABLEKS                       R20 R27 K60 ["ShowInstallationBar"]
      405 SETTABLEKS                       R25 R27 K61 ["ShowRobuxIcon"]
      407 SETTABLEKS                       R21 R27 K62 ["HasRating"]
      409 SETTABLEKS                       R22 R27 K63 ["IsUninstalledPlugin"]
      411 SETTABLEKS                       R24 R27 K64 ["TryInsert"]
      413 RETURN                           R27 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["AssetAnalytics"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R0
       11 NAMECALL                         R1 R1 K3 ["logPreview"]
       13 CALL                             R1 4 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["assetData"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Modal"]
       10 GETTABLEKS                       R2 R1 K3 ["onAssetPreviewToggled"]
       12 LOADB                            R3 1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K6 [{"previewAssetData", "openAssetPreviewStartTime"}]
       16 SETTABLEKS                       R0 R4 K4 ["previewAssetData"]
       18 GETIMPORT                        R5 K8 [tick]
       20 CALL                             R5 0 1
       21 SETTABLEKS                       R5 R4 K5 ["openAssetPreviewStartTime"]
       23 NAMECALL                         R2 R2 K9 ["setState"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["props"]
       29 GETTABLEKS                       R2 R3 K10 ["isPlaying"]
       31 JUMPIFNOT                        R2 ; [+6]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K0 ["props"]
       35 GETTABLEKS                       R2 R3 K11 ["pauseASound"]
       37 CALL                             R2 0 0
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R2 R3 K12 ["onAssetPreviewSelected"]
       41 GETTABLEKS                       R4 R0 K13 ["Asset"]
       43 GETTABLEKS                       R3 R4 K14 ["Id"]
       45 CALL                             R2 1 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K0 ["props"]
       49 GETTABLEKS                       R2 R3 K15 ["getPageInfoAnalyticsContextInfo"]
       51 MOVE                             R3 R2
       52 CALL                             R3 0 1
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R5 R6 K0 ["props"]
       56 GETTABLEKS                       R4 R5 K16 ["getBuyerStatus"]
       58 GETUPVAL                         R8 0
       59 GETTABLEKS                       R7 R8 K0 ["props"]
       61 GETTABLEKS                       R6 R7 K17 ["Network"]
       63 GETTABLEKS                       R5 R6 K18 ["networkInterface"]
       65 CALL                             R4 1 1
       66 NEWCLOSURE                       R6 P0
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R3
       70 NAMECALL                         R4 R4 K19 ["andThen"]
       72 CALL                             R4 2 0
       73 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Modal"]
        5 GETTABLEKS                       R2 R1 K2 ["onAssetPreviewToggled"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["props"]
       12 GETTABLEKS                       R2 R3 K3 ["onPreviewToggled"]
       14 LOADB                            R3 0
       15 CALL                             R2 1 0
       16 GETIMPORT                        R2 K5 [tick]
       18 CALL                             R2 0 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K7 ["state"]
       22 GETTABLEKS                       R4 R5 K8 ["openAssetPreviewStartTime"]
       24 ORK                              R3 R4 K6 [0]
       25 SUB                              R5 R2 R3
       26 MULK                             R4 R5 K9 [1000]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K10 ["onAssetPreviewEnded"]
       30 GETTABLEKS                       R7 R0 K11 ["Asset"]
       32 GETTABLEKS                       R6 R7 K12 ["Id"]
       34 MOVE                             R7 R4
       35 CALL                             R5 2 0
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K0 ["props"]
       39 GETTABLEKS                       R5 R6 K13 ["setPurchaseStatus"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K14 ["None"]
       44 CALL                             R5 1 0
       45 GETUPVAL                         R5 0
       46 DUPTABLE                         R7 K16 [{"previewAssetData", "openAssetPreviewStartTime"}]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R8 R9 K14 ["None"]
       50 SETTABLEKS                       R8 R7 K15 ["previewAssetData"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R8 R9 K14 ["None"]
       55 SETTABLEKS                       R8 R7 K8 ["openAssetPreviewStartTime"]
       57 NAMECALL                         R5 R5 K17 ["setState"]
       59 CALL                             R5 2 0
       60 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["assetData"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["closeAssetPreview"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["props"]
       13 GETTABLEKS                       R1 R2 K3 ["clearPreview"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ClickDetectorRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["AbsoluteSize"]
        9 GETTABLEKS                       R2 R1 K3 ["x"]
       11 GETTABLEKS                       R3 R1 K4 ["y"]
       13 GETUPVAL                         R4 0
       14 DUPTABLE                         R6 K7 [{"maxPreviewWidth", "maxPreviewHeight"}]
       15 SUBK                             R7 R2 K8 [64]
       16 SETTABLEKS                       R7 R6 K5 ["maxPreviewWidth"]
       18 SUBK                             R7 R3 K8 [64]
       19 SETTABLEKS                       R7 R6 K6 ["maxPreviewHeight"]
       21 NAMECALL                         R4 R4 K9 ["setState"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["assetData"]
        5 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        7 NAMECALL                         R3 R3 K3 ["get"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R1 K4 ["tryOpenAssetConfig"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K0 ["props"]
       15 GETTABLEKS                       R5 R6 K5 ["getPageInfoAnalyticsContextInfo"]
       17 MOVE                             R6 R5
       18 CALL                             R6 0 1
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K0 ["props"]
       22 GETTABLEKS                       R7 R8 K6 ["tryCreateContextMenu"]
       24 MOVE                             R8 R2
       25 MOVE                             R9 R0
       26 MOVE                             R10 R3
       27 MOVE                             R11 R4
       28 MOVE                             R12 R6
       29 CALL                             R7 5 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["assetData"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["previewSwimlaneName"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["previewPluginData"]
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["props"]
       19 GETTABLEKS                       R3 R4 K3 ["previewPluginData"]
       21 GETTABLEKS                       R2 R3 K4 ["versionId"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K0 ["props"]
       26 GETTABLEKS                       R3 R4 K5 ["tryInsert"]
       28 MOVE                             R4 R0
       29 LOADB                            R5 0
       30 LOADK                            R6 K6 ["PreviewClickInsertButton"]
       31 MOVE                             R7 R1
       32 MOVE                             R8 R2
       33 CALL                             R3 5 -1
       34 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Network"]
        5 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        7 NAMECALL                         R2 R1 K3 ["postTakePlugin"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["onSearchByCreator"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R3 R2 K1 ["onSearchByCreator"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R2 K2 ["assetData"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K3 ["closeAssetPreview"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Settings"]
       12 LOADK                            R5 K4 ["Plugin"]
       13 NAMECALL                         R3 R3 K5 ["get"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K6 ["join"]
       19 DUPTABLE                         R5 K8 [{"Creator"}]
       20 SETTABLEKS                       R0 R5 K7 ["Creator"]
       22 MOVE                             R6 R1
       23 CALL                             R4 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K0 ["props"]
       27 GETTABLEKS                       R5 R6 K9 ["searchWithOptions"]
       29 MOVE                             R6 R2
       30 MOVE                             R7 R3
       31 MOVE                             R8 R4
       32 CALL                             R5 3 0
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K0 ["props"]
       36 GETTABLEKS                       R5 R6 K10 ["assetData"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K11 ["closeAssetPreview"]
       41 MOVE                             R7 R5
       42 CALL                             R6 1 0
       43 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["HasVoted"]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETTABLEKS                       R3 R1 K4 ["UserVote"]
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R2
       15 MOVE                             R5 R0
       16 CALL                             R3 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R2
       20 MOVE                             R5 R0
       21 LOADB                            R6 1
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETTABLEKS                       R3 R1 K3 ["HasVoted"]
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETTABLEKS                       R3 R1 K4 ["UserVote"]
       12 JUMPIF                           R3 ; [+5]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R2
       15 MOVE                             R5 R0
       16 CALL                             R3 2 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R2
       20 MOVE                             R5 R0
       21 LOADB                            R6 0
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["assetData"]
        5 GETTABLEKS                       R1 R0 K2 ["Asset"]
        7 GETTABLEKS                       R2 R1 K3 ["TypeId"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["props"]
       12 GETTABLEKS                       R3 R4 K4 ["Owned"]
       14 LOADNIL                          R4
       15 GETIMPORT                        R7 K8 [Enum.AssetType.Plugin]
       17 GETTABLEKS                       R6 R7 K9 ["Value"]
       19 JUMPIFEQ                         R2 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETIMPORT                        R8 K11 [Enum.AssetType.FontFamily]
       25 GETTABLEKS                       R7 R8 K9 ["Value"]
       27 JUMPIFEQ                         R2 R7 ; [+2]
       29 LOADB                            R6 0 +1
       30 LOADB                            R6 1
       31 OR                               R4 R5 R6
       32 JUMPIFNOT                        R4 ; [+8]
       33 GETUPVAL                         R7 0
       34 DUPTABLE                         R9 K13 [{"showInstallationBar"}]
       35 LOADB                            R10 1
       36 SETTABLEKS                       R10 R9 K12 ["showInstallationBar"]
       38 NAMECALL                         R7 R7 K14 ["setState"]
       40 CALL                             R7 2 0
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R8 R9 K0 ["props"]
       44 GETTABLEKS                       R7 R8 K15 ["categoryName"]
       46 LOADNIL                          R8
       47 GETUPVAL                         R10 1
       48 GETTABLEKS                       R9 R10 K16 ["shouldShowPrices"]
       50 MOVE                             R10 R7
       51 CALL                             R9 1 1
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K17 ["getTabForCategoryName"]
       55 MOVE                             R11 R7
       56 CALL                             R10 1 1
       57 NOT                              R11 R3
       58 JUMPIFNOT                        R11 ; [+16]
       59 JUMPIF                           R9 ; [+2]
       60 MOVE                             R11 R4
       61 JUMPIFNOT                        R11 ; [+13]
       62 LOADB                            R11 0
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R12 R13 K18 ["CREATIONS"]
       66 JUMPIFEQ                         R10 R12 ; [+8]
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R12 R13 K19 ["INVENTORY"]
       71 JUMPIFNOTEQ                      R10 R12 ; [+2]
       73 LOADB                            R11 0 +1
       74 LOADB                            R11 1
       75 MOVE                             R8 R11
       76 GETTABLEKS                       R11 R0 K20 ["FiatProduct"]
       78 JUMPIFNOT                        R11 ; [+5]
       79 MOVE                             R12 R8
       80 JUMPIFNOT                        R12 ; [+2]
       81 GETTABLEKS                       R12 R11 K21 ["Purchasable"]
       83 MOVE                             R8 R12
       84 JUMPIFNOT                        R8 ; [+17]
       85 GETUPVAL                         R14 0
       86 GETTABLEKS                       R13 R14 K0 ["props"]
       88 GETTABLEKS                       R12 R13 K22 ["setPurchaseDialogVisibility"]
       90 LOADB                            R13 1
       91 CALL                             R12 1 0
       92 GETUPVAL                         R12 0
       93 DUPTABLE                         R14 K13 [{"showInstallationBar"}]
       94 LOADB                            R15 0
       95 SETTABLEKS                       R15 R14 K12 ["showInstallationBar"]
       97 NAMECALL                         R12 R12 K14 ["setState"]
       99 CALL                             R12 2 0
      100 LOADB                            R12 0
      101 RETURN                           R12 1
      102 GETUPVAL                         R14 0
      103 GETTABLEKS                       R13 R14 K0 ["props"]
      105 GETTABLEKS                       R12 R13 K22 ["setPurchaseDialogVisibility"]
      107 LOADB                            R13 0
      108 CALL                             R12 1 0
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R12 R13 K23 ["tryInsert"]
      112 CALL                             R12 0 1
      113 JUMPIFNOT                        R12 ; [+18]
      114 GETUPVAL                         R13 0
      115 DUPTABLE                         R15 K25 [{"overrideEnableVoting"}]
      116 LOADB                            R16 1
      117 SETTABLEKS                       R16 R15 K24 ["overrideEnableVoting"]
      119 NAMECALL                         R13 R13 K14 ["setState"]
      121 CALL                             R13 2 0
      122 GETIMPORT                        R14 K8 [Enum.AssetType.Plugin]
      124 GETTABLEKS                       R13 R14 K9 ["Value"]
      126 JUMPIFNOTEQ                      R2 R13 ; [+5]
      128 GETUPVAL                         R13 2
      129 NAMECALL                         R13 R13 K26 ["UpdatePluginManagement"]
      131 CALL                             R13 1 0
      132 GETUPVAL                         R13 0
      133 DUPTABLE                         R15 K13 [{"showInstallationBar"}]
      134 LOADB                            R16 0
      135 SETTABLEKS                       R16 R15 K12 ["showInstallationBar"]
      137 NAMECALL                         R13 R13 K14 ["setState"]
      139 CALL                             R13 2 0
      140 RETURN                           R12 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["showInstallationBarUntilCompleted"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["tryInstall"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showInstallationBar"}]
        2 SETTABLEKS                       R0 R3 K0 ["showInstallationBar"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K2 ["toggleShowInstallationBar"]
        6 LOADB                            R3 1
        7 CALL                             R2 1 0
        8 MOVE                             R2 R0
        9 CALL                             R2 0 1
       10 GETIMPORT                        R4 K1 [tick]
       12 CALL                             R4 0 1
       13 SUB                              R3 R4 R1
       14 LOADN                            R4 1
       15 JUMPIFNOTLT                      R3 R4 ; [+5]
       17 GETIMPORT                        R4 K4 [wait]
       19 SUBRK                            R5 R5 K3 ["wait"]
       20 CALL                             R4 1 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K2 ["toggleShowInstallationBar"]
       24 LOADB                            R5 0
       25 CALL                             R4 1 0
       26 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Network"]
        5 GETTABLEKS                       R0 R1 K2 ["networkInterface"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["assetId"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K4 ["getFavoriteCounts"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Network"]
        5 GETTABLEKS                       R0 R1 K2 ["networkInterface"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["assetId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["props"]
       15 GETTABLEKS                       R3 R4 K4 ["assetData"]
       17 JUMPIFNOT                        R3 ; [+18]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["props"]
       21 GETTABLEKS                       R4 R5 K4 ["assetData"]
       23 GETTABLEKS                       R3 R4 K5 ["Asset"]
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K0 ["props"]
       29 GETTABLEKS                       R4 R5 K4 ["assetData"]
       31 GETTABLEKS                       R3 R4 K5 ["Asset"]
       33 GETTABLEKS                       R2 R3 K6 ["TypeId"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K0 ["props"]
       40 GETTABLEKS                       R3 R4 K7 ["getFavorited"]
       42 MOVE                             R4 R0
       43 GETUPVAL                         R5 1
       44 CALL                             R5 0 1
       45 MOVE                             R6 R1
       46 MOVE                             R7 R2
       47 CALL                             R3 4 0
       48 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Network"]
        5 GETTABLEKS                       R1 R2 K2 ["networkInterface"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K3 ["assetId"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["props"]
       15 GETTABLEKS                       R3 R4 K4 ["favorited"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R6 R7 K0 ["props"]
       20 GETTABLEKS                       R5 R6 K5 ["assetData"]
       22 JUMPIFNOT                        R5 ; [+18]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K0 ["props"]
       26 GETTABLEKS                       R6 R7 K5 ["assetData"]
       28 GETTABLEKS                       R5 R6 K6 ["Asset"]
       30 JUMPIFNOT                        R5 ; [+10]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K0 ["props"]
       34 GETTABLEKS                       R6 R7 K5 ["assetData"]
       36 GETTABLEKS                       R5 R6 K6 ["Asset"]
       38 GETTABLEKS                       R4 R5 K7 ["TypeId"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K0 ["props"]
       45 GETTABLEKS                       R5 R6 K8 ["toggleFavoriteStatus"]
       47 MOVE                             R6 R1
       48 GETUPVAL                         R7 1
       49 CALL                             R7 0 1
       50 MOVE                             R8 R2
       51 MOVE                             R9 R3
       52 MOVE                             R10 R4
       53 CALL                             R5 5 0
       54 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Network"]
        5 GETTABLEKS                       R0 R1 K2 ["networkInterface"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["assetData"]
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETTABLEKS                       R3 R1 K4 ["Asset"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETTABLEKS                       R3 R1 K4 ["Asset"]
       18 GETTABLEKS                       R2 R3 K5 ["CreatingUniverseId"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K0 ["props"]
       25 GETTABLEKS                       R3 R4 K6 ["getAssetContentAttributionInfo"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R2
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["assetData"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["assetId"]
       10 GETTABLEKS                       R2 R0 K3 ["Asset"]
       12 GETTABLEKS                       R3 R2 K4 ["TypeId"]
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R3
       17 CALL                             R4 2 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K5 ["reportAssetClicked"]
       21 MOVE                             R6 R1
       22 MOVE                             R7 R3
       23 CALL                             R5 2 0
       24 GETUPVAL                         R5 3
       25 MOVE                             R7 R4
       26 NAMECALL                         R5 R5 K6 ["OpenBrowserWindow"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K1 ["Dictionary"]
        7 GETTABLEKS                       R3 R4 K2 ["join"]
        9 MOVE                             R4 R0
       10 DUPTABLE                         R5 K4 [{"AssetData"}]
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R7 R8 K5 ["props"]
       14 GETTABLEKS                       R6 R7 K6 ["assetData"]
       16 SETTABLEKS                       R6 R5 K3 ["AssetData"]
       18 CALL                             R3 2 -1
       19 CALL                             R1 -1 -1
       20 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["clearPurchaseFlow"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["assetData"]
       10 GETTABLEKS                       R4 R5 K2 ["Asset"]
       12 GETTABLEKS                       R3 R4 K3 ["Id"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K4 ["onAssetPreviewButtonClicked"]
       18 MOVE                             R3 R0
       19 MOVE                             R4 R1
       20 CALL                             R2 2 0
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K5 ["initialize"]
       24 MOVE                             R3 R0
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["searchByCreator"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETUPVAL                         R1 2
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["Name"]
       11 DUPTABLE                         R2 K4 [{"includeUnverifiedCreators", "searchTerm"}]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K2 ["includeUnverifiedCreators"]
       15 LOADK                            R3 K5 [""]
       16 SETTABLEKS                       R3 R2 K3 ["searchTerm"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K13 [{"Assets", "CategoryName", "CanInsertAsset", "CreatorName", "IsLoading", "LogAssetImpression", "OnAssetPreviewButtonClicked", "OnClickSeeAll", "OriginalAssetId", "ParentAbsoluteSize", "ParentAbsolutePosition", "TryOpenAssetConfig"}]
        5 GETTABLEKS                       R4 R0 K14 ["assets"]
        7 SETTABLEKS                       R4 R3 K1 ["Assets"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K15 ["categoryName"]
       12 SETTABLEKS                       R4 R3 K2 ["CategoryName"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K16 ["canInsertAsset"]
       17 SETTABLEKS                       R4 R3 K3 ["CanInsertAsset"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K17 ["Name"]
       22 SETTABLEKS                       R4 R3 K4 ["CreatorName"]
       24 GETTABLEKS                       R4 R0 K18 ["loading"]
       26 SETTABLEKS                       R4 R3 K5 ["IsLoading"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K19 ["logAssetImpression"]
       31 SETTABLEKS                       R4 R3 K6 ["LogAssetImpression"]
       33 GETUPVAL                         R4 4
       34 SETTABLEKS                       R4 R3 K7 ["OnAssetPreviewButtonClicked"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U3
       40 SETTABLEKS                       R4 R3 K8 ["OnClickSeeAll"]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R6 R7 K20 ["assetData"]
       45 GETTABLEKS                       R5 R6 K21 ["Asset"]
       47 GETTABLEKS                       R4 R5 K22 ["Id"]
       49 SETTABLEKS                       R4 R3 K9 ["OriginalAssetId"]
       51 GETUPVAL                         R5 7
       52 JUMPIFNOT                        R5 ; [+4]
       53 GETUPVAL                         R5 7
       54 GETTABLEKS                       R4 R5 K23 ["AbsoluteSize"]
       56 JUMP                             ; [+1]
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K10 ["ParentAbsoluteSize"]
       60 GETUPVAL                         R5 7
       61 JUMPIFNOT                        R5 ; [+4]
       62 GETUPVAL                         R5 7
       63 GETTABLEKS                       R4 R5 K24 ["AbsolutePosition"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R4
       67 SETTABLEKS                       R4 R3 K11 ["ParentAbsolutePosition"]
       69 GETUPVAL                         R5 2
       70 GETTABLEKS                       R4 R5 K25 ["tryOpenAssetConfig"]
       72 SETTABLEKS                       R4 R3 K12 ["TryOpenAssetConfig"]
       74 CALL                             R1 2 -1
       75 RETURN                           R1 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R1 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETTABLEKS                       R4 R1 K3 ["assetData"]
        9 GETTABLEKS                       R3 R4 K4 ["Creator"]
       11 GETTABLEKS                       R6 R1 K3 ["assetData"]
       13 GETTABLEKS                       R5 R6 K4 ["Creator"]
       15 GETTABLEKS                       R4 R5 K5 ["IsVerifiedCreator"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["ASSET_PREVIEW_SUGGESTIONS_ENABLED_FOR_ASSET_TYPE"]
       20 GETTABLEKS                       R7 R1 K7 ["categoryName"]
       22 GETTABLE                         R5 R6 R7
       23 JUMPIFNOT                        R4 ; [+1]
       24 JUMPIF                           R5 ; [+1]
       25 RETURN                           R0 0
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R8 R9 K8 ["assetPreviewScrollingRef"]
       33 GETTABLEKS                       R7 R8 K9 ["current"]
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R8 R9 K10 ["Generator"]
       38 DUPTABLE                         R9 K14 [{"categoryName", "initialPageSize", "networkInterface", "queryParams", "render"}]
       39 GETTABLEKS                       R10 R1 K7 ["categoryName"]
       41 SETTABLEKS                       R10 R9 K7 ["categoryName"]
       43 LOADN                            R10 30
       44 SETTABLEKS                       R10 R9 K11 ["initialPageSize"]
       46 SETTABLEKS                       R2 R9 K2 ["networkInterface"]
       48 DUPTABLE                         R10 K16 [{"creatorTargetId"}]
       49 GETTABLEKS                       R11 R3 K17 ["Id"]
       51 SETTABLEKS                       R11 R10 K15 ["creatorTargetId"]
       53 SETTABLEKS                       R10 R9 K12 ["queryParams"]
       55 NEWCLOSURE                       R10 P1
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R10 R9 K13 ["render"]
       66 CALL                             R8 1 -1
       67 RETURN                           R8 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["assetData"]
        5 GETTABLEKS                       R4 R2 K2 ["Asset"]
        7 GETTABLEKS                       R3 R4 K3 ["HasScripts"]
        9 JUMPIFNOT                        R3 ; [+10]
       10 GETTABLEKS                       R4 R1 K4 ["Network"]
       12 GETTABLEKS                       R3 R4 K5 ["networkInterface"]
       14 GETTABLEKS                       R4 R1 K6 ["getCodeUnderstandingSummary"]
       16 MOVE                             R5 R3
       17 MOVE                             R6 R0
       18 CALL                             R4 2 -1
       19 RETURN                           R4 -1
       20 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["openAssetPreview"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["Asset"]
        7 JUMPIFNOT                        R1 ; [+105]
        8 GETTABLEKS                       R2 R0 K1 ["Asset"]
       10 GETTABLEKS                       R1 R2 K2 ["TypeId"]
       12 GETIMPORT                        R3 K6 [Enum.AssetType.Plugin]
       14 GETTABLEKS                       R2 R3 K7 ["Value"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+19]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K8 ["props"]
       21 GETTABLEKS                       R1 R2 K9 ["getPluginInfo"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K8 ["props"]
       26 GETTABLEKS                       R3 R4 K10 ["Network"]
       28 GETTABLEKS                       R2 R3 K11 ["networkInterface"]
       30 GETTABLEKS                       R4 R0 K1 ["Asset"]
       32 GETTABLEKS                       R3 R4 K12 ["Id"]
       34 CALL                             R1 2 0
       35 JUMP                             ; [+44]
       36 GETTABLEKS                       R2 R0 K1 ["Asset"]
       38 GETTABLEKS                       R1 R2 K2 ["TypeId"]
       40 GETIMPORT                        R3 K14 [Enum.AssetType.FontFamily]
       42 GETTABLEKS                       R2 R3 K7 ["Value"]
       44 JUMPIFNOTEQ                      R1 R2 ; [+2]
       46 JUMP                             ; [+33]
       47 GETUPVAL                         R1 1
       48 CALL                             R1 0 1
       49 JUMPIFNOT                        R1 ; [+16]
       50 GETTABLEKS                       R2 R0 K1 ["Asset"]
       52 GETTABLEKS                       R1 R2 K2 ["TypeId"]
       54 GETIMPORT                        R3 K16 [Enum.AssetType.Model]
       56 GETTABLEKS                       R2 R3 K7 ["Value"]
       58 JUMPIFNOTEQ                      R1 R2 ; [+7]
       60 GETTABLEKS                       R2 R0 K1 ["Asset"]
       62 GETTABLEKS                       R1 R2 K17 ["IsOpenUse"]
       64 JUMPIF                           R1 ; [+1]
       65 JUMP                             ; [+14]
       66 GETUPVAL                         R3 0
       67 GETTABLEKS                       R2 R3 K8 ["props"]
       69 GETTABLEKS                       R1 R2 K18 ["getPreviewInstance"]
       71 GETTABLEKS                       R3 R0 K1 ["Asset"]
       73 GETTABLEKS                       R2 R3 K12 ["Id"]
       75 GETTABLEKS                       R4 R0 K1 ["Asset"]
       77 GETTABLEKS                       R3 R4 K2 ["TypeId"]
       79 CALL                             R1 2 0
       80 GETUPVAL                         R3 0
       81 GETTABLEKS                       R2 R3 K8 ["props"]
       83 GETTABLEKS                       R1 R2 K19 ["getOwnsAsset"]
       85 GETUPVAL                         R5 0
       86 GETTABLEKS                       R4 R5 K8 ["props"]
       88 GETTABLEKS                       R3 R4 K10 ["Network"]
       90 GETTABLEKS                       R2 R3 K11 ["networkInterface"]
       92 GETTABLEKS                       R4 R0 K1 ["Asset"]
       94 GETTABLEKS                       R3 R4 K12 ["Id"]
       96 CALL                             R1 2 0
       97 GETUPVAL                         R1 2
       98 GETUPVAL                         R4 0
       99 GETTABLEKS                       R3 R4 K8 ["props"]
      101 GETTABLEKS                       R2 R3 K20 ["IXP"]
      103 CALL                             R1 1 1
      104 JUMPIFNOT                        R1 ; [+8]
      105 GETUPVAL                         R2 0
      106 GETTABLEKS                       R1 R2 K21 ["getCodeUnderstandingSummary"]
      108 GETTABLEKS                       R3 R0 K1 ["Asset"]
      110 GETTABLEKS                       R2 R3 K12 ["Id"]
      112 CALL                             R1 1 0
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R1 R2 K22 ["requestFavoriteCounts"]
      116 CALL                             R1 0 0
      117 GETUPVAL                         R2 0
      118 GETTABLEKS                       R1 R2 K23 ["checkFavorited"]
      120 CALL                             R1 0 0
      121 GETUPVAL                         R2 0
      122 GETTABLEKS                       R1 R2 K24 ["requestAssetContentAttributionInfo"]
      124 CALL                             R1 0 0
      125 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
        4 GETTABLEKS                       R2 R3 K1 ["IMAGE_PREVIEW_PASSIVE"]
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
       10 GETTABLEKS                       R2 R3 K2 ["IMAGE_PREVIEW_ACTIVE"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["ASSET_MEDIA_IMPRESSION_SOURCE"]
       15 GETTABLEKS                       R3 R4 K2 ["IMAGE_PREVIEW_ACTIVE"]
       17 JUMPIFEQ                         R2 R3 ; [+12]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K3 ["assetMediaLogged"]
       22 GETTABLE                         R3 R4 R0
       23 JUMPIFNOT                        R3 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K3 ["assetMediaLogged"]
       28 LOADB                            R4 1
       29 SETTABLE                         R4 R3 R0
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R4 R5 K4 ["props"]
       33 GETTABLEKS                       R3 R4 K5 ["AssetAnalytics"]
       35 NAMECALL                         R3 R3 K6 ["get"]
       37 CALL                             R3 1 1
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K4 ["props"]
       41 GETTABLEKS                       R5 R6 K7 ["assetData"]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R7 R8 K8 ["carouselImageIds"]
       46 GETTABLE                         R6 R7 R0
       47 MOVE                             R7 R0
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R9 R10 K4 ["props"]
       51 GETTABLEKS                       R8 R9 K9 ["searchId"]
       53 MOVE                             R9 R2
       54 LOADNIL                          R10
       55 NAMECALL                         R3 R3 K10 ["logAssetMediaImpression"]
       57 CALL                             R3 7 0
       58 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["LogAssetMediaImpression"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["LogAssetMediaImpression"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["assetData"]
        5 GETTABLEKS                       R3 R1 K2 ["getPageInfoAnalyticsContextInfo"]
        7 MOVE                             R4 R3
        8 CALL                             R4 0 1
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K0 ["props"]
       12 GETTABLEKS                       R5 R6 K3 ["AssetAnalytics"]
       14 NAMECALL                         R5 R5 K4 ["get"]
       16 CALL                             R5 1 1
       17 MOVE                             R7 R2
       18 MOVE                             R8 R4
       19 GETTABLEKS                       R9 R1 K5 ["searchId"]
       21 MOVE                             R10 R0
       22 NAMECALL                         R5 R5 K6 ["onAssetDescriptionLinkClicked"]
       24 CALL                             R5 5 0
       25 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["assetPreviewScrollingRef"]
        6 DUPTABLE                         R2 K6 [{"maxPreviewWidth", "maxPreviewHeight", "showInstallationBar", "openAssetPreviewStartTime"}]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["maxPreviewWidth"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["maxPreviewHeight"]
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["showInstallationBar"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K5 ["openAssetPreviewStartTime"]
       19 SETTABLEKS                       R2 R0 K7 ["state"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["createRef"]
       24 CALL                             R2 0 1
       25 SETTABLEKS                       R2 R0 K8 ["ClickDetectorRef"]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R2 R0 K9 ["openAssetPreview"]
       32 NEWCLOSURE                       R2 P1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R2 R0 K10 ["closeAssetPreview"]
       39 NEWCLOSURE                       R2 P2
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R0 K11 ["onCloseButtonClicked"]
       43 NEWCLOSURE                       R2 P3
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R2 R0 K12 ["onDetectorABSSizeChange"]
       47 NEWCLOSURE                       R2 P4
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R2 R0 K13 ["tryCreateContextMenu"]
       51 NEWCLOSURE                       R2 P5
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R2 R0 K14 ["tryInsert"]
       55 NEWCLOSURE                       R2 P6
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R2 R0 K15 ["takePlugin"]
       59 GETUPVAL                         R2 3
       60 CALL                             R2 0 1
       61 JUMPIFNOT                        R2 ; [+5]
       62 NEWCLOSURE                       R2 P7
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R2 R0 K16 ["searchByCreator"]
       66 JUMP                             ; [+5]
       67 NEWCLOSURE                       R2 P8
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U4
       70 SETTABLEKS                       R2 R0 K16 ["searchByCreator"]
       72 GETTABLEKS                       R3 R0 K17 ["props"]
       74 GETTABLEKS                       R2 R3 K18 ["onVoteRequested"]
       76 GETTABLEKS                       R4 R0 K17 ["props"]
       78 GETTABLEKS                       R3 R4 K19 ["onUnvoteRequested"]
       80 NEWCLOSURE                       R4 P9
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R4 R0 K20 ["onVoteUpButtonActivated"]
       86 NEWCLOSURE                       R4 P10
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R2
       90 SETTABLEKS                       R4 R0 K21 ["onVoteDownButtonActivated"]
       92 NEWCLOSURE                       R4 P11
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U5
       95 CAPTURE                          UPVAL U6
       96 SETTABLEKS                       R4 R0 K22 ["tryInstall"]
       98 NEWCLOSURE                       R4 P12
       99 CAPTURE                          VAL R0
      100 SETTABLEKS                       R4 R0 K23 ["tryInstallWithProgress"]
      102 NEWCLOSURE                       R4 P13
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R4 R0 K24 ["toggleShowInstallationBar"]
      106 NEWCLOSURE                       R4 P14
      107 CAPTURE                          VAL R0
      108 SETTABLEKS                       R4 R0 K25 ["showInstallationBarUntilCompleted"]
      110 NEWCLOSURE                       R4 P15
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R4 R0 K26 ["requestFavoriteCounts"]
      114 NEWCLOSURE                       R4 P16
      115 CAPTURE                          VAL R0
      116 CAPTURE                          UPVAL U7
      117 SETTABLEKS                       R4 R0 K27 ["checkFavorited"]
      119 NEWCLOSURE                       R4 P17
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U7
      122 SETTABLEKS                       R4 R0 K28 ["onFavoritedActivated"]
      124 NEWCLOSURE                       R4 P18
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R4 R0 K29 ["requestAssetContentAttributionInfo"]
      128 GETUPVAL                         R4 8
      129 JUMPIFNOT                        R4 ; [+17]
      130 GETTABLEKS                       R5 R0 K17 ["props"]
      132 GETTABLEKS                       R4 R5 K30 ["assetData"]
      134 JUMPIFNOT                        R4 ; [+23]
      135 GETTABLEKS                       R6 R0 K17 ["props"]
      137 GETTABLEKS                       R5 R6 K31 ["clearPurchaseFlow"]
      139 GETTABLEKS                       R8 R1 K30 ["assetData"]
      141 GETTABLEKS                       R7 R8 K32 ["Asset"]
      143 GETTABLEKS                       R6 R7 K33 ["Id"]
      145 CALL                             R5 1 0
      146 JUMP                             ; [+11]
      147 GETTABLEKS                       R5 R0 K17 ["props"]
      149 GETTABLEKS                       R4 R5 K31 ["clearPurchaseFlow"]
      151 GETTABLEKS                       R7 R1 K30 ["assetData"]
      153 GETTABLEKS                       R6 R7 K32 ["Asset"]
      155 GETTABLEKS                       R5 R6 K33 ["Id"]
      157 CALL                             R4 1 0
      158 NEWCLOSURE                       R4 P19
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U9
      161 CAPTURE                          UPVAL U1
      162 CAPTURE                          UPVAL U10
      163 SETTABLEKS                       R4 R0 K34 ["onClickReport"]
      165 NEWCLOSURE                       R4 P20
      166 CAPTURE                          UPVAL U0
      167 CAPTURE                          UPVAL U11
      168 CAPTURE                          UPVAL U12
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R4 R0 K35 ["renderFooter"]
      172 NEWCLOSURE                       R4 P21
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U5
      175 CAPTURE                          UPVAL U13
      176 CAPTURE                          UPVAL U0
      177 CAPTURE                          UPVAL U14
      178 CAPTURE                          UPVAL U3
      179 SETTABLEKS                       R4 R0 K36 ["renderAndGetSuggestions"]
      181 GETUPVAL                         R4 15
      182 CALL                             R4 0 1
      183 JUMPIFNOT                        R4 ; [+4]
      184 NEWCLOSURE                       R4 P22
      185 CAPTURE                          VAL R0
      186 SETTABLEKS                       R4 R0 K37 ["getCodeUnderstandingSummary"]
      188 NEWCLOSURE                       R4 P23
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U16
      191 CAPTURE                          UPVAL U17
      192 SETTABLEKS                       R4 R0 K38 ["initialize"]
      194 GETTABLEKS                       R6 R1 K30 ["assetData"]
      196 GETTABLEKS                       R5 R6 K32 ["Asset"]
      198 GETTABLEKS                       R4 R5 K39 ["AssetMediaIds"]
      200 JUMPIFNOT                        R4 ; [+41]
      201 GETUPVAL                         R6 12
      202 GETTABLEKS                       R5 R6 K40 ["List"]
      204 GETTABLEKS                       R4 R5 K41 ["join"]
      206 NEWTABLE                         R5 0 1
      208 GETTABLEKS                       R8 R1 K30 ["assetData"]
      210 GETTABLEKS                       R7 R8 K32 ["Asset"]
      212 GETTABLEKS                       R6 R7 K33 ["Id"]
      214 SETLIST                          R5 R6 1 [1]
      216 GETTABLEKS                       R8 R1 K30 ["assetData"]
      218 GETTABLEKS                       R7 R8 K32 ["Asset"]
      220 GETTABLEKS                       R6 R7 K39 ["AssetMediaIds"]
      222 CALL                             R4 2 1
      223 SETTABLEKS                       R4 R0 K42 ["carouselImageIds"]
      225 NEWTABLE                         R4 0 0
      227 SETTABLEKS                       R4 R0 K43 ["assetMediaLogged"]
      229 NEWCLOSURE                       R4 P24
      230 CAPTURE                          UPVAL U18
      231 CAPTURE                          VAL R0
      232 SETTABLEKS                       R4 R0 K44 ["LogAssetMediaImpression"]
      234 NEWCLOSURE                       R4 P25
      235 CAPTURE                          VAL R0
      236 SETTABLEKS                       R4 R0 K45 ["OnImageCarouselChange"]
      238 NEWCLOSURE                       R4 P26
      239 CAPTURE                          VAL R0
      240 SETTABLEKS                       R4 R0 K46 ["OnSetImageCarouselImages"]
      242 NEWCLOSURE                       R4 P27
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R4 R0 K47 ["onClickDescriptionLink"]
      246 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["initialize"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["assetData"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["tryCreateContextMenu"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["Localization"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["searchByCreator"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Creator"]
        6 LOADNIL                          R3
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_37:
        0 NAMECALL                         R1 R0 K0 ["createPurchaseFlow"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R3 R0 K2 ["state"]
        7 GETTABLEKS                       R4 R2 K3 ["Localization"]
        9 GETTABLEKS                       R6 R2 K4 ["Modal"]
       11 GETTABLEKS                       R5 R6 K5 ["modalTarget"]
       13 GETTABLEKS                       R6 R2 K6 ["assetData"]
       15 GETTABLEKS                       R7 R2 K7 ["Owned"]
       17 GETTABLEKS                       R9 R3 K8 ["maxPreviewWidth"]
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K9 ["ASSET_PREVIEW_MAX_WIDTH"]
       22 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       24 GETIMPORT                        R8 K12 [math.min]
       26 CALL                             R8 2 1
       27 GETTABLEKS                       R9 R3 K13 ["maxPreviewHeight"]
       29 GETTABLEKS                       R10 R2 K14 ["previewModel"]
       31 GETTABLEKS                       R12 R1 K15 ["InstallDisabled"]
       33 NOT                              R11 R12
       34 JUMPIFNOT                        R11 ; [+5]
       35 GETTABLEKS                       R13 R0 K2 ["state"]
       37 GETTABLEKS                       R12 R13 K16 ["showInstallationBar"]
       39 NOT                              R11 R12
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R0
       42 LOADNIL                          R13
       43 LOADNIL                          R14
       44 LOADNIL                          R15
       45 GETUPVAL                         R16 1
       46 CALL                             R16 0 1
       47 JUMPIFNOT                        R16 ; [+3]
       48 LOADNIL                          R13
       49 LOADNIL                          R14
       50 JUMP                             ; [+37]
       51 DUPTABLE                         R16 K20 [{"OnClick", "Count", "IsFavorited"}]
       52 GETTABLEKS                       R17 R0 K21 ["onFavoritedActivated"]
       54 SETTABLEKS                       R17 R16 K17 ["OnClick"]
       56 GETTABLEKS                       R19 R0 K1 ["props"]
       58 GETTABLEKS                       R18 R19 K22 ["favoriteCounts"]
       60 FASTCALL1                        TONUMBER R18 ; [+2]
       61 GETIMPORT                        R17 K24 [tonumber]
       63 CALL                             R17 1 1
       64 SETTABLEKS                       R17 R16 K18 ["Count"]
       66 GETTABLEKS                       R18 R0 K1 ["props"]
       68 GETTABLEKS                       R17 R18 K25 ["favorited"]
       70 SETTABLEKS                       R17 R16 K19 ["IsFavorited"]
       72 MOVE                             R13 R16
       73 GETTABLEKS                       R17 R0 K1 ["props"]
       75 GETTABLEKS                       R16 R17 K26 ["voting"]
       77 JUMPIFNOT                        R16 ; [+2]
       78 GETTABLEKS                       R15 R1 K27 ["IsUninstalledPlugin"]
       80 GETTABLEKS                       R16 R1 K28 ["HasRating"]
       82 JUMPIFNOT                        R16 ; [+4]
       83 GETTABLEKS                       R17 R0 K1 ["props"]
       85 GETTABLEKS                       R16 R17 K26 ["voting"]
       87 MOVE                             R14 R16
       88 LOADNIL                          R16
       89 GETTABLEKS                       R18 R6 K29 ["Asset"]
       91 GETTABLEKS                       R17 R18 K30 ["AssetSubTypes"]
       93 JUMPIFNOT                        R17 ; [+12]
       94 GETUPVAL                         R18 2
       95 GETTABLEKS                       R17 R18 K31 ["contains"]
       97 GETTABLEKS                       R19 R6 K29 ["Asset"]
       99 GETTABLEKS                       R18 R19 K30 ["AssetSubTypes"]
      101 GETUPVAL                         R20 2
      102 GETTABLEKS                       R19 R20 K32 ["Package"]
      104 CALL                             R17 2 1
      105 MOVE                             R16 R17
      106 LOADNIL                          R17
      107 GETTABLEKS                       R18 R6 K33 ["FiatProduct"]
      109 JUMPIFNOT                        R18 ; [+38]
      110 GETTABLEKS                       R19 R18 K34 ["PurchasePrice"]
      112 JUMPIFNOT                        R19 ; [+35]
      113 GETUPVAL                         R20 3
      114 GETTABLEKS                       R19 R20 K35 ["isFree"]
      116 GETTABLEKS                       R20 R18 K34 ["PurchasePrice"]
      118 CALL                             R19 1 1
      119 JUMPIF                           R19 ; [+28]
      120 JUMPIF                           R7 ; [+27]
      121 GETTABLEKS                       R19 R2 K36 ["buyerStatus"]
      123 GETUPVAL                         R21 4
      124 GETTABLEKS                       R20 R21 K37 ["CountryRestricted"]
      126 JUMPIFNOTEQ                      R19 R20 ; [+9]
      128 LOADB                            R11 0
      129 LOADK                            R21 K38 ["AssetPreview"]
      130 LOADK                            R22 K39 ["CountryRestrictedPurchase"]
      131 NAMECALL                         R19 R4 K40 ["getText"]
      133 CALL                             R19 3 1
      134 MOVE                             R17 R19
      135 JUMP                             ; [+12]
      136 GETTABLEKS                       R19 R2 K41 ["isExcessiveTransaction"]
      138 JUMPIFNOT                        R19 ; [+9]
      139 LOADB                            R11 0
      140 GETTABLEKS                       R19 R2 K3 ["Localization"]
      142 LOADK                            R21 K38 ["AssetPreview"]
      143 LOADK                            R22 K42 ["ExcessiveTransactionsSubText"]
      144 NAMECALL                         R19 R19 K40 ["getText"]
      146 CALL                             R19 3 1
      147 MOVE                             R17 R19
      148 LOADB                            R19 0
      149 GETTABLEKS                       R22 R6 K29 ["Asset"]
      151 GETTABLEKS                       R21 R22 K43 ["AssetMediaIds"]
      153 FASTCALL1                        TYPE R21 ; [+2]
      154 GETIMPORT                        R20 K45 [type]
      156 CALL                             R20 1 1
      157 JUMPIFNOTEQKS                    R20 K46 ["table"] ; [+12]
      159 GETIMPORT                        R20 K48 [next]
      161 GETTABLEKS                       R22 R6 K29 ["Asset"]
      163 GETTABLEKS                       R21 R22 K43 ["AssetMediaIds"]
      165 CALL                             R20 1 1
      166 JUMPIFNOTEQKNIL                  R20 ; [+2]
      168 LOADB                            R19 0 +1
      169 LOADB                            R19 1
      170 GETUPVAL                         R21 5
      171 GETTABLEKS                       R20 R21 K49 ["createElement"]
      173 GETUPVAL                         R21 6
      174 NEWTABLE                         R22 64 0
      176 GETIMPORT                        R23 K52 [UDim2.new]
      178 LOADK                            R24 K53 [0.5]
      179 LOADN                            R25 0
      180 LOADK                            R26 K53 [0.5]
      181 LOADN                            R27 0
      182 CALL                             R23 4 1
      183 SETTABLEKS                       R23 R22 K54 ["Position"]
      185 GETIMPORT                        R23 K56 [Vector2.new]
      187 LOADK                            R24 K53 [0.5]
      188 LOADK                            R25 K53 [0.5]
      189 CALL                             R23 2 1
      190 SETTABLEKS                       R23 R22 K57 ["AnchorPoint"]
      192 GETIMPORT                        R23 K59 [UDim2.fromOffset]
      194 MOVE                             R24 R8
      195 MOVE                             R25 R9
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K60 ["Size"]
      199 LOADN                            R23 2
      200 SETTABLEKS                       R23 R22 K61 ["ZIndex"]
      202 SETTABLEKS                       R6 R22 K62 ["AssetData"]
      204 SETTABLEKS                       R10 R22 K63 ["AssetInstance"]
      206 SETTABLEKS                       R12 R22 K64 ["OnClickContext"]
      208 SETTABLEKS                       R11 R22 K65 ["ActionEnabled"]
      210 GETTABLEKS                       R23 R1 K66 ["ShowRobuxIcon"]
      212 SETTABLEKS                       R23 R22 K66 ["ShowRobuxIcon"]
      214 SETTABLEKS                       R17 R22 K67 ["ActionSubText"]
      216 GETTABLEKS                       R24 R1 K68 ["ActionBarText"]
      218 FASTCALL1                        TOSTRING R24 ; [+2]
      219 GETIMPORT                        R23 K70 [tostring]
      221 CALL                             R23 1 1
      222 SETTABLEKS                       R23 R22 K71 ["ActionText"]
      224 GETTABLEKS                       R23 R1 K72 ["TryInsert"]
      226 SETTABLEKS                       R23 R22 K73 ["OnClickAction"]
      228 SETTABLEKS                       R13 R22 K74 ["Favorites"]
      230 SETTABLEKS                       R14 R22 K75 ["Voting"]
      232 SETTABLEKS                       R15 R22 K27 ["IsUninstalledPlugin"]
      234 GETTABLEKS                       R23 R0 K76 ["onVoteUpButtonActivated"]
      236 SETTABLEKS                       R23 R22 K77 ["OnVoteUp"]
      238 GETTABLEKS                       R23 R0 K78 ["onVoteDownButtonActivated"]
      240 SETTABLEKS                       R23 R22 K79 ["OnVoteDown"]
      242 GETUPVAL                         R24 7
      243 CALL                             R24 0 1
      244 JUMPIFNOT                        R24 ; [+4]
      245 NEWCLOSURE                       R23 P1
      246 CAPTURE                          VAL R0
      247 CAPTURE                          VAL R6
      248 JUMP                             ; [+2]
      249 GETTABLEKS                       R23 R0 K80 ["searchByCreator"]
      251 SETTABLEKS                       R23 R22 K81 ["OnClickCreator"]
      253 GETTABLEKS                       R23 R0 K82 ["onClickReport"]
      255 SETTABLEKS                       R23 R22 K83 ["OnClickReport"]
      257 GETTABLEKS                       R23 R0 K84 ["onClickDescriptionLink"]
      259 SETTABLEKS                       R23 R22 K85 ["OnClickDescriptionLink"]
      261 GETTABLEKS                       R23 R0 K86 ["renderAndGetSuggestions"]
      263 SETTABLEKS                       R23 R22 K87 ["RenderSuggestions"]
      265 GETTABLEKS                       R23 R0 K88 ["renderFooter"]
      267 SETTABLEKS                       R23 R22 K89 ["RenderFooter"]
      269 GETTABLEKS                       R23 R6 K90 ["Creator"]
      271 JUMPIFNOT                        R23 ; [+17]
      272 LOADB                            R23 0
      273 GETTABLEKS                       R25 R6 K90 ["Creator"]
      275 GETTABLEKS                       R24 R25 K91 ["Id"]
      277 JUMPIFEQKN                       R24 K92 [1] ; [+11]
      279 GETTABLEKS                       R25 R6 K90 ["Creator"]
      281 GETTABLEKS                       R24 R25 K91 ["Id"]
      283 GETUPVAL                         R25 8
      284 CALL                             R25 0 1
      285 JUMPIFNOTEQ                      R24 R25 ; [+2]
      287 LOADB                            R23 0 +1
      288 LOADB                            R23 1
      289 SETTABLEKS                       R23 R22 K93 ["CanFlagAsset"]
      291 SETTABLEKS                       R16 R22 K94 ["IsPackage"]
      293 JUMPIFNOT                        R19 ; [+4]
      294 GETUPVAL                         R24 0
      295 GETTABLEKS                       R23 R24 K95 ["ASSET_PREVIEW_IMAGE_CAROUSEL_AUTO_ADVANCE_TIMER"]
      297 JUMP                             ; [+1]
      298 LOADNIL                          R23
      299 SETTABLEKS                       R23 R22 K96 ["ImageCarouselAutoAdvanceTimer"]
      301 GETTABLEKS                       R23 R0 K97 ["OnImageCarouselChange"]
      303 SETTABLEKS                       R23 R22 K98 ["OnImageCarouselImageChanged"]
      305 GETUPVAL                         R24 0
      306 GETTABLEKS                       R23 R24 K99 ["IMAGE_CAROUSEL_ON_IMAGE_CHANGE_TRANSPARENCY_THRESHOLD"]
      308 SETTABLEKS                       R23 R22 K100 ["ImageCarouselTransparencyThreshold"]
      310 GETTABLEKS                       R23 R0 K101 ["OnSetImageCarouselImages"]
      312 SETTABLEKS                       R23 R22 K101 ["OnSetImageCarouselImages"]
      314 SETTABLEKS                       R19 R22 K102 ["UseImageCarousel"]
      316 GETIMPORT                        R23 K106 [Enum.UsageContext.Preview]
      318 SETTABLEKS                       R23 R22 K104 ["UsageContext"]
      320 LOADB                            R23 1
      321 SETTABLEKS                       R23 R22 K107 ["ShouldMuteModelSounds"]
      323 GETTABLEKS                       R23 R0 K108 ["assetPreviewScrollingRef"]
      325 SETTABLEKS                       R23 R22 K109 ["ScrollingRef"]
      327 GETTABLEKS                       R23 R2 K110 ["creatingUniverseId"]
      329 SETTABLEKS                       R23 R22 K111 ["CreatingUniverseId"]
      331 GETTABLEKS                       R23 R2 K112 ["creatingUniverseName"]
      333 SETTABLEKS                       R23 R22 K113 ["CreatingUniverseName"]
      335 GETTABLEKS                       R23 R2 K114 ["creatingUniverseRootPlaceId"]
      337 SETTABLEKS                       R23 R22 K115 ["CreatingUniverseRootPlaceId"]
      339 GETUPVAL                         R24 9
      340 GETTABLEKS                       R25 R2 K116 ["IXP"]
      342 CALL                             R24 1 1
      343 JUMPIFNOT                        R24 ; [+3]
      344 GETTABLEKS                       R23 R2 K117 ["codeSummary"]
      346 JUMP                             ; [+1]
      347 LOADNIL                          R23
      348 SETTABLEKS                       R23 R22 K118 ["CodeSummary"]
      350 LOADB                            R23 1
      351 SETTABLEKS                       R23 R22 K119 ["Hide3DPreviewForAssetsWithMeshes"]
      353 CALL                             R20 2 1
      354 MOVE                             R21 R5
      355 JUMPIFNOT                        R21 ; [+65]
      356 GETUPVAL                         R22 5
      357 GETTABLEKS                       R21 R22 K49 ["createElement"]
      359 GETUPVAL                         R23 5
      360 GETTABLEKS                       R22 R23 K120 ["Portal"]
      362 DUPTABLE                         R23 K122 [{"target"}]
      363 SETTABLEKS                       R5 R23 K121 ["target"]
      365 DUPTABLE                         R24 K124 [{"ScreenClickDetector", "AssetPreview"}]
      366 GETUPVAL                         R26 5
      367 GETTABLEKS                       R25 R26 K49 ["createElement"]
      369 LOADK                            R26 K125 ["TextButton"]
      370 NEWTABLE                         R27 8 0
      372 GETIMPORT                        R28 K52 [UDim2.new]
      374 LOADN                            R29 1
      375 LOADN                            R30 0
      376 LOADN                            R31 1
      377 LOADN                            R32 0
      378 CALL                             R28 4 1
      379 SETTABLEKS                       R28 R27 K60 ["Size"]
      381 LOADK                            R28 K126 [0.25]
      382 SETTABLEKS                       R28 R27 K127 ["BackgroundTransparency"]
      384 GETUPVAL                         R28 10
      385 SETTABLEKS                       R28 R27 K128 ["BackgroundColor3"]
      387 LOADN                            R28 1
      388 SETTABLEKS                       R28 R27 K61 ["ZIndex"]
      390 LOADB                            R28 0
      391 SETTABLEKS                       R28 R27 K129 ["AutoButtonColor"]
      393 GETUPVAL                         R30 5
      394 GETTABLEKS                       R29 R30 K130 ["Event"]
      396 GETTABLEKS                       R28 R29 K131 ["Activated"]
      398 GETTABLEKS                       R29 R0 K132 ["onCloseButtonClicked"]
      400 SETTABLE                         R29 R27 R28
      401 GETUPVAL                         R29 5
      402 GETTABLEKS                       R28 R29 K133 ["Ref"]
      404 GETTABLEKS                       R29 R0 K134 ["ClickDetectorRef"]
      406 SETTABLE                         R29 R27 R28
      407 GETUPVAL                         R30 5
      408 GETTABLEKS                       R29 R30 K135 ["Change"]
      410 GETTABLEKS                       R28 R29 K136 ["AbsoluteSize"]
      412 GETTABLEKS                       R29 R0 K137 ["onDetectorABSSizeChange"]
      414 SETTABLE                         R29 R27 R28
      415 CALL                             R25 2 1
      416 SETTABLEKS                       R25 R24 K123 ["ScreenClickDetector"]
      418 SETTABLEKS                       R20 R24 K38 ["AssetPreview"]
      420 CALL                             R21 3 1
      421 RETURN                           R21 1

PROTO_38:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R2 K1 ["previewModel"]
       12 GETTABLEKS                       R4 R0 K2 ["pageInfo"]
       14 JUMPIF                           R4 ; [+2]
       15 NEWTABLE                         R4 0 0
       17 GETTABLEKS                       R5 R2 K3 ["previewAssetId"]
       19 GETTABLEKS                       R6 R0 K4 ["purchase"]
       21 JUMPIF                           R6 ; [+2]
       22 NEWTABLE                         R6 0 0
       24 GETTABLEKS                       R7 R6 K5 ["status"]
       26 GETTABLEKS                       R9 R6 K6 ["cachedOwnedAssets"]
       28 FASTCALL1                        TOSTRING R5 ; [+3]
       29 MOVE                             R11 R5
       30 GETIMPORT                        R10 K8 [tostring]
       32 CALL                             R10 1 1
       33 GETTABLE                         R8 R9 R10
       34 GETTABLEKS                       R9 R6 K9 ["robuxBalance"]
       36 GETTABLEKS                       R10 R6 K10 ["buyerStatus"]
       38 GETTABLEKS                       R11 R0 K11 ["favorite"]
       40 JUMPIF                           R11 ; [+2]
       41 NEWTABLE                         R11 0 0
       43 GETTABLEKS                       R12 R11 K12 ["assetIdToCountsMap"]
       45 JUMPIF                           R12 ; [+2]
       46 NEWTABLE                         R12 0 0
       48 GETTABLEKS                       R13 R11 K13 ["assetIdToFavoritedMap"]
       50 JUMPIF                           R13 ; [+2]
       51 NEWTABLE                         R13 0 0
       53 GETTABLEKS                       R14 R0 K14 ["voting"]
       55 JUMPIF                           R14 ; [+2]
       56 NEWTABLE                         R14 0 0
       58 GETTABLEKS                       R15 R1 K15 ["assetData"]
       60 GETTABLEKS                       R16 R6 K16 ["excessiveTransactionUserIds"]
       62 JUMPIF                           R16 ; [+2]
       63 NEWTABLE                         R16 0 0
       65 JUMPIFNOT                        R15 ; [+8]
       66 GETTABLEKS                       R18 R15 K17 ["Creator"]
       68 JUMPIFNOT                        R18 ; [+5]
       69 GETTABLEKS                       R18 R15 K17 ["Creator"]
       71 GETTABLEKS                       R17 R18 K18 ["Id"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R17
       75 MOVE                             R18 R17
       76 JUMPIFNOT                        R18 ; [+1]
       77 GETTABLE                         R18 R16 R17
       78 GETTABLEKS                       R20 R2 K19 ["creatingUniverseName"]
       80 JUMPIFNOT                        R20 ; [+10]
       81 GETTABLEKS                       R20 R2 K19 ["creatingUniverseName"]
       83 GETUPVAL                         R22 0
       84 GETTABLEKS                       R21 R22 K20 ["None"]
       86 JUMPIFEQ                         R20 R21 ; [+4]
       88 GETTABLEKS                       R19 R2 K19 ["creatingUniverseName"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R19
       92 GETTABLEKS                       R21 R2 K21 ["creatingUniverseRootPlaceId"]
       94 JUMPIFNOT                        R21 ; [+10]
       95 GETTABLEKS                       R21 R2 K21 ["creatingUniverseRootPlaceId"]
       97 GETUPVAL                         R23 0
       98 GETTABLEKS                       R22 R23 K20 ["None"]
      100 JUMPIFEQ                         R21 R22 ; [+4]
      102 GETTABLEKS                       R20 R2 K21 ["creatingUniverseRootPlaceId"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R20
      106 GETUPVAL                         R22 1
      107 CALL                             R22 0 1
      108 JUMPIFNOT                        R22 ; [+9]
      109 GETTABLEKS                       R22 R2 K22 ["codeSummaryMap"]
      111 FASTCALL1                        TOSTRING R5 ; [+3]
      112 MOVE                             R24 R5
      113 GETIMPORT                        R23 K8 [tostring]
      115 CALL                             R23 1 1
      116 GETTABLE                         R21 R22 R23
      117 JUMP                             ; [+1]
      118 LOADNIL                          R21
      119 DUPTABLE                         R22 K37 [{"assetData", "buyerStatus", "categories", "categoryName", "codeSummary", "isExcessiveTransaction", "layoutMode", "previewModel", "previewPluginData", "previewSwimlaneName", "assetId", "favoriteCounts", "favorited", "voting", "Owned", "PurchaseStatus", "searchId", "Balance", "creatingUniverseName", "creatingUniverseRootPlaceId"}]
      120 SETTABLEKS                       R15 R22 K15 ["assetData"]
      122 SETTABLEKS                       R10 R22 K10 ["buyerStatus"]
      124 LOADNIL                          R23
      125 SETTABLEKS                       R23 R22 K23 ["categories"]
      127 GETTABLEKS                       R23 R4 K24 ["categoryName"]
      129 JUMPIF                           R23 ; [+5]
      130 GETUPVAL                         R25 2
      131 GETTABLEKS                       R24 R25 K38 ["DEFAULT"]
      133 GETTABLEKS                       R23 R24 K39 ["name"]
      135 SETTABLEKS                       R23 R22 K24 ["categoryName"]
      137 SETTABLEKS                       R21 R22 K25 ["codeSummary"]
      139 SETTABLEKS                       R18 R22 K26 ["isExcessiveTransaction"]
      141 GETTABLEKS                       R23 R4 K27 ["layoutMode"]
      143 SETTABLEKS                       R23 R22 K27 ["layoutMode"]
      145 ORK                              R23 R3 K40 []
      146 SETTABLEKS                       R23 R22 K1 ["previewModel"]
      148 GETTABLEKS                       R23 R2 K28 ["previewPluginData"]
      150 SETTABLEKS                       R23 R22 K28 ["previewPluginData"]
      152 GETTABLEKS                       R23 R2 K29 ["previewSwimlaneName"]
      154 SETTABLEKS                       R23 R22 K29 ["previewSwimlaneName"]
      156 SETTABLEKS                       R5 R22 K30 ["assetId"]
      158 GETTABLE                         R24 R12 R5
      159 ORK                              R23 R24 K41 [0]
      160 SETTABLEKS                       R23 R22 K31 ["favoriteCounts"]
      162 GETTABLE                         R24 R13 R5
      163 ORK                              R23 R24 K42 [False]
      164 SETTABLEKS                       R23 R22 K32 ["favorited"]
      166 GETTABLE                         R23 R14 R5
      167 SETTABLEKS                       R23 R22 K14 ["voting"]
      169 SETTABLEKS                       R8 R22 K33 ["Owned"]
      171 SETTABLEKS                       R7 R22 K34 ["PurchaseStatus"]
      173 GETTABLEKS                       R23 R4 K35 ["searchId"]
      175 SETTABLEKS                       R23 R22 K35 ["searchId"]
      177 SETTABLEKS                       R9 R22 K36 ["Balance"]
      179 SETTABLEKS                       R19 R22 K19 ["creatingUniverseName"]
      181 SETTABLEKS                       R20 R22 K21 ["creatingUniverseRootPlaceId"]
      183 RETURN                           R22 1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 -1
        4 RETURN                           R0 -1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 -1
        6 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_59:
        0 DUPTABLE                         R1 K20 [{"getPreviewInstance", "clearPreview", "getCodeUnderstandingSummary", "getPluginInfo", "searchWithOptions", "onVoteRequested", "onUnvoteRequested", "onPreviewToggled", "pauseASound", "tryCreateContextMenu", "getOwnsAsset", "clearPurchaseFlow", "getFavorited", "getFavoriteCounts", "toggleFavoriteStatus", "getPageInfoAnalyticsContextInfo", "getBuyerStatus", "getAssetContentAttributionInfo", "setPurchaseStatus", "setPurchaseDialogVisibility"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getPreviewInstance"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["clearPreview"]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+4]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K2 ["getCodeUnderstandingSummary"]
       21 NEWCLOSURE                       R2 P3
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K3 ["getPluginInfo"]
       26 NEWCLOSURE                       R2 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K4 ["searchWithOptions"]
       31 NEWCLOSURE                       R2 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K5 ["onVoteRequested"]
       36 NEWCLOSURE                       R2 P6
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U7
       39 SETTABLEKS                       R2 R1 K6 ["onUnvoteRequested"]
       41 NEWCLOSURE                       R2 P7
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U8
       44 SETTABLEKS                       R2 R1 K7 ["onPreviewToggled"]
       46 NEWCLOSURE                       R2 P8
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U9
       49 SETTABLEKS                       R2 R1 K8 ["pauseASound"]
       51 NEWCLOSURE                       R2 P9
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U10
       54 SETTABLEKS                       R2 R1 K9 ["tryCreateContextMenu"]
       56 NEWCLOSURE                       R2 P10
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U11
       59 SETTABLEKS                       R2 R1 K10 ["getOwnsAsset"]
       61 NEWCLOSURE                       R2 P11
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U12
       64 SETTABLEKS                       R2 R1 K11 ["clearPurchaseFlow"]
       66 NEWCLOSURE                       R2 P12
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U13
       69 SETTABLEKS                       R2 R1 K12 ["getFavorited"]
       71 NEWCLOSURE                       R2 P13
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U14
       74 SETTABLEKS                       R2 R1 K13 ["getFavoriteCounts"]
       76 NEWCLOSURE                       R2 P14
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U15
       79 SETTABLEKS                       R2 R1 K14 ["toggleFavoriteStatus"]
       81 NEWCLOSURE                       R2 P15
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U16
       84 SETTABLEKS                       R2 R1 K15 ["getPageInfoAnalyticsContextInfo"]
       86 NEWCLOSURE                       R2 P16
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U17
       89 SETTABLEKS                       R2 R1 K16 ["getBuyerStatus"]
       91 NEWCLOSURE                       R2 P17
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U18
       94 SETTABLEKS                       R2 R1 K17 ["getAssetContentAttributionInfo"]
       96 NEWCLOSURE                       R2 P18
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U19
       99 SETTABLEKS                       R2 R1 K18 ["setPurchaseStatus"]
      101 NEWCLOSURE                       R2 P19
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U20
      104 SETTABLEKS                       R2 R1 K19 ["setPurchaseDialogVisibility"]
      106 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R7 K6 [script]
       15 GETTABLEKS                       R6 R7 K7 ["Parent"]
       17 GETTABLEKS                       R5 R6 K7 ["Parent"]
       19 GETTABLEKS                       R4 R5 K7 ["Parent"]
       21 GETTABLEKS                       R3 R4 K7 ["Parent"]
       23 GETTABLEKS                       R2 R3 K7 ["Parent"]
       25 GETTABLEKS                       R3 R2 K8 ["Packages"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Roact"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R6 R3 K12 ["RoactRodux"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K10 [require]
       39 GETTABLEKS                       R7 R3 K13 ["Cryo"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R8 R2 K14 ["Src"]
       44 GETTABLEKS                       R7 R8 K15 ["Util"]
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R7 K16 ["Constants"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R11 R7 K17 ["Analytics"]
       55 GETTABLEKS                       R10 R11 K17 ["Analytics"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K10 [require]
       60 GETTABLEKS                       R12 R7 K17 ["Analytics"]
       62 GETTABLEKS                       R11 R12 K18 ["AssetAnalyticsContextItem"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R14 R2 K14 ["Src"]
       69 GETTABLEKS                       R13 R14 K19 ["Models"]
       71 GETTABLEKS                       R12 R13 K20 ["AssetInfo"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K10 [require]
       76 GETTABLEKS                       R13 R7 K21 ["DebugFlags"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K10 [require]
       81 GETTABLEKS                       R14 R7 K22 ["getUserId"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K10 [require]
       86 GETTABLEKS                       R15 R3 K23 ["Framework"]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R14 K24 ["UI"]
       91 GETTABLEKS                       R16 R15 K25 ["AssetPreview"]
       93 GETIMPORT                        R17 K10 [require]
       95 GETTABLEKS                       R18 R3 K26 ["Dash"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R19 K10 [require]
      100 GETTABLEKS                       R20 R3 K23 ["Framework"]
      102 CALL                             R19 1 1
      103 GETTABLEKS                       R18 R19 K27 ["ContextServices"]
      105 GETTABLEKS                       R19 R18 K28 ["withContext"]
      107 GETIMPORT                        R20 K10 [require]
      109 GETTABLEKS                       R23 R2 K14 ["Src"]
      111 GETTABLEKS                       R22 R23 K27 ["ContextServices"]
      113 GETTABLEKS                       R21 R22 K29 ["Settings"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K10 [require]
      118 GETTABLEKS                       R24 R2 K14 ["Src"]
      120 GETTABLEKS                       R23 R24 K27 ["ContextServices"]
      122 GETTABLEKS                       R22 R23 K30 ["IXPContext"]
      124 CALL                             R21 1 1
      125 GETIMPORT                        R22 K10 [require]
      127 GETTABLEKS                       R25 R2 K14 ["Src"]
      129 GETTABLEKS                       R24 R25 K27 ["ContextServices"]
      131 GETTABLEKS                       R23 R24 K31 ["NavigationContext"]
      133 CALL                             R22 1 1
      134 GETIMPORT                        R23 K10 [require]
      136 GETTABLEKS                       R26 R2 K14 ["Src"]
      138 GETTABLEKS                       R25 R26 K27 ["ContextServices"]
      140 GETTABLEKS                       R24 R25 K32 ["ModalContext"]
      142 CALL                             R23 1 1
      143 GETIMPORT                        R24 K10 [require]
      145 GETTABLEKS                       R27 R2 K14 ["Src"]
      147 GETTABLEKS                       R26 R27 K27 ["ContextServices"]
      149 GETTABLEKS                       R25 R26 K33 ["NetworkContext"]
      151 CALL                             R24 1 1
      152 GETIMPORT                        R25 K10 [require]
      154 GETTABLEKS                       R28 R2 K14 ["Src"]
      156 GETTABLEKS                       R27 R28 K34 ["Actions"]
      158 GETTABLEKS                       R26 R27 K35 ["ClearPreview"]
      160 CALL                             R25 1 1
      161 GETIMPORT                        R26 K10 [require]
      163 GETTABLEKS                       R29 R2 K14 ["Src"]
      165 GETTABLEKS                       R28 R29 K34 ["Actions"]
      167 GETTABLEKS                       R27 R28 K36 ["PausePreviewSound"]
      169 CALL                             R26 1 1
      170 GETIMPORT                        R27 K10 [require]
      172 GETTABLEKS                       R30 R2 K14 ["Src"]
      174 GETTABLEKS                       R29 R30 K34 ["Actions"]
      176 GETTABLEKS                       R28 R29 K37 ["SetAssetPreview"]
      178 CALL                             R27 1 1
      179 GETIMPORT                        R28 K10 [require]
      181 GETTABLEKS                       R31 R2 K14 ["Src"]
      183 GETTABLEKS                       R30 R31 K34 ["Actions"]
      185 GETTABLEKS                       R29 R30 K38 ["SetPurchaseDialogVisibility"]
      187 CALL                             R28 1 1
      188 GETIMPORT                        R29 K10 [require]
      190 GETTABLEKS                       R32 R2 K14 ["Src"]
      192 GETTABLEKS                       R31 R32 K34 ["Actions"]
      194 GETTABLEKS                       R30 R31 K39 ["SetPurchaseStatus"]
      196 CALL                             R29 1 1
      197 GETIMPORT                        R30 K10 [require]
      199 GETTABLEKS                       R35 R2 K14 ["Src"]
      201 GETTABLEKS                       R34 R35 K40 ["Components"]
      203 GETTABLEKS                       R33 R34 K41 ["Asset"]
      205 GETTABLEKS                       R32 R33 K42 ["Preview"]
      207 GETTABLEKS                       R31 R32 K43 ["SuggestionsWrapper"]
      209 CALL                             R30 1 1
      210 GETIMPORT                        R31 K10 [require]
      212 GETTABLEKS                       R36 R2 K14 ["Src"]
      214 GETTABLEKS                       R35 R36 K40 ["Components"]
      216 GETTABLEKS                       R34 R35 K41 ["Asset"]
      218 GETTABLEKS                       R33 R34 K42 ["Preview"]
      220 GETTABLEKS                       R32 R33 K44 ["AssetPreviewFooter"]
      222 CALL                             R31 1 1
      223 GETTABLEKS                       R34 R2 K14 ["Src"]
      225 GETTABLEKS                       R33 R34 K45 ["Networking"]
      227 GETTABLEKS                       R32 R33 K46 ["Requests"]
      229 GETIMPORT                        R33 K10 [require]
      231 GETTABLEKS                       R34 R32 K47 ["GetPreviewInstanceRequest"]
      233 CALL                             R33 1 1
      234 GETIMPORT                        R34 K10 [require]
      236 GETTABLEKS                       R35 R32 K48 ["GetCodeSummaryRequest"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K10 [require]
      241 GETTABLEKS                       R36 R32 K49 ["GetPluginInfoRequest"]
      243 CALL                             R35 1 1
      244 GETIMPORT                        R36 K10 [require]
      246 GETTABLEKS                       R37 R32 K50 ["SearchWithOptions"]
      248 CALL                             R36 1 1
      249 GETIMPORT                        R37 K10 [require]
      251 GETTABLEKS                       R38 R32 K51 ["PostUnvoteRequest"]
      253 CALL                             R37 1 1
      254 GETIMPORT                        R38 K10 [require]
      256 GETTABLEKS                       R39 R32 K52 ["PostVoteRequest"]
      258 CALL                             R38 1 1
      259 GETIMPORT                        R39 K10 [require]
      261 GETTABLEKS                       R43 R2 K14 ["Src"]
      263 GETTABLEKS                       R42 R43 K45 ["Networking"]
      265 GETTABLEKS                       R41 R42 K46 ["Requests"]
      267 GETTABLEKS                       R40 R41 K53 ["GetOwnsAssetRequest"]
      269 CALL                             R39 1 1
      270 GETIMPORT                        R40 K10 [require]
      272 GETTABLEKS                       R43 R2 K14 ["Src"]
      274 GETTABLEKS                       R42 R43 K34 ["Actions"]
      276 GETTABLEKS                       R41 R42 K54 ["ClearPurchaseFlow"]
      278 CALL                             R40 1 1
      279 GETIMPORT                        R41 K10 [require]
      281 GETTABLEKS                       R42 R32 K55 ["GetFavoriteCountsRequest"]
      283 CALL                             R41 1 1
      284 GETIMPORT                        R42 K10 [require]
      286 GETTABLEKS                       R43 R32 K56 ["GetFavoritedRequest"]
      288 CALL                             R42 1 1
      289 GETIMPORT                        R43 K10 [require]
      291 GETTABLEKS                       R44 R32 K57 ["ToggleFavoriteStatusRequest"]
      293 CALL                             R43 1 1
      294 GETIMPORT                        R44 K10 [require]
      296 GETTABLEKS                       R47 R2 K14 ["Src"]
      298 GETTABLEKS                       R46 R47 K58 ["Thunks"]
      300 GETTABLEKS                       R45 R46 K59 ["TryCreateContextMenu"]
      302 CALL                             R44 1 1
      303 GETIMPORT                        R45 K10 [require]
      305 GETTABLEKS                       R48 R2 K14 ["Src"]
      307 GETTABLEKS                       R47 R48 K58 ["Thunks"]
      309 GETTABLEKS                       R46 R47 K60 ["GetPageInfoAnalyticsContextInfo"]
      311 CALL                             R45 1 1
      312 GETIMPORT                        R46 K10 [require]
      314 GETTABLEKS                       R47 R32 K61 ["GetAssetContentAttributionInfoRequest"]
      316 CALL                             R46 1 1
      317 GETIMPORT                        R47 K10 [require]
      319 GETTABLEKS                       R48 R32 K62 ["GetBuyerStatusRequest"]
      321 CALL                             R47 1 1
      322 GETIMPORT                        R48 K10 [require]
      324 GETTABLEKS                       R51 R2 K14 ["Src"]
      326 GETTABLEKS                       R50 R51 K40 ["Components"]
      328 GETTABLEKS                       R49 R50 K63 ["ResultsFetcher"]
      330 CALL                             R48 1 1
      331 GETIMPORT                        R49 K10 [require]
      333 GETTABLEKS                       R52 R2 K14 ["Src"]
      335 GETTABLEKS                       R51 R52 K64 ["Types"]
      337 GETTABLEKS                       R50 R51 K65 ["AssetSubTypes"]
      339 CALL                             R49 1 1
      340 GETIMPORT                        R50 K10 [require]
      342 GETTABLEKS                       R53 R2 K14 ["Src"]
      344 GETTABLEKS                       R52 R53 K64 ["Types"]
      346 GETTABLEKS                       R51 R52 K66 ["BuyerStatus"]
      348 CALL                             R50 1 1
      349 GETIMPORT                        R51 K10 [require]
      351 GETTABLEKS                       R54 R2 K14 ["Src"]
      353 GETTABLEKS                       R53 R54 K64 ["Types"]
      355 GETTABLEKS                       R52 R53 K67 ["Category"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K10 [require]
      360 GETTABLEKS                       R55 R2 K14 ["Src"]
      362 GETTABLEKS                       R54 R55 K64 ["Types"]
      364 GETTABLEKS                       R53 R54 K68 ["PurchaseStatus"]
      366 CALL                             R52 1 1
      367 GETTABLEKS                       R53 R4 K69 ["PureComponent"]
      369 LOADK                            R55 K70 ["AssetPreviewWrapper"]
      370 NAMECALL                         R53 R53 K71 ["extend"]
      372 CALL                             R53 2 1
      373 GETIMPORT                        R54 K1 [game]
      375 LOADK                            R56 K72 ["ToolboxAssetPreviewProtectAgainstNilAssetData"]
      376 NAMECALL                         R54 R54 K73 ["GetFastFlag"]
      378 CALL                             R54 2 1
      379 GETIMPORT                        R55 K10 [require]
      381 GETTABLEKS                       R59 R2 K14 ["Src"]
      383 GETTABLEKS                       R58 R59 K15 ["Util"]
      385 GETTABLEKS                       R57 R58 K74 ["SharedFlags"]
      387 GETTABLEKS                       R56 R57 K75 ["getFFlagToolboxFixInventoryCreatorFilter"]
      389 CALL                             R55 1 1
      390 GETIMPORT                        R57 K10 [require]
      392 GETTABLEKS                       R60 R2 K14 ["Src"]
      394 GETTABLEKS                       R59 R60 K15 ["Util"]
      396 GETTABLEKS                       R58 R59 K76 ["ToolboxUtilities"]
      398 CALL                             R57 1 1
      399 GETTABLEKS                       R56 R57 K77 ["disableRatings"]
      401 GETIMPORT                        R57 K10 [require]
      403 GETTABLEKS                       R61 R2 K14 ["Src"]
      405 GETTABLEKS                       R60 R61 K15 ["Util"]
      407 GETTABLEKS                       R59 R60 K74 ["SharedFlags"]
      409 GETTABLEKS                       R58 R59 K78 ["getFFlagToolboxCodeUnderstandingSummary"]
      411 CALL                             R57 1 1
      412 GETIMPORT                        R58 K10 [require]
      414 GETTABLEKS                       R60 R7 K74 ["SharedFlags"]
      416 GETTABLEKS                       R59 R60 K79 ["getIsIXPEnabledForCodeUnderstanding"]
      418 CALL                             R58 1 1
      419 GETIMPORT                        R59 K10 [require]
      421 GETTABLEKS                       R63 R2 K14 ["Src"]
      423 GETTABLEKS                       R62 R63 K15 ["Util"]
      425 GETTABLEKS                       R61 R62 K74 ["SharedFlags"]
      427 GETTABLEKS                       R60 R61 K80 ["getFFlagToolboxRemoveRobuxProductEntirely"]
      429 CALL                             R59 1 1
      430 GETIMPORT                        R60 K10 [require]
      432 GETTABLEKS                       R64 R2 K14 ["Src"]
      434 GETTABLEKS                       R63 R64 K15 ["Util"]
      436 GETTABLEKS                       R62 R63 K74 ["SharedFlags"]
      438 GETTABLEKS                       R61 R62 K81 ["getFFlagToolboxOnlyPreviewOpenUseModels"]
      440 CALL                             R60 1 1
      441 GETIMPORT                        R61 K10 [require]
      443 GETTABLEKS                       R62 R7 K82 ["FiatUtil"]
      445 CALL                             R61 1 1
      446 GETIMPORT                        R62 K10 [require]
      448 GETTABLEKS                       R63 R7 K83 ["getReportUrl"]
      450 CALL                             R62 1 1
      451 GETIMPORT                        R63 K86 [Color3.fromRGB]
      453 LOADN                            R64 0
      454 LOADN                            R65 0
      455 LOADN                            R66 0
      456 CALL                             R63 3 1
      457 DUPCLOSURE                       R64 K87 [PROTO_0]
      458 CAPTURE                          VAL R51
      459 CAPTURE                          VAL R61
      460 CAPTURE                          VAL R59
      461 CAPTURE                          VAL R12
      462 CAPTURE                          VAL R0
      463 CAPTURE                          VAL R52
      464 SETTABLEKS                       R64 R53 K88 ["createPurchaseFlow"]
      466 DUPCLOSURE                       R64 K89 [PROTO_33]
      467 CAPTURE                          VAL R4
      468 CAPTURE                          VAL R9
      469 CAPTURE                          VAL R52
      470 CAPTURE                          VAL R55
      471 CAPTURE                          VAL R17
      472 CAPTURE                          VAL R51
      473 CAPTURE                          VAL R0
      474 CAPTURE                          VAL R13
      475 CAPTURE                          VAL R54
      476 CAPTURE                          VAL R62
      477 CAPTURE                          VAL R1
      478 CAPTURE                          VAL R31
      479 CAPTURE                          VAL R6
      480 CAPTURE                          VAL R48
      481 CAPTURE                          VAL R30
      482 CAPTURE                          VAL R57
      483 CAPTURE                          VAL R60
      484 CAPTURE                          VAL R58
      485 CAPTURE                          VAL R8
      486 SETTABLEKS                       R64 R53 K90 ["init"]
      488 DUPCLOSURE                       R64 K91 [PROTO_34]
      489 SETTABLEKS                       R64 R53 K92 ["didMount"]
      491 DUPCLOSURE                       R64 K93 [PROTO_37]
      492 CAPTURE                          VAL R8
      493 CAPTURE                          VAL R56
      494 CAPTURE                          VAL R49
      495 CAPTURE                          VAL R61
      496 CAPTURE                          VAL R50
      497 CAPTURE                          VAL R4
      498 CAPTURE                          VAL R16
      499 CAPTURE                          VAL R55
      500 CAPTURE                          VAL R13
      501 CAPTURE                          VAL R58
      502 CAPTURE                          VAL R63
      503 SETTABLEKS                       R64 R53 K94 ["render"]
      505 DUPCLOSURE                       R64 K95 [PROTO_38]
      506 CAPTURE                          VAL R6
      507 CAPTURE                          VAL R57
      508 CAPTURE                          VAL R51
      509 DUPCLOSURE                       R65 K96 [PROTO_59]
      510 CAPTURE                          VAL R33
      511 CAPTURE                          VAL R25
      512 CAPTURE                          VAL R57
      513 CAPTURE                          VAL R34
      514 CAPTURE                          VAL R35
      515 CAPTURE                          VAL R36
      516 CAPTURE                          VAL R38
      517 CAPTURE                          VAL R37
      518 CAPTURE                          VAL R27
      519 CAPTURE                          VAL R26
      520 CAPTURE                          VAL R44
      521 CAPTURE                          VAL R39
      522 CAPTURE                          VAL R40
      523 CAPTURE                          VAL R42
      524 CAPTURE                          VAL R41
      525 CAPTURE                          VAL R43
      526 CAPTURE                          VAL R45
      527 CAPTURE                          VAL R47
      528 CAPTURE                          VAL R46
      529 CAPTURE                          VAL R29
      530 CAPTURE                          VAL R28
      531 MOVE                             R66 R19
      532 DUPTABLE                         R67 K104 [{"Settings", "AssetAnalytics", "IXP", "NavigationContext", "Plugin", "Stylizer", "Modal", "Network", "Localization"}]
      533 SETTABLEKS                       R20 R67 K29 ["Settings"]
      535 SETTABLEKS                       R10 R67 K97 ["AssetAnalytics"]
      537 MOVE                             R69 R57
      538 CALL                             R69 0 1
      539 JUMPIFNOT                        R69 ; [+2]
      540 MOVE                             R68 R21
      541 JUMP                             ; [+1]
      542 LOADNIL                          R68
      543 SETTABLEKS                       R68 R67 K98 ["IXP"]
      545 SETTABLEKS                       R22 R67 K31 ["NavigationContext"]
      547 GETTABLEKS                       R68 R18 K99 ["Plugin"]
      549 SETTABLEKS                       R68 R67 K99 ["Plugin"]
      551 GETTABLEKS                       R68 R18 K100 ["Stylizer"]
      553 SETTABLEKS                       R68 R67 K100 ["Stylizer"]
      555 SETTABLEKS                       R23 R67 K101 ["Modal"]
      557 SETTABLEKS                       R24 R67 K102 ["Network"]
      559 GETTABLEKS                       R68 R18 K103 ["Localization"]
      561 SETTABLEKS                       R68 R67 K103 ["Localization"]
      563 CALL                             R66 1 1
      564 MOVE                             R67 R53
      565 CALL                             R66 1 1
      566 MOVE                             R53 R66
      567 GETTABLEKS                       R66 R5 K105 ["UNSTABLE_connect2"]
      569 MOVE                             R67 R64
      570 MOVE                             R68 R65
      571 CALL                             R66 2 1
      572 MOVE                             R67 R53
      573 CALL                             R66 1 -1
      574 RETURN                           R66 -1
