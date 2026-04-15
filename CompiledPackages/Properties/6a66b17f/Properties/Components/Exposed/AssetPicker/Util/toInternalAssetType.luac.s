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
       12 DUPTABLE                         R2 K18 [{"Animation", "AnimationGraph", "Audio", "Decal", "FontFamily", "Image", "Mesh", "MeshPart", "Model", "Plugin", "Video"}]
       13 LOADK                            R3 K19 ["ASSET_TYPE_ANIMATION"]
       14 SETTABLEKS                       R3 R2 K7 ["Animation"]
       16 LOADK                            R3 K19 ["ASSET_TYPE_ANIMATION"]
       17 SETTABLEKS                       R3 R2 K8 ["AnimationGraph"]
       19 LOADK                            R3 K20 ["ASSET_TYPE_AUDIO"]
       20 SETTABLEKS                       R3 R2 K9 ["Audio"]
       22 LOADK                            R3 K21 ["ASSET_TYPE_DECAL"]
       23 SETTABLEKS                       R3 R2 K10 ["Decal"]
       25 LOADK                            R3 K22 ["ASSET_TYPE_FONT_FAMILY"]
       26 SETTABLEKS                       R3 R2 K11 ["FontFamily"]
       28 LOADK                            R3 K23 ["ASSET_TYPE_IMAGE"]
       29 SETTABLEKS                       R3 R2 K12 ["Image"]
       31 LOADK                            R3 K24 ["ASSET_TYPE_MESH"]
       32 SETTABLEKS                       R3 R2 K13 ["Mesh"]
       34 LOADK                            R3 K25 ["ASSET_TYPE_MESH_PART"]
       35 SETTABLEKS                       R3 R2 K14 ["MeshPart"]
       37 LOADK                            R3 K26 ["ASSET_TYPE_MODEL"]
       38 SETTABLEKS                       R3 R2 K15 ["Model"]
       40 LOADK                            R3 K27 ["ASSET_TYPE_PLUGIN"]
       41 SETTABLEKS                       R3 R2 K16 ["Plugin"]
       43 LOADK                            R3 K28 ["ASSET_TYPE_VIDEO"]
       44 SETTABLEKS                       R3 R2 K17 ["Video"]
       46 DUPCLOSURE                       R3 K29 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 RETURN                           R3 1
