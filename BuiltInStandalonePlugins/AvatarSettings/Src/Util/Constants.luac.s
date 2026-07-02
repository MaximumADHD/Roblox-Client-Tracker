MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K29 [{[1] = 423, ["MODESELECTOR_SIDE_MARGIN"] = 24, ["STANDARD_HEIGHT"] = 28, ["STANDARD_IMAGE_SIZE"] = 24, ["TITLED_FRAME_TEXT_MIN_WIDTH"] = 110, ["DEFAULT_HOVERTEXTBOX_MAX_WIDTH"] = 200, ["INVALID_ASSETID"] = 0, ["ANIMATIONID_PREFIX"] = "rbxassetid://", ["CATEGORYLIST_ITEM_HEIGHT"] = 36, ["SETTINGS_CONTENT_SIZE"], ["BODYSCALECUSTOMHEIGHT_MINVALUE"] = 2, ["BODYSCALECUSTOMHEIGHT_SLIDERMAXVALUE"] = 10, ["BODYSCALECUSTOMHEIGHT_MAXVALUE"] = 25, ["MENU_BAR_HEIGHT"] = 44, ["TopsAssetSelectorExpectedAssetType"], ["OuterwearAssetSelectorExpectedAssetType"], ["BottomsAssetSelectorExpectedAssetType"]}]
        2 GETIMPORT                        R1 K32 [UDim2.fromScale]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K17 ["SETTINGS_CONTENT_SIZE"]
        9 NEWTABLE                         R1 0 2
       11 GETIMPORT                        R2 K36 [Enum.AssetType.TShirtAccessory]
       13 GETIMPORT                        R3 K38 [Enum.AssetType.ShirtAccessory]
       15 SETLIST                          R1 R2 2 [1]
       17 SETTABLEKS                       R1 R0 K26 ["TopsAssetSelectorExpectedAssetType"]
       19 NEWTABLE                         R1 0 2
       21 GETIMPORT                        R2 K40 [Enum.AssetType.JacketAccessory]
       23 GETIMPORT                        R3 K42 [Enum.AssetType.SweaterAccessory]
       25 SETLIST                          R1 R2 2 [1]
       27 SETTABLEKS                       R1 R0 K27 ["OuterwearAssetSelectorExpectedAssetType"]
       29 NEWTABLE                         R1 0 3
       31 GETIMPORT                        R2 K44 [Enum.AssetType.PantsAccessory]
       33 GETIMPORT                        R3 K46 [Enum.AssetType.ShortsAccessory]
       35 GETIMPORT                        R4 K48 [Enum.AssetType.DressSkirtAccessory]
       37 SETLIST                          R1 R2 3 [1]
       39 SETTABLEKS                       R1 R0 K28 ["BottomsAssetSelectorExpectedAssetType"]
       41 GETIMPORT                        R1 K50 [UDim2.fromOffset]
       43 LOADN                            R2 144
       44 GETTABLEKS                       R3 R0 K15 ["CATEGORYLIST_ITEM_HEIGHT"]
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K51 ["EXPANDED_CATEGORYLIST_ITEM_SIZE"]
       49 GETIMPORT                        R1 K50 [UDim2.fromOffset]
       51 LOADN                            R2 40
       52 GETTABLEKS                       R3 R0 K15 ["CATEGORYLIST_ITEM_HEIGHT"]
       54 CALL                             R1 2 1
       55 SETTABLEKS                       R1 R0 K52 ["COLLAPSED_CATEGORYLIST_ITEM_SIZE"]
       57 RETURN                           R0 1
