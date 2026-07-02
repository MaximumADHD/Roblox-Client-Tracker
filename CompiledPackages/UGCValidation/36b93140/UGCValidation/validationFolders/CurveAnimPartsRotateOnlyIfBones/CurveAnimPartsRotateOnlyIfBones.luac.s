PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["Position"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADK                            R4 K2 ["Vector3Curve"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 NEWTABLE                         R2 0 3
       14 LOADK                            R5 K4 ["X"]
       15 LOADK                            R6 K5 ["Y"]
       16 LOADK                            R7 K6 ["Z"]
       17 SETLIST                          R2 R5 3 [1]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 MOVE                             R9 R6
       23 NAMECALL                         R7 R1 K1 ["FindFirstChild"]
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R7 ; [+14]
       27 LOADK                            R10 K7 ["FloatCurve"]
       28 NAMECALL                         R8 R7 K3 ["IsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+9]
       32 NAMECALL                         R9 R7 K8 ["GetKeys"]
       34 CALL                             R9 1 1
       35 LENGTH                           R8 R9
       36 LOADN                            R9 0
       37 JUMPIFNOTLT                      R9 R8 ; [+3]
       39 LOADB                            R8 1
       40 RETURN                           R8 1
       41 FORGLOOP                         R2 2 ; [-20]
       43 LOADB                            R2 0
       44 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R3 R1 K0 ["uploadCategory"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["UploadCategory"]
        8 GETTABLEKS                       R4 R4 K2 ["ANIMATION"]
       10 JUMPIFEQ                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 GETTABLEKS                       R3 R1 K3 ["curveAnimations"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 JUMPIF                           R2 ; [+22]
       20 LOADB                            R8 0
       21 NAMECALL                         R9 R7 K4 ["GetDescendants"]
       23 CALL                             R9 1 3
       24 FORGPREP                         R9
       25 LOADK                            R16 K5 ["Folder"]
       26 NAMECALL                         R14 R13 K6 ["IsA"]
       28 CALL                             R14 2 1
       29 JUMPIFNOT                        R14 ; [+9]
       30 GETUPVAL                         R14 2
       31 GETTABLEKS                       R14 R14 K7 ["isBoneFolderName"]
       33 GETTABLEKS                       R15 R13 K8 ["Name"]
       35 CALL                             R14 1 1
       36 JUMPIFNOT                        R14 ; [+2]
       37 LOADB                            R8 1
       38 JUMP                             ; [+2]
       39 FORGLOOP                         R9 2 ; [-15]
       41 JUMPIFNOT                        R8 ; [+50]
       42 NAMECALL                         R8 R7 K4 ["GetDescendants"]
       44 CALL                             R8 1 3
       45 FORGPREP                         R8
       46 LOADK                            R15 K5 ["Folder"]
       47 NAMECALL                         R13 R12 K6 ["IsA"]
       49 CALL                             R13 2 1
       50 JUMPIFNOT                        R13 ; [+39]
       51 GETUPVAL                         R13 3
       52 GETTABLEKS                       R13 R13 K9 ["isBodyPartFolderNameValid"]
       54 GETTABLEKS                       R14 R12 K8 ["Name"]
       56 CALL                             R13 1 1
       57 JUMPIFNOT                        R13 ; [+32]
       58 GETUPVAL                         R13 4
       59 MOVE                             R14 R12
       60 CALL                             R13 1 1
       61 JUMPIFNOT                        R13 ; [+28]
       62 JUMPIFNOT                        R2 ; [+14]
       63 GETUPVAL                         R15 5
       64 GETTABLEKS                       R15 R15 K10 ["Keys"]
       66 GETTABLEKS                       R15 R15 K11 ["CurveAnim_BodyPartHasPosition"]
       68 DUPTABLE                         R16 K13 [{"bodyPartName"}]
       69 GETTABLEKS                       R17 R12 K8 ["Name"]
       71 SETTABLEKS                       R17 R16 K12 ["bodyPartName"]
       73 NAMECALL                         R13 R0 K14 ["fail"]
       75 CALL                             R13 3 0
       76 JUMP                             ; [+13]
       77 GETUPVAL                         R15 5
       78 GETTABLEKS                       R15 R15 K10 ["Keys"]
       80 GETTABLEKS                       R15 R15 K15 ["CurveAnim_BodyPartWithBoneHasPosition"]
       82 DUPTABLE                         R16 K13 [{"bodyPartName"}]
       83 GETTABLEKS                       R17 R12 K8 ["Name"]
       85 SETTABLEKS                       R17 R16 K12 ["bodyPartName"]
       87 NAMECALL                         R13 R0 K14 ["fail"]
       89 CALL                             R13 3 0
       90 FORGLOOP                         R8 2 ; [-45]
       92 FORGLOOP                         R3 2 ; [-74]
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
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["CurveAnimBoneHierarchyUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K12 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["getFFlagUGCValidateEmotesBonesAllowed"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K12 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFFlagUGCValidateAnimPartsRotationOnly"]
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
      104 MOVE                             R10 R7
      105 CALL                             R10 0 1
      106 JUMPIFNOT                        R10 ; [+5]
      107 NEWTABLE                         R10 0 0
      109 SETTABLEKS                       R10 R9 K26 ["conditionalData"]
      111 JUMP                             ; [+10]
      112 NEWTABLE                         R10 0 1
      114 GETTABLEKS                       R11 R2 K23 ["SharedDataMember"]
      116 GETTABLEKS                       R11 R11 K27 ["curveAnimBoneData"]
      118 SETLIST                          R10 R11 1 [1]
      120 SETTABLEKS                       R10 R9 K26 ["conditionalData"]
      122 DUPCLOSURE                       R10 K28 [PROTO_0]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R7
      125 SETTABLEKS                       R10 R9 K29 ["fflag"]
      127 NEWTABLE                         R10 0 0
      129 SETTABLEKS                       R10 R9 K30 ["expectedFailures"]
      131 NEWTABLE                         R10 0 1
      133 GETTABLEKS                       R11 R2 K31 ["ValidationModule"]
      135 GETTABLEKS                       R11 R11 K32 ["CurveAnimDataAvailable"]
      137 SETLIST                          R10 R11 1 [1]
      139 SETTABLEKS                       R10 R9 K33 ["prereqTests"]
      141 DUPCLOSURE                       R10 K34 [PROTO_1]
      142 DUPCLOSURE                       R11 K35 [PROTO_2]
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R3
      149 SETTABLEKS                       R11 R9 K36 ["run"]
      151 RETURN                           R9 1
