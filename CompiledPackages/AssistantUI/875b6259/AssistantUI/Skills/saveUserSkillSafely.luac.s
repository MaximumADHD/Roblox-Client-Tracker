PROTO_0:
        0 GETTABLEKS                       R6 R1 K0 ["source"]
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R7 R7 K1 ["User"]
        5 JUMPIFEQ                         R6 R7 ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 LOADK                            R7 K2 ["saveUserSkillSafely only supports user skills (got \"%*\")."]
       10 GETTABLEKS                       R9 R1 K0 ["source"]
       12 NAMECALL                         R7 R7 K3 ["format"]
       14 CALL                             R7 2 1
       15 MOVE                             R6 R7
       16 FASTCALL2                        ASSERT R5 R6 ; [+3]
       18 GETIMPORT                        R4 K5 [assert]
       20 CALL                             R4 2 0
       21 GETTABLEKS                       R4 R1 K6 ["relativePath"]
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 LOADK                            R8 K7 ["User skill \"%*\" is missing relativePath."]
       28 GETTABLEKS                       R10 R1 K8 ["name"]
       30 NAMECALL                         R8 R8 K3 ["format"]
       32 CALL                             R8 2 1
       33 MOVE                             R7 R8
       34 FASTCALL2                        ASSERT R6 R7 ; [+3]
       36 GETIMPORT                        R5 K5 [assert]
       38 CALL                             R5 2 0
       39 GETTABLEKS                       R5 R1 K9 ["rawContent"]
       41 JUMPIFNOTEQKNIL                  R5 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 LOADK                            R9 K10 ["User skill \"%*\" is missing rawContent baseline."]
       46 GETTABLEKS                       R11 R1 K8 ["name"]
       48 NAMECALL                         R9 R9 K3 ["format"]
       50 CALL                             R9 2 1
       51 MOVE                             R8 R9
       52 FASTCALL2                        ASSERT R7 R8 ; [+3]
       54 GETIMPORT                        R6 K5 [assert]
       56 CALL                             R6 2 0
       57 GETTABLEKS                       R6 R0 K11 ["userSkills"]
       59 GETTABLEKS                       R6 R6 K12 ["readFileAsync"]
       61 MOVE                             R7 R4
       62 CALL                             R6 1 1
       63 JUMPIFEQ                         R6 R5 ; [+6]
       65 MOVE                             R7 R3
       66 MOVE                             R8 R6
       67 MOVE                             R9 R2
       68 CALL                             R7 2 0
       69 RETURN                           R0 0
       70 GETTABLEKS                       R7 R0 K11 ["userSkills"]
       72 GETTABLEKS                       R7 R7 K13 ["writeFileAsync"]
       74 MOVE                             R8 R4
       75 MOVE                             R9 R2
       76 CALL                             R7 2 0
       77 SETTABLEKS                       R2 R1 K9 ["rawContent"]
       79 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K9 ["SkillDefinition"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Sources"]
       25 NEWTABLE                         R4 1 0
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K12 ["saveAsync"]
       31 RETURN                           R4 1
