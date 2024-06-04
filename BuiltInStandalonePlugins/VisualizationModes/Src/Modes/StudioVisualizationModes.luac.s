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
  DUPTABLE R5 K13 [{"GUI", "PhysicsGeometry", "Lighting", "Navigation", "PhysicsConstraints", "PhysicsSimulation", "View"}]
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
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K19 ["DeviceEmulation"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["DeviceEmulation"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K20 ["GUIOverlay"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETIMPORT R14 K28 [game]
  GETTABLEKS R13 R14 K29 ["StarterGui"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K30 ["ShowDevelopmentGui"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K20 ["GUIOverlay"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K21 ["GUIGuides"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K21 ["GUIGuides"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["GUI"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K7 ["PhysicsGeometry"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K35 [{"AssemblyLabels", "DecompositionGeometry", "MechanismLabels", "UnanchoredPartLabels"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K31 ["AssemblyLabels"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K36 ["Physics"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K37 ["AreAssembliesShown"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K31 ["AssemblyLabels"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K32 ["DecompositionGeometry"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K36 ["Physics"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K38 ["ShowDecompositionGeometry"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K32 ["DecompositionGeometry"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K33 ["MechanismLabels"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K36 ["Physics"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K39 ["AreMechanismsShown"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K33 ["MechanismLabels"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K34 ["UnanchoredPartLabels"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K36 ["Physics"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K40 ["AreAnchorsShown"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K34 ["UnanchoredPartLabels"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["PhysicsGeometry"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K8 ["Lighting"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K42 [{"LightGuides"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K41 ["LightGuides"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K43 ["Studio"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K44 ["Show Light Guides"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K41 ["LightGuides"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K8 ["Lighting"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K9 ["Navigation"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K48 [{"NavigationMesh", "NavigationLabels", "PathfindingLinks"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K45 ["NavigationMesh"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K43 ["Studio"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K49 ["Show Navigation Mesh"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K45 ["NavigationMesh"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K46 ["NavigationLabels"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K43 ["Studio"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K50 ["Show Navigation Labels"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K46 ["NavigationLabels"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K47 ["PathfindingLinks"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K43 ["Studio"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K51 ["Show Pathfinding Links"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K47 ["PathfindingLinks"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K9 ["Navigation"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K10 ["PhysicsConstraints"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K55 [{"Constraints", "ConstraintsOnTop", "ContactPoints"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K52 ["Constraints"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K52 ["Constraints"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K53 ["ConstraintsOnTop"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K53 ["ConstraintsOnTop"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K54 ["ContactPoints"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K54 ["ContactPoints"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K10 ["PhysicsConstraints"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["createElement"]
  LOADK R7 K14 ["VisualizationModeCategory"]
  DUPTABLE R8 K16 [{"Title"}]
  LOADK R11 K17 ["VisualizationModeCategories"]
  LOADK R12 K11 ["PhysicsSimulation"]
  NAMECALL R9 R1 K18 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Title"]
  DUPTABLE R9 K59 [{"AwakeParts", "NetworkOwner", "WindDirection"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K60 ["HighlightAwakeParts"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K36 ["Physics"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K61 ["AreAwakePartsHighlighted"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K56 ["AwakeParts"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K26 [{"Title", "Setting", "Property"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K57 ["NetworkOwner"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  GETTABLEKS R13 R0 K36 ["Physics"]
  SETTABLEKS R13 R12 K24 ["Setting"]
  LOADK R13 K62 ["AreOwnersShown"]
  SETTABLEKS R13 R12 K25 ["Property"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K57 ["NetworkOwner"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K58 ["WindDirection"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K58 ["WindDirection"]
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
  DUPTABLE R9 K65 [{"ViewSelector", "CollaboratorHighlights"}]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K63 ["ViewSelector"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K63 ["ViewSelector"]
  GETUPVAL R10 2
  CALL R10 0 1
  JUMPIFNOT R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K16 [{"Title"}]
  LOADK R15 K23 ["StudioModes"]
  LOADK R16 K64 ["CollaboratorHighlights"]
  NAMECALL R13 R1 K18 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Title"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K64 ["CollaboratorHighlights"]
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
  GETTABLEKS R5 R1 K14 ["ContextServices"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
