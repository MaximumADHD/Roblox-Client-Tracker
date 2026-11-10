MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K30 [{[1] = 423, ["MODESELECTOR_SIDE_MARGIN"] = 24, ["STANDARD_HEIGHT"] = 28, ["STANDARD_IMAGE_SIZE"] = 24, ["TITLED_FRAME_TEXT_MIN_WIDTH"] = 110, ["DEFAULT_HOVERTEXTBOX_MAX_WIDTH"] = 200, ["INVALID_ASSETID"] = 0, ["ANIMATIONID_PREFIX"] = "rbxassetid://", ["CATEGORYLIST_ITEM_HEIGHT"] = 36, ["SETTINGS_CONTENT_SIZE"], ["BODYSCALECUSTOMHEIGHT_MINVALUE"] = 2, ["BODYSCALECUSTOMHEIGHT_SLIDERMAXVALUE"] = 10, ["BODYSCALECUSTOMHEIGHT_MAXVALUE"] = 25, ["CUSTOM_BUILD_PERCENT_LIMITS"], ["MENU_BAR_HEIGHT"] = 44, ["TopsAssetSelectorExpectedAssetType"], ["OuterwearAssetSelectorExpectedAssetType"], ["BottomsAssetSelectorExpectedAssetType"]}]
        2 GETIMPORT                        R1 K33 [UDim2.fromScale]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K17 ["SETTINGS_CONTENT_SIZE"]
        9 DUPTABLE                         R1 K39 [{"bodyBuildCustomHeight", "bodyBuildCustomWidth", "bodyBuildCustomHead", "bodyBuildCustomBodyType", "bodyBuildCustomProportions"}]
       10 DUPTABLE                         R2 K44 [{["min"] = 90, ["max"] = 105}]
       11 SETTABLEKS                       R2 R1 K34 ["bodyBuildCustomHeight"]
       13 DUPTABLE                         R2 K47 [{["min"] = 70, ["max"] = 100}]
       14 SETTABLEKS                       R2 R1 K35 ["bodyBuildCustomWidth"]
       16 DUPTABLE                         R2 K49 [{["min"] = 95, ["max"] = 100}]
       17 SETTABLEKS                       R2 R1 K36 ["bodyBuildCustomHead"]
       19 DUPTABLE                         R2 K50 [{["min"] = 0, ["max"] = 100}]
       20 SETTABLEKS                       R2 R1 K37 ["bodyBuildCustomBodyType"]
       22 DUPTABLE                         R2 K50 [{["min"] = 0, ["max"] = 100}]
       23 SETTABLEKS                       R2 R1 K38 ["bodyBuildCustomProportions"]
       25 SETTABLEKS                       R1 R0 K24 ["CUSTOM_BUILD_PERCENT_LIMITS"]
       27 NEWTABLE                         R1 0 2
       29 GETIMPORT                        R2 K54 [Enum.AssetType.TShirtAccessory]
       31 GETIMPORT                        R3 K56 [Enum.AssetType.ShirtAccessory]
       33 SETLIST                          R1 R2 2 [1]
       35 SETTABLEKS                       R1 R0 K27 ["TopsAssetSelectorExpectedAssetType"]
       37 NEWTABLE                         R1 0 2
       39 GETIMPORT                        R2 K58 [Enum.AssetType.JacketAccessory]
       41 GETIMPORT                        R3 K60 [Enum.AssetType.SweaterAccessory]
       43 SETLIST                          R1 R2 2 [1]
       45 SETTABLEKS                       R1 R0 K28 ["OuterwearAssetSelectorExpectedAssetType"]
       47 NEWTABLE                         R1 0 3
       49 GETIMPORT                        R2 K62 [Enum.AssetType.PantsAccessory]
       51 GETIMPORT                        R3 K64 [Enum.AssetType.ShortsAccessory]
       53 GETIMPORT                        R4 K66 [Enum.AssetType.DressSkirtAccessory]
       55 SETLIST                          R1 R2 3 [1]
       57 SETTABLEKS                       R1 R0 K29 ["BottomsAssetSelectorExpectedAssetType"]
       59 GETIMPORT                        R1 K68 [UDim2.fromOffset]
       61 LOADN                            R2 144
       62 GETTABLEKS                       R3 R0 K15 ["CATEGORYLIST_ITEM_HEIGHT"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K69 ["EXPANDED_CATEGORYLIST_ITEM_SIZE"]
       67 GETIMPORT                        R1 K68 [UDim2.fromOffset]
       69 LOADN                            R2 40
       70 GETTABLEKS                       R3 R0 K15 ["CATEGORYLIST_ITEM_HEIGHT"]
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K70 ["COLLAPSED_CATEGORYLIST_ITEM_SIZE"]
       75 RETURN                           R0 1
