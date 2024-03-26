PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DataModelSessionStarted"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AttenuationCurveEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Bin"]
  GETTABLEKS R3 R4 K7 ["Common"]
  GETTABLEKS R2 R3 K8 ["defineLuaFlags"]
  CALL R1 1 0
  GETIMPORT R1 K10 [game]
  LOADK R3 K11 ["EnableDistanceAttenuationCurveEditorLua"]
  NAMECALL R1 R1 K12 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K13 ["Packages"]
  GETTABLEKS R2 R3 K14 ["TestLoader"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K15 ["launch"]
  LOADK R3 K2 ["AttenuationCurveEditor"]
  GETTABLEKS R4 R0 K16 ["Src"]
  CALL R2 2 0
  GETTABLEKS R2 R1 K17 ["isCli"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K19 [plugin]
  GETTABLEKS R3 R0 K20 ["Name"]
  SETTABLEKS R3 R2 K20 ["Name"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K13 ["Packages"]
  GETTABLEKS R4 R5 K21 ["PluginLoader"]
  GETTABLEKS R3 R4 K22 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K16 ["Src"]
  GETTABLEKS R5 R6 K23 ["Resources"]
  GETTABLEKS R4 R5 K24 ["Localization"]
  GETTABLEKS R3 R4 K25 ["SourceStrings"]
  GETTABLEKS R7 R0 K16 ["Src"]
  GETTABLEKS R6 R7 K23 ["Resources"]
  GETTABLEKS R5 R6 K24 ["Localization"]
  GETTABLEKS R4 R5 K26 ["LocalizedStrings"]
  GETIMPORT R6 K19 [plugin]
  GETTABLEKS R5 R6 K27 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R6 R5 K28 ["FocusedDataModelSession"]
  DUPTABLE R7 K36 [{"plugin", "pluginName", "getToolbarName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "extraTriggers", "shouldImmediatelyOpen"}]
  GETIMPORT R8 K19 [plugin]
  SETTABLEKS R8 R7 K18 ["plugin"]
  LOADK R8 K2 ["AttenuationCurveEditor"]
  SETTABLEKS R8 R7 K29 ["pluginName"]
  DUPCLOSURE R8 K37 [PROTO_0]
  SETTABLEKS R8 R7 K30 ["getToolbarName"]
  SETTABLEKS R4 R7 K31 ["translationResourceTable"]
  SETTABLEKS R3 R7 K32 ["fallbackResourceTable"]
  LOADB R8 1
  SETTABLEKS R8 R7 K33 ["noToolbar"]
  DUPTABLE R8 K39 [{"SessionStarted"}]
  DUPCLOSURE R9 K40 [PROTO_1]
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K38 ["SessionStarted"]
  SETTABLEKS R8 R7 K34 ["extraTriggers"]
  DUPCLOSURE R8 K41 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K35 ["shouldImmediatelyOpen"]
  DUPTABLE R8 K46 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
  LOADK R9 K2 ["AttenuationCurveEditor"]
  SETTABLEKS R9 R8 K42 ["id"]
  GETIMPORT R9 K49 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R10 K53 [Enum.InitialDockState.Bottom]
  LOADB R11 1
  LOADB R12 1
  LOADN R13 128
  LOADN R14 224
  LOADN R15 250
  LOADN R16 200
  CALL R9 7 1
  SETTABLEKS R9 R8 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R9 K54 [PROTO_3]
  SETTABLEKS R9 R8 K44 ["getDockTitle"]
  GETIMPORT R9 K57 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R9 R8 K45 ["zIndexBehavior"]
  SETTABLEKS R8 R7 K58 ["dockWidgetInfo"]
  GETTABLEKS R8 R2 K59 ["build"]
  MOVE R9 R7
  CALL R8 1 1
  GETTABLEKS R9 R8 K60 ["pluginLoader"]
  NAMECALL R9 R9 K61 ["waitForUserInteraction"]
  CALL R9 1 1
  JUMPIF R9 [+1]
  RETURN R0 0
  GETIMPORT R10 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K62 ["Parent"]
  GETTABLEKS R11 R12 K63 ["main"]
  CALL R10 1 1
  MOVE R11 R10
  GETIMPORT R12 K19 [plugin]
  MOVE R13 R8
  CALL R11 2 0
  RETURN R0 0
