PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        8 GETTABLE                         R1 R2 R0
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKS                    R0 K1 ["ASSET_TYPE_MODEL"] ; [+7]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       15 GETTABLEKS                       R1 R1 K2 ["Model"]
       17 RETURN                           R1 1
       18 JUMPIFNOTEQKS                    R0 K3 ["ASSET_TYPE_DECAL"] ; [+7]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       23 GETTABLEKS                       R1 R1 K4 ["Decal"]
       25 RETURN                           R1 1
       26 JUMPIFNOTEQKS                    R0 K5 ["ASSET_TYPE_AUDIO"] ; [+7]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       31 GETTABLEKS                       R1 R1 K6 ["Audio"]
       33 RETURN                           R1 1
       34 JUMPIFNOTEQKS                    R0 K7 ["ASSET_TYPE_ANIMATION"] ; [+7]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       39 GETTABLEKS                       R1 R1 K8 ["Animation"]
       41 RETURN                           R1 1
       42 JUMPIFNOTEQKS                    R0 K9 ["ASSET_TYPE_PLUGIN"] ; [+7]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       47 GETTABLEKS                       R1 R1 K10 ["Plugin"]
       49 RETURN                           R1 1
       50 JUMPIFNOTEQKS                    R0 K11 ["ASSET_TYPE_MESH_PART"] ; [+7]
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       55 GETTABLEKS                       R1 R1 K12 ["MeshPart"]
       57 RETURN                           R1 1
       58 JUMPIFNOTEQKS                    R0 K13 ["ASSET_TYPE_VIDEO"] ; [+7]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       63 GETTABLEKS                       R1 R1 K14 ["Video"]
       65 RETURN                           R1 1
       66 JUMPIFNOTEQKS                    R0 K15 ["ASSET_TYPE_FONT_FAMILY"] ; [+7]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       71 GETTABLEKS                       R1 R1 K16 ["FontFamily"]
       73 RETURN                           R1 1
       74 JUMPIFNOTEQKS                    R0 K17 ["ASSET_TYPE_IMAGE"] ; [+7]
       76 GETUPVAL                         R1 0
       77 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       79 GETTABLEKS                       R1 R1 K18 ["Image"]
       81 RETURN                           R1 1
       82 JUMPIFNOTEQKS                    R0 K19 ["ASSET_TYPE_MESH"] ; [+7]
       84 GETUPVAL                         R1 0
       85 GETTABLEKS                       R1 R1 K0 ["AssetType"]
       87 GETTABLEKS                       R1 R1 K20 ["Mesh"]
       89 RETURN                           R1 1
       90 LOADNIL                          R1
       91 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETGLOBAL                        R2 K9 ["convertAssetTypeStringToEnum"]
       18 GETGLOBAL                        R2 K9 ["convertAssetTypeStringToEnum"]
       20 RETURN                           R2 1
