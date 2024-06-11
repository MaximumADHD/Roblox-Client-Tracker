MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TeamCreateLink"]
  LOADK R3 K3 ["https://developer.roblox.com/articles/Team-Create"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["StudioGenreOverhaulPlaceholder"]
  LOADB R3 0
  NAMECALL R0 R0 K6 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["StudioGenreOverhaulExplainationLink"]
  LOADK R3 K8 ["https://devforum.roblox.com/t/testing-an-enhanced-discover-page-top-charts-and-new-sorts/2954676#genre-specific-sorts-4"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["StudioGenreOverhaulInfo"]
  LOADB R3 0
  NAMECALL R0 R0 K6 ["DefineFastFlag"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
