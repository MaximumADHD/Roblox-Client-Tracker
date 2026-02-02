MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Array", "Interface"}]
  LOADK R1 K0 ["Array"]
  SETTABLEKS R1 R0 K0 ["Array"]
  LOADK R1 K1 ["Interface"]
  SETTABLEKS R1 R0 K1 ["Interface"]
  DUPTABLE R1 K5 [{"T", "Luau"}]
  LOADK R2 K3 ["T"]
  SETTABLEKS R2 R1 K3 ["T"]
  LOADK R2 K4 ["Luau"]
  SETTABLEKS R2 R1 K4 ["Luau"]
  DUPTABLE R2 K8 [{"PropTypeQualifiers", "Typecheckers"}]
  SETTABLEKS R0 R2 K6 ["PropTypeQualifiers"]
  SETTABLEKS R1 R2 K7 ["Typecheckers"]
  RETURN R2 1
