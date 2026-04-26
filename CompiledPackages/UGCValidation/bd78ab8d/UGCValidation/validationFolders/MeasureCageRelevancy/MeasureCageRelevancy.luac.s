PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R3 R4 K1 ["Measure_Cage_Relevancy"]
        4 GETTABLEKS                       R2 R3 K2 ["Handle_OuterCage"]
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETTABLEKS                       R4 R2 K3 ["outer_cage_face_relevant_percent"]
       10 FASTCALL1                        TONUMBER R4 ; [+2]
       11 GETIMPORT                        R3 K5 [tonumber]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+10]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K6 ["Keys"]
       19 GETTABLEKS                       R6 R7 K7 ["AQSInputDataError"]
       21 NAMECALL                         R4 R0 K8 ["fail"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0
       25 MULK                             R4 R3 K9 [100]
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTLT                      R4 R5 ; [+14]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K6 ["Keys"]
       32 GETTABLEKS                       R6 R7 K10 ["MeasureCageRelevancy"]
       34 DUPTABLE                         R7 K12 [{"outer_cage_face_irrelevant_percent"}]
       35 MULK                             R9 R3 K9 [100]
       36 SUBRK                            R8 R9 K9 [100]
       37 SETTABLEKS                       R8 R7 K11 ["outer_cage_face_irrelevant_percent"]
       39 NAMECALL                         R4 R0 K8 ["fail"]
       41 CALL                             R4 3 0
       42 RETURN                           R0 0

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
       32 LOADK                            R6 K12 ["UGCMinCageRelevancyThreshold"]
       33 LOADN                            R7 40
       34 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       36 CALL                             R4 3 1
       37 NEWTABLE                         R5 4 0
       39 NEWTABLE                         R6 0 1
       41 GETTABLEKS                       R8 R2 K14 ["UploadCategory"]
       43 GETTABLEKS                       R7 R8 K15 ["LAYERED_CLOTHING"]
       45 SETLIST                          R6 R7 1 [1]
       47 SETTABLEKS                       R6 R5 K16 ["categories"]
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R8 R0 K17 ["flags"]
       53 GETTABLEKS                       R7 R8 K18 ["getFFlagUGCValidateAQCageQualityLC"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K19 ["fflag"]
       58 DUPTABLE                         R6 K21 [{"Measure_Cage_Relevancy"}]
       59 NEWTABLE                         R7 0 0
       61 SETTABLEKS                       R7 R6 K20 ["Measure_Cage_Relevancy"]
       63 SETTABLEKS                       R6 R5 K22 ["expectedAqsData"]
       65 DUPCLOSURE                       R6 K23 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K24 ["run"]
       70 RETURN                           R5 1
