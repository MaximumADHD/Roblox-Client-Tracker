MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K3 [Enum.AssetType.Image]
        5 SETTABLEN                        R1 R0 1
        6 GETIMPORT                        R1 K5 [Enum.AssetType.Audio]
        8 SETTABLEN                        R1 R0 3
        9 GETIMPORT                        R1 K7 [Enum.AssetType.Mesh]
       11 SETTABLEN                        R1 R0 4
       12 GETIMPORT                        R1 K9 [Enum.AssetType.Model]
       14 SETTABLEN                        R1 R0 10
       15 GETIMPORT                        R1 K11 [Enum.AssetType.Decal]
       17 SETTABLEN                        R1 R0 13
       18 GETIMPORT                        R1 K13 [Enum.AssetType.Animation]
       20 SETTABLEN                        R1 R0 24
       21 GETIMPORT                        R1 K15 [Enum.AssetType.Package]
       23 SETTABLEN                        R1 R0 32
       24 GETIMPORT                        R1 K17 [Enum.AssetType.MeshPart]
       26 SETTABLEN                        R1 R0 40
       27 GETIMPORT                        R1 K19 [Enum.AssetType.Video]
       29 SETTABLEN                        R1 R0 62
       30 DUPTABLE                         R1 K20 [{"Model", "Audio", "Mesh", "MeshPart", "Image", "Decal", "Video", "Animation", "Package"}]
       31 LOADK                            R2 K8 ["Model"]
       32 SETTABLEKS                       R2 R1 K8 ["Model"]
       34 LOADK                            R2 K4 ["Audio"]
       35 SETTABLEKS                       R2 R1 K4 ["Audio"]
       37 LOADK                            R2 K6 ["Mesh"]
       38 SETTABLEKS                       R2 R1 K6 ["Mesh"]
       40 LOADK                            R2 K16 ["MeshPart"]
       41 SETTABLEKS                       R2 R1 K16 ["MeshPart"]
       43 LOADK                            R2 K2 ["Image"]
       44 SETTABLEKS                       R2 R1 K2 ["Image"]
       46 LOADK                            R2 K10 ["Decal"]
       47 SETTABLEKS                       R2 R1 K10 ["Decal"]
       49 LOADK                            R2 K18 ["Video"]
       50 SETTABLEKS                       R2 R1 K18 ["Video"]
       52 LOADK                            R2 K12 ["Animation"]
       53 SETTABLEKS                       R2 R1 K12 ["Animation"]
       55 LOADK                            R2 K8 ["Model"]
       56 SETTABLEKS                       R2 R1 K14 ["Package"]
       58 DUPTABLE                         R2 K21 [{"Model", "Audio", "Mesh", "MeshPart", "Image", "Decal", "Video", "Package"}]
       59 LOADK                            R3 K8 ["Model"]
       60 SETTABLEKS                       R3 R2 K8 ["Model"]
       62 LOADK                            R3 K4 ["Audio"]
       63 SETTABLEKS                       R3 R2 K4 ["Audio"]
       65 LOADK                            R3 K16 ["MeshPart"]
       66 SETTABLEKS                       R3 R2 K6 ["Mesh"]
       68 LOADK                            R3 K16 ["MeshPart"]
       69 SETTABLEKS                       R3 R2 K16 ["MeshPart"]
       71 LOADK                            R3 K10 ["Decal"]
       72 SETTABLEKS                       R3 R2 K2 ["Image"]
       74 LOADK                            R3 K10 ["Decal"]
       75 SETTABLEKS                       R3 R2 K10 ["Decal"]
       77 LOADK                            R3 K18 ["Video"]
       78 SETTABLEKS                       R3 R2 K18 ["Video"]
       80 LOADK                            R3 K8 ["Model"]
       81 SETTABLEKS                       R3 R2 K14 ["Package"]
       83 DUPTABLE                         R3 K30 [{"ASSET_TYPE_MODEL", "ASSET_TYPE_AUDIO", "ASSET_TYPE_IMAGE", "ASSET_TYPE_DECAL", "ASSET_TYPE_MESH", "ASSET_TYPE_MESH_PART", "ASSET_TYPE_VIDEO", "ASSET_TYPE_ANIMATION"}]
       84 LOADK                            R4 K8 ["Model"]
       85 SETTABLEKS                       R4 R3 K22 ["ASSET_TYPE_MODEL"]
       87 LOADK                            R4 K4 ["Audio"]
       88 SETTABLEKS                       R4 R3 K23 ["ASSET_TYPE_AUDIO"]
       90 LOADK                            R4 K2 ["Image"]
       91 SETTABLEKS                       R4 R3 K24 ["ASSET_TYPE_IMAGE"]
       93 LOADK                            R4 K10 ["Decal"]
       94 SETTABLEKS                       R4 R3 K25 ["ASSET_TYPE_DECAL"]
       96 LOADK                            R4 K6 ["Mesh"]
       97 SETTABLEKS                       R4 R3 K26 ["ASSET_TYPE_MESH"]
       99 LOADK                            R4 K16 ["MeshPart"]
      100 SETTABLEKS                       R4 R3 K27 ["ASSET_TYPE_MESH_PART"]
      102 LOADK                            R4 K18 ["Video"]
      103 SETTABLEKS                       R4 R3 K28 ["ASSET_TYPE_VIDEO"]
      105 LOADK                            R4 K12 ["Animation"]
      106 SETTABLEKS                       R4 R3 K29 ["ASSET_TYPE_ANIMATION"]
      108 NEWTABLE                         R4 0 0
      110 MOVE                             R5 R0
      111 LOADNIL                          R6
      112 LOADNIL                          R7
      113 FORGPREP                         R5
      114 GETTABLEKS                       R10 R9 K31 ["Name"]
      116 SETTABLE                         R10 R4 R8
      117 FORGLOOP                         R5 2 ; [-4]
      119 NEWTABLE                         R5 0 0
      121 MOVE                             R6 R0
      122 LOADNIL                          R7
      123 LOADNIL                          R8
      124 FORGPREP                         R6
      125 GETTABLEKS                       R11 R10 K31 ["Name"]
      127 SETTABLE                         R9 R5 R11
      128 FORGLOOP                         R6 2 ; [-4]
      130 DUPTABLE                         R6 K37 [{"CreatorStore", "User", "Group", "Universe", "Inventory"}]
      131 LOADK                            R7 K38 ["creator_store"]
      132 SETTABLEKS                       R7 R6 K32 ["CreatorStore"]
      134 LOADK                            R7 K39 ["user"]
      135 SETTABLEKS                       R7 R6 K33 ["User"]
      137 LOADK                            R7 K40 ["group"]
      138 SETTABLEKS                       R7 R6 K34 ["Group"]
      140 LOADK                            R7 K41 ["universe"]
      141 SETTABLEKS                       R7 R6 K35 ["Universe"]
      143 LOADK                            R7 K42 ["inventory"]
      144 SETTABLEKS                       R7 R6 K36 ["Inventory"]
      146 DUPTABLE                         R7 K50 [{"ASSET_TYPE_ID_MAP", "INVENTORY_ASSET_TYPE_MAP", "INVENTORY_TYPE_NORMALIZE", "CREATOR_STORE_CATEGORY_MAP", "ASSET_TYPE_ID_TO_NAME", "ASSET_TYPE_NAME_TO_ID", "SearchSource"}]
      147 SETTABLEKS                       R0 R7 K43 ["ASSET_TYPE_ID_MAP"]
      149 SETTABLEKS                       R1 R7 K44 ["INVENTORY_ASSET_TYPE_MAP"]
      151 SETTABLEKS                       R3 R7 K45 ["INVENTORY_TYPE_NORMALIZE"]
      153 SETTABLEKS                       R2 R7 K46 ["CREATOR_STORE_CATEGORY_MAP"]
      155 SETTABLEKS                       R4 R7 K47 ["ASSET_TYPE_ID_TO_NAME"]
      157 SETTABLEKS                       R5 R7 K48 ["ASSET_TYPE_NAME_TO_ID"]
      159 SETTABLEKS                       R6 R7 K49 ["SearchSource"]
      161 RETURN                           R7 1
