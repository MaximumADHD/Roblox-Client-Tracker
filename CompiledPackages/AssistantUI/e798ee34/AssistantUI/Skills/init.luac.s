PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["register"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["RobloxScriptingSkill"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["SkillRegistry"]
       14 CALL                             R1 1 1
       15 NEWTABLE                         R2 1 0
       17 DUPCLOSURE                       R3 K6 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R3 R2 K7 ["registerAll"]
       22 RETURN                           R2 1
