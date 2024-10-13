PROTO_0:
  GETIMPORT R0 K1 [settings]
  CALL R0 0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Localization"]
  NAMECALL R1 R1 K3 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K4 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["Fragment"]
  NEWTABLE R4 0 0
  DUPTABLE R5 K13 [{"GUI", "Lighting", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K6 ["GUI"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K22 [{"DeviceEmulation", "GUIOverlay", "GUIGuides"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K19 ["DeviceEmulation"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K26 ["DeviceEmulationToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["DeviceEmulation"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K20 ["GUIOverlay"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K30 ["GUIOverlayToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETUPVAL R14 4
  CALL R14 0 1
  JUMPIFNOT R14 [+7]
  GETIMPORT R13 K32 [game]
  LOADK R15 K33 ["StarterGui"]
  NAMECALL R13 R13 K34 ["GetService"]
  CALL R13 2 1
  JUMP [+4]
  GETIMPORT R14 K32 [game]
  GETTABLEKS R13 R14 K33 ["StarterGui"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K35 ["ShowDevelopmentGui"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["GUIOverlay"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K21 ["GUIGuides"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K36 ["GUIGuidesToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["GUIGuides"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["GUI"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K7 ["Lighting"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K38 [{"Lights"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+27]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K37 ["Lights"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K39 ["LightsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K40 ["Studio"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K41 ["Show Light Guides"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K37 ["Lights"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["Lighting"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K8 ["Pathfinding"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K45 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K42 ["PathfindingMesh"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K46 ["PathfindingMeshToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K40 ["Studio"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K47 ["Show Navigation Mesh"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K42 ["PathfindingMesh"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K43 ["PathfindingModifiers"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K48 ["PathfindingModifiersToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K40 ["Studio"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K49 ["Show Navigation Labels"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K43 ["PathfindingModifiers"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K44 ["PathfindingLinks"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K50 ["PathfindingLinksToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K40 ["Studio"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K51 ["Show Pathfinding Links"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K44 ["PathfindingLinks"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Pathfinding"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K9 ["PhysicsConstraints"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K55 [{"Constraints", "ConstraintsOnTop", "ContactPoints"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K52 ["Constraints"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K56 ["ConstraintsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K52 ["Constraints"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K53 ["ConstraintsOnTop"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K57 ["ConstraintsOnTopToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K53 ["ConstraintsOnTop"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K54 ["ContactPoints"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K58 ["ContactPointsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K54 ["ContactPoints"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["PhysicsConstraints"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K10 ["PhysicsLabels"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K64 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K59 ["AnchoredParts"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K65 ["AnchoredPartsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K66 ["Physics"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K67 ["AreAnchorsShown"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K59 ["AnchoredParts"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K60 ["AwakeParts"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K68 ["AwakePartsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K66 ["Physics"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K69 ["AreAwakePartsHighlighted"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K60 ["AwakeParts"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K70 ["ShowAssemblies"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K71 ["ShowAssembliesToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K66 ["Physics"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K72 ["AreAssembliesShown"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K61 ["Assemblies"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K62 ["Mechanisms"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K73 ["MechanismsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K66 ["Physics"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K74 ["AreMechanismsShown"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K62 ["Mechanisms"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K63 ["NetworkOwner"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K75 ["NetworkOwnerToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K66 ["Physics"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K76 ["AreOwnersShown"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K63 ["NetworkOwner"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["PhysicsLabels"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K11 ["PhysicsSimulation"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K79 [{"CollisionFidelity", "WindDirection"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"Title", "ToolTip", "Setting", "Property"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K77 ["CollisionFidelity"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K80 ["CollisionFidelityToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  GETTABLEKS R13 R0 K66 ["Physics"]
  SETTABLEKS R13 R12 K27 ["Setting"]
  LOADK R13 K81 ["ShowDecompositionGeometry"]
  SETTABLEKS R13 R12 K28 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K77 ["CollisionFidelity"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K78 ["WindDirection"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K82 ["WindDirectionToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K78 ["WindDirection"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K11 ["PhysicsSimulation"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K12 ["View"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K85 [{"ViewSelector", "CollaboratorHighlights"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K83 ["ViewSelector"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K86 ["ViewSelectorToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K83 ["ViewSelector"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+20]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"Title", "ToolTip"}]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K84 ["CollaboratorHighlights"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  LOADK R15 K25 ["StudioModes"]
  LOADK R16 K87 ["CollaboratorHighlightsToolTip"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K23 ["ToolTip"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K84 ["CollaboratorHighlights"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K12 ["View"]
  CALL R2 3 -1
  RETURN R2 -1

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
  GETTABLEKS R6 R7 K12 ["Flags"]
  GETTABLEKS R5 R6 K13 ["getFFlagDebugStudioShowBrokenVisualizationModes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K12 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagStudioVisualizationModesServiceFix"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K15 ["ContextServices"]
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R7 1
