PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["load"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["loadPackageSkills"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["loadUserSkills"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 4 0
       30 DUPCLOSURE                       R5 K10 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R5 R4 K11 ["registerAll"]
       34 DUPCLOSURE                       R5 K12 [PROTO_1]
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K13 ["loadUserSkillsAsync"]
       38 DUPCLOSURE                       R5 K14 [PROTO_2]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K15 ["refreshUserSkillsAsync"]
       42 RETURN                           R4 1
