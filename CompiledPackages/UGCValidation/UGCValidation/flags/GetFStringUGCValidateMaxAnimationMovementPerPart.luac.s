PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["asString"]
  CALL R0 0 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementHead"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementUpperTorso"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementLeftUpperLeg"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementLeftLowerLeg"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementLeftHand"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementRightUpperArm"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementRightLowerArm"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementRightHand"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementLeftUpperArm"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_10:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementLeftLowerArm"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_11:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementLeftFoot"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_12:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementRightUpperLeg"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_13:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementRightLowerLeg"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_14:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidateMaxAnimationMovementRightFoot"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_15:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIF R1 [+3]
  GETUPVAL R2 1
  CALL R2 0 -1
  RETURN R2 -1
  MOVE R2 R1
  CALL R2 0 1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K0 [0] [+4]
  GETUPVAL R3 1
  CALL R3 0 -1
  RETURN R3 -1
  RETURN R2 1

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["asString"]
  MOVE R3 R0
  CALL R2 1 -1
  FASTCALL TONUMBER [+2]
  GETIMPORT R1 K2 [tonumber]
  CALL R1 -1 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["flags"]
  GETTABLEKS R2 R3 K6 ["GetFStringUGCValidateMaxAnimationMovement"]
  CALL R1 1 1
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R1
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["UGCValidateMaxAnimationMovementHead"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K13 ["UGCValidateMaxAnimationMovementUpperTorso"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K14 ["UGCValidateMaxAnimationMovementLeftUpperLeg"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K15 ["UGCValidateMaxAnimationMovementLeftLowerLeg"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K16 ["UGCValidateMaxAnimationMovementLeftHand"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K17 ["UGCValidateMaxAnimationMovementRightUpperArm"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K18 ["UGCValidateMaxAnimationMovementRightLowerArm"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K19 ["UGCValidateMaxAnimationMovementRightHand"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K20 ["UGCValidateMaxAnimationMovementLeftUpperArm"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K21 ["UGCValidateMaxAnimationMovementLeftLowerArm"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K22 ["UGCValidateMaxAnimationMovementLeftFoot"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K23 ["UGCValidateMaxAnimationMovementRightUpperLeg"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K24 ["UGCValidateMaxAnimationMovementRightLowerLeg"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  GETIMPORT R3 K9 [game]
  LOADK R5 K25 ["UGCValidateMaxAnimationMovementRightFoot"]
  LOADK R6 K11 [""]
  NAMECALL R3 R3 K12 ["DefineFastString"]
  CALL R3 3 0
  NEWTABLE R3 2 0
  DUPTABLE R4 K40 [{"Head", "UpperTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot"}]
  DUPCLOSURE R5 K41 [PROTO_1]
  SETTABLEKS R5 R4 K26 ["Head"]
  DUPCLOSURE R5 K42 [PROTO_2]
  SETTABLEKS R5 R4 K27 ["UpperTorso"]
  DUPCLOSURE R5 K43 [PROTO_3]
  SETTABLEKS R5 R4 K28 ["LeftUpperLeg"]
  DUPCLOSURE R5 K44 [PROTO_4]
  SETTABLEKS R5 R4 K29 ["LeftLowerLeg"]
  DUPCLOSURE R5 K45 [PROTO_5]
  SETTABLEKS R5 R4 K30 ["LeftHand"]
  DUPCLOSURE R5 K46 [PROTO_6]
  SETTABLEKS R5 R4 K31 ["RightUpperArm"]
  DUPCLOSURE R5 K47 [PROTO_7]
  SETTABLEKS R5 R4 K32 ["RightLowerArm"]
  DUPCLOSURE R5 K48 [PROTO_8]
  SETTABLEKS R5 R4 K33 ["RightHand"]
  DUPCLOSURE R5 K49 [PROTO_9]
  SETTABLEKS R5 R4 K34 ["LeftUpperArm"]
  DUPCLOSURE R5 K50 [PROTO_10]
  SETTABLEKS R5 R4 K35 ["LeftLowerArm"]
  DUPCLOSURE R5 K51 [PROTO_11]
  SETTABLEKS R5 R4 K36 ["LeftFoot"]
  DUPCLOSURE R5 K52 [PROTO_12]
  SETTABLEKS R5 R4 K37 ["RightUpperLeg"]
  DUPCLOSURE R5 K53 [PROTO_13]
  SETTABLEKS R5 R4 K38 ["RightLowerLeg"]
  DUPCLOSURE R5 K54 [PROTO_14]
  SETTABLEKS R5 R4 K39 ["RightFoot"]
  DUPCLOSURE R5 K55 [PROTO_15]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R5 R3 K56 ["asString"]
  DUPCLOSURE R5 K57 [PROTO_16]
  CAPTURE VAL R3
  SETTABLEKS R5 R3 K58 ["asNumber"]
  RETURN R3 1
