PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["parse"]
        3 MOVE                             R5 R1
        4 FASTPCALL                        pcall 2 ; [+2]
        5 GETIMPORT                        R3 K2 [pcall]
        7 CALL                             R3 2 3
        8 JUMPIF                           R3 ; [+14]
        9 GETIMPORT                        R6 K4 [warn]
       11 LOADK                            R7 K5 ["User skill (asset:%*) parse threw: %*"]
       12 MOVE                             R9 R0
       13 FASTCALL1                        TOSTRING R4 ; [+3]
       14 MOVE                             R11 R4
       15 GETIMPORT                        R10 K7 [tostring]
       17 CALL                             R10 1 1
       18 NAMECALL                         R7 R7 K8 ["format"]
       20 CALL                             R7 3 1
       21 CALL                             R6 1 0
       22 RETURN                           R0 0
       23 JUMPIF                           R4 ; [+10]
       24 GETIMPORT                        R6 K4 [warn]
       26 LOADK                            R7 K9 ["User skill (asset:%*) has malformed frontmatter: %*"]
       27 MOVE                             R9 R0
       28 MOVE                             R10 R5
       29 NAMECALL                         R7 R7 K8 ["format"]
       31 CALL                             R7 3 1
       32 CALL                             R6 1 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R6 R4 K10 ["body"]
       36 LOADK                            R8 K11 ["%S"]
       37 NAMECALL                         R6 R6 K12 ["match"]
       39 CALL                             R6 2 1
       40 JUMPIF                           R6 ; [+9]
       41 GETIMPORT                        R6 K4 [warn]
       43 LOADK                            R7 K13 ["User skill (asset:%*) has an empty body; skipping."]
       44 MOVE                             R9 R0
       45 NAMECALL                         R7 R7 K8 ["format"]
       47 CALL                             R7 2 1
       48 CALL                             R6 1 0
       49 RETURN                           R0 0
       50 GETTABLEKS                       R6 R4 K14 ["frontmatter"]
       52 GETTABLEKS                       R6 R6 K15 ["enabled"]
       54 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       56 RETURN                           R0 0
       57 DUPTABLE                         R6 K22 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       58 GETTABLEKS                       R7 R4 K14 ["frontmatter"]
       60 GETTABLEKS                       R7 R7 K16 ["name"]
       62 SETTABLEKS                       R7 R6 K16 ["name"]
       64 GETTABLEKS                       R7 R4 K14 ["frontmatter"]
       66 GETTABLEKS                       R7 R7 K17 ["description"]
       68 SETTABLEKS                       R7 R6 K17 ["description"]
       70 GETTABLEKS                       R7 R4 K10 ["body"]
       72 SETTABLEKS                       R7 R6 K18 ["content"]
       74 GETUPVAL                         R7 1
       75 GETTABLEKS                       R7 R7 K23 ["User"]
       77 SETTABLEKS                       R7 R6 K19 ["source"]
       79 SETTABLEKS                       R0 R6 K20 ["assetId"]
       81 SETTABLEKS                       R1 R6 K21 ["rawContent"]
       83 JUMPIFNOT                        R2 ; [+6]
       84 GETUPVAL                         R7 2
       85 GETTABLEKS                       R7 R7 K24 ["store"]
       87 MOVE                             R8 R6
       88 CALL                             R7 1 0
       89 RETURN                           R0 0
       90 GETUPVAL                         R7 3
       91 GETTABLEKS                       R7 R7 K25 ["register"]
       93 MOVE                             R8 R6
       94 CALL                             R7 1 0
       95 RETURN                           R0 0

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
       33 GETTABLEKS                       R13 R0 K4 ["userSkillAssets"]
       35 GETTABLEKS                       R13 R13 K5 ["fetchContentAsync"]
       37 MOVE                             R14 R11
       38 FASTPCALL                        pcall 2 ; [+2]
       39 GETIMPORT                        R12 K7 [pcall]
       41 CALL                             R12 2 2
       42 JUMPIFNOT                        R12 ; [+42]
       43 GETUPVAL                         R15 0
       44 GETTABLEKS                       R15 R15 K8 ["parse"]
       46 MOVE                             R16 R13
       47 FASTPCALL                        pcall 2 ; [+2]
       48 GETIMPORT                        R14 K7 [pcall]
       50 CALL                             R14 2 3
       51 JUMPIFNOT                        R14 ; [+33]
       52 JUMPIFNOT                        R15 ; [+32]
       53 GETTABLEKS                       R18 R15 K10 ["frontmatter"]
       55 GETTABLEKS                       R18 R18 K11 ["name"]
       57 ORK                              R17 R18 K9 [""]
       58 GETTABLEKS                       R18 R15 K10 ["frontmatter"]
       60 GETTABLEKS                       R18 R18 K12 ["description"]
       62 GETTABLE                         R20 R3 R17
       63 JUMPIFEQKB                       R20 TRUE ; [+2]
       65 LOADB                            R19 0 +1
       66 LOADB                            R19 1
       67 JUMPIFNOT                        R19 ; [+2]
       68 LOADB                            R20 1
       69 SETTABLE                         R20 R6 R11
       70 DUPTABLE                         R22 K15 [{"assetId", "name", "description", "isDisabled"}]
       71 SETTABLEKS                       R11 R22 K13 ["assetId"]
       73 SETTABLEKS                       R17 R22 K11 ["name"]
       75 SETTABLEKS                       R18 R22 K12 ["description"]
       77 SETTABLEKS                       R19 R22 K14 ["isDisabled"]
       79 FASTCALL2                        TABLE_INSERT R5 R22 ; [+4]
       81 MOVE                             R21 R5
       82 GETIMPORT                        R20 K2 [table.insert]
       84 CALL                             R20 2 0
       85 FORGLOOP                         R7 2 ; [-53]
       87 LENGTH                           R7 R5
       88 LOADN                            R8 0
       89 JUMPIFNOTLT                      R8 R7 ; [+7]
       91 GETTABLEKS                       R7 R0 K16 ["cloudSkillAssets"]
       93 GETTABLEKS                       R7 R7 K17 ["uploadAssetsAsync"]
       95 MOVE                             R8 R5
       96 CALL                             R7 1 0
       97 MOVE                             R7 R4
       98 MOVE                             R8 R6
       99 RETURN                           R7 2

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
       41 JUMPIF                           R5 ; [+88]
       42 NEWTABLE                         R6 0 0
       44 GETTABLEKS                       R8 R0 K7 ["getUserSettingsAsync"]
       46 LOADK                            R9 K9 ["AssistantDisabledSkills"]
       47 FASTPCALL                        pcall 2 ; [+2]
       48 GETIMPORT                        R7 K11 [pcall]
       50 CALL                             R7 2 2
       51 JUMPIFNOT                        R7 ; [+9]
       52 JUMPIFNOT                        R8 ; [+8]
       53 MOVE                             R9 R8
       54 LOADNIL                          R10
       55 LOADNIL                          R11
       56 FORGPREP                         R9
       57 LOADB                            R14 1
       58 SETTABLE                         R14 R6 R13
       59 FORGLOOP                         R9 2 ; [-3]
       61 GETTABLEKS                       R10 R0 K12 ["userSkillAssets"]
       63 GETTABLEKS                       R10 R10 K13 ["getManifestAsync"]
       65 FASTPCALL                        pcall 1 ; [+2]
       66 GETIMPORT                        R9 K11 [pcall]
       68 CALL                             R9 1 2
       69 LOADB                            R11 1
       70 JUMPIFNOT                        R9 ; [+50]
       71 JUMPIFNOT                        R10 ; [+49]
       72 LENGTH                           R12 R10
       73 LOADN                            R13 0
       74 JUMPIFNOTLT                      R13 R12 ; [+46]
       76 GETUPVAL                         R13 0
       77 MOVE                             R14 R0
       78 MOVE                             R15 R10
       79 MOVE                             R16 R2
       80 MOVE                             R17 R6
       81 FASTPCALL                        pcall 5 ; [+2]
       82 GETIMPORT                        R12 K11 [pcall]
       84 CALL                             R12 5 3
       85 JUMPIFNOT                        R12 ; [+22]
       86 MOVE                             R15 R13
       87 LOADNIL                          R16
       88 LOADNIL                          R17
       89 FORGPREP                         R15
       90 FASTCALL2                        TABLE_INSERT R4 R19 ; [+5]
       92 MOVE                             R21 R4
       93 MOVE                             R22 R19
       94 GETIMPORT                        R20 K5 [table.insert]
       96 CALL                             R20 2 0
       97 FORGLOOP                         R15 2 ; [-8]
       99 MOVE                             R15 R14
      100 LOADNIL                          R16
      101 LOADNIL                          R17
      102 FORGPREP                         R15
      103 LOADB                            R20 1
      104 SETTABLE                         R20 R3 R18
      105 FORGLOOP                         R15 1 ; [-3]
      107 JUMP                             ; [+13]
      108 GETIMPORT                        R15 K15 [warn]
      110 LOADK                            R16 K16 ["Failed to migrate local skills to cloud: %*"]
      111 FASTCALL1                        TOSTRING R13 ; [+3]
      112 MOVE                             R19 R13
      113 GETIMPORT                        R18 K18 [tostring]
      115 CALL                             R18 1 1
      116 NAMECALL                         R16 R16 K19 ["format"]
      118 CALL                             R16 2 1
      119 CALL                             R15 1 0
      120 LOADB                            R11 0
      121 JUMPIFNOT                        R11 ; [+8]
      122 GETTABLEKS                       R13 R0 K20 ["setUserSettingsAsync"]
      124 LOADK                            R14 K8 ["AssistantSkillsCloudMigrated"]
      125 LOADB                            R15 1
      126 FASTPCALL                        pcall 3 ; [+2]
      127 GETIMPORT                        R12 K11 [pcall]
      129 CALL                             R12 3 0
      130 MOVE                             R6 R4
      131 LOADNIL                          R7
      132 LOADNIL                          R8
      133 FORGPREP                         R6
      134 GETTABLEKS                       R12 R0 K12 ["userSkillAssets"]
      136 GETTABLEKS                       R12 R12 K21 ["fetchContentAsync"]
      138 MOVE                             R13 R10
      139 FASTPCALL                        pcall 2 ; [+2]
      140 GETIMPORT                        R11 K11 [pcall]
      142 CALL                             R11 2 2
      143 JUMPIF                           R11 ; [+14]
      144 GETIMPORT                        R13 K15 [warn]
      146 LOADK                            R14 K22 ["Failed to fetch user skill (asset:%*): %*"]
      147 MOVE                             R16 R10
      148 FASTCALL1                        TOSTRING R12 ; [+3]
      149 MOVE                             R18 R12
      150 GETIMPORT                        R17 K18 [tostring]
      152 CALL                             R17 1 1
      153 NAMECALL                         R14 R14 K19 ["format"]
      155 CALL                             R14 3 1
      156 CALL                             R13 1 0
      157 JUMP                             ; [+13]
      158 GETTABLE                         R14 R3 R10
      159 JUMPIFEQKB                       R14 TRUE ; [+2]
      161 LOADB                            R13 0 +1
      162 LOADB                            R13 1
      163 GETUPVAL                         R14 1
      164 MOVE                             R15 R10
      165 MOVE                             R16 R12
      166 MOVE                             R17 R13
      167 CALL                             R14 3 0
      168 GETIMPORT                        R14 K25 [task.wait]
      170 CALL                             R14 0 0
      171 FORGLOOP                         R6 2 ; [-38]
      173 GETUPVAL                         R6 2
      174 GETTABLEKS                       R6 R6 K26 ["getAllBySource"]
      176 GETUPVAL                         R7 3
      177 GETTABLEKS                       R7 R7 K27 ["User"]
      179 CALL                             R6 1 3
      180 FORGPREP                         R6
      181 LOADK                            R12 K28 ["rbx-"]
      182 GETTABLEKS                       R13 R10 K29 ["name"]
      184 CONCAT                           R11 R12 R13
      185 GETUPVAL                         R12 2
      186 GETTABLEKS                       R12 R12 K30 ["getBySource"]
      188 GETUPVAL                         R13 3
      189 GETTABLEKS                       R13 R13 K31 ["Roblox"]
      191 MOVE                             R14 R11
      192 CALL                             R12 2 1
      193 JUMPIFNOT                        R12 ; [+13]
      194 GETUPVAL                         R13 2
      195 GETTABLEKS                       R13 R13 K32 ["unregister"]
      197 MOVE                             R14 R11
      198 GETUPVAL                         R15 3
      199 GETTABLEKS                       R15 R15 K31 ["Roblox"]
      201 CALL                             R13 2 0
      202 GETUPVAL                         R13 4
      203 GETTABLEKS                       R13 R13 K33 ["store"]
      205 MOVE                             R14 R12
      206 CALL                             R13 1 0
      207 FORGLOOP                         R6 2 ; [-27]
      209 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 FASTPCALL                        pcall 2 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+4]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["Failed to load user skills from cloud"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

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
