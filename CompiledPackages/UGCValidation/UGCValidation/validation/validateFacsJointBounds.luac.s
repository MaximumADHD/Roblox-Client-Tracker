PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADK R2 K0 ["MeshId"]
  GETUPVAL R3 2
  CALL R0 3 2
  JUMPIF R0 [+4]
  GETIMPORT R2 K2 [error]
  LOADK R3 K3 ["Failed to retrieve MeshContent"]
  CALL R2 1 0
  GETUPVAL R2 3
  MOVE R4 R1
  NAMECALL R2 R2 K4 ["GetMaximalJointDistancesWithinFacs"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  MOVE R4 R1
  CALL R2 2 2
  JUMPIF R2 [+18]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["reportFailure"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["ErrorType"]
  GETTABLEKS R5 R6 K2 ["validateFACSJointTransformsWithinBounds_Error"]
  LOADNIL R6
  MOVE R7 R1
  CALL R4 3 0
  LOADB R4 0
  NEWTABLE R5 0 1
  LOADK R6 K3 ["Failed to validate facial animation joint bounds, please try again later"]
  SETLIST R5 R6 1 [1]
  RETURN R4 2
  FASTCALL1 TABLE_UNPACK R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K5 [unpack]
  CALL R4 1 4
  GETUPVAL R9 4
  CALL R9 0 1
  DIVK R8 R9 K6 [100]
  JUMPIFNOTLT R8 R4 [+13]
  LOADB R8 0
  NEWTABLE R9 0 1
  LOADK R11 K7 ["Head facial animation %* results in joints being moved substantially outside of the head. Please edit your facial animations and try again."]
  MOVE R13 R5
  NAMECALL R11 R11 K8 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  GETUPVAL R9 5
  CALL R9 0 1
  DIVK R8 R9 K6 [100]
  JUMPIFNOTLT R8 R6 [+13]
  LOADB R8 0
  NEWTABLE R9 0 1
  LOADK R11 K9 ["Head facial animations can be combined to extend the joint %* far outside the head. Please edit your facial animations and try again."]
  MOVE R13 R7
  NAMECALL R11 R11 K8 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETLIST R9 R10 1 [1]
  RETURN R8 2
  LOADB R8 1
  RETURN R8 1

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
  GETTABLEKS R4 R5 K11 ["pcallDeferred"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K10 ["util"]
  GETTABLEKS R5 R6 K12 ["getEditableMeshFromContext"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K13 ["flags"]
  GETTABLEKS R6 R7 K14 ["getFIntFacsJointMaximumDistRatioDirect"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K13 ["flags"]
  GETTABLEKS R7 R8 K15 ["getFIntFacsJointMaximumDistRatioAccumulated"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K10 ["util"]
  GETTABLEKS R8 R9 K16 ["Types"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R8 1
