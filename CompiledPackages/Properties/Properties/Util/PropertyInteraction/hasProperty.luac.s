PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K0 ["metaType"]
  GETTABLE R2 R3 R4
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Interactors"]
  GETTABLEKS R2 R3 K8 ["AttributeInteractor"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K6 ["Parent"]
  GETTABLEKS R4 R5 K7 ["Interactors"]
  GETTABLEKS R3 R4 K9 ["PropertyInteractor"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K10 ["PropertyTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K6 ["Parent"]
  GETTABLEKS R6 R7 K7 ["Interactors"]
  GETTABLEKS R5 R6 K11 ["TagInteractor"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K6 ["Parent"]
  GETTABLEKS R7 R8 K7 ["Interactors"]
  GETTABLEKS R6 R7 K12 ["VirtualInteractor"]
  CALL R5 1 1
  DUPTABLE R6 K17 [{"Property", "Attribute", "Tag", "Virtual"}]
  GETTABLEKS R7 R2 K18 ["has"]
  SETTABLEKS R7 R6 K13 ["Property"]
  GETTABLEKS R7 R1 K18 ["has"]
  SETTABLEKS R7 R6 K14 ["Attribute"]
  GETTABLEKS R7 R4 K18 ["has"]
  SETTABLEKS R7 R6 K15 ["Tag"]
  GETTABLEKS R7 R5 K18 ["has"]
  SETTABLEKS R7 R6 K16 ["Virtual"]
  DUPCLOSURE R7 K19 [PROTO_0]
  CAPTURE VAL R6
  RETURN R7 1
