PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["visualizationModeToggled"]
  DUPTABLE R3 K5 [{"actionSource", "visualizationModeCategory", "visualizationMode", "isEnabled"}]
  LOADK R4 K6 ["recent_section"]
  SETTABLEKS R4 R3 K1 ["actionSource"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["visualizationModeCategoryName"]
  SETTABLEKS R4 R3 K2 ["visualizationModeCategory"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["name"]
  SETTABLEKS R4 R3 K3 ["visualizationMode"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K4 ["isEnabled"]
  NAMECALL R0 R0 K10 ["report"]
  CALL R0 3 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K11 ["OnVisualizationModeToggle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["visualizationModeCategoryName"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["name"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K9 ["enabled"]
  NOT R3 R4
  LOADB R4 0
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Analytics"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Localization"]
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  NEWTABLE R3 0 0
  LOADN R4 0
  LOADN R5 0
  GETTABLEKS R6 R0 K3 ["RecentVisualizationModes"]
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  ADDK R4 R4 K4 [1]
  GETTABLEKS R11 R10 K5 ["enabled"]
  JUMPIFNOT R11 [+1]
  ADDK R5 R5 K4 [1]
  GETTABLEKS R11 R10 K6 ["name"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K15 [{"Text", "Enabled", "ToolTip", "LayoutOrder", "MatchIndexes", "IsEditingEnabled", "OnToggle"}]
  GETTABLEKS R15 R10 K16 ["title"]
  SETTABLEKS R15 R14 K8 ["Text"]
  GETTABLEKS R15 R10 K5 ["enabled"]
  SETTABLEKS R15 R14 K9 ["Enabled"]
  GETTABLEKS R15 R10 K17 ["toolTip"]
  SETTABLEKS R15 R14 K10 ["ToolTip"]
  SETTABLEKS R9 R14 K11 ["LayoutOrder"]
  LOADNIL R15
  SETTABLEKS R15 R14 K12 ["MatchIndexes"]
  LOADB R15 1
  SETTABLEKS R15 R14 K13 ["IsEditingEnabled"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K14 ["OnToggle"]
  CALL R12 2 1
  SETTABLE R12 R3 R11
  FORGLOOP R6 2 [-41]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K26 [{"Text", "SettingKey", "DefaultIsExpanded", "CanToggle", "EnabledEntryCount", "Enabled", "Visible", "LayoutOrder", "EntryCount", "SectionEntries", "ForceExpansion", "IsEditingEnabled"}]
  LOADK R11 K27 ["VisualizationModeCategories"]
  LOADK R12 K28 ["Recent"]
  NAMECALL R9 R2 K29 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["Text"]
  LOADK R9 K30 ["RecentCategories"]
  SETTABLEKS R9 R8 K18 ["SettingKey"]
  LOADB R9 0
  SETTABLEKS R9 R8 K19 ["DefaultIsExpanded"]
  LOADB R9 0
  SETTABLEKS R9 R8 K20 ["CanToggle"]
  SETTABLEKS R5 R8 K21 ["EnabledEntryCount"]
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["Enabled"]
  GETTABLEKS R9 R0 K22 ["Visible"]
  SETTABLEKS R9 R8 K22 ["Visible"]
  GETTABLEKS R9 R0 K11 ["LayoutOrder"]
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  SETTABLEKS R4 R8 K23 ["EntryCount"]
  SETTABLEKS R3 R8 K24 ["SectionEntries"]
  LOADB R9 0
  SETTABLEKS R9 R8 K25 ["ForceExpansion"]
  GETTABLEKS R9 R0 K13 ["IsEditingEnabled"]
  SETTABLEKS R9 R8 K13 ["IsEditingEnabled"]
  CALL R6 2 -1
  RETURN R6 -1

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
