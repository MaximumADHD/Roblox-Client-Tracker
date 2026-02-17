MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPTABLE R1 K3 [{"Users", "Groups", "Universe"}]
  LOADK R2 K4 ["users"]
  SETTABLEKS R2 R1 K0 ["Users"]
  LOADK R2 K5 ["groups"]
  SETTABLEKS R2 R1 K1 ["Groups"]
  LOADK R2 K6 ["universe"]
  SETTABLEKS R2 R1 K2 ["Universe"]
  SETTABLEKS R1 R0 K7 ["AccountType"]
  RETURN R0 1
