PROTO_0:
        0 GETIMPORT                        R3 K3 [Enum.AssetType.RightArm]
        2 JUMPIFNOTEQ                      R1 R3 ; [+3]
        4 LOADK                            R2 K4 ["Right"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K5 ["Left"]
        7 MOVE                             R6 R2
        8 LOADK                            R7 K6 ["LowerArm"]
        9 CONCAT                           R5 R6 R7
       10 NAMECALL                         R3 R0 K7 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 MOVE                             R7 R2
       14 LOADK                            R8 K8 ["Hand"]
       15 CONCAT                           R6 R7 R8
       16 NAMECALL                         R4 R0 K7 ["FindFirstChild"]
       18 CALL                             R4 2 1
       19 JUMPIFNOT                        R3 ; [+1]
       20 JUMPIF                           R4 ; [+3]
       21 GETIMPORT                        R5 K11 [CFrame.identity]
       23 RETURN                           R5 1
       24 MOVE                             R8 R2
       25 LOADK                            R9 K12 ["ElbowRigAttachment"]
       26 CONCAT                           R7 R8 R9
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K13 ["checkFlagEnabledForAllowHrd"]
       30 CALL                             R8 0 -1
       31 NAMECALL                         R5 R3 K7 ["FindFirstChild"]
       33 CALL                             R5 -1 1
       34 MOVE                             R9 R2
       35 LOADK                            R10 K14 ["WristRigAttachment"]
       36 CONCAT                           R8 R9 R10
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K13 ["checkFlagEnabledForAllowHrd"]
       40 CALL                             R9 0 -1
       41 NAMECALL                         R6 R3 K7 ["FindFirstChild"]
       43 CALL                             R6 -1 1
       44 MOVE                             R10 R2
       45 LOADK                            R11 K14 ["WristRigAttachment"]
       46 CONCAT                           R9 R10 R11
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K13 ["checkFlagEnabledForAllowHrd"]
       50 CALL                             R10 0 -1
       51 NAMECALL                         R7 R4 K7 ["FindFirstChild"]
       53 CALL                             R7 -1 1
       54 MOVE                             R11 R2
       55 LOADK                            R12 K15 ["GripAttachment"]
       56 CONCAT                           R10 R11 R12
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K13 ["checkFlagEnabledForAllowHrd"]
       60 CALL                             R11 0 -1
       61 NAMECALL                         R8 R4 K7 ["FindFirstChild"]
       63 CALL                             R8 -1 1
       64 JUMPIFNOT                        R5 ; [+3]
       65 JUMPIFNOT                        R6 ; [+2]
       66 JUMPIFNOT                        R7 ; [+1]
       67 JUMPIF                           R8 ; [+3]
       68 GETIMPORT                        R9 K11 [CFrame.identity]
       70 RETURN                           R9 1
       71 GETUPVAL                         R9 1
       72 MOVE                             R10 R7
       73 CALL                             R9 1 1
       74 GETUPVAL                         R11 1
       75 MOVE                             R12 R6
       76 CALL                             R11 1 1
       77 NAMECALL                         R11 R11 K16 ["Inverse"]
       79 CALL                             R11 1 1
       80 MUL                              R10 R9 R11
       81 GETUPVAL                         R12 1
       82 MOVE                             R13 R5
       83 CALL                             R12 1 1
       84 MUL                              R11 R10 R12
       85 GETTABLEKS                       R13 R9 K17 ["Position"]
       87 GETTABLEKS                       R14 R11 K17 ["Position"]
       89 SUB                              R12 R13 R14
       90 GETTABLEKS                       R14 R12 K18 ["X"]
       92 LOADN                            R16 0
       93 GETTABLEKS                       R18 R12 K19 ["Y"]
       95 MINUS                            R17 R18
       96 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       98 GETIMPORT                        R15 K22 [math.max]
      100 CALL                             R15 2 1
      101 LOADN                            R16 0
      102 FASTCALL                         VECTOR ; [+2]
      103 GETIMPORT                        R13 K25 [Vector3.new]
      105 CALL                             R13 3 1
      106 GETTABLEKS                       R13 R13 K26 ["Unit"]
      108 GETTABLEKS                       R16 R13 K18 ["X"]
      110 FASTCALL1                        MATH_ACOS R16 ; [+2]
      111 GETIMPORT                        R15 K29 [math.acos]
      113 CALL                             R15 1 1
      114 SUBRK                            R14 R27 K15 ["GripAttachment"]
      115 GETIMPORT                        R15 K31 [CFrame.fromEulerAnglesXYZ]
      117 LOADN                            R16 0
      118 LOADN                            R17 0
      119 MOVE                             R18 R14
      120 CALL                             R15 3 1
      121 GETUPVAL                         R17 2
      122 GETTABLEKS                       R17 R17 K32 ["Rotation"]
      124 MUL                              R16 R15 R17
      125 RETURN                           R16 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["uploadEnum"]
        4 GETTABLEKS                       R3 R3 K2 ["assetType"]
        6 NAMECALL                         R7 R2 K3 ["GetDescendants"]
        8 CALL                             R7 1 1
        9 MOVE                             R4 R7
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLEKS                       R9 R8 K4 ["ClassName"]
       15 JUMPIFNOTEQKS                    R9 K5 ["Attachment"] ; [+182]
       17 GETTABLEKS                       R11 R8 K6 ["Name"]
       19 FASTCALL2K                       STRING_SUB R11 K7 ; [+4]
       21 LOADK                            R12 K7 [-13]
       22 GETIMPORT                        R10 K10 [string.sub]
       24 CALL                             R10 2 1
       25 JUMPIFEQKS                       R10 K11 ["RigAttachment"] ; [+2]
       27 LOADB                            R9 0 +1
       28 LOADB                            R9 1
       29 GETTABLEKS                       R12 R8 K6 ["Name"]
       31 FASTCALL2K                       STRING_SUB R12 K12 ; [+4]
       33 LOADK                            R13 K12 [-14]
       34 GETIMPORT                        R11 K10 [string.sub]
       36 CALL                             R11 2 1
       37 JUMPIFEQKS                       R11 K13 ["GripAttachment"] ; [+2]
       39 LOADB                            R10 0 +1
       40 LOADB                            R10 1
       41 JUMPIFNOT                        R9 ; [+59]
       42 LOADNIL                          R11
       43 GETUPVAL                         R12 0
       44 JUMPIFNOT                        R12 ; [+16]
       45 GETUPVAL                         R12 1
       46 GETIMPORT                        R13 K16 [CFrame.identity]
       48 GETUPVAL                         R14 2
       49 MOVE                             R15 R8
       50 CALL                             R14 1 -1
       51 CALL                             R12 -1 1
       52 GETUPVAL                         R13 3
       53 GETTABLEKS                       R13 R13 K11 ["RigAttachment"]
       55 CALL                             R13 0 1
       56 JUMPIFLT                         R13 R12 ; [+2]
       58 LOADB                            R11 0 +1
       59 LOADB                            R11 1
       60 JUMP                             ; [+24]
       61 GETUPVAL                         R12 2
       62 MOVE                             R13 R8
       63 CALL                             R12 1 1
       64 NAMECALL                         R12 R12 K17 ["ToOrientation"]
       66 CALL                             R12 1 3
       67 GETUPVAL                         R16 4
       68 MOVE                             R17 R12
       69 LOADN                            R18 0
       70 CALL                             R16 2 1
       71 NOT                              R15 R16
       72 JUMPIF                           R15 ; [+11]
       73 GETUPVAL                         R16 4
       74 MOVE                             R17 R13
       75 LOADN                            R18 0
       76 CALL                             R16 2 1
       77 NOT                              R15 R16
       78 JUMPIF                           R15 ; [+5]
       79 GETUPVAL                         R16 4
       80 MOVE                             R17 R14
       81 LOADN                            R18 0
       82 CALL                             R16 2 1
       83 NOT                              R15 R16
       84 MOVE                             R11 R15
       85 JUMPIFNOT                        R11 ; [+112]
       86 GETUPVAL                         R14 5
       87 GETTABLEKS                       R14 R14 K18 ["Keys"]
       89 GETTABLEKS                       R14 R14 K19 ["AttachmentOrientationRigRotated"]
       91 DUPTABLE                         R15 K21 [{"InstancePath"}]
       92 NAMECALL                         R16 R8 K22 ["GetFullName"]
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K20 ["InstancePath"]
       97 NAMECALL                         R12 R0 K23 ["fail"]
       99 CALL                             R12 3 0
      100 JUMP                             ; [+97]
      101 GETUPVAL                         R12 3
      102 GETTABLEKS                       R13 R8 K6 ["Name"]
      104 GETTABLE                         R11 R12 R13
      105 JUMPIFEQKNIL                     R11 ; [+92]
      107 GETIMPORT                        R11 K25 [CFrame.new]
      109 CALL                             R11 0 1
      110 JUMPIFNOT                        R10 ; [+14]
      111 JUMPIFNOT                        R3 ; [+13]
      112 GETIMPORT                        R12 K29 [Enum.AssetType.RightArm]
      114 JUMPIFEQ                         R3 R12 ; [+5]
      116 GETIMPORT                        R12 K31 [Enum.AssetType.LeftArm]
      118 JUMPIFNOTEQ                      R3 R12 ; [+6]
      120 GETUPVAL                         R12 6
      121 MOVE                             R13 R2
      122 MOVE                             R14 R3
      123 CALL                             R12 2 1
      124 MOVE                             R11 R12
      125 GETUPVAL                         R12 1
      126 MOVE                             R13 R11
      127 GETUPVAL                         R14 2
      128 MOVE                             R15 R8
      129 CALL                             R14 1 -1
      130 CALL                             R12 -1 1
      131 GETUPVAL                         R14 3
      132 GETTABLEKS                       R15 R8 K6 ["Name"]
      134 GETTABLE                         R13 R14 R15
      135 CALL                             R13 0 1
      136 JUMPIFNOTLT                      R13 R12 ; [+61]
      138 NAMECALL                         R13 R11 K17 ["ToOrientation"]
      140 CALL                             R13 1 -1
      141 FASTCALL                         VECTOR ; [+2]
      142 GETIMPORT                        R12 K33 [Vector3.new]
      144 CALL                             R12 -1 1
      145 GETTABLEKS                       R15 R12 K34 ["X"]
      147 FASTCALL1                        MATH_DEG R15 ; [+2]
      148 GETIMPORT                        R14 K37 [math.deg]
      150 CALL                             R14 1 1
      151 GETTABLEKS                       R16 R12 K38 ["Y"]
      153 FASTCALL1                        MATH_DEG R16 ; [+2]
      154 GETIMPORT                        R15 K37 [math.deg]
      156 CALL                             R15 1 1
      157 GETTABLEKS                       R17 R12 K39 ["Z"]
      159 FASTCALL1                        MATH_DEG R17 ; [+2]
      160 GETIMPORT                        R16 K37 [math.deg]
      162 CALL                             R16 1 1
      163 FASTCALL                         VECTOR ; [+2]
      164 GETIMPORT                        R13 K33 [Vector3.new]
      166 CALL                             R13 3 1
      167 MOVE                             R12 R13
      168 GETUPVAL                         R15 5
      169 GETTABLEKS                       R15 R15 K18 ["Keys"]
      171 GETTABLEKS                       R15 R15 K40 ["AttachmentOrientationDeviation"]
      173 DUPTABLE                         R16 K43 [{"InstancePath", "ExpectedOrientation", "MaxDeviation"}]
      174 NAMECALL                         R17 R8 K22 ["GetFullName"]
      176 CALL                             R17 1 1
      177 SETTABLEKS                       R17 R16 K20 ["InstancePath"]
      179 GETUPVAL                         R17 7
      180 MOVE                             R18 R12
      181 CALL                             R17 1 1
      182 SETTABLEKS                       R17 R16 K41 ["ExpectedOrientation"]
      184 GETUPVAL                         R19 3
      185 GETTABLEKS                       R20 R8 K6 ["Name"]
      187 GETTABLE                         R18 R19 R20
      188 CALL                             R18 0 -1
      189 FASTCALL                         TOSTRING ; [+2]
      190 GETIMPORT                        R17 K45 [tostring]
      192 CALL                             R17 -1 1
      193 SETTABLEKS                       R17 R16 K42 ["MaxDeviation"]
      195 NAMECALL                         R13 R0 K23 ["fail"]
      197 CALL                             R13 3 0
      198 FORGLOOP                         R4 2 ; [-186]
      200 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K10 ["getDiffBetweenOrientations"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["floatEquals"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K12 ["valueToString"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K13 ["R15plusUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K14 ["getAttachmentCFrameInPartSpace"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["util"]
       69 GETTABLEKS                       R10 R10 K15 ["AttachmentRotationFInts"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K4 [require]
       74 GETTABLEKS                       R11 R0 K16 ["flags"]
       76 GETTABLEKS                       R11 R11 K17 ["getFFlagUGCValidateMigrateSchemaProperties"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K19 [game]
       81 LOADK                            R13 K20 ["UGCValidateRigAttachmentRotationUsesDiff"]
       82 LOADB                            R14 0
       83 NAMECALL                         R11 R11 K21 ["DefineFastFlag"]
       85 CALL                             R11 3 1
       86 GETTABLEKS                       R12 R9 K22 ["thresholdGetters"]
       88 GETIMPORT                        R14 K25 [CFrame.new]
       90 LOADK                            R15 K26 [{0, 0, 0}]
       91 LOADK                            R16 K27 [{0, 0, -1}]
       92 CALL                             R14 2 1
       93 GETIMPORT                        R15 K29 [CFrame.fromEulerAnglesXYZ]
       95 LOADK                            R16 K30 [-1.5707963267949]
       96 LOADN                            R17 0
       97 LOADN                            R18 0
       98 CALL                             R15 3 1
       99 MUL                              R13 R14 R15
      100 NEWTABLE                         R14 8 0
      102 NEWTABLE                         R15 0 2
      104 GETTABLEKS                       R16 R2 K31 ["UploadCategory"]
      106 GETTABLEKS                       R16 R16 K32 ["TORSO_AND_LIMBS"]
      108 GETTABLEKS                       R17 R2 K31 ["UploadCategory"]
      110 GETTABLEKS                       R17 R17 K33 ["DYNAMIC_HEAD"]
      112 SETLIST                          R15 R16 2 [1]
      114 SETTABLEKS                       R15 R14 K34 ["categories"]
      116 NEWTABLE                         R15 0 2
      118 GETTABLEKS                       R16 R2 K35 ["SharedDataMember"]
      120 GETTABLEKS                       R16 R16 K36 ["rootInstance"]
      122 GETTABLEKS                       R17 R2 K35 ["SharedDataMember"]
      124 GETTABLEKS                       R17 R17 K37 ["uploadEnum"]
      126 SETLIST                          R15 R16 2 [1]
      128 SETTABLEKS                       R15 R14 K38 ["requiredData"]
      130 SETTABLEKS                       R10 R14 K39 ["fflag"]
      132 NEWTABLE                         R15 0 0
      134 SETTABLEKS                       R15 R14 K40 ["expectedFailures"]
      136 DUPCLOSURE                       R15 K41 [PROTO_0]
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R13
      140 DUPCLOSURE                       R16 K42 [PROTO_1]
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R16 R14 K43 ["run"]
      151 RETURN                           R14 1
