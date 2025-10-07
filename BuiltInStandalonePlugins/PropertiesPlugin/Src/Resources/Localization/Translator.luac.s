MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PropertiesPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Properties"]
  CALL R1 1 1
  GETTABLEKS R4 R1 K8 ["Resources"]
  GETTABLEKS R3 R4 K9 ["Localization"]
  GETTABLEKS R2 R3 K9 ["Localization"]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K8 ["Resources"]
  GETTABLEKS R4 R5 K9 ["Localization"]
  GETTABLEKS R3 R4 K11 ["LocalizedStrings"]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K8 ["Resources"]
  GETTABLEKS R5 R6 K9 ["Localization"]
  GETTABLEKS R4 R5 K12 ["SourceStrings"]
  GETTABLEKS R5 R2 K13 ["new"]
  DUPTABLE R6 K17 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  SETTABLEKS R4 R6 K14 ["stringResourceTable"]
  SETTABLEKS R3 R6 K15 ["translationResourceTable"]
  LOADK R7 K2 ["PropertiesPlugin"]
  SETTABLEKS R7 R6 K16 ["pluginName"]
  CALL R5 1 1
  RETURN R5 1
