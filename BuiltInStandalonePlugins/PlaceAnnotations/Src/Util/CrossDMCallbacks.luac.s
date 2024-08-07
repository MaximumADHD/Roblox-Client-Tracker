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
  CALL R8 1 1
  SETTABLEKS R7 R8 K8 ["Parent"]
  SETTABLEKS R0 R8 K9 ["Name"]
  SETTABLEKS R1 R8 K10 ["AuthorId"]
  SETTABLEKS R2 R8 K11 ["CreationTimeUnix"]
  SETTABLEKS R3 R8 K12 ["LastModifiedTimeUnix"]
  SETTABLEKS R4 R8 K13 ["Contents"]
  JUMPIFNOT R5 [+5]
  LOADK R11 K14 ["AdorneeName"]
  MOVE R12 R5
  NAMECALL R9 R8 K15 ["SetAttribute"]
  CALL R9 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  SETTABLEKS R1 R2 K1 ["Resolved"]
  RETURN R0 0

PROTO_2:
  LOADK R3 K0 ["AnnotationInstances"]
  NAMECALL R1 R0 K1 ["FindFirstChild"]
  CALL R1 2 1
  LOADK R4 K2 ["CreateAnnotation"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R2 R0 K3 ["OnInvoke"]
  CALL R2 3 0
  LOADK R4 K4 ["ResolveAnnotation"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  NAMECALL R2 R0 K3 ["OnInvoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  SETTABLEKS R1 R2 K1 ["Resolved"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  MOVE R4 R0
  NAMECALL R2 R2 K0 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+10]
  GETIMPORT R3 K2 [error]
  LOADK R5 K3 ["Annotation %* not found."]
  MOVE R7 R2
  NAMECALL R5 R5 K4 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0
  GETIMPORT R3 K7 [Instance.new]
  LOADK R4 K8 ["WorkspaceAnnotation"]
  CALL R3 1 1
  SETTABLEKS R2 R3 K9 ["Parent"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K10 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K11 ["AuthorId"]
  GETIMPORT R5 K14 [DateTime.now]
  CALL R5 0 1
  GETTABLEKS R4 R5 K15 ["UnixTimestamp"]
  SETTABLEKS R4 R3 K16 ["CreationTimeUnix"]
  GETTABLEKS R4 R3 K16 ["CreationTimeUnix"]
  SETTABLEKS R4 R3 K17 ["LastModifiedTimeUnix"]
  SETTABLEKS R1 R3 K18 ["Contents"]
  GETUPVAL R4 2
  MOVE R6 R3
  NAMECALL R4 R4 K19 ["createAnnotation"]
  CALL R4 2 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K20 ["Edit"]
  GETTABLEKS R4 R5 K19 ["createAnnotation"]
  GETUPVAL R5 4
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnnotationsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["StudioService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R4 K1 [game]
  GETTABLEKS R3 R4 K5 ["CoreGui"]
  LOADK R5 K6 ["PlaceAnnotations"]
  NAMECALL R3 R3 K7 ["FindFirstChild"]
  CALL R3 2 1
  LOADK R6 K8 ["ResolveAnnotation"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  NAMECALL R4 R0 K9 ["OnInvoke"]
  CALL R4 3 0
  LOADK R6 K10 ["SubmitReply"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R4 R0 K9 ["OnInvoke"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PlaceAnnotations"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["CrossDMCommunication"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  DUPTABLE R3 K12 [{"registerStandaloneCallbacks", "registerEditCallbacks"}]
  DUPCLOSURE R4 K13 [PROTO_2]
  SETTABLEKS R4 R3 K10 ["registerStandaloneCallbacks"]
  DUPCLOSURE R4 K14 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K11 ["registerEditCallbacks"]
  RETURN R3 1
