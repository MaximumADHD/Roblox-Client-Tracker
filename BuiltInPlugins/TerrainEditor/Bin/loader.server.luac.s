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
  GETIMPORT R3 K1 [require]
  GETTABLEKS R6 R2 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Flags"]
  GETTABLEKS R4 R5 K14 ["getFFlagFixTerrainEditorDETruncations"]
  CALL R3 1 1
  GETIMPORT R4 K16 [pcall]
  DUPCLOSURE R5 K17 [PROTO_0]
  CALL R4 1 2
  JUMPIFNOT R4 [+91]
  GETIMPORT R7 K1 [require]
  GETTABLEKS R10 R2 K18 ["Packages"]
  GETTABLEKS R9 R10 K19 ["Dev"]
  GETTABLEKS R8 R9 K20 ["Jest"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K21 ["runCLI"]
  GETIMPORT R7 K23 [_G]
  LOADB R8 1
  SETTABLEKS R8 R7 K24 ["__ROACT_17_MOCK_SCHEDULER__"]
  GETIMPORT R7 K23 [_G]
  LOADB R8 1
  SETTABLEKS R8 R7 K25 ["__ROACT_17_INLINE_ACT__"]
  GETIMPORT R7 K7 [game]
  LOADK R9 K26 ["DebugAvatarPreviewerTestPathPattern"]
  LOADK R10 K27 [""]
  NAMECALL R7 R7 K28 ["DefineFastString"]
  CALL R7 3 1
  MOVE R8 R6
  GETTABLEKS R9 R2 K12 ["Src"]
  DUPTABLE R10 K32 [{"verbose", "ci", "testPathPattern"}]
  LOADB R11 1
  SETTABLEKS R11 R10 K29 ["verbose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K30 ["ci"]
  JUMPIFNOTEQKS R7 K27 [""] [+3]
  LOADNIL R11
  JUMP [+1]
  MOVE R11 R7
  SETTABLEKS R11 R10 K31 ["testPathPattern"]
  NEWTABLE R11 0 1
  GETTABLEKS R12 R2 K12 ["Src"]
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
  RETURN R0 0
  LOADN R12 0
  NAMECALL R10 R5 K43 ["ExitAsync"]
  CALL R10 2 0
  RETURN R0 0
  GETIMPORT R6 K1 [require]
  GETTABLEKS R8 R2 K44 ["PluginLoader"]
  GETTABLEKS R7 R8 K45 ["PluginLoaderBuilder"]
  CALL R6 1 1
  GETTABLEKS R10 R2 K12 ["Src"]
  GETTABLEKS R9 R10 K46 ["Resources"]
  GETTABLEKS R8 R9 K47 ["Localization"]
  GETTABLEKS R7 R8 K48 ["SourceStrings"]
  GETTABLEKS R11 R2 K12 ["Src"]
  GETTABLEKS R10 R11 K46 ["Resources"]
  GETTABLEKS R9 R10 K47 ["Localization"]
  GETTABLEKS R8 R9 K49 ["LocalizedStrings"]
  DUPTABLE R9 K59 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R10 K60 [plugin]
  SETTABLEKS R10 R9 K50 ["plugin"]
  LOADK R10 K10 ["TerrainEditor"]
  SETTABLEKS R10 R9 K51 ["pluginName"]
  SETTABLEKS R8 R9 K52 ["translationResourceTable"]
  SETTABLEKS R7 R9 K53 ["fallbackResourceTable"]
  LOADNIL R10
  SETTABLEKS R10 R9 K54 ["overrideLocaleId"]
  LOADNIL R10
  SETTABLEKS R10 R9 K55 ["localizationNamespace"]
  DUPCLOSURE R10 K61 [PROTO_1]
  SETTABLEKS R10 R9 K56 ["getToolbarName"]
  DUPTABLE R10 K67 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
  DUPCLOSURE R11 K68 [PROTO_2]
  SETTABLEKS R11 R10 K62 ["getName"]
  DUPCLOSURE R11 K69 [PROTO_3]
  SETTABLEKS R11 R10 K63 ["getDescription"]
  LOADK R11 K70 ["rbxlocaltheme://TerrainEditor"]
  SETTABLEKS R11 R10 K64 ["icon"]
  LOADNIL R11
  SETTABLEKS R11 R10 K65 ["text"]
  LOADB R11 1
  SETTABLEKS R11 R10 K66 ["clickableWhenViewportHidden"]
  SETTABLEKS R10 R9 K57 ["buttonInfo"]
  DUPTABLE R10 K75 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R11 K10 ["TerrainEditor"]
  SETTABLEKS R11 R10 K71 ["id"]
  MOVE R12 R3
  CALL R12 0 1
  JUMPIFNOT R12 [+12]
  GETIMPORT R11 K78 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K82 [Enum.InitialDockState.Left]
  LOADB R13 1
  LOADB R14 0
  LOADN R15 94
  LOADN R16 88
  LOADN R17 94
  LOADN R18 200
  CALL R11 7 1
  JUMP [+11]
  GETIMPORT R11 K78 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R12 K82 [Enum.InitialDockState.Left]
  LOADB R13 1
  LOADB R14 0
  LOADN R15 64
  LOADN R16 88
  LOADN R17 64
  LOADN R18 200
  CALL R11 7 1
  SETTABLEKS R11 R10 K72 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R11 K83 [PROTO_4]
  SETTABLEKS R11 R10 K73 ["getDockTitle"]
  GETIMPORT R11 K86 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K74 ["zIndexBehavior"]
  SETTABLEKS R10 R9 K58 ["dockWidgetInfo"]
  GETTABLEKS R10 R6 K87 ["build"]
  MOVE R11 R9
  CALL R10 1 1
  GETTABLEKS R11 R10 K88 ["pluginLoader"]
  NAMECALL R11 R11 K89 ["waitForUserInteraction"]
  CALL R11 1 1
  JUMPIF R11 [+1]
  RETURN R0 0
  MOVE R12 R0
  GETIMPORT R13 K60 [plugin]
  MOVE R14 R10
  CALL R12 2 0
  RETURN R0 0
