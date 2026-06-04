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
      265 JUMPIFNOTEQ                      R14 R30 ; [+67]
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
      300 JUMP                             ; [+32]
      301 GETUPVAL                         R29 7
      302 GETTABLEKS                       R29 R29 K35 ["createElement"]
      304 GETUPVAL                         R30 10
      305 DUPTABLE                         R31 K83 [{"Size", "BackgroundTransparency", "LayoutOrder", "Image", "defaultImage"}]
      306 GETIMPORT                        R32 K38 [UDim2.new]
      308 LOADN                            R33 0
      309 LOADN                            R34 150
      310 LOADN                            R35 0
      311 LOADN                            R36 150
      312 CALL                             R32 4 1
      313 SETTABLEKS                       R32 R31 K39 ["Size"]
      315 LOADN                            R32 1
      316 SETTABLEKS                       R32 R31 K40 ["BackgroundTransparency"]
      318 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      320 CALL                             R32 1 1
      321 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      323 JUMPIFNOT                        R23 ; [+2]
      324 LOADK                            R32 K84 ["rbxasset://textures/StudioToolbox/Animation.png"]
      325 JUMP                             ; [+1]
      326 MOVE                             R32 R19
      327 SETTABLEKS                       R32 R31 K77 ["Image"]
      329 LOADK                            R32 K85 [""]
      330 SETTABLEKS                       R32 R31 K82 ["defaultImage"]
      332 CALL                             R29 2 1
      333 SETTABLEKS                       R29 R28 K18 ["Thumbnail"]
      335 LOADB                            R29 0
      336 GETUPVAL                         R30 0
      337 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      339 GETTABLEKS                       R30 R30 K86 ["ModelPreview"]
      341 JUMPIFNOTEQ                      R14 R30 ; [+37]
      343 GETUPVAL                         R29 7
      344 GETTABLEKS                       R29 R29 K35 ["createElement"]
      346 GETUPVAL                         R30 11
      347 DUPTABLE                         R31 K89 [{"Size", "ShowTitle", "LayoutOrder", "AssetType", "AllowedBundleTypeSettings", "selectedColor"}]
      348 GETIMPORT                        R32 K38 [UDim2.new]
      350 LOADN                            R33 0
      351 LOADN                            R34 150
      352 LOADN                            R35 0
      353 LOADN                            R36 150
      354 CALL                             R32 4 1
      355 SETTABLEKS                       R32 R31 K39 ["Size"]
      357 LOADB                            R32 0
      358 SETTABLEKS                       R32 R31 K87 ["ShowTitle"]
      360 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      362 CALL                             R32 1 1
      363 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      365 SETTABLEKS                       R8 R31 K31 ["AssetType"]
      367 SETTABLEKS                       R16 R31 K15 ["AllowedBundleTypeSettings"]
      369 GETUPVAL                         R33 12
      370 CALL                             R33 0 1
      371 JUMPIFNOT                        R33 ; [+3]
      372 GETTABLEKS                       R32 R1 K88 ["selectedColor"]
      374 JUMP                             ; [+1]
      375 LOADNIL                          R32
      376 SETTABLEKS                       R32 R31 K88 ["selectedColor"]
      378 CALL                             R29 2 1
      379 SETTABLEKS                       R29 R28 K49 ["AssetThumbnailPreview"]
      381 LOADB                            R29 0
      382 GETUPVAL                         R30 0
      383 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      385 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      387 JUMPIFEQ                         R14 R30 ; [+263]
      389 GETUPVAL                         R29 7
      390 GETTABLEKS                       R29 R29 K35 ["createElement"]
      392 LOADK                            R30 K36 ["Frame"]
      393 DUPTABLE                         R31 K90 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      394 GETIMPORT                        R32 K38 [UDim2.new]
      396 LOADN                            R33 1
      397 LOADN                            R34 0
      398 LOADN                            R35 0
      399 LOADN                            R36 50
      400 CALL                             R32 4 1
      401 SETTABLEKS                       R32 R31 K39 ["Size"]
      403 LOADN                            R32 1
      404 SETTABLEKS                       R32 R31 K40 ["BackgroundTransparency"]
      406 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      408 CALL                             R32 1 1
      409 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      411 DUPTABLE                         R32 K93 [{"AssetIdLabel", "AssetStatusLabel"}]
      412 JUMPIFNOT                        R24 ; [+87]
      413 LOADB                            R33 0
      414 JUMPIFEQKNIL                     R7 ; [+150]
      416 GETUPVAL                         R33 7
      417 GETTABLEKS                       R33 R33 K35 ["createElement"]
      419 GETUPVAL                         R34 13
      420 DUPTABLE                         R35 K104 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextWrapped", "TextXAlignment", "TextYAlignment", "OnClick"}]
      421 GETIMPORT                        R36 K38 [UDim2.new]
      423 LOADN                            R37 1
      424 LOADN                            R38 0
      425 LOADN                            R39 0
      426 LOADN                            R40 25
      427 CALL                             R36 4 1
      428 SETTABLEKS                       R36 R35 K39 ["Size"]
      430 GETIMPORT                        R36 K106 [Vector2.new]
      432 LOADK                            R37 K107 [0.5]
      433 LOADN                            R38 0
      434 CALL                             R36 2 1
      435 SETTABLEKS                       R36 R35 K94 ["AnchorPoint"]
      437 GETIMPORT                        R36 K38 [UDim2.new]
      439 LOADK                            R37 K107 [0.5]
      440 LOADN                            R38 0
      441 LOADN                            R39 0
      442 LOADN                            R40 0
      443 CALL                             R36 4 1
      444 SETTABLEKS                       R36 R35 K95 ["Position"]
      446 LOADN                            R36 1
      447 SETTABLEKS                       R36 R35 K40 ["BackgroundTransparency"]
      449 GETTABLEKS                       R36 R2 K108 ["uploadResult"]
      451 GETTABLEKS                       R36 R36 K109 ["link"]
      453 SETTABLEKS                       R36 R35 K96 ["TextColor3"]
      455 LOADK                            R38 K110 ["General"]
      456 LOADK                            R39 K111 ["PreviewAreaAssetID"]
      457 DUPTABLE                         R40 K113 [{"assetId"}]
      458 FASTCALL1                        TOSTRING R7 ; [+3]
      459 MOVE                             R42 R7
      460 GETIMPORT                        R41 K26 [tostring]
      462 CALL                             R41 1 1
      463 SETTABLEKS                       R41 R40 K112 ["assetId"]
      465 NAMECALL                         R36 R3 K27 ["getText"]
      467 CALL                             R36 4 1
      468 SETTABLEKS                       R36 R35 K97 ["Text"]
      470 GETUPVAL                         R36 14
      471 GETTABLEKS                       R36 R36 K114 ["FONT"]
      473 SETTABLEKS                       R36 R35 K98 ["Font"]
      475 GETUPVAL                         R36 14
      476 GETTABLEKS                       R36 R36 K115 ["FONT_SIZE_MEDIUM"]
      478 SETTABLEKS                       R36 R35 K99 ["TextSize"]
      480 LOADB                            R36 0
      481 SETTABLEKS                       R36 R35 K100 ["TextWrapped"]
      483 GETIMPORT                        R36 K116 [Enum.TextXAlignment.Center]
      485 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
      487 GETIMPORT                        R36 K117 [Enum.TextYAlignment.Center]
      489 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
      491 NEWCLOSURE                       R36 P0
      492 CAPTURE                          VAL R7
      493 CAPTURE                          UPVAL U1
      494 CAPTURE                          UPVAL U15
      495 CAPTURE                          UPVAL U16
      496 SETTABLEKS                       R36 R35 K103 ["OnClick"]
      498 CALL                             R33 2 1
      499 JUMP                             ; [+65]
      500 LOADB                            R33 0
      501 JUMPIFEQKNIL                     R7 ; [+63]
      503 GETUPVAL                         R33 7
      504 GETTABLEKS                       R33 R33 K35 ["createElement"]
      506 LOADK                            R34 K118 ["TextLabel"]
      507 DUPTABLE                         R35 K120 [{"Size", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      508 GETIMPORT                        R36 K38 [UDim2.new]
      510 LOADN                            R37 1
      511 LOADN                            R38 0
      512 LOADN                            R39 0
      513 LOADN                            R40 25
      514 CALL                             R36 4 1
      515 SETTABLEKS                       R36 R35 K39 ["Size"]
      517 LOADN                            R36 1
      518 SETTABLEKS                       R36 R35 K40 ["BackgroundTransparency"]
      520 GETTABLEKS                       R36 R18 K88 ["selectedColor"]
      522 SETTABLEKS                       R36 R35 K96 ["TextColor3"]
      524 LOADK                            R38 K110 ["General"]
      525 LOADK                            R39 K111 ["PreviewAreaAssetID"]
      526 DUPTABLE                         R40 K113 [{"assetId"}]
      527 FASTCALL1                        TOSTRING R7 ; [+3]
      528 MOVE                             R42 R7
      529 GETIMPORT                        R41 K26 [tostring]
      531 CALL                             R41 1 1
      532 SETTABLEKS                       R41 R40 K112 ["assetId"]
      534 NAMECALL                         R36 R3 K27 ["getText"]
      536 CALL                             R36 4 1
      537 SETTABLEKS                       R36 R35 K97 ["Text"]
      539 GETUPVAL                         R36 14
      540 GETTABLEKS                       R36 R36 K114 ["FONT"]
      542 SETTABLEKS                       R36 R35 K98 ["Font"]
      544 GETUPVAL                         R36 14
      545 GETTABLEKS                       R36 R36 K115 ["FONT_SIZE_MEDIUM"]
      547 SETTABLEKS                       R36 R35 K99 ["TextSize"]
      549 LOADB                            R36 0
      550 SETTABLEKS                       R36 R35 K100 ["TextWrapped"]
      552 GETIMPORT                        R36 K122 [Enum.TextTruncate.AtEnd]
      554 SETTABLEKS                       R36 R35 K119 ["TextTruncate"]
      556 GETIMPORT                        R36 K116 [Enum.TextXAlignment.Center]
      558 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
      560 GETIMPORT                        R36 K117 [Enum.TextYAlignment.Center]
      562 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
      564 CALL                             R33 2 1
      565 SETTABLEKS                       R33 R32 K91 ["AssetIdLabel"]
      567 LOADB                            R33 0
      568 JUMPIFEQKNIL                     R6 ; [+79]
      570 LOADB                            R33 0
      571 GETUPVAL                         R34 0
      572 GETTABLEKS                       R34 R34 K123 ["ASSET_STATUS"]
      574 GETTABLEKS                       R34 R34 K124 ["Unknown"]
      576 JUMPIFEQ                         R34 R6 ; [+71]
      578 GETUPVAL                         R33 7
      579 GETTABLEKS                       R33 R33 K35 ["createElement"]
      581 LOADK                            R34 K118 ["TextLabel"]
      582 DUPTABLE                         R35 K125 [{"Size", "Position", "BackgroundTransparency", "TextColor3", "Text", "Font", "TextSize", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment"}]
      583 GETIMPORT                        R36 K38 [UDim2.new]
      585 LOADN                            R37 1
      586 LOADN                            R38 0
      587 LOADN                            R39 0
      588 LOADN                            R40 25
      589 CALL                             R36 4 1
      590 SETTABLEKS                       R36 R35 K39 ["Size"]
      592 GETIMPORT                        R36 K38 [UDim2.new]
      594 LOADN                            R37 0
      595 LOADN                            R38 0
      596 LOADN                            R39 0
      597 LOADN                            R40 25
      598 CALL                             R36 4 1
      599 SETTABLEKS                       R36 R35 K95 ["Position"]
      601 LOADN                            R36 1
      602 SETTABLEKS                       R36 R35 K40 ["BackgroundTransparency"]
      604 GETTABLEKS                       R36 R18 K126 ["textColor"]
      606 SETTABLEKS                       R36 R35 K96 ["TextColor3"]
      608 LOADK                            R38 K110 ["General"]
      609 LOADK                            R39 K127 ["PreviewAreaStatus"]
      610 DUPTABLE                         R40 K129 [{"assetStatus"}]
      611 GETUPVAL                         R42 17
      612 MOVE                             R43 R3
      613 CALL                             R42 1 1
      614 GETTABLE                         R41 R42 R6
      615 SETTABLEKS                       R41 R40 K128 ["assetStatus"]
      617 NAMECALL                         R36 R3 K27 ["getText"]
      619 CALL                             R36 4 1
      620 SETTABLEKS                       R36 R35 K97 ["Text"]
      622 GETUPVAL                         R36 14
      623 GETTABLEKS                       R36 R36 K114 ["FONT"]
      625 SETTABLEKS                       R36 R35 K98 ["Font"]
      627 GETUPVAL                         R36 14
      628 GETTABLEKS                       R36 R36 K115 ["FONT_SIZE_MEDIUM"]
      630 SETTABLEKS                       R36 R35 K99 ["TextSize"]
      632 LOADB                            R36 0
      633 SETTABLEKS                       R36 R35 K100 ["TextWrapped"]
      635 GETIMPORT                        R36 K122 [Enum.TextTruncate.AtEnd]
      637 SETTABLEKS                       R36 R35 K119 ["TextTruncate"]
      639 GETIMPORT                        R36 K116 [Enum.TextXAlignment.Center]
      641 SETTABLEKS                       R36 R35 K101 ["TextXAlignment"]
      643 GETIMPORT                        R36 K130 [Enum.TextYAlignment.Top]
      645 SETTABLEKS                       R36 R35 K102 ["TextYAlignment"]
      647 CALL                             R33 2 1
      648 SETTABLEKS                       R33 R32 K92 ["AssetStatusLabel"]
      650 CALL                             R29 3 1
      651 SETTABLEKS                       R29 R28 K50 ["AssetInfo"]
      653 LOADB                            R29 0
      654 GETUPVAL                         R30 0
      655 GETTABLEKS                       R30 R30 K17 ["PreviewTypes"]
      657 GETTABLEKS                       R30 R30 K48 ["ImagePicker"]
      659 JUMPIFNOTEQ                      R14 R30 ; [+224]
      661 GETUPVAL                         R29 7
      662 GETTABLEKS                       R29 R29 K35 ["createElement"]
      664 LOADK                            R30 K36 ["Frame"]
      665 DUPTABLE                         R31 K90 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      666 GETIMPORT                        R32 K38 [UDim2.new]
      668 LOADN                            R33 0
      669 LOADN                            R34 192
      670 LOADN                            R35 0
      671 LOADN                            R36 120
      672 CALL                             R32 4 1
      673 SETTABLEKS                       R32 R31 K39 ["Size"]
      675 LOADN                            R32 1
      676 SETTABLEKS                       R32 R31 K40 ["BackgroundTransparency"]
      678 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      680 CALL                             R32 1 1
      681 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      683 DUPTABLE                         R32 K133 [{"UIListLayout", "Container", "Container2"}]
      684 GETUPVAL                         R33 7
      685 GETTABLEKS                       R33 R33 K35 ["createElement"]
      687 LOADK                            R34 K47 ["UIListLayout"]
      688 DUPTABLE                         R35 K134 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      689 GETIMPORT                        R36 K64 [Enum.FillDirection.Vertical]
      691 SETTABLEKS                       R36 R35 K62 ["FillDirection"]
      693 GETIMPORT                        R36 K136 [Enum.HorizontalAlignment.Left]
      695 SETTABLEKS                       R36 R35 K65 ["HorizontalAlignment"]
      697 GETIMPORT                        R36 K70 [Enum.VerticalAlignment.Top]
      699 SETTABLEKS                       R36 R35 K68 ["VerticalAlignment"]
      701 GETIMPORT                        R36 K72 [Enum.SortOrder.LayoutOrder]
      703 SETTABLEKS                       R36 R35 K71 ["SortOrder"]
      705 GETIMPORT                        R36 K61 [UDim.new]
      707 LOADN                            R37 0
      708 LOADN                            R38 8
      709 CALL                             R36 2 1
      710 SETTABLEKS                       R36 R35 K46 ["Padding"]
      712 CALL                             R33 2 1
      713 SETTABLEKS                       R33 R32 K47 ["UIListLayout"]
      715 GETUPVAL                         R33 7
      716 GETTABLEKS                       R33 R33 K35 ["createElement"]
      718 LOADK                            R34 K36 ["Frame"]
      719 DUPTABLE                         R35 K90 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      720 GETIMPORT                        R36 K38 [UDim2.new]
      722 LOADN                            R37 1
      723 LOADN                            R38 0
      724 LOADN                            R39 0
      725 LOADN                            R40 54
      726 CALL                             R36 4 1
      727 SETTABLEKS                       R36 R35 K39 ["Size"]
      729 LOADN                            R36 1
      730 SETTABLEKS                       R36 R35 K40 ["BackgroundTransparency"]
      732 LOADN                            R36 1
      733 SETTABLEKS                       R36 R35 K9 ["LayoutOrder"]
      735 DUPTABLE                         R36 K138 [{"FormatLabel"}]
      736 GETUPVAL                         R37 7
      737 GETTABLEKS                       R37 R37 K35 ["createElement"]
      739 LOADK                            R38 K118 ["TextLabel"]
      740 DUPTABLE                         R39 K139 [{"Size", "Position", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      741 GETIMPORT                        R40 K38 [UDim2.new]
      743 LOADN                            R41 0
      744 LOADN                            R42 176
      745 LOADN                            R43 0
      746 LOADN                            R44 54
      747 CALL                             R40 4 1
      748 SETTABLEKS                       R40 R39 K39 ["Size"]
      750 GETIMPORT                        R40 K38 [UDim2.new]
      752 LOADN                            R41 0
      753 LOADN                            R42 10
      754 LOADN                            R43 0
      755 LOADN                            R44 0
      756 CALL                             R40 4 1
      757 SETTABLEKS                       R40 R39 K95 ["Position"]
      759 LOADN                            R40 1
      760 SETTABLEKS                       R40 R39 K40 ["BackgroundTransparency"]
      762 SETTABLEKS                       R20 R39 K97 ["Text"]
      764 GETUPVAL                         R40 14
      765 GETTABLEKS                       R40 R40 K114 ["FONT"]
      767 SETTABLEKS                       R40 R39 K98 ["Font"]
      769 GETUPVAL                         R40 14
      770 GETTABLEKS                       R40 R40 K115 ["FONT_SIZE_MEDIUM"]
      772 SETTABLEKS                       R40 R39 K99 ["TextSize"]
      774 GETTABLEKS                       R40 R18 K126 ["textColor"]
      776 SETTABLEKS                       R40 R39 K96 ["TextColor3"]
      778 LOADB                            R40 1
      779 SETTABLEKS                       R40 R39 K100 ["TextWrapped"]
      781 GETIMPORT                        R40 K116 [Enum.TextXAlignment.Center]
      783 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
      785 GETIMPORT                        R40 K117 [Enum.TextYAlignment.Center]
      787 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      789 CALL                             R37 2 1
      790 SETTABLEKS                       R37 R36 K137 ["FormatLabel"]
      792 CALL                             R33 3 1
      793 SETTABLEKS                       R33 R32 K131 ["Container"]
      795 GETUPVAL                         R33 7
      796 GETTABLEKS                       R33 R33 K35 ["createElement"]
      798 LOADK                            R34 K36 ["Frame"]
      799 DUPTABLE                         R35 K90 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      800 GETIMPORT                        R36 K38 [UDim2.new]
      802 LOADN                            R37 1
      803 LOADN                            R38 0
      804 LOADN                            R39 0
      805 LOADN                            R40 54
      806 CALL                             R36 4 1
      807 SETTABLEKS                       R36 R35 K39 ["Size"]
      809 LOADN                            R36 1
      810 SETTABLEKS                       R36 R35 K40 ["BackgroundTransparency"]
      812 LOADN                            R36 2
      813 SETTABLEKS                       R36 R35 K9 ["LayoutOrder"]
      815 DUPTABLE                         R36 K141 [{"ProcessLabel"}]
      816 GETUPVAL                         R37 7
      817 GETTABLEKS                       R37 R37 K35 ["createElement"]
      819 LOADK                            R38 K118 ["TextLabel"]
      820 DUPTABLE                         R39 K142 [{"Size", "Position", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextWrapped", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
      821 GETIMPORT                        R40 K38 [UDim2.new]
      823 LOADN                            R41 0
      824 LOADN                            R42 176
      825 LOADN                            R43 0
      826 LOADN                            R44 54
      827 CALL                             R40 4 1
      828 SETTABLEKS                       R40 R39 K39 ["Size"]
      830 GETIMPORT                        R40 K38 [UDim2.new]
      832 LOADN                            R41 0
      833 LOADN                            R42 10
      834 LOADN                            R43 0
      835 LOADN                            R44 0
      836 CALL                             R40 4 1
      837 SETTABLEKS                       R40 R39 K95 ["Position"]
      839 LOADN                            R40 1
      840 SETTABLEKS                       R40 R39 K40 ["BackgroundTransparency"]
      842 LOADK                            R42 K20 ["AssetConfigPreview"]
      843 LOADK                            R43 K143 ["Process"]
      844 NAMECALL                         R40 R3 K27 ["getText"]
      846 CALL                             R40 3 1
      847 SETTABLEKS                       R40 R39 K97 ["Text"]
      849 GETUPVAL                         R40 14
      850 GETTABLEKS                       R40 R40 K114 ["FONT"]
      852 SETTABLEKS                       R40 R39 K98 ["Font"]
      854 GETUPVAL                         R40 14
      855 GETTABLEKS                       R40 R40 K115 ["FONT_SIZE_MEDIUM"]
      857 SETTABLEKS                       R40 R39 K99 ["TextSize"]
      859 GETTABLEKS                       R40 R18 K126 ["textColor"]
      861 SETTABLEKS                       R40 R39 K96 ["TextColor3"]
      863 LOADB                            R40 1
      864 SETTABLEKS                       R40 R39 K100 ["TextWrapped"]
      866 GETIMPORT                        R40 K116 [Enum.TextXAlignment.Center]
      868 SETTABLEKS                       R40 R39 K101 ["TextXAlignment"]
      870 GETIMPORT                        R40 K117 [Enum.TextYAlignment.Center]
      872 SETTABLEKS                       R40 R39 K102 ["TextYAlignment"]
      874 LOADN                            R40 2
      875 SETTABLEKS                       R40 R39 K9 ["LayoutOrder"]
      877 CALL                             R37 2 1
      878 SETTABLEKS                       R37 R36 K140 ["ProcessLabel"]
      880 CALL                             R33 3 1
      881 SETTABLEKS                       R33 R32 K132 ["Container2"]
      883 CALL                             R29 3 1
      884 SETTABLEKS                       R29 R28 K51 ["Guide"]
      886 MOVE                             R29 R17
      887 JUMPIFNOT                        R29 ; [+56]
      888 GETUPVAL                         R29 7
      889 GETTABLEKS                       R29 R29 K35 ["createElement"]
      891 LOADK                            R30 K36 ["Frame"]
      892 DUPTABLE                         R31 K90 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      893 GETIMPORT                        R32 K38 [UDim2.new]
      895 LOADN                            R33 1
      896 LOADN                            R34 10
      897 LOADN                            R35 1
      898 LOADN                            R36 56
      899 CALL                             R32 4 1
      900 SETTABLEKS                       R32 R31 K39 ["Size"]
      902 LOADN                            R32 1
      903 SETTABLEKS                       R32 R31 K40 ["BackgroundTransparency"]
      905 NAMECALL                         R32 R21 K76 ["getNextOrder"]
      907 CALL                             R32 1 1
      908 SETTABLEKS                       R32 R31 K9 ["LayoutOrder"]
      910 DUPTABLE                         R32 K145 [{"SideTabs"}]
      911 MOVE                             R33 R17
      912 JUMPIFNOT                        R33 ; [+28]
      913 GETUPVAL                         R33 7
      914 GETTABLEKS                       R33 R33 K35 ["createElement"]
      916 GETUPVAL                         R34 18
      917 DUPTABLE                         R35 K150 [{"Size", "ItemHeight", "Items", "CurrentTab", "ItemClickCallBack", "SelectParentRef"}]
      918 GETIMPORT                        R36 K38 [UDim2.new]
      920 LOADN                            R37 1
      921 LOADN                            R38 0
      922 LOADN                            R39 1
      923 LOADN                            R40 0
      924 CALL                             R36 4 1
      925 SETTABLEKS                       R36 R35 K39 ["Size"]
      927 LOADN                            R36 48
      928 SETTABLEKS                       R36 R35 K146 ["ItemHeight"]
      930 SETTABLEKS                       R4 R35 K147 ["Items"]
      932 SETTABLEKS                       R5 R35 K4 ["CurrentTab"]
      934 SETTABLEKS                       R11 R35 K148 ["ItemClickCallBack"]
      936 GETTABLEKS                       R36 R0 K45 ["baseFrameRef"]
      938 SETTABLEKS                       R36 R35 K149 ["SelectParentRef"]
      940 CALL                             R33 2 1
      941 SETTABLEKS                       R33 R32 K144 ["SideTabs"]
      943 CALL                             R29 3 1
      944 SETTABLEKS                       R29 R28 K52 ["TabArea"]
      946 CALL                             R25 3 -1
      947 RETURN                           R25 -1

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
      158 GETTABLEKS                       R28 R28 K44 ["getFFlagEnableUploadingMakeup"]
      160 CALL                             R27 1 1
      161 GETIMPORT                        R28 K9 [require]
      163 GETTABLEKS                       R29 R1 K16 ["Src"]
      165 GETTABLEKS                       R29 R29 K43 ["Flags"]
      167 GETTABLEKS                       R29 R29 K45 ["getFFlagEnableUploadingAvatarAnimations"]
      169 CALL                             R28 1 1
      170 GETTABLEKS                       R29 R14 K46 ["ASSET_THUMBNAIL_REQUESTED_IMAGE_SIZE"]
      172 DUPCLOSURE                       R30 K47 [PROTO_0]
      173 CAPTURE                          VAL R3
      174 SETTABLEKS                       R30 R25 K48 ["init"]
      176 DUPCLOSURE                       R30 K49 [PROTO_1]
      177 CAPTURE                          VAL R16
      178 SETTABLEKS                       R30 R25 K50 ["didMount"]
      180 DUPCLOSURE                       R30 K51 [PROTO_3]
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R29
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R28
      186 CAPTURE                          VAL R26
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R20
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R18
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R9
      200 SETTABLEKS                       R30 R25 K52 ["render"]
      202 DUPCLOSURE                       R30 K53 [PROTO_4]
      203 DUPCLOSURE                       R31 K54 [PROTO_6]
      204 CAPTURE                          VAL R21
      205 MOVE                             R32 R23
      206 DUPTABLE                         R33 K57 [{"Stylizer", "Localization", "Network"}]
      207 GETTABLEKS                       R34 R22 K55 ["Stylizer"]
      209 SETTABLEKS                       R34 R33 K55 ["Stylizer"]
      211 GETTABLEKS                       R34 R22 K29 ["Localization"]
      213 SETTABLEKS                       R34 R33 K29 ["Localization"]
      215 SETTABLEKS                       R24 R33 K56 ["Network"]
      217 CALL                             R32 1 1
      218 MOVE                             R33 R25
      219 CALL                             R32 1 1
      220 MOVE                             R25 R32
      221 GETTABLEKS                       R32 R4 K58 ["connect"]
      223 MOVE                             R33 R30
      224 MOVE                             R34 R31
      225 CALL                             R32 2 1
      226 MOVE                             R33 R25
      227 CALL                             R32 1 -1
      228 RETURN                           R32 -1
