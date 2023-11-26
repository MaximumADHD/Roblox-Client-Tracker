MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["ContextServices"]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Resources"]
  GETTABLEKS R4 R5 K10 ["Localization"]
  GETTABLEKS R3 R4 K11 ["SourceStrings"]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Resources"]
  GETTABLEKS R5 R6 K10 ["Localization"]
  GETTABLEKS R4 R5 K12 ["LocalizedStrings"]
  GETTABLEKS R6 R2 K10 ["Localization"]
  GETTABLEKS R5 R6 K13 ["new"]
  DUPTABLE R6 K17 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R3 R6 K14 ["stringResourceTable"]
  SETTABLEKS R4 R6 K15 ["translationResourceTable"]
  LOADK R7 K18 ["StreamingServiceDispatcherRegistry"]
  SETTABLEKS R7 R6 K16 ["pluginName"]
  CALL R5 1 1
  RETURN R5 1
