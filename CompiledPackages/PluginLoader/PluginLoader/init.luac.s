MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["PluginLoader"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["PluginLoaderBuilder"]
  CALL R1 1 1
  DUPTABLE R2 K6 [{"PluginLoader", "PluginLoaderBuilder"}]
  SETTABLEKS R0 R2 K4 ["PluginLoader"]
  SETTABLEKS R1 R2 K5 ["PluginLoaderBuilder"]
  RETURN R2 1
