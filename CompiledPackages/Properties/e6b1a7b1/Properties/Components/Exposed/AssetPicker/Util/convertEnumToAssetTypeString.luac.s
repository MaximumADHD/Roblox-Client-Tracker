PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R1 1
        5 GETIMPORT                        R2 K1 [error]
        7 LOADK                            R4 K2 ["Unsupported assetType enum: %*"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 16 0
       14 GETIMPORT                        R3 K10 [Enum.AssetType.Model]
       16 LOADK                            R4 K11 ["ASSET_TYPE_MODEL"]
       17 SETTABLE                         R4 R2 R3
       18 GETIMPORT                        R3 K13 [Enum.AssetType.Decal]
       20 LOADK                            R4 K14 ["ASSET_TYPE_DECAL"]
       21 SETTABLE                         R4 R2 R3
       22 GETIMPORT                        R3 K16 [Enum.AssetType.Audio]
       24 LOADK                            R4 K17 ["ASSET_TYPE_AUDIO"]
       25 SETTABLE                         R4 R2 R3
       26 GETIMPORT                        R3 K19 [Enum.AssetType.Animation]
       28 LOADK                            R4 K20 ["ASSET_TYPE_ANIMATION"]
       29 SETTABLE                         R4 R2 R3
       30 GETIMPORT                        R3 K22 [Enum.AssetType.Plugin]
       32 LOADK                            R4 K23 ["ASSET_TYPE_PLUGIN"]
       33 SETTABLE                         R4 R2 R3
       34 GETIMPORT                        R3 K25 [Enum.AssetType.MeshPart]
       36 LOADK                            R4 K26 ["ASSET_TYPE_MESH_PART"]
       37 SETTABLE                         R4 R2 R3
       38 GETIMPORT                        R3 K28 [Enum.AssetType.Video]
       40 LOADK                            R4 K29 ["ASSET_TYPE_VIDEO"]
       41 SETTABLE                         R4 R2 R3
       42 GETIMPORT                        R3 K31 [Enum.AssetType.FontFamily]
       44 LOADK                            R4 K32 ["ASSET_TYPE_FONT_FAMILY"]
       45 SETTABLE                         R4 R2 R3
       46 GETIMPORT                        R3 K34 [Enum.AssetType.Image]
       48 LOADK                            R4 K35 ["ASSET_TYPE_IMAGE"]
       49 SETTABLE                         R4 R2 R3
       50 GETIMPORT                        R3 K37 [Enum.AssetType.Mesh]
       52 LOADK                            R4 K38 ["ASSET_TYPE_MESH"]
       53 SETTABLE                         R4 R2 R3
       54 DUPCLOSURE                       R3 K39 [PROTO_0]
       55 CAPTURE                          VAL R2
       56 RETURN                           R3 1
