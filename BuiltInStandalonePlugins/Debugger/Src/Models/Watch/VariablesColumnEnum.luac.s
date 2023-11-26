MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Scope", "Value", "DataType"}]
  LOADK R1 K4 ["ScopeColumn"]
  SETTABLEKS R1 R0 K0 ["Scope"]
  LOADK R1 K5 ["ValueColumn"]
  SETTABLEKS R1 R0 K1 ["Value"]
  LOADK R1 K6 ["DataTypeColumn"]
  SETTABLEKS R1 R0 K2 ["DataType"]
  RETURN R0 1
