PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitRootAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitFaceFrontAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitHatAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_3:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitHairAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_4:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitFaceCenterAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitRightFootAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_6:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitLeftFootAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_7:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitBodyFrontAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitBodyBackAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_9:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitLeftCollarAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_10:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitRightCollarAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_11:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitNeckAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_12:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitWaistCenterAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_13:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitWaistFrontAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_14:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitWaistBackAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_15:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitLeftShoulderAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_16:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitLeftGripAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_17:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitRightShoulderAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_18:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationAttRotLimitRightGripAttachment"]
  NAMECALL R0 R0 K3 ["GetFastInt"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_19:
  LOADB R3 1
  GETIMPORT R4 K3 [Enum.AssetType.RightArm]
  JUMPIFEQ R1 R4 [+7]
  GETIMPORT R4 K5 [Enum.AssetType.LeftArm]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K7 [assert]
  CALL R2 1 0
  GETIMPORT R3 K3 [Enum.AssetType.RightArm]
  JUMPIFNOTEQ R1 R3 [+3]
  LOADK R2 K8 ["Right"]
  JUMP [+1]
  LOADK R2 K9 ["Left"]
  MOVE R6 R2
  LOADK R7 K10 ["LowerArm"]
  CONCAT R5 R6 R7
  NAMECALL R3 R0 K11 ["FindFirstChild"]
  CALL R3 2 1
  MOVE R7 R2
  LOADK R8 K12 ["Hand"]
  CONCAT R6 R7 R8
  NAMECALL R4 R0 K11 ["FindFirstChild"]
  CALL R4 2 1
  FASTCALL1 ASSERT R3 [+3]
  MOVE R6 R3
  GETIMPORT R5 K7 [assert]
  CALL R5 1 0
  FASTCALL1 ASSERT R4 [+3]
  MOVE R6 R4
  GETIMPORT R5 K7 [assert]
  CALL R5 1 0
  MOVE R8 R2
  LOADK R9 K13 ["ElbowRigAttachment"]
  CONCAT R7 R8 R9
  NAMECALL R5 R3 K11 ["FindFirstChild"]
  CALL R5 2 1
  MOVE R9 R2
  LOADK R10 K14 ["WristRigAttachment"]
  CONCAT R8 R9 R10
  NAMECALL R6 R3 K11 ["FindFirstChild"]
  CALL R6 2 1
  MOVE R10 R2
  LOADK R11 K14 ["WristRigAttachment"]
  CONCAT R9 R10 R11
  NAMECALL R7 R4 K11 ["FindFirstChild"]
  CALL R7 2 1
  MOVE R11 R2
  LOADK R12 K15 ["GripAttachment"]
  CONCAT R10 R11 R12
  NAMECALL R8 R4 K11 ["FindFirstChild"]
  CALL R8 2 1
  FASTCALL1 ASSERT R5 [+3]
  MOVE R10 R5
  GETIMPORT R9 K7 [assert]
  CALL R9 1 0
  FASTCALL1 ASSERT R6 [+3]
  MOVE R10 R6
  GETIMPORT R9 K7 [assert]
  CALL R9 1 0
  FASTCALL1 ASSERT R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K7 [assert]
  CALL R9 1 0
  FASTCALL1 ASSERT R8 [+3]
  MOVE R10 R8
  GETIMPORT R9 K7 [assert]
  CALL R9 1 0
  GETTABLEKS R9 R7 K16 ["CFrame"]
  GETTABLEKS R11 R6 K16 ["CFrame"]
  NAMECALL R11 R11 K17 ["Inverse"]
  CALL R11 1 1
  MUL R10 R9 R11
  GETTABLEKS R12 R5 K16 ["CFrame"]
  MUL R11 R10 R12
  GETTABLEKS R13 R9 K18 ["Position"]
  GETTABLEKS R14 R11 K18 ["Position"]
  SUB R12 R13 R14
  GETTABLEKS R15 R12 K19 ["X"]
  LOADN R17 0
  GETTABLEKS R19 R12 K20 ["Y"]
  MINUS R18 R19
  FASTCALL2 MATH_MAX R17 R18 [+3]
  GETIMPORT R16 K23 [math.max]
  CALL R16 2 1
  LOADN R17 0
  FASTCALL VECTOR [+2]
  GETIMPORT R14 K26 [Vector3.new]
  CALL R14 3 1
  GETTABLEKS R13 R14 K27 ["Unit"]
  GETTABLEKS R16 R13 K19 ["X"]
  FASTCALL1 MATH_ACOS R16 [+2]
  GETIMPORT R15 K30 [math.acos]
  CALL R15 1 1
  SUBRK R14 R28 K15 ["GripAttachment"]
  GETIMPORT R15 K32 [CFrame.fromEulerAnglesXYZ]
  LOADN R16 0
  LOADN R17 0
  MOVE R18 R14
  CALL R15 3 1
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K33 ["Rotation"]
  MUL R16 R15 R17
  RETURN R16 1

PROTO_20:
  GETUPVAL R3 0
  CALL R3 0 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 -1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["new"]
  CALL R2 0 1
  NAMECALL R3 R0 K3 ["GetDescendants"]
  CALL R3 1 3
  FORGPREP R3
  GETTABLEKS R8 R7 K4 ["ClassName"]
  JUMPIFNOTEQKS R8 K5 ["Attachment"] [+180]
  GETTABLEKS R10 R7 K6 ["Name"]
  FASTCALL2K STRING_SUB R10 K7 [+4]
  LOADK R11 K7 [-13]
  GETIMPORT R9 K10 [string.sub]
  CALL R9 2 1
  JUMPIFEQKS R9 K11 ["RigAttachment"] [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETTABLEKS R11 R7 K6 ["Name"]
  FASTCALL2K STRING_SUB R11 K12 [+4]
  LOADK R12 K12 [-14]
  GETIMPORT R10 K10 [string.sub]
  CALL R10 2 1
  JUMPIFEQKS R10 K13 ["GripAttachment"] [+2]
  LOADB R9 0 +1
  LOADB R9 1
  JUMPIFNOT R8 [+47]
  GETTABLEKS R10 R7 K14 ["CFrame"]
  NAMECALL R10 R10 K15 ["ToOrientation"]
  CALL R10 1 3
  GETUPVAL R13 2
  MOVE R14 R10
  LOADN R15 0
  CALL R13 2 1
  JUMPIFNOT R13 [+10]
  GETUPVAL R13 2
  MOVE R14 R11
  LOADN R15 0
  CALL R13 2 1
  JUMPIFNOT R13 [+5]
  GETUPVAL R13 2
  MOVE R14 R12
  LOADN R15 0
  CALL R13 2 1
  JUMPIF R13 [+134]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K16 ["reportFailure"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K17 ["ErrorType"]
  GETTABLEKS R14 R15 K18 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
  LOADNIL R15
  MOVE R16 R1
  CALL R13 3 0
  LOADB R15 0
  NEWTABLE R16 0 1
  GETIMPORT R17 K20 [string.format]
  LOADK R18 K21 ["Rig attachments cannot be rotated, please set %s's orientation to (0,0,0)"]
  NAMECALL R19 R7 K22 ["GetFullName"]
  CALL R19 1 -1
  CALL R17 -1 -1
  SETLIST R16 R17 -1 [1]
  NAMECALL R13 R2 K23 ["updateReasons"]
  CALL R13 3 0
  JUMP [+107]
  GETUPVAL R11 4
  GETTABLEKS R12 R7 K6 ["Name"]
  GETTABLE R10 R11 R12
  JUMPIFEQKNIL R10 [+102]
  GETIMPORT R10 K24 [CFrame.new]
  CALL R10 0 1
  JUMPIFNOT R9 [+14]
  GETTABLEKS R12 R1 K25 ["assetTypeEnum"]
  FASTCALL1 ASSERT R12 [+2]
  GETIMPORT R11 K1 [assert]
  CALL R11 1 0
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K26 ["expectedGripAttCFrameRotation"]
  MOVE R12 R0
  GETTABLEKS R13 R1 K25 ["assetTypeEnum"]
  CALL R11 2 1
  MOVE R10 R11
  GETUPVAL R11 6
  MOVE R12 R10
  GETTABLEKS R13 R7 K14 ["CFrame"]
  CALL R11 2 1
  GETUPVAL R13 4
  GETTABLEKS R14 R7 K6 ["Name"]
  GETTABLE R12 R13 R14
  CALL R12 0 1
  JUMPIFNOTLT R12 R11 [+72]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K16 ["reportFailure"]
  JUMPIFNOT R9 [+6]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["ErrorType"]
  GETTABLEKS R12 R13 K27 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
  JUMPIF R12 [+5]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K17 ["ErrorType"]
  GETTABLEKS R12 R13 K28 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
  LOADNIL R13
  MOVE R14 R1
  CALL R11 3 0
  NAMECALL R12 R10 K15 ["ToOrientation"]
  CALL R12 1 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R11 K30 [Vector3.new]
  CALL R11 -1 1
  GETTABLEKS R14 R11 K31 ["X"]
  FASTCALL1 MATH_DEG R14 [+2]
  GETIMPORT R13 K34 [math.deg]
  CALL R13 1 1
  GETTABLEKS R15 R11 K35 ["Y"]
  FASTCALL1 MATH_DEG R15 [+2]
  GETIMPORT R14 K34 [math.deg]
  CALL R14 1 1
  GETTABLEKS R16 R11 K36 ["Z"]
  FASTCALL1 MATH_DEG R16 [+2]
  GETIMPORT R15 K34 [math.deg]
  CALL R15 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R12 K30 [Vector3.new]
  CALL R12 3 1
  MOVE R11 R12
  LOADB R14 0
  NEWTABLE R15 0 1
  GETIMPORT R16 K20 [string.format]
  LOADK R17 K37 ["Attachment %s's orientation deviates too far from expectation, which will make attached accessories look unaligned. Recommended orientation is %s, and you can deviate up to %d degrees"]
  NAMECALL R18 R7 K22 ["GetFullName"]
  CALL R18 1 1
  GETUPVAL R19 7
  MOVE R20 R11
  CALL R19 1 1
  GETUPVAL R21 4
  GETTABLEKS R22 R7 K6 ["Name"]
  GETTABLE R20 R21 R22
  CALL R20 0 -1
  CALL R16 -1 -1
  SETLIST R15 R16 -1 [1]
  NAMECALL R12 R2 K23 ["updateReasons"]
  CALL R12 3 0
  FORGLOOP R3 2 [-184]
  NAMECALL R3 R2 K38 ["getFinalResults"]
  CALL R3 1 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K6 ["util"]
  GETTABLEKS R3 R4 K7 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K6 ["util"]
  GETTABLEKS R4 R5 K8 ["FailureReasonsAccumulator"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K6 ["util"]
  GETTABLEKS R5 R6 K9 ["getDiffBetweenOrientations"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K6 ["util"]
  GETTABLEKS R6 R7 K10 ["floatEquals"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K6 ["util"]
  GETTABLEKS R7 R8 K11 ["valueToString"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K12 ["flags"]
  GETTABLEKS R8 R9 K13 ["getFFlagRefactorBodyAttachmentOrientationsCheck"]
  CALL R7 1 1
  NEWTABLE R8 2 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K16 ["UGCValidationAttRotLimitRootAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K18 ["UGCValidationAttRotLimitFaceFrontAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K19 ["UGCValidationAttRotLimitHatAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K20 ["UGCValidationAttRotLimitHairAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K21 ["UGCValidationAttRotLimitFaceCenterAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K22 ["UGCValidationAttRotLimitRightFootAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K23 ["UGCValidationAttRotLimitLeftFootAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K24 ["UGCValidationAttRotLimitBodyFrontAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K25 ["UGCValidationAttRotLimitBodyBackAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K26 ["UGCValidationAttRotLimitLeftCollarAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K27 ["UGCValidationAttRotLimitRightCollarAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K28 ["UGCValidationAttRotLimitNeckAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K29 ["UGCValidationAttRotLimitWaistCenterAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K30 ["UGCValidationAttRotLimitWaistFrontAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K31 ["UGCValidationAttRotLimitWaistBackAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K32 ["UGCValidationAttRotLimitLeftShoulderAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K33 ["UGCValidationAttRotLimitLeftGripAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K34 ["UGCValidationAttRotLimitRightShoulderAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  GETIMPORT R9 K15 [game]
  LOADK R11 K35 ["UGCValidationAttRotLimitRightGripAttachment"]
  LOADN R12 30
  NAMECALL R9 R9 K17 ["DefineFastInt"]
  CALL R9 3 0
  DUPTABLE R9 K55 [{"RootAttachment", "FaceFrontAttachment", "HatAttachment", "HairAttachment", "FaceCenterAttachment", "RightFootAttachment", "LeftFootAttachment", "BodyFrontAttachment", "BodyBackAttachment", "LeftCollarAttachment", "RightCollarAttachment", "NeckAttachment", "WaistCenterAttachment", "WaistFrontAttachment", "WaistBackAttachment", "LeftShoulderAttachment", "LeftGripAttachment", "RightShoulderAttachment", "RightGripAttachment"}]
  DUPCLOSURE R10 K56 [PROTO_0]
  SETTABLEKS R10 R9 K36 ["RootAttachment"]
  DUPCLOSURE R10 K57 [PROTO_1]
  SETTABLEKS R10 R9 K37 ["FaceFrontAttachment"]
  DUPCLOSURE R10 K58 [PROTO_2]
  SETTABLEKS R10 R9 K38 ["HatAttachment"]
  DUPCLOSURE R10 K59 [PROTO_3]
  SETTABLEKS R10 R9 K39 ["HairAttachment"]
  DUPCLOSURE R10 K60 [PROTO_4]
  SETTABLEKS R10 R9 K40 ["FaceCenterAttachment"]
  DUPCLOSURE R10 K61 [PROTO_5]
  SETTABLEKS R10 R9 K41 ["RightFootAttachment"]
  DUPCLOSURE R10 K62 [PROTO_6]
  SETTABLEKS R10 R9 K42 ["LeftFootAttachment"]
  DUPCLOSURE R10 K63 [PROTO_7]
  SETTABLEKS R10 R9 K43 ["BodyFrontAttachment"]
  DUPCLOSURE R10 K64 [PROTO_8]
  SETTABLEKS R10 R9 K44 ["BodyBackAttachment"]
  DUPCLOSURE R10 K65 [PROTO_9]
  SETTABLEKS R10 R9 K45 ["LeftCollarAttachment"]
  DUPCLOSURE R10 K66 [PROTO_10]
  SETTABLEKS R10 R9 K46 ["RightCollarAttachment"]
  DUPCLOSURE R10 K67 [PROTO_11]
  SETTABLEKS R10 R9 K47 ["NeckAttachment"]
  DUPCLOSURE R10 K68 [PROTO_12]
  SETTABLEKS R10 R9 K48 ["WaistCenterAttachment"]
  DUPCLOSURE R10 K69 [PROTO_13]
  SETTABLEKS R10 R9 K49 ["WaistFrontAttachment"]
  DUPCLOSURE R10 K70 [PROTO_14]
  SETTABLEKS R10 R9 K50 ["WaistBackAttachment"]
  DUPCLOSURE R10 K71 [PROTO_15]
  SETTABLEKS R10 R9 K51 ["LeftShoulderAttachment"]
  DUPCLOSURE R10 K72 [PROTO_16]
  SETTABLEKS R10 R9 K52 ["LeftGripAttachment"]
  DUPCLOSURE R10 K73 [PROTO_17]
  SETTABLEKS R10 R9 K53 ["RightShoulderAttachment"]
  DUPCLOSURE R10 K74 [PROTO_18]
  SETTABLEKS R10 R9 K54 ["RightGripAttachment"]
  GETIMPORT R11 K77 [CFrame.new]
  LOADK R12 K78 [{0, 0, 0}]
  LOADK R13 K79 [{0, 0, -1}]
  CALL R11 2 1
  GETIMPORT R12 K81 [CFrame.fromEulerAnglesXYZ]
  LOADK R13 K82 [-1.5707963267949]
  LOADN R14 0
  LOADN R15 0
  CALL R12 3 1
  MUL R10 R11 R12
  DUPCLOSURE R11 K83 [PROTO_19]
  CAPTURE VAL R10
  SETTABLEKS R11 R8 K84 ["expectedGripAttCFrameRotation"]
  DUPCLOSURE R11 K85 [PROTO_20]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R11 R8 K86 ["runValidation"]
  RETURN R8 1
