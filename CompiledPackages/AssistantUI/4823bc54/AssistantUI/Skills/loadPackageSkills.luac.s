PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [string.gmatch]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["[^,]+"]
        6 CALL                             R2 2 3
        7 FORGPREP                         R2
        8 GETIMPORT                        R7 K5 [string.match]
       10 MOVE                             R8 R5
       11 LOADK                            R9 K6 ["^%s*(.-)%s*$"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+4]
       14 JUMPIFEQKS                       R7 K7 [""] ; [+3]
       16 LOADB                            R8 1
       17 SETTABLE                         R8 R1 R7
       18 FORGLOOP                         R2 1 ; [-11]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantBetaFeatureSkills"]
       23 JUMPIFNOT                        R2 ; [+23]
       24 GETUPVAL                         R2 1
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETIMPORT                        R7 K10 [game]
       30 MOVE                             R9 R5
       31 NAMECALL                         R7 R7 K11 ["GetEngineFeature"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+10]
       35 GETIMPORT                        R7 K5 [string.match]
       37 MOVE                             R8 R6
       38 LOADK                            R9 K6 ["^%s*(.-)%s*$"]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R7 ; [+4]
       41 JUMPIFEQKS                       R7 K7 [""] ; [+3]
       43 LOADB                            R8 1
       44 SETTABLE                         R8 R1 R7
       45 FORGLOOP                         R2 2 ; [-18]
       47 RETURN                           R1 1

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
        0 LOADK                            R7 K0 ["SKILL-combined"]
        1 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
        3 CALL                             R5 2 1
        4 JUMPIFNOT                        R5 ; [+9]
        5 LOADK                            R8 K2 ["StringValue"]
        6 NAMECALL                         R6 R5 K3 ["IsA"]
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+4]
       10 GETTABLEKS                       R3 R5 K4 ["Value"]
       12 LOADK                            R4 K0 ["SKILL-combined"]
       13 JUMP                             ; [+16]
       14 LOADK                            R8 K5 ["SKILL"]
       15 NAMECALL                         R6 R0 K1 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+9]
       19 LOADK                            R9 K2 ["StringValue"]
       20 NAMECALL                         R7 R6 K3 ["IsA"]
       22 CALL                             R7 2 1
       23 JUMPIFNOT                        R7 ; [+4]
       24 GETTABLEKS                       R3 R6 K4 ["Value"]
       26 LOADK                            R4 K5 ["SKILL"]
       27 JUMP                             ; [+2]
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 JUMPIF                           R3 ; [+11]
       31 GETIMPORT                        R5 K7 [warn]
       33 LOADK                            R7 K8 ["Package skill folder \"%*\" has no SKILL or SKILL-combined StringValue; skipping."]
       34 GETTABLEKS                       R9 R0 K9 ["Name"]
       36 NAMECALL                         R7 R7 K10 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R6 R7
       40 CALL                             R5 1 0
       41 RETURN                           R0 0
       42 GETIMPORT                        R5 K12 [pcall]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K13 ["parse"]
       47 MOVE                             R7 R3
       48 CALL                             R5 2 3
       49 JUMPIF                           R5 ; [+17]
       50 GETIMPORT                        R8 K7 [warn]
       52 LOADK                            R10 K14 ["Package skill \"%*/%*\" parse threw: %*"]
       53 GETTABLEKS                       R12 R0 K9 ["Name"]
       55 MOVE                             R13 R4
       56 FASTCALL1                        TOSTRING R6 ; [+3]
       57 MOVE                             R15 R6
       58 GETIMPORT                        R14 K16 [tostring]
       60 CALL                             R14 1 1
       61 NAMECALL                         R10 R10 K10 ["format"]
       63 CALL                             R10 4 1
       64 MOVE                             R9 R10
       65 CALL                             R8 1 0
       66 RETURN                           R0 0
       67 JUMPIF                           R6 ; [+13]
       68 GETIMPORT                        R8 K7 [warn]
       70 LOADK                            R10 K17 ["Package skill \"%*/%*\" has malformed frontmatter: %*"]
       71 GETTABLEKS                       R12 R0 K9 ["Name"]
       73 MOVE                             R13 R4
       74 MOVE                             R14 R7
       75 NAMECALL                         R10 R10 K10 ["format"]
       77 CALL                             R10 4 1
       78 MOVE                             R9 R10
       79 CALL                             R8 1 0
       80 RETURN                           R0 0
       81 GETTABLEKS                       R8 R6 K18 ["body"]
       83 LOADK                            R10 K19 ["%S"]
       84 NAMECALL                         R8 R8 K20 ["match"]
       86 CALL                             R8 2 1
       87 JUMPIF                           R8 ; [+12]
       88 GETIMPORT                        R8 K7 [warn]
       90 LOADK                            R10 K21 ["Package skill \"%*/%*\" has an empty body; skipping."]
       91 GETTABLEKS                       R12 R0 K9 ["Name"]
       93 MOVE                             R13 R4
       94 NAMECALL                         R10 R10 K10 ["format"]
       96 CALL                             R10 3 1
       97 MOVE                             R9 R10
       98 CALL                             R8 1 0
       99 RETURN                           R0 0
      100 GETTABLEKS                       R8 R6 K22 ["frontmatter"]
      102 GETTABLEKS                       R8 R8 K23 ["enabled"]
      104 JUMPIFNOTEQKB                    R8 FALSE ; [+2]
      106 RETURN                           R0 0
      107 GETTABLEKS                       R8 R6 K22 ["frontmatter"]
      109 GETTABLEKS                       R8 R8 K24 ["name"]
      111 LOADN                            R11 1
      112 LOADN                            R12 4
      113 NAMECALL                         R9 R8 K25 ["sub"]
      115 CALL                             R9 3 1
      116 JUMPIFEQKS                       R9 K26 ["rbx-"] ; [+4]
      118 LOADK                            R9 K26 ["rbx-"]
      119 MOVE                             R10 R8
      120 CONCAT                           R8 R9 R10
      121 GETTABLE                         R9 R1 R8
      122 JUMPIFNOT                        R9 ; [+12]
      123 GETIMPORT                        R10 K7 [warn]
      125 LOADK                            R12 K27 ["Package skill name \"%*\" registered twice (previously from \"%*\", now from \"%*\"); second wins."]
      126 MOVE                             R14 R8
      127 MOVE                             R15 R9
      128 GETTABLEKS                       R16 R0 K9 ["Name"]
      130 NAMECALL                         R12 R12 K10 ["format"]
      132 CALL                             R12 4 1
      133 MOVE                             R11 R12
      134 CALL                             R10 1 0
      135 GETTABLEKS                       R10 R0 K9 ["Name"]
      137 SETTABLE                         R10 R1 R8
      138 DUPTABLE                         R10 K31 [{"name", "description", "content", "source"}]
      139 SETTABLEKS                       R8 R10 K24 ["name"]
      141 GETTABLEKS                       R11 R6 K22 ["frontmatter"]
      143 GETTABLEKS                       R11 R11 K28 ["description"]
      145 SETTABLEKS                       R11 R10 K28 ["description"]
      147 GETTABLEKS                       R11 R6 K18 ["body"]
      149 SETTABLEKS                       R11 R10 K29 ["content"]
      151 GETUPVAL                         R11 1
      152 GETTABLEKS                       R11 R11 K32 ["Roblox"]
      154 SETTABLEKS                       R11 R10 K30 ["source"]
      156 GETTABLE                         R11 R2 R8
      157 JUMPIFNOT                        R11 ; [+6]
      158 GETUPVAL                         R11 2
      159 GETTABLEKS                       R11 R11 K33 ["store"]
      161 MOVE                             R12 R10
      162 CALL                             R11 1 0
      163 RETURN                           R0 0
      164 GETUPVAL                         R11 3
      165 GETTABLEKS                       R11 R11 K34 ["register"]
      167 MOVE                             R12 R10
      168 CALL                             R11 1 0
      169 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["FStringAssistantSkillsAllowlist"]
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 MOVE                             R5 R1
       11 JUMPIF                           R5 ; [+2]
       12 NEWTABLE                         R5 0 0
       14 NAMECALL                         R6 R2 K1 ["GetChildren"]
       16 CALL                             R6 1 3
       17 FORGPREP                         R6
       18 GETTABLEKS                       R12 R10 K2 ["Name"]
       20 GETTABLE                         R11 R3 R12
       21 JUMPIFNOT                        R11 ; [+8]
       22 GETUPVAL                         R11 3
       23 MOVE                             R12 R10
       24 MOVE                             R13 R4
       25 MOVE                             R14 R5
       26 CALL                             R11 3 0
       27 GETIMPORT                        R11 K5 [task.wait]
       29 CALL                             R11 0 0
       30 FORGLOOP                         R6 2 ; [-13]
       32 RETURN                           R0 0

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
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R13 K19 [PROTO_3]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R12
       78 SETTABLEKS                       R13 R9 K20 ["load"]
       80 RETURN                           R9 1
