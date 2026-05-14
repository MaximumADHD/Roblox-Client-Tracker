PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R0 K1 ["baseFrameRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["createRef"]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R0 K2 ["layouterRef"]
       12 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ScreenFlowType"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["FLOW_TYPE"]
        7 GETTABLEKS                       R3 R3 K3 ["EDIT_FLOW"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+19]
       11 GETTABLEKS                       R2 R1 K4 ["PreviewType"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["PreviewTypes"]
       16 GETTABLEKS                       R3 R3 K6 ["ImagePicker"]
       18 JUMPIFNOTEQ                      R2 R3 ; [+10]
       20 GETTABLEKS                       R2 R1 K7 ["getThumbnailStatus"]
       22 GETTABLEKS                       R3 R1 K8 ["Network"]
       24 GETTABLEKS                       R3 R3 K9 ["networkInterface"]
       26 GETTABLEKS                       R4 R1 K10 ["AssetId"]
       28 CALL                             R2 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R2 ; [+2]
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+7]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["constructCreatorStoreConfigurationUrl"]
       10 GETUPVAL                         R1 0
       11 CALL                             R0 1 1
       12 JUMP                             ; [+4]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K4 ["getCreatorDashboardBaseUrl"]
       16 CALL                             R0 0 1
       17 GETUPVAL                         R1 3
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K5 ["OpenBrowserWindow"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["TabItems"]
        8 GETTABLEKS                       R5 R1 K4 ["CurrentTab"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetStatus"]
       12 GETTABLEKS                       R7 R1 K6 ["AssetId"]
       14 GETTABLEKS                       R8 R1 K7 ["AssetTypeEnum"]
       16 GETTABLEKS                       R9 R1 K8 ["TotalWidth"]
       18 GETTABLEKS                       R10 R1 K9 ["LayoutOrder"]
       20 GETTABLEKS                       R11 R1 K10 ["OnTabSelect"]
       22 GETTABLEKS                       R12 R1 K11 ["ChooseThumbnail"]
       24 GETTABLEKS                       R13 R1 K12 ["IconFile"]
       26 GETTABLEKS                       R14 R1 K13 ["PreviewType"]
       28 GETTABLEKS                       R15 R1 K14 ["thumbnailStatus"]
       30 GETTABLEKS                       R16 R1 K15 ["AllowedBundleTypeSettings"]
       32 JUMPIFNOT                        R11 ; [+6]
       33 JUMPIFNOT                        R4 ; [+5]
       34 LOADB                            R17 1
       35 LENGTH                           R18 R4
       36 LOADN                            R19 1
       37 JUMPIFLT                         R19 R18 ; [+2]
       39 LOADB                            R17 0
       40 GETTABLEKS                       R18 R2 K16 ["previewArea"]
       42 LOADNIL                          R19
       43 JUMPIFNOT                        R7 ; [+15]
       44 GETUPVAL                         R20 0
       45 GETTABLEKS                       R20 R20 K17 ["PreviewTypes"]
       47 GETTABLEKS                       R20 R20 K18 ["Thumbnail"]
       49 JUMPIFNOTEQ                      R14 R20 ; [+9]
       51 GETUPVAL                         R20 1
       52 GETTABLEKS                       R20 R20 K19 ["constructAssetThumbnailUrl"]
       54 MOVE                             R21 R7
       55 GETUPVAL                         R22 2
       56 GETUPVAL                         R23 2
       57 CALL                             R20 3 1
       58 MOVE                             R19 R20
       59 LOADK                            R22 K20 ["AssetConfigPreview"]
       60 LOADK                            R23 K21 ["MaxSize"]
       61 DUPTABLE                         R24 K24 [{"maxDimensionsX", "maxDimensionsY"}]
       62 LOADN                            R26 0
       63 FASTCALL1                        TOSTRING R26 ; [+2]
       64 GETIMPORT                        R25 K26 [tostring]
       66 CALL                             R25 1 1
       67 SETTABLEKS                       R25 R24 K22 ["maxDimensionsX"]
       69 LOADN                            R26 0
       70 FASTCALL1                        TOSTRING R26 ; [+2]
       71 GETIMPORT                        R25 K26 [tostring]
       73 CALL                             R25 1 1
       74 SETTABLEKS                       R25 R24 K23 ["maxDimensionsY"]
       76 NAMECALL                         R20 R3 K27 ["getText"]
       78 CALL                             R20 4 1
       79 GETUPVAL                         R21 3
       80 GETTABLEKS                       R21 R21 K28 ["new"]
       82 CALL                             R21 0 1
       83 GETUPVAL                         R22 4
       84 JUMPIFNOT                        R22 ; [+6]
       85 LOADB                            R22 0
       86 GETIMPORT                        R23 K32 [Enum.AssetType.Animation]
       88 JUMPIFNOTEQ                      R8 R23 ; [+2]
       90 NOT                              R22 R19
       91 GETUPVAL                         R23 5
       92 GETTABLEKS                       R23 R23 K33 ["isCreatorStoreAssetNotIncludingAnimation"]
       94 MOVE                             R24 R8
       95 CALL                             R23 1 1
       96 GETUPVAL                         R24 6
       97 GETTABLEKS                       R24 R24 K34 ["createElement"]
       99 LOADK                            R25 K35 ["Frame"]
      100 NEWTABLE                         R26 8 0
      102 GETIMPORT                        R27 K37 [UDim2.new]
      104 LOADN                            R28 0
      105 MOVE                             R29 R9
      106 LOADN                            R30 1
      107 LOADN                            R31 0
      108 CALL                             R27 4 1
      109 SETTABLEKS                       R27 R26 K38 ["Size"]
      111 LOADN                            R27 0
      112 SETTABLEKS                       R27 R26 K39 ["BackgroundTransparency"]
      114 GETTABLEKS                       R27 R18 K40 ["backgroundColor"]
      116 SETTABLEKS                       R27 R26 K41 ["BackgroundColor3"]
      118 LOADN                            R27 0
      119 SETTABLEKS                       R27 R26 K42 ["BorderSizePixel"]
      121 GETUPVAL                         R27 6
      122 GETTABLEKS                       R27 R27 K43 ["Ref"]
      124 GETTABLEKS                       R28 R0 K44 ["baseFrameRef"]
      126 SETTABLE                         R28 R26 R27
      127 SETTABLEKS                       R10 R26 K9 ["LayoutOrder"]
      129 DUPTABLE                         R27 K52 [{"Padding", "UIListLayout", "ImagePicker", "Thumbnail", "AssetThumbnailPreview", "AssetInfo", "Guide", "TabArea"}]
      130 GETUPVAL                         R28 6
      131 GETTABLEKS                       R28 R28 K34 ["createElement"]
      133 LOADK                            R29 K53 ["UIPadding"]
      134 DUPTABLE                         R30 K58 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      135 GETIMPORT                        R31 K60 [UDim.new]
      137 LOADN                            R32 0
      138 LOADN                            R33 24
      139 CALL                             R31 2 1
      140 SETTABLEKS                       R31 R30 K54 ["PaddingTop"]
      142 GETIMPORT                        R31 K60 [UDim.new]
      144 LOADN                            R32 0
      145 LOADN                            R33 24
      146 CALL                             R31 2 1
      147 SETTABLEKS                       R31 R30 K55 ["PaddingBottom"]
      149 GETIMPORT                        R31 K60 [UDim.new]
      151 LOADN                            R32 0
      152 LOADN                            R33 5
      153 CALL                             R31 2 1
      154 SETTABLEKS                       R31 R30 K56 ["PaddingLeft"]
      156 GETIMPORT                        R31 K60 [UDim.new]
      158 LOADN                            R32 0
      159 LOADN                            R33 5
      160 CALL                             R31 2 1
      161 SETTABLEKS                       R31 R30 K57 ["PaddingRight"]
      163 CALL                             R28 2 1
      164 SETTABLEKS                       R28 R27 K45 ["Padding"]
      166 GETUPVAL                         R28 6
      167 GETTABLEKS                       R28 R28 K34 ["createElement"]
      169 LOADK                            R29 K46 ["UIListLayout"]
      170 NEWTABLE                         R30 8 0
      172 GETIMPORT                        R31 K63 [Enum.FillDirection.Vertical]
      174 SETTABLEKS                       R31 R30 K61 ["FillDirection"]
      176 GETIMPORT                        R31 K66 [Enum.HorizontalAlignment.Center]
      178 SETTABLEKS                       R31 R30 K64 ["HorizontalAlignment"]
      180 GETIMPORT                        R31 K69 [Enum.VerticalAlignment.Top]
      182 SETTABLEKS                       R31 R30 K67 ["VerticalAlignment"]
      184 GETIMPORT                        R31 K71 [Enum.SortOrder.LayoutOrder]
      186 SETTABLEKS                       R31 R30 K70 ["SortOrder"]
      188 GETIMPORT                        R31 K60 [UDim.new]
      190 LOADN                            R32 0
      191 LOADN                            R33 20
      192 CALL                             R31 2 1
      193 SETTABLEKS                       R31 R30 K45 ["Padding"]
      195 GETUPVAL                         R31 6
      196 GETTABLEKS                       R31 R31 K43 ["Ref"]
      198 GETTABLEKS                       R32 R0 K72 ["layouterRef"]
      200 SETTABLE                         R32 R30 R31
      201 CALL                             R28 2 1
      202 SETTABLEKS                       R28 R27 K46 ["UIListLayout"]
      204 LOADB                            R28 0
      205 GETUPVAL                         R29 0
      206 GETTABLEKS                       R29 R29 K17 ["PreviewTypes"]
      208 GETTABLEKS                       R29 R29 K47 ["ImagePicker"]
      210 JUMPIFNOTEQ                      R14 R29 ; [+29]
      212 GETUPVAL                         R28 6
      213 GETTABLEKS                       R28 R28 K34 ["createElement"]
      215 GETUPVAL                         R29 7
      216 DUPTABLE                         R30 K74 [{"Size", "AssetId", "ThumbnailStatus", "ChooseThumbnail", "IconFile", "LayoutOrder"}]
      217 GETIMPORT                        R31 K37 [UDim2.new]
      219 LOADN                            R32 0
      220 LOADN                            R33 150
      221 LOADN                            R34 0
      222 LOADN                            R35 150
      223 CALL                             R31 4 1
      224 SETTABLEKS                       R31 R30 K38 ["Size"]
      226 SETTABLEKS                       R7 R30 K6 ["AssetId"]
      228 SETTABLEKS                       R15 R30 K73 ["ThumbnailStatus"]
      230 SETTABLEKS                       R12 R30 K11 ["ChooseThumbnail"]
      232 SETTABLEKS                       R13 R30 K12 ["IconFile"]
      234 NAMECALL                         R31 R21 K75 ["getNextOrder"]
      236 CALL                             R31 1 1
      237 SETTABLEKS                       R31 R30 K9 ["LayoutOrder"]
      239 CALL                             R28 2 1
      240 SETTABLEKS                       R28 R27 K47 ["ImagePicker"]
      242 LOADB                            R28 0
      243 GETUPVAL                         R29 0
      244 GETTABLEKS                       R29 R29 K17 ["PreviewTypes"]
      246 GETTABLEKS                       R29 R29 K18 ["Thumbnail"]
      248 JUMPIFNOTEQ                      R14 R29 ; [+33]
      250 GETUPVAL                         R28 6
      251 GETTABLEKS                       R28 R28 K34 ["createElement"]
      253 GETUPVAL                         R29 8
      254 DUPTABLE                         R30 K78 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image", "defaultImage"}]
      255 GETIMPORT                        R31 K37 [UDim2.new]
      257 LOADN                            R32 0
      258 LOADN                            R33 150
      259 LOADN                            R34 0
      260 LOADN                            R35 150
      261 CALL                             R31 4 1
      262 SETTABLEKS                       R31 R30 K38 ["Size"]
      264 LOADN                            R31 1
      265 SETTABLEKS                       R31 R30 K39 ["BackgroundTransparency"]
      267 NAMECALL                         R31 R21 K75 ["getNextOrder"]
      269 CALL                             R31 1 1
      270 SETTABLEKS                       R31 R30 K9 ["LayoutOrder"]
      272 JUMPIFNOT                        R22 ; [+2]
      273 LOADK                            R31 K79 ["rbxasset://textures/StudioToolbox/Animation.png"]
      274 JUMP                             ; [+1]
      275 MOVE                             R31 R19
      276 SETTABLEKS                       R31 R30 K76 ["Image"]
      278 LOADK                            R31 K80 [""]
      279 SETTABLEKS                       R31 R30 K77 ["defaultImage"]
      281 CALL                             R28 2 1
      282 SETTABLEKS                       R28 R27 K18 ["Thumbnail"]
      284 LOADB                            R28 0
      285 GETUPVAL                         R29 0
      286 GETTABLEKS                       R29 R29 K17 ["PreviewTypes"]
      288 GETTABLEKS                       R29 R29 K81 ["ModelPreview"]
      290 JUMPIFNOTEQ                      R14 R29 ; [+37]
      292 GETUPVAL                         R28 6
      293 GETTABLEKS                       R28 R28 K34 ["createElement"]
      295 GETUPVAL                         R29 9
      296 DUPTABLE                         R30 K84 [{"Size", "ShowTitle", "LayoutOrder", "AssetType", "AllowedBundleTypeSettings", "selectedColor"}]
      297 GETIMPORT                        R31 K37 [UDim2.new]
      299 LOADN                            R32 0
      300 LOADN                            R33 150
      301 LOADN                            R34 0
      302 LOADN                            R35 150
      303 CALL                             R31 4 1
      304 SETTABLEKS                       R31 R30 K38 ["Size"]
      306 LOADB                            R31 0
      307 SETTABLEKS                       R31 R30 K82 ["ShowTitle"]
      309 NAMECALL                         R31 R21 K75 ["getNextOrder"]
      311 CALL                             R31 1 1
      312 SETTABLEKS                       R31 R30 K9 ["LayoutOrder"]
      314 SETTABLEKS                       R8 R30 K30 ["AssetType"]
      316 SETTABLEKS                       R16 R30 K15 ["AllowedBundleTypeSettings"]
      318 GETUPVAL                         R32 10
      319 CALL                             R32 0 1
      320 JUMPIFNOT                        R32 ; [+3]
      321 GETTABLEKS                       R31 R1 K83 ["selectedColor"]
      323 JUMP                             ; [+1]
      324 LOADNIL                          R31
      325 SETTABLEKS                       R31 R30 K83 ["selectedColor"]
      327 CALL                             R28 2 1
      328 SETTABLEKS                       R28 R27 K48 ["AssetThumbnailPreview"]
      330 LOADB                            R28 0
      331 GETUPVAL                         R29 0
      332 GETTABLEKS                       R29 R29 K17 ["PreviewTypes"]
      334 GETTABLEKS                       R29 R29 K47 ["ImagePicker"]
      336 JUMPIFEQ                         R14 R29 ; [+263]
      338 GETUPVAL                         R28 6
      339 GETTABLEKS                       R28 R28 K34 ["createElement"]
      341 LOADK                            R29 K35 ["Frame"]
      342 DUPTABLE                         R30 K85 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      343 GETIMPORT                        R31 K37 [UDim2.new]
      345 LOADN                            R32 1
      346 LOADN                            R33 0
      347 LOADN                            R34 0
      348 LOADN                            R35 50
      349 CALL                             R31 4 1
      350 SETTABLEKS                       R31 R30 K38 ["Size"]
      352 LOADN                            R31 1
      353 SETTABLEKS                       R31 R30 K39 ["BackgroundTransparency"]
      355 NAMECALL                         R31 R21 K75 ["getNextOrder"]
      357 CALL                             R31 1 1
      358 SETTABLEKS                       R31 R30 K9 ["LayoutOrder"]
      360 DUPTABLE                         R31 K88 [{"AssetIdLabel", "AssetStatusLabel"}]
      361 JUMPIFNOT                        R23 ; [+87]
      362 LOADB                            R32 0
      363 JUMPIFEQKNIL                     R7 ; [+150]
      365 GETUPVAL                         R32 6
      366 GETTABLEKS                       R32 R32 K34 ["createElement"]
      368 GETUPVAL                         R33 11
      369 DUPTABLE                         R34 K99 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "OnClick"}]
      370 GETIMPORT                        R35 K37 [UDim2.new]
      372 LOADN                            R36 1
      373 LOADN                            R37 0
      374 LOADN                            R38 0
      375 LOADN                            R39 25
      376 CALL                             R35 4 1
      377 SETTABLEKS                       R35 R34 K38 ["Size"]
      379 GETIMPORT                        R35 K101 [Vector2.new]
      381 LOADK                            R36 K102 [0.5]
      382 LOADN                            R37 0
      383 CALL                             R35 2 1
      384 SETTABLEKS                       R35 R34 K89 ["AnchorPoint"]
      386 GETIMPORT                        R35 K37 [UDim2.new]
      388 LOADK                            R36 K102 [0.5]
      389 LOADN                            R37 0
      390 LOADN                            R38 0
      391 LOADN                            R39 0
      392 CALL                             R35 4 1
      393 SETTABLEKS                       R35 R34 K90 ["Position"]
      395 LOADN                            R35 1
      396 SETTABLEKS                       R35 R34 K39 ["BackgroundTransparency"]
      398 GETTABLEKS                       R35 R2 K103 ["uploadResult"]
      400 GETTABLEKS                       R35 R35 K104 ["link"]
      402 SETTABLEKS                       R35 R34 K91 ["TextColor3"]
      404 LOADK                            R37 K105 ["General"]
      405 LOADK                            R38 K106 ["PreviewAreaAssetID"]
      406 DUPTABLE                         R39 K108 [{"assetId"}]
      407 FASTCALL1                        TOSTRING R7 ; [+3]
      408 MOVE                             R41 R7
      409 GETIMPORT                        R40 K26 [tostring]
      411 CALL                             R40 1 1
      412 SETTABLEKS                       R40 R39 K107 ["assetId"]
      414 NAMECALL                         R35 R3 K27 ["getText"]
      416 CALL                             R35 4 1
      417 SETTABLEKS                       R35 R34 K92 ["Text"]
      419 GETUPVAL                         R35 12
      420 GETTABLEKS                       R35 R35 K109 ["FONT"]
      422 SETTABLEKS                       R35 R34 K93 ["Font"]
      424 GETUPVAL                         R35 12
      425 GETTABLEKS                       R35 R35 K110 ["FONT_SIZE_MEDIUM"]
      427 SETTABLEKS                       R35 R34 K94 ["TextSize"]
      429 LOADB                            R35 0
      430 SETTABLEKS                       R35 R34 K95 ["TextWrapped"]
      432 GETIMPORT                        R35 K111 [Enum.TextXAlignment.Center]
      434 SETTABLEKS                       R35 R34 K96 ["TextXAlignment"]
      436 GETIMPORT                        R35 K112 [Enum.TextYAlignment.Center]
      438 SETTABLEKS                       R35 R34 K97 ["TextYAlignment"]
      440 NEWCLOSURE                       R35 P0
      441 CAPTURE                          VAL R7
      442 CAPTURE                          UPVAL U1
      443 CAPTURE                          UPVAL U13
      444 CAPTURE                          UPVAL U14
      445 SETTABLEKS                       R35 R34 K98 ["OnClick"]
      447 CALL                             R32 2 1
      448 JUMP                             ; [+65]
      449 LOADB                            R32 0
      450 JUMPIFEQKNIL                     R7 ; [+63]
      452 GETUPVAL                         R32 6
      453 GETTABLEKS                       R32 R32 K34 ["createElement"]
      455 LOADK                            R33 K113 ["TextLabel"]
      456 DUPTABLE                         R34 K115 [{"Size", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      457 GETIMPORT                        R35 K37 [UDim2.new]
      459 LOADN                            R36 1
      460 LOADN                            R37 0
      461 LOADN                            R38 0
      462 LOADN                            R39 25
      463 CALL                             R35 4 1
      464 SETTABLEKS                       R35 R34 K38 ["Size"]
      466 LOADN                            R35 1
      467 SETTABLEKS                       R35 R34 K39 ["BackgroundTransparency"]
      469 GETTABLEKS                       R35 R18 K83 ["selectedColor"]
      471 SETTABLEKS                       R35 R34 K91 ["TextColor3"]
      473 LOADK                            R37 K105 ["General"]
      474 LOADK                            R38 K106 ["PreviewAreaAssetID"]
      475 DUPTABLE                         R39 K108 [{"assetId"}]
      476 FASTCALL1                        TOSTRING R7 ; [+3]
      477 MOVE                             R41 R7
      478 GETIMPORT                        R40 K26 [tostring]
      480 CALL                             R40 1 1
      481 SETTABLEKS                       R40 R39 K107 ["assetId"]
      483 NAMECALL                         R35 R3 K27 ["getText"]
      485 CALL                             R35 4 1
      486 SETTABLEKS                       R35 R34 K92 ["Text"]
      488 GETUPVAL                         R35 12
      489 GETTABLEKS                       R35 R35 K109 ["FONT"]
      491 SETTABLEKS                       R35 R34 K93 ["Font"]
      493 GETUPVAL                         R35 12
      494 GETTABLEKS                       R35 R35 K110 ["FONT_SIZE_MEDIUM"]
      496 SETTABLEKS                       R35 R34 K94 ["TextSize"]
      498 LOADB                            R35 0
      499 SETTABLEKS                       R35 R34 K95 ["TextWrapped"]
      501 GETIMPORT                        R35 K117 [Enum.TextTruncate.AtEnd]
      503 SETTABLEKS                       R35 R34 K114 ["TextTruncate"]
      505 GETIMPORT                        R35 K111 [Enum.TextXAlignment.Center]
      507 SETTABLEKS                       R35 R34 K96 ["TextXAlignment"]
      509 GETIMPORT                        R35 K112 [Enum.TextYAlignment.Center]
      511 SETTABLEKS                       R35 R34 K97 ["TextYAlignment"]
      513 CALL                             R32 2 1
      514 SETTABLEKS                       R32 R31 K86 ["AssetIdLabel"]
      516 LOADB                            R32 0
      517 JUMPIFEQKNIL                     R6 ; [+79]
      519 LOADB                            R32 0
      520 GETUPVAL                         R33 0
      521 GETTABLEKS                       R33 R33 K118 ["ASSET_STATUS"]
      523 GETTABLEKS                       R33 R33 K119 ["Unknown"]
      525 JUMPIFEQ                         R33 R6 ; [+71]
      527 GETUPVAL                         R32 6
      528 GETTABLEKS                       R32 R32 K34 ["createElement"]
      530 LOADK                            R33 K113 ["TextLabel"]
      531 DUPTABLE                         R34 K120 [{"Size", "Position", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      532 GETIMPORT                        R35 K37 [UDim2.new]
      534 LOADN                            R36 1
      535 LOADN                            R37 0
      536 LOADN                            R38 0
      537 LOADN                            R39 25
      538 CALL                             R35 4 1
      539 SETTABLEKS                       R35 R34 K38 ["Size"]
      541 GETIMPORT                        R35 K37 [UDim2.new]
      543 LOADN                            R36 0
      544 LOADN                            R37 0
      545 LOADN                            R38 0
      546 LOADN                            R39 25
      547 CALL                             R35 4 1
      548 SETTABLEKS                       R35 R34 K90 ["Position"]
      550 LOADN                            R35 1
      551 SETTABLEKS                       R35 R34 K39 ["BackgroundTransparency"]
      553 GETTABLEKS                       R35 R18 K121 ["textColor"]
      555 SETTABLEKS                       R35 R34 K91 ["TextColor3"]
      557 LOADK                            R37 K105 ["General"]
      558 LOADK                            R38 K122 ["PreviewAreaStatus"]
      559 DUPTABLE                         R39 K124 [{"assetStatus"}]
      560 GETUPVAL                         R41 15
      561 MOVE                             R42 R3
      562 CALL                             R41 1 1
      563 GETTABLE                         R40 R41 R6
      564 SETTABLEKS                       R40 R39 K123 ["assetStatus"]
      566 NAMECALL                         R35 R3 K27 ["getText"]
      568 CALL                             R35 4 1
      569 SETTABLEKS                       R35 R34 K92 ["Text"]
      571 GETUPVAL                         R35 12
      572 GETTABLEKS                       R35 R35 K109 ["FONT"]
      574 SETTABLEKS                       R35 R34 K93 ["Font"]
      576 GETUPVAL                         R35 12
      577 GETTABLEKS                       R35 R35 K110 ["FONT_SIZE_MEDIUM"]
      579 SETTABLEKS                       R35 R34 K94 ["TextSize"]
      581 LOADB                            R35 0
      582 SETTABLEKS                       R35 R34 K95 ["TextWrapped"]
      584 GETIMPORT                        R35 K117 [Enum.TextTruncate.AtEnd]
      586 SETTABLEKS                       R35 R34 K114 ["TextTruncate"]
      588 GETIMPORT                        R35 K111 [Enum.TextXAlignment.Center]
      590 SETTABLEKS                       R35 R34 K96 ["TextXAlignment"]
      592 GETIMPORT                        R35 K125 [Enum.TextYAlignment.Top]
      594 SETTABLEKS                       R35 R34 K97 ["TextYAlignment"]
      596 CALL                             R32 2 1
      597 SETTABLEKS                       R32 R31 K87 ["AssetStatusLabel"]
      599 CALL                             R28 3 1
      600 SETTABLEKS                       R28 R27 K49 ["AssetInfo"]
      602 LOADB                            R28 0
      603 GETUPVAL                         R29 0
      604 GETTABLEKS                       R29 R29 K17 ["PreviewTypes"]
      606 GETTABLEKS                       R29 R29 K47 ["ImagePicker"]
      608 JUMPIFNOTEQ                      R14 R29 ; [+224]
      610 GETUPVAL                         R28 6
      611 GETTABLEKS                       R28 R28 K34 ["createElement"]
      613 LOADK                            R29 K35 ["Frame"]
      614 DUPTABLE                         R30 K85 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      615 GETIMPORT                        R31 K37 [UDim2.new]
      617 LOADN                            R32 0
      618 LOADN                            R33 192
      619 LOADN                            R34 0
      620 LOADN                            R35 120
      621 CALL                             R31 4 1
      622 SETTABLEKS                       R31 R30 K38 ["Size"]
      624 LOADN                            R31 1
      625 SETTABLEKS                       R31 R30 K39 ["BackgroundTransparency"]
      627 NAMECALL                         R31 R21 K75 ["getNextOrder"]
      629 CALL                             R31 1 1
      630 SETTABLEKS                       R31 R30 K9 ["LayoutOrder"]
      632 DUPTABLE                         R31 K128 [{"UIListLayout", "Container", "Container2"}]
      633 GETUPVAL                         R32 6
      634 GETTABLEKS                       R32 R32 K34 ["createElement"]
      636 LOADK                            R33 K46 ["UIListLayout"]
      637 DUPTABLE                         R34 K129 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      638 GETIMPORT                        R35 K63 [Enum.FillDirection.Vertical]
      640 SETTABLEKS                       R35 R34 K61 ["FillDirection"]
      642 GETIMPORT                        R35 K131 [Enum.HorizontalAlignment.Left]
      644 SETTABLEKS                       R35 R34 K64 ["HorizontalAlignment"]
      646 GETIMPORT                        R35 K69 [Enum.VerticalAlignment.Top]
      648 SETTABLEKS                       R35 R34 K67 ["VerticalAlignment"]
      650 GETIMPORT                        R35 K71 [Enum.SortOrder.LayoutOrder]
      652 SETTABLEKS                       R35 R34 K70 ["SortOrder"]
      654 GETIMPORT                        R35 K60 [UDim.new]
      656 LOADN                            R36 0
      657 LOADN                            R37 8
      658 CALL                             R35 2 1
      659 SETTABLEKS                       R35 R34 K45 ["Padding"]
      661 CALL                             R32 2 1
      662 SETTABLEKS                       R32 R31 K46 ["UIListLayout"]
      664 GETUPVAL                         R32 6
      665 GETTABLEKS                       R32 R32 K34 ["createElement"]
      667 LOADK                            R33 K35 ["Frame"]
      668 DUPTABLE                         R34 K85 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      669 GETIMPORT                        R35 K37 [UDim2.new]
      671 LOADN                            R36 1
      672 LOADN                            R37 0
      673 LOADN                            R38 0
      674 LOADN                            R39 54
      675 CALL                             R35 4 1
      676 SETTABLEKS                       R35 R34 K38 ["Size"]
      678 LOADN                            R35 1
      679 SETTABLEKS                       R35 R34 K39 ["BackgroundTransparency"]
      681 LOADN                            R35 1
      682 SETTABLEKS                       R35 R34 K9 ["LayoutOrder"]
      684 DUPTABLE                         R35 K133 [{"FormatLabel"}]
      685 GETUPVAL                         R36 6
      686 GETTABLEKS                       R36 R36 K34 ["createElement"]
      688 LOADK                            R37 K113 ["TextLabel"]
      689 DUPTABLE                         R38 K134 [{"Size", "Position", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      690 GETIMPORT                        R39 K37 [UDim2.new]
      692 LOADN                            R40 0
      693 LOADN                            R41 176
      694 LOADN                            R42 0
      695 LOADN                            R43 54
      696 CALL                             R39 4 1
      697 SETTABLEKS                       R39 R38 K38 ["Size"]
      699 GETIMPORT                        R39 K37 [UDim2.new]
      701 LOADN                            R40 0
      702 LOADN                            R41 10
      703 LOADN                            R42 0
      704 LOADN                            R43 0
      705 CALL                             R39 4 1
      706 SETTABLEKS                       R39 R38 K90 ["Position"]
      708 LOADN                            R39 1
      709 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      711 SETTABLEKS                       R20 R38 K92 ["Text"]
      713 GETUPVAL                         R39 12
      714 GETTABLEKS                       R39 R39 K109 ["FONT"]
      716 SETTABLEKS                       R39 R38 K93 ["Font"]
      718 GETUPVAL                         R39 12
      719 GETTABLEKS                       R39 R39 K110 ["FONT_SIZE_MEDIUM"]
      721 SETTABLEKS                       R39 R38 K94 ["TextSize"]
      723 GETTABLEKS                       R39 R18 K121 ["textColor"]
      725 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      727 LOADB                            R39 1
      728 SETTABLEKS                       R39 R38 K95 ["TextWrapped"]
      730 GETIMPORT                        R39 K111 [Enum.TextXAlignment.Center]
      732 SETTABLEKS                       R39 R38 K96 ["TextXAlignment"]
      734 GETIMPORT                        R39 K112 [Enum.TextYAlignment.Center]
      736 SETTABLEKS                       R39 R38 K97 ["TextYAlignment"]
      738 CALL                             R36 2 1
      739 SETTABLEKS                       R36 R35 K132 ["FormatLabel"]
      741 CALL                             R32 3 1
      742 SETTABLEKS                       R32 R31 K126 ["Container"]
      744 GETUPVAL                         R32 6
      745 GETTABLEKS                       R32 R32 K34 ["createElement"]
      747 LOADK                            R33 K35 ["Frame"]
      748 DUPTABLE                         R34 K85 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      749 GETIMPORT                        R35 K37 [UDim2.new]
      751 LOADN                            R36 1
      752 LOADN                            R37 0
      753 LOADN                            R38 0
      754 LOADN                            R39 54
      755 CALL                             R35 4 1
      756 SETTABLEKS                       R35 R34 K38 ["Size"]
      758 LOADN                            R35 1
      759 SETTABLEKS                       R35 R34 K39 ["BackgroundTransparency"]
      761 LOADN                            R35 2
      762 SETTABLEKS                       R35 R34 K9 ["LayoutOrder"]
      764 DUPTABLE                         R35 K136 [{"ProcessLabel"}]
      765 GETUPVAL                         R36 6
      766 GETTABLEKS                       R36 R36 K34 ["createElement"]
      768 LOADK                            R37 K113 ["TextLabel"]
      769 DUPTABLE                         R38 K137 [{"Size", "Position", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextWrapped", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      770 GETIMPORT                        R39 K37 [UDim2.new]
      772 LOADN                            R40 0
      773 LOADN                            R41 176
      774 LOADN                            R42 0
      775 LOADN                            R43 54
      776 CALL                             R39 4 1
      777 SETTABLEKS                       R39 R38 K38 ["Size"]
      779 GETIMPORT                        R39 K37 [UDim2.new]
      781 LOADN                            R40 0
      782 LOADN                            R41 10
      783 LOADN                            R42 0
      784 LOADN                            R43 0
      785 CALL                             R39 4 1
      786 SETTABLEKS                       R39 R38 K90 ["Position"]
      788 LOADN                            R39 1
      789 SETTABLEKS                       R39 R38 K39 ["BackgroundTransparency"]
      791 LOADK                            R41 K20 ["AssetConfigPreview"]
      792 LOADK                            R42 K138 ["Process"]
      793 NAMECALL                         R39 R3 K27 ["getText"]
      795 CALL                             R39 3 1
      796 SETTABLEKS                       R39 R38 K92 ["Text"]
      798 GETUPVAL                         R39 12
      799 GETTABLEKS                       R39 R39 K109 ["FONT"]
      801 SETTABLEKS                       R39 R38 K93 ["Font"]
      803 GETUPVAL                         R39 12
      804 GETTABLEKS                       R39 R39 K110 ["FONT_SIZE_MEDIUM"]
      806 SETTABLEKS                       R39 R38 K94 ["TextSize"]
      808 GETTABLEKS                       R39 R18 K121 ["textColor"]
      810 SETTABLEKS                       R39 R38 K91 ["TextColor3"]
      812 LOADB                            R39 1
      813 SETTABLEKS                       R39 R38 K95 ["TextWrapped"]
      815 GETIMPORT                        R39 K111 [Enum.TextXAlignment.Center]
      817 SETTABLEKS                       R39 R38 K96 ["TextXAlignment"]
      819 GETIMPORT                        R39 K112 [Enum.TextYAlignment.Center]
      821 SETTABLEKS                       R39 R38 K97 ["TextYAlignment"]
      823 LOADN                            R39 2
      824 SETTABLEKS                       R39 R38 K9 ["LayoutOrder"]
      826 CALL                             R36 2 1
      827 SETTABLEKS                       R36 R35 K135 ["ProcessLabel"]
      829 CALL                             R32 3 1
      830 SETTABLEKS                       R32 R31 K127 ["Container2"]
      832 CALL                             R28 3 1
      833 SETTABLEKS                       R28 R27 K50 ["Guide"]
      835 MOVE                             R28 R17
      836 JUMPIFNOT                        R28 ; [+56]
      837 GETUPVAL                         R28 6
      838 GETTABLEKS                       R28 R28 K34 ["createElement"]
      840 LOADK                            R29 K35 ["Frame"]
      841 DUPTABLE                         R30 K85 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      842 GETIMPORT                        R31 K37 [UDim2.new]
      844 LOADN                            R32 1
      845 LOADN                            R33 10
      846 LOADN                            R34 1
      847 LOADN                            R35 56
      848 CALL                             R31 4 1
      849 SETTABLEKS                       R31 R30 K38 ["Size"]
      851 LOADN                            R31 1
      852 SETTABLEKS                       R31 R30 K39 ["BackgroundTransparency"]
      854 NAMECALL                         R31 R21 K75 ["getNextOrder"]
      856 CALL                             R31 1 1
      857 SETTABLEKS                       R31 R30 K9 ["LayoutOrder"]
      859 DUPTABLE                         R31 K140 [{"SideTabs"}]
      860 MOVE                             R32 R17
      861 JUMPIFNOT                        R32 ; [+28]
      862 GETUPVAL                         R32 6
      863 GETTABLEKS                       R32 R32 K34 ["createElement"]
      865 GETUPVAL                         R33 16
      866 DUPTABLE                         R34 K145 [{"Size", "ItemHeight", "Items", "CurrentTab", "ItemClickCallBack", "SelectParentRef"}]
      867 GETIMPORT                        R35 K37 [UDim2.new]
      869 LOADN                            R36 1
      870 LOADN                            R37 0
      871 LOADN                            R38 1
      872 LOADN                            R39 0
      873 CALL                             R35 4 1
      874 SETTABLEKS                       R35 R34 K38 ["Size"]
      876 LOADN                            R35 48
      877 SETTABLEKS                       R35 R34 K141 ["ItemHeight"]
      879 SETTABLEKS                       R4 R34 K142 ["Items"]
      881 SETTABLEKS                       R5 R34 K4 ["CurrentTab"]
      883 SETTABLEKS                       R11 R34 K143 ["ItemClickCallBack"]
      885 GETTABLEKS                       R35 R0 K44 ["baseFrameRef"]
      887 SETTABLEKS                       R35 R34 K144 ["SelectParentRef"]
      889 CALL                             R32 2 1
      890 SETTABLEKS                       R32 R31 K139 ["SideTabs"]
      892 CALL                             R28 3 1
      893 SETTABLEKS                       R28 R27 K51 ["TabArea"]
      895 CALL                             R24 3 -1
      896 RETURN                           R24 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K1 [{"thumbnailStatus"}]
        6 GETTABLEKS                       R3 R0 K0 ["thumbnailStatus"]
        8 SETTABLEKS                       R3 R2 K0 ["thumbnailStatus"]
       10 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"getThumbnailStatus"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["getThumbnailStatus"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETTABLEKS                       R2 R1 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R2 K12 ["Framework"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K13 ["UI"]
       36 GETTABLEKS                       R6 R6 K14 ["LinkText"]
       38 GETTABLEKS                       R7 R1 K15 ["Src"]
       40 GETTABLEKS                       R7 R7 K16 ["Components"]
       42 GETTABLEKS                       R7 R7 K17 ["AssetConfiguration"]
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R7 K18 ["SideTabs"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K9 [require]
       51 GETTABLEKS                       R10 R7 K19 ["AssetThumbnailPreview"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K9 [require]
       56 GETTABLEKS                       R11 R7 K20 ["ImagePicker"]
       58 CALL                             R10 1 1
       59 GETTABLEKS                       R11 R1 K15 ["Src"]
       61 GETTABLEKS                       R11 R11 K21 ["Util"]
       63 GETIMPORT                        R12 K9 [require]
       65 GETTABLEKS                       R13 R11 K22 ["LayoutOrderIterator"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K9 [require]
       70 GETTABLEKS                       R14 R11 K23 ["Constants"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K9 [require]
       75 GETTABLEKS                       R15 R11 K24 ["Urls"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K9 [require]
       80 GETTABLEKS                       R16 R11 K25 ["AssetConfigConstants"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K9 [require]
       85 GETTABLEKS                       R17 R11 K26 ["AssetConfigUtil"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K9 [require]
       90 GETTABLEKS                       R18 R11 K27 ["ToolboxUtilities"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K9 [require]
       95 GETTABLEKS                       R19 R1 K15 ["Src"]
       97 GETTABLEKS                       R19 R19 K28 ["Localization"]
       99 GETTABLEKS                       R19 R19 K29 ["getLocalizedAssetStatusMap"]
      101 CALL                             R18 1 1
      102 GETIMPORT                        R19 K9 [require]
      104 GETTABLEKS                       R20 R1 K15 ["Src"]
      106 GETTABLEKS                       R20 R20 K16 ["Components"]
      108 GETTABLEKS                       R20 R20 K30 ["ImageWithDefault"]
      110 CALL                             R19 1 1
      111 GETIMPORT                        R20 K9 [require]
      113 GETTABLEKS                       R21 R1 K15 ["Src"]
      115 GETTABLEKS                       R21 R21 K31 ["Networking"]
      117 GETTABLEKS                       R21 R21 K32 ["Requests"]
      119 GETTABLEKS                       R21 R21 K33 ["GetAssetConfigThumbnailStatusRequest"]
      121 CALL                             R20 1 1
      122 GETTABLEKS                       R21 R5 K34 ["ContextServices"]
      124 GETTABLEKS                       R22 R21 K35 ["withContext"]
      126 GETIMPORT                        R23 K9 [require]
      128 GETTABLEKS                       R24 R1 K15 ["Src"]
      130 GETTABLEKS                       R24 R24 K34 ["ContextServices"]
      132 GETTABLEKS                       R24 R24 K36 ["NetworkContext"]
      134 CALL                             R23 1 1
      135 GETTABLEKS                       R24 R3 K37 ["PureComponent"]
      137 LOADK                            R26 K38 ["PreviewArea"]
      138 NAMECALL                         R24 R24 K39 ["extend"]
      140 CALL                             R24 2 1
      141 GETIMPORT                        R25 K1 [game]
      143 LOADK                            R27 K40 ["UseDefaultThumbnailForAnimation"]
      144 NAMECALL                         R25 R25 K41 ["GetFastFlag"]
      146 CALL                             R25 2 1
      147 GETIMPORT                        R26 K9 [require]
      149 GETTABLEKS                       R27 R1 K15 ["Src"]
      151 GETTABLEKS                       R27 R27 K42 ["Flags"]
      153 GETTABLEKS                       R27 R27 K43 ["getFFlagEnableUploadingMakeup"]
      155 CALL                             R26 1 1
      156 GETTABLEKS                       R27 R13 K44 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      158 DUPCLOSURE                       R28 K45 [PROTO_0]
      159 CAPTURE                          VAL R3
      160 SETTABLEKS                       R28 R24 K46 ["init"]
      162 DUPCLOSURE                       R28 K47 [PROTO_1]
      163 CAPTURE                          VAL R15
      164 SETTABLEKS                       R28 R24 K48 ["didMount"]
      166 DUPCLOSURE                       R28 K49 [PROTO_3]
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R27
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R0
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R8
      184 SETTABLEKS                       R28 R24 K50 ["render"]
      186 DUPCLOSURE                       R28 K51 [PROTO_4]
      187 DUPCLOSURE                       R29 K52 [PROTO_6]
      188 CAPTURE                          VAL R20
      189 MOVE                             R30 R22
      190 DUPTABLE                         R31 K55 [{"Stylizer", "Localization", "Network"}]
      191 GETTABLEKS                       R32 R21 K53 ["Stylizer"]
      193 SETTABLEKS                       R32 R31 K53 ["Stylizer"]
      195 GETTABLEKS                       R32 R21 K28 ["Localization"]
      197 SETTABLEKS                       R32 R31 K28 ["Localization"]
      199 SETTABLEKS                       R23 R31 K54 ["Network"]
      201 CALL                             R30 1 1
      202 MOVE                             R31 R24
      203 CALL                             R30 1 1
      204 MOVE                             R24 R30
      205 GETTABLEKS                       R30 R4 K56 ["connect"]
      207 MOVE                             R31 R28
      208 MOVE                             R32 R29
      209 CALL                             R30 2 1
      210 MOVE                             R31 R24
      211 CALL                             R30 1 -1
      212 RETURN                           R30 -1
