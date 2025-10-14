PROTO_0:
  GETTABLEKS R1 R0 K0 ["rules"]
  JUMPIF R1 [+6]
  GETUPVAL R1 0
  NAMECALL R1 R1 K1 ["GetValidationRules"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["rules"]
  GETTABLEKS R1 R0 K0 ["rules"]
  RETURN R1 1

PROTO_1:
  NAMECALL R5 R0 K0 ["getRules"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K1 ["MeshRules"]
  GETTABLEKS R3 R4 K2 ["BodyPartMaxTriangles"]
  GETTABLE R2 R3 R1
  RETURN R2 1

PROTO_2:
  NAMECALL R5 R0 K0 ["getRules"]
  CALL R5 1 1
  GETTABLEKS R2 R5 K1 ["AccessoryRules"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R7 K5 [{"rigidAllowed", "attachmentNames", "bounds"}]
  GETTABLEKS R8 R6 K6 ["RigidAllowed"]
  SETTABLEKS R8 R7 K2 ["rigidAllowed"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K3 ["attachmentNames"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K4 ["bounds"]
  GETTABLEKS R8 R6 K7 ["Attachments"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R14 R7 K3 ["attachmentNames"]
  GETTABLEKS R15 R12 K8 ["Name"]
  FASTCALL2 TABLE_INSERT R14 R15 [+3]
  GETIMPORT R13 K11 [table.insert]
  CALL R13 2 0
  GETTABLEKS R13 R7 K4 ["bounds"]
  GETTABLEKS R14 R12 K8 ["Name"]
  DUPTABLE R15 K14 [{"size", "offset"}]
  GETTABLEKS R16 R12 K15 ["Size"]
  SETTABLEKS R16 R15 K12 ["size"]
  GETTABLEKS R16 R12 K16 ["Offset"]
  SETTABLEKS R16 R15 K13 ["offset"]
  SETTABLE R15 R13 R14
  FORGLOOP R8 2 [-24]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-45]
  RETURN R0 0

PROTO_3:
  NAMECALL R5 R0 K0 ["getRules"]
  CALL R5 1 1
  GETTABLEKS R2 R5 K1 ["BodyPartRules"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R7 K5 [{"isBodyPart", "bounds", "subParts"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K2 ["isBodyPart"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K3 ["bounds"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K4 ["subParts"]
  GETTABLEKS R8 R6 K6 ["Bounds"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETTABLEKS R13 R7 K3 ["bounds"]
  DUPTABLE R14 K9 [{"minSize", "maxSize"}]
  GETTABLEKS R15 R12 K10 ["MinSize"]
  SETTABLEKS R15 R14 K7 ["minSize"]
  GETTABLEKS R15 R12 K11 ["MaxSize"]
  SETTABLEKS R15 R14 K8 ["maxSize"]
  SETTABLE R14 R13 R11
  FORGLOOP R8 2 [-13]
  GETTABLEKS R8 R6 K12 ["SubParts"]
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  DUPTABLE R13 K15 [{"rigAttachmentToParent", "otherAttachments"}]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K13 ["rigAttachmentToParent"]
  NEWTABLE R14 0 0
  SETTABLEKS R14 R13 K14 ["otherAttachments"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K16 ["rigAttachmentToParentMap"]
  GETTABLE R14 R15 R11
  MOVE R15 R12
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  JUMPIFNOTEQ R14 R18 [+18]
  DUPTABLE R20 K18 [{"name", "bounds"}]
  SETTABLEKS R18 R20 K17 ["name"]
  DUPTABLE R21 K21 [{"min", "max"}]
  GETTABLEKS R22 R19 K22 ["LowerBound"]
  SETTABLEKS R22 R21 K19 ["min"]
  GETTABLEKS R22 R19 K23 ["UpperBound"]
  SETTABLEKS R22 R21 K20 ["max"]
  SETTABLEKS R21 R20 K3 ["bounds"]
  SETTABLEKS R20 R13 K13 ["rigAttachmentToParent"]
  JUMP [+15]
  GETTABLEKS R20 R13 K14 ["otherAttachments"]
  DUPTABLE R21 K24 [{"bounds"}]
  DUPTABLE R22 K21 [{"min", "max"}]
  GETTABLEKS R23 R19 K22 ["LowerBound"]
  SETTABLEKS R23 R22 K19 ["min"]
  GETTABLEKS R23 R19 K23 ["UpperBound"]
  SETTABLEKS R23 R22 K20 ["max"]
  SETTABLEKS R22 R21 K3 ["bounds"]
  SETTABLE R21 R20 R18
  FORGLOOP R15 2 [-35]
  GETTABLEKS R15 R7 K4 ["subParts"]
  SETTABLE R13 R15 R11
  FORGLOOP R8 2 [-57]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-96]
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 0
  NAMECALL R6 R0 K0 ["getRules"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K1 ["FullBodyRules"]
  GETTABLEKS R2 R5 K2 ["Bounds"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R7 K5 [{"minSize", "maxSize"}]
  GETTABLEKS R8 R6 K6 ["MinSize"]
  SETTABLEKS R8 R7 K3 ["minSize"]
  GETTABLEKS R8 R6 K7 ["MaxSize"]
  SETTABLEKS R8 R7 K4 ["maxSize"]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-11]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarCreationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  NEWTABLE R1 8 0
  DUPTABLE R2 K19 [{"Head", "UpperTorso", "LowerTorso", "RightHand", "RightLowerArm", "RightUpperArm", "LeftHand", "LeftLowerArm", "LeftUpperArm", "RightFoot", "RightLowerLeg", "RightUpperLeg", "LeftFoot", "LeftLowerLeg", "LeftUpperLeg"}]
  LOADK R3 K20 ["NeckRigAttachment"]
  SETTABLEKS R3 R2 K4 ["Head"]
  LOADK R3 K21 ["WaistRigAttachment"]
  SETTABLEKS R3 R2 K5 ["UpperTorso"]
  LOADK R3 K22 ["RootRigAttachment"]
  SETTABLEKS R3 R2 K6 ["LowerTorso"]
  LOADK R3 K23 ["RightWristRigAttachment"]
  SETTABLEKS R3 R2 K7 ["RightHand"]
  LOADK R3 K24 ["RightElbowRigAttachment"]
  SETTABLEKS R3 R2 K8 ["RightLowerArm"]
  LOADK R3 K25 ["RightShoulderRigAttachment"]
  SETTABLEKS R3 R2 K9 ["RightUpperArm"]
  LOADK R3 K26 ["LeftWristRigAttachment"]
  SETTABLEKS R3 R2 K10 ["LeftHand"]
  LOADK R3 K27 ["LeftElbowRigAttachment"]
  SETTABLEKS R3 R2 K11 ["LeftLowerArm"]
  LOADK R3 K28 ["LeftShoulderRigAttachment"]
  SETTABLEKS R3 R2 K12 ["LeftUpperArm"]
  LOADK R3 K29 ["RightAnkleRigAttachment"]
  SETTABLEKS R3 R2 K13 ["RightFoot"]
  LOADK R3 K30 ["RightKneeRigAttachment"]
  SETTABLEKS R3 R2 K14 ["RightLowerLeg"]
  LOADK R3 K31 ["RightHipRigAttachment"]
  SETTABLEKS R3 R2 K15 ["RightUpperLeg"]
  LOADK R3 K32 ["LeftAnkleRigAttachment"]
  SETTABLEKS R3 R2 K16 ["LeftFoot"]
  LOADK R3 K33 ["LeftKneeRigAttachment"]
  SETTABLEKS R3 R2 K17 ["LeftLowerLeg"]
  LOADK R3 K34 ["LeftHipRigAttachment"]
  SETTABLEKS R3 R2 K18 ["LeftUpperLeg"]
  SETTABLEKS R2 R1 K35 ["rigAttachmentToParentMap"]
  DUPCLOSURE R2 K36 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K37 ["getRules"]
  DUPCLOSURE R2 K38 [PROTO_1]
  SETTABLEKS R2 R1 K39 ["getBodyPartMaxTrianglesRule"]
  DUPCLOSURE R2 K40 [PROTO_2]
  SETTABLEKS R2 R1 K41 ["getAccessoryRules"]
  DUPCLOSURE R2 K42 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R2 R1 K43 ["getBodyPartRules"]
  DUPCLOSURE R2 K44 [PROTO_4]
  SETTABLEKS R2 R1 K45 ["getFullBodyRulesBounds"]
  RETURN R1 1
