PROTO_0:
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

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimations"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 LOADB                            R7 0
        6 NAMECALL                         R8 R6 K1 ["GetDescendants"]
        8 CALL                             R8 1 3
        9 FORGPREP                         R8
       10 LOADK                            R15 K2 ["Folder"]
       11 NAMECALL                         R13 R12 K3 ["IsA"]
       13 CALL                             R13 2 1
       14 JUMPIFNOT                        R13 ; [+9]
       15 GETUPVAL                         R13 0
       16 GETTABLEKS                       R13 R13 K4 ["isBoneFolderName"]
       18 GETTABLEKS                       R14 R12 K5 ["Name"]
       20 CALL                             R13 1 1
       21 JUMPIFNOT                        R13 ; [+2]
       22 LOADB                            R7 1
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R8 2 ; [-15]
       26 JUMPIFNOT                        R7 ; [+35]
       27 NAMECALL                         R8 R6 K1 ["GetDescendants"]
       29 CALL                             R8 1 3
       30 FORGPREP                         R8
       31 LOADK                            R15 K2 ["Folder"]
       32 NAMECALL                         R13 R12 K3 ["IsA"]
       34 CALL                             R13 2 1
       35 JUMPIFNOT                        R13 ; [+24]
       36 GETUPVAL                         R13 1
       37 GETTABLEKS                       R13 R13 K6 ["isBodyPartFolderNameValid"]
       39 GETTABLEKS                       R14 R12 K5 ["Name"]
       41 CALL                             R13 1 1
       42 JUMPIFNOT                        R13 ; [+17]
       43 GETUPVAL                         R13 2
       44 MOVE                             R14 R12
       45 CALL                             R13 1 1
       46 JUMPIFNOT                        R13 ; [+13]
       47 GETUPVAL                         R15 3
       48 GETTABLEKS                       R15 R15 K7 ["Keys"]
       50 GETTABLEKS                       R15 R15 K8 ["CurveAnim_BodyPartWithBoneHasPosition"]
       52 DUPTABLE                         R16 K10 [{"bodyPartName"}]
       53 GETTABLEKS                       R17 R12 K5 ["Name"]
       55 SETTABLEKS                       R17 R16 K9 ["bodyPartName"]
       57 NAMECALL                         R13 R0 K11 ["fail"]
       59 CALL                             R13 3 0
       60 FORGLOOP                         R8 2 ; [-30]
       62 FORGLOOP                         R2 2 ; [-58]
       64 RETURN                           R0 0

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
      100 DUPCLOSURE                       R9 K28 [PROTO_1]
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R9 R7 K29 ["run"]
      107 RETURN                           R7 1
