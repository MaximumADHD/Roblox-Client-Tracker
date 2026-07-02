PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Cage_Relevancy"]
        4 GETTABLEKS                       R2 R2 K2 ["Handle_OuterCage"]
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETTABLEKS                       R4 R2 K3 ["outer_cage_face_relevant_percent"]
       10 FASTCALL1                        TONUMBER R4 ; [+2]
       11 GETIMPORT                        R3 K5 [tonumber]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+10]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["Keys"]
       19 GETTABLEKS                       R6 R6 K7 ["AQSInputDataError"]
       21 NAMECALL                         R4 R0 K8 ["fail"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0
       25 MULK                             R4 R3 K9 [100]
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTLT                      R4 R5 ; [+18]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K6 ["Keys"]
       32 GETTABLEKS                       R6 R6 K10 ["MeasureCageRelevancy"]
       34 DUPTABLE                         R7 K12 [{"outer_cage_face_irrelevant_percent"}]
       35 GETIMPORT                        R8 K15 [string.format]
       37 LOADK                            R9 K16 ["%.2f"]
       38 MULK                             R11 R3 K9 [100]
       39 SUBRK                            R10 K9 [100] R11
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K11 ["outer_cage_face_irrelevant_percent"]
       43 NAMECALL                         R4 R0 K8 ["fail"]
       45 CALL                             R4 3 0
       46 GETUPVAL                         R4 2
       47 CALL                             R4 0 1
       48 JUMPIFNOT                        R4 ; [+53]
       49 GETTABLEKS                       R4 R2 K17 ["score"]
       51 JUMPIFEQKNIL                     R4 ; [+50]
       53 GETTABLEKS                       R5 R2 K17 ["score"]
       55 FASTCALL1                        TONUMBER R5 ; [+2]
       56 GETIMPORT                        R4 K5 [tonumber]
       58 CALL                             R4 1 1
       59 JUMPIFEQKN                       R4 K9 [100] ; [+42]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K6 ["Keys"]
       64 GETTABLEKS                       R6 R6 K18 ["AQSWarn_CageRelevancy"]
       66 DUPTABLE                         R7 K20 [{"score", "irrelevant_percent"}]
       67 GETTABLEKS                       R12 R2 K17 ["score"]
       69 FASTCALL1                        TONUMBER R12 ; [+2]
       70 GETIMPORT                        R11 K5 [tonumber]
       72 CALL                             R11 1 1
       73 ORK                              R10 R11 K21 [0]
       74 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       75 GETIMPORT                        R9 K24 [math.floor]
       77 CALL                             R9 1 1
       78 FASTCALL1                        TOSTRING R9 ; [+2]
       79 GETIMPORT                        R8 K26 [tostring]
       81 CALL                             R8 1 1
       82 SETTABLEKS                       R8 R7 K17 ["score"]
       84 GETIMPORT                        R8 K15 [string.format]
       86 LOADK                            R9 K16 ["%.2f"]
       87 GETTABLEKS                       R14 R2 K3 ["outer_cage_face_relevant_percent"]
       89 FASTCALL1                        TONUMBER R14 ; [+2]
       90 GETIMPORT                        R13 K5 [tonumber]
       92 CALL                             R13 1 1
       93 ORK                              R12 R13 K21 [0]
       94 MULK                             R11 R12 K9 [100]
       95 SUBRK                            R10 K9 [100] R11
       96 CALL                             R8 2 1
       97 SETTABLEKS                       R8 R7 K19 ["irrelevant_percent"]
       99 NAMECALL                         R4 R0 K27 ["warn"]
      101 CALL                             R4 3 0
      102 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateAQScoreWarnings"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K13 [game]
       39 LOADK                            R7 K14 ["UGCMinCageRelevancyThreshold"]
       40 LOADN                            R8 40
       41 NAMECALL                         R5 R5 K15 ["DefineFastInt"]
       43 CALL                             R5 3 1
       44 NEWTABLE                         R6 4 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K16 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K17 ["LAYERED_CLOTHING"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K18 ["categories"]
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K10 ["flags"]
       60 GETTABLEKS                       R8 R8 K19 ["getFFlagUGCValidateAQCageQualityLC"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K20 ["fflag"]
       65 DUPCLOSURE                       R7 K21 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R7 R6 K22 ["run"]
       71 RETURN                           R6 1
