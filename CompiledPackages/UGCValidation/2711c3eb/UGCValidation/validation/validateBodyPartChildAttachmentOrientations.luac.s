PROTO_0:
        0 LOADB                            R3 1
        1 GETIMPORT                        R4 K3 [Enum.AssetType.RightArm]
        3 JUMPIFEQ                         R1 R4 ; [+7]
        5 GETIMPORT                        R4 K5 [Enum.AssetType.LeftArm]
        7 JUMPIFEQ                         R1 R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL1                        ASSERT R3 ; [+2]
       12 GETIMPORT                        R2 K7 [assert]
       14 CALL                             R2 1 0
       15 GETIMPORT                        R3 K3 [Enum.AssetType.RightArm]
       17 JUMPIFNOTEQ                      R1 R3 ; [+3]
       19 LOADK                            R2 K8 ["Right"]
       20 JUMP                             ; [+1]
       21 LOADK                            R2 K9 ["Left"]
       22 MOVE                             R6 R2
       23 LOADK                            R7 K10 ["LowerArm"]
       24 CONCAT                           R5 R6 R7
       25 NAMECALL                         R3 R0 K11 ["FindFirstChild"]
       27 CALL                             R3 2 1
       28 MOVE                             R7 R2
       29 LOADK                            R8 K12 ["Hand"]
       30 CONCAT                           R6 R7 R8
       31 NAMECALL                         R4 R0 K11 ["FindFirstChild"]
       33 CALL                             R4 2 1
       34 FASTCALL1                        ASSERT R3 ; [+3]
       35 MOVE                             R6 R3
       36 GETIMPORT                        R5 K7 [assert]
       38 CALL                             R5 1 0
       39 FASTCALL1                        ASSERT R4 ; [+3]
       40 MOVE                             R6 R4
       41 GETIMPORT                        R5 K7 [assert]
       43 CALL                             R5 1 0
       44 MOVE                             R8 R2
       45 LOADK                            R9 K13 ["ElbowRigAttachment"]
       46 CONCAT                           R7 R8 R9
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K14 ["checkFlagEnabledForAllowHrd"]
       50 CALL                             R8 0 -1
       51 NAMECALL                         R5 R3 K11 ["FindFirstChild"]
       53 CALL                             R5 -1 1
       54 MOVE                             R9 R2
       55 LOADK                            R10 K15 ["WristRigAttachment"]
       56 CONCAT                           R8 R9 R10
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K14 ["checkFlagEnabledForAllowHrd"]
       60 CALL                             R9 0 -1
       61 NAMECALL                         R6 R3 K11 ["FindFirstChild"]
       63 CALL                             R6 -1 1
       64 MOVE                             R10 R2
       65 LOADK                            R11 K15 ["WristRigAttachment"]
       66 CONCAT                           R9 R10 R11
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K14 ["checkFlagEnabledForAllowHrd"]
       70 CALL                             R10 0 -1
       71 NAMECALL                         R7 R4 K11 ["FindFirstChild"]
       73 CALL                             R7 -1 1
       74 MOVE                             R11 R2
       75 LOADK                            R12 K16 ["GripAttachment"]
       76 CONCAT                           R10 R11 R12
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K14 ["checkFlagEnabledForAllowHrd"]
       80 CALL                             R11 0 -1
       81 NAMECALL                         R8 R4 K11 ["FindFirstChild"]
       83 CALL                             R8 -1 1
       84 FASTCALL1                        ASSERT R5 ; [+3]
       85 MOVE                             R10 R5
       86 GETIMPORT                        R9 K7 [assert]
       88 CALL                             R9 1 0
       89 FASTCALL1                        ASSERT R6 ; [+3]
       90 MOVE                             R10 R6
       91 GETIMPORT                        R9 K7 [assert]
       93 CALL                             R9 1 0
       94 FASTCALL1                        ASSERT R7 ; [+3]
       95 MOVE                             R10 R7
       96 GETIMPORT                        R9 K7 [assert]
       98 CALL                             R9 1 0
       99 FASTCALL1                        ASSERT R8 ; [+3]
      100 MOVE                             R10 R8
      101 GETIMPORT                        R9 K7 [assert]
      103 CALL                             R9 1 0
      104 GETUPVAL                         R9 1
      105 MOVE                             R10 R7
      106 CALL                             R9 1 1
      107 GETUPVAL                         R11 1
      108 MOVE                             R12 R6
      109 CALL                             R11 1 1
      110 NAMECALL                         R11 R11 K17 ["Inverse"]
      112 CALL                             R11 1 1
      113 MUL                              R10 R9 R11
      114 GETUPVAL                         R12 1
      115 MOVE                             R13 R5
      116 CALL                             R12 1 1
      117 MUL                              R11 R10 R12
      118 GETTABLEKS                       R13 R9 K18 ["Position"]
      120 GETTABLEKS                       R14 R11 K18 ["Position"]
      122 SUB                              R12 R13 R14
      123 GETTABLEKS                       R14 R12 K19 ["X"]
      125 LOADN                            R16 0
      126 GETTABLEKS                       R18 R12 K20 ["Y"]
      128 MINUS                            R17 R18
      129 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
      131 GETIMPORT                        R15 K23 [math.max]
      133 CALL                             R15 2 1
      134 LOADN                            R16 0
      135 FASTCALL                         VECTOR ; [+2]
      136 GETIMPORT                        R13 K26 [Vector3.new]
      138 CALL                             R13 3 1
      139 GETTABLEKS                       R13 R13 K27 ["Unit"]
      141 GETTABLEKS                       R16 R13 K19 ["X"]
      143 FASTCALL1                        MATH_ACOS R16 ; [+2]
      144 GETIMPORT                        R15 K30 [math.acos]
      146 CALL                             R15 1 1
      147 SUBRK                            R14 R28 K15 ["WristRigAttachment"]
      148 GETIMPORT                        R15 K33 [CFrame.fromEulerAnglesXYZ]
      150 LOADN                            R16 0
      151 LOADN                            R17 0
      152 MOVE                             R18 R14
      153 CALL                             R15 3 1
      154 GETUPVAL                         R17 2
      155 GETTABLEKS                       R17 R17 K34 ["Rotation"]
      157 MUL                              R16 R15 R17
      158 RETURN                           R16 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 NAMECALL                         R6 R0 K1 ["GetDescendants"]
        6 CALL                             R6 1 1
        7 MOVE                             R3 R6
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K2 ["ClassName"]
       13 JUMPIFNOTEQKS                    R8 K3 ["Attachment"] ; [+205]
       15 GETTABLEKS                       R10 R7 K4 ["Name"]
       17 FASTCALL2K                       STRING_SUB R10 K5 ; [+4]
       19 LOADK                            R11 K5 [-13]
       20 GETIMPORT                        R9 K8 [string.sub]
       22 CALL                             R9 2 1
       23 JUMPIFEQKS                       R9 K9 ["RigAttachment"] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 GETTABLEKS                       R11 R7 K4 ["Name"]
       29 FASTCALL2K                       STRING_SUB R11 K10 ; [+4]
       31 LOADK                            R12 K10 [-14]
       32 GETIMPORT                        R10 K8 [string.sub]
       34 CALL                             R10 2 1
       35 JUMPIFEQKS                       R10 K11 ["GripAttachment"] ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 JUMPIFNOT                        R8 ; [+71]
       40 LOADNIL                          R10
       41 GETUPVAL                         R11 1
       42 JUMPIFNOT                        R11 ; [+16]
       43 GETUPVAL                         R11 2
       44 GETIMPORT                        R12 K14 [CFrame.identity]
       46 GETUPVAL                         R13 3
       47 MOVE                             R14 R7
       48 CALL                             R13 1 -1
       49 CALL                             R11 -1 1
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R12 R12 K9 ["RigAttachment"]
       53 CALL                             R12 0 1
       54 JUMPIFLT                         R12 R11 ; [+2]
       56 LOADB                            R10 0 +1
       57 LOADB                            R10 1
       58 JUMP                             ; [+24]
       59 GETUPVAL                         R11 3
       60 MOVE                             R12 R7
       61 CALL                             R11 1 1
       62 NAMECALL                         R11 R11 K15 ["ToOrientation"]
       64 CALL                             R11 1 3
       65 GETUPVAL                         R15 5
       66 MOVE                             R16 R11
       67 LOADN                            R17 0
       68 CALL                             R15 2 1
       69 NOT                              R14 R15
       70 JUMPIF                           R14 ; [+11]
       71 GETUPVAL                         R15 5
       72 MOVE                             R16 R12
       73 LOADN                            R17 0
       74 CALL                             R15 2 1
       75 NOT                              R14 R15
       76 JUMPIF                           R14 ; [+5]
       77 GETUPVAL                         R15 5
       78 MOVE                             R16 R13
       79 LOADN                            R17 0
       80 CALL                             R15 2 1
       81 NOT                              R14 R15
       82 MOVE                             R10 R14
       83 JUMPIFNOT                        R10 ; [+135]
       84 GETUPVAL                         R11 6
       85 GETTABLEKS                       R11 R11 K16 ["reportFailure"]
       87 GETUPVAL                         R12 6
       88 GETTABLEKS                       R12 R12 K17 ["ErrorType"]
       90 GETTABLEKS                       R12 R12 K18 ["validateBodyPartChildAttachmentOrientations_RotatedRig"]
       92 LOADNIL                          R13
       93 MOVE                             R14 R1
       94 CALL                             R11 3 0
       95 LOADB                            R13 0
       96 NEWTABLE                         R14 0 1
       98 GETIMPORT                        R15 K20 [string.format]
      100 LOADK                            R16 K21 ["Rig attachments cannot be rotated, please set %s's orientation to (0,0,0)"]
      101 NAMECALL                         R17 R7 K22 ["GetFullName"]
      103 CALL                             R17 1 -1
      104 CALL                             R15 -1 -1
      105 SETLIST                          R14 R15 -1 [1]
      107 NAMECALL                         R11 R2 K23 ["updateReasons"]
      109 CALL                             R11 3 0
      110 JUMP                             ; [+108]
      111 GETUPVAL                         R11 4
      112 GETTABLEKS                       R12 R7 K4 ["Name"]
      114 GETTABLE                         R10 R11 R12
      115 JUMPIFEQKNIL                     R10 ; [+103]
      117 GETIMPORT                        R10 K24 [CFrame.new]
      119 CALL                             R10 0 1
      120 JUMPIFNOT                        R9 ; [+14]
      121 GETTABLEKS                       R12 R1 K25 ["assetTypeEnum"]
      123 FASTCALL1                        ASSERT R12 ; [+2]
      124 GETIMPORT                        R11 K27 [assert]
      126 CALL                             R11 1 0
      127 GETUPVAL                         R11 7
      128 GETTABLEKS                       R11 R11 K28 ["expectedGripAttCFrameRotation"]
      130 MOVE                             R12 R0
      131 GETTABLEKS                       R13 R1 K25 ["assetTypeEnum"]
      133 CALL                             R11 2 1
      134 MOVE                             R10 R11
      135 GETUPVAL                         R11 2
      136 MOVE                             R12 R10
      137 GETUPVAL                         R13 3
      138 MOVE                             R14 R7
      139 CALL                             R13 1 -1
      140 CALL                             R11 -1 1
      141 GETUPVAL                         R13 4
      142 GETTABLEKS                       R14 R7 K4 ["Name"]
      144 GETTABLE                         R12 R13 R14
      145 CALL                             R12 0 1
      146 JUMPIFNOTLT                      R12 R11 ; [+72]
      148 GETUPVAL                         R11 6
      149 GETTABLEKS                       R11 R11 K16 ["reportFailure"]
      151 JUMPIFNOT                        R9 ; [+6]
      152 GETUPVAL                         R12 6
      153 GETTABLEKS                       R12 R12 K17 ["ErrorType"]
      155 GETTABLEKS                       R12 R12 K29 ["validateBodyPartChildAttachmentOrientations_RotatedGrip"]
      157 JUMPIF                           R12 ; [+5]
      158 GETUPVAL                         R12 6
      159 GETTABLEKS                       R12 R12 K17 ["ErrorType"]
      161 GETTABLEKS                       R12 R12 K30 ["validateBodyPartChildAttachmentOrientations_RotatedBasic"]
      163 LOADNIL                          R13
      164 MOVE                             R14 R1
      165 CALL                             R11 3 0
      166 NAMECALL                         R12 R10 K15 ["ToOrientation"]
      168 CALL                             R12 1 -1
      169 FASTCALL                         VECTOR ; [+2]
      170 GETIMPORT                        R11 K32 [Vector3.new]
      172 CALL                             R11 -1 1
      173 GETTABLEKS                       R14 R11 K33 ["X"]
      175 FASTCALL1                        MATH_DEG R14 ; [+2]
      176 GETIMPORT                        R13 K36 [math.deg]
      178 CALL                             R13 1 1
      179 GETTABLEKS                       R15 R11 K37 ["Y"]
      181 FASTCALL1                        MATH_DEG R15 ; [+2]
      182 GETIMPORT                        R14 K36 [math.deg]
      184 CALL                             R14 1 1
      185 GETTABLEKS                       R16 R11 K38 ["Z"]
      187 FASTCALL1                        MATH_DEG R16 ; [+2]
      188 GETIMPORT                        R15 K36 [math.deg]
      190 CALL                             R15 1 1
      191 FASTCALL                         VECTOR ; [+2]
      192 GETIMPORT                        R12 K32 [Vector3.new]
      194 CALL                             R12 3 1
      195 MOVE                             R11 R12
      196 LOADB                            R14 0
      197 NEWTABLE                         R15 0 1
      199 GETIMPORT                        R16 K20 [string.format]
      201 LOADK                            R17 K39 ["Attachment %s's orientation deviates too far from expectation, which will make attached accessories look unaligned. Recommended orientation is %s, and you can deviate up to %d degrees"]
      202 NAMECALL                         R18 R7 K22 ["GetFullName"]
      204 CALL                             R18 1 1
      205 GETUPVAL                         R19 8
      206 MOVE                             R20 R11
      207 CALL                             R19 1 1
      208 GETUPVAL                         R21 4
      209 GETTABLEKS                       R22 R7 K4 ["Name"]
      211 GETTABLE                         R20 R21 R22
      212 CALL                             R20 0 -1
      213 CALL                             R16 -1 -1
      214 SETLIST                          R15 R16 -1 [1]
      216 NAMECALL                         R12 R2 K23 ["updateReasons"]
      218 CALL                             R12 3 0
      219 FORGLOOP                         R3 2 ; [-209]
      221 NAMECALL                         R3 R2 K40 ["getFinalResults"]
      223 CALL                             R3 1 -1
      224 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["FailureReasonsAccumulator"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K6 ["util"]
       30 GETTABLEKS                       R5 R5 K9 ["getDiffBetweenOrientations"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K6 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["floatEquals"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K6 ["util"]
       44 GETTABLEKS                       R7 R7 K11 ["valueToString"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K6 ["util"]
       51 GETTABLEKS                       R8 R8 K12 ["R15plusUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K4 [require]
       56 GETTABLEKS                       R9 R0 K6 ["util"]
       58 GETTABLEKS                       R9 R9 K13 ["getAttachmentCFrameInPartSpace"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K4 [require]
       63 GETTABLEKS                       R10 R0 K6 ["util"]
       65 GETTABLEKS                       R10 R10 K14 ["AttachmentRotationFInts"]
       67 CALL                             R9 1 1
       68 NEWTABLE                         R10 2 0
       70 GETIMPORT                        R11 K16 [game]
       72 LOADK                            R13 K17 ["UGCValidateRigAttachmentRotationUsesDiff"]
       73 LOADB                            R14 0
       74 NAMECALL                         R11 R11 K18 ["DefineFastFlag"]
       76 CALL                             R11 3 1
       77 GETTABLEKS                       R12 R9 K19 ["thresholdGetters"]
       79 GETIMPORT                        R14 K22 [CFrame.new]
       81 LOADK                            R15 K23 [{0, 0, 0}]
       82 LOADK                            R16 K24 [{0, 0, -1}]
       83 CALL                             R14 2 1
       84 GETIMPORT                        R15 K26 [CFrame.fromEulerAnglesXYZ]
       86 LOADK                            R16 K27 [-1.5707963267949]
       87 LOADN                            R17 0
       88 LOADN                            R18 0
       89 CALL                             R15 3 1
       90 MUL                              R13 R14 R15
       91 DUPCLOSURE                       R14 K28 [PROTO_0]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R13
       95 SETTABLEKS                       R14 R10 K29 ["expectedGripAttCFrameRotation"]
       97 DUPCLOSURE                       R14 K30 [PROTO_1]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R6
      107 SETTABLEKS                       R14 R10 K31 ["runValidation"]
      109 RETURN                           R10 1
