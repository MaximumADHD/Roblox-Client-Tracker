PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Cage_Mesh_Distance"]
        4 GETTABLEKS                       R2 R2 K2 ["Handle_OuterCage"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETTABLEKS                       R3 R2 K3 ["max_distance"]
       10 JUMPIFEQKNIL                     R3 ; [+5]
       12 GETTABLEKS                       R3 R2 K4 ["negative_sdf_percent"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+10]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K5 ["Keys"]
       19 GETTABLEKS                       R5 R5 K6 ["AQSInputDataError"]
       21 NAMECALL                         R3 R0 K7 ["fail"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R2 K3 ["max_distance"]
       27 FASTCALL1                        TONUMBER R4 ; [+2]
       28 GETIMPORT                        R3 K9 [tonumber]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R5 1
       32 DIVK                             R4 R5 K10 [100]
       33 JUMPIFNOTLT                      R4 R3 ; [+22]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K5 ["Keys"]
       38 GETTABLEKS                       R5 R5 K11 ["MeasureCageMeshDistance_CageTooFar"]
       40 DUPTABLE                         R6 K14 [{"max_sdf", "max_sdf_threshold"}]
       41 GETTABLEKS                       R8 R2 K3 ["max_distance"]
       43 FASTCALL1                        TONUMBER R8 ; [+2]
       44 GETIMPORT                        R7 K9 [tonumber]
       46 CALL                             R7 1 1
       47 SETTABLEKS                       R7 R6 K12 ["max_sdf"]
       49 GETUPVAL                         R8 1
       50 DIVK                             R7 R8 K10 [100]
       51 SETTABLEKS                       R7 R6 K13 ["max_sdf_threshold"]
       53 NAMECALL                         R3 R0 K7 ["fail"]
       55 CALL                             R3 3 0
       56 GETTABLEKS                       R5 R2 K4 ["negative_sdf_percent"]
       58 FASTCALL1                        TONUMBER R5 ; [+2]
       59 GETIMPORT                        R4 K9 [tonumber]
       61 CALL                             R4 1 1
       62 MULK                             R3 R4 K10 [100]
       63 GETUPVAL                         R4 2
       64 JUMPIFNOTLT                      R4 R3 ; [+19]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K5 ["Keys"]
       69 GETTABLEKS                       R5 R5 K15 ["MeasureCageMeshDistance_CageInsideMesh"]
       71 DUPTABLE                         R6 K17 [{"negtiveSDFPercent"}]
       72 GETTABLEKS                       R9 R2 K4 ["negative_sdf_percent"]
       74 FASTCALL1                        TONUMBER R9 ; [+2]
       75 GETIMPORT                        R8 K9 [tonumber]
       77 CALL                             R8 1 1
       78 MULK                             R7 R8 K10 [100]
       79 SETTABLEKS                       R7 R6 K16 ["negtiveSDFPercent"]
       81 NAMECALL                         R3 R0 K7 ["fail"]
       83 CALL                             R3 3 0
       84 RETURN                           R0 0

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
       30 GETIMPORT                        R4 K11 [game]
       32 LOADK                            R6 K12 ["UGCValidationCageMeshDistanceMaxCageMeshDistanceLC"]
       33 LOADN                            R7 60
       34 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       36 CALL                             R4 3 1
       37 GETIMPORT                        R5 K11 [game]
       39 LOADK                            R7 K14 ["UGCValidationCageMeshDistanceMaxNegativeSDFThresholdLC"]
       40 LOADN                            R8 30
       41 NAMECALL                         R5 R5 K13 ["DefineFastInt"]
       43 CALL                             R5 3 1
       44 NEWTABLE                         R6 4 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K15 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K16 ["LAYERED_CLOTHING"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K17 ["categories"]
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K18 ["flags"]
       60 GETTABLEKS                       R8 R8 K19 ["getFFlagUGCValidateAQCageQualityLC"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K20 ["fflag"]
       65 DUPTABLE                         R7 K22 [{"Measure_Cage_Mesh_Distance"}]
       66 NEWTABLE                         R8 0 0
       68 SETTABLEKS                       R8 R7 K21 ["Measure_Cage_Mesh_Distance"]
       70 SETTABLEKS                       R7 R6 K23 ["expectedAqsData"]
       72 DUPCLOSURE                       R7 K24 [PROTO_0]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R7 R6 K25 ["run"]
       78 RETURN                           R6 1
