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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getHrdJointLabels"]
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
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K4 ["getDrdJointLabels"]
       32 CALL                             R3 0 3
       33 FORGPREP                         R3
       34 LOADK                            R9 K5 ["%*Hand%*"]
       35 GETTABLEKS                       R12 R2 K6 ["Side"]
       37 GETTABLEKS                       R11 R12 K1 ["Name"]
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
       17 JUMPIFNOTEQKNIL                  R9 ; [+36]
       19 GETUPVAL                         R11 0
       20 MOVE                             R12 R7
       21 LOADK                            R13 K6 ["Bone"]
       22 CALL                             R11 2 1
       23 MOVE                             R12 R11
       24 LOADNIL                          R13
       25 LOADNIL                          R14
       26 FORGPREP                         R12
       27 GETUPVAL                         R21 1
       28 GETTABLEKS                       R20 R21 K7 ["Keys"]
       30 GETTABLEKS                       R19 R20 K8 ["HrdCheck_BoneWithoutHrd"]
       32 DUPTABLE                         R20 K10 [{"bonePath"}]
       33 NAMECALL                         R21 R16 K11 ["GetFullName"]
       35 CALL                             R21 1 1
       36 SETTABLEKS                       R21 R20 K9 ["bonePath"]
       38 NAMECALL                         R17 R0 K12 ["fail"]
       40 CALL                             R17 3 0
       41 FORGLOOP                         R12 2 ; [-15]
       43 JUMPIFEQKNIL                     R10 ; [+176]
       45 GETUPVAL                         R16 1
       46 GETTABLEKS                       R15 R16 K7 ["Keys"]
       48 GETTABLEKS                       R14 R15 K13 ["HrdCheck_DrdWithoutHrd"]
       50 NAMECALL                         R12 R0 K12 ["fail"]
       52 CALL                             R12 2 0
       53 JUMP                             ; [+166]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R11 R12 K14 ["getAvatarBoneSchema"]
       57 MOVE                             R12 R8
       58 CALL                             R11 1 1
       59 GETUPVAL                         R13 2
       60 GETTABLEKS                       R12 R13 K15 ["getSchemaFlatHierarchyList"]
       62 MOVE                             R13 R11
       63 NEWTABLE                         R14 0 1
       65 MOVE                             R15 R8
       66 SETLIST                          R14 R15 1 [1]
       68 CALL                             R12 2 1
       69 NEWTABLE                         R13 0 0
       71 GETUPVAL                         R14 3
       72 MOVE                             R15 R7
       73 LOADB                            R16 0
       74 MOVE                             R17 R13
       75 CALL                             R14 3 0
       76 NEWTABLE                         R14 1 0
       78 LOADB                            R15 1
       79 SETTABLE                         R15 R14 R8
       80 MOVE                             R15 R13
       81 LOADNIL                          R16
       82 LOADNIL                          R17
       83 FORGPREP                         R15
       84 GETTABLEKS                       R20 R19 K2 ["Name"]
       86 GETTABLE                         R21 R12 R20
       87 GETUPVAL                         R23 2
       88 GETTABLEKS                       R22 R23 K16 ["JointRotationName"]
       90 JUMPIFNOTEQ                      R20 R22 ; [+2]
       92 JUMP                             ; [+61]
       93 JUMPIFEQKNIL                     R21 ; [+7]
       95 GETTABLEKS                       R22 R21 K17 ["ClassName"]
       97 GETTABLEKS                       R23 R19 K17 ["ClassName"]
       99 JUMPIFEQ                         R22 R23 ; [+17]
      101 GETUPVAL                         R26 1
      102 GETTABLEKS                       R25 R26 K7 ["Keys"]
      104 GETTABLEKS                       R24 R25 K18 ["HrdCheck_UndefinedInstanceInBoneTree"]
      106 DUPTABLE                         R25 K21 [{"instName", "className"}]
      107 SETTABLEKS                       R20 R25 K19 ["instName"]
      109 GETTABLEKS                       R26 R19 K17 ["ClassName"]
      111 SETTABLEKS                       R26 R25 K20 ["className"]
      113 NAMECALL                         R22 R0 K12 ["fail"]
      115 CALL                             R22 3 0
      116 JUMP                             ; [+37]
      117 GETTABLE                         R22 R14 R20
      118 JUMPIFNOT                        R22 ; [+12]
      119 GETUPVAL                         R26 1
      120 GETTABLEKS                       R25 R26 K7 ["Keys"]
      122 GETTABLEKS                       R24 R25 K22 ["HrdCheck_DuplicateInstance"]
      124 DUPTABLE                         R25 K23 [{"instName"}]
      125 SETTABLEKS                       R20 R25 K19 ["instName"]
      127 NAMECALL                         R22 R0 K12 ["fail"]
      129 CALL                             R22 3 0
      130 JUMP                             ; [+23]
      131 LOADB                            R22 1
      132 SETTABLE                         R22 R14 R20
      133 GETTABLEKS                       R22 R21 K17 ["ClassName"]
      135 JUMPIFNOTEQKS                    R22 K6 ["Bone"] ; [+18]
      137 GETUPVAL                         R22 4
      138 MOVE                             R23 R19
      139 MOVE                             R24 R9
      140 MOVE                             R25 R10
      141 CALL                             R22 3 1
      142 JUMPIF                           R22 ; [+11]
      143 GETUPVAL                         R26 1
      144 GETTABLEKS                       R25 R26 K7 ["Keys"]
      146 GETTABLEKS                       R24 R25 K24 ["HrdCheck_BoneNotMappedInHRD"]
      148 DUPTABLE                         R25 K26 [{"boneName"}]
      149 SETTABLEKS                       R20 R25 K25 ["boneName"]
      151 NAMECALL                         R22 R0 K12 ["fail"]
      153 CALL                             R22 3 0
      154 FORGLOOP                         R15 2 ; [-71]
      156 NAMECALL                         R15 R7 K27 ["GetDescendants"]
      158 CALL                             R15 1 3
      159 FORGPREP                         R15
      160 GETTABLEKS                       R21 R19 K2 ["Name"]
      162 GETTABLE                         R20 R12 R21
      163 JUMPIFNOT                        R20 ; [+54]
      164 LOADK                            R23 K28 ["Attachment"]
      165 NAMECALL                         R21 R19 K29 ["IsA"]
      167 CALL                             R21 2 1
      168 JUMPIFNOT                        R21 ; [+49]
      169 GETTABLEKS                       R21 R19 K2 ["Name"]
      171 GETUPVAL                         R23 2
      172 GETTABLEKS                       R22 R23 K16 ["JointRotationName"]
      174 JUMPIFEQ                         R21 R22 ; [+43]
      176 GETTABLEKS                       R21 R20 K30 ["path"]
      178 LENGTH                           R23 R21
      179 SUBK                             R22 R23 K31 [1]
      180 GETTABLEKS                       R23 R19 K17 ["ClassName"]
      182 JUMPIFNOTEQKS                    R23 K28 ["Attachment"] ; [+9]
      184 LOADN                            R23 1
      185 JUMPIFNOTLT                      R23 R22 ; [+6]
      187 GETTABLE                         R24 R21 R22
      188 GETTABLE                         R23 R14 R24
      189 JUMPIF                           R23 ; [+2]
      190 SUBK                             R22 R22 K31 [1]
      191 JUMPBACK                         ; [-8]
      192 GETTABLEKS                       R24 R20 K30 ["path"]
      194 GETTABLE                         R23 R24 R22
      195 GETTABLEKS                       R25 R19 K32 ["Parent"]
      197 GETTABLEKS                       R24 R25 K2 ["Name"]
      199 JUMPIFEQ                         R24 R23 ; [+18]
      201 GETUPVAL                         R29 1
      202 GETTABLEKS                       R28 R29 K7 ["Keys"]
      204 GETTABLEKS                       R27 R28 K33 ["HrdCheck_ImproperParent"]
      206 DUPTABLE                         R28 K36 [{"instName", "parentName", "expectedParentName"}]
      207 GETTABLEKS                       R29 R19 K2 ["Name"]
      209 SETTABLEKS                       R29 R28 K19 ["instName"]
      211 SETTABLEKS                       R24 R28 K34 ["parentName"]
      213 SETTABLEKS                       R23 R28 K35 ["expectedParentName"]
      215 NAMECALL                         R25 R0 K12 ["fail"]
      217 CALL                             R25 3 0
      218 FORGLOOP                         R15 2 ; [-59]
      220 FORGLOOP                         R3 2 ; [-214]
      222 RETURN                           R0 0

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
       44 NEWTABLE                         R6 4 0
       46 NEWTABLE                         R7 0 2
       48 GETTABLEKS                       R9 R2 K12 ["UploadCategory"]
       50 GETTABLEKS                       R8 R9 K13 ["TORSO_AND_LIMBS"]
       52 GETTABLEKS                       R10 R2 K12 ["UploadCategory"]
       54 GETTABLEKS                       R9 R10 K14 ["DYNAMIC_HEAD"]
       56 SETLIST                          R7 R8 2 [1]
       58 SETTABLEKS                       R7 R6 K15 ["categories"]
       60 NEWTABLE                         R7 0 1
       62 GETTABLEKS                       R9 R2 K16 ["SharedDataMember"]
       64 GETTABLEKS                       R8 R9 K17 ["rootInstance"]
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K18 ["requiredData"]
       70 GETTABLEKS                       R7 R5 K19 ["checkFlagEnabledForAllowHrd"]
       72 SETTABLEKS                       R7 R6 K20 ["fflag"]
       74 DUPCLOSURE                       R7 K21 [PROTO_0]
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R8 K22 [PROTO_1]
       77 CAPTURE                          VAL R5
       78 DUPCLOSURE                       R9 K23 [PROTO_2]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 SETTABLEKS                       R9 R6 K24 ["run"]
       86 RETURN                           R6 1
