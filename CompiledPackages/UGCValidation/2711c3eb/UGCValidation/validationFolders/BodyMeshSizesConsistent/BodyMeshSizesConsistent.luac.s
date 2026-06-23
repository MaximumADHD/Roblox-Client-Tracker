PROTO_0:
        0 DUPTABLE                         R2 K4 [{"fullName", "fieldName", "contentId", "context"}]
        1 NAMECALL                         R3 R0 K5 ["GetFullName"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R3 R2 K0 ["fullName"]
        6 LOADK                            R3 K6 ["MeshId"]
        7 SETTABLEKS                       R3 R2 K1 ["fieldName"]
        9 GETTABLEKS                       R3 R0 K6 ["MeshId"]
       11 SETTABLEKS                       R3 R2 K2 ["contentId"]
       13 GETTABLEKS                       R3 R0 K7 ["Name"]
       15 SETTABLEKS                       R3 R2 K3 ["context"]
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R0
       19 LOADK                            R5 K6 ["MeshId"]
       20 MOVE                             R6 R1
       21 CALL                             R3 3 2
       22 JUMPIF                           R3 ; [+3]
       23 LOADB                            R5 0
       24 LOADNIL                          R6
       25 RETURN                           R5 2
       26 SETTABLEKS                       R4 R2 K8 ["editableMesh"]
       28 GETUPVAL                         R5 1
       29 MOVE                             R6 R2
       30 CALL                             R5 1 1
       31 LOADB                            R6 1
       32 MOVE                             R7 R5
       33 RETURN                           R6 2

PROTO_1:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R6 R6 K0 ["MESH_CONTENT_TYPE"]
        5 GETTABLEKS                       R6 R6 K1 ["RENDER_MESH"]
        7 MOVE                             R7 R2
        8 CALL                             R4 3 3
        9 JUMPIF                           R4 ; [+16]
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R9 R9 K2 ["Keys"]
       13 GETTABLEKS                       R9 R9 K3 ["BodyMesh_LoadFailed"]
       15 DUPTABLE                         R10 K5 [{"meshName"}]
       16 NAMECALL                         R11 R1 K6 ["GetFullName"]
       18 CALL                             R11 1 1
       19 SETTABLEKS                       R11 R10 K4 ["meshName"]
       21 MOVE                             R11 R1
       22 NAMECALL                         R7 R3 K7 ["fail"]
       24 CALL                             R7 4 0
       25 RETURN                           R0 0
       26 LOADK                            R9 K8 ["WrapTarget"]
       27 NAMECALL                         R7 R1 K9 ["FindFirstChildWhichIsA"]
       29 CALL                             R7 2 1
       30 JUMPIF                           R7 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R7
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R10 R10 K0 ["MESH_CONTENT_TYPE"]
       37 GETTABLEKS                       R10 R10 K10 ["OUTER_CAGE"]
       39 MOVE                             R11 R2
       40 CALL                             R8 3 3
       41 JUMPIF                           R8 ; [+16]
       42 GETUPVAL                         R13 2
       43 GETTABLEKS                       R13 R13 K2 ["Keys"]
       45 GETTABLEKS                       R13 R13 K3 ["BodyMesh_LoadFailed"]
       47 DUPTABLE                         R14 K5 [{"meshName"}]
       48 NAMECALL                         R15 R7 K6 ["GetFullName"]
       50 CALL                             R15 1 1
       51 SETTABLEKS                       R15 R14 K4 ["meshName"]
       53 MOVE                             R15 R1
       54 NAMECALL                         R11 R3 K7 ["fail"]
       56 CALL                             R11 4 0
       57 RETURN                           R0 0
       58 SETTABLEKS                       R0 R6 K11 ["scale"]
       60 SETTABLEKS                       R0 R10 K11 ["scale"]
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K12 ["RenderVsWrapMeshMaxDiff"]
       65 GETUPVAL                         R12 3
       66 MOVE                             R13 R6
       67 MOVE                             R14 R2
       68 CALL                             R12 2 4
       69 JUMPIF                           R12 ; [+8]
       70 LOADK                            R19 K13 ["Failed to read mesh: "]
       71 GETTABLEKS                       R20 R6 K14 ["fullName"]
       73 CONCAT                           R18 R19 R20
       74 NAMECALL                         R16 R3 K15 ["fetchError"]
       76 CALL                             R16 2 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R16 3
       79 MOVE                             R17 R10
       80 MOVE                             R18 R2
       81 CALL                             R16 2 4
       82 JUMPIF                           R16 ; [+8]
       83 LOADK                            R23 K13 ["Failed to read mesh: "]
       84 GETTABLEKS                       R24 R10 K14 ["fullName"]
       86 CONCAT                           R22 R23 R24
       87 NAMECALL                         R20 R3 K15 ["fetchError"]
       89 CALL                             R20 2 0
       90 RETURN                           R0 0
       91 SUB                              R20 R14 R18
       92 GETTABLEKS                       R20 R20 K16 ["Magnitude"]
       94 JUMPIFLT                         R11 R20 ; [+6]
       96 SUB                              R20 R15 R19
       97 GETTABLEKS                       R20 R20 K16 ["Magnitude"]
       99 JUMPIFNOTLT                      R11 R20 ; [+34]
      101 GETTABLEKS                       R21 R6 K14 ["fullName"]
      103 LOADK                            R22 K17 ["."]
      104 GETTABLEKS                       R23 R6 K18 ["fieldName"]
      106 CONCAT                           R20 R21 R23
      107 GETTABLEKS                       R22 R10 K14 ["fullName"]
      109 LOADK                            R23 K17 ["."]
      110 GETTABLEKS                       R24 R10 K18 ["fieldName"]
      112 CONCAT                           R21 R22 R24
      113 GETUPVAL                         R24 2
      114 GETTABLEKS                       R24 R24 K2 ["Keys"]
      116 GETTABLEKS                       R24 R24 K19 ["BodyMesh_SizeMismatch"]
      118 DUPTABLE                         R25 K23 [{"meshContext", "maxDiff", "otherMeshContext"}]
      119 SETTABLEKS                       R20 R25 K20 ["meshContext"]
      121 GETIMPORT                        R26 K26 [string.format]
      123 LOADK                            R27 K27 ["%.2f"]
      124 MOVE                             R28 R11
      125 CALL                             R26 2 1
      126 SETTABLEKS                       R26 R25 K21 ["maxDiff"]
      128 SETTABLEKS                       R21 R25 K22 ["otherMeshContext"]
      130 MOVE                             R26 R1
      131 NAMECALL                         R22 R3 K7 ["fail"]
      133 CALL                             R22 4 0
      134 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 2
        4 JUMPIFNOT                        R1 ; [+1]
        5 JUMPIF                           R2 ; [+17]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R5 R5 K0 ["Keys"]
       10 GETTABLEKS                       R5 R5 K1 ["BodyMesh_LoadFailed"]
       12 DUPTABLE                         R6 K3 [{"meshName"}]
       13 NAMECALL                         R7 R0 K4 ["GetFullName"]
       15 CALL                             R7 1 1
       16 SETTABLEKS                       R7 R6 K2 ["meshName"]
       18 MOVE                             R7 R0
       19 NAMECALL                         R3 R3 K5 ["fail"]
       21 CALL                             R3 4 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 4
       24 MOVE                             R5 R0
       25 GETUPVAL                         R6 1
       26 CALL                             R4 2 1
       27 DIV                              R3 R4 R2
       28 GETUPVAL                         R4 5
       29 MOVE                             R5 R3
       30 MOVE                             R6 R0
       31 GETUPVAL                         R7 1
       32 GETUPVAL                         R8 2
       33 CALL                             R4 4 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 GETTABLEKS                       R4 R1 K3 ["consumerConfig"]
        8 GETTABLEKS                       R4 R4 K4 ["consumerEnv"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["ConsumerEnv"]
       13 GETTABLEKS                       R6 R6 K6 ["Backend"]
       15 JUMPIFEQ                         R4 R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 NEWTABLE                         R6 0 0
       21 GETTABLEKS                       R7 R1 K7 ["renderMeshesData"]
       23 JUMPIFNOT                        R7 ; [+38]
       24 NAMECALL                         R7 R2 K8 ["GetDescendants"]
       26 CALL                             R7 1 1
       27 FASTCALL2                        TABLE_INSERT R7 R2 ; [+5]
       29 MOVE                             R9 R7
       30 MOVE                             R10 R2
       31 GETIMPORT                        R8 K11 [table.insert]
       33 CALL                             R8 2 0
       34 MOVE                             R8 R7
       35 LOADNIL                          R9
       36 LOADNIL                          R10
       37 FORGPREP                         R8
       38 GETTABLEKS                       R14 R1 K7 ["renderMeshesData"]
       40 GETTABLEKS                       R15 R12 K12 ["Name"]
       42 GETTABLE                         R13 R14 R15
       43 JUMPIFNOT                        R13 ; [+16]
       44 GETTABLEKS                       R14 R13 K13 ["editable"]
       46 JUMPIFNOT                        R14 ; [+13]
       47 DUPTABLE                         R14 K15 [{"MeshId"}]
       48 DUPTABLE                         R15 K18 [{"instance", "created"}]
       49 GETTABLEKS                       R16 R13 K13 ["editable"]
       51 SETTABLEKS                       R16 R15 K16 ["instance"]
       53 GETTABLEKS                       R16 R13 K19 ["createdInValidation"]
       55 SETTABLEKS                       R16 R15 K17 ["created"]
       57 SETTABLEKS                       R15 R14 K14 ["MeshId"]
       59 SETTABLE                         R14 R6 R12
       60 FORGLOOP                         R8 2 ; [-23]
       62 GETTABLEKS                       R7 R1 K20 ["outerCagesData"]
       64 JUMPIFNOT                        R7 ; [+48]
       65 NAMECALL                         R7 R2 K8 ["GetDescendants"]
       67 CALL                             R7 1 1
       68 FASTCALL2                        TABLE_INSERT R7 R2 ; [+5]
       70 MOVE                             R9 R7
       71 MOVE                             R10 R2
       72 GETIMPORT                        R8 K11 [table.insert]
       74 CALL                             R8 2 0
       75 MOVE                             R8 R7
       76 LOADNIL                          R9
       77 LOADNIL                          R10
       78 FORGPREP                         R8
       79 LOADK                            R15 K21 ["BaseWrap"]
       80 NAMECALL                         R13 R12 K22 ["IsA"]
       82 CALL                             R13 2 1
       83 JUMPIFNOT                        R13 ; [+27]
       84 GETTABLEKS                       R13 R12 K23 ["Parent"]
       86 JUMPIFNOT                        R13 ; [+24]
       87 GETTABLEKS                       R14 R1 K20 ["outerCagesData"]
       89 GETTABLEKS                       R15 R12 K23 ["Parent"]
       91 GETTABLEKS                       R15 R15 K12 ["Name"]
       93 GETTABLE                         R13 R14 R15
       94 JUMPIFNOT                        R13 ; [+16]
       95 GETTABLEKS                       R14 R13 K13 ["editable"]
       97 JUMPIFNOT                        R14 ; [+13]
       98 DUPTABLE                         R14 K25 [{"CageMeshId"}]
       99 DUPTABLE                         R15 K18 [{"instance", "created"}]
      100 GETTABLEKS                       R16 R13 K13 ["editable"]
      102 SETTABLEKS                       R16 R15 K16 ["instance"]
      104 GETTABLEKS                       R16 R13 K19 ["createdInValidation"]
      106 SETTABLEKS                       R16 R15 K17 ["created"]
      108 SETTABLEKS                       R15 R14 K24 ["CageMeshId"]
      110 SETTABLE                         R14 R6 R12
      111 FORGLOOP                         R8 2 ; [-33]
      113 DUPTABLE                         R7 K30 [{"assetTypeEnum", "isServer", "editableMeshes", "bypassFlags"}]
      114 SETTABLEKS                       R3 R7 K26 ["assetTypeEnum"]
      116 SETTABLEKS                       R5 R7 K27 ["isServer"]
      118 SETTABLEKS                       R6 R7 K28 ["editableMeshes"]
      120 DUPTABLE                         R8 K32 [{"skipPhysicsDataReset"}]
      121 LOADB                            R9 1
      122 SETTABLEKS                       R9 R8 K31 ["skipPhysicsDataReset"]
      124 SETTABLEKS                       R8 R7 K29 ["bypassFlags"]
      126 NEWCLOSURE                       R8 P0
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U4
      133 GETUPVAL                         R10 5
      134 GETTABLEKS                       R10 R10 K33 ["ASSET_TYPE_INFO"]
      136 GETTABLE                         R9 R10 R3
      137 GETIMPORT                        R10 K37 [Enum.AssetType.DynamicHead]
      139 JUMPIFNOTEQ                      R10 R3 ; [+5]
      141 MOVE                             R10 R8
      142 MOVE                             R11 R2
      143 CALL                             R10 1 0
      144 RETURN                           R0 0
      145 JUMPIF                           R9 ; [+1]
      146 RETURN                           R0 0
      147 GETIMPORT                        R10 K39 [pairs]
      149 GETTABLEKS                       R11 R9 K40 ["subParts"]
      151 CALL                             R10 1 3
      152 FORGPREP_NEXT                    R10
      153 MOVE                             R17 R13
      154 NAMECALL                         R15 R2 K41 ["FindFirstChild"]
      156 CALL                             R15 2 1
      157 JUMPIFNOT                        R15 ; [+3]
      158 MOVE                             R16 R8
      159 MOVE                             R17 R15
      160 CALL                             R16 1 0
      161 FORGLOOP                         R10 1 ; [-9]
      163 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K6 ["util"]
       39 GETTABLEKS                       R6 R6 K11 ["getMeshMinMax"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K6 ["util"]
       46 GETTABLEKS                       R7 R7 K12 ["getMeshSize"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K6 ["util"]
       53 GETTABLEKS                       R8 R8 K13 ["getEditableMeshFromContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K6 ["util"]
       60 GETTABLEKS                       R9 R9 K14 ["getExpectedPartSize"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K6 ["util"]
       67 GETTABLEKS                       R10 R10 K15 ["getMeshInfo"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K16 ["flags"]
       74 GETTABLEKS                       R11 R11 K17 ["getFFlagUGCValidateMigrateBodyPartBounds"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 8 0
       79 NEWTABLE                         R12 0 2
       81 GETTABLEKS                       R13 R3 K18 ["UploadCategory"]
       83 GETTABLEKS                       R13 R13 K19 ["TORSO_AND_LIMBS"]
       85 GETTABLEKS                       R14 R3 K18 ["UploadCategory"]
       87 GETTABLEKS                       R14 R14 K20 ["DYNAMIC_HEAD"]
       89 SETLIST                          R12 R13 2 [1]
       91 SETTABLEKS                       R12 R11 K21 ["categories"]
       93 NEWTABLE                         R12 0 3
       95 GETTABLEKS                       R13 R3 K22 ["SharedDataMember"]
       97 GETTABLEKS                       R13 R13 K23 ["rootInstance"]
       99 GETTABLEKS                       R14 R3 K22 ["SharedDataMember"]
      101 GETTABLEKS                       R14 R14 K24 ["uploadEnum"]
      103 GETTABLEKS                       R15 R3 K22 ["SharedDataMember"]
      105 GETTABLEKS                       R15 R15 K25 ["consumerConfig"]
      107 SETLIST                          R12 R13 3 [1]
      109 SETTABLEKS                       R12 R11 K26 ["requiredData"]
      111 NEWTABLE                         R12 0 2
      113 GETTABLEKS                       R13 R3 K22 ["SharedDataMember"]
      115 GETTABLEKS                       R13 R13 K27 ["renderMeshesData"]
      117 GETTABLEKS                       R14 R3 K22 ["SharedDataMember"]
      119 GETTABLEKS                       R14 R14 K28 ["outerCagesData"]
      121 SETLIST                          R12 R13 2 [1]
      123 SETTABLEKS                       R12 R11 K29 ["conditionalData"]
      125 SETTABLEKS                       R10 R11 K30 ["fflag"]
      127 NEWTABLE                         R12 0 0
      129 SETTABLEKS                       R12 R11 K31 ["expectedFailures"]
      131 DUPCLOSURE                       R12 K32 [PROTO_0]
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R6
      134 DUPCLOSURE                       R13 K33 [PROTO_1]
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R5
      139 DUPCLOSURE                       R14 K34 [PROTO_3]
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R1
      146 SETTABLEKS                       R14 R11 K35 ["run"]
      148 RETURN                           R11 1
