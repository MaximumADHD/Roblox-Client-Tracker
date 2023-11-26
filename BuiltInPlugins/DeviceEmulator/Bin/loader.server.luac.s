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
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K7 [game]
  LOADK R2 K8 ["DeviceEmulatorPluginBasedUi"]
  NAMECALL R0 R0 K9 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Util"]
  GETTABLEKS R2 R3 K12 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K13 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K1 [require]
  GETTABLEKS R4 R0 K14 ["PluginLoader"]
  GETTABLEKS R3 R4 K15 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["Localization"]
  GETTABLEKS R3 R4 K18 ["SourceStrings"]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K19 ["LocalizedStrings"]
  DUPTABLE R5 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R6 K30 [plugin]
  SETTABLEKS R6 R5 K20 ["plugin"]
  LOADK R6 K31 ["DeviceEmulator"]
  SETTABLEKS R6 R5 K21 ["pluginName"]
  SETTABLEKS R4 R5 K22 ["translationResourceTable"]
  SETTABLEKS R3 R5 K23 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K24 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K25 ["localizationNamespace"]
  DUPCLOSURE R6 K32 [PROTO_0]
  SETTABLEKS R6 R5 K26 ["getToolbarName"]
  DUPTABLE R6 K38 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R7 K39 [PROTO_1]
  SETTABLEKS R7 R6 K33 ["getName"]
  DUPCLOSURE R7 K40 [PROTO_2]
  SETTABLEKS R7 R6 K34 ["getDescription"]
  LOADK R7 K41 ["rbxasset://textures/DeviceEmulator/emulator.png"]
  SETTABLEKS R7 R6 K35 ["icon"]
  LOADNIL R7
  SETTABLEKS R7 R6 K36 ["text"]
  LOADB R7 1
  SETTABLEKS R7 R6 K37 ["clickableWhenViewportHidden"]
  SETTABLEKS R6 R5 K27 ["buttonInfo"]
  DUPTABLE R6 K46 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R7 K31 ["DeviceEmulator"]
  SETTABLEKS R7 R6 K42 ["id"]
  GETIMPORT R7 K49 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R8 K53 [Enum.InitialDockState.Bottom]
  LOADB R9 0
  LOADB R10 0
  LOADN R11 104
  LOADN R12 164
  LOADN R13 44
  LOADN R14 200
  CALL R7 7 1
  SETTABLEKS R7 R6 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R7 K54 [PROTO_3]
  SETTABLEKS R7 R6 K44 ["getDockTitle"]
  GETIMPORT R7 K57 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R7 R6 K45 ["zIndexBehavior"]
  SETTABLEKS R6 R5 K28 ["dockWidgetInfo"]
  GETTABLEKS R6 R2 K58 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K59 ["pluginLoader"]
  NAMECALL R7 R7 K60 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETIMPORT R8 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K61 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K30 [plugin]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0
