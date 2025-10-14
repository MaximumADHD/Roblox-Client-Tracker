PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableMesh"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["editableMesh"]
  NAMECALL R0 R0 K1 ["ValidateEditableMeshMisMatchUV"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_1:
  GETTABLEKS R5 R0 K0 ["context"]
  GETTABLEKS R6 R1 K0 ["context"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K2 [assert]
  CALL R3 1 0
  GETIMPORT R3 K4 [pcall]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE VAL R1
  CALL R3 1 2
  JUMPIF R3 [+23]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["reportFailure"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["ErrorType"]
  GETTABLEKS R6 R7 K7 ["validateMisMatchUV_FailedToExecute"]
  LOADNIL R7
  MOVE R8 R2
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K10 [string.format]
  LOADK R8 K11 ["Failed to execute UV mismatch check for '%s'. Make sure UV map exists and try again."]
  GETTABLEKS R9 R0 K0 ["context"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  JUMPIF R4 [+23]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["reportFailure"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["ErrorType"]
  GETTABLEKS R6 R7 K12 ["validateMisMatchUV_UVMismatch"]
  LOADNIL R7
  MOVE R8 R2
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K10 [string.format]
  LOADK R8 K13 ["Inner and Outer cage UV for '%s' are mismatched. The Roblox provided cage template should be used to create inner and outer cages with no modifications to the UV map."]
  GETTABLEKS R9 R0 K0 ["context"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  LOADB R5 1
  RETURN R5 1

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
