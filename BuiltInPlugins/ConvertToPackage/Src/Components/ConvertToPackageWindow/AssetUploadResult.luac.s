PROTO_0:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["assetName"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K11 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Size"]}]
       13 GETTABLEKS                       R8 R3 K12 ["uploadResult"]
       15 GETTABLEKS                       R8 R8 K13 ["background"]
       17 SETTABLEKS                       R8 R7 K6 ["BackgroundColor3"]
       19 GETTABLEKS                       R8 R1 K10 ["Size"]
       21 SETTABLEKS                       R8 R7 K10 ["Size"]
       23 DUPTABLE                         R8 K18 [{"ModelPreview", "LoadingResultSuccess", "LoadingResultFailure", "Footer"}]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K4 ["createElement"]
       27 GETUPVAL                         R10 1
       28 DUPTABLE                         R11 K25 [{["title"], ["titleHeight"] = 24, ["titlePadding"] = 12, ["Position"], ["Size"]}]
       29 SETTABLEKS                       R4 R11 K19 ["title"]
       31 GETIMPORT                        R12 K28 [UDim2.new]
       33 LOADK                            R13 K29 [0.5]
       34 LOADN                            R14 -75
       35 LOADN                            R15 0
       36 LOADN                            R16 48
       37 CALL                             R12 4 1
       38 SETTABLEKS                       R12 R11 K24 ["Position"]
       40 GETIMPORT                        R12 K28 [UDim2.new]
       42 LOADN                            R13 0
       43 LOADN                            R14 150
       44 LOADN                            R15 0
       45 LOADN                            R16 186
       46 CALL                             R12 4 1
       47 SETTABLEKS                       R12 R11 K10 ["Size"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K14 ["ModelPreview"]
       52 GETTABLEKS                       R9 R1 K30 ["uploadSucceeded"]
       54 JUMPIFNOT                        R9 ; [+172]
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K4 ["createElement"]
       58 LOADK                            R10 K5 ["Frame"]
       59 DUPTABLE                         R11 K32 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
       60 GETIMPORT                        R12 K28 [UDim2.new]
       62 LOADN                            R13 0
       63 LOADN                            R14 0
       64 LOADN                            R15 0
       65 LOADN                            R16 279
       66 CALL                             R12 4 1
       67 SETTABLEKS                       R12 R11 K24 ["Position"]
       69 GETIMPORT                        R12 K28 [UDim2.new]
       71 LOADN                            R13 1
       72 LOADN                            R14 0
       73 LOADN                            R15 1
       74 LOADN                            R16 -279
       75 CALL                             R12 4 1
       76 SETTABLEKS                       R12 R11 K10 ["Size"]
       78 DUPTABLE                         R12 K35 [{"Title", "Rows"}]
       79 GETUPVAL                         R13 0
       80 GETTABLEKS                       R13 R13 K4 ["createElement"]
       82 LOADK                            R14 K36 ["TextLabel"]
       83 DUPTABLE                         R15 K43 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Text"], ["Font"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
       84 GETIMPORT                        R16 K28 [UDim2.new]
       86 LOADK                            R17 K29 [0.5]
       87 LOADN                            R18 -200
       88 LOADN                            R19 0
       89 LOADN                            R20 0
       90 CALL                             R16 4 1
       91 SETTABLEKS                       R16 R15 K24 ["Position"]
       93 GETIMPORT                        R16 K28 [UDim2.new]
       95 LOADN                            R17 0
       96 LOADN                            R18 400
       97 LOADN                            R19 0
       98 LOADN                            R20 36
       99 CALL                             R16 4 1
      100 SETTABLEKS                       R16 R15 K10 ["Size"]
      102 LOADK                            R18 K44 ["General"]
      103 LOADK                            R19 K45 ["SuccessfullyConverted"]
      104 NAMECALL                         R16 R2 K46 ["getText"]
      106 CALL                             R16 3 1
      107 SETTABLEKS                       R16 R15 K37 ["Text"]
      109 GETUPVAL                         R16 2
      110 GETTABLEKS                       R16 R16 K47 ["FONT"]
      112 SETTABLEKS                       R16 R15 K38 ["Font"]
      114 GETTABLEKS                       R16 R3 K12 ["uploadResult"]
      116 GETTABLEKS                       R16 R16 K48 ["successText"]
      118 SETTABLEKS                       R16 R15 K39 ["TextColor3"]
      120 GETUPVAL                         R16 2
      121 GETTABLEKS                       R16 R16 K49 ["FONT_SIZE_TITLE"]
      123 SETTABLEKS                       R16 R15 K40 ["TextSize"]
      125 GETIMPORT                        R16 K52 [Enum.TextXAlignment.Center]
      127 SETTABLEKS                       R16 R15 K41 ["TextXAlignment"]
      129 GETIMPORT                        R16 K53 [Enum.TextYAlignment.Center]
      131 SETTABLEKS                       R16 R15 K42 ["TextYAlignment"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K33 ["Title"]
      136 GETUPVAL                         R13 0
      137 GETTABLEKS                       R13 R13 K4 ["createElement"]
      139 LOADK                            R14 K5 ["Frame"]
      140 DUPTABLE                         R15 K54 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"]}]
      141 GETIMPORT                        R16 K28 [UDim2.new]
      143 LOADN                            R17 0
      144 LOADN                            R18 400
      145 LOADN                            R19 0
      146 LOADN                            R20 72
      147 CALL                             R16 4 1
      148 SETTABLEKS                       R16 R15 K10 ["Size"]
      150 GETIMPORT                        R16 K28 [UDim2.new]
      152 LOADK                            R17 K29 [0.5]
      153 LOADN                            R18 -200
      154 LOADN                            R19 0
      155 LOADN                            R20 49
      156 CALL                             R16 4 1
      157 SETTABLEKS                       R16 R15 K24 ["Position"]
      159 DUPTABLE                         R16 K57 [{"UIListLayout", "ModerationMessage"}]
      160 GETUPVAL                         R17 0
      161 GETTABLEKS                       R17 R17 K4 ["createElement"]
      163 LOADK                            R18 K55 ["UIListLayout"]
      164 DUPTABLE                         R19 K60 [{"Padding", "SortOrder"}]
      165 GETIMPORT                        R20 K62 [UDim.new]
      167 LOADN                            R21 0
      168 LOADN                            R22 12
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K58 ["Padding"]
      172 GETIMPORT                        R20 K64 [Enum.SortOrder.LayoutOrder]
      174 SETTABLEKS                       R20 R19 K59 ["SortOrder"]
      176 CALL                             R17 2 1
      177 SETTABLEKS                       R17 R16 K55 ["UIListLayout"]
      179 GETUPVAL                         R17 0
      180 GETTABLEKS                       R17 R17 K4 ["createElement"]
      182 LOADK                            R18 K36 ["TextLabel"]
      183 DUPTABLE                         R19 K65 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["LayoutOrder"] = 0}]
      184 GETUPVAL                         R20 2
      185 GETTABLEKS                       R20 R20 K47 ["FONT"]
      187 SETTABLEKS                       R20 R19 K38 ["Font"]
      189 LOADK                            R22 K44 ["General"]
      190 LOADK                            R23 K66 ["YouMayFindPackagesInToolbox"]
      191 NAMECALL                         R20 R2 K46 ["getText"]
      193 CALL                             R20 3 1
      194 SETTABLEKS                       R20 R19 K37 ["Text"]
      196 GETTABLEKS                       R20 R3 K12 ["uploadResult"]
      198 GETTABLEKS                       R20 R20 K67 ["text"]
      200 SETTABLEKS                       R20 R19 K39 ["TextColor3"]
      202 GETUPVAL                         R20 2
      203 GETTABLEKS                       R20 R20 K68 ["FONT_SIZE_MEDIUM"]
      205 SETTABLEKS                       R20 R19 K40 ["TextSize"]
      207 GETIMPORT                        R20 K28 [UDim2.new]
      209 LOADN                            R21 1
      210 LOADN                            R22 0
      211 LOADN                            R23 0
      212 LOADN                            R24 24
      213 CALL                             R20 4 1
      214 SETTABLEKS                       R20 R19 K10 ["Size"]
      216 GETIMPORT                        R20 K53 [Enum.TextYAlignment.Center]
      218 SETTABLEKS                       R20 R19 K42 ["TextYAlignment"]
      220 CALL                             R17 2 1
      221 SETTABLEKS                       R17 R16 K56 ["ModerationMessage"]
      223 CALL                             R13 3 1
      224 SETTABLEKS                       R13 R12 K34 ["Rows"]
      226 CALL                             R9 3 1
      227 SETTABLEKS                       R9 R8 K15 ["LoadingResultSuccess"]
      229 GETTABLEKS                       R10 R1 K30 ["uploadSucceeded"]
      231 NOT                              R9 R10
      232 JUMPIFNOT                        R9 ; [+138]
      233 GETUPVAL                         R9 0
      234 GETTABLEKS                       R9 R9 K4 ["createElement"]
      236 LOADK                            R10 K5 ["Frame"]
      237 DUPTABLE                         R11 K32 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      238 GETIMPORT                        R12 K28 [UDim2.new]
      240 LOADN                            R13 0
      241 LOADN                            R14 0
      242 LOADN                            R15 0
      243 LOADN                            R16 279
      244 CALL                             R12 4 1
      245 SETTABLEKS                       R12 R11 K24 ["Position"]
      247 GETIMPORT                        R12 K28 [UDim2.new]
      249 LOADN                            R13 1
      250 LOADN                            R14 0
      251 LOADN                            R15 1
      252 LOADN                            R16 -279
      253 CALL                             R12 4 1
      254 SETTABLEKS                       R12 R11 K10 ["Size"]
      256 DUPTABLE                         R12 K70 [{"Title", "Reason"}]
      257 GETUPVAL                         R13 0
      258 GETTABLEKS                       R13 R13 K4 ["createElement"]
      260 LOADK                            R14 K36 ["TextLabel"]
      261 DUPTABLE                         R15 K71 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      262 GETUPVAL                         R16 2
      263 GETTABLEKS                       R16 R16 K47 ["FONT"]
      265 SETTABLEKS                       R16 R15 K38 ["Font"]
      267 GETIMPORT                        R16 K28 [UDim2.new]
      269 LOADK                            R17 K29 [0.5]
      270 LOADN                            R18 -200
      271 LOADN                            R19 0
      272 LOADN                            R20 0
      273 CALL                             R16 4 1
      274 SETTABLEKS                       R16 R15 K24 ["Position"]
      276 GETIMPORT                        R16 K28 [UDim2.new]
      278 LOADN                            R17 0
      279 LOADN                            R18 400
      280 LOADN                            R19 0
      281 LOADN                            R20 36
      282 CALL                             R16 4 1
      283 SETTABLEKS                       R16 R15 K10 ["Size"]
      285 LOADK                            R18 K44 ["General"]
      286 LOADK                            R19 K72 ["ConvertToPackageFailed"]
      287 NAMECALL                         R16 R2 K46 ["getText"]
      289 CALL                             R16 3 1
      290 SETTABLEKS                       R16 R15 K37 ["Text"]
      292 GETTABLEKS                       R16 R3 K12 ["uploadResult"]
      294 GETTABLEKS                       R16 R16 K67 ["text"]
      296 SETTABLEKS                       R16 R15 K39 ["TextColor3"]
      298 GETUPVAL                         R16 2
      299 GETTABLEKS                       R16 R16 K49 ["FONT_SIZE_TITLE"]
      301 SETTABLEKS                       R16 R15 K40 ["TextSize"]
      303 GETIMPORT                        R16 K52 [Enum.TextXAlignment.Center]
      305 SETTABLEKS                       R16 R15 K41 ["TextXAlignment"]
      307 GETIMPORT                        R16 K53 [Enum.TextYAlignment.Center]
      309 SETTABLEKS                       R16 R15 K42 ["TextYAlignment"]
      311 CALL                             R13 2 1
      312 SETTABLEKS                       R13 R12 K33 ["Title"]
      314 GETUPVAL                         R13 0
      315 GETTABLEKS                       R13 R13 K4 ["createElement"]
      317 LOADK                            R14 K36 ["TextLabel"]
      318 DUPTABLE                         R15 K75 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextWrapped"] = True, ["TextColor3"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"]}]
      319 GETUPVAL                         R16 2
      320 GETTABLEKS                       R16 R16 K47 ["FONT"]
      322 SETTABLEKS                       R16 R15 K38 ["Font"]
      324 GETIMPORT                        R16 K28 [UDim2.new]
      326 LOADK                            R17 K29 [0.5]
      327 LOADN                            R18 -200
      328 LOADN                            R19 0
      329 LOADN                            R20 49
      330 CALL                             R16 4 1
      331 SETTABLEKS                       R16 R15 K24 ["Position"]
      333 GETIMPORT                        R16 K28 [UDim2.new]
      335 LOADN                            R17 0
      336 LOADN                            R18 400
      337 LOADN                            R19 0
      338 LOADN                            R20 72
      339 CALL                             R16 4 1
      340 SETTABLEKS                       R16 R15 K10 ["Size"]
      342 GETTABLEKS                       R16 R1 K76 ["networkError"]
      344 GETTABLEKS                       R16 R16 K77 ["responseBody"]
      346 SETTABLEKS                       R16 R15 K37 ["Text"]
      348 GETTABLEKS                       R16 R3 K12 ["uploadResult"]
      350 GETTABLEKS                       R16 R16 K67 ["text"]
      352 SETTABLEKS                       R16 R15 K39 ["TextColor3"]
      354 GETUPVAL                         R16 2
      355 GETTABLEKS                       R16 R16 K68 ["FONT_SIZE_MEDIUM"]
      357 SETTABLEKS                       R16 R15 K40 ["TextSize"]
      359 GETIMPORT                        R16 K52 [Enum.TextXAlignment.Center]
      361 SETTABLEKS                       R16 R15 K41 ["TextXAlignment"]
      363 GETIMPORT                        R16 K79 [Enum.TextYAlignment.Top]
      365 SETTABLEKS                       R16 R15 K42 ["TextYAlignment"]
      367 CALL                             R13 2 1
      368 SETTABLEKS                       R13 R12 K69 ["Reason"]
      370 CALL                             R9 3 1
      371 SETTABLEKS                       R9 R8 K16 ["LoadingResultFailure"]
      373 GETUPVAL                         R9 0
      374 GETTABLEKS                       R9 R9 K4 ["createElement"]
      376 LOADK                            R10 K5 ["Frame"]
      377 DUPTABLE                         R11 K80 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      378 GETIMPORT                        R12 K28 [UDim2.new]
      380 LOADN                            R13 0
      381 LOADN                            R14 0
      382 LOADN                            R15 1
      383 LOADN                            R16 -80
      384 CALL                             R12 4 1
      385 SETTABLEKS                       R12 R11 K24 ["Position"]
      387 GETIMPORT                        R12 K28 [UDim2.new]
      389 LOADN                            R13 1
      390 LOADN                            R14 0
      391 LOADN                            R15 0
      392 LOADN                            R16 80
      393 CALL                             R12 4 1
      394 SETTABLEKS                       R12 R11 K10 ["Size"]
      396 DUPTABLE                         R12 K82 [{"CloseButton"}]
      397 GETUPVAL                         R13 0
      398 GETTABLEKS                       R13 R13 K4 ["createElement"]
      400 GETUPVAL                         R14 3
      401 DUPTABLE                         R15 K86 [{["LayoutOrder"] = 0, ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round", ["Text"]}]
      402 GETTABLEKS                       R16 R1 K87 ["onClose"]
      404 JUMPIF                           R16 ; [+1]
      405 DUPCLOSURE                       R16 K88 [PROTO_1]
      406 SETTABLEKS                       R16 R15 K83 ["OnClick"]
      408 GETIMPORT                        R16 K28 [UDim2.new]
      410 LOADK                            R17 K29 [0.5]
      411 LOADN                            R18 -60
      412 LOADK                            R19 K29 [0.5]
      413 LOADN                            R20 -16
      414 CALL                             R16 4 1
      415 SETTABLEKS                       R16 R15 K24 ["Position"]
      417 GETIMPORT                        R16 K28 [UDim2.new]
      419 LOADN                            R17 0
      420 LOADN                            R18 120
      421 LOADN                            R19 0
      422 LOADN                            R20 32
      423 CALL                             R16 4 1
      424 SETTABLEKS                       R16 R15 K10 ["Size"]
      426 LOADK                            R18 K89 ["Action"]
      427 LOADK                            R19 K90 ["Close"]
      428 NAMECALL                         R16 R2 K46 ["getText"]
      430 CALL                             R16 3 1
      431 SETTABLEKS                       R16 R15 K37 ["Text"]
      433 CALL                             R13 2 1
      434 SETTABLEKS                       R13 R12 K81 ["CloseButton"]
      436 CALL                             R9 3 1
      437 SETTABLEKS                       R9 R8 K17 ["Footer"]
      439 CALL                             R5 3 -1
      440 RETURN                           R5 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K6 [{"assetId", "assetName", "uploadSucceeded", "networkError", "assetConfigData", "assetTypeEnum"}]
        6 GETTABLEKS                       R3 R0 K7 ["AssetConfigReducer"]
        8 GETTABLEKS                       R3 R3 K0 ["assetId"]
       10 SETTABLEKS                       R3 R2 K0 ["assetId"]
       12 GETTABLEKS                       R3 R0 K7 ["AssetConfigReducer"]
       14 GETTABLEKS                       R3 R3 K1 ["assetName"]
       16 SETTABLEKS                       R3 R2 K1 ["assetName"]
       18 GETTABLEKS                       R3 R0 K7 ["AssetConfigReducer"]
       20 GETTABLEKS                       R3 R3 K2 ["uploadSucceeded"]
       22 SETTABLEKS                       R3 R2 K2 ["uploadSucceeded"]
       24 GETTABLEKS                       R3 R0 K8 ["NetworkReducer"]
       26 GETTABLEKS                       R3 R3 K3 ["networkError"]
       28 SETTABLEKS                       R3 R2 K3 ["networkError"]
       30 GETTABLEKS                       R3 R0 K7 ["AssetConfigReducer"]
       32 GETTABLEKS                       R3 R3 K4 ["assetConfigData"]
       34 SETTABLEKS                       R3 R2 K4 ["assetConfigData"]
       36 GETTABLEKS                       R3 R0 K7 ["AssetConfigReducer"]
       38 GETTABLEKS                       R3 R3 K5 ["assetTypeEnum"]
       40 SETTABLEKS                       R3 R2 K5 ["assetTypeEnum"]
       42 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R5 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R7 K12 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K13 ["Constants"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R4 K14 ["UI"]
       45 GETTABLEKS                       R10 R9 K15 ["Button"]
       47 GETTABLEKS                       R11 R0 K11 ["Src"]
       49 GETTABLEKS                       R11 R11 K16 ["Components"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R13 R11 K17 ["ConvertToPackageWindow"]
       55 GETTABLEKS                       R13 R13 K18 ["AssetThumbnailPreview"]
       57 CALL                             R12 1 1
       58 GETTABLEKS                       R13 R2 K19 ["PureComponent"]
       60 LOADK                            R15 K20 ["AssetUploadResult"]
       61 NAMECALL                         R13 R13 K21 ["extend"]
       63 CALL                             R13 2 1
       64 DUPCLOSURE                       R14 K22 [PROTO_0]
       65 SETTABLEKS                       R14 R13 K23 ["init"]
       67 DUPCLOSURE                       R14 K24 [PROTO_2]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R14 R13 K25 ["render"]
       74 MOVE                             R14 R6
       75 DUPTABLE                         R15 K28 [{"Localization", "Stylizer"}]
       76 GETTABLEKS                       R16 R5 K26 ["Localization"]
       78 SETTABLEKS                       R16 R15 K26 ["Localization"]
       80 GETTABLEKS                       R16 R5 K27 ["Stylizer"]
       82 SETTABLEKS                       R16 R15 K27 ["Stylizer"]
       84 CALL                             R14 1 1
       85 MOVE                             R15 R13
       86 CALL                             R14 1 1
       87 MOVE                             R13 R14
       88 DUPCLOSURE                       R14 K29 [PROTO_3]
       89 DUPCLOSURE                       R15 K30 [PROTO_4]
       90 GETTABLEKS                       R16 R3 K31 ["connect"]
       92 MOVE                             R17 R14
       93 MOVE                             R18 R15
       94 CALL                             R16 2 1
       95 MOVE                             R17 R13
       96 CALL                             R16 1 -1
       97 RETURN                           R16 -1
