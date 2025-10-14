MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K2 [{"Small", "Large"}]
  LOADK R1 K0 ["Small"]
  SETTABLEKS R1 R0 K0 ["Small"]
  LOADK R1 K1 ["Large"]
  SETTABLEKS R1 R0 K1 ["Large"]
  RETURN R0 1
