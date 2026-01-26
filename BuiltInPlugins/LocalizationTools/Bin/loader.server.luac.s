PROTO_0:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+2]
  LOADK R3 K0 ["Localization"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["ToolbarLabel"]
  CALL R3 4 1
  RETURN R3 1

PROTO_1:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+2]
  LOADK R3 K0 ["Tools"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["RibbonBarButton"]
  CALL R3 4 1
  RETURN R3 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["ToolTipMessage"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["WindowTitle"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K5 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K11 [game]
  LOADK R4 K12 ["StudioFixLocalizationToolsEnabled"]
  LOADB R5 0
  NAMECALL R2 R2 K13 ["DefineFastFlag"]
  CALL R2 3 1
  GETIMPORT R3 K11 [game]
  LOADK R5 K14 ["RunService"]
  NAMECALL R3 R3 K15 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K16 ["Packages"]
  GETTABLEKS R5 R6 K17 ["PluginLoader"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K18 ["PluginLoaderBuilder"]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K19 ["Resources"]
  GETTABLEKS R7 R8 K20 ["Localization"]
  GETTABLEKS R6 R7 K21 ["SourceStrings"]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K19 ["Resources"]
  GETTABLEKS R8 R9 K20 ["Localization"]
  GETTABLEKS R7 R8 K22 ["LocalizedStrings"]
  DUPTABLE R8 K32 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R9 K33 [plugin]
  SETTABLEKS R9 R8 K23 ["plugin"]
  LOADK R9 K34 ["LocalizationTools"]
  SETTABLEKS R9 R8 K24 ["pluginName"]
  SETTABLEKS R7 R8 K25 ["translationResourceTable"]
  SETTABLEKS R6 R8 K26 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K27 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K28 ["localizationNamespace"]
  DUPCLOSURE R9 K35 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K29 ["getToolbarName"]
  DUPTABLE R9 K41 [{"getName", "getDescription", "icon", "text", "enabled"}]
  DUPCLOSURE R10 K42 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K36 ["getName"]
  DUPCLOSURE R10 K43 [PROTO_2]
  SETTABLEKS R10 R9 K37 ["getDescription"]
  LOADK R10 K44 ["rbxlocaltheme://LocalizationTools"]
  SETTABLEKS R10 R9 K38 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K39 ["text"]
  NAMECALL R10 R3 K45 ["IsEdit"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K40 ["enabled"]
  SETTABLEKS R9 R8 K30 ["buttonInfo"]
  DUPTABLE R9 K50 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R10 K34 ["LocalizationTools"]
  SETTABLEKS R10 R9 K46 ["id"]
  GETIMPORT R10 K53 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K57 [Enum.InitialDockState.Left]
  LOADB R12 0
  LOADB R13 0
  LOADN R14 44
  LOADN R15 250
  LOADN R16 0
  LOADN R17 0
  CALL R10 7 1
  SETTABLEKS R10 R9 K47 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K58 [PROTO_3]
  SETTABLEKS R10 R9 K48 ["getDockTitle"]
  GETIMPORT R10 K61 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K49 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K31 ["dockWidgetInfo"]
  GETTABLEKS R9 R5 K62 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K63 ["pluginLoader"]
  NAMECALL R10 R10 K64 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K65 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K33 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
