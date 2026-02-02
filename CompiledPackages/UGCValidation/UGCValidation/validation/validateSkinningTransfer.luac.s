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
  GETTABLEKS R2 R1 K0 ["assetTypeEnum"]
  GETUPVAL R3 0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  MOVE R5 R1
  CALL R3 2 2
  JUMPIF R3 [+24]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K1 ["reportFailure"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K2 ["ErrorType"]
  GETTABLEKS R6 R7 K3 ["validateSkinningTransfer_FailedToExecute"]
  LOADNIL R7
  MOVE R8 R1
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K6 [string.format]
  LOADK R8 K7 ["Failed to execute skinning transfer check for '%s'. Make sure the mesh exists and try again."]
  NAMECALL R9 R0 K8 ["GetFullName"]
  CALL R9 1 -1
  CALL R7 -1 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  GETIMPORT R6 K10 [next]
  MOVE R7 R4
  CALL R6 1 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFNOT R5 [+93]
  NEWTABLE R6 0 0
  MOVE R7 R4
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R10 [+5]
  MOVE R13 R6
  MOVE R14 R10
  GETIMPORT R12 K13 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 1 [-8]
  GETIMPORT R7 K15 [table.concat]
  MOVE R8 R6
  LOADK R9 K16 [", "]
  CALL R7 2 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K17 ["isBodyPart"]
  MOVE R9 R2
  CALL R8 1 1
  JUMPIFNOT R8 [+25]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K1 ["reportFailure"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K2 ["ErrorType"]
  GETTABLEKS R9 R10 K18 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  LOADNIL R10
  MOVE R11 R1
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  GETIMPORT R10 K6 [string.format]
  LOADK R11 K19 ["Invalid joints [%s] found in body mesh '%s'. Please remove the joints and try again."]
  MOVE R12 R7
  NAMECALL R13 R0 K8 ["GetFullName"]
  CALL R13 1 -1
  CALL R10 -1 -1
  SETLIST R9 R10 -1 [1]
  RETURN R8 2
  LOADK R10 K20 ["WrapLayer"]
  NAMECALL R8 R0 K21 ["FindFirstChildOfClass"]
  CALL R8 2 1
  FASTCALL2K ASSERT R8 K22 [+5]
  MOVE R10 R8
  LOADK R11 K22 ["MeshPart isn't a body part, so it must be an accessory with a WrapLayer"]
  GETIMPORT R9 K24 [assert]
  CALL R9 2 0
  GETTABLEKS R9 R8 K25 ["AutoSkin"]
  GETIMPORT R10 K29 [Enum.WrapLayerAutoSkin.EnabledOverride]
  JUMPIFEQ R9 R10 [+26]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K1 ["reportFailure"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K2 ["ErrorType"]
  GETTABLEKS R10 R11 K30 ["validateSkinningTransfer_SkinningTransferOverride"]
  LOADNIL R11
  MOVE R12 R1
  CALL R9 3 0
  LOADB R9 0
  NEWTABLE R10 0 1
  GETIMPORT R11 K6 [string.format]
  LOADK R12 K31 ["Skinning Transfer joints [%s] found in '%s'. WrapLayer.AutoSkin must be set to EnabledOverride when joints are present."]
  MOVE R13 R7
  NAMECALL R14 R0 K8 ["GetFullName"]
  CALL R14 1 -1
  CALL R11 -1 -1
  SETLIST R10 R11 -1 [1]
  RETURN R9 2
  GETUPVAL R6 5
  CALL R6 0 1
  JUMPIFNOT R6 [+34]
  GETUPVAL R6 6
  JUMPIFNOT R6 [+32]
  JUMPIF R5 [+31]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K32 ["SkinningTransferRequiredTypes"]
  GETTABLE R6 R7 R2
  JUMPIFNOT R6 [+26]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["reportFailure"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K2 ["ErrorType"]
  GETTABLEKS R7 R8 K33 ["validateSkinningTransfer_RequiredAssetTypes"]
  LOADNIL R8
  MOVE R9 R1
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K6 [string.format]
  LOADK R9 K34 ["No Skinning Transfer joints found in '%s'. Accessories of type %s are required to use Skinning Transfer with RBX_Leader and RBX_Follower joints."]
  NAMECALL R10 R0 K8 ["GetFullName"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K35 ["Name"]
  CALL R8 3 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  JUMPIF R10 [+25]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K1 ["reportFailure"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K2 ["ErrorType"]
  GETTABLEKS R12 R13 K36 ["validateSkinningTransfer_Weights"]
  LOADNIL R13
  MOVE R14 R1
  CALL R11 3 0
  LOADB R11 0
  NEWTABLE R12 0 1
  GETIMPORT R13 K6 [string.format]
  LOADK R14 K37 ["Vert(s) in mesh '%s' are only partially weighted to joint %s. Vert(s) must be fully weighted to this joint."]
  NAMECALL R15 R0 K8 ["GetFullName"]
  CALL R15 1 1
  MOVE R16 R9
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  RETURN R11 2
  FORGLOOP R6 2 [-27]
  LOADB R6 1
  RETURN R6 1

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
  GETTABLEKS R10 R1 K16 ["flags"]
  GETTABLEKS R9 R10 K17 ["getFFlagUGCValidationEyebrowEyelashSupport"]
  CALL R8 1 1
  GETIMPORT R9 K1 [game]
  LOADK R11 K18 ["EyebrowEyelashRequiresSpecialJoints"]
  LOADB R12 0
  NAMECALL R9 R9 K19 ["DefineFastFlag"]
  CALL R9 3 1
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R4
  RETURN R10 1
