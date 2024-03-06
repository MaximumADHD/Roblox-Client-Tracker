PROTO_0:
  LOADK R0 K0 ["assetManagerToolbar"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["assetManagerToolButton"]
  RETURN R0 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["Tooltip"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["ToolbarButton"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["Title"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_5:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Meta"]
  LOADK R7 K1 ["PluginName"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["BulkImportStarted"]
  RETURN R0 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["BulkImportFinished"]
  RETURN R0 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetImported"]
  RETURN R0 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["GameNameUpdated"]
  RETURN R0 1

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["AssetImportedSignal"]
  RETURN R0 1

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ImportSessionStarted"]
  RETURN R0 1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ImportSessionFinished"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_AssetManager"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETTABLEKS R1 R2 K9 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["EnableAssetManagerSortButton"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K11 ["StudioAssetManagerAddRecentlyImportedView"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  GETIMPORT R4 K7 [script]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R2 K12 ["PluginLoader"]
  GETTABLEKS R4 R5 K13 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K14 ["AssetManagerService"]
  NAMECALL R4 R4 K15 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K16 ["BulkImportService"]
  NAMECALL R5 R5 K15 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K17 ["StudioPublishService"]
  NAMECALL R6 R6 K15 ["GetService"]
  CALL R6 2 1
  GETTABLEKS R9 R2 K18 ["Src"]
  GETTABLEKS R8 R9 K19 ["Resources"]
  GETTABLEKS R7 R8 K20 ["SourceStrings"]
  GETTABLEKS R10 R2 K18 ["Src"]
  GETTABLEKS R9 R10 K19 ["Resources"]
  GETTABLEKS R8 R9 K21 ["LocalizedStrings"]
  DUPTABLE R9 K32 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R10 K33 [plugin]
  SETTABLEKS R10 R9 K22 ["plugin"]
  LOADK R10 K34 ["AssetManager"]
  SETTABLEKS R10 R9 K23 ["pluginName"]
  SETTABLEKS R8 R9 K24 ["translationResourceTable"]
  SETTABLEKS R7 R9 K25 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K26 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K27 ["localizationNamespace"]
  DUPCLOSURE R10 K35 [PROTO_0]
  SETTABLEKS R10 R9 K28 ["getToolbarName"]
  DUPTABLE R10 K41 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R11 K42 [PROTO_1]
  SETTABLEKS R11 R10 K36 ["getName"]
  DUPCLOSURE R11 K43 [PROTO_2]
  SETTABLEKS R11 R10 K37 ["getDescription"]
  LOADK R11 K44 ["rbxlocaltheme://AssetManager"]
  SETTABLEKS R11 R10 K38 ["icon"]
  DUPCLOSURE R11 K45 [PROTO_3]
  SETTABLEKS R11 R10 K39 ["text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K40 ["clickableWhenViewportHidden"]
  SETTABLEKS R10 R9 K29 ["buttonInfo"]
  DUPTABLE R10 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R11 K52 ["AssetManager_PluginGui"]
  SETTABLEKS R11 R10 K46 ["id"]
  GETIMPORT R11 K55 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K59 [Enum.InitialDockState.Left]
  LOADB R13 0
  LOADB R14 0
  JUMPIFNOT R0 [+2]
  LOADN R15 94
  JUMP [+1]
  LOADN R15 44
  LOADN R16 88
  JUMPIFNOT R0 [+2]
  LOADN R17 94
  JUMP [+1]
  LOADN R17 14
  LOADN R18 0
  CALL R11 7 1
  SETTABLEKS R11 R10 K47 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K60 [PROTO_4]
  SETTABLEKS R11 R10 K48 ["getDockTitle"]
  DUPCLOSURE R11 K61 [PROTO_5]
  SETTABLEKS R11 R10 K49 ["name"]
  GETIMPORT R11 K64 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K50 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K30 ["dockWidgetInfo"]
  NEWTABLE R10 8 0
  DUPCLOSURE R11 K65 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K66 ["BulkImportService.BulkImportStarted"]
  DUPCLOSURE R11 K67 [PROTO_7]
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K68 ["BulkImportService.BulkImportFinished"]
  JUMPIFNOT R1 [+3]
  DUPCLOSURE R11 K69 [PROTO_8]
  CAPTURE VAL R5
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K70 ["BulkImportService.AssetImported"]
  DUPCLOSURE R11 K71 [PROTO_9]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K72 ["StudioPublishService.GameNameUpdated"]
  DUPCLOSURE R11 K73 [PROTO_10]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K74 ["AssetManagerService.AssetImportedSignal"]
  DUPCLOSURE R11 K75 [PROTO_11]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K76 ["AssetManagerService.ImportSessionStarted"]
  DUPCLOSURE R11 K77 [PROTO_12]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K78 ["AssetManagerService.ImportSessionFinished"]
  SETTABLEKS R10 R9 K31 ["extraTriggers"]
  GETTABLEKS R10 R3 K79 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K80 ["pluginLoader"]
  NAMECALL R11 R11 K81 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K5 [require]
  GETIMPORT R15 K7 [script]
  GETTABLEKS R14 R15 K8 ["Parent"]
  GETTABLEKS R13 R14 K82 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K33 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
