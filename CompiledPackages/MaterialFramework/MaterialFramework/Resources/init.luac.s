MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"LOCALIZATION_PROJECT_NAME", "SourceStrings", "LocalizedStrings", "Theme"}]
  LOADK R1 K5 ["MaterialFramework"]
  SETTABLEKS R1 R0 K0 ["LOCALIZATION_PROJECT_NAME"]
  GETIMPORT R2 K7 [script]
  GETTABLEKS R1 R2 K1 ["SourceStrings"]
  SETTABLEKS R1 R0 K1 ["SourceStrings"]
  GETIMPORT R2 K7 [script]
  GETTABLEKS R1 R2 K2 ["LocalizedStrings"]
  SETTABLEKS R1 R0 K2 ["LocalizedStrings"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K3 ["Theme"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Theme"]
  RETURN R0 1
