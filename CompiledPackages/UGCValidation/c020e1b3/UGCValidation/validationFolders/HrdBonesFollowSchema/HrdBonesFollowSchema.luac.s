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
       17 JUMPIFEQKNIL                     R9 ; [+11]
       19 GETUPVAL                         R11 1
       20 JUMPIF                           R11 ; [+8]
       21 GETUPVAL                         R13 2
       22 GETTABLEKS                       R13 R13 K6 ["Keys"]
       24 GETTABLEKS                       R13 R13 K7 ["HrdCheck_TempR15BonesUploadNotAllowed"]
       26 NAMECALL                         R11 R0 K8 ["fail"]
       28 CALL                             R11 2 0
       29 JUMPIFNOTEQKNIL                  R9 ; [+36]
       31 GETUPVAL                         R11 0
       32 MOVE                             R12 R7
       33 LOADK                            R13 K9 ["Bone"]
       34 CALL                             R11 2 1
       35 MOVE                             R12 R11
       36 LOADNIL                          R13
       37 LOADNIL                          R14
       38 FORGPREP                         R12
       39 GETUPVAL                         R19 2
       40 GETTABLEKS                       R19 R19 K6 ["Keys"]
       42 GETTABLEKS                       R19 R19 K10 ["HrdCheck_BoneWithoutHrd"]
       44 DUPTABLE                         R20 K12 [{"bonePath"}]
       45 NAMECALL                         R21 R16 K13 ["GetFullName"]
       47 CALL                             R21 1 1
       48 SETTABLEKS                       R21 R20 K11 ["bonePath"]
       50 NAMECALL                         R17 R0 K8 ["fail"]
       52 CALL                             R17 3 0
       53 FORGLOOP                         R12 2 ; [-15]
       55 JUMPIFEQKNIL                     R10 ; [+176]
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K6 ["Keys"]
       60 GETTABLEKS                       R14 R14 K14 ["HrdCheck_DrdWithoutHrd"]
       62 NAMECALL                         R12 R0 K8 ["fail"]
       64 CALL                             R12 2 0
       65 JUMP                             ; [+166]
       66 GETUPVAL                         R11 3
       67 GETTABLEKS                       R11 R11 K15 ["getAvatarBoneSchema"]
       69 MOVE                             R12 R8
       70 CALL                             R11 1 1
       71 GETUPVAL                         R12 3
       72 GETTABLEKS                       R12 R12 K16 ["getSchemaFlatHierarchyList"]
       74 MOVE                             R13 R11
       75 NEWTABLE                         R14 0 1
       77 MOVE                             R15 R8
       78 SETLIST                          R14 R15 1 [1]
       80 CALL                             R12 2 1
       81 NEWTABLE                         R13 0 0
       83 GETUPVAL                         R14 4
       84 MOVE                             R15 R7
       85 LOADB                            R16 0
       86 MOVE                             R17 R13
       87 CALL                             R14 3 0
       88 NEWTABLE                         R14 1 0
       90 LOADB                            R15 1
       91 SETTABLE                         R15 R14 R8
       92 MOVE                             R15 R13
       93 LOADNIL                          R16
       94 LOADNIL                          R17
       95 FORGPREP                         R15
       96 GETTABLEKS                       R20 R19 K2 ["Name"]
       98 GETTABLE                         R21 R12 R20
       99 GETUPVAL                         R22 3
      100 GETTABLEKS                       R22 R22 K17 ["JointRotationName"]
      102 JUMPIFNOTEQ                      R20 R22 ; [+2]
      104 JUMP                             ; [+61]
      105 JUMPIFEQKNIL                     R21 ; [+7]
      107 GETTABLEKS                       R22 R21 K18 ["ClassName"]
      109 GETTABLEKS                       R23 R19 K18 ["ClassName"]
      111 JUMPIFEQ                         R22 R23 ; [+17]
      113 GETUPVAL                         R24 2
      114 GETTABLEKS                       R24 R24 K6 ["Keys"]
      116 GETTABLEKS                       R24 R24 K19 ["HrdCheck_UndefinedInstanceInBoneTree"]
      118 DUPTABLE                         R25 K22 [{"instName", "className"}]
      119 SETTABLEKS                       R20 R25 K20 ["instName"]
      121 GETTABLEKS                       R26 R19 K18 ["ClassName"]
      123 SETTABLEKS                       R26 R25 K21 ["className"]
      125 NAMECALL                         R22 R0 K8 ["fail"]
      127 CALL                             R22 3 0
      128 JUMP                             ; [+37]
      129 GETTABLE                         R22 R14 R20
      130 JUMPIFNOT                        R22 ; [+12]
      131 GETUPVAL                         R24 2
      132 GETTABLEKS                       R24 R24 K6 ["Keys"]
      134 GETTABLEKS                       R24 R24 K23 ["HrdCheck_DuplicateInstance"]
      136 DUPTABLE                         R25 K24 [{"instName"}]
      137 SETTABLEKS                       R20 R25 K20 ["instName"]
      139 NAMECALL                         R22 R0 K8 ["fail"]
      141 CALL                             R22 3 0
      142 JUMP                             ; [+23]
      143 LOADB                            R22 1
      144 SETTABLE                         R22 R14 R20
      145 GETTABLEKS                       R22 R21 K18 ["ClassName"]
      147 JUMPIFNOTEQKS                    R22 K9 ["Bone"] ; [+18]
      149 GETUPVAL                         R22 5
      150 MOVE                             R23 R19
      151 MOVE                             R24 R9
      152 MOVE                             R25 R10
      153 CALL                             R22 3 1
      154 JUMPIF                           R22 ; [+11]
      155 GETUPVAL                         R24 2
      156 GETTABLEKS                       R24 R24 K6 ["Keys"]
      158 GETTABLEKS                       R24 R24 K25 ["HrdCheck_BoneNotMappedInHRD"]
      160 DUPTABLE                         R25 K27 [{"boneName"}]
      161 SETTABLEKS                       R20 R25 K26 ["boneName"]
      163 NAMECALL                         R22 R0 K8 ["fail"]
      165 CALL                             R22 3 0
      166 FORGLOOP                         R15 2 ; [-71]
      168 NAMECALL                         R15 R7 K28 ["GetDescendants"]
      170 CALL                             R15 1 3
      171 FORGPREP                         R15
      172 GETTABLEKS                       R21 R19 K2 ["Name"]
      174 GETTABLE                         R20 R12 R21
      175 JUMPIFNOT                        R20 ; [+54]
      176 LOADK                            R23 K29 ["Attachment"]
      177 NAMECALL                         R21 R19 K30 ["IsA"]
      179 CALL                             R21 2 1
      180 JUMPIFNOT                        R21 ; [+49]
      181 GETTABLEKS                       R21 R19 K2 ["Name"]
      183 GETUPVAL                         R22 3
      184 GETTABLEKS                       R22 R22 K17 ["JointRotationName"]
      186 JUMPIFEQ                         R21 R22 ; [+43]
      188 GETTABLEKS                       R21 R20 K31 ["path"]
      190 LENGTH                           R23 R21
      191 SUBK                             R22 R23 K32 [1]
      192 GETTABLEKS                       R23 R19 K18 ["ClassName"]
      194 JUMPIFNOTEQKS                    R23 K29 ["Attachment"] ; [+9]
      196 LOADN                            R23 1
      197 JUMPIFNOTLT                      R23 R22 ; [+6]
      199 GETTABLE                         R24 R21 R22
      200 GETTABLE                         R23 R14 R24
      201 JUMPIF                           R23 ; [+2]
      202 SUBK                             R22 R22 K32 [1]
      203 JUMPBACK                         ; [-8]
      204 GETTABLEKS                       R24 R20 K31 ["path"]
      206 GETTABLE                         R23 R24 R22
      207 GETTABLEKS                       R24 R19 K33 ["Parent"]
      209 GETTABLEKS                       R24 R24 K2 ["Name"]
      211 JUMPIFEQ                         R24 R23 ; [+18]
      213 GETUPVAL                         R27 2
      214 GETTABLEKS                       R27 R27 K6 ["Keys"]
      216 GETTABLEKS                       R27 R27 K34 ["HrdCheck_ImproperParent"]
      218 DUPTABLE                         R28 K37 [{"instName", "parentName", "expectedParentName"}]
      219 GETTABLEKS                       R29 R19 K2 ["Name"]
      221 SETTABLEKS                       R29 R28 K20 ["instName"]
      223 SETTABLEKS                       R24 R28 K35 ["parentName"]
      225 SETTABLEKS                       R23 R28 K36 ["expectedParentName"]
      227 NAMECALL                         R25 R0 K8 ["fail"]
      229 CALL                             R25 3 0
      230 FORGLOOP                         R15 2 ; [-59]
      232 FORGLOOP                         R3 2 ; [-226]
      234 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K11 ["R15plusUtils"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 4 0
       46 NEWTABLE                         R7 0 2
       48 GETTABLEKS                       R8 R2 K12 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K13 ["TORSO_AND_LIMBS"]
       52 GETTABLEKS                       R9 R2 K12 ["UploadCategory"]
       54 GETTABLEKS                       R9 R9 K14 ["DYNAMIC_HEAD"]
       56 SETLIST                          R7 R8 2 [1]
       58 SETTABLEKS                       R7 R6 K15 ["categories"]
       60 NEWTABLE                         R7 0 1
       62 GETTABLEKS                       R8 R2 K16 ["SharedDataMember"]
       64 GETTABLEKS                       R8 R8 K17 ["rootInstance"]
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K18 ["requiredData"]
       70 GETTABLEKS                       R7 R5 K19 ["checkFlagEnabledForAllowHrd"]
       72 SETTABLEKS                       R7 R6 K20 ["fflag"]
       74 GETIMPORT                        R7 K22 [game]
       76 LOADK                            R9 K23 ["UGCValidationRemoveHRDBlocker"]
       77 LOADB                            R10 0
       78 NAMECALL                         R7 R7 K24 ["DefineFastFlag"]
       80 CALL                             R7 3 1
       81 DUPCLOSURE                       R8 K25 [PROTO_0]
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R9 K26 [PROTO_1]
       84 CAPTURE                          VAL R5
       85 DUPCLOSURE                       R10 K27 [PROTO_2]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R10 R6 K28 ["run"]
       94 RETURN                           R6 1
