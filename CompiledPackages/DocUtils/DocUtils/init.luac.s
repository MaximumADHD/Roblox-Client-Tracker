MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["Types"]
  CALL R0 1 1
  DUPTABLE R1 K8 [{"DocParser", "PropParser", "Enums"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["DocParser"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["DocParser"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["PropParser"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["PropParser"]
  DUPTABLE R2 K11 [{"PropTypeQualifiers", "Typecheckers"}]
  GETTABLEKS R3 R0 K9 ["PropTypeQualifiers"]
  SETTABLEKS R3 R2 K9 ["PropTypeQualifiers"]
  GETTABLEKS R3 R0 K10 ["Typecheckers"]
  SETTABLEKS R3 R2 K10 ["Typecheckers"]
  SETTABLEKS R2 R1 K7 ["Enums"]
  RETURN R1 1
