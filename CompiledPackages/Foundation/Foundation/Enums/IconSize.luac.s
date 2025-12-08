MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K6 [{"XSmall", "Small", "Medium", "Large", "XLarge", "XXLarge"}]
  LOADK R1 K0 ["XSmall"]
  SETTABLEKS R1 R0 K0 ["XSmall"]
  LOADK R1 K1 ["Small"]
  SETTABLEKS R1 R0 K1 ["Small"]
  LOADK R1 K2 ["Medium"]
  SETTABLEKS R1 R0 K2 ["Medium"]
  LOADK R1 K3 ["Large"]
  SETTABLEKS R1 R0 K3 ["Large"]
  LOADK R1 K4 ["XLarge"]
  SETTABLEKS R1 R0 K4 ["XLarge"]
  LOADK R1 K5 ["XXLarge"]
  SETTABLEKS R1 R0 K5 ["XXLarge"]
  RETURN R0 1
