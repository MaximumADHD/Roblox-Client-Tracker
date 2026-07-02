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
       11 JUMPIFEQKNIL                     R8 ; [+81]
       13 GETUPVAL                         R9 1
       14 CALL                             R9 0 1
       15 JUMPIFNOT                        R9 ; [+4]
       16 MOVE                             R11 R7
       17 NAMECALL                         R9 R0 K4 ["setReportingInstance"]
       19 CALL                             R9 2 0
       20 GETTABLEKS                       R10 R1 K5 ["renderMeshesData"]
       22 GETTABLEKS                       R11 R7 K6 ["Name"]
       24 GETTABLE                         R9 R10 R11
       25 GETTABLEKS                       R12 R9 K7 ["originalSize"]
       27 GETTABLEKS                       R13 R9 K8 ["scale"]
       29 MUL                              R11 R12 R13
       30 GETUPVAL                         R12 2
       31 MUL                              R10 R11 R12
       32 GETTABLEKS                       R13 R7 K6 ["Name"]
       34 NAMECALL                         R11 R8 K9 ["GetContainedJointLabels"]
       36 CALL                             R11 2 1
       37 MOVE                             R12 R11
       38 LOADNIL                          R13
       39 LOADNIL                          R14
       40 FORGPREP                         R12
       41 MOVE                             R19 R16
       42 NAMECALL                         R17 R8 K10 ["GetJoint"]
       44 CALL                             R17 2 1
       45 JUMPIFNOT                        R17 ; [+14]
       46 GETUPVAL                         R17 3
       47 MOVE                             R18 R0
       48 MOVE                             R19 R16
       49 MOVE                             R22 R16
       50 NAMECALL                         R20 R8 K11 ["GetTposeAdjustment"]
       52 CALL                             R20 2 1
       53 MOVE                             R21 R2
       54 MOVE                             R22 R10
       55 GETUPVAL                         R24 4
       56 GETTABLE                         R23 R24 R16
       57 JUMPIF                           R23 ; [+1]
       58 GETUPVAL                         R23 5
       59 CALL                             R17 6 0
       60 FORGLOOP                         R12 2 ; [-20]
       62 LOADK                            R14 K12 ["DigitsRigDescription"]
       63 NAMECALL                         R12 R7 K3 ["FindFirstChildWhichIsA"]
       65 CALL                             R12 2 1
       66 JUMPIFEQKNIL                     R12 ; [+26]
       68 NAMECALL                         R13 R12 K13 ["GetJointLabels"]
       70 CALL                             R13 1 3
       71 FORGPREP                         R13
       72 MOVE                             R20 R17
       73 NAMECALL                         R18 R12 K10 ["GetJoint"]
       75 CALL                             R18 2 1
       76 JUMPIFNOT                        R18 ; [+14]
       77 GETUPVAL                         R18 3
       78 MOVE                             R19 R0
       79 MOVE                             R20 R17
       80 MOVE                             R23 R17
       81 NAMECALL                         R21 R12 K11 ["GetTposeAdjustment"]
       83 CALL                             R21 2 1
       84 MOVE                             R22 R2
       85 MOVE                             R23 R10
       86 GETUPVAL                         R25 4
       87 GETTABLE                         R24 R25 R17
       88 JUMPIF                           R24 ; [+1]
       89 GETUPVAL                         R24 6
       90 CALL                             R18 6 0
       91 FORGLOOP                         R13 2 ; [-20]
       93 FORGLOOP                         R3 2 ; [-87]
       95 RETURN                           R0 0

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
       48 GETTABLEKS                       R7 R7 K13 ["Vector3Utils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K14 ["valueToString"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K15 ["CFrameUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["util"]
       69 GETTABLEKS                       R10 R10 K16 ["getDiffBetweenOrientations"]
       71 CALL                             R9 1 1
       72 NEWTABLE                         R10 4 0
       74 NEWTABLE                         R11 0 2
       76 GETTABLEKS                       R12 R2 K17 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K18 ["TORSO_AND_LIMBS"]
       80 GETTABLEKS                       R13 R2 K17 ["UploadCategory"]
       82 GETTABLEKS                       R13 R13 K19 ["DYNAMIC_HEAD"]
       84 SETLIST                          R11 R12 2 [1]
       86 SETTABLEKS                       R11 R10 K20 ["categories"]
       88 NEWTABLE                         R11 0 2
       90 GETTABLEKS                       R12 R2 K21 ["SharedDataMember"]
       92 GETTABLEKS                       R12 R12 K22 ["rootInstance"]
       94 GETTABLEKS                       R13 R2 K21 ["SharedDataMember"]
       96 GETTABLEKS                       R13 R13 K23 ["renderMeshesData"]
       98 SETLIST                          R11 R12 2 [1]
      100 SETTABLEKS                       R11 R10 K24 ["requiredData"]
      102 GETIMPORT                        R11 K4 [require]
      104 GETTABLEKS                       R12 R0 K10 ["flags"]
      106 GETTABLEKS                       R12 R12 K25 ["getEngineFeatureEngineUGCValidateTPoseAdjustment"]
      108 CALL                             R11 1 1
      109 SETTABLEKS                       R11 R10 K26 ["fflag"]
      111 GETIMPORT                        R11 K28 [game]
      113 LOADK                            R13 K29 ["UGCValidationService"]
      114 NAMECALL                         R11 R11 K30 ["GetService"]
      116 CALL                             R11 2 1
      117 GETIMPORT                        R12 K28 [game]
      119 LOADK                            R14 K31 ["UGCValidationTposeShoulderDegreeOffsetThreshold"]
      120 LOADN                            R15 30
      121 NAMECALL                         R12 R12 K32 ["DefineFastInt"]
      123 CALL                             R12 3 1
      124 GETIMPORT                        R13 K28 [game]
      126 LOADK                            R15 K33 ["UGCValidationTposeElbowDegreeOffsetThreshold"]
      127 LOADN                            R16 30
      128 NAMECALL                         R13 R13 K32 ["DefineFastInt"]
      130 CALL                             R13 3 1
      131 GETIMPORT                        R14 K28 [game]
      133 LOADK                            R16 K34 ["UGCValidationTposeWristDegreeOffsetThreshold"]
      134 LOADN                            R17 30
      135 NAMECALL                         R14 R14 K32 ["DefineFastInt"]
      137 CALL                             R14 3 1
      138 GETIMPORT                        R15 K28 [game]
      140 LOADK                            R17 K35 ["UGCValidationTposeClavicleDegreeOffsetThreshold"]
      141 LOADN                            R18 30
      142 NAMECALL                         R15 R15 K32 ["DefineFastInt"]
      144 CALL                             R15 3 1
      145 GETIMPORT                        R16 K28 [game]
      147 LOADK                            R18 K36 ["UGCValidationTposeFingerDegreeOffsetThreshold"]
      148 LOADN                            R19 30
      149 NAMECALL                         R16 R16 K32 ["DefineFastInt"]
      151 CALL                             R16 3 1
      152 GETIMPORT                        R17 K28 [game]
      154 LOADK                            R19 K37 ["UGCValidationTposeGeneralDegreeOffsetThreshold"]
      155 LOADN                            R20 30
      156 NAMECALL                         R17 R17 K32 ["DefineFastInt"]
      158 CALL                             R17 3 1
      159 GETIMPORT                        R19 K28 [game]
      161 LOADK                            R21 K39 ["UGCValidationTposePositionOffsetPercentThreshold"]
      162 LOADN                            R22 40
      163 NAMECALL                         R19 R19 K32 ["DefineFastInt"]
      165 CALL                             R19 3 1
      166 DIVK                             R18 R19 K38 [100]
      167 NEWTABLE                         R19 8 0
      169 GETIMPORT                        R20 K43 [Enum.RigLabel.LeftShoulder]
      171 SETTABLE                         R12 R19 R20
      172 GETIMPORT                        R20 K45 [Enum.RigLabel.RightShoulder]
      174 SETTABLE                         R12 R19 R20
      175 GETIMPORT                        R20 K47 [Enum.RigLabel.LeftElbow]
      177 SETTABLE                         R13 R19 R20
      178 GETIMPORT                        R20 K49 [Enum.RigLabel.RightElbow]
      180 SETTABLE                         R13 R19 R20
      181 GETIMPORT                        R20 K51 [Enum.RigLabel.LeftWrist]
      183 SETTABLE                         R14 R19 R20
      184 GETIMPORT                        R20 K53 [Enum.RigLabel.RightWrist]
      186 SETTABLE                         R14 R19 R20
      187 GETIMPORT                        R20 K55 [Enum.RigLabel.LeftClavicle]
      189 SETTABLE                         R15 R19 R20
      190 GETIMPORT                        R20 K57 [Enum.RigLabel.RightClavicle]
      192 SETTABLE                         R15 R19 R20
      193 DUPCLOSURE                       R20 K58 [PROTO_0]
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R7
      200 DUPCLOSURE                       R21 K59 [PROTO_1]
      201 CAPTURE                          VAL R5
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R17
      207 CAPTURE                          VAL R16
      208 SETTABLEKS                       R21 R10 K60 ["run"]
      210 RETURN                           R10 1
