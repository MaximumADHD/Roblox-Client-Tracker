PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["uploadCategory"]
        2 LOADB                            R3 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["UploadCategory"]
        6 GETTABLEKS                       R4 R4 K2 ["TORSO_AND_LIMBS"]
        8 JUMPIFEQ                         R2 R4 ; [+10]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["UploadCategory"]
       13 GETTABLEKS                       R4 R4 K3 ["DYNAMIC_HEAD"]
       15 JUMPIFEQ                         R2 R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETTABLEKS                       R4 R1 K4 ["renderMeshesData"]
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETTABLEKS                       R9 R8 K5 ["editable"]
       26 GETUPVAL                         R10 1
       27 MOVE                             R12 R9
       28 MOVE                             R13 R3
       29 NAMECALL                         R10 R10 K6 ["ValidateEditableMeshVertColors"]
       31 CALL                             R10 3 1
       32 JUMPIF                           R10 ; [+17]
       33 GETUPVAL                         R13 2
       34 GETTABLEKS                       R13 R13 K7 ["Keys"]
       36 GETTABLEKS                       R13 R13 K8 ["VertexColors_NotOpaque"]
       38 DUPTABLE                         R14 K11 [{"MeshName", "TransparencyNote"}]
       39 SETTABLEKS                       R7 R14 K9 ["MeshName"]
       41 JUMPIFNOT                        R3 ; [+2]
       42 LOADK                            R15 K12 ["with no transparency"]
       43 JUMP                             ; [+1]
       44 LOADK                            R15 K13 [""]
       45 SETTABLEKS                       R15 R14 K10 ["TransparencyNote"]
       47 NAMECALL                         R11 R0 K14 ["fail"]
       49 CALL                             R11 3 0
       50 FORGLOOP                         R4 2 ; [-27]
       52 RETURN                           R0 0

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
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 8 0
       45 SETTABLEKS                       R5 R6 K16 ["fflag"]
       47 NEWTABLE                         R7 0 4
       49 GETTABLEKS                       R8 R3 K17 ["UploadCategory"]
       51 GETTABLEKS                       R8 R8 K18 ["TORSO_AND_LIMBS"]
       53 GETTABLEKS                       R9 R3 K17 ["UploadCategory"]
       55 GETTABLEKS                       R9 R9 K19 ["DYNAMIC_HEAD"]
       57 GETTABLEKS                       R10 R3 K17 ["UploadCategory"]
       59 GETTABLEKS                       R10 R10 K20 ["LAYERED_CLOTHING"]
       61 GETTABLEKS                       R11 R3 K17 ["UploadCategory"]
       63 GETTABLEKS                       R11 R11 K21 ["RIGID_ACCESSORY"]
       65 SETLIST                          R7 R8 4 [1]
       67 SETTABLEKS                       R7 R6 K22 ["categories"]
       69 NEWTABLE                         R7 0 1
       71 GETTABLEKS                       R8 R3 K23 ["SharedDataMember"]
       73 GETTABLEKS                       R8 R8 K24 ["renderMeshesData"]
       75 SETLIST                          R7 R8 1 [1]
       77 SETTABLEKS                       R7 R6 K25 ["requiredData"]
       79 NEWTABLE                         R7 0 0
       81 SETTABLEKS                       R7 R6 K26 ["expectedFailures"]
       83 DUPCLOSURE                       R7 K27 [PROTO_0]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R7 R6 K28 ["run"]
       89 RETURN                           R6 1
