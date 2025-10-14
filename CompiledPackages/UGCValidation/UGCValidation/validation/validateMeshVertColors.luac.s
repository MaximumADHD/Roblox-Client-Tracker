PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R3 2
  NAMECALL R0 R0 K1 ["ValidateEditableMeshVertColors"]
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
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["reportFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["ErrorType"]
  GETTABLEKS R8 R9 K5 ["validateMeshVertexColors_FailedToLoadMesh"]
  LOADNIL R9
  MOVE R10 R2
  CALL R7 3 0
  GETIMPORT R7 K8 [string.format]
  LOADK R8 K9 ["Failed to load vertex color map for model mesh %s. Make sure it exists and try again."]
  GETTABLEKS R9 R0 K10 ["fullName"]
  CALL R7 2 1
  JUMPIFEQKNIL R4 [+6]
  JUMPIFNOT R4 [+4]
  GETIMPORT R8 K12 [error]
  MOVE R9 R7
  CALL R8 1 0
  LOADB R8 0
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  JUMPIF R6 [+27]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["reportFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K4 ["ErrorType"]
  GETTABLEKS R8 R9 K13 ["validateMeshVertexColors_NonNeutralVertexColors"]
  LOADNIL R9
  MOVE R10 R2
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  GETIMPORT R9 K8 [string.format]
  LOADK R10 K14 ["Invalid vertex color found in mesh model '%s'. You need to edit the color map to be all white %s and try again."]
  GETTABLEKS R11 R0 K10 ["fullName"]
  JUMPIFNOT R1 [+2]
  LOADK R12 K15 ["with no transarency"]
  JUMP [+1]
  LOADK R12 K16 [""]
  CALL R9 3 -1
  SETLIST R8 R9 -1 [1]
  RETURN R7 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K17 ["recordScriptTime"]
  GETIMPORT R9 K19 [script]
  GETTABLEKS R8 R9 K20 ["Name"]
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
