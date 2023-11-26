MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Value", "DataType"}]
  LOADK R1 K3 ["ValueColumn"]
  SETTABLEKS R1 R0 K0 ["Value"]
  LOADK R1 K4 ["DataTypeColumn"]
  SETTABLEKS R1 R0 K1 ["DataType"]
  RETURN R0 1
