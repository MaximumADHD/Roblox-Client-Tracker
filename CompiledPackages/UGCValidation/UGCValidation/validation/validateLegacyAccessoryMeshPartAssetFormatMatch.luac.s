PROTO_0:
  LOADK R5 K0 ["Handle"]
  NAMECALL R3 R0 K1 ["FindFirstChild"]
  CALL R3 2 1
  MOVE R5 R3
  JUMPIFNOT R5 [+4]
  LOADK R7 K2 ["MeshPart"]
  NAMECALL R5 R3 K3 ["IsA"]
  CALL R5 2 1
  FASTCALL1 ASSERT R5 [+2]
  GETIMPORT R4 K5 [assert]
  CALL R4 1 0
  LOADK R6 K0 ["Handle"]
  NAMECALL R4 R1 K1 ["FindFirstChild"]
  CALL R4 2 1
  MOVE R6 R4
  JUMPIFNOT R6 [+4]
  LOADK R8 K6 ["Part"]
  NAMECALL R6 R4 K3 ["IsA"]
  CALL R6 2 1
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  LOADK R7 K7 ["SpecialMesh"]
  NAMECALL R5 R4 K8 ["FindFirstChildOfClass"]
  CALL R5 2 1
  FASTCALL1 ASSERT R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K5 [assert]
  CALL R6 1 0
  GETTABLEKS R6 R3 K9 ["MeshId"]
  GETTABLEKS R7 R5 K9 ["MeshId"]
  JUMPIFEQ R6 R7 [+24]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["reportFailure"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["ErrorType"]
  GETTABLEKS R7 R8 K12 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADNIL R8
  MOVE R9 R2
  CALL R6 3 0
  LOADB R6 0
  NEWTABLE R7 0 1
  GETIMPORT R8 K15 [string.format]
  LOADK R9 K16 ["Model meshId mismatch with rigid accessory SpecialMesh.MeshId for '%s'. You need to match the meshIds and try again."]
  GETTABLEKS R10 R0 K17 ["Name"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  RETURN R6 2
  GETTABLEKS R6 R3 K18 ["TextureID"]
  JUMPIFNOTEQKS R6 K19 [""] [+8]
  LOADK R9 K20 ["SurfaceAppearance"]
  NAMECALL R7 R3 K8 ["FindFirstChildOfClass"]
  CALL R7 2 1
  JUMPIFNOT R7 [+2]
  GETTABLEKS R6 R7 K21 ["ColorMap"]
  GETTABLEKS R7 R5 K22 ["TextureId"]
  JUMPIFEQ R6 R7 [+24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["reportFailure"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["ErrorType"]
  GETTABLEKS R8 R9 K23 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADNIL R9
  MOVE R10 R2
  CALL R7 3 0
  LOADB R7 0
  NEWTABLE R8 0 1
  GETIMPORT R9 K15 [string.format]
  LOADK R10 K24 ["Model textureId mismatch with rigid accessory SpecialMesh.TextureId for '%s'. You need to match the textureIds and try again."]
  GETTABLEKS R11 R0 K17 ["Name"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  RETURN R7 2
  LOADB R7 1
  RETURN R7 1

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
  DUPCLOSURE R3 K8 [PROTO_0]
  CAPTURE VAL R1
  RETURN R3 1
