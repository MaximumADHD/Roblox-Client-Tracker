PROTO_0:
        0 LOADK                            R5 K0 ["Handle"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 MOVE                             R5 R3
        5 JUMPIFNOT                        R5 ; [+4]
        6 LOADK                            R7 K2 ["MeshPart"]
        7 NAMECALL                         R5 R3 K3 ["IsA"]
        9 CALL                             R5 2 1
       10 FASTCALL1                        ASSERT R5 ; [+2]
       11 GETIMPORT                        R4 K5 [assert]
       13 CALL                             R4 1 0
       14 LOADK                            R6 K0 ["Handle"]
       15 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
       17 CALL                             R4 2 1
       18 MOVE                             R6 R4
       19 JUMPIFNOT                        R6 ; [+4]
       20 LOADK                            R8 K2 ["MeshPart"]
       21 NAMECALL                         R6 R4 K3 ["IsA"]
       23 CALL                             R6 2 1
       24 FASTCALL1                        ASSERT R6 ; [+2]
       25 GETIMPORT                        R5 K5 [assert]
       27 CALL                             R5 1 0
       28 GETTABLEKS                       R5 R3 K6 ["MeshId"]
       30 GETTABLEKS                       R6 R4 K6 ["MeshId"]
       32 JUMPIFEQ                         R5 R6 ; [+24]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K7 ["reportFailure"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K8 ["ErrorType"]
       40 GETTABLEKS                       R6 R7 K9 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
       42 LOADNIL                          R7
       43 MOVE                             R8 R2
       44 CALL                             R5 3 0
       45 LOADB                            R5 0
       46 NEWTABLE                         R6 0 1
       48 GETIMPORT                        R7 K12 [string.format]
       50 LOADK                            R8 K13 ["Model meshId mismatch between MeshPart.MeshId and SpecialMesh.MeshId for %s. You need to match the meshIds and try again."]
       51 GETTABLEKS                       R9 R0 K14 ["Name"]
       53 CALL                             R7 2 -1
       54 SETLIST                          R6 R7 -1 [1]
       56 RETURN                           R5 2
       57 GETTABLEKS                       R5 R3 K15 ["TextureID"]
       59 GETTABLEKS                       R6 R4 K15 ["TextureID"]
       61 JUMPIFEQ                         R5 R6 ; [+24]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R5 R6 K7 ["reportFailure"]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R7 R8 K8 ["ErrorType"]
       69 GETTABLEKS                       R6 R7 K16 ["validateLayeredClothingAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
       71 LOADNIL                          R7
       72 MOVE                             R8 R2
       73 CALL                             R5 3 0
       74 LOADB                            R5 0
       75 NEWTABLE                         R6 0 1
       77 GETIMPORT                        R7 K12 [string.format]
       79 LOADK                            R8 K17 ["Model textureId mismatch between MeshPart.TextureID and SpecialMesh.TextureId for %s. You need to match the textureIds and try again."]
       80 GETTABLEKS                       R9 R0 K14 ["Name"]
       82 CALL                             R7 2 -1
       83 SETLIST                          R6 R7 -1 [1]
       85 RETURN                           R5 2
       86 LOADB                            R5 1
       87 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
