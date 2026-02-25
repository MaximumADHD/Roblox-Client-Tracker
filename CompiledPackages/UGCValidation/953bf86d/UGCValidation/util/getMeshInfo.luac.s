PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MESH_CONTENT_TYPE"]
        3 GETTABLEKS                       R2 R3 K1 ["RENDER_MESH"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+14]
        7 LOADK                            R5 K2 ["MeshPart"]
        8 NAMECALL                         R3 R0 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       13 LOADK                            R4 K4 ["Only MESH_TYPE.RENDER_MESH is only supported for MeshPart"]
       14 GETIMPORT                        R2 K6 [assert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R0 K7 ["MeshId"]
       19 RETURN                           R2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K0 ["MESH_CONTENT_TYPE"]
       23 GETTABLEKS                       R2 R3 K8 ["OUTER_CAGE"]
       25 JUMPIFNOTEQ                      R1 R2 ; [+14]
       27 LOADK                            R5 K9 ["BaseWrap"]
       28 NAMECALL                         R3 R0 K3 ["IsA"]
       30 CALL                             R3 2 1
       31 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       33 LOADK                            R4 K10 ["Only MESH_TYPE.OUTER_CAGE is only supported for BaseWrap"]
       34 GETIMPORT                        R2 K6 [assert]
       36 CALL                             R2 2 0
       37 GETTABLEKS                       R2 R0 K11 ["CageMeshId"]
       39 RETURN                           R2 1
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K0 ["MESH_CONTENT_TYPE"]
       43 GETTABLEKS                       R2 R3 K12 ["INNER_CAGE"]
       45 JUMPIFNOTEQ                      R1 R2 ; [+14]
       47 LOADK                            R5 K13 ["WrapLayer"]
       48 NAMECALL                         R3 R0 K3 ["IsA"]
       50 CALL                             R3 2 1
       51 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       53 LOADK                            R4 K14 ["Only MESH_TYPE.INNER_CAGE is only supported for WrapLayer"]
       54 GETIMPORT                        R2 K6 [assert]
       56 CALL                             R2 2 0
       57 GETTABLEKS                       R2 R0 K15 ["ReferenceMeshId"]
       59 RETURN                           R2 1
       60 GETIMPORT                        R2 K17 [error]
       62 LOADK                            R3 K18 ["No valid mesh content type was provided"]
       63 CALL                             R2 1 0
       64 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 NAMECALL                         R4 R0 K0 ["GetFullName"]
        6 CALL                             R4 1 1
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["MESH_CONTENT_TYPE_TO_FIELD_NAME"]
       10 GETTABLE                         R5 R6 R1
       11 GETUPVAL                         R6 2
       12 MOVE                             R7 R0
       13 MOVE                             R8 R5
       14 MOVE                             R9 R2
       15 CALL                             R6 3 2
       16 JUMPIF                           R6 ; [+11]
       17 LOADB                            R8 0
       18 NEWTABLE                         R9 0 1
       20 GETIMPORT                        R10 K4 [string.format]
       22 LOADK                            R11 K5 ["Mesh for '%s' failed to load. Make sure the mesh exists and try again."]
       23 MOVE                             R12 R4
       24 CALL                             R10 2 -1
       25 SETLIST                          R9 R10 -1 [1]
       27 RETURN                           R8 2
       28 DUPTABLE                         R8 K11 [{"fullName", "fieldName", "contentId", "context", "editableMesh"}]
       29 SETTABLEKS                       R4 R8 K6 ["fullName"]
       31 SETTABLEKS                       R5 R8 K7 ["fieldName"]
       33 SETTABLEKS                       R3 R8 K8 ["contentId"]
       35 GETTABLEKS                       R9 R0 K12 ["ClassName"]
       37 SETTABLEKS                       R9 R8 K9 ["context"]
       39 SETTABLEKS                       R7 R8 K10 ["editableMesh"]
       41 LOADB                            R9 1
       42 LOADNIL                          R10
       43 MOVE                             R11 R8
       44 RETURN                           R9 3

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetFullName"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 LOADK                            R5 K1 ["MeshId"]
        6 MOVE                             R6 R1
        7 CALL                             R3 3 2
        8 JUMPIF                           R3 ; [+11]
        9 LOADB                            R5 0
       10 NEWTABLE                         R6 0 1
       12 GETIMPORT                        R7 K4 [string.format]
       14 LOADK                            R8 K5 ["Mesh for '%s' failed to load. Make sure the mesh exists and try again."]
       15 MOVE                             R9 R2
       16 CALL                             R7 2 -1
       17 SETLIST                          R6 R7 -1 [1]
       19 RETURN                           R5 2
       20 DUPTABLE                         R5 K11 [{"fullName", "fieldName", "contentId", "context", "editableMesh"}]
       21 SETTABLEKS                       R2 R5 K6 ["fullName"]
       23 LOADK                            R6 K1 ["MeshId"]
       24 SETTABLEKS                       R6 R5 K7 ["fieldName"]
       26 GETTABLEKS                       R6 R0 K1 ["MeshId"]
       28 SETTABLEKS                       R6 R5 K8 ["contentId"]
       30 GETTABLEKS                       R6 R0 K12 ["ClassName"]
       32 SETTABLEKS                       R6 R5 K9 ["context"]
       34 SETTABLEKS                       R4 R5 K10 ["editableMesh"]
       36 LOADB                            R6 1
       37 LOADNIL                          R7
       38 MOVE                             R8 R5
       39 RETURN                           R6 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["getEditableMeshFromContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K9 ["flags"]
       30 GETTABLEKS                       R5 R6 K10 ["getFFlagUGCValidationConsolidateGetMeshInfos"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K11 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 DUPCLOSURE                       R6 K12 [PROTO_1]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 DUPCLOSURE                       R7 K13 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 MOVE                             R9 R4
       42 CALL                             R9 0 1
       43 JUMPIFNOT                        R9 ; [+2]
       44 MOVE                             R8 R6
       45 RETURN                           R8 1
       46 MOVE                             R8 R7
       47 RETURN                           R8 1
