PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 GETTABLEKS                       R3 R2 K1 ["tracks"]
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K2 ["pos"]
        9 JUMPIF                           R8 ; [+3]
       10 GETTABLEKS                       R8 R7 K3 ["rot"]
       12 JUMPIFNOT                        R8 ; [+1]
       13 RETURN                           R0 0
       14 FORGLOOP                         R3 2 ; [-8]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["Keys"]
       19 GETTABLEKS                       R5 R5 K5 ["CurveAnim_NoJointManipulation"]
       21 NAMECALL                         R3 R0 K6 ["fail"]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidationAnimationPackSupport"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K13 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K14 ["EMOTE_ANIMATION"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K15 ["categories"]
       56 MOVE                             R7 R5
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+11]
       59 GETTABLEKS                       R8 R6 K15 ["categories"]
       61 GETTABLEKS                       R9 R2 K13 ["UploadCategory"]
       63 GETTABLEKS                       R9 R9 K16 ["ANIMATION"]
       65 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       67 GETIMPORT                        R7 K19 [table.insert]
       69 CALL                             R7 2 0
       70 NEWTABLE                         R7 0 2
       72 GETTABLEKS                       R8 R2 K20 ["SharedDataMember"]
       74 GETTABLEKS                       R8 R8 K21 ["curveAnimations"]
       76 GETTABLEKS                       R9 R2 K20 ["SharedDataMember"]
       78 GETTABLEKS                       R9 R9 K22 ["curveAnimComputedFrames"]
       80 SETLIST                          R7 R8 2 [1]
       82 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       84 SETTABLEKS                       R4 R6 K24 ["fflag"]
       86 NEWTABLE                         R7 0 0
       88 SETTABLEKS                       R7 R6 K25 ["expectedFailures"]
       90 NEWTABLE                         R7 0 1
       92 GETTABLEKS                       R8 R2 K26 ["ValidationModule"]
       94 GETTABLEKS                       R8 R8 K27 ["CurveAnimDataAvailable"]
       96 SETLIST                          R7 R8 1 [1]
       98 SETTABLEKS                       R7 R6 K28 ["prereqTests"]
      100 DUPCLOSURE                       R7 K29 [PROTO_0]
      101 CAPTURE                          VAL R3
      102 SETTABLEKS                       R7 R6 K30 ["run"]
      104 RETURN                           R6 1
