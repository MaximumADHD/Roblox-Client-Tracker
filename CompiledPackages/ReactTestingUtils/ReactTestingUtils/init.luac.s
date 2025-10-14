MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["ReactUtils"]
  CALL R0 1 1
  DUPTABLE R1 K9 [{"waitForEvents", "renderTestHook", "stageHook"}]
  GETTABLEKS R2 R0 K6 ["waitForEvents"]
  SETTABLEKS R2 R1 K6 ["waitForEvents"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K7 ["renderTestHook"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K7 ["renderTestHook"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K8 ["stageHook"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K8 ["stageHook"]
  RETURN R1 1
