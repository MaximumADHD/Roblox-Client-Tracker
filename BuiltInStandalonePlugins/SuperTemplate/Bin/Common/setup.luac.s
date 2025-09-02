PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

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
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

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
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R4 1
  JUMPIFNOT R4 [+50]
  NEWTABLE R4 0 1
  DUPTABLE R5 K11 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "isCheckable", "checkable", "checked"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K12 ["fromAction"]
  LOADK R7 K13 ["SuperTemplate"]
  LOADK R8 K14 ["Toggle"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["uri"]
  LOADB R6 0
  SETTABLEKS R6 R5 K2 ["isPreexistingAction"]
  DUPCLOSURE R6 K15 [PROTO_0]
  SETTABLEKS R6 R5 K3 ["getText"]
  DUPCLOSURE R6 K16 [PROTO_1]
  SETTABLEKS R6 R5 K4 ["getTooltip"]
  LOADK R6 K17 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R6 R5 K5 ["icon"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["visible"]
  GETUPVAL R7 3
  JUMPIFNOT R7 [+2]
  LOADNIL R6
  JUMP [+1]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["isCheckable"]
  GETUPVAL R7 3
  JUMPIFNOT R7 [+2]
  LOADB R6 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["checkable"]
  LOADB R6 0
  SETTABLEKS R6 R5 K10 ["checked"]
  SETLIST R4 R5 1 [1]
  MOVE R3 R4
  JUMP [+14]
  DUPTABLE R4 K20 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R5 K21 [PROTO_2]
  SETTABLEKS R5 R4 K18 ["getName"]
  DUPCLOSURE R5 K22 [PROTO_3]
  SETTABLEKS R5 R4 K19 ["getDescription"]
  LOADK R5 K17 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R5 R4 K5 ["icon"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["enabled"]
  MOVE R2 R4
  DUPTABLE R4 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
  SETTABLEKS R0 R4 K23 ["plugin"]
  LOADK R5 K13 ["SuperTemplate"]
  SETTABLEKS R5 R4 K24 ["pluginName"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K25 ["translationResourceTable"]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K26 ["fallbackResourceTable"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K27 ["noToolbar"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  DUPCLOSURE R5 K32 [PROTO_4]
  SETTABLEKS R5 R4 K28 ["getToolbarName"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  MOVE R5 R2
  SETTABLEKS R5 R4 K29 ["buttonInfo"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  MOVE R5 R3
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K30 ["actionInfos"]
  GETIMPORT R5 K34 [game]
  LOADK R7 K35 ["RunService"]
  NAMECALL R5 R5 K36 ["GetService"]
  CALL R5 2 1
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K37 ["get"]
  CALL R7 0 1
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K38 ["Standalone"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  NAMECALL R7 R5 K39 ["IsEdit"]
  CALL R7 1 1
  JUMPIF R6 [+1]
  JUMPIFNOT R7 [+48]
  GETUPVAL R8 1
  JUMPIF R8 [+3]
  LOADB R8 1
  SETTABLEKS R8 R2 K6 ["enabled"]
  DUPTABLE R8 K44 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K13 ["SuperTemplate"]
  SETTABLEKS R9 R8 K40 ["id"]
  GETIMPORT R9 K47 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K51 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 0
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K41 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K52 [PROTO_5]
  SETTABLEKS R9 R8 K42 ["getDockTitle"]
  GETIMPORT R9 K55 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K43 ["zIndexBehavior"]
  SETTABLEKS R8 R4 K56 ["dockWidgetInfo"]
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K57 ["build"]
  MOVE R9 R4
  CALL R8 1 1
  GETTABLEKS R9 R8 K58 ["pluginLoader"]
  NAMECALL R9 R9 K59 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  MOVE R10 R1
  MOVE R11 R0
  MOVE R12 R8
  CALL R10 2 0
  RETURN R0 0
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K57 ["build"]
  MOVE R9 R4
  CALL R8 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SuperTemplate"]
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
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K13 ["StudioFoundation"]
  CALL R4 1 1
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Resources"]
  GETTABLEKS R6 R7 K11 ["Localization"]
  GETTABLEKS R5 R6 K14 ["LocalizedStrings"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K15 ["Bin"]
  GETTABLEKS R8 R9 K16 ["Common"]
  GETTABLEKS R7 R8 K17 ["pluginType"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Bin"]
  GETTABLEKS R9 R10 K16 ["Common"]
  GETTABLEKS R8 R9 K18 ["defineLuaFlags"]
  CALL R7 1 1
  GETTABLEKS R9 R4 K19 ["Util"]
  GETTABLEKS R8 R9 K20 ["StudioUri"]
  GETTABLEKS R9 R7 K21 ["getFFlagEnableRibbonPlugin"]
  CALL R9 0 1
  GETTABLEKS R10 R7 K22 ["getFFlagRegisterActionsPluginLoader"]
  CALL R10 0 1
  GETIMPORT R11 K24 [game]
  LOADK R13 K25 ["ReplaceIsCheckableWithCheckable"]
  NAMECALL R11 R11 K26 ["GetEngineFeature"]
  CALL R11 2 1
  AND R12 R10 R9
  DUPCLOSURE R13 K27 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R13 1
