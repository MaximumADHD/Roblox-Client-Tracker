PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnVisualizationModeCategoryToggle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["name"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["enabled"]
  NOT R2 R3
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K15 [{"Text", "Visible", "LayoutOrder", "DefaultIsExpanded", "SettingKey", "Enabled", "SectionEntries", "MatchIndexes", "CanExpand", "CanToggle", "EntryCount", "EnabledEntryCount", "ForceExpansion", "OnToggle"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K16 ["title"]
  SETTABLEKS R5 R4 K1 ["Text"]
  SETTABLEKS R1 R4 K2 ["Visible"]
  SETTABLEKS R0 R4 K3 ["LayoutOrder"]
  LOADB R5 1
  SETTABLEKS R5 R4 K4 ["DefaultIsExpanded"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K17 ["name"]
  SETTABLEKS R5 R4 K5 ["SettingKey"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K18 ["enabled"]
  SETTABLEKS R5 R4 K6 ["Enabled"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K19 ["renderEntries"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K7 ["SectionEntries"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K8 ["MatchIndexes"]
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["CanExpand"]
  LOADB R5 0
  SETTABLEKS R5 R4 K10 ["CanToggle"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K20 ["getEntryCount"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K11 ["EntryCount"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K21 ["getEnabledCount"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K12 ["EnabledEntryCount"]
  LOADB R5 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K22 ["getEntryMatchCount"]
  CALL R6 0 1
  LOADN R7 0
  JUMPIFLT R7 R6 [+6]
  GETUPVAL R6 4
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  SETTABLEKS R5 R4 K13 ["ForceExpansion"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U2
  SETTABLEKS R5 R4 K14 ["OnToggle"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["FuzzySearch"]
  GETTABLEKS R2 R3 K1 ["includeEntry"]
  GETTABLEKS R3 R0 K2 ["title"]
  CALL R2 1 2
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"OnVisualizationModeToggle", "ForceVisible", "FuzzySearch"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["OnVisualizationModeToggle"]
  SETTABLEKS R6 R5 K3 ["OnVisualizationModeToggle"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K4 ["ForceVisible"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["FuzzySearch"]
  SETTABLEKS R6 R5 K0 ["FuzzySearch"]
  CALL R4 1 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["FuzzySearch"]
  GETTABLEKS R5 R6 K6 ["incrementEntryCount"]
  CALL R5 0 0
  JUMPIFNOT R2 [+5]
  GETTABLEKS R5 R4 K7 ["addCustomEntry"]
  MOVE R6 R1
  CALL R5 1 0
  JUMP [+6]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["FuzzySearch"]
  GETTABLEKS R5 R6 K8 ["incrementFilteredCount"]
  CALL R5 0 0
  GETTABLEKS R5 R0 K9 ["visualizationModeList"]
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R4 K10 ["addVisualizationModeEntry"]
  MOVE R11 R0
  MOVE R12 R9
  CALL R10 2 0
  FORGLOOP R5 2 [-6]
  DUPTABLE R5 K14 [{"key", "visible", "renderContent"}]
  LOADK R7 K15 ["User_"]
  GETTABLEKS R8 R0 K16 ["name"]
  CONCAT R6 R7 R8
  SETTABLEKS R6 R5 K11 ["key"]
  GETTABLEKS R6 R4 K17 ["hasVisibleEntries"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K12 ["visible"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE UPVAL U0
  SETTABLEKS R6 R5 K13 ["renderContent"]
  RETURN R5 1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  GETIMPORT R2 K2 [table.freeze]
  DUPTABLE R3 K4 [{"createSection"}]
  SETTABLEKS R1 R3 K3 ["createSection"]
  CALL R2 1 -1
  RETURN R2 -1

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
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K10 ["Components"]
  GETTABLEKS R4 R5 K11 ["VisualizationModeSection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["Compute"]
  GETTABLEKS R5 R6 K13 ["computeVisualizationModeSectionEntries"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K6 ["Src"]
  GETTABLEKS R7 R8 K14 ["Hooks"]
  GETTABLEKS R6 R7 K15 ["useFuzzySearch"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R6 1
