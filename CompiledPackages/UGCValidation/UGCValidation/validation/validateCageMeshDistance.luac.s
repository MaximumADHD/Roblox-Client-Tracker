PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["editableMesh"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["editableMesh"]
  GETUPVAL R5 4
  GETUPVAL R6 5
  NAMECALL R0 R0 K1 ["CalculateAverageEditableCageMeshDistance"]
  CALL R0 6 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R6 0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  MOVE R8 R5
  CALL R6 2 2
  JUMPIF R6 [+23]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K0 ["reportFailure"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K1 ["ErrorType"]
  GETTABLEKS R9 R10 K2 ["validateCageMeshDistance_FailedToExecute"]
  LOADNIL R10
  MOVE R11 R5
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  GETIMPORT R10 K5 [string.format]
  LOADK R11 K6 ["Failed to execute cage mesh distance validation for '%s'. Make sure the cage mesh exists and try again."]
  GETTABLEKS R12 R2 K7 ["fullName"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  RETURN R8 2
  NEWTABLE R8 0 0
  LOADB R9 1
  MULK R10 R7 K8 [100]
  GETUPVAL R11 3
  CALL R11 0 1
  JUMPIFLT R11 R10 [+4]
  LOADN R10 0
  JUMPIFNOTLT R7 R10 [+49]
  LOADB R9 0
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K0 ["reportFailure"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K1 ["ErrorType"]
  GETTABLEKS R11 R12 K9 ["validateCageMeshDistance_OuterCageToMeshDistance"]
  LOADNIL R12
  MOVE R13 R5
  CALL R10 3 0
  LOADN R10 0
  JUMPIFNOTLT R7 R10 [+16]
  LOADK R10 K10 ["Average distance between outer cage to mesh is too high. Mesh seems to be outside of the outer cage."]
  GETUPVAL R11 4
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  MOVE R11 R10
  LOADK R12 K11 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"]
  CONCAT R10 R11 R12
  FASTCALL2 TABLE_INSERT R8 R10 [+5]
  MOVE R12 R8
  MOVE R13 R10
  GETIMPORT R11 K14 [table.insert]
  CALL R11 2 0
  JUMP [+18]
  GETIMPORT R10 K5 [string.format]
  LOADK R11 K15 ["Average distance between outer cage to mesh is too high (%.2f). Make adjustment to cage to fit the mesh better."]
  MOVE R12 R7
  CALL R10 2 1
  GETUPVAL R11 4
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  MOVE R11 R10
  LOADK R12 K11 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageMeshDistance)"]
  CONCAT R10 R11 R12
  FASTCALL2 TABLE_INSERT R8 R10 [+5]
  MOVE R12 R8
  MOVE R13 R10
  GETIMPORT R11 K14 [table.insert]
  CALL R11 2 0
  MOVE R10 R9
  MOVE R11 R8
  RETURN R10 2

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
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K13 ["flags"]
  GETTABLEKS R6 R7 K14 ["getFIntUGCValidateCageMeshDistanceThreshold"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K13 ["flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagUGCValidationHyperlinksInCageQuality"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
