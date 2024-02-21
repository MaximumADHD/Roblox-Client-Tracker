MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactUtils"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["createUnimplemented"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  DUPTABLE R5 K15 [{"selectedMaterial", "setSelectedMaterial", "applySelectedMaterial"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K12 ["selectedMaterial"]
  MOVE R6 R3
  LOADK R7 K13 ["setSelectedMaterial"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K13 ["setSelectedMaterial"]
  MOVE R6 R3
  LOADK R7 K14 ["applySelectedMaterial"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["applySelectedMaterial"]
  GETTABLEKS R6 R1 K16 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
