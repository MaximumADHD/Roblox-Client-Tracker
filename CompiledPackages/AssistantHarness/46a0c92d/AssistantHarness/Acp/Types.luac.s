MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K27 [{["Initialize"] = "initialize", ["SessionNew"] = "session/new", ["SessionLoad"] = "session/load", ["SessionList"] = "session/list", ["SessionPrompt"] = "session/prompt", ["SessionCancel"] = "session/cancel", ["SessionSetMode"] = "session/set_mode", ["SessionUpdate"] = "session/update", ["SessionRequestPermission"] = "session/request_permission"}]
       22 DUPTABLE                         R4 K44 [{["AgentMessageChunk"] = "agent_message_chunk", ["AgentThoughtChunk"] = "agent_thought_chunk", ["UserMessageChunk"] = "user_message_chunk", ["ToolCall"] = "tool_call", ["ToolCallUpdate"] = "tool_call_update", ["SessionInfoUpdate"] = "session_info_update", ["Plan"] = "plan", ["AvailableCommandsUpdate"] = "available_commands_update"}]
       23 DUPTABLE                         R5 K53 [{["AllowOnce"] = "allow_once", ["AllowAlways"] = "allow_always", ["RejectOnce"] = "reject_once", ["RejectAlways"] = "reject_always"}]
       24 DUPTABLE                         R6 K58 [{["Selected"] = "selected", ["Cancelled"] = "cancelled"}]
       25 DUPTABLE                         R7 K65 [{["Method"], ["SessionUpdateKind"], ["PermissionOptionKinds"], ["PermissionOutcomes"], ["LATEST_PROTOCOL_VERSION"] = 1}]
       26 GETIMPORT                        R8 K68 [table.freeze]
       28 MOVE                             R9 R3
       29 CALL                             R8 1 1
       30 SETTABLEKS                       R8 R7 K59 ["Method"]
       32 GETIMPORT                        R8 K68 [table.freeze]
       34 MOVE                             R9 R4
       35 CALL                             R8 1 1
       36 SETTABLEKS                       R8 R7 K60 ["SessionUpdateKind"]
       38 GETIMPORT                        R8 K68 [table.freeze]
       40 MOVE                             R9 R5
       41 CALL                             R8 1 1
       42 SETTABLEKS                       R8 R7 K61 ["PermissionOptionKinds"]
       44 GETIMPORT                        R8 K68 [table.freeze]
       46 MOVE                             R9 R6
       47 CALL                             R8 1 1
       48 SETTABLEKS                       R8 R7 K62 ["PermissionOutcomes"]
       50 RETURN                           R7 1
