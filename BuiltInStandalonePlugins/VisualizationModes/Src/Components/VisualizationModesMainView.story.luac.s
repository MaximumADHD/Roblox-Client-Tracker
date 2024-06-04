PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["plugin"]
  GETUPVAL R2 2
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Styling"]
  GETTABLEKS R1 R2 K1 ["registerPluginStyles"]
  GETTABLEKS R2 R0 K2 ["plugin"]
  GETUPVAL R3 1
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["useState"]
  DUPCLOSURE R4 K4 [PROTO_0]
  CAPTURE UPVAL U4
  CALL R3 1 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["useState"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R3
  CALL R4 1 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["useEffect"]
  NEWCLOSURE R6 P2
  CAPTURE VAL R3
  CAPTURE VAL R4
  NEWTABLE R7 0 0
  CALL R5 2 0
  GETUPVAL R5 6
  DUPTABLE R6 K11 [{"Width", "HeaderHeight", "MaxHeight", "InnerPadding", "Padding"}]
  LOADN R7 69
  SETTABLEKS R7 R6 K6 ["Width"]
  LOADN R7 32
  SETTABLEKS R7 R6 K7 ["HeaderHeight"]
  LOADN R7 144
  SETTABLEKS R7 R6 K8 ["MaxHeight"]
  LOADN R7 5
  SETTABLEKS R7 R6 K9 ["InnerPadding"]
  GETIMPORT R7 K14 [Vector2.zero]
  SETTABLEKS R7 R6 K10 ["Padding"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 7
  NEWTABLE R8 2 0
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K16 ["Tag"]
  LOADK R10 K17 ["X-Fill X-Column X-Top"]
  SETTABLE R10 R8 R9
  GETIMPORT R9 K20 [UDim2.fromOffset]
  GETTABLEKS R11 R5 K21 ["size"]
  GETTABLEKS R10 R11 K22 ["X"]
  GETTABLEKS R12 R5 K21 ["size"]
  GETTABLEKS R11 R12 K23 ["Y"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K24 ["Size"]
  DUPTABLE R9 K27 [{"StyleLink", "VisualizationModesMainView"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K15 ["createElement"]
  LOADK R11 K25 ["StyleLink"]
  DUPTABLE R12 K29 [{"StyleSheet"}]
  SETTABLEKS R1 R12 K28 ["StyleSheet"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["StyleLink"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K15 ["createElement"]
  GETUPVAL R11 8
  DUPTABLE R12 K35 [{"OnVisualizationModeToggle", "OnVisualizationModeCategoryToggle", "SizeCalculator", "RecentVisualizationModes", "VisualizationModeCategories"}]
  GETTABLEKS R13 R2 K36 ["onVisualizationModeToggle"]
  SETTABLEKS R13 R12 K30 ["OnVisualizationModeToggle"]
  GETTABLEKS R13 R2 K37 ["onVisualizationModeCategoryToggle"]
  SETTABLEKS R13 R12 K31 ["OnVisualizationModeCategoryToggle"]
  SETTABLEKS R5 R12 K32 ["SizeCalculator"]
  GETTABLEKS R14 R2 K38 ["state"]
  GETTABLEKS R13 R14 K39 ["recentModes"]
  SETTABLEKS R13 R12 K33 ["RecentVisualizationModes"]
  GETTABLEKS R14 R2 K38 ["state"]
  GETTABLEKS R13 R14 K40 ["categories"]
  SETTABLEKS R13 R12 K34 ["VisualizationModeCategories"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K26 ["VisualizationModesMainView"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETTABLEKS R5 R6 K10 ["Model"]
  GETTABLEKS R4 R5 K11 ["VisualizationModeCombinerClient"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Model"]
  GETTABLEKS R6 R7 K12 ["Tracking"]
  GETTABLEKS R5 R6 K13 ["VisualizationModeServiceTracker"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K14 ["Components"]
  GETTABLEKS R6 R7 K15 ["VisualizationModesMainView"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K9 ["Src"]
  GETTABLEKS R8 R9 K16 ["Hooks"]
  GETTABLEKS R7 R8 K17 ["useSizeCalculator"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K9 ["Src"]
  GETTABLEKS R9 R10 K16 ["Hooks"]
  GETTABLEKS R8 R9 K18 ["useVisualizationModeCombiner"]
  CALL R7 1 1
  GETTABLEKS R8 R1 K19 ["UI"]
  GETTABLEKS R9 R8 K20 ["Pane"]
  DUPCLOSURE R10 K21 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R5
  DUPTABLE R11 K25 [{"name", "summary", "stories"}]
  LOADK R12 K15 ["VisualizationModesMainView"]
  SETTABLEKS R12 R11 K22 ["name"]
  LOADK R12 K26 ["Renders the main visualization modes view with all sections and controls"]
  SETTABLEKS R12 R11 K23 ["summary"]
  NEWTABLE R12 0 1
  DUPTABLE R13 K28 [{"name", "story"}]
  LOADK R14 K15 ["VisualizationModesMainView"]
  SETTABLEKS R14 R13 K22 ["name"]
  SETTABLEKS R10 R13 K27 ["story"]
  SETLIST R12 R13 1 [1]
  SETTABLEKS R12 R11 K24 ["stories"]
  RETURN R11 1
