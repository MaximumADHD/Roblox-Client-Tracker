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
  GETTABLEKS R8 R0 K19 ["Packages"]
  GETTABLEKS R7 R8 K20 ["PluginLoader"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K21 ["PluginLoaderBuilder"]
  DUPTABLE R8 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R9 K32 [plugin]
  SETTABLEKS R9 R8 K22 ["plugin"]
  GETTABLEKS R9 R3 K33 ["PLUGIN_NAME"]
  SETTABLEKS R9 R8 K23 ["pluginName"]
  SETTABLEKS R5 R8 K24 ["translationResourceTable"]
  SETTABLEKS R4 R8 K25 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K26 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K27 ["localizationNamespace"]
  DUPCLOSURE R9 K34 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K28 ["getToolbarName"]
  DUPTABLE R9 K39 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R10 K40 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R10 R9 K35 ["getName"]
  DUPCLOSURE R10 K41 [PROTO_2]
  SETTABLEKS R10 R9 K36 ["getDescription"]
  GETTABLEKS R10 R3 K42 ["PLUGIN_ICON"]
  SETTABLEKS R10 R9 K37 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K38 ["text"]
  SETTABLEKS R9 R8 K29 ["buttonInfo"]
  DUPTABLE R9 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R10 K2 ["AnimationClipEditor"]
  SETTABLEKS R10 R9 K43 ["id"]
  GETIMPORT R10 K51 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K55 [Enum.InitialDockState.Bottom]
  LOADB R12 0
  LOADB R13 1
  GETTABLEKS R15 R3 K56 ["MAIN_FLOATING_SIZE"]
  GETTABLEKS R14 R15 K57 ["X"]
  GETTABLEKS R16 R3 K56 ["MAIN_FLOATING_SIZE"]
  GETTABLEKS R15 R16 K58 ["Y"]
  GETTABLEKS R17 R3 K59 ["MAIN_MINIMUM_SIZE"]
  GETTABLEKS R16 R17 K57 ["X"]
  GETTABLEKS R18 R3 K59 ["MAIN_MINIMUM_SIZE"]
  GETTABLEKS R17 R18 K58 ["Y"]
  CALL R10 7 1
  SETTABLEKS R10 R9 K44 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K60 [PROTO_3]
  SETTABLEKS R10 R9 K45 ["getDockTitle"]
  LOADK R10 K2 ["AnimationClipEditor"]
  SETTABLEKS R10 R9 K46 ["name"]
  GETIMPORT R10 K63 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K47 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K30 ["dockWidgetInfo"]
  GETTABLEKS R9 R7 K64 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K65 ["pluginLoader"]
  NAMECALL R10 R10 K66 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K67 ["Parent"]
  GETTABLEKS R12 R13 K68 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K32 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
