PROTO_0:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Toolbar"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Name"]
  SETTABLEKS R2 R0 K0 ["Name"]
  DUPTABLE R2 K7 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "noToolbar"}]
  SETTABLEKS R0 R2 K1 ["plugin"]
  LOADK R3 K8 ["AudioEqualizerEditor"]
  SETTABLEKS R3 R2 K2 ["pluginName"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K3 ["translationResourceTable"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K4 ["fallbackResourceTable"]
  DUPCLOSURE R3 K9 [PROTO_0]
  SETTABLEKS R3 R2 K5 ["getToolbarName"]
  LOADB R3 1
  SETTABLEKS R3 R2 K6 ["noToolbar"]
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["RunService"]
  NAMECALL R3 R3 K13 ["GetService"]
  CALL R3 2 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K14 ["get"]
  CALL R5 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K15 ["Standalone"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  NAMECALL R5 R3 K16 ["IsEdit"]
  CALL R5 1 1
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K17 ["build"]
  MOVE R7 R2
  CALL R6 1 1
  JUMPIF R4 [+1]
  JUMPIFNOT R5 [+4]
  MOVE R7 R1
  MOVE R8 R0
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AudioEqualizerEditor"]
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
  DUPCLOSURE R5 K17 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
