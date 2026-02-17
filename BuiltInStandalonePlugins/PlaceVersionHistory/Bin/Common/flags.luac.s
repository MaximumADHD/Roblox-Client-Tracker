MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnablePlaceVersionHistory"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["PVHMaxTitleChars"]
  LOADN R3 50
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["PVHMaxDescriptionChars"]
  LOADN R3 232
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["PVHMaxDescriptionLines"]
  LOADN R3 25
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["PVHMaxContributors"]
  LOADN R3 100
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["PVHMaxPlaces"]
  LOADN R3 100
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["PVHFirstPageDelayMs"]
  LOADN R3 200
  NAMECALL R0 R0 K5 ["DefineFastInt"]
  CALL R0 3 0
  DUPTABLE R0 K18 [{"FFlagEnablePlaceVersionHistory", "FIntPVHMaxTitleChars", "FIntPVHMaxDescriptionChars", "FIntPVHMaxDescriptionLines", "FIntPVHMaxContributors", "FIntPVHMaxPlaces", "FIntPVHFirstPageDelayMs"}]
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["EnablePlaceVersionHistory"]
  NAMECALL R1 R1 K19 ["GetFastFlag"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["FFlagEnablePlaceVersionHistory"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["PVHMaxTitleChars"]
  NAMECALL R1 R1 K20 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K12 ["FIntPVHMaxTitleChars"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K6 ["PVHMaxDescriptionChars"]
  NAMECALL R1 R1 K20 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K13 ["FIntPVHMaxDescriptionChars"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K7 ["PVHMaxDescriptionLines"]
  NAMECALL R1 R1 K20 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K14 ["FIntPVHMaxDescriptionLines"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K8 ["PVHMaxContributors"]
  NAMECALL R1 R1 K20 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K15 ["FIntPVHMaxContributors"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K9 ["PVHMaxPlaces"]
  NAMECALL R1 R1 K20 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K16 ["FIntPVHMaxPlaces"]
  GETIMPORT R1 K1 [game]
  LOADK R3 K10 ["PVHFirstPageDelayMs"]
  NAMECALL R1 R1 K20 ["GetFastInt"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K17 ["FIntPVHFirstPageDelayMs"]
  RETURN R0 1
