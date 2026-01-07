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
  NAMECALL R0 R0 K1 ["GetEditableCagingRelevancyMetrics"]
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
  CALL R6 2 3
  JUMPIF R6 [+23]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K0 ["reportFailure"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K1 ["ErrorType"]
  GETTABLEKS R10 R11 K2 ["validateCagingRelevancy_FailedToExecute"]
  LOADNIL R11
  MOVE R12 R5
  CALL R9 3 0
  LOADB R9 0
  NEWTABLE R10 0 1
  GETIMPORT R11 K5 [string.format]
  LOADK R12 K6 ["Failed to execute cage relevancy detection for '%s'. Make sure the cage mesh exists and try again."]
  GETTABLEKS R13 R2 K7 ["fullName"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  RETURN R9 2
  JUMPIFNOTEQKN R8 K8 [0] [+3]
  LOADB R9 1
  RETURN R9 1
  LOADN R12 100
  MUL R11 R12 R7
  DIV R10 R11 R8
  FASTCALL1 MATH_FLOOR R10 [+2]
  GETIMPORT R9 K11 [math.floor]
  CALL R9 1 1
  GETUPVAL R10 3
  CALL R10 0 1
  JUMPIFNOTLT R9 R10 [+30]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K0 ["reportFailure"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K1 ["ErrorType"]
  GETTABLEKS R11 R12 K12 ["validateCagingRelevancy_IrrelevantCaging"]
  LOADNIL R12
  MOVE R13 R5
  CALL R10 3 0
  LOADK R10 K13 ["Validation detected %d%% of the outer cage edits do not cover the accessory. Make sure you are moving the outer cage only where needed."]
  GETUPVAL R11 4
  CALL R11 0 1
  JUMPIFNOT R11 [+3]
  MOVE R11 R10
  LOADK R12 K14 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageRelevancy)"]
  CONCAT R10 R11 R12
  LOADB R11 0
  NEWTABLE R12 0 1
  GETIMPORT R13 K5 [string.format]
  MOVE R14 R10
  SUBRK R15 R15 K9 ["math"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  RETURN R11 2
  LOADB R10 1
  RETURN R10 1

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
  GETTABLEKS R6 R7 K14 ["getFIntUGCLCCagingRelevancyMinimum"]
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
