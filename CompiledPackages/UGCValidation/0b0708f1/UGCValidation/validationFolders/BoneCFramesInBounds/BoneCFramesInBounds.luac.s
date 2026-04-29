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
       17 JUMPIFNOT                        R9 ; [+104]
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
       38 GETTABLEKS                       R19 R16 K11 ["WorldCFrame"]
       40 MUL                              R18 R11 R19
       41 GETTABLEKS                       R17 R18 K12 ["Position"]
       43 GETUPVAL                         R19 2
       44 GETTABLEKS                       R18 R19 K13 ["isInRange"]
       46 MOVE                             R19 R17
       47 MINUS                            R20 R10
       48 MOVE                             R21 R10
       49 CALL                             R18 3 1
       50 JUMPIF                           R18 ; [+18]
       51 GETUPVAL                         R22 3
       52 GETTABLEKS                       R21 R22 K14 ["Keys"]
       54 GETTABLEKS                       R20 R21 K15 ["HrdBone_OutOfBounds"]
       56 DUPTABLE                         R21 K18 [{"bonePath", "partName"}]
       57 NAMECALL                         R22 R16 K19 ["GetFullName"]
       59 CALL                             R22 1 1
       60 SETTABLEKS                       R22 R21 K16 ["bonePath"]
       62 GETTABLEKS                       R22 R8 K4 ["Name"]
       64 SETTABLEKS                       R22 R21 K17 ["partName"]
       66 NAMECALL                         R18 R0 K20 ["fail"]
       68 CALL                             R18 3 0
       69 GETUPVAL                         R19 4
       70 GETTABLEKS                       R18 R19 K21 ["fuzzyEq"]
       72 GETTABLEKS                       R19 R16 K22 ["Transform"]
       74 GETIMPORT                        R20 K24 [CFrame.identity]
       76 CALL                             R18 2 1
       77 JUMPIF                           R18 ; [+14]
       78 GETUPVAL                         R22 3
       79 GETTABLEKS                       R21 R22 K14 ["Keys"]
       81 GETTABLEKS                       R20 R21 K25 ["HrdBone_TransformNotIdentity"]
       83 DUPTABLE                         R21 K26 [{"bonePath"}]
       84 NAMECALL                         R22 R16 K19 ["GetFullName"]
       86 CALL                             R22 1 1
       87 SETTABLEKS                       R22 R21 K16 ["bonePath"]
       89 NAMECALL                         R18 R0 K20 ["fail"]
       91 CALL                             R18 3 0
       92 GETTABLEKS                       R18 R16 K27 ["Parent"]
       94 LOADK                            R20 K10 ["Bone"]
       95 NAMECALL                         R18 R18 K28 ["IsA"]
       97 CALL                             R18 2 1
       98 JUMPIFNOT                        R18 ; [+21]
       99 GETTABLEKS                       R19 R16 K12 ["Position"]
      101 GETTABLEKS                       R18 R19 K29 ["Magnitude"]
      103 GETUPVAL                         R19 5
      104 JUMPIFNOTLT                      R18 R19 ; [+15]
      106 GETUPVAL                         R22 3
      107 GETTABLEKS                       R21 R22 K14 ["Keys"]
      109 GETTABLEKS                       R20 R21 K30 ["HrdBone_TooCloseToParent"]
      111 DUPTABLE                         R21 K26 [{"bonePath"}]
      112 NAMECALL                         R22 R16 K19 ["GetFullName"]
      114 CALL                             R22 1 1
      115 SETTABLEKS                       R22 R21 K16 ["bonePath"]
      117 NAMECALL                         R18 R0 K20 ["fail"]
      119 CALL                             R18 3 0
      120 FORGLOOP                         R12 2 ; [-83]
      122 FORGLOOP                         R4 2 ; [-111]
      124 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R5 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R6 K10 ["getAllInstancesIsA"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R7 K11 ["R15plusUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R8 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R8 K12 ["Vector3Utils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R9 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R9 K13 ["CFrameUtils"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 4 0
       60 GETIMPORT                        R9 K15 [game]
       62 LOADK                            R11 K16 ["UGCValidationBoneCFrameBoundsMultiplierHundredths"]
       63 LOADN                            R12 110
       64 NAMECALL                         R9 R9 K17 ["DefineFastInt"]
       66 CALL                             R9 3 1
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R12 R2 K18 ["UploadCategory"]
       71 GETTABLEKS                       R11 R12 K19 ["TORSO_AND_LIMBS"]
       73 GETTABLEKS                       R13 R2 K18 ["UploadCategory"]
       75 GETTABLEKS                       R12 R13 K20 ["DYNAMIC_HEAD"]
       77 SETLIST                          R10 R11 2 [1]
       79 SETTABLEKS                       R10 R8 K21 ["categories"]
       81 NEWTABLE                         R10 0 2
       83 GETTABLEKS                       R12 R2 K22 ["SharedDataMember"]
       85 GETTABLEKS                       R11 R12 K23 ["rootInstance"]
       87 GETTABLEKS                       R13 R2 K22 ["SharedDataMember"]
       89 GETTABLEKS                       R12 R13 K24 ["renderMeshesData"]
       91 SETLIST                          R10 R11 2 [1]
       93 SETTABLEKS                       R10 R8 K25 ["requiredData"]
       95 GETTABLEKS                       R10 R5 K26 ["checkFlagEnabledForAllowHrd"]
       97 SETTABLEKS                       R10 R8 K27 ["fflag"]
       99 GETIMPORT                        R11 K15 [game]
      101 LOADK                            R13 K29 ["UGCValidationMinimumJointDistanceHundredths"]
      102 LOADN                            R14 5
      103 NAMECALL                         R11 R11 K17 ["DefineFastInt"]
      105 CALL                             R11 3 1
      106 DIVK                             R10 R11 K28 [100]
      107 DUPCLOSURE                       R11 K30 [PROTO_0]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R10
      114 SETTABLEKS                       R11 R8 K31 ["run"]
      116 RETURN                           R8 1
