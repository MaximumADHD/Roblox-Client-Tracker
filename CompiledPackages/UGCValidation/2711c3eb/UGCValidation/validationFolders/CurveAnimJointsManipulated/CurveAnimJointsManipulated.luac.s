PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 LOADNIL                          R7
        6 GETUPVAL                         R8 0
        7 CALL                             R8 0 1
        8 JUMPIFNOT                        R8 ; [+27]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K1 ["getBodyPartFolderRoot"]
       12 MOVE                             R9 R6
       13 CALL                             R8 1 1
       14 JUMPIF                           R8 ; [+9]
       15 GETUPVAL                         R11 2
       16 GETTABLEKS                       R11 R11 K2 ["Keys"]
       18 GETTABLEKS                       R11 R11 K3 ["CurveAnim_NoJointManipulation"]
       20 NAMECALL                         R9 R0 K4 ["fail"]
       22 CALL                             R9 2 0
       23 RETURN                           R0 0
       24 NAMECALL                         R9 R8 K5 ["GetDescendants"]
       26 CALL                             R9 1 1
       27 MOVE                             R7 R9
       28 FASTCALL2                        TABLE_INSERT R7 R8 ; [+5]
       30 MOVE                             R10 R7
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K8 [table.insert]
       34 CALL                             R9 2 0
       35 JUMP                             ; [+4]
       36 NAMECALL                         R8 R6 K5 ["GetDescendants"]
       38 CALL                             R8 1 1
       39 MOVE                             R7 R8
       40 LOADB                            R8 0
       41 MOVE                             R9 R7
       42 LOADNIL                          R10
       43 LOADNIL                          R11
       44 FORGPREP                         R9
       45 LOADK                            R16 K9 ["Folder"]
       46 NAMECALL                         R14 R13 K10 ["IsA"]
       48 CALL                             R14 2 1
       49 JUMPIFNOT                        R14 ; [+30]
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R15 R15 K11 ["getBodyPartToParentMap"]
       53 CALL                             R15 0 1
       54 GETTABLEKS                       R16 R13 K12 ["Name"]
       56 GETTABLE                         R14 R15 R16
       57 JUMPIFNOT                        R14 ; [+22]
       58 LOADK                            R16 K13 ["Position"]
       59 NAMECALL                         R14 R13 K14 ["FindFirstChild"]
       61 CALL                             R14 2 1
       62 LOADK                            R17 K15 ["Rotation"]
       63 NAMECALL                         R15 R13 K14 ["FindFirstChild"]
       65 CALL                             R15 2 1
       66 JUMPIFNOT                        R14 ; [+13]
       67 LOADK                            R18 K16 ["Vector3Curve"]
       68 NAMECALL                         R16 R14 K10 ["IsA"]
       70 CALL                             R16 2 1
       71 JUMPIFNOT                        R16 ; [+8]
       72 JUMPIFNOT                        R15 ; [+7]
       73 LOADK                            R18 K17 ["EulerRotationCurve"]
       74 NAMECALL                         R16 R15 K10 ["IsA"]
       76 CALL                             R16 2 1
       77 JUMPIFNOT                        R16 ; [+2]
       78 LOADB                            R8 1
       79 JUMP                             ; [+2]
       80 FORGLOOP                         R9 2 ; [-36]
       82 JUMPIF                           R8 ; [+9]
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R11 R11 K2 ["Keys"]
       86 GETTABLEKS                       R11 R11 K3 ["CurveAnim_NoJointManipulation"]
       88 NAMECALL                         R9 R0 K4 ["fail"]
       90 CALL                             R9 2 0
       91 RETURN                           R0 0
       92 FORGLOOP                         R2 2 ; [-88]
       94 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K10 ["CurveAnimationHierarchyUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K11 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateCurveAnim"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K11 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateDuplicatesInAnimation"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K11 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidationAnimationPackSupport"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 8 0
       60 NEWTABLE                         R9 0 1
       62 GETTABLEKS                       R10 R2 K15 ["UploadCategory"]
       64 GETTABLEKS                       R10 R10 K16 ["EMOTE_ANIMATION"]
       66 SETLIST                          R9 R10 1 [1]
       68 SETTABLEKS                       R9 R8 K17 ["categories"]
       70 MOVE                             R9 R7
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
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R9 R8 K31 ["run"]
      116 RETURN                           R8 1
