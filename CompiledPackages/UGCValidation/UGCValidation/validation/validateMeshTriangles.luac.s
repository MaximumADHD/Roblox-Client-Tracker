PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["GetEditableMeshTriCount"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETTABLEKS R3 R2 K0 ["isServer"]
  GETUPVAL R4 0
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  MOVE R6 R2
  CALL R4 2 2
  JUMPIFEQKNIL R1 [+2]
  JUMP [+3]
  GETUPVAL R6 2
  GETTABLEKS R1 R6 K1 ["MAX_HAT_TRIANGLES"]
  JUMPIF R4 [+35]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K2 ["reportFailure"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["ErrorType"]
  GETTABLEKS R7 R8 K4 ["validateMeshTriangles_FailedToLoadMesh"]
  LOADNIL R8
  MOVE R9 R2
  CALL R6 3 0
  JUMPIFEQKNIL R3 [+11]
  JUMPIFNOT R3 [+9]
  GETIMPORT R6 K6 [error]
  GETIMPORT R7 K9 [string.format]
  LOADK R8 K10 ["Failed to load model mesh %s. Make sure the mesh exists and try again."]
  GETTABLEKS R9 R0 K11 ["fullName"]
  CALL R7 2 -1
  CALL R6 -1 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K9 [string.format]
  LOADK R9 K10 ["Failed to load model mesh %s. Make sure the mesh exists and try again."]
  GETTABLEKS R10 R0 K11 ["fullName"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  JUMPIFNOTLT R1 R5 [+26]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K2 ["reportFailure"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K3 ["ErrorType"]
  GETTABLEKS R7 R8 K12 ["validateMeshTriangles_TooManyTriangles"]
  LOADNIL R8
  MOVE R9 R2
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K9 [string.format]
  LOADK R9 K13 ["Model mesh %s resolution of %d is higher than max support value of %d. You need to retopologize your model and try again."]
  GETTABLEKS R10 R0 K11 ["fullName"]
  MOVE R11 R5
  MOVE R12 R1
  CALL R8 4 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
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
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R1 K13 ["Constants"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE VAL R4
  RETURN R6 1
