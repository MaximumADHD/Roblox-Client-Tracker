MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Local", "Upvalue", "Global"}]
  LOADK R1 K0 ["Local"]
  SETTABLEKS R1 R0 K0 ["Local"]
  LOADK R1 K1 ["Upvalue"]
  SETTABLEKS R1 R0 K1 ["Upvalue"]
  LOADK R1 K2 ["Global"]
  SETTABLEKS R1 R0 K2 ["Global"]
  RETURN R0 1
