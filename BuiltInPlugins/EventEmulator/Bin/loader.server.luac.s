PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NAMECALL R0 R0 K4 ["HasInternalPermission"]
  CALL R0 1 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K9 ["Parent"]
  GETTABLEKS R1 R2 K10 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K8 [script]
  GETTABLEKS R1 R2 K9 ["Parent"]
  GETTABLEKS R0 R1 K9 ["Parent"]
  GETIMPORT R1 K6 [require]
  GETTABLEKS R3 R0 K11 ["PluginLoader"]
  GETTABLEKS R2 R3 K12 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K13 ["Src"]
  GETTABLEKS R4 R5 K14 ["Resources"]
  GETTABLEKS R3 R4 K15 ["Localization"]
  GETTABLEKS R2 R3 K16 ["SourceStrings"]
  GETTABLEKS R6 R0 K13 ["Src"]
  GETTABLEKS R5 R6 K14 ["Resources"]
  GETTABLEKS R4 R5 K15 ["Localization"]
  GETTABLEKS R3 R4 K17 ["LocalizedStrings"]
  DUPTABLE R4 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R5 K28 [plugin]
  SETTABLEKS R5 R4 K18 ["plugin"]
  LOADK R5 K29 ["EventEmulator"]
  SETTABLEKS R5 R4 K19 ["pluginName"]
  SETTABLEKS R3 R4 K20 ["translationResourceTable"]
  SETTABLEKS R2 R4 K21 ["fallbackResourceTable"]
  LOADNIL R5
  SETTABLEKS R5 R4 K22 ["overrideLocaleId"]
  LOADNIL R5
  SETTABLEKS R5 R4 K23 ["localizationNamespace"]
  DUPCLOSURE R5 K30 [PROTO_0]
  SETTABLEKS R5 R4 K24 ["getToolbarName"]
  DUPTABLE R5 K36 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R6 K37 [PROTO_1]
  SETTABLEKS R6 R5 K31 ["getName"]
  DUPCLOSURE R6 K38 [PROTO_2]
  SETTABLEKS R6 R5 K32 ["getDescription"]
  LOADK R6 K39 ["rbxasset://textures/GameSettings/ToolbarIcon.png"]
  SETTABLEKS R6 R5 K33 ["icon"]
  LOADNIL R6
  SETTABLEKS R6 R5 K34 ["text"]
  LOADB R6 1
  SETTABLEKS R6 R5 K35 ["clickableWhenViewportHidden"]
  SETTABLEKS R5 R4 K25 ["buttonInfo"]
  DUPTABLE R5 K44 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R6 K29 ["EventEmulator"]
  SETTABLEKS R6 R5 K40 ["id"]
  GETIMPORT R6 K47 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R7 K51 [Enum.InitialDockState.Left]
  LOADB R8 0
  LOADB R9 0
  LOADN R10 54
  LOADN R11 225
  LOADN R12 54
  LOADN R13 225
  CALL R6 7 1
  SETTABLEKS R6 R5 K41 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R6 K52 [PROTO_3]
  SETTABLEKS R6 R5 K42 ["getDockTitle"]
  GETIMPORT R6 K55 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K43 ["zIndexBehavior"]
  SETTABLEKS R5 R4 K26 ["dockWidgetInfo"]
  GETTABLEKS R5 R1 K56 ["build"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R6 R5 K57 ["pluginLoader"]
  NAMECALL R6 R6 K58 ["waitForUserInteraction"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETIMPORT R7 K6 [require]
  GETIMPORT R10 K8 [script]
  GETTABLEKS R9 R10 K9 ["Parent"]
  GETTABLEKS R8 R9 K59 ["main"]
  CALL R7 1 1
  MOVE R8 R7
  GETIMPORT R9 K28 [plugin]
  MOVE R10 R5
  CALL R8 2 0
  RETURN R0 0
