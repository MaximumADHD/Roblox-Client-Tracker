MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"ExtrudeHandles", "MoveHandles", "RotateHandles"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["ExtrudeHandles"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["ExtrudeHandles"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["MoveHandles"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["MoveHandles"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["RotateHandles"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["RotateHandles"]
  RETURN R0 1
