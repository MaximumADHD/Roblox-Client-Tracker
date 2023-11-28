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
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R1 K8 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETTABLEKS R2 R3 K11 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K12 ["shouldPluginRun"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K13 ["RunTests"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K14 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K15 ["Resources"]
  GETTABLEKS R4 R5 K16 ["Localization"]
  GETTABLEKS R3 R4 K17 ["SourceStrings"]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K15 ["Resources"]
  GETTABLEKS R5 R6 K16 ["Localization"]
  GETTABLEKS R4 R5 K18 ["LocalizedStrings"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K19 ["PluginLoader"]
  GETTABLEKS R6 R7 K20 ["PluginLoaderBuilder"]
  CALL R5 1 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K21 ["StudioPublishService"]
  NAMECALL R6 R6 K22 ["GetService"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K23 ["CollectionService"]
  NAMECALL R7 R7 K22 ["GetService"]
  CALL R7 2 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R0 K9 ["Src"]
  GETTABLEKS R11 R12 K15 ["Resources"]
  GETTABLEKS R10 R11 K24 ["Constants"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K25 ["Tags"]
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  MOVE R18 R13
  NAMECALL R16 R7 K26 ["GetTagged"]
  CALL R16 2 1
  LENGTH R15 R16
  LOADN R16 0
  JUMPIFLT R16 R15 [+2]
  LOADB R14 0 +1
  LOADB R14 1
  JUMPIFNOT R14 [+4]
  LOADB R15 1
  SETTABLEKS R15 R6 K27 ["PublishLocked"]
  JUMP [+2]
  FORGLOOP R9 2 [-16]
  DUPTABLE R9 K38 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R10 K39 [plugin]
  SETTABLEKS R10 R9 K28 ["plugin"]
  LOADK R10 K40 ["R15Migrator"]
  SETTABLEKS R10 R9 K29 ["pluginName"]
  SETTABLEKS R4 R9 K30 ["translationResourceTable"]
  SETTABLEKS R3 R9 K31 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K32 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K33 ["localizationNamespace"]
  DUPCLOSURE R10 K41 [PROTO_0]
  SETTABLEKS R10 R9 K34 ["getToolbarName"]
  DUPTABLE R10 K46 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R11 K47 [PROTO_1]
  SETTABLEKS R11 R10 K42 ["getName"]
  DUPCLOSURE R11 K48 [PROTO_2]
  SETTABLEKS R11 R10 K43 ["getDescription"]
  LOADK R11 K49 ["http://www.roblox.com/asset/?id=12399871436"]
  SETTABLEKS R11 R10 K44 ["icon"]
  LOADNIL R11
  SETTABLEKS R11 R10 K45 ["text"]
  SETTABLEKS R10 R9 K35 ["buttonInfo"]
  DUPTABLE R10 K55 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R11 K40 ["R15Migrator"]
  SETTABLEKS R11 R10 K50 ["id"]
  GETIMPORT R11 K58 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K62 [Enum.InitialDockState.Left]
  LOADB R13 0
  LOADB R14 1
  LOADN R15 252
  LOADN R16 128
  LOADN R17 252
  LOADN R18 128
  CALL R11 7 1
  SETTABLEKS R11 R10 K51 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K63 [PROTO_3]
  SETTABLEKS R11 R10 K52 ["getDockTitle"]
  LOADK R11 K40 ["R15Migrator"]
  SETTABLEKS R11 R10 K53 ["name"]
  GETIMPORT R11 K66 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K54 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K36 ["dockWidgetInfo"]
  NEWTABLE R10 1 0
  DUPCLOSURE R11 K67 [PROTO_4]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K68 ["StudioPublishService.OnPublishAttempt"]
  SETTABLEKS R10 R9 K37 ["extraTriggers"]
  GETTABLEKS R10 R5 K69 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K70 ["pluginLoader"]
  NAMECALL R11 R11 K71 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K8 [require]
  GETIMPORT R15 K5 [script]
  GETTABLEKS R14 R15 K6 ["Parent"]
  GETTABLEKS R13 R14 K72 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K39 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
