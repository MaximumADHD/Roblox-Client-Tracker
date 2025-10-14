PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["ValidateEditableMeshOverlappingVertices"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  GETTABLEKS R3 R1 K2 ["isServer"]
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  MOVE R6 R1
  CALL R4 2 2
  JUMPIF R4 [+35]
  JUMPIFEQKNIL R3 [+11]
  JUMPIFNOT R3 [+9]
  GETIMPORT R6 K4 [error]
  GETIMPORT R7 K7 [string.format]
  LOADK R8 K8 ["Failed to execute overlapping mesh vertex check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R9 R0 K9 ["fullName"]
  CALL R7 2 -1
  CALL R6 -1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["reportFailure"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["ErrorType"]
  GETTABLEKS R7 R8 K12 ["validateOverlappingVertices_FailedToExecute"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K7 [string.format]
  LOADK R9 K8 ["Failed to execute overlapping mesh vertex check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R10 R0 K9 ["fullName"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  JUMPIF R5 [+23]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K10 ["reportFailure"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K11 ["ErrorType"]
  GETTABLEKS R7 R8 K13 ["validateOverlappingVertices_OverlappingVertices"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K7 [string.format]
  LOADK R9 K14 ["Detected two or more vertices in model mesh '%s' sharing near identical positions. You need to position vertices further apart from each other."]
  GETTABLEKS R10 R0 K9 ["fullName"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["recordScriptTime"]
  GETIMPORT R8 K17 [script]
  GETTABLEKS R7 R8 K18 ["Name"]
  MOVE R8 R2
  MOVE R9 R1
  CALL R6 3 0
  LOADB R6 1
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["util"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["util"]
  GETTABLEKS R4 R5 K11 ["pcallDeferred"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R1 K12 ["Analytics"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R4
  RETURN R5 1
