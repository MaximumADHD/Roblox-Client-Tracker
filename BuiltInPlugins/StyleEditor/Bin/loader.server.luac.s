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
  GETIMPORT R5 K8 [game]
  LOADK R7 K15 ["EnableRibbonPluginFeature"]
  NAMECALL R5 R5 K16 ["GetEngineFeature"]
  CALL R5 2 1
  GETIMPORT R6 K8 [game]
  LOADK R8 K17 ["AddPluginIconsGA"]
  LOADB R9 0
  NAMECALL R6 R6 K18 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K20 [plugin]
  GETTABLEKS R8 R2 K21 ["Name"]
  SETTABLEKS R8 R7 K21 ["Name"]
  GETIMPORT R7 K1 [require]
  GETTABLEKS R9 R2 K22 ["Packages"]
  GETTABLEKS R8 R9 K23 ["PluginLoader"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K24 ["PluginLoaderBuilder"]
  GETTABLEKS R12 R2 K25 ["Src"]
  GETTABLEKS R11 R12 K26 ["Resources"]
  GETTABLEKS R10 R11 K27 ["Localization"]
  GETTABLEKS R9 R10 K28 ["SourceStrings"]
  GETTABLEKS R13 R2 K25 ["Src"]
  GETTABLEKS R12 R13 K26 ["Resources"]
  GETTABLEKS R11 R12 K27 ["Localization"]
  GETTABLEKS R10 R11 K29 ["LocalizedStrings"]
  DUPTABLE R11 K34 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R12 K35 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K30 ["getName"]
  DUPCLOSURE R12 K36 [PROTO_1]
  SETTABLEKS R12 R11 K31 ["getDescription"]
  JUMPIFNOT R6 [+3]
  JUMPIFNOT R5 [+2]
  LOADK R12 K37 ["rbxlocaltheme://RibbonStyleEditor"]
  JUMP [+1]
  LOADK R12 K38 ["rbxlocaltheme://StyleEditor"]
  SETTABLEKS R12 R11 K32 ["icon"]
  LOADB R12 0
  SETTABLEKS R12 R11 K33 ["enabled"]
  DUPTABLE R12 K45 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
  GETIMPORT R13 K20 [plugin]
  SETTABLEKS R13 R12 K19 ["plugin"]
  LOADK R13 K46 ["StyleEditor"]
  SETTABLEKS R13 R12 K39 ["pluginName"]
  SETTABLEKS R10 R12 K40 ["translationResourceTable"]
  SETTABLEKS R9 R12 K41 ["fallbackResourceTable"]
  DUPCLOSURE R13 K47 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K42 ["getToolbarName"]
  SETTABLEKS R11 R12 K43 ["buttonInfo"]
  NEWTABLE R13 1 0
  DUPCLOSURE R14 K48 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K49 ["GuiService.OpenStyleEditor"]
  SETTABLEKS R13 R12 K44 ["extraTriggers"]
  GETIMPORT R13 K8 [game]
  LOADK R15 K50 ["RunService"]
  NAMECALL R13 R13 K12 ["GetService"]
  CALL R13 2 1
  NAMECALL R14 R13 K51 ["IsEdit"]
  CALL R14 1 1
  JUMPIFNOT R14 [+46]
  LOADB R14 1
  SETTABLEKS R14 R11 K33 ["enabled"]
  DUPTABLE R14 K56 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R15 K46 ["StyleEditor"]
  SETTABLEKS R15 R14 K52 ["id"]
  GETIMPORT R15 K59 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R16 K63 [Enum.InitialDockState.Right]
  LOADB R17 0
  LOADB R18 0
  LOADN R19 68
  LOADN R20 244
  LOADN R21 250
  LOADN R22 200
  CALL R15 7 1
  SETTABLEKS R15 R14 K53 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R15 K64 [PROTO_4]
  SETTABLEKS R15 R14 K54 ["getDockTitle"]
  GETIMPORT R15 K67 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R15 R14 K55 ["zIndexBehavior"]
  SETTABLEKS R14 R12 K68 ["dockWidgetInfo"]
  GETTABLEKS R14 R8 K69 ["build"]
  MOVE R15 R12
  CALL R14 1 1
  GETTABLEKS R15 R14 K70 ["pluginLoader"]
  NAMECALL R15 R15 K71 ["waitForUserInteraction"]
  CALL R15 1 1
  JUMPIF R15 [+1]
  RETURN R0 0
  MOVE R16 R3
  GETIMPORT R17 K20 [plugin]
  MOVE R18 R14
  CALL R16 2 0
  RETURN R0 0
  GETTABLEKS R14 R8 K69 ["build"]
  MOVE R15 R12
  CALL R14 1 0
  RETURN R0 0
