PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 GETTABLEKS                       R3 R2 K1 ["animFrames"]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 DIVRK                            R4 K2 [1] R5
        7 DIVK                             R5 R4 K3 [0.0333333333333333]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K4 ["asNumber"]
       11 CALL                             R7 0 1
       12 MUL                              R6 R7 R5
       13 LOADNIL                          R7
       14 GETUPVAL                         R8 2
       15 CALL                             R8 0 1
       16 JUMPIFNOT                        R8 ; [+5]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K4 ["asNumber"]
       20 CALL                             R8 0 1
       21 MULK                             R7 R8 K5 [30]
       22 NEWTABLE                         R8 0 0
       24 MOVE                             R9 R3
       25 LOADNIL                          R10
       26 LOADNIL                          R11
       27 FORGPREP                         R9
       28 MOVE                             R14 R13
       29 LOADNIL                          R15
       30 LOADNIL                          R16
       31 FORGPREP                         R14
       32 GETTABLE                         R19 R8 R17
       33 JUMPIFNOT                        R19 ; [+67]
       34 GETTABLEKS                       R21 R18 K6 ["Position"]
       36 GETTABLEKS                       R22 R19 K6 ["Position"]
       38 SUB                              R20 R21 R22
       39 GETTABLEKS                       R20 R20 K7 ["Magnitude"]
       41 JUMPIFNOTLT                      R6 R20 ; [+59]
       43 GETUPVAL                         R21 2
       44 CALL                             R21 0 1
       45 JUMPIFNOT                        R21 ; [+37]
       46 SUBK                             R22 R12 K2 [1]
       47 MUL                              R21 R22 R4
       48 DIV                              R23 R20 R5
       49 MULK                             R22 R23 K5 [30]
       50 GETUPVAL                         R25 3
       51 GETTABLEKS                       R25 R25 K8 ["Keys"]
       53 GETTABLEKS                       R25 R25 K9 ["CurveAnim_SpeedTooFast"]
       55 DUPTABLE                         R26 K14 [{"time", "bodyPart", "speed", "maxSpeed"}]
       56 GETIMPORT                        R27 K17 [string.format]
       58 LOADK                            R28 K18 ["%.2f"]
       59 MOVE                             R29 R21
       60 CALL                             R27 2 1
       61 SETTABLEKS                       R27 R26 K10 ["time"]
       63 SETTABLEKS                       R17 R26 K11 ["bodyPart"]
       65 GETIMPORT                        R27 K17 [string.format]
       67 LOADK                            R28 K18 ["%.2f"]
       68 MOVE                             R29 R22
       69 CALL                             R27 2 1
       70 SETTABLEKS                       R27 R26 K12 ["speed"]
       72 GETIMPORT                        R27 K17 [string.format]
       74 LOADK                            R28 K18 ["%.2f"]
       75 MOVE                             R29 R7
       76 CALL                             R27 2 1
       77 SETTABLEKS                       R27 R26 K13 ["maxSpeed"]
       79 NAMECALL                         R23 R0 K19 ["fail"]
       81 CALL                             R23 3 0
       82 RETURN                           R0 0
       83 GETUPVAL                         R23 3
       84 GETTABLEKS                       R23 R23 K8 ["Keys"]
       86 GETTABLEKS                       R23 R23 K20 ["CurveAnim_SpeedTooFastLegacy"]
       88 DUPTABLE                         R24 K22 [{"bodyPart", "maxMovement"}]
       89 SETTABLEKS                       R17 R24 K11 ["bodyPart"]
       91 GETUPVAL                         R25 1
       92 GETTABLEKS                       R25 R25 K23 ["asString"]
       94 CALL                             R25 0 1
       95 SETTABLEKS                       R25 R24 K21 ["maxMovement"]
       97 NAMECALL                         R21 R0 K19 ["fail"]
       99 CALL                             R21 3 0
      100 RETURN                           R0 0
      101 FORGLOOP                         R14 2 ; [-70]
      103 MOVE                             R8 R13
      104 FORGLOOP                         R9 2 ; [-77]
      106 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateFixCurveAnimFrameTimeErrorMessage"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["GetFStringUGCValidationMaxAnimationDeltas"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K10 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFIntUGCValidateMaxAnimationFPS"]
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
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R10 R9 K33 ["run"]
      128 RETURN                           R9 1
