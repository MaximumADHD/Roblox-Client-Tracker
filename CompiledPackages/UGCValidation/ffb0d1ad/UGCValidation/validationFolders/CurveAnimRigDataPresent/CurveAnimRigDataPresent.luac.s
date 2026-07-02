PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 LOADN                            R7 0
        6 NAMECALL                         R8 R6 K1 ["GetChildren"]
        8 CALL                             R8 1 3
        9 FORGPREP                         R8
       10 LOADK                            R15 K2 ["AnimationRigData"]
       11 NAMECALL                         R13 R12 K3 ["IsA"]
       13 CALL                             R13 2 1
       14 JUMPIFNOT                        R13 ; [+13]
       15 ADDK                             R7 R7 K4 [1]
       16 LOADN                            R13 1
       17 JUMPIFNOTLT                      R13 R7 ; [+10]
       19 GETUPVAL                         R15 0
       20 GETTABLEKS                       R15 R15 K5 ["Keys"]
       22 GETTABLEKS                       R15 R15 K6 ["CurveAnim_MultipleRigData"]
       24 NAMECALL                         R13 R0 K7 ["fail"]
       26 CALL                             R13 2 0
       27 RETURN                           R0 0
       28 FORGLOOP                         R8 2 ; [-19]
       30 JUMPIFNOTEQKN                    R7 K8 [0] ; [+10]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K5 ["Keys"]
       35 GETTABLEKS                       R10 R10 K9 ["CurveAnim_NoRigData"]
       37 NAMECALL                         R8 R0 K7 ["fail"]
       39 CALL                             R8 2 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R8 1
       42 CALL                             R8 0 1
       43 JUMPIFNOT                        R8 ; [+5]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R8 R8 K10 ["hasBoneFolders"]
       47 MOVE                             R9 R6
       48 CALL                             R8 1 1
       49 JUMPIF                           R8 ; [+24]
       50 NAMECALL                         R9 R6 K1 ["GetChildren"]
       52 CALL                             R9 1 3
       53 FORGPREP                         R9
       54 LOADK                            R16 K2 ["AnimationRigData"]
       55 NAMECALL                         R14 R13 K3 ["IsA"]
       57 CALL                             R14 2 1
       58 JUMPIFNOT                        R14 ; [+13]
       59 NAMECALL                         R14 R13 K11 ["IsValidR15"]
       61 CALL                             R14 1 1
       62 JUMPIF                           R14 ; [+9]
       63 GETUPVAL                         R16 0
       64 GETTABLEKS                       R16 R16 K5 ["Keys"]
       66 GETTABLEKS                       R16 R16 K12 ["CurveAnim_InvalidRigData"]
       68 NAMECALL                         R14 R0 K7 ["fail"]
       70 CALL                             R14 2 0
       71 RETURN                           R0 0
       72 FORGLOOP                         R9 2 ; [-19]
       74 FORGLOOP                         R2 2 ; [-70]
       76 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["CurveAnimBoneHierarchyUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K11 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateCurveAnim"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K11 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidationAnimationPackSupport"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K11 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateEmotesBonesAllowed"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 8 0
       60 NEWTABLE                         R9 0 1
       62 GETTABLEKS                       R10 R2 K15 ["UploadCategory"]
       64 GETTABLEKS                       R10 R10 K16 ["EMOTE_ANIMATION"]
       66 SETLIST                          R9 R10 1 [1]
       68 SETTABLEKS                       R9 R8 K17 ["categories"]
       70 MOVE                             R9 R6
       71 CALL                             R9 0 1
       72 JUMPIFNOT                        R9 ; [+11]
       73 GETTABLEKS                       R10 R8 K17 ["categories"]
       75 GETTABLEKS                       R11 R2 K15 ["UploadCategory"]
       77 GETTABLEKS                       R11 R11 K18 ["ANIMATION"]
       79 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       81 GETIMPORT                        R9 K21 [table.insert]
       83 CALL                             R9 2 0
       84 NEWTABLE                         R9 0 1
       86 GETTABLEKS                       R10 R2 K22 ["SharedDataMember"]
       88 GETTABLEKS                       R10 R10 K23 ["curveAnimations"]
       90 SETLIST                          R9 R10 1 [1]
       92 SETTABLEKS                       R9 R8 K24 ["requiredData"]
       94 SETTABLEKS                       R5 R8 K25 ["fflag"]
       96 NEWTABLE                         R9 0 0
       98 SETTABLEKS                       R9 R8 K26 ["expectedFailures"]
      100 NEWTABLE                         R9 0 1
      102 GETTABLEKS                       R10 R2 K27 ["ValidationModule"]
      104 GETTABLEKS                       R10 R10 K28 ["CurveAnimDataAvailable"]
      106 SETLIST                          R9 R10 1 [1]
      108 SETTABLEKS                       R9 R8 K29 ["prereqTests"]
      110 DUPCLOSURE                       R9 K30 [PROTO_0]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R4
      114 SETTABLEKS                       R9 R8 K31 ["run"]
      116 RETURN                           R8 1
