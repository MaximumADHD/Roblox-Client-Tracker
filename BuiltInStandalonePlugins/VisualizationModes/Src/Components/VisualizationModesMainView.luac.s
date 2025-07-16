PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"LayoutOrder", "Visible", "IsEditingEnabled", "OnVisualizationModeToggle", "RecentVisualizationModes"}]
  SETTABLEKS R0 R4 K1 ["LayoutOrder"]
  SETTABLEKS R1 R4 K2 ["Visible"]
  GETIMPORT R6 K8 [next]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K5 ["RecentVisualizationModes"]
  CALL R6 1 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["IsEditingEnabled"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["OnVisualizationModeToggle"]
  SETTABLEKS R5 R4 K4 ["OnVisualizationModeToggle"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["RecentVisualizationModes"]
  SETTABLEKS R5 R4 K5 ["RecentVisualizationModes"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"LayoutOrder", "Visible", "HiddenCount", "AllHidden"}]
  SETTABLEKS R0 R4 K1 ["LayoutOrder"]
  SETTABLEKS R1 R4 K2 ["Visible"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["getFilteredCount"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K3 ["HiddenCount"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K7 ["getAreAllEntriesHidden"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["AllHidden"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R2 1
  DUPTABLE R3 K1 [{"SettingsKey"}]
  LOADK R4 K2 ["VisualizationModesMainView_LastSearchSetting"]
  SETTABLEKS R4 R3 K0 ["SettingsKey"]
  CALL R2 1 1
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"FuzzySearch", "OnVisualizationModeCategoryToggle", "OnVisualizationModeToggle"}]
  SETTABLEKS R2 R4 K3 ["FuzzySearch"]
  GETTABLEKS R5 R0 K4 ["OnVisualizationModeCategoryToggle"]
  SETTABLEKS R5 R4 K4 ["OnVisualizationModeCategoryToggle"]
  GETTABLEKS R5 R0 K5 ["OnVisualizationModeToggle"]
  SETTABLEKS R5 R4 K5 ["OnVisualizationModeToggle"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K7 ["addSection"]
  DUPTABLE R5 K11 [{"key", "visible", "renderContent"}]
  LOADK R6 K12 ["RecentSection"]
  SETTABLEKS R6 R5 K8 ["key"]
  GETTABLEKS R7 R2 K13 ["searchText"]
  JUMPIFEQKS R7 K14 [""] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["visible"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K10 ["renderContent"]
  CALL R4 1 0
  NEWTABLE R4 1 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K15 ["createElement"]
  GETUPVAL R6 5
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["View"]
  GETTABLEKS R5 R0 K17 ["VisualizationModeCategories"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R11 R9 K18 ["name"]
  GETTABLE R10 R4 R11
  GETTABLEKS R11 R1 K7 ["addSection"]
  GETTABLEKS R12 R3 K19 ["createSection"]
  MOVE R13 R9
  MOVE R14 R10
  CALL R12 2 -1
  CALL R11 -1 0
  FORGLOOP R5 2 [-12]
  GETTABLEKS R5 R1 K7 ["addSection"]
  DUPTABLE R6 K11 [{"key", "visible", "renderContent"}]
  LOADK R7 K20 ["HiddenCount"]
  SETTABLEKS R7 R6 K8 ["key"]
  GETTABLEKS R8 R2 K21 ["getFilteredCount"]
  CALL R8 0 1
  LOADN R9 0
  JUMPIFLT R9 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["visible"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K10 ["renderContent"]
  CALL R5 1 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K15 ["createElement"]
  GETUPVAL R6 7
  NEWTABLE R7 2 0
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K22 ["Tag"]
  LOADK R9 K23 ["X-ColumnS X-Top"]
  SETTABLE R9 R7 R8
  GETTABLEKS R8 R0 K24 ["Size"]
  SETTABLEKS R8 R7 K24 ["Size"]
  DUPTABLE R8 K27 [{"SearchBarContainer", "ScrollingFrame"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["createElement"]
  GETUPVAL R10 8
  DUPTABLE R11 K29 [{"FuzzySearch", "LayoutOrder"}]
  SETTABLEKS R2 R11 K3 ["FuzzySearch"]
  LOADN R12 1
  SETTABLEKS R12 R11 K28 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K25 ["SearchBarContainer"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K15 ["createElement"]
  GETUPVAL R10 9
  NEWTABLE R11 4 0
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K22 ["Tag"]
  LOADK R13 K30 ["ScrollingAutomaticSize VisualizationModes-MainScrollingFrame"]
  SETTABLE R13 R11 R12
  GETTABLEKS R13 R0 K31 ["SizeCalculator"]
  GETTABLEKS R12 R13 K32 ["scrollingFrameSize"]
  SETTABLEKS R12 R11 K24 ["Size"]
  LOADN R12 2
  SETTABLEKS R12 R11 K28 ["LayoutOrder"]
  DUPTABLE R12 K34 [{"Content"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K15 ["createElement"]
  GETUPVAL R14 7
  NEWTABLE R15 2 0
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K22 ["Tag"]
  LOADK R17 K35 ["X-Column X-Top X-FitY"]
  SETTABLE R17 R15 R16
  GETTABLEKS R17 R0 K31 ["SizeCalculator"]
  GETTABLEKS R16 R17 K36 ["contentFrameRef"]
  SETTABLEKS R16 R15 K37 ["ref"]
  DUPTABLE R16 K40 [{"Sections", "UIPadding"}]
  GETTABLEKS R17 R1 K41 ["getSections"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K38 ["Sections"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K15 ["createElement"]
  LOADK R18 K39 ["UIPadding"]
  DUPTABLE R19 K43 [{"PaddingRight"}]
  GETIMPORT R20 K46 [UDim.new]
  LOADN R21 0
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["UIPadding"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K33 ["Content"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K26 ["ScrollingFrame"]
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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Components"]
  GETTABLEKS R3 R4 K10 ["HiddenCountLabel"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Components"]
  GETTABLEKS R6 R7 K12 ["Sections"]
  GETTABLEKS R5 R6 K13 ["RecentSection"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K9 ["Components"]
  GETTABLEKS R8 R9 K12 ["Sections"]
  GETTABLEKS R7 R8 K15 ["ViewSectionControls"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K9 ["Components"]
  GETTABLEKS R8 R9 K16 ["VisualizationSearchBar"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K17 ["Compute"]
  GETTABLEKS R9 R10 K18 ["computeDividedSections"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K8 ["Src"]
  GETTABLEKS R11 R12 K17 ["Compute"]
  GETTABLEKS R10 R11 K19 ["computeVisualizationModeSections"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K8 ["Src"]
  GETTABLEKS R12 R13 K20 ["Hooks"]
  GETTABLEKS R11 R12 K21 ["useFuzzySearch"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K20 ["Hooks"]
  GETTABLEKS R12 R13 K22 ["useSizeCalculator"]
  CALL R11 1 1
  GETTABLEKS R12 R1 K23 ["UI"]
  GETTABLEKS R13 R12 K24 ["Pane"]
  GETTABLEKS R14 R12 K25 ["ScrollingFrame"]
  DUPCLOSURE R15 K26 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R7
  CAPTURE VAL R14
  RETURN R15 1
