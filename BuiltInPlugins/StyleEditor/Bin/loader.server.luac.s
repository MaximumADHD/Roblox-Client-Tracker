PROTO_0:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+2]
  LOADK R3 K0 ["StyleEditorToolbarButton"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Button"]
  CALL R3 4 1
  RETURN R3 1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+2]
  LOADK R3 K0 ["StyleEditor"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Toolbar"]
  CALL R3 4 1
  RETURN R3 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OpenStyleEditor"]
  RETURN R0 1

PROTO_4:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K6 ["runTests"]
  CALL R0 1 1
  MOVE R1 R0
  CALL R1 0 0
  GETIMPORT R1 K8 [game]
  LOADK R3 K9 ["EnableStyleEditor"]
  NAMECALL R1 R1 K10 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K8 [game]
  LOADK R3 K11 ["GuiService"]
  NAMECALL R1 R1 K12 ["GetService"]
  CALL R1 2 1
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K13 ["main"]
  CALL R3 1 1
  GETIMPORT R4 K8 [game]
  LOADK R6 K14 ["StyleEditorUITab2"]
  NAMECALL R4 R4 K10 ["GetFastFlag"]
  CALL R4 2 1
  GETIMPORT R5 K16 [plugin]
  GETTABLEKS R6 R2 K17 ["Name"]
  SETTABLEKS R6 R5 K17 ["Name"]
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R2 K18 ["Packages"]
  GETTABLEKS R6 R7 K19 ["PluginLoader"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K20 ["PluginLoaderBuilder"]
  GETTABLEKS R10 R2 K21 ["Src"]
  GETTABLEKS R9 R10 K22 ["Resources"]
  GETTABLEKS R8 R9 K23 ["Localization"]
  GETTABLEKS R7 R8 K24 ["SourceStrings"]
  GETTABLEKS R11 R2 K21 ["Src"]
  GETTABLEKS R10 R11 K22 ["Resources"]
  GETTABLEKS R9 R10 K23 ["Localization"]
  GETTABLEKS R8 R9 K25 ["LocalizedStrings"]
  DUPTABLE R9 K30 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R10 K31 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K26 ["getName"]
  DUPCLOSURE R10 K32 [PROTO_1]
  SETTABLEKS R10 R9 K27 ["getDescription"]
  LOADK R10 K33 [""]
  SETTABLEKS R10 R9 K28 ["icon"]
  LOADB R10 0
  SETTABLEKS R10 R9 K29 ["enabled"]
  DUPTABLE R10 K40 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
  GETIMPORT R11 K16 [plugin]
  SETTABLEKS R11 R10 K15 ["plugin"]
  LOADK R11 K41 ["StyleEditor"]
  SETTABLEKS R11 R10 K34 ["pluginName"]
  SETTABLEKS R8 R10 K35 ["translationResourceTable"]
  SETTABLEKS R7 R10 K36 ["fallbackResourceTable"]
  DUPCLOSURE R11 K42 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K37 ["getToolbarName"]
  SETTABLEKS R9 R10 K38 ["buttonInfo"]
  NEWTABLE R11 1 0
  DUPCLOSURE R12 K43 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R12 R11 K44 ["GuiService.OpenStyleEditor"]
  SETTABLEKS R11 R10 K39 ["extraTriggers"]
  GETIMPORT R11 K8 [game]
  LOADK R13 K45 ["RunService"]
  NAMECALL R11 R11 K12 ["GetService"]
  CALL R11 2 1
  NAMECALL R12 R11 K46 ["IsEdit"]
  CALL R12 1 1
  JUMPIFNOT R12 [+46]
  LOADB R12 1
  SETTABLEKS R12 R9 K29 ["enabled"]
  DUPTABLE R12 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R13 K41 ["StyleEditor"]
  SETTABLEKS R13 R12 K47 ["id"]
  GETIMPORT R13 K54 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R14 K58 [Enum.InitialDockState.Right]
  LOADB R15 0
  LOADB R16 0
  LOADN R17 68
  LOADN R18 244
  LOADN R19 250
  LOADN R20 200
  CALL R13 7 1
  SETTABLEKS R13 R12 K48 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R13 K59 [PROTO_4]
  SETTABLEKS R13 R12 K49 ["getDockTitle"]
  GETIMPORT R13 K62 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R13 R12 K50 ["zIndexBehavior"]
  SETTABLEKS R12 R10 K63 ["dockWidgetInfo"]
  GETTABLEKS R12 R6 K64 ["build"]
  MOVE R13 R10
  CALL R12 1 1
  GETTABLEKS R13 R12 K65 ["pluginLoader"]
  NAMECALL R13 R13 K66 ["waitForUserInteraction"]
  CALL R13 1 1
  JUMPIF R13 [+1]
  RETURN R0 0
  MOVE R14 R3
  GETIMPORT R15 K16 [plugin]
  MOVE R16 R12
  CALL R14 2 0
  RETURN R0 0
  GETTABLEKS R12 R6 K64 ["build"]
  MOVE R13 R10
  CALL R12 1 0
  RETURN R0 0
