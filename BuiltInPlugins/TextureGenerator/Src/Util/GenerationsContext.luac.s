MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["createUnimplemented"]
  CALL R2 1 1
  DUPTABLE R3 K21 [{"generations", "updateGeneration", "modelToGenerations", "updateModelToGenerations", "selected", "setSelected", "quota", "setQuota", "total", "setTotal"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K11 ["generations"]
  MOVE R4 R2
  LOADK R5 K12 ["updateGeneration"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K12 ["updateGeneration"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K13 ["modelToGenerations"]
  MOVE R4 R2
  LOADK R5 K14 ["updateModelToGenerations"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K14 ["updateModelToGenerations"]
  LOADNIL R4
  SETTABLEKS R4 R3 K15 ["selected"]
  MOVE R4 R2
  LOADK R5 K16 ["setSelected"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K16 ["setSelected"]
  LOADN R4 0
  SETTABLEKS R4 R3 K17 ["quota"]
  MOVE R4 R2
  LOADK R5 K18 ["setQuota"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K18 ["setQuota"]
  LOADN R4 0
  SETTABLEKS R4 R3 K19 ["total"]
  MOVE R4 R2
  LOADK R5 K20 ["setTotal"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["setTotal"]
  GETTABLEKS R4 R1 K22 ["createContext"]
  MOVE R5 R3
  CALL R4 1 1
  RETURN R4 1
