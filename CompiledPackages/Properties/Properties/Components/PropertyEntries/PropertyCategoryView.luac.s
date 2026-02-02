PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"categoryName", "layoutOrder"}]
  GETTABLEKS R5 R0 K4 ["category"]
  GETTABLEKS R4 R5 K1 ["categoryName"]
  SETTABLEKS R4 R3 K1 ["categoryName"]
  GETTABLEKS R4 R0 K2 ["layoutOrder"]
  SETTABLEKS R4 R3 K2 ["layoutOrder"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K8 [{"labelWidthBinding", "session", "propertiesInOrder"}]
  GETTABLEKS R7 R0 K5 ["labelWidthBinding"]
  SETTABLEKS R7 R6 K5 ["labelWidthBinding"]
  GETTABLEKS R7 R0 K6 ["session"]
  SETTABLEKS R7 R6 K6 ["session"]
  GETTABLEKS R8 R0 K4 ["category"]
  GETTABLEKS R7 R8 K7 ["propertiesInOrder"]
  SETTABLEKS R7 R6 K7 ["propertiesInOrder"]
  CALL R4 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["CategoryView"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Components"]
  GETTABLEKS R4 R5 K9 ["PropertyEntries"]
  GETTABLEKS R3 R4 K10 ["PropertyList"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Parent"]
  GETTABLEKS R4 R5 K12 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K13 ["RpcTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K7 ["Util"]
  GETTABLEKS R6 R7 K14 ["categorizeProperties"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R6 1
