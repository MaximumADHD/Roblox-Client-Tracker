MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AgentClientProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Promise"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K12 [{["MethodNotFound"] = -32601, ["InternalError"] = -32603}]
       15 DUPTABLE                         R3 K31 [{["Initialize"] = "initialize", ["SessionNew"] = "session/new", ["SessionLoad"] = "session/load", ["SessionList"] = "session/list", ["SessionPrompt"] = "session/prompt", ["SessionCancel"] = "session/cancel", ["SessionSetMode"] = "session/set_mode", ["SessionUpdate"] = "session/update", ["SessionRequestPermission"] = "session/request_permission"}]
       16 DUPTABLE                         R4 K54 [{["AgentMessageChunk"] = "agent_message_chunk", ["AgentThoughtChunk"] = "agent_thought_chunk", ["UserMessage"] = "user_message", ["UserMessageChunk"] = "user_message_chunk", ["ToolCall"] = "tool_call", ["ToolCallUpdate"] = "tool_call_update", ["SessionInfoUpdate"] = "session_info_update", ["StateUpdate"] = "state_update", ["Plan"] = "plan", ["AvailableCommandsUpdate"] = "available_commands_update", ["CompactionStatus"] = "_roblox_compaction_status"}]
       17 DUPTABLE                         R5 K65 [{["EndTurn"] = "end_turn", ["MaxTokens"] = "max_tokens", ["MaxTurnRequests"] = "max_turn_requests", ["Refusal"] = "refusal", ["Cancelled"] = "cancelled"}]
       18 DUPTABLE                         R6 K74 [{["AllowOnce"] = "allow_once", ["AllowAlways"] = "allow_always", ["RejectOnce"] = "reject_once", ["RejectAlways"] = "reject_always"}]
       19 DUPTABLE                         R7 K77 [{["Selected"] = "selected", ["Cancelled"] = "cancelled"}]
       20 DUPTABLE                         R8 K86 [{["ErrorCode"], ["Method"], ["SessionUpdateKind"], ["StopReason"], ["PermissionOptionKinds"], ["PermissionOutcomes"], ["LATEST_PROTOCOL_VERSION"] = 2}]
       21 GETIMPORT                        R9 K89 [table.freeze]
       23 MOVE                             R10 R2
       24 CALL                             R9 1 1
       25 SETTABLEKS                       R9 R8 K78 ["ErrorCode"]
       27 GETIMPORT                        R9 K89 [table.freeze]
       29 MOVE                             R10 R3
       30 CALL                             R9 1 1
       31 SETTABLEKS                       R9 R8 K79 ["Method"]
       33 GETIMPORT                        R9 K89 [table.freeze]
       35 MOVE                             R10 R4
       36 CALL                             R9 1 1
       37 SETTABLEKS                       R9 R8 K80 ["SessionUpdateKind"]
       39 GETIMPORT                        R9 K89 [table.freeze]
       41 MOVE                             R10 R5
       42 CALL                             R9 1 1
       43 SETTABLEKS                       R9 R8 K81 ["StopReason"]
       45 GETIMPORT                        R9 K89 [table.freeze]
       47 MOVE                             R10 R6
       48 CALL                             R9 1 1
       49 SETTABLEKS                       R9 R8 K82 ["PermissionOptionKinds"]
       51 GETIMPORT                        R9 K89 [table.freeze]
       53 MOVE                             R10 R7
       54 CALL                             R9 1 1
       55 SETTABLEKS                       R9 R8 K83 ["PermissionOutcomes"]
       57 RETURN                           R8 1
