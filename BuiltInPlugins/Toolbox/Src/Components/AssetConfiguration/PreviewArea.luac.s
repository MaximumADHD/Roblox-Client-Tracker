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
       62 LOADN                            R26 512
       63 FASTCALL1                        TOSTRING R26 ; [+2]
       64 GETIMPORT                        R25 K26 [tostring]
       66 CALL                             R25 1 1
       67 SETTABLEKS                       R25 R24 K22 ["maxDimensionsX"]
       69 LOADN                            R26 512
       70 FASTCALL1                        TOSTRING R26 ; [+2]
       71 GETIMPORT                        R25 K26 [tostring]
       73 CALL                             R25 1 1
       74 SETTABLEKS                       R25 R24 K23 ["maxDimensionsY"]
       76 NAMECALL                         R20 R3 K27 ["getText"]
       78 CALL                             R20 4 1
       79 GETUPVAL                         R21 3
       80 GETTABLEKS                       R21 R21 K28 ["new"]
       82 CALL                             R21 0 1
       83 GETTABLEKS                       R22 R1 K29 ["animationTypeThumbnailUri"]
       85 JUMPIFEQKNIL                     R22 ; [+6]
       87 GETUPVAL                         R23 0
       88 GETTABLEKS                       R23 R23 K17 ["PreviewTypes"]
       90 GETTABLEKS                       R14 R23 K18 ["Thumbnail"]
       92 GETUPVAL                         R23 4
       93 JUMPIFNOT                        R23 ; [+8]
       94 LOADB                            R23 0
       95 GETIMPORT                        R24 K33 [Enum.AssetType.Animation]
       97 JUMPIFNOTEQ                      R8 R24 ; [+4]
       99 NOT                              R23 R19
      100 JUMPIFNOT                        R23 ; [+1]
      101 NOT                              R23 R22
      102 GETUPVAL                         R24 5
      103 GETTABLEKS                       R24 R24 K34 ["isCreatorStoreAssetNotIncludingAnimation"]
      105 MOVE                             R25 R8
      106 CALL                             R24 1 1
      107 GETUPVAL                         R25 6
      108 GETTABLEKS                       R25 R25 K35 ["createElement"]
      110 LOADK                            R26 K36 ["Frame"]
      111 NEWTABLE                         R27 8 0
      113 GETIMPORT                        R28 K38 [UDim2.new]
      115 LOADN                            R29 0
      116 MOVE                             R30 R9
      117 LOADN                            R31 1
      118 LOADN                            R32 0
      119 CALL                             R28 4 1
      120 SETTABLEKS                       R28 R27 K39 ["Size"]
      122 LOADN                            R28 0
      123 SETTABLEKS                       R28 R27 K40 ["BackgroundTransparency"]
      125 GETTABLEKS                       R28 R18 K41 ["backgroundColor"]
      127 SETTABLEKS                       R28 R27 K42 ["BackgroundColor3"]
      129 LOADN                            R28 0
      130 SETTABLEKS                       R28 R27 K43 ["BorderSizePixel"]
      132 GETUPVAL                         R28 6
      133 GETTABLEKS                       R28 R28 K44 ["Ref"]
      135 GETTABLEKS                       R29 R0 K45 ["baseFrameRef"]
      137 SETTABLE                         R29 R27 R28
      138 SETTABLEKS                       R10 R27 K9 ["LayoutOrder"]
      140 DUPTABLE                         R28 K53 [{"Padding", "UIListLayout", "ImagePicker", "Thumbnail", "AssetThumbnailPreview", "AssetInfo", "Guide", "TabArea"}]
      141 GETUPVAL                         R29 6
      142 GETTABLEKS                       R29 R29 K35 ["createElement"]
      144 LOADK                            R30 K54 ["UIPadding"]
      145 DUPTABLE                         R31 K59 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      146 GETIMPORT                        R32 K61 [UDim.new]
      148 LOADN                            R33 0
      149 LOADN                            R34 24
      150 CALL                             R32 2 1
      151 SETTABLEKS                       R32 R31 K55 ["PaddingTop"]
      153 GETIMPORT                        R32 K61 [UDim.new]
      155 LOADN                            R33 0
      156 LOADN                            R34 24
      157 CALL                             R32 2 1
      158 SETTABLEKS                       R32 R31 K56 ["PaddingBottom"]
      160 GETIMPORT                        R32 K61 [UDim.new]
      162 LOADN                            R33 0
      163 LOADN                            R34 5
      164 CALL                             R32 2 1
      165 SETTABLEKS                       R32 R31 K57 ["PaddingLeft"]
      167 GETIMPORT                        R32 K61 [UDim.new]
      169 LOADN                            R33 0
      170 LOADN                            R34 5
      171 CALL                             R32 2 1
      172 SETTABLEKS                       R32 R31 K58 ["PaddingRight"]
      174 CALL                             R29 2 1
      175 SETTABLEKS                       R29 R28 K46 ["Padding"]
      177 GETUPVAL                         R29 6
      178 GETTABLEKS                       R29 R29 K35 ["createElement"]
      180 LOADK                            R30 K47 ["UIListLayout"]
      181 NEWTABLE                         R31 8 0
      183 GETIMPORT                        R32 K64 [Enum.FillDirection.Vertical]
      185 SETTABLEKS                       R32 R31 K62 ["FillDirection"]
      187 GETIMPORT                        R32 K67 [Enum.HorizontalAlignment.Center]
      189 SETTABLEKS                       R32 R31 K65 ["HorizontalAlignment"]
      191 GETIMPORT                        R32 K70 [Enum.VerticalAlignment.Top]
      193 SETTABLEKS                       R32 R31 K68 ["VerticalAlignment"]
      195 GETIMPORT                        R32 K72 [Enum.SortOrder.LayoutOrder]
      197 SETTABLEKS                       R32 R31 K71 ["SortOrder"]
      199 GETIMPORT                        R32 K61 [UDim.new]
      201 LOADN                            R33 0
      202 LOADN                            R34 20
      203 CALL                             R32 2 1
      204 SETTABLEKS                       R32 R31 K46 ["Padding"]
      206 GETUPVAL                         R32 6
      207 GETTABLEKS                       R32 R32 K44 ["Ref"]
      209 GETTABLEKS                       R33 R0 K73 ["layouterRef"]
      211 SETTABLE                         R33 R31 R32
      212 CALL                             R29 2 1
      213 SETTABLEKS                       R29 R28 K47 ["UIListLayout"]
      215 LOADB                            R29 0
      216 GETUPVAL                         R30 0
      217 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      219 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      221 JUMPIFNOTEQ                      R14 R30 ; [+29]
      223 GETUPVAL                         R29 6
      224 GETTABLEKS                       R29 R29 K35 ["createElement"]
      226 GETUPVAL                         R30 7
      227 DUPTABLE                         R31 K75 [{"Size", "AssetId", "ThumbnailStatus", "ChooseThumbnail", "IconFile", "LayoutOrder"}]
      228 GETIMPORT                        R32 K38 [UDim2.new]
      230 LOADN                            R33 0
      231 LOADN                            R34 150
      232 LOADN                            R35 0
      233 LOADN                            R36 150
      234 CALL                             R32 4 1
      235 SETTABLEKS                       R32 R31 K39 ["Size"]
      237 SETTABLEKS                       R7 R31 K6 ["AssetId"]
      239 SETTABLEKS                       R15 R31 K74 ["ThumbnailStatus"]
      241 SETTABLEKS                       R12 R31 K11 ["ChooseThumbnail"]
      243 SETTABLEKS                       R13 R31 K12 ["IconFile"]
      245 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      247 CALL                             R32 1 1
      248 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      250 CALL                             R29 2 1
      251 SETTABLEKS                       R29 R28 K48 ["ImagePicker"]
      253 LOADB                            R29 0
      254 GETUPVAL                         R30 0
      255 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      257 GETTABLEKS                       R30 R30 K18 ["Thumbnail"]
      259 JUMPIFNOTEQ                      R14 R30 ; [+58]
      261 JUMPIFEQKNIL                     R22 ; [+30]
      263 GETUPVAL                         R29 6
      264 GETTABLEKS                       R29 R29 K35 ["createElement"]
      266 GETUPVAL                         R30 8
      267 GETTABLEKS                       R30 R30 K77 ["Image"]
      269 DUPTABLE                         R31 K79 [{"Size", "LayoutOrder", "Image", "ScaleType"}]
      270 GETIMPORT                        R32 K38 [UDim2.new]
      272 LOADN                            R33 0
      273 LOADN                            R34 150
      274 LOADN                            R35 0
      275 LOADN                            R36 150
      276 CALL                             R32 4 1
      277 SETTABLEKS                       R32 R31 K39 ["Size"]
      279 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      281 CALL                             R32 1 1
      282 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      284 SETTABLEKS                       R22 R31 K77 ["Image"]
      286 GETIMPORT                        R32 K81 [Enum.ScaleType.Fit]
      288 SETTABLEKS                       R32 R31 K78 ["ScaleType"]
      290 CALL                             R29 2 1
      291 JUMP                             ; [+26]
      292 GETUPVAL                         R29 6
      293 GETTABLEKS                       R29 R29 K35 ["createElement"]
      295 GETUPVAL                         R30 9
      296 DUPTABLE                         R31 K85 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Image"], ["defaultImage"] = ""}]
      297 GETIMPORT                        R32 K38 [UDim2.new]
      299 LOADN                            R33 0
      300 LOADN                            R34 150
      301 LOADN                            R35 0
      302 LOADN                            R36 150
      303 CALL                             R32 4 1
      304 SETTABLEKS                       R32 R31 K39 ["Size"]
      306 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      308 CALL                             R32 1 1
      309 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      311 JUMPIFNOT                        R23 ; [+2]
      312 LOADK                            R32 K86 ["rbxasset://textures/StudioToolbox/Animation.png"]
      313 JUMP                             ; [+1]
      314 MOVE                             R32 R19
      315 SETTABLEKS                       R32 R31 K77 ["Image"]
      317 CALL                             R29 2 1
      318 SETTABLEKS                       R29 R28 K18 ["Thumbnail"]
      320 LOADB                            R29 0
      321 GETUPVAL                         R30 0
      322 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      324 GETTABLEKS                       R30 R30 K87 ["ModelPreview"]
      326 JUMPIFNOTEQ                      R14 R30 ; [+29]
      328 GETUPVAL                         R29 6
      329 GETTABLEKS                       R29 R29 K35 ["createElement"]
      331 GETUPVAL                         R30 10
      332 DUPTABLE                         R31 K91 [{["Size"], ["ShowTitle"] = False, ["LayoutOrder"], ["AssetType"], ["AllowedBundleTypeSettings"], ["selectedColor"]}]
      333 GETIMPORT                        R32 K38 [UDim2.new]
      335 LOADN                            R33 0
      336 LOADN                            R34 150
      337 LOADN                            R35 0
      338 LOADN                            R36 150
      339 CALL                             R32 4 1
      340 SETTABLEKS                       R32 R31 K39 ["Size"]
      342 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      344 CALL                             R32 1 1
      345 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      347 SETTABLEKS                       R8 R31 K31 ["AssetType"]
      349 SETTABLEKS                       R16 R31 K15 ["AllowedBundleTypeSettings"]
      351 GETTABLEKS                       R32 R1 K90 ["selectedColor"]
      353 SETTABLEKS                       R32 R31 K90 ["selectedColor"]
      355 CALL                             R29 2 1
      356 SETTABLEKS                       R29 R28 K49 ["AssetThumbnailPreview"]
      358 LOADB                            R29 0
      359 GETUPVAL                         R30 0
      360 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      362 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      364 JUMPIFEQ                         R14 R30 ; [+242]
      366 GETUPVAL                         R29 6
      367 GETTABLEKS                       R29 R29 K35 ["createElement"]
      369 LOADK                            R30 K36 ["Frame"]
      370 DUPTABLE                         R31 K92 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      371 GETIMPORT                        R32 K38 [UDim2.new]
      373 LOADN                            R33 1
      374 LOADN                            R34 0
      375 LOADN                            R35 0
      376 LOADN                            R36 50
      377 CALL                             R32 4 1
      378 SETTABLEKS                       R32 R31 K39 ["Size"]
      380 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      382 CALL                             R32 1 1
      383 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      385 DUPTABLE                         R32 K95 [{"AssetIdLabel", "AssetStatusLabel"}]
      386 JUMPIFNOT                        R24 ; [+81]
      387 LOADB                            R33 0
      388 JUMPIFEQKNIL                     R7 ; [+138]
      390 GETUPVAL                         R33 6
      391 GETTABLEKS                       R33 R33 K35 ["createElement"]
      393 GETUPVAL                         R34 11
      394 DUPTABLE                         R35 K106 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextXAlignment"], ["TextYAlignment"], ["OnClick"]}]
      395 GETIMPORT                        R36 K38 [UDim2.new]
      397 LOADN                            R37 1
      398 LOADN                            R38 0
      399 LOADN                            R39 0
      400 LOADN                            R40 25
      401 CALL                             R36 4 1
      402 SETTABLEKS                       R36 R35 K39 ["Size"]
      404 GETIMPORT                        R36 K108 [Vector2.new]
      406 LOADK                            R37 K109 [0.5]
      407 LOADN                            R38 0
      408 CALL                             R36 2 1
      409 SETTABLEKS                       R36 R35 K96 ["AnchorPoint"]
      411 GETIMPORT                        R36 K38 [UDim2.new]
      413 LOADK                            R37 K109 [0.5]
      414 LOADN                            R38 0
      415 LOADN                            R39 0
      416 LOADN                            R40 0
      417 CALL                             R36 4 1
      418 SETTABLEKS                       R36 R35 K97 ["Position"]
      420 GETTABLEKS                       R36 R2 K110 ["uploadResult"]
      422 GETTABLEKS                       R36 R36 K111 ["link"]
      424 SETTABLEKS                       R36 R35 K98 ["TextColor3"]
      426 LOADK                            R38 K112 ["General"]
      427 LOADK                            R39 K113 ["PreviewAreaAssetID"]
      428 DUPTABLE                         R40 K115 [{"assetId"}]
      429 FASTCALL1                        TOSTRING R7 ; [+3]
      430 MOVE                             R42 R7
      431 GETIMPORT                        R41 K26 [tostring]
      433 CALL                             R41 1 1
      434 SETTABLEKS                       R41 R40 K114 ["assetId"]
      436 NAMECALL                         R36 R3 K27 ["getText"]
      438 CALL                             R36 4 1
      439 SETTABLEKS                       R36 R35 K99 ["Text"]
      441 GETUPVAL                         R36 12
      442 GETTABLEKS                       R36 R36 K116 ["FONT"]
      444 SETTABLEKS                       R36 R35 K100 ["Font"]
      446 GETUPVAL                         R36 12
      447 GETTABLEKS                       R36 R36 K117 ["FONT_SIZE_MEDIUM"]
      449 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      451 GETIMPORT                        R36 K118 [Enum.TextXAlignment.Center]
      453 SETTABLEKS                       R36 R35 K103 ["TextXAlignment"]
      455 GETIMPORT                        R36 K119 [Enum.TextYAlignment.Center]
      457 SETTABLEKS                       R36 R35 K104 ["TextYAlignment"]
      459 NEWCLOSURE                       R36 P0
      460 CAPTURE                          VAL R7
      461 CAPTURE                          UPVAL U1
      462 CAPTURE                          UPVAL U13
      463 CAPTURE                          UPVAL U14
      464 SETTABLEKS                       R36 R35 K105 ["OnClick"]
      466 CALL                             R33 2 1
      467 JUMP                             ; [+59]
      468 LOADB                            R33 0
      469 JUMPIFEQKNIL                     R7 ; [+57]
      471 GETUPVAL                         R33 6
      472 GETTABLEKS                       R33 R33 K35 ["createElement"]
      474 LOADK                            R34 K120 ["TextLabel"]
      475 DUPTABLE                         R35 K122 [{["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      476 GETIMPORT                        R36 K38 [UDim2.new]
      478 LOADN                            R37 1
      479 LOADN                            R38 0
      480 LOADN                            R39 0
      481 LOADN                            R40 25
      482 CALL                             R36 4 1
      483 SETTABLEKS                       R36 R35 K39 ["Size"]
      485 GETTABLEKS                       R36 R18 K90 ["selectedColor"]
      487 SETTABLEKS                       R36 R35 K98 ["TextColor3"]
      489 LOADK                            R38 K112 ["General"]
      490 LOADK                            R39 K113 ["PreviewAreaAssetID"]
      491 DUPTABLE                         R40 K115 [{"assetId"}]
      492 FASTCALL1                        TOSTRING R7 ; [+3]
      493 MOVE                             R42 R7
      494 GETIMPORT                        R41 K26 [tostring]
      496 CALL                             R41 1 1
      497 SETTABLEKS                       R41 R40 K114 ["assetId"]
      499 NAMECALL                         R36 R3 K27 ["getText"]
      501 CALL                             R36 4 1
      502 SETTABLEKS                       R36 R35 K99 ["Text"]
      504 GETUPVAL                         R36 12
      505 GETTABLEKS                       R36 R36 K116 ["FONT"]
      507 SETTABLEKS                       R36 R35 K100 ["Font"]
      509 GETUPVAL                         R36 12
      510 GETTABLEKS                       R36 R36 K117 ["FONT_SIZE_MEDIUM"]
      512 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      514 GETIMPORT                        R36 K124 [Enum.TextTruncate.AtEnd]
      516 SETTABLEKS                       R36 R35 K121 ["TextTruncate"]
      518 GETIMPORT                        R36 K118 [Enum.TextXAlignment.Center]
      520 SETTABLEKS                       R36 R35 K103 ["TextXAlignment"]
      522 GETIMPORT                        R36 K119 [Enum.TextYAlignment.Center]
      524 SETTABLEKS                       R36 R35 K104 ["TextYAlignment"]
      526 CALL                             R33 2 1
      527 SETTABLEKS                       R33 R32 K93 ["AssetIdLabel"]
      529 LOADB                            R33 0
      530 JUMPIFEQKNIL                     R6 ; [+73]
      532 LOADB                            R33 0
      533 GETUPVAL                         R34 0
      534 GETTABLEKS                       R34 R34 K125 ["ASSET_STATUS"]
      536 GETTABLEKS                       R34 R34 K126 ["Unknown"]
      538 JUMPIFEQ                         R34 R6 ; [+65]
      540 GETUPVAL                         R33 6
      541 GETTABLEKS                       R33 R33 K35 ["createElement"]
      543 LOADK                            R34 K120 ["TextLabel"]
      544 DUPTABLE                         R35 K127 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      545 GETIMPORT                        R36 K38 [UDim2.new]
      547 LOADN                            R37 1
      548 LOADN                            R38 0
      549 LOADN                            R39 0
      550 LOADN                            R40 25
      551 CALL                             R36 4 1
      552 SETTABLEKS                       R36 R35 K39 ["Size"]
      554 GETIMPORT                        R36 K38 [UDim2.new]
      556 LOADN                            R37 0
      557 LOADN                            R38 0
      558 LOADN                            R39 0
      559 LOADN                            R40 25
      560 CALL                             R36 4 1
      561 SETTABLEKS                       R36 R35 K97 ["Position"]
      563 GETTABLEKS                       R36 R18 K128 ["textColor"]
      565 SETTABLEKS                       R36 R35 K98 ["TextColor3"]
      567 LOADK                            R38 K112 ["General"]
      568 LOADK                            R39 K129 ["PreviewAreaStatus"]
      569 DUPTABLE                         R40 K131 [{"assetStatus"}]
      570 GETUPVAL                         R42 15
      571 MOVE                             R43 R3
      572 CALL                             R42 1 1
      573 GETTABLE                         R41 R42 R6
      574 SETTABLEKS                       R41 R40 K130 ["assetStatus"]
      576 NAMECALL                         R36 R3 K27 ["getText"]
      578 CALL                             R36 4 1
      579 SETTABLEKS                       R36 R35 K99 ["Text"]
      581 GETUPVAL                         R36 12
      582 GETTABLEKS                       R36 R36 K116 ["FONT"]
      584 SETTABLEKS                       R36 R35 K100 ["Font"]
      586 GETUPVAL                         R36 12
      587 GETTABLEKS                       R36 R36 K117 ["FONT_SIZE_MEDIUM"]
      589 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      591 GETIMPORT                        R36 K124 [Enum.TextTruncate.AtEnd]
      593 SETTABLEKS                       R36 R35 K121 ["TextTruncate"]
      595 GETIMPORT                        R36 K118 [Enum.TextXAlignment.Center]
      597 SETTABLEKS                       R36 R35 K103 ["TextXAlignment"]
      599 GETIMPORT                        R36 K132 [Enum.TextYAlignment.Top]
      601 SETTABLEKS                       R36 R35 K104 ["TextYAlignment"]
      603 CALL                             R33 2 1
      604 SETTABLEKS                       R33 R32 K94 ["AssetStatusLabel"]
      606 CALL                             R29 3 1
      607 SETTABLEKS                       R29 R28 K50 ["AssetInfo"]
      609 LOADB                            R29 0
      610 GETUPVAL                         R30 0
      611 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      613 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      615 JUMPIFNOTEQ                      R14 R30 ; [+194]
      617 GETUPVAL                         R29 6
      618 GETTABLEKS                       R29 R29 K35 ["createElement"]
      620 LOADK                            R30 K36 ["Frame"]
      621 DUPTABLE                         R31 K92 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      622 GETIMPORT                        R32 K38 [UDim2.new]
      624 LOADN                            R33 0
      625 LOADN                            R34 192
      626 LOADN                            R35 0
      627 LOADN                            R36 120
      628 CALL                             R32 4 1
      629 SETTABLEKS                       R32 R31 K39 ["Size"]
      631 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      633 CALL                             R32 1 1
      634 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      636 DUPTABLE                         R32 K135 [{"UIListLayout", "Container", "Container2"}]
      637 GETUPVAL                         R33 6
      638 GETTABLEKS                       R33 R33 K35 ["createElement"]
      640 LOADK                            R34 K47 ["UIListLayout"]
      641 DUPTABLE                         R35 K136 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      642 GETIMPORT                        R36 K64 [Enum.FillDirection.Vertical]
      644 SETTABLEKS                       R36 R35 K62 ["FillDirection"]
      646 GETIMPORT                        R36 K138 [Enum.HorizontalAlignment.Left]
      648 SETTABLEKS                       R36 R35 K65 ["HorizontalAlignment"]
      650 GETIMPORT                        R36 K70 [Enum.VerticalAlignment.Top]
      652 SETTABLEKS                       R36 R35 K68 ["VerticalAlignment"]
      654 GETIMPORT                        R36 K72 [Enum.SortOrder.LayoutOrder]
      656 SETTABLEKS                       R36 R35 K71 ["SortOrder"]
      658 GETIMPORT                        R36 K61 [UDim.new]
      660 LOADN                            R37 0
      661 LOADN                            R38 8
      662 CALL                             R36 2 1
      663 SETTABLEKS                       R36 R35 K46 ["Padding"]
      665 CALL                             R33 2 1
      666 SETTABLEKS                       R33 R32 K47 ["UIListLayout"]
      668 GETUPVAL                         R33 6
      669 GETTABLEKS                       R33 R33 K35 ["createElement"]
      671 LOADK                            R34 K36 ["Frame"]
      672 DUPTABLE                         R35 K139 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      673 GETIMPORT                        R36 K38 [UDim2.new]
      675 LOADN                            R37 1
      676 LOADN                            R38 0
      677 LOADN                            R39 0
      678 LOADN                            R40 54
      679 CALL                             R36 4 1
      680 SETTABLEKS                       R36 R35 K39 ["Size"]
      682 DUPTABLE                         R36 K141 [{"FormatLabel"}]
      683 GETUPVAL                         R37 6
      684 GETTABLEKS                       R37 R37 K35 ["createElement"]
      686 LOADK                            R38 K120 ["TextLabel"]
      687 DUPTABLE                         R39 K143 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      688 GETIMPORT                        R40 K38 [UDim2.new]
      690 LOADN                            R41 0
      691 LOADN                            R42 176
      692 LOADN                            R43 0
      693 LOADN                            R44 54
      694 CALL                             R40 4 1
      695 SETTABLEKS                       R40 R39 K39 ["Size"]
      697 GETIMPORT                        R40 K38 [UDim2.new]
      699 LOADN                            R41 0
      700 LOADN                            R42 10
      701 LOADN                            R43 0
      702 LOADN                            R44 0
      703 CALL                             R40 4 1
      704 SETTABLEKS                       R40 R39 K97 ["Position"]
      706 SETTABLEKS                       R20 R39 K99 ["Text"]
      708 GETUPVAL                         R40 12
      709 GETTABLEKS                       R40 R40 K116 ["FONT"]
      711 SETTABLEKS                       R40 R39 K100 ["Font"]
      713 GETUPVAL                         R40 12
      714 GETTABLEKS                       R40 R40 K117 ["FONT_SIZE_MEDIUM"]
      716 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      718 GETTABLEKS                       R40 R18 K128 ["textColor"]
      720 SETTABLEKS                       R40 R39 K98 ["TextColor3"]
      722 GETIMPORT                        R40 K118 [Enum.TextXAlignment.Center]
      724 SETTABLEKS                       R40 R39 K103 ["TextXAlignment"]
      726 GETIMPORT                        R40 K119 [Enum.TextYAlignment.Center]
      728 SETTABLEKS                       R40 R39 K104 ["TextYAlignment"]
      730 CALL                             R37 2 1
      731 SETTABLEKS                       R37 R36 K140 ["FormatLabel"]
      733 CALL                             R33 3 1
      734 SETTABLEKS                       R33 R32 K133 ["Container"]
      736 GETUPVAL                         R33 6
      737 GETTABLEKS                       R33 R33 K35 ["createElement"]
      739 LOADK                            R34 K36 ["Frame"]
      740 DUPTABLE                         R35 K145 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      741 GETIMPORT                        R36 K38 [UDim2.new]
      743 LOADN                            R37 1
      744 LOADN                            R38 0
      745 LOADN                            R39 0
      746 LOADN                            R40 54
      747 CALL                             R36 4 1
      748 SETTABLEKS                       R36 R35 K39 ["Size"]
      750 DUPTABLE                         R36 K147 [{"ProcessLabel"}]
      751 GETUPVAL                         R37 6
      752 GETTABLEKS                       R37 R37 K35 ["createElement"]
      754 LOADK                            R38 K120 ["TextLabel"]
      755 DUPTABLE                         R39 K148 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 2}]
      756 GETIMPORT                        R40 K38 [UDim2.new]
      758 LOADN                            R41 0
      759 LOADN                            R42 176
      760 LOADN                            R43 0
      761 LOADN                            R44 54
      762 CALL                             R40 4 1
      763 SETTABLEKS                       R40 R39 K39 ["Size"]
      765 GETIMPORT                        R40 K38 [UDim2.new]
      767 LOADN                            R41 0
      768 LOADN                            R42 10
      769 LOADN                            R43 0
      770 LOADN                            R44 0
      771 CALL                             R40 4 1
      772 SETTABLEKS                       R40 R39 K97 ["Position"]
      774 LOADK                            R42 K20 ["AssetConfigPreview"]
      775 LOADK                            R43 K149 ["Process"]
      776 NAMECALL                         R40 R3 K27 ["getText"]
      778 CALL                             R40 3 1
      779 SETTABLEKS                       R40 R39 K99 ["Text"]
      781 GETUPVAL                         R40 12
      782 GETTABLEKS                       R40 R40 K116 ["FONT"]
      784 SETTABLEKS                       R40 R39 K100 ["Font"]
      786 GETUPVAL                         R40 12
      787 GETTABLEKS                       R40 R40 K117 ["FONT_SIZE_MEDIUM"]
      789 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      791 GETTABLEKS                       R40 R18 K128 ["textColor"]
      793 SETTABLEKS                       R40 R39 K98 ["TextColor3"]
      795 GETIMPORT                        R40 K118 [Enum.TextXAlignment.Center]
      797 SETTABLEKS                       R40 R39 K103 ["TextXAlignment"]
      799 GETIMPORT                        R40 K119 [Enum.TextYAlignment.Center]
      801 SETTABLEKS                       R40 R39 K104 ["TextYAlignment"]
      803 CALL                             R37 2 1
      804 SETTABLEKS                       R37 R36 K146 ["ProcessLabel"]
      806 CALL                             R33 3 1
      807 SETTABLEKS                       R33 R32 K134 ["Container2"]
      809 CALL                             R29 3 1
      810 SETTABLEKS                       R29 R28 K51 ["Guide"]
      812 MOVE                             R29 R17
      813 JUMPIFNOT                        R29 ; [+50]
      814 GETUPVAL                         R29 6
      815 GETTABLEKS                       R29 R29 K35 ["createElement"]
      817 LOADK                            R30 K36 ["Frame"]
      818 DUPTABLE                         R31 K92 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      819 GETIMPORT                        R32 K38 [UDim2.new]
      821 LOADN                            R33 1
      822 LOADN                            R34 10
      823 LOADN                            R35 1
      824 LOADN                            R36 -200
      825 CALL                             R32 4 1
      826 SETTABLEKS                       R32 R31 K39 ["Size"]
      828 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      830 CALL                             R32 1 1
      831 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      833 DUPTABLE                         R32 K151 [{"SideTabs"}]
      834 MOVE                             R33 R17
      835 JUMPIFNOT                        R33 ; [+25]
      836 GETUPVAL                         R33 6
      837 GETTABLEKS                       R33 R33 K35 ["createElement"]
      839 GETUPVAL                         R34 16
      840 DUPTABLE                         R35 K157 [{["Size"], ["ItemHeight"] = 48, ["Items"], ["CurrentTab"], ["ItemClickCallBack"], ["SelectParentRef"]}]
      841 GETIMPORT                        R36 K38 [UDim2.new]
      843 LOADN                            R37 1
      844 LOADN                            R38 0
      845 LOADN                            R39 1
      846 LOADN                            R40 0
      847 CALL                             R36 4 1
      848 SETTABLEKS                       R36 R35 K39 ["Size"]
      850 SETTABLEKS                       R4 R35 K154 ["Items"]
      852 SETTABLEKS                       R5 R35 K4 ["CurrentTab"]
      854 SETTABLEKS                       R11 R35 K155 ["ItemClickCallBack"]
      856 GETTABLEKS                       R36 R0 K45 ["baseFrameRef"]
      858 SETTABLEKS                       R36 R35 K156 ["SelectParentRef"]
      860 CALL                             R33 2 1
      861 SETTABLEKS                       R33 R32 K150 ["SideTabs"]
      863 CALL                             R29 3 1
      864 SETTABLEKS                       R29 R28 K52 ["TabArea"]
      866 CALL                             R25 3 -1
      867 RETURN                           R25 -1

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
       34 GETIMPORT                        R6 K9 [require]
       36 GETTABLEKS                       R7 R2 K13 ["Foundation"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R5 K14 ["UI"]
       41 GETTABLEKS                       R7 R7 K15 ["LinkText"]
       43 GETTABLEKS                       R8 R1 K16 ["Src"]
       45 GETTABLEKS                       R8 R8 K17 ["Components"]
       47 GETTABLEKS                       R8 R8 K18 ["AssetConfiguration"]
       49 GETIMPORT                        R9 K9 [require]
       51 GETTABLEKS                       R10 R8 K19 ["SideTabs"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K9 [require]
       56 GETTABLEKS                       R11 R8 K20 ["AssetThumbnailPreview"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K9 [require]
       61 GETTABLEKS                       R12 R8 K21 ["ImagePicker"]
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R12 R1 K16 ["Src"]
       66 GETTABLEKS                       R12 R12 K22 ["Util"]
       68 GETIMPORT                        R13 K9 [require]
       70 GETTABLEKS                       R14 R12 K23 ["LayoutOrderIterator"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K9 [require]
       75 GETTABLEKS                       R15 R12 K24 ["Constants"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K9 [require]
       80 GETTABLEKS                       R16 R12 K25 ["Urls"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K9 [require]
       85 GETTABLEKS                       R17 R12 K26 ["AssetConfigConstants"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K9 [require]
       90 GETTABLEKS                       R18 R12 K27 ["AssetConfigUtil"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K9 [require]
       95 GETTABLEKS                       R19 R12 K28 ["ToolboxUtilities"]
       97 CALL                             R18 1 1
       98 GETIMPORT                        R19 K9 [require]
      100 GETTABLEKS                       R20 R1 K16 ["Src"]
      102 GETTABLEKS                       R20 R20 K29 ["Localization"]
      104 GETTABLEKS                       R20 R20 K30 ["getLocalizedAssetStatusMap"]
      106 CALL                             R19 1 1
      107 GETIMPORT                        R20 K9 [require]
      109 GETTABLEKS                       R21 R1 K16 ["Src"]
      111 GETTABLEKS                       R21 R21 K17 ["Components"]
      113 GETTABLEKS                       R21 R21 K31 ["ImageWithDefault"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K9 [require]
      118 GETTABLEKS                       R22 R1 K16 ["Src"]
      120 GETTABLEKS                       R22 R22 K32 ["Networking"]
      122 GETTABLEKS                       R22 R22 K33 ["Requests"]
      124 GETTABLEKS                       R22 R22 K34 ["GetAssetConfigThumbnailStatusRequest"]
      126 CALL                             R21 1 1
      127 GETTABLEKS                       R22 R5 K35 ["ContextServices"]
      129 GETTABLEKS                       R23 R22 K36 ["withContext"]
      131 GETIMPORT                        R24 K9 [require]
      133 GETTABLEKS                       R25 R1 K16 ["Src"]
      135 GETTABLEKS                       R25 R25 K35 ["ContextServices"]
      137 GETTABLEKS                       R25 R25 K37 ["NetworkContext"]
      139 CALL                             R24 1 1
      140 GETTABLEKS                       R25 R3 K38 ["PureComponent"]
      142 LOADK                            R27 K39 ["PreviewArea"]
      143 NAMECALL                         R25 R25 K40 ["extend"]
      145 CALL                             R25 2 1
      146 GETIMPORT                        R26 K1 [game]
      148 LOADK                            R28 K41 ["UseDefaultThumbnailForAnimation"]
      149 NAMECALL                         R26 R26 K42 ["GetFastFlag"]
      151 CALL                             R26 2 1
      152 GETTABLEKS                       R27 R14 K43 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      154 DUPCLOSURE                       R28 K44 [PROTO_0]
      155 CAPTURE                          VAL R3
      156 SETTABLEKS                       R28 R25 K45 ["init"]
      158 DUPCLOSURE                       R28 K46 [PROTO_1]
      159 CAPTURE                          VAL R16
      160 SETTABLEKS                       R28 R25 K47 ["didMount"]
      162 DUPCLOSURE                       R28 K48 [PROTO_3]
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R27
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R26
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R9
      180 SETTABLEKS                       R28 R25 K49 ["render"]
      182 DUPCLOSURE                       R28 K50 [PROTO_4]
      183 DUPCLOSURE                       R29 K51 [PROTO_6]
      184 CAPTURE                          VAL R21
      185 MOVE                             R30 R23
      186 DUPTABLE                         R31 K54 [{"Stylizer", "Localization", "Network"}]
      187 GETTABLEKS                       R32 R22 K52 ["Stylizer"]
      189 SETTABLEKS                       R32 R31 K52 ["Stylizer"]
      191 GETTABLEKS                       R32 R22 K29 ["Localization"]
      193 SETTABLEKS                       R32 R31 K29 ["Localization"]
      195 SETTABLEKS                       R24 R31 K53 ["Network"]
      197 CALL                             R30 1 1
      198 MOVE                             R31 R25
      199 CALL                             R30 1 1
      200 MOVE                             R25 R30
      201 GETTABLEKS                       R30 R4 K55 ["connect"]
      203 MOVE                             R31 R28
      204 MOVE                             R32 R29
      205 CALL                             R30 2 1
      206 MOVE                             R31 R25
      207 CALL                             R30 1 -1
      208 RETURN                           R30 -1
