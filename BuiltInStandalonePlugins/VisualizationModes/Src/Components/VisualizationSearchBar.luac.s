PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  LOADK R3 K3 ["Frame"]
  DUPTABLE R4 K7 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R5 1
  SETTABLEKS R5 R4 K4 ["BackgroundTransparency"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  GETIMPORT R5 K10 [UDim2.new]
  LOADN R6 1
  LOADN R7 251
  LOADN R8 0
  LOADN R9 32
  CALL R5 4 1
  SETTABLEKS R5 R4 K6 ["Size"]
  DUPTABLE R5 K13 [{"SearchBar", "UIPadding"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K22 [{"PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "ShowFilterButton", "IncrementalTextSearch", "IncrementalTextSearchDelay", "SearchTerm", "OnSearchRequested"}]
  LOADK R11 K11 ["SearchBar"]
  LOADK R12 K23 ["Search"]
  NAMECALL R9 R1 K24 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["PlaceholderText"]
  LOADB R9 1
  SETTABLEKS R9 R8 K15 ["ShowSearchIcon"]
  LOADB R9 0
  SETTABLEKS R9 R8 K16 ["ShowSearchButton"]
  LOADB R9 0
  SETTABLEKS R9 R8 K17 ["ShowFilterButton"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["IncrementalTextSearch"]
  LOADN R9 5
  SETTABLEKS R9 R8 K19 ["IncrementalTextSearchDelay"]
  GETTABLEKS R10 R0 K25 ["FuzzySearch"]
  GETTABLEKS R9 R10 K26 ["searchText"]
  SETTABLEKS R9 R8 K20 ["SearchTerm"]
  GETTABLEKS R10 R0 K25 ["FuzzySearch"]
  GETTABLEKS R9 R10 K27 ["setSearchText"]
  SETTABLEKS R9 R8 K21 ["OnSearchRequested"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K11 ["SearchBar"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["createElement"]
  LOADK R7 K12 ["UIPadding"]
  DUPTABLE R8 K29 [{"PaddingRight"}]
  GETIMPORT R9 K31 [UDim.new]
  LOADN R10 0
  LOADN R11 5
  CALL R9 2 1
  SETTABLEKS R9 R8 K28 ["PaddingRight"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K12 ["UIPadding"]
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
  GETTABLEKS R5 R6 K10 ["Hooks"]
  GETTABLEKS R4 R5 K11 ["useFuzzySearch"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["ContextServices"]
  GETTABLEKS R5 R1 K13 ["UI"]
  GETTABLEKS R6 R5 K14 ["SearchBar"]
  DUPCLOSURE R7 K15 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R7 1
