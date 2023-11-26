PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnOpenConvertToPackagePlugin"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["defineLuaFlags"]
  CALL R0 1 0
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Parent"]
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [require]
  GETTABLEKS R3 R0 K6 ["PluginLoader"]
  GETTABLEKS R2 R3 K7 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Resources"]
  GETTABLEKS R2 R3 K10 ["SourceStrings"]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Resources"]
  GETTABLEKS R3 R4 K11 ["LocalizedStrings"]
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["PackageUIService"]
  NAMECALL R5 R5 K16 ["GetService"]
  CALL R5 2 1
  ORK R4 R5 K12 []
  DUPTABLE R5 K25 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
  GETIMPORT R6 K26 [plugin]
  SETTABLEKS R6 R5 K17 ["plugin"]
  LOADK R6 K27 ["ConvertToPackage"]
  SETTABLEKS R6 R5 K18 ["pluginName"]
  SETTABLEKS R3 R5 K19 ["translationResourceTable"]
  SETTABLEKS R2 R5 K20 ["fallbackResourceTable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["overrideLocaleId"]
  LOADNIL R6
  SETTABLEKS R6 R5 K22 ["localizationNamespace"]
  LOADB R6 1
  SETTABLEKS R6 R5 K23 ["noToolbar"]
  NEWTABLE R6 1 0
  DUPCLOSURE R8 K28 [PROTO_0]
  CAPTURE VAL R4
  ORK R7 R8 K12 []
  SETTABLEKS R7 R6 K29 ["PackageUIService.OnOpenConvertToPackagePlugin"]
  SETTABLEKS R6 R5 K24 ["extraTriggers"]
  GETTABLEKS R6 R1 K30 ["build"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R6 K31 ["pluginLoader"]
  NAMECALL R7 R7 K32 ["waitForUserInteraction"]
  CALL R7 1 1
  JUMPIF R7 [+1]
  RETURN R0 0
  GETIMPORT R8 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K4 ["Parent"]
  GETTABLEKS R9 R10 K33 ["main"]
  CALL R8 1 1
  MOVE R9 R8
  GETIMPORT R10 K26 [plugin]
  MOVE R11 R6
  CALL R9 2 0
  RETURN R0 0
