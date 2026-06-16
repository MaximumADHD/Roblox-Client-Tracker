PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        6 GETTABLEKS                       R3 R2 K1 ["animFrames"]
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 DIVRK                            R4 R2 K5 ["abs"]
       11 GETUPVAL                         R5 2
       12 CALL                             R5 0 1
       13 GETUPVAL                         R7 1
       14 CALL                             R7 0 1
       15 DIV                              R6 R5 R7
       16 NEWTABLE                         R7 0 0
       18 MOVE                             R8 R3
       19 LOADNIL                          R9
       20 LOADNIL                          R10
       21 FORGPREP                         R8
       22 MOVE                             R13 R12
       23 LOADNIL                          R14
       24 LOADNIL                          R15
       25 FORGPREP                         R13
       26 GETTABLE                         R18 R7 R16
       27 JUMPIFNOT                        R18 ; [+52]
       28 MOVE                             R23 R18
       29 NAMECALL                         R21 R17 K3 ["AngleBetween"]
       31 CALL                             R21 2 1
       32 FASTCALL1                        MATH_ABS R21 ; [+2]
       33 GETIMPORT                        R20 K6 [math.abs]
       35 CALL                             R20 1 1
       36 FASTCALL1                        MATH_DEG R20 ; [+2]
       37 GETIMPORT                        R19 K8 [math.deg]
       39 CALL                             R19 1 1
       40 JUMPIFNOTLT                      R6 R19 ; [+39]
       42 SUBK                             R21 R11 K2 [1]
       43 MUL                              R20 R21 R4
       44 GETUPVAL                         R22 1
       45 CALL                             R22 0 1
       46 MUL                              R21 R19 R22
       47 GETUPVAL                         R24 3
       48 GETTABLEKS                       R24 R24 K9 ["Keys"]
       50 GETTABLEKS                       R24 R24 K10 ["CurveAnim_RotationTooFast"]
       52 DUPTABLE                         R25 K15 [{"time", "bodyPart", "speed", "maxSpeed"}]
       53 GETIMPORT                        R26 K18 [string.format]
       55 LOADK                            R27 K19 ["%.2f"]
       56 MOVE                             R28 R20
       57 CALL                             R26 2 1
       58 SETTABLEKS                       R26 R25 K11 ["time"]
       60 SETTABLEKS                       R16 R25 K12 ["bodyPart"]
       62 GETIMPORT                        R26 K18 [string.format]
       64 LOADK                            R27 K19 ["%.2f"]
       65 MOVE                             R28 R21
       66 CALL                             R26 2 1
       67 SETTABLEKS                       R26 R25 K13 ["speed"]
       69 FASTCALL1                        TOSTRING R5 ; [+3]
       70 MOVE                             R27 R5
       71 GETIMPORT                        R26 K21 [tostring]
       73 CALL                             R26 1 1
       74 SETTABLEKS                       R26 R25 K14 ["maxSpeed"]
       76 NAMECALL                         R22 R0 K22 ["fail"]
       78 CALL                             R22 3 0
       79 RETURN                           R0 0
       80 FORGLOOP                         R13 2 ; [-55]
       82 MOVE                             R7 R12
       83 FORGLOOP                         R8 2 ; [-62]
       85 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateMigrateCurveAnim"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateCurveAnimRotationSpeed"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFIntUGCValidateMaxAnimationFPS"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K10 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFIntUGCValidationMaxAnimationRotationSpeedPerSecond"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K10 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidationAnimationPackSupport"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 8 0
       67 NEWTABLE                         R10 0 1
       69 GETTABLEKS                       R11 R2 K16 ["UploadCategory"]
       71 GETTABLEKS                       R11 R11 K17 ["EMOTE_ANIMATION"]
       73 SETLIST                          R10 R11 1 [1]
       75 SETTABLEKS                       R10 R9 K18 ["categories"]
       77 MOVE                             R10 R8
       78 CALL                             R10 0 1
       79 JUMPIFNOT                        R10 ; [+11]
       80 GETTABLEKS                       R11 R9 K18 ["categories"]
       82 GETTABLEKS                       R12 R2 K16 ["UploadCategory"]
       84 GETTABLEKS                       R12 R12 K19 ["ANIMATION"]
       86 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       88 GETIMPORT                        R10 K22 [table.insert]
       90 CALL                             R10 2 0
       91 NEWTABLE                         R10 0 2
       93 GETTABLEKS                       R11 R2 K23 ["SharedDataMember"]
       95 GETTABLEKS                       R11 R11 K24 ["curveAnimations"]
       97 GETTABLEKS                       R12 R2 K23 ["SharedDataMember"]
       99 GETTABLEKS                       R12 R12 K25 ["curveAnimComputedFrames"]
      101 SETLIST                          R10 R11 2 [1]
      103 SETTABLEKS                       R10 R9 K26 ["requiredData"]
      105 SETTABLEKS                       R4 R9 K27 ["fflag"]
      107 NEWTABLE                         R10 0 0
      109 SETTABLEKS                       R10 R9 K28 ["expectedFailures"]
      111 NEWTABLE                         R10 0 1
      113 GETTABLEKS                       R11 R2 K29 ["ValidationModule"]
      115 GETTABLEKS                       R11 R11 K30 ["CurveAnimDataAvailable"]
      117 SETLIST                          R10 R11 1 [1]
      119 SETTABLEKS                       R10 R9 K31 ["prereqTests"]
      121 DUPCLOSURE                       R10 K32 [PROTO_0]
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R10 R9 K33 ["run"]
      128 RETURN                           R9 1
