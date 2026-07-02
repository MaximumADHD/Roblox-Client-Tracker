PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 DUPTABLE                         R3 K4 [{["LeftShoulderRigAttachment"] = 0, ["RightShoulderRigAttachment"] = 0}]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R2
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K5 ["JointRotationName"]
        8 CALL                             R4 2 3
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K6 ["Parent"]
       12 GETUPVAL                         R10 2
       13 CALL                             R10 0 1
       14 JUMPIFNOT                        R10 ; [+4]
       15 MOVE                             R12 R8
       16 NAMECALL                         R10 R0 K7 ["setReportingInstance"]
       18 CALL                             R10 2 0
       19 GETTABLEKS                       R10 R8 K8 ["ClassName"]
       21 JUMPIFNOTEQKS                    R10 K9 ["Attachment"] ; [+6]
       23 LOADK                            R12 K9 ["Attachment"]
       24 NAMECALL                         R10 R9 K10 ["IsA"]
       26 CALL                             R10 2 1
       27 JUMPIF                           R10 ; [+15]
       28 GETUPVAL                         R12 3
       29 GETTABLEKS                       R12 R12 K11 ["Keys"]
       31 GETTABLEKS                       R12 R12 K12 ["JointRotAtt_WrongInstanceClass"]
       33 DUPTABLE                         R13 K14 [{"instPath"}]
       34 NAMECALL                         R14 R8 K15 ["GetFullName"]
       36 CALL                             R14 1 1
       37 SETTABLEKS                       R14 R13 K13 ["instPath"]
       39 NAMECALL                         R10 R0 K16 ["fail"]
       41 CALL                             R10 3 0
       42 JUMP                             ; [+160]
       43 GETTABLEKS                       R11 R9 K17 ["Name"]
       45 GETTABLE                         R10 R3 R11
       46 JUMPIFNOTEQKNIL                  R10 ; [+16]
       48 GETUPVAL                         R12 3
       49 GETTABLEKS                       R12 R12 K11 ["Keys"]
       51 GETTABLEKS                       R12 R12 K18 ["JointRotAtt_UnrecognizedParent"]
       53 DUPTABLE                         R13 K20 [{"parentPath"}]
       54 NAMECALL                         R14 R9 K15 ["GetFullName"]
       56 CALL                             R14 1 1
       57 SETTABLEKS                       R14 R13 K19 ["parentPath"]
       59 NAMECALL                         R10 R0 K16 ["fail"]
       61 CALL                             R10 3 0
       62 JUMP                             ; [+140]
       63 GETTABLEKS                       R11 R9 K17 ["Name"]
       65 GETTABLE                         R10 R3 R11
       66 JUMPIFNOTEQKN                    R10 K21 [1] ; [+16]
       68 GETUPVAL                         R12 3
       69 GETTABLEKS                       R12 R12 K11 ["Keys"]
       71 GETTABLEKS                       R12 R12 K22 ["JointRotAtt_MultipleAttachments"]
       73 DUPTABLE                         R13 K20 [{"parentPath"}]
       74 NAMECALL                         R14 R9 K15 ["GetFullName"]
       76 CALL                             R14 1 1
       77 SETTABLEKS                       R14 R13 K19 ["parentPath"]
       79 NAMECALL                         R10 R0 K16 ["fail"]
       81 CALL                             R10 3 0
       82 JUMP                             ; [+120]
       83 GETTABLEKS                       R10 R9 K17 ["Name"]
       85 GETTABLE                         R11 R3 R10
       86 ADDK                             R11 R11 K21 [1]
       87 SETTABLE                         R11 R3 R10
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R12 R1 K23 ["uploadEnum"]
       91 GETTABLEKS                       R12 R12 K24 ["assetType"]
       93 GETTABLE                         R10 R11 R12
       94 JUMPIFEQKNIL                     R10 ; [+108]
       96 GETUPVAL                         R12 4
       97 GETTABLEKS                       R13 R1 K23 ["uploadEnum"]
       99 GETTABLEKS                       R13 R13 K24 ["assetType"]
      101 GETTABLE                         R11 R12 R13
      102 GETTABLEKS                       R12 R9 K17 ["Name"]
      104 GETTABLE                         R10 R11 R12
      105 JUMPIFEQKNIL                     R10 ; [+97]
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R13 R1 K23 ["uploadEnum"]
      110 GETTABLEKS                       R13 R13 K24 ["assetType"]
      112 GETTABLE                         R11 R12 R13
      113 GETTABLEKS                       R12 R9 K17 ["Name"]
      115 GETTABLE                         R10 R11 R12
      116 GETTABLEKS                       R11 R8 K25 ["CFrame"]
      118 GETUPVAL                         R12 5
      119 MOVE                             R13 R10
      120 MOVE                             R14 R11
      121 CALL                             R12 2 1
      122 GETUPVAL                         R13 6
      123 JUMPIFNOTLT                      R13 R12 ; [+50]
      125 NAMECALL                         R13 R10 K26 ["ToOrientation"]
      127 CALL                             R13 1 -1
      128 FASTCALL                         VECTOR ; [+2]
      129 GETIMPORT                        R12 K29 [Vector3.new]
      131 CALL                             R12 -1 1
      132 GETTABLEKS                       R15 R12 K30 ["X"]
      134 FASTCALL1                        MATH_DEG R15 ; [+2]
      135 GETIMPORT                        R14 K33 [math.deg]
      137 CALL                             R14 1 1
      138 GETTABLEKS                       R16 R12 K34 ["Y"]
      140 FASTCALL1                        MATH_DEG R16 ; [+2]
      141 GETIMPORT                        R15 K33 [math.deg]
      143 CALL                             R15 1 1
      144 GETTABLEKS                       R17 R12 K35 ["Z"]
      146 FASTCALL1                        MATH_DEG R17 ; [+2]
      147 GETIMPORT                        R16 K33 [math.deg]
      149 CALL                             R16 1 1
      150 FASTCALL                         VECTOR ; [+2]
      151 GETIMPORT                        R13 K29 [Vector3.new]
      153 CALL                             R13 3 1
      154 MOVE                             R12 R13
      155 GETUPVAL                         R15 3
      156 GETTABLEKS                       R15 R15 K11 ["Keys"]
      158 GETTABLEKS                       R15 R15 K36 ["JointRotAtt_Rotated"]
      160 DUPTABLE                         R16 K38 [{"instPath", "expectedOrientation"}]
      161 NAMECALL                         R17 R8 K15 ["GetFullName"]
      163 CALL                             R17 1 1
      164 SETTABLEKS                       R17 R16 K13 ["instPath"]
      166 GETUPVAL                         R17 7
      167 MOVE                             R18 R12
      168 CALL                             R17 1 1
      169 SETTABLEKS                       R17 R16 K37 ["expectedOrientation"]
      171 NAMECALL                         R13 R0 K16 ["fail"]
      173 CALL                             R13 3 0
      174 GETTABLEKS                       R13 R11 K39 ["Position"]
      176 LOADK                            R14 K40 [{0, 0, 0}]
      177 SUB                              R12 R13 R14
      178 GETTABLEKS                       R12 R12 K41 ["Magnitude"]
      180 GETUPVAL                         R14 8
      181 DIVK                             R13 R14 K42 [100]
      182 JUMPIFNOTLT                      R13 R12 ; [+20]
      184 GETUPVAL                         R14 3
      185 GETTABLEKS                       R14 R14 K11 ["Keys"]
      187 GETTABLEKS                       R14 R14 K43 ["JointRotAtt_Moved"]
      189 DUPTABLE                         R15 K45 [{"instPath", "expectedPosition"}]
      190 NAMECALL                         R16 R8 K15 ["GetFullName"]
      192 CALL                             R16 1 1
      193 SETTABLEKS                       R16 R15 K13 ["instPath"]
      195 GETUPVAL                         R16 7
      196 LOADK                            R17 K40 [{0, 0, 0}]
      197 CALL                             R16 1 1
      198 SETTABLEKS                       R16 R15 K44 ["expectedPosition"]
      200 NAMECALL                         R12 R0 K16 ["fail"]
      202 CALL                             R12 3 0
      203 FORGLOOP                         R4 2 ; [-194]
      205 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getDiffBetweenOrientations"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K13 ["valueToString"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K14 ["getAllInstancesWithName"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K15 ["R15plusUtils"]
       64 CALL                             R8 1 1
       65 NEWTABLE                         R9 4 0
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R11 R2 K16 ["UploadCategory"]
       71 GETTABLEKS                       R11 R11 K17 ["TORSO_AND_LIMBS"]
       73 GETTABLEKS                       R12 R2 K16 ["UploadCategory"]
       75 GETTABLEKS                       R12 R12 K18 ["DYNAMIC_HEAD"]
       77 SETLIST                          R10 R11 2 [1]
       79 SETTABLEKS                       R10 R9 K19 ["categories"]
       81 NEWTABLE                         R10 0 1
       83 GETTABLEKS                       R11 R2 K20 ["SharedDataMember"]
       85 GETTABLEKS                       R11 R11 K21 ["rootInstance"]
       87 SETLIST                          R10 R11 1 [1]
       89 SETTABLEKS                       R10 R9 K22 ["requiredData"]
       91 GETTABLEKS                       R10 R8 K23 ["checkFlagEnabledForAllowHrd"]
       93 SETTABLEKS                       R10 R9 K24 ["fflag"]
       95 GETIMPORT                        R10 K26 [game]
       97 LOADK                            R12 K27 ["UGCValidationJointRotationMaximumHundredthPositionOffset"]
       98 LOADN                            R13 1
       99 NAMECALL                         R10 R10 K28 ["DefineFastInt"]
      101 CALL                             R10 3 1
      102 GETIMPORT                        R11 K26 [game]
      104 LOADK                            R13 K29 ["UGCValidationJointRotationMaximumDegreeOrientationOffset"]
      105 LOADN                            R14 1
      106 NAMECALL                         R11 R11 K28 ["DefineFastInt"]
      108 CALL                             R11 3 1
      109 NEWTABLE                         R12 4 0
      111 GETIMPORT                        R13 K33 [Enum.AssetType.Torso]
      113 DUPTABLE                         R14 K36 [{"RightShoulderRigAttachment", "LeftShoulderRigAttachment"}]
      114 GETIMPORT                        R15 K39 [CFrame.fromOrientation]
      116 LOADN                            R16 0
      117 LOADN                            R17 0
      118 LOADN                            R18 0
      119 CALL                             R15 3 1
      120 SETTABLEKS                       R15 R14 K34 ["RightShoulderRigAttachment"]
      122 GETIMPORT                        R15 K39 [CFrame.fromOrientation]
      124 LOADN                            R16 0
      125 LOADK                            R17 K40 [3.14159265358979]
      126 LOADN                            R18 0
      127 CALL                             R15 3 1
      128 SETTABLEKS                       R15 R14 K35 ["LeftShoulderRigAttachment"]
      130 SETTABLE                         R14 R12 R13
      131 GETIMPORT                        R13 K42 [Enum.AssetType.RightArm]
      133 DUPTABLE                         R14 K43 [{"RightShoulderRigAttachment"}]
      134 GETIMPORT                        R15 K39 [CFrame.fromOrientation]
      136 LOADN                            R16 0
      137 LOADN                            R17 0
      138 LOADK                            R18 K44 [-1.5707963267949]
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K34 ["RightShoulderRigAttachment"]
      142 SETTABLE                         R14 R12 R13
      143 GETIMPORT                        R13 K46 [Enum.AssetType.LeftArm]
      145 DUPTABLE                         R14 K47 [{"LeftShoulderRigAttachment"}]
      146 GETIMPORT                        R15 K39 [CFrame.fromOrientation]
      148 LOADN                            R16 0
      149 LOADK                            R17 K40 [3.14159265358979]
      150 LOADK                            R18 K44 [-1.5707963267949]
      151 CALL                             R15 3 1
      152 SETTABLEKS                       R15 R14 K35 ["LeftShoulderRigAttachment"]
      154 SETTABLE                         R14 R12 R13
      155 DUPCLOSURE                       R13 K48 [PROTO_0]
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R10
      165 SETTABLEKS                       R13 R9 K49 ["run"]
      167 RETURN                           R9 1
