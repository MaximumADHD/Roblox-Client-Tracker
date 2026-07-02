PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R3 R4 R0
        4 GETTABLEKS                       R5 R3 K1 ["subParts"]
        6 GETTABLE                         R4 R5 R1
        7 DUPTABLE                         R5 K6 [{["ClassName"] = "MeshPart", ["Name"], ["_children"]}]
        8 NEWTABLE                         R6 0 1
       10 MOVE                             R7 R1
       11 SETLIST                          R6 R7 1 [1]
       13 SETTABLEKS                       R6 R5 K4 ["Name"]
       15 NEWTABLE                         R6 0 3
       17 DUPTABLE                         R7 K8 [{["Name"], ["ClassName"] = "StringValue"}]
       18 NEWTABLE                         R8 0 1
       20 LOADK                            R9 K9 ["AvatarPartScaleType"]
       21 SETLIST                          R8 R9 1 [1]
       23 SETTABLEKS                       R8 R7 K4 ["Name"]
       25 DUPTABLE                         R8 K11 [{["Name"], ["ClassName"] = "WrapTarget"}]
       26 NEWTABLE                         R9 0 3
       28 MOVE                             R10 R1
       29 MOVE                             R12 R1
       30 LOADK                            R13 K10 ["WrapTarget"]
       31 CONCAT                           R11 R12 R13
       32 LOADK                            R12 K10 ["WrapTarget"]
       33 SETLIST                          R9 R10 3 [1]
       35 SETTABLEKS                       R9 R8 K4 ["Name"]
       37 DUPTABLE                         R9 K15 [{["Name"], ["ClassName"] = "SurfaceAppearance", ["_optional"] = True}]
       38 NEWTABLE                         R10 0 1
       40 LOADK                            R11 K12 ["SurfaceAppearance"]
       41 SETLIST                          R10 R11 1 [1]
       43 SETTABLEKS                       R10 R9 K4 ["Name"]
       45 SETLIST                          R6 R7 3 [1]
       47 SETTABLEKS                       R6 R5 K5 ["_children"]
       49 GETTABLEKS                       R7 R5 K5 ["_children"]
       51 DUPTABLE                         R8 K17 [{["Name"], ["ClassName"] = "Attachment"}]
       52 NEWTABLE                         R9 0 1
       54 GETTABLEKS                       R10 R4 K18 ["rigAttachmentToParent"]
       56 GETTABLEKS                       R10 R10 K19 ["name"]
       58 SETLIST                          R9 R10 1 [1]
       60 SETTABLEKS                       R9 R8 K4 ["Name"]
       62 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       64 GETIMPORT                        R6 K22 [table.insert]
       66 CALL                             R6 2 0
       67 GETIMPORT                        R6 K24 [pairs]
       69 GETTABLEKS                       R7 R4 K25 ["otherAttachments"]
       71 CALL                             R6 1 3
       72 FORGPREP_NEXT                    R6
       73 GETTABLEKS                       R12 R5 K5 ["_children"]
       75 DUPTABLE                         R13 K17 [{["Name"], ["ClassName"] = "Attachment"}]
       76 NEWTABLE                         R14 0 1
       78 MOVE                             R15 R9
       79 SETLIST                          R14 R15 1 [1]
       81 SETTABLEKS                       R14 R13 K4 ["Name"]
       83 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       85 GETIMPORT                        R11 K22 [table.insert]
       87 CALL                             R11 2 0
       88 FORGLOOP                         R6 1 ; [-16]
       90 GETUPVAL                         R6 1
       91 GETTABLEKS                       R6 R6 K26 ["checkFlagEnabledForAllowHrd"]
       93 CALL                             R6 0 1
       94 JUMPIFNOT                        R6 ; [+138]
       95 GETTABLEKS                       R7 R5 K5 ["_children"]
       97 DUPTABLE                         R8 K28 [{["Name"], ["ClassName"] = "HumanoidRigDescription", ["_optional"]}]
       98 NEWTABLE                         R9 0 1
      100 LOADK                            R10 K27 ["HumanoidRigDescription"]
      101 SETLIST                          R9 R10 1 [1]
      103 SETTABLEKS                       R9 R8 K4 ["Name"]
      105 GETUPVAL                         R10 2
      106 CALL                             R10 0 1
      107 NOT                              R9 R10
      108 SETTABLEKS                       R9 R8 K13 ["_optional"]
      110 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      112 GETIMPORT                        R6 K22 [table.insert]
      114 CALL                             R6 2 0
      115 GETUPVAL                         R7 3
      116 GETTABLE                         R6 R7 R1
      117 JUMPIFEQKNIL                     R6 ; [+24]
      119 LOADK                            R7 K29 ["%*Description"]
      120 GETUPVAL                         R10 3
      121 GETTABLE                         R9 R10 R1
      122 NAMECALL                         R7 R7 K30 ["format"]
      124 CALL                             R7 2 1
      125 MOVE                             R6 R7
      126 GETTABLEKS                       R8 R5 K5 ["_children"]
      128 DUPTABLE                         R9 K32 [{["Name"], ["ClassName"] = "DigitsRigDescription", ["_optional"] = True}]
      129 NEWTABLE                         R10 0 2
      131 LOADK                            R11 K31 ["DigitsRigDescription"]
      132 MOVE                             R12 R6
      133 SETLIST                          R10 R11 2 [1]
      135 SETTABLEKS                       R10 R9 K4 ["Name"]
      137 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      139 GETIMPORT                        R7 K22 [table.insert]
      141 CALL                             R7 2 0
      142 GETUPVAL                         R6 1
      143 GETTABLEKS                       R6 R6 K33 ["getAvatarBoneSchema"]
      145 MOVE                             R7 R1
      146 CALL                             R6 1 1
      147 GETUPVAL                         R7 1
      148 GETTABLEKS                       R7 R7 K34 ["getNameWhitelistOfClassInSchema"]
      150 MOVE                             R8 R6
      151 LOADK                            R9 K16 ["Attachment"]
      152 CALL                             R7 2 1
      153 GETTABLEKS                       R8 R5 K5 ["_children"]
      155 LOADNIL                          R9
      156 LOADNIL                          R10
      157 FORGPREP                         R8
      158 GETTABLEKS                       R13 R12 K2 ["ClassName"]
      160 JUMPIFNOTEQKS                    R13 K16 ["Attachment"] ; [+9]
      162 GETTABLEKS                       R15 R12 K4 ["Name"]
      164 GETTABLEN                        R14 R15 1
      165 GETTABLE                         R13 R7 R14
      166 JUMPIFNOT                        R13 ; [+3]
      167 LOADB                            R13 1
      168 SETTABLEKS                       R13 R12 K13 ["_optional"]
      170 GETIMPORT                        R13 K37 [string.find]
      172 GETTABLEKS                       R15 R12 K4 ["Name"]
      174 GETTABLEN                        R14 R15 1
      175 LOADK                            R15 K38 ["ShoulderRigAttachment"]
      176 CALL                             R13 2 1
      177 JUMPIFNOT                        R13 ; [+25]
      178 GETTABLEKS                       R14 R12 K5 ["_children"]
      180 JUMPIFNOTEQKNIL                  R14 ; [+5]
      182 NEWTABLE                         R14 0 0
      184 SETTABLEKS                       R14 R12 K5 ["_children"]
      186 GETTABLEKS                       R15 R12 K5 ["_children"]
      188 DUPTABLE                         R16 K39 [{["Name"], ["ClassName"] = "Attachment", ["_optional"] = True}]
      189 NEWTABLE                         R17 0 1
      191 GETUPVAL                         R18 1
      192 GETTABLEKS                       R18 R18 K40 ["JointRotationName"]
      194 SETLIST                          R17 R18 1 [1]
      196 SETTABLEKS                       R17 R16 K4 ["Name"]
      198 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      200 GETIMPORT                        R14 K22 [table.insert]
      202 CALL                             R14 2 0
      203 FORGLOOP                         R8 2 ; [-46]
      205 GETUPVAL                         R8 1
      206 GETTABLEKS                       R8 R8 K34 ["getNameWhitelistOfClassInSchema"]
      208 MOVE                             R9 R6
      209 LOADK                            R10 K41 ["Bone"]
      210 CALL                             R8 2 1
      211 MOVE                             R9 R8
      212 LOADNIL                          R10
      213 LOADNIL                          R11
      214 FORGPREP                         R9
      215 JUMPIFNOT                        R13 ; [+15]
      216 GETTABLEKS                       R15 R5 K5 ["_children"]
      218 DUPTABLE                         R16 K43 [{["Name"], ["ClassName"] = "Bone", ["_optional"] = True, ["_ignoreDescendants"] = True}]
      219 NEWTABLE                         R17 0 1
      221 MOVE                             R18 R12
      222 SETLIST                          R17 R18 1 [1]
      224 SETTABLEKS                       R17 R16 K4 ["Name"]
      226 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      228 GETIMPORT                        R14 K22 [table.insert]
      230 CALL                             R14 2 0
      231 FORGLOOP                         R9 2 ; [-17]
      233 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K5 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["R15plusUtils"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R0 K9 ["flags"]
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R4 K10 ["getFFlagUGCValidationEnforceHRDUpload"]
       32 CALL                             R5 1 1
       33 DUPTABLE                         R6 K13 [{["LeftHand"] = "LeftHand", ["RightHand"] = "RightHand"}]
       34 DUPCLOSURE                       R7 K14 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R6
       39 RETURN                           R7 1
