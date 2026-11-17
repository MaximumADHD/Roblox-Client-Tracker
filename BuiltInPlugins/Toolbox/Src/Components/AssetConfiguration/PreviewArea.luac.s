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
      108 CALL                             R25 0 1
      109 JUMPIFNOT                        R25 ; [+5]
      110 GETUPVAL                         R25 5
      111 GETTABLEKS                       R25 R25 K35 ["isTextDocumentAsset"]
      113 MOVE                             R26 R8
      114 CALL                             R25 1 1
      115 GETUPVAL                         R26 7
      116 GETTABLEKS                       R26 R26 K36 ["createElement"]
      118 LOADK                            R27 K37 ["Frame"]
      119 NEWTABLE                         R28 8 0
      121 GETIMPORT                        R29 K39 [UDim2.new]
      123 LOADN                            R30 0
      124 MOVE                             R31 R9
      125 LOADN                            R32 1
      126 LOADN                            R33 0
      127 CALL                             R29 4 1
      128 SETTABLEKS                       R29 R28 K40 ["Size"]
      130 LOADN                            R29 0
      131 SETTABLEKS                       R29 R28 K41 ["BackgroundTransparency"]
      133 GETTABLEKS                       R29 R18 K42 ["backgroundColor"]
      135 SETTABLEKS                       R29 R28 K43 ["BackgroundColor3"]
      137 LOADN                            R29 0
      138 SETTABLEKS                       R29 R28 K44 ["BorderSizePixel"]
      140 GETUPVAL                         R29 7
      141 GETTABLEKS                       R29 R29 K45 ["Ref"]
      143 GETTABLEKS                       R30 R0 K46 ["baseFrameRef"]
      145 SETTABLE                         R30 R28 R29
      146 SETTABLEKS                       R10 R28 K9 ["LayoutOrder"]
      148 DUPTABLE                         R29 K54 [{"Padding", "UIListLayout", "ImagePicker", "Thumbnail", "AssetThumbnailPreview", "AssetInfo", "Guide", "TabArea"}]
      149 GETUPVAL                         R30 7
      150 GETTABLEKS                       R30 R30 K36 ["createElement"]
      152 LOADK                            R31 K55 ["UIPadding"]
      153 DUPTABLE                         R32 K60 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      154 GETIMPORT                        R33 K62 [UDim.new]
      156 LOADN                            R34 0
      157 LOADN                            R35 24
      158 CALL                             R33 2 1
      159 SETTABLEKS                       R33 R32 K56 ["PaddingTop"]
      161 GETIMPORT                        R33 K62 [UDim.new]
      163 LOADN                            R34 0
      164 LOADN                            R35 24
      165 CALL                             R33 2 1
      166 SETTABLEKS                       R33 R32 K57 ["PaddingBottom"]
      168 GETIMPORT                        R33 K62 [UDim.new]
      170 LOADN                            R34 0
      171 LOADN                            R35 5
      172 CALL                             R33 2 1
      173 SETTABLEKS                       R33 R32 K58 ["PaddingLeft"]
      175 GETIMPORT                        R33 K62 [UDim.new]
      177 LOADN                            R34 0
      178 LOADN                            R35 5
      179 CALL                             R33 2 1
      180 SETTABLEKS                       R33 R32 K59 ["PaddingRight"]
      182 CALL                             R30 2 1
      183 SETTABLEKS                       R30 R29 K47 ["Padding"]
      185 GETUPVAL                         R30 7
      186 GETTABLEKS                       R30 R30 K36 ["createElement"]
      188 LOADK                            R31 K48 ["UIListLayout"]
      189 NEWTABLE                         R32 8 0
      191 GETIMPORT                        R33 K65 [Enum.FillDirection.Vertical]
      193 SETTABLEKS                       R33 R32 K63 ["FillDirection"]
      195 GETIMPORT                        R33 K68 [Enum.HorizontalAlignment.Center]
      197 SETTABLEKS                       R33 R32 K66 ["HorizontalAlignment"]
      199 GETIMPORT                        R33 K71 [Enum.VerticalAlignment.Top]
      201 SETTABLEKS                       R33 R32 K69 ["VerticalAlignment"]
      203 GETIMPORT                        R33 K73 [Enum.SortOrder.LayoutOrder]
      205 SETTABLEKS                       R33 R32 K72 ["SortOrder"]
      207 GETIMPORT                        R33 K62 [UDim.new]
      209 LOADN                            R34 0
      210 LOADN                            R35 20
      211 CALL                             R33 2 1
      212 SETTABLEKS                       R33 R32 K47 ["Padding"]
      214 GETUPVAL                         R33 7
      215 GETTABLEKS                       R33 R33 K45 ["Ref"]
      217 GETTABLEKS                       R34 R0 K74 ["layouterRef"]
      219 SETTABLE                         R34 R32 R33
      220 CALL                             R30 2 1
      221 SETTABLEKS                       R30 R29 K48 ["UIListLayout"]
      223 LOADB                            R30 0
      224 GETUPVAL                         R31 0
      225 GETTABLEKS                       R31 R31 K17 ["PreviewTypes"]
      227 GETTABLEKS                       R31 R31 K49 ["ImagePicker"]
      229 JUMPIFNOTEQ                      R14 R31 ; [+29]
      231 GETUPVAL                         R30 7
      232 GETTABLEKS                       R30 R30 K36 ["createElement"]
      234 GETUPVAL                         R31 8
      235 DUPTABLE                         R32 K76 [{"Size", "AssetId", "ThumbnailStatus", "ChooseThumbnail", "IconFile", "LayoutOrder"}]
      236 GETIMPORT                        R33 K39 [UDim2.new]
      238 LOADN                            R34 0
      239 LOADN                            R35 150
      240 LOADN                            R36 0
      241 LOADN                            R37 150
      242 CALL                             R33 4 1
      243 SETTABLEKS                       R33 R32 K40 ["Size"]
      245 SETTABLEKS                       R7 R32 K6 ["AssetId"]
      247 SETTABLEKS                       R15 R32 K75 ["ThumbnailStatus"]
      249 SETTABLEKS                       R12 R32 K11 ["ChooseThumbnail"]
      251 SETTABLEKS                       R13 R32 K12 ["IconFile"]
      253 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      255 CALL                             R33 1 1
      256 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      258 CALL                             R30 2 1
      259 SETTABLEKS                       R30 R29 K49 ["ImagePicker"]
      261 LOADB                            R30 0
      262 GETUPVAL                         R31 0
      263 GETTABLEKS                       R31 R31 K17 ["PreviewTypes"]
      265 GETTABLEKS                       R31 R31 K18 ["Thumbnail"]
      267 JUMPIFNOTEQ                      R14 R31 ; [+94]
      269 JUMPIFNOT                        R25 ; [+35]
      270 GETUPVAL                         R30 7
      271 GETTABLEKS                       R30 R30 K36 ["createElement"]
      273 GETUPVAL                         R31 9
      274 GETTABLEKS                       R31 R31 K78 ["View"]
      276 DUPTABLE                         R32 K81 [{["tag"] = "stroke-default radius-medium", ["Size"], ["BackgroundColor3"], ["LayoutOrder"]}]
      277 GETIMPORT                        R33 K83 [UDim2.fromOffset]
      279 LOADN                            R34 150
      280 LOADN                            R35 150
      281 CALL                             R33 2 1
      282 SETTABLEKS                       R33 R32 K40 ["Size"]
      284 GETTABLEKS                       R33 R2 K84 ["thumbnailPreview"]
      286 GETTABLEKS                       R33 R33 K85 ["background"]
      288 SETTABLEKS                       R33 R32 K43 ["BackgroundColor3"]
      290 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      292 CALL                             R33 1 1
      293 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      295 DUPTABLE                         R33 K87 [{"TextDocumentIcon"}]
      296 GETUPVAL                         R34 7
      297 GETTABLEKS                       R34 R34 K36 ["createElement"]
      299 GETUPVAL                         R35 10
      300 CALL                             R34 1 1
      301 SETTABLEKS                       R34 R33 K86 ["TextDocumentIcon"]
      303 CALL                             R30 3 1
      304 JUMP                             ; [+57]
      305 JUMPIFEQKNIL                     R22 ; [+30]
      307 GETUPVAL                         R30 7
      308 GETTABLEKS                       R30 R30 K36 ["createElement"]
      310 GETUPVAL                         R31 9
      311 GETTABLEKS                       R31 R31 K88 ["Image"]
      313 DUPTABLE                         R32 K90 [{"Size", "LayoutOrder", "Image", "ScaleType"}]
      314 GETIMPORT                        R33 K39 [UDim2.new]
      316 LOADN                            R34 0
      317 LOADN                            R35 150
      318 LOADN                            R36 0
      319 LOADN                            R37 150
      320 CALL                             R33 4 1
      321 SETTABLEKS                       R33 R32 K40 ["Size"]
      323 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      325 CALL                             R33 1 1
      326 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      328 SETTABLEKS                       R22 R32 K88 ["Image"]
      330 GETIMPORT                        R33 K92 [Enum.ScaleType.Fit]
      332 SETTABLEKS                       R33 R32 K89 ["ScaleType"]
      334 CALL                             R30 2 1
      335 JUMP                             ; [+26]
      336 GETUPVAL                         R30 7
      337 GETTABLEKS                       R30 R30 K36 ["createElement"]
      339 GETUPVAL                         R31 11
      340 DUPTABLE                         R32 K96 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Image"], ["defaultImage"] = ""}]
      341 GETIMPORT                        R33 K39 [UDim2.new]
      343 LOADN                            R34 0
      344 LOADN                            R35 150
      345 LOADN                            R36 0
      346 LOADN                            R37 150
      347 CALL                             R33 4 1
      348 SETTABLEKS                       R33 R32 K40 ["Size"]
      350 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      352 CALL                             R33 1 1
      353 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      355 JUMPIFNOT                        R23 ; [+2]
      356 LOADK                            R33 K97 ["rbxasset://textures/StudioToolbox/Animation.png"]
      357 JUMP                             ; [+1]
      358 MOVE                             R33 R19
      359 SETTABLEKS                       R33 R32 K88 ["Image"]
      361 CALL                             R30 2 1
      362 SETTABLEKS                       R30 R29 K18 ["Thumbnail"]
      364 LOADB                            R30 0
      365 GETUPVAL                         R31 0
      366 GETTABLEKS                       R31 R31 K17 ["PreviewTypes"]
      368 GETTABLEKS                       R31 R31 K98 ["ModelPreview"]
      370 JUMPIFNOTEQ                      R14 R31 ; [+29]
      372 GETUPVAL                         R30 7
      373 GETTABLEKS                       R30 R30 K36 ["createElement"]
      375 GETUPVAL                         R31 12
      376 DUPTABLE                         R32 K102 [{["Size"], ["ShowTitle"] = False, ["LayoutOrder"], ["AssetType"], ["AllowedBundleTypeSettings"], ["selectedColor"]}]
      377 GETIMPORT                        R33 K39 [UDim2.new]
      379 LOADN                            R34 0
      380 LOADN                            R35 150
      381 LOADN                            R36 0
      382 LOADN                            R37 150
      383 CALL                             R33 4 1
      384 SETTABLEKS                       R33 R32 K40 ["Size"]
      386 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      388 CALL                             R33 1 1
      389 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      391 SETTABLEKS                       R8 R32 K31 ["AssetType"]
      393 SETTABLEKS                       R16 R32 K15 ["AllowedBundleTypeSettings"]
      395 GETTABLEKS                       R33 R1 K101 ["selectedColor"]
      397 SETTABLEKS                       R33 R32 K101 ["selectedColor"]
      399 CALL                             R30 2 1
      400 SETTABLEKS                       R30 R29 K50 ["AssetThumbnailPreview"]
      402 LOADB                            R30 0
      403 GETUPVAL                         R31 0
      404 GETTABLEKS                       R31 R31 K17 ["PreviewTypes"]
      406 GETTABLEKS                       R31 R31 K49 ["ImagePicker"]
      408 JUMPIFEQ                         R14 R31 ; [+242]
      410 GETUPVAL                         R30 7
      411 GETTABLEKS                       R30 R30 K36 ["createElement"]
      413 LOADK                            R31 K37 ["Frame"]
      414 DUPTABLE                         R32 K103 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      415 GETIMPORT                        R33 K39 [UDim2.new]
      417 LOADN                            R34 1
      418 LOADN                            R35 0
      419 LOADN                            R36 0
      420 LOADN                            R37 50
      421 CALL                             R33 4 1
      422 SETTABLEKS                       R33 R32 K40 ["Size"]
      424 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      426 CALL                             R33 1 1
      427 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      429 DUPTABLE                         R33 K106 [{"AssetIdLabel", "AssetStatusLabel"}]
      430 JUMPIFNOT                        R24 ; [+81]
      431 LOADB                            R34 0
      432 JUMPIFEQKNIL                     R7 ; [+138]
      434 GETUPVAL                         R34 7
      435 GETTABLEKS                       R34 R34 K36 ["createElement"]
      437 GETUPVAL                         R35 13
      438 DUPTABLE                         R36 K117 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextXAlignment"], ["TextYAlignment"], ["OnClick"]}]
      439 GETIMPORT                        R37 K39 [UDim2.new]
      441 LOADN                            R38 1
      442 LOADN                            R39 0
      443 LOADN                            R40 0
      444 LOADN                            R41 25
      445 CALL                             R37 4 1
      446 SETTABLEKS                       R37 R36 K40 ["Size"]
      448 GETIMPORT                        R37 K119 [Vector2.new]
      450 LOADK                            R38 K120 [0.5]
      451 LOADN                            R39 0
      452 CALL                             R37 2 1
      453 SETTABLEKS                       R37 R36 K107 ["AnchorPoint"]
      455 GETIMPORT                        R37 K39 [UDim2.new]
      457 LOADK                            R38 K120 [0.5]
      458 LOADN                            R39 0
      459 LOADN                            R40 0
      460 LOADN                            R41 0
      461 CALL                             R37 4 1
      462 SETTABLEKS                       R37 R36 K108 ["Position"]
      464 GETTABLEKS                       R37 R2 K121 ["uploadResult"]
      466 GETTABLEKS                       R37 R37 K122 ["link"]
      468 SETTABLEKS                       R37 R36 K109 ["TextColor3"]
      470 LOADK                            R39 K123 ["General"]
      471 LOADK                            R40 K124 ["PreviewAreaAssetID"]
      472 DUPTABLE                         R41 K126 [{"assetId"}]
      473 FASTCALL1                        TOSTRING R7 ; [+3]
      474 MOVE                             R43 R7
      475 GETIMPORT                        R42 K26 [tostring]
      477 CALL                             R42 1 1
      478 SETTABLEKS                       R42 R41 K125 ["assetId"]
      480 NAMECALL                         R37 R3 K27 ["getText"]
      482 CALL                             R37 4 1
      483 SETTABLEKS                       R37 R36 K110 ["Text"]
      485 GETUPVAL                         R37 14
      486 GETTABLEKS                       R37 R37 K127 ["FONT"]
      488 SETTABLEKS                       R37 R36 K111 ["Font"]
      490 GETUPVAL                         R37 14
      491 GETTABLEKS                       R37 R37 K128 ["FONT_SIZE_MEDIUM"]
      493 SETTABLEKS                       R37 R36 K112 ["TextSize"]
      495 GETIMPORT                        R37 K129 [Enum.TextXAlignment.Center]
      497 SETTABLEKS                       R37 R36 K114 ["TextXAlignment"]
      499 GETIMPORT                        R37 K130 [Enum.TextYAlignment.Center]
      501 SETTABLEKS                       R37 R36 K115 ["TextYAlignment"]
      503 NEWCLOSURE                       R37 P0
      504 CAPTURE                          VAL R7
      505 CAPTURE                          UPVAL U1
      506 CAPTURE                          UPVAL U15
      507 CAPTURE                          UPVAL U16
      508 SETTABLEKS                       R37 R36 K116 ["OnClick"]
      510 CALL                             R34 2 1
      511 JUMP                             ; [+59]
      512 LOADB                            R34 0
      513 JUMPIFEQKNIL                     R7 ; [+57]
      515 GETUPVAL                         R34 7
      516 GETTABLEKS                       R34 R34 K36 ["createElement"]
      518 LOADK                            R35 K131 ["TextLabel"]
      519 DUPTABLE                         R36 K133 [{["Size"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      520 GETIMPORT                        R37 K39 [UDim2.new]
      522 LOADN                            R38 1
      523 LOADN                            R39 0
      524 LOADN                            R40 0
      525 LOADN                            R41 25
      526 CALL                             R37 4 1
      527 SETTABLEKS                       R37 R36 K40 ["Size"]
      529 GETTABLEKS                       R37 R18 K101 ["selectedColor"]
      531 SETTABLEKS                       R37 R36 K109 ["TextColor3"]
      533 LOADK                            R39 K123 ["General"]
      534 LOADK                            R40 K124 ["PreviewAreaAssetID"]
      535 DUPTABLE                         R41 K126 [{"assetId"}]
      536 FASTCALL1                        TOSTRING R7 ; [+3]
      537 MOVE                             R43 R7
      538 GETIMPORT                        R42 K26 [tostring]
      540 CALL                             R42 1 1
      541 SETTABLEKS                       R42 R41 K125 ["assetId"]
      543 NAMECALL                         R37 R3 K27 ["getText"]
      545 CALL                             R37 4 1
      546 SETTABLEKS                       R37 R36 K110 ["Text"]
      548 GETUPVAL                         R37 14
      549 GETTABLEKS                       R37 R37 K127 ["FONT"]
      551 SETTABLEKS                       R37 R36 K111 ["Font"]
      553 GETUPVAL                         R37 14
      554 GETTABLEKS                       R37 R37 K128 ["FONT_SIZE_MEDIUM"]
      556 SETTABLEKS                       R37 R36 K112 ["TextSize"]
      558 GETIMPORT                        R37 K135 [Enum.TextTruncate.AtEnd]
      560 SETTABLEKS                       R37 R36 K132 ["TextTruncate"]
      562 GETIMPORT                        R37 K129 [Enum.TextXAlignment.Center]
      564 SETTABLEKS                       R37 R36 K114 ["TextXAlignment"]
      566 GETIMPORT                        R37 K130 [Enum.TextYAlignment.Center]
      568 SETTABLEKS                       R37 R36 K115 ["TextYAlignment"]
      570 CALL                             R34 2 1
      571 SETTABLEKS                       R34 R33 K104 ["AssetIdLabel"]
      573 LOADB                            R34 0
      574 JUMPIFEQKNIL                     R6 ; [+73]
      576 LOADB                            R34 0
      577 GETUPVAL                         R35 0
      578 GETTABLEKS                       R35 R35 K136 ["ASSET_STATUS"]
      580 GETTABLEKS                       R35 R35 K137 ["Unknown"]
      582 JUMPIFEQ                         R35 R6 ; [+65]
      584 GETUPVAL                         R34 7
      585 GETTABLEKS                       R34 R34 K36 ["createElement"]
      587 LOADK                            R35 K131 ["TextLabel"]
      588 DUPTABLE                         R36 K138 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Text"], ["Font"], ["TextSize"], ["TextWrapped"] = False, ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"]}]
      589 GETIMPORT                        R37 K39 [UDim2.new]
      591 LOADN                            R38 1
      592 LOADN                            R39 0
      593 LOADN                            R40 0
      594 LOADN                            R41 25
      595 CALL                             R37 4 1
      596 SETTABLEKS                       R37 R36 K40 ["Size"]
      598 GETIMPORT                        R37 K39 [UDim2.new]
      600 LOADN                            R38 0
      601 LOADN                            R39 0
      602 LOADN                            R40 0
      603 LOADN                            R41 25
      604 CALL                             R37 4 1
      605 SETTABLEKS                       R37 R36 K108 ["Position"]
      607 GETTABLEKS                       R37 R18 K139 ["textColor"]
      609 SETTABLEKS                       R37 R36 K109 ["TextColor3"]
      611 LOADK                            R39 K123 ["General"]
      612 LOADK                            R40 K140 ["PreviewAreaStatus"]
      613 DUPTABLE                         R41 K142 [{"assetStatus"}]
      614 GETUPVAL                         R43 17
      615 MOVE                             R44 R3
      616 CALL                             R43 1 1
      617 GETTABLE                         R42 R43 R6
      618 SETTABLEKS                       R42 R41 K141 ["assetStatus"]
      620 NAMECALL                         R37 R3 K27 ["getText"]
      622 CALL                             R37 4 1
      623 SETTABLEKS                       R37 R36 K110 ["Text"]
      625 GETUPVAL                         R37 14
      626 GETTABLEKS                       R37 R37 K127 ["FONT"]
      628 SETTABLEKS                       R37 R36 K111 ["Font"]
      630 GETUPVAL                         R37 14
      631 GETTABLEKS                       R37 R37 K128 ["FONT_SIZE_MEDIUM"]
      633 SETTABLEKS                       R37 R36 K112 ["TextSize"]
      635 GETIMPORT                        R37 K135 [Enum.TextTruncate.AtEnd]
      637 SETTABLEKS                       R37 R36 K132 ["TextTruncate"]
      639 GETIMPORT                        R37 K129 [Enum.TextXAlignment.Center]
      641 SETTABLEKS                       R37 R36 K114 ["TextXAlignment"]
      643 GETIMPORT                        R37 K143 [Enum.TextYAlignment.Top]
      645 SETTABLEKS                       R37 R36 K115 ["TextYAlignment"]
      647 CALL                             R34 2 1
      648 SETTABLEKS                       R34 R33 K105 ["AssetStatusLabel"]
      650 CALL                             R30 3 1
      651 SETTABLEKS                       R30 R29 K51 ["AssetInfo"]
      653 LOADB                            R30 0
      654 GETUPVAL                         R31 0
      655 GETTABLEKS                       R31 R31 K17 ["PreviewTypes"]
      657 GETTABLEKS                       R31 R31 K49 ["ImagePicker"]
      659 JUMPIFNOTEQ                      R14 R31 ; [+194]
      661 GETUPVAL                         R30 7
      662 GETTABLEKS                       R30 R30 K36 ["createElement"]
      664 LOADK                            R31 K37 ["Frame"]
      665 DUPTABLE                         R32 K103 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      666 GETIMPORT                        R33 K39 [UDim2.new]
      668 LOADN                            R34 0
      669 LOADN                            R35 192
      670 LOADN                            R36 0
      671 LOADN                            R37 120
      672 CALL                             R33 4 1
      673 SETTABLEKS                       R33 R32 K40 ["Size"]
      675 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      677 CALL                             R33 1 1
      678 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      680 DUPTABLE                         R33 K146 [{"UIListLayout", "Container", "Container2"}]
      681 GETUPVAL                         R34 7
      682 GETTABLEKS                       R34 R34 K36 ["createElement"]
      684 LOADK                            R35 K48 ["UIListLayout"]
      685 DUPTABLE                         R36 K147 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      686 GETIMPORT                        R37 K65 [Enum.FillDirection.Vertical]
      688 SETTABLEKS                       R37 R36 K63 ["FillDirection"]
      690 GETIMPORT                        R37 K149 [Enum.HorizontalAlignment.Left]
      692 SETTABLEKS                       R37 R36 K66 ["HorizontalAlignment"]
      694 GETIMPORT                        R37 K71 [Enum.VerticalAlignment.Top]
      696 SETTABLEKS                       R37 R36 K69 ["VerticalAlignment"]
      698 GETIMPORT                        R37 K73 [Enum.SortOrder.LayoutOrder]
      700 SETTABLEKS                       R37 R36 K72 ["SortOrder"]
      702 GETIMPORT                        R37 K62 [UDim.new]
      704 LOADN                            R38 0
      705 LOADN                            R39 8
      706 CALL                             R37 2 1
      707 SETTABLEKS                       R37 R36 K47 ["Padding"]
      709 CALL                             R34 2 1
      710 SETTABLEKS                       R34 R33 K48 ["UIListLayout"]
      712 GETUPVAL                         R34 7
      713 GETTABLEKS                       R34 R34 K36 ["createElement"]
      715 LOADK                            R35 K37 ["Frame"]
      716 DUPTABLE                         R36 K150 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      717 GETIMPORT                        R37 K39 [UDim2.new]
      719 LOADN                            R38 1
      720 LOADN                            R39 0
      721 LOADN                            R40 0
      722 LOADN                            R41 54
      723 CALL                             R37 4 1
      724 SETTABLEKS                       R37 R36 K40 ["Size"]
      726 DUPTABLE                         R37 K152 [{"FormatLabel"}]
      727 GETUPVAL                         R38 7
      728 GETTABLEKS                       R38 R38 K36 ["createElement"]
      730 LOADK                            R39 K131 ["TextLabel"]
      731 DUPTABLE                         R40 K154 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      732 GETIMPORT                        R41 K39 [UDim2.new]
      734 LOADN                            R42 0
      735 LOADN                            R43 176
      736 LOADN                            R44 0
      737 LOADN                            R45 54
      738 CALL                             R41 4 1
      739 SETTABLEKS                       R41 R40 K40 ["Size"]
      741 GETIMPORT                        R41 K39 [UDim2.new]
      743 LOADN                            R42 0
      744 LOADN                            R43 10
      745 LOADN                            R44 0
      746 LOADN                            R45 0
      747 CALL                             R41 4 1
      748 SETTABLEKS                       R41 R40 K108 ["Position"]
      750 SETTABLEKS                       R20 R40 K110 ["Text"]
      752 GETUPVAL                         R41 14
      753 GETTABLEKS                       R41 R41 K127 ["FONT"]
      755 SETTABLEKS                       R41 R40 K111 ["Font"]
      757 GETUPVAL                         R41 14
      758 GETTABLEKS                       R41 R41 K128 ["FONT_SIZE_MEDIUM"]
      760 SETTABLEKS                       R41 R40 K112 ["TextSize"]
      762 GETTABLEKS                       R41 R18 K139 ["textColor"]
      764 SETTABLEKS                       R41 R40 K109 ["TextColor3"]
      766 GETIMPORT                        R41 K129 [Enum.TextXAlignment.Center]
      768 SETTABLEKS                       R41 R40 K114 ["TextXAlignment"]
      770 GETIMPORT                        R41 K130 [Enum.TextYAlignment.Center]
      772 SETTABLEKS                       R41 R40 K115 ["TextYAlignment"]
      774 CALL                             R38 2 1
      775 SETTABLEKS                       R38 R37 K151 ["FormatLabel"]
      777 CALL                             R34 3 1
      778 SETTABLEKS                       R34 R33 K144 ["Container"]
      780 GETUPVAL                         R34 7
      781 GETTABLEKS                       R34 R34 K36 ["createElement"]
      783 LOADK                            R35 K37 ["Frame"]
      784 DUPTABLE                         R36 K156 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      785 GETIMPORT                        R37 K39 [UDim2.new]
      787 LOADN                            R38 1
      788 LOADN                            R39 0
      789 LOADN                            R40 0
      790 LOADN                            R41 54
      791 CALL                             R37 4 1
      792 SETTABLEKS                       R37 R36 K40 ["Size"]
      794 DUPTABLE                         R37 K158 [{"ProcessLabel"}]
      795 GETUPVAL                         R38 7
      796 GETTABLEKS                       R38 R38 K36 ["createElement"]
      798 LOADK                            R39 K131 ["TextLabel"]
      799 DUPTABLE                         R40 K159 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 2}]
      800 GETIMPORT                        R41 K39 [UDim2.new]
      802 LOADN                            R42 0
      803 LOADN                            R43 176
      804 LOADN                            R44 0
      805 LOADN                            R45 54
      806 CALL                             R41 4 1
      807 SETTABLEKS                       R41 R40 K40 ["Size"]
      809 GETIMPORT                        R41 K39 [UDim2.new]
      811 LOADN                            R42 0
      812 LOADN                            R43 10
      813 LOADN                            R44 0
      814 LOADN                            R45 0
      815 CALL                             R41 4 1
      816 SETTABLEKS                       R41 R40 K108 ["Position"]
      818 LOADK                            R43 K20 ["AssetConfigPreview"]
      819 LOADK                            R44 K160 ["Process"]
      820 NAMECALL                         R41 R3 K27 ["getText"]
      822 CALL                             R41 3 1
      823 SETTABLEKS                       R41 R40 K110 ["Text"]
      825 GETUPVAL                         R41 14
      826 GETTABLEKS                       R41 R41 K127 ["FONT"]
      828 SETTABLEKS                       R41 R40 K111 ["Font"]
      830 GETUPVAL                         R41 14
      831 GETTABLEKS                       R41 R41 K128 ["FONT_SIZE_MEDIUM"]
      833 SETTABLEKS                       R41 R40 K112 ["TextSize"]
      835 GETTABLEKS                       R41 R18 K139 ["textColor"]
      837 SETTABLEKS                       R41 R40 K109 ["TextColor3"]
      839 GETIMPORT                        R41 K129 [Enum.TextXAlignment.Center]
      841 SETTABLEKS                       R41 R40 K114 ["TextXAlignment"]
      843 GETIMPORT                        R41 K130 [Enum.TextYAlignment.Center]
      845 SETTABLEKS                       R41 R40 K115 ["TextYAlignment"]
      847 CALL                             R38 2 1
      848 SETTABLEKS                       R38 R37 K157 ["ProcessLabel"]
      850 CALL                             R34 3 1
      851 SETTABLEKS                       R34 R33 K145 ["Container2"]
      853 CALL                             R30 3 1
      854 SETTABLEKS                       R30 R29 K52 ["Guide"]
      856 MOVE                             R30 R17
      857 JUMPIFNOT                        R30 ; [+50]
      858 GETUPVAL                         R30 7
      859 GETTABLEKS                       R30 R30 K36 ["createElement"]
      861 LOADK                            R31 K37 ["Frame"]
      862 DUPTABLE                         R32 K103 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      863 GETIMPORT                        R33 K39 [UDim2.new]
      865 LOADN                            R34 1
      866 LOADN                            R35 10
      867 LOADN                            R36 1
      868 LOADN                            R37 -200
      869 CALL                             R33 4 1
      870 SETTABLEKS                       R33 R32 K40 ["Size"]
      872 NAMECALL                         R33 R21 K77 ["getNextOrder"]
      874 CALL                             R33 1 1
      875 SETTABLEKS                       R33 R32 K9 ["LayoutOrder"]
      877 DUPTABLE                         R33 K162 [{"SideTabs"}]
      878 MOVE                             R34 R17
      879 JUMPIFNOT                        R34 ; [+25]
      880 GETUPVAL                         R34 7
      881 GETTABLEKS                       R34 R34 K36 ["createElement"]
      883 GETUPVAL                         R35 18
      884 DUPTABLE                         R36 K168 [{["Size"], ["ItemHeight"] = 48, ["Items"], ["CurrentTab"], ["ItemClickCallBack"], ["SelectParentRef"]}]
      885 GETIMPORT                        R37 K39 [UDim2.new]
      887 LOADN                            R38 1
      888 LOADN                            R39 0
      889 LOADN                            R40 1
      890 LOADN                            R41 0
      891 CALL                             R37 4 1
      892 SETTABLEKS                       R37 R36 K40 ["Size"]
      894 SETTABLEKS                       R4 R36 K165 ["Items"]
      896 SETTABLEKS                       R5 R36 K4 ["CurrentTab"]
      898 SETTABLEKS                       R11 R36 K166 ["ItemClickCallBack"]
      900 GETTABLEKS                       R37 R0 K46 ["baseFrameRef"]
      902 SETTABLEKS                       R37 R36 K167 ["SelectParentRef"]
      904 CALL                             R34 2 1
      905 SETTABLEKS                       R34 R33 K161 ["SideTabs"]
      907 CALL                             R30 3 1
      908 SETTABLEKS                       R30 R29 K53 ["TabArea"]
      910 CALL                             R26 3 -1
      911 RETURN                           R26 -1

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
       64 GETIMPORT                        R12 K9 [require]
       66 GETTABLEKS                       R13 R8 K22 ["TextDocumentIcon"]
       68 CALL                             R12 1 1
       69 GETTABLEKS                       R13 R1 K16 ["Src"]
       71 GETTABLEKS                       R13 R13 K23 ["Util"]
       73 GETIMPORT                        R14 K9 [require]
       75 GETTABLEKS                       R15 R13 K24 ["LayoutOrderIterator"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K9 [require]
       80 GETTABLEKS                       R16 R13 K25 ["Constants"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K9 [require]
       85 GETTABLEKS                       R17 R13 K26 ["Urls"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K9 [require]
       90 GETTABLEKS                       R18 R13 K27 ["AssetConfigConstants"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K9 [require]
       95 GETTABLEKS                       R19 R13 K28 ["AssetConfigUtil"]
       97 CALL                             R18 1 1
       98 GETIMPORT                        R19 K9 [require]
      100 GETTABLEKS                       R20 R13 K29 ["ToolboxUtilities"]
      102 CALL                             R19 1 1
      103 GETIMPORT                        R20 K9 [require]
      105 GETTABLEKS                       R21 R1 K16 ["Src"]
      107 GETTABLEKS                       R21 R21 K30 ["Localization"]
      109 GETTABLEKS                       R21 R21 K31 ["getLocalizedAssetStatusMap"]
      111 CALL                             R20 1 1
      112 GETIMPORT                        R21 K9 [require]
      114 GETTABLEKS                       R22 R1 K16 ["Src"]
      116 GETTABLEKS                       R22 R22 K17 ["Components"]
      118 GETTABLEKS                       R22 R22 K32 ["ImageWithDefault"]
      120 CALL                             R21 1 1
      121 GETIMPORT                        R22 K9 [require]
      123 GETTABLEKS                       R23 R1 K16 ["Src"]
      125 GETTABLEKS                       R23 R23 K33 ["Flags"]
      127 GETTABLEKS                       R23 R23 K34 ["getEngineFeatureStudioTextDocumentUploadAsset"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K9 [require]
      132 GETTABLEKS                       R24 R1 K16 ["Src"]
      134 GETTABLEKS                       R24 R24 K35 ["Networking"]
      136 GETTABLEKS                       R24 R24 K36 ["Requests"]
      138 GETTABLEKS                       R24 R24 K37 ["GetAssetConfigThumbnailStatusRequest"]
      140 CALL                             R23 1 1
      141 GETTABLEKS                       R24 R5 K38 ["ContextServices"]
      143 GETTABLEKS                       R25 R24 K39 ["withContext"]
      145 GETIMPORT                        R26 K9 [require]
      147 GETTABLEKS                       R27 R1 K16 ["Src"]
      149 GETTABLEKS                       R27 R27 K38 ["ContextServices"]
      151 GETTABLEKS                       R27 R27 K40 ["NetworkContext"]
      153 CALL                             R26 1 1
      154 GETTABLEKS                       R27 R3 K41 ["PureComponent"]
      156 LOADK                            R29 K42 ["PreviewArea"]
      157 NAMECALL                         R27 R27 K43 ["extend"]
      159 CALL                             R27 2 1
      160 GETIMPORT                        R28 K1 [game]
      162 LOADK                            R30 K44 ["UseDefaultThumbnailForAnimation"]
      163 NAMECALL                         R28 R28 K45 ["GetFastFlag"]
      165 CALL                             R28 2 1
      166 GETTABLEKS                       R29 R15 K46 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      168 DUPCLOSURE                       R30 K47 [PROTO_0]
      169 CAPTURE                          VAL R3
      170 SETTABLEKS                       R30 R27 K48 ["init"]
      172 DUPCLOSURE                       R30 K49 [PROTO_1]
      173 CAPTURE                          VAL R17
      174 SETTABLEKS                       R30 R27 K50 ["didMount"]
      176 DUPCLOSURE                       R30 K51 [PROTO_3]
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R29
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R28
      182 CAPTURE                          VAL R18
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R12
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R9
      196 SETTABLEKS                       R30 R27 K52 ["render"]
      198 DUPCLOSURE                       R30 K53 [PROTO_4]
      199 DUPCLOSURE                       R31 K54 [PROTO_6]
      200 CAPTURE                          VAL R23
      201 MOVE                             R32 R25
      202 DUPTABLE                         R33 K57 [{"Stylizer", "Localization", "Network"}]
      203 GETTABLEKS                       R34 R24 K55 ["Stylizer"]
      205 SETTABLEKS                       R34 R33 K55 ["Stylizer"]
      207 GETTABLEKS                       R34 R24 K30 ["Localization"]
      209 SETTABLEKS                       R34 R33 K30 ["Localization"]
      211 SETTABLEKS                       R26 R33 K56 ["Network"]
      213 CALL                             R32 1 1
      214 MOVE                             R33 R27
      215 CALL                             R32 1 1
      216 MOVE                             R27 R32
      217 GETTABLEKS                       R32 R4 K58 ["connect"]
      219 MOVE                             R33 R30
      220 MOVE                             R34 R31
      221 CALL                             R32 2 1
      222 MOVE                             R33 R27
      223 CALL                             R32 1 -1
      224 RETURN                           R32 -1
