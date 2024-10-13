MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["createUnimplemented"]
  CALL R3 1 1
  DUPTABLE R4 K16 [{"setStage", "stage", "setIsTextured", "isTextured"}]
  MOVE R5 R3
  LOADK R6 K12 ["setStage"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K12 ["setStage"]
  LOADK R5 K17 ["CheckBody"]
  SETTABLEKS R5 R4 K13 ["stage"]
  MOVE R5 R3
  LOADK R6 K14 ["setIsTextured"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["setIsTextured"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["isTextured"]
  GETTABLEKS R5 R1 K18 ["createContext"]
  MOVE R6 R4
  CALL R5 1 -1
  RETURN R5 -1
