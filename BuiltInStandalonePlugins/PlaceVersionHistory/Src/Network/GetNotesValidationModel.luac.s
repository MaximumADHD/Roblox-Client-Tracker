MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceVersionHistory"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["t"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["interface"]
  DUPTABLE R3 K11 [{"isValid", "validatedText"}]
  GETTABLEKS R4 R1 K12 ["boolean"]
  SETTABLEKS R4 R3 K9 ["isValid"]
  GETTABLEKS R4 R1 K13 ["string"]
  SETTABLEKS R4 R3 K10 ["validatedText"]
  CALL R2 1 1
  DUPTABLE R3 K15 [{"validate"}]
  SETTABLEKS R2 R3 K14 ["validate"]
  RETURN R3 1
