PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  LOADK R0 K0 ["TerrainEditorLuaToolbarName"]
  RETURN R0 1

PROTO_2:
  LOADK R0 K0 ["Editor"]
  RETURN R0 1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["PluginButtonEditorTooltip"]
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

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["main"]
  CALL R0 1 1
  GETIMPORT R1 K7 [game]
  LOADK R3 K8 ["TestService"]
  NAMECALL R1 R1 K9 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K3 [script]
  LOADK R4 K10 ["TerrainEditor"]
  NAMECALL R2 R2 K11 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K13 [pcall]
  DUPCLOSURE R4 K14 [PROTO_0]
  CALL R3 1 2
  JUMPIFNOT R3 [+91]
  GETIMPORT R6 K1 [require]
  GETTABLEKS R9 R2 K15 ["Packages"]
  GETTABLEKS R8 R9 K16 ["Dev"]
  GETTABLEKS R7 R8 K17 ["Jest"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K18 ["runCLI"]
  GETIMPORT R6 K20 [_G]
  LOADB R7 1
  SETTABLEKS R7 R6 K21 ["__ROACT_17_MOCK_SCHEDULER__"]
  GETIMPORT R6 K20 [_G]
  LOADB R7 1
  SETTABLEKS R7 R6 K22 ["__ROACT_17_INLINE_ACT__"]
  GETIMPORT R6 K7 [game]
  LOADK R8 K23 ["DebugAvatarPreviewerTestPathPattern"]
  LOADK R9 K24 [""]
  NAMECALL R6 R6 K25 ["DefineFastString"]
  CALL R6 3 1
  MOVE R7 R5
  GETTABLEKS R8 R2 K26 ["Src"]
  DUPTABLE R9 K30 [{"verbose", "ci", "testPathPattern"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K27 ["verbose"]
  LOADB R10 1
  SETTABLEKS R10 R9 K28 ["ci"]
  JUMPIFNOTEQKS R6 K24 [""] [+3]
  LOADNIL R10
  JUMP [+1]
  MOVE R10 R6
  SETTABLEKS R10 R9 K29 ["testPathPattern"]
  NEWTABLE R10 0 1
  GETTABLEKS R11 R2 K26 ["Src"]
  SETLIST R10 R11 1 [1]
  CALL R7 3 1
  NAMECALL R7 R7 K31 ["awaitStatus"]
  CALL R7 1 2
  JUMPIFNOTEQKS R7 K32 ["Resolved"] [+15]
  GETTABLEKS R10 R8 K33 ["results"]
  GETTABLEKS R9 R10 K34 ["numFailedTestSuites"]
  LOADN R10 0
  JUMPIFLT R10 R9 [+8]
  GETTABLEKS R10 R8 K33 ["results"]
  GETTABLEKS R9 R10 K35 ["numFailedTests"]
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+16]
  JUMPIFNOTEQKS R7 K36 ["Rejected"] [+5]
  GETIMPORT R9 K38 [print]
  MOVE R10 R8
  CALL R9 1 0
  LOADK R11 K39 ["Jest 3 test run failed"]
  NAMECALL R9 R1 K40 ["Error"]
  CALL R9 2 0
  LOADN R11 1
  NAMECALL R9 R4 K41 ["ExitAsync"]
  CALL R9 2 0
  RETURN R0 0
  LOADN R11 0
  NAMECALL R9 R4 K41 ["ExitAsync"]
  CALL R9 2 0
  RETURN R0 0
  GETIMPORT R5 K1 [require]
  GETTABLEKS R7 R2 K42 ["PluginLoader"]
  GETTABLEKS R6 R7 K43 ["PluginLoaderBuilder"]
  CALL R5 1 1
  GETTABLEKS R9 R2 K26 ["Src"]
  GETTABLEKS R8 R9 K44 ["Resources"]
  GETTABLEKS R7 R8 K45 ["Localization"]
  GETTABLEKS R6 R7 K46 ["SourceStrings"]
  GETTABLEKS R10 R2 K26 ["Src"]
  GETTABLEKS R9 R10 K44 ["Resources"]
  GETTABLEKS R8 R9 K45 ["Localization"]
  GETTABLEKS R7 R8 K47 ["LocalizedStrings"]
  DUPTABLE R8 K57 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R9 K58 [plugin]
  SETTABLEKS R9 R8 K48 ["plugin"]
  LOADK R9 K10 ["TerrainEditor"]
  SETTABLEKS R9 R8 K49 ["pluginName"]
  SETTABLEKS R7 R8 K50 ["translationResourceTable"]
  SETTABLEKS R6 R8 K51 ["fallbackResourceTable"]
  LOADNIL R9
  SETTABLEKS R9 R8 K52 ["overrideLocaleId"]
  LOADNIL R9
  SETTABLEKS R9 R8 K53 ["localizationNamespace"]
  DUPCLOSURE R9 K59 [PROTO_1]
  SETTABLEKS R9 R8 K54 ["getToolbarName"]
  DUPTABLE R9 K65 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R10 K66 [PROTO_2]
  SETTABLEKS R10 R9 K60 ["getName"]
  DUPCLOSURE R10 K67 [PROTO_3]
  SETTABLEKS R10 R9 K61 ["getDescription"]
  LOADK R10 K68 ["rbxlocaltheme://TerrainEditor"]
  SETTABLEKS R10 R9 K62 ["icon"]
  LOADNIL R10
  SETTABLEKS R10 R9 K63 ["text"]
  LOADB R10 1
  SETTABLEKS R10 R9 K64 ["clickableWhenViewportHidden"]
  SETTABLEKS R9 R8 K55 ["buttonInfo"]
  DUPTABLE R9 K73 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R10 K10 ["TerrainEditor"]
  SETTABLEKS R10 R9 K69 ["id"]
  GETIMPORT R10 K76 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R11 K80 [Enum.InitialDockState.Left]
  LOADB R12 1
  LOADB R13 0
  LOADN R14 94
  LOADN R15 88
  LOADN R16 94
  LOADN R17 200
  CALL R10 7 1
  SETTABLEKS R10 R9 K70 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R10 K81 [PROTO_4]
  SETTABLEKS R10 R9 K71 ["getDockTitle"]
  GETIMPORT R10 K84 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K72 ["zIndexBehavior"]
  SETTABLEKS R9 R8 K56 ["dockWidgetInfo"]
  GETTABLEKS R9 R5 K85 ["build"]
  MOVE R10 R8
  CALL R9 1 1
  GETTABLEKS R10 R9 K86 ["pluginLoader"]
  NAMECALL R10 R10 K87 ["waitForUserInteraction"]
  CALL R10 1 1
  JUMPIF R10 [+1]
  RETURN R0 0
  MOVE R11 R0
  GETIMPORT R12 K58 [plugin]
  MOVE R13 R9
  CALL R11 2 0
  RETURN R0 0
