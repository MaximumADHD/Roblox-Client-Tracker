MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"displayName", "testMatch", "testTimeout"}]
  LOADK R1 K4 ["StyleEditor"]
  SETTABLEKS R1 R0 K0 ["displayName"]
  NEWTABLE R1 0 1
  LOADK R2 K5 ["**/*.spec"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["testMatch"]
  LOADK R1 K6 [60000]
  SETTABLEKS R1 R0 K2 ["testTimeout"]
  RETURN R0 1
