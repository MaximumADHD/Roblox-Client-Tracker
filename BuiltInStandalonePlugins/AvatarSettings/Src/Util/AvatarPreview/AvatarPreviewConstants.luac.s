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
       41 DUPTABLE                         R5 K67 [{["ParentCameraName"] = "AvatarPreviewContainer", ["AvatarPreviewFolderName"] = "AvatarPreview", ["AvatarPreviewFolderTag"] = "AvatarSettingsPreviewFolder", ["CollisionBoxVisibleTransparency"] = 0.5, ["CollisionBoxInvisibleTransparency"] = 1, ["CollisionBoxVisibleColor"], ["CollisionBoxInvisibleColor"], ["HitboxVisibleColor"], ["HitboxPartName"] = "HitboxPart", ["HitboxMarkerAttribute"] = "RBXAvatarRulesHitbox", ["BLOCKCAST_VERTICAL_PADDING"] = 0.001, ["AvatarSpacing"], ["MaxPreviewPlacementDistance"] = 50, ["DennisAvatar"], ["MagmaFiend"], ["Roxie"], ["JunkBot"], ["AvatarAccessoryRulesAssetIdPropertyTypes"], ["AvatarClothingRulesAssetIdPropertyTypes"], ["ClassicClothingTypes"], ["HumanoidDescriptionClothingTypes"], ["AccessoryTypeToAssetType"], ["AccessoryAssetTypes"], ["ClothingAssetTypes"], ["AvatarAnimationAssetIdPropertyToAnimationStringValue"], ["CollisionBoxPartNames"], ["HighlightProperties"], ["boundingBoxProps"]}]
       42 GETIMPORT                        R6 K70 [Color3.fromRGB]
       44 LOADN                            R7 0
       45 LOADN                            R8 139
       46 LOADN                            R9 219
       47 CALL                             R6 3 1
       48 SETTABLEKS                       R6 R5 K40 ["CollisionBoxVisibleColor"]
       50 GETIMPORT                        R6 K70 [Color3.fromRGB]
       52 LOADN                            R7 163
       53 LOADN                            R8 162
       54 LOADN                            R9 165
       55 CALL                             R6 3 1
       56 SETTABLEKS                       R6 R5 K41 ["CollisionBoxInvisibleColor"]
       58 GETIMPORT                        R6 K70 [Color3.fromRGB]
       60 LOADN                            R7 0
       61 LOADN                            R8 176
       62 LOADN                            R9 80
       63 CALL                             R6 3 1
       64 SETTABLEKS                       R6 R5 K42 ["HitboxVisibleColor"]
       66 MOVE                             R6 R3
       67 CALL                             R6 0 1
       68 SETTABLEKS                       R6 R5 K49 ["AvatarSpacing"]
       70 DUPTABLE                         R6 K79 [{["name"] = "DennisAvatar", ["bundleId"] = 605, ["outfitId"] = 2219390889, ["insertionOrder"] = 3, ["defaultHumanoidRigType"], ["accessories"]}]
       71 GETIMPORT                        R7 K83 [Enum.HumanoidRigType.R6]
       73 SETTABLEKS                       R7 R6 K77 ["defaultHumanoidRigType"]
       75 NEWTABLE                         R7 0 1
       77 NEWTABLE                         R8 4 0
       79 GETIMPORT                        R9 K85 [Enum.AccessoryType.Hair]
       81 SETTABLEKS                       R9 R8 K84 ["AccessoryType"]
       83 LOADK                            R9 K86 [4637254498]
       84 SETTABLEKS                       R9 R8 K87 ["AssetId"]
       86 LOADB                            R9 1
       87 SETTABLEKS                       R9 R8 K88 ["IsLayered"]
       89 LOADN                            R9 4
       90 SETTABLEKS                       R9 R8 K89 ["Order"]
       92 SETLIST                          R7 R8 1 [1]
       94 SETTABLEKS                       R7 R6 K78 ["accessories"]
       96 SETTABLEKS                       R6 R5 K52 ["DennisAvatar"]
       98 DUPTABLE                         R6 K92 [{["name"] = "MagmaFiend", ["bundleId"] = 429, ["outfitId"] = 474312030, ["insertionOrder"] = 4, ["defaultHumanoidRigType"], ["accessories"]}]
       99 GETIMPORT                        R7 K94 [Enum.HumanoidRigType.R15]
      101 SETTABLEKS                       R7 R6 K77 ["defaultHumanoidRigType"]
      103 NEWTABLE                         R7 0 4
      105 NEWTABLE                         R8 2 0
      107 GETIMPORT                        R9 K96 [Enum.AccessoryType.Hat]
      109 SETTABLEKS                       R9 R8 K84 ["AccessoryType"]
      111 LOADK                            R9 K97 [131851650016277]
      112 SETTABLEKS                       R9 R8 K87 ["AssetId"]
      114 NEWTABLE                         R9 2 0
      116 GETIMPORT                        R10 K96 [Enum.AccessoryType.Hat]
      118 SETTABLEKS                       R10 R9 K84 ["AccessoryType"]
      120 LOADK                            R10 K98 [100932329]
      121 SETTABLEKS                       R10 R9 K87 ["AssetId"]
      123 NEWTABLE                         R10 4 0
      125 GETIMPORT                        R11 K100 [Enum.AccessoryType.LeftShoe]
      127 SETTABLEKS                       R11 R10 K84 ["AccessoryType"]
      129 LOADK                            R11 K101 [12518498047]
      130 SETTABLEKS                       R11 R10 K87 ["AssetId"]
      132 LOADB                            R11 1
      133 SETTABLEKS                       R11 R10 K88 ["IsLayered"]
      135 LOADN                            R11 5
      136 SETTABLEKS                       R11 R10 K89 ["Order"]
      138 NEWTABLE                         R11 4 0
      140 GETIMPORT                        R12 K103 [Enum.AccessoryType.RightShoe]
      142 SETTABLEKS                       R12 R11 K84 ["AccessoryType"]
      144 LOADK                            R12 K104 [12518504805]
      145 SETTABLEKS                       R12 R11 K87 ["AssetId"]
      147 LOADB                            R12 1
      148 SETTABLEKS                       R12 R11 K88 ["IsLayered"]
      150 LOADN                            R12 5
      151 SETTABLEKS                       R12 R11 K89 ["Order"]
      153 SETLIST                          R7 R8 4 [1]
      155 SETTABLEKS                       R7 R6 K78 ["accessories"]
      157 SETTABLEKS                       R6 R5 K53 ["MagmaFiend"]
      159 DUPTABLE                         R6 K114 [{["name"] = "Roxie", ["bundleId"] = 988, ["outfitId"] = 12092458560, ["insertionOrder"] = 2, ["defaultHumanoidRigType"], ["keepDefaultAccessories"] = True, ["scaleData"], ["accessories"], ["shirtId"] = 855766176, ["pantsId"] = 855781078}]
      160 GETIMPORT                        R7 K94 [Enum.HumanoidRigType.R15]
      162 SETTABLEKS                       R7 R6 K77 ["defaultHumanoidRigType"]
      164 DUPTABLE                         R7 K124 [{["BodyTypeScale"] = 1, ["DepthScale"] = 0.85, ["HeadScale"] = 0.95, ["HeightScale"] = 0.9, ["ProportionScale"] = 1, ["WidthScale"] = 0.9}]
      165 SETTABLEKS                       R7 R6 K109 ["scaleData"]
      167 NEWTABLE                         R7 0 5
      169 NEWTABLE                         R8 4 0
      171 GETIMPORT                        R9 K126 [Enum.AccessoryType.TShirt]
      173 SETTABLEKS                       R9 R8 K84 ["AccessoryType"]
      175 LOADK                            R9 K127 [11625089378]
      176 SETTABLEKS                       R9 R8 K87 ["AssetId"]
      178 LOADB                            R9 1
      179 SETTABLEKS                       R9 R8 K88 ["IsLayered"]
      181 LOADN                            R9 7
      182 SETTABLEKS                       R9 R8 K89 ["Order"]
      184 NEWTABLE                         R9 4 0
      186 GETIMPORT                        R10 K129 [Enum.AccessoryType.Shorts]
      188 SETTABLEKS                       R10 R9 K84 ["AccessoryType"]
      190 LOADK                            R10 K130 [7192687500]
      191 SETTABLEKS                       R10 R9 K87 ["AssetId"]
      193 LOADB                            R10 1
      194 SETTABLEKS                       R10 R9 K88 ["IsLayered"]
      196 LOADN                            R10 6
      197 SETTABLEKS                       R10 R9 K89 ["Order"]
      199 NEWTABLE                         R10 4 0
      201 GETIMPORT                        R11 K132 [Enum.AccessoryType.Jacket]
      203 SETTABLEKS                       R11 R10 K84 ["AccessoryType"]
      205 LOADK                            R11 K133 [17259226347]
      206 SETTABLEKS                       R11 R10 K87 ["AssetId"]
      208 LOADB                            R11 1
      209 SETTABLEKS                       R11 R10 K88 ["IsLayered"]
      211 LOADN                            R11 8
      212 SETTABLEKS                       R11 R10 K89 ["Order"]
      214 NEWTABLE                         R11 4 0
      216 GETIMPORT                        R12 K100 [Enum.AccessoryType.LeftShoe]
      218 SETTABLEKS                       R12 R11 K84 ["AccessoryType"]
      220 LOADK                            R12 K134 [9614836327]
      221 SETTABLEKS                       R12 R11 K87 ["AssetId"]
      223 LOADB                            R12 1
      224 SETTABLEKS                       R12 R11 K88 ["IsLayered"]
      226 LOADN                            R12 5
      227 SETTABLEKS                       R12 R11 K89 ["Order"]
      229 NEWTABLE                         R12 4 0
      231 GETIMPORT                        R13 K103 [Enum.AccessoryType.RightShoe]
      233 SETTABLEKS                       R13 R12 K84 ["AccessoryType"]
      235 LOADK                            R13 K135 [9614841343]
      236 SETTABLEKS                       R13 R12 K87 ["AssetId"]
      238 LOADB                            R13 1
      239 SETTABLEKS                       R13 R12 K88 ["IsLayered"]
      241 LOADN                            R13 5
      242 SETTABLEKS                       R13 R12 K89 ["Order"]
      244 SETLIST                          R7 R8 5 [1]
      246 SETTABLEKS                       R7 R6 K78 ["accessories"]
      248 SETTABLEKS                       R6 R5 K54 ["Roxie"]
      250 DUPTABLE                         R6 K138 [{["name"] = "JunkBot", ["bundleId"] = 589, ["outfitId"] = 1704895554, ["insertionOrder"] = 1, ["defaultHumanoidRigType"], ["scaleData"], ["accessories"]}]
      251 GETIMPORT                        R7 K94 [Enum.HumanoidRigType.R15]
      253 SETTABLEKS                       R7 R6 K77 ["defaultHumanoidRigType"]
      255 DUPTABLE                         R7 K141 [{["BodyTypeScale"] = 1, ["DepthScale"] = 1, ["HeadScale"] = 1, ["HeightScale"] = 1.05, ["ProportionScale"] = 0, ["WidthScale"] = 1}]
      256 SETTABLEKS                       R7 R6 K109 ["scaleData"]
      258 NEWTABLE                         R7 0 2
      260 NEWTABLE                         R8 2 0
      262 GETIMPORT                        R9 K96 [Enum.AccessoryType.Hat]
      264 SETTABLEKS                       R9 R8 K84 ["AccessoryType"]
      266 LOADK                            R9 K142 [4381828509]
      267 SETTABLEKS                       R9 R8 K87 ["AssetId"]
      269 NEWTABLE                         R9 4 0
      271 GETIMPORT                        R10 K144 [Enum.AccessoryType.Back]
      273 SETTABLEKS                       R10 R9 K84 ["AccessoryType"]
      275 LOADK                            R10 K145 [745788688]
      276 SETTABLEKS                       R10 R9 K87 ["AssetId"]
      278 LOADB                            R10 0
      279 SETTABLEKS                       R10 R9 K88 ["IsLayered"]
      281 SETLIST                          R7 R8 2 [1]
      283 SETTABLEKS                       R7 R6 K78 ["accessories"]
      285 SETTABLEKS                       R6 R5 K55 ["JunkBot"]
      287 NEWTABLE                         R6 0 8
      289 DUPTABLE                         R7 K149 [{["property"] = "CustomHairAccessory", ["type"]}]
      290 GETIMPORT                        R8 K152 [Enum.AssetType.HairAccessory]
      292 SETTABLEKS                       R8 R7 K148 ["type"]
      294 DUPTABLE                         R8 K154 [{["property"] = "CustomHeadAccessory", ["type"]}]
      295 GETIMPORT                        R9 K155 [Enum.AssetType.Hat]
      297 SETTABLEKS                       R9 R8 K148 ["type"]
      299 DUPTABLE                         R9 K157 [{["property"] = "CustomFaceAccessory", ["type"]}]
      300 GETIMPORT                        R10 K159 [Enum.AssetType.FaceAccessory]
      302 SETTABLEKS                       R10 R9 K148 ["type"]
      304 DUPTABLE                         R10 K161 [{["property"] = "CustomNeckAccessory", ["type"]}]
      305 GETIMPORT                        R11 K163 [Enum.AssetType.NeckAccessory]
      307 SETTABLEKS                       R11 R10 K148 ["type"]
      309 DUPTABLE                         R11 K165 [{["property"] = "CustomShoulderAccessory", ["type"]}]
      310 GETIMPORT                        R12 K167 [Enum.AssetType.ShoulderAccessory]
      312 SETTABLEKS                       R12 R11 K148 ["type"]
      314 DUPTABLE                         R12 K169 [{["property"] = "CustomFrontAccessory", ["type"]}]
      315 GETIMPORT                        R13 K171 [Enum.AssetType.FrontAccessory]
      317 SETTABLEKS                       R13 R12 K148 ["type"]
      319 DUPTABLE                         R13 K173 [{["property"] = "CustomBackAccessory", ["type"]}]
      320 GETIMPORT                        R14 K175 [Enum.AssetType.BackAccessory]
      322 SETTABLEKS                       R14 R13 K148 ["type"]
      324 DUPTABLE                         R14 K177 [{["property"] = "CustomWaistAccessory", ["type"]}]
      325 GETIMPORT                        R15 K179 [Enum.AssetType.WaistAccessory]
      327 SETTABLEKS                       R15 R14 K148 ["type"]
      329 SETLIST                          R6 R7 8 [1]
      331 SETTABLEKS                       R6 R5 K56 ["AvatarAccessoryRulesAssetIdPropertyTypes"]
      333 NEWTABLE                         R6 0 12
      335 DUPTABLE                         R7 K181 [{["property"] = "CustomTShirtAccessory", ["type"]}]
      336 GETIMPORT                        R8 K183 [Enum.AssetType.TShirtAccessory]
      338 SETTABLEKS                       R8 R7 K148 ["type"]
      340 DUPTABLE                         R8 K185 [{["property"] = "CustomShirtAccessory", ["type"]}]
      341 GETIMPORT                        R9 K187 [Enum.AssetType.ShirtAccessory]
      343 SETTABLEKS                       R9 R8 K148 ["type"]
      345 DUPTABLE                         R9 K189 [{["property"] = "CustomJacketAccessory", ["type"]}]
      346 GETIMPORT                        R10 K191 [Enum.AssetType.JacketAccessory]
      348 SETTABLEKS                       R10 R9 K148 ["type"]
      350 DUPTABLE                         R10 K193 [{["property"] = "CustomSweaterAccessory", ["type"]}]
      351 GETIMPORT                        R11 K195 [Enum.AssetType.SweaterAccessory]
      353 SETTABLEKS                       R11 R10 K148 ["type"]
      355 DUPTABLE                         R11 K197 [{["property"] = "CustomPantsAccessory", ["type"]}]
      356 GETIMPORT                        R12 K199 [Enum.AssetType.PantsAccessory]
      358 SETTABLEKS                       R12 R11 K148 ["type"]
      360 DUPTABLE                         R12 K201 [{["property"] = "CustomShortsAccessory", ["type"]}]
      361 GETIMPORT                        R13 K203 [Enum.AssetType.ShortsAccessory]
      363 SETTABLEKS                       R13 R12 K148 ["type"]
      365 DUPTABLE                         R13 K205 [{["property"] = "CustomDressSkirtAccessory", ["type"]}]
      366 GETIMPORT                        R14 K207 [Enum.AssetType.DressSkirtAccessory]
      368 SETTABLEKS                       R14 R13 K148 ["type"]
      370 DUPTABLE                         R14 K209 [{["property"] = "CustomLeftShoesAccessory", ["type"]}]
      371 GETIMPORT                        R15 K211 [Enum.AssetType.LeftShoeAccessory]
      373 SETTABLEKS                       R15 R14 K148 ["type"]
      375 DUPTABLE                         R15 K213 [{["property"] = "CustomRightShoesAccessory", ["type"]}]
      376 GETIMPORT                        R16 K215 [Enum.AssetType.RightShoeAccessory]
      378 SETTABLEKS                       R16 R15 K148 ["type"]
      380 DUPTABLE                         R16 K217 [{["property"] = "CustomClassicShirtsAccessory", ["type"]}]
      381 GETIMPORT                        R17 K219 [Enum.AssetType.Shirt]
      383 SETTABLEKS                       R17 R16 K148 ["type"]
      385 DUPTABLE                         R17 K221 [{["property"] = "CustomClassicTShirtsAccessory", ["type"]}]
      386 GETIMPORT                        R18 K222 [Enum.AssetType.TShirt]
      388 SETTABLEKS                       R18 R17 K148 ["type"]
      390 DUPTABLE                         R18 K224 [{["property"] = "CustomClassicPantsAccessory", ["type"]}]
      391 GETIMPORT                        R19 K226 [Enum.AssetType.Pants]
      393 SETTABLEKS                       R19 R18 K148 ["type"]
      395 SETLIST                          R6 R7 12 [1]
      397 SETTABLEKS                       R6 R5 K57 ["AvatarClothingRulesAssetIdPropertyTypes"]
      399 NEWTABLE                         R6 0 3
      401 GETIMPORT                        R7 K222 [Enum.AssetType.TShirt]
      403 GETTABLEKS                       R7 R7 K227 ["Name"]
      405 GETIMPORT                        R8 K219 [Enum.AssetType.Shirt]
      407 GETTABLEKS                       R8 R8 K227 ["Name"]
      409 GETIMPORT                        R9 K226 [Enum.AssetType.Pants]
      411 GETTABLEKS                       R9 R9 K227 ["Name"]
      413 SETLIST                          R6 R7 3 [1]
      415 SETTABLEKS                       R6 R5 K58 ["ClassicClothingTypes"]
      417 NEWTABLE                         R6 4 0
      419 GETIMPORT                        R7 K222 [Enum.AssetType.TShirt]
      421 GETTABLEKS                       R7 R7 K227 ["Name"]
      423 LOADK                            R8 K228 ["GraphicTShirt"]
      424 SETTABLE                         R8 R6 R7
      425 GETIMPORT                        R7 K219 [Enum.AssetType.Shirt]
      427 GETTABLEKS                       R7 R7 K227 ["Name"]
      429 LOADK                            R8 K218 ["Shirt"]
      430 SETTABLE                         R8 R6 R7
      431 GETIMPORT                        R7 K226 [Enum.AssetType.Pants]
      433 GETTABLEKS                       R7 R7 K227 ["Name"]
      435 LOADK                            R8 K225 ["Pants"]
      436 SETTABLE                         R8 R6 R7
      437 SETTABLEKS                       R6 R5 K59 ["HumanoidDescriptionClothingTypes"]
      439 NEWTABLE                         R6 32 0
      441 GETIMPORT                        R7 K96 [Enum.AccessoryType.Hat]
      443 GETIMPORT                        R8 K155 [Enum.AssetType.Hat]
      445 GETTABLEKS                       R8 R8 K227 ["Name"]
      447 SETTABLE                         R8 R6 R7
      448 GETIMPORT                        R7 K85 [Enum.AccessoryType.Hair]
      450 GETIMPORT                        R8 K152 [Enum.AssetType.HairAccessory]
      452 GETTABLEKS                       R8 R8 K227 ["Name"]
      454 SETTABLE                         R8 R6 R7
      455 GETIMPORT                        R7 K229 [Enum.AccessoryType.Face]
      457 GETIMPORT                        R8 K159 [Enum.AssetType.FaceAccessory]
      459 GETTABLEKS                       R8 R8 K227 ["Name"]
      461 SETTABLE                         R8 R6 R7
      462 GETIMPORT                        R7 K231 [Enum.AccessoryType.Neck]
      464 GETIMPORT                        R8 K163 [Enum.AssetType.NeckAccessory]
      466 GETTABLEKS                       R8 R8 K227 ["Name"]
      468 SETTABLE                         R8 R6 R7
      469 GETIMPORT                        R7 K233 [Enum.AccessoryType.Shoulder]
      471 GETIMPORT                        R8 K167 [Enum.AssetType.ShoulderAccessory]
      473 GETTABLEKS                       R8 R8 K227 ["Name"]
      475 SETTABLE                         R8 R6 R7
      476 GETIMPORT                        R7 K235 [Enum.AccessoryType.Front]
      478 GETIMPORT                        R8 K171 [Enum.AssetType.FrontAccessory]
      480 GETTABLEKS                       R8 R8 K227 ["Name"]
      482 SETTABLE                         R8 R6 R7
      483 GETIMPORT                        R7 K144 [Enum.AccessoryType.Back]
      485 GETIMPORT                        R8 K175 [Enum.AssetType.BackAccessory]
      487 GETTABLEKS                       R8 R8 K227 ["Name"]
      489 SETTABLE                         R8 R6 R7
      490 GETIMPORT                        R7 K237 [Enum.AccessoryType.Waist]
      492 GETIMPORT                        R8 K179 [Enum.AssetType.WaistAccessory]
      494 GETTABLEKS                       R8 R8 K227 ["Name"]
      496 SETTABLE                         R8 R6 R7
      497 GETIMPORT                        R7 K126 [Enum.AccessoryType.TShirt]
      499 GETIMPORT                        R8 K183 [Enum.AssetType.TShirtAccessory]
      501 GETTABLEKS                       R8 R8 K227 ["Name"]
      503 SETTABLE                         R8 R6 R7
      504 GETIMPORT                        R7 K238 [Enum.AccessoryType.Shirt]
      506 GETIMPORT                        R8 K187 [Enum.AssetType.ShirtAccessory]
      508 GETTABLEKS                       R8 R8 K227 ["Name"]
      510 SETTABLE                         R8 R6 R7
      511 GETIMPORT                        R7 K132 [Enum.AccessoryType.Jacket]
      513 GETIMPORT                        R8 K191 [Enum.AssetType.JacketAccessory]
      515 GETTABLEKS                       R8 R8 K227 ["Name"]
      517 SETTABLE                         R8 R6 R7
      518 GETIMPORT                        R7 K240 [Enum.AccessoryType.Sweater]
      520 GETIMPORT                        R8 K195 [Enum.AssetType.SweaterAccessory]
      522 GETTABLEKS                       R8 R8 K227 ["Name"]
      524 SETTABLE                         R8 R6 R7
      525 GETIMPORT                        R7 K241 [Enum.AccessoryType.Pants]
      527 GETIMPORT                        R8 K199 [Enum.AssetType.PantsAccessory]
      529 GETTABLEKS                       R8 R8 K227 ["Name"]
      531 SETTABLE                         R8 R6 R7
      532 GETIMPORT                        R7 K129 [Enum.AccessoryType.Shorts]
      534 GETIMPORT                        R8 K203 [Enum.AssetType.ShortsAccessory]
      536 GETTABLEKS                       R8 R8 K227 ["Name"]
      538 SETTABLE                         R8 R6 R7
      539 GETIMPORT                        R7 K243 [Enum.AccessoryType.DressSkirt]
      541 GETIMPORT                        R8 K207 [Enum.AssetType.DressSkirtAccessory]
      543 GETTABLEKS                       R8 R8 K227 ["Name"]
      545 SETTABLE                         R8 R6 R7
      546 GETIMPORT                        R7 K100 [Enum.AccessoryType.LeftShoe]
      548 GETIMPORT                        R8 K211 [Enum.AssetType.LeftShoeAccessory]
      550 GETTABLEKS                       R8 R8 K227 ["Name"]
      552 SETTABLE                         R8 R6 R7
      553 GETIMPORT                        R7 K103 [Enum.AccessoryType.RightShoe]
      555 GETIMPORT                        R8 K215 [Enum.AssetType.RightShoeAccessory]
      557 GETTABLEKS                       R8 R8 K227 ["Name"]
      559 SETTABLE                         R8 R6 R7
      560 SETTABLEKS                       R6 R5 K60 ["AccessoryTypeToAssetType"]
      562 NEWTABLE                         R6 8 0
      564 GETIMPORT                        R7 K155 [Enum.AssetType.Hat]
      566 GETTABLEKS                       R7 R7 K227 ["Name"]
      568 LOADB                            R8 1
      569 SETTABLE                         R8 R6 R7
      570 GETIMPORT                        R7 K152 [Enum.AssetType.HairAccessory]
      572 GETTABLEKS                       R7 R7 K227 ["Name"]
      574 LOADB                            R8 1
      575 SETTABLE                         R8 R6 R7
      576 GETIMPORT                        R7 K159 [Enum.AssetType.FaceAccessory]
      578 GETTABLEKS                       R7 R7 K227 ["Name"]
      580 LOADB                            R8 1
      581 SETTABLE                         R8 R6 R7
      582 GETIMPORT                        R7 K163 [Enum.AssetType.NeckAccessory]
      584 GETTABLEKS                       R7 R7 K227 ["Name"]
      586 LOADB                            R8 1
      587 SETTABLE                         R8 R6 R7
      588 GETIMPORT                        R7 K167 [Enum.AssetType.ShoulderAccessory]
      590 GETTABLEKS                       R7 R7 K227 ["Name"]
      592 LOADB                            R8 1
      593 SETTABLE                         R8 R6 R7
      594 GETIMPORT                        R7 K171 [Enum.AssetType.FrontAccessory]
      596 GETTABLEKS                       R7 R7 K227 ["Name"]
      598 LOADB                            R8 1
      599 SETTABLE                         R8 R6 R7
      600 GETIMPORT                        R7 K175 [Enum.AssetType.BackAccessory]
      602 GETTABLEKS                       R7 R7 K227 ["Name"]
      604 LOADB                            R8 1
      605 SETTABLE                         R8 R6 R7
      606 GETIMPORT                        R7 K179 [Enum.AssetType.WaistAccessory]
      608 GETTABLEKS                       R7 R7 K227 ["Name"]
      610 LOADB                            R8 1
      611 SETTABLE                         R8 R6 R7
      612 SETTABLEKS                       R6 R5 K61 ["AccessoryAssetTypes"]
      614 NEWTABLE                         R6 16 0
      616 GETIMPORT                        R7 K183 [Enum.AssetType.TShirtAccessory]
      618 GETTABLEKS                       R7 R7 K227 ["Name"]
      620 LOADB                            R8 1
      621 SETTABLE                         R8 R6 R7
      622 GETIMPORT                        R7 K187 [Enum.AssetType.ShirtAccessory]
      624 GETTABLEKS                       R7 R7 K227 ["Name"]
      626 LOADB                            R8 1
      627 SETTABLE                         R8 R6 R7
      628 GETIMPORT                        R7 K191 [Enum.AssetType.JacketAccessory]
      630 GETTABLEKS                       R7 R7 K227 ["Name"]
      632 LOADB                            R8 1
      633 SETTABLE                         R8 R6 R7
      634 GETIMPORT                        R7 K195 [Enum.AssetType.SweaterAccessory]
      636 GETTABLEKS                       R7 R7 K227 ["Name"]
      638 LOADB                            R8 1
      639 SETTABLE                         R8 R6 R7
      640 GETIMPORT                        R7 K199 [Enum.AssetType.PantsAccessory]
      642 GETTABLEKS                       R7 R7 K227 ["Name"]
      644 LOADB                            R8 1
      645 SETTABLE                         R8 R6 R7
      646 GETIMPORT                        R7 K203 [Enum.AssetType.ShortsAccessory]
      648 GETTABLEKS                       R7 R7 K227 ["Name"]
      650 LOADB                            R8 1
      651 SETTABLE                         R8 R6 R7
      652 GETIMPORT                        R7 K207 [Enum.AssetType.DressSkirtAccessory]
      654 GETTABLEKS                       R7 R7 K227 ["Name"]
      656 LOADB                            R8 1
      657 SETTABLE                         R8 R6 R7
      658 GETIMPORT                        R7 K211 [Enum.AssetType.LeftShoeAccessory]
      660 GETTABLEKS                       R7 R7 K227 ["Name"]
      662 LOADB                            R8 1
      663 SETTABLE                         R8 R6 R7
      664 GETIMPORT                        R7 K215 [Enum.AssetType.RightShoeAccessory]
      666 GETTABLEKS                       R7 R7 K227 ["Name"]
      668 LOADB                            R8 1
      669 SETTABLE                         R8 R6 R7
      670 GETIMPORT                        R7 K222 [Enum.AssetType.TShirt]
      672 GETTABLEKS                       R7 R7 K227 ["Name"]
      674 LOADB                            R8 1
      675 SETTABLE                         R8 R6 R7
      676 GETIMPORT                        R7 K219 [Enum.AssetType.Shirt]
      678 GETTABLEKS                       R7 R7 K227 ["Name"]
      680 LOADB                            R8 1
      681 SETTABLE                         R8 R6 R7
      682 GETIMPORT                        R7 K226 [Enum.AssetType.Pants]
      684 GETTABLEKS                       R7 R7 K227 ["Name"]
      686 LOADB                            R8 1
      687 SETTABLE                         R8 R6 R7
      688 SETTABLEKS                       R6 R5 K62 ["ClothingAssetTypes"]
      690 NEWTABLE                         R6 16 0
      692 DUPTABLE                         R7 K248 [{["stringValueInstanceName"] = "run", ["animationInstanceName"] = "RunAnim"}]
      693 SETTABLEKS                       R7 R6 K249 ["CustomRunAnimation"]
      695 DUPTABLE                         R7 K252 [{["stringValueInstanceName"] = "walk", ["animationInstanceName"] = "WalkAnim"}]
      696 SETTABLEKS                       R7 R6 K253 ["CustomWalkAnimation"]
      698 DUPTABLE                         R7 K256 [{["stringValueInstanceName"] = "fall", ["animationInstanceName"] = "FallAnim"}]
      699 SETTABLEKS                       R7 R6 K257 ["CustomFallAnimation"]
      701 DUPTABLE                         R7 K260 [{["stringValueInstanceName"] = "jump", ["animationInstanceName"] = "JumpAnim"}]
      702 SETTABLEKS                       R7 R6 K261 ["CustomJumpAnimation"]
      704 DUPTABLE                         R7 K264 [{["stringValueInstanceName"] = "idle", ["animationInstanceName"] = "Animation1"}]
      705 SETTABLEKS                       R7 R6 K265 ["CustomIdleAnimation"]
      707 DUPTABLE                         R7 K267 [{["stringValueInstanceName"] = "idle", ["animationInstanceName"] = "Animation2"}]
      708 SETTABLEKS                       R7 R6 K268 ["CustomIdleAlt1Animation"]
      710 DUPTABLE                         R7 K270 [{["stringValueInstanceName"] = "idle", ["animationInstanceName"] = "Animation3"}]
      711 SETTABLEKS                       R7 R6 K271 ["CustomIdleAlt2Animation"]
      713 DUPTABLE                         R7 K274 [{["stringValueInstanceName"] = "swim", ["animationInstanceName"] = "Swim"}]
      714 SETTABLEKS                       R7 R6 K275 ["CustomSwimAnimation"]
      716 DUPTABLE                         R7 K278 [{["stringValueInstanceName"] = "swimidle", ["animationInstanceName"] = "SwimIdle"}]
      717 SETTABLEKS                       R7 R6 K279 ["CustomSwimIdleAnimation"]
      719 DUPTABLE                         R7 K282 [{["stringValueInstanceName"] = "climb", ["animationInstanceName"] = "ClimbAnim"}]
      720 SETTABLEKS                       R7 R6 K283 ["CustomClimbAnimation"]
      722 DUPTABLE                         R7 K285 [{["stringValueInstanceName"] = "mood", ["animationInstanceName"] = "Animation1"}]
      723 SETTABLEKS                       R7 R6 K286 ["CustomMoodAnimation"]
      725 SETTABLEKS                       R6 R5 K63 ["AvatarAnimationAssetIdPropertyToAnimationStringValue"]
      727 NEWTABLE                         R6 0 7
      729 LOADK                            R7 K287 ["CollisionPart"]
      730 LOADK                            R8 K288 ["CollisionHead"]
      731 LOADK                            R9 K289 ["CollisionTorso"]
      732 LOADK                            R10 K290 ["CollisionLeftLeg"]
      733 LOADK                            R11 K291 ["CollisionRightLeg"]
      734 LOADK                            R12 K292 ["CollisionLeftArm"]
      735 LOADK                            R13 K293 ["CollisionRightArm"]
      736 SETLIST                          R6 R7 7 [1]
      738 SETTABLEKS                       R6 R5 K64 ["CollisionBoxPartNames"]
      740 DUPTABLE                         R6 K300 [{["HighlightName"] = "AccessoryHighlight", ["FillColor"], ["OutlineColor"], ["FillTransparency"] = 0.5, ["OutlineTransparency"] = 0.5}]
      741 GETIMPORT                        R7 K70 [Color3.fromRGB]
      743 LOADN                            R8 255
      744 LOADN                            R9 0
      745 LOADN                            R10 0
      746 CALL                             R7 3 1
      747 SETTABLEKS                       R7 R6 K296 ["FillColor"]
      749 GETIMPORT                        R7 K70 [Color3.fromRGB]
      751 LOADN                            R8 255
      752 LOADN                            R9 255
      753 LOADN                            R10 255
      754 CALL                             R7 3 1
      755 SETTABLEKS                       R7 R6 K297 ["OutlineColor"]
      757 SETTABLEKS                       R6 R5 K65 ["HighlightProperties"]
      759 DUPTABLE                         R6 K308 [{["name"] = "BoundingBoxPart", ["tag"] = "AvatarPreviewBoundingBox", ["color"], ["transparency"] = 0.7, ["material"]}]
      760 GETIMPORT                        R7 K70 [Color3.fromRGB]
      762 LOADN                            R8 0
      763 LOADN                            R9 139
      764 LOADN                            R10 219
      765 CALL                             R7 3 1
      766 SETTABLEKS                       R7 R6 K304 ["color"]
      768 GETIMPORT                        R7 K311 [Enum.Material.SmoothPlastic]
      770 SETTABLEKS                       R7 R6 K307 ["material"]
      772 SETTABLEKS                       R6 R5 K66 ["boundingBoxProps"]
      774 RETURN                           R5 1
