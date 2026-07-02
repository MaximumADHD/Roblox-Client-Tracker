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
       49 JUMPIFNOT                        R8 ; [+31]
       50 GETUPVAL                         R9 3
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+52]
       53 GETUPVAL                         R9 4
       54 CALL                             R9 0 1
       55 JUMPIFNOT                        R9 ; [+49]
       56 NAMECALL                         R9 R6 K1 ["GetChildren"]
       58 CALL                             R9 1 3
       59 FORGPREP                         R9
       60 LOADK                            R16 K2 ["AnimationRigData"]
       61 NAMECALL                         R14 R13 K3 ["IsA"]
       63 CALL                             R14 2 1
       64 JUMPIFNOT                        R14 ; [+13]
       65 NAMECALL                         R14 R13 K11 ["IsValidR15Plus"]
       67 CALL                             R14 1 1
       68 JUMPIF                           R14 ; [+9]
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K5 ["Keys"]
       72 GETTABLEKS                       R16 R16 K12 ["CurveAnim_InvalidRigDataR15Plus"]
       74 NAMECALL                         R14 R0 K7 ["fail"]
       76 CALL                             R14 2 0
       77 RETURN                           R0 0
       78 FORGLOOP                         R9 2 ; [-19]
       80 JUMP                             ; [+24]
       81 NAMECALL                         R9 R6 K1 ["GetChildren"]
       83 CALL                             R9 1 3
       84 FORGPREP                         R9
       85 LOADK                            R16 K2 ["AnimationRigData"]
       86 NAMECALL                         R14 R13 K3 ["IsA"]
       88 CALL                             R14 2 1
       89 JUMPIFNOT                        R14 ; [+13]
       90 NAMECALL                         R14 R13 K13 ["IsValidR15"]
       92 CALL                             R14 1 1
       93 JUMPIF                           R14 ; [+9]
       94 GETUPVAL                         R16 0
       95 GETTABLEKS                       R16 R16 K5 ["Keys"]
       97 GETTABLEKS                       R16 R16 K14 ["CurveAnim_InvalidRigData"]
       99 NAMECALL                         R14 R0 K7 ["fail"]
      101 CALL                             R14 2 0
      102 RETURN                           R0 0
      103 FORGLOOP                         R9 2 ; [-19]
      105 FORGLOOP                         R2 2 ; [-101]
      107 RETURN                           R0 0

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
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K11 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidateCurveAnimRigDataR15Plus"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K11 ["flags"]
       69 GETTABLEKS                       R10 R10 K16 ["getEngineFeatureIsValidR15Plus"]
       71 CALL                             R9 1 1
       72 NEWTABLE                         R10 8 0
       74 NEWTABLE                         R11 0 1
       76 GETTABLEKS                       R12 R2 K17 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K18 ["EMOTE_ANIMATION"]
       80 SETLIST                          R11 R12 1 [1]
       82 SETTABLEKS                       R11 R10 K19 ["categories"]
       84 MOVE                             R11 R6
       85 CALL                             R11 0 1
       86 JUMPIFNOT                        R11 ; [+11]
       87 GETTABLEKS                       R12 R10 K19 ["categories"]
       89 GETTABLEKS                       R13 R2 K17 ["UploadCategory"]
       91 GETTABLEKS                       R13 R13 K20 ["ANIMATION"]
       93 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       95 GETIMPORT                        R11 K23 [table.insert]
       97 CALL                             R11 2 0
       98 NEWTABLE                         R11 0 1
      100 GETTABLEKS                       R12 R2 K24 ["SharedDataMember"]
      102 GETTABLEKS                       R12 R12 K25 ["curveAnimations"]
      104 SETLIST                          R11 R12 1 [1]
      106 SETTABLEKS                       R11 R10 K26 ["requiredData"]
      108 SETTABLEKS                       R5 R10 K27 ["fflag"]
      110 NEWTABLE                         R11 0 0
      112 SETTABLEKS                       R11 R10 K28 ["expectedFailures"]
      114 NEWTABLE                         R11 0 1
      116 GETTABLEKS                       R12 R2 K29 ["ValidationModule"]
      118 GETTABLEKS                       R12 R12 K30 ["CurveAnimDataAvailable"]
      120 SETLIST                          R11 R12 1 [1]
      122 SETTABLEKS                       R11 R10 K31 ["prereqTests"]
      124 DUPCLOSURE                       R11 K32 [PROTO_0]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R9
      130 SETTABLEKS                       R11 R10 K33 ["run"]
      132 RETURN                           R10 1
