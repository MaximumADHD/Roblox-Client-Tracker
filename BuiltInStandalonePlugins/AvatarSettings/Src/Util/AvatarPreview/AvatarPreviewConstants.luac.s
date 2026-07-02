MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarPreviewTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["BridgingFiles"]
       26 GETTABLEKS                       R3 R3 K11 ["AssetDmFiles"]
       28 GETTABLEKS                       R3 R3 K12 ["assetDmTypes"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K6 ["Src"]
       35 GETTABLEKS                       R4 R4 K13 ["Flags"]
       37 GETTABLEKS                       R4 R4 K14 ["getFIntAvatarSettingsPreviewSpacing"]
       39 CALL                             R3 1 1
       40 DUPTABLE                         R4 K31 [{["Eyelashes"] = 1, ["Eyebrows"] = 2, ["Face"] = 3, ["Hair"] = 4, ["Shoes"] = 5, ["Bottoms"] = 6, ["Tops"] = 7, ["Outerwear"] = 8}]
       41 DUPTABLE                         R5 K62 [{["ParentCameraName"] = "AvatarPreviewContainer", ["AvatarPreviewFolderName"] = "AvatarPreview", ["AvatarPreviewFolderTag"] = "AvatarSettingsPreviewFolder", ["CollisionBoxVisibleTransparency"] = 0.5, ["CollisionBoxInvisibleTransparency"] = 1, ["CollisionBoxVisibleColor"], ["CollisionBoxInvisibleColor"], ["BLOCKCAST_VERTICAL_PADDING"] = 0.001, ["AvatarSpacing"], ["MaxPreviewPlacementDistance"] = 50, ["DennisAvatar"], ["MagmaFiend"], ["Roxie"], ["JunkBot"], ["AvatarAccessoryRulesAssetIdPropertyTypes"], ["AvatarClothingRulesAssetIdPropertyTypes"], ["ClassicClothingTypes"], ["HumanoidDescriptionClothingTypes"], ["AccessoryTypeToAssetType"], ["AccessoryAssetTypes"], ["ClothingAssetTypes"], ["AvatarAnimationAssetIdPropertyToAnimationStringValue"], ["CollisionBoxPartNames"], ["HighlightProperties"], ["boundingBoxProps"]}]
       42 GETIMPORT                        R6 K65 [Color3.fromRGB]
       44 LOADN                            R7 0
       45 LOADN                            R8 139
       46 LOADN                            R9 219
       47 CALL                             R6 3 1
       48 SETTABLEKS                       R6 R5 K40 ["CollisionBoxVisibleColor"]
       50 GETIMPORT                        R6 K65 [Color3.fromRGB]
       52 LOADN                            R7 163
       53 LOADN                            R8 162
       54 LOADN                            R9 165
       55 CALL                             R6 3 1
       56 SETTABLEKS                       R6 R5 K41 ["CollisionBoxInvisibleColor"]
       58 MOVE                             R6 R3
       59 CALL                             R6 0 1
       60 SETTABLEKS                       R6 R5 K44 ["AvatarSpacing"]
       62 DUPTABLE                         R6 K74 [{["name"] = "DennisAvatar", ["bundleId"] = 605, ["outfitId"] = 2219390889, ["insertionOrder"] = 3, ["defaultHumanoidRigType"], ["accessories"]}]
       63 GETIMPORT                        R7 K78 [Enum.HumanoidRigType.R6]
       65 SETTABLEKS                       R7 R6 K72 ["defaultHumanoidRigType"]
       67 NEWTABLE                         R7 0 1
       69 NEWTABLE                         R8 4 0
       71 GETIMPORT                        R9 K80 [Enum.AccessoryType.Hair]
       73 SETTABLEKS                       R9 R8 K79 ["AccessoryType"]
       75 LOADK                            R9 K81 [4637254498]
       76 SETTABLEKS                       R9 R8 K82 ["AssetId"]
       78 LOADB                            R9 1
       79 SETTABLEKS                       R9 R8 K83 ["IsLayered"]
       81 LOADN                            R9 4
       82 SETTABLEKS                       R9 R8 K84 ["Order"]
       84 SETLIST                          R7 R8 1 [1]
       86 SETTABLEKS                       R7 R6 K73 ["accessories"]
       88 SETTABLEKS                       R6 R5 K47 ["DennisAvatar"]
       90 DUPTABLE                         R6 K87 [{["name"] = "MagmaFiend", ["bundleId"] = 429, ["outfitId"] = 474312030, ["insertionOrder"] = 4, ["defaultHumanoidRigType"], ["accessories"]}]
       91 GETIMPORT                        R7 K89 [Enum.HumanoidRigType.R15]
       93 SETTABLEKS                       R7 R6 K72 ["defaultHumanoidRigType"]
       95 NEWTABLE                         R7 0 4
       97 NEWTABLE                         R8 2 0
       99 GETIMPORT                        R9 K91 [Enum.AccessoryType.Hat]
      101 SETTABLEKS                       R9 R8 K79 ["AccessoryType"]
      103 LOADK                            R9 K92 [131851650016277]
      104 SETTABLEKS                       R9 R8 K82 ["AssetId"]
      106 NEWTABLE                         R9 2 0
      108 GETIMPORT                        R10 K91 [Enum.AccessoryType.Hat]
      110 SETTABLEKS                       R10 R9 K79 ["AccessoryType"]
      112 LOADK                            R10 K93 [100932329]
      113 SETTABLEKS                       R10 R9 K82 ["AssetId"]
      115 NEWTABLE                         R10 4 0
      117 GETIMPORT                        R11 K95 [Enum.AccessoryType.LeftShoe]
      119 SETTABLEKS                       R11 R10 K79 ["AccessoryType"]
      121 LOADK                            R11 K96 [12518498047]
      122 SETTABLEKS                       R11 R10 K82 ["AssetId"]
      124 LOADB                            R11 1
      125 SETTABLEKS                       R11 R10 K83 ["IsLayered"]
      127 LOADN                            R11 5
      128 SETTABLEKS                       R11 R10 K84 ["Order"]
      130 NEWTABLE                         R11 4 0
      132 GETIMPORT                        R12 K98 [Enum.AccessoryType.RightShoe]
      134 SETTABLEKS                       R12 R11 K79 ["AccessoryType"]
      136 LOADK                            R12 K99 [12518504805]
      137 SETTABLEKS                       R12 R11 K82 ["AssetId"]
      139 LOADB                            R12 1
      140 SETTABLEKS                       R12 R11 K83 ["IsLayered"]
      142 LOADN                            R12 5
      143 SETTABLEKS                       R12 R11 K84 ["Order"]
      145 SETLIST                          R7 R8 4 [1]
      147 SETTABLEKS                       R7 R6 K73 ["accessories"]
      149 SETTABLEKS                       R6 R5 K48 ["MagmaFiend"]
      151 DUPTABLE                         R6 K109 [{["name"] = "Roxie", ["bundleId"] = 988, ["outfitId"] = 12092458560, ["insertionOrder"] = 2, ["defaultHumanoidRigType"], ["keepDefaultAccessories"] = True, ["scaleData"], ["accessories"], ["shirtId"] = 855766176, ["pantsId"] = 855781078}]
      152 GETIMPORT                        R7 K89 [Enum.HumanoidRigType.R15]
      154 SETTABLEKS                       R7 R6 K72 ["defaultHumanoidRigType"]
      156 DUPTABLE                         R7 K119 [{["BodyTypeScale"] = 1, ["DepthScale"] = 0.85, ["HeadScale"] = 0.95, ["HeightScale"] = 0.9, ["ProportionScale"] = 1, ["WidthScale"] = 0.9}]
      157 SETTABLEKS                       R7 R6 K104 ["scaleData"]
      159 NEWTABLE                         R7 0 5
      161 NEWTABLE                         R8 4 0
      163 GETIMPORT                        R9 K121 [Enum.AccessoryType.TShirt]
      165 SETTABLEKS                       R9 R8 K79 ["AccessoryType"]
      167 LOADK                            R9 K122 [11625089378]
      168 SETTABLEKS                       R9 R8 K82 ["AssetId"]
      170 LOADB                            R9 1
      171 SETTABLEKS                       R9 R8 K83 ["IsLayered"]
      173 LOADN                            R9 7
      174 SETTABLEKS                       R9 R8 K84 ["Order"]
      176 NEWTABLE                         R9 4 0
      178 GETIMPORT                        R10 K124 [Enum.AccessoryType.Shorts]
      180 SETTABLEKS                       R10 R9 K79 ["AccessoryType"]
      182 LOADK                            R10 K125 [7192687500]
      183 SETTABLEKS                       R10 R9 K82 ["AssetId"]
      185 LOADB                            R10 1
      186 SETTABLEKS                       R10 R9 K83 ["IsLayered"]
      188 LOADN                            R10 6
      189 SETTABLEKS                       R10 R9 K84 ["Order"]
      191 NEWTABLE                         R10 4 0
      193 GETIMPORT                        R11 K127 [Enum.AccessoryType.Jacket]
      195 SETTABLEKS                       R11 R10 K79 ["AccessoryType"]
      197 LOADK                            R11 K128 [17259226347]
      198 SETTABLEKS                       R11 R10 K82 ["AssetId"]
      200 LOADB                            R11 1
      201 SETTABLEKS                       R11 R10 K83 ["IsLayered"]
      203 LOADN                            R11 8
      204 SETTABLEKS                       R11 R10 K84 ["Order"]
      206 NEWTABLE                         R11 4 0
      208 GETIMPORT                        R12 K95 [Enum.AccessoryType.LeftShoe]
      210 SETTABLEKS                       R12 R11 K79 ["AccessoryType"]
      212 LOADK                            R12 K129 [9614836327]
      213 SETTABLEKS                       R12 R11 K82 ["AssetId"]
      215 LOADB                            R12 1
      216 SETTABLEKS                       R12 R11 K83 ["IsLayered"]
      218 LOADN                            R12 5
      219 SETTABLEKS                       R12 R11 K84 ["Order"]
      221 NEWTABLE                         R12 4 0
      223 GETIMPORT                        R13 K98 [Enum.AccessoryType.RightShoe]
      225 SETTABLEKS                       R13 R12 K79 ["AccessoryType"]
      227 LOADK                            R13 K130 [9614841343]
      228 SETTABLEKS                       R13 R12 K82 ["AssetId"]
      230 LOADB                            R13 1
      231 SETTABLEKS                       R13 R12 K83 ["IsLayered"]
      233 LOADN                            R13 5
      234 SETTABLEKS                       R13 R12 K84 ["Order"]
      236 SETLIST                          R7 R8 5 [1]
      238 SETTABLEKS                       R7 R6 K73 ["accessories"]
      240 SETTABLEKS                       R6 R5 K49 ["Roxie"]
      242 DUPTABLE                         R6 K133 [{["name"] = "JunkBot", ["bundleId"] = 589, ["outfitId"] = 1704895554, ["insertionOrder"] = 1, ["defaultHumanoidRigType"], ["scaleData"], ["accessories"]}]
      243 GETIMPORT                        R7 K89 [Enum.HumanoidRigType.R15]
      245 SETTABLEKS                       R7 R6 K72 ["defaultHumanoidRigType"]
      247 DUPTABLE                         R7 K136 [{["BodyTypeScale"] = 1, ["DepthScale"] = 1, ["HeadScale"] = 1, ["HeightScale"] = 1.05, ["ProportionScale"] = 0, ["WidthScale"] = 1}]
      248 SETTABLEKS                       R7 R6 K104 ["scaleData"]
      250 NEWTABLE                         R7 0 2
      252 NEWTABLE                         R8 2 0
      254 GETIMPORT                        R9 K91 [Enum.AccessoryType.Hat]
      256 SETTABLEKS                       R9 R8 K79 ["AccessoryType"]
      258 LOADK                            R9 K137 [4381828509]
      259 SETTABLEKS                       R9 R8 K82 ["AssetId"]
      261 NEWTABLE                         R9 4 0
      263 GETIMPORT                        R10 K139 [Enum.AccessoryType.Back]
      265 SETTABLEKS                       R10 R9 K79 ["AccessoryType"]
      267 LOADK                            R10 K140 [745788688]
      268 SETTABLEKS                       R10 R9 K82 ["AssetId"]
      270 LOADB                            R10 0
      271 SETTABLEKS                       R10 R9 K83 ["IsLayered"]
      273 SETLIST                          R7 R8 2 [1]
      275 SETTABLEKS                       R7 R6 K73 ["accessories"]
      277 SETTABLEKS                       R6 R5 K50 ["JunkBot"]
      279 NEWTABLE                         R6 0 8
      281 DUPTABLE                         R7 K144 [{["property"] = "CustomHairAccessory", ["type"]}]
      282 GETIMPORT                        R8 K147 [Enum.AssetType.HairAccessory]
      284 SETTABLEKS                       R8 R7 K143 ["type"]
      286 DUPTABLE                         R8 K149 [{["property"] = "CustomHeadAccessory", ["type"]}]
      287 GETIMPORT                        R9 K150 [Enum.AssetType.Hat]
      289 SETTABLEKS                       R9 R8 K143 ["type"]
      291 DUPTABLE                         R9 K152 [{["property"] = "CustomFaceAccessory", ["type"]}]
      292 GETIMPORT                        R10 K154 [Enum.AssetType.FaceAccessory]
      294 SETTABLEKS                       R10 R9 K143 ["type"]
      296 DUPTABLE                         R10 K156 [{["property"] = "CustomNeckAccessory", ["type"]}]
      297 GETIMPORT                        R11 K158 [Enum.AssetType.NeckAccessory]
      299 SETTABLEKS                       R11 R10 K143 ["type"]
      301 DUPTABLE                         R11 K160 [{["property"] = "CustomShoulderAccessory", ["type"]}]
      302 GETIMPORT                        R12 K162 [Enum.AssetType.ShoulderAccessory]
      304 SETTABLEKS                       R12 R11 K143 ["type"]
      306 DUPTABLE                         R12 K164 [{["property"] = "CustomFrontAccessory", ["type"]}]
      307 GETIMPORT                        R13 K166 [Enum.AssetType.FrontAccessory]
      309 SETTABLEKS                       R13 R12 K143 ["type"]
      311 DUPTABLE                         R13 K168 [{["property"] = "CustomBackAccessory", ["type"]}]
      312 GETIMPORT                        R14 K170 [Enum.AssetType.BackAccessory]
      314 SETTABLEKS                       R14 R13 K143 ["type"]
      316 DUPTABLE                         R14 K172 [{["property"] = "CustomWaistAccessory", ["type"]}]
      317 GETIMPORT                        R15 K174 [Enum.AssetType.WaistAccessory]
      319 SETTABLEKS                       R15 R14 K143 ["type"]
      321 SETLIST                          R6 R7 8 [1]
      323 SETTABLEKS                       R6 R5 K51 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
      325 NEWTABLE                         R6 0 12
      327 DUPTABLE                         R7 K176 [{["property"] = "CustomTShirtAccessory", ["type"]}]
      328 GETIMPORT                        R8 K178 [Enum.AssetType.TShirtAccessory]
      330 SETTABLEKS                       R8 R7 K143 ["type"]
      332 DUPTABLE                         R8 K180 [{["property"] = "CustomShirtAccessory", ["type"]}]
      333 GETIMPORT                        R9 K182 [Enum.AssetType.ShirtAccessory]
      335 SETTABLEKS                       R9 R8 K143 ["type"]
      337 DUPTABLE                         R9 K184 [{["property"] = "CustomJacketAccessory", ["type"]}]
      338 GETIMPORT                        R10 K186 [Enum.AssetType.JacketAccessory]
      340 SETTABLEKS                       R10 R9 K143 ["type"]
      342 DUPTABLE                         R10 K188 [{["property"] = "CustomSweaterAccessory", ["type"]}]
      343 GETIMPORT                        R11 K190 [Enum.AssetType.SweaterAccessory]
      345 SETTABLEKS                       R11 R10 K143 ["type"]
      347 DUPTABLE                         R11 K192 [{["property"] = "CustomPantsAccessory", ["type"]}]
      348 GETIMPORT                        R12 K194 [Enum.AssetType.PantsAccessory]
      350 SETTABLEKS                       R12 R11 K143 ["type"]
      352 DUPTABLE                         R12 K196 [{["property"] = "CustomShortsAccessory", ["type"]}]
      353 GETIMPORT                        R13 K198 [Enum.AssetType.ShortsAccessory]
      355 SETTABLEKS                       R13 R12 K143 ["type"]
      357 DUPTABLE                         R13 K200 [{["property"] = "CustomDressSkirtAccessory", ["type"]}]
      358 GETIMPORT                        R14 K202 [Enum.AssetType.DressSkirtAccessory]
      360 SETTABLEKS                       R14 R13 K143 ["type"]
      362 DUPTABLE                         R14 K204 [{["property"] = "CustomLeftShoesAccessory", ["type"]}]
      363 GETIMPORT                        R15 K206 [Enum.AssetType.LeftShoeAccessory]
      365 SETTABLEKS                       R15 R14 K143 ["type"]
      367 DUPTABLE                         R15 K208 [{["property"] = "CustomRightShoesAccessory", ["type"]}]
      368 GETIMPORT                        R16 K210 [Enum.AssetType.RightShoeAccessory]
      370 SETTABLEKS                       R16 R15 K143 ["type"]
      372 DUPTABLE                         R16 K212 [{["property"] = "CustomClassicShirtsAccessory", ["type"]}]
      373 GETIMPORT                        R17 K214 [Enum.AssetType.Shirt]
      375 SETTABLEKS                       R17 R16 K143 ["type"]
      377 DUPTABLE                         R17 K216 [{["property"] = "CustomClassicTShirtsAccessory", ["type"]}]
      378 GETIMPORT                        R18 K217 [Enum.AssetType.TShirt]
      380 SETTABLEKS                       R18 R17 K143 ["type"]
      382 DUPTABLE                         R18 K219 [{["property"] = "CustomClassicPantsAccessory", ["type"]}]
      383 GETIMPORT                        R19 K221 [Enum.AssetType.Pants]
      385 SETTABLEKS                       R19 R18 K143 ["type"]
      387 SETLIST                          R6 R7 12 [1]
      389 SETTABLEKS                       R6 R5 K52 ["AvatarClothingRulesAssetIdPropertyTypes"]
      391 NEWTABLE                         R6 0 3
      393 GETIMPORT                        R7 K217 [Enum.AssetType.TShirt]
      395 GETTABLEKS                       R7 R7 K222 ["Name"]
      397 GETIMPORT                        R8 K214 [Enum.AssetType.Shirt]
      399 GETTABLEKS                       R8 R8 K222 ["Name"]
      401 GETIMPORT                        R9 K221 [Enum.AssetType.Pants]
      403 GETTABLEKS                       R9 R9 K222 ["Name"]
      405 SETLIST                          R6 R7 3 [1]
      407 SETTABLEKS                       R6 R5 K53 ["ClassicClothingTypes"]
      409 NEWTABLE                         R6 4 0
      411 GETIMPORT                        R7 K217 [Enum.AssetType.TShirt]
      413 GETTABLEKS                       R7 R7 K222 ["Name"]
      415 LOADK                            R8 K223 ["GraphicTShirt"]
      416 SETTABLE                         R8 R6 R7
      417 GETIMPORT                        R7 K214 [Enum.AssetType.Shirt]
      419 GETTABLEKS                       R7 R7 K222 ["Name"]
      421 LOADK                            R8 K213 ["Shirt"]
      422 SETTABLE                         R8 R6 R7
      423 GETIMPORT                        R7 K221 [Enum.AssetType.Pants]
      425 GETTABLEKS                       R7 R7 K222 ["Name"]
      427 LOADK                            R8 K220 ["Pants"]
      428 SETTABLE                         R8 R6 R7
      429 SETTABLEKS                       R6 R5 K54 ["HumanoidDescriptionClothingTypes"]
      431 NEWTABLE                         R6 32 0
      433 GETIMPORT                        R7 K91 [Enum.AccessoryType.Hat]
      435 GETIMPORT                        R8 K150 [Enum.AssetType.Hat]
      437 GETTABLEKS                       R8 R8 K222 ["Name"]
      439 SETTABLE                         R8 R6 R7
      440 GETIMPORT                        R7 K80 [Enum.AccessoryType.Hair]
      442 GETIMPORT                        R8 K147 [Enum.AssetType.HairAccessory]
      444 GETTABLEKS                       R8 R8 K222 ["Name"]
      446 SETTABLE                         R8 R6 R7
      447 GETIMPORT                        R7 K224 [Enum.AccessoryType.Face]
      449 GETIMPORT                        R8 K154 [Enum.AssetType.FaceAccessory]
      451 GETTABLEKS                       R8 R8 K222 ["Name"]
      453 SETTABLE                         R8 R6 R7
      454 GETIMPORT                        R7 K226 [Enum.AccessoryType.Neck]
      456 GETIMPORT                        R8 K158 [Enum.AssetType.NeckAccessory]
      458 GETTABLEKS                       R8 R8 K222 ["Name"]
      460 SETTABLE                         R8 R6 R7
      461 GETIMPORT                        R7 K228 [Enum.AccessoryType.Shoulder]
      463 GETIMPORT                        R8 K162 [Enum.AssetType.ShoulderAccessory]
      465 GETTABLEKS                       R8 R8 K222 ["Name"]
      467 SETTABLE                         R8 R6 R7
      468 GETIMPORT                        R7 K230 [Enum.AccessoryType.Front]
      470 GETIMPORT                        R8 K166 [Enum.AssetType.FrontAccessory]
      472 GETTABLEKS                       R8 R8 K222 ["Name"]
      474 SETTABLE                         R8 R6 R7
      475 GETIMPORT                        R7 K139 [Enum.AccessoryType.Back]
      477 GETIMPORT                        R8 K170 [Enum.AssetType.BackAccessory]
      479 GETTABLEKS                       R8 R8 K222 ["Name"]
      481 SETTABLE                         R8 R6 R7
      482 GETIMPORT                        R7 K232 [Enum.AccessoryType.Waist]
      484 GETIMPORT                        R8 K174 [Enum.AssetType.WaistAccessory]
      486 GETTABLEKS                       R8 R8 K222 ["Name"]
      488 SETTABLE                         R8 R6 R7
      489 GETIMPORT                        R7 K121 [Enum.AccessoryType.TShirt]
      491 GETIMPORT                        R8 K178 [Enum.AssetType.TShirtAccessory]
      493 GETTABLEKS                       R8 R8 K222 ["Name"]
      495 SETTABLE                         R8 R6 R7
      496 GETIMPORT                        R7 K233 [Enum.AccessoryType.Shirt]
      498 GETIMPORT                        R8 K182 [Enum.AssetType.ShirtAccessory]
      500 GETTABLEKS                       R8 R8 K222 ["Name"]
      502 SETTABLE                         R8 R6 R7
      503 GETIMPORT                        R7 K127 [Enum.AccessoryType.Jacket]
      505 GETIMPORT                        R8 K186 [Enum.AssetType.JacketAccessory]
      507 GETTABLEKS                       R8 R8 K222 ["Name"]
      509 SETTABLE                         R8 R6 R7
      510 GETIMPORT                        R7 K235 [Enum.AccessoryType.Sweater]
      512 GETIMPORT                        R8 K190 [Enum.AssetType.SweaterAccessory]
      514 GETTABLEKS                       R8 R8 K222 ["Name"]
      516 SETTABLE                         R8 R6 R7
      517 GETIMPORT                        R7 K236 [Enum.AccessoryType.Pants]
      519 GETIMPORT                        R8 K194 [Enum.AssetType.PantsAccessory]
      521 GETTABLEKS                       R8 R8 K222 ["Name"]
      523 SETTABLE                         R8 R6 R7
      524 GETIMPORT                        R7 K124 [Enum.AccessoryType.Shorts]
      526 GETIMPORT                        R8 K198 [Enum.AssetType.ShortsAccessory]
      528 GETTABLEKS                       R8 R8 K222 ["Name"]
      530 SETTABLE                         R8 R6 R7
      531 GETIMPORT                        R7 K238 [Enum.AccessoryType.DressSkirt]
      533 GETIMPORT                        R8 K202 [Enum.AssetType.DressSkirtAccessory]
      535 GETTABLEKS                       R8 R8 K222 ["Name"]
      537 SETTABLE                         R8 R6 R7
      538 GETIMPORT                        R7 K95 [Enum.AccessoryType.LeftShoe]
      540 GETIMPORT                        R8 K206 [Enum.AssetType.LeftShoeAccessory]
      542 GETTABLEKS                       R8 R8 K222 ["Name"]
      544 SETTABLE                         R8 R6 R7
      545 GETIMPORT                        R7 K98 [Enum.AccessoryType.RightShoe]
      547 GETIMPORT                        R8 K210 [Enum.AssetType.RightShoeAccessory]
      549 GETTABLEKS                       R8 R8 K222 ["Name"]
      551 SETTABLE                         R8 R6 R7
      552 SETTABLEKS                       R6 R5 K55 ["AccessoryTypeToAssetType"]
      554 NEWTABLE                         R6 8 0
      556 GETIMPORT                        R7 K150 [Enum.AssetType.Hat]
      558 GETTABLEKS                       R7 R7 K222 ["Name"]
      560 LOADB                            R8 1
      561 SETTABLE                         R8 R6 R7
      562 GETIMPORT                        R7 K147 [Enum.AssetType.HairAccessory]
      564 GETTABLEKS                       R7 R7 K222 ["Name"]
      566 LOADB                            R8 1
      567 SETTABLE                         R8 R6 R7
      568 GETIMPORT                        R7 K154 [Enum.AssetType.FaceAccessory]
      570 GETTABLEKS                       R7 R7 K222 ["Name"]
      572 LOADB                            R8 1
      573 SETTABLE                         R8 R6 R7
      574 GETIMPORT                        R7 K158 [Enum.AssetType.NeckAccessory]
      576 GETTABLEKS                       R7 R7 K222 ["Name"]
      578 LOADB                            R8 1
      579 SETTABLE                         R8 R6 R7
      580 GETIMPORT                        R7 K162 [Enum.AssetType.ShoulderAccessory]
      582 GETTABLEKS                       R7 R7 K222 ["Name"]
      584 LOADB                            R8 1
      585 SETTABLE                         R8 R6 R7
      586 GETIMPORT                        R7 K166 [Enum.AssetType.FrontAccessory]
      588 GETTABLEKS                       R7 R7 K222 ["Name"]
      590 LOADB                            R8 1
      591 SETTABLE                         R8 R6 R7
      592 GETIMPORT                        R7 K170 [Enum.AssetType.BackAccessory]
      594 GETTABLEKS                       R7 R7 K222 ["Name"]
      596 LOADB                            R8 1
      597 SETTABLE                         R8 R6 R7
      598 GETIMPORT                        R7 K174 [Enum.AssetType.WaistAccessory]
      600 GETTABLEKS                       R7 R7 K222 ["Name"]
      602 LOADB                            R8 1
      603 SETTABLE                         R8 R6 R7
      604 SETTABLEKS                       R6 R5 K56 ["AccessoryAssetTypes"]
      606 NEWTABLE                         R6 16 0
      608 GETIMPORT                        R7 K178 [Enum.AssetType.TShirtAccessory]
      610 GETTABLEKS                       R7 R7 K222 ["Name"]
      612 LOADB                            R8 1
      613 SETTABLE                         R8 R6 R7
      614 GETIMPORT                        R7 K182 [Enum.AssetType.ShirtAccessory]
      616 GETTABLEKS                       R7 R7 K222 ["Name"]
      618 LOADB                            R8 1
      619 SETTABLE                         R8 R6 R7
      620 GETIMPORT                        R7 K186 [Enum.AssetType.JacketAccessory]
      622 GETTABLEKS                       R7 R7 K222 ["Name"]
      624 LOADB                            R8 1
      625 SETTABLE                         R8 R6 R7
      626 GETIMPORT                        R7 K190 [Enum.AssetType.SweaterAccessory]
      628 GETTABLEKS                       R7 R7 K222 ["Name"]
      630 LOADB                            R8 1
      631 SETTABLE                         R8 R6 R7
      632 GETIMPORT                        R7 K194 [Enum.AssetType.PantsAccessory]
      634 GETTABLEKS                       R7 R7 K222 ["Name"]
      636 LOADB                            R8 1
      637 SETTABLE                         R8 R6 R7
      638 GETIMPORT                        R7 K198 [Enum.AssetType.ShortsAccessory]
      640 GETTABLEKS                       R7 R7 K222 ["Name"]
      642 LOADB                            R8 1
      643 SETTABLE                         R8 R6 R7
      644 GETIMPORT                        R7 K202 [Enum.AssetType.DressSkirtAccessory]
      646 GETTABLEKS                       R7 R7 K222 ["Name"]
      648 LOADB                            R8 1
      649 SETTABLE                         R8 R6 R7
      650 GETIMPORT                        R7 K206 [Enum.AssetType.LeftShoeAccessory]
      652 GETTABLEKS                       R7 R7 K222 ["Name"]
      654 LOADB                            R8 1
      655 SETTABLE                         R8 R6 R7
      656 GETIMPORT                        R7 K210 [Enum.AssetType.RightShoeAccessory]
      658 GETTABLEKS                       R7 R7 K222 ["Name"]
      660 LOADB                            R8 1
      661 SETTABLE                         R8 R6 R7
      662 GETIMPORT                        R7 K217 [Enum.AssetType.TShirt]
      664 GETTABLEKS                       R7 R7 K222 ["Name"]
      666 LOADB                            R8 1
      667 SETTABLE                         R8 R6 R7
      668 GETIMPORT                        R7 K214 [Enum.AssetType.Shirt]
      670 GETTABLEKS                       R7 R7 K222 ["Name"]
      672 LOADB                            R8 1
      673 SETTABLE                         R8 R6 R7
      674 GETIMPORT                        R7 K221 [Enum.AssetType.Pants]
      676 GETTABLEKS                       R7 R7 K222 ["Name"]
      678 LOADB                            R8 1
      679 SETTABLE                         R8 R6 R7
      680 SETTABLEKS                       R6 R5 K57 ["ClothingAssetTypes"]
      682 NEWTABLE                         R6 16 0
      684 DUPTABLE                         R7 K243 [{["stringValueInstanceName"] = "run", ["animationInstanceName"] = "RunAnim"}]
      685 SETTABLEKS                       R7 R6 K244 ["CustomRunAnimation"]
      687 DUPTABLE                         R7 K247 [{["stringValueInstanceName"] = "walk", ["animationInstanceName"] = "WalkAnim"}]
      688 SETTABLEKS                       R7 R6 K248 ["CustomWalkAnimation"]
      690 DUPTABLE                         R7 K251 [{["stringValueInstanceName"] = "fall", ["animationInstanceName"] = "FallAnim"}]
      691 SETTABLEKS                       R7 R6 K252 ["CustomFallAnimation"]
      693 DUPTABLE                         R7 K255 [{["stringValueInstanceName"] = "jump", ["animationInstanceName"] = "JumpAnim"}]
      694 SETTABLEKS                       R7 R6 K256 ["CustomJumpAnimation"]
      696 DUPTABLE                         R7 K259 [{["stringValueInstanceName"] = "idle", ["animationInstanceName"] = "Animation1"}]
      697 SETTABLEKS                       R7 R6 K260 ["CustomIdleAnimation"]
      699 DUPTABLE                         R7 K262 [{["stringValueInstanceName"] = "idle", ["animationInstanceName"] = "Animation2"}]
      700 SETTABLEKS                       R7 R6 K263 ["CustomIdleAlt1Animation"]
      702 DUPTABLE                         R7 K265 [{["stringValueInstanceName"] = "idle", ["animationInstanceName"] = "Animation3"}]
      703 SETTABLEKS                       R7 R6 K266 ["CustomIdleAlt2Animation"]
      705 DUPTABLE                         R7 K269 [{["stringValueInstanceName"] = "swim", ["animationInstanceName"] = "Swim"}]
      706 SETTABLEKS                       R7 R6 K270 ["CustomSwimAnimation"]
      708 DUPTABLE                         R7 K273 [{["stringValueInstanceName"] = "swimidle", ["animationInstanceName"] = "SwimIdle"}]
      709 SETTABLEKS                       R7 R6 K274 ["CustomSwimIdleAnimation"]
      711 DUPTABLE                         R7 K277 [{["stringValueInstanceName"] = "climb", ["animationInstanceName"] = "ClimbAnim"}]
      712 SETTABLEKS                       R7 R6 K278 ["CustomClimbAnimation"]
      714 DUPTABLE                         R7 K280 [{["stringValueInstanceName"] = "mood", ["animationInstanceName"] = "Animation1"}]
      715 SETTABLEKS                       R7 R6 K281 ["CustomMoodAnimation"]
      717 SETTABLEKS                       R6 R5 K58 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
      719 NEWTABLE                         R6 0 7
      721 LOADK                            R7 K282 ["CollisionPart"]
      722 LOADK                            R8 K283 ["CollisionHead"]
      723 LOADK                            R9 K284 ["CollisionTorso"]
      724 LOADK                            R10 K285 ["CollisionLeftLeg"]
      725 LOADK                            R11 K286 ["CollisionRightLeg"]
      726 LOADK                            R12 K287 ["CollisionLeftArm"]
      727 LOADK                            R13 K288 ["CollisionRightArm"]
      728 SETLIST                          R6 R7 7 [1]
      730 SETTABLEKS                       R6 R5 K59 ["CollisionBoxPartNames"]
      732 DUPTABLE                         R6 K296 [{["HighlightName"] = "AccessoryHighlight", ["FillColor"], ["OutlineColor"], ["FillTransparency"] = 0.15, ["OutlineTransparency"] = 0.5}]
      733 GETIMPORT                        R7 K65 [Color3.fromRGB]
      735 LOADN                            R8 255
      736 LOADN                            R9 0
      737 LOADN                            R10 0
      738 CALL                             R7 3 1
      739 SETTABLEKS                       R7 R6 K291 ["FillColor"]
      741 GETIMPORT                        R7 K65 [Color3.fromRGB]
      743 LOADN                            R8 255
      744 LOADN                            R9 255
      745 LOADN                            R10 255
      746 CALL                             R7 3 1
      747 SETTABLEKS                       R7 R6 K292 ["OutlineColor"]
      749 SETTABLEKS                       R6 R5 K60 ["HighlightProperties"]
      751 DUPTABLE                         R6 K304 [{["name"] = "BoundingBoxPart", ["tag"] = "AvatarPreviewBoundingBox", ["color"], ["transparency"] = 0.7, ["material"]}]
      752 GETIMPORT                        R7 K65 [Color3.fromRGB]
      754 LOADN                            R8 0
      755 LOADN                            R9 139
      756 LOADN                            R10 219
      757 CALL                             R7 3 1
      758 SETTABLEKS                       R7 R6 K300 ["color"]
      760 GETIMPORT                        R7 K307 [Enum.Material.SmoothPlastic]
      762 SETTABLEKS                       R7 R6 K303 ["material"]
      764 SETTABLEKS                       R6 R5 K61 ["boundingBoxProps"]
      766 RETURN                           R5 1
