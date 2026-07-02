PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MAX_HAT_TRIANGLES"]
        3 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R10 R7 K2 ["editable"]
       11 NAMECALL                         R8 R8 K3 ["GetEditableMeshTriCount"]
       13 CALL                             R8 2 1
       14 JUMPIFNOTLT                      R2 R8 ; [+26]
       16 GETUPVAL                         R11 2
       17 GETTABLEKS                       R11 R11 K4 ["Keys"]
       19 GETTABLEKS                       R11 R11 K5 ["MeshGeometry_TriangleCountExceeded"]
       21 DUPTABLE                         R12 K9 [{"meshName", "triangleCount", "maxTriangles"}]
       22 SETTABLEKS                       R6 R12 K6 ["meshName"]
       24 FASTCALL1                        TOSTRING R8 ; [+3]
       25 MOVE                             R14 R8
       26 GETIMPORT                        R13 K11 [tostring]
       28 CALL                             R13 1 1
       29 SETTABLEKS                       R13 R12 K7 ["triangleCount"]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R14 R2
       33 GETIMPORT                        R13 K11 [tostring]
       35 CALL                             R13 1 1
       36 SETTABLEKS                       R13 R12 K8 ["maxTriangles"]
       38 NAMECALL                         R9 R0 K12 ["fail"]
       40 CALL                             R9 3 0
       41 FORGLOOP                         R3 2 ; [-34]
       43 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
        2 GETTABLEKS                       R2 R2 K1 ["assetType"]
        4 GETTABLEKS                       R2 R2 K2 ["Name"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["ASSET_RENDER_MESH_MAX_TRIANGLES"]
        9 GETTABLE                         R3 R4 R2
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 LOADN                            R4 0
       13 GETTABLEKS                       R5 R1 K4 ["renderMeshesData"]
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R12 R9 K5 ["editable"]
       21 NAMECALL                         R10 R10 K6 ["GetEditableMeshTriCount"]
       23 CALL                             R10 2 1
       24 ADD                              R4 R4 R10
       25 FORGLOOP                         R5 2 ; [-8]
       27 GETUPVAL                         R6 2
       28 CALL                             R6 0 1
       29 DIVK                             R5 R6 K7 [100]
       30 MUL                              R7 R3 R5
       31 ADD                              R6 R3 R7
       32 JUMPIFNOTLT                      R6 R4 ; [+26]
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R9 R9 K8 ["Keys"]
       37 GETTABLEKS                       R9 R9 K9 ["MeshGeometry_TotalTriangleCountExceeded"]
       39 DUPTABLE                         R10 K13 [{"triangleCount", "assetTypeName", "maxTriangles"}]
       40 FASTCALL1                        TOSTRING R4 ; [+3]
       41 MOVE                             R12 R4
       42 GETIMPORT                        R11 K15 [tostring]
       44 CALL                             R11 1 1
       45 SETTABLEKS                       R11 R10 K10 ["triangleCount"]
       47 SETTABLEKS                       R2 R10 K11 ["assetTypeName"]
       49 FASTCALL1                        TOSTRING R3 ; [+3]
       50 MOVE                             R12 R3
       51 GETIMPORT                        R11 K15 [tostring]
       53 CALL                             R11 1 1
       54 SETTABLEKS                       R11 R10 K12 ["maxTriangles"]
       56 NAMECALL                         R7 R0 K16 ["fail"]
       58 CALL                             R7 3 0
       59 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["uploadCategory"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["UploadCategory"]
        5 GETTABLEKS                       R3 R3 K2 ["TORSO_AND_LIMBS"]
        7 JUMPIFEQ                         R2 R3 ; [+10]
        9 GETTABLEKS                       R2 R1 K0 ["uploadCategory"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["UploadCategory"]
       14 GETTABLEKS                       R3 R3 K3 ["DYNAMIC_HEAD"]
       16 JUMPIFNOTEQ                      R2 R3 ; [+6]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 2
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K10 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["validationSystem"]
       31 GETTABLEKS                       R5 R5 K13 ["ValidationEnums"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K12 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFIntUGCValidateTriangleLimitTolerance"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K15 ["flags"]
       52 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidateMigrateMeshGeometry"]
       54 CALL                             R7 1 1
       55 NEWTABLE                         R8 8 0
       57 SETTABLEKS                       R7 R8 K18 ["fflag"]
       59 NEWTABLE                         R9 0 4
       61 GETTABLEKS                       R10 R4 K19 ["UploadCategory"]
       63 GETTABLEKS                       R10 R10 K20 ["LAYERED_CLOTHING"]
       65 GETTABLEKS                       R11 R4 K19 ["UploadCategory"]
       67 GETTABLEKS                       R11 R11 K21 ["RIGID_ACCESSORY"]
       69 GETTABLEKS                       R12 R4 K19 ["UploadCategory"]
       71 GETTABLEKS                       R12 R12 K22 ["TORSO_AND_LIMBS"]
       73 GETTABLEKS                       R13 R4 K19 ["UploadCategory"]
       75 GETTABLEKS                       R13 R13 K23 ["DYNAMIC_HEAD"]
       77 SETLIST                          R9 R10 4 [1]
       79 SETTABLEKS                       R9 R8 K24 ["categories"]
       81 NEWTABLE                         R9 0 1
       83 GETTABLEKS                       R10 R4 K25 ["SharedDataMember"]
       85 GETTABLEKS                       R10 R10 K26 ["renderMeshesData"]
       87 SETLIST                          R9 R10 1 [1]
       89 SETTABLEKS                       R9 R8 K27 ["requiredData"]
       91 NEWTABLE                         R9 0 0
       93 SETTABLEKS                       R9 R8 K28 ["expectedFailures"]
       95 DUPCLOSURE                       R9 K29 [PROTO_0]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R5
       99 DUPCLOSURE                       R10 K30 [PROTO_1]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R5
      104 DUPCLOSURE                       R11 K31 [PROTO_2]
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R9
      108 SETTABLEKS                       R11 R8 K32 ["run"]
      110 RETURN                           R8 1
