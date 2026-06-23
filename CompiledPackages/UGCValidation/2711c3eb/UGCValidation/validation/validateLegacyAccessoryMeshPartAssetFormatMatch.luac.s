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
       20 LOADK                            R8 K6 ["Part"]
       21 NAMECALL                         R6 R4 K3 ["IsA"]
       23 CALL                             R6 2 1
       24 FASTCALL1                        ASSERT R6 ; [+2]
       25 GETIMPORT                        R5 K5 [assert]
       27 CALL                             R5 1 0
       28 LOADK                            R7 K7 ["SpecialMesh"]
       29 NAMECALL                         R5 R4 K8 ["FindFirstChildOfClass"]
       31 CALL                             R5 2 1
       32 FASTCALL1                        ASSERT R5 ; [+3]
       33 MOVE                             R7 R5
       34 GETIMPORT                        R6 K5 [assert]
       36 CALL                             R6 1 0
       37 GETTABLEKS                       R6 R3 K9 ["MeshId"]
       39 GETTABLEKS                       R7 R5 K9 ["MeshId"]
       41 JUMPIFEQ                         R6 R7 ; [+24]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K10 ["reportFailure"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K11 ["ErrorType"]
       49 GETTABLEKS                       R7 R7 K12 ["validateLegacyAccessoryMeshPartAssetFormatMatch_MeshIdMismatch"]
       51 LOADNIL                          R8
       52 MOVE                             R9 R2
       53 CALL                             R6 3 0
       54 LOADB                            R6 0
       55 NEWTABLE                         R7 0 1
       57 GETIMPORT                        R8 K15 [string.format]
       59 LOADK                            R9 K16 ["Model meshId mismatch with rigid accessory SpecialMesh.MeshId for '%s'. You need to match the meshIds and try again."]
       60 GETTABLEKS                       R10 R0 K17 ["Name"]
       62 CALL                             R8 2 -1
       63 SETLIST                          R7 R8 -1 [1]
       65 RETURN                           R6 2
       66 GETTABLEKS                       R6 R3 K18 ["TextureID"]
       68 JUMPIFNOTEQKS                    R6 K19 [""] ; [+8]
       70 LOADK                            R9 K20 ["SurfaceAppearance"]
       71 NAMECALL                         R7 R3 K8 ["FindFirstChildOfClass"]
       73 CALL                             R7 2 1
       74 JUMPIFNOT                        R7 ; [+2]
       75 GETTABLEKS                       R6 R7 K21 ["ColorMap"]
       77 GETTABLEKS                       R7 R5 K22 ["TextureId"]
       79 JUMPIFEQ                         R6 R7 ; [+24]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K10 ["reportFailure"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K11 ["ErrorType"]
       87 GETTABLEKS                       R8 R8 K23 ["validateLegacyAccessoryMeshPartAssetFormatMatch_TextureIdMismatch"]
       89 LOADNIL                          R9
       90 MOVE                             R10 R2
       91 CALL                             R7 3 0
       92 LOADB                            R7 0
       93 NEWTABLE                         R8 0 1
       95 GETIMPORT                        R9 K15 [string.format]
       97 LOADK                            R10 K24 ["Model textureId mismatch with rigid accessory SpecialMesh.TextureId for '%s'. You need to match the textureIds and try again."]
       98 GETTABLEKS                       R11 R0 K17 ["Name"]
      100 CALL                             R9 2 -1
      101 SETLIST                          R8 R9 -1 [1]
      103 RETURN                           R7 2
      104 LOADB                            R7 1
      105 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
