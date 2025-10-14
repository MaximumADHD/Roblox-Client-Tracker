PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
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

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["RetireAudioDiscoveryPlugin"]
  NAMECALL R1 R1 K9 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETIMPORT R2 K1 [require]
  GETTABLEKS R5 R1 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["DebugFlags"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K13 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R1 K14 ["Packages"]
  GETTABLEKS R4 R5 K15 ["PluginLoader"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K16 ["PluginLoaderBuilder"]
  GETTABLEKS R8 R1 K10 ["Src"]
  GETTABLEKS R7 R8 K17 ["Resources"]
  GETTABLEKS R6 R7 K18 ["Localization"]
  GETTABLEKS R5 R6 K19 ["SourceStrings"]
  GETTABLEKS R9 R1 K10 ["Src"]
  GETTABLEKS R8 R9 K17 ["Resources"]
  GETTABLEKS R7 R8 K18 ["Localization"]
  GETTABLEKS R6 R7 K20 ["LocalizedStrings"]
  LOADNIL R7
  LOADNIL R8
  LOADNIL R9
  GETTABLEKS R10 R0 K21 ["shouldMigrateToActions"]
  CALL R10 0 1
  JUMPIFNOT R10 [+69]
  GETIMPORT R10 K1 [require]
  GETTABLEKS R12 R1 K14 ["Packages"]
  GETTABLEKS R11 R12 K22 ["StudioFoundation"]
  CALL R10 1 1
  GETTABLEKS R12 R10 K11 ["Util"]
  GETTABLEKS R11 R12 K23 ["StudioUri"]
  GETIMPORT R12 K25 [plugin]
  NAMECALL R12 R12 K26 ["GetUri"]
  CALL R12 1 1
  GETTABLEKS R13 R11 K27 ["join"]
  MOVE R14 R12
  DUPTABLE R15 K30 [{"Category", "ItemId"}]
  LOADK R16 K31 ["Actions"]
  SETTABLEKS R16 R15 K28 ["Category"]
  LOADK R16 K32 ["Toggle"]
  SETTABLEKS R16 R15 K29 ["ItemId"]
  CALL R13 2 1
  MOVE R8 R13
  DUPTABLE R13 K42 [{"getText", "getTooltip", "uri", "icon", "enabled", "visible", "isCheckable", "checkable", "checked"}]
  DUPCLOSURE R14 K43 [PROTO_0]
  SETTABLEKS R14 R13 K33 ["getText"]
  DUPCLOSURE R14 K44 [PROTO_1]
  SETTABLEKS R14 R13 K34 ["getTooltip"]
  SETTABLEKS R8 R13 K35 ["uri"]
  LOADK R14 K45 ["ViewSounds"]
  SETTABLEKS R14 R13 K36 ["icon"]
  LOADB R14 0
  SETTABLEKS R14 R13 K37 ["enabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K38 ["visible"]
  GETTABLEKS R15 R0 K46 ["getFFlagReplaceIsCheckableWithCheckable"]
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADNIL R14
  JUMP [+1]
  LOADB R14 1
  SETTABLEKS R14 R13 K39 ["isCheckable"]
  GETTABLEKS R15 R0 K46 ["getFFlagReplaceIsCheckableWithCheckable"]
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  LOADB R14 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K40 ["checkable"]
  LOADB R14 0
  SETTABLEKS R14 R13 K41 ["checked"]
  MOVE R7 R13
  JUMP [+14]
  DUPTABLE R10 K49 [{"getName", "getDescription", "icon", "enabled"}]
  DUPCLOSURE R11 K50 [PROTO_2]
  SETTABLEKS R11 R10 K47 ["getName"]
  DUPCLOSURE R11 K51 [PROTO_3]
  SETTABLEKS R11 R10 K48 ["getDescription"]
  LOADK R11 K52 ["rbxlocaltheme://ViewSounds"]
  SETTABLEKS R11 R10 K36 ["icon"]
  LOADB R11 0
  SETTABLEKS R11 R10 K37 ["enabled"]
  MOVE R9 R10
  DUPTABLE R10 K60 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "actionInfos", "buttonInfo", "noToolbar"}]
  GETIMPORT R11 K25 [plugin]
  SETTABLEKS R11 R10 K24 ["plugin"]
  LOADK R11 K61 ["AudioDiscovery"]
  SETTABLEKS R11 R10 K53 ["pluginName"]
  SETTABLEKS R6 R10 K54 ["translationResourceTable"]
  SETTABLEKS R5 R10 K55 ["fallbackResourceTable"]
  DUPCLOSURE R11 K62 [PROTO_4]
  SETTABLEKS R11 R10 K56 ["getToolbarName"]
  GETTABLEKS R12 R0 K21 ["shouldMigrateToActions"]
  CALL R12 0 1
  JUMPIFNOT R12 [+6]
  NEWTABLE R11 0 1
  MOVE R12 R7
  SETLIST R11 R12 1 [1]
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K57 ["actionInfos"]
  GETTABLEKS R12 R0 K21 ["shouldMigrateToActions"]
  CALL R12 0 1
  JUMPIF R12 [+2]
  MOVE R11 R9
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K58 ["buttonInfo"]
  GETTABLEKS R11 R0 K21 ["shouldMigrateToActions"]
  CALL R11 0 1
  SETTABLEKS R11 R10 K59 ["noToolbar"]
  GETIMPORT R11 K7 [game]
  LOADK R13 K63 ["RunService"]
  NAMECALL R11 R11 K64 ["GetService"]
  CALL R11 2 1
  NAMECALL R12 R11 K65 ["IsEdit"]
  CALL R12 1 1
  JUMPIFNOT R12 [+70]
  GETTABLEKS R12 R0 K21 ["shouldMigrateToActions"]
  CALL R12 0 1
  JUMPIFNOT R12 [+4]
  LOADB R12 1
  SETTABLEKS R12 R7 K37 ["enabled"]
  JUMP [+3]
  LOADB R12 1
  SETTABLEKS R12 R9 K37 ["enabled"]
  DUPTABLE R12 K70 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R13 K61 ["AudioDiscovery"]
  SETTABLEKS R13 R12 K66 ["id"]
  GETIMPORT R13 K73 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R14 K77 [Enum.InitialDockState.Bottom]
  LOADB R15 0
  LOADB R16 0
  LOADN R17 128
  LOADN R18 224
  LOADN R19 250
  LOADN R20 200
  CALL R13 7 1
  SETTABLEKS R13 R12 K67 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R13 K78 [PROTO_5]
  SETTABLEKS R13 R12 K68 ["getDockTitle"]
  GETIMPORT R13 K81 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R13 R12 K69 ["zIndexBehavior"]
  SETTABLEKS R12 R10 K82 ["dockWidgetInfo"]
  GETTABLEKS R12 R4 K83 ["build"]
  MOVE R13 R10
  CALL R12 1 1
  GETTABLEKS R13 R12 K84 ["pluginLoader"]
  NAMECALL R13 R13 K85 ["waitForUserInteraction"]
  CALL R13 1 1
  JUMPIF R13 [+1]
  RETURN R0 0
  GETIMPORT R14 K1 [require]
  GETIMPORT R17 K3 [script]
  GETTABLEKS R16 R17 K4 ["Parent"]
  GETTABLEKS R15 R16 K86 ["main"]
  CALL R14 1 1
  MOVE R15 R14
  GETIMPORT R16 K25 [plugin]
  MOVE R17 R12
  GETTABLEKS R19 R0 K21 ["shouldMigrateToActions"]
  CALL R19 0 1
  JUMPIFNOT R19 [+2]
  MOVE R18 R8
  JUMP [+1]
  LOADNIL R18
  CALL R15 3 0
  RETURN R0 0
  GETTABLEKS R12 R4 K83 ["build"]
  MOVE R13 R10
  CALL R12 1 0
  RETURN R0 0
