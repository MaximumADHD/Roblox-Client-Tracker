PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["editableMesh"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K1 ["CageOrigin"]
  NAMECALL R4 R4 K2 ["Inverse"]
  CALL R4 1 1
  LOADK R5 K3 [{1, 1, 1}]
  NAMECALL R0 R0 K4 ["CalculateEditableMeshInsideMeshPercentage"]
  CALL R0 5 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R4 K1 [tick]
  CALL R4 0 1
  GETUPVAL R5 0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  MOVE R7 R3
  CALL R5 2 2
  JUMPIF R5 [+33]
  GETIMPORT R7 K4 [string.format]
  LOADK R8 K5 ["Failed to execute render mesh inside outer mesh check for '%s' and '%s'. Make sure the meshes exists and try again."]
  GETTABLEKS R9 R1 K6 ["fullName"]
  GETTABLEKS R10 R2 K6 ["fullName"]
  CALL R7 3 1
  GETTABLEKS R8 R3 K7 ["isServer"]
  JUMPIFNOT R8 [+4]
  GETIMPORT R8 K9 [error]
  MOVE R9 R7
  CALL R8 1 0
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K10 ["reportFailure"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K11 ["ErrorType"]
  GETTABLEKS R9 R10 K12 ["validateRenderMeshInsideOuterCageMesh_FailedToExecute"]
  LOADNIL R10
  MOVE R11 R3
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  MULK R6 R6 K13 [100]
  GETUPVAL R7 3
  CALL R7 0 1
  JUMPIFNOTLT R6 R7 [+35]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["reportFailure"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["ErrorType"]
  GETTABLEKS R8 R9 K14 ["validateRenderMeshInsideOuterCageMesh_MaxOutsideCageMeshExceeded"]
  LOADNIL R9
  MOVE R10 R3
  CALL R7 3 0
  GETIMPORT R7 K4 [string.format]
  LOADK R8 K15 ["Validation detected %d%% of the accessory is outside its outer cage. Make adjustments to have more of the accessory placed between the cages"]
  FASTCALL1 MATH_FLOOR R6 [+3]
  MOVE R11 R6
  GETIMPORT R10 K18 [math.floor]
  CALL R10 1 1
  SUBRK R9 R13 K10 ["reportFailure"]
  CALL R7 2 1
  GETUPVAL R8 4
  CALL R8 0 1
  JUMPIFNOT R8 [+3]
  MOVE R8 R7
  LOADK R9 K19 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageInsideMesh)"]
  CONCAT R7 R8 R9
  LOADB R8 0
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K20 ["recordScriptTime"]
  GETIMPORT R9 K22 [script]
  GETTABLEKS R8 R9 K23 ["Name"]
  MOVE R9 R4
  MOVE R10 R3
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
  GETTABLEKS R3 R1 K9 ["Analytics"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K10 ["flags"]
  GETTABLEKS R4 R5 K11 ["getFIntUGCValidateRenderMeshInsideOuterCageMeshThreshold"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K10 ["flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagUGCValidationHyperlinksInCageQuality"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K13 ["util"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K13 ["util"]
  GETTABLEKS R7 R8 K15 ["pcallDeferred"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R7 1
