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
  JUMPIFNOT R4 [+39]
  NEWTABLE R4 0 1
  DUPTABLE R5 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["fromAction"]
  LOADK R7 K12 ["PartyEmulator"]
  LOADK R8 K13 ["Toggle"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K1 ["uri"]
  LOADB R6 0
  SETTABLEKS R6 R5 K2 ["isPreexistingAction"]
  DUPCLOSURE R6 K14 [PROTO_0]
  SETTABLEKS R6 R5 K3 ["getText"]
  DUPCLOSURE R6 K15 [PROTO_1]
  SETTABLEKS R6 R5 K4 ["getTooltip"]
  LOADK R6 K16 ["rbxlocaltheme://GameSettings"]
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
  DUPTABLE R4 K19 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R5 K20 [PROTO_2]
  SETTABLEKS R5 R4 K17 ["getName"]
  DUPCLOSURE R5 K21 [PROTO_3]
  SETTABLEKS R5 R4 K18 ["getDescription"]
  LOADK R5 K16 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R5 R4 K5 ["icon"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["enabled"]
  MOVE R2 R4
  DUPTABLE R4 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
  SETTABLEKS R0 R4 K22 ["plugin"]
  LOADK R5 K12 ["PartyEmulator"]
  SETTABLEKS R5 R4 K23 ["pluginName"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K24 ["translationResourceTable"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K25 ["fallbackResourceTable"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K26 ["noToolbar"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  DUPCLOSURE R5 K31 [PROTO_4]
  SETTABLEKS R5 R4 K27 ["getToolbarName"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  MOVE R5 R2
  SETTABLEKS R5 R4 K28 ["buttonInfo"]
  GETUPVAL R6 1
  JUMPIFNOT R6 [+2]
  MOVE R5 R3
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K29 ["actionInfos"]
  GETIMPORT R5 K33 [game]
  LOADK R7 K34 ["RunService"]
  NAMECALL R5 R5 K35 ["GetService"]
  CALL R5 2 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K36 ["get"]
  CALL R7 0 1
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K37 ["Standalone"]
  JUMPIFEQ R7 R8 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  NAMECALL R7 R5 K38 ["IsEdit"]
  CALL R7 1 1
  JUMPIF R6 [+1]
  JUMPIFNOT R7 [+48]
  GETUPVAL R8 1
  JUMPIF R8 [+3]
  LOADB R8 1
  SETTABLEKS R8 R2 K6 ["enabled"]
  DUPTABLE R8 K43 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K12 ["PartyEmulator"]
  SETTABLEKS R9 R8 K39 ["id"]
  GETIMPORT R9 K46 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K50 [Enum.InitialDockState.Bottom]
  LOADB R11 0
  LOADB R12 0
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K40 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K51 [PROTO_5]
  SETTABLEKS R9 R8 K41 ["getDockTitle"]
  GETIMPORT R9 K54 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K42 ["zIndexBehavior"]
  SETTABLEKS R8 R4 K55 ["dockWidgetInfo"]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K56 ["build"]
  MOVE R9 R4
  CALL R8 1 1
  GETTABLEKS R9 R8 K57 ["pluginLoader"]
  NAMECALL R9 R9 K58 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  MOVE R10 R1
  MOVE R11 R0
  MOVE R12 R8
  CALL R10 2 0
  RETURN R0 0
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K56 ["build"]
  MOVE R9 R4
  CALL R8 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PartyEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["PluginLoader"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["StudioFoundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Bin"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["pluginType"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Bin"]
  GETTABLEKS R6 R7 K10 ["Common"]
  GETTABLEKS R5 R6 K12 ["defineLuaFlags"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K13 ["PluginLoaderBuilder"]
  GETTABLEKS R9 R0 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Resources"]
  GETTABLEKS R7 R8 K16 ["Localization"]
  GETTABLEKS R6 R7 K17 ["SourceStrings"]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Resources"]
  GETTABLEKS R8 R9 K16 ["Localization"]
  GETTABLEKS R7 R8 K18 ["LocalizedStrings"]
  GETTABLEKS R9 R2 K19 ["Util"]
  GETTABLEKS R8 R9 K20 ["StudioUri"]
  GETTABLEKS R9 R4 K21 ["getFFlagEnableRibbonPlugin"]
  CALL R9 0 1
  GETTABLEKS R10 R4 K22 ["getFFlagRegisterActionsPluginLoader"]
  CALL R10 0 1
  AND R11 R10 R9
  DUPCLOSURE R12 K23 [PROTO_6]
  CAPTURE VAL R0
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R12 1
