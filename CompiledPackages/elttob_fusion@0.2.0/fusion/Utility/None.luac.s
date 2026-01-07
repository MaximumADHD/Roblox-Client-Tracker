MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K8 [{"type", "name"}]
  LOADK R3 K9 ["Symbol"]
  SETTABLEKS R3 R2 K6 ["type"]
  LOADK R3 K10 ["None"]
  SETTABLEKS R3 R2 K7 ["name"]
  RETURN R2 1
