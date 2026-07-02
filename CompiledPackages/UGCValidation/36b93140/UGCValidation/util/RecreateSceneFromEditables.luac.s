PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETIMPORT                        R6 K2 [Content.fromObject]
        3 GETTABLEKS                       R7 R2 K3 ["editable"]
        5 CALL                             R6 1 -1
        6 NAMECALL                         R4 R4 K4 ["CreateMeshPartAsync"]
        8 CALL                             R4 -1 1
        9 LOADK                            R6 K5 ["%*_%*"]
       10 MOVE                             R8 R0
       11 MOVE                             R9 R3
       12 NAMECALL                         R6 R6 K6 ["format"]
       14 CALL                             R6 3 1
       15 MOVE                             R5 R6
       16 SETTABLEKS                       R5 R4 K7 ["Name"]
       18 GETTABLEKS                       R6 R4 K8 ["Size"]
       20 GETTABLEKS                       R7 R1 K9 ["scale"]
       22 MUL                              R5 R6 R7
       23 SETTABLEKS                       R5 R4 K8 ["Size"]
       25 GETIMPORT                        R6 K12 [CFrame.new]
       27 GETTABLEKS                       R8 R2 K13 ["origin"]
       29 GETTABLEKS                       R8 R8 K14 ["Position"]
       31 GETTABLEKS                       R9 R1 K9 ["scale"]
       33 MUL                              R7 R8 R9
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R2 K13 ["origin"]
       37 GETTABLEKS                       R7 R7 K15 ["Rotation"]
       39 MUL                              R5 R6 R7
       40 GETTABLEKS                       R7 R0 K10 ["CFrame"]
       42 MUL                              R6 R7 R5
       43 SETTABLEKS                       R6 R4 K10 ["CFrame"]
       45 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [Content.fromObject]
        3 GETTABLEKS                       R6 R1 K3 ["editable"]
        5 CALL                             R5 1 -1
        6 NAMECALL                         R3 R3 K4 ["CreateMeshPartAsync"]
        8 CALL                             R3 -1 1
        9 GETUPVAL                         R4 1
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+91]
       12 JUMPIFNOT                        R2 ; [+16]
       13 GETTABLEKS                       R4 R2 K5 ["isPBR"]
       15 JUMPIF                           R4 ; [+13]
       16 GETTABLEKS                       R4 R2 K6 ["Texture"]
       18 JUMPIFNOT                        R4 ; [+10]
       19 GETIMPORT                        R4 K2 [Content.fromObject]
       21 GETTABLEKS                       R5 R2 K6 ["Texture"]
       23 GETTABLEKS                       R5 R5 K3 ["editable"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K7 ["TextureContent"]
       28 JUMP                             ; [+82]
       29 JUMPIFNOT                        R2 ; [+81]
       30 GETTABLEKS                       R4 R2 K5 ["isPBR"]
       32 JUMPIFNOT                        R4 ; [+78]
       33 GETIMPORT                        R4 K10 [Instance.new]
       35 LOADK                            R5 K11 ["SurfaceAppearance"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K12 ["ColorMap"]
       39 JUMPIFNOT                        R5 ; [+9]
       40 GETIMPORT                        R5 K2 [Content.fromObject]
       42 GETTABLEKS                       R6 R2 K12 ["ColorMap"]
       44 GETTABLEKS                       R6 R6 K3 ["editable"]
       46 CALL                             R5 1 1
       47 SETTABLEKS                       R5 R4 K13 ["ColorMapContent"]
       49 GETTABLEKS                       R5 R2 K14 ["MetalnessMap"]
       51 JUMPIFNOT                        R5 ; [+9]
       52 GETIMPORT                        R5 K2 [Content.fromObject]
       54 GETTABLEKS                       R6 R2 K14 ["MetalnessMap"]
       56 GETTABLEKS                       R6 R6 K3 ["editable"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K15 ["MetalnessMapContent"]
       61 GETTABLEKS                       R5 R2 K16 ["NormalMap"]
       63 JUMPIFNOT                        R5 ; [+9]
       64 GETIMPORT                        R5 K2 [Content.fromObject]
       66 GETTABLEKS                       R6 R2 K16 ["NormalMap"]
       68 GETTABLEKS                       R6 R6 K3 ["editable"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K17 ["NormalMapContent"]
       73 GETTABLEKS                       R5 R2 K18 ["RoughnessMap"]
       75 JUMPIFNOT                        R5 ; [+9]
       76 GETIMPORT                        R5 K2 [Content.fromObject]
       78 GETTABLEKS                       R6 R2 K18 ["RoughnessMap"]
       80 GETTABLEKS                       R6 R6 K3 ["editable"]
       82 CALL                             R5 1 1
       83 SETTABLEKS                       R5 R4 K19 ["RoughnessMapContent"]
       85 GETUPVAL                         R5 2
       86 CALL                             R5 0 1
       87 JUMPIFNOT                        R5 ; [+12]
       88 GETTABLEKS                       R5 R2 K20 ["EmissiveMask"]
       90 JUMPIFNOT                        R5 ; [+9]
       91 GETIMPORT                        R5 K2 [Content.fromObject]
       93 GETTABLEKS                       R6 R2 K20 ["EmissiveMask"]
       95 GETTABLEKS                       R6 R6 K3 ["editable"]
       97 CALL                             R5 1 1
       98 SETTABLEKS                       R5 R4 K21 ["EmissiveMaskContent"]
      100 SETTABLEKS                       R3 R4 K22 ["Parent"]
      102 JUMP                             ; [+8]
      103 JUMPIFNOT                        R2 ; [+7]
      104 GETIMPORT                        R4 K2 [Content.fromObject]
      106 GETTABLEKS                       R5 R2 K3 ["editable"]
      108 CALL                             R4 1 1
      109 SETTABLEKS                       R4 R3 K7 ["TextureContent"]
      111 GETTABLEKS                       R4 R0 K23 ["Name"]
      113 SETTABLEKS                       R4 R3 K23 ["Name"]
      115 GETTABLEKS                       R4 R0 K24 ["Size"]
      117 SETTABLEKS                       R4 R3 K24 ["Size"]
      119 GETTABLEKS                       R4 R0 K25 ["CFrame"]
      121 SETTABLEKS                       R4 R3 K25 ["CFrame"]
      123 NAMECALL                         R4 R0 K26 ["GetChildren"]
      125 CALL                             R4 1 3
      126 FORGPREP                         R4
      127 LOADK                            R11 K27 ["Attachment"]
      128 NAMECALL                         R9 R8 K28 ["IsA"]
      130 CALL                             R9 2 1
      131 JUMPIF                           R9 ; [+5]
      132 LOADK                            R11 K29 ["FaceControls"]
      133 NAMECALL                         R9 R8 K28 ["IsA"]
      135 CALL                             R9 2 1
      136 JUMPIFNOT                        R9 ; [+15]
      137 GETUPVAL                         R9 3
      138 GETTABLEKS                       R9 R9 K30 ["checkFlagEnabledForAllowHrd"]
      140 CALL                             R9 0 1
      141 JUMPIFNOT                        R9 ; [+5]
      142 LOADK                            R11 K31 ["Bone"]
      143 NAMECALL                         R9 R8 K28 ["IsA"]
      145 CALL                             R9 2 1
      146 JUMPIF                           R9 ; [+5]
      147 NAMECALL                         R9 R8 K32 ["Clone"]
      149 CALL                             R9 1 1
      150 SETTABLEKS                       R3 R9 K22 ["Parent"]
      152 FORGLOOP                         R4 2 ; [-26]
      154 GETUPVAL                         R4 3
      155 GETTABLEKS                       R4 R4 K30 ["checkFlagEnabledForAllowHrd"]
      157 CALL                             R4 0 1
      158 JUMPIFNOT                        R4 ; [+48]
      159 GETUPVAL                         R4 3
      160 GETTABLEKS                       R4 R4 K33 ["getAvatarBoneSchema"]
      162 GETTABLEKS                       R5 R0 K23 ["Name"]
      164 CALL                             R4 1 1
      165 GETUPVAL                         R5 3
      166 GETTABLEKS                       R5 R5 K34 ["getNameWhitelistOfClassInSchema"]
      168 MOVE                             R6 R4
      169 LOADK                            R7 K27 ["Attachment"]
      170 CALL                             R5 2 1
      171 MOVE                             R6 R5
      172 LOADNIL                          R7
      173 LOADNIL                          R8
      174 FORGPREP                         R6
      175 JUMPIFNOT                        R10 ; [+29]
      176 MOVE                             R13 R9
      177 NAMECALL                         R11 R3 K35 ["FindFirstChild"]
      179 CALL                             R11 2 1
      180 JUMPIFNOTEQKNIL                  R11 ; [+24]
      182 MOVE                             R13 R9
      183 LOADB                            R14 1
      184 NAMECALL                         R11 R0 K35 ["FindFirstChild"]
      186 CALL                             R11 3 1
      187 LOADNIL                          R12
      188 JUMPIFEQKNIL                     R11 ; [+4]
      190 GETTABLEKS                       R12 R11 K36 ["WorldCFrame"]
      192 JUMP                             ; [+2]
      193 GETTABLEKS                       R12 R3 K25 ["CFrame"]
      195 GETIMPORT                        R13 K10 [Instance.new]
      197 LOADK                            R14 K27 ["Attachment"]
      198 CALL                             R13 1 1
      199 SETTABLEKS                       R9 R13 K23 ["Name"]
      201 SETTABLEKS                       R3 R13 K22 ["Parent"]
      203 SETTABLEKS                       R12 R13 K36 ["WorldCFrame"]
      205 FORGLOOP                         R6 2 ; [-31]
      207 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K4 ["rootInstance"]
        6 NAMECALL                         R2 R2 K5 ["GetDescendants"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R5 R0 K4 ["rootInstance"]
       11 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K8 [table.insert]
       16 CALL                             R3 2 0
       17 MOVE                             R3 R2
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 LOADK                            R10 K9 ["MeshPart"]
       22 NAMECALL                         R8 R7 K10 ["IsA"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+64]
       26 GETTABLEKS                       R8 R7 K11 ["Name"]
       28 GETTABLEKS                       R10 R0 K12 ["renderMeshesData"]
       30 GETTABLE                         R9 R10 R8
       31 JUMPIF                           R9 ; [+4]
       32 GETIMPORT                        R10 K14 [error]
       34 LOADK                            R11 K15 ["Missing editable data"]
       35 CALL                             R10 1 0
       36 GETTABLEKS                       R11 R0 K16 ["meshTextures"]
       38 GETTABLE                         R10 R11 R8
       39 GETUPVAL                         R11 0
       40 MOVE                             R12 R7
       41 MOVE                             R13 R9
       42 MOVE                             R14 R10
       43 CALL                             R11 3 1
       44 SETTABLEKS                       R1 R11 K17 ["Parent"]
       46 GETTABLEKS                       R13 R0 K18 ["outerCagesData"]
       48 GETTABLE                         R12 R13 R8
       49 JUMPIFNOT                        R12 ; [+8]
       50 GETUPVAL                         R13 1
       51 MOVE                             R14 R11
       52 MOVE                             R15 R9
       53 MOVE                             R16 R12
       54 LOADK                            R17 K19 ["OuterCage"]
       55 CALL                             R13 4 1
       56 SETTABLEKS                       R1 R13 K17 ["Parent"]
       58 GETTABLEKS                       R14 R0 K20 ["innerCagesData"]
       60 GETTABLE                         R13 R14 R8
       61 JUMPIFNOT                        R13 ; [+8]
       62 GETUPVAL                         R14 1
       63 MOVE                             R15 R11
       64 MOVE                             R16 R9
       65 MOVE                             R17 R13
       66 LOADK                            R18 K21 ["InnerCage"]
       67 CALL                             R14 4 1
       68 SETTABLEKS                       R1 R14 K17 ["Parent"]
       70 GETUPVAL                         R14 2
       71 CALL                             R14 0 1
       72 JUMPIFNOT                        R14 ; [+17]
       73 GETTABLEKS                       R14 R0 K22 ["uploadCategory"]
       75 GETUPVAL                         R15 3
       76 GETTABLEKS                       R15 R15 K23 ["UploadCategory"]
       78 GETTABLEKS                       R15 R15 K24 ["FULL_BODY"]
       80 JUMPIFNOTEQ                      R14 R15 ; [+9]
       82 LOADK                            R15 K25 ["%*_Geo"]
       83 MOVE                             R17 R8
       84 NAMECALL                         R15 R15 K26 ["format"]
       86 CALL                             R15 2 1
       87 MOVE                             R14 R15
       88 SETTABLEKS                       R14 R11 K11 ["Name"]
       90 FORGLOOP                         R3 2 ; [-70]
       92 GETIMPORT                        R5 K28 [CFrame.new]
       94 CALL                             R5 0 -1
       95 NAMECALL                         R3 R1 K29 ["PivotTo"]
       97 CALL                             R3 -1 0
       98 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["AssetService"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K11 ["flags"]
       24 GETTABLEKS                       R4 R4 K12 ["getFFlagUGCValidationAddPBRToSharedData"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K13 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K14 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K5 ["util"]
       38 GETTABLEKS                       R6 R6 K15 ["R15plusUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K11 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidationAddGeometryToExports"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R0 K11 ["flags"]
       52 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidateAllowEmissives"]
       54 CALL                             R7 1 1
       55 NEWTABLE                         R8 1 0
       57 DUPCLOSURE                       R9 K18 [PROTO_0]
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R10 K19 [PROTO_1]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R11 K20 [PROTO_2]
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R11 R8 K21 ["createModelForGltfExport"]
       71 RETURN                           R8 1
