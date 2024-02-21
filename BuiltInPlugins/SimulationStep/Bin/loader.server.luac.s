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
  LOADK R2 K8 ["EnableSimulationStep"]
  NAMECALL R0 R0 K9 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K3 [script]
  LOADK R2 K10 ["SimulationStep"]
  NAMECALL R0 R0 K11 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K1 [require]
  GETTABLEKS R3 R0 K12 ["Packages"]
  GETTABLEKS R2 R3 K13 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K14 ["launch"]
  LOADK R3 K10 ["SimulationStep"]
  GETTABLEKS R4 R0 K15 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K16 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K18 [plugin]
  GETTABLEKS R3 R0 K19 ["Name"]
  SETTABLEKS R3 R2 K19 ["Name"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R5 R0 K12 ["Packages"]
  GETTABLEKS R4 R5 K20 ["PluginLoader"]
  GETTABLEKS R3 R4 K21 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K15 ["Src"]
  GETTABLEKS R5 R6 K22 ["Resources"]
  GETTABLEKS R4 R5 K23 ["Localization"]
  GETTABLEKS R3 R4 K24 ["SourceStrings"]
  GETTABLEKS R7 R0 K15 ["Src"]
  GETTABLEKS R6 R7 K22 ["Resources"]
  GETTABLEKS R5 R6 K23 ["Localization"]
  GETTABLEKS R4 R5 K25 ["LocalizedStrings"]
  DUPTABLE R5 K30 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R6 K31 [PROTO_0]
  SETTABLEKS R6 R5 K26 ["getName"]
  DUPCLOSURE R6 K32 [PROTO_1]
  SETTABLEKS R6 R5 K27 ["getDescription"]
  LOADK R6 K33 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R6 R5 K28 ["icon"]
  LOADB R6 0
  SETTABLEKS R6 R5 K29 ["enabled"]
  DUPTABLE R6 K39 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  GETIMPORT R7 K18 [plugin]
  SETTABLEKS R7 R6 K17 ["plugin"]
  LOADK R7 K10 ["SimulationStep"]
  SETTABLEKS R7 R6 K34 ["pluginName"]
  SETTABLEKS R4 R6 K35 ["translationResourceTable"]
  SETTABLEKS R3 R6 K36 ["fallbackResourceTable"]
  DUPCLOSURE R7 K40 [PROTO_2]
  SETTABLEKS R7 R6 K37 ["getToolbarName"]
  SETTABLEKS R5 R6 K38 ["buttonInfo"]
  GETIMPORT R7 K7 [game]
  LOADK R9 K41 ["RunService"]
  NAMECALL R7 R7 K42 ["GetService"]
  CALL R7 2 1
  NAMECALL R8 R7 K43 ["IsEdit"]
  CALL R8 1 1
  JUMPIFNOT R8 [+55]
  LOADB R8 1
  SETTABLEKS R8 R5 K29 ["enabled"]
  DUPTABLE R8 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K10 ["SimulationStep"]
  SETTABLEKS R9 R8 K44 ["id"]
  GETIMPORT R9 K51 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K55 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 0
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K45 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K56 [PROTO_3]
  SETTABLEKS R9 R8 K46 ["getDockTitle"]
  GETIMPORT R9 K59 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K47 ["zIndexBehavior"]
  SETTABLEKS R8 R6 K60 ["dockWidgetInfo"]
  GETTABLEKS R8 R2 K61 ["build"]
  MOVE R9 R6
  CALL R8 1 1
  GETTABLEKS R9 R8 K62 ["pluginLoader"]
  NAMECALL R9 R9 K63 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K4 ["Parent"]
  GETTABLEKS R11 R12 K64 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K18 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
  GETTABLEKS R8 R2 K61 ["build"]
  MOVE R9 R6
  CALL R8 1 0
  RETURN R0 0
