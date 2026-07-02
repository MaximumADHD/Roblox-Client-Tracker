PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 NEWTABLE                         R3 0 0
        4 GETTABLEKS                       R4 R2 K1 ["positionMagnitudeFrames"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 MOVE                             R9 R8
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 FORGPREP                         R9
       13 GETUPVAL                         R14 0
       14 GETTABLEKS                       R14 R14 K2 ["NAMED_R15_BODY_PARTS"]
       16 GETTABLEKS                       R14 R14 K3 ["LowerTorso"]
       18 JUMPIFEQ                         R12 R14 ; [+31]
       20 GETTABLE                         R14 R3 R12
       21 JUMPIF                           R14 ; [+6]
       22 GETUPVAL                         R14 1
       23 GETTABLEKS                       R14 R14 K4 ["asNumber"]
       25 MOVE                             R15 R12
       26 CALL                             R14 1 1
       27 SETTABLE                         R14 R3 R12
       28 GETTABLE                         R14 R3 R12
       29 JUMPIFNOTLT                      R14 R13 ; [+20]
       31 GETUPVAL                         R16 2
       32 GETTABLEKS                       R16 R16 K5 ["Keys"]
       34 GETTABLEKS                       R16 R16 K6 ["CurveAnim_PositionSeparation"]
       36 DUPTABLE                         R17 K9 [{"bodyPart", "maxMovement"}]
       37 SETTABLEKS                       R12 R17 K7 ["bodyPart"]
       39 GETTABLE                         R19 R3 R12
       40 FASTCALL1                        TOSTRING R19 ; [+2]
       41 GETIMPORT                        R18 K11 [tostring]
       43 CALL                             R18 1 1
       44 SETTABLEKS                       R18 R17 K8 ["maxMovement"]
       46 NAMECALL                         R14 R0 K12 ["fail"]
       48 CALL                             R14 3 0
       49 RETURN                           R0 0
       50 FORGLOOP                         R9 2 ; [-38]
       52 FORGLOOP                         R4 2 ; [-44]
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateCurveAnim"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K11 ["flags"]
       46 GETTABLEKS                       R7 R7 K13 ["GetFStringUGCValidateMaxAnimationMovementPerPart"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K11 ["flags"]
       53 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidationAnimationPackSupport"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 8 0
       58 NEWTABLE                         R9 0 1
       60 GETTABLEKS                       R10 R3 K15 ["UploadCategory"]
       62 GETTABLEKS                       R10 R10 K16 ["EMOTE_ANIMATION"]
       64 SETLIST                          R9 R10 1 [1]
       66 SETTABLEKS                       R9 R8 K17 ["categories"]
       68 MOVE                             R9 R7
       69 CALL                             R9 0 1
       70 JUMPIFNOT                        R9 ; [+11]
       71 GETTABLEKS                       R10 R8 K17 ["categories"]
       73 GETTABLEKS                       R11 R3 K15 ["UploadCategory"]
       75 GETTABLEKS                       R11 R11 K18 ["ANIMATION"]
       77 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       79 GETIMPORT                        R9 K21 [table.insert]
       81 CALL                             R9 2 0
       82 NEWTABLE                         R9 0 2
       84 GETTABLEKS                       R10 R3 K22 ["SharedDataMember"]
       86 GETTABLEKS                       R10 R10 K23 ["curveAnimations"]
       88 GETTABLEKS                       R11 R3 K22 ["SharedDataMember"]
       90 GETTABLEKS                       R11 R11 K24 ["curveAnimComputedFrames"]
       92 SETLIST                          R9 R10 2 [1]
       94 SETTABLEKS                       R9 R8 K25 ["requiredData"]
       96 SETTABLEKS                       R5 R8 K26 ["fflag"]
       98 NEWTABLE                         R9 0 0
      100 SETTABLEKS                       R9 R8 K27 ["expectedFailures"]
      102 NEWTABLE                         R9 0 1
      104 GETTABLEKS                       R10 R3 K28 ["ValidationModule"]
      106 GETTABLEKS                       R10 R10 K29 ["CurveAnimDataAvailable"]
      108 SETLIST                          R9 R10 1 [1]
      110 SETTABLEKS                       R9 R8 K30 ["prereqTests"]
      112 DUPCLOSURE                       R9 K31 [PROTO_0]
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R4
      116 SETTABLEKS                       R9 R8 K32 ["run"]
      118 RETURN                           R8 1
