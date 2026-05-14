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
       40 DUPTABLE                         R4 K23 [{"Eyelashes", "Eyebrows", "Face", "Hair", "Shoes", "Bottoms", "Tops", "Outerwear"}]
       41 LOADN                            R5 1
       42 SETTABLEKS                       R5 R4 K15 ["Eyelashes"]
       44 LOADN                            R5 2
       45 SETTABLEKS                       R5 R4 K16 ["Eyebrows"]
       47 LOADN                            R5 3
       48 SETTABLEKS                       R5 R4 K17 ["Face"]
       50 LOADN                            R5 4
       51 SETTABLEKS                       R5 R4 K18 ["Hair"]
       53 LOADN                            R5 5
       54 SETTABLEKS                       R5 R4 K19 ["Shoes"]
       56 LOADN                            R5 6
       57 SETTABLEKS                       R5 R4 K20 ["Bottoms"]
       59 LOADN                            R5 7
       60 SETTABLEKS                       R5 R4 K21 ["Tops"]
       62 LOADN                            R5 8
       63 SETTABLEKS                       R5 R4 K22 ["Outerwear"]
       65 DUPTABLE                         R5 K49 [{"ParentCameraName", "AvatarPreviewFolderName", "AvatarPreviewFolderTag", "CollisionBoxVisibleTransparency", "CollisionBoxInvisibleTransparency", "CollisionBoxVisibleColor", "CollisionBoxInvisibleColor", "BLOCKCAST_VERTICAL_PADDING", "AvatarSpacing", "MaxPreviewPlacementDistance", "DennisAvatar", "MagmaFiend", "Roxie", "JunkBot", "AvatarAccessoryRulesAssetIdPropertyTypes", "AvatarClothingRulesAssetIdPropertyTypes", "ClassicClothingTypes", "HumanoidDescriptionClothingTypes", "AccessoryTypeToAssetType", "AccessoryAssetTypes", "ClothingAssetTypes", "AvatarAnimationAssetIdPropertyToAnimationStringValue", "CollisionBoxPartNames", "HighlightProperties", "boundingBoxProps"}]
       66 LOADK                            R6 K50 ["AvatarPreviewContainer"]
       67 SETTABLEKS                       R6 R5 K24 ["ParentCameraName"]
       69 LOADK                            R6 K8 ["AvatarPreview"]
       70 SETTABLEKS                       R6 R5 K25 ["AvatarPreviewFolderName"]
       72 LOADK                            R6 K51 ["AvatarSettingsPreviewFolder"]
       73 SETTABLEKS                       R6 R5 K26 ["AvatarPreviewFolderTag"]
       75 LOADK                            R6 K52 [0.5]
       76 SETTABLEKS                       R6 R5 K27 ["CollisionBoxVisibleTransparency"]
       78 LOADN                            R6 1
       79 SETTABLEKS                       R6 R5 K28 ["CollisionBoxInvisibleTransparency"]
       81 GETIMPORT                        R6 K55 [Color3.fromRGB]
       83 LOADN                            R7 0
       84 LOADN                            R8 139
       85 LOADN                            R9 219
       86 CALL                             R6 3 1
       87 SETTABLEKS                       R6 R5 K29 ["CollisionBoxVisibleColor"]
       89 GETIMPORT                        R6 K55 [Color3.fromRGB]
       91 LOADN                            R7 163
       92 LOADN                            R8 162
       93 LOADN                            R9 165
       94 CALL                             R6 3 1
       95 SETTABLEKS                       R6 R5 K30 ["CollisionBoxInvisibleColor"]
       97 LOADK                            R6 K56 [0.001]
       98 SETTABLEKS                       R6 R5 K31 ["BLOCKCAST_VERTICAL_PADDING"]
      100 MOVE                             R6 R3
      101 CALL                             R6 0 1
      102 SETTABLEKS                       R6 R5 K32 ["AvatarSpacing"]
      104 LOADN                            R6 50
      105 SETTABLEKS                       R6 R5 K33 ["MaxPreviewPlacementDistance"]
      107 DUPTABLE                         R6 K63 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
      108 LOADK                            R7 K34 ["DennisAvatar"]
      109 SETTABLEKS                       R7 R6 K57 ["name"]
      111 LOADN                            R7 93
      112 SETTABLEKS                       R7 R6 K58 ["bundleId"]
      114 LOADK                            R7 K64 [2219390889]
      115 SETTABLEKS                       R7 R6 K59 ["outfitId"]
      117 LOADN                            R7 3
      118 SETTABLEKS                       R7 R6 K60 ["insertionOrder"]
      120 GETIMPORT                        R7 K68 [Enum.HumanoidRigType.R6]
      122 SETTABLEKS                       R7 R6 K61 ["defaultHumanoidRigType"]
      124 NEWTABLE                         R7 0 1
      126 NEWTABLE                         R8 4 0
      128 GETIMPORT                        R9 K70 [Enum.AccessoryType.Hair]
      130 SETTABLEKS                       R9 R8 K69 ["AccessoryType"]
      132 LOADK                            R9 K71 [4637254498]
      133 SETTABLEKS                       R9 R8 K72 ["AssetId"]
      135 LOADB                            R9 1
      136 SETTABLEKS                       R9 R8 K73 ["IsLayered"]
      138 GETTABLEKS                       R9 R4 K18 ["Hair"]
      140 SETTABLEKS                       R9 R8 K74 ["Order"]
      142 SETLIST                          R7 R8 1 [1]
      144 SETTABLEKS                       R7 R6 K62 ["accessories"]
      146 SETTABLEKS                       R6 R5 K34 ["DennisAvatar"]
      148 DUPTABLE                         R6 K63 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "accessories"}]
      149 LOADK                            R7 K35 ["MagmaFiend"]
      150 SETTABLEKS                       R7 R6 K57 ["name"]
      152 LOADN                            R7 173
      153 SETTABLEKS                       R7 R6 K58 ["bundleId"]
      155 LOADK                            R7 K75 [474312030]
      156 SETTABLEKS                       R7 R6 K59 ["outfitId"]
      158 LOADN                            R7 4
      159 SETTABLEKS                       R7 R6 K60 ["insertionOrder"]
      161 GETIMPORT                        R7 K77 [Enum.HumanoidRigType.R15]
      163 SETTABLEKS                       R7 R6 K61 ["defaultHumanoidRigType"]
      165 NEWTABLE                         R7 0 4
      167 NEWTABLE                         R8 2 0
      169 GETIMPORT                        R9 K79 [Enum.AccessoryType.Hat]
      171 SETTABLEKS                       R9 R8 K69 ["AccessoryType"]
      173 LOADK                            R9 K80 [131851650016277]
      174 SETTABLEKS                       R9 R8 K72 ["AssetId"]
      176 NEWTABLE                         R9 2 0
      178 GETIMPORT                        R10 K79 [Enum.AccessoryType.Hat]
      180 SETTABLEKS                       R10 R9 K69 ["AccessoryType"]
      182 LOADK                            R10 K81 [100932329]
      183 SETTABLEKS                       R10 R9 K72 ["AssetId"]
      185 NEWTABLE                         R10 4 0
      187 GETIMPORT                        R11 K83 [Enum.AccessoryType.LeftShoe]
      189 SETTABLEKS                       R11 R10 K69 ["AccessoryType"]
      191 LOADK                            R11 K84 [12518498047]
      192 SETTABLEKS                       R11 R10 K72 ["AssetId"]
      194 LOADB                            R11 1
      195 SETTABLEKS                       R11 R10 K73 ["IsLayered"]
      197 GETTABLEKS                       R11 R4 K19 ["Shoes"]
      199 SETTABLEKS                       R11 R10 K74 ["Order"]
      201 NEWTABLE                         R11 4 0
      203 GETIMPORT                        R12 K86 [Enum.AccessoryType.RightShoe]
      205 SETTABLEKS                       R12 R11 K69 ["AccessoryType"]
      207 LOADK                            R12 K87 [12518504805]
      208 SETTABLEKS                       R12 R11 K72 ["AssetId"]
      210 LOADB                            R12 1
      211 SETTABLEKS                       R12 R11 K73 ["IsLayered"]
      213 GETTABLEKS                       R12 R4 K19 ["Shoes"]
      215 SETTABLEKS                       R12 R11 K74 ["Order"]
      217 SETLIST                          R7 R8 4 [1]
      219 SETTABLEKS                       R7 R6 K62 ["accessories"]
      221 SETTABLEKS                       R6 R5 K35 ["MagmaFiend"]
      223 DUPTABLE                         R6 K92 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "keepDefaultAccessories", "scaleData", "accessories", "shirtId", "pantsId"}]
      224 LOADK                            R7 K36 ["Roxie"]
      225 SETTABLEKS                       R7 R6 K57 ["name"]
      227 LOADN                            R7 220
      228 SETTABLEKS                       R7 R6 K58 ["bundleId"]
      230 LOADK                            R7 K93 [12092458560]
      231 SETTABLEKS                       R7 R6 K59 ["outfitId"]
      233 LOADN                            R7 2
      234 SETTABLEKS                       R7 R6 K60 ["insertionOrder"]
      236 GETIMPORT                        R7 K77 [Enum.HumanoidRigType.R15]
      238 SETTABLEKS                       R7 R6 K61 ["defaultHumanoidRigType"]
      240 LOADB                            R7 1
      241 SETTABLEKS                       R7 R6 K88 ["keepDefaultAccessories"]
      243 DUPTABLE                         R7 K100 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
      244 LOADN                            R8 1
      245 SETTABLEKS                       R8 R7 K94 ["BodyTypeScale"]
      247 LOADK                            R8 K101 [0.85]
      248 SETTABLEKS                       R8 R7 K95 ["DepthScale"]
      250 LOADK                            R8 K102 [0.95]
      251 SETTABLEKS                       R8 R7 K96 ["HeadScale"]
      253 LOADK                            R8 K103 [0.9]
      254 SETTABLEKS                       R8 R7 K97 ["HeightScale"]
      256 LOADN                            R8 1
      257 SETTABLEKS                       R8 R7 K98 ["ProportionScale"]
      259 LOADK                            R8 K103 [0.9]
      260 SETTABLEKS                       R8 R7 K99 ["WidthScale"]
      262 SETTABLEKS                       R7 R6 K89 ["scaleData"]
      264 NEWTABLE                         R7 0 5
      266 NEWTABLE                         R8 4 0
      268 GETIMPORT                        R9 K105 [Enum.AccessoryType.TShirt]
      270 SETTABLEKS                       R9 R8 K69 ["AccessoryType"]
      272 LOADK                            R9 K106 [11625089378]
      273 SETTABLEKS                       R9 R8 K72 ["AssetId"]
      275 LOADB                            R9 1
      276 SETTABLEKS                       R9 R8 K73 ["IsLayered"]
      278 GETTABLEKS                       R9 R4 K21 ["Tops"]
      280 SETTABLEKS                       R9 R8 K74 ["Order"]
      282 NEWTABLE                         R9 4 0
      284 GETIMPORT                        R10 K108 [Enum.AccessoryType.Shorts]
      286 SETTABLEKS                       R10 R9 K69 ["AccessoryType"]
      288 LOADK                            R10 K109 [7192687500]
      289 SETTABLEKS                       R10 R9 K72 ["AssetId"]
      291 LOADB                            R10 1
      292 SETTABLEKS                       R10 R9 K73 ["IsLayered"]
      294 GETTABLEKS                       R10 R4 K20 ["Bottoms"]
      296 SETTABLEKS                       R10 R9 K74 ["Order"]
      298 NEWTABLE                         R10 4 0
      300 GETIMPORT                        R11 K111 [Enum.AccessoryType.Jacket]
      302 SETTABLEKS                       R11 R10 K69 ["AccessoryType"]
      304 LOADK                            R11 K112 [17259226347]
      305 SETTABLEKS                       R11 R10 K72 ["AssetId"]
      307 LOADB                            R11 1
      308 SETTABLEKS                       R11 R10 K73 ["IsLayered"]
      310 GETTABLEKS                       R11 R4 K22 ["Outerwear"]
      312 SETTABLEKS                       R11 R10 K74 ["Order"]
      314 NEWTABLE                         R11 4 0
      316 GETIMPORT                        R12 K83 [Enum.AccessoryType.LeftShoe]
      318 SETTABLEKS                       R12 R11 K69 ["AccessoryType"]
      320 LOADK                            R12 K113 [9614836327]
      321 SETTABLEKS                       R12 R11 K72 ["AssetId"]
      323 LOADB                            R12 1
      324 SETTABLEKS                       R12 R11 K73 ["IsLayered"]
      326 GETTABLEKS                       R12 R4 K19 ["Shoes"]
      328 SETTABLEKS                       R12 R11 K74 ["Order"]
      330 NEWTABLE                         R12 4 0
      332 GETIMPORT                        R13 K86 [Enum.AccessoryType.RightShoe]
      334 SETTABLEKS                       R13 R12 K69 ["AccessoryType"]
      336 LOADK                            R13 K114 [9614841343]
      337 SETTABLEKS                       R13 R12 K72 ["AssetId"]
      339 LOADB                            R13 1
      340 SETTABLEKS                       R13 R12 K73 ["IsLayered"]
      342 GETTABLEKS                       R13 R4 K19 ["Shoes"]
      344 SETTABLEKS                       R13 R12 K74 ["Order"]
      346 SETLIST                          R7 R8 5 [1]
      348 SETTABLEKS                       R7 R6 K62 ["accessories"]
      350 LOADK                            R7 K115 [855766176]
      351 SETTABLEKS                       R7 R6 K90 ["shirtId"]
      353 LOADK                            R7 K116 [855781078]
      354 SETTABLEKS                       R7 R6 K91 ["pantsId"]
      356 SETTABLEKS                       R6 R5 K36 ["Roxie"]
      358 DUPTABLE                         R6 K117 [{"name", "bundleId", "outfitId", "insertionOrder", "defaultHumanoidRigType", "scaleData", "accessories"}]
      359 LOADK                            R7 K37 ["JunkBot"]
      360 SETTABLEKS                       R7 R6 K57 ["name"]
      362 LOADN                            R7 77
      363 SETTABLEKS                       R7 R6 K58 ["bundleId"]
      365 LOADK                            R7 K118 [1704895554]
      366 SETTABLEKS                       R7 R6 K59 ["outfitId"]
      368 LOADN                            R7 1
      369 SETTABLEKS                       R7 R6 K60 ["insertionOrder"]
      371 GETIMPORT                        R7 K77 [Enum.HumanoidRigType.R15]
      373 SETTABLEKS                       R7 R6 K61 ["defaultHumanoidRigType"]
      375 DUPTABLE                         R7 K100 [{"BodyTypeScale", "DepthScale", "HeadScale", "HeightScale", "ProportionScale", "WidthScale"}]
      376 LOADN                            R8 1
      377 SETTABLEKS                       R8 R7 K94 ["BodyTypeScale"]
      379 LOADN                            R8 1
      380 SETTABLEKS                       R8 R7 K95 ["DepthScale"]
      382 LOADN                            R8 1
      383 SETTABLEKS                       R8 R7 K96 ["HeadScale"]
      385 LOADK                            R8 K119 [1.05]
      386 SETTABLEKS                       R8 R7 K97 ["HeightScale"]
      388 LOADN                            R8 0
      389 SETTABLEKS                       R8 R7 K98 ["ProportionScale"]
      391 LOADN                            R8 1
      392 SETTABLEKS                       R8 R7 K99 ["WidthScale"]
      394 SETTABLEKS                       R7 R6 K89 ["scaleData"]
      396 NEWTABLE                         R7 0 2
      398 NEWTABLE                         R8 2 0
      400 GETIMPORT                        R9 K79 [Enum.AccessoryType.Hat]
      402 SETTABLEKS                       R9 R8 K69 ["AccessoryType"]
      404 LOADK                            R9 K120 [4381828509]
      405 SETTABLEKS                       R9 R8 K72 ["AssetId"]
      407 NEWTABLE                         R9 4 0
      409 GETIMPORT                        R10 K122 [Enum.AccessoryType.Back]
      411 SETTABLEKS                       R10 R9 K69 ["AccessoryType"]
      413 LOADK                            R10 K123 [745788688]
      414 SETTABLEKS                       R10 R9 K72 ["AssetId"]
      416 LOADB                            R10 0
      417 SETTABLEKS                       R10 R9 K73 ["IsLayered"]
      419 SETLIST                          R7 R8 2 [1]
      421 SETTABLEKS                       R7 R6 K62 ["accessories"]
      423 SETTABLEKS                       R6 R5 K37 ["JunkBot"]
      425 NEWTABLE                         R6 0 8
      427 DUPTABLE                         R7 K126 [{"property", "type"}]
      428 LOADK                            R8 K127 ["CustomHairAccessory"]
      429 SETTABLEKS                       R8 R7 K124 ["property"]
      431 GETIMPORT                        R8 K130 [Enum.AssetType.HairAccessory]
      433 SETTABLEKS                       R8 R7 K125 ["type"]
      435 DUPTABLE                         R8 K126 [{"property", "type"}]
      436 LOADK                            R9 K131 ["CustomHeadAccessory"]
      437 SETTABLEKS                       R9 R8 K124 ["property"]
      439 GETIMPORT                        R9 K132 [Enum.AssetType.Hat]
      441 SETTABLEKS                       R9 R8 K125 ["type"]
      443 DUPTABLE                         R9 K126 [{"property", "type"}]
      444 LOADK                            R10 K133 ["CustomFaceAccessory"]
      445 SETTABLEKS                       R10 R9 K124 ["property"]
      447 GETIMPORT                        R10 K135 [Enum.AssetType.FaceAccessory]
      449 SETTABLEKS                       R10 R9 K125 ["type"]
      451 DUPTABLE                         R10 K126 [{"property", "type"}]
      452 LOADK                            R11 K136 ["CustomNeckAccessory"]
      453 SETTABLEKS                       R11 R10 K124 ["property"]
      455 GETIMPORT                        R11 K138 [Enum.AssetType.NeckAccessory]
      457 SETTABLEKS                       R11 R10 K125 ["type"]
      459 DUPTABLE                         R11 K126 [{"property", "type"}]
      460 LOADK                            R12 K139 ["CustomShoulderAccessory"]
      461 SETTABLEKS                       R12 R11 K124 ["property"]
      463 GETIMPORT                        R12 K141 [Enum.AssetType.ShoulderAccessory]
      465 SETTABLEKS                       R12 R11 K125 ["type"]
      467 DUPTABLE                         R12 K126 [{"property", "type"}]
      468 LOADK                            R13 K142 ["CustomFrontAccessory"]
      469 SETTABLEKS                       R13 R12 K124 ["property"]
      471 GETIMPORT                        R13 K144 [Enum.AssetType.FrontAccessory]
      473 SETTABLEKS                       R13 R12 K125 ["type"]
      475 DUPTABLE                         R13 K126 [{"property", "type"}]
      476 LOADK                            R14 K145 ["CustomBackAccessory"]
      477 SETTABLEKS                       R14 R13 K124 ["property"]
      479 GETIMPORT                        R14 K147 [Enum.AssetType.BackAccessory]
      481 SETTABLEKS                       R14 R13 K125 ["type"]
      483 DUPTABLE                         R14 K126 [{"property", "type"}]
      484 LOADK                            R15 K148 ["CustomWaistAccessory"]
      485 SETTABLEKS                       R15 R14 K124 ["property"]
      487 GETIMPORT                        R15 K150 [Enum.AssetType.WaistAccessory]
      489 SETTABLEKS                       R15 R14 K125 ["type"]
      491 SETLIST                          R6 R7 8 [1]
      493 SETTABLEKS                       R6 R5 K38 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
      495 NEWTABLE                         R6 0 12
      497 DUPTABLE                         R7 K126 [{"property", "type"}]
      498 LOADK                            R8 K151 ["CustomTShirtAccessory"]
      499 SETTABLEKS                       R8 R7 K124 ["property"]
      501 GETIMPORT                        R8 K153 [Enum.AssetType.TShirtAccessory]
      503 SETTABLEKS                       R8 R7 K125 ["type"]
      505 DUPTABLE                         R8 K126 [{"property", "type"}]
      506 LOADK                            R9 K154 ["CustomShirtAccessory"]
      507 SETTABLEKS                       R9 R8 K124 ["property"]
      509 GETIMPORT                        R9 K156 [Enum.AssetType.ShirtAccessory]
      511 SETTABLEKS                       R9 R8 K125 ["type"]
      513 DUPTABLE                         R9 K126 [{"property", "type"}]
      514 LOADK                            R10 K157 ["CustomJacketAccessory"]
      515 SETTABLEKS                       R10 R9 K124 ["property"]
      517 GETIMPORT                        R10 K159 [Enum.AssetType.JacketAccessory]
      519 SETTABLEKS                       R10 R9 K125 ["type"]
      521 DUPTABLE                         R10 K126 [{"property", "type"}]
      522 LOADK                            R11 K160 ["CustomSweaterAccessory"]
      523 SETTABLEKS                       R11 R10 K124 ["property"]
      525 GETIMPORT                        R11 K162 [Enum.AssetType.SweaterAccessory]
      527 SETTABLEKS                       R11 R10 K125 ["type"]
      529 DUPTABLE                         R11 K126 [{"property", "type"}]
      530 LOADK                            R12 K163 ["CustomPantsAccessory"]
      531 SETTABLEKS                       R12 R11 K124 ["property"]
      533 GETIMPORT                        R12 K165 [Enum.AssetType.PantsAccessory]
      535 SETTABLEKS                       R12 R11 K125 ["type"]
      537 DUPTABLE                         R12 K126 [{"property", "type"}]
      538 LOADK                            R13 K166 ["CustomShortsAccessory"]
      539 SETTABLEKS                       R13 R12 K124 ["property"]
      541 GETIMPORT                        R13 K168 [Enum.AssetType.ShortsAccessory]
      543 SETTABLEKS                       R13 R12 K125 ["type"]
      545 DUPTABLE                         R13 K126 [{"property", "type"}]
      546 LOADK                            R14 K169 ["CustomDressSkirtAccessory"]
      547 SETTABLEKS                       R14 R13 K124 ["property"]
      549 GETIMPORT                        R14 K171 [Enum.AssetType.DressSkirtAccessory]
      551 SETTABLEKS                       R14 R13 K125 ["type"]
      553 DUPTABLE                         R14 K126 [{"property", "type"}]
      554 LOADK                            R15 K172 ["CustomLeftShoesAccessory"]
      555 SETTABLEKS                       R15 R14 K124 ["property"]
      557 GETIMPORT                        R15 K174 [Enum.AssetType.LeftShoeAccessory]
      559 SETTABLEKS                       R15 R14 K125 ["type"]
      561 DUPTABLE                         R15 K126 [{"property", "type"}]
      562 LOADK                            R16 K175 ["CustomRightShoesAccessory"]
      563 SETTABLEKS                       R16 R15 K124 ["property"]
      565 GETIMPORT                        R16 K177 [Enum.AssetType.RightShoeAccessory]
      567 SETTABLEKS                       R16 R15 K125 ["type"]
      569 DUPTABLE                         R16 K126 [{"property", "type"}]
      570 LOADK                            R17 K178 ["CustomClassicShirtsAccessory"]
      571 SETTABLEKS                       R17 R16 K124 ["property"]
      573 GETIMPORT                        R17 K180 [Enum.AssetType.Shirt]
      575 SETTABLEKS                       R17 R16 K125 ["type"]
      577 DUPTABLE                         R17 K126 [{"property", "type"}]
      578 LOADK                            R18 K181 ["CustomClassicTShirtsAccessory"]
      579 SETTABLEKS                       R18 R17 K124 ["property"]
      581 GETIMPORT                        R18 K182 [Enum.AssetType.TShirt]
      583 SETTABLEKS                       R18 R17 K125 ["type"]
      585 DUPTABLE                         R18 K126 [{"property", "type"}]
      586 LOADK                            R19 K183 ["CustomClassicPantsAccessory"]
      587 SETTABLEKS                       R19 R18 K124 ["property"]
      589 GETIMPORT                        R19 K185 [Enum.AssetType.Pants]
      591 SETTABLEKS                       R19 R18 K125 ["type"]
      593 SETLIST                          R6 R7 12 [1]
      595 SETTABLEKS                       R6 R5 K39 ["AvatarClothingRulesAssetIdPropertyTypes"]
      597 NEWTABLE                         R6 0 3
      599 GETIMPORT                        R7 K182 [Enum.AssetType.TShirt]
      601 GETTABLEKS                       R7 R7 K186 ["Name"]
      603 GETIMPORT                        R8 K180 [Enum.AssetType.Shirt]
      605 GETTABLEKS                       R8 R8 K186 ["Name"]
      607 GETIMPORT                        R9 K185 [Enum.AssetType.Pants]
      609 GETTABLEKS                       R9 R9 K186 ["Name"]
      611 SETLIST                          R6 R7 3 [1]
      613 SETTABLEKS                       R6 R5 K40 ["ClassicClothingTypes"]
      615 NEWTABLE                         R6 4 0
      617 GETIMPORT                        R7 K182 [Enum.AssetType.TShirt]
      619 GETTABLEKS                       R7 R7 K186 ["Name"]
      621 LOADK                            R8 K187 ["GraphicTShirt"]
      622 SETTABLE                         R8 R6 R7
      623 GETIMPORT                        R7 K180 [Enum.AssetType.Shirt]
      625 GETTABLEKS                       R7 R7 K186 ["Name"]
      627 LOADK                            R8 K179 ["Shirt"]
      628 SETTABLE                         R8 R6 R7
      629 GETIMPORT                        R7 K185 [Enum.AssetType.Pants]
      631 GETTABLEKS                       R7 R7 K186 ["Name"]
      633 LOADK                            R8 K184 ["Pants"]
      634 SETTABLE                         R8 R6 R7
      635 SETTABLEKS                       R6 R5 K41 ["HumanoidDescriptionClothingTypes"]
      637 NEWTABLE                         R6 32 0
      639 GETIMPORT                        R7 K79 [Enum.AccessoryType.Hat]
      641 GETIMPORT                        R8 K132 [Enum.AssetType.Hat]
      643 GETTABLEKS                       R8 R8 K186 ["Name"]
      645 SETTABLE                         R8 R6 R7
      646 GETIMPORT                        R7 K70 [Enum.AccessoryType.Hair]
      648 GETIMPORT                        R8 K130 [Enum.AssetType.HairAccessory]
      650 GETTABLEKS                       R8 R8 K186 ["Name"]
      652 SETTABLE                         R8 R6 R7
      653 GETIMPORT                        R7 K188 [Enum.AccessoryType.Face]
      655 GETIMPORT                        R8 K135 [Enum.AssetType.FaceAccessory]
      657 GETTABLEKS                       R8 R8 K186 ["Name"]
      659 SETTABLE                         R8 R6 R7
      660 GETIMPORT                        R7 K190 [Enum.AccessoryType.Neck]
      662 GETIMPORT                        R8 K138 [Enum.AssetType.NeckAccessory]
      664 GETTABLEKS                       R8 R8 K186 ["Name"]
      666 SETTABLE                         R8 R6 R7
      667 GETIMPORT                        R7 K192 [Enum.AccessoryType.Shoulder]
      669 GETIMPORT                        R8 K141 [Enum.AssetType.ShoulderAccessory]
      671 GETTABLEKS                       R8 R8 K186 ["Name"]
      673 SETTABLE                         R8 R6 R7
      674 GETIMPORT                        R7 K194 [Enum.AccessoryType.Front]
      676 GETIMPORT                        R8 K144 [Enum.AssetType.FrontAccessory]
      678 GETTABLEKS                       R8 R8 K186 ["Name"]
      680 SETTABLE                         R8 R6 R7
      681 GETIMPORT                        R7 K122 [Enum.AccessoryType.Back]
      683 GETIMPORT                        R8 K147 [Enum.AssetType.BackAccessory]
      685 GETTABLEKS                       R8 R8 K186 ["Name"]
      687 SETTABLE                         R8 R6 R7
      688 GETIMPORT                        R7 K196 [Enum.AccessoryType.Waist]
      690 GETIMPORT                        R8 K150 [Enum.AssetType.WaistAccessory]
      692 GETTABLEKS                       R8 R8 K186 ["Name"]
      694 SETTABLE                         R8 R6 R7
      695 GETIMPORT                        R7 K105 [Enum.AccessoryType.TShirt]
      697 GETIMPORT                        R8 K153 [Enum.AssetType.TShirtAccessory]
      699 GETTABLEKS                       R8 R8 K186 ["Name"]
      701 SETTABLE                         R8 R6 R7
      702 GETIMPORT                        R7 K197 [Enum.AccessoryType.Shirt]
      704 GETIMPORT                        R8 K156 [Enum.AssetType.ShirtAccessory]
      706 GETTABLEKS                       R8 R8 K186 ["Name"]
      708 SETTABLE                         R8 R6 R7
      709 GETIMPORT                        R7 K111 [Enum.AccessoryType.Jacket]
      711 GETIMPORT                        R8 K159 [Enum.AssetType.JacketAccessory]
      713 GETTABLEKS                       R8 R8 K186 ["Name"]
      715 SETTABLE                         R8 R6 R7
      716 GETIMPORT                        R7 K199 [Enum.AccessoryType.Sweater]
      718 GETIMPORT                        R8 K162 [Enum.AssetType.SweaterAccessory]
      720 GETTABLEKS                       R8 R8 K186 ["Name"]
      722 SETTABLE                         R8 R6 R7
      723 GETIMPORT                        R7 K200 [Enum.AccessoryType.Pants]
      725 GETIMPORT                        R8 K165 [Enum.AssetType.PantsAccessory]
      727 GETTABLEKS                       R8 R8 K186 ["Name"]
      729 SETTABLE                         R8 R6 R7
      730 GETIMPORT                        R7 K108 [Enum.AccessoryType.Shorts]
      732 GETIMPORT                        R8 K168 [Enum.AssetType.ShortsAccessory]
      734 GETTABLEKS                       R8 R8 K186 ["Name"]
      736 SETTABLE                         R8 R6 R7
      737 GETIMPORT                        R7 K202 [Enum.AccessoryType.DressSkirt]
      739 GETIMPORT                        R8 K171 [Enum.AssetType.DressSkirtAccessory]
      741 GETTABLEKS                       R8 R8 K186 ["Name"]
      743 SETTABLE                         R8 R6 R7
      744 GETIMPORT                        R7 K83 [Enum.AccessoryType.LeftShoe]
      746 GETIMPORT                        R8 K174 [Enum.AssetType.LeftShoeAccessory]
      748 GETTABLEKS                       R8 R8 K186 ["Name"]
      750 SETTABLE                         R8 R6 R7
      751 GETIMPORT                        R7 K86 [Enum.AccessoryType.RightShoe]
      753 GETIMPORT                        R8 K177 [Enum.AssetType.RightShoeAccessory]
      755 GETTABLEKS                       R8 R8 K186 ["Name"]
      757 SETTABLE                         R8 R6 R7
      758 SETTABLEKS                       R6 R5 K42 ["AccessoryTypeToAssetType"]
      760 NEWTABLE                         R6 8 0
      762 GETIMPORT                        R7 K132 [Enum.AssetType.Hat]
      764 GETTABLEKS                       R7 R7 K186 ["Name"]
      766 LOADB                            R8 1
      767 SETTABLE                         R8 R6 R7
      768 GETIMPORT                        R7 K130 [Enum.AssetType.HairAccessory]
      770 GETTABLEKS                       R7 R7 K186 ["Name"]
      772 LOADB                            R8 1
      773 SETTABLE                         R8 R6 R7
      774 GETIMPORT                        R7 K135 [Enum.AssetType.FaceAccessory]
      776 GETTABLEKS                       R7 R7 K186 ["Name"]
      778 LOADB                            R8 1
      779 SETTABLE                         R8 R6 R7
      780 GETIMPORT                        R7 K138 [Enum.AssetType.NeckAccessory]
      782 GETTABLEKS                       R7 R7 K186 ["Name"]
      784 LOADB                            R8 1
      785 SETTABLE                         R8 R6 R7
      786 GETIMPORT                        R7 K141 [Enum.AssetType.ShoulderAccessory]
      788 GETTABLEKS                       R7 R7 K186 ["Name"]
      790 LOADB                            R8 1
      791 SETTABLE                         R8 R6 R7
      792 GETIMPORT                        R7 K144 [Enum.AssetType.FrontAccessory]
      794 GETTABLEKS                       R7 R7 K186 ["Name"]
      796 LOADB                            R8 1
      797 SETTABLE                         R8 R6 R7
      798 GETIMPORT                        R7 K147 [Enum.AssetType.BackAccessory]
      800 GETTABLEKS                       R7 R7 K186 ["Name"]
      802 LOADB                            R8 1
      803 SETTABLE                         R8 R6 R7
      804 GETIMPORT                        R7 K150 [Enum.AssetType.WaistAccessory]
      806 GETTABLEKS                       R7 R7 K186 ["Name"]
      808 LOADB                            R8 1
      809 SETTABLE                         R8 R6 R7
      810 SETTABLEKS                       R6 R5 K43 ["AccessoryAssetTypes"]
      812 NEWTABLE                         R6 16 0
      814 GETIMPORT                        R7 K153 [Enum.AssetType.TShirtAccessory]
      816 GETTABLEKS                       R7 R7 K186 ["Name"]
      818 LOADB                            R8 1
      819 SETTABLE                         R8 R6 R7
      820 GETIMPORT                        R7 K156 [Enum.AssetType.ShirtAccessory]
      822 GETTABLEKS                       R7 R7 K186 ["Name"]
      824 LOADB                            R8 1
      825 SETTABLE                         R8 R6 R7
      826 GETIMPORT                        R7 K159 [Enum.AssetType.JacketAccessory]
      828 GETTABLEKS                       R7 R7 K186 ["Name"]
      830 LOADB                            R8 1
      831 SETTABLE                         R8 R6 R7
      832 GETIMPORT                        R7 K162 [Enum.AssetType.SweaterAccessory]
      834 GETTABLEKS                       R7 R7 K186 ["Name"]
      836 LOADB                            R8 1
      837 SETTABLE                         R8 R6 R7
      838 GETIMPORT                        R7 K165 [Enum.AssetType.PantsAccessory]
      840 GETTABLEKS                       R7 R7 K186 ["Name"]
      842 LOADB                            R8 1
      843 SETTABLE                         R8 R6 R7
      844 GETIMPORT                        R7 K168 [Enum.AssetType.ShortsAccessory]
      846 GETTABLEKS                       R7 R7 K186 ["Name"]
      848 LOADB                            R8 1
      849 SETTABLE                         R8 R6 R7
      850 GETIMPORT                        R7 K171 [Enum.AssetType.DressSkirtAccessory]
      852 GETTABLEKS                       R7 R7 K186 ["Name"]
      854 LOADB                            R8 1
      855 SETTABLE                         R8 R6 R7
      856 GETIMPORT                        R7 K174 [Enum.AssetType.LeftShoeAccessory]
      858 GETTABLEKS                       R7 R7 K186 ["Name"]
      860 LOADB                            R8 1
      861 SETTABLE                         R8 R6 R7
      862 GETIMPORT                        R7 K177 [Enum.AssetType.RightShoeAccessory]
      864 GETTABLEKS                       R7 R7 K186 ["Name"]
      866 LOADB                            R8 1
      867 SETTABLE                         R8 R6 R7
      868 GETIMPORT                        R7 K182 [Enum.AssetType.TShirt]
      870 GETTABLEKS                       R7 R7 K186 ["Name"]
      872 LOADB                            R8 1
      873 SETTABLE                         R8 R6 R7
      874 GETIMPORT                        R7 K180 [Enum.AssetType.Shirt]
      876 GETTABLEKS                       R7 R7 K186 ["Name"]
      878 LOADB                            R8 1
      879 SETTABLE                         R8 R6 R7
      880 GETIMPORT                        R7 K185 [Enum.AssetType.Pants]
      882 GETTABLEKS                       R7 R7 K186 ["Name"]
      884 LOADB                            R8 1
      885 SETTABLE                         R8 R6 R7
      886 SETTABLEKS                       R6 R5 K44 ["ClothingAssetTypes"]
      888 NEWTABLE                         R6 16 0
      890 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      891 LOADK                            R8 K206 ["run"]
      892 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      894 LOADK                            R8 K207 ["RunAnim"]
      895 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      897 SETTABLEKS                       R7 R6 K208 ["CustomRunAnimation"]
      899 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      900 LOADK                            R8 K209 ["walk"]
      901 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      903 LOADK                            R8 K210 ["WalkAnim"]
      904 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      906 SETTABLEKS                       R7 R6 K211 ["CustomWalkAnimation"]
      908 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      909 LOADK                            R8 K212 ["fall"]
      910 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      912 LOADK                            R8 K213 ["FallAnim"]
      913 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      915 SETTABLEKS                       R7 R6 K214 ["CustomFallAnimation"]
      917 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      918 LOADK                            R8 K215 ["jump"]
      919 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      921 LOADK                            R8 K216 ["JumpAnim"]
      922 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      924 SETTABLEKS                       R7 R6 K217 ["CustomJumpAnimation"]
      926 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      927 LOADK                            R8 K218 ["idle"]
      928 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      930 LOADK                            R8 K219 ["Animation1"]
      931 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      933 SETTABLEKS                       R7 R6 K220 ["CustomIdleAnimation"]
      935 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      936 LOADK                            R8 K218 ["idle"]
      937 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      939 LOADK                            R8 K221 ["Animation2"]
      940 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      942 SETTABLEKS                       R7 R6 K222 ["CustomIdleAlt1Animation"]
      944 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      945 LOADK                            R8 K218 ["idle"]
      946 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      948 LOADK                            R8 K223 ["Animation3"]
      949 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      951 SETTABLEKS                       R7 R6 K224 ["CustomIdleAlt2Animation"]
      953 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      954 LOADK                            R8 K225 ["swim"]
      955 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      957 LOADK                            R8 K226 ["Swim"]
      958 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      960 SETTABLEKS                       R7 R6 K227 ["CustomSwimAnimation"]
      962 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      963 LOADK                            R8 K228 ["swimidle"]
      964 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      966 LOADK                            R8 K229 ["SwimIdle"]
      967 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      969 SETTABLEKS                       R7 R6 K230 ["CustomSwimIdleAnimation"]
      971 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      972 LOADK                            R8 K231 ["climb"]
      973 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      975 LOADK                            R8 K232 ["ClimbAnim"]
      976 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      978 SETTABLEKS                       R7 R6 K233 ["CustomClimbAnimation"]
      980 DUPTABLE                         R7 K205 [{"stringValueInstanceName", "animationInstanceName"}]
      981 LOADK                            R8 K234 ["mood"]
      982 SETTABLEKS                       R8 R7 K203 ["stringValueInstanceName"]
      984 LOADK                            R8 K219 ["Animation1"]
      985 SETTABLEKS                       R8 R7 K204 ["animationInstanceName"]
      987 SETTABLEKS                       R7 R6 K235 ["CustomMoodAnimation"]
      989 SETTABLEKS                       R6 R5 K45 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
      991 NEWTABLE                         R6 0 7
      993 LOADK                            R7 K236 ["CollisionPart"]
      994 LOADK                            R8 K237 ["CollisionHead"]
      995 LOADK                            R9 K238 ["CollisionTorso"]
      996 LOADK                            R10 K239 ["CollisionLeftLeg"]
      997 LOADK                            R11 K240 ["CollisionRightLeg"]
      998 LOADK                            R12 K241 ["CollisionLeftArm"]
      999 LOADK                            R13 K242 ["CollisionRightArm"]
     1000 SETLIST                          R6 R7 7 [1]
     1002 SETTABLEKS                       R6 R5 K46 ["CollisionBoxPartNames"]
     1004 DUPTABLE                         R6 K248 [{"HighlightName", "FillColor", "OutlineColor", "FillTransparency", "OutlineTransparency"}]
     1005 LOADK                            R7 K249 ["AccessoryHighlight"]
     1006 SETTABLEKS                       R7 R6 K243 ["HighlightName"]
     1008 GETIMPORT                        R7 K55 [Color3.fromRGB]
     1010 LOADN                            R8 255
     1011 LOADN                            R9 0
     1012 LOADN                            R10 0
     1013 CALL                             R7 3 1
     1014 SETTABLEKS                       R7 R6 K244 ["FillColor"]
     1016 GETIMPORT                        R7 K55 [Color3.fromRGB]
     1018 LOADN                            R8 255
     1019 LOADN                            R9 255
     1020 LOADN                            R10 255
     1021 CALL                             R7 3 1
     1022 SETTABLEKS                       R7 R6 K245 ["OutlineColor"]
     1024 LOADK                            R7 K250 [0.15]
     1025 SETTABLEKS                       R7 R6 K246 ["FillTransparency"]
     1027 LOADK                            R7 K52 [0.5]
     1028 SETTABLEKS                       R7 R6 K247 ["OutlineTransparency"]
     1030 SETTABLEKS                       R6 R5 K47 ["HighlightProperties"]
     1032 DUPTABLE                         R6 K255 [{"name", "tag", "color", "transparency", "material"}]
     1033 LOADK                            R7 K0 ["script"]
     1034 SETTABLEKS                       R7 R6 K57 ["name"]
     1036 LOADK                            R7 K1 [script]
     1037 SETTABLEKS                       R7 R6 K251 ["tag"]
     1039 GETIMPORT                        R7 K55 [Color3.fromRGB]
     1041 LOADN                            R8 0
     1042 LOADN                            R9 139
     1043 LOADN                            R10 219
     1044 CALL                             R7 3 1
     1045 SETTABLEKS                       R7 R6 K252 ["color"]
     1047 LOADK                            R7 K2 ["AvatarSettings"]
     1048 SETTABLEKS                       R7 R6 K253 ["transparency"]
     1050 GETIMPORT                        R7 K261 [Enum.Material.SmoothPlastic]
     1052 SETTABLEKS                       R7 R6 K254 ["material"]
     1054 SETTABLEKS                       R6 R5 K48 ["boundingBoxProps"]
     1056 RETURN                           R5 1
