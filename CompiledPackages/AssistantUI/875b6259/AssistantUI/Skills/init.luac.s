PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["load"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["register"]
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 4
       14 CALL                             R0 0 1
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K1 ["register"]
       19 GETUPVAL                         R1 5
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 6
       22 CALL                             R0 0 1
       23 JUMPIFNOT                        R0 ; [+5]
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K1 ["register"]
       27 GETUPVAL                         R1 7
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K7 ["DocsSearchSkill"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Guest"]
       25 GETTABLEKS                       R4 R4 K9 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["OpenCloudUsageSkill"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K11 ["SkillRegistry"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETIMPORT                        R7 K1 [script]
       46 GETTABLEKS                       R7 R7 K12 ["loadPackageSkills"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETIMPORT                        R8 K1 [script]
       53 GETTABLEKS                       R8 R8 K13 ["loadUserSkills"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Flags"]
       60 GETTABLEKS                       R9 R9 K15 ["FFlagAssistantSkillsFromPackage"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K14 ["Flags"]
       67 GETTABLEKS                       R10 R10 K16 ["FFlagEnableStreamingConversionSkill"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K14 ["Flags"]
       74 GETTABLEKS                       R11 R11 K17 ["FFlagStudioOpenCloudMCP"]
       76 CALL                             R10 1 1
       77 NEWTABLE                         R11 4 0
       79 DUPCLOSURE                       R12 K18 [PROTO_0]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R12 R11 K19 ["registerAll"]
       90 DUPCLOSURE                       R12 K20 [PROTO_1]
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R12 R11 K21 ["loadUserSkillsAsync"]
       94 DUPCLOSURE                       R12 K22 [PROTO_2]
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R12 R11 K23 ["refreshUserSkillsAsync"]
       98 RETURN                           R11 1
