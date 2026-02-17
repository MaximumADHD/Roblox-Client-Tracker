MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"equalObjects", "func", "isEmpty"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["equalObjects"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["equalObjects"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["func"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["func"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["isEmpty"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["isEmpty"]
  RETURN R0 1
