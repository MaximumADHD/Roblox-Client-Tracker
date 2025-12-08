MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Small", "Medium", "Large", "XLarge"}]
  LOADK R1 K0 ["Small"]
  SETTABLEKS R1 R0 K0 ["Small"]
  LOADK R1 K1 ["Medium"]
  SETTABLEKS R1 R0 K1 ["Medium"]
  LOADK R1 K2 ["Large"]
  SETTABLEKS R1 R0 K2 ["Large"]
  LOADK R1 K3 ["XLarge"]
  SETTABLEKS R1 R0 K3 ["XLarge"]
  RETURN R0 1
