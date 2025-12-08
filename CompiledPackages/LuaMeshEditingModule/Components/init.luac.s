MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"MeshEditingComponent", "FreeformMeshEditingComponent", "MeshEditingDragger"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["MeshEditingComponent"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["MeshEditingComponent"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["FreeformMeshEditingComponent"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["FreeformMeshEditingComponent"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["MeshEditingDragger"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["MeshEditingDragger"]
  RETURN R0 1
