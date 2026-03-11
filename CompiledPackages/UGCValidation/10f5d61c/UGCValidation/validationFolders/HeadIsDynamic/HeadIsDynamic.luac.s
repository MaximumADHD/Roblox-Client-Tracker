PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R3 R4 K1 ["Measure_Dynamic_Head"]
        4 GETTABLEKS                       R2 R3 K2 ["Head"]
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+35]
        9 JUMPIFNOTEQKNIL                  R2 ; [+10]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K3 ["Keys"]
       14 GETTABLEKS                       R5 R6 K4 ["AQSInputDataError"]
       16 NAMECALL                         R3 R0 K5 ["fail"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 2
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 FORGPREP                         R3
       24 GETTABLE                         R8 R2 R6
       25 JUMPIFEQKNIL                     R8 ; [+15]
       27 GETTABLE                         R9 R2 R6
       28 FASTCALL1                        TONUMBER R9 ; [+2]
       29 GETIMPORT                        R8 K7 [tonumber]
       31 CALL                             R8 1 1
       32 GETUPVAL                         R10 3
       33 CALL                             R10 0 1
       34 DIVK                             R9 R10 K8 [100]
       35 JUMPIFNOTLE                      R8 R9 ; [+5]
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R0 K5 ["fail"]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 ; [-18]
       43 RETURN                           R0 0
       44 MOVE                             R3 R2
       45 LOADNIL                          R4
       46 LOADNIL                          R5
       47 FORGPREP                         R3
       48 FASTCALL1                        TONUMBER R7 ; [+3]
       49 MOVE                             R9 R7
       50 GETIMPORT                        R8 K7 [tonumber]
       52 CALL                             R8 1 1
       53 GETUPVAL                         R10 3
       54 CALL                             R10 0 1
       55 DIVK                             R9 R10 K8 [100]
       56 JUMPIFNOTLT                      R8 R9 ; [+10]
       58 GETUPVAL                         R12 1
       59 GETTABLEKS                       R11 R12 K3 ["Keys"]
       61 GETTABLEKS                       R10 R11 K9 ["HeadNotDynamic"]
       63 NAMECALL                         R8 R0 K5 ["fail"]
       65 CALL                             R8 2 0
       66 RETURN                           R0 0
       67 FORGLOOP                         R3 2 ; [-20]
       69 RETURN                           R0 0

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
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R9 R2 K13 ["UploadCategory"]
       50 GETTABLEKS                       R8 R9 K14 ["DYNAMIC_HEAD"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K15 ["categories"]
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R9 R0 K10 ["flags"]
       60 GETTABLEKS                       R8 R9 K16 ["getFFlagUGCValidateIsDynamicHead"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K17 ["fflag"]
       65 GETIMPORT                        R7 K4 [require]
       67 GETTABLEKS                       R9 R0 K10 ["flags"]
       69 GETTABLEKS                       R8 R9 K18 ["getFFlagUGCValidationShadowIsDynamicHead"]
       71 CALL                             R7 1 1
       72 SETTABLEKS                       R7 R6 K19 ["shadowFlag"]
       74 DUPTABLE                         R7 K21 [{"Measure_Dynamic_Head"}]
       75 DUPTABLE                         R8 K23 [{"Head"}]
       76 NEWTABLE                         R9 0 5
       78 LOADK                            R10 K24 ["left_eye_close"]
       79 LOADK                            R11 K25 ["right_eye_close"]
       80 LOADK                            R12 K26 ["mouth_open"]
       81 LOADK                            R13 K27 ["is_happy"]
       82 LOADK                            R14 K28 ["is_sad"]
       83 SETLIST                          R9 R10 5 [1]
       85 SETTABLEKS                       R9 R8 K22 ["Head"]
       87 SETTABLEKS                       R8 R7 K20 ["Measure_Dynamic_Head"]
       89 SETTABLEKS                       R7 R6 K29 ["expectedAqsData"]
       91 NEWTABLE                         R7 0 0
       93 SETTABLEKS                       R7 R6 K30 ["knownAqsUserErrors"]
       95 MOVE                             R7 R5
       96 CALL                             R7 0 1
       97 JUMPIFNOT                        R7 ; [+22]
       98 DUPTABLE                         R7 K34 [{"INVALID_LANDMARKS", "NO_FACS", "MISSING_CAGE_INFO"}]
       99 GETTABLEKS                       R9 R3 K35 ["Keys"]
      101 GETTABLEKS                       R8 R9 K36 ["DynamicHeadCageMisaligned"]
      103 SETTABLEKS                       R8 R7 K31 ["INVALID_LANDMARKS"]
      105 GETTABLEKS                       R9 R3 K35 ["Keys"]
      107 GETTABLEKS                       R8 R9 K37 ["DynamicHeadNOFACS"]
      109 SETTABLEKS                       R8 R7 K32 ["NO_FACS"]
      111 GETTABLEKS                       R9 R3 K35 ["Keys"]
      113 GETTABLEKS                       R8 R9 K38 ["DynamicHeadMISSINGCAGE"]
      115 SETTABLEKS                       R8 R7 K33 ["MISSING_CAGE_INFO"]
      117 SETTABLEKS                       R7 R6 K30 ["knownAqsUserErrors"]
      119 JUMP                             ; [+9]
      120 DUPTABLE                         R7 K39 [{"INVALID_LANDMARKS"}]
      121 GETTABLEKS                       R9 R3 K35 ["Keys"]
      123 GETTABLEKS                       R8 R9 K36 ["DynamicHeadCageMisaligned"]
      125 SETTABLEKS                       R8 R7 K31 ["INVALID_LANDMARKS"]
      127 SETTABLEKS                       R7 R6 K30 ["knownAqsUserErrors"]
      129 DUPTABLE                         R7 K40 [{"left_eye_close", "right_eye_close", "mouth_open", "is_happy", "is_sad"}]
      130 GETTABLEKS                       R9 R3 K35 ["Keys"]
      132 GETTABLEKS                       R8 R9 K41 ["DynamicHeadLeftEyeNotClose"]
      134 SETTABLEKS                       R8 R7 K24 ["left_eye_close"]
      136 GETTABLEKS                       R9 R3 K35 ["Keys"]
      138 GETTABLEKS                       R8 R9 K42 ["DynamicHeadRightEyeNotClose"]
      140 SETTABLEKS                       R8 R7 K25 ["right_eye_close"]
      142 GETTABLEKS                       R9 R3 K35 ["Keys"]
      144 GETTABLEKS                       R8 R9 K43 ["DynamicHeadMouthNotOpen"]
      146 SETTABLEKS                       R8 R7 K26 ["mouth_open"]
      148 GETTABLEKS                       R9 R3 K35 ["Keys"]
      150 GETTABLEKS                       R8 R9 K44 ["DynamicHeadHappyNotShown"]
      152 SETTABLEKS                       R8 R7 K27 ["is_happy"]
      154 GETTABLEKS                       R9 R3 K35 ["Keys"]
      156 GETTABLEKS                       R8 R9 K45 ["DynamicHeadSadNotShown"]
      158 SETTABLEKS                       R8 R7 K28 ["is_sad"]
      160 DUPCLOSURE                       R8 K46 [PROTO_0]
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R4
      165 SETTABLEKS                       R8 R6 K47 ["run"]
      167 RETURN                           R6 1
