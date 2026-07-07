PROTO_0:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["parse"]
        5 MOVE                             R5 R1
        6 CALL                             R3 2 3
        7 JUMPIF                           R3 ; [+15]
        8 GETIMPORT                        R6 K4 [warn]
       10 LOADK                            R8 K5 ["User skill (asset:%*) parse threw: %*"]
       11 MOVE                             R10 R0
       12 FASTCALL1                        TOSTRING R4 ; [+3]
       13 MOVE                             R12 R4
       14 GETIMPORT                        R11 K7 [tostring]
       16 CALL                             R11 1 1
       17 NAMECALL                         R8 R8 K8 ["format"]
       19 CALL                             R8 3 1
       20 MOVE                             R7 R8
       21 CALL                             R6 1 0
       22 RETURN                           R0 0
       23 JUMPIF                           R4 ; [+11]
       24 GETIMPORT                        R6 K4 [warn]
       26 LOADK                            R8 K9 ["User skill (asset:%*) has malformed frontmatter: %*"]
       27 MOVE                             R10 R0
       28 MOVE                             R11 R5
       29 NAMECALL                         R8 R8 K8 ["format"]
       31 CALL                             R8 3 1
       32 MOVE                             R7 R8
       33 CALL                             R6 1 0
       34 RETURN                           R0 0
       35 GETTABLEKS                       R6 R4 K10 ["body"]
       37 LOADK                            R8 K11 ["%S"]
       38 NAMECALL                         R6 R6 K12 ["match"]
       40 CALL                             R6 2 1
       41 JUMPIF                           R6 ; [+10]
       42 GETIMPORT                        R6 K4 [warn]
       44 LOADK                            R8 K13 ["User skill (asset:%*) has an empty body; skipping."]
       45 MOVE                             R10 R0
       46 NAMECALL                         R8 R8 K8 ["format"]
       48 CALL                             R8 2 1
       49 MOVE                             R7 R8
       50 CALL                             R6 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R6 R4 K14 ["frontmatter"]
       54 GETTABLEKS                       R6 R6 K15 ["enabled"]
       56 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       58 RETURN                           R0 0
       59 DUPTABLE                         R6 K22 [{"name", "description", "content", "source", "assetId", "rawContent"}]
       60 GETTABLEKS                       R7 R4 K14 ["frontmatter"]
       62 GETTABLEKS                       R7 R7 K16 ["name"]
       64 SETTABLEKS                       R7 R6 K16 ["name"]
       66 GETTABLEKS                       R7 R4 K14 ["frontmatter"]
       68 GETTABLEKS                       R7 R7 K17 ["description"]
       70 SETTABLEKS                       R7 R6 K17 ["description"]
       72 GETTABLEKS                       R7 R4 K10 ["body"]
       74 SETTABLEKS                       R7 R6 K18 ["content"]
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K23 ["User"]
       79 SETTABLEKS                       R7 R6 K19 ["source"]
       81 SETTABLEKS                       R0 R6 K20 ["assetId"]
       83 SETTABLEKS                       R1 R6 K21 ["rawContent"]
       85 GETTABLEKS                       R8 R6 K16 ["name"]
       87 GETTABLE                         R7 R2 R8
       88 JUMPIFNOT                        R7 ; [+6]
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K24 ["store"]
       92 MOVE                             R8 R6
       93 CALL                             R7 1 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R7 3
       96 GETTABLEKS                       R7 R7 K25 ["register"]
       98 MOVE                             R8 R6
       99 CALL                             R7 1 0
      100 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETIMPORT                        R3 K1 [pcall]
        6 GETTABLEKS                       R4 R0 K2 ["userSkillAssets"]
        8 GETTABLEKS                       R4 R4 K3 ["getManifestAsync"]
       10 CALL                             R3 1 2
       11 JUMPIF                           R3 ; [+14]
       12 GETIMPORT                        R5 K5 [warn]
       14 LOADK                            R7 K6 ["Failed to load user skill manifest: %*"]
       15 FASTCALL1                        TOSTRING R4 ; [+3]
       16 MOVE                             R10 R4
       17 GETIMPORT                        R9 K8 [tostring]
       19 CALL                             R9 1 1
       20 NAMECALL                         R7 R7 K9 ["format"]
       22 CALL                             R7 2 1
       23 MOVE                             R6 R7
       24 CALL                             R5 1 0
       25 RETURN                           R0 0
       26 JUMPIFNOTEQKNIL                  R4 ; [+2]
       28 RETURN                           R0 0
       29 MOVE                             R5 R4
       30 LOADNIL                          R6
       31 LOADNIL                          R7
       32 FORGPREP                         R5
       33 GETIMPORT                        R10 K1 [pcall]
       35 GETTABLEKS                       R11 R0 K2 ["userSkillAssets"]
       37 GETTABLEKS                       R11 R11 K10 ["fetchContentAsync"]
       39 MOVE                             R12 R9
       40 CALL                             R10 2 2
       41 JUMPIF                           R10 ; [+15]
       42 GETIMPORT                        R12 K5 [warn]
       44 LOADK                            R14 K11 ["Failed to fetch user skill (asset:%*): %*"]
       45 MOVE                             R16 R9
       46 FASTCALL1                        TOSTRING R11 ; [+3]
       47 MOVE                             R18 R11
       48 GETIMPORT                        R17 K8 [tostring]
       50 CALL                             R17 1 1
       51 NAMECALL                         R14 R14 K9 ["format"]
       53 CALL                             R14 3 1
       54 MOVE                             R13 R14
       55 CALL                             R12 1 0
       56 JUMP                             ; [+8]
       57 GETUPVAL                         R12 0
       58 MOVE                             R13 R9
       59 MOVE                             R14 R11
       60 MOVE                             R15 R2
       61 CALL                             R12 3 0
       62 GETIMPORT                        R12 K14 [task.wait]
       64 CALL                             R12 0 0
       65 FORGLOOP                         R5 2 ; [-33]
       67 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clearSource"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["User"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K0 ["clearSource"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["User"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["loadAsync"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

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
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R9 R7 K16 ["loadAsync"]
       63 DUPCLOSURE                       R9 K17 [PROTO_2]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R9 R7 K18 ["refreshAsync"]
       70 RETURN                           R7 1
