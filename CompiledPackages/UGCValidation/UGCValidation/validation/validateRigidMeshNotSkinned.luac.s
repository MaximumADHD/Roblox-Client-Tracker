PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["DoesMeshHaveSkinningData"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  MOVE R4 R1
  CALL R2 2 2
  JUMPIF R2 [+18]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["reportFailure"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["ErrorType"]
  GETTABLEKS R5 R6 K2 ["validateRigidMeshSkinning_FailedToDownload"]
  LOADNIL R6
  MOVE R7 R1
  CALL R4 3 0
  LOADB R4 0
  NEWTABLE R5 0 1
  LOADK R6 K3 ["Could not verify underlying mesh data. Please try again or make a bug report."]
  SETLIST R5 R6 1 [1]
  RETURN R4 2
  JUMPIFNOT R3 [+18]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["reportFailure"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["ErrorType"]
  GETTABLEKS R5 R6 K4 ["validateRigidMeshSkinning_BonesFoundInMesh"]
  LOADNIL R6
  MOVE R7 R1
  CALL R4 3 0
  LOADB R4 0
  NEWTABLE R5 0 1
  LOADK R6 K5 ["This accessory mesh has underlying skinning data, which is not supported for rigid accessories. Ensure that you are not importing bones when loading the mesh into Studio."]
  SETLIST R5 R6 1 [1]
  RETURN R4 2
  LOADB R4 1
  RETURN R4 1

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
