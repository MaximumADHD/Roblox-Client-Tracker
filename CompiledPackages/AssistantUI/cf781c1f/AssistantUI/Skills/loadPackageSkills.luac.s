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
       20 RETURN                           R1 1

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
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K11 ["parse"]
       45 MOVE                             R5 R2
       46 CALL                             R4 1 2
       47 JUMPIF                           R4 ; [+13]
       48 GETIMPORT                        R6 K7 [warn]
       50 LOADK                            R8 K12 ["Package skill \"%*/%*\" has malformed frontmatter: %*"]
       51 GETTABLEKS                       R10 R0 K9 ["Name"]
       53 MOVE                             R11 R3
       54 MOVE                             R12 R5
       55 NAMECALL                         R8 R8 K10 ["format"]
       57 CALL                             R8 4 1
       58 MOVE                             R7 R8
       59 CALL                             R6 1 0
       60 RETURN                           R0 0
       61 GETTABLEKS                       R6 R4 K13 ["body"]
       63 LOADK                            R8 K14 ["%S"]
       64 NAMECALL                         R6 R6 K15 ["match"]
       66 CALL                             R6 2 1
       67 JUMPIF                           R6 ; [+12]
       68 GETIMPORT                        R6 K7 [warn]
       70 LOADK                            R8 K16 ["Package skill \"%*/%*\" has an empty body; skipping."]
       71 GETTABLEKS                       R10 R0 K9 ["Name"]
       73 MOVE                             R11 R3
       74 NAMECALL                         R8 R8 K10 ["format"]
       76 CALL                             R8 3 1
       77 MOVE                             R7 R8
       78 CALL                             R6 1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R6 R4 K17 ["frontmatter"]
       82 GETTABLEKS                       R6 R6 K18 ["enabled"]
       84 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       86 RETURN                           R0 0
       87 GETTABLEKS                       R6 R4 K17 ["frontmatter"]
       89 GETTABLEKS                       R6 R6 K19 ["name"]
       91 GETTABLE                         R7 R1 R6
       92 JUMPIFNOT                        R7 ; [+12]
       93 GETIMPORT                        R8 K7 [warn]
       95 LOADK                            R10 K20 ["Package skill name \"%*\" registered twice (previously from \"%*\", now from \"%*\"); second wins."]
       96 MOVE                             R12 R6
       97 MOVE                             R13 R7
       98 GETTABLEKS                       R14 R0 K9 ["Name"]
      100 NAMECALL                         R10 R10 K10 ["format"]
      102 CALL                             R10 4 1
      103 MOVE                             R9 R10
      104 CALL                             R8 1 0
      105 GETTABLEKS                       R8 R0 K9 ["Name"]
      107 SETTABLE                         R8 R1 R6
      108 GETUPVAL                         R8 1
      109 GETTABLEKS                       R8 R8 K21 ["register"]
      111 DUPTABLE                         R9 K25 [{"name", "description", "content", "source"}]
      112 SETTABLEKS                       R6 R9 K19 ["name"]
      114 GETTABLEKS                       R10 R4 K17 ["frontmatter"]
      116 GETTABLEKS                       R10 R10 K22 ["description"]
      118 SETTABLEKS                       R10 R9 K22 ["description"]
      120 GETTABLEKS                       R10 R4 K13 ["body"]
      122 SETTABLEKS                       R10 R9 K23 ["content"]
      124 GETUPVAL                         R10 2
      125 GETTABLEKS                       R10 R10 K26 ["Roblox"]
      127 SETTABLEKS                       R10 R9 K24 ["source"]
      129 CALL                             R8 1 0
      130 RETURN                           R0 0

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
       16 JUMPIFNOT                        R9 ; [+4]
       17 GETUPVAL                         R9 3
       18 MOVE                             R10 R8
       19 MOVE                             R11 R3
       20 CALL                             R9 2 0
       21 FORGLOOP                         R4 2 ; [-9]
       23 RETURN                           R0 0

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
       48 GETTABLEKS                       R6 R3 K13 ["Sources"]
       50 NEWTABLE                         R7 1 0
       52 DUPCLOSURE                       R8 K14 [PROTO_0]
       53 DUPCLOSURE                       R9 K15 [PROTO_1]
       54 DUPCLOSURE                       R10 K16 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 DUPCLOSURE                       R11 K17 [PROTO_3]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R10
       63 SETTABLEKS                       R11 R7 K18 ["loadAsync"]
       65 RETURN                           R7 1
