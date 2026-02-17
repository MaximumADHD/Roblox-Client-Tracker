MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Small", "Medium"}]
  LOADK R1 K0 ["Small"]
  SETTABLEKS R1 R0 K0 ["Small"]
  LOADK R1 K1 ["Medium"]
  SETTABLEKS R1 R0 K1 ["Medium"]
  RETURN R0 1
