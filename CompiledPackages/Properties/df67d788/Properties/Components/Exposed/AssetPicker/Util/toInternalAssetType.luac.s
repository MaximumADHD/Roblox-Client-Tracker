PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+10]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["Unsupported assetType: %*"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 CALL                             R2 1 0
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K28 [{["Animation"] = "ASSET_TYPE_ANIMATION", ["AnimationGraph"] = "ASSET_TYPE_ANIMATION", ["Audio"] = "ASSET_TYPE_AUDIO", ["Decal"] = "ASSET_TYPE_DECAL", ["FontFamily"] = "ASSET_TYPE_FONT_FAMILY", ["Image"] = "ASSET_TYPE_IMAGE", ["Mesh"] = "ASSET_TYPE_MESH", ["MeshPart"] = "ASSET_TYPE_MESH_PART", ["Model"] = "ASSET_TYPE_MODEL", ["Plugin"] = "ASSET_TYPE_PLUGIN", ["Video"] = "ASSET_TYPE_VIDEO"}]
       13 DUPCLOSURE                       R3 K29 [PROTO_0]
       14 CAPTURE                          VAL R2
       15 RETURN                           R3 1
