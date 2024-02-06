PROTO_0:
  LOADK R3 K0 ["AvatarUnification"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["r15_migration_finalizer_button"]
  RETURN R3 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Finalizer"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Finalizer"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["shouldPluginRun"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["RemoveR15MigratorFinalizer"]
  NAMECALL R3 R3 K13 ["GetFastFlag"]
  CALL R3 2 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K14 ["RunTests"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K15 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["Localization"]
  GETTABLEKS R3 R4 K18 ["SourceStrings"]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K19 ["LocalizedStrings"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K20 ["PluginLoader"]
  GETTABLEKS R6 R7 K21 ["PluginLoaderBuilder"]
  CALL R5 1 1
  DUPTABLE R6 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K32 [plugin]
  SETTABLEKS R7 R6 K22 ["plugin"]
  LOADK R7 K2 ["R15Migrator"]
  SETTABLEKS R7 R6 K23 ["pluginName"]
  SETTABLEKS R4 R6 K24 ["translationResourceTable"]
  SETTABLEKS R3 R6 K25 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K26 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K27 ["localizationNamespace"]
  DUPCLOSURE R7 K33 [PROTO_0]
  SETTABLEKS R7 R6 K28 ["getToolbarName"]
  DUPTABLE R7 K38 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R8 K39 [PROTO_1]
  SETTABLEKS R8 R7 K34 ["getName"]
  DUPCLOSURE R8 K40 [PROTO_2]
  SETTABLEKS R8 R7 K35 ["getDescription"]
  LOADK R8 K41 ["http://www.roblox.com/asset/?id=12399871436"]
  SETTABLEKS R8 R7 K36 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K37 ["text"]
  SETTABLEKS R7 R6 K29 ["buttonInfo"]
  DUPTABLE R7 K47 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R8 K48 ["R15MigratorFinalizer"]
  SETTABLEKS R8 R7 K42 ["id"]
  GETIMPORT R8 K51 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K55 [Enum.InitialDockState.Left]
  LOADB R10 0
  LOADB R11 1
  LOADN R12 252
  LOADN R13 128
  LOADN R14 252
  LOADN R15 128
  CALL R8 7 1
  SETTABLEKS R8 R7 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K56 [PROTO_3]
  SETTABLEKS R8 R7 K44 ["getDockTitle"]
  LOADK R8 K48 ["R15MigratorFinalizer"]
  SETTABLEKS R8 R7 K45 ["name"]
  GETIMPORT R8 K59 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K46 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K30 ["dockWidgetInfo"]
  GETTABLEKS R7 R5 K60 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K61 ["pluginLoader"]
  NAMECALL R8 R8 K62 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K63 ["Parent"]
  GETTABLEKS R10 R11 K64 ["finalizerMain"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K32 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
