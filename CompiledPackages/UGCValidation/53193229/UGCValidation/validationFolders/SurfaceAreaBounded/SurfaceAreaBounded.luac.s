PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["renderMeshesData"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R9 R6 K1 ["editable"]
        8 GETTABLEKS                       R10 R6 K2 ["scale"]
       10 NAMECALL                         R7 R7 K3 ["CalculateEditableMeshTotalSurfaceArea"]
       12 CALL                             R7 3 1
       13 GETUPVAL                         R8 1
       14 CALL                             R8 0 1
       15 JUMPIFNOTLT                      R8 R7 ; [+27]
       17 GETUPVAL                         R10 2
       18 GETTABLEKS                       R10 R10 K4 ["Keys"]
       20 GETTABLEKS                       R10 R10 K5 ["MeshGeometry_SurfaceAreaExceeded"]
       22 DUPTABLE                         R11 K9 [{"meshName", "surfaceArea", "maxSurfaceArea"}]
       23 SETTABLEKS                       R5 R11 K6 ["meshName"]
       25 GETIMPORT                        R12 K12 [string.format]
       27 LOADK                            R13 K13 ["%.2f"]
       28 MOVE                             R14 R7
       29 CALL                             R12 2 1
       30 SETTABLEKS                       R12 R11 K7 ["surfaceArea"]
       32 GETUPVAL                         R13 1
       33 CALL                             R13 0 -1
       34 FASTCALL                         TOSTRING ; [+2]
       35 GETIMPORT                        R12 K15 [tostring]
       37 CALL                             R12 -1 1
       38 SETTABLEKS                       R12 R11 K8 ["maxSurfaceArea"]
       40 NAMECALL                         R8 R0 K16 ["fail"]
       42 CALL                             R8 3 0
       43 FORGLOOP                         R2 2 ; [-39]
       45 RETURN                           R0 0

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
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K14 ["flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFIntMaxTotalSurfaceArea"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateMeshGeometry"]
       49 CALL                             R6 1 1
       50 NEWTABLE                         R7 8 0
       52 SETTABLEKS                       R6 R7 K17 ["fflag"]
       54 NEWTABLE                         R8 0 4
       56 GETTABLEKS                       R9 R3 K18 ["UploadCategory"]
       58 GETTABLEKS                       R9 R9 K19 ["LAYERED_CLOTHING"]
       60 GETTABLEKS                       R10 R3 K18 ["UploadCategory"]
       62 GETTABLEKS                       R10 R10 K20 ["RIGID_ACCESSORY"]
       64 GETTABLEKS                       R11 R3 K18 ["UploadCategory"]
       66 GETTABLEKS                       R11 R11 K21 ["TORSO_AND_LIMBS"]
       68 GETTABLEKS                       R12 R3 K18 ["UploadCategory"]
       70 GETTABLEKS                       R12 R12 K22 ["DYNAMIC_HEAD"]
       72 SETLIST                          R8 R9 4 [1]
       74 SETTABLEKS                       R8 R7 K23 ["categories"]
       76 NEWTABLE                         R8 0 1
       78 GETTABLEKS                       R9 R3 K24 ["SharedDataMember"]
       80 GETTABLEKS                       R9 R9 K25 ["renderMeshesData"]
       82 SETLIST                          R8 R9 1 [1]
       84 SETTABLEKS                       R8 R7 K26 ["requiredData"]
       86 NEWTABLE                         R8 0 0
       88 SETTABLEKS                       R8 R7 K27 ["expectedFailures"]
       90 DUPCLOSURE                       R8 K28 [PROTO_0]
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R8 R7 K29 ["run"]
       96 RETURN                           R7 1
