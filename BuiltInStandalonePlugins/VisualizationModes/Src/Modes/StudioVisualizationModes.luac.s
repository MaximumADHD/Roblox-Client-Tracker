PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R3 2
  CALL R3 0 1
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R3 [+6]
  GETTABLEKS R6 R0 K0 ["SettingsInstance"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R0 K0 ["SettingsInstance"]
  JUMP [+3]
  GETIMPORT R5 K2 [settings]
  CALL R5 0 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["Localization"]
  NAMECALL R6 R6 K4 ["use"]
  CALL R6 1 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K6 ["Fragment"]
  NEWTABLE R9 0 0
  DUPTABLE R10 K14 [{"GUI", "Lighting", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K7 ["GUI"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K22 [{"DeviceEmulation", "GUIOverlay"}]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K20 ["DeviceEmulation"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K29 ["DeviceEmulationToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K20 ["DeviceEmulation"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K30 ["Toggle"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["DeviceEmulation"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K21 ["GUIOverlay"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K34 ["GUIOverlayToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  JUMPIFNOT R2 [+7]
  GETIMPORT R18 K36 [game]
  LOADK R20 K37 ["StarterGui"]
  NAMECALL R18 R18 K38 ["GetService"]
  CALL R18 2 1
  JUMP [+4]
  GETIMPORT R19 K36 [game]
  GETTABLEKS R18 R19 K37 ["StarterGui"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K39 ["ShowDevelopmentGui"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K21 ["GUIOverlay"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["GUI"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K8 ["Lighting"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K41 [{"Lights"}]
  MOVE R15 R1
  JUMPIFNOT R15 [+27]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K40 ["Lights"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K42 ["LightsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K43 ["Studio"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K44 ["Show Light Guides"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K40 ["Lights"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K8 ["Lighting"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K9 ["Pathfinding"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K48 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K45 ["PathfindingMesh"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K49 ["PathfindingMeshToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K43 ["Studio"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K50 ["Show Navigation Mesh"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["PathfindingMesh"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K46 ["PathfindingModifiers"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K51 ["PathfindingModifiersToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K43 ["Studio"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K52 ["Show Navigation Labels"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K46 ["PathfindingModifiers"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K47 ["PathfindingLinks"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K53 ["PathfindingLinksToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K43 ["Studio"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K54 ["Show Pathfinding Links"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K47 ["PathfindingLinks"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Pathfinding"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K10 ["PhysicsConstraints"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K57 [{"Constraints", "Welds"}]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K55 ["Constraints"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K58 ["ConstraintsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K55 ["Constraints"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K59 ["ShowDetails"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K55 ["Constraints"]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K56 ["Welds"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K60 ["WeldsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K55 ["Constraints"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K61 ["ShowWelds"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K56 ["Welds"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["PhysicsConstraints"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K11 ["PhysicsLabels"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K67 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K62 ["AnchoredParts"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K68 ["AnchoredPartsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K70 ["AreAnchorsShown"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K62 ["AnchoredParts"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K63 ["AwakeParts"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K71 ["AwakePartsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K72 ["AreAwakePartsHighlighted"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K63 ["AwakeParts"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K73 ["ShowAssemblies"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K74 ["ShowAssembliesToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K75 ["AreAssembliesShown"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K64 ["Assemblies"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K65 ["Mechanisms"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K76 ["MechanismsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K77 ["AreMechanismsShown"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K65 ["Mechanisms"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K66 ["NetworkOwner"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K78 ["NetworkOwnerToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K79 ["AreOwnersShown"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K66 ["NetworkOwner"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K11 ["PhysicsLabels"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K12 ["PhysicsSimulation"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K83 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K80 ["CollisionFidelity"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K84 ["CollisionFidelityToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K85 ["ShowDecompositionGeometry"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K80 ["CollisionFidelity"]
  MOVE R15 R1
  JUMPIFNOT R15 [+27]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K81 ["ContactPoints"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K86 ["ContactPointsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETTABLEKS R18 R5 K69 ["Physics"]
  SETTABLEKS R18 R17 K31 ["Setting"]
  LOADK R18 K87 ["AreContactPointsShown"]
  SETTABLEKS R18 R17 K32 ["Property"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K81 ["ContactPoints"]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K82 ["WindDirection"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K88 ["WindDirectionToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K89 ["WindControl"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K30 ["Toggle"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K82 ["WindDirection"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["PhysicsSimulation"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K5 ["createElement"]
  LOADK R12 K15 ["VisualizationModeCategory"]
  DUPTABLE R13 K17 [{"Title"}]
  LOADK R16 K18 ["VisualizationModeCategories"]
  LOADK R17 K13 ["View"]
  NAMECALL R14 R6 K19 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K16 ["Title"]
  DUPTABLE R14 K94 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K90 ["ViewSelector"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K95 ["ViewSelectorToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K90 ["ViewSelector"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K30 ["Toggle"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K90 ["ViewSelector"]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K91 ["Grid"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K96 ["GridToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K97 ["3DGrid"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K30 ["Toggle"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K91 ["Grid"]
  MOVE R15 R1
  JUMPIFNOT R15 [+30]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K92 ["GridMaterial"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K98 ["GridMaterialToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  LOADK R18 K92 ["GridMaterial"]
  SETTABLEKS R18 R17 K24 ["FeatureId"]
  LOADK R18 K30 ["Toggle"]
  SETTABLEKS R18 R17 K25 ["ActionId"]
  GETTABLEKS R18 R0 K26 ["Actions"]
  SETTABLEKS R18 R17 K26 ["Actions"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K92 ["GridMaterial"]
  MOVE R15 R1
  JUMPIFNOT R15 [+27]
  MOVE R15 R2
  JUMPIFNOT R15 [+25]
  MOVE R15 R4
  JUMPIFNOT R15 [+23]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K5 ["createElement"]
  GETUPVAL R16 8
  DUPTABLE R17 K100 [{"Title", "ToolTip", "UseState"}]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K93 ["CollaboratorHighlights"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K16 ["Title"]
  LOADK R20 K28 ["StudioModes"]
  LOADK R21 K101 ["CollaboratorHighlightsToolTip"]
  NAMECALL R18 R6 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K23 ["ToolTip"]
  GETUPVAL R18 9
  SETTABLEKS R18 R17 K99 ["UseState"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K93 ["CollaboratorHighlights"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K13 ["View"]
  CALL R7 3 -1
  RETURN R7 -1

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
  GETTABLEKS R8 R9 K17 ["getFFlagStudioVisualizationModesNewOptions"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K9 ["Src"]
  GETTABLEKS R10 R11 K16 ["Flags"]
  GETTABLEKS R9 R10 K18 ["getFFlagStudioVisualizationModesServiceFix"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K16 ["Flags"]
  GETTABLEKS R10 R11 K19 ["getFFlagStudioVisualizationModesTestSupport"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Src"]
  GETTABLEKS R12 R13 K16 ["Flags"]
  GETTABLEKS R11 R12 K20 ["getFFlagStudioCollaboratorHighlightsStateFix"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K21 ["ContextServices"]
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R12 1
