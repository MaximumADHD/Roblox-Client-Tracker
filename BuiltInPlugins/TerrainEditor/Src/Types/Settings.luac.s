MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Types"]
  GETTABLEKS R2 R3 K8 ["Generation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Types"]
  GETTABLEKS R3 R4 K9 ["PublicEnums"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Types"]
  GETTABLEKS R4 R5 K10 ["PrivateEnums"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Types"]
  GETTABLEKS R5 R6 K11 ["Tools"]
  CALL R4 1 1
  NEWTABLE R5 16 0
  NEWTABLE R6 16 0
  SETTABLEKS R6 R5 K12 ["Category"]
  DUPTABLE R7 K19 [{"Biomes", "BiomeBlending", "BiomeSize", "Caves", "Seed", "Generate"}]
  LOADK R8 K13 ["Biomes"]
  SETTABLEKS R8 R7 K13 ["Biomes"]
  LOADK R8 K14 ["BiomeBlending"]
  SETTABLEKS R8 R7 K14 ["BiomeBlending"]
  LOADK R8 K15 ["BiomeSize"]
  SETTABLEKS R8 R7 K15 ["BiomeSize"]
  LOADK R8 K16 ["Caves"]
  SETTABLEKS R8 R7 K16 ["Caves"]
  LOADK R8 K17 ["Seed"]
  SETTABLEKS R8 R7 K17 ["Seed"]
  LOADK R8 K18 ["Generate"]
  SETTABLEKS R8 R7 K18 ["Generate"]
  SETTABLEKS R7 R5 K20 ["BiomeSettings"]
  LOADK R8 K20 ["BiomeSettings"]
  SETTABLEKS R8 R6 K20 ["BiomeSettings"]
  DUPTABLE R8 K42 [{"BrushMode", "BrushSize", "BrushShape", "FixedYPlane", "FixedYPlanePosition", "FlattenMode", "FlattenPlane", "IgnoreParts", "IgnoreWater", "ManualPlaneLock", "PivotPosition", "PlaneLock", "PlanePosition", "PlaneRotation", "PlaneTransform", "PullTerrain", "Snapping", "State", "Strength", "TemporarySmooth", "WaterAutofill"}]
  LOADK R9 K21 ["BrushMode"]
  SETTABLEKS R9 R8 K21 ["BrushMode"]
  LOADK R9 K22 ["BrushSize"]
  SETTABLEKS R9 R8 K22 ["BrushSize"]
  LOADK R9 K23 ["BrushShape"]
  SETTABLEKS R9 R8 K23 ["BrushShape"]
  LOADK R9 K24 ["FixedYPlane"]
  SETTABLEKS R9 R8 K24 ["FixedYPlane"]
  LOADK R9 K25 ["FixedYPlanePosition"]
  SETTABLEKS R9 R8 K25 ["FixedYPlanePosition"]
  LOADK R9 K26 ["FlattenMode"]
  SETTABLEKS R9 R8 K26 ["FlattenMode"]
  LOADK R9 K27 ["FlattenPlane"]
  SETTABLEKS R9 R8 K27 ["FlattenPlane"]
  LOADK R9 K28 ["IgnoreParts"]
  SETTABLEKS R9 R8 K28 ["IgnoreParts"]
  LOADK R9 K29 ["IgnoreWater"]
  SETTABLEKS R9 R8 K29 ["IgnoreWater"]
  LOADK R9 K30 ["ManualPlaneLock"]
  SETTABLEKS R9 R8 K30 ["ManualPlaneLock"]
  LOADK R9 K31 ["PivotPosition"]
  SETTABLEKS R9 R8 K31 ["PivotPosition"]
  LOADK R9 K32 ["PlaneLock"]
  SETTABLEKS R9 R8 K32 ["PlaneLock"]
  LOADK R9 K33 ["PlanePosition"]
  SETTABLEKS R9 R8 K33 ["PlanePosition"]
  LOADK R9 K34 ["PlaneRotation"]
  SETTABLEKS R9 R8 K34 ["PlaneRotation"]
  LOADK R9 K35 ["PlaneTransform"]
  SETTABLEKS R9 R8 K35 ["PlaneTransform"]
  LOADK R9 K36 ["PullTerrain"]
  SETTABLEKS R9 R8 K36 ["PullTerrain"]
  LOADK R9 K37 ["Snapping"]
  SETTABLEKS R9 R8 K37 ["Snapping"]
  LOADK R9 K38 ["State"]
  SETTABLEKS R9 R8 K38 ["State"]
  LOADK R9 K39 ["Strength"]
  SETTABLEKS R9 R8 K39 ["Strength"]
  LOADK R9 K40 ["TemporarySmooth"]
  SETTABLEKS R9 R8 K40 ["TemporarySmooth"]
  LOADK R9 K41 ["WaterAutofill"]
  SETTABLEKS R9 R8 K41 ["WaterAutofill"]
  SETTABLEKS R8 R5 K43 ["BrushSettings"]
  LOADK R9 K43 ["BrushSettings"]
  SETTABLEKS R9 R6 K43 ["BrushSettings"]
  DUPTABLE R9 K48 [{"Unit", "Elevation", "Material", "Slope"}]
  LOADK R10 K44 ["Unit"]
  SETTABLEKS R10 R9 K44 ["Unit"]
  LOADK R10 K45 ["Elevation"]
  SETTABLEKS R10 R9 K45 ["Elevation"]
  LOADK R10 K46 ["Material"]
  SETTABLEKS R10 R9 K46 ["Material"]
  LOADK R10 K47 ["Slope"]
  SETTABLEKS R10 R9 K47 ["Slope"]
  SETTABLEKS R9 R5 K49 ["ElevationSettings"]
  LOADK R10 K49 ["ElevationSettings"]
  SETTABLEKS R10 R6 K49 ["ElevationSettings"]
  DUPTABLE R10 K52 [{"FallbackMaterial", "FillMaterial"}]
  LOADK R11 K50 ["FallbackMaterial"]
  SETTABLEKS R11 R10 K50 ["FallbackMaterial"]
  LOADK R11 K51 ["FillMaterial"]
  SETTABLEKS R11 R10 K51 ["FillMaterial"]
  SETTABLEKS R10 R5 K53 ["AdditionalSettings"]
  LOADK R11 K53 ["AdditionalSettings"]
  SETTABLEKS R11 R6 K53 ["AdditionalSettings"]
  DUPTABLE R11 K77 [{"AdvancedNoise", "BankSize", "BlendingEdge", "CliffSlope", "Confirm", "CraterDepth", "CraterRadius", "FillBottom", "Material", "MaterialLUT", "NoiseScale", "NoiseStrength", "Offset", "OperationSource", "PlacementMode", "Position", "RimHeight", "Rotation", "Seed", "Size", "SnapToVoxels", "TerrainType", "TopRadius", "Transform", "WaterLevel"}]
  LOADK R12 K54 ["AdvancedNoise"]
  SETTABLEKS R12 R11 K54 ["AdvancedNoise"]
  LOADK R12 K55 ["BankSize"]
  SETTABLEKS R12 R11 K55 ["BankSize"]
  LOADK R12 K56 ["BlendingEdge"]
  SETTABLEKS R12 R11 K56 ["BlendingEdge"]
  LOADK R12 K57 ["CliffSlope"]
  SETTABLEKS R12 R11 K57 ["CliffSlope"]
  LOADK R12 K58 ["Confirm"]
  SETTABLEKS R12 R11 K58 ["Confirm"]
  LOADK R12 K59 ["CraterDepth"]
  SETTABLEKS R12 R11 K59 ["CraterDepth"]
  LOADK R12 K60 ["CraterRadius"]
  SETTABLEKS R12 R11 K60 ["CraterRadius"]
  LOADK R12 K61 ["FillBottom"]
  SETTABLEKS R12 R11 K61 ["FillBottom"]
  LOADK R12 K46 ["Material"]
  SETTABLEKS R12 R11 K46 ["Material"]
  LOADK R12 K62 ["MaterialLUT"]
  SETTABLEKS R12 R11 K62 ["MaterialLUT"]
  LOADK R12 K63 ["NoiseScale"]
  SETTABLEKS R12 R11 K63 ["NoiseScale"]
  LOADK R12 K64 ["NoiseStrength"]
  SETTABLEKS R12 R11 K64 ["NoiseStrength"]
  LOADK R12 K65 ["Offset"]
  SETTABLEKS R12 R11 K65 ["Offset"]
  LOADK R12 K66 ["OperationSource"]
  SETTABLEKS R12 R11 K66 ["OperationSource"]
  LOADK R12 K67 ["PlacementMode"]
  SETTABLEKS R12 R11 K67 ["PlacementMode"]
  LOADK R12 K68 ["Position"]
  SETTABLEKS R12 R11 K68 ["Position"]
  LOADK R12 K69 ["RimHeight"]
  SETTABLEKS R12 R11 K69 ["RimHeight"]
  LOADK R12 K70 ["Rotation"]
  SETTABLEKS R12 R11 K70 ["Rotation"]
  LOADK R12 K17 ["Seed"]
  SETTABLEKS R12 R11 K17 ["Seed"]
  LOADK R12 K71 ["Size"]
  SETTABLEKS R12 R11 K71 ["Size"]
  LOADK R12 K72 ["SnapToVoxels"]
  SETTABLEKS R12 R11 K72 ["SnapToVoxels"]
  LOADK R12 K73 ["TerrainType"]
  SETTABLEKS R12 R11 K73 ["TerrainType"]
  LOADK R12 K74 ["TopRadius"]
  SETTABLEKS R12 R11 K74 ["TopRadius"]
  LOADK R12 K75 ["Transform"]
  SETTABLEKS R12 R11 K75 ["Transform"]
  LOADK R12 K76 ["WaterLevel"]
  SETTABLEKS R12 R11 K76 ["WaterLevel"]
  SETTABLEKS R11 R5 K78 ["BuildSettings"]
  LOADK R12 K78 ["BuildSettings"]
  SETTABLEKS R12 R6 K78 ["BuildSettings"]
  DUPTABLE R12 K80 [{"Clear"}]
  LOADK R13 K79 ["Clear"]
  SETTABLEKS R13 R12 K79 ["Clear"]
  SETTABLEKS R12 R5 K81 ["ClearSettings"]
  LOADK R13 K81 ["ClearSettings"]
  SETTABLEKS R13 R6 K81 ["ClearSettings"]
  DUPTABLE R13 K86 [{"Heightmap", "Colormap", "DefaultMaterial", "Import"}]
  LOADK R14 K82 ["Heightmap"]
  SETTABLEKS R14 R13 K82 ["Heightmap"]
  LOADK R14 K83 ["Colormap"]
  SETTABLEKS R14 R13 K83 ["Colormap"]
  LOADK R14 K84 ["DefaultMaterial"]
  SETTABLEKS R14 R13 K84 ["DefaultMaterial"]
  LOADK R14 K85 ["Import"]
  SETTABLEKS R14 R13 K85 ["Import"]
  SETTABLEKS R13 R5 K87 ["HeightmapSettings"]
  LOADK R14 K87 ["HeightmapSettings"]
  SETTABLEKS R14 R6 K87 ["HeightmapSettings"]
  DUPTABLE R14 K94 [{"Apply", "AutoMaterial", "FillMode", "MaterialMode", "SourceMaterial", "TargetMaterial"}]
  LOADK R15 K88 ["Apply"]
  SETTABLEKS R15 R14 K88 ["Apply"]
  LOADK R15 K89 ["AutoMaterial"]
  SETTABLEKS R15 R14 K89 ["AutoMaterial"]
  LOADK R15 K90 ["FillMode"]
  SETTABLEKS R15 R14 K90 ["FillMode"]
  LOADK R15 K91 ["MaterialMode"]
  SETTABLEKS R15 R14 K91 ["MaterialMode"]
  LOADK R15 K92 ["SourceMaterial"]
  SETTABLEKS R15 R14 K92 ["SourceMaterial"]
  LOADK R15 K93 ["TargetMaterial"]
  SETTABLEKS R15 R14 K93 ["TargetMaterial"]
  SETTABLEKS R14 R5 K95 ["MaterialSettings"]
  LOADK R15 K95 ["MaterialSettings"]
  SETTABLEKS R15 R6 K95 ["MaterialSettings"]
  DUPTABLE R15 K98 [{"Create", "Evaporate", "OperationSource", "Position", "Size", "SnapToVoxels", "Transform"}]
  LOADK R16 K96 ["Create"]
  SETTABLEKS R16 R15 K96 ["Create"]
  LOADK R16 K97 ["Evaporate"]
  SETTABLEKS R16 R15 K97 ["Evaporate"]
  LOADK R16 K66 ["OperationSource"]
  SETTABLEKS R16 R15 K66 ["OperationSource"]
  LOADK R16 K68 ["Position"]
  SETTABLEKS R16 R15 K68 ["Position"]
  LOADK R16 K71 ["Size"]
  SETTABLEKS R16 R15 K71 ["Size"]
  LOADK R16 K72 ["SnapToVoxels"]
  SETTABLEKS R16 R15 K72 ["SnapToVoxels"]
  LOADK R16 K75 ["Transform"]
  SETTABLEKS R16 R15 K75 ["Transform"]
  SETTABLEKS R15 R5 K99 ["SeaLevelSettings"]
  LOADK R16 K99 ["SeaLevelSettings"]
  SETTABLEKS R16 R6 K99 ["SeaLevelSettings"]
  DUPTABLE R16 K101 [{"OperationSource", "Position", "Rotation", "Size", "SnapToVoxels", "Transform", "TransformMode"}]
  LOADK R17 K66 ["OperationSource"]
  SETTABLEKS R17 R16 K66 ["OperationSource"]
  LOADK R17 K68 ["Position"]
  SETTABLEKS R17 R16 K68 ["Position"]
  LOADK R17 K70 ["Rotation"]
  SETTABLEKS R17 R16 K70 ["Rotation"]
  LOADK R17 K71 ["Size"]
  SETTABLEKS R17 R16 K71 ["Size"]
  LOADK R17 K72 ["SnapToVoxels"]
  SETTABLEKS R17 R16 K72 ["SnapToVoxels"]
  LOADK R17 K75 ["Transform"]
  SETTABLEKS R17 R16 K75 ["Transform"]
  LOADK R17 K100 ["TransformMode"]
  SETTABLEKS R17 R16 K100 ["TransformMode"]
  SETTABLEKS R16 R5 K102 ["SelectionSettings"]
  LOADK R17 K102 ["SelectionSettings"]
  SETTABLEKS R17 R6 K102 ["SelectionSettings"]
  DUPTABLE R17 K112 [{"Apply", "ForcePreview", "LiveEdit", "MergeEmpty", "OperationSource", "Position", "Rotation", "Size", "SnapToVoxels", "TerrainRegion", "TerrainRegionSize", "TerrainRegionTransform", "TerrainRegionBuffer", "TerrainRegionBufferSize", "TerrainRegionBufferTransform", "Transform", "TransformMode"}]
  LOADK R18 K88 ["Apply"]
  SETTABLEKS R18 R17 K88 ["Apply"]
  LOADK R18 K103 ["ForcePreview"]
  SETTABLEKS R18 R17 K103 ["ForcePreview"]
  LOADK R18 K104 ["LiveEdit"]
  SETTABLEKS R18 R17 K104 ["LiveEdit"]
  LOADK R18 K105 ["MergeEmpty"]
  SETTABLEKS R18 R17 K105 ["MergeEmpty"]
  LOADK R18 K66 ["OperationSource"]
  SETTABLEKS R18 R17 K66 ["OperationSource"]
  LOADK R18 K68 ["Position"]
  SETTABLEKS R18 R17 K68 ["Position"]
  LOADK R18 K70 ["Rotation"]
  SETTABLEKS R18 R17 K70 ["Rotation"]
  LOADK R18 K71 ["Size"]
  SETTABLEKS R18 R17 K71 ["Size"]
  LOADK R18 K72 ["SnapToVoxels"]
  SETTABLEKS R18 R17 K72 ["SnapToVoxels"]
  LOADK R18 K106 ["TerrainRegion"]
  SETTABLEKS R18 R17 K106 ["TerrainRegion"]
  LOADK R18 K107 ["TerrainRegionSize"]
  SETTABLEKS R18 R17 K107 ["TerrainRegionSize"]
  LOADK R18 K108 ["TerrainRegionTransform"]
  SETTABLEKS R18 R17 K108 ["TerrainRegionTransform"]
  LOADK R18 K109 ["TerrainRegionBuffer"]
  SETTABLEKS R18 R17 K109 ["TerrainRegionBuffer"]
  LOADK R18 K110 ["TerrainRegionBufferSize"]
  SETTABLEKS R18 R17 K110 ["TerrainRegionBufferSize"]
  LOADK R18 K111 ["TerrainRegionBufferTransform"]
  SETTABLEKS R18 R17 K111 ["TerrainRegionBufferTransform"]
  LOADK R18 K75 ["Transform"]
  SETTABLEKS R18 R17 K75 ["Transform"]
  LOADK R18 K100 ["TransformMode"]
  SETTABLEKS R18 R17 K100 ["TransformMode"]
  SETTABLEKS R17 R5 K113 ["TransformSettings"]
  LOADK R18 K113 ["TransformSettings"]
  SETTABLEKS R18 R6 K113 ["TransformSettings"]
  DUPTABLE R18 K115 [{"Shorelines"}]
  LOADK R19 K114 ["Shorelines"]
  SETTABLEKS R19 R18 K114 ["Shorelines"]
  SETTABLEKS R18 R5 K116 ["UpgradeSettings"]
  LOADK R19 K116 ["UpgradeSettings"]
  SETTABLEKS R19 R6 K116 ["UpgradeSettings"]
  DUPTABLE R19 K122 [{"Brush", "Note", "Placement", "Plane", "Region"}]
  LOADK R20 K117 ["Brush"]
  SETTABLEKS R20 R19 K117 ["Brush"]
  LOADK R20 K118 ["Note"]
  SETTABLEKS R20 R19 K118 ["Note"]
  LOADK R20 K119 ["Placement"]
  SETTABLEKS R20 R19 K119 ["Placement"]
  LOADK R20 K120 ["Plane"]
  SETTABLEKS R20 R19 K120 ["Plane"]
  LOADK R20 K121 ["Region"]
  SETTABLEKS R20 R19 K121 ["Region"]
  SETTABLEKS R19 R5 K123 ["Gizmo"]
  DUPTABLE R20 K124 [{"Transform"}]
  LOADK R21 K75 ["Transform"]
  SETTABLEKS R21 R20 K75 ["Transform"]
  SETTABLEKS R20 R5 K118 ["Note"]
  DUPTABLE R21 K128 [{"Global", "LocalPersistent", "LocalSession"}]
  LOADK R22 K125 ["Global"]
  SETTABLEKS R22 R21 K125 ["Global"]
  LOADK R22 K126 ["LocalPersistent"]
  SETTABLEKS R22 R21 K126 ["LocalPersistent"]
  LOADK R22 K127 ["LocalSession"]
  SETTABLEKS R22 R21 K127 ["LocalSession"]
  SETTABLEKS R21 R5 K129 ["Storage"]
  RETURN R5 1
