PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 RETURN                           R0 2

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"start", "awaitPickAsync", "cancel"}]
        1 DUPCLOSURE                       R1 K4 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["start"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 SETTABLEKS                       R1 R0 K1 ["awaitPickAsync"]
        9 DUPCLOSURE                       R1 K5 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K2 ["cancel"]
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["spyOn"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["new"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K2 ["mockClear"]
        8 CALL                             R3 0 0
        9 GETTABLEKS                       R3 R2 K3 ["mockImplementation"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CALL                             R3 1 -1
       15 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ImageSelection"]
       13 GETTABLEKS                       R2 R2 K8 ["ImageSelectionOrchestrator"]
       15 CALL                             R1 1 1
       16 LOADK                            R4 K9 ["Packages"]
       17 NAMECALL                         R2 R0 K3 ["FindFirstAncestor"]
       19 CALL                             R2 2 1
       20 GETTABLEKS                       R2 R2 K10 ["Dev"]
       22 GETIMPORT                        R3 K5 [require]
       24 GETTABLEKS                       R4 R2 K11 ["JestGlobals"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K12 ["jest"]
       29 NEWTABLE                         R5 1 0
       31 DUPCLOSURE                       R6 K13 [PROTO_4]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R6 R5 K14 ["stubImageOrchestrator"]
       36 RETURN                           R5 1
