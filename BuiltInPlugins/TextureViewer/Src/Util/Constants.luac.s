MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"BYTES_IN_KB", "BYTES_IN_MB", "INSTANCE_PROPERTIES_TO_PARSE"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["BYTES_IN_KB"]
        5 LOADK                            R1 K4 [1048576]
        6 SETTABLEKS                       R1 R0 K1 ["BYTES_IN_MB"]
        8 DUPTABLE                         R1 K23 [{"Texture", "Decal", "MeshPart", "SurfaceAppearance", "MaterialVariant", "ImageLabel", "ParticleEmitter", "Beam", "AdGui", "ClickDetector", "ImageButton", "Sky", "Trail", "TerrainDetail", "Shirt", "Pants", "SpecialMesh", "ScrollingFrame"}]
        9 NEWTABLE                         R2 0 1
       11 LOADK                            R3 K5 ["Texture"]
       12 SETLIST                          R2 R3 1 [1]
       14 SETTABLEKS                       R2 R1 K5 ["Texture"]
       16 NEWTABLE                         R2 0 1
       18 LOADK                            R3 K5 ["Texture"]
       19 SETLIST                          R2 R3 1 [1]
       21 SETTABLEKS                       R2 R1 K6 ["Decal"]
       23 NEWTABLE                         R2 0 1
       25 LOADK                            R3 K24 ["TextureID"]
       26 SETLIST                          R2 R3 1 [1]
       28 SETTABLEKS                       R2 R1 K7 ["MeshPart"]
       30 NEWTABLE                         R2 0 4
       32 LOADK                            R3 K25 ["ColorMap"]
       33 LOADK                            R4 K26 ["NormalMap"]
       34 LOADK                            R5 K27 ["MetalnessMap"]
       35 LOADK                            R6 K28 ["RoughnessMap"]
       36 SETLIST                          R2 R3 4 [1]
       38 SETTABLEKS                       R2 R1 K8 ["SurfaceAppearance"]
       40 NEWTABLE                         R2 0 4
       42 LOADK                            R3 K25 ["ColorMap"]
       43 LOADK                            R4 K26 ["NormalMap"]
       44 LOADK                            R5 K27 ["MetalnessMap"]
       45 LOADK                            R6 K28 ["RoughnessMap"]
       46 SETLIST                          R2 R3 4 [1]
       48 SETTABLEKS                       R2 R1 K9 ["MaterialVariant"]
       50 NEWTABLE                         R2 0 1
       52 LOADK                            R3 K29 ["Image"]
       53 SETLIST                          R2 R3 1 [1]
       55 SETTABLEKS                       R2 R1 K10 ["ImageLabel"]
       57 NEWTABLE                         R2 0 1
       59 LOADK                            R3 K5 ["Texture"]
       60 SETLIST                          R2 R3 1 [1]
       62 SETTABLEKS                       R2 R1 K11 ["ParticleEmitter"]
       64 NEWTABLE                         R2 0 1
       66 LOADK                            R3 K5 ["Texture"]
       67 SETLIST                          R2 R3 1 [1]
       69 SETTABLEKS                       R2 R1 K12 ["Beam"]
       71 NEWTABLE                         R2 0 1
       73 LOADK                            R3 K30 ["FallbackImage"]
       74 SETLIST                          R2 R3 1 [1]
       76 SETTABLEKS                       R2 R1 K13 ["AdGui"]
       78 NEWTABLE                         R2 0 1
       80 LOADK                            R3 K31 ["CursorIcon"]
       81 SETLIST                          R2 R3 1 [1]
       83 SETTABLEKS                       R2 R1 K14 ["ClickDetector"]
       85 NEWTABLE                         R2 0 3
       87 LOADK                            R3 K32 ["HoverImage"]
       88 LOADK                            R4 K33 ["PressedImage"]
       89 LOADK                            R5 K29 ["Image"]
       90 SETLIST                          R2 R3 3 [1]
       92 SETTABLEKS                       R2 R1 K15 ["ImageButton"]
       94 NEWTABLE                         R2 0 8
       96 LOADK                            R3 K34 ["MoonTextureId"]
       97 LOADK                            R4 K35 ["SkyboxBk"]
       98 LOADK                            R5 K36 ["SkyboxDn"]
       99 LOADK                            R6 K37 ["SkyboxFt"]
      100 LOADK                            R7 K38 ["SkyboxLf"]
      101 LOADK                            R8 K39 ["SkyboxRt"]
      102 LOADK                            R9 K40 ["SkyboxUp"]
      103 LOADK                            R10 K41 ["SunTextureId"]
      104 SETLIST                          R2 R3 8 [1]
      106 SETTABLEKS                       R2 R1 K16 ["Sky"]
      108 NEWTABLE                         R2 0 1
      110 LOADK                            R3 K5 ["Texture"]
      111 SETLIST                          R2 R3 1 [1]
      113 SETTABLEKS                       R2 R1 K17 ["Trail"]
      115 NEWTABLE                         R2 0 4
      117 LOADK                            R3 K25 ["ColorMap"]
      118 LOADK                            R4 K27 ["MetalnessMap"]
      119 LOADK                            R5 K26 ["NormalMap"]
      120 LOADK                            R6 K28 ["RoughnessMap"]
      121 SETLIST                          R2 R3 4 [1]
      123 SETTABLEKS                       R2 R1 K18 ["TerrainDetail"]
      125 NEWTABLE                         R2 0 1
      127 LOADK                            R3 K42 ["ShirtTemplate"]
      128 SETLIST                          R2 R3 1 [1]
      130 SETTABLEKS                       R2 R1 K19 ["Shirt"]
      132 NEWTABLE                         R2 0 1
      134 LOADK                            R3 K43 ["PantsTemplate"]
      135 SETLIST                          R2 R3 1 [1]
      137 SETTABLEKS                       R2 R1 K20 ["Pants"]
      139 NEWTABLE                         R2 0 1
      141 LOADK                            R3 K44 ["TextureId"]
      142 SETLIST                          R2 R3 1 [1]
      144 SETTABLEKS                       R2 R1 K21 ["SpecialMesh"]
      146 NEWTABLE                         R2 0 3
      148 LOADK                            R3 K45 ["BottomImage"]
      149 LOADK                            R4 K46 ["MidImage"]
      150 LOADK                            R5 K47 ["TopImage"]
      151 SETLIST                          R2 R3 3 [1]
      153 SETTABLEKS                       R2 R1 K22 ["ScrollingFrame"]
      155 SETTABLEKS                       R1 R0 K2 ["INSTANCE_PROPERTIES_TO_PARSE"]
      157 RETURN                           R0 1
