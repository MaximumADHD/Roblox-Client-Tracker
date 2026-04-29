PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fetchSystemPromptAsync"]
        3 DUPTABLE                         R1 K5 [{"tools", "model", "assistantMode", "isDebugMode"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["tools"]
        7 SETTABLEKS                       R2 R1 K1 ["tools"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["model"]
       12 SETTABLEKS                       R2 R1 K2 ["model"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["assistantMode"]
       17 SETTABLEKS                       R2 R1 K3 ["assistantMode"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K4 ["isDebugMode"]
       22 SETTABLEKS                       R2 R1 K4 ["isDebugMode"]
       24 CALL                             R0 1 1
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K6 ["injectSafetyBlocks"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 -1
       30 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETIMPORT                        R2 K2 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R2 1 2
        9 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["BYOKSafetyBlocks"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
