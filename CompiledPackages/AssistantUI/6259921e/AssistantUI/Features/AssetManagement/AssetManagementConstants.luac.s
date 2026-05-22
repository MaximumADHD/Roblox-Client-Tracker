MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K3 [Enum.AssetType.Audio]
        5 SETTABLEN                        R1 R0 3
        6 GETIMPORT                        R1 K5 [Enum.AssetType.Mesh]
        8 SETTABLEN                        R1 R0 4
        9 GETIMPORT                        R1 K7 [Enum.AssetType.Model]
       11 SETTABLEN                        R1 R0 10
       12 GETIMPORT                        R1 K9 [Enum.AssetType.Decal]
       14 SETTABLEN                        R1 R0 13
       15 GETIMPORT                        R1 K11 [Enum.AssetType.Animation]
       17 SETTABLEN                        R1 R0 24
       18 GETIMPORT                        R1 K13 [Enum.AssetType.Package]
       20 SETTABLEN                        R1 R0 32
       21 GETIMPORT                        R1 K15 [Enum.AssetType.MeshPart]
       23 SETTABLEN                        R1 R0 40
       24 GETIMPORT                        R1 K17 [Enum.AssetType.Video]
       26 SETTABLEN                        R1 R0 62
       27 DUPTABLE                         R1 K18 [{"Model", "Audio", "Mesh", "MeshPart", "Decal", "Video", "Animation", "Package"}]
       28 LOADK                            R2 K6 ["Model"]
       29 SETTABLEKS                       R2 R1 K6 ["Model"]
       31 LOADK                            R2 K2 ["Audio"]
       32 SETTABLEKS                       R2 R1 K2 ["Audio"]
       34 LOADK                            R2 K14 ["MeshPart"]
       35 SETTABLEKS                       R2 R1 K4 ["Mesh"]
       37 LOADK                            R2 K14 ["MeshPart"]
       38 SETTABLEKS                       R2 R1 K14 ["MeshPart"]
       40 LOADK                            R2 K8 ["Decal"]
       41 SETTABLEKS                       R2 R1 K8 ["Decal"]
       43 LOADK                            R2 K16 ["Video"]
       44 SETTABLEKS                       R2 R1 K16 ["Video"]
       46 LOADK                            R2 K10 ["Animation"]
       47 SETTABLEKS                       R2 R1 K10 ["Animation"]
       49 LOADK                            R2 K6 ["Model"]
       50 SETTABLEKS                       R2 R1 K12 ["Package"]
       52 DUPTABLE                         R2 K19 [{"Model", "Audio", "Mesh", "MeshPart", "Decal", "Video", "Package"}]
       53 LOADK                            R3 K6 ["Model"]
       54 SETTABLEKS                       R3 R2 K6 ["Model"]
       56 LOADK                            R3 K2 ["Audio"]
       57 SETTABLEKS                       R3 R2 K2 ["Audio"]
       59 LOADK                            R3 K14 ["MeshPart"]
       60 SETTABLEKS                       R3 R2 K4 ["Mesh"]
       62 LOADK                            R3 K14 ["MeshPart"]
       63 SETTABLEKS                       R3 R2 K14 ["MeshPart"]
       65 LOADK                            R3 K8 ["Decal"]
       66 SETTABLEKS                       R3 R2 K8 ["Decal"]
       68 LOADK                            R3 K16 ["Video"]
       69 SETTABLEKS                       R3 R2 K16 ["Video"]
       71 LOADK                            R3 K6 ["Model"]
       72 SETTABLEKS                       R3 R2 K12 ["Package"]
       74 DUPTABLE                         R3 K26 [{"ASSET_TYPE_MODEL", "ASSET_TYPE_AUDIO", "ASSET_TYPE_DECAL", "ASSET_TYPE_MESH_PART", "ASSET_TYPE_VIDEO", "ASSET_TYPE_ANIMATION"}]
       75 LOADK                            R4 K6 ["Model"]
       76 SETTABLEKS                       R4 R3 K20 ["ASSET_TYPE_MODEL"]
       78 LOADK                            R4 K2 ["Audio"]
       79 SETTABLEKS                       R4 R3 K21 ["ASSET_TYPE_AUDIO"]
       81 LOADK                            R4 K8 ["Decal"]
       82 SETTABLEKS                       R4 R3 K22 ["ASSET_TYPE_DECAL"]
       84 LOADK                            R4 K14 ["MeshPart"]
       85 SETTABLEKS                       R4 R3 K23 ["ASSET_TYPE_MESH_PART"]
       87 LOADK                            R4 K16 ["Video"]
       88 SETTABLEKS                       R4 R3 K24 ["ASSET_TYPE_VIDEO"]
       90 LOADK                            R4 K10 ["Animation"]
       91 SETTABLEKS                       R4 R3 K25 ["ASSET_TYPE_ANIMATION"]
       93 NEWTABLE                         R4 0 0
       95 MOVE                             R5 R0
       96 LOADNIL                          R6
       97 LOADNIL                          R7
       98 FORGPREP                         R5
       99 GETTABLEKS                       R10 R9 K27 ["Name"]
      101 SETTABLE                         R10 R4 R8
      102 FORGLOOP                         R5 2 ; [-4]
      104 NEWTABLE                         R5 0 0
      106 MOVE                             R6 R0
      107 LOADNIL                          R7
      108 LOADNIL                          R8
      109 FORGPREP                         R6
      110 GETTABLEKS                       R11 R10 K27 ["Name"]
      112 SETTABLE                         R9 R5 R11
      113 FORGLOOP                         R6 2 ; [-4]
      115 DUPTABLE                         R6 K34 [{"ASSET_TYPE_ID_MAP", "INVENTORY_ASSET_TYPE_MAP", "INVENTORY_TYPE_NORMALIZE", "CREATOR_STORE_CATEGORY_MAP", "ASSET_TYPE_ID_TO_NAME", "ASSET_TYPE_NAME_TO_ID"}]
      116 SETTABLEKS                       R0 R6 K28 ["ASSET_TYPE_ID_MAP"]
      118 SETTABLEKS                       R1 R6 K29 ["INVENTORY_ASSET_TYPE_MAP"]
      120 SETTABLEKS                       R3 R6 K30 ["INVENTORY_TYPE_NORMALIZE"]
      122 SETTABLEKS                       R2 R6 K31 ["CREATOR_STORE_CATEGORY_MAP"]
      124 SETTABLEKS                       R4 R6 K32 ["ASSET_TYPE_ID_TO_NAME"]
      126 SETTABLEKS                       R5 R6 K33 ["ASSET_TYPE_NAME_TO_ID"]
      128 RETURN                           R6 1
