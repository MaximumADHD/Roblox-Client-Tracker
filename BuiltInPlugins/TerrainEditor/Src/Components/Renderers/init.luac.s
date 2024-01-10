MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"BrushSize", "Button", "Label", "Image", "Material", "MultiSelection", "PlaneLock", "Upgrade"}]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K0 ["BrushSize"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrushSize"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K1 ["Button"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Button"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K2 ["Label"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Label"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K3 ["Image"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Image"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K4 ["Material"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["Material"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K5 ["MultiSelection"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["MultiSelection"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K6 ["PlaneLock"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["PlaneLock"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K7 ["Upgrade"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["Upgrade"]
  RETURN R0 1
