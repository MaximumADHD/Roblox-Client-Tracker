PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R1 1
        5 GETIMPORT                        R2 K1 [error]
        7 LOADK                            R4 K2 ["Unsupported assetType string: %*"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{"ASSET_TYPE_MODEL", "ASSET_TYPE_DECAL", "ASSET_TYPE_AUDIO", "ASSET_TYPE_ANIMATION", "ASSET_TYPE_PLUGIN", "ASSET_TYPE_MESH_PART", "ASSET_TYPE_VIDEO", "ASSET_TYPE_FONT_FAMILY", "ASSET_TYPE_IMAGE", "ASSET_TYPE_MESH"}]
        2 GETIMPORT                        R1 K14 [Enum.AssetType.Model]
        4 SETTABLEKS                       R1 R0 K0 ["ASSET_TYPE_MODEL"]
        6 GETIMPORT                        R1 K16 [Enum.AssetType.Decal]
        8 SETTABLEKS                       R1 R0 K1 ["ASSET_TYPE_DECAL"]
       10 GETIMPORT                        R1 K18 [Enum.AssetType.Audio]
       12 SETTABLEKS                       R1 R0 K2 ["ASSET_TYPE_AUDIO"]
       14 GETIMPORT                        R1 K20 [Enum.AssetType.Animation]
       16 SETTABLEKS                       R1 R0 K3 ["ASSET_TYPE_ANIMATION"]
       18 GETIMPORT                        R1 K22 [Enum.AssetType.Plugin]
       20 SETTABLEKS                       R1 R0 K4 ["ASSET_TYPE_PLUGIN"]
       22 GETIMPORT                        R1 K24 [Enum.AssetType.MeshPart]
       24 SETTABLEKS                       R1 R0 K5 ["ASSET_TYPE_MESH_PART"]
       26 GETIMPORT                        R1 K26 [Enum.AssetType.Video]
       28 SETTABLEKS                       R1 R0 K6 ["ASSET_TYPE_VIDEO"]
       30 GETIMPORT                        R1 K28 [Enum.AssetType.FontFamily]
       32 SETTABLEKS                       R1 R0 K7 ["ASSET_TYPE_FONT_FAMILY"]
       34 GETIMPORT                        R1 K30 [Enum.AssetType.Image]
       36 SETTABLEKS                       R1 R0 K8 ["ASSET_TYPE_IMAGE"]
       38 GETIMPORT                        R1 K32 [Enum.AssetType.Mesh]
       40 SETTABLEKS                       R1 R0 K9 ["ASSET_TYPE_MESH"]
       42 DUPCLOSURE                       R1 K33 [PROTO_0]
       43 CAPTURE                          VAL R0
       44 RETURN                           R1 1
