MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Symbol"]
  CALL R1 1 1
  DUPTABLE R2 K10 [{"Updating", "Success", "Error"}]
  GETTABLEKS R3 R1 K11 ["named"]
  LOADK R4 K7 ["Updating"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["Updating"]
  GETTABLEKS R3 R1 K11 ["named"]
  LOADK R4 K8 ["Success"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K8 ["Success"]
  GETTABLEKS R3 R1 K11 ["named"]
  LOADK R4 K9 ["Error"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["Error"]
  RETURN R2 1
