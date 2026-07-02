PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["outerCagesData"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R5
        7 JUMPIFNOT                        R7 ; [+19]
        8 GETUPVAL                         R8 1
        9 MOVE                             R10 R7
       10 GETTABLEKS                       R11 R6 K1 ["editable"]
       12 NAMECALL                         R8 R8 K2 ["ValidateEditableMeshUVValuesInReference"]
       14 CALL                             R8 3 1
       15 JUMPIF                           R8 ; [+11]
       16 GETUPVAL                         R11 2
       17 GETTABLEKS                       R11 R11 K3 ["Keys"]
       19 GETTABLEKS                       R11 R11 K4 ["CageUV_InvalidUVValue"]
       21 DUPTABLE                         R12 K6 [{"partName"}]
       22 SETTABLEKS                       R5 R12 K5 ["partName"]
       24 NAMECALL                         R9 R0 K7 ["fail"]
       26 CALL                             R9 3 0
       27 FORGLOOP                         R2 2 ; [-23]
       29 RETURN                           R0 0

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
       38 GETTABLEKS                       R6 R1 K14 ["WrapTargetCageUVReferenceValues"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K8 [require]
       43 GETTABLEKS                       R7 R1 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateCageUV"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 8 0
       50 NEWTABLE                         R8 0 2
       52 GETTABLEKS                       R9 R3 K17 ["UploadCategory"]
       54 GETTABLEKS                       R9 R9 K18 ["TORSO_AND_LIMBS"]
       56 GETTABLEKS                       R10 R3 K17 ["UploadCategory"]
       58 GETTABLEKS                       R10 R10 K19 ["DYNAMIC_HEAD"]
       60 SETLIST                          R8 R9 2 [1]
       62 SETTABLEKS                       R8 R7 K20 ["categories"]
       64 NEWTABLE                         R8 0 1
       66 GETTABLEKS                       R9 R3 K21 ["SharedDataMember"]
       68 GETTABLEKS                       R9 R9 K22 ["outerCagesData"]
       70 SETLIST                          R8 R9 1 [1]
       72 SETTABLEKS                       R8 R7 K23 ["requiredData"]
       74 NEWTABLE                         R8 0 0
       76 SETTABLEKS                       R8 R7 K24 ["conditionalData"]
       78 SETTABLEKS                       R6 R7 K25 ["fflag"]
       80 NEWTABLE                         R8 0 0
       82 SETTABLEKS                       R8 R7 K26 ["expectedFailures"]
       84 DUPCLOSURE                       R8 K27 [PROTO_0]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R8 R7 K28 ["run"]
       90 RETURN                           R7 1
