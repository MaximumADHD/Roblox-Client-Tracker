PROTO_0:
  LOADK R7 K0 ["ThumbnailConfiguration"]
  NAMECALL R5 R0 K1 ["FindFirstChild"]
  CALL R5 2 1
  JUMPIFNOT R5 [+86]
  LOADK R8 K2 ["ThumbnailCameraTarget"]
  NAMECALL R6 R5 K1 ["FindFirstChild"]
  CALL R6 2 1
  GETTABLEKS R7 R6 K3 ["Value"]
  JUMPIFEQ R7 R1 [+25]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["reportFailure"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["ErrorType"]
  GETTABLEKS R8 R9 K6 ["validateThumbnailConfiguration_InvalidTarget"]
  LOADNIL R9
  MOVE R10 R4
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  GETIMPORT R9 K9 [string.format]
  LOADK R10 K10 ["Invalid target asset for thumbnail generation. Expected it to be '%s'."]
  NAMECALL R11 R1 K11 ["GetFullName"]
  CALL R11 1 -1
  CALL R9 -1 -1
  SETLIST R8 R9 -1 [1]
  RETURN R7 2
  GETIMPORT R7 K13 [game]
  LOADK R9 K14 ["EngineUGCValidateThumbnailerMeshInFrustum"]
  NAMECALL R7 R7 K15 ["GetEngineFeature"]
  CALL R7 2 1
  JUMPIFNOT R7 [+47]
  GETUPVAL R7 1
  JUMPIFNOT R7 [+45]
  GETTABLEKS R7 R6 K3 ["Value"]
  GETTABLEKS R8 R7 K16 ["CFrame"]
  LOADK R11 K17 ["ThumbnailCameraValue"]
  NAMECALL R9 R5 K1 ["FindFirstChild"]
  CALL R9 2 1
  GETTABLEKS R11 R9 K3 ["Value"]
  MUL R10 R8 R11
  GETUPVAL R11 2
  GETTABLEKS R13 R2 K18 ["editableMesh"]
  MOVE R14 R3
  MOVE R15 R8
  MOVE R16 R10
  NAMECALL R11 R11 K19 ["CheckEditableMeshInCameraFrustum"]
  CALL R11 5 1
  JUMPIFNOTEQKB R11 FALSE [+24]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["reportFailure"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K5 ["ErrorType"]
  GETTABLEKS R12 R13 K20 ["validateThumbnailConfiguration_OutsideView"]
  LOADNIL R13
  MOVE R14 R4
  CALL R11 3 0
  LOADB R11 0
  NEWTABLE R12 0 1
  GETIMPORT R13 K9 [string.format]
  LOADK R14 K21 ["Asset '%s' is positioned outside the thumbnail camera view. You need to reposition the asset at the center of the camera view and try again."]
  GETTABLEKS R15 R2 K22 ["fullName"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  RETURN R11 2
  LOADB R6 1
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["UGCValidationService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["UGCValidationAddThumbnailFrustumCheckingv2"]
  LOADB R4 0
  NAMECALL R1 R1 K5 ["DefineFastFlag"]
  CALL R1 3 1
  GETIMPORT R4 K7 [script]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["util"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R5 R2 K13 ["Analytics"]
  CALL R4 1 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R5 1
