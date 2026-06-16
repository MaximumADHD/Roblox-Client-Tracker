PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["MeshPart"]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 GETUPVAL                         R8 1
        8 CALL                             R8 0 1
        9 JUMPIFNOT                        R8 ; [+4]
       10 MOVE                             R10 R7
       11 NAMECALL                         R8 R0 K2 ["setReportingInstance"]
       13 CALL                             R8 2 0
       14 GETUPVAL                         R8 2
       15 GETTABLEKS                       R8 R8 K3 ["getAvatarBoneSchema"]
       17 GETTABLEKS                       R9 R7 K4 ["Name"]
       19 CALL                             R8 1 1
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K5 ["getNameWhitelistOfClassInSchema"]
       23 MOVE                             R10 R8
       24 LOADK                            R11 K6 ["Attachment"]
       25 CALL                             R9 2 1
       26 MOVE                             R10 R9
       27 LOADNIL                          R11
       28 LOADNIL                          R12
       29 FORGPREP                         R10
       30 JUMPIFNOT                        R14 ; [+27]
       31 GETUPVAL                         R15 3
       32 MOVE                             R16 R7
       33 MOVE                             R17 R13
       34 CALL                             R15 2 1
       35 LENGTH                           R16 R15
       36 JUMPIFNOTEQKN                    R16 K7 [1] ; [+6]
       38 GETTABLEN                        R16 R15 1
       39 GETTABLEKS                       R16 R16 K8 ["ClassName"]
       41 JUMPIFEQKS                       R16 K6 ["Attachment"] ; [+16]
       43 GETUPVAL                         R18 4
       44 GETTABLEKS                       R18 R18 K9 ["Keys"]
       46 GETTABLEKS                       R18 R18 K10 ["MissingRequiredAttachment"]
       48 DUPTABLE                         R19 K13 [{"attName", "partName"}]
       49 SETTABLEKS                       R13 R19 K11 ["attName"]
       51 GETTABLEKS                       R20 R7 K4 ["Name"]
       53 SETTABLEKS                       R20 R19 K12 ["partName"]
       55 NAMECALL                         R16 R0 K14 ["fail"]
       57 CALL                             R16 3 0
       58 FORGLOOP                         R10 2 ; [-29]
       60 FORGLOOP                         R3 2 ; [-54]
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K12 ["getAllInstancesIsA"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K13 ["getAllInstancesWithName"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K14 ["R15plusUtils"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 4 0
       60 NEWTABLE                         R9 0 2
       62 GETTABLEKS                       R10 R2 K15 ["UploadCategory"]
       64 GETTABLEKS                       R10 R10 K16 ["TORSO_AND_LIMBS"]
       66 GETTABLEKS                       R11 R2 K15 ["UploadCategory"]
       68 GETTABLEKS                       R11 R11 K17 ["DYNAMIC_HEAD"]
       70 SETLIST                          R9 R10 2 [1]
       72 SETTABLEKS                       R9 R8 K18 ["categories"]
       74 NEWTABLE                         R9 0 1
       76 GETTABLEKS                       R10 R2 K19 ["SharedDataMember"]
       78 GETTABLEKS                       R10 R10 K20 ["rootInstance"]
       80 SETLIST                          R9 R10 1 [1]
       82 SETTABLEKS                       R9 R8 K21 ["requiredData"]
       84 GETTABLEKS                       R9 R7 K22 ["checkFlagEnabledForAllowHrd"]
       86 SETTABLEKS                       R9 R8 K23 ["fflag"]
       88 DUPCLOSURE                       R9 K24 [PROTO_0]
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R9 R8 K25 ["run"]
       96 RETURN                           R8 1
