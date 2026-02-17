MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K4 [script]
  GETTABLEKS R1 R2 K2 ["AssertionError.global"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K5 ["AssertionError"]
  RETURN R1 1
