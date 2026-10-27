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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimatedImage"]
       20 GETIMPORT                        R4 K11 [Enum.AssetType.AnimatedImage]
       22 SETTABLE                         R4 R2 R3
       23 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       25 GETTABLEKS                       R3 R3 K12 ["Animation"]
       27 GETIMPORT                        R4 K13 [Enum.AssetType.Animation]
       29 SETTABLE                         R4 R2 R3
       30 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       32 GETTABLEKS                       R3 R3 K14 ["Audio"]
       34 GETIMPORT                        R4 K15 [Enum.AssetType.Audio]
       36 SETTABLE                         R4 R2 R3
       37 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       39 GETTABLEKS                       R3 R3 K16 ["Decal"]
       41 GETIMPORT                        R4 K17 [Enum.AssetType.Decal]
       43 SETTABLE                         R4 R2 R3
       44 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       46 GETTABLEKS                       R3 R3 K18 ["FontFamily"]
       48 GETIMPORT                        R4 K19 [Enum.AssetType.FontFamily]
       50 SETTABLE                         R4 R2 R3
       51 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       53 GETTABLEKS                       R3 R3 K20 ["Image"]
       55 GETIMPORT                        R4 K21 [Enum.AssetType.Image]
       57 SETTABLE                         R4 R2 R3
       58 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       60 GETTABLEKS                       R3 R3 K22 ["Mesh"]
       62 GETIMPORT                        R4 K23 [Enum.AssetType.Mesh]
       64 SETTABLE                         R4 R2 R3
       65 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       67 GETTABLEKS                       R3 R3 K24 ["MeshPart"]
       69 GETIMPORT                        R4 K25 [Enum.AssetType.MeshPart]
       71 SETTABLE                         R4 R2 R3
       72 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       74 GETTABLEKS                       R3 R3 K26 ["Model"]
       76 GETIMPORT                        R4 K27 [Enum.AssetType.Model]
       78 SETTABLE                         R4 R2 R3
       79 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       81 GETTABLEKS                       R3 R3 K28 ["Place"]
       83 GETIMPORT                        R4 K29 [Enum.AssetType.Place]
       85 SETTABLE                         R4 R2 R3
       86 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       88 GETTABLEKS                       R3 R3 K30 ["Plugin"]
       90 GETIMPORT                        R4 K31 [Enum.AssetType.Plugin]
       92 SETTABLE                         R4 R2 R3
       93 GETTABLEKS                       R3 R1 K8 ["AssetType"]
       95 GETTABLEKS                       R3 R3 K32 ["TextDocument"]
       97 GETIMPORT                        R4 K33 [Enum.AssetType.TextDocument]
       99 SETTABLE                         R4 R2 R3
      100 GETTABLEKS                       R3 R1 K8 ["AssetType"]
      102 GETTABLEKS                       R3 R3 K34 ["Video"]
      104 GETIMPORT                        R4 K35 [Enum.AssetType.Video]
      106 SETTABLE                         R4 R2 R3
      107 DUPCLOSURE                       R3 K36 [PROTO_0]
      108 CAPTURE                          VAL R2
      109 RETURN                           R3 1
