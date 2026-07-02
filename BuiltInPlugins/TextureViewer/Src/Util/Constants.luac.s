MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{[1] = 1024, ["BYTES_IN_MB"] = 1048576, ["INSTANCE_PROPERTIES_TO_PARSE"]}]
        2 DUPTABLE                         R1 K24 [{"Texture", "Decal", "MeshPart", "SurfaceAppearance", "MaterialVariant", "ImageLabel", "ParticleEmitter", "Beam", "AdGui", "ClickDetector", "ImageButton", "Sky", "Trail", "TerrainDetail", "Shirt", "Pants", "SpecialMesh", "ScrollingFrame"}]
        3 NEWTABLE                         R2 0 1
        5 LOADK                            R3 K6 ["Texture"]
        6 SETLIST                          R2 R3 1 [1]
        8 SETTABLEKS                       R2 R1 K6 ["Texture"]
       10 NEWTABLE                         R2 0 1
       12 LOADK                            R3 K6 ["Texture"]
       13 SETLIST                          R2 R3 1 [1]
       15 SETTABLEKS                       R2 R1 K7 ["Decal"]
       17 NEWTABLE                         R2 0 1
       19 LOADK                            R3 K25 ["TextureID"]
       20 SETLIST                          R2 R3 1 [1]
       22 SETTABLEKS                       R2 R1 K8 ["MeshPart"]
       24 NEWTABLE                         R2 0 4
       26 LOADK                            R3 K26 ["ColorMap"]
       27 LOADK                            R4 K27 ["NormalMap"]
       28 LOADK                            R5 K28 ["MetalnessMap"]
       29 LOADK                            R6 K29 ["RoughnessMap"]
       30 SETLIST                          R2 R3 4 [1]
       32 SETTABLEKS                       R2 R1 K9 ["SurfaceAppearance"]
       34 NEWTABLE                         R2 0 4
       36 LOADK                            R3 K26 ["ColorMap"]
       37 LOADK                            R4 K27 ["NormalMap"]
       38 LOADK                            R5 K28 ["MetalnessMap"]
       39 LOADK                            R6 K29 ["RoughnessMap"]
       40 SETLIST                          R2 R3 4 [1]
       42 SETTABLEKS                       R2 R1 K10 ["MaterialVariant"]
       44 NEWTABLE                         R2 0 1
       46 LOADK                            R3 K30 ["Image"]
       47 SETLIST                          R2 R3 1 [1]
       49 SETTABLEKS                       R2 R1 K11 ["ImageLabel"]
       51 NEWTABLE                         R2 0 1
       53 LOADK                            R3 K6 ["Texture"]
       54 SETLIST                          R2 R3 1 [1]
       56 SETTABLEKS                       R2 R1 K12 ["ParticleEmitter"]
       58 NEWTABLE                         R2 0 1
       60 LOADK                            R3 K6 ["Texture"]
       61 SETLIST                          R2 R3 1 [1]
       63 SETTABLEKS                       R2 R1 K13 ["Beam"]
       65 NEWTABLE                         R2 0 1
       67 LOADK                            R3 K31 ["FallbackImage"]
       68 SETLIST                          R2 R3 1 [1]
       70 SETTABLEKS                       R2 R1 K14 ["AdGui"]
       72 NEWTABLE                         R2 0 1
       74 LOADK                            R3 K32 ["CursorIcon"]
       75 SETLIST                          R2 R3 1 [1]
       77 SETTABLEKS                       R2 R1 K15 ["ClickDetector"]
       79 NEWTABLE                         R2 0 3
       81 LOADK                            R3 K33 ["HoverImage"]
       82 LOADK                            R4 K34 ["PressedImage"]
       83 LOADK                            R5 K30 ["Image"]
       84 SETLIST                          R2 R3 3 [1]
       86 SETTABLEKS                       R2 R1 K16 ["ImageButton"]
       88 NEWTABLE                         R2 0 8
       90 LOADK                            R3 K35 ["MoonTextureId"]
       91 LOADK                            R4 K36 ["SkyboxBk"]
       92 LOADK                            R5 K37 ["SkyboxDn"]
       93 LOADK                            R6 K38 ["SkyboxFt"]
       94 LOADK                            R7 K39 ["SkyboxLf"]
       95 LOADK                            R8 K40 ["SkyboxRt"]
       96 LOADK                            R9 K41 ["SkyboxUp"]
       97 LOADK                            R10 K42 ["SunTextureId"]
       98 SETLIST                          R2 R3 8 [1]
      100 SETTABLEKS                       R2 R1 K17 ["Sky"]
      102 NEWTABLE                         R2 0 1
      104 LOADK                            R3 K6 ["Texture"]
      105 SETLIST                          R2 R3 1 [1]
      107 SETTABLEKS                       R2 R1 K18 ["Trail"]
      109 NEWTABLE                         R2 0 4
      111 LOADK                            R3 K26 ["ColorMap"]
      112 LOADK                            R4 K28 ["MetalnessMap"]
      113 LOADK                            R5 K27 ["NormalMap"]
      114 LOADK                            R6 K29 ["RoughnessMap"]
      115 SETLIST                          R2 R3 4 [1]
      117 SETTABLEKS                       R2 R1 K19 ["TerrainDetail"]
      119 NEWTABLE                         R2 0 1
      121 LOADK                            R3 K43 ["ShirtTemplate"]
      122 SETLIST                          R2 R3 1 [1]
      124 SETTABLEKS                       R2 R1 K20 ["Shirt"]
      126 NEWTABLE                         R2 0 1
      128 LOADK                            R3 K44 ["PantsTemplate"]
      129 SETLIST                          R2 R3 1 [1]
      131 SETTABLEKS                       R2 R1 K21 ["Pants"]
      133 NEWTABLE                         R2 0 1
      135 LOADK                            R3 K45 ["TextureId"]
      136 SETLIST                          R2 R3 1 [1]
      138 SETTABLEKS                       R2 R1 K22 ["SpecialMesh"]
      140 NEWTABLE                         R2 0 3
      142 LOADK                            R3 K46 ["BottomImage"]
      143 LOADK                            R4 K47 ["MidImage"]
      144 LOADK                            R5 K48 ["TopImage"]
      145 SETLIST                          R2 R3 3 [1]
      147 SETTABLEKS                       R2 R1 K23 ["ScrollingFrame"]
      149 SETTABLEKS                       R1 R0 K4 ["INSTANCE_PROPERTIES_TO_PARSE"]
      151 RETURN                           R0 1
