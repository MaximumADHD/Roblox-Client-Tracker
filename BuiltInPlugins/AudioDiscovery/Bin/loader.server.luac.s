PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
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
  LOADK R2 K8 ["AudioDiscoveryLoader"]
  NAMECALL R0 R0 K9 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R1 K7 [game]
  LOADK R3 K10 ["RetireAudioDiscoveryPlugin"]
  NAMECALL R1 R1 K9 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R5 R1 K11 ["Src"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETTABLEKS R3 R4 K13 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K14 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R1 K15 ["PluginLoader"]
  GETTABLEKS R4 R5 K16 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R7 R1 K11 ["Src"]
  GETTABLEKS R6 R7 K17 ["Resources"]
  GETTABLEKS R5 R6 K18 ["Localization"]
  GETTABLEKS R4 R5 K19 ["SourceStrings"]
  GETTABLEKS R8 R1 K11 ["Src"]
  GETTABLEKS R7 R8 K17 ["Resources"]
  GETTABLEKS R6 R7 K18 ["Localization"]
  GETTABLEKS R5 R6 K20 ["LocalizedStrings"]
  DUPTABLE R6 K25 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R7 K26 [PROTO_0]
  SETTABLEKS R7 R6 K21 ["getName"]
  DUPCLOSURE R7 K27 [PROTO_1]
  SETTABLEKS R7 R6 K22 ["getDescription"]
  LOADK R7 K28 ["rbxlocaltheme://ViewSounds"]
  SETTABLEKS R7 R6 K23 ["icon"]
  LOADB R7 0
  SETTABLEKS R7 R6 K24 ["enabled"]
  DUPTABLE R7 K35 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  GETIMPORT R8 K36 [plugin]
  SETTABLEKS R8 R7 K29 ["plugin"]
  LOADK R8 K37 ["AudioDiscovery"]
  SETTABLEKS R8 R7 K30 ["pluginName"]
  SETTABLEKS R5 R7 K31 ["translationResourceTable"]
  SETTABLEKS R4 R7 K32 ["fallbackResourceTable"]
  DUPCLOSURE R8 K38 [PROTO_2]
  SETTABLEKS R8 R7 K33 ["getToolbarName"]
  SETTABLEKS R6 R7 K34 ["buttonInfo"]
  GETIMPORT R8 K7 [game]
  LOADK R10 K39 ["RunService"]
  NAMECALL R8 R8 K40 ["GetService"]
  CALL R8 2 1
  NAMECALL R9 R8 K41 ["IsEdit"]
  CALL R9 1 1
  JUMPIFNOT R9 [+55]
  LOADB R9 1
  SETTABLEKS R9 R6 K24 ["enabled"]
  DUPTABLE R9 K46 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R10 K37 ["AudioDiscovery"]
  SETTABLEKS R10 R9 K42 ["id"]
  GETIMPORT R10 K49 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K53 [Enum.InitialDockState.Bottom]
  LOADB R12 0
  LOADB R13 0
  LOADN R14 128
  LOADN R15 224
  LOADN R16 250
  LOADN R17 200
  CALL R10 7 1
  SETTABLEKS R10 R9 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K54 [PROTO_3]
  SETTABLEKS R10 R9 K44 ["getDockTitle"]
  GETIMPORT R10 K57 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K45 ["zIndexBehavior"]
  SETTABLEKS R9 R7 K58 ["dockWidgetInfo"]
  GETTABLEKS R9 R3 K59 ["build"]
  MOVE R10 R7
  CALL R9 1 1
  GETTABLEKS R10 R9 K60 ["pluginLoader"]
  NAMECALL R10 R10 K61 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K4 ["Parent"]
  GETTABLEKS R12 R13 K62 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K36 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
  GETTABLEKS R9 R3 K59 ["build"]
  MOVE R10 R7
  CALL R9 1 0
  RETURN R0 0
