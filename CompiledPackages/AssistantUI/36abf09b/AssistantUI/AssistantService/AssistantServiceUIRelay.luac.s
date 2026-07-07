PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_callbacks"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["_activeAssistantMessageId"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K4 ["_contentIdByToolCallId"]
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_callbacks"]
        8 GETTABLEKS                       R1 R1 K2 ["addMessage"]
       10 DUPTABLE                         R2 K4 [{"role"}]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["ROLE"]
       14 GETTABLEKS                       R3 R3 K6 ["Assistant"]
       16 SETTABLEKS                       R3 R2 K3 ["role"]
       18 CALL                             R1 1 1
       19 SETTABLEKS                       R1 R0 K0 ["_activeAssistantMessageId"]
       21 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["addContent"]
        4 DUPTABLE                         R3 K4 [{"messageId", "content"}]
        5 NAMECALL                         R4 R0 K5 ["getOrCreateAssistantMessage"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K2 ["messageId"]
       10 DUPTABLE                         R4 K8 [{"type", "text"}]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K9 ["Type"]
       14 SETTABLEKS                       R5 R4 K6 ["type"]
       16 SETTABLEKS                       R1 R4 K7 ["text"]
       18 SETTABLEKS                       R4 R3 K3 ["content"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["addContent"]
        4 DUPTABLE                         R3 K4 [{"messageId", "content"}]
        5 NAMECALL                         R4 R0 K5 ["getOrCreateAssistantMessage"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K2 ["messageId"]
       10 DUPTABLE                         R4 K12 [{["type"], ["thinking"], ["signature"] = "", ["expanded"] = False}]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K13 ["Type"]
       14 SETTABLEKS                       R5 R4 K6 ["type"]
       16 SETTABLEKS                       R1 R4 K7 ["thinking"]
       18 SETTABLEKS                       R4 R3 K3 ["content"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_callbacks"]
        2 GETTABLEKS                       R2 R2 K1 ["addContent"]
        4 DUPTABLE                         R3 K4 [{"messageId", "content"}]
        5 NAMECALL                         R4 R0 K5 ["getOrCreateAssistantMessage"]
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K2 ["messageId"]
       10 DUPTABLE                         R4 K10 [{["type"], ["toolIdentifier"], ["expanded"] = False}]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K11 ["Type"]
       14 SETTABLEKS                       R5 R4 K6 ["type"]
       16 GETTABLEKS                       R5 R1 K12 ["title"]
       18 SETTABLEKS                       R5 R4 K7 ["toolIdentifier"]
       20 SETTABLEKS                       R4 R3 K3 ["content"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K13 ["toolCallId"]
       25 JUMPIFNOT                        R3 ; [+5]
       26 GETTABLEKS                       R3 R0 K14 ["_contentIdByToolCallId"]
       28 GETTABLEKS                       R4 R1 K13 ["toolCallId"]
       30 SETTABLE                         R2 R3 R4
       31 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 LOADNIL                          R1
        4 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["toolCallId"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R4 R0 K1 ["_contentIdByToolCallId"]
        5 GETTABLE                         R3 R4 R2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETTABLEKS                       R4 R0 K2 ["_activeAssistantMessageId"]
       10 JUMPIFNOT                        R3 ; [+1]
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R5 R0 K3 ["_callbacks"]
       15 GETTABLEKS                       R5 R5 K4 ["editContent"]
       17 DUPTABLE                         R6 K8 [{"messageId", "contentId", "transformFn"}]
       18 SETTABLEKS                       R4 R6 K5 ["messageId"]
       20 SETTABLEKS                       R3 R6 K6 ["contentId"]
       22 DUPCLOSURE                       R7 K9 [PROTO_5]
       23 SETTABLEKS                       R7 R6 K7 ["transformFn"]
       25 CALL                             R5 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["sessionUpdate"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["AgentMessageChunk"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+14]
        7 GETTABLEKS                       R6 R1 K2 ["content"]
        9 JUMPIFNOT                        R6 ; [+5]
       10 GETTABLEKS                       R5 R1 K2 ["content"]
       12 GETTABLEKS                       R5 R5 K3 ["text"]
       14 JUMPIF                           R5 ; [+1]
       15 LOADK                            R5 K4 [""]
       16 NAMECALL                         R3 R0 K5 ["_handleMessageChunk"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K6 ["AgentThoughtChunk"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+14]
       25 GETTABLEKS                       R6 R1 K2 ["content"]
       27 JUMPIFNOT                        R6 ; [+5]
       28 GETTABLEKS                       R5 R1 K2 ["content"]
       30 GETTABLEKS                       R5 R5 K3 ["text"]
       32 JUMPIF                           R5 ; [+1]
       33 LOADK                            R5 K4 [""]
       34 NAMECALL                         R3 R0 K7 ["_handleThoughtChunk"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K8 ["ToolCall"]
       41 JUMPIFNOTEQ                      R2 R3 ; [+6]
       43 MOVE                             R5 R1
       44 NAMECALL                         R3 R0 K9 ["_handleToolCall"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K10 ["ToolCallUpdate"]
       51 JUMPIFNOTEQ                      R2 R3 ; [+5]
       53 MOVE                             R5 R1
       54 NAMECALL                         R3 R0 K11 ["_handleToolCallUpdate"]
       56 CALL                             R3 2 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["GenericToolContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K9 ["ContentWidgets"]
       29 GETTABLEKS                       R4 R4 K11 ["TextContentWidget"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Components"]
       36 GETTABLEKS                       R5 R5 K9 ["ContentWidgets"]
       38 GETTABLEKS                       R5 R5 K12 ["ThinkingContentWidget"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K14 ["Acp"]
       48 GETTABLEKS                       R6 R6 K13 ["Types"]
       50 GETTABLEKS                       R6 R6 K15 ["SessionUpdateKind"]
       52 NEWTABLE                         R7 8 0
       54 SETTABLEKS                       R7 R7 K16 ["__index"]
       56 DUPCLOSURE                       R8 K17 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 SETTABLEKS                       R8 R7 K18 ["new"]
       60 DUPCLOSURE                       R8 K19 [PROTO_1]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R8 R7 K20 ["getOrCreateAssistantMessage"]
       64 DUPCLOSURE                       R8 K21 [PROTO_2]
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R8 R7 K22 ["_handleMessageChunk"]
       68 DUPCLOSURE                       R8 K23 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R8 R7 K24 ["_handleThoughtChunk"]
       72 DUPCLOSURE                       R8 K25 [PROTO_4]
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R8 R7 K26 ["_handleToolCall"]
       76 DUPCLOSURE                       R8 K27 [PROTO_6]
       77 SETTABLEKS                       R8 R7 K28 ["_handleToolCallUpdate"]
       79 DUPCLOSURE                       R8 K29 [PROTO_7]
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R8 R7 K30 ["handleUpdate"]
       83 RETURN                           R7 1
