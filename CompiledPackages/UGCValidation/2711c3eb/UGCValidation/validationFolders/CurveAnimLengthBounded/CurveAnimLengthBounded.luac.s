PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 GETTABLEKS                       R3 R2 K1 ["animLength"]
        4 GETUPVAL                         R5 0
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+5]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["asNumber"]
       10 CALL                             R4 0 1
       11 JUMP                             ; [+1]
       12 LOADN                            R4 0
       13 JUMPIFLE                         R3 R4 ; [+7]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K2 ["asNumber"]
       18 CALL                             R5 0 1
       19 JUMPIFNOTLT                      R5 R3 ; [+23]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K3 ["Keys"]
       24 GETTABLEKS                       R7 R7 K4 ["CurveAnim_InvalidLength"]
       26 DUPTABLE                         R8 K7 [{"minLength", "maxLength"}]
       27 FASTCALL1                        TOSTRING R4 ; [+3]
       28 MOVE                             R10 R4
       29 GETIMPORT                        R9 K9 [tostring]
       31 CALL                             R9 1 1
       32 SETTABLEKS                       R9 R8 K5 ["minLength"]
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K10 ["asString"]
       37 CALL                             R9 0 1
       38 SETTABLEKS                       R9 R8 K6 ["maxLength"]
       40 NAMECALL                         R5 R0 K11 ["fail"]
       42 CALL                             R5 3 0
       43 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateCurveAnimMinTimeFix"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["GetFStringUGCValidateCurveAnimationMinLength"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K10 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["GetFStringUGCValidationMaxAnimationLength"]
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
