PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R1 K0 ["innerCagesData"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 DUPTABLE                         R11 K3 [{"name", "data"}]
       10 MOVE                             R13 R7
       11 LOADK                            R14 K4 [" (inner cage)"]
       12 CONCAT                           R12 R13 R14
       13 SETTABLEKS                       R12 R11 K1 ["name"]
       15 SETTABLEKS                       R8 R11 K2 ["data"]
       17 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       19 MOVE                             R10 R3
       20 GETIMPORT                        R9 K7 [table.insert]
       22 CALL                             R9 2 0
       23 FORGLOOP                         R4 2 ; [-15]
       25 GETTABLEKS                       R4 R1 K8 ["outerCagesData"]
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 DUPTABLE                         R11 K3 [{"name", "data"}]
       31 MOVE                             R13 R7
       32 LOADK                            R14 K9 [" (outer cage)"]
       33 CONCAT                           R12 R13 R14
       34 SETTABLEKS                       R12 R11 K1 ["name"]
       36 SETTABLEKS                       R8 R11 K2 ["data"]
       38 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       40 MOVE                             R10 R3
       41 GETIMPORT                        R9 K7 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R4 2 ; [-15]
       46 MOVE                             R4 R3
       47 LOADNIL                          R5
       48 LOADNIL                          R6
       49 FORGPREP                         R4
       50 GETUPVAL                         R9 1
       51 GETTABLEKS                       R11 R8 K2 ["data"]
       53 GETTABLEKS                       R11 R11 K10 ["editable"]
       55 LOADK                            R12 K11 [{1, 1, 1}]
       56 NAMECALL                         R9 R9 K12 ["GetEditableMeshVerticesSimilarityRate"]
       58 CALL                             R9 3 1
       59 MULK                             R11 R9 K13 [100]
       60 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       61 GETIMPORT                        R10 K16 [math.floor]
       63 CALL                             R10 1 1
       64 JUMPIFNOTLT                      R2 R10 ; [+28]
       66 GETUPVAL                         R13 2
       67 GETTABLEKS                       R13 R13 K17 ["Keys"]
       69 GETTABLEKS                       R13 R13 K18 ["VerticesNotCoincident_TooManySimilar"]
       71 DUPTABLE                         R14 K22 [{"cageName", "percentage", "threshold"}]
       72 GETTABLEKS                       R15 R8 K1 ["name"]
       74 SETTABLEKS                       R15 R14 K19 ["cageName"]
       76 FASTCALL1                        TOSTRING R10 ; [+3]
       77 MOVE                             R16 R10
       78 GETIMPORT                        R15 K24 [tostring]
       80 CALL                             R15 1 1
       81 SETTABLEKS                       R15 R14 K20 ["percentage"]
       83 FASTCALL1                        TOSTRING R2 ; [+3]
       84 MOVE                             R16 R2
       85 GETIMPORT                        R15 K24 [tostring]
       87 CALL                             R15 1 1
       88 SETTABLEKS                       R15 R14 K21 ["threshold"]
       90 NAMECALL                         R11 R0 K25 ["fail"]
       92 CALL                             R11 3 0
       93 FORGLOOP                         R4 2 ; [-44]
       95 RETURN                           R0 0

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
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateCageGeometry"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFIntUGCLCCageVerticesSimilarityMaximum"]
       49 CALL                             R6 1 1
       50 NEWTABLE                         R7 8 0
       52 SETTABLEKS                       R5 R7 K17 ["fflag"]
       54 NEWTABLE                         R8 0 1
       56 GETTABLEKS                       R9 R3 K18 ["UploadCategory"]
       58 GETTABLEKS                       R9 R9 K19 ["LAYERED_CLOTHING"]
       60 SETLIST                          R8 R9 1 [1]
       62 SETTABLEKS                       R8 R7 K20 ["categories"]
       64 NEWTABLE                         R8 0 2
       66 GETTABLEKS                       R9 R3 K21 ["SharedDataMember"]
       68 GETTABLEKS                       R9 R9 K22 ["innerCagesData"]
       70 GETTABLEKS                       R10 R3 K21 ["SharedDataMember"]
       72 GETTABLEKS                       R10 R10 K23 ["outerCagesData"]
       74 SETLIST                          R8 R9 2 [1]
       76 SETTABLEKS                       R8 R7 K24 ["requiredData"]
       78 NEWTABLE                         R8 0 0
       80 SETTABLEKS                       R8 R7 K25 ["expectedFailures"]
       82 DUPCLOSURE                       R8 K26 [PROTO_0]
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R4
       86 SETTABLEKS                       R8 R7 K27 ["run"]
       88 RETURN                           R7 1
