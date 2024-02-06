PROTO_0:
  LOADK R3 K0 ["AvatarUnification"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["r15_migration_button"]
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

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnPublishAttempt"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_R15Migrator"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K5 [script]
  LOADK R2 K6 ["R15Migrator"]
  NAMECALL R0 R0 K7 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K9 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Util"]
  GETTABLEKS R2 R3 K12 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K13 ["shouldPluginRun"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K14 ["RunTests"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K15 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["Localization"]
  GETTABLEKS R3 R4 K18 ["SourceStrings"]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K19 ["LocalizedStrings"]
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R0 K20 ["PluginLoader"]
  GETTABLEKS R6 R7 K21 ["PluginLoaderBuilder"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Util"]
  GETTABLEKS R7 R8 K22 ["checkPublishLock"]
  CALL R6 1 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K23 ["StudioPublishService"]
  NAMECALL R7 R7 K24 ["GetService"]
  CALL R7 2 1
  MOVE R8 R6
  CALL R8 0 0
  DUPTABLE R8 K35 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R9 K36 [plugin]
  SETTABLEKS R9 R8 K25 ["plugin"]
  LOADK R9 K6 ["R15Migrator"]
  SETTABLEKS R9 R8 K26 ["pluginName"]
  SETTABLEKS R4 R8 K27 ["translationResourceTable"]
  SETTABLEKS R3 R8 K28 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K29 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K30 ["localizationNamespace"]
  DUPCLOSURE R9 K37 [PROTO_0]
  SETTABLEKS R9 R8 K31 ["getToolbarName"]
  DUPTABLE R9 K42 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R10 K43 [PROTO_1]
  SETTABLEKS R10 R9 K38 ["getName"]
  DUPCLOSURE R10 K44 [PROTO_2]
  SETTABLEKS R10 R9 K39 ["getDescription"]
  LOADK R10 K45 ["http://www.roblox.com/asset/?id=12399871436"]
  SETTABLEKS R10 R9 K40 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K41 ["text"]
  SETTABLEKS R9 R8 K32 ["buttonInfo"]
  DUPTABLE R9 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R10 K6 ["R15Migrator"]
  SETTABLEKS R10 R9 K46 ["id"]
  GETIMPORT R10 K54 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K58 [Enum.InitialDockState.Left]
  LOADB R12 0
  LOADB R13 1
  LOADN R14 252
  LOADN R15 128
  LOADN R16 252
  LOADN R17 128
  CALL R10 7 1
  SETTABLEKS R10 R9 K47 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K59 [PROTO_3]
  SETTABLEKS R10 R9 K48 ["getDockTitle"]
  LOADK R10 K6 ["R15Migrator"]
  SETTABLEKS R10 R9 K49 ["name"]
  GETIMPORT R10 K62 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K50 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K33 ["dockWidgetInfo"]
  NEWTABLE R9 1 0
  DUPCLOSURE R10 K63 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K64 ["StudioPublishService.OnPublishAttempt"]
  SETTABLEKS R9 R8 K34 ["extraTriggers"]
  GETTABLEKS R9 R5 K65 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K66 ["pluginLoader"]
  NAMECALL R10 R10 K67 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  GETIMPORT R11 K9 [require]
  GETIMPORT R14 K5 [script]
  GETTABLEKS R13 R14 K68 ["Parent"]
  GETTABLEKS R12 R13 K69 ["main"]
  CALL R11 1 1
  MOVE R12 R11
  GETIMPORT R13 K36 [plugin]
  MOVE R14 R9
  CALL R12 2 0
  RETURN R0 0
