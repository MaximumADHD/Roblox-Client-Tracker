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
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFIntUGCValidationDynamicHeadMinimumQualityPercent"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidationAddGeometryToExports"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K13 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K14 ["DYNAMIC_HEAD"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K15 ["categories"]
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K10 ["flags"]
       60 GETTABLEKS                       R8 R8 K16 ["getFFlagUGCValidateIsDynamicHead"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K17 ["fflag"]
       65 GETIMPORT                        R7 K4 [require]
       67 GETTABLEKS                       R8 R0 K10 ["flags"]
       69 GETTABLEKS                       R8 R8 K18 ["getFFlagUGCValidationShadowIsDynamicHead"]
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R7 R6 K19 ["shadowFlag"]
       74 DUPTABLE                         R7 K21 [{"Measure_Dynamic_Head"}]
       75 NEWTABLE                         R8 0 0
       77 SETTABLEKS                       R8 R7 K20 ["Measure_Dynamic_Head"]
       79 SETTABLEKS                       R7 R6 K22 ["expectedAqsData"]
       81 DUPTABLE                         R7 K26 [{"INVALID_LANDMARKS", "NO_FACS", "MISSING_CAGE_INFO"}]
       82 GETTABLEKS                       R8 R3 K27 ["Keys"]
       84 GETTABLEKS                       R8 R8 K28 ["DynamicHeadCageMisaligned"]
       86 SETTABLEKS                       R8 R7 K23 ["INVALID_LANDMARKS"]
       88 GETTABLEKS                       R8 R3 K27 ["Keys"]
       90 GETTABLEKS                       R8 R8 K29 ["DynamicHeadNOFACS"]
       92 SETTABLEKS                       R8 R7 K24 ["NO_FACS"]
       94 GETTABLEKS                       R8 R3 K27 ["Keys"]
       96 GETTABLEKS                       R8 R8 K30 ["DynamicHeadMISSINGCAGE"]
       98 SETTABLEKS                       R8 R7 K25 ["MISSING_CAGE_INFO"]
      100 SETTABLEKS                       R7 R6 K31 ["knownAqsUserErrors"]
      102 DUPTABLE                         R7 K37 [{"left_eye_close", "right_eye_close", "mouth_open", "is_happy", "is_sad"}]
      103 GETTABLEKS                       R8 R3 K27 ["Keys"]
      105 GETTABLEKS                       R8 R8 K38 ["DynamicHeadLeftEyeNotClose"]
      107 SETTABLEKS                       R8 R7 K32 ["left_eye_close"]
      109 GETTABLEKS                       R8 R3 K27 ["Keys"]
      111 GETTABLEKS                       R8 R8 K39 ["DynamicHeadRightEyeNotClose"]
      113 SETTABLEKS                       R8 R7 K33 ["right_eye_close"]
      115 GETTABLEKS                       R8 R3 K27 ["Keys"]
      117 GETTABLEKS                       R8 R8 K40 ["DynamicHeadMouthNotOpen"]
      119 SETTABLEKS                       R8 R7 K34 ["mouth_open"]
      121 GETTABLEKS                       R8 R3 K27 ["Keys"]
      123 GETTABLEKS                       R8 R8 K41 ["DynamicHeadHappyNotShown"]
      125 SETTABLEKS                       R8 R7 K35 ["is_happy"]
      127 GETTABLEKS                       R8 R3 K27 ["Keys"]
      129 GETTABLEKS                       R8 R8 K42 ["DynamicHeadSadNotShown"]
      131 SETTABLEKS                       R8 R7 K36 ["is_sad"]
      133 DUPCLOSURE                       R8 K43 [PROTO_0]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R4
      138 SETTABLEKS                       R8 R6 K44 ["run"]
      140 RETURN                           R6 1
