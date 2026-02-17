PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K1 ["CalculateEditableMeshTotalSurfaceArea"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  GETTABLEKS R4 R2 K2 ["isServer"]
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  MOVE R7 R2
  CALL R5 2 2
  JUMPIF R5 [+31]
  GETIMPORT R7 K5 [string.format]
  LOADK R8 K6 ["Failed to execute max total surface area check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R9 R0 K7 ["fullName"]
  CALL R7 2 1
  JUMPIFEQKNIL R4 [+6]
  JUMPIFNOT R4 [+4]
  GETIMPORT R8 K9 [error]
  MOVE R9 R7
  CALL R8 1 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["reportFailure"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["ErrorType"]
  GETTABLEKS R9 R10 K12 ["validateTotalSurfaceArea_FailedToExecute"]
  LOADNIL R10
  MOVE R11 R2
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOTLT R7 R6 [+27]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["reportFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["ErrorType"]
  GETTABLEKS R8 R9 K13 ["validateTotalSurfaceArea_maxTotalSurfaceAreaExceeded"]
  LOADNIL R9
  MOVE R10 R2
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  GETIMPORT R9 K5 [string.format]
  LOADK R10 K14 ["The total surface area of model mesh '%s' is %.2f, it cannot be greater than %d. You must reduce the number and/or size of all triangles."]
  GETTABLEKS R11 R0 K7 ["fullName"]
  MOVE R12 R6
  GETUPVAL R13 3
  CALL R13 0 -1
  CALL R9 -1 -1
  SETLIST R8 R9 -1 [1]
  RETURN R7 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["recordScriptTime"]
  GETIMPORT R9 K17 [script]
  GETTABLEKS R8 R9 K18 ["Name"]
  MOVE R9 R3
  MOVE R10 R2
  CALL R7 3 0
  LOADB R7 1
  RETURN R7 1

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
  GETTABLEKS R4 R1 K9 ["flags"]
  GETTABLEKS R3 R4 K10 ["getFIntMaxTotalSurfaceArea"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K11 ["util"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K11 ["util"]
  GETTABLEKS R5 R6 K13 ["pcallDeferred"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R1 K14 ["Analytics"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R2
  RETURN R6 1
