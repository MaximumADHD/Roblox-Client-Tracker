PROTO_0:
        0 GETUPVAL                         R6 0
        1 MOVE                             R8 R1
        2 MOVE                             R9 R3
        3 NAMECALL                         R6 R6 K0 ["GetExpectedTposeRotation"]
        5 CALL                             R6 3 1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R8 R2 K1 ["Rotation"]
        9 MOVE                             R9 R6
       10 CALL                             R7 2 1
       11 JUMPIFNOTLT                      R5 R7 ; [+23]
       13 GETUPVAL                         R10 2
       14 GETTABLEKS                       R10 R10 K2 ["Keys"]
       16 GETTABLEKS                       R10 R10 K3 ["HrdTposeRotation"]
       18 DUPTABLE                         R11 K7 [{"jointName", "degLimit", "expectedOrientation"}]
       19 GETTABLEKS                       R12 R1 K8 ["Name"]
       21 SETTABLEKS                       R12 R11 K4 ["jointName"]
       23 SETTABLEKS                       R5 R11 K5 ["degLimit"]
       25 GETUPVAL                         R12 3
       26 GETTABLEKS                       R12 R12 K9 ["getRotationString"]
       28 MOVE                             R13 R6
       29 CALL                             R12 1 1
       30 SETTABLEKS                       R12 R11 K6 ["expectedOrientation"]
       32 NAMECALL                         R8 R0 K10 ["fail"]
       34 CALL                             R8 3 0
       35 GETUPVAL                         R8 4
       36 GETTABLEKS                       R8 R8 K11 ["isInRange"]
       38 GETTABLEKS                       R9 R2 K12 ["Position"]
       40 MULK                             R10 R4 K13 [-1]
       41 MOVE                             R11 R4
       42 CALL                             R8 3 1
       43 JUMPIF                           R8 ; [+18]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K2 ["Keys"]
       47 GETTABLEKS                       R10 R10 K14 ["HrdTposePosition"]
       49 DUPTABLE                         R11 K16 [{"jointName", "offsetLimit"}]
       50 GETTABLEKS                       R12 R1 K8 ["Name"]
       52 SETTABLEKS                       R12 R11 K4 ["jointName"]
       54 GETUPVAL                         R12 5
       55 MOVE                             R13 R4
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R12 R11 K15 ["offsetLimit"]
       59 NAMECALL                         R8 R0 K10 ["fail"]
       61 CALL                             R8 3 0
       62 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["MeshPart"]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K2 ["HumanoidRigDescription"]
        8 NAMECALL                         R8 R7 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R8 2 1
       11 JUMPIFEQKNIL                     R8 ; [+74]
       13 GETTABLEKS                       R10 R1 K4 ["renderMeshesData"]
       15 GETTABLEKS                       R11 R7 K5 ["Name"]
       17 GETTABLE                         R9 R10 R11
       18 GETTABLEKS                       R12 R9 K6 ["originalSize"]
       20 GETTABLEKS                       R13 R9 K7 ["scale"]
       22 MUL                              R11 R12 R13
       23 GETUPVAL                         R12 1
       24 MUL                              R10 R11 R12
       25 GETTABLEKS                       R13 R7 K5 ["Name"]
       27 NAMECALL                         R11 R8 K8 ["GetContainedJointLabels"]
       29 CALL                             R11 2 1
       30 MOVE                             R12 R11
       31 LOADNIL                          R13
       32 LOADNIL                          R14
       33 FORGPREP                         R12
       34 MOVE                             R19 R16
       35 NAMECALL                         R17 R8 K9 ["GetJoint"]
       37 CALL                             R17 2 1
       38 JUMPIFNOT                        R17 ; [+14]
       39 GETUPVAL                         R17 2
       40 MOVE                             R18 R0
       41 MOVE                             R19 R16
       42 MOVE                             R22 R16
       43 NAMECALL                         R20 R8 K10 ["GetTposeAdjustment"]
       45 CALL                             R20 2 1
       46 MOVE                             R21 R2
       47 MOVE                             R22 R10
       48 GETUPVAL                         R24 3
       49 GETTABLE                         R23 R24 R16
       50 JUMPIF                           R23 ; [+1]
       51 GETUPVAL                         R23 4
       52 CALL                             R17 6 0
       53 FORGLOOP                         R12 2 ; [-20]
       55 LOADK                            R14 K11 ["DigitsRigDescription"]
       56 NAMECALL                         R12 R7 K3 ["FindFirstChildWhichIsA"]
       58 CALL                             R12 2 1
       59 JUMPIFEQKNIL                     R12 ; [+26]
       61 NAMECALL                         R13 R12 K12 ["GetJointLabels"]
       63 CALL                             R13 1 3
       64 FORGPREP                         R13
       65 MOVE                             R20 R17
       66 NAMECALL                         R18 R12 K9 ["GetJoint"]
       68 CALL                             R18 2 1
       69 JUMPIFNOT                        R18 ; [+14]
       70 GETUPVAL                         R18 2
       71 MOVE                             R19 R0
       72 MOVE                             R20 R17
       73 MOVE                             R23 R17
       74 NAMECALL                         R21 R12 K10 ["GetTposeAdjustment"]
       76 CALL                             R21 2 1
       77 MOVE                             R22 R2
       78 MOVE                             R23 R10
       79 GETUPVAL                         R25 3
       80 GETTABLE                         R24 R25 R17
       81 JUMPIF                           R24 ; [+1]
       82 GETUPVAL                         R24 5
       83 CALL                             R18 6 0
       84 FORGLOOP                         R13 2 ; [-20]
       86 FORGLOOP                         R3 2 ; [-80]
       88 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K10 ["getAllInstancesIsA"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["Vector3Utils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K12 ["valueToString"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K13 ["CFrameUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K14 ["getDiffBetweenOrientations"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 4 0
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R11 R2 K15 ["UploadCategory"]
       71 GETTABLEKS                       R11 R11 K16 ["TORSO_AND_LIMBS"]
       73 GETTABLEKS                       R12 R2 K15 ["UploadCategory"]
       75 GETTABLEKS                       R12 R12 K17 ["DYNAMIC_HEAD"]
       77 SETLIST                          R10 R11 2 [1]
       79 SETTABLEKS                       R10 R9 K18 ["categories"]
       81 NEWTABLE                         R10 0 2
       83 GETTABLEKS                       R11 R2 K19 ["SharedDataMember"]
       85 GETTABLEKS                       R11 R11 K20 ["rootInstance"]
       87 GETTABLEKS                       R12 R2 K19 ["SharedDataMember"]
       89 GETTABLEKS                       R12 R12 K21 ["renderMeshesData"]
       91 SETLIST                          R10 R11 2 [1]
       93 SETTABLEKS                       R10 R9 K22 ["requiredData"]
       95 GETIMPORT                        R10 K4 [require]
       97 GETTABLEKS                       R11 R0 K23 ["flags"]
       99 GETTABLEKS                       R11 R11 K24 ["getEngineFeatureEngineUGCValidateTPoseAdjustment"]
      101 CALL                             R10 1 1
      102 SETTABLEKS                       R10 R9 K25 ["fflag"]
      104 GETIMPORT                        R10 K27 [game]
      106 LOADK                            R12 K28 ["UGCValidationService"]
      107 NAMECALL                         R10 R10 K29 ["GetService"]
      109 CALL                             R10 2 1
      110 GETIMPORT                        R11 K27 [game]
      112 LOADK                            R13 K30 ["UGCValidationTposeShoulderDegreeOffsetThreshold"]
      113 LOADN                            R14 30
      114 NAMECALL                         R11 R11 K31 ["DefineFastInt"]
      116 CALL                             R11 3 1
      117 GETIMPORT                        R12 K27 [game]
      119 LOADK                            R14 K32 ["UGCValidationTposeElbowDegreeOffsetThreshold"]
      120 LOADN                            R15 30
      121 NAMECALL                         R12 R12 K31 ["DefineFastInt"]
      123 CALL                             R12 3 1
      124 GETIMPORT                        R13 K27 [game]
      126 LOADK                            R15 K33 ["UGCValidationTposeWristDegreeOffsetThreshold"]
      127 LOADN                            R16 30
      128 NAMECALL                         R13 R13 K31 ["DefineFastInt"]
      130 CALL                             R13 3 1
      131 GETIMPORT                        R14 K27 [game]
      133 LOADK                            R16 K34 ["UGCValidationTposeClavicleDegreeOffsetThreshold"]
      134 LOADN                            R17 30
      135 NAMECALL                         R14 R14 K31 ["DefineFastInt"]
      137 CALL                             R14 3 1
      138 GETIMPORT                        R15 K27 [game]
      140 LOADK                            R17 K35 ["UGCValidationTposeFingerDegreeOffsetThreshold"]
      141 LOADN                            R18 30
      142 NAMECALL                         R15 R15 K31 ["DefineFastInt"]
      144 CALL                             R15 3 1
      145 GETIMPORT                        R16 K27 [game]
      147 LOADK                            R18 K36 ["UGCValidationTposeGeneralDegreeOffsetThreshold"]
      148 LOADN                            R19 30
      149 NAMECALL                         R16 R16 K31 ["DefineFastInt"]
      151 CALL                             R16 3 1
      152 GETIMPORT                        R18 K27 [game]
      154 LOADK                            R20 K38 ["UGCValidationTposePositionOffsetPercentThreshold"]
      155 LOADN                            R21 40
      156 NAMECALL                         R18 R18 K31 ["DefineFastInt"]
      158 CALL                             R18 3 1
      159 DIVK                             R17 R18 K37 [100]
      160 NEWTABLE                         R18 8 0
      162 GETIMPORT                        R19 K42 [Enum.RigLabel.LeftShoulder]
      164 SETTABLE                         R11 R18 R19
      165 GETIMPORT                        R19 K44 [Enum.RigLabel.RightShoulder]
      167 SETTABLE                         R11 R18 R19
      168 GETIMPORT                        R19 K46 [Enum.RigLabel.LeftElbow]
      170 SETTABLE                         R12 R18 R19
      171 GETIMPORT                        R19 K48 [Enum.RigLabel.RightElbow]
      173 SETTABLE                         R12 R18 R19
      174 GETIMPORT                        R19 K50 [Enum.RigLabel.LeftWrist]
      176 SETTABLE                         R13 R18 R19
      177 GETIMPORT                        R19 K52 [Enum.RigLabel.RightWrist]
      179 SETTABLE                         R13 R18 R19
      180 GETIMPORT                        R19 K54 [Enum.RigLabel.LeftClavicle]
      182 SETTABLE                         R14 R18 R19
      183 GETIMPORT                        R19 K56 [Enum.RigLabel.RightClavicle]
      185 SETTABLE                         R14 R18 R19
      186 DUPCLOSURE                       R19 K57 [PROTO_0]
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R3
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R6
      193 DUPCLOSURE                       R20 K58 [PROTO_1]
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R17
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R15
      200 SETTABLEKS                       R20 R9 K59 ["run"]
      202 RETURN                           R9 1
