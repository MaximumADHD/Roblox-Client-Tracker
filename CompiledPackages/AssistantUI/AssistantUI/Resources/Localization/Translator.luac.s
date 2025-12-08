MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Resources"]
  GETTABLEKS R3 R4 K7 ["Localization"]
  GETTABLEKS R2 R3 K7 ["Localization"]
  CALL R1 1 1
  GETTABLEKS R4 R0 K6 ["Resources"]
  GETTABLEKS R3 R4 K7 ["Localization"]
  GETTABLEKS R2 R3 K8 ["SourceStrings"]
  GETTABLEKS R5 R0 K6 ["Resources"]
  GETTABLEKS R4 R5 K7 ["Localization"]
  GETTABLEKS R3 R4 K9 ["LocalizedStrings"]
  GETTABLEKS R4 R1 K10 ["new"]
  DUPTABLE R5 K14 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R2 R5 K11 ["stringResourceTable"]
  SETTABLEKS R3 R5 K12 ["translationResourceTable"]
  LOADK R6 K15 ["Assistant"]
  SETTABLEKS R6 R5 K13 ["pluginName"]
  CALL R4 1 1
  RETURN R4 1
