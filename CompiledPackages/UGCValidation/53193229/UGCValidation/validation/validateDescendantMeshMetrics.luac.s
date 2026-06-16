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
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["AlternateMeshIdAttributeName"]
        3 NAMECALL                         R4 R0 K1 ["GetAttribute"]
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R5 R0 K2 ["HasSkinnedMesh"]
        8 JUMPIF                           R5 ; [+29]
        9 JUMPIFEQKNIL                     R4 ; [+4]
       11 JUMPIFEQKS                       R4 K3 [""] ; [+2]
       13 JUMPIF                           R2 ; [+24]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["reportFailure"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["ErrorType"]
       20 GETTABLEKS                       R6 R6 K6 ["validateDescendantMeshMetrics_NoSkinningInfo"]
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
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K4 ["reportFailure"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K5 ["ErrorType"]
       58 GETTABLEKS                       R8 R8 K15 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
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
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K4 ["reportFailure"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K5 ["ErrorType"]
       89 GETTABLEKS                       R9 R9 K17 ["validateDescendantMeshMetrics_HasSkinnedMeshMismatch"]
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
        5 GETTABLEKS                       R6 R5 K0 ["instance"]
        7 GETTABLEKS                       R6 R6 K1 ["ClassName"]
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
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K7 ["reportFailure"]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R9 R9 K8 ["ErrorType"]
       35 GETTABLEKS                       R9 R9 K9 ["validateDescendantMeshMetrics_FailedToLoadMesh"]
       37 LOADNIL                          R10
       38 GETUPVAL                         R11 2
       39 CALL                             R8 3 0
       40 LOADB                            R8 0
       41 GETIMPORT                        R9 K12 [string.format]
       43 LOADK                            R10 K13 ["Failed to load mesh for '%s'. Make sure mesh exists and try again."]
       44 GETTABLEKS                       R11 R5 K0 ["instance"]
       46 GETTABLEKS                       R11 R11 K14 ["Name"]
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
       61 GETTABLEKS                       R13 R5 K0 ["instance"]
       63 GETTABLEKS                       R13 R13 K14 ["Name"]
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
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
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
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K7 ["reportFailure"]
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K8 ["ErrorType"]
       33 GETTABLEKS                       R10 R10 K9 ["validateDescendantMeshMetrics_FailedToCalculateTriangles"]
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
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R11 R11 K7 ["reportFailure"]
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R12 R12 K8 ["ErrorType"]
       58 GETTABLEKS                       R12 R12 K11 ["validateDescendantMeshMetrics_TooManyTriangles"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["reportFailure"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K4 ["ErrorType"]
       14 GETTABLEKS                       R7 R7 K5 ["validateDescendantMeshMetrics_TooFarFromOrigin"]
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
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["new"]
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K7 ["parse"]
       25 MOVE                             R7 R0
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K8 ["MESH_CONTENT_ID_FIELDS"]
       29 MOVE                             R9 R1
       30 CALL                             R6 3 1
       31 GETIMPORT                        R7 K10 [tick]
       33 CALL                             R7 0 1
       34 GETUPVAL                         R8 3
       35 CALL                             R8 0 1
       36 JUMPIF                           R8 ; [+8]
       37 GETUPVAL                         R10 4
       38 MOVE                             R11 R6
       39 MOVE                             R12 R3
       40 MOVE                             R13 R1
       41 CALL                             R10 3 -1
       42 NAMECALL                         R8 R5 K11 ["updateReasons"]
       44 CALL                             R8 -1 0
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R8 R8 K12 ["recordScriptTime"]
       48 LOADK                            R9 K13 ["validateTotalAssetTriangles"]
       49 MOVE                             R10 R7
       50 MOVE                             R11 R1
       51 CALL                             R8 3 0
       52 MOVE                             R8 R6
       53 LOADNIL                          R9
       54 LOADNIL                          R10
       55 FORGPREP                         R8
       56 DUPTABLE                         R13 K18 [{"fullName", "fieldName", "contentId", "context"}]
       57 GETTABLEKS                       R14 R12 K19 ["instance"]
       59 NAMECALL                         R14 R14 K20 ["GetFullName"]
       61 CALL                             R14 1 1
       62 SETTABLEKS                       R14 R13 K14 ["fullName"]
       64 GETTABLEKS                       R14 R12 K15 ["fieldName"]
       66 SETTABLEKS                       R14 R13 K15 ["fieldName"]
       68 GETTABLEKS                       R15 R12 K19 ["instance"]
       70 GETTABLEKS                       R16 R12 K15 ["fieldName"]
       72 GETTABLE                         R14 R15 R16
       73 SETTABLEKS                       R14 R13 K16 ["contentId"]
       75 GETTABLEKS                       R14 R12 K19 ["instance"]
       77 GETTABLEKS                       R14 R14 K21 ["Name"]
       79 SETTABLEKS                       R14 R13 K17 ["context"]
       81 GETUPVAL                         R14 6
       82 GETTABLEKS                       R15 R12 K19 ["instance"]
       84 GETTABLEKS                       R16 R12 K15 ["fieldName"]
       86 MOVE                             R17 R1
       87 CALL                             R14 3 2
       88 JUMPIF                           R14 ; [+14]
       89 LOADB                            R16 0
       90 NEWTABLE                         R17 0 1
       92 GETIMPORT                        R18 K24 [string.format]
       94 LOADK                            R19 K25 ["Failed to load mesh for '%s'. Make sure mesh exists and try again."]
       95 GETTABLEKS                       R20 R12 K19 ["instance"]
       97 GETTABLEKS                       R20 R20 K21 ["Name"]
       99 CALL                             R18 2 -1
      100 SETLIST                          R17 R18 -1 [1]
      102 RETURN                           R16 2
      103 SETTABLEKS                       R15 R13 K26 ["editableMesh"]
      105 GETTABLEKS                       R16 R12 K19 ["instance"]
      107 GETTABLEKS                       R16 R16 K27 ["ClassName"]
      109 JUMPIFNOTEQKS                    R16 K28 ["MeshPart"] ; [+162]
      111 GETTABLEKS                       R18 R12 K15 ["fieldName"]
      113 JUMPIFEQKS                       R18 K29 ["MeshId"] ; [+2]
      115 LOADB                            R17 0 +1
      116 LOADB                            R17 1
      117 FASTCALL1                        ASSERT R17 ; [+2]
      118 GETIMPORT                        R16 K4 [assert]
      120 CALL                             R16 1 0
      121 GETUPVAL                         R16 7
      122 MOVE                             R17 R13
      123 MOVE                             R18 R1
      124 CALL                             R16 2 4
      125 JUMPIF                           R16 ; [+5]
      126 LOADB                            R22 0
      127 MOVE                             R23 R17
      128 NAMECALL                         R20 R5 K11 ["updateReasons"]
      130 CALL                             R20 3 0
      131 JUMPIFNOT                        R16 ; [+20]
      132 GETIMPORT                        R20 K10 [tick]
      134 CALL                             R20 0 1
      135 MOVE                             R7 R20
      136 GETUPVAL                         R22 8
      137 MOVE                             R23 R13
      138 MOVE                             R24 R18
      139 MOVE                             R25 R19
      140 MOVE                             R26 R1
      141 CALL                             R22 4 -1
      142 NAMECALL                         R20 R5 K11 ["updateReasons"]
      144 CALL                             R20 -1 0
      145 GETUPVAL                         R20 5
      146 GETTABLEKS                       R20 R20 K12 ["recordScriptTime"]
      148 LOADK                            R21 K30 ["validateMeshIsAtOrigin"]
      149 MOVE                             R22 R7
      150 MOVE                             R23 R1
      151 CALL                             R20 3 0
      152 JUMPIFNOT                        R18 ; [+65]
      153 JUMPIFNOT                        R19 ; [+64]
      154 SUB                              R20 R19 R18
      155 GETUPVAL                         R21 9
      156 GETTABLEKS                       R22 R20 K31 ["X"]
      158 LOADN                            R23 0
      159 CALL                             R21 2 1
      160 JUMPIF                           R21 ; [+12]
      161 GETUPVAL                         R21 9
      162 GETTABLEKS                       R22 R20 K32 ["Y"]
      164 LOADN                            R23 0
      165 CALL                             R21 2 1
      166 JUMPIF                           R21 ; [+6]
      167 GETUPVAL                         R21 9
      168 GETTABLEKS                       R22 R20 K33 ["Z"]
      170 LOADN                            R23 0
      171 CALL                             R21 2 1
      172 JUMPIFNOT                        R21 ; [+14]
      173 LOADB                            R23 0
      174 NEWTABLE                         R24 0 1
      176 LOADK                            R26 K34 ["Mesh size is zero for "]
      177 GETTABLEKS                       R27 R13 K14 ["fullName"]
      179 LOADK                            R28 K35 [". You need to rescale your mesh."]
      180 CONCAT                           R25 R26 R28
      181 SETLIST                          R24 R25 1 [1]
      183 NAMECALL                         R21 R5 K11 ["updateReasons"]
      185 CALL                             R21 3 0
      186 JUMP                             ; [+31]
      187 GETUPVAL                         R22 10
      188 GETTABLEKS                       R23 R12 K19 ["instance"]
      190 MOVE                             R24 R1
      191 CALL                             R22 2 1
      192 DIV                              R21 R22 R20
      193 GETUPVAL                         R22 3
      194 CALL                             R22 0 1
      195 JUMPIF                           R22 ; [+8]
      196 GETUPVAL                         R24 11
      197 MOVE                             R25 R13
      198 MOVE                             R26 R21
      199 MOVE                             R27 R1
      200 CALL                             R24 3 -1
      201 NAMECALL                         R22 R5 K11 ["updateReasons"]
      203 CALL                             R22 -1 0
      204 GETUPVAL                         R22 12
      205 CALL                             R22 0 1
      206 JUMPIF                           R22 ; [+11]
      207 GETUPVAL                         R22 13
      208 CALL                             R22 0 1
      209 JUMPIFNOT                        R22 ; [+8]
      210 GETUPVAL                         R24 14
      211 MOVE                             R25 R13
      212 MOVE                             R26 R21
      213 MOVE                             R27 R1
      214 CALL                             R24 3 -1
      215 NAMECALL                         R22 R5 K11 ["updateReasons"]
      217 CALL                             R22 -1 0
      218 GETUPVAL                         R20 12
      219 CALL                             R20 0 1
      220 JUMPIF                           R20 ; [+8]
      221 GETUPVAL                         R22 15
      222 MOVE                             R23 R13
      223 LOADB                            R24 1
      224 MOVE                             R25 R1
      225 CALL                             R22 3 -1
      226 NAMECALL                         R20 R5 K11 ["updateReasons"]
      228 CALL                             R20 -1 0
      229 GETIMPORT                        R20 K10 [tick]
      231 CALL                             R20 0 1
      232 MOVE                             R7 R20
      233 GETUPVAL                         R22 16
      234 GETTABLEKS                       R23 R12 K19 ["instance"]
      236 MOVE                             R24 R2
      237 MOVE                             R25 R4
      238 MOVE                             R26 R1
      239 CALL                             R22 4 -1
      240 NAMECALL                         R20 R5 K11 ["updateReasons"]
      242 CALL                             R20 -1 0
      243 GETUPVAL                         R20 5
      244 GETTABLEKS                       R20 R20 K12 ["recordScriptTime"]
      246 LOADK                            R21 K36 ["validateIsSkinned"]
      247 MOVE                             R22 R7
      248 MOVE                             R23 R1
      249 CALL                             R20 3 0
      250 GETUPVAL                         R20 17
      251 CALL                             R20 0 1
      252 JUMPIF                           R20 ; [+8]
      253 GETUPVAL                         R22 18
      254 GETTABLEKS                       R23 R12 K19 ["instance"]
      256 MOVE                             R24 R1
      257 CALL                             R22 2 -1
      258 NAMECALL                         R20 R5 K11 ["updateReasons"]
      260 CALL                             R20 -1 0
      261 GETUPVAL                         R20 3
      262 CALL                             R20 0 1
      263 JUMPIF                           R20 ; [+74]
      264 GETUPVAL                         R22 19
      265 MOVE                             R23 R13
      266 MOVE                             R24 R1
      267 CALL                             R22 2 -1
      268 NAMECALL                         R20 R5 K11 ["updateReasons"]
      270 CALL                             R20 -1 0
      271 JUMP                             ; [+66]
      272 GETTABLEKS                       R16 R12 K19 ["instance"]
      274 GETTABLEKS                       R16 R16 K27 ["ClassName"]
      276 JUMPIFNOTEQKS                    R16 K37 ["WrapTarget"] ; [+61]
      278 GETTABLEKS                       R18 R12 K15 ["fieldName"]
      280 JUMPIFEQKS                       R18 K38 ["CageMeshId"] ; [+2]
      282 LOADB                            R17 0 +1
      283 LOADB                            R17 1
      284 FASTCALL1                        ASSERT R17 ; [+2]
      285 GETIMPORT                        R16 K4 [assert]
      287 CALL                             R16 1 0
      288 GETTABLEKS                       R17 R13 K14 ["fullName"]
      290 LOADK                            R18 K39 ["OuterCage"]
      291 CONCAT                           R16 R17 R18
      292 SETTABLEKS                       R16 R13 K14 ["fullName"]
      294 GETUPVAL                         R16 20
      295 CALL                             R16 0 1
      296 JUMPIF                           R16 ; [+9]
      297 GETUPVAL                         R18 21
      298 MOVE                             R19 R13
      299 GETTABLEKS                       R20 R12 K19 ["instance"]
      301 MOVE                             R21 R1
      302 CALL                             R18 3 -1
      303 NAMECALL                         R16 R5 K11 ["updateReasons"]
      305 CALL                             R16 -1 0
      306 GETUPVAL                         R16 20
      307 CALL                             R16 0 1
      308 JUMPIF                           R16 ; [+7]
      309 GETUPVAL                         R18 22
      310 MOVE                             R19 R13
      311 MOVE                             R20 R1
      312 CALL                             R18 2 -1
      313 NAMECALL                         R16 R5 K11 ["updateReasons"]
      315 CALL                             R16 -1 0
      316 GETUPVAL                         R16 20
      317 CALL                             R16 0 1
      318 JUMPIF                           R16 ; [+9]
      319 GETUPVAL                         R18 23
      320 MOVE                             R19 R13
      321 GETTABLEKS                       R20 R12 K19 ["instance"]
      323 MOVE                             R21 R1
      324 CALL                             R18 3 -1
      325 NAMECALL                         R16 R5 K11 ["updateReasons"]
      327 CALL                             R16 -1 0
      328 GETUPVAL                         R16 3
      329 CALL                             R16 0 1
      330 JUMPIF                           R16 ; [+7]
      331 GETUPVAL                         R18 19
      332 MOVE                             R19 R13
      333 MOVE                             R20 R1
      334 CALL                             R18 2 -1
      335 NAMECALL                         R16 R5 K11 ["updateReasons"]
      337 CALL                             R16 -1 0
      338 FORGLOOP                         R8 2 ; [-283]
      340 NAMECALL                         R8 R5 K40 ["getFinalResults"]
      342 CALL                             R8 1 -1
      343 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Constants"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K8 [require]
       25 GETTABLEKS                       R5 R1 K11 ["util"]
       27 GETTABLEKS                       R5 R5 K12 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K8 [require]
       32 GETTABLEKS                       R6 R1 K11 ["util"]
       34 GETTABLEKS                       R6 R6 K13 ["pcallDeferred"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K8 [require]
       39 GETTABLEKS                       R7 R1 K14 ["validation"]
       41 GETTABLEKS                       R7 R7 K15 ["validateCoplanarIntersection"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K8 [require]
       46 GETTABLEKS                       R8 R1 K14 ["validation"]
       48 GETTABLEKS                       R8 R8 K16 ["validateCageUVs"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K8 [require]
       53 GETTABLEKS                       R9 R1 K14 ["validation"]
       55 GETTABLEKS                       R9 R9 K17 ["validateMeshVertColors"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K8 [require]
       60 GETTABLEKS                       R10 R1 K14 ["validation"]
       62 GETTABLEKS                       R10 R10 K18 ["validateCageUVTriangleArea"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K8 [require]
       67 GETTABLEKS                       R11 R1 K14 ["validation"]
       69 GETTABLEKS                       R11 R11 K19 ["validateMeshTriangleArea"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K8 [require]
       74 GETTABLEKS                       R12 R1 K14 ["validation"]
       76 GETTABLEKS                       R12 R12 K20 ["validateCageUVValues"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K8 [require]
       81 GETTABLEKS                       R13 R1 K14 ["validation"]
       83 GETTABLEKS                       R13 R13 K21 ["validateTotalSurfaceArea"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K8 [require]
       88 GETTABLEKS                       R14 R1 K14 ["validation"]
       90 GETTABLEKS                       R14 R14 K22 ["validateSkinningTransfer"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K8 [require]
       95 GETTABLEKS                       R15 R1 K23 ["flags"]
       97 GETTABLEKS                       R15 R15 K24 ["getFFlagUGCValidateMigrateCageUV"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K8 [require]
      102 GETTABLEKS                       R16 R1 K11 ["util"]
      104 GETTABLEKS                       R16 R16 K25 ["FailureReasonsAccumulator"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K8 [require]
      109 GETTABLEKS                       R17 R1 K11 ["util"]
      111 GETTABLEKS                       R17 R17 K26 ["ParseContentIds"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K8 [require]
      116 GETTABLEKS                       R18 R1 K11 ["util"]
      118 GETTABLEKS                       R18 R18 K27 ["getMeshMinMax"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K8 [require]
      123 GETTABLEKS                       R19 R1 K11 ["util"]
      125 GETTABLEKS                       R19 R19 K28 ["getEditableMeshFromContext"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K8 [require]
      130 GETTABLEKS                       R20 R1 K11 ["util"]
      132 GETTABLEKS                       R20 R20 K29 ["floatEquals"]
      134 CALL                             R19 1 1
      135 GETIMPORT                        R20 K8 [require]
      137 GETTABLEKS                       R21 R1 K11 ["util"]
      139 GETTABLEKS                       R21 R21 K30 ["getExpectedPartSize"]
      141 CALL                             R20 1 1
      142 GETIMPORT                        R21 K8 [require]
      144 GETTABLEKS                       R22 R1 K23 ["flags"]
      146 GETTABLEKS                       R22 R22 K31 ["getFFlagUGCValidateCoplanarTriTestBody"]
      148 CALL                             R21 1 1
      149 GETIMPORT                        R22 K8 [require]
      151 GETTABLEKS                       R23 R1 K23 ["flags"]
      153 GETTABLEKS                       R23 R23 K32 ["getFIntUGCValidateTriangleLimitTolerance"]
      155 CALL                             R22 1 1
      156 GETIMPORT                        R23 K8 [require]
      158 GETTABLEKS                       R24 R1 K23 ["flags"]
      160 GETTABLEKS                       R24 R24 K33 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
      162 CALL                             R23 1 1
      163 GETIMPORT                        R24 K8 [require]
      165 GETTABLEKS                       R25 R1 K23 ["flags"]
      167 GETTABLEKS                       R25 R25 K34 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
      169 CALL                             R24 1 1
      170 GETIMPORT                        R25 K8 [require]
      172 GETTABLEKS                       R26 R1 K23 ["flags"]
      174 GETTABLEKS                       R26 R26 K35 ["getFFlagUGCValidateMigrateMeshGeometry"]
      176 CALL                             R25 1 1
      177 DUPCLOSURE                       R26 K36 [PROTO_1]
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R18
      181 CAPTURE                          VAL R0
      182 DUPCLOSURE                       R27 K37 [PROTO_4]
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R22
      189 DUPCLOSURE                       R28 K38 [PROTO_5]
      190 CAPTURE                          VAL R2
      191 DUPCLOSURE                       R29 K39 [PROTO_6]
      192 CAPTURE                          VAL R15
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R3
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R27
      197 CAPTURE                          VAL R2
      198 CAPTURE                          VAL R18
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R20
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R24
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R26
      209 CAPTURE                          VAL R23
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R11
      216 RETURN                           R29 1
