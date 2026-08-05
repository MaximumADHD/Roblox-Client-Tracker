PROTO_0:
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
        7 GETTABLEKS                       R1 R1 K5 ["StreamTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K24 [{["token_limit"] = "token_limit", ["safety_filter"] = "safety_filter", ["max_tool_calls"] = "max_tool_calls", ["quota_exceeded"] = "quota_exceeded", ["timeout"] = "timeout", ["request_failed"] = "request_failed", ["client_error"] = "client_error", ["input_disabled"] = "input_disabled", ["too_many_request"] = "too_many_request", ["invalid_tool_call_json"] = "invalid_tool_call_json", ["api_connection_error"] = "api_connection_error", ["rate_limit_error"] = "rate_limit_error", ["api_status_error"] = "api_status_error", ["generic_error"] = "generic_error", ["input_token_limit_error"] = "input_token_limit_error", ["external_connection_general_error"] = "external_connection_general_error", ["external_connection_quota_exceeded_error"] = "external_connection_quota_exceeded_error", ["external_connection_unauthorized_error"] = "external_connection_unauthorized_error"}]
       11 DUPCLOSURE                       R2 K25 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 DUPTABLE                         R3 K27 [{"handleStopReason"}]
       14 SETTABLEKS                       R2 R3 K26 ["handleStopReason"]
       16 RETURN                           R3 1
