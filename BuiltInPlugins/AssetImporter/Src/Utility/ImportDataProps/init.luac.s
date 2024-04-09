MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K7 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K8 ["Util"]
  GETTABLEKS R1 R2 K9 ["strict"]
  GETIMPORT R2 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K10 ["GroupProps"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K11 ["MeshProps"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K12 ["RootProps"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["MaterialProps"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K14 ["JointProps"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K15 ["BaseProps"]
  CALL R7 1 1
  MOVE R8 R1
  DUPTABLE R9 K16 [{"GroupProps", "MeshProps", "RootProps", "MaterialProps", "JointProps", "BaseProps"}]
  SETTABLEKS R2 R9 K10 ["GroupProps"]
  SETTABLEKS R3 R9 K11 ["MeshProps"]
  SETTABLEKS R4 R9 K12 ["RootProps"]
  SETTABLEKS R5 R9 K13 ["MaterialProps"]
  SETTABLEKS R6 R9 K14 ["JointProps"]
  SETTABLEKS R7 R9 K15 ["BaseProps"]
  CALL R8 1 1
  RETURN R8 1
