PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["[^,]+"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K5 [string.match]
       10 MOVE                             R8 R5
       11 LOADK                            R9 K6 ["^%s*(.-)%s*:%s*(.-)%s*$"]
       12 CALL                             R7 2 2
       13 JUMPIFNOTEQKNIL                  R7 ; [+8]
       15 GETIMPORT                        R9 K5 [string.match]
       17 MOVE                             R10 R5
       18 LOADK                            R11 K7 ["^%s*(.-)%s*$"]
       19 CALL                             R9 2 1
       20 MOVE                             R7 R9
       21 LOADK                            R8 K8 ["true"]
       22 JUMPIFNOT                        R7 ; [+11]
       23 JUMPIFEQKS                       R7 K9 [""] ; [+10]
       25 GETIMPORT                        R10 K11 [string.lower]
       27 ORK                              R11 R8 K8 ["true"]
       28 CALL                             R10 1 1
       29 JUMPIFEQKS                       R10 K8 ["true"] ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 SETTABLE                         R9 R1 R7
       34 FORGLOOP                         R2 1 ; [-27]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K12 ["FFlagAssistantBetaFeatureSkills"]
       39 JUMPIFNOT                        R2 ; [+23]
       40 GETUPVAL                         R2 1
       41 LOADNIL                          R3
       42 LOADNIL                          R4
       43 FORGPREP                         R2
       44 GETIMPORT                        R7 K14 [game]
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K15 ["GetEngineFeature"]
       49 CALL                             R7 2 1
       50 JUMPIFNOT                        R7 ; [+10]
       51 GETIMPORT                        R7 K5 [string.match]
       53 MOVE                             R8 R6
       54 LOADK                            R9 K7 ["^%s*(.-)%s*$"]
       55 CALL                             R7 2 1
       56 JUMPIFNOT                        R7 ; [+4]
       57 JUMPIFEQKS                       R7 K9 [""] ; [+3]
       59 LOADB                            R8 1
       60 SETTABLE                         R8 R1 R7
       61 FORGLOOP                         R2 2 ; [-18]
       63 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["SKILL-combined"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 LOADK                            R4 K2 ["StringValue"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 GETTABLEKS                       R2 R1 K4 ["Value"]
       12 LOADK                            R3 K0 ["SKILL-combined"]
       13 RETURN                           R2 2
       14 LOADK                            R4 K5 ["SKILL"]
       15 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+9]
       19 LOADK                            R5 K2 ["StringValue"]
       20 NAMECALL                         R3 R2 K3 ["IsA"]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+4]
       24 GETTABLEKS                       R3 R2 K4 ["Value"]
       26 LOADK                            R4 K5 ["SKILL"]
       27 RETURN                           R3 2
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 RETURN                           R3 2

PROTO_2:
        0 LOADK                            R9 K0 ["SKILL-combined"]
        1 NAMECALL                         R7 R0 K1 ["FindFirstChild"]
        3 CALL                             R7 2 1
        4 JUMPIFNOT                        R7 ; [+9]
        5 LOADK                            R10 K2 ["StringValue"]
        6 NAMECALL                         R8 R7 K3 ["IsA"]
        8 CALL                             R8 2 1
        9 JUMPIFNOT                        R8 ; [+4]
       10 GETTABLEKS                       R5 R7 K4 ["Value"]
       12 LOADK                            R6 K0 ["SKILL-combined"]
       13 JUMP                             ; [+16]
       14 LOADK                            R10 K5 ["SKILL"]
       15 NAMECALL                         R8 R0 K1 ["FindFirstChild"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+9]
       19 LOADK                            R11 K2 ["StringValue"]
       20 NAMECALL                         R9 R8 K3 ["IsA"]
       22 CALL                             R9 2 1
       23 JUMPIFNOT                        R9 ; [+4]
       24 GETTABLEKS                       R5 R8 K4 ["Value"]
       26 LOADK                            R6 K5 ["SKILL"]
       27 JUMP                             ; [+2]
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 JUMPIF                           R5 ; [+10]
       31 GETIMPORT                        R7 K7 [warn]
       33 LOADK                            R8 K8 ["Package skill folder \"%*\" has no SKILL or SKILL-combined StringValue; skipping."]
       34 GETTABLEKS                       R10 R0 K9 ["Name"]
       36 NAMECALL                         R8 R8 K10 ["format"]
       38 CALL                             R8 2 1
       39 CALL                             R7 1 0
       40 RETURN                           R0 0
       41 GETIMPORT                        R7 K12 [pcall]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K13 ["parse"]
       46 MOVE                             R9 R5
       47 CALL                             R7 2 3
       48 JUMPIF                           R7 ; [+16]
       49 GETIMPORT                        R10 K7 [warn]
       51 LOADK                            R11 K14 ["Package skill \"%*/%*\" parse threw: %*"]
       52 GETTABLEKS                       R13 R0 K9 ["Name"]
       54 MOVE                             R14 R6
       55 FASTCALL1                        TOSTRING R8 ; [+3]
       56 MOVE                             R16 R8
       57 GETIMPORT                        R15 K16 [tostring]
       59 CALL                             R15 1 1
       60 NAMECALL                         R11 R11 K10 ["format"]
       62 CALL                             R11 4 1
       63 CALL                             R10 1 0
       64 RETURN                           R0 0
       65 JUMPIF                           R8 ; [+12]
       66 GETIMPORT                        R10 K7 [warn]
       68 LOADK                            R11 K17 ["Package skill \"%*/%*\" has malformed frontmatter: %*"]
       69 GETTABLEKS                       R13 R0 K9 ["Name"]
       71 MOVE                             R14 R6
       72 MOVE                             R15 R9
       73 NAMECALL                         R11 R11 K10 ["format"]
       75 CALL                             R11 4 1
       76 CALL                             R10 1 0
       77 RETURN                           R0 0
       78 GETTABLEKS                       R10 R8 K18 ["body"]
       80 LOADK                            R12 K19 ["%S"]
       81 NAMECALL                         R10 R10 K20 ["match"]
       83 CALL                             R10 2 1
       84 JUMPIF                           R10 ; [+11]
       85 GETIMPORT                        R10 K7 [warn]
       87 LOADK                            R11 K21 ["Package skill \"%*/%*\" has an empty body; skipping."]
       88 GETTABLEKS                       R13 R0 K9 ["Name"]
       90 MOVE                             R14 R6
       91 NAMECALL                         R11 R11 K10 ["format"]
       93 CALL                             R11 3 1
       94 CALL                             R10 1 0
       95 RETURN                           R0 0
       96 GETTABLEKS                       R10 R8 K22 ["frontmatter"]
       98 GETTABLEKS                       R10 R10 K23 ["enabled"]
      100 JUMPIFNOTEQKB                    R10 FALSE ; [+2]
      102 RETURN                           R0 0
      103 GETTABLEKS                       R10 R8 K22 ["frontmatter"]
      105 GETTABLEKS                       R10 R10 K24 ["name"]
      107 LOADN                            R13 1
      108 LOADN                            R14 4
      109 NAMECALL                         R11 R10 K25 ["sub"]
      111 CALL                             R11 3 1
      112 JUMPIFEQKS                       R11 K26 ["rbx-"] ; [+4]
      114 LOADK                            R11 K26 ["rbx-"]
      115 MOVE                             R12 R10
      116 CONCAT                           R10 R11 R12
      117 GETTABLE                         R11 R1 R10
      118 JUMPIFNOT                        R11 ; [+11]
      119 GETIMPORT                        R12 K7 [warn]
      121 LOADK                            R13 K27 ["Package skill name \"%*\" registered twice (previously from \"%*\", now from \"%*\"); second wins."]
      122 MOVE                             R15 R10
      123 MOVE                             R16 R11
      124 GETTABLEKS                       R17 R0 K9 ["Name"]
      126 NAMECALL                         R13 R13 K10 ["format"]
      128 CALL                             R13 4 1
      129 CALL                             R12 1 0
      130 GETTABLEKS                       R12 R0 K9 ["Name"]
      132 SETTABLE                         R12 R1 R10
      133 DUPTABLE                         R12 K32 [{"name", "description", "content", "source", "rawContent"}]
      134 SETTABLEKS                       R10 R12 K24 ["name"]
      136 GETTABLEKS                       R13 R8 K22 ["frontmatter"]
      138 GETTABLEKS                       R13 R13 K28 ["description"]
      140 SETTABLEKS                       R13 R12 K28 ["description"]
      142 GETTABLEKS                       R13 R8 K18 ["body"]
      144 SETTABLEKS                       R13 R12 K29 ["content"]
      146 GETUPVAL                         R13 1
      147 GETTABLEKS                       R13 R13 K33 ["Roblox"]
      149 SETTABLEKS                       R13 R12 K30 ["source"]
      151 SETTABLEKS                       R5 R12 K31 ["rawContent"]
      153 LOADNIL                          R13
      154 GETTABLE                         R14 R2 R10
      155 JUMPIFNOT                        R14 ; [+2]
      156 LOADB                            R13 0
      157 JUMP                             ; [+5]
      158 GETTABLE                         R14 R3 R10
      159 JUMPIFNOT                        R14 ; [+2]
      160 LOADB                            R13 1
      161 JUMP                             ; [+1]
      162 MOVE                             R13 R4
      163 JUMPIFNOT                        R13 ; [+6]
      164 GETUPVAL                         R14 2
      165 GETTABLEKS                       R14 R14 K34 ["register"]
      167 MOVE                             R15 R12
      168 CALL                             R14 1 0
      169 RETURN                           R0 0
      170 GETUPVAL                         R14 3
      171 GETTABLEKS                       R14 R14 K35 ["store"]
      173 MOVE                             R15 R12
      174 CALL                             R14 1 0
      175 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R3 R0
        1 JUMPIF                           R3 ; [+1]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["FStringAssistantSkillsAllowlist"]
        7 CALL                             R4 1 1
        8 NEWTABLE                         R5 0 0
       10 MOVE                             R6 R1
       11 JUMPIF                           R6 ; [+2]
       12 NEWTABLE                         R6 0 0
       14 MOVE                             R7 R2
       15 JUMPIF                           R7 ; [+2]
       16 NEWTABLE                         R7 0 0
       18 NAMECALL                         R8 R3 K1 ["GetChildren"]
       20 CALL                             R8 1 3
       21 FORGPREP                         R8
       22 GETTABLEKS                       R14 R12 K2 ["Name"]
       24 GETTABLE                         R13 R4 R14
       25 JUMPIFEQKNIL                     R13 ; [+11]
       27 GETUPVAL                         R14 3
       28 MOVE                             R15 R12
       29 MOVE                             R16 R5
       30 MOVE                             R17 R6
       31 MOVE                             R18 R7
       32 MOVE                             R19 R13
       33 CALL                             R14 5 0
       34 GETIMPORT                        R14 K5 [task.wait]
       36 CALL                             R14 0 0
       37 FORGLOOP                         R8 2 ; [-16]
       39 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantSkills"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K6 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["DisabledSkillsStore"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K10 ["Frontmatter"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K11 ["SkillDefinition"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K12 ["SkillRegistry"]
       54 CALL                             R6 1 1
       55 NEWTABLE                         R7 1 0
       57 LOADK                            R8 K13 ["rbx-debug"]
       58 SETTABLEKS                       R8 R7 K14 ["DebuggerApiBetaEnabled"]
       60 GETTABLEKS                       R8 R5 K15 ["Sources"]
       62 NEWTABLE                         R9 1 0
       64 DUPCLOSURE                       R10 K16 [PROTO_0]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R7
       67 DUPCLOSURE                       R11 K17 [PROTO_1]
       68 DUPCLOSURE                       R12 K18 [PROTO_2]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R2
       73 DUPCLOSURE                       R13 K19 [PROTO_3]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R13 R9 K20 ["load"]
       80 RETURN                           R9 1
