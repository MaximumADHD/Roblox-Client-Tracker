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
       12 GETUPVAL                         R6 0
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R6 ; [+25]
       15 GETTABLEKS                       R6 R5 K3 ["isPBR"]
       17 JUMPIFEQKNIL                     R6 ; [+22]
       19 MOVE                             R6 R5
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 FASTCALL1                        TYPEOF R10 ; [+3]
       24 MOVE                             R12 R10
       25 GETIMPORT                        R11 K5 [typeof]
       27 CALL                             R11 1 1
       28 JUMPIFNOTEQKS                    R11 K6 ["table"] ; [+9]
       30 GETTABLEKS                       R11 R10 K0 ["createdInValidation"]
       32 JUMPIFNOT                        R11 ; [+5]
       33 GETTABLEKS                       R11 R10 K1 ["editable"]
       35 NAMECALL                         R11 R11 K2 ["Destroy"]
       37 CALL                             R11 1 0
       38 FORGLOOP                         R6 2 ; [-16]
       40 LOADNIL                          R6
       41 SETTABLE                         R6 R0 R4
       42 FORGLOOP                         R1 2 ; [-39]
       44 RETURN                           R0 0

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
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["getEditableInstanceInfo"]
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
       31 GETTABLEKS                       R8 R0 K2 ["MeshContent"]
       33 GETTABLEKS                       R8 R8 K9 ["SourceType"]
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
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K7 ["getEditableInstanceInfo"]
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
        0 LOADK                            R5 K0 ["SurfaceAppearance"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R3 2 1
        4 NEWTABLE                         R4 1 0
        6 JUMPIFEQKNIL                     R3 ; [+27]
        8 DUPTABLE                         R5 K8 [{["isPBR"] = True, ["ColorMap"], ["MetalnessMap"], ["NormalMap"], ["RoughnessMap"]}]
        9 GETTABLEKS                       R6 R3 K9 ["ColorMapContent"]
       11 SETTABLEKS                       R6 R5 K4 ["ColorMap"]
       13 GETTABLEKS                       R6 R3 K10 ["MetalnessMapContent"]
       15 SETTABLEKS                       R6 R5 K5 ["MetalnessMap"]
       17 GETTABLEKS                       R6 R3 K11 ["NormalMapContent"]
       19 SETTABLEKS                       R6 R5 K6 ["NormalMap"]
       21 GETTABLEKS                       R6 R3 K12 ["RoughnessMapContent"]
       23 SETTABLEKS                       R6 R5 K7 ["RoughnessMap"]
       25 MOVE                             R4 R5
       26 GETUPVAL                         R5 0
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+24]
       29 GETTABLEKS                       R5 R3 K13 ["EmissiveMaskContent"]
       31 SETTABLEKS                       R5 R4 K14 ["EmissiveMask"]
       33 JUMP                             ; [+19]
       34 LOADNIL                          R5
       35 LOADK                            R8 K15 ["MeshPart"]
       36 NAMECALL                         R6 R0 K16 ["IsA"]
       38 CALL                             R6 2 1
       39 JUMPIFNOT                        R6 ; [+3]
       40 GETTABLEKS                       R5 R0 K17 ["TextureContent"]
       42 JUMP                             ; [+6]
       43 GETIMPORT                        R6 K20 [Content.fromUri]
       45 GETTABLEKS                       R7 R0 K21 ["TextureId"]
       47 CALL                             R6 1 1
       48 MOVE                             R5 R6
       49 DUPTABLE                         R6 K24 [{["isPBR"] = False, ["Texture"]}]
       50 SETTABLEKS                       R5 R6 K23 ["Texture"]
       52 MOVE                             R4 R6
       53 DUPTABLE                         R5 K25 [{"isPBR"}]
       54 GETTABLEKS                       R6 R4 K2 ["isPBR"]
       56 SETTABLEKS                       R6 R5 K2 ["isPBR"]
       58 MOVE                             R6 R4
       59 LOADNIL                          R7
       60 LOADNIL                          R8
       61 FORGPREP                         R6
       62 JUMPIFEQKS                       R9 K2 ["isPBR"] ; [+33]
       64 GETTABLEKS                       R11 R10 K26 ["SourceType"]
       66 GETIMPORT                        R12 K30 [Enum.ContentSourceType.None]
       68 JUMPIFEQ                         R11 R12 ; [+27]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K31 ["getEditableInstanceInfo"]
       73 MOVE                             R12 R10
       74 MOVE                             R13 R2
       75 LOADK                            R14 K32 ["EditableImage"]
       76 MOVE                             R15 R1
       77 CALL                             R11 4 2
       78 JUMPIF                           R11 ; [+7]
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K33 ["cleanup"]
       82 MOVE                             R14 R5
       83 CALL                             R13 1 0
       84 LOADB                            R13 0
       85 RETURN                           R13 1
       86 DUPTABLE                         R13 K36 [{"editable", "createdInValidation"}]
       87 GETTABLEKS                       R14 R12 K37 ["instance"]
       89 SETTABLEKS                       R14 R13 K34 ["editable"]
       91 GETTABLEKS                       R14 R12 K38 ["created"]
       93 SETTABLEKS                       R14 R13 K35 ["createdInValidation"]
       95 SETTABLE                         R13 R5 R9
       96 FORGLOOP                         R6 2 ; [-35]
       98 LOADB                            R6 1
       99 MOVE                             R7 R5
      100 RETURN                           R6 2

PROTO_4:
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
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["getEditableInstanceInfo"]
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

PROTO_5:
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
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K5 ["meshTextures"]
       29 JUMPIFNOTEQ                      R1 R3 ; [+23]
       31 GETTABLEKS                       R3 R2 K6 ["ClassName"]
       33 JUMPIFNOTEQKS                    R3 K0 ["MeshPart"] ; [+9]
       35 GETTABLEKS                       R3 R2 K7 ["TextureContent"]
       37 GETTABLEKS                       R3 R3 K8 ["SourceType"]
       39 GETIMPORT                        R4 K12 [Enum.ContentSourceType.None]
       41 JUMPIFEQ                         R3 R4 ; [+9]
       43 GETTABLEKS                       R3 R2 K6 ["ClassName"]
       45 JUMPIFNOTEQKS                    R3 K3 ["SpecialMesh"] ; [+7]
       47 GETTABLEKS                       R3 R2 K13 ["TextureId"]
       49 JUMPIFNOTEQKS                    R3 K14 [""] ; [+3]
       51 LOADB                            R3 0
       52 RETURN                           R3 1
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K15 ["renderMeshesData"]
       56 JUMPIFEQ                         R1 R3 ; [+6]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K5 ["meshTextures"]
       61 JUMPIFNOTEQ                      R1 R3 ; [+4]
       63 LOADB                            R3 1
       64 MOVE                             R4 R2
       65 RETURN                           R3 2
       66 LOADK                            R5 K16 ["BaseWrap"]
       67 NAMECALL                         R3 R0 K17 ["FindFirstChildWhichIsA"]
       69 CALL                             R3 2 1
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K18 ["outerCagesData"]
       73 JUMPIFNOTEQ                      R1 R4 ; [+4]
       75 LOADB                            R4 1
       76 MOVE                             R5 R3
       77 RETURN                           R4 2
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K19 ["innerCagesData"]
       81 JUMPIFNOTEQ                      R1 R4 ; [+9]
       83 JUMPIFNOT                        R3 ; [+7]
       84 GETTABLEKS                       R4 R3 K6 ["ClassName"]
       86 JUMPIFNOTEQKS                    R4 K20 ["WrapLayer"] ; [+4]
       88 LOADB                            R4 1
       89 MOVE                             R5 R3
       90 RETURN                           R4 2
       91 LOADB                            R2 0
       92 RETURN                           R2 1

PROTO_6:
        0 LOADK                            R5 K0 ["MeshPart"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R2 R0
        6 JUMPIF                           R2 ; [+4]
        7 LOADK                            R4 K2 ["SpecialMesh"]
        8 NAMECALL                         R2 R0 K3 ["FindFirstChildOfClass"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+100]
       12 LOADK                            R5 K4 ["BaseWrap"]
       13 NAMECALL                         R3 R0 K5 ["FindFirstChildWhichIsA"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["renderMeshesData"]
       19 JUMPIFNOTEQ                      R1 R4 ; [+4]
       21 LOADB                            R4 1
       22 MOVE                             R5 R2
       23 RETURN                           R4 2
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K7 ["meshTextures"]
       27 JUMPIFNOTEQ                      R1 R4 ; [+42]
       29 LOADK                            R7 K8 ["SurfaceAppearance"]
       30 NAMECALL                         R5 R2 K5 ["FindFirstChildWhichIsA"]
       32 CALL                             R5 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 LOADB                            R5 0
       38 GETTABLEKS                       R6 R2 K9 ["ClassName"]
       40 JUMPIFNOTEQKS                    R6 K2 ["SpecialMesh"] ; [+7]
       42 GETTABLEKS                       R6 R2 K10 ["TextureId"]
       44 JUMPIFNOTEQKS                    R6 K11 [""] ; [+2]
       46 LOADB                            R5 0 +1
       47 LOADB                            R5 1
       48 LOADB                            R6 0
       49 GETTABLEKS                       R7 R2 K9 ["ClassName"]
       51 JUMPIFNOTEQKS                    R7 K0 ["MeshPart"] ; [+11]
       53 GETTABLEKS                       R7 R2 K12 ["TextureContent"]
       55 GETTABLEKS                       R7 R7 K13 ["SourceType"]
       57 GETIMPORT                        R8 K17 [Enum.ContentSourceType.None]
       59 JUMPIFNOTEQ                      R7 R8 ; [+2]
       61 LOADB                            R6 0 +1
       62 LOADB                            R6 1
       63 MOVE                             R7 R6
       64 JUMPIF                           R7 ; [+3]
       65 MOVE                             R7 R4
       66 JUMPIF                           R7 ; [+1]
       67 MOVE                             R7 R5
       68 MOVE                             R8 R2
       69 RETURN                           R7 2
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K18 ["outerCagesData"]
       73 JUMPIFNOTEQ                      R1 R4 ; [+15]
       75 JUMPIFNOT                        R3 ; [+13]
       76 GETTABLEKS                       R5 R3 K19 ["CageMeshContent"]
       78 GETTABLEKS                       R5 R5 K13 ["SourceType"]
       80 GETIMPORT                        R6 K17 [Enum.ContentSourceType.None]
       82 JUMPIFNOTEQ                      R5 R6 ; [+2]
       84 LOADB                            R4 0 +1
       85 LOADB                            R4 1
       86 MOVE                             R5 R4
       87 MOVE                             R6 R3
       88 RETURN                           R5 2
       89 GETUPVAL                         R4 0
       90 GETTABLEKS                       R4 R4 K20 ["innerCagesData"]
       92 JUMPIFNOTEQ                      R1 R4 ; [+19]
       94 JUMPIFNOT                        R3 ; [+17]
       95 GETTABLEKS                       R4 R3 K9 ["ClassName"]
       97 JUMPIFNOTEQKS                    R4 K21 ["WrapLayer"] ; [+14]
       99 GETTABLEKS                       R5 R3 K22 ["ReferenceMeshContent"]
      101 GETTABLEKS                       R5 R5 K13 ["SourceType"]
      103 GETIMPORT                        R6 K17 [Enum.ContentSourceType.None]
      105 JUMPIFNOTEQ                      R5 R6 ; [+2]
      107 LOADB                            R4 0 +1
      108 LOADB                            R4 1
      109 MOVE                             R5 R4
      110 MOVE                             R6 R3
      111 RETURN                           R5 2
      112 LOADB                            R3 0
      113 RETURN                           R3 1

PROTO_7:
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
       16 LOADNIL                          R12
       17 LOADNIL                          R13
       18 GETUPVAL                         R14 0
       19 CALL                             R14 0 1
       20 JUMPIFNOT                        R14 ; [+7]
       21 GETUPVAL                         R14 1
       22 MOVE                             R15 R11
       23 MOVE                             R16 R1
       24 CALL                             R14 2 2
       25 MOVE                             R12 R14
       26 MOVE                             R13 R15
       27 JUMP                             ; [+6]
       28 GETUPVAL                         R14 2
       29 MOVE                             R15 R11
       30 MOVE                             R16 R1
       31 CALL                             R14 2 2
       32 MOVE                             R12 R14
       33 MOVE                             R13 R15
       34 JUMPIFNOT                        R12 ; [+76]
       35 LOADNIL                          R14
       36 LOADNIL                          R15
       37 GETUPVAL                         R16 3
       38 GETTABLEKS                       R16 R16 K4 ["renderMeshesData"]
       40 JUMPIFNOTEQ                      R1 R16 ; [+9]
       42 GETUPVAL                         R16 4
       43 MOVE                             R17 R13
       44 MOVE                             R18 R2
       45 MOVE                             R19 R3
       46 CALL                             R16 3 2
       47 MOVE                             R14 R16
       48 MOVE                             R15 R17
       49 JUMP                             ; [+49]
       50 GETUPVAL                         R16 3
       51 GETTABLEKS                       R16 R16 K5 ["innerCagesData"]
       53 JUMPIFEQ                         R1 R16 ; [+6]
       55 GETUPVAL                         R16 3
       56 GETTABLEKS                       R16 R16 K6 ["outerCagesData"]
       58 JUMPIFNOTEQ                      R1 R16 ; [+17]
       60 GETUPVAL                         R17 3
       61 GETTABLEKS                       R17 R17 K6 ["outerCagesData"]
       63 JUMPIFEQ                         R1 R17 ; [+2]
       65 LOADB                            R16 0 +1
       66 LOADB                            R16 1
       67 GETUPVAL                         R17 5
       68 MOVE                             R18 R13
       69 MOVE                             R19 R16
       70 MOVE                             R20 R2
       71 MOVE                             R21 R3
       72 CALL                             R17 4 2
       73 MOVE                             R14 R17
       74 MOVE                             R15 R18
       75 JUMP                             ; [+23]
       76 GETUPVAL                         R16 3
       77 GETTABLEKS                       R16 R16 K7 ["meshTextures"]
       79 JUMPIFNOTEQ                      R1 R16 ; [+19]
       81 GETUPVAL                         R16 0
       82 CALL                             R16 0 1
       83 JUMPIFNOT                        R16 ; [+8]
       84 GETUPVAL                         R16 6
       85 MOVE                             R17 R13
       86 MOVE                             R18 R2
       87 MOVE                             R19 R4
       88 CALL                             R16 3 2
       89 MOVE                             R14 R16
       90 MOVE                             R15 R17
       91 JUMP                             ; [+7]
       92 GETUPVAL                         R16 7
       93 MOVE                             R17 R13
       94 MOVE                             R18 R2
       95 MOVE                             R19 R4
       96 CALL                             R16 3 2
       97 MOVE                             R14 R16
       98 MOVE                             R15 R17
       99 JUMPIFNOT                        R14 ; [+2]
      100 JUMPIFNOTEQKNIL                  R15 ; [+7]
      102 GETUPVAL                         R16 8
      103 GETTABLEKS                       R16 R16 K8 ["cleanup"]
      105 MOVE                             R17 R5
      106 CALL                             R16 1 0
      107 RETURN                           R0 0
      108 GETTABLEKS                       R16 R11 K9 ["Name"]
      110 SETTABLE                         R15 R5 R16
      111 FORGLOOP                         R7 2 ; [-96]
      113 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["createEditableInstancesForContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["util"]
       20 GETTABLEKS                       R3 R3 K7 ["getMeshSize"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["SharedDataMember"]
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["util"]
       36 GETTABLEKS                       R6 R6 K11 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K12 ["flags"]
       43 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidationAddPBRToSharedData"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R0 K12 ["flags"]
       50 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateAllowEmissives"]
       52 CALL                             R7 1 1
       53 NEWTABLE                         R8 2 0
       55 DUPCLOSURE                       R9 K15 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R9 R8 K16 ["cleanup"]
       59 DUPCLOSURE                       R9 K17 [PROTO_1]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 DUPCLOSURE                       R10 K18 [PROTO_2]
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R11 K19 [PROTO_3]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R8
       68 DUPCLOSURE                       R12 K20 [PROTO_4]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R13 K21 [PROTO_5]
       72 CAPTURE                          VAL R4
       73 DUPCLOSURE                       R14 K22 [PROTO_6]
       74 CAPTURE                          VAL R4
       75 DUPCLOSURE                       R15 K23 [PROTO_7]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R15 R8 K24 ["getDatas"]
       87 RETURN                           R8 1
