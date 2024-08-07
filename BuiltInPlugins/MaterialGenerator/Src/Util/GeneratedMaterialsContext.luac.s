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
  DUPTABLE R5 K22 [{"promptGroups", "materialStates", "addMaterials", "removeMaterial", "removeAllMaterials", "hasBaseMaterial", "markHasBaseMaterial", "getMaterialStatus", "setMaterialStatus", "getMaterialIdentifiers"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["promptGroups"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K13 ["materialStates"]
  MOVE R6 R3
  LOADK R7 K14 ["addMaterials"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K14 ["addMaterials"]
  MOVE R6 R3
  LOADK R7 K15 ["removeMaterial"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K15 ["removeMaterial"]
  MOVE R6 R3
  LOADK R7 K16 ["removeAllMaterials"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K16 ["removeAllMaterials"]
  MOVE R6 R3
  LOADK R7 K17 ["hasBaseMaterial"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K17 ["hasBaseMaterial"]
  MOVE R6 R3
  LOADK R7 K18 ["markHasBaseMaterial"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K18 ["markHasBaseMaterial"]
  MOVE R6 R3
  LOADK R7 K19 ["getMaterialStatus"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K19 ["getMaterialStatus"]
  MOVE R6 R3
  LOADK R7 K20 ["setMaterialStatus"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K20 ["setMaterialStatus"]
  MOVE R6 R3
  LOADK R7 K21 ["getMaterialIdentifiers"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K21 ["getMaterialIdentifiers"]
  GETTABLEKS R6 R1 K23 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
