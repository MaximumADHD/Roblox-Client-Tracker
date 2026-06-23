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
       26 JUMP                             ; [+82]
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
       57 GETUPVAL                         R8 3
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+49]
       60 GETTABLE                         R8 R2 R7
       61 GETTABLEKS                       R8 R8 K12 ["score"]
       63 JUMPIFEQKNIL                     R8 ; [+45]
       65 GETTABLE                         R9 R2 R7
       66 GETTABLEKS                       R9 R9 K12 ["score"]
       68 FASTCALL1                        TONUMBER R9 ; [+2]
       69 GETIMPORT                        R8 K8 [tonumber]
       71 CALL                             R8 1 1
       72 JUMPIFEQKN                       R8 K13 [100] ; [+36]
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R10 R10 K4 ["Keys"]
       77 GETTABLEKS                       R10 R10 K14 ["AQSWarn_CageUV"]
       79 DUPTABLE                         R11 K15 [{"score", "cage_name", "incorrect_uv_count"}]
       80 GETTABLE                         R16 R2 R7
       81 GETTABLEKS                       R16 R16 K12 ["score"]
       83 FASTCALL1                        TONUMBER R16 ; [+2]
       84 GETIMPORT                        R15 K8 [tonumber]
       86 CALL                             R15 1 1
       87 ORK                              R14 R15 K16 [0]
       88 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       89 GETIMPORT                        R13 K19 [math.floor]
       91 CALL                             R13 1 1
       92 FASTCALL1                        TOSTRING R13 ; [+2]
       93 GETIMPORT                        R12 K21 [tostring]
       95 CALL                             R12 1 1
       96 SETTABLEKS                       R12 R11 K12 ["score"]
       98 SETTABLEKS                       R7 R11 K10 ["cage_name"]
      100 GETTABLE                         R13 R2 R7
      101 GETTABLEKS                       R13 R13 K3 ["incorrect_uv_count"]
      103 ORK                              R12 R13 K22 ["0"]
      104 SETTABLEKS                       R12 R11 K3 ["incorrect_uv_count"]
      106 NAMECALL                         R8 R0 K23 ["warn"]
      108 CALL                             R8 3 0
      109 FORGLOOP                         R3 2 ; [-100]
      111 RETURN                           R0 0

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
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateAQScoreWarnings"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K14 [game]
       44 LOADK                            R8 K15 ["UGCValidateLCCagingIncorrectUVThresholdBodyPart"]
       45 LOADN                            R9 7
       46 NAMECALL                         R6 R6 K16 ["DefineFastInt"]
       48 CALL                             R6 3 1
       49 NEWTABLE                         R7 4 0
       51 NEWTABLE                         R8 0 1
       53 GETTABLEKS                       R9 R2 K17 ["UploadCategory"]
       55 GETTABLEKS                       R9 R9 K18 ["FULL_BODY"]
       57 SETLIST                          R8 R9 1 [1]
       59 SETTABLEKS                       R8 R7 K19 ["categories"]
       61 GETIMPORT                        R8 K4 [require]
       63 GETTABLEKS                       R9 R0 K11 ["flags"]
       65 GETTABLEKS                       R9 R9 K20 ["getFFlagUGCValidateAQCageQualityAvatar"]
       67 CALL                             R8 1 1
       68 SETTABLEKS                       R8 R7 K21 ["fflag"]
       70 DUPCLOSURE                       R8 K22 [PROTO_0]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R8 R7 K23 ["run"]
       77 RETURN                           R7 1
