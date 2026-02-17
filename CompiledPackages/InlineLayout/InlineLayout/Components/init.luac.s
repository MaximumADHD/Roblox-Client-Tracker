MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"InlineLayout", "InlineLayoutElements"}]
  GETIMPORT R1 K4 [require]
  GETIMPORT R3 K6 [script]
  GETTABLEKS R2 R3 K0 ["InlineLayout"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["InlineLayout"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R4 K6 [script]
  GETTABLEKS R3 R4 K0 ["InlineLayout"]
  GETTABLEKS R2 R3 K1 ["InlineLayoutElements"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["InlineLayoutElements"]
  RETURN R0 1
