MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K7 [{"Button", "Label", "Image", "Material", "MultiSelection", "PlaneLock", "Upgrade"}]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K0 ["Button"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["Button"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K1 ["Label"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Label"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K2 ["Image"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["Image"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K3 ["Material"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["Material"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K4 ["MultiSelection"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["MultiSelection"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K5 ["PlaneLock"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["PlaneLock"]
  GETIMPORT R1 K9 [require]
  GETIMPORT R3 K11 [script]
  GETTABLEKS R2 R3 K6 ["Upgrade"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["Upgrade"]
  RETURN R0 1
