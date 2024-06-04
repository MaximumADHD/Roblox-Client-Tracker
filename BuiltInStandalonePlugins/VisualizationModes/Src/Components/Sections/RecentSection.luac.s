PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnVisualizationModeToggle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["visualizationModeCategoryName"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["name"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["enabled"]
  NOT R3 R4
  LOADB R4 0
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  LOADN R3 0
  LOADN R4 0
  GETTABLEKS R5 R0 K2 ["RecentVisualizationModes"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  ADDK R3 R3 K3 [1]
  GETTABLEKS R10 R9 K4 ["enabled"]
  JUMPIFNOT R10 [+1]
  ADDK R4 R4 K3 [1]
  GETTABLEKS R10 R9 K5 ["name"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K13 [{"Text", "Enabled", "LayoutOrder", "MatchIndexes", "IsEditingEnabled", "OnToggle"}]
  GETTABLEKS R14 R9 K14 ["title"]
  SETTABLEKS R14 R13 K7 ["Text"]
  GETTABLEKS R14 R9 K4 ["enabled"]
  SETTABLEKS R14 R13 K8 ["Enabled"]
  SETTABLEKS R8 R13 K9 ["LayoutOrder"]
  LOADNIL R14
  SETTABLEKS R14 R13 K10 ["MatchIndexes"]
  LOADB R14 1
  SETTABLEKS R14 R13 K11 ["IsEditingEnabled"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R0
  CAPTURE VAL R9
  SETTABLEKS R14 R13 K12 ["OnToggle"]
  CALL R11 2 1
  SETTABLE R11 R2 R10
  FORGLOOP R5 2 [-36]
  JUMPIFNOTEQKN R3 K15 [0] [+3]
  LOADNIL R5
  RETURN R5 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K24 [{"Text", "SettingKey", "CanToggle", "EnabledEntryCount", "Enabled", "Visible", "LayoutOrder", "EntryCount", "SectionEntries", "ForceExpansion", "DividerVisible"}]
  LOADK R10 K25 ["VisualizationModeCategories"]
  LOADK R11 K26 ["Recent"]
  NAMECALL R8 R1 K27 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Text"]
  LOADK R8 K28 ["RecentCategories"]
  SETTABLEKS R8 R7 K16 ["SettingKey"]
  LOADB R8 0
  SETTABLEKS R8 R7 K17 ["CanToggle"]
  SETTABLEKS R4 R7 K18 ["EnabledEntryCount"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["Enabled"]
  GETTABLEKS R8 R0 K19 ["Visible"]
  SETTABLEKS R8 R7 K19 ["Visible"]
  GETTABLEKS R8 R0 K9 ["LayoutOrder"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  SETTABLEKS R3 R7 K20 ["EntryCount"]
  SETTABLEKS R2 R7 K21 ["SectionEntries"]
  LOADB R8 0
  SETTABLEKS R8 R7 K22 ["ForceExpansion"]
  LOADB R8 1
  SETTABLEKS R8 R7 K23 ["DividerVisible"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K11 ["Components"]
  GETTABLEKS R5 R6 K12 ["VisualizationModeEntry"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K13 ["VisualizationModeSection"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["ContextServices"]
  DUPCLOSURE R7 K15 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R7 1
