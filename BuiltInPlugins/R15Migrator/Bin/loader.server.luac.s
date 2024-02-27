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
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Util"]
  GETTABLEKS R8 R9 K23 ["PluginSettings"]
  CALL R7 1 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K24 ["StudioPublishService"]
  NAMECALL R8 R8 K25 ["GetService"]
  CALL R8 2 1
  MOVE R9 R6
  CALL R9 0 0
  DUPTABLE R9 K36 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R10 K37 [plugin]
  SETTABLEKS R10 R9 K26 ["plugin"]
  LOADK R10 K6 ["R15Migrator"]
  SETTABLEKS R10 R9 K27 ["pluginName"]
  SETTABLEKS R4 R9 K28 ["translationResourceTable"]
  SETTABLEKS R3 R9 K29 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K30 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K31 ["localizationNamespace"]
  DUPCLOSURE R10 K38 [PROTO_0]
  SETTABLEKS R10 R9 K32 ["getToolbarName"]
  DUPTABLE R10 K43 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R11 K44 [PROTO_1]
  SETTABLEKS R11 R10 K39 ["getName"]
  DUPCLOSURE R11 K45 [PROTO_2]
  SETTABLEKS R11 R10 K40 ["getDescription"]
  LOADK R11 K46 ["http://www.roblox.com/asset/?id=12399871436"]
  SETTABLEKS R11 R10 K41 ["icon"]
  LOADNIL R11
  SETTABLEKS R11 R10 K42 ["text"]
  SETTABLEKS R10 R9 K33 ["buttonInfo"]
  DUPTABLE R10 K52 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R11 K6 ["R15Migrator"]
  SETTABLEKS R11 R10 K47 ["id"]
  GETIMPORT R11 K55 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K59 [Enum.InitialDockState.Left]
  GETTABLEKS R13 R7 K60 ["InitiallyEnabled"]
  GETIMPORT R15 K37 [plugin]
  GETIMPORT R17 K1 [game]
  GETTABLEKS R16 R17 K61 ["GameId"]
  NAMECALL R13 R13 K62 ["getBooleanSetting"]
  CALL R13 3 1
  LOADB R14 1
  LOADN R15 252
  LOADN R16 128
  LOADN R17 252
  LOADN R18 128
  CALL R11 7 1
  SETTABLEKS R11 R10 K48 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K63 [PROTO_3]
  SETTABLEKS R11 R10 K49 ["getDockTitle"]
  LOADK R11 K6 ["R15Migrator"]
  SETTABLEKS R11 R10 K50 ["name"]
  GETIMPORT R11 K66 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K51 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K34 ["dockWidgetInfo"]
  NEWTABLE R10 1 0
  DUPCLOSURE R11 K67 [PROTO_4]
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K68 ["StudioPublishService.OnPublishAttempt"]
  SETTABLEKS R10 R9 K35 ["extraTriggers"]
  GETTABLEKS R10 R7 K60 ["InitiallyEnabled"]
  GETIMPORT R12 K37 [plugin]
  GETIMPORT R14 K1 [game]
  GETTABLEKS R13 R14 K61 ["GameId"]
  LOADNIL R14
  NAMECALL R10 R10 K69 ["setSetting"]
  CALL R10 4 0
  GETTABLEKS R10 R5 K70 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K71 ["pluginLoader"]
  NAMECALL R11 R11 K72 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K9 [require]
  GETIMPORT R15 K5 [script]
  GETTABLEKS R14 R15 K73 ["Parent"]
  GETTABLEKS R13 R14 K74 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K37 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
