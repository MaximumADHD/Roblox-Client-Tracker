PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ToggleManageCollaborators"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_ManageCollaborators"]
  NAMECALL R0 R0 K3 ["getFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R0 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETTABLEKS R1 R2 K9 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K7 [script]
  GETTABLEKS R1 R2 K8 ["Parent"]
  GETTABLEKS R0 R1 K8 ["Parent"]
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Util"]
  GETTABLEKS R2 R3 K12 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K13 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K14 ["PluginLoader"]
  GETTABLEKS R3 R4 K15 ["PluginLoaderBuilder"]
  CALL R2 1 1
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K16 ["Resources"]
  GETTABLEKS R4 R5 K17 ["Localization"]
  GETTABLEKS R3 R4 K18 ["SourceStrings"]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K16 ["Resources"]
  GETTABLEKS R5 R6 K17 ["Localization"]
  GETTABLEKS R4 R5 K19 ["LocalizedStrings"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K20 ["TeamCreateService"]
  NAMECALL R5 R5 K21 ["GetService"]
  CALL R5 2 1
  DUPTABLE R6 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
  GETIMPORT R7 K34 [plugin]
  SETTABLEKS R7 R6 K22 ["plugin"]
  LOADK R7 K35 ["ManageCollaborators"]
  SETTABLEKS R7 R6 K23 ["pluginName"]
  SETTABLEKS R4 R6 K24 ["translationResourceTable"]
  SETTABLEKS R3 R6 K25 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K26 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K27 ["localizationNamespace"]
  LOADB R7 1
  SETTABLEKS R7 R6 K28 ["noToolbar"]
  LOADNIL R7
  SETTABLEKS R7 R6 K29 ["getToolbarName"]
  LOADNIL R7
  SETTABLEKS R7 R6 K30 ["buttonInfo"]
  LOADNIL R7
  SETTABLEKS R7 R6 K31 ["dockWidgetInfo"]
  NEWTABLE R7 1 0
  DUPCLOSURE R8 K36 [PROTO_0]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K37 ["TeamCreateService.ToggleManageCollaborators"]
  SETTABLEKS R7 R6 K32 ["extraTriggers"]
  GETTABLEKS R7 R2 K38 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K39 ["pluginLoader"]
  NAMECALL R8 R8 K40 ["waitForUserInteraction"]
  CALL R8 1 0
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K7 [script]
  GETTABLEKS R10 R11 K8 ["Parent"]
  GETTABLEKS R9 R10 K41 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K34 [plugin]
  MOVE R11 R7
  CALL R9 2 0
  RETURN R0 0
