PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["editableMesh"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["ValidateEditableMeshCageMeshIntersection"]
  CALL R0 4 -1
  RETURN R0 -1

PROTO_1:
  GETTABLEKS R5 R3 K0 ["assetTypeEnum"]
  FASTCALL2K ASSERT R5 K1 [+4]
  LOADK R6 K1 ["validationContext.assetTypeEnum is required"]
  GETIMPORT R4 K3 [assert]
  CALL R4 2 0
  GETTABLEKS R4 R3 K0 ["assetTypeEnum"]
  GETTABLEKS R5 R2 K4 ["editableMesh"]
  JUMPIF R5 [+23]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["reportFailure"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["ErrorType"]
  GETTABLEKS R6 R7 K7 ["validateCageMeshIntersection_InvalidRefMeshId"]
  LOADNIL R7
  MOVE R8 R3
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K10 [string.format]
  LOADK R8 K11 ["The meshId reference for cage '%s' is invalid or doesn't exist. Please, verify you are using a valid mesh asset and try again."]
  GETTABLEKS R9 R2 K12 ["fullName"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  GETUPVAL R5 1
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  MOVE R7 R3
  CALL R5 2 5
  JUMPIF R5 [+23]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["reportFailure"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["ErrorType"]
  GETTABLEKS R11 R12 K13 ["validateCageMeshIntersection_FailedToExecute"]
  LOADNIL R12
  MOVE R13 R3
  CALL R10 3 0
  LOADB R10 0
  NEWTABLE R11 0 1
  GETIMPORT R12 K10 [string.format]
  LOADK R13 K14 ["Failed to execute cage intersection detection for '%s'. Make sure the cage mesh exists and try again."]
  GETTABLEKS R14 R2 K12 ["fullName"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  RETURN R10 2
  NEWTABLE R10 0 0
  LOADB R11 1
  JUMPIF R6 [+23]
  LOADB R11 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["reportFailure"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["ErrorType"]
  GETTABLEKS R13 R14 K15 ["validateCageMeshIntersection_Intersection"]
  LOADNIL R14
  MOVE R15 R3
  CALL R12 3 0
  MOVE R13 R10
  GETIMPORT R14 K10 [string.format]
  LOADK R15 K16 ["There are cage vertices inside the layered accessory mesh '%s', which could lead to interpenetration issues during fitting. You need to edit the cage mesh to fix this intersection issue."]
  GETTABLEKS R16 R1 K17 ["context"]
  CALL R14 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K20 [table.insert]
  CALL R12 -1 0
  JUMPIF R7 [+27]
  LOADB R11 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["reportFailure"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["ErrorType"]
  GETTABLEKS R13 R14 K21 ["validateCageMeshIntersection_IrrelevantCageModified"]
  LOADNIL R14
  MOVE R15 R3
  CALL R12 3 0
  MOVE R13 R10
  GETIMPORT R14 K10 [string.format]
  LOADK R15 K22 ["Outer cage of '%s' has mesh edits on regions that don't correspond to its current asset type '%s' (i.e. edits on the lower leg cages when asset type is set to 'Head'). You need to check the asset type for the layered accessory '%s'."]
  GETTABLEKS R16 R1 K12 ["fullName"]
  GETTABLEKS R17 R4 K23 ["Name"]
  GETTABLEKS R18 R1 K17 ["context"]
  CALL R14 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K20 [table.insert]
  CALL R12 -1 0
  JUMPIF R8 [+23]
  LOADB R11 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["reportFailure"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["ErrorType"]
  GETTABLEKS R13 R14 K24 ["validateCageMeshIntersection_OuterCageFarExtendedFromMesh"]
  LOADNIL R14
  MOVE R15 R3
  CALL R12 3 0
  MOVE R13 R10
  GETIMPORT R14 K10 [string.format]
  LOADK R15 K25 ["Outer cage of '%s' has mesh edits that place vertices too far away from the model mesh. You need to edit the cage vertices to be closer to the model."]
  GETTABLEKS R16 R1 K12 ["fullName"]
  CALL R14 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K20 [table.insert]
  CALL R12 -1 0
  JUMPIF R9 [+23]
  LOADB R11 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["reportFailure"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["ErrorType"]
  GETTABLEKS R13 R14 K26 ["validateCageMeshIntersection_AverageOuterCageToMeshVertDistances"]
  LOADNIL R14
  MOVE R15 R3
  CALL R12 3 0
  MOVE R13 R10
  GETIMPORT R14 K10 [string.format]
  LOADK R15 K27 ["The average distance between the layered accessory '%s' and its outer cage is too large. You need to edit the cage mesh to be closer to the accessory."]
  GETTABLEKS R16 R1 K17 ["context"]
  CALL R14 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K20 [table.insert]
  CALL R12 -1 0
  MOVE R12 R11
  MOVE R13 R10
  RETURN R12 2

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
  GETTABLEKS R3 R1 K9 ["Analytics"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K10 ["util"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K10 ["util"]
  GETTABLEKS R5 R6 K12 ["pcallDeferred"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R5 1
