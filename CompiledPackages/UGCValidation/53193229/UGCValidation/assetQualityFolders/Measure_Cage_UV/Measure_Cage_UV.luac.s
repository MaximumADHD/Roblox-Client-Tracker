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
       24 JUMP                             ; [+82]
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
       55 GETUPVAL                         R8 3
       56 CALL                             R8 0 1
       57 JUMPIFNOT                        R8 ; [+49]
       58 GETTABLE                         R8 R2 R7
       59 GETTABLEKS                       R8 R8 K11 ["score"]
       61 JUMPIFEQKNIL                     R8 ; [+45]
       63 GETTABLE                         R9 R2 R7
       64 GETTABLEKS                       R9 R9 K11 ["score"]
       66 FASTCALL1                        TONUMBER R9 ; [+2]
       67 GETIMPORT                        R8 K7 [tonumber]
       69 CALL                             R8 1 1
       70 JUMPIFEQKN                       R8 K12 [100] ; [+36]
       72 GETUPVAL                         R10 1
       73 GETTABLEKS                       R10 R10 K3 ["Keys"]
       75 GETTABLEKS                       R10 R10 K13 ["AQSWarn_CageUV"]
       77 DUPTABLE                         R11 K14 [{"score", "cage_name", "incorrect_uv_count"}]
       78 GETTABLE                         R16 R2 R7
       79 GETTABLEKS                       R16 R16 K11 ["score"]
       81 FASTCALL1                        TONUMBER R16 ; [+2]
       82 GETIMPORT                        R15 K7 [tonumber]
       84 CALL                             R15 1 1
       85 ORK                              R14 R15 K15 [0]
       86 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       87 GETIMPORT                        R13 K18 [math.floor]
       89 CALL                             R13 1 1
       90 FASTCALL1                        TOSTRING R13 ; [+2]
       91 GETIMPORT                        R12 K20 [tostring]
       93 CALL                             R12 1 1
       94 SETTABLEKS                       R12 R11 K11 ["score"]
       96 SETTABLEKS                       R7 R11 K9 ["cage_name"]
       98 GETTABLE                         R13 R2 R7
       99 GETTABLEKS                       R13 R13 K2 ["incorrect_uv_count"]
      101 ORK                              R12 R13 K21 ["0"]
      102 SETTABLEKS                       R12 R11 K2 ["incorrect_uv_count"]
      104 NAMECALL                         R8 R0 K22 ["warn"]
      106 CALL                             R8 3 0
      107 FORGLOOP                         R3 2 ; [-100]
      109 RETURN                           R0 0

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
       39 LOADK                            R7 K14 ["UGCValidateLCCagingIncorrectUVThreshold"]
       40 LOADN                            R8 100
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
       65 NEWTABLE                         R7 0 2
       67 LOADK                            R8 K21 ["Handle_InnerCage"]
       68 LOADK                            R9 K22 ["Handle_OuterCage"]
       69 SETLIST                          R7 R8 2 [1]
       71 DUPCLOSURE                       R8 K23 [PROTO_0]
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R8 R6 K24 ["run"]
       78 RETURN                           R6 1
