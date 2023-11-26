MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["Util"]
  GETTABLEKS R1 R2 K8 ["strict"]
  GETIMPORT R2 K4 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K9 ["GroupProps"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K10 ["MeshProps"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["RootProps"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["MaterialProps"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K13 ["JointProps"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K14 ["BaseProps"]
  CALL R7 1 1
  MOVE R8 R1
  DUPTABLE R9 K15 [{"GroupProps", "MeshProps", "RootProps", "MaterialProps", "JointProps", "BaseProps"}]
  SETTABLEKS R2 R9 K9 ["GroupProps"]
  SETTABLEKS R3 R9 K10 ["MeshProps"]
  SETTABLEKS R4 R9 K11 ["RootProps"]
  SETTABLEKS R5 R9 K12 ["MaterialProps"]
  SETTABLEKS R6 R9 K13 ["JointProps"]
  SETTABLEKS R7 R9 K14 ["BaseProps"]
  CALL R8 1 1
  RETURN R8 1
