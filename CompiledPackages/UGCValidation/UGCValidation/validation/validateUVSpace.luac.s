PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["ValidateEditableMeshUVSpace"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R2 K1 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIF R2 [+23]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["reportFailure"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["ErrorType"]
  GETTABLEKS R5 R6 K4 ["validateUVSpace_FailedToExecute"]
  LOADNIL R6
  MOVE R7 R1
  CALL R4 3 0
  LOADB R4 0
  NEWTABLE R5 0 1
  GETIMPORT R6 K7 [string.format]
  LOADK R7 K8 ["Failed to execute validateUVSpace check on '%s'. Make sure the UV maps exists and try again."]
  GETTABLEKS R8 R0 K9 ["fullName"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  RETURN R4 2
  JUMPIF R3 [+23]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["reportFailure"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["ErrorType"]
  GETTABLEKS R5 R6 K10 ["validateUVSpace_InvalidUVSpace"]
  LOADNIL R6
  MOVE R7 R1
  CALL R4 3 0
  LOADB R4 0
  NEWTABLE R5 0 1
  GETIMPORT R6 K7 [string.format]
  LOADK R7 K11 ["Detected modified UV values for '%s'. The original UV map for this model can't be altered."]
  GETTABLEKS R8 R0 K9 ["fullName"]
  CALL R6 2 -1
  SETLIST R5 R6 -1 [1]
  RETURN R4 2
  LOADB R4 1
  RETURN R4 1

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
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R4 1
