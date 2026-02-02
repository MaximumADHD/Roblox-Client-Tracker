PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["IsDeformedLayeredClothingOutOfRenderBounds"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["allowEditableInstances"]
  JUMPIFNOT R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+7]
  LOADB R2 0
  NEWTABLE R3 0 1
  LOADK R4 K1 ["Engine feature 'EngineUGCValidationLCOOB' is not enabled. Skipping validation for layered clothing out of bounds."]
  SETLIST R3 R4 1 [1]
  RETURN R2 2
  LOADK R4 K2 ["Handle"]
  NAMECALL R2 R0 K3 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+7]
  LOADB R3 0
  NEWTABLE R4 0 1
  LOADK R5 K4 ["Accessory does not have a Handle. Cannot validate layered clothing out of bounds."]
  SETLIST R4 R5 1 [1]
  RETURN R3 2
  LOADK R5 K5 ["WrapLayer"]
  NAMECALL R3 R2 K6 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIF R3 [+7]
  LOADB R4 0
  NEWTABLE R5 0 1
  LOADK R6 K7 ["Accessory does not have a WrapLayer. Cannot validate layered clothing out of bounds."]
  SETLIST R5 R6 1 [1]
  RETURN R4 2
  GETUPVAL R4 1
  CALL R4 0 1
  JUMPIFNOT R4 [+25]
  GETTABLEKS R4 R3 K8 ["MaxSize"]
  LOADK R5 K9 [{0, 0, 0}]
  JUMPIFEQ R4 R5 [+8]
  LOADB R4 0
  NEWTABLE R5 0 1
  LOADK R6 K10 ["Accessory has a non-zero MaxSize."]
  SETLIST R5 R6 1 [1]
  RETURN R4 2
  GETTABLEKS R4 R3 K11 ["Offset"]
  LOADK R5 K9 [{0, 0, 0}]
  JUMPIFEQ R4 R5 [+15]
  LOADB R4 0
  NEWTABLE R5 0 1
  LOADK R6 K12 ["Accessory has a non-zero Offset."]
  SETLIST R5 R6 1 [1]
  RETURN R4 2
  JUMP [+6]
  LOADK R4 K9 [{0, 0, 0}]
  SETTABLEKS R4 R3 K8 ["MaxSize"]
  LOADK R4 K9 [{0, 0, 0}]
  SETTABLEKS R4 R3 K11 ["Offset"]
  GETIMPORT R4 K14 [tick]
  CALL R4 0 1
  GETUPVAL R5 2
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  MOVE R7 R1
  CALL R5 2 2
  JUMPIF R5 [+24]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["reportFailure"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K16 ["ErrorType"]
  GETTABLEKS R8 R9 K17 ["validateDeformedLayeredClothingInRenderBounds_FailedToExecute"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  GETIMPORT R7 K20 [string.format]
  LOADK R8 K21 ["Unable to validate if deformed layered clothing %s is out of render bounds."]
  GETTABLEKS R9 R0 K22 ["Name"]
  CALL R7 2 1
  LOADB R8 0
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K23 ["recordScriptTime"]
  GETIMPORT R9 K25 [script]
  GETTABLEKS R8 R9 K22 ["Name"]
  MOVE R9 R4
  MOVE R10 R1
  CALL R7 3 0
  JUMPIFNOT R6 [+24]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K15 ["reportFailure"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K16 ["ErrorType"]
  GETTABLEKS R8 R9 K26 ["validateDeformedLayeredClothingInRenderBounds_ClothingOutOfBounds"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  GETIMPORT R7 K20 [string.format]
  LOADK R8 K27 ["Layered clothing validation failed for '%s'. When deformed, layered clothing becomes too large."]
  GETTABLEKS R9 R0 K22 ["Name"]
  CALL R7 2 1
  LOADB R8 0
  NEWTABLE R9 0 1
  MOVE R10 R7
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  LOADB R7 1
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["UGCValidationService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R3 R0 K9 ["Analytics"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K10 ["util"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R3 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R3 K12 ["pcallDeferred"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K13 ["flags"]
  GETTABLEKS R7 R8 K14 ["getEngineFeatureEngineUGCValidationLCOOB"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R0 K13 ["flags"]
  GETTABLEKS R8 R9 K15 ["getFFlagEnforceMaxSizeOffsetForLC"]
  CALL R7 1 1
  DUPCLOSURE R8 K16 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R8 1
