PROTO_0:
        0 MOVE                             R2 R0
        1 DUPTABLE                         R3 K1 [{"type"}]
        2 LOADK                            R4 K2 ["message_start"]
        3 SETTABLEKS                       R4 R3 K0 ["type"]
        5 CALL                             R2 1 0
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K4 [{"type", "contentBlock"}]
        8 LOADK                            R4 K5 ["content_start"]
        9 SETTABLEKS                       R4 R3 K0 ["type"]
       11 DUPTABLE                         R4 K7 [{"type", "text"}]
       12 LOADK                            R5 K6 ["text"]
       13 SETTABLEKS                       R5 R4 K0 ["type"]
       15 LOADK                            R5 K8 [""]
       16 SETTABLEKS                       R5 R4 K6 ["text"]
       18 SETTABLEKS                       R4 R3 K3 ["contentBlock"]
       20 CALL                             R2 1 0
       21 MOVE                             R2 R0
       22 DUPTABLE                         R3 K10 [{"type", "delta"}]
       23 LOADK                            R4 K11 ["content_delta"]
       24 SETTABLEKS                       R4 R3 K0 ["type"]
       26 DUPTABLE                         R4 K7 [{"type", "text"}]
       27 LOADK                            R5 K12 ["text_delta"]
       28 SETTABLEKS                       R5 R4 K0 ["type"]
       30 SETTABLEKS                       R1 R4 K6 ["text"]
       32 SETTABLEKS                       R4 R3 K9 ["delta"]
       34 CALL                             R2 1 0
       35 MOVE                             R2 R0
       36 DUPTABLE                         R3 K1 [{"type"}]
       37 LOADK                            R4 K13 ["content_end"]
       38 SETTABLEKS                       R4 R3 K0 ["type"]
       40 CALL                             R2 1 0
       41 MOVE                             R2 R0
       42 DUPTABLE                         R3 K10 [{"type", "delta"}]
       43 LOADK                            R4 K14 ["message_delta"]
       44 SETTABLEKS                       R4 R3 K0 ["type"]
       46 DUPTABLE                         R4 K16 [{"stopReason"}]
       47 LOADK                            R5 K17 ["message_end"]
       48 SETTABLEKS                       R5 R4 K15 ["stopReason"]
       50 SETTABLEKS                       R4 R3 K9 ["delta"]
       52 CALL                             R2 1 0
       53 MOVE                             R2 R0
       54 DUPTABLE                         R3 K1 [{"type"}]
       55 LOADK                            R4 K18 ["message_stop"]
       56 SETTABLEKS                       R4 R3 K0 ["type"]
       58 CALL                             R2 1 0
       59 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R0
        1 DUPTABLE                         R3 K1 [{"type"}]
        2 LOADK                            R4 K2 ["message_start"]
        3 SETTABLEKS                       R4 R3 K0 ["type"]
        5 CALL                             R2 1 0
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K4 [{"type", "error"}]
        8 LOADK                            R4 K3 ["error"]
        9 SETTABLEKS                       R4 R3 K0 ["type"]
       11 SETTABLEKS                       R1 R3 K3 ["error"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 DUPTABLE                         R2 K1 [{"type"}]
        2 LOADK                            R3 K2 ["message_start"]
        3 SETTABLEKS                       R3 R2 K0 ["type"]
        5 CALL                             R1 1 0
        6 MOVE                             R1 R0
        7 DUPTABLE                         R2 K4 [{"type", "delta"}]
        8 LOADK                            R3 K5 ["message_delta"]
        9 SETTABLEKS                       R3 R2 K0 ["type"]
       11 DUPTABLE                         R3 K7 [{"stopReason"}]
       12 LOADK                            R4 K8 ["message_end"]
       13 SETTABLEKS                       R4 R3 K6 ["stopReason"]
       15 SETTABLEKS                       R3 R2 K3 ["delta"]
       17 CALL                             R1 1 0
       18 MOVE                             R1 R0
       19 DUPTABLE                         R2 K1 [{"type"}]
       20 LOADK                            R3 K9 ["message_stop"]
       21 SETTABLEKS                       R3 R2 K0 ["type"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R3 R0
        1 DUPTABLE                         R4 K1 [{"type"}]
        2 LOADK                            R5 K2 ["message_start"]
        3 SETTABLEKS                       R5 R4 K0 ["type"]
        5 CALL                             R3 1 0
        6 MOVE                             R3 R0
        7 DUPTABLE                         R4 K5 [{"type", "contentId", "contentBlock"}]
        8 LOADK                            R5 K6 ["content_start"]
        9 SETTABLEKS                       R5 R4 K0 ["type"]
       11 LOADN                            R5 1
       12 SETTABLEKS                       R5 R4 K3 ["contentId"]
       14 DUPTABLE                         R5 K10 [{"type", "id", "name", "input"}]
       15 LOADK                            R6 K11 ["tool_use"]
       16 SETTABLEKS                       R6 R5 K0 ["type"]
       18 LOADK                            R6 K12 ["call_1"]
       19 SETTABLEKS                       R6 R5 K7 ["id"]
       21 SETTABLEKS                       R1 R5 K8 ["name"]
       23 NEWTABLE                         R6 0 0
       25 SETTABLEKS                       R6 R5 K9 ["input"]
       27 SETTABLEKS                       R5 R4 K4 ["contentBlock"]
       29 CALL                             R3 1 0
       30 MOVE                             R3 R0
       31 DUPTABLE                         R4 K14 [{"type", "contentId", "delta"}]
       32 LOADK                            R5 K15 ["content_delta"]
       33 SETTABLEKS                       R5 R4 K0 ["type"]
       35 LOADN                            R5 1
       36 SETTABLEKS                       R5 R4 K3 ["contentId"]
       38 DUPTABLE                         R5 K17 [{"type", "jsonDelta"}]
       39 LOADK                            R6 K18 ["json_delta"]
       40 SETTABLEKS                       R6 R5 K0 ["type"]
       42 ORK                              R6 R2 K19 ["{}"]
       43 SETTABLEKS                       R6 R5 K16 ["jsonDelta"]
       45 SETTABLEKS                       R5 R4 K13 ["delta"]
       47 CALL                             R3 1 0
       48 MOVE                             R3 R0
       49 DUPTABLE                         R4 K20 [{"type", "contentId"}]
       50 LOADK                            R5 K21 ["content_end"]
       51 SETTABLEKS                       R5 R4 K0 ["type"]
       53 LOADN                            R5 1
       54 SETTABLEKS                       R5 R4 K3 ["contentId"]
       56 CALL                             R3 1 0
       57 MOVE                             R3 R0
       58 DUPTABLE                         R4 K22 [{"type", "delta"}]
       59 LOADK                            R5 K23 ["message_delta"]
       60 SETTABLEKS                       R5 R4 K0 ["type"]
       62 DUPTABLE                         R5 K25 [{"stopReason"}]
       63 LOADK                            R6 K11 ["tool_use"]
       64 SETTABLEKS                       R6 R5 K24 ["stopReason"]
       66 SETTABLEKS                       R5 R4 K13 ["delta"]
       68 CALL                             R3 1 0
       69 MOVE                             R3 R0
       70 DUPTABLE                         R4 K1 [{"type"}]
       71 LOADK                            R5 K26 ["message_stop"]
       72 SETTABLEKS                       R5 R4 K0 ["type"]
       74 CALL                             R3 1 0
       75 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 4 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K8 ["fireTextResponse"]
       17 DUPCLOSURE                       R3 K9 [PROTO_1]
       18 SETTABLEKS                       R3 R2 K10 ["fireErrorResponse"]
       20 DUPCLOSURE                       R3 K11 [PROTO_2]
       21 SETTABLEKS                       R3 R2 K12 ["fireEmptyResponse"]
       23 DUPCLOSURE                       R3 K13 [PROTO_3]
       24 SETTABLEKS                       R3 R2 K14 ["fireToolCallResponse"]
       26 RETURN                           R2 1
