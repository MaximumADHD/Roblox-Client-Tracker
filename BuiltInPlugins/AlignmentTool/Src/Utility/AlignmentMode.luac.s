MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Center", "Min", "Max"}]
  LOADK R1 K0 ["Center"]
  SETTABLEKS R1 R0 K0 ["Center"]
  LOADK R1 K1 ["Min"]
  SETTABLEKS R1 R0 K1 ["Min"]
  LOADK R1 K2 ["Max"]
  SETTABLEKS R1 R0 K2 ["Max"]
  RETURN R0 1
