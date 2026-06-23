PROTO_0:
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
       51 NEWTABLE                         R7 8 0
       53 NEWTABLE                         R8 0 1
       55 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K15 ["EMOTE_ANIMATION"]
       59 SETLIST                          R8 R9 1 [1]
       61 SETTABLEKS                       R8 R7 K16 ["categories"]
       63 NEWTABLE                         R8 0 1
       65 GETTABLEKS                       R9 R2 K17 ["SharedDataMember"]
       67 GETTABLEKS                       R9 R9 K18 ["curveAnimations"]
       69 SETLIST                          R8 R9 1 [1]
       71 SETTABLEKS                       R8 R7 K19 ["requiredData"]
       73 NEWTABLE                         R8 0 1
       75 GETTABLEKS                       R9 R2 K17 ["SharedDataMember"]
       77 GETTABLEKS                       R9 R9 K20 ["curveAnimBoneData"]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K21 ["conditionalData"]
       83 SETTABLEKS                       R6 R7 K22 ["fflag"]
       85 NEWTABLE                         R8 0 0
       87 SETTABLEKS                       R8 R7 K23 ["expectedFailures"]
       89 NEWTABLE                         R8 0 1
       91 GETTABLEKS                       R9 R2 K24 ["ValidationModule"]
       93 GETTABLEKS                       R9 R9 K25 ["CurveAnimDataAvailable"]
       95 SETLIST                          R8 R9 1 [1]
       97 SETTABLEKS                       R8 R7 K26 ["prereqTests"]
       99 DUPCLOSURE                       R8 K27 [PROTO_0]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R3
      103 SETTABLEKS                       R8 R7 K28 ["run"]
      105 RETURN                           R7 1
