MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPTABLE R1 K3 [{"Home", "Settings", "About"}]
  LOADK R2 K0 ["Home"]
  SETTABLEKS R2 R1 K0 ["Home"]
  LOADK R2 K1 ["Settings"]
  SETTABLEKS R2 R1 K1 ["Settings"]
  LOADK R2 K2 ["About"]
  SETTABLEKS R2 R1 K2 ["About"]
  SETTABLEKS R1 R0 K4 ["Screen"]
  RETURN R0 1
