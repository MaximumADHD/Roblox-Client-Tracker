PROTO_0:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["Animations"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+2]
  LOADK R3 K0 ["Animation Editor"]
  RETURN R3 1
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K1 ["Plugin"]
  LOADK R7 K2 ["Button"]
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
  GETIMPORT R2 K12 [game]
  LOADK R4 K13 ["FixAvatarTabPluginsNotLoadingOnNonEnglishBuilds"]
  NAMECALL R2 R2 K14 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Util"]
  GETTABLEKS R4 R5 K15 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["SourceStrings"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K18 ["LocalizedStrings"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K19 ["PluginLoader"]
  GETTABLEKS R7 R8 K20 ["PluginLoaderBuilder"]
  CALL R6 1 1
  DUPTABLE R7 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R8 K31 [plugin]
  SETTABLEKS R8 R7 K21 ["plugin"]
  GETTABLEKS R8 R3 K32 ["PLUGIN_NAME"]
  SETTABLEKS R8 R7 K22 ["pluginName"]
  SETTABLEKS R5 R7 K23 ["translationResourceTable"]
  SETTABLEKS R4 R7 K24 ["fallbackResourceTable"]
  LOADNIL R8
  SETTABLEKS R8 R7 K25 ["overrideLocaleId"]
  LOADNIL R8
  SETTABLEKS R8 R7 K26 ["localizationNamespace"]
  DUPCLOSURE R8 K33 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K27 ["getToolbarName"]
  DUPTABLE R8 K38 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R9 K39 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K34 ["getName"]
  DUPCLOSURE R9 K40 [PROTO_2]
  SETTABLEKS R9 R8 K35 ["getDescription"]
  GETTABLEKS R9 R3 K41 ["PLUGIN_ICON"]
  SETTABLEKS R9 R8 K36 ["icon"]
  LOADNIL R9
  SETTABLEKS R9 R8 K37 ["text"]
  SETTABLEKS R8 R7 K28 ["buttonInfo"]
  DUPTABLE R8 K47 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R9 K2 ["AnimationClipEditor"]
  SETTABLEKS R9 R8 K42 ["id"]
  GETIMPORT R9 K50 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K54 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 1
  GETTABLEKS R14 R3 K55 ["MAIN_FLOATING_SIZE"]
  GETTABLEKS R13 R14 K56 ["X"]
  GETTABLEKS R15 R3 K55 ["MAIN_FLOATING_SIZE"]
  GETTABLEKS R14 R15 K57 ["Y"]
  GETTABLEKS R16 R3 K58 ["MAIN_MINIMUM_SIZE"]
  GETTABLEKS R15 R16 K56 ["X"]
  GETTABLEKS R17 R3 K58 ["MAIN_MINIMUM_SIZE"]
  GETTABLEKS R16 R17 K57 ["Y"]
  CALL R9 7 1
  SETTABLEKS R9 R8 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K59 [PROTO_3]
  SETTABLEKS R9 R8 K44 ["getDockTitle"]
  LOADK R9 K2 ["AnimationClipEditor"]
  SETTABLEKS R9 R8 K45 ["name"]
  GETIMPORT R9 K62 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K46 ["zIndexBehavior"]
  SETTABLEKS R8 R7 K29 ["dockWidgetInfo"]
  GETTABLEKS R8 R6 K63 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K64 ["pluginLoader"]
  NAMECALL R9 R9 K65 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K66 ["Parent"]
  GETTABLEKS R11 R12 K67 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K31 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
