PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 DUPTABLE                         R3 K3 [{"LeftShoulderRigAttachment", "RightShoulderRigAttachment"}]
        3 LOADN                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["LeftShoulderRigAttachment"]
        6 LOADN                            R4 0
        7 SETTABLEKS                       R4 R3 K2 ["RightShoulderRigAttachment"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K4 ["JointRotationName"]
       14 CALL                             R4 2 3
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K5 ["Parent"]
       18 GETTABLEKS                       R10 R8 K6 ["ClassName"]
       20 JUMPIFNOTEQKS                    R10 K7 ["Attachment"] ; [+6]
       22 LOADK                            R12 K7 ["Attachment"]
       23 NAMECALL                         R10 R9 K8 ["IsA"]
       25 CALL                             R10 2 1
       26 JUMPIF                           R10 ; [+15]
       27 GETUPVAL                         R14 2
       28 GETTABLEKS                       R13 R14 K9 ["Keys"]
       30 GETTABLEKS                       R12 R13 K10 ["JointRotAtt_WrongInstanceClass"]
       32 DUPTABLE                         R13 K12 [{"instPath"}]
       33 NAMECALL                         R14 R8 K13 ["GetFullName"]
       35 CALL                             R14 1 1
       36 SETTABLEKS                       R14 R13 K11 ["instPath"]
       38 NAMECALL                         R10 R0 K14 ["fail"]
       40 CALL                             R10 3 0
       41 JUMP                             ; [+160]
       42 GETTABLEKS                       R11 R9 K15 ["Name"]
       44 GETTABLE                         R10 R3 R11
       45 JUMPIFNOTEQKNIL                  R10 ; [+16]
       47 GETUPVAL                         R14 2
       48 GETTABLEKS                       R13 R14 K9 ["Keys"]
       50 GETTABLEKS                       R12 R13 K16 ["JointRotAtt_UnrecognizedParent"]
       52 DUPTABLE                         R13 K18 [{"parentPath"}]
       53 NAMECALL                         R14 R9 K13 ["GetFullName"]
       55 CALL                             R14 1 1
       56 SETTABLEKS                       R14 R13 K17 ["parentPath"]
       58 NAMECALL                         R10 R0 K14 ["fail"]
       60 CALL                             R10 3 0
       61 JUMP                             ; [+140]
       62 GETTABLEKS                       R11 R9 K15 ["Name"]
       64 GETTABLE                         R10 R3 R11
       65 JUMPIFNOTEQKN                    R10 K19 [1] ; [+16]
       67 GETUPVAL                         R14 2
       68 GETTABLEKS                       R13 R14 K9 ["Keys"]
       70 GETTABLEKS                       R12 R13 K20 ["JointRotAtt_MultipleAttachments"]
       72 DUPTABLE                         R13 K18 [{"parentPath"}]
       73 NAMECALL                         R14 R9 K13 ["GetFullName"]
       75 CALL                             R14 1 1
       76 SETTABLEKS                       R14 R13 K17 ["parentPath"]
       78 NAMECALL                         R10 R0 K14 ["fail"]
       80 CALL                             R10 3 0
       81 JUMP                             ; [+120]
       82 GETTABLEKS                       R10 R9 K15 ["Name"]
       84 GETTABLE                         R11 R3 R10
       85 ADDK                             R11 R11 K19 [1]
       86 SETTABLE                         R11 R3 R10
       87 GETUPVAL                         R11 3
       88 GETTABLEKS                       R13 R1 K21 ["uploadEnum"]
       90 GETTABLEKS                       R12 R13 K22 ["assetType"]
       92 GETTABLE                         R10 R11 R12
       93 JUMPIFEQKNIL                     R10 ; [+108]
       95 GETUPVAL                         R12 3
       96 GETTABLEKS                       R14 R1 K21 ["uploadEnum"]
       98 GETTABLEKS                       R13 R14 K22 ["assetType"]
      100 GETTABLE                         R11 R12 R13
      101 GETTABLEKS                       R12 R9 K15 ["Name"]
      103 GETTABLE                         R10 R11 R12
      104 JUMPIFEQKNIL                     R10 ; [+97]
      106 GETUPVAL                         R12 3
      107 GETTABLEKS                       R14 R1 K21 ["uploadEnum"]
      109 GETTABLEKS                       R13 R14 K22 ["assetType"]
      111 GETTABLE                         R11 R12 R13
      112 GETTABLEKS                       R12 R9 K15 ["Name"]
      114 GETTABLE                         R10 R11 R12
      115 GETTABLEKS                       R11 R8 K23 ["CFrame"]
      117 GETUPVAL                         R12 4
      118 MOVE                             R13 R10
      119 MOVE                             R14 R11
      120 CALL                             R12 2 1
      121 GETUPVAL                         R13 5
      122 JUMPIFNOTLT                      R13 R12 ; [+50]
      124 NAMECALL                         R13 R10 K24 ["ToOrientation"]
      126 CALL                             R13 1 -1
      127 FASTCALL                         VECTOR ; [+2]
      128 GETIMPORT                        R12 K27 [Vector3.new]
      130 CALL                             R12 -1 1
      131 GETTABLEKS                       R15 R12 K28 ["X"]
      133 FASTCALL1                        MATH_DEG R15 ; [+2]
      134 GETIMPORT                        R14 K31 [math.deg]
      136 CALL                             R14 1 1
      137 GETTABLEKS                       R16 R12 K32 ["Y"]
      139 FASTCALL1                        MATH_DEG R16 ; [+2]
      140 GETIMPORT                        R15 K31 [math.deg]
      142 CALL                             R15 1 1
      143 GETTABLEKS                       R17 R12 K33 ["Z"]
      145 FASTCALL1                        MATH_DEG R17 ; [+2]
      146 GETIMPORT                        R16 K31 [math.deg]
      148 CALL                             R16 1 1
      149 FASTCALL                         VECTOR ; [+2]
      150 GETIMPORT                        R13 K27 [Vector3.new]
      152 CALL                             R13 3 1
      153 MOVE                             R12 R13
      154 GETUPVAL                         R17 2
      155 GETTABLEKS                       R16 R17 K9 ["Keys"]
      157 GETTABLEKS                       R15 R16 K34 ["JointRotAtt_Rotated"]
      159 DUPTABLE                         R16 K36 [{"instPath", "expectedOrientation"}]
      160 NAMECALL                         R17 R8 K13 ["GetFullName"]
      162 CALL                             R17 1 1
      163 SETTABLEKS                       R17 R16 K11 ["instPath"]
      165 GETUPVAL                         R17 6
      166 MOVE                             R18 R12
      167 CALL                             R17 1 1
      168 SETTABLEKS                       R17 R16 K35 ["expectedOrientation"]
      170 NAMECALL                         R13 R0 K14 ["fail"]
      172 CALL                             R13 3 0
      173 GETTABLEKS                       R14 R11 K37 ["Position"]
      175 LOADK                            R15 K38 [{0, 0, 0}]
      176 SUB                              R13 R14 R15
      177 GETTABLEKS                       R12 R13 K39 ["Magnitude"]
      179 GETUPVAL                         R14 7
      180 DIVK                             R13 R14 K40 [100]
      181 JUMPIFNOTLT                      R13 R12 ; [+20]
      183 GETUPVAL                         R16 2
      184 GETTABLEKS                       R15 R16 K9 ["Keys"]
      186 GETTABLEKS                       R14 R15 K41 ["JointRotAtt_Moved"]
      188 DUPTABLE                         R15 K44 [{"jointPath", "expectedPosition"}]
      189 NAMECALL                         R16 R8 K13 ["GetFullName"]
      191 CALL                             R16 1 1
      192 SETTABLEKS                       R16 R15 K42 ["jointPath"]
      194 GETUPVAL                         R16 6
      195 LOADK                            R17 K38 [{0, 0, 0}]
      196 CALL                             R16 1 1
      197 SETTABLEKS                       R16 R15 K43 ["expectedPosition"]
      199 NAMECALL                         R12 R0 K14 ["fail"]
      201 CALL                             R12 3 0
      202 FORGLOOP                         R4 2 ; [-187]
      204 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R6 K10 ["getDiffBetweenOrientations"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R7 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R7 K11 ["valueToString"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R8 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R8 K12 ["getAllInstancesWithName"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R9 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R9 K13 ["R15plusUtils"]
       57 CALL                             R7 1 1
       58 NEWTABLE                         R8 4 0
       60 NEWTABLE                         R9 0 2
       62 GETTABLEKS                       R11 R2 K14 ["UploadCategory"]
       64 GETTABLEKS                       R10 R11 K15 ["TORSO_AND_LIMBS"]
       66 GETTABLEKS                       R12 R2 K14 ["UploadCategory"]
       68 GETTABLEKS                       R11 R12 K16 ["DYNAMIC_HEAD"]
       70 SETLIST                          R9 R10 2 [1]
       72 SETTABLEKS                       R9 R8 K17 ["categories"]
       74 NEWTABLE                         R9 0 1
       76 GETTABLEKS                       R11 R2 K18 ["SharedDataMember"]
       78 GETTABLEKS                       R10 R11 K19 ["rootInstance"]
       80 SETLIST                          R9 R10 1 [1]
       82 SETTABLEKS                       R9 R8 K20 ["requiredData"]
       84 GETTABLEKS                       R9 R7 K21 ["checkFlagEnabledForAllowHrd"]
       86 SETTABLEKS                       R9 R8 K22 ["fflag"]
       88 GETIMPORT                        R9 K24 [game]
       90 LOADK                            R11 K25 ["UGCValidationJointRotationMaximumHundredthPositionOffset"]
       91 LOADN                            R12 1
       92 NAMECALL                         R9 R9 K26 ["DefineFastInt"]
       94 CALL                             R9 3 1
       95 GETIMPORT                        R10 K24 [game]
       97 LOADK                            R12 K27 ["UGCValidationJointRotationMaximumDegreeOrientationOffset"]
       98 LOADN                            R13 1
       99 NAMECALL                         R10 R10 K26 ["DefineFastInt"]
      101 CALL                             R10 3 1
      102 NEWTABLE                         R11 4 0
      104 GETIMPORT                        R12 K31 [Enum.AssetType.Torso]
      106 DUPTABLE                         R13 K34 [{"RightShoulderRigAttachment", "LeftShoulderRigAttachment"}]
      107 GETIMPORT                        R14 K37 [CFrame.fromOrientation]
      109 LOADN                            R15 0
      110 LOADN                            R16 0
      111 LOADN                            R17 0
      112 CALL                             R14 3 1
      113 SETTABLEKS                       R14 R13 K32 ["RightShoulderRigAttachment"]
      115 GETIMPORT                        R14 K37 [CFrame.fromOrientation]
      117 LOADN                            R15 0
      118 LOADK                            R16 K38 [3.14159265358979]
      119 LOADN                            R17 0
      120 CALL                             R14 3 1
      121 SETTABLEKS                       R14 R13 K33 ["LeftShoulderRigAttachment"]
      123 SETTABLE                         R13 R11 R12
      124 GETIMPORT                        R12 K40 [Enum.AssetType.RightArm]
      126 DUPTABLE                         R13 K41 [{"RightShoulderRigAttachment"}]
      127 GETIMPORT                        R14 K37 [CFrame.fromOrientation]
      129 LOADN                            R15 0
      130 LOADN                            R16 0
      131 LOADK                            R17 K42 [-1.5707963267949]
      132 CALL                             R14 3 1
      133 SETTABLEKS                       R14 R13 K32 ["RightShoulderRigAttachment"]
      135 SETTABLE                         R13 R11 R12
      136 GETIMPORT                        R12 K44 [Enum.AssetType.LeftArm]
      138 DUPTABLE                         R13 K45 [{"LeftShoulderRigAttachment"}]
      139 GETIMPORT                        R14 K37 [CFrame.fromOrientation]
      141 LOADN                            R15 0
      142 LOADK                            R16 K38 [3.14159265358979]
      143 LOADK                            R17 K42 [-1.5707963267949]
      144 CALL                             R14 3 1
      145 SETTABLEKS                       R14 R13 K33 ["LeftShoulderRigAttachment"]
      147 SETTABLE                         R13 R11 R12
      148 DUPCLOSURE                       R12 K46 [PROTO_0]
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R9
      157 SETTABLEKS                       R12 R8 K47 ["run"]
      159 RETURN                           R8 1
