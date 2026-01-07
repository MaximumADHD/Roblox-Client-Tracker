MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"createGroupMotor", "createSingleMotor", "spring", "instant"}]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K0 ["createGroupMotor"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["createGroupMotor"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K1 ["createSingleMotor"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["createSingleMotor"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K2 ["spring"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["spring"]
  GETIMPORT R1 K6 [require]
  GETIMPORT R3 K8 [script]
  GETTABLEKS R2 R3 K3 ["instant"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["instant"]
  RETURN R0 1
