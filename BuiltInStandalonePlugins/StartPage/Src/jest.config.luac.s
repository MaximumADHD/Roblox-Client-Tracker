MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"displayName", "testMatch"}]
  LOADK R1 K3 ["StartPage"]
  SETTABLEKS R1 R0 K0 ["displayName"]
  NEWTABLE R1 0 1
  LOADK R2 K4 ["**/*.test"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["testMatch"]
  RETURN R0 1
