PROTO_0:
  LOADK R3 K0 ["BeginAddAnnotation"]
  NAMECALL R1 R0 K1 ["Invoke"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R1 K0 ["Parent"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Workplace annotations must be the children of another annotation or an instance."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  LOADK R4 K4 ["CreateAnnotation"]
  GETTABLEKS R5 R1 K5 ["Name"]
  GETTABLEKS R6 R1 K6 ["AuthorId"]
  GETTABLEKS R7 R1 K7 ["CreationTimeUnix"]
  GETTABLEKS R8 R1 K8 ["LastModifiedTimeUnix"]
  GETTABLEKS R9 R1 K9 ["Contents"]
  GETTABLEKS R11 R1 K10 ["Adornee"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R11 R1 K10 ["Adornee"]
  GETTABLEKS R10 R11 K5 ["Name"]
  JUMP [+1]
  LOADNIL R10
  GETTABLEKS R12 R1 K0 ["Parent"]
  LOADK R14 K11 ["Annotation"]
  NAMECALL R12 R12 K12 ["IsA"]
  CALL R12 2 1
  JUMPIFNOT R12 [+5]
  GETTABLEKS R12 R1 K0 ["Parent"]
  GETTABLEKS R11 R12 K5 ["Name"]
  JUMP [+1]
  LOADNIL R11
  NAMECALL R2 R0 K13 ["Invoke"]
  CALL R2 9 0
  RETURN R0 0

PROTO_2:
  LOADK R5 K0 ["ResolveAnnotation"]
  GETTABLEKS R6 R1 K1 ["Name"]
  MOVE R7 R2
  NAMECALL R3 R0 K2 ["Invoke"]
  CALL R3 4 0
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
  NEWTABLE R2 1 0
  DUPCLOSURE R3 K8 [PROTO_0]
  SETTABLEKS R3 R2 K9 ["beginAddAnnotation"]
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K10 [PROTO_1]
  SETTABLEKS R4 R3 K11 ["createAnnotation"]
  DUPCLOSURE R4 K12 [PROTO_2]
  SETTABLEKS R4 R3 K13 ["setAnnotationResolved"]
  DUPTABLE R4 K16 [{"Standalone", "Edit"}]
  SETTABLEKS R2 R4 K14 ["Standalone"]
  SETTABLEKS R3 R4 K15 ["Edit"]
  RETURN R4 1
