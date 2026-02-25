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
       27 GETTABLEKS                       R9 R2 K13 ["origin"]
       29 GETTABLEKS                       R8 R9 K14 ["Position"]
       31 GETTABLEKS                       R9 R1 K9 ["scale"]
       33 MUL                              R7 R8 R9
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R8 R2 K13 ["origin"]
       37 GETTABLEKS                       R7 R8 K15 ["Rotation"]
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
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETIMPORT                        R4 K2 [Content.fromObject]
       12 GETTABLEKS                       R5 R2 K3 ["editable"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K5 ["TextureContent"]
       17 GETTABLEKS                       R4 R0 K6 ["Name"]
       19 SETTABLEKS                       R4 R3 K6 ["Name"]
       21 GETTABLEKS                       R4 R0 K7 ["Size"]
       23 SETTABLEKS                       R4 R3 K7 ["Size"]
       25 GETTABLEKS                       R4 R0 K8 ["CFrame"]
       27 SETTABLEKS                       R4 R3 K8 ["CFrame"]
       29 NAMECALL                         R4 R0 K9 ["GetChildren"]
       31 CALL                             R4 1 3
       32 FORGPREP                         R4
       33 LOADK                            R11 K10 ["Attachment"]
       34 NAMECALL                         R9 R8 K11 ["IsA"]
       36 CALL                             R9 2 1
       37 JUMPIF                           R9 ; [+5]
       38 LOADK                            R11 K12 ["FaceControls"]
       39 NAMECALL                         R9 R8 K11 ["IsA"]
       41 CALL                             R9 2 1
       42 JUMPIFNOT                        R9 ; [+5]
       43 NAMECALL                         R9 R8 K13 ["Clone"]
       45 CALL                             R9 1 1
       46 SETTABLEKS                       R3 R9 K14 ["Parent"]
       48 FORGLOOP                         R4 2 ; [-16]
       50 RETURN                           R3 1

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
       25 JUMPIFNOT                        R8 ; [+44]
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
       70 FORGLOOP                         R3 2 ; [-50]
       72 GETIMPORT                        R5 K23 [CFrame.new]
       74 CALL                             R5 0 -1
       75 NAMECALL                         R3 R1 K24 ["PivotTo"]
       77 CALL                             R3 -1 0
       78 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["AssetService"]
       17 NAMECALL                         R2 R2 K10 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 1 0
       22 DUPCLOSURE                       R4 K11 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R5 K12 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 DUPCLOSURE                       R6 K13 [PROTO_2]
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R6 R3 K14 ["createModelForGltfExport"]
       31 RETURN                           R3 1
