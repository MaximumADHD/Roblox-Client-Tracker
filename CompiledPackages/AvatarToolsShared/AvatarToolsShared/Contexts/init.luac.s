MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"AssetServiceWrapper", "EditingItemContext", "LuaMeshEditingModuleContext", "MannequinContext", "PreviewContext", "Signals", "StudioServiceWrapper"}]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K0 ["AssetServiceWrapper"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["AssetServiceWrapper"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K1 ["EditingItemContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["EditingItemContext"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K2 ["LuaMeshEditingModuleContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["LuaMeshEditingModuleContext"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K3 ["MannequinContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["MannequinContext"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K4 ["PreviewContext"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["PreviewContext"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K5 ["Signals"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["Signals"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K6 ["StudioServiceWrapper"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["StudioServiceWrapper"]
  RETURN R0 1
