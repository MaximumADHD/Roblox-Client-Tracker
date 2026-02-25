PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["createdInValidation"]
        6 JUMPIFNOT                        R6 ; [+5]
        7 GETTABLEKS                       R6 R5 K1 ["editable"]
        9 NAMECALL                         R6 R6 K2 ["Destroy"]
       11 CALL                             R6 1 0
       12 LOADNIL                          R6
       13 SETTABLE                         R6 R0 R4
       14 FORGLOOP                         R1 2 ; [-11]
       16 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R6 K0 ["MeshPart"]
        1 NAMECALL                         R4 R0 K1 ["IsA"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+3]
        5 GETTABLEKS                       R3 R0 K2 ["MeshContent"]
        7 JUMPIF                           R3 ; [+5]
        8 GETIMPORT                        R3 K5 [Content.fromUri]
       10 GETTABLEKS                       R4 R0 K6 ["MeshId"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K7 ["getEditableInstanceInfo"]
       16 MOVE                             R5 R3
       17 MOVE                             R6 R2
       18 LOADK                            R7 K8 ["EditableMesh"]
       19 MOVE                             R8 R1
       20 CALL                             R4 4 2
       21 JUMPIF                           R4 ; [+2]
       22 LOADB                            R6 0
       23 RETURN                           R6 1
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 LOADK                            R10 K0 ["MeshPart"]
       27 NAMECALL                         R8 R0 K1 ["IsA"]
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+26]
       31 GETTABLEKS                       R9 R0 K2 ["MeshContent"]
       33 GETTABLEKS                       R8 R9 K9 ["SourceType"]
       35 GETIMPORT                        R9 K13 [Enum.ContentSourceType.Object]
       37 JUMPIFNOTEQ                      R8 R9 ; [+11]
       39 GETUPVAL                         R8 1
       40 DUPTABLE                         R9 K15 [{"editableMesh"}]
       41 GETTABLEKS                       R10 R5 K16 ["instance"]
       43 SETTABLEKS                       R10 R9 K14 ["editableMesh"]
       45 CALL                             R8 1 1
       46 MOVE                             R6 R8
       47 LOADK                            R7 K17 [{1, 1, 1}]
       48 JUMP                             ; [+23]
       49 GETTABLEKS                       R6 R0 K18 ["MeshSize"]
       51 GETTABLEKS                       R8 R0 K19 ["Size"]
       53 GETTABLEKS                       R9 R0 K18 ["MeshSize"]
       55 DIV                              R7 R8 R9
       56 JUMP                             ; [+15]
       57 LOADK                            R10 K20 ["SpecialMesh"]
       58 NAMECALL                         R8 R0 K1 ["IsA"]
       60 CALL                             R8 2 1
       61 JUMPIFNOT                        R8 ; [+10]
       62 GETUPVAL                         R8 1
       63 DUPTABLE                         R9 K15 [{"editableMesh"}]
       64 GETTABLEKS                       R10 R5 K16 ["instance"]
       66 SETTABLEKS                       R10 R9 K14 ["editableMesh"]
       68 CALL                             R8 1 1
       69 MOVE                             R6 R8
       70 GETTABLEKS                       R7 R0 K21 ["Scale"]
       72 LOADB                            R8 1
       73 DUPTABLE                         R9 K26 [{"editable", "createdInValidation", "originalSize", "scale"}]
       74 GETTABLEKS                       R10 R5 K16 ["instance"]
       76 SETTABLEKS                       R10 R9 K22 ["editable"]
       78 GETTABLEKS                       R10 R5 K27 ["created"]
       80 SETTABLEKS                       R10 R9 K23 ["createdInValidation"]
       82 SETTABLEKS                       R6 R9 K24 ["originalSize"]
       84 SETTABLEKS                       R7 R9 K25 ["scale"]
       86 RETURN                           R8 2

PROTO_2:
        0 LOADNIL                          R3
        1 LOADK                            R6 K0 ["MeshPart"]
        2 NAMECALL                         R4 R0 K1 ["IsA"]
        4 CALL                             R4 2 1
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R0 K2 ["TextureContent"]
        8 JUMP                             ; [+6]
        9 GETIMPORT                        R4 K5 [Content.fromUri]
       11 GETTABLEKS                       R5 R0 K6 ["TextureId"]
       13 CALL                             R4 1 1
       14 MOVE                             R3 R4
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K7 ["getEditableInstanceInfo"]
       18 MOVE                             R5 R3
       19 MOVE                             R6 R2
       20 LOADK                            R7 K8 ["EditableImage"]
       21 MOVE                             R8 R1
       22 CALL                             R4 4 2
       23 JUMPIFNOT                        R4 ; [+11]
       24 LOADB                            R6 1
       25 DUPTABLE                         R7 K11 [{"editable", "createdInValidation"}]
       26 GETTABLEKS                       R8 R5 K12 ["instance"]
       28 SETTABLEKS                       R8 R7 K9 ["editable"]
       30 GETTABLEKS                       R8 R5 K13 ["created"]
       32 SETTABLEKS                       R8 R7 K10 ["createdInValidation"]
       34 RETURN                           R6 2
       35 LOADB                            R6 0
       36 RETURN                           R6 1

PROTO_3:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 JUMPIF                           R1 ; [+9]
        3 GETTABLEKS                       R6 R0 K0 ["ClassName"]
        5 JUMPIFNOTEQKS                    R6 K1 ["WrapLayer"] ; [+6]
        7 GETTABLEKS                       R4 R0 K2 ["ReferenceMeshContent"]
        9 GETTABLEKS                       R5 R0 K3 ["ReferenceOrigin"]
       11 JUMP                             ; [+4]
       12 GETTABLEKS                       R4 R0 K4 ["CageMeshContent"]
       14 GETTABLEKS                       R5 R0 K5 ["CageOrigin"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K6 ["getEditableInstanceInfo"]
       19 MOVE                             R7 R4
       20 MOVE                             R8 R3
       21 LOADK                            R9 K7 ["EditableMesh"]
       22 MOVE                             R10 R2
       23 CALL                             R6 4 2
       24 JUMPIFNOT                        R6 ; [+22]
       25 LOADB                            R8 1
       26 DUPTABLE                         R9 K12 [{"editable", "createdInValidation", "originalSize", "origin"}]
       27 GETTABLEKS                       R10 R7 K13 ["instance"]
       29 SETTABLEKS                       R10 R9 K8 ["editable"]
       31 GETTABLEKS                       R10 R7 K14 ["created"]
       33 SETTABLEKS                       R10 R9 K9 ["createdInValidation"]
       35 GETUPVAL                         R10 1
       36 DUPTABLE                         R11 K16 [{"editableMesh"}]
       37 GETTABLEKS                       R12 R7 K13 ["instance"]
       39 SETTABLEKS                       R12 R11 K15 ["editableMesh"]
       41 CALL                             R10 1 1
       42 SETTABLEKS                       R10 R9 K10 ["originalSize"]
       44 SETTABLEKS                       R5 R9 K11 ["origin"]
       46 RETURN                           R8 2
       47 LOADB                            R8 0
       48 RETURN                           R8 1

PROTO_4:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+10]
        5 LOADK                            R4 K2 ["Part"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+81]
       10 LOADK                            R4 K3 ["SpecialMesh"]
       11 NAMECALL                         R2 R0 K4 ["FindFirstChildOfClass"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+76]
       15 LOADK                            R5 K0 ["MeshPart"]
       16 NAMECALL                         R3 R0 K1 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+2]
       20 MOVE                             R2 R0
       21 JUMPIF                           R2 ; [+4]
       22 LOADK                            R4 K3 ["SpecialMesh"]
       23 NAMECALL                         R2 R0 K4 ["FindFirstChildOfClass"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K5 ["meshTextures"]
       29 JUMPIFNOTEQ                      R1 R3 ; [+23]
       31 GETTABLEKS                       R3 R2 K6 ["ClassName"]
       33 JUMPIFNOTEQKS                    R3 K0 ["MeshPart"] ; [+9]
       35 GETTABLEKS                       R4 R2 K7 ["TextureContent"]
       37 GETTABLEKS                       R3 R4 K8 ["SourceType"]
       39 GETIMPORT                        R4 K12 [Enum.ContentSourceType.None]
       41 JUMPIFEQ                         R3 R4 ; [+9]
       43 GETTABLEKS                       R3 R2 K6 ["ClassName"]
       45 JUMPIFNOTEQKS                    R3 K3 ["SpecialMesh"] ; [+7]
       47 GETTABLEKS                       R3 R2 K13 ["TextureId"]
       49 JUMPIFNOTEQKS                    R3 K14 [""] ; [+3]
       51 LOADB                            R3 0
       52 RETURN                           R3 1
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K15 ["renderMeshesData"]
       56 JUMPIFEQ                         R1 R3 ; [+6]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K5 ["meshTextures"]
       61 JUMPIFNOTEQ                      R1 R3 ; [+4]
       63 LOADB                            R3 1
       64 MOVE                             R4 R2
       65 RETURN                           R3 2
       66 LOADK                            R5 K16 ["BaseWrap"]
       67 NAMECALL                         R3 R0 K17 ["FindFirstChildWhichIsA"]
       69 CALL                             R3 2 1
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R4 R5 K18 ["outerCagesData"]
       73 JUMPIFNOTEQ                      R1 R4 ; [+4]
       75 LOADB                            R4 1
       76 MOVE                             R5 R3
       77 RETURN                           R4 2
       78 GETUPVAL                         R5 0
       79 GETTABLEKS                       R4 R5 K19 ["innerCagesData"]
       81 JUMPIFNOTEQ                      R1 R4 ; [+9]
       83 JUMPIFNOT                        R3 ; [+7]
       84 GETTABLEKS                       R4 R3 K6 ["ClassName"]
       86 JUMPIFNOTEQKS                    R4 K20 ["WrapLayer"] ; [+4]
       88 LOADB                            R4 1
       89 MOVE                             R5 R3
       90 RETURN                           R4 2
       91 LOADB                            R2 0
       92 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R5 0 0
        2 NAMECALL                         R6 R0 K0 ["GetDescendants"]
        4 CALL                             R6 1 1
        5 FASTCALL2                        TABLE_INSERT R6 R0 ; [+5]
        7 MOVE                             R8 R6
        8 MOVE                             R9 R0
        9 GETIMPORT                        R7 K3 [table.insert]
       11 CALL                             R7 2 0
       12 MOVE                             R7 R6
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 FORGPREP                         R7
       16 GETUPVAL                         R12 0
       17 MOVE                             R13 R11
       18 MOVE                             R14 R1
       19 CALL                             R12 2 2
       20 JUMPIFNOT                        R12 ; [+65]
       21 LOADNIL                          R14
       22 LOADNIL                          R15
       23 GETUPVAL                         R17 1
       24 GETTABLEKS                       R16 R17 K4 ["renderMeshesData"]
       26 JUMPIFNOTEQ                      R1 R16 ; [+9]
       28 GETUPVAL                         R16 2
       29 MOVE                             R17 R13
       30 MOVE                             R18 R2
       31 MOVE                             R19 R3
       32 CALL                             R16 3 2
       33 MOVE                             R14 R16
       34 MOVE                             R15 R17
       35 JUMP                             ; [+38]
       36 GETUPVAL                         R17 1
       37 GETTABLEKS                       R16 R17 K5 ["innerCagesData"]
       39 JUMPIFEQ                         R1 R16 ; [+6]
       41 GETUPVAL                         R17 1
       42 GETTABLEKS                       R16 R17 K6 ["outerCagesData"]
       44 JUMPIFNOTEQ                      R1 R16 ; [+17]
       46 GETUPVAL                         R18 1
       47 GETTABLEKS                       R17 R18 K6 ["outerCagesData"]
       49 JUMPIFEQ                         R1 R17 ; [+2]
       51 LOADB                            R16 0 +1
       52 LOADB                            R16 1
       53 GETUPVAL                         R17 3
       54 MOVE                             R18 R13
       55 MOVE                             R19 R16
       56 MOVE                             R20 R2
       57 MOVE                             R21 R3
       58 CALL                             R17 4 2
       59 MOVE                             R14 R17
       60 MOVE                             R15 R18
       61 JUMP                             ; [+12]
       62 GETUPVAL                         R17 1
       63 GETTABLEKS                       R16 R17 K7 ["meshTextures"]
       65 JUMPIFNOTEQ                      R1 R16 ; [+8]
       67 GETUPVAL                         R16 4
       68 MOVE                             R17 R13
       69 MOVE                             R18 R2
       70 MOVE                             R19 R4
       71 CALL                             R16 3 2
       72 MOVE                             R14 R16
       73 MOVE                             R15 R17
       74 JUMPIFNOT                        R14 ; [+2]
       75 JUMPIFNOTEQKNIL                  R15 ; [+7]
       77 GETUPVAL                         R17 5
       78 GETTABLEKS                       R16 R17 K8 ["cleanup"]
       80 MOVE                             R17 R5
       81 CALL                             R16 1 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R16 R11 K9 ["Name"]
       85 SETTABLE                         R15 R5 R16
       86 FORGLOOP                         R7 2 ; [-71]
       88 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R3 K6 ["createEditableInstancesForContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["util"]
       20 GETTABLEKS                       R3 R4 K7 ["getMeshSize"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       27 GETTABLEKS                       R4 R5 K9 ["ValidationEnums"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["SharedDataMember"]
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R7 R0 K5 ["util"]
       36 GETTABLEKS                       R6 R7 K11 ["Types"]
       38 CALL                             R5 1 1
       39 NEWTABLE                         R6 2 0
       41 DUPCLOSURE                       R7 K12 [PROTO_0]
       42 SETTABLEKS                       R7 R6 K13 ["cleanup"]
       44 DUPCLOSURE                       R7 K14 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R8 K15 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R9 K16 [PROTO_3]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R10 K17 [PROTO_4]
       53 CAPTURE                          VAL R4
       54 DUPCLOSURE                       R11 K18 [PROTO_5]
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R11 R6 K19 ["getDatas"]
       63 RETURN                           R6 1
