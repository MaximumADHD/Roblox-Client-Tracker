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
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["EnableAssetManager"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+8]
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["AssetManagerRibbonBar"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETTABLEKS R1 R2 K11 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["EnableAssetManagerSortButton"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K10 ["Parent"]
  GETTABLEKS R1 R2 K10 ["Parent"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R1 K13 ["Packages"]
  GETTABLEKS R3 R4 K14 ["PluginLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K15 ["PluginLoaderBuilder"]
  GETIMPORT R4 K1 [game]
  LOADK R6 K16 ["AssetManagerService"]
  NAMECALL R4 R4 K17 ["GetService"]
  CALL R4 2 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K18 ["BulkImportService"]
  NAMECALL R5 R5 K17 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K19 ["StudioPublishService"]
  NAMECALL R6 R6 K17 ["GetService"]
  CALL R6 2 1
  GETTABLEKS R9 R1 K20 ["Src"]
  GETTABLEKS R8 R9 K21 ["Resources"]
  GETTABLEKS R7 R8 K22 ["SourceStrings"]
  GETTABLEKS R10 R1 K20 ["Src"]
  GETTABLEKS R9 R10 K21 ["Resources"]
  GETTABLEKS R8 R9 K23 ["LocalizedStrings"]
  DUPTABLE R9 K34 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R10 K35 [plugin]
  SETTABLEKS R10 R9 K24 ["plugin"]
  LOADK R10 K36 ["AssetManager"]
  SETTABLEKS R10 R9 K25 ["pluginName"]
  SETTABLEKS R8 R9 K26 ["translationResourceTable"]
  SETTABLEKS R7 R9 K27 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K28 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K29 ["localizationNamespace"]
  DUPCLOSURE R10 K37 [PROTO_0]
  SETTABLEKS R10 R9 K30 ["getToolbarName"]
  DUPTABLE R10 K43 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R11 K44 [PROTO_1]
  SETTABLEKS R11 R10 K38 ["getName"]
  DUPCLOSURE R11 K45 [PROTO_2]
  SETTABLEKS R11 R10 K39 ["getDescription"]
  LOADK R11 K46 ["rbxlocaltheme://AssetManager"]
  SETTABLEKS R11 R10 K40 ["icon"]
  DUPCLOSURE R11 K47 [PROTO_3]
  SETTABLEKS R11 R10 K41 ["text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K42 ["clickableWhenViewportHidden"]
  SETTABLEKS R10 R9 K31 ["buttonInfo"]
  DUPTABLE R10 K53 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R11 K54 ["AssetManager_PluginGui"]
  SETTABLEKS R11 R10 K48 ["id"]
  GETIMPORT R11 K57 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K61 [Enum.InitialDockState.Left]
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
  SETTABLEKS R11 R10 K49 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K62 [PROTO_4]
  SETTABLEKS R11 R10 K50 ["getDockTitle"]
  DUPCLOSURE R11 K63 [PROTO_5]
  SETTABLEKS R11 R10 K51 ["name"]
  GETIMPORT R11 K66 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K52 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K32 ["dockWidgetInfo"]
  NEWTABLE R10 8 0
  DUPCLOSURE R11 K67 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K68 ["BulkImportService.BulkImportStarted"]
  DUPCLOSURE R11 K69 [PROTO_7]
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K70 ["BulkImportService.BulkImportFinished"]
  DUPCLOSURE R11 K71 [PROTO_8]
  CAPTURE VAL R5
  SETTABLEKS R11 R10 K72 ["BulkImportService.AssetImported"]
  DUPCLOSURE R11 K73 [PROTO_9]
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K74 ["StudioPublishService.GameNameUpdated"]
  DUPCLOSURE R11 K75 [PROTO_10]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K76 ["AssetManagerService.AssetImportedSignal"]
  DUPCLOSURE R11 K77 [PROTO_11]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K78 ["AssetManagerService.ImportSessionStarted"]
  DUPCLOSURE R11 K79 [PROTO_12]
  CAPTURE VAL R4
  SETTABLEKS R11 R10 K80 ["AssetManagerService.ImportSessionFinished"]
  SETTABLEKS R10 R9 K33 ["extraTriggers"]
  GETTABLEKS R10 R3 K81 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K82 ["pluginLoader"]
  NAMECALL R11 R11 K83 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  GETIMPORT R12 K7 [require]
  GETIMPORT R15 K9 [script]
  GETTABLEKS R14 R15 K10 ["Parent"]
  GETTABLEKS R13 R14 K84 ["main"]
  CALL R12 1 1
  MOVE R13 R12
  GETIMPORT R14 K35 [plugin]
  MOVE R15 R10
  CALL R13 2 0
  RETURN R0 0
