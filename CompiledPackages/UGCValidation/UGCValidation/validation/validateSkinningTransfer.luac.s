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
  NAMECALL R2 R2 K4 ["GetEditableMeshSkinningTransferJointsInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R3 2
  GETUPVAL R4 3
  CALL R2 2 -1
  NAMECALL R0 R0 K0 ["GetSkinningTransferJointsInfo"]
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["allowEditableInstances"]
  GETTABLEKS R3 R1 K1 ["assetTypeEnum"]
  LOADNIL R4
  LOADNIL R5
  GETUPVAL R6 0
  CALL R6 0 1
  JUMPIFNOT R6 [+11]
  GETUPVAL R6 1
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  MOVE R8 R1
  CALL R6 2 2
  MOVE R4 R6
  MOVE R5 R7
  JUMP [+10]
  GETUPVAL R6 1
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE VAL R2
  MOVE R8 R1
  CALL R6 2 2
  MOVE R4 R6
  MOVE R5 R7
  JUMPIF R4 [+24]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K2 ["reportFailure"]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K3 ["ErrorType"]
  GETTABLEKS R7 R8 K4 ["validateSkinningTransfer_FailedToExecute"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K7 [string.format]
  LOADK R9 K8 ["Failed to execute skinning transfer check for '%s'. Make sure the mesh exists and try again."]
  NAMECALL R10 R0 K9 ["GetFullName"]
  CALL R10 1 -1
  CALL R8 -1 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  GETIMPORT R7 K11 [next]
  MOVE R8 R5
  CALL R7 1 1
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  JUMPIFNOT R6 [+93]
  NEWTABLE R7 0 0
  MOVE R8 R5
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  FASTCALL2 TABLE_INSERT R7 R11 [+5]
  MOVE R14 R7
  MOVE R15 R11
  GETIMPORT R13 K14 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 1 [-8]
  GETIMPORT R8 K16 [table.concat]
  MOVE R9 R7
  LOADK R10 K17 [", "]
  CALL R8 2 1
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K18 ["isBodyPart"]
  MOVE R10 R3
  CALL R9 1 1
  JUMPIFNOT R9 [+25]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K2 ["reportFailure"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K3 ["ErrorType"]
  GETTABLEKS R10 R11 K19 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  LOADNIL R11
  MOVE R12 R1
  CALL R9 3 0
  LOADB R9 0
  NEWTABLE R10 0 1
  GETIMPORT R11 K7 [string.format]
  LOADK R12 K20 ["Invalid joints [%s] found in body mesh '%s'. Please remove the joints and try again."]
  MOVE R13 R8
  NAMECALL R14 R0 K9 ["GetFullName"]
  CALL R14 1 -1
  CALL R11 -1 -1
  SETLIST R10 R11 -1 [1]
  RETURN R9 2
  LOADK R11 K21 ["WrapLayer"]
  NAMECALL R9 R0 K22 ["FindFirstChildOfClass"]
  CALL R9 2 1
  FASTCALL2K ASSERT R9 K23 [+5]
  MOVE R11 R9
  LOADK R12 K23 ["MeshPart isn't a body part, so it must be an accessory with a WrapLayer"]
  GETIMPORT R10 K25 [assert]
  CALL R10 2 0
  GETTABLEKS R10 R9 K26 ["AutoSkin"]
  GETIMPORT R11 K30 [Enum.WrapLayerAutoSkin.EnabledOverride]
  JUMPIFEQ R10 R11 [+26]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K2 ["reportFailure"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K3 ["ErrorType"]
  GETTABLEKS R11 R12 K31 ["validateSkinningTransfer_SkinningTransferOverride"]
  LOADNIL R12
  MOVE R13 R1
  CALL R10 3 0
  LOADB R10 0
  NEWTABLE R11 0 1
  GETIMPORT R12 K7 [string.format]
  LOADK R13 K32 ["Skinning Transfer joints [%s] found in '%s'. WrapLayer.AutoSkin must be set to EnabledOverride when joints are present."]
  MOVE R14 R8
  NAMECALL R15 R0 K9 ["GetFullName"]
  CALL R15 1 -1
  CALL R12 -1 -1
  SETLIST R11 R12 -1 [1]
  RETURN R10 2
  GETUPVAL R7 7
  CALL R7 0 1
  JUMPIFNOT R7 [+34]
  GETUPVAL R7 8
  JUMPIFNOT R7 [+32]
  JUMPIF R6 [+31]
  GETUPVAL R9 9
  GETTABLEKS R8 R9 K33 ["SkinningTransferRequiredTypes"]
  GETTABLE R7 R8 R3
  JUMPIFNOT R7 [+26]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K2 ["reportFailure"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K3 ["ErrorType"]
  GETTABLEKS R8 R9 K34 ["validateSkinningTransfer_RequiredAssetTypes"]
  LOADNIL R9
  MOVE R10 R1
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  GETIMPORT R9 K7 [string.format]
  LOADK R10 K35 ["No Skinning Transfer joints found in '%s'. Accessories of type %s are required to use Skinning Transfer with RBX_Leader and RBX_Follower joints."]
  NAMECALL R11 R0 K9 ["GetFullName"]
  CALL R11 1 1
  GETTABLEKS R12 R3 K36 ["Name"]
  CALL R9 3 -1
  SETLIST R8 R9 -1 [1]
  RETURN R7 2
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  JUMPIF R11 [+25]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K2 ["reportFailure"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K3 ["ErrorType"]
  GETTABLEKS R13 R14 K37 ["validateSkinningTransfer_Weights"]
  LOADNIL R14
  MOVE R15 R1
  CALL R12 3 0
  LOADB R12 0
  NEWTABLE R13 0 1
  GETIMPORT R14 K7 [string.format]
  LOADK R15 K38 ["Vert(s) in mesh '%s' are only partially weighted to joint %s. Vert(s) must be fully weighted to this joint."]
  NAMECALL R16 R0 K9 ["GetFullName"]
  CALL R16 1 1
  MOVE R17 R10
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  RETURN R12 2
  FORGLOOP R7 2 [-27]
  LOADB R7 1
  RETURN R7 1

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
  GETTABLEKS R4 R1 K10 ["ConstantsInterface"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R1 K11 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K12 ["util"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K12 ["util"]
  GETTABLEKS R7 R8 K14 ["pcallDeferred"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K12 ["util"]
  GETTABLEKS R8 R9 K15 ["getEditableMeshFromContext"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R1 K12 ["util"]
  GETTABLEKS R9 R10 K16 ["getMeshIdForSkinningValidation"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R1 K17 ["flags"]
  GETTABLEKS R10 R11 K18 ["getEngineFeatureEngineEditableMeshAvatarPublish"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K17 ["flags"]
  GETTABLEKS R11 R12 K19 ["getFFlagUGCValidationEyebrowEyelashSupport"]
  CALL R10 1 1
  GETIMPORT R11 K1 [game]
  LOADK R13 K20 ["EyebrowEyelashRequiresSpecialJoints"]
  LOADB R14 0
  NAMECALL R11 R11 K21 ["DefineFastFlag"]
  CALL R11 3 1
  DUPCLOSURE R12 K22 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R4
  RETURN R12 1
