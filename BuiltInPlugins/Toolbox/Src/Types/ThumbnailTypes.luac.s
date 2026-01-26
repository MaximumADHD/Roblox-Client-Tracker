MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"Asset", "AvatarHeadShot", "GroupIcon"}]
  LOADK R1 K0 ["Asset"]
  SETTABLEKS R1 R0 K0 ["Asset"]
  LOADK R1 K1 ["AvatarHeadShot"]
  SETTABLEKS R1 R0 K1 ["AvatarHeadShot"]
  LOADK R1 K2 ["GroupIcon"]
  SETTABLEKS R1 R0 K2 ["GroupIcon"]
  DUPTABLE R1 K5 [{"Icon"}]
  SETTABLEKS R0 R1 K4 ["Icon"]
  RETURN R1 1
