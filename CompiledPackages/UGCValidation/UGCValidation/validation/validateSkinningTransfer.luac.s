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
  GETIMPORT R6 K11 [next]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+94]
  NEWTABLE R6 0 0
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  FASTCALL2 TABLE_INSERT R6 R10 [+5]
  MOVE R13 R6
  MOVE R14 R10
  GETIMPORT R12 K14 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 1 [-8]
  GETIMPORT R7 K16 [table.concat]
  MOVE R8 R6
  LOADK R9 K17 [", "]
  CALL R7 2 1
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K18 ["isBodyPart"]
  MOVE R9 R3
  CALL R8 1 1
  JUMPIFNOT R8 [+25]
  GETUPVAL R9 5
  GETTABLEKS R8 R9 K2 ["reportFailure"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K3 ["ErrorType"]
  GETTABLEKS R9 R10 K19 ["validateSkinningTransfer_BodyPartsWithSpecialJoints"]
  LOADNIL R10
  MOVE R11 R1
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  GETIMPORT R10 K7 [string.format]
  LOADK R11 K20 ["Invalid joints [%s] found in body mesh '%s'. Please remove the joints and try again."]
  MOVE R12 R7
  NAMECALL R13 R0 K9 ["GetFullName"]
  CALL R13 1 -1
  CALL R10 -1 -1
  SETLIST R9 R10 -1 [1]
  RETURN R8 2
  LOADK R10 K21 ["WrapLayer"]
  NAMECALL R8 R0 K22 ["FindFirstChildOfClass"]
  CALL R8 2 1
  FASTCALL2K ASSERT R8 K23 [+5]
  MOVE R10 R8
  LOADK R11 K23 ["MeshPart isn't a body part, so it must be an accessory with a WrapLayer"]
  GETIMPORT R9 K25 [assert]
  CALL R9 2 0
  GETTABLEKS R9 R8 K26 ["AutoSkin"]
  GETIMPORT R10 K30 [Enum.WrapLayerAutoSkin.EnabledOverride]
  JUMPIFEQ R9 R10 [+26]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K2 ["reportFailure"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K3 ["ErrorType"]
  GETTABLEKS R10 R11 K31 ["validateSkinningTransfer_SkinningTransferOverride"]
  LOADNIL R11
  MOVE R12 R1
  CALL R9 3 0
  LOADB R9 0
  NEWTABLE R10 0 1
  GETIMPORT R11 K7 [string.format]
  LOADK R12 K32 ["Skinning Transfer joints [%s] found in '%s'. WrapLayer.AutoSkin must be set to EnabledOverride when joints are present."]
  MOVE R13 R7
  NAMECALL R14 R0 K9 ["GetFullName"]
  CALL R14 1 -1
  CALL R11 -1 -1
  SETLIST R10 R11 -1 [1]
  RETURN R9 2
  MOVE R6 R5
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  JUMPIF R10 [+25]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K2 ["reportFailure"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K3 ["ErrorType"]
  GETTABLEKS R12 R13 K33 ["validateSkinningTransfer_Weights"]
  LOADNIL R13
  MOVE R14 R1
  CALL R11 3 0
  LOADB R11 0
  NEWTABLE R12 0 1
  GETIMPORT R13 K7 [string.format]
  LOADK R14 K34 ["Vert(s) in mesh '%s' are only partially weighted to joint %s. Vert(s) must be fully weighted to this joint."]
  NAMECALL R15 R0 K9 ["GetFullName"]
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
  GETTABLEKS R6 R1 K11 ["util"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R1 K11 ["util"]
  GETTABLEKS R6 R7 K13 ["pcallDeferred"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R1 K11 ["util"]
  GETTABLEKS R7 R8 K14 ["getEditableMeshFromContext"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R9 R1 K11 ["util"]
  GETTABLEKS R8 R9 K15 ["getMeshIdForSkinningValidation"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R1 K16 ["flags"]
  GETTABLEKS R9 R10 K17 ["getEngineFeatureEngineEditableMeshAvatarPublish"]
  CALL R8 1 1
  DUPCLOSURE R9 K18 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R9 1
