PROTO_0:
  LOADK R3 K0 ["BaseImportData"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+14]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K2 ["ClassName"]
  GETTABLE R1 R2 R3
  JUMPIF R1 [+8]
  GETIMPORT R2 K4 [warn]
  LOADK R3 K5 ["Unexpected instance type deriving from BaseImportData: "]
  GETTABLEKS R4 R0 K2 ["ClassName"]
  CALL R2 2 0
  GETUPVAL R2 1
  RETURN R2 1
  RETURN R1 1
  GETIMPORT R1 K7 [error]
  LOADK R2 K8 ["Unexpected instance type: "]
  GETTABLEKS R3 R0 K2 ["ClassName"]
  CALL R1 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["ImportDataProps"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["RootProps"]
  GETTABLEKS R4 R2 K11 ["MeshProps"]
  GETTABLEKS R5 R2 K12 ["MaterialProps"]
  GETTABLEKS R6 R2 K13 ["GroupProps"]
  GETTABLEKS R7 R2 K14 ["JointProps"]
  GETTABLEKS R8 R2 K15 ["BaseProps"]
  DUPTABLE R9 K23 [{"RootImportData", "MeshImportData", "MaterialImportData", "GroupImportData", "JointImportData", "AnimationImportData", "FacsImportData"}]
  SETTABLEKS R3 R9 K16 ["RootImportData"]
  SETTABLEKS R4 R9 K17 ["MeshImportData"]
  SETTABLEKS R5 R9 K18 ["MaterialImportData"]
  SETTABLEKS R6 R9 K19 ["GroupImportData"]
  SETTABLEKS R7 R9 K20 ["JointImportData"]
  SETTABLEKS R8 R9 K21 ["AnimationImportData"]
  SETTABLEKS R8 R9 K22 ["FacsImportData"]
  DUPCLOSURE R10 K24 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R10 1
