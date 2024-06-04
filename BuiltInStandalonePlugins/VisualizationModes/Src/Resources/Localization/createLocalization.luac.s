PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Localization"]
  GETTABLEKS R0 R1 K1 ["new"]
  DUPTABLE R1 K5 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K2 ["stringResourceTable"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K3 ["translationResourceTable"]
  LOADK R2 K6 ["VisualizationModes"]
  SETTABLEKS R2 R1 K4 ["pluginName"]
  CALL R0 1 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["ContextServices"]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Resources"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  GETTABLEKS R3 R4 K12 ["SourceStrings"]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K13 ["LocalizedStrings"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
