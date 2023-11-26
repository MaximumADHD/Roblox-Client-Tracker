MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["R6ScriptErrorUrl"]
  LOADK R4 K3 ["https://create.roblox.com/docs/art/avatar"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K5 ["R6Error"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["R6ScriptWarningUrl"]
  LOADK R4 K3 ["https://create.roblox.com/docs/art/avatar"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K7 ["R6Warning"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K8 ["R6ToR15LearnMoreUrl"]
  LOADK R4 K3 ["https://create.roblox.com/docs/art/avatar"]
  NAMECALL R1 R1 K4 ["DefineFastString"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K9 ["LearnMore"]
  RETURN R0 1
