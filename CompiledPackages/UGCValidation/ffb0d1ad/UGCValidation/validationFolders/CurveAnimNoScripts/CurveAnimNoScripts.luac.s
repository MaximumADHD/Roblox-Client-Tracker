PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 NAMECALL                         R7 R6 K1 ["GetDescendants"]
        7 CALL                             R7 1 3
        8 FORGPREP                         R7
        9 LOADK                            R14 K2 ["Script"]
       10 NAMECALL                         R12 R11 K3 ["IsA"]
       12 CALL                             R12 2 1
       13 JUMPIF                           R12 ; [+5]
       14 LOADK                            R14 K4 ["ModuleScript"]
       15 NAMECALL                         R12 R11 K3 ["IsA"]
       17 CALL                             R12 2 1
       18 JUMPIFNOT                        R12 ; [+9]
       19 GETUPVAL                         R14 0
       20 GETTABLEKS                       R14 R14 K5 ["Keys"]
       22 GETTABLEKS                       R14 R14 K6 ["CurveAnim_ContainsScripts"]
       24 NAMECALL                         R12 R0 K7 ["fail"]
       26 CALL                             R12 2 0
       27 RETURN                           R0 0
       28 FORGLOOP                         R7 2 ; [-20]
       30 FORGLOOP                         R2 2 ; [-26]
       32 RETURN                           R0 0

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
       70 NEWTABLE                         R7 0 1
       72 GETTABLEKS                       R8 R2 K20 ["SharedDataMember"]
       74 GETTABLEKS                       R8 R8 K21 ["curveAnimations"]
       76 SETLIST                          R7 R8 1 [1]
       78 SETTABLEKS                       R7 R6 K22 ["requiredData"]
       80 SETTABLEKS                       R4 R6 K23 ["fflag"]
       82 NEWTABLE                         R7 0 0
       84 SETTABLEKS                       R7 R6 K24 ["expectedFailures"]
       86 NEWTABLE                         R7 0 1
       88 GETTABLEKS                       R8 R2 K25 ["ValidationModule"]
       90 GETTABLEKS                       R8 R8 K26 ["CurveAnimDataAvailable"]
       92 SETLIST                          R7 R8 1 [1]
       94 SETTABLEKS                       R7 R6 K27 ["prereqTests"]
       96 DUPCLOSURE                       R7 K28 [PROTO_0]
       97 CAPTURE                          VAL R3
       98 SETTABLEKS                       R7 R6 K29 ["run"]
      100 RETURN                           R6 1
