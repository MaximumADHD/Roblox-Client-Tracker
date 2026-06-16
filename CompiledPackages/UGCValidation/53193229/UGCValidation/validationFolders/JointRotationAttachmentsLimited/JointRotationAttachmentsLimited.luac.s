PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 DUPTABLE                         R3 K3 [{"LeftShoulderRigAttachment", "RightShoulderRigAttachment"}]
        3 LOADN                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["LeftShoulderRigAttachment"]
        6 LOADN                            R4 0
        7 SETTABLEKS                       R4 R3 K2 ["RightShoulderRigAttachment"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K4 ["JointRotationName"]
       14 CALL                             R4 2 3
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K5 ["Parent"]
       18 GETUPVAL                         R10 2
       19 CALL                             R10 0 1
       20 JUMPIFNOT                        R10 ; [+4]
       21 MOVE                             R12 R8
       22 NAMECALL                         R10 R0 K6 ["setReportingInstance"]
       24 CALL                             R10 2 0
       25 GETTABLEKS                       R10 R8 K7 ["ClassName"]
       27 JUMPIFNOTEQKS                    R10 K8 ["Attachment"] ; [+6]
       29 LOADK                            R12 K8 ["Attachment"]
       30 NAMECALL                         R10 R9 K9 ["IsA"]
       32 CALL                             R10 2 1
       33 JUMPIF                           R10 ; [+15]
       34 GETUPVAL                         R12 3
       35 GETTABLEKS                       R12 R12 K10 ["Keys"]
       37 GETTABLEKS                       R12 R12 K11 ["JointRotAtt_WrongInstanceClass"]
       39 DUPTABLE                         R13 K13 [{"instPath"}]
       40 NAMECALL                         R14 R8 K14 ["GetFullName"]
       42 CALL                             R14 1 1
       43 SETTABLEKS                       R14 R13 K12 ["instPath"]
       45 NAMECALL                         R10 R0 K15 ["fail"]
       47 CALL                             R10 3 0
       48 JUMP                             ; [+160]
       49 GETTABLEKS                       R11 R9 K16 ["Name"]
       51 GETTABLE                         R10 R3 R11
       52 JUMPIFNOTEQKNIL                  R10 ; [+16]
       54 GETUPVAL                         R12 3
       55 GETTABLEKS                       R12 R12 K10 ["Keys"]
       57 GETTABLEKS                       R12 R12 K17 ["JointRotAtt_UnrecognizedParent"]
       59 DUPTABLE                         R13 K19 [{"parentPath"}]
       60 NAMECALL                         R14 R9 K14 ["GetFullName"]
       62 CALL                             R14 1 1
       63 SETTABLEKS                       R14 R13 K18 ["parentPath"]
       65 NAMECALL                         R10 R0 K15 ["fail"]
       67 CALL                             R10 3 0
       68 JUMP                             ; [+140]
       69 GETTABLEKS                       R11 R9 K16 ["Name"]
       71 GETTABLE                         R10 R3 R11
       72 JUMPIFNOTEQKN                    R10 K20 [1] ; [+16]
       74 GETUPVAL                         R12 3
       75 GETTABLEKS                       R12 R12 K10 ["Keys"]
       77 GETTABLEKS                       R12 R12 K21 ["JointRotAtt_MultipleAttachments"]
       79 DUPTABLE                         R13 K19 [{"parentPath"}]
       80 NAMECALL                         R14 R9 K14 ["GetFullName"]
       82 CALL                             R14 1 1
       83 SETTABLEKS                       R14 R13 K18 ["parentPath"]
       85 NAMECALL                         R10 R0 K15 ["fail"]
       87 CALL                             R10 3 0
       88 JUMP                             ; [+120]
       89 GETTABLEKS                       R10 R9 K16 ["Name"]
       91 GETTABLE                         R11 R3 R10
       92 ADDK                             R11 R11 K20 [1]
       93 SETTABLE                         R11 R3 R10
       94 GETUPVAL                         R11 4
       95 GETTABLEKS                       R12 R1 K22 ["uploadEnum"]
       97 GETTABLEKS                       R12 R12 K23 ["assetType"]
       99 GETTABLE                         R10 R11 R12
      100 JUMPIFEQKNIL                     R10 ; [+108]
      102 GETUPVAL                         R12 4
      103 GETTABLEKS                       R13 R1 K22 ["uploadEnum"]
      105 GETTABLEKS                       R13 R13 K23 ["assetType"]
      107 GETTABLE                         R11 R12 R13
      108 GETTABLEKS                       R12 R9 K16 ["Name"]
      110 GETTABLE                         R10 R11 R12
      111 JUMPIFEQKNIL                     R10 ; [+97]
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R13 R1 K22 ["uploadEnum"]
      116 GETTABLEKS                       R13 R13 K23 ["assetType"]
      118 GETTABLE                         R11 R12 R13
      119 GETTABLEKS                       R12 R9 K16 ["Name"]
      121 GETTABLE                         R10 R11 R12
      122 GETTABLEKS                       R11 R8 K24 ["CFrame"]
      124 GETUPVAL                         R12 5
      125 MOVE                             R13 R10
      126 MOVE                             R14 R11
      127 CALL                             R12 2 1
      128 GETUPVAL                         R13 6
      129 JUMPIFNOTLT                      R13 R12 ; [+50]
      131 NAMECALL                         R13 R10 K25 ["ToOrientation"]
      133 CALL                             R13 1 -1
      134 FASTCALL                         VECTOR ; [+2]
      135 GETIMPORT                        R12 K28 [Vector3.new]
      137 CALL                             R12 -1 1
      138 GETTABLEKS                       R15 R12 K29 ["X"]
      140 FASTCALL1                        MATH_DEG R15 ; [+2]
      141 GETIMPORT                        R14 K32 [math.deg]
      143 CALL                             R14 1 1
      144 GETTABLEKS                       R16 R12 K33 ["Y"]
      146 FASTCALL1                        MATH_DEG R16 ; [+2]
      147 GETIMPORT                        R15 K32 [math.deg]
      149 CALL                             R15 1 1
      150 GETTABLEKS                       R17 R12 K34 ["Z"]
      152 FASTCALL1                        MATH_DEG R17 ; [+2]
      153 GETIMPORT                        R16 K32 [math.deg]
      155 CALL                             R16 1 1
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R13 K28 [Vector3.new]
      159 CALL                             R13 3 1
      160 MOVE                             R12 R13
      161 GETUPVAL                         R15 3
      162 GETTABLEKS                       R15 R15 K10 ["Keys"]
      164 GETTABLEKS                       R15 R15 K35 ["JointRotAtt_Rotated"]
      166 DUPTABLE                         R16 K37 [{"instPath", "expectedOrientation"}]
      167 NAMECALL                         R17 R8 K14 ["GetFullName"]
      169 CALL                             R17 1 1
      170 SETTABLEKS                       R17 R16 K12 ["instPath"]
      172 GETUPVAL                         R17 7
      173 MOVE                             R18 R12
      174 CALL                             R17 1 1
      175 SETTABLEKS                       R17 R16 K36 ["expectedOrientation"]
      177 NAMECALL                         R13 R0 K15 ["fail"]
      179 CALL                             R13 3 0
      180 GETTABLEKS                       R13 R11 K38 ["Position"]
      182 LOADK                            R14 K39 [{0, 0, 0}]
      183 SUB                              R12 R13 R14
      184 GETTABLEKS                       R12 R12 K40 ["Magnitude"]
      186 GETUPVAL                         R14 8
      187 DIVK                             R13 R14 K41 [100]
      188 JUMPIFNOTLT                      R13 R12 ; [+20]
      190 GETUPVAL                         R14 3
      191 GETTABLEKS                       R14 R14 K10 ["Keys"]
      193 GETTABLEKS                       R14 R14 K42 ["JointRotAtt_Moved"]
      195 DUPTABLE                         R15 K44 [{"instPath", "expectedPosition"}]
      196 NAMECALL                         R16 R8 K14 ["GetFullName"]
      198 CALL                             R16 1 1
      199 SETTABLEKS                       R16 R15 K12 ["instPath"]
      201 GETUPVAL                         R16 7
      202 LOADK                            R17 K39 [{0, 0, 0}]
      203 CALL                             R16 1 1
      204 SETTABLEKS                       R16 R15 K43 ["expectedPosition"]
      206 NAMECALL                         R12 R0 K15 ["fail"]
      208 CALL                             R12 3 0
      209 FORGLOOP                         R4 2 ; [-194]
      211 RETURN                           R0 0

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
