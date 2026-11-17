PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["RbxAnalyticsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["JestGlobals"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["jest"]
       12 DUPTABLE                         R2 K8 [{"GetClientId", "GetSessionId"}]
       13 GETTABLEKS                       R3 R1 K9 ["fn"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K6 ["GetClientId"]
       18 GETTABLEKS                       R3 R1 K9 ["fn"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K7 ["GetSessionId"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 LOADK                            R2 K4 ["RbxAnalyticsService"]
       10 SETTABLEKS                       R2 R1 K5 ["Name"]
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 SETTABLEKS                       R2 R1 K7 ["real"]
       15 DUPCLOSURE                       R2 K8 [PROTO_1]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R1 K9 ["mock"]
       19 RETURN                           R1 1
