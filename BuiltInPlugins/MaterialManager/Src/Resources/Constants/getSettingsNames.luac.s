PROTO_0:
  GETUPVAL R0 0
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K14 [{"GeneralSettings", "TextureSettings", "OverrideSettings", "TilingSettings", "PhysicalSettings", "TerrainDetailsSettings", "TerrainDetailsEditor"}]
  LOADK R3 K7 ["GeneralSettings"]
  SETTABLEKS R3 R2 K7 ["GeneralSettings"]
  LOADK R3 K8 ["TextureSettings"]
  SETTABLEKS R3 R2 K8 ["TextureSettings"]
  LOADK R3 K9 ["OverrideSettings"]
  SETTABLEKS R3 R2 K9 ["OverrideSettings"]
  LOADK R3 K10 ["TilingSettings"]
  SETTABLEKS R3 R2 K10 ["TilingSettings"]
  LOADK R3 K11 ["PhysicalSettings"]
  SETTABLEKS R3 R2 K11 ["PhysicalSettings"]
  LOADK R3 K12 ["TerrainDetailsSettings"]
  SETTABLEKS R3 R2 K12 ["TerrainDetailsSettings"]
  DUPTABLE R3 K18 [{"Top", "Side", "Bottom"}]
  LOADK R4 K19 ["TerrainDetailsTop"]
  SETTABLEKS R4 R3 K15 ["Top"]
  LOADK R4 K20 ["TerrainDetailsSide"]
  SETTABLEKS R4 R3 K16 ["Side"]
  LOADK R4 K21 ["TerrainDetailsBottom"]
  SETTABLEKS R4 R3 K17 ["Bottom"]
  SETTABLEKS R3 R2 K13 ["TerrainDetailsEditor"]
  DUPCLOSURE R3 K22 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
