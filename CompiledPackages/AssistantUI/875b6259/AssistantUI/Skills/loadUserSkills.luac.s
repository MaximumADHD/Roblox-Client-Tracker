PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["parse"]
        5 GETTABLEKS                       R3 R0 K3 ["content"]
        7 CALL                             R1 2 3
        8 JUMPIF                           R1 ; [+16]
        9 GETIMPORT                        R4 K5 [warn]
       11 LOADK                            R6 K6 ["User skill \"%*\" parse threw: %*"]
       12 GETTABLEKS                       R8 R0 K7 ["relativePath"]
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R10 R2
       16 GETIMPORT                        R9 K9 [tostring]
       18 CALL                             R9 1 1
       19 NAMECALL                         R6 R6 K10 ["format"]
       21 CALL                             R6 3 1
       22 MOVE                             R5 R6
       23 CALL                             R4 1 0
       24 RETURN                           R0 0
       25 JUMPIF                           R2 ; [+12]
       26 GETIMPORT                        R4 K5 [warn]
       28 LOADK                            R6 K11 ["User skill \"%*\" has malformed frontmatter: %*"]
       29 GETTABLEKS                       R8 R0 K7 ["relativePath"]
       31 MOVE                             R9 R3
       32 NAMECALL                         R6 R6 K10 ["format"]
       34 CALL                             R6 3 1
       35 MOVE                             R5 R6
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R4 R2 K12 ["body"]
       40 LOADK                            R6 K13 ["%S"]
       41 NAMECALL                         R4 R4 K14 ["match"]
       43 CALL                             R4 2 1
       44 JUMPIF                           R4 ; [+11]
       45 GETIMPORT                        R4 K5 [warn]
       47 LOADK                            R6 K15 ["User skill \"%*\" has an empty body; skipping."]
       48 GETTABLEKS                       R8 R0 K7 ["relativePath"]
       50 NAMECALL                         R6 R6 K10 ["format"]
       52 CALL                             R6 2 1
       53 MOVE                             R5 R6
       54 CALL                             R4 1 0
       55 RETURN                           R0 0
       56 GETTABLEKS                       R4 R2 K16 ["frontmatter"]
       58 GETTABLEKS                       R4 R4 K17 ["enabled"]
       60 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
       62 RETURN                           R0 0
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K18 ["register"]
       66 DUPTABLE                         R5 K23 [{"name", "description", "content", "source", "relativePath", "rawContent"}]
       67 GETTABLEKS                       R6 R2 K16 ["frontmatter"]
       69 GETTABLEKS                       R6 R6 K19 ["name"]
       71 SETTABLEKS                       R6 R5 K19 ["name"]
       73 GETTABLEKS                       R6 R2 K16 ["frontmatter"]
       75 GETTABLEKS                       R6 R6 K20 ["description"]
       77 SETTABLEKS                       R6 R5 K20 ["description"]
       79 GETTABLEKS                       R6 R2 K12 ["body"]
       81 SETTABLEKS                       R6 R5 K3 ["content"]
       83 GETUPVAL                         R6 2
       84 GETTABLEKS                       R6 R6 K24 ["User"]
       86 SETTABLEKS                       R6 R5 K21 ["source"]
       88 GETTABLEKS                       R6 R0 K7 ["relativePath"]
       90 SETTABLEKS                       R6 R5 K7 ["relativePath"]
       92 GETTABLEKS                       R6 R0 K3 ["content"]
       94 SETTABLEKS                       R6 R5 K22 ["rawContent"]
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["userSkills"]
        4 GETTABLEKS                       R2 R2 K3 ["listAsync"]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+14]
        8 GETIMPORT                        R3 K5 [warn]
       10 LOADK                            R5 K6 ["Failed to list user skills: %*"]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R8 R2
       13 GETIMPORT                        R7 K8 [tostring]
       15 CALL                             R7 1 1
       16 NAMECALL                         R5 R5 K9 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 MOVE                             R3 R2
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 GETUPVAL                         R8 0
       27 MOVE                             R9 R7
       28 CALL                             R8 1 0
       29 GETIMPORT                        R8 K12 [task.wait]
       31 CALL                             R8 0 0
       32 FORGLOOP                         R3 2 ; [-7]
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["clearSource"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["User"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["loadAsync"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Frontmatter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["SkillDefinition"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K8 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["SkillRegistry"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R3 K12 ["Sources"]
       43 NEWTABLE                         R6 2 0
       45 DUPCLOSURE                       R7 K13 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R8 K14 [PROTO_1]
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R8 R6 K15 ["loadAsync"]
       53 DUPCLOSURE                       R8 K16 [PROTO_2]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R8 R6 K17 ["refreshAsync"]
       59 RETURN                           R6 1
