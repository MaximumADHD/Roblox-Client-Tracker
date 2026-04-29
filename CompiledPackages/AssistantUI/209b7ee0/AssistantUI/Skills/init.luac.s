PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["register"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["DocsQASkill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K7 ["SkillRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Flags"]
       25 GETTABLEKS                       R4 R5 K9 ["FFlagEnableDocsQASkill"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 1 0
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R5 R4 K11 ["registerAll"]
       36 RETURN                           R4 1
