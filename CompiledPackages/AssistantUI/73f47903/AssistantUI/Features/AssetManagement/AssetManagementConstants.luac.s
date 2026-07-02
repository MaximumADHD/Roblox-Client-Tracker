MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K3 [Enum.AssetType.Image]
        5 SETTABLEN                        R1 R0 1
        6 GETIMPORT                        R1 K5 [Enum.AssetType.Audio]
        8 SETTABLEN                        R1 R0 3
        9 GETIMPORT                        R1 K7 [Enum.AssetType.Mesh]
       11 SETTABLEN                        R1 R0 4
       12 GETIMPORT                        R1 K9 [Enum.AssetType.Model]
       14 SETTABLEN                        R1 R0 10
       15 GETIMPORT                        R1 K11 [Enum.AssetType.Decal]
       17 SETTABLEN                        R1 R0 13
       18 GETIMPORT                        R1 K13 [Enum.AssetType.Animation]
       20 SETTABLEN                        R1 R0 24
       21 GETIMPORT                        R1 K15 [Enum.AssetType.Package]
       23 SETTABLEN                        R1 R0 32
       24 GETIMPORT                        R1 K17 [Enum.AssetType.MeshPart]
       26 SETTABLEN                        R1 R0 40
       27 GETIMPORT                        R1 K19 [Enum.AssetType.Video]
       29 SETTABLEN                        R1 R0 62
       30 DUPTABLE                         R1 K20 [{["Model"] = "Model", ["Audio"] = "Audio", ["Mesh"] = "Mesh", ["MeshPart"] = "MeshPart", ["Image"] = "Image", ["Decal"] = "Decal", ["Video"] = "Video", ["Animation"] = "Animation", ["Package"] = "Model"}]
       31 DUPTABLE                         R2 K21 [{["Model"] = "Model", ["Audio"] = "Audio", ["Mesh"] = "MeshPart", ["MeshPart"] = "MeshPart", ["Image"] = "Decal", ["Decal"] = "Decal", ["Video"] = "Video", ["Package"] = "Model"}]
       32 DUPTABLE                         R3 K30 [{["ASSET_TYPE_MODEL"] = "Model", ["ASSET_TYPE_AUDIO"] = "Audio", ["ASSET_TYPE_IMAGE"] = "Image", ["ASSET_TYPE_DECAL"] = "Decal", ["ASSET_TYPE_MESH"] = "Mesh", ["ASSET_TYPE_MESH_PART"] = "MeshPart", ["ASSET_TYPE_VIDEO"] = "Video", ["ASSET_TYPE_ANIMATION"] = "Animation"}]
       33 NEWTABLE                         R4 0 0
       35 MOVE                             R5 R0
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 FORGPREP                         R5
       39 GETTABLEKS                       R10 R9 K31 ["Name"]
       41 SETTABLE                         R10 R4 R8
       42 FORGLOOP                         R5 2 ; [-4]
       44 NEWTABLE                         R5 0 0
       46 MOVE                             R6 R0
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 FORGPREP                         R6
       50 GETTABLEKS                       R11 R10 K31 ["Name"]
       52 SETTABLE                         R9 R5 R11
       53 FORGLOOP                         R6 2 ; [-4]
       55 DUPTABLE                         R6 K42 [{["CreatorStore"] = "creator_store", ["User"] = "user", ["Group"] = "group", ["Universe"] = "universe", ["Inventory"] = "inventory"}]
       56 DUPTABLE                         R7 K50 [{"ASSET_TYPE_ID_MAP", "INVENTORY_ASSET_TYPE_MAP", "INVENTORY_TYPE_NORMALIZE", "CREATOR_STORE_CATEGORY_MAP", "ASSET_TYPE_ID_TO_NAME", "ASSET_TYPE_NAME_TO_ID", "SearchSource"}]
       57 SETTABLEKS                       R0 R7 K43 ["ASSET_TYPE_ID_MAP"]
       59 SETTABLEKS                       R1 R7 K44 ["INVENTORY_ASSET_TYPE_MAP"]
       61 SETTABLEKS                       R3 R7 K45 ["INVENTORY_TYPE_NORMALIZE"]
       63 SETTABLEKS                       R2 R7 K46 ["CREATOR_STORE_CATEGORY_MAP"]
       65 SETTABLEKS                       R4 R7 K47 ["ASSET_TYPE_ID_TO_NAME"]
       67 SETTABLEKS                       R5 R7 K48 ["ASSET_TYPE_NAME_TO_ID"]
       69 SETTABLEKS                       R6 R7 K49 ["SearchSource"]
       71 RETURN                           R7 1
