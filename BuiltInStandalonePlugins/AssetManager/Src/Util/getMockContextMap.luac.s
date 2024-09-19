PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADK R1 K1 ["AssetManager"]
  CALL R0 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["Localization"]
  GETTABLEKS R1 R2 K3 ["mock"]
  GETUPVAL R2 2
  CALL R1 1 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K3 ["mock"]
  CALL R2 0 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["mock"]
  MOVE R4 R0
  MOVE R5 R2
  MOVE R6 R1
  CALL R3 3 1
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K3 ["mock"]
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 1
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K3 ["mock"]
  MOVE R6 R3
  MOVE R7 R4
  MOVE R8 R2
  CALL R5 3 1
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K3 ["mock"]
  MOVE R7 R3
  MOVE R8 R5
  MOVE R9 R2
  CALL R6 3 1
  DUPTABLE R7 K11 [{"Analytics", "Localization", "Theme", "PluginController", "ExplorerController", "SearchController", "ItemsController", "Networking"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K4 ["Analytics"]
  GETTABLEKS R8 R9 K3 ["mock"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K4 ["Analytics"]
  SETTABLEKS R1 R7 K2 ["Localization"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K3 ["mock"]
  CALL R8 0 1
  SETTABLEKS R8 R7 K5 ["Theme"]
  SETTABLEKS R3 R7 K6 ["PluginController"]
  SETTABLEKS R4 R7 K7 ["ExplorerController"]
  SETTABLEKS R5 R7 K8 ["SearchController"]
  SETTABLEKS R6 R7 K9 ["ItemsController"]
  SETTABLEKS R2 R7 K10 ["Networking"]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["TestHelpers"]
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R5 R2 K10 ["Instances"]
  GETTABLEKS R4 R5 K11 ["MockPlugin"]
  GETTABLEKS R7 R1 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Themes"]
  GETTABLEKS R5 R6 K14 ["StudioTheme"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K15 ["Src"]
  GETTABLEKS R8 R9 K16 ["Controllers"]
  GETTABLEKS R7 R8 K17 ["ExplorerController"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Controllers"]
  GETTABLEKS R8 R9 K18 ["ItemsController"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K15 ["Src"]
  GETTABLEKS R10 R11 K16 ["Controllers"]
  GETTABLEKS R9 R10 K19 ["PluginController"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Controllers"]
  GETTABLEKS R10 R11 K20 ["SearchController"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K21 ["Networking"]
  CALL R10 1 1
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K22 ["Resources"]
  GETTABLEKS R12 R13 K23 ["Localization"]
  GETTABLEKS R11 R12 K24 ["SourceStrings"]
  GETTABLEKS R15 R0 K15 ["Src"]
  GETTABLEKS R14 R15 K22 ["Resources"]
  GETTABLEKS R13 R14 K23 ["Localization"]
  GETTABLEKS R12 R13 K25 ["LocalizedStrings"]
  DUPTABLE R13 K30 [{"stringResourceTable", "translationResourceTable", "pluginName", "libraries"}]
  SETTABLEKS R11 R13 K26 ["stringResourceTable"]
  SETTABLEKS R12 R13 K27 ["translationResourceTable"]
  LOADK R14 K2 ["AssetManager"]
  SETTABLEKS R14 R13 K28 ["pluginName"]
  NEWTABLE R14 1 0
  GETTABLEKS R16 R1 K22 ["Resources"]
  GETTABLEKS R15 R16 K31 ["LOCALIZATION_PROJECT_NAME"]
  DUPTABLE R16 K32 [{"stringResourceTable", "translationResourceTable"}]
  GETTABLEKS R18 R1 K22 ["Resources"]
  GETTABLEKS R17 R18 K24 ["SourceStrings"]
  SETTABLEKS R17 R16 K26 ["stringResourceTable"]
  GETTABLEKS R18 R1 K22 ["Resources"]
  GETTABLEKS R17 R18 K25 ["LocalizedStrings"]
  SETTABLEKS R17 R16 K27 ["translationResourceTable"]
  SETTABLE R16 R14 R15
  SETTABLEKS R14 R13 K29 ["libraries"]
  DUPCLOSURE R14 K33 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R5
  RETURN R14 1
