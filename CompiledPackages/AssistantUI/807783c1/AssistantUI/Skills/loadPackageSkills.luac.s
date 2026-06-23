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
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+23]
       23 GETUPVAL                         R2 1
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 FORGPREP                         R2
       27 GETIMPORT                        R7 K9 [game]
       29 MOVE                             R9 R5
       30 NAMECALL                         R7 R7 K10 ["GetEngineFeature"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R7 ; [+10]
       34 GETIMPORT                        R7 K5 [string.match]
       36 MOVE                             R8 R6
       37 LOADK                            R9 K6 ["^%s*(.-)%s*$"]
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+4]
       40 JUMPIFEQKS                       R7 K7 [""] ; [+3]
       42 LOADB                            R8 1
       43 SETTABLE                         R8 R1 R7
       44 FORGLOOP                         R2 2 ; [-18]
       46 RETURN                           R1 1

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
        0 LOADK                            R6 K0 ["SKILL-combined"]
        1 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+9]
        5 LOADK                            R7 K2 ["StringValue"]
        6 NAMECALL                         R5 R4 K3 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+4]
       10 GETTABLEKS                       R2 R4 K4 ["Value"]
       12 LOADK                            R3 K0 ["SKILL-combined"]
       13 JUMP                             ; [+16]
       14 LOADK                            R7 K5 ["SKILL"]
       15 NAMECALL                         R5 R0 K1 ["FindFirstChild"]
       17 CALL                             R5 2 1
       18 JUMPIFNOT                        R5 ; [+9]
       19 LOADK                            R8 K2 ["StringValue"]
       20 NAMECALL                         R6 R5 K3 ["IsA"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R6 ; [+4]
       24 GETTABLEKS                       R2 R5 K4 ["Value"]
       26 LOADK                            R3 K5 ["SKILL"]
       27 JUMP                             ; [+2]
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 JUMPIF                           R2 ; [+11]
       31 GETIMPORT                        R4 K7 [warn]
       33 LOADK                            R6 K8 ["Package skill folder \"%*\" has no SKILL or SKILL-combined StringValue; skipping."]
       34 GETTABLEKS                       R8 R0 K9 ["Name"]
       36 NAMECALL                         R6 R6 K10 ["format"]
       38 CALL                             R6 2 1
       39 MOVE                             R5 R6
       40 CALL                             R4 1 0
       41 RETURN                           R0 0
       42 GETIMPORT                        R4 K12 [pcall]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K13 ["parse"]
       47 MOVE                             R6 R2
       48 CALL                             R4 2 3
       49 JUMPIF                           R4 ; [+17]
       50 GETIMPORT                        R7 K7 [warn]
       52 LOADK                            R9 K14 ["Package skill \"%*/%*\" parse threw: %*"]
       53 GETTABLEKS                       R11 R0 K9 ["Name"]
       55 MOVE                             R12 R3
       56 FASTCALL1                        TOSTRING R5 ; [+3]
       57 MOVE                             R14 R5
       58 GETIMPORT                        R13 K16 [tostring]
       60 CALL                             R13 1 1
       61 NAMECALL                         R9 R9 K10 ["format"]
       63 CALL                             R9 4 1
       64 MOVE                             R8 R9
       65 CALL                             R7 1 0
       66 RETURN                           R0 0
       67 JUMPIF                           R5 ; [+13]
       68 GETIMPORT                        R7 K7 [warn]
       70 LOADK                            R9 K17 ["Package skill \"%*/%*\" has malformed frontmatter: %*"]
       71 GETTABLEKS                       R11 R0 K9 ["Name"]
       73 MOVE                             R12 R3
       74 MOVE                             R13 R6
       75 NAMECALL                         R9 R9 K10 ["format"]
       77 CALL                             R9 4 1
       78 MOVE                             R8 R9
       79 CALL                             R7 1 0
       80 RETURN                           R0 0
       81 GETTABLEKS                       R7 R5 K18 ["body"]
       83 LOADK                            R9 K19 ["%S"]
       84 NAMECALL                         R7 R7 K20 ["match"]
       86 CALL                             R7 2 1
       87 JUMPIF                           R7 ; [+12]
       88 GETIMPORT                        R7 K7 [warn]
       90 LOADK                            R9 K21 ["Package skill \"%*/%*\" has an empty body; skipping."]
       91 GETTABLEKS                       R11 R0 K9 ["Name"]
       93 MOVE                             R12 R3
       94 NAMECALL                         R9 R9 K10 ["format"]
       96 CALL                             R9 3 1
       97 MOVE                             R8 R9
       98 CALL                             R7 1 0
       99 RETURN                           R0 0
      100 GETTABLEKS                       R7 R5 K22 ["frontmatter"]
      102 GETTABLEKS                       R7 R7 K23 ["enabled"]
      104 JUMPIFNOTEQKB                    R7 FALSE ; [+2]
      106 RETURN                           R0 0
      107 GETTABLEKS                       R7 R5 K22 ["frontmatter"]
      109 GETTABLEKS                       R7 R7 K24 ["name"]
      111 LOADN                            R10 1
      112 LOADN                            R11 4
      113 NAMECALL                         R8 R7 K25 ["sub"]
      115 CALL                             R8 3 1
      116 JUMPIFEQKS                       R8 K26 ["rbx-"] ; [+4]
      118 LOADK                            R8 K26 ["rbx-"]
      119 MOVE                             R9 R7
      120 CONCAT                           R7 R8 R9
      121 GETTABLE                         R8 R1 R7
      122 JUMPIFNOT                        R8 ; [+12]
      123 GETIMPORT                        R9 K7 [warn]
      125 LOADK                            R11 K27 ["Package skill name \"%*\" registered twice (previously from \"%*\", now from \"%*\"); second wins."]
      126 MOVE                             R13 R7
      127 MOVE                             R14 R8
      128 GETTABLEKS                       R15 R0 K9 ["Name"]
      130 NAMECALL                         R11 R11 K10 ["format"]
      132 CALL                             R11 4 1
      133 MOVE                             R10 R11
      134 CALL                             R9 1 0
      135 GETTABLEKS                       R9 R0 K9 ["Name"]
      137 SETTABLE                         R9 R1 R7
      138 GETUPVAL                         R9 1
      139 GETTABLEKS                       R9 R9 K28 ["register"]
      141 DUPTABLE                         R10 K32 [{"name", "description", "content", "source"}]
      142 SETTABLEKS                       R7 R10 K24 ["name"]
      144 GETTABLEKS                       R11 R5 K22 ["frontmatter"]
      146 GETTABLEKS                       R11 R11 K29 ["description"]
      148 SETTABLEKS                       R11 R10 K29 ["description"]
      150 GETTABLEKS                       R11 R5 K18 ["body"]
      152 SETTABLEKS                       R11 R10 K30 ["content"]
      154 GETUPVAL                         R11 2
      155 GETTABLEKS                       R11 R11 K33 ["Roblox"]
      157 SETTABLEKS                       R11 R10 K31 ["source"]
      159 CALL                             R9 1 0
      160 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+1]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 -1
        6 CALL                             R2 -1 1
        7 NEWTABLE                         R3 0 0
        9 NAMECALL                         R4 R1 K0 ["GetChildren"]
       11 CALL                             R4 1 3
       12 FORGPREP                         R4
       13 GETTABLEKS                       R10 R8 K1 ["Name"]
       15 GETTABLE                         R9 R2 R10
       16 JUMPIFNOT                        R9 ; [+7]
       17 GETUPVAL                         R9 3
       18 MOVE                             R10 R8
       19 MOVE                             R11 R3
       20 CALL                             R9 2 0
       21 GETIMPORT                        R9 K4 [task.wait]
       23 CALL                             R9 0 0
       24 FORGLOOP                         R4 2 ; [-12]
       26 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K8 ["Frontmatter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K6 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["SkillDefinition"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K6 ["Parent"]
       38 GETTABLEKS                       R5 R5 K10 ["SkillRegistry"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Flags"]
       45 GETTABLEKS                       R6 R6 K12 ["FStringAssistantSkillsAllowlist"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K11 ["Flags"]
       52 GETTABLEKS                       R7 R7 K13 ["FFlagAssistantBetaFeatureSkills"]
       54 CALL                             R6 1 1
       55 NEWTABLE                         R7 1 0
       57 LOADK                            R8 K14 ["rbx-debug"]
       58 SETTABLEKS                       R8 R7 K15 ["DebuggerApiBetaEnabled"]
       60 GETTABLEKS                       R8 R3 K16 ["Sources"]
       62 NEWTABLE                         R9 1 0
       64 DUPCLOSURE                       R10 K17 [PROTO_0]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 DUPCLOSURE                       R11 K18 [PROTO_1]
       68 DUPCLOSURE                       R12 K19 [PROTO_2]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 DUPCLOSURE                       R13 K20 [PROTO_3]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R12
       77 SETTABLEKS                       R13 R9 K21 ["load"]
       79 RETURN                           R9 1
