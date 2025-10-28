MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R2 K3 [script]
  GETTABLEKS R1 R2 K4 ["ImagesTypes"]
  CALL R0 1 1
  DUPTABLE R1 K7 [{"getResolutionScale", "Images"}]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["getResolutionScale"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K5 ["getResolutionScale"]
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K6 ["Images"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K6 ["Images"]
  RETURN R1 1
