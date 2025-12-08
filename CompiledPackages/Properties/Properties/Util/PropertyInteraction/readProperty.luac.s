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
  GETTABLEKS R6 R0 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["PropertyInteraction"]
  GETTABLEKS R4 R5 K7 ["Interactors"]
  GETTABLEKS R3 R4 K11 ["InteractorTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K6 ["Parent"]
  GETTABLEKS R5 R6 K7 ["Interactors"]
  GETTABLEKS R4 R5 K12 ["PropertyInteractor"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K13 ["PropertyTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K6 ["Parent"]
  GETTABLEKS R7 R8 K7 ["Interactors"]
  GETTABLEKS R6 R7 K14 ["TagInteractor"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K6 ["Parent"]
  GETTABLEKS R8 R9 K7 ["Interactors"]
  GETTABLEKS R7 R8 K15 ["VirtualInteractor"]
  CALL R6 1 1
  DUPTABLE R7 K20 [{"Property", "Attribute", "Tag", "Virtual"}]
  GETTABLEKS R8 R3 K21 ["read"]
  SETTABLEKS R8 R7 K16 ["Property"]
  GETTABLEKS R8 R1 K21 ["read"]
  SETTABLEKS R8 R7 K17 ["Attribute"]
  GETTABLEKS R8 R5 K21 ["read"]
  SETTABLEKS R8 R7 K18 ["Tag"]
  GETTABLEKS R8 R6 K21 ["read"]
  SETTABLEKS R8 R7 K19 ["Virtual"]
  DUPCLOSURE R8 K22 [PROTO_0]
  CAPTURE VAL R7
  RETURN R8 1
