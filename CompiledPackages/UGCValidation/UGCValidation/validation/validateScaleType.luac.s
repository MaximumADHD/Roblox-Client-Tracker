PROTO_0:
  JUMPIF R0 [+2]
  LOADB R2 1
  RETURN R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["AvatarPartScaleTypes"]
  GETTABLEKS R4 R0 K1 ["Value"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+31]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["reportFailure"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["ErrorType"]
  GETTABLEKS R3 R4 K4 ["validateScaleType_InvalidAvatarPartScaleType"]
  LOADNIL R4
  MOVE R5 R1
  CALL R2 3 0
  GETTABLEKS R3 R0 K5 ["Parent"]
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 1 0
  LOADB R2 0
  NEWTABLE R3 0 1
  GETIMPORT R4 K10 [string.format]
  LOADK R5 K11 ["The AvatarPartScaleType value in '%s' is invalid. Please, verify the value you are using is either Classic, ProportionsSlender, or ProportionsNormal."]
  GETTABLEKS R7 R0 K5 ["Parent"]
  GETTABLEKS R6 R7 K12 ["Name"]
  CALL R4 2 -1
  SETLIST R3 R4 -1 [1]
  RETURN R2 2
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["util"]
  GETTABLEKS R3 R4 K7 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K8 ["Analytics"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R4 1
