PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["serialize"]
        3 DUPTABLE                         R3 K4 [{"frontmatter", "extras", "body"}]
        4 DUPTABLE                         R4 K7 [{"name", "description"}]
        5 SETTABLEKS                       R0 R4 K5 ["name"]
        7 SETTABLEKS                       R1 R4 K6 ["description"]
        9 SETTABLEKS                       R4 R3 K1 ["frontmatter"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K2 ["extras"]
       15 LOADK                            R5 K8 ["# %*\n\nWrite what your skill does here. The agent reads this content when it invokes your skill.\n"]
       16 MOVE                             R7 R0
       17 NAMECALL                         R5 R5 K9 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 SETTABLEKS                       R4 R3 K3 ["body"]
       23 CALL                             R2 1 -1
       24 RETURN                           R2 -1

PROTO_1:
        0 LOADK                            R4 K0 ["%*/SKILL.md"]
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 MOVE                             R3 R4
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 GETTABLEKS                       R5 R0 K2 ["userSkills"]
       12 GETTABLEKS                       R5 R5 K3 ["writeFileAsync"]
       14 MOVE                             R6 R3
       15 MOVE                             R7 R4
       16 CALL                             R5 2 0
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K4 ["refreshAsync"]
       20 MOVE                             R6 R0
       21 CALL                             R5 1 0
       22 RETURN                           R0 0

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
       29 GETTABLEKS                       R4 R4 K10 ["loadUserSkills"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 1 0
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R6 K12 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R6 R4 K13 ["createAsync"]
       41 RETURN                           R4 1
