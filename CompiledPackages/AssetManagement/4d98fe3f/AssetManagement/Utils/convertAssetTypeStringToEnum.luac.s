PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["CreatorInventoryItemType"]
       14 DUPTABLE                         R3 K20 [{"ASSET_TYPE_ANIMATED_IMAGE", "ASSET_TYPE_ANIMATION", "ASSET_TYPE_AUDIO", "ASSET_TYPE_DECAL", "ASSET_TYPE_FONT_FAMILY", "ASSET_TYPE_IMAGE", "ASSET_TYPE_MESH", "ASSET_TYPE_MESH_PART", "ASSET_TYPE_MODEL", "ASSET_TYPE_PLUGIN", "ASSET_TYPE_TEXT_DOCUMENT", "ASSET_TYPE_VIDEO"}]
       15 GETTABLEKS                       R4 R2 K21 ["AnimatedImage"]
       17 SETTABLEKS                       R4 R3 K8 ["ASSET_TYPE_ANIMATED_IMAGE"]
       19 GETTABLEKS                       R4 R2 K22 ["Animation"]
       21 SETTABLEKS                       R4 R3 K9 ["ASSET_TYPE_ANIMATION"]
       23 GETTABLEKS                       R4 R2 K23 ["Audio"]
       25 SETTABLEKS                       R4 R3 K10 ["ASSET_TYPE_AUDIO"]
       27 GETTABLEKS                       R4 R2 K24 ["Decal"]
       29 SETTABLEKS                       R4 R3 K11 ["ASSET_TYPE_DECAL"]
       31 GETTABLEKS                       R4 R2 K25 ["FontFamily"]
       33 SETTABLEKS                       R4 R3 K12 ["ASSET_TYPE_FONT_FAMILY"]
       35 GETTABLEKS                       R4 R2 K26 ["Image"]
       37 SETTABLEKS                       R4 R3 K13 ["ASSET_TYPE_IMAGE"]
       39 GETTABLEKS                       R4 R2 K27 ["Mesh"]
       41 SETTABLEKS                       R4 R3 K14 ["ASSET_TYPE_MESH"]
       43 GETTABLEKS                       R4 R2 K28 ["MeshPart"]
       45 SETTABLEKS                       R4 R3 K15 ["ASSET_TYPE_MESH_PART"]
       47 GETTABLEKS                       R4 R2 K29 ["Model"]
       49 SETTABLEKS                       R4 R3 K16 ["ASSET_TYPE_MODEL"]
       51 GETTABLEKS                       R4 R2 K30 ["Plugin"]
       53 SETTABLEKS                       R4 R3 K17 ["ASSET_TYPE_PLUGIN"]
       55 GETTABLEKS                       R4 R2 K31 ["TextDocument"]
       57 SETTABLEKS                       R4 R3 K18 ["ASSET_TYPE_TEXT_DOCUMENT"]
       59 GETTABLEKS                       R4 R2 K32 ["Video"]
       61 SETTABLEKS                       R4 R3 K19 ["ASSET_TYPE_VIDEO"]
       63 GETTABLEKS                       R4 R1 K33 ["asList"]
       65 MOVE                             R5 R2
       66 CALL                             R4 1 3
       67 FORGPREP                         R4
       68 SETTABLE                         R8 R3 R8
       69 FORGLOOP                         R4 2 ; [-2]
       71 DUPCLOSURE                       R4 K34 [PROTO_0]
       72 CAPTURE                          VAL R3
       73 RETURN                           R4 1
