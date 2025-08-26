MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"displayName", "testMatch"}]
  LOADK R1 K3 ["AssetExport"]
  SETTABLEKS R1 R0 K0 ["displayName"]
  NEWTABLE R1 0 2
  LOADK R2 K4 ["**/*.spec"]
  LOADK R3 K5 ["**/*.test"]
  SETLIST R1 R2 2 [1]
  SETTABLEKS R1 R0 K1 ["testMatch"]
  RETURN R0 1
