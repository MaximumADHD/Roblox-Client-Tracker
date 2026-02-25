MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K17 [{"MIN_SEGMENTEDBUTTON_WIDTH", "MODESELECTOR_SIDE_MARGIN", "STANDARD_HEIGHT", "STANDARD_IMAGE_SIZE", "TITLED_FRAME_TEXT_MIN_WIDTH", "DEFAULT_HOVERTEXTBOX_MAX_WIDTH", "INVALID_ASSETID", "ANIMATIONID_PREFIX", "CATEGORYLIST_ITEM_HEIGHT", "SETTINGS_CONTENT_SIZE", "BODYSCALECUSTOMHEIGHT_MINVALUE", "BODYSCALECUSTOMHEIGHT_SLIDERMAXVALUE", "BODYSCALECUSTOMHEIGHT_MAXVALUE", "MENU_BAR_HEIGHT", "TopsAssetSelectorExpectedAssetType", "OuterwearAssetSelectorExpectedAssetType", "BottomsAssetSelectorExpectedAssetType"}]
        2 LOADN                            R1 167
        3 SETTABLEKS                       R1 R0 K0 ["MIN_SEGMENTEDBUTTON_WIDTH"]
        5 LOADN                            R1 24
        6 SETTABLEKS                       R1 R0 K1 ["MODESELECTOR_SIDE_MARGIN"]
        8 LOADN                            R1 28
        9 SETTABLEKS                       R1 R0 K2 ["STANDARD_HEIGHT"]
       11 LOADN                            R1 24
       12 SETTABLEKS                       R1 R0 K3 ["STANDARD_IMAGE_SIZE"]
       14 LOADN                            R1 110
       15 SETTABLEKS                       R1 R0 K4 ["TITLED_FRAME_TEXT_MIN_WIDTH"]
       17 LOADN                            R1 200
       18 SETTABLEKS                       R1 R0 K5 ["DEFAULT_HOVERTEXTBOX_MAX_WIDTH"]
       20 LOADN                            R1 0
       21 SETTABLEKS                       R1 R0 K6 ["INVALID_ASSETID"]
       23 LOADK                            R1 K18 ["rbxassetid://"]
       24 SETTABLEKS                       R1 R0 K7 ["ANIMATIONID_PREFIX"]
       26 LOADN                            R1 36
       27 SETTABLEKS                       R1 R0 K8 ["CATEGORYLIST_ITEM_HEIGHT"]
       29 GETIMPORT                        R1 K21 [UDim2.fromScale]
       31 LOADN                            R2 1
       32 LOADN                            R3 1
       33 CALL                             R1 2 1
       34 SETTABLEKS                       R1 R0 K9 ["SETTINGS_CONTENT_SIZE"]
       36 LOADN                            R1 2
       37 SETTABLEKS                       R1 R0 K10 ["BODYSCALECUSTOMHEIGHT_MINVALUE"]
       39 LOADN                            R1 10
       40 SETTABLEKS                       R1 R0 K11 ["BODYSCALECUSTOMHEIGHT_SLIDERMAXVALUE"]
       42 LOADN                            R1 25
       43 SETTABLEKS                       R1 R0 K12 ["BODYSCALECUSTOMHEIGHT_MAXVALUE"]
       45 LOADN                            R1 44
       46 SETTABLEKS                       R1 R0 K13 ["MENU_BAR_HEIGHT"]
       48 NEWTABLE                         R1 0 2
       50 GETIMPORT                        R2 K25 [Enum.AssetType.TShirtAccessory]
       52 GETIMPORT                        R3 K27 [Enum.AssetType.ShirtAccessory]
       54 SETLIST                          R1 R2 2 [1]
       56 SETTABLEKS                       R1 R0 K14 ["TopsAssetSelectorExpectedAssetType"]
       58 NEWTABLE                         R1 0 2
       60 GETIMPORT                        R2 K29 [Enum.AssetType.JacketAccessory]
       62 GETIMPORT                        R3 K31 [Enum.AssetType.SweaterAccessory]
       64 SETLIST                          R1 R2 2 [1]
       66 SETTABLEKS                       R1 R0 K15 ["OuterwearAssetSelectorExpectedAssetType"]
       68 NEWTABLE                         R1 0 3
       70 GETIMPORT                        R2 K33 [Enum.AssetType.PantsAccessory]
       72 GETIMPORT                        R3 K35 [Enum.AssetType.ShortsAccessory]
       74 GETIMPORT                        R4 K37 [Enum.AssetType.DressSkirtAccessory]
       76 SETLIST                          R1 R2 3 [1]
       78 SETTABLEKS                       R1 R0 K16 ["BottomsAssetSelectorExpectedAssetType"]
       80 GETIMPORT                        R1 K39 [UDim2.fromOffset]
       82 LOADN                            R2 144
       83 GETTABLEKS                       R3 R0 K8 ["CATEGORYLIST_ITEM_HEIGHT"]
       85 CALL                             R1 2 1
       86 SETTABLEKS                       R1 R0 K40 ["EXPANDED_CATEGORYLIST_ITEM_SIZE"]
       88 GETIMPORT                        R1 K39 [UDim2.fromOffset]
       90 LOADN                            R2 40
       91 GETTABLEKS                       R3 R0 K8 ["CATEGORYLIST_ITEM_HEIGHT"]
       93 CALL                             R1 2 1
       94 SETTABLEKS                       R1 R0 K41 ["COLLAPSED_CATEGORYLIST_ITEM_SIZE"]
       96 RETURN                           R0 1
