MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"displayName", "testMatch", "passWithNoTests"}]
  LOADK R1 K4 ["MultitouchEmulator"]
  SETTABLEKS R1 R0 K0 ["displayName"]
  NEWTABLE R1 0 1
  LOADK R2 K5 ["**/*.test"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K1 ["testMatch"]
  LOADB R1 1
  SETTABLEKS R1 R0 K2 ["passWithNoTests"]
  RETURN R0 1
