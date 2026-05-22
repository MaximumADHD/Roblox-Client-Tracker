PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parse"]
        3 GETTABLEKS                       R2 R0 K1 ["content"]
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+12]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["User skill \"%*\" has malformed frontmatter: %*"]
       10 GETTABLEKS                       R7 R0 K5 ["relativePath"]
       12 MOVE                             R8 R2
       13 NAMECALL                         R5 R5 K6 ["format"]
       15 CALL                             R5 3 1
       16 MOVE                             R4 R5
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R3 R1 K7 ["body"]
       21 LOADK                            R5 K8 ["%S"]
       22 NAMECALL                         R3 R3 K9 ["match"]
       24 CALL                             R3 2 1
       25 JUMPIF                           R3 ; [+11]
       26 GETIMPORT                        R3 K3 [warn]
       28 LOADK                            R5 K10 ["User skill \"%*\" has an empty body; skipping."]
       29 GETTABLEKS                       R7 R0 K5 ["relativePath"]
       31 NAMECALL                         R5 R5 K6 ["format"]
       33 CALL                             R5 2 1
       34 MOVE                             R4 R5
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R3 R1 K11 ["frontmatter"]
       39 GETTABLEKS                       R3 R3 K12 ["enabled"]
       41 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R3 R3 K13 ["register"]
       47 DUPTABLE                         R4 K18 [{"name", "description", "content", "source", "relativePath", "rawContent"}]
       48 GETTABLEKS                       R5 R1 K11 ["frontmatter"]
       50 GETTABLEKS                       R5 R5 K14 ["name"]
       52 SETTABLEKS                       R5 R4 K14 ["name"]
       54 GETTABLEKS                       R5 R1 K11 ["frontmatter"]
       56 GETTABLEKS                       R5 R5 K15 ["description"]
       58 SETTABLEKS                       R5 R4 K15 ["description"]
       60 GETTABLEKS                       R5 R1 K7 ["body"]
       62 SETTABLEKS                       R5 R4 K1 ["content"]
       64 GETUPVAL                         R5 2
       65 GETTABLEKS                       R5 R5 K19 ["User"]
       67 SETTABLEKS                       R5 R4 K16 ["source"]
       69 GETTABLEKS                       R5 R0 K5 ["relativePath"]
       71 SETTABLEKS                       R5 R4 K5 ["relativePath"]
       73 GETTABLEKS                       R5 R0 K1 ["content"]
       75 SETTABLEKS                       R5 R4 K17 ["rawContent"]
       77 CALL                             R3 1 0
       78 RETURN                           R0 0

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
       29 FORGLOOP                         R3 2 ; [-4]
       31 RETURN                           R0 0

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
