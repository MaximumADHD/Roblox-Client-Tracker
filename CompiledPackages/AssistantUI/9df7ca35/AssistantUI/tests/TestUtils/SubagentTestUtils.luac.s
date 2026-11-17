PROTO_0:
        0 MOVE                             R2 R0
        1 DUPTABLE                         R3 K2 [{[1] = "message_start"}]
        2 CALL                             R2 1 0
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K5 [{[1] = "content_start", ["contentBlock"]}]
        5 DUPTABLE                         R4 K8 [{[1] = "text", ["text"] = ""}]
        6 SETTABLEKS                       R4 R3 K4 ["contentBlock"]
        8 CALL                             R2 1 0
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K11 [{[1] = "content_delta", ["delta"]}]
       11 DUPTABLE                         R4 K13 [{[1] = "text_delta", ["text"]}]
       12 SETTABLEKS                       R1 R4 K6 ["text"]
       14 SETTABLEKS                       R4 R3 K10 ["delta"]
       16 CALL                             R2 1 0
       17 MOVE                             R2 R0
       18 DUPTABLE                         R3 K15 [{[1] = "content_end"}]
       19 CALL                             R2 1 0
       20 MOVE                             R2 R0
       21 DUPTABLE                         R3 K17 [{[1] = "message_delta", ["delta"]}]
       22 DUPTABLE                         R4 K20 [{["stopReason"] = "message_end"}]
       23 SETTABLEKS                       R4 R3 K10 ["delta"]
       25 CALL                             R2 1 0
       26 MOVE                             R2 R0
       27 DUPTABLE                         R3 K22 [{[1] = "message_stop"}]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R0
        1 DUPTABLE                         R3 K2 [{[1] = "message_start"}]
        2 CALL                             R2 1 0
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K4 [{[1] = "error", ["error"]}]
        5 SETTABLEKS                       R1 R3 K3 ["error"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R1 R0
        1 DUPTABLE                         R2 K2 [{[1] = "message_start"}]
        2 CALL                             R1 1 0
        3 MOVE                             R1 R0
        4 DUPTABLE                         R2 K5 [{[1] = "message_delta", ["delta"]}]
        5 DUPTABLE                         R3 K8 [{["stopReason"] = "message_end"}]
        6 SETTABLEKS                       R3 R2 K4 ["delta"]
        8 CALL                             R1 1 0
        9 MOVE                             R1 R0
       10 DUPTABLE                         R2 K10 [{[1] = "message_stop"}]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R3 R0
        1 DUPTABLE                         R4 K2 [{[1] = "message_start"}]
        2 CALL                             R3 1 0
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K7 [{[1] = "content_start", ["contentId"] = 1, ["contentBlock"]}]
        5 DUPTABLE                         R5 K13 [{[1] = "tool_use", ["id"] = "call_1", ["name"], ["input"]}]
        6 SETTABLEKS                       R1 R5 K11 ["name"]
        8 NEWTABLE                         R6 0 0
       10 SETTABLEKS                       R6 R5 K12 ["input"]
       12 SETTABLEKS                       R5 R4 K6 ["contentBlock"]
       14 CALL                             R3 1 0
       15 MOVE                             R3 R0
       16 DUPTABLE                         R4 K16 [{[1] = "content_delta", ["contentId"] = 1, ["delta"]}]
       17 DUPTABLE                         R5 K19 [{[1] = "json_delta", ["jsonDelta"]}]
       18 ORK                              R6 R2 K20 ["{}"]
       19 SETTABLEKS                       R6 R5 K18 ["jsonDelta"]
       21 SETTABLEKS                       R5 R4 K15 ["delta"]
       23 CALL                             R3 1 0
       24 MOVE                             R3 R0
       25 DUPTABLE                         R4 K22 [{[1] = "content_end", ["contentId"] = 1}]
       26 CALL                             R3 1 0
       27 MOVE                             R3 R0
       28 DUPTABLE                         R4 K24 [{[1] = "message_delta", ["delta"]}]
       29 DUPTABLE                         R5 K26 [{["stopReason"] = "tool_use"}]
       30 SETTABLEKS                       R5 R4 K15 ["delta"]
       32 CALL                             R3 1 0
       33 MOVE                             R3 R0
       34 DUPTABLE                         R4 K28 [{[1] = "message_stop"}]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

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
