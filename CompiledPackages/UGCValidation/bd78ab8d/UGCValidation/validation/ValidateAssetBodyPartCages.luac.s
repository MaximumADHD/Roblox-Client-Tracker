PROTO_0:
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

PROTO_1:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R0
        5 GETUPVAL                         R9 1
        6 GETTABLEKS                       R8 R9 K0 ["MESH_CONTENT_TYPE"]
        8 GETTABLEKS                       R7 R8 K1 ["RENDER_MESH"]
       10 MOVE                             R8 R1
       11 CALL                             R5 3 3
       12 MOVE                             R2 R5
       13 MOVE                             R3 R6
       14 MOVE                             R4 R7
       15 JUMPIF                           R2 ; [+4]
       16 LOADB                            R5 0
       17 MOVE                             R6 R3
       18 CLOSEUPVALS                      R4
       19 RETURN                           R5 2
       20 LOADK                            R7 K2 ["WrapTarget"]
       21 NAMECALL                         R5 R0 K3 ["FindFirstChildWhichIsA"]
       23 CALL                             R5 2 1
       24 LOADK                            R9 K4 ["Missing WrapTarget child for "]
       25 GETTABLEKS                       R10 R0 K5 ["Name"]
       27 CONCAT                           R8 R9 R10
       28 FASTCALL2                        ASSERT R5 R8 ; [+4]
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K7 [assert]
       33 CALL                             R6 2 0
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 GETUPVAL                         R9 0
       38 MOVE                             R10 R5
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R12 R13 K0 ["MESH_CONTENT_TYPE"]
       42 GETTABLEKS                       R11 R12 K8 ["OUTER_CAGE"]
       44 MOVE                             R12 R1
       45 CALL                             R9 3 3
       46 MOVE                             R6 R9
       47 MOVE                             R7 R10
       48 MOVE                             R8 R11
       49 JUMPIF                           R6 ; [+4]
       50 LOADB                            R9 0
       51 MOVE                             R10 R7
       52 CLOSEUPVALS                      R4
       53 RETURN                           R9 2
       54 GETUPVAL                         R10 2
       55 MOVE                             R11 R0
       56 MOVE                             R12 R1
       57 CALL                             R10 2 1
       58 GETUPVAL                         R11 2
       59 MOVE                             R12 R0
       60 MOVE                             R13 R1
       61 LOADB                            R14 1
       62 CALL                             R11 3 1
       63 DIV                              R9 R10 R11
       64 GETUPVAL                         R10 3
       65 NEWCLOSURE                       R11 P0
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          REF R8
       68 CAPTURE                          REF R4
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R9
       71 MOVE                             R12 R1
       72 CALL                             R10 2 2
       73 JUMPIF                           R10 ; [+37]
       74 LOADK                            R13 K9 ["Failed to execute body part max cage distance check. Make sure %*'s render mesh and its WrapTarget's cage mesh exist, and try again."]
       75 GETTABLEKS                       R15 R0 K5 ["Name"]
       77 NAMECALL                         R13 R13 K10 ["format"]
       79 CALL                             R13 2 1
       80 MOVE                             R12 R13
       81 GETTABLEKS                       R13 R1 K11 ["isServer"]
       83 JUMPIFEQKNIL                     R13 ; [+8]
       85 GETTABLEKS                       R13 R1 K11 ["isServer"]
       87 JUMPIFNOT                        R13 ; [+4]
       88 GETIMPORT                        R13 K13 [error]
       90 MOVE                             R14 R12
       91 CALL                             R13 1 0
       92 GETUPVAL                         R14 5
       93 GETTABLEKS                       R13 R14 K14 ["reportFailure"]
       95 GETUPVAL                         R16 5
       96 GETTABLEKS                       R15 R16 K15 ["ErrorType"]
       98 GETTABLEKS                       R14 R15 K16 ["validateBodyPartCage_FailedToExecute"]
      100 LOADNIL                          R15
      101 MOVE                             R16 R1
      102 CALL                             R13 3 0
      103 LOADB                            R13 0
      104 NEWTABLE                         R14 0 1
      106 MOVE                             R15 R12
      107 SETLIST                          R14 R15 1 [1]
      109 CLOSEUPVALS                      R4
      110 RETURN                           R13 2
      111 GETUPVAL                         R13 6
      112 GETTABLEKS                       R12 R13 K17 ["asNumber"]
      114 CALL                             R12 0 1
      115 JUMPIFNOTLT                      R12 R11 ; [+34]
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R12 R13 K14 ["reportFailure"]
      120 GETUPVAL                         R15 5
      121 GETTABLEKS                       R14 R15 K15 ["ErrorType"]
      123 GETTABLEKS                       R13 R14 K18 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      125 LOADNIL                          R14
      126 MOVE                             R15 R1
      127 CALL                             R12 3 0
      128 LOADB                            R12 0
      129 NEWTABLE                         R13 0 1
      131 GETIMPORT                        R14 K20 [string.format]
      133 LOADK                            R15 K21 ["Cage mesh verts referenced in %s.%s.CageMeshId were found that are %.2f studs outside the %s render mesh. %s studs is the maximum. Reduce the size of your cage mesh."]
      134 GETTABLEKS                       R16 R0 K5 ["Name"]
      136 GETTABLEKS                       R17 R5 K5 ["Name"]
      138 MOVE                             R18 R11
      139 GETTABLEKS                       R19 R0 K5 ["Name"]
      141 GETUPVAL                         R21 6
      142 GETTABLEKS                       R20 R21 K22 ["asString"]
      144 CALL                             R20 0 -1
      145 CALL                             R14 -1 -1
      146 SETLIST                          R13 R14 -1 [1]
      148 CLOSEUPVALS                      R4
      149 RETURN                           R12 2
      150 LOADB                            R12 1
      151 CLOSEUPVALS                      R4
      152 RETURN                           R12 1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CalculateBodyMaxCageDistance"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
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
       18 MOVE                             R14 R9
       19 GETUPVAL                         R17 2
       20 GETTABLEKS                       R16 R17 K3 ["MESH_CONTENT_TYPE"]
       22 GETTABLEKS                       R15 R16 K4 ["RENDER_MESH"]
       24 MOVE                             R16 R1
       25 CALL                             R13 3 3
       26 MOVE                             R10 R13
       27 MOVE                             R11 R14
       28 MOVE                             R12 R15
       29 JUMPIF                           R10 ; [+3]
       30 LOADB                            R13 0
       31 MOVE                             R14 R11
       32 RETURN                           R13 2
       33 LOADK                            R15 K5 ["WrapTarget"]
       34 NAMECALL                         R13 R9 K6 ["FindFirstChildWhichIsA"]
       36 CALL                             R13 2 1
       37 LOADK                            R17 K7 ["Missing WrapTarget child for "]
       38 GETTABLEKS                       R18 R9 K8 ["Name"]
       40 CONCAT                           R16 R17 R18
       41 FASTCALL2                        ASSERT R13 R16 ; [+4]
       43 MOVE                             R15 R13
       44 GETIMPORT                        R14 K10 [assert]
       46 CALL                             R14 2 0
       47 LOADNIL                          R14
       48 LOADNIL                          R15
       49 LOADNIL                          R16
       50 GETUPVAL                         R17 1
       51 MOVE                             R18 R13
       52 GETUPVAL                         R21 2
       53 GETTABLEKS                       R20 R21 K3 ["MESH_CONTENT_TYPE"]
       55 GETTABLEKS                       R19 R20 K11 ["OUTER_CAGE"]
       57 MOVE                             R20 R1
       58 CALL                             R17 3 3
       59 MOVE                             R14 R17
       60 MOVE                             R15 R18
       61 MOVE                             R16 R19
       62 JUMPIF                           R14 ; [+3]
       63 LOADB                            R17 0
       64 MOVE                             R18 R15
       65 RETURN                           R17 2
       66 GETUPVAL                         R18 3
       67 MOVE                             R19 R9
       68 MOVE                             R20 R1
       69 CALL                             R18 2 1
       70 GETUPVAL                         R19 3
       71 MOVE                             R20 R9
       72 MOVE                             R21 R1
       73 LOADB                            R22 1
       74 CALL                             R19 3 1
       75 DIV                              R17 R18 R19
       76 DUPTABLE                         R20 K18 [{"renderMesh", "outerCage", "renderMeshTransform", "outerCageLocalTransform", "scale", "name"}]
       77 GETTABLEKS                       R21 R12 K19 ["editableMesh"]
       79 SETTABLEKS                       R21 R20 K12 ["renderMesh"]
       81 GETTABLEKS                       R21 R16 K19 ["editableMesh"]
       83 SETTABLEKS                       R21 R20 K13 ["outerCage"]
       85 GETTABLEKS                       R22 R9 K8 ["Name"]
       87 GETTABLE                         R21 R3 R22
       88 SETTABLEKS                       R21 R20 K14 ["renderMeshTransform"]
       90 GETTABLEKS                       R21 R13 K20 ["CageOrigin"]
       92 SETTABLEKS                       R21 R20 K15 ["outerCageLocalTransform"]
       94 SETTABLEKS                       R17 R20 K16 ["scale"]
       96 GETTABLEKS                       R21 R9 K8 ["Name"]
       98 SETTABLEKS                       R21 R20 K17 ["name"]
      100 FASTCALL2                        TABLE_INSERT R4 R20 ; [+4]
      102 MOVE                             R19 R4
      103 GETIMPORT                        R18 K23 [table.insert]
      105 CALL                             R18 2 0
      106 FORGLOOP                         R5 2 ; [-93]
      108 GETUPVAL                         R5 4
      109 NEWCLOSURE                       R6 P0
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R4
      112 MOVE                             R7 R1
      113 CALL                             R5 2 3
      114 GETUPVAL                         R9 6
      115 GETTABLEKS                       R8 R9 K24 ["recordScriptTime"]
      117 GETIMPORT                        R10 K26 [script]
      119 GETTABLEKS                       R9 R10 K8 ["Name"]
      121 MOVE                             R10 R2
      122 MOVE                             R11 R1
      123 CALL                             R8 3 0
      124 JUMPIF                           R5 ; [+29]
      125 GETTABLEKS                       R8 R1 K27 ["isServer"]
      127 JUMPIFEQKNIL                     R8 ; [+8]
      129 GETTABLEKS                       R8 R1 K27 ["isServer"]
      131 JUMPIFNOT                        R8 ; [+4]
      132 GETIMPORT                        R8 K29 [error]
      134 LOADK                            R9 K30 ["Failed to execute body max cage distance check. Make sure all render meshes and their WrapTarget cage meshes exist, and try again."]
      135 CALL                             R8 1 0
      136 GETUPVAL                         R9 6
      137 GETTABLEKS                       R8 R9 K31 ["reportFailure"]
      139 GETUPVAL                         R11 6
      140 GETTABLEKS                       R10 R11 K32 ["ErrorType"]
      142 GETTABLEKS                       R9 R10 K33 ["validateBodyPartCage_FailedToExecute"]
      144 LOADNIL                          R10
      145 MOVE                             R11 R1
      146 CALL                             R8 3 0
      147 LOADB                            R8 0
      148 NEWTABLE                         R9 0 1
      150 LOADK                            R10 K30 ["Failed to execute body max cage distance check. Make sure all render meshes and their WrapTarget cage meshes exist, and try again."]
      151 SETLIST                          R9 R10 1 [1]
      153 RETURN                           R8 2
      154 GETUPVAL                         R9 7
      155 GETTABLEKS                       R8 R9 K34 ["asNumber"]
      157 CALL                             R8 0 1
      158 JUMPIFNOTLT                      R8 R6 ; [+32]
      160 GETUPVAL                         R9 6
      161 GETTABLEKS                       R8 R9 K31 ["reportFailure"]
      163 GETUPVAL                         R11 6
      164 GETTABLEKS                       R10 R11 K32 ["ErrorType"]
      166 GETTABLEKS                       R9 R10 K35 ["validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh"]
      168 LOADNIL                          R10
      169 MOVE                             R11 R1
      170 CALL                             R8 3 0
      171 GETIMPORT                        R8 K38 [string.format]
      173 LOADK                            R9 K39 ["A vertex was found on the %s's cage mesh that is %.2f studs away from the closest render mesh. %s studs is the maximum. Make the cage mesh more closely match the shape and size of the render mesh."]
      174 MOVE                             R10 R7
      175 MOVE                             R11 R6
      176 GETUPVAL                         R13 7
      177 GETTABLEKS                       R12 R13 K40 ["asString"]
      179 CALL                             R12 0 -1
      180 CALL                             R8 -1 1
      181 MOVE                             R9 R8
      182 LOADK                            R10 K41 ["[Read more](https://create.roblox.com/docs/art/validation-errors#bodyCageMaxSize)"]
      183 CONCAT                           R8 R9 R10
      184 LOADB                            R9 0
      185 NEWTABLE                         R10 0 1
      187 MOVE                             R11 R8
      188 SETLIST                          R10 R11 1 [1]
      190 RETURN                           R9 2
      191 LOADB                            R8 1
      192 RETURN                           R8 1

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
       37 GETTABLEKS                       R8 R4 K14 ["FailureReasonsAccumulator"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K8 [require]
       42 GETTABLEKS                       R9 R4 K15 ["getExpectedPartSize"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K8 [require]
       47 GETTABLEKS                       R10 R4 K16 ["getMeshInfo"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K8 [require]
       52 GETTABLEKS                       R11 R4 K17 ["AssetCalculator"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R0 K18 ["flags"]
       57 GETIMPORT                        R12 K8 [require]
       59 GETTABLEKS                       R13 R11 K19 ["GetFStringUGCValidationMaxCageDistance"]
       61 CALL                             R12 1 1
       62 NEWTABLE                         R13 2 0
       64 DUPCLOSURE                       R14 K20 [PROTO_1]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R12
       72 DUPCLOSURE                       R15 K21 [PROTO_2]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R15 R13 K22 ["validateSingleBodyPart"]
       79 DUPCLOSURE                       R15 K23 [PROTO_4]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R12
       88 SETTABLEKS                       R15 R13 K24 ["validateFullBody"]
       90 RETURN                           R13 1
