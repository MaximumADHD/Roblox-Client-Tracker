MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Enums"]
  GETTABLEKS R5 R6 K11 ["InputSize"]
  CALL R4 1 1
  GETTABLEKS R5 R2 K12 ["createContext"]
  DUPTABLE R6 K17 [{"onActivated", "size", "hasLeading", "setHasLeading"}]
  LOADNIL R7
  SETTABLEKS R7 R6 K13 ["onActivated"]
  GETTABLEKS R7 R4 K18 ["Medium"]
  SETTABLEKS R7 R6 K14 ["size"]
  LOADNIL R7
  SETTABLEKS R7 R6 K15 ["hasLeading"]
  LOADNIL R7
  SETTABLEKS R7 R6 K16 ["setHasLeading"]
  CALL R5 1 1
  RETURN R5 1
