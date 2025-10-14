PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["editableImage"]
  NAMECALL R0 R0 K1 ["GetEditableImageSize"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R4 K1 [tick]
  CALL R4 0 1
  GETTABLEKS R5 R2 K2 ["isServer"]
  JUMPIFNOT R3 [+1]
  JUMP [+3]
  GETUPVAL R6 0
  GETTABLEKS R3 R6 K3 ["MAX_TEXTURE_SIZE"]
  FASTCALL2K ASSERT R3 K4 [+5]
  MOVE R7 R3
  LOADK R8 K4 ["maxTextureSize is required for validateTextureSize"]
  GETIMPORT R6 K6 [assert]
  CALL R6 2 0
  GETTABLEKS R6 R0 K7 ["editableImage"]
  JUMPIF R6 [+26]
  JUMPIFNOT R1 [+2]
  LOADB R6 1
  RETURN R6 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["reportFailure"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["ErrorType"]
  GETTABLEKS R7 R8 K10 ["validateTextureSize_InvalidTextureId"]
  LOADNIL R8
  MOVE R9 R2
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K13 [string.format]
  LOADK R9 K14 ["Invalid textureID used in mesh '%s'. Make sure the texture exists and try again."]
  GETTABLEKS R10 R0 K15 ["fullName"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  GETUPVAL R6 2
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  MOVE R8 R2
  CALL R6 2 2
  JUMPIF R6 [+35]
  JUMPIFEQKNIL R5 [+11]
  JUMPIFNOT R5 [+9]
  GETIMPORT R8 K17 [error]
  GETIMPORT R9 K13 [string.format]
  LOADK R10 K18 ["Failed to load texture data for '%s'. Make sure the texture exists and try again."]
  GETTABLEKS R11 R0 K15 ["fullName"]
  CALL R9 2 -1
  CALL R8 -1 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["reportFailure"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["ErrorType"]
  GETTABLEKS R9 R10 K19 ["validateTextureSize_FailedToLoadTexture"]
  LOADNIL R10
  MOVE R11 R2
  CALL R8 3 0
  LOADB R8 0
  NEWTABLE R9 0 1
  GETIMPORT R10 K13 [string.format]
  LOADK R11 K18 ["Failed to load texture data for '%s'. Make sure the texture exists and try again."]
  GETTABLEKS R12 R0 K15 ["fullName"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  RETURN R8 2
  GETTABLEKS R8 R7 K20 ["X"]
  JUMPIFLT R3 R8 [+5]
  GETTABLEKS R8 R7 K21 ["Y"]
  JUMPIFNOTLT R3 R8 [+58]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["reportFailure"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K9 ["ErrorType"]
  GETTABLEKS R9 R10 K22 ["validateTextureSize_TextureTooBig"]
  LOADNIL R10
  MOVE R11 R2
  CALL R8 3 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K3 ["MAX_TEXTURE_SIZE"]
  JUMPIFNOTEQ R3 R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  JUMPIFNOT R8 [+20]
  LOADB R9 0
  NEWTABLE R10 0 1
  GETIMPORT R11 K13 [string.format]
  LOADK R12 K23 ["Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px for field '%s'."]
  GETTABLEKS R13 R7 K20 ["X"]
  GETTABLEKS R14 R7 K21 ["Y"]
  GETTABLEKS R15 R0 K15 ["fullName"]
  MOVE R16 R3
  MOVE R17 R3
  GETTABLEKS R18 R0 K24 ["fieldName"]
  CALL R11 7 -1
  SETLIST R10 R11 -1 [1]
  RETURN R9 2
  LOADB R9 0
  NEWTABLE R10 0 1
  GETIMPORT R11 K13 [string.format]
  LOADK R12 K25 ["Texture resolution %dx%d px found in '%s' is higher than max size supported value of %dx%d px. You need to reduce the texture resolution"]
  GETTABLEKS R13 R7 K20 ["X"]
  GETTABLEKS R14 R7 K21 ["Y"]
  GETTABLEKS R15 R0 K15 ["fullName"]
  MOVE R16 R3
  MOVE R17 R3
  CALL R11 6 -1
  SETLIST R10 R11 -1 [1]
  RETURN R9 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K26 ["recordScriptTime"]
  GETIMPORT R10 K28 [script]
  GETTABLEKS R9 R10 K29 ["Name"]
  MOVE R10 R4
  MOVE R11 R2
  CALL R8 3 0
  LOADB R8 1
  RETURN R8 1

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
  GETTABLEKS R4 R1 K9 ["util"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["util"]
  GETTABLEKS R4 R5 K11 ["pcallDeferred"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R1 K12 ["Analytics"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R1 K13 ["Constants"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R6 1
