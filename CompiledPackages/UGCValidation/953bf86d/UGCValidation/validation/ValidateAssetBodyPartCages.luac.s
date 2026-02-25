PROTO_0:
        0 DUPTABLE                         R5 K4 [{"fullName", "contentId", "fieldName", "context"}]
        1 NAMECALL                         R6 R0 K5 ["GetFullName"]
        3 CALL                             R6 1 1
        4 SETTABLEKS                       R6 R5 K0 ["fullName"]
        6 SETTABLEKS                       R2 R5 K1 ["contentId"]
        8 SETTABLEKS                       R1 R5 K2 ["fieldName"]
       10 SETTABLEKS                       R3 R5 K3 ["context"]
       12 GETUPVAL                         R6 0
       13 MOVE                             R7 R0
       14 MOVE                             R8 R1
       15 MOVE                             R9 R4
       16 CALL                             R6 3 2
       17 JUMPIF                           R6 ; [+3]
       18 LOADB                            R8 0
       19 MOVE                             R9 R5
       20 RETURN                           R8 2
       21 SETTABLEKS                       R7 R5 K6 ["editableMesh"]
       23 LOADB                            R8 1
       24 MOVE                             R9 R5
       25 RETURN                           R8 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["editableMesh"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K1 ["CageOrigin"]
       10 GETUPVAL                         R5 4
       11 NAMECALL                         R0 R0 K2 ["CalculateBodyPartMaxCageDistance"]
       13 CALL                             R0 5 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R5 0
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+13]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R8 R9 K0 ["MESH_CONTENT_TYPE"]
       11 GETTABLEKS                       R7 R8 K1 ["RENDER_MESH"]
       13 MOVE                             R8 R1
       14 CALL                             R5 3 3
       15 MOVE                             R2 R5
       16 MOVE                             R3 R6
       17 MOVE                             R4 R7
       18 JUMP                             ; [+32]
       19 GETTABLEKS                       R7 R0 K2 ["MeshId"]
       21 GETTABLEKS                       R8 R0 K3 ["Name"]
       23 DUPTABLE                         R9 K8 [{"fullName", "contentId", "fieldName", "context"}]
       24 NAMECALL                         R10 R0 K9 ["GetFullName"]
       26 CALL                             R10 1 1
       27 SETTABLEKS                       R10 R9 K4 ["fullName"]
       29 SETTABLEKS                       R7 R9 K5 ["contentId"]
       31 LOADK                            R10 K2 ["MeshId"]
       32 SETTABLEKS                       R10 R9 K6 ["fieldName"]
       34 SETTABLEKS                       R8 R9 K7 ["context"]
       36 GETUPVAL                         R10 3
       37 MOVE                             R11 R0
       38 LOADK                            R12 K2 ["MeshId"]
       39 MOVE                             R13 R1
       40 CALL                             R10 3 2
       41 JUMPIF                           R10 ; [+3]
       42 LOADB                            R5 0
       43 MOVE                             R6 R9
       44 JUMP                             ; [+4]
       45 SETTABLEKS                       R11 R9 K10 ["editableMesh"]
       47 LOADB                            R5 1
       48 MOVE                             R6 R9
       49 MOVE                             R2 R5
       50 MOVE                             R4 R6
       51 JUMPIF                           R2 ; [+19]
       52 GETUPVAL                         R5 0
       53 CALL                             R5 0 1
       54 JUMPIFNOT                        R5 ; [+4]
       55 LOADB                            R5 0
       56 MOVE                             R6 R3
       57 CLOSEUPVALS                      R4
       58 RETURN                           R5 2
       59 LOADB                            R5 0
       60 NEWTABLE                         R6 0 1
       62 LOADK                            R8 K11 ["Failed to load "]
       63 GETTABLEKS                       R9 R0 K3 ["Name"]
       65 LOADK                            R10 K12 ["'s render mesh data"]
       66 CONCAT                           R7 R8 R10
       67 SETLIST                          R6 R7 1 [1]
       69 CLOSEUPVALS                      R4
       70 RETURN                           R5 2
       71 LOADK                            R7 K13 ["WrapTarget"]
       72 NAMECALL                         R5 R0 K14 ["FindFirstChildWhichIsA"]
       74 CALL                             R5 2 1
       75 LOADK                            R9 K15 ["Missing WrapTarget child for "]
       76 GETTABLEKS                       R10 R0 K3 ["Name"]
       78 CONCAT                           R8 R9 R10
       79 FASTCALL2                        ASSERT R5 R8 ; [+4]
       81 MOVE                             R7 R5
       82 GETIMPORT                        R6 K17 [assert]
       84 CALL                             R6 2 0
       85 LOADNIL                          R6
       86 LOADNIL                          R7
       87 LOADNIL                          R8
       88 GETUPVAL                         R9 0
       89 CALL                             R9 0 1
       90 JUMPIFNOT                        R9 ; [+13]
       91 GETUPVAL                         R9 1
       92 MOVE                             R10 R5
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R12 R13 K0 ["MESH_CONTENT_TYPE"]
       96 GETTABLEKS                       R11 R12 K18 ["OUTER_CAGE"]
       98 MOVE                             R12 R1
       99 CALL                             R9 3 3
      100 MOVE                             R6 R9
      101 MOVE                             R7 R10
      102 MOVE                             R8 R11
      103 JUMP                             ; [+32]
      104 GETTABLEKS                       R11 R5 K19 ["CageMeshId"]
      106 GETTABLEKS                       R12 R5 K20 ["ClassName"]
      108 DUPTABLE                         R13 K8 [{"fullName", "contentId", "fieldName", "context"}]
      109 NAMECALL                         R14 R5 K9 ["GetFullName"]
      111 CALL                             R14 1 1
      112 SETTABLEKS                       R14 R13 K4 ["fullName"]
      114 SETTABLEKS                       R11 R13 K5 ["contentId"]
      116 LOADK                            R14 K19 ["CageMeshId"]
      117 SETTABLEKS                       R14 R13 K6 ["fieldName"]
      119 SETTABLEKS                       R12 R13 K7 ["context"]
      121 GETUPVAL                         R14 3
      122 MOVE                             R15 R5
      123 LOADK                            R16 K19 ["CageMeshId"]
      124 MOVE                             R17 R1
      125 CALL                             R14 3 2
      126 JUMPIF                           R14 ; [+3]
      127 LOADB                            R9 0
      128 MOVE                             R10 R13
      129 JUMP                             ; [+4]
      130 SETTABLEKS                       R15 R13 K10 ["editableMesh"]
      132 LOADB                            R9 1
      133 MOVE                             R10 R13
      134 MOVE                             R6 R9
      135 MOVE                             R8 R10
      136 JUMPIF                           R6 ; [+19]
      137 GETUPVAL                         R9 0
      138 CALL                             R9 0 1
      139 JUMPIFNOT                        R9 ; [+4]
      140 LOADB                            R9 0
      141 MOVE                             R10 R7
      142 CLOSEUPVALS                      R4
      143 RETURN                           R9 2
      144 LOADB                            R9 0
      145 NEWTABLE                         R10 0 1
      147 LOADK                            R12 K11 ["Failed to load "]
      148 GETTABLEKS                       R13 R0 K3 ["Name"]
      150 LOADK                            R14 K21 ["'s WrapTarget's cage mesh data"]
      151 CONCAT                           R11 R12 R14
      152 SETLIST                          R10 R11 1 [1]
      154 CLOSEUPVALS                      R4
      155 RETURN                           R9 2
      156 GETUPVAL                         R10 4
      157 MOVE                             R11 R0
      158 MOVE                             R12 R1
      159 CALL                             R10 2 1
      160 GETUPVAL                         R11 4
      161 MOVE                             R12 R0
      162 MOVE                             R13 R1
      163 LOADB                            R14 1
      164 CALL                             R11 3 1
      165 DIV                              R9 R10 R11
      166 GETUPVAL                         R10 5
      167 NEWCLOSURE                       R11 P0
      168 CAPTURE                          UPVAL U6
      169 CAPTURE                          REF R8
      170 CAPTURE                          REF R4
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R9
      173 MOVE                             R12 R1
      174 CALL                             R10 2 2
      175 JUMPIF                           R10 ; [+37]
      176 LOADK                            R13 K22 ["Failed to execute body part max cage distance check. Make sure %*'s render mesh and its WrapTarget's cage mesh exist, and try again."]
      177 GETTABLEKS                       R15 R0 K3 ["Name"]
      179 NAMECALL                         R13 R13 K23 ["format"]
      181 CALL                             R13 2 1
      182 MOVE                             R12 R13
      183 GETTABLEKS                       R13 R1 K24 ["isServer"]
      185 JUMPIFEQKNIL                     R13 ; [+8]
      187 GETTABLEKS                       R13 R1 K24 ["isServer"]
      189 JUMPIFNOT                        R13 ; [+4]
      190 GETIMPORT                        R13 K26 [error]
      192 MOVE                             R14 R12
      193 CALL                             R13 1 0
      194 GETUPVAL                         R14 7
      195 GETTABLEKS                       R13 R14 K27 ["reportFailure"]
      197 GETUPVAL                         R16 7
      198 GETTABLEKS                       R15 R16 K28 ["ErrorType"]
      200 GETTABLEKS                       R14 R15 K29 ["validateBodyPartCage_FailedToExecute"]
      202 LOADNIL                          R15
      203 MOVE                             R16 R1
      204 CALL                             R13 3 0
      205 LOADB                            R13 0
      206 NEWTABLE                         R14 0 1
      208 MOVE                             R15 R12
      209 SETLIST                          R14 R15 1 [1]
      211 CLOSEUPVALS                      R4
      212 RETURN                           R13 2
      213 GETUPVAL                         R13 8
      214 GETTABLEKS                       R12 R13 K30 ["asNumber"]
      216 CALL                             R12 0 1
      217 JUMPIFNOTLT                      R12 R11 ; [+34]
      219 GETUPVAL                         R13 7
      220 GETTABLEKS                       R12 R13 K27 ["reportFailure"]
      222 GETUPVAL                         R15 7
      223 GETTABLEKS                       R14 R15 K28 ["ErrorType"]
      225 GETTABLEKS                       R13 R14 K31 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      227 LOADNIL                          R14
      228 MOVE                             R15 R1
      229 CALL                             R12 3 0
      230 LOADB                            R12 0
      231 NEWTABLE                         R13 0 1
      233 GETIMPORT                        R14 K33 [string.format]
      235 LOADK                            R15 K34 ["Cage mesh verts referenced in %s.%s.CageMeshId were found that are %.2f studs outside the %s render mesh. %s studs is the maximum. Reduce the size of your cage mesh."]
      236 GETTABLEKS                       R16 R0 K3 ["Name"]
      238 GETTABLEKS                       R17 R5 K3 ["Name"]
      240 MOVE                             R18 R11
      241 GETTABLEKS                       R19 R0 K3 ["Name"]
      243 GETUPVAL                         R21 8
      244 GETTABLEKS                       R20 R21 K35 ["asString"]
      246 CALL                             R20 0 -1
      247 CALL                             R14 -1 -1
      248 SETLIST                          R13 R14 -1 [1]
      250 CLOSEUPVALS                      R4
      251 RETURN                           R12 2
      252 LOADB                            R12 1
      253 CLOSEUPVALS                      R4
      254 RETURN                           R12 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K2 ["ASSET_TYPE_INFO"]
        6 GETTABLEKS                       R5 R1 K3 ["assetTypeEnum"]
        8 GETTABLE                         R3 R4 R5
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K4 ["new"]
       12 CALL                             R4 0 1
       13 GETIMPORT                        R5 K8 [Enum.AssetType.DynamicHead]
       15 GETTABLEKS                       R6 R1 K3 ["assetTypeEnum"]
       17 JUMPIFNOTEQ                      R5 R6 ; [+6]
       19 GETUPVAL                         R5 2
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 CALL                             R5 2 -1
       23 RETURN                           R5 -1
       24 GETIMPORT                        R5 K10 [pairs]
       26 GETTABLEKS                       R6 R3 K11 ["subParts"]
       28 CALL                             R5 1 3
       29 FORGPREP_NEXT                    R5
       30 MOVE                             R12 R8
       31 NAMECALL                         R10 R0 K12 ["FindFirstChild"]
       33 CALL                             R10 2 1
       34 FASTCALL2K                       ASSERT R10 K13 ; [+5]
       36 MOVE                             R12 R10
       37 LOADK                            R13 K13 ["expected parts have been checked for existance before calling this function"]
       38 GETIMPORT                        R11 K15 [assert]
       40 CALL                             R11 2 0
       41 GETUPVAL                         R13 2
       42 MOVE                             R14 R10
       43 MOVE                             R15 R1
       44 CALL                             R13 2 -1
       45 NAMECALL                         R11 R4 K16 ["updateReasons"]
       47 CALL                             R11 -1 0
       48 FORGLOOP                         R5 1 ; [-19]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R5 R6 K17 ["recordScriptTime"]
       53 GETIMPORT                        R7 K19 [script]
       55 GETTABLEKS                       R6 R7 K20 ["Name"]
       57 MOVE                             R7 R2
       58 MOVE                             R8 R1
       59 CALL                             R5 3 0
       60 NAMECALL                         R5 R4 K21 ["getFinalResults"]
       62 CALL                             R5 1 -1
       63 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CalculateBodyMaxCageDistance"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["calculateAllTransformsForFullBody"]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R0
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 LOADNIL                          R12
       17 GETUPVAL                         R13 1
       18 CALL                             R13 0 1
       19 JUMPIFNOT                        R13 ; [+13]
       20 GETUPVAL                         R13 2
       21 MOVE                             R14 R9
       22 GETUPVAL                         R17 3
       23 GETTABLEKS                       R16 R17 K3 ["MESH_CONTENT_TYPE"]
       25 GETTABLEKS                       R15 R16 K4 ["RENDER_MESH"]
       27 MOVE                             R16 R1
       28 CALL                             R13 3 3
       29 MOVE                             R10 R13
       30 MOVE                             R11 R14
       31 MOVE                             R12 R15
       32 JUMP                             ; [+32]
       33 GETTABLEKS                       R15 R9 K5 ["MeshId"]
       35 GETTABLEKS                       R16 R9 K6 ["Name"]
       37 DUPTABLE                         R17 K11 [{"fullName", "contentId", "fieldName", "context"}]
       38 NAMECALL                         R18 R9 K12 ["GetFullName"]
       40 CALL                             R18 1 1
       41 SETTABLEKS                       R18 R17 K7 ["fullName"]
       43 SETTABLEKS                       R15 R17 K8 ["contentId"]
       45 LOADK                            R18 K5 ["MeshId"]
       46 SETTABLEKS                       R18 R17 K9 ["fieldName"]
       48 SETTABLEKS                       R16 R17 K10 ["context"]
       50 GETUPVAL                         R18 4
       51 MOVE                             R19 R9
       52 LOADK                            R20 K5 ["MeshId"]
       53 MOVE                             R21 R1
       54 CALL                             R18 3 2
       55 JUMPIF                           R18 ; [+3]
       56 LOADB                            R13 0
       57 MOVE                             R14 R17
       58 JUMP                             ; [+4]
       59 SETTABLEKS                       R19 R17 K13 ["editableMesh"]
       61 LOADB                            R13 1
       62 MOVE                             R14 R17
       63 MOVE                             R10 R13
       64 MOVE                             R12 R14
       65 JUMPIF                           R10 ; [+17]
       66 GETUPVAL                         R13 1
       67 CALL                             R13 0 1
       68 JUMPIFNOT                        R13 ; [+3]
       69 LOADB                            R13 0
       70 MOVE                             R14 R11
       71 RETURN                           R13 2
       72 LOADB                            R13 0
       73 NEWTABLE                         R14 0 1
       75 LOADK                            R16 K14 ["Failed to load "]
       76 GETTABLEKS                       R17 R9 K6 ["Name"]
       78 LOADK                            R18 K15 ["'s render mesh data"]
       79 CONCAT                           R15 R16 R18
       80 SETLIST                          R14 R15 1 [1]
       82 RETURN                           R13 2
       83 LOADK                            R15 K16 ["WrapTarget"]
       84 NAMECALL                         R13 R9 K17 ["FindFirstChildWhichIsA"]
       86 CALL                             R13 2 1
       87 LOADK                            R17 K18 ["Missing WrapTarget child for "]
       88 GETTABLEKS                       R18 R9 K6 ["Name"]
       90 CONCAT                           R16 R17 R18
       91 FASTCALL2                        ASSERT R13 R16 ; [+4]
       93 MOVE                             R15 R13
       94 GETIMPORT                        R14 K20 [assert]
       96 CALL                             R14 2 0
       97 LOADNIL                          R14
       98 LOADNIL                          R15
       99 LOADNIL                          R16
      100 GETUPVAL                         R17 1
      101 CALL                             R17 0 1
      102 JUMPIFNOT                        R17 ; [+13]
      103 GETUPVAL                         R17 2
      104 MOVE                             R18 R13
      105 GETUPVAL                         R21 3
      106 GETTABLEKS                       R20 R21 K3 ["MESH_CONTENT_TYPE"]
      108 GETTABLEKS                       R19 R20 K21 ["OUTER_CAGE"]
      110 MOVE                             R20 R1
      111 CALL                             R17 3 3
      112 MOVE                             R14 R17
      113 MOVE                             R15 R18
      114 MOVE                             R16 R19
      115 JUMP                             ; [+32]
      116 GETTABLEKS                       R19 R13 K22 ["CageMeshId"]
      118 GETTABLEKS                       R20 R13 K23 ["ClassName"]
      120 DUPTABLE                         R21 K11 [{"fullName", "contentId", "fieldName", "context"}]
      121 NAMECALL                         R22 R13 K12 ["GetFullName"]
      123 CALL                             R22 1 1
      124 SETTABLEKS                       R22 R21 K7 ["fullName"]
      126 SETTABLEKS                       R19 R21 K8 ["contentId"]
      128 LOADK                            R22 K22 ["CageMeshId"]
      129 SETTABLEKS                       R22 R21 K9 ["fieldName"]
      131 SETTABLEKS                       R20 R21 K10 ["context"]
      133 GETUPVAL                         R22 4
      134 MOVE                             R23 R13
      135 LOADK                            R24 K22 ["CageMeshId"]
      136 MOVE                             R25 R1
      137 CALL                             R22 3 2
      138 JUMPIF                           R22 ; [+3]
      139 LOADB                            R17 0
      140 MOVE                             R18 R21
      141 JUMP                             ; [+4]
      142 SETTABLEKS                       R23 R21 K13 ["editableMesh"]
      144 LOADB                            R17 1
      145 MOVE                             R18 R21
      146 MOVE                             R14 R17
      147 MOVE                             R16 R18
      148 JUMPIF                           R14 ; [+17]
      149 GETUPVAL                         R17 1
      150 CALL                             R17 0 1
      151 JUMPIFNOT                        R17 ; [+3]
      152 LOADB                            R17 0
      153 MOVE                             R18 R15
      154 RETURN                           R17 2
      155 LOADB                            R17 0
      156 NEWTABLE                         R18 0 1
      158 LOADK                            R20 K14 ["Failed to load "]
      159 GETTABLEKS                       R21 R9 K6 ["Name"]
      161 LOADK                            R22 K24 ["'s WrapTarget's cage mesh data"]
      162 CONCAT                           R19 R20 R22
      163 SETLIST                          R18 R19 1 [1]
      165 RETURN                           R17 2
      166 GETUPVAL                         R18 5
      167 MOVE                             R19 R9
      168 MOVE                             R20 R1
      169 CALL                             R18 2 1
      170 GETUPVAL                         R19 5
      171 MOVE                             R20 R9
      172 MOVE                             R21 R1
      173 LOADB                            R22 1
      174 CALL                             R19 3 1
      175 DIV                              R17 R18 R19
      176 DUPTABLE                         R20 K31 [{"renderMesh", "outerCage", "renderMeshTransform", "outerCageLocalTransform", "scale", "name"}]
      177 GETTABLEKS                       R21 R12 K13 ["editableMesh"]
      179 SETTABLEKS                       R21 R20 K25 ["renderMesh"]
      181 GETTABLEKS                       R21 R16 K13 ["editableMesh"]
      183 SETTABLEKS                       R21 R20 K26 ["outerCage"]
      185 GETTABLEKS                       R22 R9 K6 ["Name"]
      187 GETTABLE                         R21 R3 R22
      188 SETTABLEKS                       R21 R20 K27 ["renderMeshTransform"]
      190 GETTABLEKS                       R21 R13 K32 ["CageOrigin"]
      192 SETTABLEKS                       R21 R20 K28 ["outerCageLocalTransform"]
      194 SETTABLEKS                       R17 R20 K29 ["scale"]
      196 GETTABLEKS                       R21 R9 K6 ["Name"]
      198 SETTABLEKS                       R21 R20 K30 ["name"]
      200 FASTCALL2                        TABLE_INSERT R4 R20 ; [+4]
      202 MOVE                             R19 R4
      203 GETIMPORT                        R18 K35 [table.insert]
      205 CALL                             R18 2 0
      206 FORGLOOP                         R5 2 ; [-193]
      208 GETUPVAL                         R5 6
      209 NEWCLOSURE                       R6 P0
      210 CAPTURE                          UPVAL U7
      211 CAPTURE                          VAL R4
      212 MOVE                             R7 R1
      213 CALL                             R5 2 3
      214 GETUPVAL                         R9 8
      215 GETTABLEKS                       R8 R9 K36 ["recordScriptTime"]
      217 GETIMPORT                        R10 K38 [script]
      219 GETTABLEKS                       R9 R10 K6 ["Name"]
      221 MOVE                             R10 R2
      222 MOVE                             R11 R1
      223 CALL                             R8 3 0
      224 JUMPIF                           R5 ; [+29]
      225 GETTABLEKS                       R8 R1 K39 ["isServer"]
      227 JUMPIFEQKNIL                     R8 ; [+8]
      229 GETTABLEKS                       R8 R1 K39 ["isServer"]
      231 JUMPIFNOT                        R8 ; [+4]
      232 GETIMPORT                        R8 K41 [error]
      234 LOADK                            R9 K42 ["Failed to execute body max cage distance check. Make sure all render meshes and their WrapTarget cage meshes exist, and try again."]
      235 CALL                             R8 1 0
      236 GETUPVAL                         R9 8
      237 GETTABLEKS                       R8 R9 K43 ["reportFailure"]
      239 GETUPVAL                         R11 8
      240 GETTABLEKS                       R10 R11 K44 ["ErrorType"]
      242 GETTABLEKS                       R9 R10 K45 ["validateBodyPartCage_FailedToExecute"]
      244 LOADNIL                          R10
      245 MOVE                             R11 R1
      246 CALL                             R8 3 0
      247 LOADB                            R8 0
      248 NEWTABLE                         R9 0 1
      250 LOADK                            R10 K42 ["Failed to execute body max cage distance check. Make sure all render meshes and their WrapTarget cage meshes exist, and try again."]
      251 SETLIST                          R9 R10 1 [1]
      253 RETURN                           R8 2
      254 GETUPVAL                         R9 9
      255 GETTABLEKS                       R8 R9 K46 ["asNumber"]
      257 CALL                             R8 0 1
      258 JUMPIFNOTLT                      R8 R6 ; [+35]
      260 GETUPVAL                         R9 8
      261 GETTABLEKS                       R8 R9 K43 ["reportFailure"]
      263 GETUPVAL                         R11 8
      264 GETTABLEKS                       R10 R11 K44 ["ErrorType"]
      266 GETTABLEKS                       R9 R10 K47 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      268 LOADNIL                          R10
      269 MOVE                             R11 R1
      270 CALL                             R8 3 0
      271 GETIMPORT                        R8 K50 [string.format]
      273 LOADK                            R9 K51 ["A vertex was found on the %s's cage mesh that is %.2f studs away from the closest render mesh. %s studs is the maximum. Make the cage mesh more closely match the shape and size of the render mesh."]
      274 MOVE                             R10 R7
      275 MOVE                             R11 R6
      276 GETUPVAL                         R13 9
      277 GETTABLEKS                       R12 R13 K52 ["asString"]
      279 CALL                             R12 0 -1
      280 CALL                             R8 -1 1
      281 GETUPVAL                         R9 10
      282 CALL                             R9 0 1
      283 JUMPIFNOT                        R9 ; [+3]
      284 MOVE                             R9 R8
      285 LOADK                            R10 K53 ["[Read more](https://create.roblox.com/docs/art/validation-errors#bodyCageMaxSize)"]
      286 CONCAT                           R8 R9 R10
      287 LOADB                            R9 0
      288 NEWTABLE                         R10 0 1
      290 MOVE                             R11 R8
      291 SETLIST                          R10 R11 1 [1]
      293 RETURN                           R9 2
      294 LOADB                            R8 1
      295 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["UGCValidationService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R0 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Constants"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K11 ["util"]
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R4 K12 ["Types"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K8 [require]
       32 GETTABLEKS                       R7 R4 K13 ["pcallDeferred"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K8 [require]
       37 GETTABLEKS                       R8 R4 K14 ["getEditableMeshFromContext"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K8 [require]
       42 GETTABLEKS                       R9 R4 K15 ["FailureReasonsAccumulator"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K8 [require]
       47 GETTABLEKS                       R10 R4 K16 ["getExpectedPartSize"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K8 [require]
       52 GETTABLEKS                       R11 R4 K17 ["getMeshInfo"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R12 R4 K18 ["AssetCalculator"]
       59 CALL                             R11 1 1
       60 GETTABLEKS                       R12 R0 K19 ["flags"]
       62 GETIMPORT                        R13 K8 [require]
       64 GETTABLEKS                       R14 R12 K20 ["GetFStringUGCValidationMaxCageDistance"]
       66 CALL                             R13 1 1
       67 GETIMPORT                        R14 K8 [require]
       69 GETTABLEKS                       R16 R0 K19 ["flags"]
       71 GETTABLEKS                       R15 R16 K21 ["getFFlagUGCValidationConsolidateGetMeshInfos"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K8 [require]
       76 GETTABLEKS                       R17 R0 K19 ["flags"]
       78 GETTABLEKS                       R16 R17 K22 ["getFFlagUGCValidationHyperlinksInCageQuality"]
       80 CALL                             R15 1 1
       81 NEWTABLE                         R16 2 0
       83 DUPCLOSURE                       R17 K23 [PROTO_0]
       84 CAPTURE                          VAL R7
       85 DUPCLOSURE                       R18 K24 [PROTO_2]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R13
       95 DUPCLOSURE                       R19 K25 [PROTO_3]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R19 R16 K26 ["validateSingleBodyPart"]
      102 DUPCLOSURE                       R19 K27 [PROTO_5]
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R1
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R15
      114 SETTABLEKS                       R19 R16 K28 ["validateFullBody"]
      116 RETURN                           R16 1
