MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K5 [{"FitFrameHorizontal", "FitFrameOnAxis", "FitFrameVertical", "FitTextLabel", "Rect"}]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K0 ["FitFrameHorizontal"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["FitFrameHorizontal"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K1 ["FitFrameOnAxis"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["FitFrameOnAxis"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K2 ["FitFrameVertical"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["FitFrameVertical"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K3 ["FitTextLabel"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["FitTextLabel"]
  GETIMPORT R1 K7 [require]
  GETIMPORT R3 K9 [script]
  GETTABLEKS R2 R3 K4 ["Rect"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["Rect"]
  RETURN R0 1
