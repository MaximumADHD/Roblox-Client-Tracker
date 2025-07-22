MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 3
  DUPTABLE R1 K2 [{"CreatorType", "CreatorTargetId"}]
  LOADK R2 K3 ["User"]
  SETTABLEKS R2 R1 K0 ["CreatorType"]
  LOADK R2 K4 [998796]
  SETTABLEKS R2 R1 K1 ["CreatorTargetId"]
  DUPTABLE R2 K2 [{"CreatorType", "CreatorTargetId"}]
  LOADK R3 K5 ["Group"]
  SETTABLEKS R3 R2 K0 ["CreatorType"]
  LOADK R3 K6 [33728020]
  SETTABLEKS R3 R2 K1 ["CreatorTargetId"]
  DUPTABLE R3 K2 [{"CreatorType", "CreatorTargetId"}]
  LOADK R4 K3 ["User"]
  SETTABLEKS R4 R3 K0 ["CreatorType"]
  LOADK R4 K7 [5687038647]
  SETTABLEKS R4 R3 K1 ["CreatorTargetId"]
  SETLIST R0 R1 3 [1]
  RETURN R0 1
