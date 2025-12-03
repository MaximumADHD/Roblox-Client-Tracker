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
  LOADK R4 K12 ["EnableRibbonPluginFeature"]
  NAMECALL R2 R2 K13 ["GetEngineFeature"]
  CALL R2 2 1
  MOVE R3 R2
  JUMPIFNOT R3 [+7]
  GETIMPORT R3 K11 [game]
  LOADK R5 K14 ["StudioFixLocalizationToolsEnabled"]
  LOADB R6 0
  NAMECALL R3 R3 K15 ["DefineFastFlag"]
  CALL R3 3 1
  GETIMPORT R4 K11 [game]
  LOADK R6 K16 ["RunService"]
  NAMECALL R4 R4 K17 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K18 ["Packages"]
  GETTABLEKS R6 R7 K19 ["PluginLoader"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K20 ["PluginLoaderBuilder"]
  GETTABLEKS R10 R0 K6 ["Src"]
  GETTABLEKS R9 R10 K21 ["Resources"]
  GETTABLEKS R8 R9 K22 ["Localization"]
  GETTABLEKS R7 R8 K23 ["SourceStrings"]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K21 ["Resources"]
  GETTABLEKS R9 R10 K22 ["Localization"]
  GETTABLEKS R8 R9 K24 ["LocalizedStrings"]
  DUPTABLE R9 K34 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R10 K35 [plugin]
  SETTABLEKS R10 R9 K25 ["plugin"]
  LOADK R10 K36 ["LocalizationTools"]
  SETTABLEKS R10 R9 K26 ["pluginName"]
  SETTABLEKS R8 R9 K27 ["translationResourceTable"]
  SETTABLEKS R7 R9 K28 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K29 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K30 ["localizationNamespace"]
  DUPCLOSURE R10 K37 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K31 ["getToolbarName"]
  DUPTABLE R10 K43 [{"getName", "getDescription", "icon", "text", "enabled"}]
  DUPCLOSURE R11 K44 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K38 ["getName"]
  DUPCLOSURE R11 K45 [PROTO_2]
  SETTABLEKS R11 R10 K39 ["getDescription"]
  LOADK R11 K46 ["rbxlocaltheme://LocalizationTools"]
  SETTABLEKS R11 R10 K40 ["icon"]
  LOADNIL R11
  SETTABLEKS R11 R10 K41 ["text"]
  NAMECALL R11 R4 K47 ["IsEdit"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K42 ["enabled"]
  SETTABLEKS R10 R9 K32 ["buttonInfo"]
  DUPTABLE R10 K52 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R11 K36 ["LocalizationTools"]
  SETTABLEKS R11 R10 K48 ["id"]
  GETIMPORT R11 K55 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K59 [Enum.InitialDockState.Left]
  LOADB R13 0
  LOADB R14 0
  LOADN R15 44
  LOADN R16 250
  LOADN R17 0
  LOADN R18 0
  CALL R11 7 1
  SETTABLEKS R11 R10 K49 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K60 [PROTO_3]
  SETTABLEKS R11 R10 K50 ["getDockTitle"]
  GETIMPORT R11 K63 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K51 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K33 ["dockWidgetInfo"]
  GETTABLEKS R10 R6 K64 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K65 ["pluginLoader"]
  NAMECALL R11 R11 K66 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K4 [require]
  GETIMPORT R15 K1 [script]
  GETTABLEKS R14 R15 K2 ["Parent"]
  GETTABLEKS R13 R14 K67 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K35 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
