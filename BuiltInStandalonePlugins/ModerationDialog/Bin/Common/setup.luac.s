PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  DUPTABLE R2 K6 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar"}]
  SETTABLEKS R0 R2 K1 ["plugin"]
  LOADK R3 K7 ["ModerationDialog"]
  SETTABLEKS R3 R2 K2 ["pluginName"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K3 ["translationResourceTable"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K4 ["fallbackResourceTable"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["noToolbar"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K8 ["get"]
  CALL R4 0 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K9 ["Standalone"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K10 ["build"]
  MOVE R5 R2
  CALL R4 1 1
  MOVE R5 R1
  MOVE R6 R0
  MOVE R7 R4
  CALL R5 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["PluginLoader"]
  GETTABLEKS R2 R3 K8 ["PluginLoaderBuilder"]
  CALL R1 1 1
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Resources"]
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K12 ["SourceStrings"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K13 ["LocalizedStrings"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K14 ["Bin"]
  GETTABLEKS R6 R7 K15 ["Common"]
  GETTABLEKS R5 R6 K16 ["pluginType"]
  CALL R4 1 1
  DUPCLOSURE R5 K17 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
