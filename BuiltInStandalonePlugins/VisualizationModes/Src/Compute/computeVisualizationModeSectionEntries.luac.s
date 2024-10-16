PROTO_0:
  GETUPVAL R1 0
  ADDK R1 R1 K0 [1]
  SETUPVAL R1 0
  GETUPVAL R1 1
  ADDK R1 R1 K0 [1]
  SETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["FuzzySearch"]
  GETTABLEKS R1 R2 K2 ["incrementEntryCount"]
  CALL R1 0 0
  GETUPVAL R2 3
  FASTCALL2 TABLE_INSERT R2 R0 [+4]
  MOVE R3 R0
  GETIMPORT R1 K5 [table.insert]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  ADDK R1 R1 K0 [1]
  SETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["FuzzySearch"]
  GETTABLEKS R1 R2 K2 ["incrementEntryCount"]
  CALL R1 0 0
  GETTABLEKS R1 R0 K3 ["Visible"]
  JUMPIFEQKB R1 FALSE [+4]
  GETUPVAL R1 2
  ADDK R1 R1 K0 [1]
  SETUPVAL R1 2
  GETUPVAL R2 3
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 5
  MOVE R5 R0
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R1 K7 [table.insert]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  LOADK R2 K0 ["visualizationModeToggled"]
  DUPTABLE R3 K5 [{"actionSource", "visualizationModeCategory", "visualizationMode", "isEnabled"}]
  LOADK R4 K6 ["button"]
  SETTABLEKS R4 R3 K1 ["actionSource"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["name"]
  SETTABLEKS R4 R3 K2 ["visualizationModeCategory"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["name"]
  SETTABLEKS R4 R3 K3 ["visualizationMode"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K4 ["isEnabled"]
  NAMECALL R0 R0 K9 ["report"]
  CALL R0 3 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K10 ["OnVisualizationModeToggle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["name"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["name"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["enabled"]
  NOT R3 R4
  LOADB R4 1
  CALL R0 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  ADDK R2 R2 K0 [1]
  SETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["FuzzySearch"]
  GETTABLEKS R2 R3 K2 ["includeEntry"]
  GETTABLEKS R3 R1 K3 ["title"]
  CALL R2 1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["ForceVisible"]
  JUMPIFNOT R4 [+1]
  LOADB R2 1
  JUMPIFEQKNIL R3 [+4]
  GETUPVAL R4 2
  ADDK R4 R4 K0 [1]
  SETUPVAL R4 2
  JUMPIF R2 [+6]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["FuzzySearch"]
  GETTABLEKS R4 R5 K5 ["incrementFilteredCount"]
  CALL R4 0 0
  GETTABLEKS R4 R1 K6 ["enabled"]
  JUMPIFNOT R4 [+3]
  GETUPVAL R4 3
  ADDK R4 R4 K0 [1]
  SETUPVAL R4 3
  DUPTABLE R4 K16 [{"key", "Text", "Visible", "ToolTip", "Enabled", "LayoutOrder", "MatchIndexes", "IsEditingEnabled", "OnToggle"}]
  GETTABLEKS R5 R1 K17 ["name"]
  SETTABLEKS R5 R4 K7 ["key"]
  GETTABLEKS R5 R1 K3 ["title"]
  SETTABLEKS R5 R4 K8 ["Text"]
  SETTABLEKS R2 R4 K9 ["Visible"]
  GETTABLEKS R5 R1 K18 ["toolTip"]
  SETTABLEKS R5 R4 K10 ["ToolTip"]
  GETTABLEKS R5 R1 K6 ["enabled"]
  SETTABLEKS R5 R4 K11 ["Enabled"]
  GETUPVAL R5 4
  NAMECALL R5 R5 K19 ["getNextOrder"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["LayoutOrder"]
  SETTABLEKS R3 R4 K13 ["MatchIndexes"]
  LOADB R5 1
  SETTABLEKS R5 R4 K14 ["IsEditingEnabled"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R5 R4 K15 ["OnToggle"]
  GETUPVAL R5 6
  ADDK R5 R5 K0 [1]
  SETUPVAL R5 6
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["FuzzySearch"]
  GETTABLEKS R5 R6 K20 ["incrementEntryCount"]
  CALL R5 0 0
  GETTABLEKS R5 R4 K9 ["Visible"]
  JUMPIFEQKB R5 FALSE [+4]
  GETUPVAL R5 7
  ADDK R5 R5 K0 [1]
  SETUPVAL R5 7
  GETUPVAL R6 8
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K21 ["createElement"]
  GETUPVAL R8 10
  MOVE R9 R4
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K24 [table.insert]
  CALL R5 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  LOADN R2 0
  JUMPIFLT R2 R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_6:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_7:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_8:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_9:
  GETUPVAL R0 0
  RETURN R0 1

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Analytics"]
  NAMECALL R1 R1 K1 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  NEWTABLE R3 0 0
  LOADN R4 0
  LOADN R5 0
  LOADN R6 0
  LOADN R7 0
  LOADN R8 0
  NEWCLOSURE R9 P0
  CAPTURE REF R5
  CAPTURE REF R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  NEWCLOSURE R10 P1
  CAPTURE REF R5
  CAPTURE VAL R0
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWCLOSURE R11 P2
  CAPTURE REF R6
  CAPTURE VAL R0
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE REF R5
  CAPTURE REF R4
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NEWCLOSURE R12 P3
  CAPTURE VAL R3
  NEWCLOSURE R13 P4
  CAPTURE REF R4
  NEWCLOSURE R14 P5
  CAPTURE REF R7
  NEWCLOSURE R15 P6
  CAPTURE REF R5
  NEWCLOSURE R16 P7
  CAPTURE REF R6
  NEWCLOSURE R17 P8
  CAPTURE REF R8
  DUPTABLE R18 K12 [{"addEntry", "addCustomEntry", "addVisualizationModeEntry", "renderEntries", "hasVisibleEntries", "getEntryCount", "getVisualizationModeEntryCount", "getEntryMatchCount", "getEnabledCount"}]
  SETTABLEKS R10 R18 K3 ["addEntry"]
  SETTABLEKS R9 R18 K4 ["addCustomEntry"]
  SETTABLEKS R11 R18 K5 ["addVisualizationModeEntry"]
  SETTABLEKS R12 R18 K6 ["renderEntries"]
  SETTABLEKS R13 R18 K7 ["hasVisibleEntries"]
  SETTABLEKS R15 R18 K8 ["getEntryCount"]
  SETTABLEKS R16 R18 K9 ["getVisualizationModeEntryCount"]
  SETTABLEKS R14 R18 K10 ["getEntryMatchCount"]
  SETTABLEKS R17 R18 K11 ["getEnabledCount"]
  CLOSEUPVALS R4
  RETURN R18 1

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
  GETTABLEKS R7 R8 K13 ["Hooks"]
  GETTABLEKS R6 R7 K14 ["useFuzzySearch"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K15 ["ContextServices"]
  GETTABLEKS R8 R2 K16 ["Util"]
  GETTABLEKS R7 R8 K17 ["LayoutOrderIterator"]
  DUPCLOSURE R8 K18 [PROTO_10]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R8 1
