PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 GETIMPORT                        R1 K3 [Enum.AssetType.Model]
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       18 GETTABLEKS                       R3 R4 K9 ["Animation"]
       20 GETIMPORT                        R4 K11 [Enum.AssetType.Animation]
       22 SETTABLE                         R4 R2 R3
       23 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       25 GETTABLEKS                       R3 R4 K12 ["Audio"]
       27 GETIMPORT                        R4 K13 [Enum.AssetType.Audio]
       29 SETTABLE                         R4 R2 R3
       30 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       32 GETTABLEKS                       R3 R4 K14 ["Decal"]
       34 GETIMPORT                        R4 K15 [Enum.AssetType.Decal]
       36 SETTABLE                         R4 R2 R3
       37 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       39 GETTABLEKS                       R3 R4 K16 ["FontFamily"]
       41 GETIMPORT                        R4 K17 [Enum.AssetType.FontFamily]
       43 SETTABLE                         R4 R2 R3
       44 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       46 GETTABLEKS                       R3 R4 K18 ["Image"]
       48 GETIMPORT                        R4 K19 [Enum.AssetType.Image]
       50 SETTABLE                         R4 R2 R3
       51 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       53 GETTABLEKS                       R3 R4 K20 ["Mesh"]
       55 GETIMPORT                        R4 K21 [Enum.AssetType.Mesh]
       57 SETTABLE                         R4 R2 R3
       58 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       60 GETTABLEKS                       R3 R4 K22 ["MeshPart"]
       62 GETIMPORT                        R4 K23 [Enum.AssetType.MeshPart]
       64 SETTABLE                         R4 R2 R3
       65 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       67 GETTABLEKS                       R3 R4 K24 ["Model"]
       69 GETIMPORT                        R4 K25 [Enum.AssetType.Model]
       71 SETTABLE                         R4 R2 R3
       72 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       74 GETTABLEKS                       R3 R4 K26 ["Place"]
       76 GETIMPORT                        R4 K27 [Enum.AssetType.Place]
       78 SETTABLE                         R4 R2 R3
       79 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       81 GETTABLEKS                       R3 R4 K28 ["Plugin"]
       83 GETIMPORT                        R4 K29 [Enum.AssetType.Plugin]
       85 SETTABLE                         R4 R2 R3
       86 GETTABLEKS                       R4 R1 K8 ["AssetType"]
       88 GETTABLEKS                       R3 R4 K30 ["Video"]
       90 GETIMPORT                        R4 K31 [Enum.AssetType.Video]
       92 SETTABLE                         R4 R2 R3
       93 DUPCLOSURE                       R3 K32 [PROTO_0]
       94 CAPTURE                          VAL R2
       95 RETURN                           R3 1
