PROTO_0:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageManifold"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageNoOverlappingVertices"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageUVMatched"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_3:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["CageMeshNotIntersected"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_4:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_Att"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+3]
       15 GETTABLEKS                       R2 R0 K5 ["MeshNoHoleDetected"]
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_5:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIF                           R2 ; [+7]
       15 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       17 LOADK                            R4 K5 ["_InnerCage"]
       18 NAMECALL                         R2 R2 K4 ["match"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+3]
       22 GETTABLEKS                       R2 R0 K6 ["NoIrrelevantCageModified"]
       24 RETURN                           R2 1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_6:
        0 NAMECALL                         R2 R1 K0 ["GetImportTree"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["UsesCages"]
        5 JUMPIF                           R2 ; [+2]
        6 LOADB                            R2 1
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K2 ["ImportName"]
       10 LOADK                            R4 K3 ["_OuterCage"]
       11 NAMECALL                         R2 R2 K4 ["match"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R2 R0 K5 ["NoOuterCageFarExtendedFromMesh"]
       17 RETURN                           R2 1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Properties"]
       15 GETTABLEKS                       R2 R2 K9 ["Types"]
       17 GETTABLEKS                       R2 R2 K10 ["VisibilityProperty"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K11 [PROTO_0]
       21 DUPCLOSURE                       R3 K12 [PROTO_1]
       22 DUPCLOSURE                       R4 K13 [PROTO_2]
       23 DUPCLOSURE                       R5 K14 [PROTO_3]
       24 DUPCLOSURE                       R6 K15 [PROTO_4]
       25 DUPCLOSURE                       R7 K16 [PROTO_5]
       26 DUPCLOSURE                       R8 K17 [PROTO_6]
       27 NEWTABLE                         R9 0 2
       29 DUPTABLE                         R10 K20 [{["Section"] = "ObjectGeneral", ["Properties"]}]
       30 NEWTABLE                         R11 0 3
       32 DUPTABLE                         R12 K25 [{["Name"] = "ImportName", ["Editable"] = True}]
       33 DUPTABLE                         R13 K27 [{["Name"] = "Anchored", ["Editable"] = True}]
       34 DUPTABLE                         R14 K29 [{["Name"] = "UseImportedPivot", ["Editable"] = True}]
       35 SETLIST                          R11 R12 3 [1]
       37 SETTABLEKS                       R11 R10 K8 ["Properties"]
       39 DUPTABLE                         R11 K31 [{["Section"] = "ObjectGeometry", ["Properties"]}]
       40 NEWTABLE                         R12 0 11
       42 DUPTABLE                         R13 K34 [{["Name"] = "Dimensions", ["Editable"] = False}]
       43 DUPTABLE                         R14 K36 [{["Name"] = "PolygonCount", ["Editable"] = False}]
       44 DUPTABLE                         R15 K38 [{["Name"] = "DoubleSided", ["Editable"] = True}]
       45 DUPTABLE                         R16 K40 [{["Name"] = "IgnoreVertexColors", ["Editable"] = True}]
       46 DUPTABLE                         R17 K44 [{["Name"] = "CageNonManifoldPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       47 SETTABLEKS                       R1 R17 K42 ["ComponentFactory"]
       49 SETTABLEKS                       R2 R17 K43 ["ShouldHide"]
       51 DUPTABLE                         R18 K46 [{["Name"] = "CageOverlappingVerticesPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       52 SETTABLEKS                       R1 R18 K42 ["ComponentFactory"]
       54 SETTABLEKS                       R3 R18 K43 ["ShouldHide"]
       56 DUPTABLE                         R19 K48 [{["Name"] = "CageUVMisMatchedPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       57 SETTABLEKS                       R1 R19 K42 ["ComponentFactory"]
       59 SETTABLEKS                       R4 R19 K43 ["ShouldHide"]
       61 DUPTABLE                         R20 K50 [{["Name"] = "CageMeshIntersectedPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       62 SETTABLEKS                       R1 R20 K42 ["ComponentFactory"]
       64 SETTABLEKS                       R5 R20 K43 ["ShouldHide"]
       66 DUPTABLE                         R21 K52 [{["Name"] = "MeshHoleDetectedPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       67 SETTABLEKS                       R1 R21 K42 ["ComponentFactory"]
       69 SETTABLEKS                       R6 R21 K43 ["ShouldHide"]
       71 DUPTABLE                         R22 K54 [{["Name"] = "IrrelevantCageModifiedPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       72 SETTABLEKS                       R1 R22 K42 ["ComponentFactory"]
       74 SETTABLEKS                       R7 R22 K43 ["ShouldHide"]
       76 DUPTABLE                         R23 K56 [{["Name"] = "OuterCageFarExtendedFromMeshPreview", ["Editable"] = True, ["ComponentFactory"], ["ShouldHide"]}]
       77 SETTABLEKS                       R1 R23 K42 ["ComponentFactory"]
       79 SETTABLEKS                       R8 R23 K43 ["ShouldHide"]
       81 SETLIST                          R12 R13 11 [1]
       83 SETTABLEKS                       R12 R11 K8 ["Properties"]
       85 SETLIST                          R9 R10 2 [1]
       87 RETURN                           R9 1
