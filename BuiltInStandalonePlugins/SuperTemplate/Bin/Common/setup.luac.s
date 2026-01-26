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
  JUMPIFNOT R4 [+46]
  NEWTABLE R4 0 1
  DUPTABLE R5 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
  DUPTABLE R6 K15 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R7 K16 ["Standalone"]
  SETTABLEKS R7 R6 K11 ["DataModel"]
  LOADK R7 K17 ["SuperTemplate"]
  SETTABLEKS R7 R6 K12 ["PluginId"]
  LOADK R7 K18 ["Actions"]
  SETTABLEKS R7 R6 K13 ["Category"]
  LOADK R7 K19 ["Toggle"]
  SETTABLEKS R7 R6 K14 ["ItemId"]
  SETTABLEKS R6 R5 K1 ["uri"]
  LOADB R6 0
  SETTABLEKS R6 R5 K2 ["isPreexistingAction"]
  DUPCLOSURE R6 K20 [PROTO_0]
  SETTABLEKS R6 R5 K3 ["getText"]
  DUPCLOSURE R6 K21 [PROTO_1]
  SETTABLEKS R6 R5 K4 ["getTooltip"]
  LOADK R6 K22 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R6 R5 K5 ["icon"]
  LOADB R6 1
  SETTABLEKS R6 R5 K6 ["enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K7 ["visible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["checkable"]
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["checked"]
  SETLIST R4 R5 1 [1]
  MOVE R3 R4
  JUMP [+14]
  DUPTABLE R4 K25 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R5 K26 [PROTO_2]
  SETTABLEKS R5 R4 K23 ["getName"]
  DUPCLOSURE R5 K27 [PROTO_3]
  SETTABLEKS R5 R4 K24 ["getDescription"]
  LOADK R5 K22 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R5 R4 K5 ["icon"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["enabled"]
  MOVE R2 R4
  DUPTABLE R4 K36 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
  SETTABLEKS R0 R4 K28 ["plugin"]
  LOADK R5 K17 ["SuperTemplate"]
  SETTABLEKS R5 R4 K29 ["pluginName"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K30 ["translationResourceTable"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K31 ["fallbackResourceTable"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K32 ["noToolbar"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  DUPCLOSURE R5 K37 [PROTO_4]
  SETTABLEKS R5 R4 K33 ["getToolbarName"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  MOVE R5 R2
  SETTABLEKS R5 R4 K34 ["buttonInfo"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  MOVE R5 R3
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K35 ["actionInfos"]
  GETIMPORT R5 K39 [game]
  LOADK R7 K40 ["RunService"]
  NAMECALL R5 R5 K41 ["GetService"]
  CALL R5 2 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K42 ["get"]
  CALL R7 0 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K16 ["Standalone"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  NAMECALL R7 R5 K43 ["IsEdit"]
  CALL R7 1 1
  JUMPIF R6 [+1]
  JUMPIFNOT R7 [+48]
  GETUPVAL R8 1
  JUMPIF R8 [+3]
  LOADB R8 1
  SETTABLEKS R8 R2 K6 ["enabled"]
  DUPTABLE R8 K48 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K17 ["SuperTemplate"]
  SETTABLEKS R9 R8 K44 ["id"]
  GETIMPORT R9 K51 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K55 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 0
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K45 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K56 [PROTO_5]
  SETTABLEKS R9 R8 K46 ["getDockTitle"]
  GETIMPORT R9 K59 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K47 ["zIndexBehavior"]
  SETTABLEKS R8 R4 K60 ["dockWidgetInfo"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K61 ["build"]
  MOVE R9 R4
  CALL R8 1 1
  GETTABLEKS R9 R8 K62 ["pluginLoader"]
  NAMECALL R9 R9 K63 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  MOVE R10 R1
  MOVE R11 R0
  MOVE R12 R8
  CALL R10 2 0
  RETURN R0 0
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K61 ["build"]
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
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K13 ["LocalizedStrings"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K14 ["Bin"]
  GETTABLEKS R7 R8 K15 ["Common"]
  GETTABLEKS R6 R7 K16 ["pluginType"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K14 ["Bin"]
  GETTABLEKS R8 R9 K15 ["Common"]
  GETTABLEKS R7 R8 K17 ["defineLuaFlags"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K18 ["getFFlagRegisterActionsPluginLoader"]
  CALL R7 0 1
  DUPCLOSURE R8 K19 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R8 1
