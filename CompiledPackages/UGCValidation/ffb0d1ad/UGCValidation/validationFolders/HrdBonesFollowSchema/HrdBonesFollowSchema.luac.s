PROTO_0:
        0 NAMECALL                         R3 R0 K0 ["GetChildren"]
        2 CALL                             R3 1 3
        3 FORGPREP                         R3
        4 MOVE                             R8 R1
        5 LOADK                            R11 K1 ["Bone"]
        6 NAMECALL                         R9 R7 K2 ["IsA"]
        8 CALL                             R9 2 1
        9 JUMPIFNOT                        R9 ; [+1]
       10 LOADB                            R8 1
       11 JUMPIFNOT                        R8 ; [+7]
       12 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       14 MOVE                             R10 R2
       15 MOVE                             R11 R7
       16 GETIMPORT                        R9 K5 [table.insert]
       18 CALL                             R9 2 0
       19 GETUPVAL                         R9 0
       20 MOVE                             R10 R7
       21 MOVE                             R11 R8
       22 MOVE                             R12 R2
       23 CALL                             R9 3 0
       24 FORGLOOP                         R3 2 ; [-21]
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getHrdJointLabels"]
        3 CALL                             R3 0 3
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R0 K1 ["Name"]
        7 GETTABLEKS                       R9 R7 K1 ["Name"]
        9 JUMPIFNOTEQ                      R8 R9 ; [+16]
       11 MOVE                             R10 R7
       12 NAMECALL                         R8 R1 K2 ["GetJoint"]
       14 CALL                             R8 2 1
       15 MOVE                             R9 R8
       16 JUMPIFNOT                        R9 ; [+8]
       17 GETTABLEKS                       R10 R8 K3 ["UniqueId"]
       19 GETTABLEKS                       R11 R0 K3 ["UniqueId"]
       21 JUMPIFEQ                         R10 R11 ; [+2]
       23 LOADB                            R9 0 +1
       24 LOADB                            R9 1
       25 RETURN                           R9 1
       26 FORGLOOP                         R3 2 ; [-22]
       28 JUMPIFNOT                        R2 ; [+37]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K4 ["getDrdJointLabels"]
       32 CALL                             R3 0 3
       33 FORGPREP                         R3
       34 LOADK                            R9 K5 ["%*Hand%*"]
       35 GETTABLEKS                       R11 R2 K6 ["Side"]
       37 GETTABLEKS                       R11 R11 K1 ["Name"]
       39 GETTABLEKS                       R12 R7 K1 ["Name"]
       41 NAMECALL                         R9 R9 K7 ["format"]
       43 CALL                             R9 3 1
       44 MOVE                             R8 R9
       45 GETTABLEKS                       R9 R0 K1 ["Name"]
       47 JUMPIFNOTEQ                      R9 R8 ; [+16]
       49 MOVE                             R11 R7
       50 NAMECALL                         R9 R2 K2 ["GetJoint"]
       52 CALL                             R9 2 1
       53 MOVE                             R10 R9
       54 JUMPIFNOT                        R10 ; [+8]
       55 GETTABLEKS                       R11 R9 K3 ["UniqueId"]
       57 GETTABLEKS                       R12 R0 K3 ["UniqueId"]
       59 JUMPIFEQ                         R11 R12 ; [+2]
       61 LOADB                            R10 0 +1
       62 LOADB                            R10 1
       63 RETURN                           R10 1
       64 FORGLOOP                         R3 2 ; [-31]
       66 LOADB                            R3 0
       67 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["MeshPart"]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K2 ["Name"]
        9 LOADK                            R11 K3 ["HumanoidRigDescription"]
       10 NAMECALL                         R9 R7 K4 ["FindFirstChildWhichIsA"]
       12 CALL                             R9 2 1
       13 LOADK                            R12 K5 ["DigitsRigDescription"]
       14 NAMECALL                         R10 R7 K4 ["FindFirstChildWhichIsA"]
       16 CALL                             R10 2 1
       17 JUMPIFEQKNIL                     R9 ; [+18]
       19 GETUPVAL                         R11 1
       20 JUMPIF                           R11 ; [+15]
       21 GETUPVAL                         R13 2
       22 GETTABLEKS                       R13 R13 K6 ["Keys"]
       24 GETTABLEKS                       R13 R13 K7 ["HrdCheck_TempR15BonesUploadNotAllowed"]
       26 LOADNIL                          R14
       27 GETUPVAL                         R16 3
       28 CALL                             R16 0 1
       29 JUMPIFNOT                        R16 ; [+2]
       30 MOVE                             R15 R9
       31 JUMP                             ; [+1]
       32 LOADNIL                          R15
       33 NAMECALL                         R11 R0 K8 ["fail"]
       35 CALL                             R11 4 0
       36 JUMPIFNOTEQKNIL                  R9 ; [+49]
       38 GETUPVAL                         R11 0
       39 MOVE                             R12 R7
       40 LOADK                            R13 K9 ["Bone"]
       41 CALL                             R11 2 1
       42 MOVE                             R12 R11
       43 LOADNIL                          R13
       44 LOADNIL                          R14
       45 FORGPREP                         R12
       46 GETUPVAL                         R19 2
       47 GETTABLEKS                       R19 R19 K6 ["Keys"]
       49 GETTABLEKS                       R19 R19 K10 ["HrdCheck_BoneWithoutHrd"]
       51 DUPTABLE                         R20 K12 [{"bonePath"}]
       52 NAMECALL                         R21 R16 K13 ["GetFullName"]
       54 CALL                             R21 1 1
       55 SETTABLEKS                       R21 R20 K11 ["bonePath"]
       57 GETUPVAL                         R22 3
       58 CALL                             R22 0 1
       59 JUMPIFNOT                        R22 ; [+2]
       60 MOVE                             R21 R16
       61 JUMP                             ; [+1]
       62 LOADNIL                          R21
       63 NAMECALL                         R17 R0 K8 ["fail"]
       65 CALL                             R17 4 0
       66 FORGLOOP                         R12 2 ; [-21]
       68 JUMPIFEQKNIL                     R10 ; [+197]
       70 GETUPVAL                         R14 2
       71 GETTABLEKS                       R14 R14 K6 ["Keys"]
       73 GETTABLEKS                       R14 R14 K14 ["HrdCheck_DrdWithoutHrd"]
       75 LOADNIL                          R15
       76 GETUPVAL                         R17 3
       77 CALL                             R17 0 1
       78 JUMPIFNOT                        R17 ; [+2]
       79 MOVE                             R16 R10
       80 JUMP                             ; [+1]
       81 LOADNIL                          R16
       82 NAMECALL                         R12 R0 K8 ["fail"]
       84 CALL                             R12 4 0
       85 JUMP                             ; [+180]
       86 GETUPVAL                         R11 4
       87 GETTABLEKS                       R11 R11 K15 ["getAvatarBoneSchema"]
       89 MOVE                             R12 R8
       90 CALL                             R11 1 1
       91 GETUPVAL                         R12 4
       92 GETTABLEKS                       R12 R12 K16 ["getSchemaFlatHierarchyList"]
       94 MOVE                             R13 R11
       95 NEWTABLE                         R14 0 1
       97 MOVE                             R15 R8
       98 SETLIST                          R14 R15 1 [1]
      100 CALL                             R12 2 1
      101 NEWTABLE                         R13 0 0
      103 GETUPVAL                         R14 5
      104 MOVE                             R15 R7
      105 LOADB                            R16 0
      106 MOVE                             R17 R13
      107 CALL                             R14 3 0
      108 NEWTABLE                         R14 1 0
      110 LOADB                            R15 1
      111 SETTABLE                         R15 R14 R8
      112 MOVE                             R15 R13
      113 LOADNIL                          R16
      114 LOADNIL                          R17
      115 FORGPREP                         R15
      116 GETUPVAL                         R20 3
      117 CALL                             R20 0 1
      118 JUMPIFNOT                        R20 ; [+4]
      119 MOVE                             R22 R19
      120 NAMECALL                         R20 R0 K17 ["setReportingInstance"]
      122 CALL                             R20 2 0
      123 GETTABLEKS                       R20 R19 K2 ["Name"]
      125 GETTABLE                         R21 R12 R20
      126 GETUPVAL                         R22 4
      127 GETTABLEKS                       R22 R22 K18 ["JointRotationName"]
      129 JUMPIFNOTEQ                      R20 R22 ; [+2]
      131 JUMP                             ; [+61]
      132 JUMPIFEQKNIL                     R21 ; [+7]
      134 GETTABLEKS                       R22 R21 K19 ["ClassName"]
      136 GETTABLEKS                       R23 R19 K19 ["ClassName"]
      138 JUMPIFEQ                         R22 R23 ; [+17]
      140 GETUPVAL                         R24 2
      141 GETTABLEKS                       R24 R24 K6 ["Keys"]
      143 GETTABLEKS                       R24 R24 K20 ["HrdCheck_UndefinedInstanceInBoneTree"]
      145 DUPTABLE                         R25 K23 [{"instName", "className"}]
      146 SETTABLEKS                       R20 R25 K21 ["instName"]
      148 GETTABLEKS                       R26 R19 K19 ["ClassName"]
      150 SETTABLEKS                       R26 R25 K22 ["className"]
      152 NAMECALL                         R22 R0 K8 ["fail"]
      154 CALL                             R22 3 0
      155 JUMP                             ; [+37]
      156 GETTABLE                         R22 R14 R20
      157 JUMPIFNOT                        R22 ; [+12]
      158 GETUPVAL                         R24 2
      159 GETTABLEKS                       R24 R24 K6 ["Keys"]
      161 GETTABLEKS                       R24 R24 K24 ["HrdCheck_DuplicateInstance"]
      163 DUPTABLE                         R25 K25 [{"instName"}]
      164 SETTABLEKS                       R20 R25 K21 ["instName"]
      166 NAMECALL                         R22 R0 K8 ["fail"]
      168 CALL                             R22 3 0
      169 JUMP                             ; [+23]
      170 LOADB                            R22 1
      171 SETTABLE                         R22 R14 R20
      172 GETTABLEKS                       R22 R21 K19 ["ClassName"]
      174 JUMPIFNOTEQKS                    R22 K9 ["Bone"] ; [+18]
      176 GETUPVAL                         R22 6
      177 MOVE                             R23 R19
      178 MOVE                             R24 R9
      179 MOVE                             R25 R10
      180 CALL                             R22 3 1
      181 JUMPIF                           R22 ; [+11]
      182 GETUPVAL                         R24 2
      183 GETTABLEKS                       R24 R24 K6 ["Keys"]
      185 GETTABLEKS                       R24 R24 K26 ["HrdCheck_BoneNotMappedInHRD"]
      187 DUPTABLE                         R25 K28 [{"boneName"}]
      188 SETTABLEKS                       R20 R25 K27 ["boneName"]
      190 NAMECALL                         R22 R0 K8 ["fail"]
      192 CALL                             R22 3 0
      193 FORGLOOP                         R15 2 ; [-78]
      195 NAMECALL                         R15 R7 K29 ["GetDescendants"]
      197 CALL                             R15 1 3
      198 FORGPREP                         R15
      199 GETUPVAL                         R20 3
      200 CALL                             R20 0 1
      201 JUMPIFNOT                        R20 ; [+4]
      202 MOVE                             R22 R19
      203 NAMECALL                         R20 R0 K17 ["setReportingInstance"]
      205 CALL                             R20 2 0
      206 GETTABLEKS                       R21 R19 K2 ["Name"]
      208 GETTABLE                         R20 R12 R21
      209 JUMPIFNOT                        R20 ; [+54]
      210 LOADK                            R23 K30 ["Attachment"]
      211 NAMECALL                         R21 R19 K31 ["IsA"]
      213 CALL                             R21 2 1
      214 JUMPIFNOT                        R21 ; [+49]
      215 GETTABLEKS                       R21 R19 K2 ["Name"]
      217 GETUPVAL                         R22 4
      218 GETTABLEKS                       R22 R22 K18 ["JointRotationName"]
      220 JUMPIFEQ                         R21 R22 ; [+43]
      222 GETTABLEKS                       R21 R20 K32 ["path"]
      224 LENGTH                           R23 R21
      225 SUBK                             R22 R23 K33 [1]
      226 GETTABLEKS                       R23 R19 K19 ["ClassName"]
      228 JUMPIFNOTEQKS                    R23 K30 ["Attachment"] ; [+9]
      230 LOADN                            R23 1
      231 JUMPIFNOTLT                      R23 R22 ; [+6]
      233 GETTABLE                         R24 R21 R22
      234 GETTABLE                         R23 R14 R24
      235 JUMPIF                           R23 ; [+2]
      236 SUBK                             R22 R22 K33 [1]
      237 JUMPBACK                         ; [-8]
      238 GETTABLEKS                       R24 R20 K32 ["path"]
      240 GETTABLE                         R23 R24 R22
      241 GETTABLEKS                       R24 R19 K34 ["Parent"]
      243 GETTABLEKS                       R24 R24 K2 ["Name"]
      245 JUMPIFEQ                         R24 R23 ; [+18]
      247 GETUPVAL                         R27 2
      248 GETTABLEKS                       R27 R27 K6 ["Keys"]
      250 GETTABLEKS                       R27 R27 K35 ["HrdCheck_ImproperParent"]
      252 DUPTABLE                         R28 K38 [{"instName", "parentName", "expectedParentName"}]
      253 GETTABLEKS                       R29 R19 K2 ["Name"]
      255 SETTABLEKS                       R29 R28 K21 ["instName"]
      257 SETTABLEKS                       R24 R28 K36 ["parentName"]
      259 SETTABLEKS                       R23 R28 K37 ["expectedParentName"]
      261 NAMECALL                         R25 R0 K8 ["fail"]
      263 CALL                             R25 3 0
      264 FORGLOOP                         R15 2 ; [-66]
      266 FORGLOOP                         R3 2 ; [-260]
      268 RETURN                           R0 0

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
       51 NEWTABLE                         R7 4 0
       53 NEWTABLE                         R8 0 2
       55 GETTABLEKS                       R9 R2 K14 ["UploadCategory"]
       57 GETTABLEKS                       R9 R9 K15 ["TORSO_AND_LIMBS"]
       59 GETTABLEKS                       R10 R2 K14 ["UploadCategory"]
       61 GETTABLEKS                       R10 R10 K16 ["DYNAMIC_HEAD"]
       63 SETLIST                          R8 R9 2 [1]
       65 SETTABLEKS                       R8 R7 K17 ["categories"]
       67 NEWTABLE                         R8 0 1
       69 GETTABLEKS                       R9 R2 K18 ["SharedDataMember"]
       71 GETTABLEKS                       R9 R9 K19 ["rootInstance"]
       73 SETLIST                          R8 R9 1 [1]
       75 SETTABLEKS                       R8 R7 K20 ["requiredData"]
       77 GETTABLEKS                       R8 R6 K21 ["checkFlagEnabledForAllowHrd"]
       79 SETTABLEKS                       R8 R7 K22 ["fflag"]
       81 GETIMPORT                        R8 K24 [game]
       83 LOADK                            R10 K25 ["UGCValidationRemoveHRDBlocker"]
       84 LOADB                            R11 0
       85 NAMECALL                         R8 R8 K26 ["DefineFastFlag"]
       87 CALL                             R8 3 1
       88 DUPCLOSURE                       R9 K27 [PROTO_0]
       89 CAPTURE                          VAL R9
       90 DUPCLOSURE                       R10 K28 [PROTO_1]
       91 CAPTURE                          VAL R6
       92 DUPCLOSURE                       R11 K29 [PROTO_2]
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R11 R7 K30 ["run"]
      102 RETURN                           R7 1
