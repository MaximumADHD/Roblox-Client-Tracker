PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["ValidateEditableMeshTriangleArea"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  JUMPIFNOT R1 [+3]
  GETTABLEKS R3 R1 K2 ["isServer"]
  JUMP [+1]
  LOADNIL R3
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  MOVE R6 R1
  CALL R4 2 2
  JUMPIF R4 [+33]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["reportFailure"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["ErrorType"]
  GETTABLEKS R7 R8 K5 ["validateMeshTriangleArea_FailedToLoadMesh"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  JUMPIFNOT R3 [+9]
  GETIMPORT R6 K7 [error]
  GETIMPORT R7 K10 [string.format]
  LOADK R8 K11 ["Failed to load model mesh %s. Make sure mesh exists and try again."]
  GETTABLEKS R9 R0 K12 ["fullName"]
  CALL R7 2 -1
  CALL R6 -1 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K10 [string.format]
  LOADK R9 K11 ["Failed to load model mesh %s. Make sure mesh exists and try again."]
  GETTABLEKS R10 R0 K12 ["fullName"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  JUMPIF R5 [+23]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["reportFailure"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K4 ["ErrorType"]
  GETTABLEKS R7 R8 K13 ["validateMeshTriangleArea_NoArea"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K10 [string.format]
  LOADK R9 K14 ["Detected zero-area triangle in model mesh %s. You need to edit the mesh to remove zero-area triangles."]
  GETTABLEKS R10 R0 K12 ["fullName"]
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
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["util"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["util"]
  GETTABLEKS R3 R4 K7 ["pcallDeferred"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K8 ["Analytics"]
  CALL R3 1 1
  GETIMPORT R4 K10 [game]
  LOADK R6 K11 ["UGCValidationService"]
  NAMECALL R4 R4 K12 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R5 1
