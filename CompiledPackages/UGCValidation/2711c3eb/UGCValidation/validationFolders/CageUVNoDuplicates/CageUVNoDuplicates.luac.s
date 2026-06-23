PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETUPVAL                         R9 1
        6 GETTABLEKS                       R10 R6 K0 ["editable"]
        8 NAMECALL                         R7 R7 K1 ["ValidateEditableMeshUVDuplicates"]
       10 CALL                             R7 3 1
       11 GETUPVAL                         R8 2
       12 CALL                             R8 0 1
       13 JUMPIFNOTLT                      R8 R7 ; [+26]
       15 GETUPVAL                         R8 3
       16 GETUPVAL                         R10 4
       17 GETTABLEKS                       R10 R10 K2 ["Keys"]
       19 GETTABLEKS                       R10 R10 K3 ["CageUV_ExtraDuplicateUVs"]
       21 DUPTABLE                         R11 K7 [{"count", "cageType", "partName"}]
       22 FASTCALL1                        TOSTRING R7 ; [+3]
       23 MOVE                             R13 R7
       24 GETIMPORT                        R12 K9 [tostring]
       26 CALL                             R12 1 1
       27 SETTABLEKS                       R12 R11 K4 ["count"]
       29 JUMPIFNOT                        R1 ; [+2]
       30 LOADK                            R12 K10 ["inner"]
       31 JUMP                             ; [+1]
       32 LOADK                            R12 K11 ["outer"]
       33 SETTABLEKS                       R12 R11 K5 ["cageType"]
       35 SETTABLEKS                       R5 R11 K6 ["partName"]
       37 NAMECALL                         R8 R8 K12 ["fail"]
       39 CALL                             R8 3 0
       40 FORGLOOP                         R2 2 ; [-37]
       42 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 GETUPVAL                         R4 0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETIMPORT                        R8 K1 [pairs]
        9 MOVE                             R9 R7
       10 CALL                             R8 1 3
       11 FORGPREP_NEXT                    R8
       12 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       14 MOVE                             R14 R2
       15 MOVE                             R15 R12
       16 GETIMPORT                        R13 K4 [table.insert]
       18 CALL                             R13 2 0
       19 FORGLOOP                         R8 2 ; [-8]
       21 FORGLOOP                         R3 2 ; [-15]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 MOVE                             R4 R3
       30 GETTABLEKS                       R5 R1 K5 ["innerCagesData"]
       32 LOADB                            R6 1
       33 CALL                             R4 2 0
       34 MOVE                             R4 R3
       35 GETTABLEKS                       R5 R1 K6 ["outerCagesData"]
       37 LOADB                            R6 0
       38 CALL                             R4 2 0
       39 RETURN                           R0 0

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
       48 GETIMPORT                        R7 K8 [require]
       50 GETTABLEKS                       R8 R1 K15 ["flags"]
       52 GETTABLEKS                       R8 R8 K17 ["getFIntUGCValidateCageDuplicateUVThreshold"]
       54 CALL                             R7 1 1
       55 NEWTABLE                         R8 8 0
       57 NEWTABLE                         R9 0 1
       59 GETTABLEKS                       R10 R3 K18 ["UploadCategory"]
       61 GETTABLEKS                       R10 R10 K19 ["LAYERED_CLOTHING"]
       63 SETLIST                          R9 R10 1 [1]
       65 SETTABLEKS                       R9 R8 K20 ["categories"]
       67 NEWTABLE                         R9 0 2
       69 GETTABLEKS                       R10 R3 K21 ["SharedDataMember"]
       71 GETTABLEKS                       R10 R10 K22 ["innerCagesData"]
       73 GETTABLEKS                       R11 R3 K21 ["SharedDataMember"]
       75 GETTABLEKS                       R11 R11 K23 ["outerCagesData"]
       77 SETLIST                          R9 R10 2 [1]
       79 SETTABLEKS                       R9 R8 K24 ["requiredData"]
       81 NEWTABLE                         R9 0 0
       83 SETTABLEKS                       R9 R8 K25 ["conditionalData"]
       85 SETTABLEKS                       R6 R8 K26 ["fflag"]
       87 NEWTABLE                         R9 0 0
       89 SETTABLEKS                       R9 R8 K27 ["expectedFailures"]
       91 DUPCLOSURE                       R9 K28 [PROTO_1]
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R9 R8 K29 ["run"]
       98 RETURN                           R8 1
