PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["errorDetail"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantUseLLMErrorDetail"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R3 R1
        8 GETIMPORT                        R2 K3 [typeof]
       10 CALL                             R2 1 1
       11 JUMPIFEQKS                       R2 K4 ["string"] ; [+4]
       13 GETTABLEKS                       R2 R0 K5 ["error"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R3 1
       17 GETTABLE                         R2 R3 R1
       18 JUMPIFNOT                        R2 ; [+13]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K6 ["get"]
       22 CALL                             R3 0 1
       23 GETTABLEKS                       R3 R3 K7 ["printToStudioLog"]
       25 LOADK                            R4 K8 ["[Assistant] errorDetail \"%*\""]
       26 MOVE                             R6 R1
       27 NAMECALL                         R4 R4 K9 ["format"]
       29 CALL                             R4 2 1
       30 CALL                             R3 1 0
       31 RETURN                           R2 1
       32 GETTABLEKS                       R3 R0 K5 ["error"]
       34 RETURN                           R3 1

PROTO_1:
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKS                    R0 K0 ["max_tokens"] ; [+3]
        3 LOADK                            R2 K1 ["token_limit"]
        4 JUMP                             ; [+28]
        5 JUMPIFNOTEQKS                    R0 K2 ["max_turn_requests"] ; [+3]
        7 LOADK                            R2 K3 ["max_tool_calls"]
        8 JUMP                             ; [+24]
        9 JUMPIFNOTEQKS                    R0 K4 ["refusal"] ; [+3]
       11 LOADK                            R2 K5 ["client_error"]
       12 JUMP                             ; [+20]
       13 JUMPIFNOT                        R0 ; [+19]
       14 LOADN                            R5 1
       15 LOADN                            R6 8
       16 FASTCALL3                        STRING_SUB R0 R5 R6
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K8 [string.sub]
       21 CALL                             R3 3 1
       22 JUMPIFNOTEQKS                    R3 K9 ["_roblox_"] ; [+10]
       24 GETUPVAL                         R3 0
       25 FASTCALL2K                       STRING_SUB R0 K10 ; [+5]
       27 MOVE                             R5 R0
       28 LOADK                            R6 K10 [9]
       29 GETIMPORT                        R4 K8 [string.sub]
       31 CALL                             R4 2 1
       32 GETTABLE                         R2 R3 R4
       33 JUMPIFNOT                        R2 ; [+5]
       34 MOVE                             R3 R1
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 LOADB                            R3 1
       38 RETURN                           R3 1
       39 LOADB                            R3 0
       40 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["EngineEnv"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["EngineFlags"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["StreamTypes"]
       27 CALL                             R2 1 1
       28 DUPTABLE                         R3 K36 [{["token_limit"] = "token_limit", ["safety_filter"] = "safety_filter", ["max_tool_calls"] = "max_tool_calls", ["quota_exceeded"] = "quota_exceeded", ["timeout"] = "timeout", ["request_failed"] = "request_failed", ["client_error"] = "client_error", ["prompt_moderated"] = "prompt_moderated", ["input_disabled"] = "input_disabled", ["too_many_request"] = "too_many_request", ["invalid_tool_call_json"] = "invalid_tool_call_json", ["api_connection_error"] = "api_connection_error", ["rate_limit_error"] = "rate_limit_error", ["api_status_error"] = "api_status_error", ["generic_error"] = "generic_error", ["input_token_limit_error"] = "input_token_limit_error", ["external_connection_general_error"] = "external_connection_general_error", ["external_connection_quota_exceeded_error"] = "external_connection_quota_exceeded_error", ["external_connection_unauthorized_error"] = "external_connection_unauthorized_error", ["invalid_request_error"] = "invalid_request_error", ["request_timeout_error"] = "request_timeout_error", ["service_unavailable_error"] = "service_unavailable_error", ["server_overload_error"] = "server_overload_error", ["server_error"] = "server_error", ["token_limit_error"] = "token_limit_error", ["tool_call_truncated_error"] = "tool_call_truncated_error", ["notification_delivery_error"] = "notification_delivery_error", ["malformed_tool_call_error"] = "malformed_tool_call_error"}]
       29 DUPCLOSURE                       R4 K37 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R0
       33 DUPCLOSURE                       R5 K38 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 DUPTABLE                         R6 K41 [{"handleStopReason", "resolveErrorEvent"}]
       36 SETTABLEKS                       R5 R6 K39 ["handleStopReason"]
       38 SETTABLEKS                       R4 R6 K40 ["resolveErrorEvent"]
       40 RETURN                           R6 1
