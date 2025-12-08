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
  LOADK R8 K2 ["MeshPart"]
  NAMECALL R6 R4 K3 ["IsA"]
  CALL R6 2 1
  FASTCALL1 ASSERT R6 [+2]
  GETIMPORT R5 K5 [assert]
  CALL R5 1 0
  GETTABLEKS R5 R3 K6 ["MeshId"]
  GETTABLEKS R6 R4 K6 ["MeshId"]
  JUMPIFEQ R5 R6 [+24]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["reportFailure"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["ErrorType"]
  GETTABLEKS R6 R7 K9 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
  LOADNIL R7
  MOVE R8 R2
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K12 [string.format]
  LOADK R8 K13 ["Model meshId mismatch between MeshPart.MeshId and SpecialMesh.MeshId for %s. You need to match the meshIds and try again."]
  GETTABLEKS R9 R0 K14 ["Name"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  GETTABLEKS R5 R3 K15 ["TextureID"]
  GETTABLEKS R6 R4 K15 ["TextureID"]
  JUMPIFEQ R5 R6 [+24]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["reportFailure"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["ErrorType"]
  GETTABLEKS R6 R7 K16 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
  LOADNIL R7
  MOVE R8 R2
  CALL R5 3 0
  LOADB R5 0
  NEWTABLE R6 0 1
  GETIMPORT R7 K12 [string.format]
  LOADK R8 K17 ["Model textureId mismatch between MeshPart.TextureID and SpecialMesh.TextureId for %s. You need to match the textureIds and try again."]
  GETTABLEKS R9 R0 K14 ["Name"]
  CALL R7 2 -1
  SETLIST R6 R7 -1 [1]
  RETURN R5 2
  LOADB R5 1
  RETURN R5 1

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
