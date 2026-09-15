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
       85 GETUPVAL                         R23 4
       86 CALL                             R23 0 1
       87 JUMPIFNOT                        R23 ; [+7]
       88 JUMPIFEQKNIL                     R22 ; [+6]
       90 GETUPVAL                         R23 0
       91 GETTABLEKS                       R23 R23 K17 ["PreviewTypes"]
       93 GETTABLEKS                       R14 R23 K18 ["Thumbnail"]
       95 GETUPVAL                         R23 5
       96 JUMPIFNOT                        R23 ; [+11]
       97 LOADB                            R23 0
       98 GETIMPORT                        R24 K33 [Enum.AssetType.Animation]
      100 JUMPIFNOTEQ                      R8 R24 ; [+7]
      102 NOT                              R23 R19
      103 JUMPIFNOT                        R23 ; [+4]
      104 GETUPVAL                         R23 4
      105 CALL                             R23 0 1
      106 JUMPIFNOT                        R23 ; [+1]
      107 NOT                              R23 R22
      108 GETUPVAL                         R24 6
      109 GETTABLEKS                       R24 R24 K34 ["isCreatorStoreAssetNotIncludingAnimation"]
      111 MOVE                             R25 R8
      112 CALL                             R24 1 1
      113 GETUPVAL                         R25 7
      114 GETTABLEKS                       R25 R25 K35 ["createElement"]
      116 LOADK                            R26 K36 ["Frame"]
      117 NEWTABLE                         R27 8 0
      119 GETIMPORT                        R28 K38 [UDim2.new]
      121 LOADN                            R29 0
      122 MOVE                             R30 R9
      123 LOADN                            R31 1
      124 LOADN                            R32 0
      125 CALL                             R28 4 1
      126 SETTABLEKS                       R28 R27 K39 ["Size"]
      128 LOADN                            R28 0
      129 SETTABLEKS                       R28 R27 K40 ["BackgroundTransparency"]
      131 GETTABLEKS                       R28 R18 K41 ["backgroundColor"]
      133 SETTABLEKS                       R28 R27 K42 ["BackgroundColor3"]
      135 LOADN                            R28 0
      136 SETTABLEKS                       R28 R27 K43 ["BorderSizePixel"]
      138 GETUPVAL                         R28 7
      139 GETTABLEKS                       R28 R28 K44 ["Ref"]
      141 GETTABLEKS                       R29 R0 K45 ["baseFrameRef"]
      143 SETTABLE                         R29 R27 R28
      144 SETTABLEKS                       R10 R27 K9 ["LayoutOrder"]
      146 DUPTABLE                         R28 K53 [{"Padding", "UIListLayout", "ImagePicker", "Thumbnail", "AssetThumbnailPreview", "AssetInfo", "Guide", "TabArea"}]
      147 GETUPVAL                         R29 7
      148 GETTABLEKS                       R29 R29 K35 ["createElement"]
      150 LOADK                            R30 K54 ["UIPadding"]
      151 DUPTABLE                         R31 K59 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      152 GETIMPORT                        R32 K61 [UDim.new]
      154 LOADN                            R33 0
      155 LOADN                            R34 24
      156 CALL                             R32 2 1
      157 SETTABLEKS                       R32 R31 K55 ["PaddingTop"]
      159 GETIMPORT                        R32 K61 [UDim.new]
      161 LOADN                            R33 0
      162 LOADN                            R34 24
      163 CALL                             R32 2 1
      164 SETTABLEKS                       R32 R31 K56 ["PaddingBottom"]
      166 GETIMPORT                        R32 K61 [UDim.new]
      168 LOADN                            R33 0
      169 LOADN                            R34 5
      170 CALL                             R32 2 1
      171 SETTABLEKS                       R32 R31 K57 ["PaddingLeft"]
      173 GETIMPORT                        R32 K61 [UDim.new]
      175 LOADN                            R33 0
      176 LOADN                            R34 5
      177 CALL                             R32 2 1
      178 SETTABLEKS                       R32 R31 K58 ["PaddingRight"]
      180 CALL                             R29 2 1
      181 SETTABLEKS                       R29 R28 K46 ["Padding"]
      183 GETUPVAL                         R29 7
      184 GETTABLEKS                       R29 R29 K35 ["createElement"]
      186 LOADK                            R30 K47 ["UIListLayout"]
      187 NEWTABLE                         R31 8 0
      189 GETIMPORT                        R32 K64 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R32 R31 K62 ["FillDirection"]
      193 GETIMPORT                        R32 K67 [Enum.HorizontalAlignment.Center]
      195 SETTABLEKS                       R32 R31 K65 ["HorizontalAlignment"]
      197 GETIMPORT                        R32 K70 [Enum.VerticalAlignment.Top]
      199 SETTABLEKS                       R32 R31 K68 ["VerticalAlignment"]
      201 GETIMPORT                        R32 K72 [Enum.SortOrder.LayoutOrder]
      203 SETTABLEKS                       R32 R31 K71 ["SortOrder"]
      205 GETIMPORT                        R32 K61 [UDim.new]
      207 LOADN                            R33 0
      208 LOADN                            R34 20
      209 CALL                             R32 2 1
      210 SETTABLEKS                       R32 R31 K46 ["Padding"]
      212 GETUPVAL                         R32 7
      213 GETTABLEKS                       R32 R32 K44 ["Ref"]
      215 GETTABLEKS                       R33 R0 K73 ["layouterRef"]
      217 SETTABLE                         R33 R31 R32
      218 CALL                             R29 2 1
      219 SETTABLEKS                       R29 R28 K47 ["UIListLayout"]
      221 LOADB                            R29 0
      222 GETUPVAL                         R30 0
      223 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      225 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      227 JUMPIFNOTEQ                      R14 R30 ; [+29]
      229 GETUPVAL                         R29 7
      230 GETTABLEKS                       R29 R29 K35 ["createElement"]
      232 GETUPVAL                         R30 8
      233 DUPTABLE                         R31 K75 [{"Size", "AssetId", "ThumbnailStatus", "ChooseThumbnail", "IconFile", "LayoutOrder"}]
      234 GETIMPORT                        R32 K38 [UDim2.new]
      236 LOADN                            R33 0
      237 LOADN                            R34 150
      238 LOADN                            R35 0
      239 LOADN                            R36 150
      240 CALL                             R32 4 1
      241 SETTABLEKS                       R32 R31 K39 ["Size"]
      243 SETTABLEKS                       R7 R31 K6 ["AssetId"]
      245 SETTABLEKS                       R15 R31 K74 ["ThumbnailStatus"]
      247 SETTABLEKS                       R12 R31 K11 ["ChooseThumbnail"]
      249 SETTABLEKS                       R13 R31 K12 ["IconFile"]
      251 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      253 CALL                             R32 1 1
      254 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      256 CALL                             R29 2 1
      257 SETTABLEKS                       R29 R28 K48 ["ImagePicker"]
      259 LOADB                            R29 0
      260 GETUPVAL                         R30 0
      261 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      263 GETTABLEKS                       R30 R30 K18 ["Thumbnail"]
      265 JUMPIFNOTEQ                      R14 R30 ; [+61]
      267 GETUPVAL                         R30 4
      268 CALL                             R30 0 1
      269 JUMPIFNOT                        R30 ; [+31]
      270 JUMPIFEQKNIL                     R22 ; [+30]
      272 GETUPVAL                         R29 7
      273 GETTABLEKS                       R29 R29 K35 ["createElement"]
      275 GETUPVAL                         R30 9
      276 GETTABLEKS                       R30 R30 K77 ["Image"]
      278 DUPTABLE                         R31 K79 [{"Size", "LayoutOrder", "Image", "ScaleType"}]
      279 GETIMPORT                        R32 K38 [UDim2.new]
      281 LOADN                            R33 0
      282 LOADN                            R34 150
      283 LOADN                            R35 0
      284 LOADN                            R36 150
      285 CALL                             R32 4 1
      286 SETTABLEKS                       R32 R31 K39 ["Size"]
      288 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      290 CALL                             R32 1 1
      291 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      293 SETTABLEKS                       R22 R31 K77 ["Image"]
      295 GETIMPORT                        R32 K81 [Enum.ScaleType.Fit]
      297 SETTABLEKS                       R32 R31 K78 ["ScaleType"]
      299 CALL                             R29 2 1
      300 JUMP                             ; [+26]
      301 GETUPVAL                         R29 7
      302 GETTABLEKS                       R29 R29 K35 ["createElement"]
      304 GETUPVAL                         R30 10
      305 DUPTABLE                         R31 K85 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Image"], ["defaultImage"] = ""}]
      306 GETIMPORT                        R32 K38 [UDim2.new]
      308 LOADN                            R33 0
      309 LOADN                            R34 150
      310 LOADN                            R35 0
      311 LOADN                            R36 150
      312 CALL                             R32 4 1
      313 SETTABLEKS                       R32 R31 K39 ["Size"]
      315 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      317 CALL                             R32 1 1
      318 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      320 JUMPIFNOT                        R23 ; [+2]
      321 LOADK                            R32 K86 ["rbxasset://textures/StudioToolbox/Animation.png"]
      322 JUMP                             ; [+1]
      323 MOVE                             R32 R19
      324 SETTABLEKS                       R32 R31 K77 ["Image"]
      326 CALL                             R29 2 1
      327 SETTABLEKS                       R29 R28 K18 ["Thumbnail"]
      329 LOADB                            R29 0
      330 GETUPVAL                         R30 0
      331 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      333 GETTABLEKS                       R30 R30 K87 ["ModelPreview"]
      335 JUMPIFNOTEQ                      R14 R30 ; [+29]
      337 GETUPVAL                         R29 7
      338 GETTABLEKS                       R29 R29 K35 ["createElement"]
      340 GETUPVAL                         R30 11
      341 DUPTABLE                         R31 K91 [{["Size"], ["ShowTitle"] = False, ["LayoutOrder"], ["AssetType"], ["AllowedBundleTypeSettings"], ["selectedColor"]}]
      342 GETIMPORT                        R32 K38 [UDim2.new]
      344 LOADN                            R33 0
      345 LOADN                            R34 150
      346 LOADN                            R35 0
      347 LOADN                            R36 150
      348 CALL                             R32 4 1
      349 SETTABLEKS                       R32 R31 K39 ["Size"]
      351 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      353 CALL                             R32 1 1
      354 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      356 SETTABLEKS                       R8 R31 K31 ["AssetType"]
      358 SETTABLEKS                       R16 R31 K15 ["AllowedBundleTypeSettings"]
      360 GETTABLEKS                       R32 R1 K90 ["selectedColor"]
      362 SETTABLEKS                       R32 R31 K90 ["selectedColor"]
      364 CALL                             R29 2 1
      365 SETTABLEKS                       R29 R28 K49 ["AssetThumbnailPreview"]
      367 LOADB                            R29 0
      368 GETUPVAL                         R30 0
      369 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      371 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      373 JUMPIFEQ                         R14 R30 ; [+242]
      375 GETUPVAL                         R29 7
      376 GETTABLEKS                       R29 R29 K35 ["createElement"]
      378 LOADK                            R30 K36 ["Frame"]
      379 DUPTABLE                         R31 K92 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      380 GETIMPORT                        R32 K38 [UDim2.new]
      382 LOADN                            R33 1
      383 LOADN                            R34 0
      384 LOADN                            R35 0
      385 LOADN                            R36 50
      386 CALL                             R32 4 1
      387 SETTABLEKS                       R32 R31 K39 ["Size"]
      389 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      391 CALL                             R32 1 1
      392 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      394 DUPTABLE                         R32 K95 [{"AssetIdLabel", "AssetStatusLabel"}]
      395 JUMPIFNOT                        R24 ; [+81]
      396 LOADB                            R33 0
      397 JUMPIFEQKNIL                     R7 ; [+138]
      399 GETUPVAL                         R33 7
      400 GETTABLEKS                       R33 R33 K35 ["createElement"]
      402 GETUPVAL                         R34 12
      403 DUPTABLE                         R35 K106 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextXAlignment"], ["TextYAlignment"], ["OnClick"]}]
      404 GETIMPORT                        R36 K38 [UDim2.new]
      406 LOADN                            R37 1
      407 LOADN                            R38 0
      408 LOADN                            R39 0
      409 LOADN                            R40 25
      410 CALL                             R36 4 1
      411 SETTABLEKS                       R36 R35 K39 ["Size"]
      413 GETIMPORT                        R36 K108 [Vector2.new]
      415 LOADK                            R37 K109 [0.5]
      416 LOADN                            R38 0
      417 CALL                             R36 2 1
      418 SETTABLEKS                       R36 R35 K96 ["AnchorPoint"]
      420 GETIMPORT                        R36 K38 [UDim2.new]
      422 LOADK                            R37 K109 [0.5]
      423 LOADN                            R38 0
      424 LOADN                            R39 0
      425 LOADN                            R40 0
      426 CALL                             R36 4 1
      427 SETTABLEKS                       R36 R35 K97 ["Position"]
      429 GETTABLEKS                       R36 R2 K110 ["uploadResult"]
      431 GETTABLEKS                       R36 R36 K111 ["link"]
      433 SETTABLEKS                       R36 R35 K98 ["TextColor3"]
      435 LOADK                            R38 K112 ["General"]
      436 LOADK                            R39 K113 ["PreviewAreaAssetID"]
      437 DUPTABLE                         R40 K115 [{"assetId"}]
      438 FASTCALL1                        TOSTRING R7 ; [+3]
      439 MOVE                             R42 R7
      440 GETIMPORT                        R41 K26 [tostring]
      442 CALL                             R41 1 1
      443 SETTABLEKS                       R41 R40 K114 ["assetId"]
      445 NAMECALL                         R36 R3 K27 ["getText"]
      447 CALL                             R36 4 1
      448 SETTABLEKS                       R36 R35 K99 ["Text"]
      450 GETUPVAL                         R36 13
      451 GETTABLEKS                       R36 R36 K116 ["FONT"]
      453 SETTABLEKS                       R36 R35 K100 ["Font"]
      455 GETUPVAL                         R36 13
      456 GETTABLEKS                       R36 R36 K117 ["FONT_SIZE_MEDIUM"]
      458 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      460 GETIMPORT                        R36 K118 [Enum.TextXAlignment.Center]
      462 SETTABLEKS                       R36 R35 K103 ["TextXAlignment"]
      464 GETIMPORT                        R36 K119 [Enum.TextYAlignment.Center]
      466 SETTABLEKS                       R36 R35 K104 ["TextYAlignment"]
      468 NEWCLOSURE                       R36 P0
      469 CAPTURE                          VAL R7
      470 CAPTURE                          UPVAL U1
      471 CAPTURE                          UPVAL U14
      472 CAPTURE                          UPVAL U15
      473 SETTABLEKS                       R36 R35 K105 ["OnClick"]
      475 CALL                             R33 2 1
      476 JUMP                             ; [+59]
      477 LOADB                            R33 0
      478 JUMPIFEQKNIL                     R7 ; [+57]
      480 GETUPVAL                         R33 7
      481 GETTABLEKS                       R33 R33 K35 ["createElement"]
      483 LOADK                            R34 K120 ["TextLabel"]
      484 DUPTABLE                         R35 K122 [{["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      485 GETIMPORT                        R36 K38 [UDim2.new]
      487 LOADN                            R37 1
      488 LOADN                            R38 0
      489 LOADN                            R39 0
      490 LOADN                            R40 25
      491 CALL                             R36 4 1
      492 SETTABLEKS                       R36 R35 K39 ["Size"]
      494 GETTABLEKS                       R36 R18 K90 ["selectedColor"]
      496 SETTABLEKS                       R36 R35 K98 ["TextColor3"]
      498 LOADK                            R38 K112 ["General"]
      499 LOADK                            R39 K113 ["PreviewAreaAssetID"]
      500 DUPTABLE                         R40 K115 [{"assetId"}]
      501 FASTCALL1                        TOSTRING R7 ; [+3]
      502 MOVE                             R42 R7
      503 GETIMPORT                        R41 K26 [tostring]
      505 CALL                             R41 1 1
      506 SETTABLEKS                       R41 R40 K114 ["assetId"]
      508 NAMECALL                         R36 R3 K27 ["getText"]
      510 CALL                             R36 4 1
      511 SETTABLEKS                       R36 R35 K99 ["Text"]
      513 GETUPVAL                         R36 13
      514 GETTABLEKS                       R36 R36 K116 ["FONT"]
      516 SETTABLEKS                       R36 R35 K100 ["Font"]
      518 GETUPVAL                         R36 13
      519 GETTABLEKS                       R36 R36 K117 ["FONT_SIZE_MEDIUM"]
      521 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      523 GETIMPORT                        R36 K124 [Enum.TextTruncate.AtEnd]
      525 SETTABLEKS                       R36 R35 K121 ["TextTruncate"]
      527 GETIMPORT                        R36 K118 [Enum.TextXAlignment.Center]
      529 SETTABLEKS                       R36 R35 K103 ["TextXAlignment"]
      531 GETIMPORT                        R36 K119 [Enum.TextYAlignment.Center]
      533 SETTABLEKS                       R36 R35 K104 ["TextYAlignment"]
      535 CALL                             R33 2 1
      536 SETTABLEKS                       R33 R32 K93 ["AssetIdLabel"]
      538 LOADB                            R33 0
      539 JUMPIFEQKNIL                     R6 ; [+73]
      541 LOADB                            R33 0
      542 GETUPVAL                         R34 0
      543 GETTABLEKS                       R34 R34 K125 ["ASSET_STATUS"]
      545 GETTABLEKS                       R34 R34 K126 ["Unknown"]
      547 JUMPIFEQ                         R34 R6 ; [+65]
      549 GETUPVAL                         R33 7
      550 GETTABLEKS                       R33 R33 K35 ["createElement"]
      552 LOADK                            R34 K120 ["TextLabel"]
      553 DUPTABLE                         R35 K127 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      554 GETIMPORT                        R36 K38 [UDim2.new]
      556 LOADN                            R37 1
      557 LOADN                            R38 0
      558 LOADN                            R39 0
      559 LOADN                            R40 25
      560 CALL                             R36 4 1
      561 SETTABLEKS                       R36 R35 K39 ["Size"]
      563 GETIMPORT                        R36 K38 [UDim2.new]
      565 LOADN                            R37 0
      566 LOADN                            R38 0
      567 LOADN                            R39 0
      568 LOADN                            R40 25
      569 CALL                             R36 4 1
      570 SETTABLEKS                       R36 R35 K97 ["Position"]
      572 GETTABLEKS                       R36 R18 K128 ["textColor"]
      574 SETTABLEKS                       R36 R35 K98 ["TextColor3"]
      576 LOADK                            R38 K112 ["General"]
      577 LOADK                            R39 K129 ["PreviewAreaStatus"]
      578 DUPTABLE                         R40 K131 [{"assetStatus"}]
      579 GETUPVAL                         R42 16
      580 MOVE                             R43 R3
      581 CALL                             R42 1 1
      582 GETTABLE                         R41 R42 R6
      583 SETTABLEKS                       R41 R40 K130 ["assetStatus"]
      585 NAMECALL                         R36 R3 K27 ["getText"]
      587 CALL                             R36 4 1
      588 SETTABLEKS                       R36 R35 K99 ["Text"]
      590 GETUPVAL                         R36 13
      591 GETTABLEKS                       R36 R36 K116 ["FONT"]
      593 SETTABLEKS                       R36 R35 K100 ["Font"]
      595 GETUPVAL                         R36 13
      596 GETTABLEKS                       R36 R36 K117 ["FONT_SIZE_MEDIUM"]
      598 SETTABLEKS                       R36 R35 K101 ["TextSize"]
      600 GETIMPORT                        R36 K124 [Enum.TextTruncate.AtEnd]
      602 SETTABLEKS                       R36 R35 K121 ["TextTruncate"]
      604 GETIMPORT                        R36 K118 [Enum.TextXAlignment.Center]
      606 SETTABLEKS                       R36 R35 K103 ["TextXAlignment"]
      608 GETIMPORT                        R36 K132 [Enum.TextYAlignment.Top]
      610 SETTABLEKS                       R36 R35 K104 ["TextYAlignment"]
      612 CALL                             R33 2 1
      613 SETTABLEKS                       R33 R32 K94 ["AssetStatusLabel"]
      615 CALL                             R29 3 1
      616 SETTABLEKS                       R29 R28 K50 ["AssetInfo"]
      618 LOADB                            R29 0
      619 GETUPVAL                         R30 0
      620 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      622 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      624 JUMPIFNOTEQ                      R14 R30 ; [+194]
      626 GETUPVAL                         R29 7
      627 GETTABLEKS                       R29 R29 K35 ["createElement"]
      629 LOADK                            R30 K36 ["Frame"]
      630 DUPTABLE                         R31 K92 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      631 GETIMPORT                        R32 K38 [UDim2.new]
      633 LOADN                            R33 0
      634 LOADN                            R34 192
      635 LOADN                            R35 0
      636 LOADN                            R36 120
      637 CALL                             R32 4 1
      638 SETTABLEKS                       R32 R31 K39 ["Size"]
      640 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      642 CALL                             R32 1 1
      643 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      645 DUPTABLE                         R32 K135 [{"UIListLayout", "Container", "Container2"}]
      646 GETUPVAL                         R33 7
      647 GETTABLEKS                       R33 R33 K35 ["createElement"]
      649 LOADK                            R34 K47 ["UIListLayout"]
      650 DUPTABLE                         R35 K136 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      651 GETIMPORT                        R36 K64 [Enum.FillDirection.Vertical]
      653 SETTABLEKS                       R36 R35 K62 ["FillDirection"]
      655 GETIMPORT                        R36 K138 [Enum.HorizontalAlignment.Left]
      657 SETTABLEKS                       R36 R35 K65 ["HorizontalAlignment"]
      659 GETIMPORT                        R36 K70 [Enum.VerticalAlignment.Top]
      661 SETTABLEKS                       R36 R35 K68 ["VerticalAlignment"]
      663 GETIMPORT                        R36 K72 [Enum.SortOrder.LayoutOrder]
      665 SETTABLEKS                       R36 R35 K71 ["SortOrder"]
      667 GETIMPORT                        R36 K61 [UDim.new]
      669 LOADN                            R37 0
      670 LOADN                            R38 8
      671 CALL                             R36 2 1
      672 SETTABLEKS                       R36 R35 K46 ["Padding"]
      674 CALL                             R33 2 1
      675 SETTABLEKS                       R33 R32 K47 ["UIListLayout"]
      677 GETUPVAL                         R33 7
      678 GETTABLEKS                       R33 R33 K35 ["createElement"]
      680 LOADK                            R34 K36 ["Frame"]
      681 DUPTABLE                         R35 K139 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      682 GETIMPORT                        R36 K38 [UDim2.new]
      684 LOADN                            R37 1
      685 LOADN                            R38 0
      686 LOADN                            R39 0
      687 LOADN                            R40 54
      688 CALL                             R36 4 1
      689 SETTABLEKS                       R36 R35 K39 ["Size"]
      691 DUPTABLE                         R36 K141 [{"FormatLabel"}]
      692 GETUPVAL                         R37 7
      693 GETTABLEKS                       R37 R37 K35 ["createElement"]
      695 LOADK                            R38 K120 ["TextLabel"]
      696 DUPTABLE                         R39 K143 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      697 GETIMPORT                        R40 K38 [UDim2.new]
      699 LOADN                            R41 0
      700 LOADN                            R42 176
      701 LOADN                            R43 0
      702 LOADN                            R44 54
      703 CALL                             R40 4 1
      704 SETTABLEKS                       R40 R39 K39 ["Size"]
      706 GETIMPORT                        R40 K38 [UDim2.new]
      708 LOADN                            R41 0
      709 LOADN                            R42 10
      710 LOADN                            R43 0
      711 LOADN                            R44 0
      712 CALL                             R40 4 1
      713 SETTABLEKS                       R40 R39 K97 ["Position"]
      715 SETTABLEKS                       R20 R39 K99 ["Text"]
      717 GETUPVAL                         R40 13
      718 GETTABLEKS                       R40 R40 K116 ["FONT"]
      720 SETTABLEKS                       R40 R39 K100 ["Font"]
      722 GETUPVAL                         R40 13
      723 GETTABLEKS                       R40 R40 K117 ["FONT_SIZE_MEDIUM"]
      725 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      727 GETTABLEKS                       R40 R18 K128 ["textColor"]
      729 SETTABLEKS                       R40 R39 K98 ["TextColor3"]
      731 GETIMPORT                        R40 K118 [Enum.TextXAlignment.Center]
      733 SETTABLEKS                       R40 R39 K103 ["TextXAlignment"]
      735 GETIMPORT                        R40 K119 [Enum.TextYAlignment.Center]
      737 SETTABLEKS                       R40 R39 K104 ["TextYAlignment"]
      739 CALL                             R37 2 1
      740 SETTABLEKS                       R37 R36 K140 ["FormatLabel"]
      742 CALL                             R33 3 1
      743 SETTABLEKS                       R33 R32 K133 ["Container"]
      745 GETUPVAL                         R33 7
      746 GETTABLEKS                       R33 R33 K35 ["createElement"]
      748 LOADK                            R34 K36 ["Frame"]
      749 DUPTABLE                         R35 K145 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      750 GETIMPORT                        R36 K38 [UDim2.new]
      752 LOADN                            R37 1
      753 LOADN                            R38 0
      754 LOADN                            R39 0
      755 LOADN                            R40 54
      756 CALL                             R36 4 1
      757 SETTABLEKS                       R36 R35 K39 ["Size"]
      759 DUPTABLE                         R36 K147 [{"ProcessLabel"}]
      760 GETUPVAL                         R37 7
      761 GETTABLEKS                       R37 R37 K35 ["createElement"]
      763 LOADK                            R38 K120 ["TextLabel"]
      764 DUPTABLE                         R39 K148 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 2}]
      765 GETIMPORT                        R40 K38 [UDim2.new]
      767 LOADN                            R41 0
      768 LOADN                            R42 176
      769 LOADN                            R43 0
      770 LOADN                            R44 54
      771 CALL                             R40 4 1
      772 SETTABLEKS                       R40 R39 K39 ["Size"]
      774 GETIMPORT                        R40 K38 [UDim2.new]
      776 LOADN                            R41 0
      777 LOADN                            R42 10
      778 LOADN                            R43 0
      779 LOADN                            R44 0
      780 CALL                             R40 4 1
      781 SETTABLEKS                       R40 R39 K97 ["Position"]
      783 LOADK                            R42 K20 ["AssetConfigPreview"]
      784 LOADK                            R43 K149 ["Process"]
      785 NAMECALL                         R40 R3 K27 ["getText"]
      787 CALL                             R40 3 1
      788 SETTABLEKS                       R40 R39 K99 ["Text"]
      790 GETUPVAL                         R40 13
      791 GETTABLEKS                       R40 R40 K116 ["FONT"]
      793 SETTABLEKS                       R40 R39 K100 ["Font"]
      795 GETUPVAL                         R40 13
      796 GETTABLEKS                       R40 R40 K117 ["FONT_SIZE_MEDIUM"]
      798 SETTABLEKS                       R40 R39 K101 ["TextSize"]
      800 GETTABLEKS                       R40 R18 K128 ["textColor"]
      802 SETTABLEKS                       R40 R39 K98 ["TextColor3"]
      804 GETIMPORT                        R40 K118 [Enum.TextXAlignment.Center]
      806 SETTABLEKS                       R40 R39 K103 ["TextXAlignment"]
      808 GETIMPORT                        R40 K119 [Enum.TextYAlignment.Center]
      810 SETTABLEKS                       R40 R39 K104 ["TextYAlignment"]
      812 CALL                             R37 2 1
      813 SETTABLEKS                       R37 R36 K146 ["ProcessLabel"]
      815 CALL                             R33 3 1
      816 SETTABLEKS                       R33 R32 K134 ["Container2"]
      818 CALL                             R29 3 1
      819 SETTABLEKS                       R29 R28 K51 ["Guide"]
      821 MOVE                             R29 R17
      822 JUMPIFNOT                        R29 ; [+50]
      823 GETUPVAL                         R29 7
      824 GETTABLEKS                       R29 R29 K35 ["createElement"]
      826 LOADK                            R30 K36 ["Frame"]
      827 DUPTABLE                         R31 K92 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      828 GETIMPORT                        R32 K38 [UDim2.new]
      830 LOADN                            R33 1
      831 LOADN                            R34 10
      832 LOADN                            R35 1
      833 LOADN                            R36 -200
      834 CALL                             R32 4 1
      835 SETTABLEKS                       R32 R31 K39 ["Size"]
      837 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      839 CALL                             R32 1 1
      840 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      842 DUPTABLE                         R32 K151 [{"SideTabs"}]
      843 MOVE                             R33 R17
      844 JUMPIFNOT                        R33 ; [+25]
      845 GETUPVAL                         R33 7
      846 GETTABLEKS                       R33 R33 K35 ["createElement"]
      848 GETUPVAL                         R34 17
      849 DUPTABLE                         R35 K157 [{["Size"], ["ItemHeight"] = 48, ["Items"], ["CurrentTab"], ["ItemClickCallBack"], ["SelectParentRef"]}]
      850 GETIMPORT                        R36 K38 [UDim2.new]
      852 LOADN                            R37 1
      853 LOADN                            R38 0
      854 LOADN                            R39 1
      855 LOADN                            R40 0
      856 CALL                             R36 4 1
      857 SETTABLEKS                       R36 R35 K39 ["Size"]
      859 SETTABLEKS                       R4 R35 K154 ["Items"]
      861 SETTABLEKS                       R5 R35 K4 ["CurrentTab"]
      863 SETTABLEKS                       R11 R35 K155 ["ItemClickCallBack"]
      865 GETTABLEKS                       R36 R0 K45 ["baseFrameRef"]
      867 SETTABLEKS                       R36 R35 K156 ["SelectParentRef"]
      869 CALL                             R33 2 1
      870 SETTABLEKS                       R33 R32 K150 ["SideTabs"]
      872 CALL                             R29 3 1
      873 SETTABLEKS                       R29 R28 K52 ["TabArea"]
      875 CALL                             R25 3 -1
      876 RETURN                           R25 -1

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
      152 GETIMPORT                        R27 K9 [require]
      154 GETTABLEKS                       R28 R1 K16 ["Src"]
      156 GETTABLEKS                       R28 R28 K43 ["Flags"]
      158 GETTABLEKS                       R28 R28 K44 ["getFFlagEnableUploadingAvatarAnimations"]
      160 CALL                             R27 1 1
      161 GETTABLEKS                       R28 R14 K45 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      163 DUPCLOSURE                       R29 K46 [PROTO_0]
      164 CAPTURE                          VAL R3
      165 SETTABLEKS                       R29 R25 K47 ["init"]
      167 DUPCLOSURE                       R29 K48 [PROTO_1]
      168 CAPTURE                          VAL R16
      169 SETTABLEKS                       R29 R25 K49 ["didMount"]
      171 DUPCLOSURE                       R29 K50 [PROTO_3]
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R28
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R27
      177 CAPTURE                          VAL R26
      178 CAPTURE                          VAL R17
      179 CAPTURE                          VAL R3
      180 CAPTURE                          VAL R11
      181 CAPTURE                          VAL R6
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R14
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R9
      190 SETTABLEKS                       R29 R25 K51 ["render"]
      192 DUPCLOSURE                       R29 K52 [PROTO_4]
      193 DUPCLOSURE                       R30 K53 [PROTO_6]
      194 CAPTURE                          VAL R21
      195 MOVE                             R31 R23
      196 DUPTABLE                         R32 K56 [{"Stylizer", "Localization", "Network"}]
      197 GETTABLEKS                       R33 R22 K54 ["Stylizer"]
      199 SETTABLEKS                       R33 R32 K54 ["Stylizer"]
      201 GETTABLEKS                       R33 R22 K29 ["Localization"]
      203 SETTABLEKS                       R33 R32 K29 ["Localization"]
      205 SETTABLEKS                       R24 R32 K55 ["Network"]
      207 CALL                             R31 1 1
      208 MOVE                             R32 R25
      209 CALL                             R31 1 1
      210 MOVE                             R25 R31
      211 GETTABLEKS                       R31 R4 K57 ["connect"]
      213 MOVE                             R32 R29
      214 MOVE                             R33 R30
      215 CALL                             R31 2 1
      216 MOVE                             R32 R25
      217 CALL                             R31 1 -1
      218 RETURN                           R31 -1
