PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["outerCagesData"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R8 R8 K1 ["WRAP_TARGET_CAGE_MESH_UV_COUNTS"]
        8 GETTABLE                         R7 R8 R5
        9 JUMPIFNOT                        R7 ; [+40]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R10 R6 K2 ["editable"]
       13 NAMECALL                         R8 R8 K3 ["CalculateEditableMeshUniqueUVCount"]
       15 CALL                             R8 2 1
       16 SUB                              R10 R8 R7
       17 FASTCALL1                        MATH_ABS R10 ; [+2]
       18 GETIMPORT                        R9 K6 [math.abs]
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 2
       22 CALL                             R10 0 1
       23 JUMPIFNOTLT                      R10 R9 ; [+26]
       25 GETUPVAL                         R11 3
       26 GETTABLEKS                       R11 R11 K7 ["Keys"]
       28 GETTABLEKS                       R11 R11 K8 ["CageUV_IncorrectUVCount"]
       30 DUPTABLE                         R12 K12 [{"partName", "requiredUVCount", "actualUVCount"}]
       31 SETTABLEKS                       R5 R12 K9 ["partName"]
       33 FASTCALL1                        TOSTRING R7 ; [+3]
       34 MOVE                             R14 R7
       35 GETIMPORT                        R13 K14 [tostring]
       37 CALL                             R13 1 1
       38 SETTABLEKS                       R13 R12 K10 ["requiredUVCount"]
       40 FASTCALL1                        TOSTRING R8 ; [+3]
       41 MOVE                             R14 R8
       42 GETIMPORT                        R13 K14 [tostring]
       44 CALL                             R13 1 1
       45 SETTABLEKS                       R13 R12 K11 ["actualUVCount"]
       47 NAMECALL                         R9 R0 K15 ["fail"]
       49 CALL                             R9 3 0
       50 FORGLOOP                         R2 2 ; [-46]
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
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateCageUV"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K15 ["flags"]
       52 GETTABLEKS                       R8 R8 K17 ["getFIntUniqueUVTolerance"]
       54 CALL                             R7 1 1
       55 NEWTABLE                         R8 8 0
       57 NEWTABLE                         R9 0 2
       59 GETTABLEKS                       R10 R4 K18 ["UploadCategory"]
       61 GETTABLEKS                       R10 R10 K19 ["TORSO_AND_LIMBS"]
       63 GETTABLEKS                       R11 R4 K18 ["UploadCategory"]
       65 GETTABLEKS                       R11 R11 K20 ["DYNAMIC_HEAD"]
       67 SETLIST                          R9 R10 2 [1]
       69 SETTABLEKS                       R9 R8 K21 ["categories"]
       71 NEWTABLE                         R9 0 1
       73 GETTABLEKS                       R10 R4 K22 ["SharedDataMember"]
       75 GETTABLEKS                       R10 R10 K23 ["outerCagesData"]
       77 SETLIST                          R9 R10 1 [1]
       79 SETTABLEKS                       R9 R8 K24 ["requiredData"]
       81 NEWTABLE                         R9 0 0
       83 SETTABLEKS                       R9 R8 K25 ["conditionalData"]
       85 SETTABLEKS                       R6 R8 K26 ["fflag"]
       87 NEWTABLE                         R9 0 0
       89 SETTABLEKS                       R9 R8 K27 ["expectedFailures"]
       91 DUPCLOSURE                       R9 K28 [PROTO_0]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R9 R8 K29 ["run"]
       98 RETURN                           R8 1
