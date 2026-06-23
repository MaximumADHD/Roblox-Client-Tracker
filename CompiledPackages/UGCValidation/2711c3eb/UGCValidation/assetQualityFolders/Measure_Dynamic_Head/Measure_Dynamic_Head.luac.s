PROTO_0:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETTABLEKS                       R3 R1 K0 ["aqsSummaryData"]
        6 GETTABLEKS                       R3 R3 K1 ["Measure_Dynamic_Head"]
        8 GETTABLEKS                       R3 R3 K2 ["Head"]
       10 JUMPIF                           R3 ; [+6]
       11 GETTABLEKS                       R3 R1 K0 ["aqsSummaryData"]
       13 GETTABLEKS                       R3 R3 K1 ["Measure_Dynamic_Head"]
       15 GETTABLEKS                       R3 R3 K3 ["Head_Geo"]
       17 MOVE                             R2 R3
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R3 R1 K0 ["aqsSummaryData"]
       21 GETTABLEKS                       R3 R3 K1 ["Measure_Dynamic_Head"]
       23 GETTABLEKS                       R2 R3 K2 ["Head"]
       25 JUMPIFNOTEQKNIL                  R2 ; [+10]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K4 ["Keys"]
       30 GETTABLEKS                       R5 R5 K5 ["AQSInputDataError"]
       32 NAMECALL                         R3 R0 K6 ["fail"]
       34 CALL                             R3 2 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R3 2
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 GETTABLE                         R8 R2 R6
       41 JUMPIFEQKNIL                     R8 ; [+15]
       43 GETTABLE                         R9 R2 R6
       44 FASTCALL1                        TONUMBER R9 ; [+2]
       45 GETIMPORT                        R8 K8 [tonumber]
       47 CALL                             R8 1 1
       48 GETUPVAL                         R10 3
       49 CALL                             R10 0 1
       50 DIVK                             R9 R10 K9 [100]
       51 JUMPIFNOTLE                      R8 R9 ; [+5]
       53 MOVE                             R10 R7
       54 NAMECALL                         R8 R0 K6 ["fail"]
       56 CALL                             R8 2 0
       57 FORGLOOP                         R3 2 ; [-18]
       59 GETUPVAL                         R3 4
       60 CALL                             R3 0 1
       61 JUMPIFNOT                        R3 ; [+38]
       62 GETTABLEKS                       R3 R2 K10 ["score"]
       64 JUMPIFEQKNIL                     R3 ; [+35]
       66 GETTABLEKS                       R4 R2 K10 ["score"]
       68 FASTCALL1                        TONUMBER R4 ; [+2]
       69 GETIMPORT                        R3 K8 [tonumber]
       71 CALL                             R3 1 1
       72 JUMPIFEQKN                       R3 K9 [100] ; [+27]
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R5 R5 K4 ["Keys"]
       77 GETTABLEKS                       R5 R5 K11 ["AQSWarn_DynamicHead"]
       79 DUPTABLE                         R6 K12 [{"score"}]
       80 GETTABLEKS                       R11 R2 K10 ["score"]
       82 FASTCALL1                        TONUMBER R11 ; [+2]
       83 GETIMPORT                        R10 K8 [tonumber]
       85 CALL                             R10 1 1
       86 ORK                              R9 R10 K13 [0]
       87 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       88 GETIMPORT                        R8 K16 [math.floor]
       90 CALL                             R8 1 1
       91 FASTCALL1                        TOSTRING R8 ; [+2]
       92 GETIMPORT                        R7 K18 [tostring]
       94 CALL                             R7 1 1
       95 SETTABLEKS                       R7 R6 K10 ["score"]
       97 NAMECALL                         R3 R0 K19 ["warn"]
       99 CALL                             R3 3 0
      100 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFIntUGCValidationDynamicHeadMinimumQualityPercent"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidationAddGeometryToExports"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateAQScoreWarnings"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 8 0
       53 NEWTABLE                         R8 0 1
       55 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K15 ["DYNAMIC_HEAD"]
       59 SETLIST                          R8 R9 1 [1]
       61 SETTABLEKS                       R8 R7 K16 ["categories"]
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K10 ["flags"]
       67 GETTABLEKS                       R9 R9 K17 ["getFFlagUGCValidateIsDynamicHead"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K18 ["fflag"]
       72 GETIMPORT                        R8 K4 [require]
       74 GETTABLEKS                       R9 R0 K10 ["flags"]
       76 GETTABLEKS                       R9 R9 K19 ["getFFlagUGCValidationShadowIsDynamicHead"]
       78 CALL                             R8 1 1
       79 SETTABLEKS                       R8 R7 K20 ["shadowFlag"]
       81 DUPTABLE                         R8 K24 [{"INVALID_LANDMARKS", "NO_FACS", "MISSING_CAGE_INFO"}]
       82 GETTABLEKS                       R9 R3 K25 ["Keys"]
       84 GETTABLEKS                       R9 R9 K26 ["DynamicHeadCageMisaligned"]
       86 SETTABLEKS                       R9 R8 K21 ["INVALID_LANDMARKS"]
       88 GETTABLEKS                       R9 R3 K25 ["Keys"]
       90 GETTABLEKS                       R9 R9 K27 ["DynamicHeadNOFACS"]
       92 SETTABLEKS                       R9 R8 K22 ["NO_FACS"]
       94 GETTABLEKS                       R9 R3 K25 ["Keys"]
       96 GETTABLEKS                       R9 R9 K28 ["DynamicHeadMISSINGCAGE"]
       98 SETTABLEKS                       R9 R8 K23 ["MISSING_CAGE_INFO"]
      100 SETTABLEKS                       R8 R7 K29 ["knownAqsUserErrors"]
      102 DUPTABLE                         R8 K35 [{"left_eye_close", "right_eye_close", "mouth_open", "is_happy", "is_sad"}]
      103 GETTABLEKS                       R9 R3 K25 ["Keys"]
      105 GETTABLEKS                       R9 R9 K36 ["DynamicHeadLeftEyeNotClose"]
      107 SETTABLEKS                       R9 R8 K30 ["left_eye_close"]
      109 GETTABLEKS                       R9 R3 K25 ["Keys"]
      111 GETTABLEKS                       R9 R9 K37 ["DynamicHeadRightEyeNotClose"]
      113 SETTABLEKS                       R9 R8 K31 ["right_eye_close"]
      115 GETTABLEKS                       R9 R3 K25 ["Keys"]
      117 GETTABLEKS                       R9 R9 K38 ["DynamicHeadMouthNotOpen"]
      119 SETTABLEKS                       R9 R8 K32 ["mouth_open"]
      121 GETTABLEKS                       R9 R3 K25 ["Keys"]
      123 GETTABLEKS                       R9 R9 K39 ["DynamicHeadHappyNotShown"]
      125 SETTABLEKS                       R9 R8 K33 ["is_happy"]
      127 GETTABLEKS                       R9 R3 K25 ["Keys"]
      129 GETTABLEKS                       R9 R9 K40 ["DynamicHeadSadNotShown"]
      131 SETTABLEKS                       R9 R8 K34 ["is_sad"]
      133 DUPCLOSURE                       R9 K41 [PROTO_0]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R9 R7 K42 ["run"]
      141 RETURN                           R7 1
