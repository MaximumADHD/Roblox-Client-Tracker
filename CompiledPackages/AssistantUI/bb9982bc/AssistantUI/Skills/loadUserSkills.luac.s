PROTO_0:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["parse"]
        5 MOVE                             R5 R1
        6 CALL                             R3 2 3
        7 JUMPIF                           R3 ; [+14]
        8 GETIMPORT                        R6 K4 [warn]
       10 LOADK                            R7 K5 ["User skill (asset:%*) parse threw: %*"]
       11 MOVE                             R9 R0
       12 FASTCALL1                        TOSTRING R4 ; [+3]
       13 MOVE                             R11 R4
       14 GETIMPORT                        R10 K7 [tostring]
       16 CALL                             R10 1 1
       17 NAMECALL                         R7 R7 K8 ["format"]
       19 CALL                             R7 3 1
       20 CALL                             R6 1 0
       21 RETURN                           R0 0
       22 JUMPIF                           R4 ; [+10]
       23 GETIMPORT                        R6 K4 [warn]
       25 LOADK                            R7 K9 ["User skill (asset:%*) has malformed frontmatter: %*"]
       26 MOVE                             R9 R0
       27 MOVE                             R10 R5
       28 NAMECALL                         R7 R7 K8 ["format"]
       30 CALL                             R7 3 1
       31 CALL                             R6 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R6 R4 K10 ["body"]
       35 LOADK                            R8 K11 ["%S"]
       36 NAMECALL                         R6 R6 K12 ["match"]
       38 CALL                             R6 2 1
       39 JUMPIF                           R6 ; [+9]
       40 GETIMPORT                        R6 K4 [warn]
       42 LOADK                            R7 K13 ["User skill (asset:%*) has an empty body; skipping."]
       43 MOVE                             R9 R0
       44 NAMECALL                         R7 R7 K8 ["format"]
       46 CALL                             R7 2 1
       47 CALL                             R6 1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R6 R4 K14 ["frontmatter"]
       51 GETTABLEKS                       R6 R6 K15 ["enabled"]
       53 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       55 RETURN                           R0 0
       56 DUPTABLE                         R6 K22 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       57 GETTABLEKS                       R7 R4 K14 ["frontmatter"]
       59 GETTABLEKS                       R7 R7 K16 ["name"]
       61 SETTABLEKS                       R7 R6 K16 ["name"]
       63 GETTABLEKS                       R7 R4 K14 ["frontmatter"]
       65 GETTABLEKS                       R7 R7 K17 ["description"]
       67 SETTABLEKS                       R7 R6 K17 ["description"]
       69 GETTABLEKS                       R7 R4 K10 ["body"]
       71 SETTABLEKS                       R7 R6 K18 ["content"]
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K23 ["User"]
       76 SETTABLEKS                       R7 R6 K19 ["source"]
       78 SETTABLEKS                       R0 R6 K20 ["assetId"]
       80 SETTABLEKS                       R1 R6 K21 ["rawContent"]
       82 JUMPIFNOT                        R2 ; [+6]
       83 GETUPVAL                         R7 2
       84 GETTABLEKS                       R7 R7 K24 ["store"]
       86 MOVE                             R8 R6
       87 CALL                             R7 1 0
       88 RETURN                           R0 0
       89 GETUPVAL                         R7 3
       90 GETTABLEKS                       R7 R7 K25 ["register"]
       92 MOVE                             R8 R6
       93 CALL                             R7 1 0
       94 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLE                         R10 R2 R9
        7 JUMPIF                           R10 ; [+7]
        8 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       10 MOVE                             R11 R4
       11 MOVE                             R12 R9
       12 GETIMPORT                        R10 K2 [table.insert]
       14 CALL                             R10 2 0
       15 FORGLOOP                         R5 2 ; [-10]
       17 LENGTH                           R5 R4
       18 JUMPIFNOTEQKN                    R5 K3 [0] ; [+6]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 0
       24 RETURN                           R5 2
       25 NEWTABLE                         R5 0 0
       27 NEWTABLE                         R6 0 0
       29 MOVE                             R7 R4
       30 LOADNIL                          R8
       31 LOADNIL                          R9
       32 FORGPREP                         R7
       33 GETIMPORT                        R12 K5 [pcall]
       35 GETTABLEKS                       R13 R0 K6 ["userSkillAssets"]
       37 GETTABLEKS                       R13 R13 K7 ["fetchContentAsync"]
       39 MOVE                             R14 R11
       40 CALL                             R12 2 2
       41 JUMPIFNOT                        R12 ; [+41]
       42 GETIMPORT                        R14 K5 [pcall]
       44 GETUPVAL                         R15 0
       45 GETTABLEKS                       R15 R15 K8 ["parse"]
       47 MOVE                             R16 R13
       48 CALL                             R14 2 3
       49 JUMPIFNOT                        R14 ; [+33]
       50 JUMPIFNOT                        R15 ; [+32]
       51 GETTABLEKS                       R18 R15 K10 ["frontmatter"]
       53 GETTABLEKS                       R18 R18 K11 ["name"]
       55 ORK                              R17 R18 K9 [""]
       56 GETTABLEKS                       R18 R15 K10 ["frontmatter"]
       58 GETTABLEKS                       R18 R18 K12 ["description"]
       60 GETTABLE                         R20 R3 R17
       61 JUMPIFEQKB                       R20 TRUE ; [+2]
       63 LOADB                            R19 0 +1
       64 LOADB                            R19 1
       65 JUMPIFNOT                        R19 ; [+2]
       66 LOADB                            R20 1
       67 SETTABLE                         R20 R6 R11
       68 DUPTABLE                         R22 K15 [{"assetId", "name", "description", "isDisabled"}]
       69 SETTABLEKS                       R11 R22 K13 ["assetId"]
       71 SETTABLEKS                       R17 R22 K11 ["name"]
       73 SETTABLEKS                       R18 R22 K12 ["description"]
       75 SETTABLEKS                       R19 R22 K14 ["isDisabled"]
       77 FASTCALL2                        TABLE_INSERT R5 R22 ; [+4]
       79 MOVE                             R21 R5
       80 GETIMPORT                        R20 K2 [table.insert]
       82 CALL                             R20 2 0
       83 FORGLOOP                         R7 2 ; [-51]
       85 LENGTH                           R7 R5
       86 LOADN                            R8 0
       87 JUMPIFNOTLT                      R8 R7 ; [+7]
       89 GETTABLEKS                       R7 R0 K16 ["cloudSkillAssets"]
       91 GETTABLEKS                       R7 R7 K17 ["uploadAssetsAsync"]
       93 MOVE                             R8 R5
       94 CALL                             R7 1 0
       95 MOVE                             R7 R4
       96 MOVE                             R8 R6
       97 RETURN                           R7 2

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["cloudSkillAssets"]
        2 GETTABLEKS                       R1 R1 K1 ["getAssetsAsync"]
        4 CALL                             R1 0 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 NEWTABLE                         R4 0 0
       11 JUMPIFNOT                        R1 ; [+25]
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETTABLEKS                       R10 R9 K2 ["assetId"]
       18 LOADB                            R11 1
       19 SETTABLE                         R11 R2 R10
       20 GETTABLEKS                       R12 R9 K2 ["assetId"]
       22 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       24 MOVE                             R11 R4
       25 GETIMPORT                        R10 K5 [table.insert]
       27 CALL                             R10 2 0
       28 GETTABLEKS                       R10 R9 K6 ["isDisabled"]
       30 JUMPIFNOT                        R10 ; [+4]
       31 GETTABLEKS                       R10 R9 K2 ["assetId"]
       33 LOADB                            R11 1
       34 SETTABLE                         R11 R3 R10
       35 FORGLOOP                         R5 2 ; [-20]
       37 GETTABLEKS                       R5 R0 K7 ["getUserSettingsAsync"]
       39 LOADK                            R6 K8 ["AssistantSkillsCloudMigrated"]
       40 CALL                             R5 1 1
       41 JUMPIF                           R5 ; [+84]
       42 NEWTABLE                         R6 0 0
       44 GETIMPORT                        R7 K10 [pcall]
       46 GETTABLEKS                       R8 R0 K7 ["getUserSettingsAsync"]
       48 LOADK                            R9 K11 ["AssistantDisabledSkills"]
       49 CALL                             R7 2 2
       50 JUMPIFNOT                        R7 ; [+9]
       51 JUMPIFNOT                        R8 ; [+8]
       52 MOVE                             R9 R8
       53 LOADNIL                          R10
       54 LOADNIL                          R11
       55 FORGPREP                         R9
       56 LOADB                            R14 1
       57 SETTABLE                         R14 R6 R13
       58 FORGLOOP                         R9 2 ; [-3]
       60 GETIMPORT                        R9 K10 [pcall]
       62 GETTABLEKS                       R10 R0 K12 ["userSkillAssets"]
       64 GETTABLEKS                       R10 R10 K13 ["getManifestAsync"]
       66 CALL                             R9 1 2
       67 LOADB                            R11 1
       68 JUMPIFNOT                        R9 ; [+49]
       69 JUMPIFNOT                        R10 ; [+48]
       70 LENGTH                           R12 R10
       71 LOADN                            R13 0
       72 JUMPIFNOTLT                      R13 R12 ; [+45]
       74 GETIMPORT                        R12 K10 [pcall]
       76 GETUPVAL                         R13 0
       77 MOVE                             R14 R0
       78 MOVE                             R15 R10
       79 MOVE                             R16 R2
       80 MOVE                             R17 R6
       81 CALL                             R12 5 3
       82 JUMPIFNOT                        R12 ; [+22]
       83 MOVE                             R15 R13
       84 LOADNIL                          R16
       85 LOADNIL                          R17
       86 FORGPREP                         R15
       87 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
       89 MOVE                             R21 R4
       90 MOVE                             R22 R19
       91 GETIMPORT                        R20 K5 [table.insert]
       93 CALL                             R20 2 0
       94 FORGLOOP                         R15 2 ; [-8]
       96 MOVE                             R15 R14
       97 LOADNIL                          R16
       98 LOADNIL                          R17
       99 FORGPREP                         R15
      100 LOADB                            R20 1
      101 SETTABLE                         R20 R3 R18
      102 FORGLOOP                         R15 1 ; [-3]
      104 JUMP                             ; [+13]
      105 GETIMPORT                        R15 K15 [warn]
      107 LOADK                            R16 K16 ["Failed to migrate local skills to cloud: %*"]
      108 FASTCALL1                        TOSTRING R13 ; [+3]
      109 MOVE                             R19 R13
      110 GETIMPORT                        R18 K18 [tostring]
      112 CALL                             R18 1 1
      113 NAMECALL                         R16 R16 K19 ["format"]
      115 CALL                             R16 2 1
      116 CALL                             R15 1 0
      117 LOADB                            R11 0
      118 JUMPIFNOT                        R11 ; [+7]
      119 GETIMPORT                        R12 K10 [pcall]
      121 GETTABLEKS                       R13 R0 K20 ["setUserSettingsAsync"]
      123 LOADK                            R14 K8 ["AssistantSkillsCloudMigrated"]
      124 LOADB                            R15 1
      125 CALL                             R12 3 0
      126 MOVE                             R6 R4
      127 LOADNIL                          R7
      128 LOADNIL                          R8
      129 FORGPREP                         R6
      130 GETIMPORT                        R11 K10 [pcall]
      132 GETTABLEKS                       R12 R0 K12 ["userSkillAssets"]
      134 GETTABLEKS                       R12 R12 K21 ["fetchContentAsync"]
      136 MOVE                             R13 R10
      137 CALL                             R11 2 2
      138 JUMPIF                           R11 ; [+14]
      139 GETIMPORT                        R13 K15 [warn]
      141 LOADK                            R14 K22 ["Failed to fetch user skill (asset:%*): %*"]
      142 MOVE                             R16 R10
      143 FASTCALL1                        TOSTRING R12 ; [+3]
      144 MOVE                             R18 R12
      145 GETIMPORT                        R17 K18 [tostring]
      147 CALL                             R17 1 1
      148 NAMECALL                         R14 R14 K19 ["format"]
      150 CALL                             R14 3 1
      151 CALL                             R13 1 0
      152 JUMP                             ; [+13]
      153 GETTABLE                         R14 R3 R10
      154 JUMPIFEQKB                       R14 TRUE ; [+2]
      156 LOADB                            R13 0 +1
      157 LOADB                            R13 1
      158 GETUPVAL                         R14 1
      159 MOVE                             R15 R10
      160 MOVE                             R16 R12
      161 MOVE                             R17 R13
      162 CALL                             R14 3 0
      163 GETIMPORT                        R14 K25 [task.wait]
      165 CALL                             R14 0 0
      166 FORGLOOP                         R6 2 ; [-37]
      168 GETUPVAL                         R6 2
      169 GETTABLEKS                       R6 R6 K26 ["getAllBySource"]
      171 GETUPVAL                         R7 3
      172 GETTABLEKS                       R7 R7 K27 ["User"]
      174 CALL                             R6 1 3
      175 FORGPREP                         R6
      176 LOADK                            R12 K28 ["rbx-"]
      177 GETTABLEKS                       R13 R10 K29 ["name"]
      179 CONCAT                           R11 R12 R13
      180 GETUPVAL                         R12 2
      181 GETTABLEKS                       R12 R12 K30 ["getBySource"]
      183 GETUPVAL                         R13 3
      184 GETTABLEKS                       R13 R13 K31 ["Roblox"]
      186 MOVE                             R14 R11
      187 CALL                             R12 2 1
      188 JUMPIFNOT                        R12 ; [+13]
      189 GETUPVAL                         R13 2
      190 GETTABLEKS                       R13 R13 K32 ["unregister"]
      192 MOVE                             R14 R11
      193 GETUPVAL                         R15 3
      194 GETTABLEKS                       R15 R15 K31 ["Roblox"]
      196 CALL                             R13 2 0
      197 GETUPVAL                         R13 4
      198 GETTABLEKS                       R13 R13 K33 ["store"]
      200 MOVE                             R14 R12
      201 CALL                             R13 1 0
      202 FORGLOOP                         R6 2 ; [-27]
      204 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+4]
        6 GETIMPORT                        R2 K3 [warn]
        8 LOADK                            R3 K4 ["Failed to load user skills from cloud"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearSource"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["User"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["clearSource"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["User"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K2 ["loadAsync"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["DisabledSkillsStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Frontmatter"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["SkillDefinition"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETIMPORT                        R6 K1 [script]
       45 GETTABLEKS                       R6 R6 K6 ["Parent"]
       47 GETTABLEKS                       R6 R6 K12 ["SkillRegistry"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R4 K13 ["Sources"]
       52 NEWTABLE                         R7 2 0
       54 DUPCLOSURE                       R8 K14 [PROTO_0]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R5
       59 DUPCLOSURE                       R9 K15 [PROTO_1]
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R10 K16 [PROTO_2]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 DUPCLOSURE                       R11 K17 [PROTO_3]
       68 CAPTURE                          VAL R10
       69 SETTABLEKS                       R11 R7 K18 ["loadAsync"]
       71 DUPCLOSURE                       R11 K19 [PROTO_4]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 SETTABLEKS                       R11 R7 K20 ["refreshAsync"]
       78 RETURN                           R7 1
