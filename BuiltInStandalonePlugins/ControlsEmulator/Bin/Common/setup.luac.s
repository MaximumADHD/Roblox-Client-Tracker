PROTO_0:
  LOADK R3 K0 ["ControlsEmulatorButton"]
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
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  LOADK R3 K0 ["ControlsEmulatorToolbar"]
  RETURN R3 1

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+3]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DataModelSessionStarted"]
  RETURN R0 1

PROTO_5:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  DUPTABLE R2 K7 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
  DUPCLOSURE R3 K8 [PROTO_0]
  SETTABLEKS R3 R2 K1 ["getName"]
  DUPCLOSURE R3 K9 [PROTO_1]
  SETTABLEKS R3 R2 K2 ["getDescription"]
  LOADK R3 K10 ["rbxlocaltheme://Controller"]
  SETTABLEKS R3 R2 K3 ["icon"]
  DUPCLOSURE R3 K11 [PROTO_2]
  SETTABLEKS R3 R2 K4 ["text"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["clickableWhenViewportHidden"]
  LOADB R3 0
  SETTABLEKS R3 R2 K6 ["enabled"]
  GETTABLEKS R3 R0 K12 ["MultipleDocumentInterfaceInstance"]
  DUPTABLE R4 K20 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo", "extraTriggers"}]
  SETTABLEKS R0 R4 K13 ["plugin"]
  LOADK R5 K21 ["ControlsEmulator"]
  SETTABLEKS R5 R4 K14 ["pluginName"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K15 ["translationResourceTable"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K16 ["fallbackResourceTable"]
  DUPCLOSURE R5 K22 [PROTO_3]
  SETTABLEKS R5 R4 K17 ["getToolbarName"]
  SETTABLEKS R2 R4 K18 ["buttonInfo"]
  DUPTABLE R5 K24 [{"SessionStarted"}]
  NEWCLOSURE R6 P4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K23 ["SessionStarted"]
  SETTABLEKS R5 R4 K19 ["extraTriggers"]
  GETIMPORT R5 K26 [game]
  LOADK R7 K27 ["RunService"]
  NAMECALL R5 R5 K28 ["GetService"]
  CALL R5 2 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K29 ["get"]
  CALL R7 0 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K30 ["Standalone"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  NAMECALL R7 R5 K31 ["IsEdit"]
  CALL R7 1 1
  JUMPIF R6 [+1]
  JUMPIFNOT R7 [+46]
  LOADB R8 1
  SETTABLEKS R8 R2 K6 ["enabled"]
  DUPTABLE R8 K36 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K21 ["ControlsEmulator"]
  SETTABLEKS R9 R8 K32 ["id"]
  GETIMPORT R9 K39 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K43 [Enum.InitialDockState.Right]
  LOADB R11 0
  LOADB R12 0
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K33 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K44 [PROTO_5]
  SETTABLEKS R9 R8 K34 ["getDockTitle"]
  GETIMPORT R9 K47 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K35 ["zIndexBehavior"]
  SETTABLEKS R8 R4 K48 ["dockWidgetInfo"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K49 ["build"]
  MOVE R9 R4
  CALL R8 1 1
  GETTABLEKS R9 R8 K50 ["pluginLoader"]
  NAMECALL R9 R9 K51 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  MOVE R10 R1
  MOVE R11 R0
  MOVE R12 R8
  CALL R10 2 0
  RETURN R0 0
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K49 ["build"]
  MOVE R9 R4
  CALL R8 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["PluginLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["PluginLoaderBuilder"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K12 ["SourceStrings"]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K13 ["LocalizedStrings"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K14 ["Bin"]
  GETTABLEKS R7 R8 K15 ["Common"]
  GETTABLEKS R6 R7 K16 ["pluginType"]
  CALL R5 1 1
  DUPCLOSURE R6 K17 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R6 1
