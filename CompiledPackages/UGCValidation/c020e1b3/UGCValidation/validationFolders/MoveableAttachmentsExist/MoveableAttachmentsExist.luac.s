PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["MeshPart"]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K2 ["getAvatarBoneSchema"]
       10 GETTABLEKS                       R9 R7 K3 ["Name"]
       12 CALL                             R8 1 1
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K4 ["getNameWhitelistOfClassInSchema"]
       16 MOVE                             R10 R8
       17 LOADK                            R11 K5 ["Attachment"]
       18 CALL                             R9 2 1
       19 MOVE                             R10 R9
       20 LOADNIL                          R11
       21 LOADNIL                          R12
       22 FORGPREP                         R10
       23 JUMPIFNOT                        R14 ; [+27]
       24 GETUPVAL                         R15 2
       25 MOVE                             R16 R7
       26 MOVE                             R17 R13
       27 CALL                             R15 2 1
       28 LENGTH                           R16 R15
       29 JUMPIFNOTEQKN                    R16 K6 [1] ; [+6]
       31 GETTABLEN                        R16 R15 1
       32 GETTABLEKS                       R16 R16 K7 ["ClassName"]
       34 JUMPIFEQKS                       R16 K5 ["Attachment"] ; [+16]
       36 GETUPVAL                         R18 3
       37 GETTABLEKS                       R18 R18 K8 ["Keys"]
       39 GETTABLEKS                       R18 R18 K9 ["MissingRequiredAttachment"]
       41 DUPTABLE                         R19 K12 [{"attName", "partName"}]
       42 SETTABLEKS                       R13 R19 K10 ["attName"]
       44 GETTABLEKS                       R20 R7 K3 ["Name"]
       46 SETTABLEKS                       R20 R19 K11 ["partName"]
       48 NAMECALL                         R16 R0 K13 ["fail"]
       50 CALL                             R16 3 0
       51 FORGLOOP                         R10 2 ; [-29]
       53 FORGLOOP                         R3 2 ; [-47]
       55 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["getAllInstancesIsA"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["getAllInstancesWithName"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K12 ["R15plusUtils"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 4 0
       53 NEWTABLE                         R8 0 2
       55 GETTABLEKS                       R9 R2 K13 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K14 ["TORSO_AND_LIMBS"]
       59 GETTABLEKS                       R10 R2 K13 ["UploadCategory"]
       61 GETTABLEKS                       R10 R10 K15 ["DYNAMIC_HEAD"]
       63 SETLIST                          R8 R9 2 [1]
       65 SETTABLEKS                       R8 R7 K16 ["categories"]
       67 NEWTABLE                         R8 0 1
       69 GETTABLEKS                       R9 R2 K17 ["SharedDataMember"]
       71 GETTABLEKS                       R9 R9 K18 ["rootInstance"]
       73 SETLIST                          R8 R9 1 [1]
       75 SETTABLEKS                       R8 R7 K19 ["requiredData"]
       77 GETTABLEKS                       R8 R6 K20 ["checkFlagEnabledForAllowHrd"]
       79 SETTABLEKS                       R8 R7 K21 ["fflag"]
       81 DUPCLOSURE                       R8 K22 [PROTO_0]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R8 R7 K23 ["run"]
       88 RETURN                           R7 1
