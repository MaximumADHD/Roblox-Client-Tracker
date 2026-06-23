PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["DATA_FETCH_FAILURE"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["Keys"]
       11 GETTABLEKS                       R5 R5 K3 ["CurveAnim_FetchFailed"]
       13 NAMECALL                         R3 R0 K4 ["fail"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0
       17 LENGTH                           R3 R2
       18 JUMPIFNOTEQKN                    R3 K5 [0] ; [+10]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K2 ["Keys"]
       23 GETTABLEKS                       R5 R5 K6 ["CurveAnim_NotCurveAnimation"]
       25 NAMECALL                         R3 R0 K4 ["fail"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R3 R1 K7 ["curveAnimComputedFrames"]
       31 JUMPIFNOT                        R3 ; [+5]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K1 ["DATA_FETCH_FAILURE"]
       35 JUMPIFNOTEQ                      R3 R4 ; [+10]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K2 ["Keys"]
       40 GETTABLEKS                       R6 R6 K3 ["CurveAnim_FetchFailed"]
       42 NAMECALL                         R4 R0 K4 ["fail"]
       44 CALL                             R4 2 0
       45 RETURN                           R0 0
       46 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       34 GETTABLEKS                       R5 R5 K10 ["dataFetchModules"]
       36 GETTABLEKS                       R5 R5 K11 ["FetchAllDesiredData"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K4 [require]
       41 GETTABLEKS                       R6 R0 K12 ["flags"]
       43 GETTABLEKS                       R6 R6 K13 ["getFFlagUGCValidateMigrateCurveAnim"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R7 R0 K12 ["flags"]
       50 GETTABLEKS                       R7 R7 K14 ["getFFlagUGCValidationAnimationPackSupport"]
       52 CALL                             R6 1 1
       53 NEWTABLE                         R7 8 0
       55 NEWTABLE                         R8 0 1
       57 GETTABLEKS                       R9 R2 K15 ["UploadCategory"]
       59 GETTABLEKS                       R9 R9 K16 ["EMOTE_ANIMATION"]
       61 SETLIST                          R8 R9 1 [1]
       63 SETTABLEKS                       R8 R7 K17 ["categories"]
       65 MOVE                             R8 R6
       66 CALL                             R8 0 1
       67 JUMPIFNOT                        R8 ; [+11]
       68 GETTABLEKS                       R9 R7 K17 ["categories"]
       70 GETTABLEKS                       R10 R2 K15 ["UploadCategory"]
       72 GETTABLEKS                       R10 R10 K18 ["ANIMATION"]
       74 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       76 GETIMPORT                        R8 K21 [table.insert]
       78 CALL                             R8 2 0
       79 NEWTABLE                         R8 0 0
       81 SETTABLEKS                       R8 R7 K22 ["requiredData"]
       83 SETTABLEKS                       R5 R7 K23 ["fflag"]
       85 NEWTABLE                         R8 0 0
       87 SETTABLEKS                       R8 R7 K24 ["expectedFailures"]
       89 DUPCLOSURE                       R8 K25 [PROTO_0]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R8 R7 K26 ["run"]
       94 RETURN                           R7 1
