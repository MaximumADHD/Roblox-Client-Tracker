MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"pending", "success", "error"}]
  LOADK R1 K0 ["pending"]
  SETTABLEKS R1 R0 K0 ["pending"]
  LOADK R1 K1 ["success"]
  SETTABLEKS R1 R0 K1 ["success"]
  LOADK R1 K2 ["error"]
  SETTABLEKS R1 R0 K2 ["error"]
  SETGLOBAL R0 K4 ["ValidationStatus"]
  GETGLOBAL R0 K4 ["ValidationStatus"]
  RETURN R0 1
