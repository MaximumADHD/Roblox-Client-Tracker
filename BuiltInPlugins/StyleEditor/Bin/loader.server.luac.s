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
  LOADK R6 K14 ["StyleEditorUITab"]
  LOADB R7 0
  NAMECALL R4 R4 K15 ["DefineFastFlag"]
  CALL R4 3 1
  GETIMPORT R5 K17 [plugin]
  GETTABLEKS R6 R2 K18 ["Name"]
  SETTABLEKS R6 R5 K18 ["Name"]
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R2 K19 ["PluginLoader"]
  GETTABLEKS R6 R7 K20 ["PluginLoaderBuilder"]
  CALL R5 1 1
  GETTABLEKS R9 R2 K21 ["Src"]
  GETTABLEKS R8 R9 K22 ["Resources"]
  GETTABLEKS R7 R8 K23 ["Localization"]
  GETTABLEKS R6 R7 K24 ["SourceStrings"]
  GETTABLEKS R10 R2 K21 ["Src"]
  GETTABLEKS R9 R10 K22 ["Resources"]
  GETTABLEKS R8 R9 K23 ["Localization"]
  GETTABLEKS R7 R8 K25 ["LocalizedStrings"]
  DUPTABLE R8 K30 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R9 K31 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K26 ["getName"]
  DUPCLOSURE R9 K32 [PROTO_1]
  SETTABLEKS R9 R8 K27 ["getDescription"]
  LOADK R9 K33 ["rbxlocaltheme://StyleEditor"]
  SETTABLEKS R9 R8 K28 ["icon"]
  LOADB R9 0
  SETTABLEKS R9 R8 K29 ["enabled"]
  DUPTABLE R9 K40 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
  GETIMPORT R10 K17 [plugin]
  SETTABLEKS R10 R9 K16 ["plugin"]
  LOADK R10 K41 ["StyleEditor"]
  SETTABLEKS R10 R9 K34 ["pluginName"]
  SETTABLEKS R7 R9 K35 ["translationResourceTable"]
  SETTABLEKS R6 R9 K36 ["fallbackResourceTable"]
  DUPCLOSURE R10 K42 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R10 R9 K37 ["getToolbarName"]
  SETTABLEKS R8 R9 K38 ["buttonInfo"]
  NEWTABLE R10 1 0
  DUPCLOSURE R11 K43 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R11 R10 K44 ["GuiService.OpenStyleEditor"]
  SETTABLEKS R10 R9 K39 ["extraTriggers"]
  GETIMPORT R10 K8 [game]
  LOADK R12 K45 ["RunService"]
  NAMECALL R10 R10 K12 ["GetService"]
  CALL R10 2 1
  NAMECALL R11 R10 K46 ["IsEdit"]
  CALL R11 1 1
  JUMPIFNOT R11 [+46]
  LOADB R11 1
  SETTABLEKS R11 R8 K29 ["enabled"]
  DUPTABLE R11 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R12 K41 ["StyleEditor"]
  SETTABLEKS R12 R11 K47 ["id"]
  GETIMPORT R12 K54 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R13 K58 [Enum.InitialDockState.Right]
  LOADB R14 0
  LOADB R15 0
  LOADN R16 68
  LOADN R17 244
  LOADN R18 250
  LOADN R19 200
  CALL R12 7 1
  SETTABLEKS R12 R11 K48 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R12 K59 [PROTO_4]
  SETTABLEKS R12 R11 K49 ["getDockTitle"]
  GETIMPORT R12 K62 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K50 ["zIndexBehavior"]
  SETTABLEKS R11 R9 K63 ["dockWidgetInfo"]
  GETTABLEKS R11 R5 K64 ["build"]
  MOVE R12 R9
  CALL R11 1 1
  GETTABLEKS R12 R11 K65 ["pluginLoader"]
  NAMECALL R12 R12 K66 ["waitForUserInteraction"]
  CALL R12 1 1
  JUMPIF R12 [+1]
  RETURN R0 0
  MOVE R13 R3
  GETIMPORT R14 K17 [plugin]
  MOVE R15 R11
  CALL R13 2 0
  RETURN R0 0
  GETTABLEKS R11 R5 K64 ["build"]
  MOVE R12 R9
  CALL R11 1 0
  RETURN R0 0
