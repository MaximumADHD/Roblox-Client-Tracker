MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"getUnique", "getAll", "getAny"}]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K0 ["getUnique"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["getUnique"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K1 ["getAll"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["getAll"]
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K7 [script]
  GETTABLEKS R2 R3 K2 ["getAny"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["getAny"]
  RETURN R0 1
