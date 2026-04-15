PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["ASSET_TYPE_INFO"]
        3 GETTABLE                         R3 R4 R0
        4 GETTABLEKS                       R5 R3 K1 ["subParts"]
        6 GETTABLE                         R4 R5 R1
        7 DUPTABLE                         R5 K5 [{"ClassName", "Name", "_children"}]
        8 LOADK                            R6 K6 ["MeshPart"]
        9 SETTABLEKS                       R6 R5 K2 ["ClassName"]
       11 NEWTABLE                         R6 0 1
       13 MOVE                             R7 R1
       14 SETLIST                          R6 R7 1 [1]
       16 SETTABLEKS                       R6 R5 K3 ["Name"]
       18 NEWTABLE                         R6 0 3
       20 DUPTABLE                         R7 K7 [{"Name", "ClassName"}]
       21 NEWTABLE                         R8 0 1
       23 LOADK                            R9 K8 ["AvatarPartScaleType"]
       24 SETLIST                          R8 R9 1 [1]
       26 SETTABLEKS                       R8 R7 K3 ["Name"]
       28 LOADK                            R8 K9 ["StringValue"]
       29 SETTABLEKS                       R8 R7 K2 ["ClassName"]
       31 DUPTABLE                         R8 K7 [{"Name", "ClassName"}]
       32 NEWTABLE                         R9 0 3
       34 MOVE                             R10 R1
       35 MOVE                             R12 R1
       36 LOADK                            R13 K10 ["WrapTarget"]
       37 CONCAT                           R11 R12 R13
       38 LOADK                            R12 K10 ["WrapTarget"]
       39 SETLIST                          R9 R10 3 [1]
       41 SETTABLEKS                       R9 R8 K3 ["Name"]
       43 LOADK                            R9 K10 ["WrapTarget"]
       44 SETTABLEKS                       R9 R8 K2 ["ClassName"]
       46 DUPTABLE                         R9 K12 [{"Name", "ClassName", "_optional"}]
       47 NEWTABLE                         R10 0 1
       49 LOADK                            R11 K13 ["SurfaceAppearance"]
       50 SETLIST                          R10 R11 1 [1]
       52 SETTABLEKS                       R10 R9 K3 ["Name"]
       54 LOADK                            R10 K13 ["SurfaceAppearance"]
       55 SETTABLEKS                       R10 R9 K2 ["ClassName"]
       57 LOADB                            R10 1
       58 SETTABLEKS                       R10 R9 K11 ["_optional"]
       60 SETLIST                          R6 R7 3 [1]
       62 SETTABLEKS                       R6 R5 K4 ["_children"]
       64 GETTABLEKS                       R7 R5 K4 ["_children"]
       66 DUPTABLE                         R8 K7 [{"Name", "ClassName"}]
       67 NEWTABLE                         R9 0 1
       69 GETTABLEKS                       R11 R4 K14 ["rigAttachmentToParent"]
       71 GETTABLEKS                       R10 R11 K15 ["name"]
       73 SETLIST                          R9 R10 1 [1]
       75 SETTABLEKS                       R9 R8 K3 ["Name"]
       77 LOADK                            R9 K16 ["Attachment"]
       78 SETTABLEKS                       R9 R8 K2 ["ClassName"]
       80 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       82 GETIMPORT                        R6 K19 [table.insert]
       84 CALL                             R6 2 0
       85 GETIMPORT                        R6 K21 [pairs]
       87 GETTABLEKS                       R7 R4 K22 ["otherAttachments"]
       89 CALL                             R6 1 3
       90 FORGPREP_NEXT                    R6
       91 GETTABLEKS                       R12 R5 K4 ["_children"]
       93 DUPTABLE                         R13 K7 [{"Name", "ClassName"}]
       94 NEWTABLE                         R14 0 1
       96 MOVE                             R15 R9
       97 SETLIST                          R14 R15 1 [1]
       99 SETTABLEKS                       R14 R13 K3 ["Name"]
      101 LOADK                            R14 K16 ["Attachment"]
      102 SETTABLEKS                       R14 R13 K2 ["ClassName"]
      104 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      106 GETIMPORT                        R11 K19 [table.insert]
      108 CALL                             R11 2 0
      109 FORGLOOP                         R6 1 ; [-19]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R6 R7 K23 ["checkFlagEnabledForAllowHrd"]
      114 CALL                             R6 0 1
      115 JUMPIFNOT                        R6 ; [+162]
      116 GETTABLEKS                       R7 R5 K4 ["_children"]
      118 DUPTABLE                         R8 K12 [{"Name", "ClassName", "_optional"}]
      119 NEWTABLE                         R9 0 1
      121 LOADK                            R10 K24 ["HumanoidRigDescription"]
      122 SETLIST                          R9 R10 1 [1]
      124 SETTABLEKS                       R9 R8 K3 ["Name"]
      126 LOADK                            R9 K24 ["HumanoidRigDescription"]
      127 SETTABLEKS                       R9 R8 K2 ["ClassName"]
      129 GETUPVAL                         R10 2
      130 CALL                             R10 0 1
      131 NOT                              R9 R10
      132 SETTABLEKS                       R9 R8 K11 ["_optional"]
      134 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
      136 GETIMPORT                        R6 K19 [table.insert]
      138 CALL                             R6 2 0
      139 GETUPVAL                         R7 3
      140 GETTABLE                         R6 R7 R1
      141 JUMPIFEQKNIL                     R6 ; [+30]
      143 LOADK                            R7 K25 ["%*Description"]
      144 GETUPVAL                         R10 3
      145 GETTABLE                         R9 R10 R1
      146 NAMECALL                         R7 R7 K26 ["format"]
      148 CALL                             R7 2 1
      149 MOVE                             R6 R7
      150 GETTABLEKS                       R8 R5 K4 ["_children"]
      152 DUPTABLE                         R9 K12 [{"Name", "ClassName", "_optional"}]
      153 NEWTABLE                         R10 0 2
      155 LOADK                            R11 K27 ["DigitsRigDescription"]
      156 MOVE                             R12 R6
      157 SETLIST                          R10 R11 2 [1]
      159 SETTABLEKS                       R10 R9 K3 ["Name"]
      161 LOADK                            R10 K27 ["DigitsRigDescription"]
      162 SETTABLEKS                       R10 R9 K2 ["ClassName"]
      164 LOADB                            R10 1
      165 SETTABLEKS                       R10 R9 K11 ["_optional"]
      167 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      169 GETIMPORT                        R7 K19 [table.insert]
      171 CALL                             R7 2 0
      172 GETUPVAL                         R7 1
      173 GETTABLEKS                       R6 R7 K28 ["getAvatarBoneSchema"]
      175 MOVE                             R7 R1
      176 CALL                             R6 1 1
      177 GETUPVAL                         R8 1
      178 GETTABLEKS                       R7 R8 K29 ["getNameWhitelistOfClassInSchema"]
      180 MOVE                             R8 R6
      181 LOADK                            R9 K16 ["Attachment"]
      182 CALL                             R7 2 1
      183 GETTABLEKS                       R8 R5 K4 ["_children"]
      185 LOADNIL                          R9
      186 LOADNIL                          R10
      187 FORGPREP                         R8
      188 GETTABLEKS                       R13 R12 K2 ["ClassName"]
      190 JUMPIFNOTEQKS                    R13 K16 ["Attachment"] ; [+9]
      192 GETTABLEKS                       R15 R12 K3 ["Name"]
      194 GETTABLEN                        R14 R15 1
      195 GETTABLE                         R13 R7 R14
      196 JUMPIFNOT                        R13 ; [+3]
      197 LOADB                            R13 1
      198 SETTABLEKS                       R13 R12 K11 ["_optional"]
      200 GETIMPORT                        R13 K32 [string.find]
      202 GETTABLEKS                       R15 R12 K3 ["Name"]
      204 GETTABLEN                        R14 R15 1
      205 LOADK                            R15 K33 ["ShoulderRigAttachment"]
      206 CALL                             R13 2 1
      207 JUMPIFNOT                        R13 ; [+31]
      208 GETTABLEKS                       R14 R12 K4 ["_children"]
      210 JUMPIFNOTEQKNIL                  R14 ; [+5]
      212 NEWTABLE                         R14 0 0
      214 SETTABLEKS                       R14 R12 K4 ["_children"]
      216 GETTABLEKS                       R15 R12 K4 ["_children"]
      218 DUPTABLE                         R16 K12 [{"Name", "ClassName", "_optional"}]
      219 NEWTABLE                         R17 0 1
      221 GETUPVAL                         R19 1
      222 GETTABLEKS                       R18 R19 K34 ["JointRotationName"]
      224 SETLIST                          R17 R18 1 [1]
      226 SETTABLEKS                       R17 R16 K3 ["Name"]
      228 LOADK                            R17 K16 ["Attachment"]
      229 SETTABLEKS                       R17 R16 K2 ["ClassName"]
      231 LOADB                            R17 1
      232 SETTABLEKS                       R17 R16 K11 ["_optional"]
      234 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      236 GETIMPORT                        R14 K19 [table.insert]
      238 CALL                             R14 2 0
      239 FORGLOOP                         R8 2 ; [-52]
      241 GETUPVAL                         R9 1
      242 GETTABLEKS                       R8 R9 K29 ["getNameWhitelistOfClassInSchema"]
      244 MOVE                             R9 R6
      245 LOADK                            R10 K35 ["Bone"]
      246 CALL                             R8 2 1
      247 MOVE                             R9 R8
      248 LOADNIL                          R10
      249 LOADNIL                          R11
      250 FORGPREP                         R9
      251 JUMPIFNOT                        R13 ; [+24]
      252 GETTABLEKS                       R15 R5 K4 ["_children"]
      254 DUPTABLE                         R16 K37 [{"Name", "ClassName", "_optional", "_ignoreDescendants"}]
      255 NEWTABLE                         R17 0 1
      257 MOVE                             R18 R12
      258 SETLIST                          R17 R18 1 [1]
      260 SETTABLEKS                       R17 R16 K3 ["Name"]
      262 LOADK                            R17 K35 ["Bone"]
      263 SETTABLEKS                       R17 R16 K2 ["ClassName"]
      265 LOADB                            R17 1
      266 SETTABLEKS                       R17 R16 K11 ["_optional"]
      268 LOADB                            R17 1
      269 SETTABLEKS                       R17 R16 K36 ["_ignoreDescendants"]
      271 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      273 GETIMPORT                        R14 K19 [table.insert]
      275 CALL                             R14 2 0
      276 FORGLOOP                         R9 2 ; [-26]
      278 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Constants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K5 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["R15plusUtils"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R0 K9 ["flags"]
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R4 K10 ["getFFlagUGCValidationEnforceHRDUpload"]
       32 CALL                             R5 1 1
       33 DUPTABLE                         R6 K13 [{"LeftHand", "RightHand"}]
       34 LOADK                            R7 K11 ["LeftHand"]
       35 SETTABLEKS                       R7 R6 K11 ["LeftHand"]
       37 LOADK                            R7 K12 ["RightHand"]
       38 SETTABLEKS                       R7 R6 K12 ["RightHand"]
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 RETURN                           R7 1
