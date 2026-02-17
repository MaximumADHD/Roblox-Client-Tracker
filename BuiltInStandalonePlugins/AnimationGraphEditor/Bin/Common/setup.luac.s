PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["unmount"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [require]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Packages"]
  GETTABLEKS R3 R4 K3 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Packages"]
  GETTABLEKS R4 R5 K4 ["ReactRoblox"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K5 ["createElement"]
  MOVE R5 R0
  MOVE R6 R1
  CALL R4 2 1
  GETIMPORT R5 K8 [Instance.new]
  LOADK R6 K9 ["Frame"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K10 ["createRoot"]
  MOVE R7 R5
  CALL R6 1 1
  MOVE R9 R4
  NAMECALL R7 R6 K11 ["render"]
  CALL R7 2 0
  GETTABLEKS R8 R1 K12 ["Plugin"]
  GETTABLEKS R7 R8 K13 ["Unloading"]
  NEWCLOSURE R9 P0
  CAPTURE VAL R6
  NAMECALL R7 R7 K14 ["Connect"]
  CALL R7 2 0
  RETURN R0 0

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
  LOADK R7 K1 ["Button"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_5:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_6:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_7:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  JUMPIFNOTEQKS R1 K1 ["ui"] [+193]
  LOADNIL R2
  LOADNIL R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["getMigratePluginToggleToActions"]
  CALL R4 0 1
  JUMPIFNOT R4 [+43]
  NEWTABLE R4 0 1
  DUPTABLE R5 K12 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["StudioUri"]
  GETTABLEKS R6 R7 K15 ["fromAction"]
  LOADK R7 K16 ["AnimationGraphEditor"]
  LOADK R8 K17 ["Toggle"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K3 ["uri"]
  LOADB R6 0
  SETTABLEKS R6 R5 K4 ["isPreexistingAction"]
  DUPCLOSURE R6 K18 [PROTO_2]
  SETTABLEKS R6 R5 K5 ["getText"]
  DUPCLOSURE R6 K19 [PROTO_3]
  SETTABLEKS R6 R5 K6 ["getTooltip"]
  LOADK R6 K20 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R6 R5 K7 ["icon"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["visible"]
  LOADB R6 1
  SETTABLEKS R6 R5 K10 ["checkable"]
  LOADB R6 0
  SETTABLEKS R6 R5 K11 ["checked"]
  SETLIST R4 R5 1 [1]
  MOVE R3 R4
  JUMP [+14]
  DUPTABLE R4 K23 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R5 K24 [PROTO_4]
  SETTABLEKS R5 R4 K21 ["getName"]
  DUPCLOSURE R5 K25 [PROTO_5]
  SETTABLEKS R5 R4 K22 ["getDescription"]
  LOADK R5 K20 ["rbxlocaltheme://GameSettings"]
  SETTABLEKS R5 R4 K7 ["icon"]
  LOADB R5 0
  SETTABLEKS R5 R4 K8 ["enabled"]
  MOVE R2 R4
  DUPTABLE R4 K34 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "getToolbarName", "buttonInfo", "actionInfos"}]
  SETTABLEKS R0 R4 K26 ["plugin"]
  LOADK R5 K16 ["AnimationGraphEditor"]
  SETTABLEKS R5 R4 K27 ["pluginName"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K35 ["Src"]
  GETTABLEKS R7 R8 K36 ["Resources"]
  GETTABLEKS R6 R7 K37 ["Localization"]
  GETTABLEKS R5 R6 K38 ["LocalizedStrings"]
  SETTABLEKS R5 R4 K28 ["translationResourceTable"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K35 ["Src"]
  GETTABLEKS R7 R8 K36 ["Resources"]
  GETTABLEKS R6 R7 K37 ["Localization"]
  GETTABLEKS R5 R6 K39 ["SourceStrings"]
  SETTABLEKS R5 R4 K29 ["fallbackResourceTable"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["getMigratePluginToggleToActions"]
  CALL R5 0 1
  SETTABLEKS R5 R4 K30 ["noToolbar"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["getMigratePluginToggleToActions"]
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  DUPCLOSURE R5 K40 [PROTO_6]
  SETTABLEKS R5 R4 K31 ["getToolbarName"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["getMigratePluginToggleToActions"]
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  LOADNIL R5
  JUMP [+1]
  MOVE R5 R2
  SETTABLEKS R5 R4 K32 ["buttonInfo"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["getMigratePluginToggleToActions"]
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  MOVE R5 R3
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K33 ["actionInfos"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["getMigratePluginToggleToActions"]
  CALL R5 0 1
  JUMPIF R5 [+3]
  LOADB R5 1
  SETTABLEKS R5 R2 K8 ["enabled"]
  DUPTABLE R5 K45 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R6 K16 ["AnimationGraphEditor"]
  SETTABLEKS R6 R5 K41 ["id"]
  GETIMPORT R6 K48 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R7 K52 [Enum.InitialDockState.Bottom]
  LOADB R8 0
  LOADB R9 0
  LOADN R10 128
  LOADN R11 224
  LOADN R12 250
  LOADN R13 200
  CALL R6 7 1
  SETTABLEKS R6 R5 K42 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R6 K53 [PROTO_7]
  SETTABLEKS R6 R5 K43 ["getDockTitle"]
  GETIMPORT R6 K56 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K44 ["zIndexBehavior"]
  SETTABLEKS R5 R4 K57 ["dockWidgetInfo"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K58 ["PluginLoaderBuilder"]
  GETTABLEKS R5 R6 K59 ["build"]
  MOVE R6 R4
  CALL R5 1 1
  GETTABLEKS R6 R5 K60 ["pluginLoader"]
  NAMECALL R6 R6 K61 ["waitForUserInteraction"]
  CALL R6 1 1
  JUMPIF R6 [+1]
  RETURN R0 0
  GETUPVAL R7 4
  GETIMPORT R8 K63 [require]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K35 ["Src"]
  GETTABLEKS R9 R10 K64 ["UIDataModelMainPlugin"]
  CALL R8 1 1
  DUPTABLE R9 K67 [{"Plugin", "PluginLoaderContext"}]
  SETTABLEKS R0 R9 K65 ["Plugin"]
  SETTABLEKS R5 R9 K66 ["PluginLoaderContext"]
  CALL R7 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R1 K68 ["editabledatamodel"] [+15]
  GETUPVAL R2 4
  GETIMPORT R3 K63 [require]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K35 ["Src"]
  GETTABLEKS R4 R5 K69 ["EditableDataModelMainPlugin"]
  CALL R3 1 1
  DUPTABLE R4 K70 [{"Plugin"}]
  SETTABLEKS R0 R4 K65 ["Plugin"]
  CALL R2 2 0
  RETURN R0 0
  GETIMPORT R2 K72 [error]
  LOADK R4 K73 ["Unknown plugin type: "]
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K75 [tostring]
  CALL R5 1 1
  CONCAT R3 R4 R5
  CALL R2 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationGraphEditor"]
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
  GETTABLEKS R4 R5 K11 ["defineLuaFlags"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R5 K13 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  RETURN R5 1
