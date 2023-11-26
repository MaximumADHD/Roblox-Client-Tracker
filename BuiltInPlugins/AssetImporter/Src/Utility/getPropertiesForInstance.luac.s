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
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["ImportDataProps"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["RootProps"]
  GETTABLEKS R4 R2 K9 ["MeshProps"]
  GETTABLEKS R5 R2 K10 ["MaterialProps"]
  GETTABLEKS R6 R2 K11 ["GroupProps"]
  GETTABLEKS R7 R2 K12 ["JointProps"]
  GETTABLEKS R8 R2 K13 ["BaseProps"]
  DUPTABLE R9 K21 [{"RootImportData", "MeshImportData", "MaterialImportData", "GroupImportData", "JointImportData", "AnimationImportData", "FacsImportData"}]
  SETTABLEKS R3 R9 K14 ["RootImportData"]
  SETTABLEKS R4 R9 K15 ["MeshImportData"]
  SETTABLEKS R5 R9 K16 ["MaterialImportData"]
  SETTABLEKS R6 R9 K17 ["GroupImportData"]
  SETTABLEKS R7 R9 K18 ["JointImportData"]
  SETTABLEKS R8 R9 K19 ["AnimationImportData"]
  SETTABLEKS R8 R9 K20 ["FacsImportData"]
  DUPCLOSURE R10 K22 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R8
  RETURN R10 1
