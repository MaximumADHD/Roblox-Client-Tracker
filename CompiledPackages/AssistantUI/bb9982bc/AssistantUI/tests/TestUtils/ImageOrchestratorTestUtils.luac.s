PROTO_0:
        0 DUPTABLE                         R0 K2 [{"imageContent", "errorMessage"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["imageContent"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["errorMessage"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["spyOn"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["ImageSelectionOps"]
        6 LOADK                            R4 K2 ["generateOneAsync"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K3 ["mockClear"]
       10 CALL                             R3 0 0
       11 GETTABLEKS                       R3 R2 K4 ["mockImplementation"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 CALL                             R3 1 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 LOADK                            R4 K8 ["Packages"]
       15 NAMECALL                         R2 R0 K3 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETTABLEKS                       R2 R2 K9 ["Dev"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["JestGlobals"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["jest"]
       27 NEWTABLE                         R5 1 0
       29 DUPCLOSURE                       R6 K12 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 SETTABLEKS                       R6 R5 K13 ["stubImageOrchestrator"]
       34 RETURN                           R5 1
