MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"Types", "MeshEditingContexts", "Components", "Tools", "Util"}]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K0 ["Types"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Types"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K1 ["MeshEditingContexts"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["MeshEditingContexts"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K2 ["Components"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Components"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K3 ["Tools"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Tools"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K4 ["Util"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["Util"]
  RETURN R0 1
