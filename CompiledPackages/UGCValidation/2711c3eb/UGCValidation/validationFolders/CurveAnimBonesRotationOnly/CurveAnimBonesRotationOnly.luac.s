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
        5 NAMECALL                         R7 R6 K1 ["GetDescendants"]
        7 CALL                             R7 1 3
        8 FORGPREP                         R7
        9 LOADK                            R14 K2 ["Folder"]
       10 NAMECALL                         R12 R11 K3 ["IsA"]
       12 CALL                             R12 2 1
       13 JUMPIFNOT                        R12 ; [+24]
       14 GETUPVAL                         R12 0
       15 GETTABLEKS                       R12 R12 K4 ["isBoneFolderName"]
       17 GETTABLEKS                       R13 R11 K5 ["Name"]
       19 CALL                             R12 1 1
       20 JUMPIFNOT                        R12 ; [+17]
       21 GETUPVAL                         R12 1
       22 MOVE                             R13 R11
       23 CALL                             R12 1 1
       24 JUMPIFNOT                        R12 ; [+13]
       25 GETUPVAL                         R14 2
       26 GETTABLEKS                       R14 R14 K6 ["Keys"]
       28 GETTABLEKS                       R14 R14 K7 ["CurveAnim_BonePositionNotAllowed"]
       30 DUPTABLE                         R15 K9 [{"boneName"}]
       31 GETTABLEKS                       R16 R11 K5 ["Name"]
       33 SETTABLEKS                       R16 R15 K8 ["boneName"]
       35 NAMECALL                         R12 R0 K10 ["fail"]
       37 CALL                             R12 3 0
       38 FORGLOOP                         R7 2 ; [-30]
       40 FORGLOOP                         R2 2 ; [-36]
       42 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateEmotesBonesAllowed"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K13 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K14 ["EMOTE_ANIMATION"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K15 ["categories"]
       56 NEWTABLE                         R7 0 1
       58 GETTABLEKS                       R8 R2 K16 ["SharedDataMember"]
       60 GETTABLEKS                       R8 R8 K17 ["curveAnimations"]
       62 SETLIST                          R7 R8 1 [1]
       64 SETTABLEKS                       R7 R6 K18 ["requiredData"]
       66 NEWTABLE                         R7 0 1
       68 GETTABLEKS                       R8 R2 K16 ["SharedDataMember"]
       70 GETTABLEKS                       R8 R8 K19 ["curveAnimBoneData"]
       72 SETLIST                          R7 R8 1 [1]
       74 SETTABLEKS                       R7 R6 K20 ["conditionalData"]
       76 SETTABLEKS                       R5 R6 K21 ["fflag"]
       78 NEWTABLE                         R7 0 0
       80 SETTABLEKS                       R7 R6 K22 ["expectedFailures"]
       82 NEWTABLE                         R7 0 1
       84 GETTABLEKS                       R8 R2 K23 ["ValidationModule"]
       86 GETTABLEKS                       R8 R8 K24 ["CurveAnimDataAvailable"]
       88 SETLIST                          R7 R8 1 [1]
       90 SETTABLEKS                       R7 R6 K25 ["prereqTests"]
       92 DUPCLOSURE                       R7 K26 [PROTO_0]
       93 DUPCLOSURE                       R8 K27 [PROTO_1]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R8 R6 K28 ["run"]
       99 RETURN                           R6 1
