PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R8 K0 ["%*Hand%*"]
        7 MOVE                             R10 R0
        8 MOVE                             R11 R6
        9 NAMECALL                         R8 R8 K1 ["format"]
       11 CALL                             R8 3 1
       12 MOVE                             R7 R8
       13 LOADK                            R9 K2 ["%*1"]
       14 MOVE                             R11 R7
       15 NAMECALL                         R9 R9 K1 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 LOADK                            R10 K3 ["%*2"]
       20 MOVE                             R12 R7
       21 NAMECALL                         R10 R10 K1 ["format"]
       23 CALL                             R10 2 1
       24 MOVE                             R9 R10
       25 LOADK                            R11 K4 ["%*3"]
       26 MOVE                             R13 R7
       27 NAMECALL                         R11 R11 K1 ["format"]
       29 CALL                             R11 2 1
       30 MOVE                             R10 R11
       31 DUPTABLE                         R11 K8 [{["ClassName"] = "Bone", ["_children"]}]
       32 NEWTABLE                         R12 1 0
       34 DUPTABLE                         R13 K8 [{["ClassName"] = "Bone", ["_children"]}]
       35 NEWTABLE                         R14 1 0
       37 DUPTABLE                         R15 K9 [{["ClassName"] = "Bone"}]
       38 SETTABLE                         R15 R14 R10
       39 SETTABLEKS                       R14 R13 K7 ["_children"]
       41 SETTABLE                         R13 R12 R9
       42 SETTABLEKS                       R12 R11 K7 ["_children"]
       44 SETTABLE                         R11 R1 R8
       45 FORGLOOP                         R2 2 ; [-40]
       47 RETURN                           R1 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+2]
        8 LOADB                            R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R0 3
       14 JUMPIFNOT                        R0 ; [+2]
       15 LOADB                            R0 1
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+9]
        3 GETIMPORT                        R0 K2 [Instance.new]
        5 LOADK                            R1 K3 ["HumanoidRigDescription"]
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K4 ["GetJointLabels"]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+9]
        3 GETIMPORT                        R0 K2 [Instance.new]
        5 LOADK                            R1 K3 ["DigitsRigDescription"]
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K4 ["GetJointLabels"]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["R15_STANDARD_JOINT_NAMES"]
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 FORGPREP                         R0
       14 GETUPVAL                         R5 0
       15 LOADB                            R6 1
       16 SETTABLE                         R6 R5 R3
       17 FORGLOOP                         R0 2 ; [-4]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K1 ["getHrdJointLabels"]
       22 CALL                             R0 0 3
       23 FORGPREP                         R0
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R6 R4 K2 ["Name"]
       27 LOADB                            R7 1
       28 SETTABLE                         R7 R5 R6
       29 FORGLOOP                         R0 2 ; [-6]
       31 GETUPVAL                         R0 2
       32 GETTABLEKS                       R0 R0 K3 ["getDrdJointLabels"]
       34 CALL                             R0 0 3
       35 FORGPREP                         R0
       36 GETUPVAL                         R5 0
       37 LOADK                            R7 K4 ["LeftHand%*"]
       38 GETTABLEKS                       R9 R4 K2 ["Name"]
       40 NAMECALL                         R7 R7 K5 ["format"]
       42 CALL                             R7 2 1
       43 MOVE                             R6 R7
       44 LOADB                            R7 1
       45 SETTABLE                         R7 R5 R6
       46 GETUPVAL                         R5 0
       47 LOADK                            R7 K6 ["RightHand%*"]
       48 GETTABLEKS                       R9 R4 K2 ["Name"]
       50 NAMECALL                         R7 R7 K5 ["format"]
       52 CALL                             R7 2 1
       53 MOVE                             R6 R7
       54 LOADB                            R7 1
       55 SETTABLE                         R7 R5 R6
       56 FORGLOOP                         R0 2 ; [-21]
       58 GETUPVAL                         R0 0
       59 RETURN                           R0 1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["ClassName"]
        8 JUMPIFNOTEQ                      R8 R1 ; [+3]
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R2 R6
       12 GETTABLEKS                       R8 R7 K1 ["_children"]
       14 JUMPIFEQKNIL                     R8 ; [+12]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K2 ["getNameWhitelistOfClassInSchema"]
       19 GETTABLEKS                       R9 R7 K1 ["_children"]
       21 MOVE                             R10 R1
       22 CALL                             R8 2 3
       23 FORGPREP                         R8
       24 SETTABLE                         R12 R2 R11
       25 FORGLOOP                         R8 2 ; [-2]
       27 FORGLOOP                         R3 2 ; [-22]
       29 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K2 [table.clone]
        8 MOVE                             R9 R1
        9 CALL                             R8 1 1
       10 FASTCALL2                        TABLE_INSERT R8 R6 ; [+5]
       12 MOVE                             R10 R8
       13 MOVE                             R11 R6
       14 GETIMPORT                        R9 K4 [table.insert]
       16 CALL                             R9 2 0
       17 DUPTABLE                         R9 K7 [{"ClassName", "path"}]
       18 GETTABLEKS                       R10 R7 K5 ["ClassName"]
       20 SETTABLEKS                       R10 R9 K5 ["ClassName"]
       22 SETTABLEKS                       R8 R9 K6 ["path"]
       24 SETTABLE                         R9 R2 R6
       25 GETTABLEKS                       R9 R7 K8 ["_children"]
       27 JUMPIFEQKNIL                     R9 ; [+12]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K9 ["getSchemaFlatHierarchyList"]
       32 GETTABLEKS                       R10 R7 K8 ["_children"]
       34 MOVE                             R11 R8
       35 CALL                             R9 2 3
       36 FORGPREP                         R9
       37 SETTABLE                         R13 R2 R12
       38 FORGLOOP                         R9 2 ; [-2]
       40 FORGLOOP                         R3 2 ; [-35]
       42 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 JUMPIFNOTEQKS                    R0 K0 ["Left"] ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["Right"] ; [+3]
        6 GETUPVAL                         R1 1
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R3 K4 ["Invalid side: "]
       11 MOVE                             R4 R0
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOTEQKS                    R0 K0 ["Head"] ; [+3]
        2 GETUPVAL                         R1 0
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["UpperTorso"] ; [+3]
        6 GETUPVAL                         R1 1
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K2 ["LeftFoot"] ; [+3]
       10 GETUPVAL                         R1 2
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K3 ["RightFoot"] ; [+3]
       14 GETUPVAL                         R1 3
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKS                    R0 K4 ["LeftHand"] ; [+3]
       18 GETUPVAL                         R1 4
       19 RETURN                           R1 1
       20 JUMPIFNOTEQKS                    R0 K5 ["RightHand"] ; [+3]
       22 GETUPVAL                         R1 5
       23 RETURN                           R1 1
       24 NEWTABLE                         R1 0 0
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 16 0
       21 LOADNIL                          R4
       22 GETTABLEKS                       R5 R0 K8 ["flags"]
       24 GETIMPORT                        R6 K4 [require]
       26 GETTABLEKS                       R7 R5 K9 ["getFFlagUGCValidationAllowHRDUpload"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K4 [require]
       31 GETTABLEKS                       R8 R5 K10 ["getFFlagDebugAllowHRDUploadOnBundleBackend"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R5 K11 ["getFFlagUGCValidationExtendSchemaToIgnoreDescendants"]
       38 CALL                             R8 1 1
       39 NEWTABLE                         R9 0 5
       41 LOADK                            R10 K12 ["Index"]
       42 LOADK                            R11 K13 ["Middle"]
       43 LOADK                            R12 K14 ["Pinky"]
       44 LOADK                            R13 K15 ["Ring"]
       45 LOADK                            R14 K16 ["Thumb"]
       46 SETLIST                          R9 R10 5 [1]
       48 DUPCLOSURE                       R10 K17 [PROTO_0]
       49 CAPTURE                          VAL R9
       50 DUPTABLE                         R11 K19 [{"HeadBase"}]
       51 DUPTABLE                         R12 K23 [{["ClassName"] = "Bone", ["_children"]}]
       52 DUPTABLE                         R13 K28 [{"FaceCenterAttachment", "FaceFrontAttachment", "HairAttachment", "HatAttachment"}]
       53 DUPTABLE                         R14 K30 [{["ClassName"] = "Attachment"}]
       54 SETTABLEKS                       R14 R13 K24 ["FaceCenterAttachment"]
       56 DUPTABLE                         R14 K30 [{["ClassName"] = "Attachment"}]
       57 SETTABLEKS                       R14 R13 K25 ["FaceFrontAttachment"]
       59 DUPTABLE                         R14 K30 [{["ClassName"] = "Attachment"}]
       60 SETTABLEKS                       R14 R13 K26 ["HairAttachment"]
       62 DUPTABLE                         R14 K30 [{["ClassName"] = "Attachment"}]
       63 SETTABLEKS                       R14 R13 K27 ["HatAttachment"]
       65 SETTABLEKS                       R13 R12 K22 ["_children"]
       67 SETTABLEKS                       R12 R11 K18 ["HeadBase"]
       69 DUPTABLE                         R12 K32 [{"Spine"}]
       70 DUPTABLE                         R13 K23 [{["ClassName"] = "Bone", ["_children"]}]
       71 DUPTABLE                         R14 K34 [{"Chest"}]
       72 DUPTABLE                         R15 K23 [{["ClassName"] = "Bone", ["_children"]}]
       73 DUPTABLE                         R16 K41 [{"BodyBackAttachment", "BodyFrontAttachment", "NeckRigAttachment", "NeckAttachment", "LeftClavicle", "RightClavicle"}]
       74 DUPTABLE                         R17 K30 [{["ClassName"] = "Attachment"}]
       75 SETTABLEKS                       R17 R16 K35 ["BodyBackAttachment"]
       77 DUPTABLE                         R17 K30 [{["ClassName"] = "Attachment"}]
       78 SETTABLEKS                       R17 R16 K36 ["BodyFrontAttachment"]
       80 DUPTABLE                         R17 K30 [{["ClassName"] = "Attachment"}]
       81 SETTABLEKS                       R17 R16 K37 ["NeckRigAttachment"]
       83 DUPTABLE                         R17 K30 [{["ClassName"] = "Attachment"}]
       84 SETTABLEKS                       R17 R16 K38 ["NeckAttachment"]
       86 DUPTABLE                         R17 K23 [{["ClassName"] = "Bone", ["_children"]}]
       87 DUPTABLE                         R18 K44 [{"LeftCollarAttachment", "LeftShoulderRigAttachment"}]
       88 DUPTABLE                         R19 K30 [{["ClassName"] = "Attachment"}]
       89 SETTABLEKS                       R19 R18 K42 ["LeftCollarAttachment"]
       91 DUPTABLE                         R19 K30 [{["ClassName"] = "Attachment"}]
       92 SETTABLEKS                       R19 R18 K43 ["LeftShoulderRigAttachment"]
       94 SETTABLEKS                       R18 R17 K22 ["_children"]
       96 SETTABLEKS                       R17 R16 K39 ["LeftClavicle"]
       98 DUPTABLE                         R17 K23 [{["ClassName"] = "Bone", ["_children"]}]
       99 DUPTABLE                         R18 K47 [{"RightCollarAttachment", "RightShoulderRigAttachment"}]
      100 DUPTABLE                         R19 K30 [{["ClassName"] = "Attachment"}]
      101 SETTABLEKS                       R19 R18 K45 ["RightCollarAttachment"]
      103 DUPTABLE                         R19 K30 [{["ClassName"] = "Attachment"}]
      104 SETTABLEKS                       R19 R18 K46 ["RightShoulderRigAttachment"]
      106 SETTABLEKS                       R18 R17 K22 ["_children"]
      108 SETTABLEKS                       R17 R16 K40 ["RightClavicle"]
      110 SETTABLEKS                       R16 R15 K22 ["_children"]
      112 SETTABLEKS                       R15 R14 K33 ["Chest"]
      114 SETTABLEKS                       R14 R13 K22 ["_children"]
      116 SETTABLEKS                       R13 R12 K31 ["Spine"]
      118 DUPTABLE                         R13 K49 [{"LeftToeBase"}]
      119 DUPTABLE                         R14 K50 [{["ClassName"] = "Bone"}]
      120 SETTABLEKS                       R14 R13 K48 ["LeftToeBase"]
      122 DUPTABLE                         R14 K52 [{"RightToeBase"}]
      123 DUPTABLE                         R15 K50 [{["ClassName"] = "Bone"}]
      124 SETTABLEKS                       R15 R14 K51 ["RightToeBase"]
      126 MOVE                             R15 R10
      127 LOADK                            R16 K53 ["Left"]
      128 CALL                             R15 1 1
      129 MOVE                             R16 R10
      130 LOADK                            R17 K54 ["Right"]
      131 CALL                             R16 1 1
      132 LOADK                            R17 K55 ["JointRotation"]
      133 SETTABLEKS                       R17 R3 K56 ["JointRotationName"]
      135 LOADB                            R17 0
      136 NEWCLOSURE                       R18 P1
      137 CAPTURE                          REF R17
      138 SETTABLEKS                       R18 R3 K57 ["setIsBackendBundleUpload"]
      140 NEWCLOSURE                       R18 P2
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          REF R17
      145 SETTABLEKS                       R18 R3 K58 ["checkFlagEnabledForAllowHrd"]
      147 LOADNIL                          R18
      148 LOADNIL                          R19
      149 NEWCLOSURE                       R20 P3
      150 CAPTURE                          REF R18
      151 SETTABLEKS                       R20 R3 K59 ["getHrdJointLabels"]
      153 NEWCLOSURE                       R20 P4
      154 CAPTURE                          REF R19
      155 SETTABLEKS                       R20 R3 K60 ["getDrdJointLabels"]
      157 NEWCLOSURE                       R20 P5
      158 CAPTURE                          REF R4
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R3
      161 SETTABLEKS                       R20 R3 K61 ["getJointNameWhitelist"]
      163 DUPCLOSURE                       R20 K62 [PROTO_6]
      164 CAPTURE                          VAL R3
      165 SETTABLEKS                       R20 R3 K63 ["getNameWhitelistOfClassInSchema"]
      167 DUPCLOSURE                       R20 K64 [PROTO_7]
      168 CAPTURE                          VAL R3
      169 SETTABLEKS                       R20 R3 K65 ["getSchemaFlatHierarchyList"]
      171 DUPCLOSURE                       R20 K66 [PROTO_8]
      172 CAPTURE                          VAL R9
      173 SETTABLEKS                       R20 R3 K67 ["getFingerFlatSuffixes"]
      175 DUPCLOSURE                       R20 K68 [PROTO_9]
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R16
      178 SETTABLEKS                       R20 R3 K69 ["getDrdSchema"]
      180 DUPCLOSURE                       R20 K70 [PROTO_10]
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R15
      186 CAPTURE                          VAL R16
      187 SETTABLEKS                       R20 R3 K71 ["getAvatarBoneSchema"]
      189 CLOSEUPVALS                      R4
      190 RETURN                           R3 1
