PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["ASSET_TYPE_TEXT_DOCUMENT"] ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["AssetType"]
        5 GETTABLEKS                       R1 R1 K2 ["TextDocument"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+12]
        9 GETUPVAL                         R2 1
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       15 GETTABLEKS                       R1 R1 K2 ["TextDocument"]
       17 RETURN                           R1 1
       18 LOADNIL                          R1
       19 RETURN                           R1 1
       20 JUMPIFEQKS                       R0 K3 ["ASSET_TYPE_ANIMATED_IMAGE"] ; [+8]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       25 GETTABLEKS                       R1 R1 K4 ["AnimatedImage"]
       27 JUMPIFNOTEQ                      R0 R1 ; [+12]
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+6]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       35 GETTABLEKS                       R1 R1 K4 ["AnimatedImage"]
       37 RETURN                           R1 1
       38 LOADNIL                          R1
       39 RETURN                           R1 1
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K1 ["AssetType"]
       43 GETTABLE                         R1 R2 R0
       44 JUMPIFNOT                        R1 ; [+5]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K1 ["AssetType"]
       48 GETTABLE                         R1 R2 R0
       49 RETURN                           R1 1
       50 JUMPIFNOTEQKS                    R0 K5 ["ASSET_TYPE_MODEL"] ; [+7]
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       55 GETTABLEKS                       R1 R1 K6 ["Model"]
       57 RETURN                           R1 1
       58 JUMPIFNOTEQKS                    R0 K7 ["ASSET_TYPE_DECAL"] ; [+7]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       63 GETTABLEKS                       R1 R1 K8 ["Decal"]
       65 RETURN                           R1 1
       66 JUMPIFNOTEQKS                    R0 K9 ["ASSET_TYPE_AUDIO"] ; [+7]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       71 GETTABLEKS                       R1 R1 K10 ["Audio"]
       73 RETURN                           R1 1
       74 JUMPIFNOTEQKS                    R0 K11 ["ASSET_TYPE_ANIMATION"] ; [+7]
       76 GETUPVAL                         R1 0
       77 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       79 GETTABLEKS                       R1 R1 K12 ["Animation"]
       81 RETURN                           R1 1
       82 JUMPIFNOTEQKS                    R0 K13 ["ASSET_TYPE_PLUGIN"] ; [+7]
       84 GETUPVAL                         R1 0
       85 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       87 GETTABLEKS                       R1 R1 K14 ["Plugin"]
       89 RETURN                           R1 1
       90 JUMPIFNOTEQKS                    R0 K15 ["ASSET_TYPE_MESH_PART"] ; [+7]
       92 GETUPVAL                         R1 0
       93 GETTABLEKS                       R1 R1 K1 ["AssetType"]
       95 GETTABLEKS                       R1 R1 K16 ["MeshPart"]
       97 RETURN                           R1 1
       98 JUMPIFNOTEQKS                    R0 K17 ["ASSET_TYPE_VIDEO"] ; [+7]
      100 GETUPVAL                         R1 0
      101 GETTABLEKS                       R1 R1 K1 ["AssetType"]
      103 GETTABLEKS                       R1 R1 K18 ["Video"]
      105 RETURN                           R1 1
      106 JUMPIFNOTEQKS                    R0 K19 ["ASSET_TYPE_FONT_FAMILY"] ; [+7]
      108 GETUPVAL                         R1 0
      109 GETTABLEKS                       R1 R1 K1 ["AssetType"]
      111 GETTABLEKS                       R1 R1 K20 ["FontFamily"]
      113 RETURN                           R1 1
      114 JUMPIFNOTEQKS                    R0 K21 ["ASSET_TYPE_IMAGE"] ; [+7]
      116 GETUPVAL                         R1 0
      117 GETTABLEKS                       R1 R1 K1 ["AssetType"]
      119 GETTABLEKS                       R1 R1 K22 ["Image"]
      121 RETURN                           R1 1
      122 JUMPIFNOTEQKS                    R0 K23 ["ASSET_TYPE_MESH"] ; [+7]
      124 GETUPVAL                         R1 0
      125 GETTABLEKS                       R1 R1 K1 ["AssetType"]
      127 GETTABLEKS                       R1 R1 K24 ["Mesh"]
      129 RETURN                           R1 1
      130 LOADNIL                          R1
      131 RETURN                           R1 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Flags"]
       20 GETTABLEKS                       R3 R3 K9 ["getFFlagAmrEnableTextDocuments"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Flags"]
       29 GETTABLEKS                       R4 R4 K10 ["getFFlagAmrEnableAnimatedImage"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K11 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETGLOBAL                        R4 K12 ["convertAssetTypeStringToEnum"]
       38 GETGLOBAL                        R4 K12 ["convertAssetTypeStringToEnum"]
       40 RETURN                           R4 1
