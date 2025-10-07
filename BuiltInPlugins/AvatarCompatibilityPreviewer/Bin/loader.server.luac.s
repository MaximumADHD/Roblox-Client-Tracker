PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ProcessService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  LOADK R3 K0 ["AvatarPreviewer"]
  RETURN R3 1

PROTO_2:
  LOADK R3 K0 ["previewAvatar"]
  RETURN R3 1

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
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["TestService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["TestLoader"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R0 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Flags"]
  GETTABLEKS R4 R5 K13 ["getFFlagAvatarAutosetupOptionsInput"]
  CALL R3 1 1
  MOVE R4 R3
  CALL R4 0 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K15 [plugin]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETIMPORT R4 K17 [pcall]
  DUPCLOSURE R5 K18 [PROTO_0]
  CALL R4 1 2
  JUMPIFNOT R4 [+102]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R0 K9 ["Packages"]
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
  GETIMPORT R7 K4 [game]
  LOADK R9 K26 ["DebugAvatarPreviewerUpdateSnapshots"]
  LOADB R10 0
  NAMECALL R7 R7 K27 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K4 [game]
  LOADK R10 K28 ["DebugAvatarPreviewerTestPathPattern"]
  LOADK R11 K29 [""]
  NAMECALL R8 R8 K30 ["DefineFastString"]
  CALL R8 3 1
  MOVE R9 R6
  GETTABLEKS R10 R0 K11 ["Src"]
  DUPTABLE R11 K35 [{"verbose", "ci", "updateSnapshot", "testPathPattern"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K31 ["verbose"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["ci"]
  SETTABLEKS R7 R11 K33 ["updateSnapshot"]
  JUMPIFNOTEQKS R8 K29 [""] [+3]
  LOADNIL R12
  JUMP [+1]
  MOVE R12 R8
  SETTABLEKS R12 R11 K34 ["testPathPattern"]
  NEWTABLE R12 0 2
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R14 R0 K36 ["RhodiumTests"]
  SETLIST R12 R13 2 [1]
  CALL R9 3 1
  NAMECALL R9 R9 K37 ["awaitStatus"]
  CALL R9 1 2
  JUMPIFNOTEQKS R9 K38 ["Resolved"] [+15]
  GETTABLEKS R12 R10 K39 ["results"]
  GETTABLEKS R11 R12 K40 ["numFailedTestSuites"]
  LOADN R12 0
  JUMPIFLT R12 R11 [+8]
  GETTABLEKS R12 R10 K39 ["results"]
  GETTABLEKS R11 R12 K41 ["numFailedTests"]
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+16]
  JUMPIFNOTEQKS R9 K42 ["Rejected"] [+5]
  GETIMPORT R11 K44 [print]
  MOVE R12 R10
  CALL R11 1 0
  LOADK R13 K45 ["Jest 3 test run failed"]
  NAMECALL R11 R1 K46 ["Error"]
  CALL R11 2 0
  LOADN R13 1
  NAMECALL R11 R5 K47 ["ExitAsync"]
  CALL R11 2 0
  RETURN R0 0
  LOADN R13 0
  NAMECALL R11 R5 K47 ["ExitAsync"]
  CALL R11 2 0
  RETURN R0 0
  GETTABLEKS R6 R2 K48 ["launch"]
  LOADK R7 K49 ["AvatarCompatibilityPreviewer"]
  GETTABLEKS R8 R0 K11 ["Src"]
  CALL R6 2 0
  GETTABLEKS R6 R2 K50 ["isCli"]
  CALL R6 0 1
  JUMPIFNOT R6 [+1]
  RETURN R0 0
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K51 ["PluginLoader"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K52 ["PluginLoaderBuilder"]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K53 ["Resources"]
  GETTABLEKS R9 R10 K54 ["Localization"]
  GETTABLEKS R8 R9 K55 ["SourceStrings"]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K53 ["Resources"]
  GETTABLEKS R10 R11 K54 ["Localization"]
  GETTABLEKS R9 R10 K56 ["LocalizedStrings"]
  DUPTABLE R10 K65 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R11 K15 [plugin]
  SETTABLEKS R11 R10 K14 ["plugin"]
  LOADK R11 K49 ["AvatarCompatibilityPreviewer"]
  SETTABLEKS R11 R10 K57 ["pluginName"]
  SETTABLEKS R9 R10 K58 ["translationResourceTable"]
  SETTABLEKS R8 R10 K59 ["fallbackResourceTable"]
  LOADNIL R11
  SETTABLEKS R11 R10 K60 ["overrideLocaleId"]
  LOADNIL R11
  SETTABLEKS R11 R10 K61 ["localizationNamespace"]
  DUPCLOSURE R11 K66 [PROTO_1]
  SETTABLEKS R11 R10 K62 ["getToolbarName"]
  DUPTABLE R11 K71 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R12 K72 [PROTO_2]
  SETTABLEKS R12 R11 K67 ["getName"]
  DUPCLOSURE R12 K73 [PROTO_3]
  SETTABLEKS R12 R11 K68 ["getDescription"]
  LOADK R12 K29 [""]
  SETTABLEKS R12 R11 K69 ["icon"]
  LOADNIL R12
  SETTABLEKS R12 R11 K70 ["text"]
  SETTABLEKS R11 R10 K63 ["buttonInfo"]
  DUPTABLE R11 K78 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R12 K49 ["AvatarCompatibilityPreviewer"]
  SETTABLEKS R12 R11 K74 ["id"]
  GETIMPORT R12 K81 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R13 K85 [Enum.InitialDockState.Left]
  LOADB R14 0
  LOADB R15 0
  LOADN R16 194
  LOADN R17 88
  LOADN R18 240
  LOADN R19 250
  CALL R12 7 1
  SETTABLEKS R12 R11 K75 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R12 K86 [PROTO_4]
  SETTABLEKS R12 R11 K76 ["getDockTitle"]
  GETIMPORT R12 K89 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K77 ["zIndexBehavior"]
  SETTABLEKS R11 R10 K64 ["dockWidgetInfo"]
  GETTABLEKS R11 R7 K90 ["build"]
  MOVE R12 R10
  CALL R11 1 1
  GETTABLEKS R12 R11 K91 ["pluginLoader"]
  NAMECALL R12 R12 K92 ["waitForUserInteraction"]
  CALL R12 1 1
  JUMPIF R12 [+1]
  RETURN R0 0
  GETIMPORT R13 K8 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K2 ["Parent"]
  GETTABLEKS R14 R15 K93 ["main"]
  CALL R13 1 1
  MOVE R14 R13
  GETIMPORT R15 K15 [plugin]
  MOVE R16 R11
  CALL R14 2 0
  RETURN R0 0
