MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Interfaces"]
  GETTABLEKS R2 R3 K9 ["InterfaceTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Util"]
  GETTABLEKS R5 R6 K8 ["Interfaces"]
  GETTABLEKS R4 R5 K10 ["PluginLocalizationInterface"]
  GETTABLEKS R3 R4 K11 ["createLocalization"]
  CALL R2 1 1
  DUPTABLE R3 K12 [{"createLocalization"}]
  SETTABLEKS R2 R3 K11 ["createLocalization"]
  RETURN R3 1
