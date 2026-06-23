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
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["Uri"]
       13 NAMECALL                         R0 R0 K3 ["CreateEditableImageOriginalSizeAsync"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R3 2
       10 GETTABLEKS                       R5 R0 K2 ["Uri"]
       12 SETTABLE                         R4 R1 R5
       13 LOADB                            R5 1
       14 DUPTABLE                         R6 K5 [{"created", "instance"}]
       15 LOADB                            R7 1
       16 SETTABLEKS                       R7 R6 K3 ["created"]
       18 SETTABLEKS                       R4 R6 K4 ["instance"]
       20 RETURN                           R5 2

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
       39 JUMPIF                           R2 ; [+5]
       40 LOADK                            R4 K14 ["Decal"]
       41 NAMECALL                         R2 R0 K1 ["IsA"]
       43 CALL                             R2 2 1
       44 JUMPIFNOT                        R2 ; [+40]
       45 GETTABLEKS                       R2 R0 K15 ["ColorMapContent"]
       47 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       48 SETTABLEKS                       R2 R3 K3 ["content"]
       50 LOADK                            R4 K6 ["EditableImage"]
       51 SETTABLEKS                       R4 R3 K4 ["contentType"]
       53 SETTABLEKS                       R3 R1 K16 ["ColorMap"]
       55 GETTABLEKS                       R2 R0 K17 ["MetalnessMapContent"]
       57 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       58 SETTABLEKS                       R2 R3 K3 ["content"]
       60 LOADK                            R4 K6 ["EditableImage"]
       61 SETTABLEKS                       R4 R3 K4 ["contentType"]
       63 SETTABLEKS                       R3 R1 K18 ["MetalnessMap"]
       65 GETTABLEKS                       R2 R0 K19 ["NormalMapContent"]
       67 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       68 SETTABLEKS                       R2 R3 K3 ["content"]
       70 LOADK                            R4 K6 ["EditableImage"]
       71 SETTABLEKS                       R4 R3 K4 ["contentType"]
       73 SETTABLEKS                       R3 R1 K20 ["NormalMap"]
       75 GETTABLEKS                       R2 R0 K21 ["RoughnessMapContent"]
       77 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       78 SETTABLEKS                       R2 R3 K3 ["content"]
       80 LOADK                            R4 K6 ["EditableImage"]
       81 SETTABLEKS                       R4 R3 K4 ["contentType"]
       83 SETTABLEKS                       R3 R1 K22 ["RoughnessMap"]
       85 RETURN                           R0 0

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
       77 LOADK                            R4 K18 ["WrapTextureTransfer"]
       78 NAMECALL                         R2 R0 K1 ["IsA"]
       80 CALL                             R2 2 1
       81 JUMPIFNOT                        R2 ; [+10]
       82 GETTABLEKS                       R2 R0 K19 ["ReferenceCageMeshContent"]
       84 DUPTABLE                         R3 K5 [{"content", "contentType"}]
       85 SETTABLEKS                       R2 R3 K3 ["content"]
       87 LOADK                            R4 K6 ["EditableMesh"]
       88 SETTABLEKS                       R4 R3 K4 ["contentType"]
       90 SETTABLEKS                       R3 R1 K19 ["ReferenceCageMeshContent"]
       92 RETURN                           R0 0

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
       16 GETUPVAL                         R11 2
       17 GETTABLEKS                       R11 R11 K1 ["getEditableInstanceInfo"]
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
       30 GETUPVAL                         R15 0
       31 GETTABLEKS                       R15 R15 K9 ["getOrCreateEditableInstances"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 NEWTABLE                         R1 4 0
        9 GETIMPORT                        R2 K4 [game]
       11 LOADK                            R4 K5 ["AssetService"]
       12 NAMECALL                         R2 R2 K6 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K4 [game]
       17 LOADK                            R5 K7 ["UGCValidationService"]
       18 NAMECALL                         R3 R3 K6 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K9 [require]
       23 GETTABLEKS                       R5 R0 K10 ["util"]
       25 GETTABLEKS                       R5 R5 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K9 [require]
       30 GETTABLEKS                       R6 R0 K10 ["util"]
       32 GETTABLEKS                       R6 R6 K12 ["destroyEditableInstances"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 DUPCLOSURE                       R7 K14 [PROTO_2]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 DUPCLOSURE                       R8 K15 [PROTO_3]
       40 CAPTURE                          VAL R7
       41 SETTABLEKS                       R8 R1 K16 ["getEditableInstanceInfo"]
       43 DUPCLOSURE                       R8 K17 [PROTO_4]
       44 DUPCLOSURE                       R9 K18 [PROTO_5]
       45 DUPCLOSURE                       R10 K19 [PROTO_6]
       46 DUPCLOSURE                       R11 K20 [PROTO_7]
       47 DUPCLOSURE                       R12 K21 [PROTO_8]
       48 CAPTURE                          VAL R11
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R12 R1 K22 ["getOrCreateEditableInstances"]
       53 DUPCLOSURE                       R12 K23 [PROTO_9]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R12 R1 K24 ["processAll"]
       58 RETURN                           R1 1
