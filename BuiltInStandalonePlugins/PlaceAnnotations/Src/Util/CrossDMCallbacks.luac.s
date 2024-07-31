PROTO_0:
  GETUPVAL R7 0
  JUMPIFNOT R6 [+14]
  GETUPVAL R8 1
  MOVE R10 R6
  LOADB R11 1
  NAMECALL R8 R8 K0 ["FindFirstChild"]
  CALL R8 3 1
  MOVE R7 R8
  FASTCALL2K ASSERT R7 K1 [+5]
  MOVE R9 R7
  LOADK R10 K1 ["Parent annotation not found."]
  GETIMPORT R8 K3 [assert]
  CALL R8 2 0
  GETIMPORT R8 K6 [Instance.new]
  LOADK R9 K7 ["Annotation"]
  MOVE R10 R7
  CALL R8 2 1
  SETTABLEKS R0 R8 K8 ["Name"]
  SETTABLEKS R1 R8 K9 ["AuthorId"]
  SETTABLEKS R2 R8 K10 ["CreationTimeUnix"]
  SETTABLEKS R3 R8 K11 ["LastModifiedTimeUnix"]
  SETTABLEKS R4 R8 K12 ["Contents"]
  JUMPIFNOT R5 [+5]
  LOADK R11 K13 ["AdorneeName"]
  MOVE R12 R5
  NAMECALL R9 R8 K14 ["SetAttribute"]
  CALL R9 3 0
  RETURN R0 0

PROTO_1:
  LOADK R3 K0 ["AnnotationInstances"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  LOADK R4 K2 ["CreateAnnotation"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R2 R0 K3 ["OnInvoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPTABLE R2 K10 [{"registerStandaloneCallbacks", "registerEditCallbacks"}]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K8 ["registerStandaloneCallbacks"]
  DUPCLOSURE R3 K12 [PROTO_2]
  SETTABLEKS R3 R2 K9 ["registerEditCallbacks"]
  RETURN R2 1
