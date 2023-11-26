MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"PluginLoader", "PluginLoaderBuilder"}]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K0 ["PluginLoader"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["PluginLoader"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K1 ["PluginLoaderBuilder"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["PluginLoaderBuilder"]
  RETURN R0 1
