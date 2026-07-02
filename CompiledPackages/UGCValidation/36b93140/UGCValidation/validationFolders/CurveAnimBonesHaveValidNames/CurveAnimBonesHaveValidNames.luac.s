PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 NAMECALL                         R7 R6 K1 ["GetDescendants"]
        7 CALL                             R7 1 3
        8 FORGPREP                         R7
        9 LOADK                            R14 K2 ["Folder"]
       10 NAMECALL                         R12 R11 K3 ["IsA"]
       12 CALL                             R12 2 1
       13 JUMPIFNOT                        R12 ; [+33]
       14 GETUPVAL                         R12 0
       15 GETTABLEKS                       R12 R12 K4 ["folderHasAnimationTracks"]
       17 MOVE                             R13 R11
       18 CALL                             R12 1 1
       19 GETUPVAL                         R13 0
       20 GETTABLEKS                       R13 R13 K5 ["isBodyPartFolderNameValid"]
       22 GETTABLEKS                       R14 R11 K6 ["Name"]
       24 CALL                             R13 1 1
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K7 ["isBoneFolderName"]
       28 GETTABLEKS                       R15 R11 K6 ["Name"]
       30 CALL                             R14 1 1
       31 JUMPIFNOT                        R12 ; [+15]
       32 JUMPIF                           R13 ; [+14]
       33 JUMPIF                           R14 ; [+13]
       34 GETUPVAL                         R17 2
       35 GETTABLEKS                       R17 R17 K8 ["Keys"]
       37 GETTABLEKS                       R17 R17 K9 ["CurveAnim_InvalidBoneName"]
       39 DUPTABLE                         R18 K11 [{"boneName"}]
       40 GETTABLEKS                       R19 R11 K6 ["Name"]
       42 SETTABLEKS                       R19 R18 K10 ["boneName"]
       44 NAMECALL                         R15 R0 K12 ["fail"]
       46 CALL                             R15 3 0
       47 FORGLOOP                         R7 2 ; [-39]
       49 FORGLOOP                         R2 2 ; [-45]
       51 RETURN                           R0 0

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
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["CurveAnimBoneHierarchyUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K12 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateEmotesBonesAllowed"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K12 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateAnimBonesSupport"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K12 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFFlagUGCValidationAnimationPackSupport"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 8 0
       67 NEWTABLE                         R10 0 1
       69 GETTABLEKS                       R11 R2 K16 ["UploadCategory"]
       71 GETTABLEKS                       R11 R11 K17 ["EMOTE_ANIMATION"]
       73 SETLIST                          R10 R11 1 [1]
       75 SETTABLEKS                       R10 R9 K18 ["categories"]
       77 MOVE                             R10 R7
       78 CALL                             R10 0 1
       79 JUMPIFNOT                        R10 ; [+14]
       80 MOVE                             R10 R8
       81 CALL                             R10 0 1
       82 JUMPIFNOT                        R10 ; [+11]
       83 GETTABLEKS                       R11 R9 K18 ["categories"]
       85 GETTABLEKS                       R12 R2 K16 ["UploadCategory"]
       87 GETTABLEKS                       R12 R12 K19 ["ANIMATION"]
       89 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       91 GETIMPORT                        R10 K22 [table.insert]
       93 CALL                             R10 2 0
       94 NEWTABLE                         R10 0 1
       96 GETTABLEKS                       R11 R2 K23 ["SharedDataMember"]
       98 GETTABLEKS                       R11 R11 K24 ["curveAnimations"]
      100 SETLIST                          R10 R11 1 [1]
      102 SETTABLEKS                       R10 R9 K25 ["requiredData"]
      104 NEWTABLE                         R10 0 1
      106 GETTABLEKS                       R11 R2 K23 ["SharedDataMember"]
      108 GETTABLEKS                       R11 R11 K26 ["curveAnimBoneData"]
      110 SETLIST                          R10 R11 1 [1]
      112 SETTABLEKS                       R10 R9 K27 ["conditionalData"]
      114 DUPCLOSURE                       R10 K28 [PROTO_0]
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R10 R9 K29 ["fflag"]
      119 NEWTABLE                         R10 0 0
      121 SETTABLEKS                       R10 R9 K30 ["expectedFailures"]
      123 NEWTABLE                         R10 0 1
      125 GETTABLEKS                       R11 R2 K31 ["ValidationModule"]
      127 GETTABLEKS                       R11 R11 K32 ["CurveAnimDataAvailable"]
      129 SETLIST                          R10 R11 1 [1]
      131 SETTABLEKS                       R10 R9 K33 ["prereqTests"]
      133 DUPCLOSURE                       R10 K34 [PROTO_1]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R3
      137 SETTABLEKS                       R10 R9 K35 ["run"]
      139 RETURN                           R9 1
