PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["RigType"]
        2 GETIMPORT                        R4 K4 [Enum.HumanoidRigType.R6]
        4 JUMPIFNOTEQ                      R3 R4 ; [+12]
        6 NAMECALL                         R4 R1 K5 ["GetPivot"]
        8 CALL                             R4 1 1
        9 LOADK                            R5 K6 [{0, 2, 0}]
       10 SUB                              R3 R4 R5
       11 LOADK                            R5 K7 [{4, 5, 1}]
       12 LOADK                            R7 K8 [{1, 1, 1}]
       13 MULK                             R8 R2 K9 [0.02]
       14 ADD                              R6 R7 R8
       15 MUL                              R4 R5 R6
       16 RETURN                           R3 2
       17 GETUPVAL                         R3 0
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 2
       21 LOADK                            R6 K8 [{1, 1, 1}]
       22 MULK                             R7 R2 K9 [0.02]
       23 ADD                              R5 R6 R7
       24 MUL                              R4 R4 R5
       25 RETURN                           R3 2

PROTO_1:
        0 JUMPIFEQKS                       R1 K0 ["Accessories"] ; [+4]
        2 JUMPIFEQKS                       R1 K1 ["Clothing"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["getExistingAvatarPreviewFolder"]
        8 CALL                             R2 0 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NEWTABLE                         R3 0 0
       13 NAMECALL                         R4 R2 K3 ["GetChildren"]
       15 CALL                             R4 1 3
       16 FORGPREP                         R4
       17 GETUPVAL                         R9 1
       18 MOVE                             R11 R8
       19 GETUPVAL                         R12 2
       20 GETTABLEKS                       R12 R12 K4 ["tag"]
       22 NAMECALL                         R9 R9 K5 ["HasTag"]
       24 CALL                             R9 3 1
       25 JUMPIFNOT                        R9 ; [+8]
       26 JUMPIF                           R0 ; [+4]
       27 LOADNIL                          R9
       28 SETTABLEKS                       R9 R8 K6 ["Parent"]
       30 JUMP                             ; [+3]
       31 GETTABLEKS                       R9 R8 K7 ["Name"]
       33 SETTABLE                         R9 R3 R8
       34 FORGLOOP                         R4 2 ; [-18]
       36 JUMPIF                           R0 ; [+1]
       37 RETURN                           R0 0
       38 LOADNIL                          R4
       39 JUMPIFNOTEQKS                    R1 K0 ["Accessories"] ; [+10]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K8 ["avatarAccessoryRules"]
       44 CALL                             R5 0 1
       45 JUMPIF                           R5 ; [+1]
       46 RETURN                           R0 0
       47 GETTABLEKS                       R4 R5 K9 ["LimitBounds"]
       49 JUMP                             ; [+10]
       50 JUMPIFNOTEQKS                    R1 K1 ["Clothing"] ; [+9]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K10 ["avatarClothingRules"]
       55 CALL                             R5 0 1
       56 JUMPIF                           R5 ; [+1]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R4 R5 K9 ["LimitBounds"]
       60 NAMECALL                         R5 R2 K3 ["GetChildren"]
       62 CALL                             R5 1 3
       63 FORGPREP                         R5
       64 LOADK                            R12 K11 ["Model"]
       65 NAMECALL                         R10 R9 K12 ["IsA"]
       67 CALL                             R10 2 1
       68 JUMPIFNOT                        R10 ; [+143]
       69 LOADK                            R12 K13 ["Humanoid"]
       70 NAMECALL                         R10 R9 K14 ["FindFirstChildWhichIsA"]
       72 CALL                             R10 2 1
       73 JUMPIFNOT                        R10 ; [+138]
       74 GETTABLEKS                       R12 R9 K7 ["Name"]
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K15 ["name"]
       79 CONCAT                           R11 R12 R13
       80 LOADNIL                          R12
       81 MOVE                             R13 R3
       82 LOADNIL                          R14
       83 LOADNIL                          R15
       84 FORGPREP                         R13
       85 JUMPIFNOTEQ                      R17 R11 ; [+5]
       87 MOVE                             R12 R16
       88 LOADNIL                          R18
       89 SETTABLE                         R18 R3 R12
       90 JUMP                             ; [+2]
       91 FORGLOOP                         R13 2 ; [-7]
       93 JUMPIF                           R12 ; [+31]
       94 GETIMPORT                        R13 K18 [Instance.new]
       96 LOADK                            R14 K19 ["Part"]
       97 MOVE                             R15 R2
       98 CALL                             R13 2 1
       99 MOVE                             R12 R13
      100 SETTABLEKS                       R11 R12 K7 ["Name"]
      102 GETUPVAL                         R13 2
      103 GETTABLEKS                       R13 R13 K20 ["color"]
      105 SETTABLEKS                       R13 R12 K21 ["Color"]
      107 GETUPVAL                         R13 2
      108 GETTABLEKS                       R13 R13 K22 ["transparency"]
      110 SETTABLEKS                       R13 R12 K23 ["Transparency"]
      112 GETUPVAL                         R13 2
      113 GETTABLEKS                       R13 R13 K24 ["material"]
      115 SETTABLEKS                       R13 R12 K25 ["Material"]
      117 GETUPVAL                         R13 1
      118 MOVE                             R15 R12
      119 GETUPVAL                         R16 2
      120 GETTABLEKS                       R16 R16 K4 ["tag"]
      122 NAMECALL                         R13 R13 K26 ["AddTag"]
      124 CALL                             R13 3 0
      125 MOVE                             R15 R4
      126 GETTABLEKS                       R16 R10 K27 ["RigType"]
      128 GETIMPORT                        R17 K31 [Enum.HumanoidRigType.R6]
      130 JUMPIFNOTEQ                      R16 R17 ; [+12]
      132 NAMECALL                         R16 R9 K32 ["GetPivot"]
      134 CALL                             R16 1 1
      135 LOADK                            R17 K33 [{0, 2, 0}]
      136 SUB                              R13 R16 R17
      137 LOADK                            R16 K34 [{4, 5, 1}]
      138 LOADK                            R18 K35 [{1, 1, 1}]
      139 MULK                             R19 R15 K36 [0.02]
      140 ADD                              R17 R18 R19
      141 MUL                              R14 R16 R17
      142 JUMP                             ; [+10]
      143 GETUPVAL                         R16 4
      144 MOVE                             R17 R10
      145 MOVE                             R18 R9
      146 CALL                             R16 2 2
      147 LOADK                            R19 K35 [{1, 1, 1}]
      148 MULK                             R20 R15 K36 [0.02]
      149 ADD                              R18 R19 R20
      150 MUL                              R17 R17 R18
      151 MOVE                             R13 R16
      152 MOVE                             R14 R17
      153 SETTABLEKS                       R13 R12 K37 ["CFrame"]
      155 SETTABLEKS                       R14 R12 K38 ["Size"]
      157 LOADK                            R17 K39 ["Attachment"]
      158 NAMECALL                         R15 R12 K40 ["FindFirstChild"]
      160 CALL                             R15 2 1
      161 JUMPIF                           R15 ; [+6]
      162 GETIMPORT                        R16 K18 [Instance.new]
      164 LOADK                            R17 K39 ["Attachment"]
      165 MOVE                             R18 R12
      166 CALL                             R16 2 1
      167 MOVE                             R15 R16
      168 GETTABLEKS                       R16 R9 K41 ["PrimaryPart"]
      170 LOADK                            R18 K39 ["Attachment"]
      171 NAMECALL                         R16 R16 K40 ["FindFirstChild"]
      173 CALL                             R16 2 1
      174 JUMPIF                           R16 ; [+7]
      175 GETIMPORT                        R17 K18 [Instance.new]
      177 LOADK                            R18 K39 ["Attachment"]
      178 GETTABLEKS                       R19 R9 K41 ["PrimaryPart"]
      180 CALL                             R17 2 1
      181 MOVE                             R16 R17
      182 NAMECALL                         R18 R13 K42 ["Inverse"]
      184 CALL                             R18 1 1
      185 GETTABLEKS                       R19 R9 K41 ["PrimaryPart"]
      187 GETTABLEKS                       R19 R19 K37 ["CFrame"]
      189 GETTABLEKS                       R19 R19 K43 ["Position"]
      191 MUL                              R17 R18 R19
      192 SETTABLEKS                       R17 R15 K43 ["Position"]
      194 LOADK                            R19 K44 ["RigidConstraint"]
      195 NAMECALL                         R17 R12 K40 ["FindFirstChild"]
      197 CALL                             R17 2 1
      198 JUMPIF                           R17 ; [+13]
      199 GETIMPORT                        R18 K18 [Instance.new]
      201 LOADK                            R19 K44 ["RigidConstraint"]
      202 MOVE                             R20 R12
      203 CALL                             R18 2 1
      204 MOVE                             R17 R18
      205 SETTABLEKS                       R15 R17 K45 ["Attachment0"]
      207 SETTABLEKS                       R16 R17 K46 ["Attachment1"]
      209 LOADB                            R18 1
      210 SETTABLEKS                       R18 R17 K47 ["Enabled"]
      212 FORGLOOP                         R5 2 ; [-149]
      214 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R2 K10 ["assetDmUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETTABLEKS                       R3 R3 K11 ["AvatarPreview"]
       28 GETTABLEKS                       R3 R3 K12 ["AvatarPreviewConstants"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R2 R2 K13 ["boundingBoxProps"]
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K6 ["Src"]
       37 GETTABLEKS                       R4 R4 K7 ["Util"]
       39 GETTABLEKS                       R4 R4 K11 ["AvatarPreview"]
       41 GETTABLEKS                       R4 R4 K14 ["getHumanoidBoundingBox"]
       43 CALL                             R3 1 1
       44 GETIMPORT                        R4 K5 [require]
       46 GETTABLEKS                       R5 R0 K6 ["Src"]
       48 GETTABLEKS                       R5 R5 K7 ["Util"]
       50 GETTABLEKS                       R5 R5 K11 ["AvatarPreview"]
       52 GETTABLEKS                       R5 R5 K15 ["previewFolderUtils"]
       54 CALL                             R4 1 1
       55 GETIMPORT                        R5 K5 [require]
       57 GETTABLEKS                       R6 R0 K6 ["Src"]
       59 GETTABLEKS                       R6 R6 K7 ["Util"]
       61 GETTABLEKS                       R6 R6 K16 ["AvatarSettingsProviderTypes"]
       63 CALL                             R5 1 1
       64 GETIMPORT                        R6 K18 [game]
       66 LOADK                            R8 K19 ["CollectionService"]
       67 NAMECALL                         R6 R6 K20 ["GetService"]
       69 CALL                             R6 2 1
       70 DUPCLOSURE                       R7 K21 [PROTO_0]
       71 CAPTURE                          VAL R3
       72 DUPCLOSURE                       R8 K22 [PROTO_1]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R3
       78 RETURN                           R8 1
