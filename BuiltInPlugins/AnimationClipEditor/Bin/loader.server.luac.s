PROTO_0:
  LOADK R3 K0 ["Animations"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["Animation Editor"]
  RETURN R3 1

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
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["RunTests"]
  CALL R2 0 1
  JUMPIF R2 [+4]
  GETTABLEKS R2 R1 K10 ["RunRhodiumTests"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K12 ["Resources"]
  GETTABLEKS R3 R4 K13 ["SourceStrings"]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K12 ["Resources"]
  GETTABLEKS R4 R5 K14 ["LocalizedStrings"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K15 ["Packages"]
  GETTABLEKS R6 R7 K16 ["PluginLoader"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K17 ["PluginLoaderBuilder"]
  DUPTABLE R7 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K28 [plugin]
  SETTABLEKS R8 R7 K18 ["plugin"]
  GETTABLEKS R8 R2 K29 ["PLUGIN_NAME"]
  SETTABLEKS R8 R7 K19 ["pluginName"]
  SETTABLEKS R4 R7 K20 ["translationResourceTable"]
  SETTABLEKS R3 R7 K21 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K22 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K23 ["localizationNamespace"]
  DUPCLOSURE R8 K30 [PROTO_0]
  SETTABLEKS R8 R7 K24 ["getToolbarName"]
  DUPTABLE R8 K35 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R9 K36 [PROTO_1]
  SETTABLEKS R9 R8 K31 ["getName"]
  DUPCLOSURE R9 K37 [PROTO_2]
  SETTABLEKS R9 R8 K32 ["getDescription"]
  GETTABLEKS R9 R2 K38 ["PLUGIN_ICON"]
  SETTABLEKS R9 R8 K33 ["icon"]
  LOADNIL R9
  SETTABLEKS R9 R8 K34 ["text"]
  SETTABLEKS R8 R7 K25 ["buttonInfo"]
  DUPTABLE R8 K44 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R9 K2 ["AnimationClipEditor"]
  SETTABLEKS R9 R8 K39 ["id"]
  GETIMPORT R9 K47 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K51 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 1
  GETTABLEKS R14 R2 K52 ["MAIN_FLOATING_SIZE"]
  GETTABLEKS R13 R14 K53 ["X"]
  GETTABLEKS R15 R2 K52 ["MAIN_FLOATING_SIZE"]
  GETTABLEKS R14 R15 K54 ["Y"]
  GETTABLEKS R16 R2 K55 ["MAIN_MINIMUM_SIZE"]
  GETTABLEKS R15 R16 K53 ["X"]
  GETTABLEKS R17 R2 K55 ["MAIN_MINIMUM_SIZE"]
  GETTABLEKS R16 R17 K54 ["Y"]
  CALL R9 7 1
  SETTABLEKS R9 R8 K40 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K56 [PROTO_3]
  SETTABLEKS R9 R8 K41 ["getDockTitle"]
  LOADK R9 K2 ["AnimationClipEditor"]
  SETTABLEKS R9 R8 K42 ["name"]
  GETIMPORT R9 K59 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K43 ["zIndexBehavior"]
  SETTABLEKS R8 R7 K26 ["dockWidgetInfo"]
  GETTABLEKS R8 R6 K60 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K61 ["pluginLoader"]
  NAMECALL R9 R9 K62 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K63 ["Parent"]
  GETTABLEKS R11 R12 K64 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K28 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
