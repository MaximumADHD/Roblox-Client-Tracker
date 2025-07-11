PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["MultipleDocumentInterfaceInstance"]
  GETTABLEKS R2 R1 K1 ["FocusedDataModelSession"]
  JUMPIF R2 [+2]
  LOADB R3 0
  RETURN R3 1
  GETTABLEKS R4 R2 K2 ["CurrentDataModelType"]
  GETIMPORT R5 K6 [Enum.StudioDataModelType.PlayClient]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K9 [plugin]
  JUMPIF R2 [+6]
  GETIMPORT R2 K1 [script]
  LOADK R4 K10 ["Plugin"]
  NAMECALL R2 R2 K11 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  DUPCLOSURE R3 K12 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
