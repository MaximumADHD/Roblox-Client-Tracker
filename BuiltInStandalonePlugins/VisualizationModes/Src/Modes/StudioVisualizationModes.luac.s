PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETTABLEKS R4 R0 K0 ["SettingsInstance"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R0 K0 ["SettingsInstance"]
  JUMP [+3]
  GETIMPORT R3 K2 [settings]
  CALL R3 0 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Localization"]
  NAMECALL R4 R4 K4 ["use"]
  CALL R4 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["createElement"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["Fragment"]
  NEWTABLE R7 0 0
  DUPTABLE R8 K14 [{"GUI", "Lighting", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K7 ["GUI"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K22 [{"DeviceEmulation", "GUIOverlay"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K20 ["DeviceEmulation"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K29 ["DeviceEmulationToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K20 ["DeviceEmulation"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K30 ["Toggle"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["DeviceEmulation"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K21 ["GUIOverlay"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K34 ["GUIOverlayToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  JUMPIFNOT R1 [+7]
  GETIMPORT R16 K36 [game]
  LOADK R18 K37 ["StarterGui"]
  NAMECALL R16 R16 K38 ["GetService"]
  CALL R16 2 1
  JUMP [+4]
  GETIMPORT R17 K36 [game]
  GETTABLEKS R16 R17 K37 ["StarterGui"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K39 ["ShowDevelopmentGui"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["GUIOverlay"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["GUI"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K8 ["Lighting"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K41 [{"Lights"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K40 ["Lights"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K42 ["LightsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K43 ["Studio"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K44 ["Show Light Guides"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K40 ["Lights"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Lighting"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K9 ["Pathfinding"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K48 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K45 ["PathfindingMesh"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K49 ["PathfindingMeshToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K43 ["Studio"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K50 ["Show Navigation Mesh"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K45 ["PathfindingMesh"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K46 ["PathfindingModifiers"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K51 ["PathfindingModifiersToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K43 ["Studio"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K52 ["Show Navigation Labels"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["PathfindingModifiers"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K47 ["PathfindingLinks"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K53 ["PathfindingLinksToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K43 ["Studio"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K54 ["Show Pathfinding Links"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K47 ["PathfindingLinks"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K9 ["Pathfinding"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K10 ["PhysicsConstraints"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K57 [{"Constraints", "Welds"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K55 ["Constraints"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K58 ["ConstraintsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K55 ["Constraints"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K59 ["ShowDetails"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K55 ["Constraints"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K56 ["Welds"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K60 ["WeldsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K55 ["Constraints"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K61 ["ShowWelds"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K56 ["Welds"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["PhysicsConstraints"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K11 ["PhysicsLabels"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K67 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K62 ["AnchoredParts"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K68 ["AnchoredPartsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K70 ["AreAnchorsShown"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K62 ["AnchoredParts"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K63 ["AwakeParts"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K71 ["AwakePartsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K72 ["AreAwakePartsHighlighted"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K63 ["AwakeParts"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K73 ["ShowAssemblies"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K74 ["ShowAssembliesToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K75 ["AreAssembliesShown"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K64 ["Assemblies"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K65 ["Mechanisms"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K76 ["MechanismsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K77 ["AreMechanismsShown"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K65 ["Mechanisms"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K66 ["NetworkOwner"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K78 ["NetworkOwnerToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K79 ["AreOwnersShown"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K66 ["NetworkOwner"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K11 ["PhysicsLabels"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K12 ["PhysicsSimulation"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K83 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K80 ["CollisionFidelity"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K84 ["CollisionFidelityToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K85 ["ShowDecompositionGeometry"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K80 ["CollisionFidelity"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K81 ["ContactPoints"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K86 ["ContactPointsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETTABLEKS R16 R3 K69 ["Physics"]
  SETTABLEKS R16 R15 K31 ["Setting"]
  LOADK R16 K87 ["AreContactPointsShown"]
  SETTABLEKS R16 R15 K32 ["Property"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K81 ["ContactPoints"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K82 ["WindDirection"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K88 ["WindDirectionToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K89 ["WindControl"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K30 ["Toggle"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K82 ["WindDirection"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["PhysicsSimulation"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["createElement"]
  LOADK R10 K15 ["VisualizationModeCategory"]
  DUPTABLE R11 K17 [{"Title"}]
  LOADK R14 K18 ["VisualizationModeCategories"]
  LOADK R15 K13 ["View"]
  NAMECALL R12 R4 K19 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K16 ["Title"]
  DUPTABLE R12 K94 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K90 ["ViewSelector"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K95 ["ViewSelectorToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K90 ["ViewSelector"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K30 ["Toggle"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K90 ["ViewSelector"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K91 ["Grid"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K96 ["GridToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K97 ["3DGrid"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K30 ["Toggle"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K91 ["Grid"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K92 ["GridMaterial"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K98 ["GridMaterialToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  LOADK R16 K92 ["GridMaterial"]
  SETTABLEKS R16 R15 K24 ["FeatureId"]
  LOADK R16 K30 ["Toggle"]
  SETTABLEKS R16 R15 K25 ["ActionId"]
  GETTABLEKS R16 R0 K26 ["Actions"]
  SETTABLEKS R16 R15 K26 ["Actions"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K92 ["GridMaterial"]
  MOVE R13 R1
  JUMPIFNOT R13 [+23]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K100 [{"Title", "ToolTip", "UseState"}]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K93 ["CollaboratorHighlights"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K16 ["Title"]
  LOADK R18 K28 ["StudioModes"]
  LOADK R19 K101 ["CollaboratorHighlightsToolTip"]
  NAMECALL R16 R4 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K23 ["ToolTip"]
  GETUPVAL R16 7
  SETTABLEKS R16 R15 K99 ["UseState"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K93 ["CollaboratorHighlights"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["View"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Modes"]
  GETTABLEKS R4 R5 K11 ["SettingVisualizationMode"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Modes"]
  GETTABLEKS R5 R6 K12 ["ToggleActionVisualizationMode"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Hooks"]
  GETTABLEKS R6 R7 K14 ["useCollaborationHighlights"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K10 ["Modes"]
  GETTABLEKS R7 R8 K15 ["VisualizationMode"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K16 ["Flags"]
  GETTABLEKS R8 R9 K17 ["getFFlagStudioVisualizationModesServiceFix"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Flags"]
  GETTABLEKS R9 R10 K18 ["getFFlagStudioVisualizationModesTestSupport"]
  CALL R8 1 1
  GETTABLEKS R9 R1 K19 ["ContextServices"]
  DUPCLOSURE R10 K20 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R10 1
