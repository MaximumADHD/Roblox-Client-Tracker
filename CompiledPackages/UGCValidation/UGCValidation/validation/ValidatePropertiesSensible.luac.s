PROTO_0:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+1]
  RETURN R0 0
  DUPTABLE R0 K1 [{"HiddenSurfaceRemovalAsset"}]
  DUPTABLE R1 K3 [{"HSRData"}]
  GETUPVAL R2 1
  CALL R2 0 1
  SETTABLEKS R2 R1 K2 ["HSRData"]
  SETTABLEKS R1 R0 K0 ["HiddenSurfaceRemovalAsset"]
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  LOADNIL R0
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+31]
  GETUPVAL R1 1
  MOVE R3 R0
  GETUPVAL R5 2
  GETTABLEKS R6 R0 K0 ["ClassName"]
  GETTABLE R4 R5 R6
  NAMECALL R1 R1 K1 ["ValidatePropertiesSensible"]
  CALL R1 3 2
  JUMPIF R1 [+49]
  LOADB R3 0
  NEWTABLE R4 0 1
  GETIMPORT R5 K4 [string.format]
  LOADK R6 K5 ["%s %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, or strings/BinaryStrings longer than the max number of characters."]
  GETTABLEKS R7 R0 K0 ["ClassName"]
  NAMECALL R8 R0 K6 ["GetFullName"]
  CALL R8 1 1
  GETIMPORT R9 K9 [table.concat]
  MOVE R10 R2
  LOADK R11 K10 [", "]
  CALL R9 2 -1
  CALL R5 -1 -1
  SETLIST R4 R5 -1 [1]
  RETURN R3 2
  JUMP [+28]
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["ValidatePropertiesSensible"]
  CALL R1 2 2
  JUMPIF R1 [+22]
  LOADB R3 0
  NEWTABLE R4 0 1
  GETIMPORT R5 K4 [string.format]
  LOADK R6 K11 ["Instance %s has invalid properties: %s. These properties may be numeric values with NaNs or Infs, strings longer than %d characters, or BinaryStrings longer than %d characters."]
  NAMECALL R7 R0 K6 ["GetFullName"]
  CALL R7 1 1
  GETIMPORT R8 K9 [table.concat]
  MOVE R9 R2
  LOADK R10 K10 [", "]
  CALL R8 2 1
  GETUPVAL R9 3
  CALL R9 0 1
  GETUPVAL R10 4
  CALL R10 0 -1
  CALL R5 -1 -1
  SETLIST R4 R5 -1 [1]
  RETURN R3 2
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIF R2 [+2]
  LOADB R2 1
  RETURN R2 1
  GETIMPORT R2 K1 [tick]
  CALL R2 0 1
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+12]
  GETUPVAL R3 2
  JUMPIFNOT R3 [+1]
  JUMP [+9]
  DUPTABLE R3 K3 [{"HiddenSurfaceRemovalAsset"}]
  DUPTABLE R4 K5 [{"HSRData"}]
  GETUPVAL R5 3
  CALL R5 0 1
  SETTABLEKS R5 R4 K4 ["HSRData"]
  SETTABLEKS R4 R3 K2 ["HiddenSurfaceRemovalAsset"]
  SETUPVAL R3 2
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["new"]
  CALL R3 0 1
  NAMECALL R4 R0 K7 ["GetDescendants"]
  CALL R4 1 1
  FASTCALL2 TABLE_INSERT R4 R0 [+5]
  MOVE R6 R4
  MOVE R7 R0
  GETIMPORT R5 K10 [table.insert]
  CALL R5 2 0
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R12 5
  MOVE R13 R9
  CALL R12 1 -1
  NAMECALL R10 R3 K11 ["updateReasons"]
  CALL R10 -1 0
  FORGLOOP R5 2 [-7]
  NAMECALL R5 R3 K12 ["getFinalResults"]
  CALL R5 1 1
  JUMPIF R5 [+11]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K13 ["reportFailure"]
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K14 ["ErrorType"]
  GETTABLEKS R6 R7 K15 ["validatePropertiesSensible_IncorrectPropertiesFound"]
  LOADNIL R7
  MOVE R8 R1
  CALL R5 3 0
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K16 ["recordScriptTime"]
  GETIMPORT R7 K18 [script]
  GETTABLEKS R6 R7 K19 ["Name"]
  MOVE R7 R2
  MOVE R8 R1
  CALL R5 3 0
  NAMECALL R5 R3 K12 ["getFinalResults"]
  CALL R5 1 -1
  RETURN R5 -1

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
  GETTABLEKS R3 R1 K10 ["util"]
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R3 K11 ["FailureReasonsAccumulator"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R3 K12 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K13 ["flags"]
  GETTABLEKS R7 R8 K14 ["getFIntUGCValidateMaxSensibleStringLength"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K13 ["flags"]
  GETTABLEKS R8 R9 K15 ["getFIntUGCValidateMaxSensibleBinaryStringLength"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R1 K13 ["flags"]
  GETTABLEKS R9 R10 K16 ["getFFlagUGCValidateCheckHSRFileDataFix"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R1 K13 ["flags"]
  GETTABLEKS R10 R11 K17 ["getFIntUGCValidateMaxHSRDataLen"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K13 ["flags"]
  GETTABLEKS R11 R12 K18 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
  CALL R10 1 1
  NEWTABLE R11 2 0
  LOADNIL R12
  NEWCLOSURE R13 P0
  CAPTURE REF R12
  CAPTURE VAL R9
  NEWCLOSURE R14 P1
  CAPTURE REF R12
  SETTABLEKS R14 R11 K19 ["resetPropertyLengthRestrictions"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE REF R12
  CAPTURE VAL R6
  CAPTURE VAL R7
  NEWCLOSURE R15 P3
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE REF R12
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R2
  SETTABLEKS R15 R11 K20 ["validate"]
  CLOSEUPVALS R12
  RETURN R11 1
