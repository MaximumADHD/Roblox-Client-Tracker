PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["register"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K0 ["register"]
       14 GETUPVAL                         R1 4
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["loadAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["refreshAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["ConvertToStreamingSkill"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K7 ["DocsQASkill"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Guest"]
       25 GETTABLEKS                       R4 R4 K9 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["SkillRegistry"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["loadUserSkills"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Flags"]
       46 GETTABLEKS                       R7 R7 K13 ["FFlagEnableDocsQASkill"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Flags"]
       53 GETTABLEKS                       R8 R8 K14 ["FFlagEnableStreamingConversionSkill"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 4 0
       58 DUPCLOSURE                       R9 K15 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R9 R8 K16 ["registerAll"]
       66 DUPCLOSURE                       R9 K17 [PROTO_1]
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R9 R8 K18 ["loadUserSkillsAsync"]
       70 DUPCLOSURE                       R9 K19 [PROTO_2]
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R9 R8 K20 ["refreshUserSkillsAsync"]
       74 RETURN                           R8 1
