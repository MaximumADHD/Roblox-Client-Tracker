MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"LOCALIZATION_PROJECT_NAME", "SourceStrings", "LocalizedStrings"}]
  LOADK R1 K4 ["AvatarToolsShared"]
  SETTABLEKS R1 R0 K0 ["LOCALIZATION_PROJECT_NAME"]
  GETIMPORT R2 K6 [script]
  GETTABLEKS R1 R2 K1 ["SourceStrings"]
  SETTABLEKS R1 R0 K1 ["SourceStrings"]
  GETIMPORT R2 K6 [script]
  GETTABLEKS R1 R2 K2 ["LocalizedStrings"]
  SETTABLEKS R1 R0 K2 ["LocalizedStrings"]
  RETURN R0 1
