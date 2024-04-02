PROTO_0:
  LOADB R2 0
  GETTABLEKS R3 R1 K0 ["Name"]
  JUMPIFNOTEQKS R3 K1 ["AnimSaves"] [+12]
  LOADK R4 K2 ["Model"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+4]
  LOADK R4 K4 ["ObjectValue"]
  NAMECALL R2 R1 K3 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+20]
  GETIMPORT R3 K6 [ipairs]
  NAMECALL R4 R1 K7 ["GetChildren"]
  CALL R4 1 -1
  CALL R3 -1 3
  FORGPREP_INEXT R3
  FASTCALL2 TABLE_INSERT R0 R7 [+5]
  MOVE R9 R0
  MOVE R10 R7
  GETIMPORT R8 K10 [table.insert]
  CALL R8 2 0
  GETUPVAL R8 1
  MOVE R9 R0
  MOVE R10 R7
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-12]
  RETURN R0 1

PROTO_1:
  GETIMPORT R0 K1 [Workspace]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["TEMPORARY_CONSTRAINTS"]
  NAMECALL R0 R0 K3 ["FindFirstChild"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getTemporaryConstraints"]
  CALL R1 0 1
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R0 0 +1
  LOADB R0 1
  RETURN R0 1

PROTO_3:
  NEWTABLE R1 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getTemporaryConstraints"]
  CALL R3 0 1
  OR R2 R3 R0
  GETUPVAL R3 1
  NEWTABLE R4 0 0
  MOVE R5 R2
  CALL R3 2 1
  GETIMPORT R4 K2 [ipairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_INEXT R4
  LOADK R11 K3 ["BallSocketConstraint"]
  NAMECALL R9 R8 K4 ["IsA"]
  CALL R9 2 1
  JUMPIF R9 [+5]
  LOADK R11 K5 ["HingeConstraint"]
  NAMECALL R9 R8 K4 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+7]
  FASTCALL2 TABLE_INSERT R1 R8 [+5]
  MOVE R10 R1
  MOVE R11 R8
  GETIMPORT R9 K8 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [inext] [-18]
  RETURN R1 1

PROTO_4:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R8 R6 K2 ["Part0"]
  GETTABLEKS R7 R8 K3 ["Name"]
  JUMPIFNOTEQ R7 R0 [+11]
  GETTABLEKS R10 R6 K4 ["Part1"]
  GETTABLEKS R9 R10 K3 ["Name"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K7 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-17]
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+31]
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 2
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K8 ["getPart0"]
  MOVE R8 R6
  CALL R7 1 1
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K9 ["getPart1"]
  MOVE R9 R6
  CALL R8 1 1
  JUMPIFNOT R7 [+13]
  JUMPIFNOT R8 [+12]
  GETTABLEKS R9 R7 K3 ["Name"]
  JUMPIFNOTEQ R9 R0 [+9]
  GETTABLEKS R11 R8 K3 ["Name"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K7 [table.insert]
  CALL R9 2 0
  FORGLOOP R2 2 [inext] [-25]
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 4
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R8 R6 K10 ["Parent"]
  GETTABLEKS R7 R8 K3 ["Name"]
  JUMPIFNOTEQ R7 R0 [+9]
  GETTABLEKS R9 R6 K3 ["Name"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K7 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [inext] [-15]
  RETURN R1 1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["findRootPart"]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["getMotors"]
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["getBones"]
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getAnimationConstraints"]
  MOVE R5 R0
  CALL R4 1 1
  JUMP [+2]
  NEWTABLE R4 0 0
  FASTCALL2K ASSERT R1 K4 [+5]
  MOVE R6 R1
  LOADK R7 K4 ["Rig is missing a root part."]
  GETIMPORT R5 K6 [assert]
  CALL R5 2 0
  GETTABLEKS R5 R1 K7 ["Name"]
  NEWTABLE R6 1 0
  GETUPVAL R7 2
  MOVE R8 R5
  NEWCLOSURE R9 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  CALL R7 2 1
  SETTABLE R7 R6 R5
  RETURN R6 1

PROTO_6:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+10]
  GETTABLEKS R1 R0 K0 ["PrimaryPart"]
  JUMPIF R1 [+4]
  LOADK R3 K1 ["HumanoidRootPart"]
  NAMECALL R1 R0 K2 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+14]
  RETURN R1 1
  JUMP [+12]
  LOADK R3 K1 ["HumanoidRootPart"]
  NAMECALL R1 R0 K2 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["PrimaryPart"]
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R0 K0 ["PrimaryPart"]
  RETURN R2 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["getRigInfo"]
  MOVE R2 R0
  CALL R1 1 1
  GETTABLEKS R2 R1 K4 ["PartNameToMotor"]
  GETTABLEKS R3 R1 K5 ["PartNameToAnimConstraint"]
  GETTABLEKS R4 R1 K6 ["BoneNameToBone"]
  LOADNIL R5
  GETIMPORT R6 K8 [next]
  MOVE R7 R2
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  CALL R6 1 1
  JUMPIFNOT R6 [+13]
  JUMPIF R5 [+12]
  GETTABLE R7 R2 R6
  JUMPIFNOT R7 [+8]
  GETTABLEKS R8 R7 K9 ["Part0"]
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R7 K9 ["Part0"]
  GETTABLEKS R6 R8 K10 ["Name"]
  JUMP [+1]
  MOVE R5 R6
  JUMPBACK [-13]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIF R7 [+1]
  JUMPIF R5 [+18]
  GETIMPORT R7 K8 [next]
  MOVE R8 R4
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  CALL R7 1 1
  JUMPIFNOT R7 [+10]
  JUMPIF R5 [+9]
  GETTABLE R8 R4 R7
  JUMPIFNOT R8 [+5]
  GETTABLEKS R9 R8 K11 ["Parent"]
  GETTABLEKS R7 R9 K10 ["Name"]
  JUMP [+1]
  MOVE R5 R7
  JUMPBACK [-10]
  GETUPVAL R7 2
  CALL R7 0 1
  JUMPIFNOT R7 [+19]
  JUMPIFNOT R3 [+18]
  GETIMPORT R7 K8 [next]
  MOVE R8 R3
  CALL R7 1 1
  JUMPIFNOT R7 [+13]
  JUMPIF R5 [+12]
  GETTABLE R8 R3 R7
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K12 ["getPart0"]
  MOVE R10 R8
  CALL R9 1 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R7 R9 K10 ["Name"]
  JUMP [+1]
  MOVE R5 R7
  JUMPBACK [-13]
  GETUPVAL R7 3
  NEWTABLE R8 0 0
  MOVE R9 R0
  CALL R7 2 1
  GETIMPORT R8 K14 [ipairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETTABLEKS R13 R12 K10 ["Name"]
  JUMPIFNOTEQ R13 R5 [+7]
  LOADK R15 K15 ["BasePart"]
  NAMECALL R13 R12 K16 ["IsA"]
  CALL R13 2 1
  JUMPIFNOT R13 [+1]
  RETURN R12 1
  FORGLOOP R8 2 [inext] [-11]
  RETURN R0 0

PROTO_7:
  LOADK R3 K0 ["Humanoid"]
  NAMECALL R1 R0 K1 ["FindFirstChildOfClass"]
  CALL R1 2 1
  JUMPIF R1 [+4]
  LOADK R3 K2 ["AnimationController"]
  NAMECALL R1 R0 K1 ["FindFirstChildOfClass"]
  CALL R1 2 1
  RETURN R1 1

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getAnimationController"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+12]
  LOADK R4 K1 ["Animator"]
  NAMECALL R2 R1 K2 ["FindFirstChildOfClass"]
  CALL R2 2 1
  JUMPIFNOT R2 [+1]
  RETURN R2 1
  GETIMPORT R3 K5 [Instance.new]
  LOADK R4 K1 ["Animator"]
  MOVE R5 R1
  CALL R3 2 -1
  RETURN R3 -1
  RETURN R0 0

PROTO_9:
  MOVE R1 R0
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K0 ["Attachment0"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["Attachment0"]
  GETTABLEKS R1 R2 K1 ["Parent"]
  JUMPIFNOT R1 [+7]
  LOADK R5 K2 ["BasePart"]
  NAMECALL R3 R1 K3 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  MOVE R2 R1
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_10:
  MOVE R1 R0
  JUMPIFNOT R1 [+7]
  GETTABLEKS R1 R0 K0 ["Attachment1"]
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R0 K0 ["Attachment1"]
  GETTABLEKS R1 R2 K1 ["Parent"]
  JUMPIFNOT R1 [+7]
  LOADK R5 K2 ["BasePart"]
  NAMECALL R3 R1 K3 ["IsA"]
  CALL R3 2 1
  JUMPIFNOT R3 [+2]
  MOVE R2 R1
  RETURN R2 1
  LOADNIL R2
  RETURN R2 1

PROTO_11:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  MOVE R4 R0
  CALL R2 2 1
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  LOADK R10 K2 ["Motor6D"]
  NAMECALL R8 R7 K3 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K6 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-13]
  RETURN R1 1

PROTO_12:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  MOVE R4 R0
  CALL R2 2 1
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  LOADK R10 K2 ["Bone"]
  NAMECALL R8 R7 K3 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K6 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-13]
  RETURN R1 1

PROTO_13:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  NEWTABLE R3 0 0
  MOVE R4 R0
  CALL R2 2 1
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  LOADK R10 K2 ["AnimationConstraint"]
  NAMECALL R8 R7 K3 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K6 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-13]
  RETURN R1 1

PROTO_14:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETTABLEKS R4 R1 K0 ["Name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_15:
  NEWTABLE R2 0 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["findRootPart"]
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["getRigInfo"]
  MOVE R5 R0
  CALL R4 1 1
  GETTABLEKS R5 R4 K2 ["Parts"]
  GETTABLEKS R6 R4 K3 ["PartNameToMotor"]
  GETTABLEKS R7 R4 K4 ["PartNameToConstraint"]
  GETTABLEKS R8 R4 K5 ["PartNameToAnimConstraint"]
  GETTABLEKS R9 R4 K6 ["BoneNameToBone"]
  GETIMPORT R10 K8 [ipairs]
  MOVE R11 R5
  CALL R10 1 3
  FORGPREP_INEXT R10
  GETTABLEKS R16 R14 K9 ["Name"]
  GETTABLE R15 R9 R16
  JUMPIF R15 [+14]
  JUMPIFEQ R14 R3 [+51]
  GETTABLEKS R16 R14 K9 ["Name"]
  GETTABLE R15 R6 R16
  JUMPIF R15 [+8]
  GETUPVAL R15 1
  CALL R15 0 1
  JUMPIFNOT R15 [+43]
  JUMPIFNOT R8 [+42]
  GETTABLEKS R16 R14 K9 ["Name"]
  GETTABLE R15 R8 R16
  JUMPIFNOT R15 [+38]
  LOADB R15 0
  GETIMPORT R16 K8 [ipairs]
  MOVE R17 R1
  CALL R16 1 3
  FORGPREP_INEXT R16
  GETTABLEKS R21 R14 K9 ["Name"]
  GETTABLEKS R22 R20 K9 ["Name"]
  JUMPIFNOTEQ R21 R22 [+3]
  LOADB R15 1
  JUMP [+2]
  FORGLOOP R16 2 [inext] [-9]
  JUMPIF R15 [+21]
  DUPTABLE R18 K12 [{"Name", "Instance", "Type"}]
  GETTABLEKS R19 R14 K9 ["Name"]
  SETTABLEKS R19 R18 K9 ["Name"]
  LOADK R19 K13 ["Root"]
  SETTABLEKS R19 R18 K10 ["Instance"]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K14 ["TRACK_TYPES"]
  GETTABLEKS R19 R20 K15 ["CFrame"]
  SETTABLEKS R19 R18 K11 ["Type"]
  FASTCALL2 TABLE_INSERT R2 R18 [+4]
  MOVE R17 R2
  GETIMPORT R16 K18 [table.insert]
  CALL R16 2 0
  FORGLOOP R10 2 [inext] [-57]
  GETIMPORT R10 K20 [table.sort]
  MOVE R11 R2
  DUPCLOSURE R12 K21 [PROTO_14]
  CALL R10 2 0
  RETURN R2 1

PROTO_16:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["Cache"]
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["FaceControlsCache"]
  RETURN R0 0

PROTO_17:
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+7]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Cache"]
  GETTABLEKS R6 R7 K1 ["CacheRig"]
  JUMPIFEQ R0 R6 [+147]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["getMotors"]
  MOVE R7 R0
  CALL R6 1 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K3 ["getConstraints"]
  MOVE R8 R0
  CALL R7 1 1
  GETUPVAL R9 2
  CALL R9 0 1
  JUMPIFNOT R9 [+6]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K4 ["getAnimationConstraints"]
  MOVE R9 R0
  CALL R8 1 1
  JUMP [+2]
  NEWTABLE R8 0 0
  GETUPVAL R9 3
  NEWTABLE R10 0 0
  MOVE R11 R0
  CALL R9 2 1
  GETIMPORT R10 K6 [ipairs]
  MOVE R11 R9
  CALL R10 1 3
  FORGPREP_INEXT R10
  LOADK R17 K7 ["BasePart"]
  NAMECALL R15 R14 K8 ["IsA"]
  CALL R15 2 1
  JUMPIFNOT R15 [+69]
  GETIMPORT R15 K6 [ipairs]
  MOVE R16 R6
  CALL R15 1 3
  FORGPREP_INEXT R15
  GETTABLEKS R20 R19 K9 ["Part1"]
  JUMPIFNOTEQ R20 R14 [+12]
  GETTABLEKS R20 R14 K10 ["Name"]
  SETTABLE R19 R2 R20
  FASTCALL2 TABLE_INSERT R1 R14 [+5]
  MOVE R21 R1
  MOVE R22 R14
  GETIMPORT R20 K13 [table.insert]
  CALL R20 2 0
  JUMP [+2]
  FORGLOOP R15 2 [inext] [-16]
  GETIMPORT R15 K6 [ipairs]
  MOVE R16 R7
  CALL R15 1 3
  FORGPREP_INEXT R15
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K14 ["getPart1"]
  MOVE R21 R19
  CALL R20 1 1
  JUMPIFNOTEQ R20 R14 [+5]
  GETTABLEKS R20 R14 K10 ["Name"]
  SETTABLE R19 R3 R20
  JUMP [+2]
  FORGLOOP R15 2 [inext] [-12]
  GETUPVAL R15 2
  CALL R15 0 1
  JUMPIFNOT R15 [+41]
  GETIMPORT R15 K6 [ipairs]
  MOVE R16 R8
  CALL R15 1 3
  FORGPREP_INEXT R15
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K14 ["getPart1"]
  MOVE R21 R19
  CALL R20 1 1
  JUMPIFNOTEQ R20 R14 [+12]
  GETTABLEKS R20 R14 K10 ["Name"]
  SETTABLE R19 R4 R20
  FASTCALL2 TABLE_INSERT R1 R14 [+5]
  MOVE R21 R1
  MOVE R22 R14
  GETIMPORT R20 K13 [table.insert]
  CALL R20 2 0
  JUMP [+18]
  FORGLOOP R15 2 [inext] [-19]
  JUMP [+15]
  LOADK R17 K15 ["Bone"]
  NAMECALL R15 R14 K8 ["IsA"]
  CALL R15 2 1
  JUMPIFNOT R15 [+10]
  GETTABLEKS R15 R14 K10 ["Name"]
  SETTABLE R14 R5 R15
  FASTCALL2 TABLE_INSERT R1 R14 [+5]
  MOVE R16 R1
  MOVE R17 R14
  GETIMPORT R15 K13 [table.insert]
  CALL R15 2 0
  FORGLOOP R10 2 [inext] [-90]
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+21]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["Cache"]
  SETTABLEKS R0 R10 K1 ["CacheRig"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["Cache"]
  DUPTABLE R11 K21 [{"Parts", "PartNameToMotor", "PartNameToConstraint", "PartNameToAnimConstraint", "BoneNameToBone"}]
  SETTABLEKS R1 R11 K16 ["Parts"]
  SETTABLEKS R2 R11 K17 ["PartNameToMotor"]
  SETTABLEKS R3 R11 K18 ["PartNameToConstraint"]
  SETTABLEKS R4 R11 K19 ["PartNameToAnimConstraint"]
  SETTABLEKS R5 R11 K20 ["BoneNameToBone"]
  SETTABLEKS R11 R10 K22 ["CacheData"]
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+6]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["Cache"]
  GETTABLEKS R6 R7 K22 ["CacheData"]
  RETURN R6 1
  DUPTABLE R6 K21 [{"Parts", "PartNameToMotor", "PartNameToConstraint", "PartNameToAnimConstraint", "BoneNameToBone"}]
  SETTABLEKS R1 R6 K16 ["Parts"]
  SETTABLEKS R2 R6 K17 ["PartNameToMotor"]
  SETTABLEKS R3 R6 K18 ["PartNameToConstraint"]
  SETTABLEKS R4 R6 K19 ["PartNameToAnimConstraint"]
  SETTABLEKS R5 R6 K20 ["BoneNameToBone"]
  RETURN R6 1

PROTO_18:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FaceControlsCache"]
  GETTABLEKS R2 R3 K1 ["CacheRig"]
  JUMPIFEQ R0 R2 [+38]
  GETUPVAL R2 2
  NEWTABLE R3 0 0
  MOVE R4 R0
  CALL R2 2 1
  GETIMPORT R3 K3 [ipairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_INEXT R3
  LOADK R10 K4 ["FaceControls"]
  NAMECALL R8 R7 K5 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+7]
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K8 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [inext] [-13]
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FaceControlsCache"]
  SETTABLEKS R0 R3 K1 ["CacheRig"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["FaceControlsCache"]
  SETTABLEKS R1 R3 K4 ["FaceControls"]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+12]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["FaceControlsCache"]
  GETTABLEKS R3 R4 K4 ["FaceControls"]
  GETTABLEN R2 R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["FaceControlsCache"]
  GETTABLEKS R3 R4 K4 ["FaceControls"]
  RETURN R2 2
  GETTABLEN R2 R1 1
  MOVE R3 R1
  RETURN R2 2

PROTO_19:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getRigInfo"]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R3 R2 K1 ["PartNameToMotor"]
  GETTABLEKS R4 R2 K2 ["PartNameToAnimConstraint"]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+16]
  JUMPIFNOT R3 [+5]
  GETTABLE R5 R3 R1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R5 K3 ["Part1"]
  RETURN R6 1
  JUMPIFNOT R4 [+14]
  GETTABLE R5 R4 R1
  JUMPIFNOT R5 [+12]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["getPart1"]
  MOVE R7 R5
  CALL R6 1 -1
  RETURN R6 -1
  JUMP [+5]
  GETTABLE R5 R3 R1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R5 K3 ["Part1"]
  RETURN R6 1
  LOADNIL R5
  RETURN R5 1

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getRigInfo"]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R4 R2 K1 ["BoneNameToBone"]
  GETTABLE R3 R4 R1
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["buildHierarchy"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["LuaFlags"]
  GETTABLEKS R4 R5 K11 ["GetFFlagAnimationConstraints"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K10 ["LuaFlags"]
  GETTABLEKS R5 R6 K12 ["GetFFlagRigInfoCache"]
  CALL R4 1 1
  GETIMPORT R5 K14 [game]
  LOADK R7 K15 ["ACEIgnoreAnimSavesObjectValue"]
  LOADB R8 0
  NAMECALL R5 R5 K16 ["DefineFastFlag"]
  CALL R5 3 1
  GETIMPORT R6 K14 [game]
  LOADK R8 K17 ["ACEPrimaryPartPriority"]
  LOADB R9 0
  NAMECALL R6 R6 K16 ["DefineFastFlag"]
  CALL R6 3 1
  DUPTABLE R7 K20 [{"Cache", "FaceControlsCache"}]
  DUPTABLE R8 K23 [{"CacheRig", "CacheData"}]
  LOADNIL R9
  SETTABLEKS R9 R8 K21 ["CacheRig"]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["CacheData"]
  SETTABLEKS R8 R7 K18 ["Cache"]
  DUPTABLE R8 K23 [{"CacheRig", "CacheData"}]
  LOADNIL R9
  SETTABLEKS R9 R8 K21 ["CacheRig"]
  LOADNIL R9
  SETTABLEKS R9 R8 K22 ["CacheData"]
  SETTABLEKS R8 R7 K19 ["FaceControlsCache"]
  DUPCLOSURE R8 K24 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R8
  DUPCLOSURE R9 K25 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R7 K26 ["getTemporaryConstraints"]
  DUPCLOSURE R9 K27 [PROTO_2]
  CAPTURE VAL R7
  SETTABLEKS R9 R7 K28 ["usingTemporaryConstraints"]
  DUPCLOSURE R9 K29 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K30 ["getConstraints"]
  DUPCLOSURE R9 K31 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R9 R7 K32 ["buildRigHierarchy"]
  DUPCLOSURE R9 K33 [PROTO_6]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K34 ["findRootPart"]
  DUPCLOSURE R9 K35 [PROTO_7]
  SETTABLEKS R9 R7 K36 ["getAnimationController"]
  DUPCLOSURE R9 K37 [PROTO_8]
  CAPTURE VAL R7
  SETTABLEKS R9 R7 K38 ["getAnimator"]
  DUPCLOSURE R9 K39 [PROTO_9]
  SETTABLEKS R9 R7 K40 ["getPart0"]
  DUPCLOSURE R9 K41 [PROTO_10]
  SETTABLEKS R9 R7 K42 ["getPart1"]
  DUPCLOSURE R9 K43 [PROTO_11]
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K44 ["getMotors"]
  DUPCLOSURE R9 K45 [PROTO_12]
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K46 ["getBones"]
  DUPCLOSURE R9 K47 [PROTO_13]
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K48 ["getAnimationConstraints"]
  DUPCLOSURE R9 K49 [PROTO_15]
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R9 R7 K50 ["getUnusedRigTracks"]
  DUPCLOSURE R9 K51 [PROTO_16]
  CAPTURE VAL R7
  SETTABLEKS R9 R7 K52 ["clearCache"]
  DUPCLOSURE R9 K53 [PROTO_17]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K54 ["getRigInfo"]
  DUPCLOSURE R9 K55 [PROTO_18]
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R9 R7 K56 ["getFaceControls"]
  DUPCLOSURE R9 K57 [PROTO_19]
  CAPTURE VAL R7
  CAPTURE VAL R3
  SETTABLEKS R9 R7 K58 ["getPartByName"]
  DUPCLOSURE R9 K59 [PROTO_20]
  CAPTURE VAL R7
  SETTABLEKS R9 R7 K60 ["getBoneByName"]
  RETURN R7 1
