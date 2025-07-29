PROTO_0:
  LOADK R3 K0 ["ExplorerPluginButton"]
  RETURN R3 1

PROTO_1:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_2:
  LOADK R3 K0 ["ExplorerPluginToolbar"]
  RETURN R3 1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Title"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+40]
  GETUPVAL R0 1
  DUPTABLE R2 K5 [{"eventName", "description", "backends", "throttlingPercentage", "lastUpdated"}]
  LOADK R3 K6 ["LuaExplorerDoubleLoad"]
  SETTABLEKS R3 R2 K0 ["eventName"]
  LOADK R3 K7 ["Fired when load() is called twice"]
  SETTABLEKS R3 R2 K1 ["description"]
  NEWTABLE R3 0 1
  LOADK R4 K8 ["Points"]
  SETLIST R3 R4 1 [1]
  SETTABLEKS R3 R2 K2 ["backends"]
  GETIMPORT R3 K10 [game]
  LOADK R5 K11 ["LuaExplorerDoubleLoadThrottlingHundredthsPercent"]
  LOADN R6 16
  NAMECALL R3 R3 K12 ["DefineFastInt"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K3 ["throttlingPercentage"]
  NEWTABLE R3 0 3
  LOADN R4 25
  LOADN R5 4
  LOADN R6 3
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K4 ["lastUpdated"]
  NEWTABLE R3 0 0
  LOADN R4 1
  NAMECALL R0 R0 K13 ["LogCounter"]
  CALL R0 4 0
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K14 ["build"]
  GETUPVAL R1 3
  CALL R0 1 1
  GETTABLEKS R1 R0 K15 ["pluginLoader"]
  NAMECALL R1 R1 K16 ["waitForUserInteraction"]
  CALL R1 1 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R2 4
  NAMECALL R2 R2 K17 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 5
  GETUPVAL R3 6
  MOVE R4 R0
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["IsPlaceDocumentOpen"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  DUPTABLE R2 K6 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
  DUPCLOSURE R3 K7 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["getName"]
  DUPCLOSURE R3 K8 [PROTO_1]
  SETTABLEKS R3 R2 K2 ["getDescription"]
  LOADK R3 K9 [""]
  SETTABLEKS R3 R2 K3 ["icon"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["clickableWhenViewportHidden"]
  DUPTABLE R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
  SETTABLEKS R0 R3 K10 ["plugin"]
  LOADK R4 K17 ["ExplorerPlugin"]
  SETTABLEKS R4 R3 K11 ["pluginName"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K12 ["translationResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K13 ["fallbackResourceTable"]
  DUPCLOSURE R4 K18 [PROTO_2]
  SETTABLEKS R4 R3 K14 ["getToolbarName"]
  SETTABLEKS R2 R3 K15 ["buttonInfo"]
  LOADB R4 1
  SETTABLEKS R4 R2 K4 ["enabled"]
  DUPTABLE R4 K23 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R5 K17 ["ExplorerPlugin"]
  SETTABLEKS R5 R4 K19 ["id"]
  GETIMPORT R5 K26 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R6 K30 [Enum.InitialDockState.Right]
  LOADB R7 1
  LOADB R8 0
  LOADN R9 128
  LOADN R10 224
  LOADN R11 250
  LOADN R12 200
  CALL R5 7 1
  SETTABLEKS R5 R4 K20 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R5 K31 [PROTO_3]
  SETTABLEKS R5 R4 K21 ["getDockTitle"]
  GETIMPORT R5 K34 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R5 R4 K22 ["zIndexBehavior"]
  SETTABLEKS R4 R3 K35 ["dockWidgetInfo"]
  LOADNIL R4
  LOADB R5 0
  NEWCLOSURE R6 P4
  CAPTURE REF R5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE REF R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  LOADK R9 K36 ["PlaceManager"]
  NAMECALL R7 R0 K37 ["GetPluginComponent"]
  CALL R7 2 1
  GETTABLEKS R8 R7 K38 ["PlaceDocPanelShown"]
  MOVE R10 R6
  NAMECALL R8 R8 K39 ["Connect"]
  CALL R8 2 1
  MOVE R4 R8
  GETIMPORT R8 K41 [pcall]
  NEWCLOSURE R9 P5
  CAPTURE VAL R7
  CALL R8 1 2
  JUMPIFNOT R8 [+3]
  JUMPIFNOT R9 [+2]
  MOVE R10 R6
  CALL R10 0 0
  CLOSEUPVALS R4
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TelemetryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["ExplorerPlugin"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["PluginLoader"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K12 ["PluginLoaderBuilder"]
  GETTABLEKS R7 R1 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Localization"]
  GETTABLEKS R4 R5 K16 ["SourceStrings"]
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K14 ["Resources"]
  GETTABLEKS R6 R7 K15 ["Localization"]
  GETTABLEKS R5 R6 K17 ["LocalizedStrings"]
  DUPCLOSURE R6 K18 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R6 1
