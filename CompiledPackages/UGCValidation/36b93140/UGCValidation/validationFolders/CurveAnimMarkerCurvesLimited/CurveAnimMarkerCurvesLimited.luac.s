PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R1 K0 ["curveAnimations"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADN                            R8 0
        8 NAMECALL                         R9 R7 K1 ["GetDescendants"]
       10 CALL                             R9 1 3
       11 FORGPREP                         R9
       12 LOADK                            R16 K2 ["MarkerCurve"]
       13 NAMECALL                         R14 R13 K3 ["IsA"]
       15 CALL                             R14 2 1
       16 JUMPIFNOT                        R14 ; [+20]
       17 ADDK                             R8 R8 K4 [1]
       18 JUMPIFNOTLT                      R2 R8 ; [+18]
       20 GETUPVAL                         R16 1
       21 GETTABLEKS                       R16 R16 K5 ["Keys"]
       23 GETTABLEKS                       R16 R16 K6 ["CurveAnim_TooManyMarkerCurves"]
       25 DUPTABLE                         R17 K8 [{"maxAllowed"}]
       26 FASTCALL1                        TOSTRING R2 ; [+3]
       27 MOVE                             R19 R2
       28 GETIMPORT                        R18 K10 [tostring]
       30 CALL                             R18 1 1
       31 SETTABLEKS                       R18 R17 K7 ["maxAllowed"]
       33 NAMECALL                         R14 R0 K11 ["fail"]
       35 CALL                             R14 3 0
       36 RETURN                           R0 0
       37 FORGLOOP                         R9 2 ; [-26]
       39 FORGLOOP                         R3 2 ; [-33]
       41 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFIntUGCValidateMaxTotalMarkerCurves"]
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
      103 DUPCLOSURE                       R8 K29 [PROTO_0]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 SETTABLEKS                       R8 R7 K30 ["run"]
      108 RETURN                           R7 1
