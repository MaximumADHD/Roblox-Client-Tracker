PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/subagent-conversation"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K8 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["buildRequest"]
        3 LOADK                            R2 K1 ["POST"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K2 ["host"]
        7 LOADK                            R4 K3 ["/v1/subagent-conversation:sse"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K4 ["pathPrefix"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K5 ["baseUrl"]
       14 CALL                             R1 5 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K6 ["body"]
       18 NAMECALL                         R1 R1 K7 ["setBody"]
       20 CALL                             R1 3 1
       21 NAMECALL                         R1 R1 K8 ["sendAsync"]
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiMcpAssistantApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PathMetadata"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Models"]
       23 GETTABLEKS                       R5 R5 K10 ["CreateConversationRequest"]
       25 CALL                             R4 1 1
       26 NEWTABLE                         R5 2 0
       28 DUPCLOSURE                       R6 K11 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 SETTABLEKS                       R6 R5 K12 ["postCreateSubagentConversationV1SubagentConversationPostAsync"]
       34 DUPCLOSURE                       R6 K13 [PROTO_1]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R6 R5 K14 ["postCreateConversationSseV1SubagentConversationSsePostAsync"]
       40 GETIMPORT                        R6 K17 [table.freeze]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 -1
       44 RETURN                           R6 -1
