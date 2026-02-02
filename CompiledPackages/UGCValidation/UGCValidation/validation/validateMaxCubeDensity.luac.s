PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K1 ["GetEditableMeshMaxNearbyVerticesCollisions"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R3 K1 [tick]
  CALL R3 0 1
  GETTABLEKS R4 R1 K2 ["isServer"]
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R2
  MOVE R7 R1
  CALL R5 2 2
  JUMPIF R5 [+35]
  JUMPIFEQKNIL R4 [+11]
  JUMPIFNOT R4 [+9]
  GETIMPORT R7 K4 [error]
  GETIMPORT R8 K7 [string.format]
  LOADK R9 K8 ["Failed to execute vertex density check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R10 R0 K9 ["fullName"]
  CALL R8 2 -1
  CALL R7 -1 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["reportFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["ErrorType"]
  GETTABLEKS R8 R9 K12 ["validateVertexDensity_FailedToExecute"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K8 ["Failed to execute vertex density check for '%s'. Make sure mesh exists and try again."]
  GETTABLEKS R11 R0 K9 ["fullName"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  RETURN R7 2
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOTLT R7 R6 [+19]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["reportFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["ErrorType"]
  GETTABLEKS R8 R9 K13 ["validateVertexDensity_MaxDensityExceeded"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  LOADK R9 K14 ["The maximum vertex density has been exceeded. Reduce the number of vertices that are very close to each other."]
  SETLIST R8 R9 1 [1]
  RETURN R7 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K15 ["recordScriptTime"]
  GETIMPORT R9 K17 [script]
  GETTABLEKS R8 R9 K18 ["Name"]
  MOVE R9 R3
  MOVE R10 R1
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
  GETTABLEKS R4 R1 K9 ["util"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["util"]
  GETTABLEKS R4 R5 K11 ["pcallDeferred"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K12 ["flags"]
  GETTABLEKS R5 R6 K13 ["getFIntUGCValidationVertexDensityThreshold"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R1 K14 ["Analytics"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
