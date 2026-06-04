PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Cage_UV"]
        4 GETUPVAL                         R3 0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R2 R7
        9 JUMPIFEQKNIL                     R8 ; [+6]
       11 GETTABLE                         R8 R2 R7
       12 GETTABLEKS                       R8 R8 K2 ["incorrect_uv_count"]
       14 JUMPIFNOTEQKNIL                  R8 ; [+10]
       16 GETUPVAL                         R10 1
       17 GETTABLEKS                       R10 R10 K3 ["Keys"]
       19 GETTABLEKS                       R10 R10 K4 ["AQSInputDataError"]
       21 NAMECALL                         R8 R0 K5 ["fail"]
       23 CALL                             R8 2 0
       24 JUMP                             ; [+30]
       25 GETTABLE                         R9 R2 R7
       26 GETTABLEKS                       R9 R9 K2 ["incorrect_uv_count"]
       28 FASTCALL1                        TONUMBER R9 ; [+2]
       29 GETIMPORT                        R8 K7 [tonumber]
       31 CALL                             R8 1 1
       32 GETUPVAL                         R9 2
       33 JUMPIFNOTLT                      R9 R8 ; [+21]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R10 R10 K3 ["Keys"]
       38 GETTABLEKS                       R10 R10 K8 ["MeasureCageUV"]
       40 DUPTABLE                         R11 K10 [{"cage_name", "incorrect_uv_count"}]
       41 SETTABLEKS                       R7 R11 K9 ["cage_name"]
       43 GETTABLE                         R13 R2 R7
       44 GETTABLEKS                       R13 R13 K2 ["incorrect_uv_count"]
       46 FASTCALL1                        TONUMBER R13 ; [+2]
       47 GETIMPORT                        R12 K7 [tonumber]
       49 CALL                             R12 1 1
       50 SETTABLEKS                       R12 R11 K2 ["incorrect_uv_count"]
       52 NAMECALL                         R8 R0 K5 ["fail"]
       54 CALL                             R8 3 0
       55 FORGLOOP                         R3 2 ; [-48]
       57 RETURN                           R0 0

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
       32 LOADK                            R6 K12 ["UGCValidateLCCagingIncorrectUVThreshold"]
       33 LOADN                            R7 100
       34 NAMECALL                         R4 R4 K13 ["DefineFastInt"]
       36 CALL                             R4 3 1
       37 NEWTABLE                         R5 4 0
       39 NEWTABLE                         R6 0 1
       41 GETTABLEKS                       R7 R2 K14 ["UploadCategory"]
       43 GETTABLEKS                       R7 R7 K15 ["LAYERED_CLOTHING"]
       45 SETLIST                          R6 R7 1 [1]
       47 SETTABLEKS                       R6 R5 K16 ["categories"]
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K17 ["flags"]
       53 GETTABLEKS                       R7 R7 K18 ["getFFlagUGCValidateAQCageQualityLC"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K19 ["fflag"]
       58 DUPTABLE                         R6 K21 [{"Measure_Cage_UV"}]
       59 NEWTABLE                         R7 0 0
       61 SETTABLEKS                       R7 R6 K20 ["Measure_Cage_UV"]
       63 SETTABLEKS                       R6 R5 K22 ["expectedAqsData"]
       65 NEWTABLE                         R6 0 2
       67 LOADK                            R7 K23 ["Handle_InnerCage"]
       68 LOADK                            R8 K24 ["Handle_OuterCage"]
       69 SETLIST                          R6 R7 2 [1]
       71 DUPCLOSURE                       R7 K25 [PROTO_0]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R7 R5 K26 ["run"]
       77 RETURN                           R5 1
