PROTO_0:
        0 DUPTABLE                         R2 K1 [{"isLoading"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isLoading"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["assetName"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K10 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
       13 GETTABLEKS                       R9 R3 K11 ["uploadResult"]
       15 GETTABLEKS                       R8 R9 K12 ["background"]
       17 SETTABLEKS                       R8 R7 K6 ["BackgroundColor3"]
       19 LOADN                            R8 0
       20 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       22 LOADN                            R8 0
       23 SETTABLEKS                       R8 R7 K8 ["BorderSizePixel"]
       25 GETTABLEKS                       R8 R1 K9 ["Size"]
       27 SETTABLEKS                       R8 R7 K9 ["Size"]
       29 DUPTABLE                         R8 K17 [{"ModelPreview", "LoadingResultSuccess", "LoadingResultFailure", "Footer"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K4 ["createElement"]
       33 GETUPVAL                         R10 1
       34 DUPTABLE                         R11 K22 [{"title", "titleHeight", "titlePadding", "Position", "Size"}]
       35 SETTABLEKS                       R4 R11 K18 ["title"]
       37 LOADN                            R12 24
       38 SETTABLEKS                       R12 R11 K19 ["titleHeight"]
       40 LOADN                            R12 12
       41 SETTABLEKS                       R12 R11 K20 ["titlePadding"]
       43 GETIMPORT                        R12 K25 [UDim2.new]
       45 LOADK                            R13 K26 [0.5]
       46 LOADN                            R14 181
       47 LOADN                            R15 0
       48 LOADN                            R16 48
       49 CALL                             R12 4 1
       50 SETTABLEKS                       R12 R11 K21 ["Position"]
       52 GETIMPORT                        R12 K25 [UDim2.new]
       54 LOADN                            R13 0
       55 LOADN                            R14 150
       56 LOADN                            R15 0
       57 LOADN                            R16 186
       58 CALL                             R12 4 1
       59 SETTABLEKS                       R12 R11 K9 ["Size"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K13 ["ModelPreview"]
       64 GETTABLEKS                       R9 R1 K27 ["uploadSucceeded"]
       66 JUMPIFNOT                        R9 ; [+187]
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R9 R10 K4 ["createElement"]
       70 LOADK                            R10 K5 ["Frame"]
       71 DUPTABLE                         R11 K28 [{"Position", "Size", "BackgroundTransparency"}]
       72 GETIMPORT                        R12 K25 [UDim2.new]
       74 LOADN                            R13 0
       75 LOADN                            R14 0
       76 LOADN                            R15 0
       77 LOADN                            R16 23
       78 CALL                             R12 4 1
       79 SETTABLEKS                       R12 R11 K21 ["Position"]
       81 GETIMPORT                        R12 K25 [UDim2.new]
       83 LOADN                            R13 1
       84 LOADN                            R14 0
       85 LOADN                            R15 1
       86 LOADN                            R16 233
       87 CALL                             R12 4 1
       88 SETTABLEKS                       R12 R11 K9 ["Size"]
       90 LOADN                            R12 1
       91 SETTABLEKS                       R12 R11 K7 ["BackgroundTransparency"]
       93 DUPTABLE                         R12 K31 [{"Title", "Rows"}]
       94 GETUPVAL                         R14 0
       95 GETTABLEKS                       R13 R14 K4 ["createElement"]
       97 LOADK                            R14 K32 ["TextLabel"]
       98 DUPTABLE                         R15 K39 [{"BackgroundTransparency", "Position", "Size", "Text", "Font", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
       99 LOADN                            R16 1
      100 SETTABLEKS                       R16 R15 K7 ["BackgroundTransparency"]
      102 GETIMPORT                        R16 K25 [UDim2.new]
      104 LOADK                            R17 K26 [0.5]
      105 LOADN                            R18 56
      106 LOADN                            R19 0
      107 LOADN                            R20 0
      108 CALL                             R16 4 1
      109 SETTABLEKS                       R16 R15 K21 ["Position"]
      111 GETIMPORT                        R16 K25 [UDim2.new]
      113 LOADN                            R17 0
      114 LOADN                            R18 144
      115 LOADN                            R19 0
      116 LOADN                            R20 36
      117 CALL                             R16 4 1
      118 SETTABLEKS                       R16 R15 K9 ["Size"]
      120 LOADK                            R18 K40 ["General"]
      121 LOADK                            R19 K41 ["SuccessfullyConverted"]
      122 NAMECALL                         R16 R2 K42 ["getText"]
      124 CALL                             R16 3 1
      125 SETTABLEKS                       R16 R15 K33 ["Text"]
      127 GETUPVAL                         R17 2
      128 GETTABLEKS                       R16 R17 K43 ["FONT"]
      130 SETTABLEKS                       R16 R15 K34 ["Font"]
      132 GETTABLEKS                       R17 R3 K11 ["uploadResult"]
      134 GETTABLEKS                       R16 R17 K44 ["successText"]
      136 SETTABLEKS                       R16 R15 K35 ["TextColor3"]
      138 GETUPVAL                         R17 2
      139 GETTABLEKS                       R16 R17 K45 ["FONT_SIZE_TITLE"]
      141 SETTABLEKS                       R16 R15 K36 ["TextSize"]
      143 GETIMPORT                        R16 K48 [Enum.TextXAlignment.Center]
      145 SETTABLEKS                       R16 R15 K37 ["TextXAlignment"]
      147 GETIMPORT                        R16 K49 [Enum.TextYAlignment.Center]
      149 SETTABLEKS                       R16 R15 K38 ["TextYAlignment"]
      151 CALL                             R13 2 1
      152 SETTABLEKS                       R13 R12 K29 ["Title"]
      154 GETUPVAL                         R14 0
      155 GETTABLEKS                       R13 R14 K4 ["createElement"]
      157 LOADK                            R14 K5 ["Frame"]
      158 DUPTABLE                         R15 K50 [{"BackgroundTransparency", "Size", "Position"}]
      159 LOADN                            R16 1
      160 SETTABLEKS                       R16 R15 K7 ["BackgroundTransparency"]
      162 GETIMPORT                        R16 K25 [UDim2.new]
      164 LOADN                            R17 0
      165 LOADN                            R18 144
      166 LOADN                            R19 0
      167 LOADN                            R20 72
      168 CALL                             R16 4 1
      169 SETTABLEKS                       R16 R15 K9 ["Size"]
      171 GETIMPORT                        R16 K25 [UDim2.new]
      173 LOADK                            R17 K26 [0.5]
      174 LOADN                            R18 56
      175 LOADN                            R19 0
      176 LOADN                            R20 49
      177 CALL                             R16 4 1
      178 SETTABLEKS                       R16 R15 K21 ["Position"]
      180 DUPTABLE                         R16 K53 [{"UIListLayout", "ModerationMessage"}]
      181 GETUPVAL                         R18 0
      182 GETTABLEKS                       R17 R18 K4 ["createElement"]
      184 LOADK                            R18 K51 ["UIListLayout"]
      185 DUPTABLE                         R19 K56 [{"Padding", "SortOrder"}]
      186 GETIMPORT                        R20 K58 [UDim.new]
      188 LOADN                            R21 0
      189 LOADN                            R22 12
      190 CALL                             R20 2 1
      191 SETTABLEKS                       R20 R19 K54 ["Padding"]
      193 GETIMPORT                        R20 K60 [Enum.SortOrder.LayoutOrder]
      195 SETTABLEKS                       R20 R19 K55 ["SortOrder"]
      197 CALL                             R17 2 1
      198 SETTABLEKS                       R17 R16 K51 ["UIListLayout"]
      200 GETUPVAL                         R18 0
      201 GETTABLEKS                       R17 R18 K4 ["createElement"]
      203 LOADK                            R18 K32 ["TextLabel"]
      204 DUPTABLE                         R19 K61 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "LayoutOrder"}]
      205 LOADN                            R20 1
      206 SETTABLEKS                       R20 R19 K7 ["BackgroundTransparency"]
      208 GETUPVAL                         R21 2
      209 GETTABLEKS                       R20 R21 K43 ["FONT"]
      211 SETTABLEKS                       R20 R19 K34 ["Font"]
      213 LOADK                            R22 K40 ["General"]
      214 LOADK                            R23 K62 ["YouMayFindPackagesInToolbox"]
      215 NAMECALL                         R20 R2 K42 ["getText"]
      217 CALL                             R20 3 1
      218 SETTABLEKS                       R20 R19 K33 ["Text"]
      220 GETTABLEKS                       R21 R3 K11 ["uploadResult"]
      222 GETTABLEKS                       R20 R21 K63 ["text"]
      224 SETTABLEKS                       R20 R19 K35 ["TextColor3"]
      226 GETUPVAL                         R21 2
      227 GETTABLEKS                       R20 R21 K64 ["FONT_SIZE_MEDIUM"]
      229 SETTABLEKS                       R20 R19 K36 ["TextSize"]
      231 GETIMPORT                        R20 K25 [UDim2.new]
      233 LOADN                            R21 1
      234 LOADN                            R22 0
      235 LOADN                            R23 0
      236 LOADN                            R24 24
      237 CALL                             R20 4 1
      238 SETTABLEKS                       R20 R19 K9 ["Size"]
      240 GETIMPORT                        R20 K49 [Enum.TextYAlignment.Center]
      242 SETTABLEKS                       R20 R19 K38 ["TextYAlignment"]
      244 LOADN                            R20 0
      245 SETTABLEKS                       R20 R19 K59 ["LayoutOrder"]
      247 CALL                             R17 2 1
      248 SETTABLEKS                       R17 R16 K52 ["ModerationMessage"]
      250 CALL                             R13 3 1
      251 SETTABLEKS                       R13 R12 K30 ["Rows"]
      253 CALL                             R9 3 1
      254 SETTABLEKS                       R9 R8 K14 ["LoadingResultSuccess"]
      256 GETTABLEKS                       R10 R1 K27 ["uploadSucceeded"]
      258 NOT                              R9 R10
      259 JUMPIFNOT                        R9 ; [+150]
      260 GETUPVAL                         R10 0
      261 GETTABLEKS                       R9 R10 K4 ["createElement"]
      263 LOADK                            R10 K5 ["Frame"]
      264 DUPTABLE                         R11 K28 [{"Position", "Size", "BackgroundTransparency"}]
      265 GETIMPORT                        R12 K25 [UDim2.new]
      267 LOADN                            R13 0
      268 LOADN                            R14 0
      269 LOADN                            R15 0
      270 LOADN                            R16 23
      271 CALL                             R12 4 1
      272 SETTABLEKS                       R12 R11 K21 ["Position"]
      274 GETIMPORT                        R12 K25 [UDim2.new]
      276 LOADN                            R13 1
      277 LOADN                            R14 0
      278 LOADN                            R15 1
      279 LOADN                            R16 233
      280 CALL                             R12 4 1
      281 SETTABLEKS                       R12 R11 K9 ["Size"]
      283 LOADN                            R12 1
      284 SETTABLEKS                       R12 R11 K7 ["BackgroundTransparency"]
      286 DUPTABLE                         R12 K66 [{"Title", "Reason"}]
      287 GETUPVAL                         R14 0
      288 GETTABLEKS                       R13 R14 K4 ["createElement"]
      290 LOADK                            R14 K32 ["TextLabel"]
      291 DUPTABLE                         R15 K67 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      292 LOADN                            R16 1
      293 SETTABLEKS                       R16 R15 K7 ["BackgroundTransparency"]
      295 GETUPVAL                         R17 2
      296 GETTABLEKS                       R16 R17 K43 ["FONT"]
      298 SETTABLEKS                       R16 R15 K34 ["Font"]
      300 GETIMPORT                        R16 K25 [UDim2.new]
      302 LOADK                            R17 K26 [0.5]
      303 LOADN                            R18 56
      304 LOADN                            R19 0
      305 LOADN                            R20 0
      306 CALL                             R16 4 1
      307 SETTABLEKS                       R16 R15 K21 ["Position"]
      309 GETIMPORT                        R16 K25 [UDim2.new]
      311 LOADN                            R17 0
      312 LOADN                            R18 144
      313 LOADN                            R19 0
      314 LOADN                            R20 36
      315 CALL                             R16 4 1
      316 SETTABLEKS                       R16 R15 K9 ["Size"]
      318 LOADK                            R18 K40 ["General"]
      319 LOADK                            R19 K68 ["ConvertToPackageFailed"]
      320 NAMECALL                         R16 R2 K42 ["getText"]
      322 CALL                             R16 3 1
      323 SETTABLEKS                       R16 R15 K33 ["Text"]
      325 GETTABLEKS                       R17 R3 K11 ["uploadResult"]
      327 GETTABLEKS                       R16 R17 K63 ["text"]
      329 SETTABLEKS                       R16 R15 K35 ["TextColor3"]
      331 GETUPVAL                         R17 2
      332 GETTABLEKS                       R16 R17 K45 ["FONT_SIZE_TITLE"]
      334 SETTABLEKS                       R16 R15 K36 ["TextSize"]
      336 GETIMPORT                        R16 K48 [Enum.TextXAlignment.Center]
      338 SETTABLEKS                       R16 R15 K37 ["TextXAlignment"]
      340 GETIMPORT                        R16 K49 [Enum.TextYAlignment.Center]
      342 SETTABLEKS                       R16 R15 K38 ["TextYAlignment"]
      344 CALL                             R13 2 1
      345 SETTABLEKS                       R13 R12 K29 ["Title"]
      347 GETUPVAL                         R14 0
      348 GETTABLEKS                       R13 R14 K4 ["createElement"]
      350 LOADK                            R14 K32 ["TextLabel"]
      351 DUPTABLE                         R15 K70 [{"BackgroundTransparency", "Font", "Position", "Size", "Text", "TextWrapped", "TextColor3", "TextSize", "TextXAlignment", "TextYAlignment"}]
      352 LOADN                            R16 1
      353 SETTABLEKS                       R16 R15 K7 ["BackgroundTransparency"]
      355 GETUPVAL                         R17 2
      356 GETTABLEKS                       R16 R17 K43 ["FONT"]
      358 SETTABLEKS                       R16 R15 K34 ["Font"]
      360 GETIMPORT                        R16 K25 [UDim2.new]
      362 LOADK                            R17 K26 [0.5]
      363 LOADN                            R18 56
      364 LOADN                            R19 0
      365 LOADN                            R20 49
      366 CALL                             R16 4 1
      367 SETTABLEKS                       R16 R15 K21 ["Position"]
      369 GETIMPORT                        R16 K25 [UDim2.new]
      371 LOADN                            R17 0
      372 LOADN                            R18 144
      373 LOADN                            R19 0
      374 LOADN                            R20 72
      375 CALL                             R16 4 1
      376 SETTABLEKS                       R16 R15 K9 ["Size"]
      378 GETTABLEKS                       R17 R1 K71 ["networkError"]
      380 GETTABLEKS                       R16 R17 K72 ["responseBody"]
      382 SETTABLEKS                       R16 R15 K33 ["Text"]
      384 LOADB                            R16 1
      385 SETTABLEKS                       R16 R15 K69 ["TextWrapped"]
      387 GETTABLEKS                       R17 R3 K11 ["uploadResult"]
      389 GETTABLEKS                       R16 R17 K63 ["text"]
      391 SETTABLEKS                       R16 R15 K35 ["TextColor3"]
      393 GETUPVAL                         R17 2
      394 GETTABLEKS                       R16 R17 K64 ["FONT_SIZE_MEDIUM"]
      396 SETTABLEKS                       R16 R15 K36 ["TextSize"]
      398 GETIMPORT                        R16 K48 [Enum.TextXAlignment.Center]
      400 SETTABLEKS                       R16 R15 K37 ["TextXAlignment"]
      402 GETIMPORT                        R16 K74 [Enum.TextYAlignment.Top]
      404 SETTABLEKS                       R16 R15 K38 ["TextYAlignment"]
      406 CALL                             R13 2 1
      407 SETTABLEKS                       R13 R12 K65 ["Reason"]
      409 CALL                             R9 3 1
      410 SETTABLEKS                       R9 R8 K15 ["LoadingResultFailure"]
      412 GETUPVAL                         R10 0
      413 GETTABLEKS                       R9 R10 K4 ["createElement"]
      415 LOADK                            R10 K5 ["Frame"]
      416 DUPTABLE                         R11 K75 [{"BackgroundTransparency", "Position", "Size"}]
      417 LOADN                            R12 1
      418 SETTABLEKS                       R12 R11 K7 ["BackgroundTransparency"]
      420 GETIMPORT                        R12 K25 [UDim2.new]
      422 LOADN                            R13 0
      423 LOADN                            R14 0
      424 LOADN                            R15 1
      425 LOADN                            R16 176
      426 CALL                             R12 4 1
      427 SETTABLEKS                       R12 R11 K21 ["Position"]
      429 GETIMPORT                        R12 K25 [UDim2.new]
      431 LOADN                            R13 1
      432 LOADN                            R14 0
      433 LOADN                            R15 0
      434 LOADN                            R16 80
      435 CALL                             R12 4 1
      436 SETTABLEKS                       R12 R11 K9 ["Size"]
      438 DUPTABLE                         R12 K77 [{"CloseButton"}]
      439 GETUPVAL                         R14 0
      440 GETTABLEKS                       R13 R14 K4 ["createElement"]
      442 GETUPVAL                         R14 3
      443 DUPTABLE                         R15 K80 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
      444 LOADN                            R16 0
      445 SETTABLEKS                       R16 R15 K59 ["LayoutOrder"]
      447 GETTABLEKS                       R16 R1 K81 ["onClose"]
      449 JUMPIF                           R16 ; [+1]
      450 DUPCLOSURE                       R16 K82 [PROTO_1]
      451 SETTABLEKS                       R16 R15 K78 ["OnClick"]
      453 GETIMPORT                        R16 K25 [UDim2.new]
      455 LOADK                            R17 K26 [0.5]
      456 LOADN                            R18 196
      457 LOADK                            R19 K26 [0.5]
      458 LOADN                            R20 240
      459 CALL                             R16 4 1
      460 SETTABLEKS                       R16 R15 K21 ["Position"]
      462 GETIMPORT                        R16 K25 [UDim2.new]
      464 LOADN                            R17 0
      465 LOADN                            R18 120
      466 LOADN                            R19 0
      467 LOADN                            R20 32
      468 CALL                             R16 4 1
      469 SETTABLEKS                       R16 R15 K9 ["Size"]
      471 LOADK                            R16 K83 ["Round"]
      472 SETTABLEKS                       R16 R15 K79 ["Style"]
      474 LOADK                            R18 K84 ["Action"]
      475 LOADK                            R19 K85 ["Close"]
      476 NAMECALL                         R16 R2 K42 ["getText"]
      478 CALL                             R16 3 1
      479 SETTABLEKS                       R16 R15 K33 ["Text"]
      481 CALL                             R13 2 1
      482 SETTABLEKS                       R13 R12 K76 ["CloseButton"]
      484 CALL                             R9 3 1
      485 SETTABLEKS                       R9 R8 K16 ["Footer"]
      487 CALL                             R5 3 -1
      488 RETURN                           R5 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K6 [{"assetId", "assetName", "uploadSucceeded", "networkError", "assetConfigData", "assetTypeEnum"}]
        6 GETTABLEKS                       R4 R0 K7 ["AssetConfigReducer"]
        8 GETTABLEKS                       R3 R4 K0 ["assetId"]
       10 SETTABLEKS                       R3 R2 K0 ["assetId"]
       12 GETTABLEKS                       R4 R0 K7 ["AssetConfigReducer"]
       14 GETTABLEKS                       R3 R4 K1 ["assetName"]
       16 SETTABLEKS                       R3 R2 K1 ["assetName"]
       18 GETTABLEKS                       R4 R0 K7 ["AssetConfigReducer"]
       20 GETTABLEKS                       R3 R4 K2 ["uploadSucceeded"]
       22 SETTABLEKS                       R3 R2 K2 ["uploadSucceeded"]
       24 GETTABLEKS                       R4 R0 K8 ["NetworkReducer"]
       26 GETTABLEKS                       R3 R4 K3 ["networkError"]
       28 SETTABLEKS                       R3 R2 K3 ["networkError"]
       30 GETTABLEKS                       R4 R0 K7 ["AssetConfigReducer"]
       32 GETTABLEKS                       R3 R4 K4 ["assetConfigData"]
       34 SETTABLEKS                       R3 R2 K4 ["assetConfigData"]
       36 GETTABLEKS                       R4 R0 K7 ["AssetConfigReducer"]
       38 GETTABLEKS                       R3 R4 K5 ["assetTypeEnum"]
       40 SETTABLEKS                       R3 R2 K5 ["assetTypeEnum"]
       42 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["RoactRodux"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K3 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R8 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R8 K12 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K13 ["Constants"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R4 K14 ["UI"]
       45 GETTABLEKS                       R10 R9 K15 ["Button"]
       47 GETTABLEKS                       R12 R0 K11 ["Src"]
       49 GETTABLEKS                       R11 R12 K16 ["Components"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R14 R11 K17 ["ConvertToPackageWindow"]
       55 GETTABLEKS                       R13 R14 K18 ["AssetThumbnailPreview"]
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
