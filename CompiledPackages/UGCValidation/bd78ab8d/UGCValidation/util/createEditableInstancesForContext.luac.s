PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["editableMeshes"]
        2 JUMPIFNOTEQKS                    R4 K1 ["EditableImage"] ; [+3]
        4 GETTABLEKS                       R5 R0 K2 ["editableImages"]
        6 GETTABLE                         R6 R5 R1
        7 JUMPIF                           R6 ; [+3]
        8 NEWTABLE                         R6 0 0
       10 SETTABLE                         R6 R5 R1
       11 GETTABLE                         R6 R5 R1
       12 SETTABLE                         R3 R6 R2
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["EditableMesh"] ; [+7]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R0 R0 K1 ["CreateEditableMeshAsync"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 3
       10 JUMPIFNOT                        R0 ; [+8]
       11 GETUPVAL                         R0 4
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K2 ["Uri"]
       15 NAMECALL                         R0 R0 K3 ["CreateEditableImageOriginalSizeAsync"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1
       19 GETUPVAL                         R0 1
       20 GETUPVAL                         R2 2
       21 NAMECALL                         R0 R0 K4 ["CreateEditableImageAsync"]
       23 CALL                             R0 2 1
       24 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R3 2
       11 GETTABLEKS                       R5 R0 K2 ["Uri"]
       13 SETTABLE                         R4 R1 R5
       14 LOADB                            R5 1
       15 DUPTABLE                         R6 K5 [{"created", "instance"}]
       16 LOADB                            R7 1
       17 SETTABLEKS                       R7 R6 K3 ["created"]
       19 SETTABLEKS                       R4 R6 K4 ["instance"]
       21 RETURN                           R5 2

PROTO_3:
        0 LOADNIL                          R4
        1 JUMPIFNOT                        R3 ; [+2]
        2 GETTABLEKS                       R4 R0 K0 ["Object"]
        4 JUMPIF                           R4 ; [+13]
        5 GETTABLEKS                       R5 R0 K1 ["Uri"]
        7 JUMPIFNOT                        R5 ; [+10]
        8 JUMPIFEQKS                       R5 K2 [""] ; [+9]
       10 GETTABLE                         R4 R1 R5
       11 JUMPIF                           R4 ; [+6]
       12 GETUPVAL                         R6 0
       13 MOVE                             R7 R0
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 CALL                             R6 3 -1
       17 RETURN                           R6 -1
       18 LOADB                            R5 1
       19 DUPTABLE                         R6 K5 [{"instance", "created"}]
       20 SETTABLEKS                       R4 R6 K3 ["instance"]
       22 LOADB                            R7 0
       23 SETTABLEKS                       R7 R6 K4 ["created"]
       25 RETURN                           R5 2

PROTO_4:
        0 DUPTABLE                         R4 K2 [{"content", "contentType"}]
        1 SETTABLEKS                       R2 R4 K0 ["content"]
        3 SETTABLEKS                       R3 R4 K1 ["contentType"]
        5 SETTABLE                         R4 R0 R1
        6 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K2 ["TextureContent"]
        7 DUPTABLE                         R3 K5 [{"content", "contentType"}]
        8 SETTABLEKS                       R2 R3 K3 ["content"]
       10 LOADK                            R4 K6 ["EditableImage"]
       11 SETTABLEKS                       R4 R3 K4 ["contentType"]
       13 SETTABLEKS                       R3 R1 K7 ["TextureID"]
       15 RETURN                           R0 0
       16 LOADK                            R4 K8 ["SpecialMesh"]
       17 NAMECALL                         R2 R0 K1 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+14]
       21 GETIMPORT                        R2 K11 [Content.fromUri]
       23 GETTABLEKS                       R3 R0 K12 ["TextureId"]
       25 CALL                             R2 1 1
       26 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       27 SETTABLEKS                       R2 R3 K3 ["content"]
       29 LOADK                            R4 K6 ["EditableImage"]
       30 SETTABLEKS                       R4 R3 K4 ["contentType"]
       32 SETTABLEKS                       R3 R1 K12 ["TextureId"]
       34 RETURN                           R0 0
       35 LOADK                            R4 K13 ["SurfaceAppearance"]
       36 NAMECALL                         R2 R0 K1 ["IsA"]
       38 CALL                             R2 2 1
       39 JUMPIF                           R2 ; [+8]
       40 GETUPVAL                         R2 0
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+45]
       43 LOADK                            R4 K14 ["Decal"]
       44 NAMECALL                         R2 R0 K1 ["IsA"]
       46 CALL                             R2 2 1
       47 JUMPIFNOT                        R2 ; [+40]
       48 GETTABLEKS                       R2 R0 K15 ["ColorMapContent"]
       50 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       51 SETTABLEKS                       R2 R3 K3 ["content"]
       53 LOADK                            R4 K6 ["EditableImage"]
       54 SETTABLEKS                       R4 R3 K4 ["contentType"]
       56 SETTABLEKS                       R3 R1 K16 ["ColorMap"]
       58 GETTABLEKS                       R2 R0 K17 ["MetalnessMapContent"]
       60 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       61 SETTABLEKS                       R2 R3 K3 ["content"]
       63 LOADK                            R4 K6 ["EditableImage"]
       64 SETTABLEKS                       R4 R3 K4 ["contentType"]
       66 SETTABLEKS                       R3 R1 K18 ["MetalnessMap"]
       68 GETTABLEKS                       R2 R0 K19 ["NormalMapContent"]
       70 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       71 SETTABLEKS                       R2 R3 K3 ["content"]
       73 LOADK                            R4 K6 ["EditableImage"]
       74 SETTABLEKS                       R4 R3 K4 ["contentType"]
       76 SETTABLEKS                       R3 R1 K20 ["NormalMap"]
       78 GETTABLEKS                       R2 R0 K21 ["RoughnessMapContent"]
       80 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       81 SETTABLEKS                       R2 R3 K3 ["content"]
       83 LOADK                            R4 K6 ["EditableImage"]
       84 SETTABLEKS                       R4 R3 K4 ["contentType"]
       86 SETTABLEKS                       R3 R1 K22 ["RoughnessMap"]
       88 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["CageMeshContent"]
        2 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R4 K0 ["MeshPart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K2 ["MeshContent"]
        7 DUPTABLE                         R3 K5 [{"content", "contentType"}]
        8 SETTABLEKS                       R2 R3 K3 ["content"]
       10 LOADK                            R4 K6 ["EditableMesh"]
       11 SETTABLEKS                       R4 R3 K4 ["contentType"]
       13 SETTABLEKS                       R3 R1 K7 ["MeshId"]
       15 RETURN                           R0 0
       16 LOADK                            R4 K8 ["WrapTarget"]
       17 NAMECALL                         R2 R0 K1 ["IsA"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+11]
       21 GETTABLEKS                       R2 R0 K9 ["CageMeshContent"]
       23 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       24 SETTABLEKS                       R2 R3 K3 ["content"]
       26 LOADK                            R4 K6 ["EditableMesh"]
       27 SETTABLEKS                       R4 R3 K4 ["contentType"]
       29 SETTABLEKS                       R3 R1 K10 ["CageMeshId"]
       31 RETURN                           R0 0
       32 LOADK                            R4 K11 ["WrapLayer"]
       33 NAMECALL                         R2 R0 K1 ["IsA"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+21]
       37 GETTABLEKS                       R2 R0 K9 ["CageMeshContent"]
       39 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       40 SETTABLEKS                       R2 R3 K3 ["content"]
       42 LOADK                            R4 K6 ["EditableMesh"]
       43 SETTABLEKS                       R4 R3 K4 ["contentType"]
       45 SETTABLEKS                       R3 R1 K10 ["CageMeshId"]
       47 GETTABLEKS                       R2 R0 K12 ["ReferenceMeshContent"]
       49 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       50 SETTABLEKS                       R2 R3 K3 ["content"]
       52 LOADK                            R4 K6 ["EditableMesh"]
       53 SETTABLEKS                       R4 R3 K4 ["contentType"]
       55 SETTABLEKS                       R3 R1 K13 ["ReferenceMeshId"]
       57 RETURN                           R0 0
       58 LOADK                            R4 K14 ["SpecialMesh"]
       59 NAMECALL                         R2 R0 K1 ["IsA"]
       61 CALL                             R2 2 1
       62 JUMPIFNOT                        R2 ; [+14]
       63 GETIMPORT                        R2 K17 [Content.fromUri]
       65 GETTABLEKS                       R3 R0 K7 ["MeshId"]
       67 CALL                             R2 1 1
       68 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       69 SETTABLEKS                       R2 R3 K3 ["content"]
       71 LOADK                            R4 K6 ["EditableMesh"]
       72 SETTABLEKS                       R4 R3 K4 ["contentType"]
       74 SETTABLEKS                       R3 R1 K7 ["MeshId"]
       76 RETURN                           R0 0
       77 GETUPVAL                         R2 0
       78 CALL                             R2 0 1
       79 JUMPIFNOT                        R2 ; [+15]
       80 LOADK                            R4 K18 ["WrapTextureTransfer"]
       81 NAMECALL                         R2 R0 K1 ["IsA"]
       83 CALL                             R2 2 1
       84 JUMPIFNOT                        R2 ; [+10]
       85 GETTABLEKS                       R2 R0 K19 ["ReferenceCageMeshContent"]
       87 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       88 SETTABLEKS                       R2 R3 K3 ["content"]
       90 LOADK                            R4 K6 ["EditableMesh"]
       91 SETTABLEKS                       R4 R3 K4 ["contentType"]
       93 SETTABLEKS                       R3 R1 K19 ["ReferenceCageMeshContent"]
       95 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 MOVE                             R7 R4
        5 CALL                             R5 2 0
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 MOVE                             R7 R4
        9 CALL                             R5 2 0
       10 MOVE                             R5 R4
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R10 R9 K0 ["contentType"]
       16 GETUPVAL                         R12 2
       17 GETTABLEKS                       R11 R12 K1 ["getEditableInstanceInfo"]
       19 GETTABLEKS                       R12 R9 K2 ["content"]
       21 MOVE                             R13 R1
       22 MOVE                             R14 R10
       23 MOVE                             R15 R3
       24 CALL                             R11 4 2
       25 JUMPIF                           R11 ; [+1]
       26 RETURN                           R11 2
       27 GETTABLEKS                       R13 R2 K3 ["editableMeshes"]
       29 JUMPIFNOTEQKS                    R10 K4 ["EditableImage"] ; [+3]
       31 GETTABLEKS                       R13 R2 K5 ["editableImages"]
       33 GETTABLE                         R14 R13 R0
       34 JUMPIF                           R14 ; [+3]
       35 NEWTABLE                         R14 0 0
       37 SETTABLE                         R14 R13 R0
       38 GETTABLE                         R14 R13 R0
       39 SETTABLE                         R12 R14 R8
       40 FORGLOOP                         R5 2 ; [-27]
       42 LOADB                            R5 1
       43 RETURN                           R5 1

PROTO_9:
        0 DUPTABLE                         R2 K2 [{"editableMeshes", "editableImages"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["editableMeshes"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["editableImages"]
        9 NEWTABLE                         R3 0 0
       11 MOVE                             R4 R0
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 NAMECALL                         R9 R8 K3 ["GetDescendants"]
       17 CALL                             R9 1 1
       18 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
       20 MOVE                             R11 R9
       21 MOVE                             R12 R8
       22 GETIMPORT                        R10 K6 [table.insert]
       24 CALL                             R10 2 0
       25 GETIMPORT                        R10 K8 [pairs]
       27 MOVE                             R11 R9
       28 CALL                             R10 1 3
       29 FORGPREP_NEXT                    R10
       30 GETUPVAL                         R16 0
       31 GETTABLEKS                       R15 R16 K9 ["getOrCreateEditableInstances"]
       33 MOVE                             R16 R14
       34 MOVE                             R17 R3
       35 MOVE                             R18 R2
       36 MOVE                             R19 R1
       37 CALL                             R15 4 2
       38 JUMPIF                           R15 ; [+13]
       39 GETUPVAL                         R17 1
       40 GETTABLEKS                       R18 R2 K0 ["editableMeshes"]
       42 GETTABLEKS                       R19 R2 K1 ["editableImages"]
       44 CALL                             R17 2 0
       45 LOADB                            R17 0
       46 NEWTABLE                         R18 0 1
       48 MOVE                             R19 R16
       49 SETLIST                          R18 R19 1 [1]
       51 RETURN                           R17 2
       52 FORGLOOP                         R10 2 ; [-23]
       54 FORGLOOP                         R4 2 ; [-40]
       56 LOADB                            R4 1
       57 MOVE                             R5 R2
       58 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 NEWTABLE                         R1 4 0
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["flags"]
       13 GETTABLEKS                       R3 R4 K6 ["getFFlagUGCValidationMakeupSupport"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K8 [game]
       18 LOADK                            R5 K9 ["AssetService"]
       19 NAMECALL                         R3 R3 K10 ["GetService"]
       21 CALL                             R3 2 1
       22 GETIMPORT                        R4 K8 [game]
       24 LOADK                            R6 K11 ["UGCValidationService"]
       25 NAMECALL                         R4 R4 K10 ["GetService"]
       27 CALL                             R4 2 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R7 R0 K12 ["util"]
       32 GETTABLEKS                       R6 R7 K13 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R8 R0 K12 ["util"]
       39 GETTABLEKS                       R7 R8 K14 ["destroyEditableInstances"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K8 [game]
       44 LOADK                            R9 K15 ["EngineCreateEditableImageOriginalSizeEnabled"]
       45 NAMECALL                         R7 R7 K16 ["GetEngineFeature"]
       47 CALL                             R7 2 1
       48 DUPCLOSURE                       R8 K17 [PROTO_0]
       49 DUPCLOSURE                       R9 K18 [PROTO_2]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 DUPCLOSURE                       R10 K19 [PROTO_3]
       54 CAPTURE                          VAL R9
       55 SETTABLEKS                       R10 R1 K20 ["getEditableInstanceInfo"]
       57 DUPCLOSURE                       R10 K21 [PROTO_4]
       58 DUPCLOSURE                       R11 K22 [PROTO_5]
       59 CAPTURE                          VAL R2
       60 DUPCLOSURE                       R12 K23 [PROTO_6]
       61 DUPCLOSURE                       R13 K24 [PROTO_7]
       62 CAPTURE                          VAL R2
       63 DUPCLOSURE                       R14 K25 [PROTO_8]
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R14 R1 K26 ["getOrCreateEditableInstances"]
       69 DUPCLOSURE                       R14 K27 [PROTO_9]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R14 R1 K28 ["processAll"]
       74 RETURN                           R1 1
