PROTO_0:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["types"]
  GETTABLE R4 R5 R0
  GETTABLEKS R3 R4 K1 ["GuessMaxHeight"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["types"]
  GETTABLE R5 R6 R1
  GETTABLEKS R4 R5 K1 ["GuessMaxHeight"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["keys"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [table.sort]
  MOVE R4 R2
  DUPCLOSURE R5 K5 [PROTO_0]
  CAPTURE UPVAL U1
  CALL R3 2 0
  LOADNIL R3
  LOADNIL R4
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["types"]
  GETTABLE R10 R11 R9
  GETTABLEKS R12 R1 K6 ["ExtentsSize"]
  GETTABLEKS R11 R12 K7 ["Y"]
  GETTABLEKS R12 R10 K8 ["GuessMaxHeight"]
  JUMPIFNOTLT R11 R12 [+4]
  MOVE R3 R9
  MOVE R4 R10
  JUMP [+2]
  FORGLOOP R5 2 [-16]
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K9 [+4]
  LOADK R7 K9 ["No scaling type info chosen"]
  GETIMPORT R5 K11 [assert]
  CALL R5 2 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K12 ["setAvatarPartScaleTypeValueObjects"]
  MOVE R6 R0
  MOVE R7 R3
  CALL R5 2 0
  GETTABLEKS R5 R0 K13 ["Humanoid"]
  LOADK R7 K14 ["BodyTypeScale"]
  NAMECALL R5 R5 K15 ["FindFirstChild"]
  CALL R5 2 1
  LOADB R7 0
  JUMPIFEQKNIL R5 [+5]
  LOADK R9 K16 ["NumberValue"]
  NAMECALL R7 R5 K17 ["IsA"]
  CALL R7 2 1
  FASTCALL2K ASSERT R7 K18 [+4]
  LOADK R8 K18 ["Couldn't find BodyTypeScale"]
  GETIMPORT R6 K11 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R4 K14 ["BodyTypeScale"]
  SETTABLEKS R6 R5 K19 ["Value"]
  GETTABLEKS R6 R0 K13 ["Humanoid"]
  LOADK R8 K20 ["BodyProportionScale"]
  NAMECALL R6 R6 K15 ["FindFirstChild"]
  CALL R6 2 1
  LOADB R8 0
  JUMPIFEQKNIL R6 [+5]
  LOADK R10 K16 ["NumberValue"]
  NAMECALL R8 R6 K17 ["IsA"]
  CALL R8 2 1
  FASTCALL2K ASSERT R8 K21 [+4]
  LOADK R9 K21 ["Couldn't find BodyProportionScale"]
  GETIMPORT R7 K11 [assert]
  CALL R7 2 0
  GETTABLEKS R7 R4 K20 ["BodyProportionScale"]
  SETTABLEKS R7 R6 K19 ["Value"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["AvatarScalingTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Dash"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  RETURN R4 1
