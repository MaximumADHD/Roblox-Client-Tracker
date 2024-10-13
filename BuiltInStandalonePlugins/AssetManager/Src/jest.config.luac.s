MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"testMatch", "testTimeout"}]
  NEWTABLE R1 0 2
  LOADK R2 K3 ["**/*.spec"]
  LOADK R3 K4 ["**/*.test"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K0 ["testMatch"]
  LOADN R1 16
  SETTABLEKS R1 R0 K1 ["testTimeout"]
  RETURN R0 1
