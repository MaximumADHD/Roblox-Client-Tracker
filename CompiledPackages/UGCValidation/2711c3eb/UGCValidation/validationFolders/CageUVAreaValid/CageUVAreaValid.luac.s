PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["outerCagesData"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R9 R6 K1 ["editable"]
        8 NAMECALL                         R7 R7 K2 ["ValidateEditableMeshCageUVTriangleArea"]
       10 CALL                             R7 2 1
       11 JUMPIF                           R7 ; [+11]
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R10 R10 K3 ["Keys"]
       15 GETTABLEKS                       R10 R10 K4 ["CageUV_ZeroAreaTriangle"]
       17 DUPTABLE                         R11 K6 [{"partName"}]
       18 SETTABLEKS                       R5 R11 K5 ["partName"]
       20 NAMECALL                         R8 R0 K7 ["fail"]
       22 CALL                             R8 3 0
       23 FORGLOOP                         R2 2 ; [-19]
       25 RETURN                           R0 0

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
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateCageUV"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 8 0
       45 NEWTABLE                         R7 0 2
       47 GETTABLEKS                       R8 R3 K16 ["UploadCategory"]
       49 GETTABLEKS                       R8 R8 K17 ["TORSO_AND_LIMBS"]
       51 GETTABLEKS                       R9 R3 K16 ["UploadCategory"]
       53 GETTABLEKS                       R9 R9 K18 ["DYNAMIC_HEAD"]
       55 SETLIST                          R7 R8 2 [1]
       57 SETTABLEKS                       R7 R6 K19 ["categories"]
       59 NEWTABLE                         R7 0 1
       61 GETTABLEKS                       R8 R3 K20 ["SharedDataMember"]
       63 GETTABLEKS                       R8 R8 K21 ["outerCagesData"]
       65 SETLIST                          R7 R8 1 [1]
       67 SETTABLEKS                       R7 R6 K22 ["requiredData"]
       69 NEWTABLE                         R7 0 0
       71 SETTABLEKS                       R7 R6 K23 ["conditionalData"]
       73 SETTABLEKS                       R5 R6 K24 ["fflag"]
       75 NEWTABLE                         R7 0 0
       77 SETTABLEKS                       R7 R6 K25 ["expectedFailures"]
       79 DUPCLOSURE                       R7 K26 [PROTO_0]
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R7 R6 K27 ["run"]
       84 RETURN                           R6 1
