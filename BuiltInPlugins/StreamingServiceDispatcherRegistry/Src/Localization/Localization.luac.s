MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
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
  GETTABLEKS R6 R2 K11 ["Localization"]
  GETTABLEKS R5 R6 K14 ["new"]
  DUPTABLE R6 K18 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R3 R6 K15 ["stringResourceTable"]
  SETTABLEKS R4 R6 K16 ["translationResourceTable"]
  LOADK R7 K2 ["StreamingServiceDispatcherRegistry"]
  SETTABLEKS R7 R6 K17 ["pluginName"]
  CALL R5 1 1
  RETURN R5 1
