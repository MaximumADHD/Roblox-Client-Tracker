PROTO_0:
  LOADK R0 K0 ["draftsToolbar"]
  RETURN R0 1

PROTO_1:
  LOADK R0 K0 ["draftsButton"]
  RETURN R0 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Meta"]
  LOADK R7 K1 ["PluginButtonTooltip"]
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
  LOADK R3 K8 ["RunService"]
  NAMECALL R1 R1 K9 ["GetService"]
  CALL R1 2 1
  NAMECALL R2 R1 K10 ["IsEdit"]
  CALL R2 1 1
  JUMPIFNOT R2 [+5]
  MOVE R2 R0
  GETIMPORT R3 K12 [plugin]
  CALL R2 1 0
  RETURN R0 0
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETIMPORT R3 K1 [require]
  GETTABLEKS R5 R2 K13 ["PluginLoader"]
  GETTABLEKS R4 R5 K14 ["PluginLoaderBuilder"]
  CALL R3 1 1
  GETTABLEKS R6 R2 K15 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["SourceStrings"]
  GETTABLEKS R7 R2 K15 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K18 ["LocalizedStrings"]
  DUPTABLE R6 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K12 [plugin]
  SETTABLEKS R7 R6 K11 ["plugin"]
  LOADK R7 K28 ["Drafts"]
  SETTABLEKS R7 R6 K19 ["pluginName"]
  SETTABLEKS R5 R6 K20 ["translationResourceTable"]
  SETTABLEKS R4 R6 K21 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K22 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K23 ["localizationNamespace"]
  DUPCLOSURE R7 K29 [PROTO_0]
  SETTABLEKS R7 R6 K24 ["getToolbarName"]
  DUPTABLE R7 K35 [{"getName", "getDescription", "icon", "text", "enabled"}]
  DUPCLOSURE R8 K36 [PROTO_1]
  SETTABLEKS R8 R7 K30 ["getName"]
  DUPCLOSURE R8 K37 [PROTO_2]
  SETTABLEKS R8 R7 K31 ["getDescription"]
  LOADK R8 K38 [""]
  SETTABLEKS R8 R7 K32 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K33 ["text"]
  LOADB R8 0
  SETTABLEKS R8 R7 K34 ["enabled"]
  SETTABLEKS R7 R6 K25 ["buttonInfo"]
  LOADNIL R7
  SETTABLEKS R7 R6 K26 ["dockWidgetInfo"]
  GETTABLEKS R7 R3 K39 ["build"]
  MOVE R8 R6
  CALL R7 1 0
  RETURN R0 0
