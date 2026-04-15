PROTO_0:
        0 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        2 GETTABLEKS                       R2 R3 K0 ["Head"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R6 R2 K2 ["editable"]
        7 NAMECALL                         R4 R4 K3 ["GetMinAndMaxMeshSizeAcrossAllFacs"]
        9 CALL                             R4 2 -1
       10 FASTCALL                         TABLE_UNPACK ; [+2]
       11 GETIMPORT                        R3 K5 [unpack]
       13 CALL                             R3 -1 2
       14 LOADN                            R7 100
       15 MUL                              R6 R7 R3
       16 GETTABLEKS                       R7 R2 K6 ["originalSize"]
       18 DIV                              R5 R6 R7
       19 GETTABLEKS                       R8 R5 K7 ["X"]
       21 GETTABLEKS                       R9 R5 K8 ["Y"]
       23 GETTABLEKS                       R10 R5 K9 ["Z"]
       25 FASTCALL                         MATH_MIN ; [+2]
       26 GETIMPORT                        R7 K12 [math.min]
       28 CALL                             R7 3 1
       29 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       30 GETIMPORT                        R6 K14 [math.floor]
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 1
       34 JUMPIFNOTLT                      R6 R7 ; [+12]
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R10 R11 K15 ["Keys"]
       39 GETTABLEKS                       R9 R10 K16 ["FacsShrinksHead"]
       41 DUPTABLE                         R10 K18 [{"modPercent"}]
       42 SETTABLEKS                       R6 R10 K17 ["modPercent"]
       44 NAMECALL                         R7 R0 K19 ["fail"]
       46 CALL                             R7 3 0
       47 LOADN                            R9 100
       48 MUL                              R8 R9 R4
       49 GETTABLEKS                       R9 R2 K6 ["originalSize"]
       51 DIV                              R7 R8 R9
       52 GETTABLEKS                       R10 R7 K7 ["X"]
       54 GETTABLEKS                       R11 R7 K8 ["Y"]
       56 GETTABLEKS                       R12 R7 K9 ["Z"]
       58 FASTCALL                         MATH_MAX ; [+2]
       59 GETIMPORT                        R9 K21 [math.max]
       61 CALL                             R9 3 1
       62 FASTCALL1                        MATH_CEIL R9 ; [+2]
       63 GETIMPORT                        R8 K23 [math.ceil]
       65 CALL                             R8 1 1
       66 GETUPVAL                         R9 3
       67 JUMPIFNOTLT                      R9 R8 ; [+12]
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R12 R13 K15 ["Keys"]
       72 GETTABLEKS                       R11 R12 K24 ["FacsExpandsHead"]
       74 DUPTABLE                         R12 K18 [{"modPercent"}]
       75 SETTABLEKS                       R8 R12 K17 ["modPercent"]
       77 NAMECALL                         R9 R0 K19 ["fail"]
       79 CALL                             R9 3 0
       80 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R5 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K11 [game]
       32 LOADK                            R6 K12 ["UGCValidationService"]
       33 NAMECALL                         R4 R4 K13 ["GetService"]
       35 CALL                             R4 2 1
       36 GETIMPORT                        R5 K11 [game]
       38 LOADK                            R7 K14 ["UGCValidationMinimumHeadSizePercentAcrossFacs"]
       39 LOADN                            R8 95
       40 NAMECALL                         R5 R5 K15 ["DefineFastInt"]
       42 CALL                             R5 3 1
       43 GETIMPORT                        R6 K11 [game]
       45 LOADK                            R8 K16 ["UGCValidationMaximumHeadSizePercentAcrossFacs"]
       46 LOADN                            R9 120
       47 NAMECALL                         R6 R6 K15 ["DefineFastInt"]
       49 CALL                             R6 3 1
       50 NEWTABLE                         R7 8 0
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K17 ["flags"]
       56 GETTABLEKS                       R9 R10 K18 ["getEngineFeatureEngineUGCValidateMinMaxMeshSizeAcrossAllFacs"]
       58 CALL                             R8 1 1
       59 SETTABLEKS                       R8 R7 K19 ["fflag"]
       61 NEWTABLE                         R8 0 1
       63 GETTABLEKS                       R10 R2 K20 ["UploadCategory"]
       65 GETTABLEKS                       R9 R10 K21 ["DYNAMIC_HEAD"]
       67 SETLIST                          R8 R9 1 [1]
       69 SETTABLEKS                       R8 R7 K22 ["categories"]
       71 NEWTABLE                         R8 0 1
       73 GETTABLEKS                       R10 R2 K23 ["SharedDataMember"]
       75 GETTABLEKS                       R9 R10 K24 ["renderMeshesData"]
       77 SETLIST                          R8 R9 1 [1]
       79 SETTABLEKS                       R8 R7 K25 ["requiredData"]
       81 NEWTABLE                         R8 0 2
       83 LOADK                            R9 K26 ["Asset_EF_HeadWithExpandingFacs"]
       84 LOADK                            R10 K27 ["Asset_EF_HeadWithShrinkingFacs"]
       85 SETLIST                          R8 R9 2 [1]
       87 SETTABLEKS                       R8 R7 K28 ["expectedFailures"]
       89 DUPCLOSURE                       R8 K29 [PROTO_0]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R8 R7 K30 ["run"]
       96 RETURN                           R7 1
