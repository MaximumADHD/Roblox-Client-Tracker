PROTO_0:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+15]
        4 GETTABLEKS                       R5 R1 K0 ["aqsSummaryData"]
        6 GETTABLEKS                       R4 R5 K1 ["Measure_Dynamic_Head"]
        8 GETTABLEKS                       R3 R4 K2 ["Head"]
       10 JUMPIF                           R3 ; [+6]
       11 GETTABLEKS                       R5 R1 K0 ["aqsSummaryData"]
       13 GETTABLEKS                       R4 R5 K1 ["Measure_Dynamic_Head"]
       15 GETTABLEKS                       R3 R4 K3 ["Head_Geo"]
       17 MOVE                             R2 R3
       18 JUMP                             ; [+6]
       19 GETTABLEKS                       R4 R1 K0 ["aqsSummaryData"]
       21 GETTABLEKS                       R3 R4 K1 ["Measure_Dynamic_Head"]
       23 GETTABLEKS                       R2 R3 K2 ["Head"]
       25 GETUPVAL                         R3 1
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+35]
       28 JUMPIFNOTEQKNIL                  R2 ; [+10]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K4 ["Keys"]
       33 GETTABLEKS                       R5 R6 K5 ["AQSInputDataError"]
       35 NAMECALL                         R3 R0 K6 ["fail"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 3
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 FORGPREP                         R3
       43 GETTABLE                         R8 R2 R6
       44 JUMPIFEQKNIL                     R8 ; [+15]
       46 GETTABLE                         R9 R2 R6
       47 FASTCALL1                        TONUMBER R9 ; [+2]
       48 GETIMPORT                        R8 K8 [tonumber]
       50 CALL                             R8 1 1
       51 GETUPVAL                         R10 4
       52 CALL                             R10 0 1
       53 DIVK                             R9 R10 K9 [100]
       54 JUMPIFNOTLE                      R8 R9 ; [+5]
       56 MOVE                             R10 R7
       57 NAMECALL                         R8 R0 K6 ["fail"]
       59 CALL                             R8 2 0
       60 FORGLOOP                         R3 2 ; [-18]
       62 RETURN                           R0 0
       63 MOVE                             R3 R2
       64 LOADNIL                          R4
       65 LOADNIL                          R5
       66 FORGPREP                         R3
       67 FASTCALL1                        TONUMBER R7 ; [+3]
       68 MOVE                             R9 R7
       69 GETIMPORT                        R8 K8 [tonumber]
       71 CALL                             R8 1 1
       72 GETUPVAL                         R10 4
       73 CALL                             R10 0 1
       74 DIVK                             R9 R10 K9 [100]
       75 JUMPIFNOTLT                      R8 R9 ; [+10]
       77 GETUPVAL                         R12 2
       78 GETTABLEKS                       R11 R12 K4 ["Keys"]
       80 GETTABLEKS                       R10 R11 K10 ["HeadNotDynamic"]
       82 NAMECALL                         R8 R0 K6 ["fail"]
       84 CALL                             R8 2 0
       85 RETURN                           R0 0
       86 FORGLOOP                         R3 2 ; [-20]
       88 RETURN                           R0 0

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
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R6 K11 ["getFIntUGCValidationDynamicHeadMinimumQualityPercent"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R7 K12 ["getFFlagUGCValidationUpdateHeadIsDynamic"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R8 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R8 K13 ["getFFlagUGCValidationAddGeometryToExports"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 8 0
       53 NEWTABLE                         R8 0 1
       55 GETTABLEKS                       R10 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R10 K15 ["DYNAMIC_HEAD"]
       59 SETLIST                          R8 R9 1 [1]
       61 SETTABLEKS                       R8 R7 K16 ["categories"]
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R10 R0 K10 ["flags"]
       67 GETTABLEKS                       R9 R10 K17 ["getFFlagUGCValidateIsDynamicHead"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K18 ["fflag"]
       72 GETIMPORT                        R8 K4 [require]
       74 GETTABLEKS                       R10 R0 K10 ["flags"]
       76 GETTABLEKS                       R9 R10 K19 ["getFFlagUGCValidationShadowIsDynamicHead"]
       78 CALL                             R8 1 1
       79 SETTABLEKS                       R8 R7 K20 ["shadowFlag"]
       81 DUPTABLE                         R8 K22 [{"Measure_Dynamic_Head"}]
       82 NEWTABLE                         R9 0 0
       84 SETTABLEKS                       R9 R8 K21 ["Measure_Dynamic_Head"]
       86 SETTABLEKS                       R8 R7 K23 ["expectedAqsData"]
       88 NEWTABLE                         R8 0 0
       90 SETTABLEKS                       R8 R7 K24 ["knownAqsUserErrors"]
       92 MOVE                             R8 R5
       93 CALL                             R8 0 1
       94 JUMPIFNOT                        R8 ; [+22]
       95 DUPTABLE                         R8 K28 [{"INVALID_LANDMARKS", "NO_FACS", "MISSING_CAGE_INFO"}]
       96 GETTABLEKS                       R10 R3 K29 ["Keys"]
       98 GETTABLEKS                       R9 R10 K30 ["DynamicHeadCageMisaligned"]
      100 SETTABLEKS                       R9 R8 K25 ["INVALID_LANDMARKS"]
      102 GETTABLEKS                       R10 R3 K29 ["Keys"]
      104 GETTABLEKS                       R9 R10 K31 ["DynamicHeadNOFACS"]
      106 SETTABLEKS                       R9 R8 K26 ["NO_FACS"]
      108 GETTABLEKS                       R10 R3 K29 ["Keys"]
      110 GETTABLEKS                       R9 R10 K32 ["DynamicHeadMISSINGCAGE"]
      112 SETTABLEKS                       R9 R8 K27 ["MISSING_CAGE_INFO"]
      114 SETTABLEKS                       R8 R7 K24 ["knownAqsUserErrors"]
      116 JUMP                             ; [+9]
      117 DUPTABLE                         R8 K33 [{"INVALID_LANDMARKS"}]
      118 GETTABLEKS                       R10 R3 K29 ["Keys"]
      120 GETTABLEKS                       R9 R10 K30 ["DynamicHeadCageMisaligned"]
      122 SETTABLEKS                       R9 R8 K25 ["INVALID_LANDMARKS"]
      124 SETTABLEKS                       R8 R7 K24 ["knownAqsUserErrors"]
      126 DUPTABLE                         R8 K39 [{"left_eye_close", "right_eye_close", "mouth_open", "is_happy", "is_sad"}]
      127 GETTABLEKS                       R10 R3 K29 ["Keys"]
      129 GETTABLEKS                       R9 R10 K40 ["DynamicHeadLeftEyeNotClose"]
      131 SETTABLEKS                       R9 R8 K34 ["left_eye_close"]
      133 GETTABLEKS                       R10 R3 K29 ["Keys"]
      135 GETTABLEKS                       R9 R10 K41 ["DynamicHeadRightEyeNotClose"]
      137 SETTABLEKS                       R9 R8 K35 ["right_eye_close"]
      139 GETTABLEKS                       R10 R3 K29 ["Keys"]
      141 GETTABLEKS                       R9 R10 K42 ["DynamicHeadMouthNotOpen"]
      143 SETTABLEKS                       R9 R8 K36 ["mouth_open"]
      145 GETTABLEKS                       R10 R3 K29 ["Keys"]
      147 GETTABLEKS                       R9 R10 K43 ["DynamicHeadHappyNotShown"]
      149 SETTABLEKS                       R9 R8 K37 ["is_happy"]
      151 GETTABLEKS                       R10 R3 K29 ["Keys"]
      153 GETTABLEKS                       R9 R10 K44 ["DynamicHeadSadNotShown"]
      155 SETTABLEKS                       R9 R8 K38 ["is_sad"]
      157 DUPCLOSURE                       R9 K45 [PROTO_0]
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R4
      163 SETTABLEKS                       R9 R7 K46 ["run"]
      165 RETURN                           R7 1
