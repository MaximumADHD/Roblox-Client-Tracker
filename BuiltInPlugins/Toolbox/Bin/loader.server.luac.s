PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSaveToRoblox"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnSaveToRoblox"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnImportFromRoblox"]
  RETURN R0 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnOpenManagePackagePlugin"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnPublishAsPlugin"]
  RETURN R0 1

PROTO_5:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["BindableEvent"]
  CALL R0 1 1
  GETUPVAL R1 0
  LOADK R3 K4 ["OpenAssetConfiguration"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K5 ["Bind"]
  CALL R1 3 0
  GETTABLEKS R1 R0 K6 ["Event"]
  RETURN R1 1

PROTO_7:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_8:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["BindableEvent"]
  CALL R0 1 1
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K5 ["Bind"]
  CALL R1 3 0
  GETTABLEKS R1 R0 K6 ["Event"]
  RETURN R1 1

PROTO_9:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R0 K2 [Instance.new]
  LOADK R1 K3 ["BindableEvent"]
  CALL R0 1 1
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K5 ["Bind"]
  CALL R1 3 0
  GETTABLEKS R1 R0 K6 ["Event"]
  RETURN R1 1

PROTO_11:
  PREPVARARGS 0
  GETUPVAL R0 0
  GETVARARGS R2 -1
  NAMECALL R0 R0 K0 ["Fire"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R1 K2 [Instance.new]
  LOADK R2 K3 ["BindableEvent"]
  CALL R1 1 1
  GETUPVAL R2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  NAMECALL R2 R2 K5 ["Bind"]
  CALL R2 3 0
  GETTABLEKS R2 R1 K6 ["Event"]
  RETURN R2 1

PROTO_13:
  LOADK R0 K0 ["luaToolboxToolbar"]
  RETURN R0 1

PROTO_14:
  LOADK R0 K0 ["luaToolboxButton"]
  RETURN R0 1

PROTO_15:
  LOADK R0 K0 ["Insert items from the toolbox"]
  RETURN R0 1

PROTO_16:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["General"]
  LOADK R7 K1 ["ToolboxToolbarName"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_17:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetStartupAssetId"]
  CALL R0 1 1
  JUMPIFNOT R0 [+6]
  LENGTH R1 R0
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+3]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["isCli"]
  CALL R1 1 1
  MOVE R2 R1
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["AICOChatBot"]
  NAMECALL R2 R2 K12 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R0 K13 ["PluginLoader"]
  GETTABLEKS R4 R5 K14 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETTABLEKS R7 R0 K6 ["Core"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K15 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETTABLEKS R8 R0 K6 ["Core"]
  GETTABLEKS R7 R8 K7 ["Util"]
  GETTABLEKS R6 R7 K16 ["Images"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETTABLEKS R7 R0 K17 ["SharedPluginConstants"]
  CALL R6 1 1
  GETIMPORT R7 K10 [game]
  LOADK R9 K18 ["StudioService"]
  NAMECALL R7 R7 K19 ["GetService"]
  CALL R7 2 1
  GETIMPORT R8 K10 [game]
  LOADK R10 K20 ["StudioAssetService"]
  NAMECALL R8 R8 K19 ["GetService"]
  CALL R8 2 1
  GETIMPORT R9 K10 [game]
  LOADK R11 K21 ["MemStorageService"]
  NAMECALL R9 R9 K19 ["GetService"]
  CALL R9 2 1
  GETIMPORT R10 K10 [game]
  LOADK R12 K22 ["ShowSaveToRobloxOnStudioAssetService"]
  NAMECALL R10 R10 K12 ["GetFastFlag"]
  CALL R10 2 1
  GETIMPORT R11 K10 [game]
  LOADK R13 K23 ["UnifyModelPackagePublish3"]
  NAMECALL R11 R11 K12 ["GetFastFlag"]
  CALL R11 2 1
  NEWTABLE R12 8 0
  JUMPIF R11 [+1]
  JUMPIFNOT R10 [+3]
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R8
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K25 ["StudioAssetService.OnSaveToRoblox"]
  DUPCLOSURE R13 K26 [PROTO_1]
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K27 ["StudioService.OnSaveToRoblox"]
  DUPCLOSURE R13 K28 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K29 ["StudioService.OnImportFromRoblox"]
  DUPCLOSURE R13 K30 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K31 ["StudioService.OnOpenManagePackagePlugin"]
  DUPCLOSURE R13 K32 [PROTO_4]
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K33 ["StudioService.OnPublishAsPlugin"]
  LOADK R14 K34 ["MemStorageService."]
  LOADK R15 K35 ["OpenAssetConfiguration"]
  CONCAT R13 R14 R15
  DUPCLOSURE R14 K36 [PROTO_6]
  CAPTURE VAL R9
  SETTABLE R14 R12 R13
  LOADK R14 K34 ["MemStorageService."]
  GETTABLEKS R15 R6 K37 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
  CONCAT R13 R14 R15
  DUPCLOSURE R14 K38 [PROTO_8]
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLE R14 R12 R13
  JUMPIFNOT R2 [+8]
  LOADK R14 K34 ["MemStorageService."]
  GETTABLEKS R15 R6 K39 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  CONCAT R13 R14 R15
  DUPCLOSURE R14 K40 [PROTO_10]
  CAPTURE VAL R9
  CAPTURE VAL R6
  SETTABLE R14 R12 R13
  LOADK R14 K34 ["MemStorageService."]
  GETTABLEKS R15 R4 K41 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
  CONCAT R13 R14 R15
  DUPCLOSURE R14 K42 [PROTO_12]
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  DUPTABLE R13 K54 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers", "shouldImmediatelyOpen"}]
  GETIMPORT R14 K55 [plugin]
  SETTABLEKS R14 R13 K43 ["plugin"]
  LOADK R14 K56 ["Toolbox"]
  SETTABLEKS R14 R13 K44 ["pluginName"]
  GETTABLEKS R15 R0 K57 ["LocalizationSource"]
  GETTABLEKS R14 R15 K58 ["LocalizedStrings"]
  SETTABLEKS R14 R13 K45 ["translationResourceTable"]
  GETTABLEKS R15 R0 K57 ["LocalizationSource"]
  GETTABLEKS R14 R15 K59 ["SourceStrings"]
  SETTABLEKS R14 R13 K46 ["fallbackResourceTable"]
  LOADNIL R14
  SETTABLEKS R14 R13 K47 ["overrideLocaleId"]
  LOADNIL R14
  SETTABLEKS R14 R13 K48 ["localizationNamespace"]
  DUPCLOSURE R14 K60 [PROTO_13]
  SETTABLEKS R14 R13 K49 ["getToolbarName"]
  DUPTABLE R14 K66 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R15 K67 [PROTO_14]
  SETTABLEKS R15 R14 K61 ["getName"]
  DUPCLOSURE R15 K68 [PROTO_15]
  SETTABLEKS R15 R14 K62 ["getDescription"]
  GETTABLEKS R15 R5 K69 ["TOOLBOX_ICON"]
  SETTABLEKS R15 R14 K63 ["icon"]
  LOADNIL R15
  SETTABLEKS R15 R14 K64 ["text"]
  LOADB R15 1
  SETTABLEKS R15 R14 K65 ["clickableWhenViewportHidden"]
  SETTABLEKS R14 R13 K50 ["buttonInfo"]
  DUPTABLE R14 K75 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R15 K56 ["Toolbox"]
  SETTABLEKS R15 R14 K70 ["id"]
  GETIMPORT R15 K78 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R16 K82 [Enum.InitialDockState.Left]
  LOADB R17 1
  LOADB R18 0
  LOADN R19 0
  LOADN R20 0
  GETTABLEKS R21 R4 K83 ["TOOLBOX_MIN_WIDTH"]
  GETTABLEKS R22 R4 K84 ["TOOLBOX_MIN_HEIGHT"]
  CALL R15 7 1
  SETTABLEKS R15 R14 K71 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R15 K85 [PROTO_16]
  SETTABLEKS R15 R14 K72 ["getDockTitle"]
  LOADK R15 K56 ["Toolbox"]
  SETTABLEKS R15 R14 K73 ["name"]
  GETIMPORT R15 K88 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R15 R14 K74 ["zIndexBehavior"]
  SETTABLEKS R14 R13 K51 ["dockWidgetInfo"]
  SETTABLEKS R12 R13 K52 ["extraTriggers"]
  DUPCLOSURE R14 K89 [PROTO_17]
  CAPTURE VAL R7
  SETTABLEKS R14 R13 K53 ["shouldImmediatelyOpen"]
  GETTABLEKS R14 R3 K90 ["build"]
  MOVE R15 R13
  CALL R14 1 1
  GETTABLEKS R15 R14 K91 ["pluginLoader"]
  NAMECALL R15 R15 K92 ["waitForUserInteraction"]
  CALL R15 1 1
  JUMPIF R15 [+1]
  RETURN R0 0
  GETIMPORT R16 K1 [require]
  GETIMPORT R19 K3 [script]
  GETTABLEKS R18 R19 K4 ["Parent"]
  GETTABLEKS R17 R18 K93 ["main"]
  CALL R16 1 1
  MOVE R17 R16
  GETIMPORT R18 K55 [plugin]
  MOVE R19 R14
  CALL R17 2 0
  RETURN R0 0
