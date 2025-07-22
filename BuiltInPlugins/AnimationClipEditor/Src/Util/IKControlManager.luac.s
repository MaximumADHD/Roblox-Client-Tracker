PROTO_0:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["IK_MODE"]
  GETTABLEKS R4 R5 K1 ["BodyPart"]
  JUMPIFEQ R1 R4 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K2 [+4]
  LOADK R4 K2 ["Only Body Part IK mode is currrently supported with IK Controls"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["isR15Humanoid"]
  MOVE R4 R0
  CALL R3 1 1
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Only R15 rigs are supported with IK Controls"]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  LOADK R4 K7 ["HumanoidRigDescription"]
  NAMECALL R2 R0 K8 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIF R2 [+5]
  GETIMPORT R3 K11 [Instance.new]
  LOADK R4 K7 ["HumanoidRigDescription"]
  CALL R3 1 1
  MOVE R2 R3
  FASTCALL2K ASSERT R2 K12 [+5]
  MOVE R4 R2
  LOADK R5 K12 ["HumanoidRigDescription was not initialized correctly"]
  GETIMPORT R3 K4 [assert]
  CALL R3 2 0
  SETTABLEKS R0 R2 K13 ["Parent"]
  MOVE R5 R0
  NAMECALL R3 R2 K14 ["Automap"]
  CALL R3 2 0
  DUPTABLE R4 K20 [{"_model", "_ikControls", "_attachments", "_selectedPart", "_hrd"}]
  SETTABLEKS R0 R4 K15 ["_model"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K16 ["_ikControls"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K17 ["_attachments"]
  LOADNIL R5
  SETTABLEKS R5 R4 K18 ["_selectedPart"]
  SETTABLEKS R2 R4 K19 ["_hrd"]
  GETUPVAL R5 2
  FASTCALL2 SETMETATABLE R4 R5 [+3]
  GETIMPORT R3 K22 [setmetatable]
  CALL R3 2 1
  RETURN R3 1

PROTO_1:
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K2 ["_ikControls"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["Destroy"]
  CALL R6 1 0
  GETTABLEKS R6 R0 K2 ["_ikControls"]
  LOADNIL R7
  SETTABLE R7 R6 R4
  FORGLOOP R1 2 [-8]
  GETIMPORT R1 K1 [pairs]
  GETTABLEKS R2 R0 K4 ["_attachments"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  NAMECALL R6 R5 K3 ["Destroy"]
  CALL R6 1 0
  GETTABLEKS R6 R0 K4 ["_attachments"]
  LOADNIL R7
  SETTABLE R7 R6 R4
  FORGLOOP R1 2 [-8]
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["_selectedPart"]
  LOADNIL R1
  SETTABLEKS R1 R0 K6 ["_model"]
  LOADNIL R1
  SETTABLEKS R1 R0 K7 ["_hrd"]
  RETURN R0 0

PROTO_2:
  NEWTABLE R1 0 0
  GETTABLEKS R3 R0 K0 ["EndEffector"]
  LOADK R5 K1 ["EndEffector not found for IKControl: "]
  GETTABLEKS R6 R0 K2 ["Name"]
  CONCAT R4 R5 R6
  FASTCALL2 ASSERT R3 R4 [+3]
  GETIMPORT R2 K4 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["EndEffector"]
  LOADK R4 K5 ["Motor6D"]
  LOADB R5 1
  NAMECALL R2 R2 K6 ["FindFirstChildWhichIsA"]
  CALL R2 3 1
  GETTABLEKS R3 R2 K7 ["Part1"]
  FASTCALL2 TABLE_INSERT R1 R2 [+5]
  MOVE R5 R1
  MOVE R6 R2
  GETIMPORT R4 K10 [table.insert]
  CALL R4 2 0
  GETTABLEKS R5 R2 K11 ["Part0"]
  LOADK R7 K12 ["Motor6D.Part0 not found for: "]
  GETTABLEKS R8 R2 K2 ["Name"]
  CONCAT R6 R7 R8
  FASTCALL2 ASSERT R5 R6 [+3]
  GETIMPORT R4 K4 [assert]
  CALL R4 2 0
  GETTABLEKS R4 R2 K11 ["Part0"]
  LOADK R6 K5 ["Motor6D"]
  LOADB R7 1
  NAMECALL R4 R4 K6 ["FindFirstChildWhichIsA"]
  CALL R4 3 1
  MOVE R2 R4
  GETTABLEKS R4 R0 K13 ["ChainRoot"]
  JUMPIFEQ R3 R4 [+2]
  JUMPBACK [-33]
  GETIMPORT R3 K15 [ipairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R9 0
  GETTABLEKS R10 R7 K2 ["Name"]
  GETTABLE R8 R9 R10
  LOADK R11 K16 ["Muscle Rest Pose not defined for joint: "]
  GETTABLEKS R12 R7 K2 ["Name"]
  FASTCALL3 ASSERT R8 R11 R12
  MOVE R10 R8
  GETIMPORT R9 K4 [assert]
  CALL R9 3 0
  SETTABLEKS R8 R7 K17 ["Transform"]
  FORGLOOP R3 2 [inext] [-16]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R5 R0 K0 ["_ikControls"]
  GETTABLEKS R6 R1 K1 ["Name"]
  GETTABLE R4 R5 R6
  JUMPIFNOT R4 [+6]
  GETTABLEKS R5 R0 K0 ["_ikControls"]
  GETTABLEKS R6 R1 K1 ["Name"]
  GETTABLE R4 R5 R6
  RETURN R4 1
  GETIMPORT R4 K4 [Instance.new]
  LOADK R5 K5 ["Attachment"]
  CALL R4 1 1
  LOADK R6 K6 ["Target"]
  GETTABLEKS R7 R1 K1 ["Name"]
  CONCAT R5 R6 R7
  SETTABLEKS R5 R4 K1 ["Name"]
  GETTABLEKS R5 R0 K7 ["_model"]
  LOADK R7 K8 ["HumanoidRootPart"]
  NAMECALL R5 R5 K9 ["FindFirstChild"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K10 ["Parent"]
  GETTABLEKS R5 R1 K11 ["CFrame"]
  SETTABLEKS R5 R4 K12 ["WorldCFrame"]
  GETTABLEKS R5 R0 K13 ["_attachments"]
  GETTABLEKS R6 R4 K1 ["Name"]
  SETTABLE R4 R5 R6
  GETIMPORT R5 K4 [Instance.new]
  LOADK R6 K14 ["IKControl"]
  CALL R5 1 1
  SETTABLEKS R2 R5 K15 ["ChainRoot"]
  SETTABLEKS R1 R5 K16 ["EndEffector"]
  LOADK R7 K14 ["IKControl"]
  GETTABLEKS R8 R1 K1 ["Name"]
  CONCAT R6 R7 R8
  SETTABLEKS R6 R5 K1 ["Name"]
  SETTABLEKS R4 R5 K6 ["Target"]
  MOVE R6 R3
  JUMPIF R6 [+2]
  GETIMPORT R6 K20 [Enum.IKControlType.Transform]
  SETTABLEKS R6 R5 K21 ["Type"]
  LOADN R6 0
  SETTABLEKS R6 R5 K22 ["SmoothTime"]
  GETTABLEKS R6 R0 K7 ["_model"]
  LOADK R8 K23 ["Humanoid"]
  NAMECALL R6 R6 K24 ["FindFirstChildOfClass"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Parent"]
  GETTABLEKS R6 R0 K0 ["_ikControls"]
  GETTABLEKS R7 R1 K1 ["Name"]
  SETTABLE R5 R6 R7
  RETURN R5 1

PROTO_4:
  LOADB R1 1
  JUMPIFEQKS R0 K0 ["UpperTorso"] [+5]
  JUMPIFEQKS R0 K1 ["LowerTorso"] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["_hrd"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["R15_PART_TO_HRD_JOINT"]
  GETTABLE R4 R5 R1
  GETTABLE R2 R3 R4
  RETURN R2 1

PROTO_6:
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["_selectedPart"]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K1 ["Name"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+8]
  GETIMPORT R2 K3 [warn]
  LOADK R3 K4 ["Selected part cannot be moved in Body Part IK mode:"]
  GETTABLEKS R4 R1 K1 ["Name"]
  CALL R2 2 0
  LOADB R2 0
  RETURN R2 1
  LOADB R2 0
  GETTABLEKS R4 R1 K1 ["Name"]
  LOADB R3 1
  JUMPIFEQKS R4 K5 ["UpperTorso"] [+5]
  JUMPIFEQKS R4 K6 ["LowerTorso"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+37]
  GETTABLEKS R7 R0 K7 ["_hrd"]
  GETTABLEKS R6 R7 K8 ["LeftAnkle"]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R8 R0 K7 ["_hrd"]
  GETTABLEKS R7 R8 K10 ["LeftHip"]
  GETTABLEKS R6 R7 K9 ["Parent"]
  NAMECALL R3 R0 K11 ["getOrCreateIKControl"]
  CALL R3 3 1
  GETTABLEKS R8 R0 K7 ["_hrd"]
  GETTABLEKS R7 R8 K12 ["RightAnkle"]
  GETTABLEKS R6 R7 K9 ["Parent"]
  GETTABLEKS R9 R0 K7 ["_hrd"]
  GETTABLEKS R8 R9 K13 ["RightHip"]
  GETTABLEKS R7 R8 K9 ["Parent"]
  NAMECALL R4 R0 K11 ["getOrCreateIKControl"]
  CALL R4 3 1
  AND R6 R3 R4
  FASTCALL2K ASSERT R6 K14 [+4]
  LOADK R7 K14 ["Unexpected issue with Foot IK Controls setup"]
  GETIMPORT R5 K16 [assert]
  CALL R5 2 0
  GETTABLEKS R5 R1 K1 ["Name"]
  NAMECALL R3 R0 K17 ["getJoint"]
  CALL R3 2 1
  GETUPVAL R7 0
  GETTABLEKS R8 R1 K1 ["Name"]
  GETTABLE R6 R7 R8
  NAMECALL R4 R0 K17 ["getJoint"]
  CALL R4 2 1
  GETTABLEKS R7 R3 K9 ["Parent"]
  GETTABLEKS R8 R4 K9 ["Parent"]
  NAMECALL R5 R0 K11 ["getOrCreateIKControl"]
  CALL R5 3 1
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+2]
  SETTABLEKS R1 R0 K0 ["_selectedPart"]
  RETURN R2 1

PROTO_7:
  GETTABLEKS R2 R0 K0 ["_selectedPart"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R0 K1 ["_ikControls"]
  GETTABLEKS R5 R0 K0 ["_selectedPart"]
  GETTABLEKS R4 R5 K2 ["Name"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+10]
  GETIMPORT R3 K4 [warn]
  LOADK R5 K5 ["IK Control not found for end effector: "]
  GETTABLEKS R7 R0 K0 ["_selectedPart"]
  GETTABLEKS R6 R7 K2 ["Name"]
  CONCAT R4 R5 R6
  CALL R3 1 0
  RETURN R0 0
  GETTABLEKS R4 R2 K6 ["Target"]
  FASTCALL1 ASSERT R4 [+2]
  GETIMPORT R3 K8 [assert]
  CALL R3 1 0
  GETTABLEKS R4 R2 K6 ["Target"]
  LOADK R6 K9 ["Attachment"]
  NAMECALL R4 R4 K10 ["IsA"]
  CALL R4 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R3 K8 [assert]
  CALL R3 -1 0
  GETTABLEKS R3 R2 K6 ["Target"]
  SETTABLEKS R1 R3 K11 ["WorldCFrame"]
  GETUPVAL R3 0
  MOVE R4 R2
  CALL R3 1 0
  NAMECALL R3 R2 K12 ["Solve"]
  CALL R3 1 0
  GETTABLEKS R5 R0 K0 ["_selectedPart"]
  GETTABLEKS R4 R5 K2 ["Name"]
  LOADB R3 1
  JUMPIFEQKS R4 K13 ["UpperTorso"] [+5]
  JUMPIFEQKS R4 K14 ["LowerTorso"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+27]
  GETTABLEKS R4 R0 K1 ["_ikControls"]
  GETTABLEKS R3 R4 K15 ["LeftFoot"]
  GETTABLEKS R5 R0 K1 ["_ikControls"]
  GETTABLEKS R4 R5 K16 ["RightFoot"]
  AND R6 R3 R4
  FASTCALL2K ASSERT R6 K17 [+4]
  LOADK R7 K17 ["Foot IK Controls not found"]
  GETIMPORT R5 K8 [assert]
  CALL R5 2 0
  GETUPVAL R5 0
  MOVE R6 R3
  CALL R5 1 0
  GETUPVAL R5 0
  MOVE R6 R4
  CALL R5 1 0
  NAMECALL R5 R3 K12 ["Solve"]
  CALL R5 1 0
  NAMECALL R5 R4 K12 ["Solve"]
  CALL R5 1 0
  GETTABLEKS R3 R0 K18 ["_model"]
  LOADK R5 K19 ["Animator"]
  LOADB R6 1
  NAMECALL R3 R3 K20 ["FindFirstChildWhichIsA"]
  CALL R3 3 1
  JUMPIFNOT R3 [+9]
  GETUPVAL R4 1
  NAMECALL R4 R4 K21 ["IsRunning"]
  CALL R4 1 1
  JUMPIF R4 [+4]
  LOADN R6 0
  NAMECALL R4 R3 K22 ["StepAnimations"]
  CALL R4 2 0
  RETURN R0 0

PROTO_8:
  LOADK R5 K0 ["Motor6D"]
  NAMECALL R3 R1 K1 ["FindFirstChildOfClass"]
  CALL R3 2 1
  GETTABLEKS R4 R3 K2 ["Part1"]
  GETTABLEKS R5 R4 K3 ["Name"]
  GETTABLEKS R6 R3 K4 ["Transform"]
  SETTABLE R6 R0 R5
  GETTABLEKS R6 R3 K5 ["Part0"]
  LOADK R8 K6 ["Motor6D.Part0 not found for: "]
  GETTABLEKS R9 R3 K3 ["Name"]
  CONCAT R7 R8 R9
  FASTCALL2 ASSERT R6 R7 [+3]
  GETIMPORT R5 K8 [assert]
  CALL R5 2 0
  GETTABLEKS R5 R3 K5 ["Part0"]
  LOADK R7 K0 ["Motor6D"]
  LOADB R8 1
  NAMECALL R5 R5 K9 ["FindFirstChildWhichIsA"]
  CALL R5 3 1
  MOVE R3 R5
  JUMPIFEQ R4 R2 [+2]
  JUMPBACK [-29]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_selectedPart"]
  JUMPIF R1 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETTABLEKS R2 R0 K1 ["_ikControls"]
  GETTABLEKS R4 R0 K0 ["_selectedPart"]
  GETTABLEKS R3 R4 K2 ["Name"]
  GETTABLE R1 R2 R3
  LOADK R5 K3 ["IK Control not found for end effector: "]
  GETTABLEKS R7 R0 K0 ["_selectedPart"]
  GETTABLEKS R6 R7 K2 ["Name"]
  CONCAT R4 R5 R6
  FASTCALL2 ASSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  NEWTABLE R2 0 0
  GETTABLEKS R5 R0 K0 ["_selectedPart"]
  GETTABLEKS R4 R5 K2 ["Name"]
  LOADB R3 1
  JUMPIFEQKS R4 K6 ["UpperTorso"] [+5]
  JUMPIFEQKS R4 K7 ["LowerTorso"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+29]
  GETTABLEKS R4 R0 K1 ["_ikControls"]
  GETTABLEKS R3 R4 K8 ["LeftFoot"]
  GETTABLEKS R5 R0 K1 ["_ikControls"]
  GETTABLEKS R4 R5 K9 ["RightFoot"]
  AND R6 R3 R4
  FASTCALL2K ASSERT R6 K10 [+4]
  LOADK R7 K10 ["Foot IK Controls not found"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  GETUPVAL R5 0
  MOVE R6 R2
  GETTABLEKS R7 R3 K11 ["EndEffector"]
  GETTABLEKS R8 R3 K12 ["ChainRoot"]
  CALL R5 3 0
  GETUPVAL R5 0
  MOVE R6 R2
  GETTABLEKS R7 R4 K11 ["EndEffector"]
  GETTABLEKS R8 R4 K12 ["ChainRoot"]
  CALL R5 3 0
  GETUPVAL R3 0
  MOVE R4 R2
  GETTABLEKS R5 R1 K11 ["EndEffector"]
  GETTABLEKS R6 R1 K12 ["ChainRoot"]
  CALL R3 3 0
  RETURN R2 1

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_selectedPart"]
  JUMPIF R1 [+4]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["No part selected for IK Control"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K0 ["_selectedPart"]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["_model"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 16 0
  SETTABLEKS R0 R0 K0 ["__index"]
  GETIMPORT R1 K2 [script]
  LOADK R3 K3 ["AnimationClipEditor"]
  NAMECALL R1 R1 K4 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R1 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R1 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["RigInfo"]
  CALL R3 1 1
  GETIMPORT R4 K12 [game]
  LOADK R6 K13 ["RunService"]
  NAMECALL R4 R4 K14 ["GetService"]
  CALL R4 2 1
  DUPTABLE R5 K30 [{"Head", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "RightFoot", "LeftLowerLeg", "RightLowerLeg", "LeftUpperLeg", "RightUpperLeg", "UpperTorso", "LowerTorso"}]
  LOADK R6 K15 ["Head"]
  SETTABLEKS R6 R5 K15 ["Head"]
  LOADK R6 K20 ["LeftUpperArm"]
  SETTABLEKS R6 R5 K16 ["LeftHand"]
  LOADK R6 K21 ["RightUpperArm"]
  SETTABLEKS R6 R5 K17 ["RightHand"]
  LOADK R6 K20 ["LeftUpperArm"]
  SETTABLEKS R6 R5 K18 ["LeftLowerArm"]
  LOADK R6 K21 ["RightUpperArm"]
  SETTABLEKS R6 R5 K19 ["RightLowerArm"]
  LOADK R6 K28 ["UpperTorso"]
  SETTABLEKS R6 R5 K20 ["LeftUpperArm"]
  LOADK R6 K28 ["UpperTorso"]
  SETTABLEKS R6 R5 K21 ["RightUpperArm"]
  LOADK R6 K26 ["LeftUpperLeg"]
  SETTABLEKS R6 R5 K22 ["LeftFoot"]
  LOADK R6 K27 ["RightUpperLeg"]
  SETTABLEKS R6 R5 K23 ["RightFoot"]
  LOADK R6 K26 ["LeftUpperLeg"]
  SETTABLEKS R6 R5 K24 ["LeftLowerLeg"]
  LOADK R6 K27 ["RightUpperLeg"]
  SETTABLEKS R6 R5 K25 ["RightLowerLeg"]
  LOADK R6 K26 ["LeftUpperLeg"]
  SETTABLEKS R6 R5 K26 ["LeftUpperLeg"]
  LOADK R6 K27 ["RightUpperLeg"]
  SETTABLEKS R6 R5 K27 ["RightUpperLeg"]
  LOADK R6 K28 ["UpperTorso"]
  SETTABLEKS R6 R5 K28 ["UpperTorso"]
  LOADK R6 K29 ["LowerTorso"]
  SETTABLEKS R6 R5 K29 ["LowerTorso"]
  DUPTABLE R6 K31 [{"LowerTorso", "UpperTorso", "LeftFoot", "RightFoot", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftLowerLeg", "RightLowerLeg", "LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg", "Head"}]
  LOADK R7 K32 ["Root"]
  SETTABLEKS R7 R6 K29 ["LowerTorso"]
  LOADK R7 K33 ["Waist"]
  SETTABLEKS R7 R6 K28 ["UpperTorso"]
  LOADK R7 K34 ["LeftAnkle"]
  SETTABLEKS R7 R6 K22 ["LeftFoot"]
  LOADK R7 K35 ["RightAnkle"]
  SETTABLEKS R7 R6 K23 ["RightFoot"]
  LOADK R7 K36 ["LeftWrist"]
  SETTABLEKS R7 R6 K16 ["LeftHand"]
  LOADK R7 K37 ["RightWrist"]
  SETTABLEKS R7 R6 K17 ["RightHand"]
  LOADK R7 K38 ["LeftElbow"]
  SETTABLEKS R7 R6 K18 ["LeftLowerArm"]
  LOADK R7 K39 ["RightElbow"]
  SETTABLEKS R7 R6 K19 ["RightLowerArm"]
  LOADK R7 K40 ["LeftKnee"]
  SETTABLEKS R7 R6 K24 ["LeftLowerLeg"]
  LOADK R7 K41 ["RightKnee"]
  SETTABLEKS R7 R6 K25 ["RightLowerLeg"]
  LOADK R7 K42 ["LeftShoulder"]
  SETTABLEKS R7 R6 K20 ["LeftUpperArm"]
  LOADK R7 K43 ["RightShoulder"]
  SETTABLEKS R7 R6 K21 ["RightUpperArm"]
  LOADK R7 K44 ["LeftHip"]
  SETTABLEKS R7 R6 K26 ["LeftUpperLeg"]
  LOADK R7 K45 ["RightHip"]
  SETTABLEKS R7 R6 K27 ["RightUpperLeg"]
  LOADK R7 K46 ["Neck"]
  SETTABLEKS R7 R6 K15 ["Head"]
  SETTABLEKS R6 R0 K47 ["R15_PART_TO_HRD_JOINT"]
  DUPTABLE R6 K48 [{"Root", "Waist", "Neck", "LeftWrist", "LeftAnkle", "RightWrist", "RightAnkle", "RightShoulder", "RightElbow", "LeftShoulder", "LeftElbow", "LeftKnee", "LeftHip", "RightKnee", "RightHip"}]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K32 ["Root"]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K33 ["Waist"]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K46 ["Neck"]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K36 ["LeftWrist"]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K34 ["LeftAnkle"]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K37 ["RightWrist"]
  GETIMPORT R7 K51 [CFrame.identity]
  SETTABLEKS R7 R6 K35 ["RightAnkle"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K54 [0.408]
  LOADK R9 K55 [0.326]
  LOADK R10 K56 [0.48]
  CALL R7 3 1
  SETTABLEKS R7 R6 K43 ["RightShoulder"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K57 [1.165]
  LOADK R9 K58 [-0.111]
  LOADK R10 K59 [-0.342]
  CALL R7 3 1
  SETTABLEKS R7 R6 K39 ["RightElbow"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K54 [0.408]
  LOADK R9 K60 [-0.326]
  LOADK R10 K61 [-0.48]
  CALL R7 3 1
  SETTABLEKS R7 R6 K42 ["LeftShoulder"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K57 [1.165]
  LOADK R9 K62 [0.111]
  LOADK R10 K63 [0.342]
  CALL R7 3 1
  SETTABLEKS R7 R6 K38 ["LeftElbow"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K64 [-1.398]
  LOADK R9 K65 [-0.098]
  LOADK R10 K66 [0.119]
  CALL R7 3 1
  SETTABLEKS R7 R6 K40 ["LeftKnee"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K67 [0.561]
  LOADK R9 K68 [-0.018]
  LOADK R10 K69 [0.031]
  CALL R7 3 1
  SETTABLEKS R7 R6 K44 ["LeftHip"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K70 [-1.399]
  LOADK R9 K71 [0.055]
  LOADK R10 K72 [-0.066]
  CALL R7 3 1
  SETTABLEKS R7 R6 K41 ["RightKnee"]
  GETIMPORT R7 K53 [CFrame.fromOrientation]
  LOADK R8 K67 [0.561]
  LOADK R9 K73 [0.018]
  LOADK R10 K74 [-0.031]
  CALL R7 3 1
  SETTABLEKS R7 R6 K45 ["RightHip"]
  DUPCLOSURE R7 K75 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R0
  SETTABLEKS R7 R0 K76 ["new"]
  DUPCLOSURE R7 K77 [PROTO_1]
  SETTABLEKS R7 R0 K78 ["cleanUp"]
  DUPCLOSURE R7 K79 [PROTO_2]
  CAPTURE VAL R6
  DUPCLOSURE R8 K80 [PROTO_3]
  SETTABLEKS R8 R0 K81 ["getOrCreateIKControl"]
  DUPCLOSURE R8 K82 [PROTO_4]
  DUPCLOSURE R9 K83 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R9 R0 K84 ["getJoint"]
  DUPCLOSURE R9 K85 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R9 R0 K86 ["setupIKControl"]
  DUPCLOSURE R9 K87 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R4
  SETTABLEKS R9 R0 K88 ["solve"]
  DUPCLOSURE R9 K89 [PROTO_8]
  DUPCLOSURE R10 K90 [PROTO_9]
  CAPTURE VAL R9
  SETTABLEKS R10 R0 K91 ["getTransforms"]
  DUPCLOSURE R10 K92 [PROTO_10]
  SETTABLEKS R10 R0 K93 ["getSelectedPart"]
  DUPCLOSURE R10 K94 [PROTO_11]
  SETTABLEKS R10 R0 K95 ["getModel"]
  RETURN R0 1
