PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["MeshId"]
        3 GETUPVAL                         R3 2
        4 CALL                             R0 3 2
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Failed to retrieve MeshContent"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 3
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K4 ["ValidateSkinnedEditableMesh"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["AlternateMeshIdAttributeName"]
        3 NAMECALL                         R4 R0 K1 ["GetAttribute"]
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R5 R0 K2 ["HasSkinnedMesh"]
        8 JUMPIF                           R5 ; [+29]
        9 JUMPIFEQKNIL                     R4 ; [+4]
       11 JUMPIFEQKS                       R4 K3 [""] ; [+2]
       13 JUMPIF                           R2 ; [+24]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K4 ["reportFailure"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K5 ["ErrorType"]
       20 GETTABLEKS                       R6 R7 K6 ["validateDescendantMeshMetrics_NoSkinningInfo"]
       22 LOADNIL                          R7
       23 MOVE                             R8 R3
       24 CALL                             R5 3 0
       25 LOADB                            R5 0
       26 NEWTABLE                         R6 0 1
       28 LOADK                            R8 K7 ["Missing skinning data for %*.MeshId. You need to skin your model."]
       29 GETTABLEKS                       R10 R0 K8 ["Name"]
       31 NAMECALL                         R8 R8 K9 ["format"]
       33 CALL                             R8 2 1
       34 MOVE                             R7 R8
       35 SETLIST                          R6 R7 1 [1]
       37 RETURN                           R5 2
       38 GETIMPORT                        R5 K11 [pcall]
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U3
       45 CALL                             R5 1 2
       46 JUMPIF                           R5 ; [+23]
       47 JUMPIFNOT                        R1 ; [+4]
       48 GETIMPORT                        R7 K13 [error]
       50 LOADK                            R8 K14 ["Failed to retrieve mesh data to validate skinned mesh"]
       51 CALL                             R7 1 0
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R7 R8 K4 ["reportFailure"]
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R9 R10 K5 ["ErrorType"]
       58 GETTABLEKS                       R8 R9 K15 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
       60 LOADNIL                          R9
       61 MOVE                             R10 R3
       62 CALL                             R7 3 0
       63 LOADB                            R7 0
       64 NEWTABLE                         R8 0 1
       66 LOADK                            R9 K14 ["Failed to retrieve mesh data to validate skinned mesh"]
       67 SETLIST                          R8 R9 1 [1]
       69 RETURN                           R7 2
       70 JUMPIF                           R6 ; [+30]
       71 LOADK                            R8 K16 ["Detected mismatch between model and skinned data for %*. You need to re-skin your model to fix this issue."]
       72 GETTABLEKS                       R10 R0 K8 ["Name"]
       74 NAMECALL                         R8 R8 K9 ["format"]
       76 CALL                             R8 2 1
       77 MOVE                             R7 R8
       78 JUMPIFNOT                        R1 ; [+4]
       79 GETIMPORT                        R8 K13 [error]
       81 MOVE                             R9 R7
       82 CALL                             R8 1 0
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R8 R9 K4 ["reportFailure"]
       86 GETUPVAL                         R11 1
       87 GETTABLEKS                       R10 R11 K5 ["ErrorType"]
       89 GETTABLEKS                       R9 R10 K17 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
       91 LOADNIL                          R10
       92 MOVE                             R11 R3
       93 CALL                             R8 3 0
       94 LOADB                            R8 0
       95 NEWTABLE                         R9 0 1
       97 MOVE                             R10 R7
       98 SETLIST                          R9 R10 1 [1]
      100 RETURN                           R8 2
      101 LOADB                            R7 1
      102 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetEditableMeshTriCount"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R7 R5 K0 ["instance"]
        7 GETTABLEKS                       R6 R7 K1 ["ClassName"]
        9 JUMPIFNOTEQKS                    R6 K2 ["MeshPart"] ; [+58]
       11 GETTABLEKS                       R8 R5 K3 ["fieldName"]
       13 JUMPIFEQKS                       R8 K4 ["MeshId"] ; [+2]
       15 LOADB                            R7 0 +1
       16 LOADB                            R7 1
       17 FASTCALL1                        ASSERT R7 ; [+2]
       18 GETIMPORT                        R6 K6 [assert]
       20 CALL                             R6 1 0
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R7 R5 K0 ["instance"]
       24 GETTABLEKS                       R8 R5 K3 ["fieldName"]
       26 GETUPVAL                         R9 2
       27 CALL                             R6 3 2
       28 JUMPIF                           R6 ; [+21]
       29 GETUPVAL                         R9 3
       30 GETTABLEKS                       R8 R9 K7 ["reportFailure"]
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R10 R11 K8 ["ErrorType"]
       35 GETTABLEKS                       R9 R10 K9 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
       37 LOADNIL                          R10
       38 GETUPVAL                         R11 2
       39 CALL                             R8 3 0
       40 LOADB                            R8 0
       41 GETIMPORT                        R9 K12 [string.format]
       43 LOADK                            R10 K13 ["Failed to load mesh for '%s'. Make sure mesh exists and try again."]
       44 GETTABLEKS                       R12 R5 K0 ["instance"]
       46 GETTABLEKS                       R11 R12 K14 ["Name"]
       48 CALL                             R9 2 -1
       49 RETURN                           R8 -1
       50 GETUPVAL                         R8 4
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R7
       54 GETUPVAL                         R10 2
       55 CALL                             R8 2 2
       56 JUMPIF                           R8 ; [+10]
       57 LOADB                            R10 0
       58 GETIMPORT                        R11 K12 [string.format]
       60 LOADK                            R12 K15 ["Failed to execute check for triangle face information for mesh '%s'. Make sure mesh exists and try again."]
       61 GETTABLEKS                       R14 R5 K0 ["instance"]
       63 GETTABLEKS                       R13 R14 K14 ["Name"]
       65 CALL                             R11 2 -1
       66 RETURN                           R10 -1
       67 ADD                              R0 R0 R9
       68 FORGLOOP                         R1 2 ; [-64]
       70 LOADB                            R1 1
       71 LOADNIL                          R2
       72 MOVE                             R3 R0
       73 RETURN                           R1 3

PROTO_4:
        0 GETTABLEKS                       R3 R2 K0 ["isServer"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K1 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
        5 GETTABLEKS                       R7 R1 K2 ["Name"]
        7 GETTABLE                         R5 R6 R7
        8 FASTCALL1                        ASSERT R5 ; [+2]
        9 GETIMPORT                        R4 K4 [assert]
       11 CALL                             R4 1 1
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 MOVE                             R6 R5
       20 CALL                             R6 0 3
       21 JUMPIF                           R6 ; [+23]
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETIMPORT                        R9 K6 [error]
       25 MOVE                             R10 R7
       26 CALL                             R9 1 0
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R9 R10 K7 ["reportFailure"]
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R11 R12 K8 ["ErrorType"]
       33 GETTABLEKS                       R10 R11 K9 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
       35 LOADNIL                          R11
       36 MOVE                             R12 R2
       37 CALL                             R9 3 0
       38 LOADB                            R9 0
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R7
       42 SETLIST                          R10 R11 1 [1]
       44 RETURN                           R9 2
       45 GETUPVAL                         R10 5
       46 CALL                             R10 0 1
       47 DIVK                             R9 R10 K10 [100]
       48 MUL                              R11 R4 R9
       49 ADD                              R10 R4 R11
       50 JUMPIFNOTLT                      R10 R8 ; [+26]
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R11 R12 K7 ["reportFailure"]
       55 GETUPVAL                         R14 2
       56 GETTABLEKS                       R13 R14 K8 ["ErrorType"]
       58 GETTABLEKS                       R12 R13 K11 ["validateDescendantMeshMetrics_TooManyTriangles"]
       60 LOADNIL                          R13
       61 MOVE                             R14 R2
       62 CALL                             R11 3 0
       63 LOADB                            R11 0
       64 NEWTABLE                         R12 0 1
       66 GETIMPORT                        R13 K14 [string.format]
       68 LOADK                            R14 K15 ["Mesh resolution of '%d' for '%s' is higher than max supported number of triangles '%d'. You need to retopologize your model to reduce the triangle count."]
       69 MOVE                             R15 R8
       70 GETTABLEKS                       R16 R1 K2 ["Name"]
       72 MOVE                             R17 R4
       73 CALL                             R13 4 -1
       74 SETLIST                          R12 R13 -1 [1]
       76 RETURN                           R11 2
       77 LOADB                            R11 1
       78 RETURN                           R11 1

PROTO_5:
        0 SUB                              R5 R2 R1
        1 DIVK                             R4 R5 K0 [2]
        2 ADD                              R5 R1 R4
        3 GETTABLEKS                       R6 R5 K1 ["Magnitude"]
        5 LOADK                            R7 K2 [0.001]
        6 JUMPIFNOTLT                      R7 R6 ; [+25]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K3 ["reportFailure"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K4 ["ErrorType"]
       14 GETTABLEKS                       R7 R8 K5 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
       16 LOADNIL                          R8
       17 MOVE                             R9 R3
       18 CALL                             R6 3 0
       19 LOADB                            R6 0
       20 NEWTABLE                         R7 0 1
       22 GETIMPORT                        R8 K8 [string.format]
       24 LOADK                            R9 K9 ["Bounds for the mesh '%s' are not centered at the origin. The max allowed distance is '%f'"]
       25 GETTABLEKS                       R10 R0 K10 ["fullName"]
       27 LOADK                            R11 K2 [0.001]
       28 CALL                             R8 3 -1
       29 SETLIST                          R7 R8 -1 [1]
       31 RETURN                           R6 2
       32 LOADB                            R6 1
       33 RETURN                           R6 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["isServer"]
        2 GETTABLEKS                       R5 R1 K1 ["assetTypeEnum"]
        4 JUMPIFNOTEQKNIL                  R5 ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       10 LOADK                            R5 K2 ["assetTypeEnum required in validationContext for validateDescendantMeshMetrics"]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R3 R1 K1 ["assetTypeEnum"]
       16 GETTABLEKS                       R4 R1 K5 ["allowEditableInstances"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K6 ["new"]
       21 CALL                             R5 0 1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K7 ["parse"]
       25 MOVE                             R7 R0
       26 GETUPVAL                         R9 2
       27 GETTABLEKS                       R8 R9 K8 ["MESH_CONTENT_ID_FIELDS"]
       29 MOVE                             R9 R1
       30 CALL                             R6 3 1
       31 GETIMPORT                        R7 K10 [tick]
       33 CALL                             R7 0 1
       34 GETUPVAL                         R10 3
       35 MOVE                             R11 R6
       36 MOVE                             R12 R3
       37 MOVE                             R13 R1
       38 CALL                             R10 3 -1
       39 NAMECALL                         R8 R5 K11 ["updateReasons"]
       41 CALL                             R8 -1 0
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R8 R9 K12 ["recordScriptTime"]
       45 LOADK                            R9 K13 ["validateTotalAssetTriangles"]
       46 MOVE                             R10 R7
       47 MOVE                             R11 R1
       48 CALL                             R8 3 0
       49 MOVE                             R8 R6
       50 LOADNIL                          R9
       51 LOADNIL                          R10
       52 FORGPREP                         R8
       53 DUPTABLE                         R13 K18 [{"fullName", "fieldName", "contentId", "context"}]
       54 GETTABLEKS                       R14 R12 K19 ["instance"]
       56 NAMECALL                         R14 R14 K20 ["GetFullName"]
       58 CALL                             R14 1 1
       59 SETTABLEKS                       R14 R13 K14 ["fullName"]
       61 GETTABLEKS                       R14 R12 K15 ["fieldName"]
       63 SETTABLEKS                       R14 R13 K15 ["fieldName"]
       65 GETTABLEKS                       R15 R12 K19 ["instance"]
       67 GETTABLEKS                       R16 R12 K15 ["fieldName"]
       69 GETTABLE                         R14 R15 R16
       70 SETTABLEKS                       R14 R13 K16 ["contentId"]
       72 GETTABLEKS                       R15 R12 K19 ["instance"]
       74 GETTABLEKS                       R14 R15 K21 ["Name"]
       76 SETTABLEKS                       R14 R13 K17 ["context"]
       78 GETUPVAL                         R14 5
       79 GETTABLEKS                       R15 R12 K19 ["instance"]
       81 GETTABLEKS                       R16 R12 K15 ["fieldName"]
       83 MOVE                             R17 R1
       84 CALL                             R14 3 2
       85 JUMPIF                           R14 ; [+14]
       86 LOADB                            R16 0
       87 NEWTABLE                         R17 0 1
       89 GETIMPORT                        R18 K24 [string.format]
       91 LOADK                            R19 K25 ["Failed to load mesh for '%s'. Make sure mesh exists and try again."]
       92 GETTABLEKS                       R21 R12 K19 ["instance"]
       94 GETTABLEKS                       R20 R21 K21 ["Name"]
       96 CALL                             R18 2 -1
       97 SETLIST                          R17 R18 -1 [1]
       99 RETURN                           R16 2
      100 SETTABLEKS                       R15 R13 K26 ["editableMesh"]
      102 GETTABLEKS                       R17 R12 K19 ["instance"]
      104 GETTABLEKS                       R16 R17 K27 ["ClassName"]
      106 JUMPIFNOTEQKS                    R16 K28 ["MeshPart"] ; [+150]
      108 GETTABLEKS                       R18 R12 K15 ["fieldName"]
      110 JUMPIFEQKS                       R18 K29 ["MeshId"] ; [+2]
      112 LOADB                            R17 0 +1
      113 LOADB                            R17 1
      114 FASTCALL1                        ASSERT R17 ; [+2]
      115 GETIMPORT                        R16 K4 [assert]
      117 CALL                             R16 1 0
      118 GETUPVAL                         R16 6
      119 MOVE                             R17 R13
      120 MOVE                             R18 R1
      121 CALL                             R16 2 4
      122 JUMPIF                           R16 ; [+5]
      123 LOADB                            R22 0
      124 MOVE                             R23 R17
      125 NAMECALL                         R20 R5 K11 ["updateReasons"]
      127 CALL                             R20 3 0
      128 JUMPIFNOT                        R16 ; [+20]
      129 GETIMPORT                        R20 K10 [tick]
      131 CALL                             R20 0 1
      132 MOVE                             R7 R20
      133 GETUPVAL                         R22 7
      134 MOVE                             R23 R13
      135 MOVE                             R24 R18
      136 MOVE                             R25 R19
      137 MOVE                             R26 R1
      138 CALL                             R22 4 -1
      139 NAMECALL                         R20 R5 K11 ["updateReasons"]
      141 CALL                             R20 -1 0
      142 GETUPVAL                         R21 4
      143 GETTABLEKS                       R20 R21 K12 ["recordScriptTime"]
      145 LOADK                            R21 K30 ["validateMeshIsAtOrigin"]
      146 MOVE                             R22 R7
      147 MOVE                             R23 R1
      148 CALL                             R20 3 0
      149 JUMPIFNOT                        R18 ; [+59]
      150 JUMPIFNOT                        R19 ; [+58]
      151 SUB                              R20 R19 R18
      152 GETUPVAL                         R21 8
      153 GETTABLEKS                       R22 R20 K31 ["X"]
      155 LOADN                            R23 0
      156 CALL                             R21 2 1
      157 JUMPIF                           R21 ; [+12]
      158 GETUPVAL                         R21 8
      159 GETTABLEKS                       R22 R20 K32 ["Y"]
      161 LOADN                            R23 0
      162 CALL                             R21 2 1
      163 JUMPIF                           R21 ; [+6]
      164 GETUPVAL                         R21 8
      165 GETTABLEKS                       R22 R20 K33 ["Z"]
      167 LOADN                            R23 0
      168 CALL                             R21 2 1
      169 JUMPIFNOT                        R21 ; [+14]
      170 LOADB                            R23 0
      171 NEWTABLE                         R24 0 1
      173 LOADK                            R26 K34 ["Mesh size is zero for "]
      174 GETTABLEKS                       R27 R13 K14 ["fullName"]
      176 LOADK                            R28 K35 [". You need to rescale your mesh."]
      177 CONCAT                           R25 R26 R28
      178 SETLIST                          R24 R25 1 [1]
      180 NAMECALL                         R21 R5 K11 ["updateReasons"]
      182 CALL                             R21 3 0
      183 JUMP                             ; [+25]
      184 GETUPVAL                         R22 9
      185 GETTABLEKS                       R23 R12 K19 ["instance"]
      187 MOVE                             R24 R1
      188 CALL                             R22 2 1
      189 DIV                              R21 R22 R20
      190 GETUPVAL                         R24 10
      191 MOVE                             R25 R13
      192 MOVE                             R26 R21
      193 MOVE                             R27 R1
      194 CALL                             R24 3 -1
      195 NAMECALL                         R22 R5 K11 ["updateReasons"]
      197 CALL                             R22 -1 0
      198 GETUPVAL                         R22 11
      199 CALL                             R22 0 1
      200 JUMPIFNOT                        R22 ; [+8]
      201 GETUPVAL                         R24 12
      202 MOVE                             R25 R13
      203 MOVE                             R26 R21
      204 MOVE                             R27 R1
      205 CALL                             R24 3 -1
      206 NAMECALL                         R22 R5 K11 ["updateReasons"]
      208 CALL                             R22 -1 0
      209 GETUPVAL                         R22 13
      210 MOVE                             R23 R13
      211 LOADB                            R24 1
      212 MOVE                             R25 R1
      213 CALL                             R22 3 -1
      214 NAMECALL                         R20 R5 K11 ["updateReasons"]
      216 CALL                             R20 -1 0
      217 GETIMPORT                        R20 K10 [tick]
      219 CALL                             R20 0 1
      220 MOVE                             R7 R20
      221 GETUPVAL                         R22 14
      222 GETTABLEKS                       R23 R12 K19 ["instance"]
      224 MOVE                             R24 R2
      225 MOVE                             R25 R4
      226 MOVE                             R26 R1
      227 CALL                             R22 4 -1
      228 NAMECALL                         R20 R5 K11 ["updateReasons"]
      230 CALL                             R20 -1 0
      231 GETUPVAL                         R21 4
      232 GETTABLEKS                       R20 R21 K12 ["recordScriptTime"]
      234 LOADK                            R21 K36 ["validateIsSkinned"]
      235 MOVE                             R22 R7
      236 MOVE                             R23 R1
      237 CALL                             R20 3 0
      238 GETUPVAL                         R20 15
      239 CALL                             R20 0 1
      240 JUMPIFNOT                        R20 ; [+8]
      241 GETUPVAL                         R22 16
      242 GETTABLEKS                       R23 R12 K19 ["instance"]
      244 MOVE                             R24 R1
      245 CALL                             R22 2 -1
      246 NAMECALL                         R20 R5 K11 ["updateReasons"]
      248 CALL                             R20 -1 0
      249 GETUPVAL                         R22 17
      250 MOVE                             R23 R13
      251 MOVE                             R24 R1
      252 CALL                             R22 2 -1
      253 NAMECALL                         R20 R5 K11 ["updateReasons"]
      255 CALL                             R20 -1 0
      256 JUMP                             ; [+54]
      257 GETTABLEKS                       R17 R12 K19 ["instance"]
      259 GETTABLEKS                       R16 R17 K27 ["ClassName"]
      261 JUMPIFNOTEQKS                    R16 K37 ["WrapTarget"] ; [+49]
      263 GETTABLEKS                       R18 R12 K15 ["fieldName"]
      265 JUMPIFEQKS                       R18 K38 ["CageMeshId"] ; [+2]
      267 LOADB                            R17 0 +1
      268 LOADB                            R17 1
      269 FASTCALL1                        ASSERT R17 ; [+2]
      270 GETIMPORT                        R16 K4 [assert]
      272 CALL                             R16 1 0
      273 GETTABLEKS                       R17 R13 K14 ["fullName"]
      275 LOADK                            R18 K39 ["OuterCage"]
      276 CONCAT                           R16 R17 R18
      277 SETTABLEKS                       R16 R13 K14 ["fullName"]
      279 GETUPVAL                         R18 18
      280 MOVE                             R19 R13
      281 GETTABLEKS                       R20 R12 K19 ["instance"]
      283 MOVE                             R21 R1
      284 CALL                             R18 3 -1
      285 NAMECALL                         R16 R5 K11 ["updateReasons"]
      287 CALL                             R16 -1 0
      288 GETUPVAL                         R18 19
      289 MOVE                             R19 R13
      290 MOVE                             R20 R1
      291 CALL                             R18 2 -1
      292 NAMECALL                         R16 R5 K11 ["updateReasons"]
      294 CALL                             R16 -1 0
      295 GETUPVAL                         R18 20
      296 MOVE                             R19 R13
      297 GETTABLEKS                       R20 R12 K19 ["instance"]
      299 MOVE                             R21 R1
      300 CALL                             R18 3 -1
      301 NAMECALL                         R16 R5 K11 ["updateReasons"]
      303 CALL                             R16 -1 0
      304 GETUPVAL                         R18 17
      305 MOVE                             R19 R13
      306 MOVE                             R20 R1
      307 CALL                             R18 2 -1
      308 NAMECALL                         R16 R5 K11 ["updateReasons"]
      310 CALL                             R16 -1 0
      311 FORGLOOP                         R8 2 ; [-259]
      313 NAMECALL                         R8 R5 K40 ["getFinalResults"]
      315 CALL                             R8 1 -1
      316 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Constants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R6 R1 K11 ["util"]
       27 GETTABLEKS                       R5 R6 K12 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K8 [require]
       32 GETTABLEKS                       R7 R1 K11 ["util"]
       34 GETTABLEKS                       R6 R7 K13 ["pcallDeferred"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K8 [require]
       39 GETTABLEKS                       R8 R1 K14 ["validation"]
       41 GETTABLEKS                       R7 R8 K15 ["validateCoplanarIntersection"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K8 [require]
       46 GETTABLEKS                       R9 R1 K14 ["validation"]
       48 GETTABLEKS                       R8 R9 K16 ["validateCageUVs"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K8 [require]
       53 GETTABLEKS                       R10 R1 K14 ["validation"]
       55 GETTABLEKS                       R9 R10 K17 ["validateMeshVertColors"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R11 R1 K14 ["validation"]
       62 GETTABLEKS                       R10 R11 K18 ["validateCageUVTriangleArea"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K8 [require]
       67 GETTABLEKS                       R12 R1 K14 ["validation"]
       69 GETTABLEKS                       R11 R12 K19 ["validateMeshTriangleArea"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K8 [require]
       74 GETTABLEKS                       R13 R1 K14 ["validation"]
       76 GETTABLEKS                       R12 R13 K20 ["validateCageUVValues"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K8 [require]
       81 GETTABLEKS                       R14 R1 K14 ["validation"]
       83 GETTABLEKS                       R13 R14 K21 ["validateTotalSurfaceArea"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K8 [require]
       88 GETTABLEKS                       R15 R1 K14 ["validation"]
       90 GETTABLEKS                       R14 R15 K22 ["validateSkinningTransfer"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K8 [require]
       95 GETTABLEKS                       R16 R1 K11 ["util"]
       97 GETTABLEKS                       R15 R16 K23 ["FailureReasonsAccumulator"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K8 [require]
      102 GETTABLEKS                       R17 R1 K11 ["util"]
      104 GETTABLEKS                       R16 R17 K24 ["ParseContentIds"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K8 [require]
      109 GETTABLEKS                       R18 R1 K11 ["util"]
      111 GETTABLEKS                       R17 R18 K25 ["getMeshMinMax"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K8 [require]
      116 GETTABLEKS                       R19 R1 K11 ["util"]
      118 GETTABLEKS                       R18 R19 K26 ["getEditableMeshFromContext"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K8 [require]
      123 GETTABLEKS                       R20 R1 K11 ["util"]
      125 GETTABLEKS                       R19 R20 K27 ["floatEquals"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K8 [require]
      130 GETTABLEKS                       R21 R1 K11 ["util"]
      132 GETTABLEKS                       R20 R21 K28 ["getExpectedPartSize"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K8 [require]
      137 GETTABLEKS                       R22 R1 K29 ["flags"]
      139 GETTABLEKS                       R21 R22 K30 ["getFFlagUGCValidateCoplanarTriTestBody"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K8 [require]
      144 GETTABLEKS                       R23 R1 K29 ["flags"]
      146 GETTABLEKS                       R22 R23 K31 ["getFIntUGCValidateTriangleLimitTolerance"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K8 [require]
      151 GETTABLEKS                       R24 R1 K29 ["flags"]
      153 GETTABLEKS                       R23 R24 K32 ["getEngineUGCValidateRelativeSkinningTransfer"]
      155 CALL                             R22 1 1
      156 DUPCLOSURE                       R23 K33 [PROTO_1]
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R0
      161 DUPCLOSURE                       R24 K34 [PROTO_4]
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R21
      168 DUPCLOSURE                       R25 K35 [PROTO_5]
      169 CAPTURE                          VAL R2
      170 DUPCLOSURE                       R26 K36 [PROTO_6]
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R11
      192 RETURN                           R26 1
