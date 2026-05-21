PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Cage_UV_Avatar"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["R15_CAGE_PARTS"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLE                         R8 R2 R7
       11 JUMPIFEQKNIL                     R8 ; [+6]
       13 GETTABLE                         R8 R2 R7
       14 GETTABLEKS                       R8 R8 K3 ["incorrect_uv_count"]
       16 JUMPIFNOTEQKNIL                  R8 ; [+10]
       18 GETUPVAL                         R10 1
       19 GETTABLEKS                       R10 R10 K4 ["Keys"]
       21 GETTABLEKS                       R10 R10 K5 ["AQSInputDataError"]
       23 NAMECALL                         R8 R0 K6 ["fail"]
       25 CALL                             R8 2 0
       26 JUMP                             ; [+30]
       27 GETTABLE                         R9 R2 R7
       28 GETTABLEKS                       R9 R9 K3 ["incorrect_uv_count"]
       30 FASTCALL1                        TONUMBER R9 ; [+2]
       31 GETIMPORT                        R8 K8 [tonumber]
       33 CALL                             R8 1 1
       34 GETUPVAL                         R9 2
       35 JUMPIFNOTLT                      R9 R8 ; [+21]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K4 ["Keys"]
       40 GETTABLEKS                       R10 R10 K9 ["MeasureCageUV"]
       42 DUPTABLE                         R11 K11 [{"cage_name", "incorrect_uv_count"}]
       43 SETTABLEKS                       R7 R11 K10 ["cage_name"]
       45 GETTABLE                         R13 R2 R7
       46 GETTABLEKS                       R13 R13 K3 ["incorrect_uv_count"]
       48 FASTCALL1                        TONUMBER R13 ; [+2]
       49 GETIMPORT                        R12 K8 [tonumber]
       51 CALL                             R12 1 1
       52 SETTABLEKS                       R12 R11 K3 ["incorrect_uv_count"]
       54 NAMECALL                         R8 R0 K6 ["fail"]
       56 CALL                             R8 3 0
       57 FORGLOOP                         R3 2 ; [-48]
       59 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K10 ["Constants"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K12 [game]
       37 LOADK                            R7 K13 ["UGCValidateLCCagingIncorrectUVThresholdBodyPart"]
       38 LOADN                            R8 7
       39 NAMECALL                         R5 R5 K14 ["DefineFastInt"]
       41 CALL                             R5 3 1
       42 NEWTABLE                         R6 4 0
       44 NEWTABLE                         R7 0 1
       46 GETTABLEKS                       R8 R2 K15 ["UploadCategory"]
       48 GETTABLEKS                       R8 R8 K16 ["FULL_BODY"]
       50 SETLIST                          R7 R8 1 [1]
       52 SETTABLEKS                       R7 R6 K17 ["categories"]
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K18 ["flags"]
       58 GETTABLEKS                       R8 R8 K19 ["getFFlagUGCValidateAQCageQualityAvatar"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R7 R6 K20 ["fflag"]
       63 DUPTABLE                         R7 K22 [{"Measure_Cage_UV_Avatar"}]
       64 NEWTABLE                         R8 0 0
       66 SETTABLEKS                       R8 R7 K21 ["Measure_Cage_UV_Avatar"]
       68 SETTABLEKS                       R7 R6 K23 ["expectedAqsData"]
       70 DUPCLOSURE                       R7 K24 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R7 R6 K25 ["run"]
       76 RETURN                           R6 1
