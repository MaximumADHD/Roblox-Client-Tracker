PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R4 0
        3 DIVK                             R3 R4 K1 [100]
        4 GETUPVAL                         R7 1
        5 MOVE                             R8 R2
        6 LOADK                            R9 K2 ["MeshPart"]
        7 CALL                             R7 2 1
        8 MOVE                             R4 R7
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R10 R1 K3 ["renderMeshesData"]
       14 GETTABLEKS                       R11 R8 K4 ["Name"]
       16 GETTABLE                         R9 R10 R11
       17 JUMPIFNOT                        R9 ; [+111]
       18 GETTABLEKS                       R13 R9 K6 ["originalSize"]
       20 GETTABLEKS                       R14 R9 K7 ["scale"]
       22 MUL                              R12 R13 R14
       23 MUL                              R11 R12 R3
       24 DIVK                             R10 R11 K5 [2]
       25 GETTABLEKS                       R11 R8 K8 ["CFrame"]
       27 NAMECALL                         R11 R11 K9 ["Inverse"]
       29 CALL                             R11 1 1
       30 GETUPVAL                         R15 1
       31 MOVE                             R16 R8
       32 LOADK                            R17 K10 ["Bone"]
       33 CALL                             R15 2 1
       34 MOVE                             R12 R15
       35 LOADNIL                          R13
       36 LOADNIL                          R14
       37 FORGPREP                         R12
       38 GETUPVAL                         R17 2
       39 CALL                             R17 0 1
       40 JUMPIFNOT                        R17 ; [+4]
       41 MOVE                             R19 R16
       42 NAMECALL                         R17 R0 K11 ["setReportingInstance"]
       44 CALL                             R17 2 0
       45 GETTABLEKS                       R18 R16 K12 ["WorldCFrame"]
       47 MUL                              R17 R11 R18
       48 GETTABLEKS                       R17 R17 K13 ["Position"]
       50 GETUPVAL                         R18 3
       51 GETTABLEKS                       R18 R18 K14 ["isInRange"]
       53 MOVE                             R19 R17
       54 MINUS                            R20 R10
       55 MOVE                             R21 R10
       56 CALL                             R18 3 1
       57 JUMPIF                           R18 ; [+18]
       58 GETUPVAL                         R20 4
       59 GETTABLEKS                       R20 R20 K15 ["Keys"]
       61 GETTABLEKS                       R20 R20 K16 ["HrdBone_OutOfBounds"]
       63 DUPTABLE                         R21 K19 [{"bonePath", "partName"}]
       64 NAMECALL                         R22 R16 K20 ["GetFullName"]
       66 CALL                             R22 1 1
       67 SETTABLEKS                       R22 R21 K17 ["bonePath"]
       69 GETTABLEKS                       R22 R8 K4 ["Name"]
       71 SETTABLEKS                       R22 R21 K18 ["partName"]
       73 NAMECALL                         R18 R0 K21 ["fail"]
       75 CALL                             R18 3 0
       76 GETUPVAL                         R18 5
       77 GETTABLEKS                       R18 R18 K22 ["fuzzyEq"]
       79 GETTABLEKS                       R19 R16 K23 ["Transform"]
       81 GETIMPORT                        R20 K25 [CFrame.identity]
       83 CALL                             R18 2 1
       84 JUMPIF                           R18 ; [+14]
       85 GETUPVAL                         R20 4
       86 GETTABLEKS                       R20 R20 K15 ["Keys"]
       88 GETTABLEKS                       R20 R20 K26 ["HrdBone_TransformNotIdentity"]
       90 DUPTABLE                         R21 K27 [{"bonePath"}]
       91 NAMECALL                         R22 R16 K20 ["GetFullName"]
       93 CALL                             R22 1 1
       94 SETTABLEKS                       R22 R21 K17 ["bonePath"]
       96 NAMECALL                         R18 R0 K21 ["fail"]
       98 CALL                             R18 3 0
       99 GETTABLEKS                       R18 R16 K28 ["Parent"]
      101 LOADK                            R20 K10 ["Bone"]
      102 NAMECALL                         R18 R18 K29 ["IsA"]
      104 CALL                             R18 2 1
      105 JUMPIFNOT                        R18 ; [+21]
      106 GETTABLEKS                       R18 R16 K13 ["Position"]
      108 GETTABLEKS                       R18 R18 K30 ["Magnitude"]
      110 GETUPVAL                         R19 6
      111 JUMPIFNOTLT                      R18 R19 ; [+15]
      113 GETUPVAL                         R20 4
      114 GETTABLEKS                       R20 R20 K15 ["Keys"]
      116 GETTABLEKS                       R20 R20 K31 ["HrdBone_TooCloseToParent"]
      118 DUPTABLE                         R21 K27 [{"bonePath"}]
      119 NAMECALL                         R22 R16 K20 ["GetFullName"]
      121 CALL                             R22 1 1
      122 SETTABLEKS                       R22 R21 K17 ["bonePath"]
      124 NAMECALL                         R18 R0 K21 ["fail"]
      126 CALL                             R18 3 0
      127 FORGLOOP                         R12 2 ; [-90]
      129 FORGLOOP                         R4 2 ; [-118]
      131 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K12 ["getAllInstancesIsA"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K13 ["R15plusUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K14 ["Vector3Utils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K15 ["CFrameUtils"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 4 0
       67 GETIMPORT                        R10 K17 [game]
       69 LOADK                            R12 K18 ["UGCValidationBoneCFrameBoundsMultiplierHundredths"]
       70 LOADN                            R13 110
       71 NAMECALL                         R10 R10 K19 ["DefineFastInt"]
       73 CALL                             R10 3 1
       74 NEWTABLE                         R11 0 2
       76 GETTABLEKS                       R12 R2 K20 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K21 ["TORSO_AND_LIMBS"]
       80 GETTABLEKS                       R13 R2 K20 ["UploadCategory"]
       82 GETTABLEKS                       R13 R13 K22 ["DYNAMIC_HEAD"]
       84 SETLIST                          R11 R12 2 [1]
       86 SETTABLEKS                       R11 R9 K23 ["categories"]
       88 NEWTABLE                         R11 0 2
       90 GETTABLEKS                       R12 R2 K24 ["SharedDataMember"]
       92 GETTABLEKS                       R12 R12 K25 ["rootInstance"]
       94 GETTABLEKS                       R13 R2 K24 ["SharedDataMember"]
       96 GETTABLEKS                       R13 R13 K26 ["renderMeshesData"]
       98 SETLIST                          R11 R12 2 [1]
      100 SETTABLEKS                       R11 R9 K27 ["requiredData"]
      102 GETTABLEKS                       R11 R6 K28 ["checkFlagEnabledForAllowHrd"]
      104 SETTABLEKS                       R11 R9 K29 ["fflag"]
      106 GETIMPORT                        R12 K17 [game]
      108 LOADK                            R14 K31 ["UGCValidationMinimumJointDistanceHundredths"]
      109 LOADN                            R15 5
      110 NAMECALL                         R12 R12 K19 ["DefineFastInt"]
      112 CALL                             R12 3 1
      113 DIVK                             R11 R12 K30 [100]
      114 DUPCLOSURE                       R12 K32 [PROTO_0]
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R11
      122 SETTABLEKS                       R12 R9 K33 ["run"]
      124 RETURN                           R9 1
