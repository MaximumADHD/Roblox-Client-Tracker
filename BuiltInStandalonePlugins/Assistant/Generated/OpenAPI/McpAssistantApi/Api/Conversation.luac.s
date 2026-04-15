PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K2 ["host"]
        7 LOADK                            R5 K3 ["/v1/conversation"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K4 ["pathPrefix"]
       11 CALL                             R2 4 1
       12 MOVE                             R3 R1
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["body"]
       17 GETTABLEKS                       R3 R2 K6 ["headers"]
       19 LOADK                            R4 K7 ["application/json"]
       20 SETTABLEKS                       R4 R3 K8 ["Content-Type"]
       22 NAMECALL                         R3 R2 K9 ["sendAsync"]
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["buildRequest"]
        3 LOADK                            R3 K1 ["POST"]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K2 ["host"]
        7 LOADK                            R5 K3 ["/v1/conversation:sse"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K4 ["pathPrefix"]
       11 CALL                             R2 4 1
       12 MOVE                             R3 R1
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K5 ["body"]
       17 GETTABLEKS                       R3 R2 K6 ["headers"]
       19 LOADK                            R4 K7 ["application/json"]
       20 SETTABLEKS                       R4 R3 K8 ["Content-Type"]
       22 NAMECALL                         R3 R2 K9 ["sendAsync"]
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["McpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K7 [require]
       20 GETTABLEKS                       R5 R0 K9 ["PathMetadata"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K7 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Models"]
       27 GETTABLEKS                       R6 R7 K11 ["CreateConversationRequest"]
       29 CALL                             R5 1 1
       30 NEWTABLE                         R6 2 0
       32 DUPCLOSURE                       R7 K12 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R7 R6 K13 ["postCreateConversationV1ConversationPostAsync"]
       37 DUPCLOSURE                       R7 K14 [PROTO_1]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R7 R6 K15 ["postCreateConversationSseV1ConversationSsePostAsync"]
       42 GETIMPORT                        R7 K18 [table.freeze]
       44 MOVE                             R8 R6
       45 CALL                             R7 1 -1
       46 RETURN                           R7 -1
