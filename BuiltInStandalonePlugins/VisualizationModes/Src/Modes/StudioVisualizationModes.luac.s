PROTO_0:
  GETIMPORT R1 K1 [settings]
  CALL R1 0 1
  GETTABLEKS R2 R0 K2 ["Localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["Fragment"]
  NEWTABLE R5 0 0
  NEWTABLE R6 0 4
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  LOADK R8 K5 ["VisualizationModeCategory"]
  DUPTABLE R9 K8 [{"Name", "Title"}]
  LOADK R10 K9 ["Physics"]
  SETTABLEKS R10 R9 K6 ["Name"]
  LOADK R12 K10 ["VisualizationModeCategories"]
  LOADK R13 K9 ["Physics"]
  NAMECALL R10 R2 K11 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K7 ["Title"]
  NEWTABLE R10 0 2
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 1
  DUPTABLE R13 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R14 K15 ["DecompositionGeometry"]
  SETTABLEKS R14 R13 K6 ["Name"]
  LOADK R16 K16 ["StudioModes"]
  LOADK R17 K15 ["DecompositionGeometry"]
  NAMECALL R14 R2 K11 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K7 ["Title"]
  GETTABLEKS R14 R1 K9 ["Physics"]
  SETTABLEKS R14 R13 K12 ["Setting"]
  LOADK R14 K17 ["ShowDecompositionGeometry"]
  SETTABLEKS R14 R13 K13 ["Property"]
  CALL R11 2 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R15 K18 ["ConstraintDetails"]
  SETTABLEKS R15 R14 K6 ["Name"]
  LOADK R17 K16 ["StudioModes"]
  LOADK R18 K18 ["ConstraintDetails"]
  NAMECALL R15 R2 K11 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K7 ["Title"]
  GETIMPORT R15 K20 [game]
  LOADK R17 K21 ["StudioService"]
  NAMECALL R15 R15 K22 ["GetService"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K12 ["Setting"]
  LOADK R15 K23 ["ShowConstraintDetails"]
  SETTABLEKS R15 R14 K13 ["Property"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K5 ["VisualizationModeCategory"]
  DUPTABLE R10 K8 [{"Name", "Title"}]
  LOADK R11 K24 ["Rendering"]
  SETTABLEKS R11 R10 K6 ["Name"]
  LOADK R13 K10 ["VisualizationModeCategories"]
  LOADK R14 K24 ["Rendering"]
  NAMECALL R11 R2 K11 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Title"]
  NEWTABLE R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R15 K25 ["LightGuides"]
  SETTABLEKS R15 R14 K6 ["Name"]
  LOADK R17 K16 ["StudioModes"]
  LOADK R18 K25 ["LightGuides"]
  NAMECALL R15 R2 K11 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K7 ["Title"]
  GETTABLEKS R15 R1 K26 ["Studio"]
  SETTABLEKS R15 R14 K12 ["Setting"]
  LOADK R15 K27 ["Show Light Guides"]
  SETTABLEKS R15 R14 K13 ["Property"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["createElement"]
  LOADK R10 K5 ["VisualizationModeCategory"]
  DUPTABLE R11 K8 [{"Name", "Title"}]
  LOADK R12 K28 ["Pathfinding"]
  SETTABLEKS R12 R11 K6 ["Name"]
  LOADK R14 K10 ["VisualizationModeCategories"]
  LOADK R15 K28 ["Pathfinding"]
  NAMECALL R12 R2 K11 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K7 ["Title"]
  NEWTABLE R12 0 3
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K3 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R16 K29 ["PathfindingMesh"]
  SETTABLEKS R16 R15 K6 ["Name"]
  LOADK R18 K16 ["StudioModes"]
  LOADK R19 K29 ["PathfindingMesh"]
  NAMECALL R16 R2 K11 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K7 ["Title"]
  GETTABLEKS R16 R1 K26 ["Studio"]
  SETTABLEKS R16 R15 K12 ["Setting"]
  LOADK R16 K30 ["Show Navigation Mesh"]
  SETTABLEKS R16 R15 K13 ["Property"]
  CALL R13 2 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K3 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R17 K31 ["PathfindingLabels"]
  SETTABLEKS R17 R16 K6 ["Name"]
  LOADK R19 K16 ["StudioModes"]
  LOADK R20 K31 ["PathfindingLabels"]
  NAMECALL R17 R2 K11 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K7 ["Title"]
  GETTABLEKS R17 R1 K26 ["Studio"]
  SETTABLEKS R17 R16 K12 ["Setting"]
  LOADK R17 K30 ["Show Navigation Mesh"]
  SETTABLEKS R17 R16 K13 ["Property"]
  CALL R14 2 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K3 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R18 K32 ["PathfindingLinks"]
  SETTABLEKS R18 R17 K6 ["Name"]
  LOADK R20 K16 ["StudioModes"]
  LOADK R21 K32 ["PathfindingLinks"]
  NAMECALL R18 R2 K11 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K7 ["Title"]
  GETTABLEKS R18 R1 K26 ["Studio"]
  SETTABLEKS R18 R17 K12 ["Setting"]
  LOADK R18 K33 ["Show Pathfinding Links"]
  SETTABLEKS R18 R17 K13 ["Property"]
  CALL R15 2 -1
  SETLIST R12 R13 -1 [1]
  CALL R9 3 1
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["createElement"]
  LOADK R11 K5 ["VisualizationModeCategory"]
  DUPTABLE R12 K8 [{"Name", "Title"}]
  LOADK R13 K34 ["PhysicsDebug"]
  SETTABLEKS R13 R12 K6 ["Name"]
  LOADK R15 K10 ["VisualizationModeCategories"]
  LOADK R16 K34 ["PhysicsDebug"]
  NAMECALL R13 R2 K11 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K7 ["Title"]
  NEWTABLE R13 0 5
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K3 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R17 K35 ["NetworkOwner"]
  SETTABLEKS R17 R16 K6 ["Name"]
  LOADK R19 K16 ["StudioModes"]
  LOADK R20 K35 ["NetworkOwner"]
  NAMECALL R17 R2 K11 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K7 ["Title"]
  GETTABLEKS R17 R1 K9 ["Physics"]
  SETTABLEKS R17 R16 K12 ["Setting"]
  LOADK R17 K36 ["AreOwnersShown"]
  SETTABLEKS R17 R16 K13 ["Property"]
  CALL R14 2 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K3 ["createElement"]
  GETUPVAL R16 1
  DUPTABLE R17 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R18 K37 ["Assemblies"]
  SETTABLEKS R18 R17 K6 ["Name"]
  LOADK R20 K16 ["StudioModes"]
  LOADK R21 K37 ["Assemblies"]
  NAMECALL R18 R2 K11 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K7 ["Title"]
  GETTABLEKS R18 R1 K9 ["Physics"]
  SETTABLEKS R18 R17 K12 ["Setting"]
  LOADK R18 K38 ["AreAssembliesShown"]
  SETTABLEKS R18 R17 K13 ["Property"]
  CALL R15 2 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R19 K39 ["ContactPoints"]
  SETTABLEKS R19 R18 K6 ["Name"]
  LOADK R21 K16 ["StudioModes"]
  LOADK R22 K39 ["ContactPoints"]
  NAMECALL R19 R2 K11 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K7 ["Title"]
  GETTABLEKS R19 R1 K9 ["Physics"]
  SETTABLEKS R19 R18 K12 ["Setting"]
  LOADK R19 K40 ["AreContactPointsShown"]
  SETTABLEKS R19 R18 K13 ["Property"]
  CALL R16 2 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K3 ["createElement"]
  GETUPVAL R18 1
  DUPTABLE R19 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R20 K41 ["AwakeParts"]
  SETTABLEKS R20 R19 K6 ["Name"]
  LOADK R22 K16 ["StudioModes"]
  LOADK R23 K41 ["AwakeParts"]
  NAMECALL R20 R2 K11 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K7 ["Title"]
  GETTABLEKS R20 R1 K9 ["Physics"]
  SETTABLEKS R20 R19 K12 ["Setting"]
  LOADK R20 K42 ["AreAwakePartsHighlighted"]
  SETTABLEKS R20 R19 K13 ["Property"]
  CALL R17 2 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K3 ["createElement"]
  GETUPVAL R19 1
  DUPTABLE R20 K14 [{"Name", "Title", "Setting", "Property"}]
  LOADK R21 K43 ["Mechanisms"]
  SETTABLEKS R21 R20 K6 ["Name"]
  LOADK R23 K16 ["StudioModes"]
  LOADK R24 K44 ["AreMechanismsShown"]
  NAMECALL R21 R2 K11 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K7 ["Title"]
  GETTABLEKS R21 R1 K9 ["Physics"]
  SETTABLEKS R21 R20 K12 ["Setting"]
  LOADK R21 K44 ["AreMechanismsShown"]
  SETTABLEKS R21 R20 K13 ["Property"]
  CALL R18 2 -1
  SETLIST R13 R14 -1 [1]
  CALL R10 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Modes"]
  GETTABLEKS R3 R4 K10 ["SettingVisualizationMode"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K11 ["_Index"]
  GETTABLEKS R6 R7 K12 ["DeveloperFramework"]
  GETTABLEKS R5 R6 K12 ["DeveloperFramework"]
  GETTABLEKS R4 R5 K13 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R4 1
