PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 NAMECALL                         R7 R6 K1 ["GetDescendants"]
        7 CALL                             R7 1 3
        8 FORGPREP                         R7
        9 LOADB                            R12 0
       10 GETUPVAL                         R13 0
       11 LOADNIL                          R14
       12 LOADNIL                          R15
       13 FORGPREP                         R13
       14 MOVE                             R20 R17
       15 NAMECALL                         R18 R11 K2 ["IsA"]
       17 CALL                             R18 2 1
       18 JUMPIFNOT                        R18 ; [+2]
       19 LOADB                            R12 1
       20 JUMP                             ; [+2]
       21 FORGLOOP                         R13 2 ; [-8]
       23 JUMPIF                           R12 ; [+17]
       24 GETUPVAL                         R15 1
       25 GETTABLEKS                       R15 R15 K3 ["Keys"]
       27 GETTABLEKS                       R15 R15 K4 ["CurveAnim_InvalidInstanceTypes"]
       29 DUPTABLE                         R16 K6 [{"allowedTypes"}]
       30 GETIMPORT                        R17 K9 [table.concat]
       32 GETUPVAL                         R18 0
       33 LOADK                            R19 K10 [", "]
       34 CALL                             R17 2 1
       35 SETTABLEKS                       R17 R16 K5 ["allowedTypes"]
       37 NAMECALL                         R13 R0 K11 ["fail"]
       39 CALL                             R13 3 0
       40 RETURN                           R0 0
       41 FORGLOOP                         R7 2 ; [-33]
       43 FORGLOOP                         R2 2 ; [-39]
       45 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateAddObjectValueToAcceptableTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidationAnimationPackSupport"]
       50 CALL                             R6 1 1
       51 NEWTABLE                         R7 8 0
       53 NEWTABLE                         R8 0 1
       55 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K15 ["EMOTE_ANIMATION"]
       59 SETLIST                          R8 R9 1 [1]
       61 SETTABLEKS                       R8 R7 K16 ["categories"]
       63 MOVE                             R8 R6
       64 CALL                             R8 0 1
       65 JUMPIFNOT                        R8 ; [+11]
       66 GETTABLEKS                       R9 R7 K16 ["categories"]
       68 GETTABLEKS                       R10 R2 K14 ["UploadCategory"]
       70 GETTABLEKS                       R10 R10 K17 ["ANIMATION"]
       72 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       74 GETIMPORT                        R8 K20 [table.insert]
       76 CALL                             R8 2 0
       77 NEWTABLE                         R8 0 1
       79 GETTABLEKS                       R9 R2 K21 ["SharedDataMember"]
       81 GETTABLEKS                       R9 R9 K22 ["curveAnimations"]
       83 SETLIST                          R8 R9 1 [1]
       85 SETTABLEKS                       R8 R7 K23 ["requiredData"]
       87 SETTABLEKS                       R4 R7 K24 ["fflag"]
       89 NEWTABLE                         R8 0 0
       91 SETTABLEKS                       R8 R7 K25 ["expectedFailures"]
       93 NEWTABLE                         R8 0 1
       95 GETTABLEKS                       R9 R2 K26 ["ValidationModule"]
       97 GETTABLEKS                       R9 R9 K27 ["CurveAnimDataAvailable"]
       99 SETLIST                          R8 R9 1 [1]
      101 SETTABLEKS                       R8 R7 K28 ["prereqTests"]
      103 NEWTABLE                         R8 0 6
      105 LOADK                            R9 K29 ["MarkerCurve"]
      106 LOADK                            R10 K30 ["AnimationRigData"]
      107 LOADK                            R11 K31 ["Folder"]
      108 LOADK                            R12 K32 ["Vector3Curve"]
      109 LOADK                            R13 K33 ["EulerRotationCurve"]
      110 LOADK                            R14 K34 ["FloatCurve"]
      111 SETLIST                          R8 R9 6 [1]
      113 MOVE                             R9 R5
      114 CALL                             R9 0 1
      115 JUMPIFNOT                        R9 ; [+7]
      116 FASTCALL2K                       TABLE_INSERT R8 K35 ; [+5]
      118 MOVE                             R10 R8
      119 LOADK                            R11 K35 ["ObjectValue"]
      120 GETIMPORT                        R9 K20 [table.insert]
      122 CALL                             R9 2 0
      123 DUPCLOSURE                       R9 K36 [PROTO_0]
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R3
      126 SETTABLEKS                       R9 R7 K37 ["run"]
      128 RETURN                           R7 1
