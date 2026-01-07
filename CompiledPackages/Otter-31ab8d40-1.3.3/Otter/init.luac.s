MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["createGroupMotor"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["createSingleMotor"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["ease"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K7 ["spring"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K8 ["instant"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K9 ["types"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K10 ["AnimationStepSignal"]
  CALL R6 1 1
  DUPTABLE R7 K12 [{"createGroupMotor", "createSingleMotor", "ease", "spring", "instant", "__devAnimationStepSignal"}]
  SETTABLEKS R0 R7 K4 ["createGroupMotor"]
  SETTABLEKS R1 R7 K5 ["createSingleMotor"]
  SETTABLEKS R2 R7 K6 ["ease"]
  SETTABLEKS R3 R7 K7 ["spring"]
  SETTABLEKS R4 R7 K8 ["instant"]
  SETTABLEKS R6 R7 K11 ["__devAnimationStepSignal"]
  RETURN R7 1
