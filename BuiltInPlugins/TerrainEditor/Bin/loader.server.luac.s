PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableRibbonPlugin"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  LOADK R0 K0 ["TerrainEditorLuaToolbarName"]
  RETURN R0 1

PROTO_3:
  LOADK R0 K0 ["Editor"]
  RETURN R0 1

PROTO_4:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Main"]
  LOADK R7 K1 ["PluginButtonEditorTooltip"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_5:
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
  GETIMPORT R3 K7 [game]
  LOADK R5 K12 ["EnableRibbonPluginFeature"]
  NAMECALL R3 R3 K13 ["GetEngineFeature"]
  CALL R3 2 1
  JUMPIF R3 [+5]
  GETIMPORT R4 K15 [pcall]
  NEWCLOSURE R5 P0
  CAPTURE REF R3
  CALL R4 1 0
  GETIMPORT R4 K15 [pcall]
  DUPCLOSURE R5 K16 [PROTO_1]
  CALL R4 1 2
  JUMPIFNOT R4 [+92]
  GETIMPORT R7 K1 [require]
  GETTABLEKS R10 R2 K17 ["Packages"]
  GETTABLEKS R9 R10 K18 ["Dev"]
  GETTABLEKS R8 R9 K19 ["Jest"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K20 ["runCLI"]
  GETIMPORT R7 K22 [_G]
  LOADB R8 1
  SETTABLEKS R8 R7 K23 ["__ROACT_17_MOCK_SCHEDULER__"]
  GETIMPORT R7 K22 [_G]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["__ROACT_17_INLINE_ACT__"]
  GETIMPORT R7 K7 [game]
  LOADK R9 K25 ["DebugAvatarPreviewerTestPathPattern"]
  LOADK R10 K26 [""]
  NAMECALL R7 R7 K27 ["DefineFastString"]
  CALL R7 3 1
  MOVE R8 R6
  GETTABLEKS R9 R2 K28 ["Src"]
  DUPTABLE R10 K32 [{"verbose", "ci", "testPathPattern"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K29 ["verbose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K30 ["ci"]
  JUMPIFNOTEQKS R7 K26 [""] [+3]
  LOADNIL R11
  JUMP [+1]
  MOVE R11 R7
  SETTABLEKS R11 R10 K31 ["testPathPattern"]
  NEWTABLE R11 0 1
  GETTABLEKS R12 R2 K28 ["Src"]
  SETLIST R11 R12 1 [1]
  CALL R8 3 1
  NAMECALL R8 R8 K33 ["awaitStatus"]
  CALL R8 1 2
  JUMPIFNOTEQKS R8 K34 ["Resolved"] [+15]
  GETTABLEKS R11 R9 K35 ["results"]
  GETTABLEKS R10 R11 K36 ["numFailedTestSuites"]
  LOADN R11 0
  JUMPIFLT R11 R10 [+8]
  GETTABLEKS R11 R9 K35 ["results"]
  GETTABLEKS R10 R11 K37 ["numFailedTests"]
  LOADN R11 0
  JUMPIFNOTLT R11 R10 [+16]
  JUMPIFNOTEQKS R8 K38 ["Rejected"] [+5]
  GETIMPORT R10 K40 [print]
  MOVE R11 R9
  CALL R10 1 0
  LOADK R12 K41 ["Jest 3 test run failed"]
  NAMECALL R10 R1 K42 ["Error"]
  CALL R10 2 0
  LOADN R12 1
  NAMECALL R10 R5 K43 ["ExitAsync"]
  CALL R10 2 0
  JUMP [+4]
  LOADN R12 0
  NAMECALL R10 R5 K43 ["ExitAsync"]
  CALL R10 2 0
  CLOSEUPVALS R3
  RETURN R0 0
  GETIMPORT R6 K1 [require]
  GETTABLEKS R8 R2 K17 ["Packages"]
  GETTABLEKS R7 R8 K44 ["PluginLoader"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K45 ["PluginLoaderBuilder"]
  GETTABLEKS R11 R2 K28 ["Src"]
  GETTABLEKS R10 R11 K46 ["Resources"]
  GETTABLEKS R9 R10 K47 ["Localization"]
  GETTABLEKS R8 R9 K48 ["SourceStrings"]
  GETTABLEKS R12 R2 K28 ["Src"]
  GETTABLEKS R11 R12 K46 ["Resources"]
  GETTABLEKS R10 R11 K47 ["Localization"]
  GETTABLEKS R9 R10 K49 ["LocalizedStrings"]
  DUPTABLE R10 K59 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R11 K60 [plugin]
  SETTABLEKS R11 R10 K50 ["plugin"]
  LOADK R11 K10 ["TerrainEditor"]
  SETTABLEKS R11 R10 K51 ["pluginName"]
  SETTABLEKS R9 R10 K52 ["translationResourceTable"]
  SETTABLEKS R8 R10 K53 ["fallbackResourceTable"]
  LOADNIL R11
  SETTABLEKS R11 R10 K54 ["overrideLocaleId"]
  LOADNIL R11
  SETTABLEKS R11 R10 K55 ["localizationNamespace"]
  DUPCLOSURE R11 K61 [PROTO_2]
  SETTABLEKS R11 R10 K56 ["getToolbarName"]
  DUPTABLE R11 K67 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R12 K68 [PROTO_3]
  SETTABLEKS R12 R11 K62 ["getName"]
  DUPCLOSURE R12 K69 [PROTO_4]
  SETTABLEKS R12 R11 K63 ["getDescription"]
  JUMPIFNOT R3 [+2]
  LOADK R12 K70 ["rbxlocaltheme://RibbonTerrain"]
  JUMP [+1]
  LOADK R12 K71 ["rbxlocaltheme://TerrainEditor"]
  SETTABLEKS R12 R11 K64 ["icon"]
  LOADNIL R12
  SETTABLEKS R12 R11 K65 ["text"]
  LOADB R12 1
  SETTABLEKS R12 R11 K66 ["clickableWhenViewportHidden"]
  SETTABLEKS R11 R10 K57 ["buttonInfo"]
  DUPTABLE R11 K76 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R12 K10 ["TerrainEditor"]
  SETTABLEKS R12 R11 K72 ["id"]
  GETIMPORT R12 K79 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R13 K83 [Enum.InitialDockState.Left]
  LOADB R14 1
  LOADB R15 0
  LOADN R16 94
  LOADN R17 88
  LOADN R18 94
  LOADN R19 200
  CALL R12 7 1
  SETTABLEKS R12 R11 K73 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R12 K84 [PROTO_5]
  SETTABLEKS R12 R11 K74 ["getDockTitle"]
  GETIMPORT R12 K87 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K75 ["zIndexBehavior"]
  SETTABLEKS R11 R10 K58 ["dockWidgetInfo"]
  GETTABLEKS R11 R7 K88 ["build"]
  MOVE R12 R10
  CALL R11 1 1
  GETTABLEKS R12 R11 K89 ["pluginLoader"]
  NAMECALL R12 R12 K90 ["waitForUserInteraction"]
  CALL R12 1 1
  JUMPIF R12 [+2]
  CLOSEUPVALS R3
  RETURN R0 0
  MOVE R13 R0
  GETIMPORT R14 K60 [plugin]
  MOVE R15 R11
  CALL R13 2 0
  CLOSEUPVALS R3
  RETURN R0 0
