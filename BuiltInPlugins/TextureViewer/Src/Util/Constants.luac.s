MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"BYTES_IN_KB", "BYTES_IN_MB", "INSTANCE_PROPERTIES_TO_PARSE"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["BYTES_IN_KB"]
  LOADK R1 K4 [1048576]
  SETTABLEKS R1 R0 K1 ["BYTES_IN_MB"]
  DUPTABLE R1 K23 [{"Texture", "Decal", "MeshPart", "SurfaceAppearance", "MaterialVariant", "ImageLabel", "ParticleEmitter", "Beam", "AdGui", "ClickDetector", "ImageButton", "Sky", "Trail", "TerrainDetail", "Shirt", "Pants", "SpecialMesh", "ScrollingFrame"}]
  NEWTABLE R2 0 1
  LOADK R3 K5 ["Texture"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K5 ["Texture"]
  NEWTABLE R2 0 1
  LOADK R3 K5 ["Texture"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K6 ["Decal"]
  NEWTABLE R2 0 1
  LOADK R3 K24 ["TextureID"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K7 ["MeshPart"]
  NEWTABLE R2 0 4
  LOADK R3 K25 ["ColorMap"]
  LOADK R4 K26 ["NormalMap"]
  LOADK R5 K27 ["MetalnessMap"]
  LOADK R6 K28 ["RoughnessMap"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K8 ["SurfaceAppearance"]
  NEWTABLE R2 0 4
  LOADK R3 K25 ["ColorMap"]
  LOADK R4 K26 ["NormalMap"]
  LOADK R5 K27 ["MetalnessMap"]
  LOADK R6 K28 ["RoughnessMap"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K9 ["MaterialVariant"]
  NEWTABLE R2 0 1
  LOADK R3 K29 ["Image"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K10 ["ImageLabel"]
  NEWTABLE R2 0 1
  LOADK R3 K5 ["Texture"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K11 ["ParticleEmitter"]
  NEWTABLE R2 0 1
  LOADK R3 K5 ["Texture"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K12 ["Beam"]
  NEWTABLE R2 0 1
  LOADK R3 K30 ["FallbackImage"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K13 ["AdGui"]
  NEWTABLE R2 0 1
  LOADK R3 K31 ["CursorIcon"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K14 ["ClickDetector"]
  NEWTABLE R2 0 3
  LOADK R3 K32 ["HoverImage"]
  LOADK R4 K33 ["PressedImage"]
  LOADK R5 K29 ["Image"]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K15 ["ImageButton"]
  NEWTABLE R2 0 8
  LOADK R3 K34 ["MoonTextureId"]
  LOADK R4 K35 ["SkyboxBk"]
  LOADK R5 K36 ["SkyboxDn"]
  LOADK R6 K37 ["SkyboxFt"]
  LOADK R7 K38 ["SkyboxLf"]
  LOADK R8 K39 ["SkyboxRt"]
  LOADK R9 K40 ["SkyboxUp"]
  LOADK R10 K41 ["SunTextureId"]
  SETLIST R2 R3 8 [1]
  SETTABLEKS R2 R1 K16 ["Sky"]
  NEWTABLE R2 0 1
  LOADK R3 K5 ["Texture"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K17 ["Trail"]
  NEWTABLE R2 0 4
  LOADK R3 K25 ["ColorMap"]
  LOADK R4 K27 ["MetalnessMap"]
  LOADK R5 K26 ["NormalMap"]
  LOADK R6 K28 ["RoughnessMap"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K18 ["TerrainDetail"]
  NEWTABLE R2 0 1
  LOADK R3 K42 ["ShirtTemplate"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K19 ["Shirt"]
  NEWTABLE R2 0 1
  LOADK R3 K43 ["PantsTemplate"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K20 ["Pants"]
  NEWTABLE R2 0 1
  LOADK R3 K44 ["TextureId"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K21 ["SpecialMesh"]
  NEWTABLE R2 0 3
  LOADK R3 K45 ["BottomImage"]
  LOADK R4 K46 ["MidImage"]
  LOADK R5 K47 ["TopImage"]
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K22 ["ScrollingFrame"]
  SETTABLEKS R1 R0 K2 ["INSTANCE_PROPERTIES_TO_PARSE"]
  RETURN R0 1
