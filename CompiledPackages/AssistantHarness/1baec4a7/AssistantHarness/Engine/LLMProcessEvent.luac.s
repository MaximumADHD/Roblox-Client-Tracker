PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["needsCompaction"]
        3 JUMPIFNOT                        R0 ; [+95]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["observer"]
        7 GETTABLEKS                       R0 R0 K2 ["onContentStart"]
        9 DUPTABLE                         R1 K5 [{["type"] = "compaction_status"}]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K6 ["compact"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K7 ["messages"]
       17 DUPTABLE                         R3 K15 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K8 ["requestLLM"]
       21 SETTABLEKS                       R4 R3 K8 ["requestLLM"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K9 ["threadId"]
       26 SETTABLEKS                       R4 R3 K9 ["threadId"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R4 R4 K10 ["compactedStore"]
       31 SETTABLEKS                       R4 R3 K10 ["compactedStore"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K11 ["selectedModel"]
       36 SETTABLEKS                       R4 R3 K11 ["selectedModel"]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K12 ["selectedProvider"]
       41 SETTABLEKS                       R4 R3 K12 ["selectedProvider"]
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K13 ["apiKeys"]
       46 SETTABLEKS                       R4 R3 K13 ["apiKeys"]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K14 ["uiMessageCount"]
       51 SETTABLEKS                       R4 R3 K14 ["uiMessageCount"]
       53 CALL                             R1 2 1
       54 GETUPVAL                         R2 3
       55 GETTABLEKS                       R3 R1 K7 ["messages"]
       57 SETTABLEKS                       R3 R2 K7 ["messages"]
       59 GETUPVAL                         R2 3
       60 GETTABLEKS                       R3 R1 K10 ["compactedStore"]
       62 SETTABLEKS                       R3 R2 K10 ["compactedStore"]
       64 GETUPVAL                         R2 4
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R3 R3 K10 ["compactedStore"]
       68 SETTABLEKS                       R3 R2 K10 ["compactedStore"]
       70 GETUPVAL                         R2 4
       71 GETUPVAL                         R3 3
       72 GETTABLEKS                       R3 R3 K7 ["messages"]
       74 SETTABLEKS                       R3 R2 K16 ["initialMessages"]
       76 JUMPIFNOT                        R0 ; [+15]
       77 GETUPVAL                         R2 1
       78 GETTABLEKS                       R2 R2 K1 ["observer"]
       80 GETTABLEKS                       R2 R2 K17 ["onContentDelta"]
       82 MOVE                             R3 R0
       83 DUPTABLE                         R4 K19 [{["type"] = "summary_delta"}]
       84 CALL                             R2 2 0
       85 GETUPVAL                         R2 1
       86 GETTABLEKS                       R2 R2 K1 ["observer"]
       88 GETTABLEKS                       R2 R2 K20 ["onContentFinished"]
       90 MOVE                             R3 R0
       91 CALL                             R2 1 0
       92 GETUPVAL                         R2 5
       93 GETTABLEKS                       R2 R2 K21 ["isCanceled"]
       95 CALL                             R2 0 1
       96 JUMPIFNOT                        R2 ; [+12]
       97 RETURN                           R0 0
       98 JUMP                             ; [+10]
       99 GETUPVAL                         R0 6
      100 GETTABLEKS                       R0 R0 K22 ["FFlagAssistantStopIfCanceledNonCompact"]
      102 JUMPIFNOT                        R0 ; [+6]
      103 GETUPVAL                         R0 5
      104 GETTABLEKS                       R0 R0 K21 ["isCanceled"]
      106 CALL                             R0 0 1
      107 JUMPIFNOT                        R0 ; [+1]
      108 RETURN                           R0 0
      109 DUPTABLE                         R0 K32 [{["threadId"], ["messages"], ["tools"], ["system"], ["messageGuid"], ["isFirstMessage"] = False, ["isAgenticMode"], ["apiKeys"], ["selectedModel"], ["selectedProvider"], ["conversationUrl"], ["isSubagent"], ["assistantMode"]}]
      110 GETUPVAL                         R1 1
      111 GETTABLEKS                       R1 R1 K9 ["threadId"]
      113 SETTABLEKS                       R1 R0 K9 ["threadId"]
      115 GETUPVAL                         R1 3
      116 GETTABLEKS                       R1 R1 K7 ["messages"]
      118 SETTABLEKS                       R1 R0 K7 ["messages"]
      120 GETUPVAL                         R1 1
      121 GETTABLEKS                       R1 R1 K23 ["tools"]
      123 SETTABLEKS                       R1 R0 K23 ["tools"]
      125 GETUPVAL                         R1 1
      126 GETTABLEKS                       R1 R1 K33 ["systemMessage"]
      128 SETTABLEKS                       R1 R0 K24 ["system"]
      130 GETUPVAL                         R1 1
      131 GETTABLEKS                       R1 R1 K25 ["messageGuid"]
      133 SETTABLEKS                       R1 R0 K25 ["messageGuid"]
      135 GETUPVAL                         R1 3
      136 GETTABLEKS                       R1 R1 K28 ["isAgenticMode"]
      138 SETTABLEKS                       R1 R0 K28 ["isAgenticMode"]
      140 GETUPVAL                         R1 1
      141 GETTABLEKS                       R1 R1 K13 ["apiKeys"]
      143 SETTABLEKS                       R1 R0 K13 ["apiKeys"]
      145 GETUPVAL                         R1 1
      146 GETTABLEKS                       R1 R1 K11 ["selectedModel"]
      148 SETTABLEKS                       R1 R0 K11 ["selectedModel"]
      150 GETUPVAL                         R1 1
      151 GETTABLEKS                       R1 R1 K12 ["selectedProvider"]
      153 SETTABLEKS                       R1 R0 K12 ["selectedProvider"]
      155 GETUPVAL                         R1 1
      156 GETTABLEKS                       R1 R1 K29 ["conversationUrl"]
      158 SETTABLEKS                       R1 R0 K29 ["conversationUrl"]
      160 GETUPVAL                         R1 1
      161 GETTABLEKS                       R1 R1 K30 ["isSubagent"]
      163 SETTABLEKS                       R1 R0 K30 ["isSubagent"]
      165 GETUPVAL                         R1 1
      166 GETTABLEKS                       R1 R1 K31 ["assistantMode"]
      168 SETTABLEKS                       R1 R0 K31 ["assistantMode"]
      170 GETUPVAL                         R1 7
      171 GETUPVAL                         R2 4
      172 GETUPVAL                         R3 0
      173 GETTABLEKS                       R3 R3 K34 ["resumedToolCallCount"]
      175 GETUPVAL                         R4 0
      176 GETTABLEKS                       R4 R4 K35 ["inputTokenLimitRetryCount"]
      178 CALL                             R1 3 1
      179 FASTCALL2K                       ASSERT R1 K36 ; [+5]
      181 MOVE                             R3 R1
      182 LOADK                            R4 K36 ["Failed to create new session"]
      183 GETIMPORT                        R2 K38 [assert]
      185 CALL                             R2 2 0
      186 SETUPVAL                         R1 8
      187 GETUPVAL                         R2 1
      188 GETTABLEKS                       R2 R2 K8 ["requestLLM"]
      190 MOVE                             R3 R0
      191 GETTABLEKS                       R4 R1 K39 ["processEvent"]
      193 CALL                             R2 2 0
      194 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["compactedStore"]
        7 SETTABLEKS                       R1 R0 K3 ["compactedStore"]
        9 GETIMPORT                        R1 K6 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observer"]
        3 GETTABLEKS                       R1 R1 K1 ["onPromptEnd"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["observer"]
        9 GETTABLEKS                       R1 R1 K1 ["onPromptEnd"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["setInputEnabled"]
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K3 ["showError"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K4 ["logRequestStop"]
       25 DUPTABLE                         R2 K11 [{["requestJourneyDuration"], ["requestEndReason"], ["messageGuid"], ["sessionId"], ["message"] = ""}]
       26 GETIMPORT                        R4 K14 [os.clock]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K15 ["requestStartTime"]
       32 SUB                              R3 R4 R5
       33 SETTABLEKS                       R3 R2 K5 ["requestJourneyDuration"]
       35 SETTABLEKS                       R0 R2 K6 ["requestEndReason"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K7 ["messageGuid"]
       40 SETTABLEKS                       R3 R2 K7 ["messageGuid"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K16 ["conversationSessionId"]
       45 SETTABLEKS                       R3 R2 K8 ["sessionId"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K17 ["messageId"]
       50 CALL                             R1 2 0
       51 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["currentToolInput"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K6 [{[1] = "tool_use", ["id"], ["name"], ["input"], ["thoughtSignature"]}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["id"]
        4 SETTABLEKS                       R1 R0 K2 ["id"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["name"]
        9 SETTABLEKS                       R1 R0 K3 ["name"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["input"]
       14 SETTABLEKS                       R1 R0 K4 ["input"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K5 ["thoughtSignature"]
       19 SETTABLEKS                       R1 R0 K5 ["thoughtSignature"]
       21 GETUPVAL                         R1 1
       22 JUMPIFNOT                        R1 ; [+8]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K7 ["observer"]
       26 GETTABLEKS                       R1 R1 K8 ["onPreExecuteToolUse"]
       28 GETUPVAL                         R2 1
       29 MOVE                             R3 R0
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 3
       32 GETTABLEKS                       R1 R1 K9 ["getTimestampMilliseconds"]
       34 CALL                             R1 0 1
       35 GETUPVAL                         R2 4
       36 JUMPIFNOT                        R2 ; [+52]
       37 DUPTABLE                         R2 K16 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K2 ["id"]
       41 SETTABLEKS                       R3 R2 K2 ["id"]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K3 ["name"]
       46 SETTABLEKS                       R3 R2 K3 ["name"]
       48 NEWTABLE                         R3 0 1
       50 DUPTABLE                         R4 K18 [{[1] = "text", ["text"]}]
       51 LOADK                            R5 K19 ["Error: The tool input was not valid JSON and could not be parsed. Please retry the tool call with a valid JSON object. Original input: %*"]
       52 GETUPVAL                         R7 4
       53 NAMECALL                         R5 R5 K20 ["format"]
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K17 ["text"]
       58 SETLIST                          R3 R4 1 [1]
       60 SETTABLEKS                       R3 R2 K11 ["content"]
       62 SETTABLEKS                       R1 R2 K14 ["startTime"]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K9 ["getTimestampMilliseconds"]
       67 CALL                             R3 0 1
       68 SETTABLEKS                       R3 R2 K15 ["startTimeAfterConfirmation"]
       70 GETUPVAL                         R3 1
       71 JUMPIFNOT                        R3 ; [+8]
       72 GETUPVAL                         R3 2
       73 GETTABLEKS                       R3 R3 K7 ["observer"]
       75 GETTABLEKS                       R3 R3 K21 ["onToolResult"]
       77 GETUPVAL                         R4 1
       78 MOVE                             R5 R2
       79 CALL                             R3 2 0
       80 DUPTABLE                         R3 K25 [{"toolUse", "toolResult", "invocationIndex"}]
       81 SETTABLEKS                       R0 R3 K22 ["toolUse"]
       83 SETTABLEKS                       R2 R3 K23 ["toolResult"]
       85 GETUPVAL                         R4 5
       86 SETTABLEKS                       R4 R3 K24 ["invocationIndex"]
       88 RETURN                           R3 1
       89 GETUPVAL                         R2 2
       90 GETTABLEKS                       R2 R2 K7 ["observer"]
       92 GETTABLEKS                       R2 R2 K26 ["checkToolConfirmationRequestAsync"]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K3 ["name"]
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K4 ["input"]
      100 CALL                             R2 2 1
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R3 R3 K7 ["observer"]
      104 GETTABLEKS                       R3 R3 K27 ["getToolCallOptions"]
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R4 R4 K3 ["name"]
      109 CALL                             R3 1 1
      110 GETUPVAL                         R4 3
      111 GETTABLEKS                       R4 R4 K9 ["getTimestampMilliseconds"]
      113 CALL                             R4 0 1
      114 JUMPIFNOT                        R2 ; [+160]
      115 LOADB                            R5 0
      116 LOADNIL                          R6
      117 LOADNIL                          R7
      118 GETUPVAL                         R8 2
      119 GETTABLEKS                       R8 R8 K28 ["onToolCall"]
      121 DUPTABLE                         R9 K33 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      122 GETUPVAL                         R10 0
      123 GETTABLEKS                       R10 R10 K3 ["name"]
      125 SETTABLEKS                       R10 R9 K3 ["name"]
      127 GETUPVAL                         R10 0
      128 GETTABLEKS                       R10 R10 K4 ["input"]
      130 SETTABLEKS                       R10 R9 K29 ["arguments"]
      132 SETTABLEKS                       R3 R9 K30 ["toolCallOptions"]
      134 GETUPVAL                         R10 1
      135 SETTABLEKS                       R10 R9 K31 ["contentId"]
      137 GETUPVAL                         R10 0
      138 GETTABLEKS                       R10 R10 K2 ["id"]
      140 SETTABLEKS                       R10 R9 K32 ["toolId"]
      142 CALL                             R8 1 1
      143 GETUPVAL                         R9 6
      144 GETTABLEKS                       R9 R9 K34 ["pendingToolCallPromises"]
      146 LOADB                            R10 1
      147 SETTABLE                         R10 R9 R8
      148 LOADK                            R9 K35 ["Started"]
      149 NAMECALL                         R10 R8 K36 ["awaitStatus"]
      151 CALL                             R10 1 2
      152 MOVE                             R9 R10
      153 MOVE                             R6 R11
      154 JUMPIFEQKS                       R9 K37 ["Resolved"] ; [+2]
      156 LOADB                            R5 0 +1
      157 LOADB                            R5 1
      158 GETUPVAL                         R10 6
      159 GETTABLEKS                       R10 R10 K34 ["pendingToolCallPromises"]
      161 LOADNIL                          R11
      162 SETTABLE                         R11 R10 R8
      163 JUMPIF                           R5 ; [+15]
      164 GETUPVAL                         R10 7
      165 GETTABLEKS                       R10 R10 K38 ["FFlagDebugLogAssistantUI"]
      167 JUMPIFNOT                        R10 ; [+6]
      168 GETIMPORT                        R10 K40 [warn]
      170 LOADK                            R11 K41 ["ToolCall failed: "]
      171 MOVE                             R12 R9
      172 MOVE                             R13 R6
      173 CALL                             R10 3 0
      174 JUMPIFNOTEQKS                    R9 K42 ["Cancelled"] ; [+3]
      176 LOADK                            R7 K43 ["tool_cancelled"]
      177 JUMP                             ; [+1]
      178 LOADK                            R7 K44 ["tool_error"]
      179 LOADNIL                          R10
      180 JUMPIFNOT                        R5 ; [+5]
      181 JUMPIFNOT                        R6 ; [+3]
      182 GETTABLEKS                       R11 R6 K11 ["content"]
      184 JUMPIF                           R11 ; [+1]
      185 LOADK                            R7 K44 ["tool_error"]
      186 JUMPIFNOT                        R7 ; [+41]
      187 LOADNIL                          R11
      188 JUMPIFNOTEQKS                    R7 K43 ["tool_cancelled"] ; [+3]
      190 LOADK                            R11 K45 ["The tool call was cancelled by the user."]
      191 JUMP                             ; [+9]
      192 JUMPIFNOTEQKS                    R7 K44 ["tool_error"] ; [+3]
      194 LOADK                            R11 K46 ["Error: Tool call failed. Please try a different approach."]
      195 JUMP                             ; [+5]
      196 GETUPVAL                         R12 8
      197 GETTABLEKS                       R12 R12 K47 ["assertNever"]
      199 MOVE                             R13 R7
      200 CALL                             R12 1 0
      201 DUPTABLE                         R12 K18 [{[1] = "text", ["text"]}]
      202 SETTABLEKS                       R11 R12 K17 ["text"]
      204 DUPTABLE                         R13 K16 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
      205 GETUPVAL                         R14 0
      206 GETTABLEKS                       R14 R14 K2 ["id"]
      208 SETTABLEKS                       R14 R13 K2 ["id"]
      210 GETUPVAL                         R14 0
      211 GETTABLEKS                       R14 R14 K3 ["name"]
      213 SETTABLEKS                       R14 R13 K3 ["name"]
      215 NEWTABLE                         R14 0 1
      217 MOVE                             R15 R12
      218 SETLIST                          R14 R15 1 [1]
      220 SETTABLEKS                       R14 R13 K11 ["content"]
      222 SETTABLEKS                       R1 R13 K14 ["startTime"]
      224 SETTABLEKS                       R4 R13 K15 ["startTimeAfterConfirmation"]
      226 MOVE                             R10 R13
      227 JUMP                             ; [+28]
      228 DUPTABLE                         R11 K49 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      229 GETUPVAL                         R12 0
      230 GETTABLEKS                       R12 R12 K2 ["id"]
      232 SETTABLEKS                       R12 R11 K2 ["id"]
      234 GETUPVAL                         R12 0
      235 GETTABLEKS                       R12 R12 K3 ["name"]
      237 SETTABLEKS                       R12 R11 K3 ["name"]
      239 GETTABLEKS                       R12 R6 K11 ["content"]
      241 SETTABLEKS                       R12 R11 K11 ["content"]
      243 GETTABLEKS                       R12 R6 K12 ["isError"]
      245 SETTABLEKS                       R12 R11 K12 ["isError"]
      247 GETTABLEKS                       R12 R6 K48 ["structuredContent"]
      249 SETTABLEKS                       R12 R11 K48 ["structuredContent"]
      251 SETTABLEKS                       R1 R11 K14 ["startTime"]
      253 SETTABLEKS                       R4 R11 K15 ["startTimeAfterConfirmation"]
      255 MOVE                             R10 R11
      256 GETUPVAL                         R11 1
      257 JUMPIFNOT                        R11 ; [+8]
      258 GETUPVAL                         R11 2
      259 GETTABLEKS                       R11 R11 K7 ["observer"]
      261 GETTABLEKS                       R11 R11 K21 ["onToolResult"]
      263 GETUPVAL                         R12 1
      264 MOVE                             R13 R10
      265 CALL                             R11 2 0
      266 DUPTABLE                         R11 K25 [{"toolUse", "toolResult", "invocationIndex"}]
      267 SETTABLEKS                       R0 R11 K22 ["toolUse"]
      269 SETTABLEKS                       R10 R11 K23 ["toolResult"]
      271 GETUPVAL                         R12 5
      272 SETTABLEKS                       R12 R11 K24 ["invocationIndex"]
      274 RETURN                           R11 1
      275 DUPTABLE                         R5 K51 [{[1] = "text", ["text"] = "The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."}]
      276 DUPTABLE                         R6 K53 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      277 GETUPVAL                         R7 0
      278 GETTABLEKS                       R7 R7 K2 ["id"]
      280 SETTABLEKS                       R7 R6 K2 ["id"]
      282 GETUPVAL                         R7 0
      283 GETTABLEKS                       R7 R7 K3 ["name"]
      285 SETTABLEKS                       R7 R6 K3 ["name"]
      287 NEWTABLE                         R7 0 1
      289 MOVE                             R8 R5
      290 SETLIST                          R7 R8 1 [1]
      292 SETTABLEKS                       R7 R6 K11 ["content"]
      294 DUPTABLE                         R7 K55 [{["rejected"] = True}]
      295 SETTABLEKS                       R7 R6 K48 ["structuredContent"]
      297 SETTABLEKS                       R1 R6 K14 ["startTime"]
      299 SETTABLEKS                       R4 R6 K15 ["startTimeAfterConfirmation"]
      301 GETUPVAL                         R7 1
      302 JUMPIFNOT                        R7 ; [+8]
      303 GETUPVAL                         R7 2
      304 GETTABLEKS                       R7 R7 K7 ["observer"]
      306 GETTABLEKS                       R7 R7 K21 ["onToolResult"]
      308 GETUPVAL                         R8 1
      309 MOVE                             R9 R6
      310 CALL                             R7 2 0
      311 DUPTABLE                         R7 K25 [{"toolUse", "toolResult", "invocationIndex"}]
      312 SETTABLEKS                       R0 R7 K22 ["toolUse"]
      314 SETTABLEKS                       R6 R7 K23 ["toolResult"]
      316 GETUPVAL                         R8 5
      317 SETTABLEKS                       R8 R7 K24 ["invocationIndex"]
      319 RETURN                           R7 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentTool"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["currentContentId"]
        6 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K2 ["Expected currentTool to be set"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["toolCallThreads"]
       16 LENGTH                           R3 R4
       17 ADDK                             R2 R3 K5 [1]
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["currentToolInput"]
       23 JUMPIFNOTEQKS                    R5 K8 [""] ; [+9]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K9 ["Types"]
       28 GETTABLEKS                       R5 R5 K10 ["emptyObject"]
       30 CALL                             R5 0 1
       31 MOVE                             R3 R5
       32 JUMP                             ; [+50]
       33 GETIMPORT                        R5 K12 [pcall]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CALL                             R5 1 2
       39 JUMPIF                           R5 ; [+33]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K13 ["FFlagDebugLogAssistantUI"]
       43 JUMPIFNOT                        R7 ; [+8]
       44 GETIMPORT                        R7 K15 [warn]
       46 LOADK                            R8 K16 ["Tool call input JSON parse failed: "]
       47 MOVE                             R9 R6
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K7 ["currentToolInput"]
       51 CALL                             R7 3 0
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K17 ["get"]
       55 CALL                             R7 0 1
       56 GETTABLEKS                       R7 R7 K18 ["eventLogger"]
       58 GETTABLEKS                       R7 R7 K19 ["logErrorEvent"]
       60 LOADK                            R8 K20 ["invalid_tool_call_json"]
       61 CALL                             R7 1 0
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R4 R7 K7 ["currentToolInput"]
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K9 ["Types"]
       68 GETTABLEKS                       R7 R7 K10 ["emptyObject"]
       70 CALL                             R7 0 1
       71 MOVE                             R3 R7
       72 JUMP                             ; [+10]
       73 GETUPVAL                         R7 2
       74 GETTABLEKS                       R7 R7 K21 ["FFlagAssistantDisableSafeEmptyTableJsonEncode"]
       76 JUMPIFNOT                        R7 ; [+2]
       77 MOVE                             R3 R6
       78 JUMP                             ; [+4]
       79 GETUPVAL                         R7 4
       80 MOVE                             R8 R6
       81 CALL                             R7 1 1
       82 MOVE                             R3 R7
       83 FASTCALL2K                       ASSERT R3 K22 ; [+5]
       85 MOVE                             R6 R3
       86 LOADK                            R7 K22 ["Expected parsedInput to be set"]
       87 GETIMPORT                        R5 K4 [assert]
       89 CALL                             R5 2 0
       90 SETTABLEKS                       R3 R0 K23 ["input"]
       92 NEWCLOSURE                       R5 P1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          REF R4
       98 CAPTURE                          VAL R2
       99 CAPTURE                          UPVAL U0
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          UPVAL U7
      102 GETUPVAL                         R6 8
      103 GETTABLEKS                       R6 R6 K24 ["wrapFunction"]
      105 MOVE                             R7 R5
      106 CALL                             R6 1 1
      107 GETUPVAL                         R8 0
      108 GETTABLEKS                       R8 R8 K6 ["toolCallThreads"]
      110 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      112 MOVE                             R9 R6
      113 GETIMPORT                        R7 K27 [table.insert]
      115 CALL                             R7 2 0
      116 GETUPVAL                         R7 0
      117 LOADK                            R8 K8 [""]
      118 SETTABLEKS                       R8 R7 K28 ["currentText"]
      120 GETUPVAL                         R7 0
      121 LOADK                            R8 K8 [""]
      122 SETTABLEKS                       R8 R7 K29 ["currentSignature"]
      124 GETUPVAL                         R7 0
      125 LOADNIL                          R8
      126 SETTABLEKS                       R8 R7 K0 ["currentTool"]
      128 GETUPVAL                         R7 0
      129 LOADK                            R8 K8 [""]
      130 SETTABLEKS                       R8 R7 K7 ["currentToolInput"]
      132 GETUPVAL                         R7 0
      133 LOADNIL                          R8
      134 SETTABLEKS                       R8 R7 K30 ["currentContentType"]
      136 CLOSEUPVALS                      R4
      137 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentText"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+24]
        5 DUPTABLE                         R0 K4 [{["type"] = "text", ["text"]}]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["currentText"]
        9 SETTABLEKS                       R1 R0 K3 ["text"]
       11 DUPTABLE                         R1 K8 [{["role"] = "assistant", ["content"]}]
       12 NEWTABLE                         R2 0 1
       14 MOVE                             R3 R0
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K7 ["content"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K9 ["messages"]
       22 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       24 MOVE                             R4 R1
       25 GETIMPORT                        R2 K12 [table.insert]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R0 0
       29 LOADK                            R1 K1 [""]
       30 SETTABLEKS                       R1 R0 K0 ["currentText"]
       32 GETUPVAL                         R0 0
       33 LOADK                            R1 K1 [""]
       34 SETTABLEKS                       R1 R0 K13 ["currentSignature"]
       36 GETUPVAL                         R0 0
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K14 ["currentTool"]
       40 GETUPVAL                         R0 0
       41 LOADK                            R1 K1 [""]
       42 SETTABLEKS                       R1 R0 K15 ["currentToolInput"]
       44 GETUPVAL                         R0 0
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K16 ["currentContentType"]
       48 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentText"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["currentSignature"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+90]
       10 DUPTABLE                         R0 K6 [{["type"] = "thinking", ["thinking"], ["signature"]}]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["currentText"]
       14 SETTABLEKS                       R1 R0 K4 ["thinking"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K2 ["currentSignature"]
       19 SETTABLEKS                       R1 R0 K5 ["signature"]
       21 DUPTABLE                         R1 K10 [{["role"] = "assistant", ["content"]}]
       22 NEWTABLE                         R2 0 1
       24 MOVE                             R3 R0
       25 SETLIST                          R2 R3 1 [1]
       27 SETTABLEKS                       R2 R1 K9 ["content"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K11 ["messages"]
       32 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       34 MOVE                             R4 R1
       35 GETIMPORT                        R2 K14 [table.insert]
       37 CALL                             R2 2 0
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K15 ["get"]
       41 CALL                             R2 0 1
       42 GETTABLEKS                       R2 R2 K16 ["eventLogger"]
       44 GETTABLEKS                       R2 R2 K17 ["logThinkingBlock"]
       46 DUPTABLE                         R3 K25 [{"messageGuid", "sessionId", "thinkingText", "isSubagent", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K18 ["messageGuid"]
       50 SETTABLEKS                       R4 R3 K18 ["messageGuid"]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R4 R4 K26 ["conversationSessionId"]
       55 SETTABLEKS                       R4 R3 K19 ["sessionId"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K0 ["currentText"]
       60 SETTABLEKS                       R4 R3 K20 ["thinkingText"]
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R5 R5 K21 ["isSubagent"]
       65 JUMPIFEQKB                       R5 TRUE ; [+2]
       67 LOADB                            R4 0 +1
       68 LOADB                            R4 1
       69 SETTABLEKS                       R4 R3 K21 ["isSubagent"]
       71 GETUPVAL                         R4 2
       72 GETTABLEKS                       R4 R4 K22 ["currentSubagent"]
       74 SETTABLEKS                       R4 R3 K22 ["currentSubagent"]
       76 GETUPVAL                         R4 2
       77 GETTABLEKS                       R4 R4 K23 ["parentMessageGuid"]
       79 SETTABLEKS                       R4 R3 K23 ["parentMessageGuid"]
       81 GETUPVAL                         R4 2
       82 GETTABLEKS                       R4 R4 K24 ["parentToolId"]
       84 SETTABLEKS                       R4 R3 K24 ["parentToolId"]
       86 CALL                             R2 1 0
       87 GETUPVAL                         R2 0
       88 LOADK                            R3 K1 [""]
       89 SETTABLEKS                       R3 R2 K0 ["currentText"]
       91 GETUPVAL                         R2 0
       92 LOADK                            R3 K1 [""]
       93 SETTABLEKS                       R3 R2 K2 ["currentSignature"]
       95 GETUPVAL                         R2 0
       96 LOADNIL                          R3
       97 SETTABLEKS                       R3 R2 K27 ["currentContentType"]
       99 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["contentBlock"]
        2 GETTABLEKS                       R2 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["text"] ; [+14]
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K3 [""]
        8 SETTABLEKS                       R3 R2 K4 ["currentText"]
       10 GETUPVAL                         R2 0
       11 LOADK                            R3 K3 [""]
       12 SETTABLEKS                       R3 R2 K5 ["currentSignature"]
       14 GETUPVAL                         R2 0
       15 LOADK                            R3 K2 ["text"]
       16 SETTABLEKS                       R3 R2 K6 ["currentContentType"]
       18 JUMP                             ; [+71]
       19 GETTABLEKS                       R2 R1 K1 ["type"]
       21 JUMPIFNOTEQKS                    R2 K7 ["image"] ; [+6]
       23 GETUPVAL                         R2 0
       24 LOADK                            R3 K7 ["image"]
       25 SETTABLEKS                       R3 R2 K6 ["currentContentType"]
       27 JUMP                             ; [+62]
       28 GETTABLEKS                       R2 R1 K1 ["type"]
       30 JUMPIFNOTEQKS                    R2 K8 ["tool_use"] ; [+43]
       32 GETUPVAL                         R2 0
       33 DUPTABLE                         R3 K13 [{"name", "id", "input", "thoughtSignature"}]
       34 GETTABLEKS                       R4 R1 K9 ["name"]
       36 SETTABLEKS                       R4 R3 K9 ["name"]
       38 GETTABLEKS                       R4 R1 K10 ["id"]
       40 SETTABLEKS                       R4 R3 K10 ["id"]
       42 NEWTABLE                         R4 0 0
       44 SETTABLEKS                       R4 R3 K11 ["input"]
       46 GETTABLEKS                       R4 R1 K12 ["thoughtSignature"]
       48 SETTABLEKS                       R4 R3 K12 ["thoughtSignature"]
       50 SETTABLEKS                       R3 R2 K14 ["currentTool"]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K14 ["currentTool"]
       55 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       57 LOADK                            R4 K15 ["Expected currentTool to be set"]
       58 GETIMPORT                        R2 K17 [assert]
       60 CALL                             R2 2 0
       61 GETUPVAL                         R2 0
       62 LOADK                            R3 K3 [""]
       63 SETTABLEKS                       R3 R2 K18 ["currentToolInput"]
       65 GETUPVAL                         R2 0
       66 LOADK                            R3 K19 ["tool"]
       67 SETTABLEKS                       R3 R2 K6 ["currentContentType"]
       69 GETUPVAL                         R2 0
       70 LOADNIL                          R3
       71 SETTABLEKS                       R3 R2 K20 ["currentContentId"]
       73 JUMP                             ; [+16]
       74 GETTABLEKS                       R2 R1 K1 ["type"]
       76 JUMPIFNOTEQKS                    R2 K21 ["thinking"] ; [+13]
       78 GETUPVAL                         R2 0
       79 LOADK                            R3 K3 [""]
       80 SETTABLEKS                       R3 R2 K4 ["currentText"]
       82 GETUPVAL                         R2 0
       83 LOADK                            R3 K3 [""]
       84 SETTABLEKS                       R3 R2 K5 ["currentSignature"]
       86 GETUPVAL                         R2 0
       87 LOADK                            R3 K21 ["thinking"]
       88 SETTABLEKS                       R3 R2 K6 ["currentContentType"]
       90 GETUPVAL                         R2 0
       91 GETUPVAL                         R3 1
       92 GETTABLEKS                       R3 R3 K22 ["observer"]
       94 GETTABLEKS                       R3 R3 K23 ["onContentStart"]
       96 GETTABLEKS                       R4 R0 K0 ["contentBlock"]
       98 CALL                             R3 1 1
       99 SETTABLEKS                       R3 R2 K20 ["currentContentId"]
      101 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["delta"]
        2 GETTABLEKS                       R2 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["text_delta"] ; [+29]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["currentText"]
        9 GETTABLEKS                       R5 R1 K4 ["text"]
       11 CONCAT                           R3 R4 R5
       12 SETTABLEKS                       R3 R2 K3 ["currentText"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["currentContentId"]
       17 JUMPIFNOT                        R2 ; [+109]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K6 ["observer"]
       21 GETTABLEKS                       R2 R2 K7 ["onContentDelta"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["currentContentId"]
       26 DUPTABLE                         R4 K8 [{["type"] = "text_delta", ["text"]}]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K3 ["currentText"]
       30 SETTABLEKS                       R5 R4 K4 ["text"]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R2 R1 K1 ["type"]
       36 JUMPIFNOTEQKS                    R2 K9 ["json_delta"] ; [+46]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R4 R2 K10 ["currentToolInput"]
       41 GETTABLEKS                       R5 R1 K11 ["jsonDelta"]
       43 CONCAT                           R3 R4 R5
       44 SETTABLEKS                       R3 R2 K10 ["currentToolInput"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K5 ["currentContentId"]
       49 JUMPIFNOT                        R2 ; [+77]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K12 ["currentTool"]
       53 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       55 LOADK                            R4 K13 ["Expected currentTool to be set"]
       56 GETIMPORT                        R2 K15 [assert]
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K6 ["observer"]
       62 GETTABLEKS                       R2 R2 K7 ["onContentDelta"]
       64 GETUPVAL                         R3 0
       65 GETTABLEKS                       R3 R3 K5 ["currentContentId"]
       67 DUPTABLE                         R4 K16 [{["type"] = "json_delta", ["jsonDelta"]}]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K10 ["currentToolInput"]
       71 SETTABLEKS                       R5 R4 K11 ["jsonDelta"]
       73 DUPTABLE                         R5 K18 [{"toolName"}]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K12 ["currentTool"]
       77 GETTABLEKS                       R6 R6 K19 ["name"]
       79 SETTABLEKS                       R6 R5 K17 ["toolName"]
       81 CALL                             R2 3 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R2 R1 K1 ["type"]
       85 JUMPIFNOTEQKS                    R2 K20 ["thinking_delta"] ; [+41]
       87 GETUPVAL                         R2 0
       88 GETTABLEKS                       R4 R2 K3 ["currentText"]
       90 GETTABLEKS                       R5 R1 K21 ["thinking"]
       92 CONCAT                           R3 R4 R5
       93 SETTABLEKS                       R3 R2 K3 ["currentText"]
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R4 R2 K22 ["currentSignature"]
       98 GETTABLEKS                       R5 R1 K23 ["signature"]
      100 CONCAT                           R3 R4 R5
      101 SETTABLEKS                       R3 R2 K22 ["currentSignature"]
      103 GETUPVAL                         R2 0
      104 GETTABLEKS                       R2 R2 K5 ["currentContentId"]
      106 JUMPIFNOT                        R2 ; [+20]
      107 GETUPVAL                         R2 1
      108 GETTABLEKS                       R2 R2 K6 ["observer"]
      110 GETTABLEKS                       R2 R2 K7 ["onContentDelta"]
      112 GETUPVAL                         R3 0
      113 GETTABLEKS                       R3 R3 K5 ["currentContentId"]
      115 DUPTABLE                         R4 K24 [{["type"] = "thinking_delta", ["thinking"], ["signature"]}]
      116 GETUPVAL                         R5 0
      117 GETTABLEKS                       R5 R5 K3 ["currentText"]
      119 SETTABLEKS                       R5 R4 K21 ["thinking"]
      121 GETUPVAL                         R5 0
      122 GETTABLEKS                       R5 R5 K22 ["currentSignature"]
      124 SETTABLEKS                       R5 R4 K23 ["signature"]
      126 CALL                             R2 2 0
      127 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentContentId"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["observer"]
        7 GETTABLEKS                       R0 R0 K2 ["onContentFinished"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["currentContentId"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentContentType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["tool"] ; [+8]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["currentTool"]
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["currentContentType"]
       15 JUMPIFNOTEQKS                    R0 K3 ["text"] ; [+4]
       17 GETUPVAL                         R0 2
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["currentContentType"]
       23 JUMPIFNOTEQKS                    R0 K4 ["thinking"] ; [+3]
       25 GETUPVAL                         R0 3
       26 CALL                             R0 0 0
       27 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["invocationIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["invocationIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopReason"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        5 LOADK                            R2 K1 ["Session stop reason is not set!"]
        6 GETIMPORT                        R0 K3 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       12 JUMPIFEQKS                       R0 K4 ["message_end"] ; [+6]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       17 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+69]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K6 ["observer"]
       22 GETTABLEKS                       R0 R0 K7 ["onPromptEnd"]
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R0 1
       26 GETTABLEKS                       R0 R0 K6 ["observer"]
       28 GETTABLEKS                       R0 R0 K7 ["onPromptEnd"]
       30 CALL                             R0 0 0
       31 DUPTABLE                         R0 K15 [{["requestJourneyDuration"], ["requestEndReason"] = "message_stop", ["messageGuid"], ["sessionId"], ["message"] = ""}]
       32 GETIMPORT                        R2 K18 [os.clock]
       34 CALL                             R2 0 1
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K19 ["requestStartTime"]
       38 SUB                              R1 R2 R3
       39 SETTABLEKS                       R1 R0 K8 ["requestJourneyDuration"]
       41 GETUPVAL                         R1 1
       42 GETTABLEKS                       R1 R1 K11 ["messageGuid"]
       44 SETTABLEKS                       R1 R0 K11 ["messageGuid"]
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K20 ["conversationSessionId"]
       49 SETTABLEKS                       R1 R0 K12 ["sessionId"]
       51 GETUPVAL                         R1 2
       52 GETTABLEKS                       R1 R1 K21 ["FFlagAssistantCreditMeteringTelemetry"]
       54 JUMPIFNOT                        R1 ; [+18]
       55 GETUPVAL                         R1 1
       56 GETTABLEKS                       R1 R1 K22 ["deferSuccessfulRequestStop"]
       58 JUMPIFNOT                        R1 ; [+14]
       59 GETUPVAL                         R1 1
       60 GETTABLEKS                       R1 R1 K22 ["deferSuccessfulRequestStop"]
       62 MOVE                             R2 R0
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R3 R3 K23 ["messageId"]
       66 CALL                             R1 2 0
       67 GETUPVAL                         R1 1
       68 GETTABLEKS                       R1 R1 K24 ["setInputEnabled"]
       70 LOADB                            R2 1
       71 CALL                             R1 1 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R1 1
       74 GETTABLEKS                       R1 R1 K24 ["setInputEnabled"]
       76 LOADB                            R2 1
       77 CALL                             R1 1 0
       78 GETUPVAL                         R1 1
       79 GETTABLEKS                       R1 R1 K25 ["logRequestStop"]
       81 MOVE                             R2 R0
       82 GETUPVAL                         R3 1
       83 GETTABLEKS                       R3 R3 K23 ["messageId"]
       85 CALL                             R1 2 0
       86 RETURN                           R0 0
       87 GETUPVAL                         R0 0
       88 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       90 JUMPIFEQKS                       R0 K26 ["safety_filter"] ; [+6]
       92 GETUPVAL                         R0 0
       93 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       95 JUMPIFNOTEQKS                    R0 K27 ["token_limit"] ; [+7]
       97 GETUPVAL                         R0 3
       98 GETUPVAL                         R1 0
       99 GETTABLEKS                       R1 R1 K0 ["stopReason"]
      101 CALL                             R0 1 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R0 0
      104 GETTABLEKS                       R0 R0 K0 ["stopReason"]
      106 JUMPIFNOTEQKS                    R0 K28 ["tool_use"] ; [+291]
      108 GETUPVAL                         R0 0
      109 GETTABLEKS                       R1 R0 K29 ["toolCallCount"]
      111 GETUPVAL                         R3 0
      112 GETTABLEKS                       R3 R3 K30 ["toolCallThreads"]
      114 LENGTH                           R2 R3
      115 ADD                              R1 R1 R2
      116 SETTABLEKS                       R1 R0 K29 ["toolCallCount"]
      118 GETUPVAL                         R0 4
      119 GETTABLEKS                       R0 R0 K31 ["collectTasks"]
      121 GETUPVAL                         R1 0
      122 GETTABLEKS                       R1 R1 K30 ["toolCallThreads"]
      124 CALL                             R0 1 2
      125 GETUPVAL                         R3 5
      126 FASTCALL2K                       ASSERT R3 K32 ; [+4]
      128 LOADK                            R4 K32 ["Expected session to be set"]
      129 GETIMPORT                        R2 K3 [assert]
      131 CALL                             R2 2 0
      132 GETUPVAL                         R2 5
      133 GETTABLEKS                       R2 R2 K33 ["isCanceled"]
      135 CALL                             R2 0 1
      136 JUMPIFNOT                        R2 ; [+1]
      137 RETURN                           R0 0
      138 JUMPIF                           R0 ; [+7]
      139 GETUPVAL                         R2 3
      140 LOADK                            R3 K34 ["client_error"]
      141 CALL                             R2 1 0
      142 GETIMPORT                        R2 K36 [error]
      144 LOADK                            R3 K37 ["Failed to execute all tool calls"]
      145 CALL                             R2 1 0
      146 FASTCALL2K                       ASSERT R1 K38 ; [+5]
      148 MOVE                             R3 R1
      149 LOADK                            R4 K38 ["Expected toolCallResults to be set"]
      150 GETIMPORT                        R2 K3 [assert]
      152 CALL                             R2 2 0
      153 NEWTABLE                         R2 0 0
      155 MOVE                             R3 R1
      156 LOADNIL                          R4
      157 LOADNIL                          R5
      158 FORGPREP                         R3
      159 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      161 MOVE                             R9 R2
      162 MOVE                             R10 R7
      163 GETIMPORT                        R8 K41 [table.insert]
      165 CALL                             R8 2 0
      166 FORGLOOP                         R3 2 ; [-8]
      168 GETIMPORT                        R3 K43 [table.sort]
      170 MOVE                             R4 R2
      171 DUPCLOSURE                       R5 K44 [PROTO_13]
      172 CALL                             R3 2 0
      173 MOVE                             R3 R2
      174 LOADNIL                          R4
      175 LOADNIL                          R5
      176 FORGPREP                         R3
      177 DUPTABLE                         R8 K48 [{["role"] = "assistant", ["content"]}]
      178 NEWTABLE                         R9 0 1
      180 GETTABLEKS                       R10 R7 K49 ["toolUse"]
      182 SETLIST                          R9 R10 1 [1]
      184 SETTABLEKS                       R9 R8 K47 ["content"]
      186 GETUPVAL                         R10 0
      187 GETTABLEKS                       R10 R10 K50 ["messages"]
      189 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      191 MOVE                             R11 R8
      192 GETIMPORT                        R9 K41 [table.insert]
      194 CALL                             R9 2 0
      195 FORGLOOP                         R3 2 ; [-19]
      197 GETUPVAL                         R3 2
      198 GETTABLEKS                       R3 R3 K51 ["FFlagAssistantCapToolResult"]
      200 GETUPVAL                         R4 2
      201 GETTABLEKS                       R4 R4 K52 ["FIntAssistantMaxToolResultChars"]
      203 MOVE                             R5 R2
      204 LOADNIL                          R6
      205 LOADNIL                          R7
      206 FORGPREP                         R5
      207 JUMPIFNOT                        R3 ; [+6]
      208 GETUPVAL                         R10 6
      209 GETTABLEKS                       R11 R9 K53 ["toolResult"]
      211 MOVE                             R12 R4
      212 CALL                             R10 2 1
      213 JUMP                             ; [+2]
      214 GETTABLEKS                       R10 R9 K53 ["toolResult"]
      216 DUPTABLE                         R11 K55 [{["role"] = "user", ["content"]}]
      217 NEWTABLE                         R12 0 1
      219 MOVE                             R13 R10
      220 SETLIST                          R12 R13 1 [1]
      222 SETTABLEKS                       R12 R11 K47 ["content"]
      224 GETUPVAL                         R13 0
      225 GETTABLEKS                       R13 R13 K50 ["messages"]
      227 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      229 MOVE                             R14 R11
      230 GETIMPORT                        R12 K41 [table.insert]
      232 CALL                             R12 2 0
      233 FORGLOOP                         R5 2 ; [-27]
      235 GETUPVAL                         R5 2
      236 GETTABLEKS                       R5 R5 K56 ["FFlagAssistantMultiPlayerAgents"]
      238 JUMPIFNOT                        R5 ; [+34]
      239 GETUPVAL                         R5 1
      240 GETTABLEKS                       R5 R5 K57 ["getInterruptionMessages"]
      242 JUMPIFNOT                        R5 ; [+30]
      243 GETUPVAL                         R5 1
      244 GETTABLEKS                       R5 R5 K57 ["getInterruptionMessages"]
      246 CALL                             R5 0 1
      247 JUMPIFNOT                        R5 ; [+25]
      248 MOVE                             R6 R5
      249 LOADNIL                          R7
      250 LOADNIL                          R8
      251 FORGPREP                         R6
      252 DUPTABLE                         R11 K55 [{["role"] = "user", ["content"]}]
      253 NEWTABLE                         R12 0 1
      255 DUPTABLE                         R13 K60 [{["type"] = "text", ["text"]}]
      256 SETTABLEKS                       R10 R13 K59 ["text"]
      258 SETLIST                          R12 R13 1 [1]
      260 SETTABLEKS                       R12 R11 K47 ["content"]
      262 GETUPVAL                         R13 0
      263 GETTABLEKS                       R13 R13 K50 ["messages"]
      265 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      267 MOVE                             R14 R11
      268 GETIMPORT                        R12 K41 [table.insert]
      270 CALL                             R12 2 0
      271 FORGLOOP                         R6 2 ; [-20]
      273 GETUPVAL                         R5 7
      274 GETTABLEKS                       R5 R5 K61 ["shouldCompact"]
      276 GETUPVAL                         R6 0
      277 GETTABLEKS                       R6 R6 K50 ["messages"]
      279 DUPTABLE                         R7 K64 [{"isSubagent", "selectedModel"}]
      280 GETUPVAL                         R8 1
      281 GETTABLEKS                       R8 R8 K62 ["isSubagent"]
      283 SETTABLEKS                       R8 R7 K62 ["isSubagent"]
      285 GETUPVAL                         R8 1
      286 GETTABLEKS                       R8 R8 K63 ["selectedModel"]
      288 SETTABLEKS                       R8 R7 K63 ["selectedModel"]
      290 CALL                             R5 2 1
      291 GETUPVAL                         R6 0
      292 GETTABLEKS                       R6 R6 K29 ["toolCallCount"]
      294 GETUPVAL                         R7 1
      295 GETTABLEKS                       R7 R7 K65 ["maxToolCalls"]
      297 JUMPIFNOTLT                      R7 R6 ; [+5]
      299 GETUPVAL                         R6 3
      300 LOADK                            R7 K66 ["max_tool_calls"]
      301 CALL                             R6 1 0
      302 RETURN                           R0 0
      303 MOVE                             R6 R2
      304 LOADNIL                          R7
      305 LOADNIL                          R8
      306 FORGPREP                         R6
      307 GETTABLEKS                       R11 R10 K53 ["toolResult"]
      309 JUMPIFNOT                        R11 ; [+4]
      310 GETTABLEKS                       R11 R10 K53 ["toolResult"]
      312 GETTABLEKS                       R11 R11 K67 ["structuredContent"]
      314 FASTCALL1                        TYPEOF R11 ; [+3]
      315 MOVE                             R13 R11
      316 GETIMPORT                        R12 K69 [typeof]
      318 CALL                             R12 1 1
      319 JUMPIFNOTEQKS                    R12 K39 ["table"] ; [+56]
      321 GETTABLEKS                       R12 R11 K70 ["endTurn"]
      323 JUMPIFNOTEQKB                    R12 TRUE ; [+52]
      325 GETIMPORT                        R12 K72 [table.clear]
      327 GETUPVAL                         R13 0
      328 GETTABLEKS                       R13 R13 K30 ["toolCallThreads"]
      330 CALL                             R12 1 0
      331 GETUPVAL                         R12 1
      332 GETTABLEKS                       R12 R12 K6 ["observer"]
      334 GETTABLEKS                       R12 R12 K7 ["onPromptEnd"]
      336 JUMPIFNOT                        R12 ; [+6]
      337 GETUPVAL                         R12 1
      338 GETTABLEKS                       R12 R12 K6 ["observer"]
      340 GETTABLEKS                       R12 R12 K7 ["onPromptEnd"]
      342 CALL                             R12 0 0
      343 GETUPVAL                         R12 1
      344 GETTABLEKS                       R12 R12 K24 ["setInputEnabled"]
      346 LOADB                            R13 1
      347 CALL                             R12 1 0
      348 GETUPVAL                         R12 1
      349 GETTABLEKS                       R12 R12 K25 ["logRequestStop"]
      351 DUPTABLE                         R13 K15 [{["requestJourneyDuration"], ["requestEndReason"] = "message_stop", ["messageGuid"], ["sessionId"], ["message"] = ""}]
      352 GETIMPORT                        R15 K18 [os.clock]
      354 CALL                             R15 0 1
      355 GETUPVAL                         R16 1
      356 GETTABLEKS                       R16 R16 K19 ["requestStartTime"]
      358 SUB                              R14 R15 R16
      359 SETTABLEKS                       R14 R13 K8 ["requestJourneyDuration"]
      361 GETUPVAL                         R14 1
      362 GETTABLEKS                       R14 R14 K11 ["messageGuid"]
      364 SETTABLEKS                       R14 R13 K11 ["messageGuid"]
      366 GETUPVAL                         R14 1
      367 GETTABLEKS                       R14 R14 K20 ["conversationSessionId"]
      369 SETTABLEKS                       R14 R13 K12 ["sessionId"]
      371 GETUPVAL                         R14 1
      372 GETTABLEKS                       R14 R14 K23 ["messageId"]
      374 CALL                             R12 2 0
      375 RETURN                           R0 0
      376 FORGLOOP                         R6 2 ; [-70]
      378 DUPTABLE                         R7 K75 [{"resumedToolCallCount", "needsCompaction"}]
      379 GETUPVAL                         R8 0
      380 GETTABLEKS                       R8 R8 K29 ["toolCallCount"]
      382 SETTABLEKS                       R8 R7 K73 ["resumedToolCallCount"]
      384 SETTABLEKS                       R5 R7 K74 ["needsCompaction"]
      386 NEWCLOSURE                       R6 P1
      387 CAPTURE                          UPVAL U1
      388 CAPTURE                          UPVAL U0
      389 CAPTURE                          VAL R7
      390 CAPTURE                          UPVAL U7
      391 CAPTURE                          UPVAL U5
      392 CAPTURE                          UPVAL U2
      393 CAPTURE                          UPVAL U8
      394 CAPTURE                          UPVAL U9
      395 MOVE                             R7 R6
      396 CALL                             R7 0 0
      397 RETURN                           R0 0
      398 GETUPVAL                         R0 10
      399 GETTABLEKS                       R0 R0 K76 ["assertNever"]
      401 GETUPVAL                         R1 0
      402 GETTABLEKS                       R1 R1 K0 ["stopReason"]
      404 CALL                             R0 1 0
      405 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["metadata"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagDebugLogAssistantUI"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETIMPORT                        R2 K3 [print]
       10 LOADK                            R3 K4 ["Processing with Roblox LLM:"]
       11 GETTABLEKS                       R4 R1 K5 ["modelName"]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R1 K6 ["agenticMode"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K7 ["isAgenticMode"]
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K8 ["ModelQuality"]
       26 GETTABLEKS                       R3 R3 K9 ["High"]
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K8 ["ModelQuality"]
       32 GETTABLEKS                       R3 R3 K10 ["Low"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K11 ["setModelQuality"]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 0
       39 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Expected session to be set"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["isClosed"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["isTerminalEventType"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["close"]
       22 CALL                             R1 0 0
       23 JUMP                             ; [+8]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K6 ["reset"]
       27 CALL                             R1 0 0
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K7 ["onPacketReceived"]
       31 CALL                             R1 0 0
       32 GETTABLEKS                       R1 R0 K8 ["type"]
       34 JUMPIFNOTEQKS                    R1 K9 ["message_start"] ; [+65]
       36 GETUPVAL                         R1 4
       37 LOADK                            R2 K10 [""]
       38 SETTABLEKS                       R2 R1 K11 ["currentText"]
       40 GETUPVAL                         R1 4
       41 LOADK                            R2 K10 [""]
       42 SETTABLEKS                       R2 R1 K12 ["currentSignature"]
       44 GETUPVAL                         R1 4
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R1 K13 ["currentTool"]
       48 GETUPVAL                         R1 4
       49 LOADK                            R2 K10 [""]
       50 SETTABLEKS                       R2 R1 K14 ["currentToolInput"]
       52 GETUPVAL                         R1 4
       53 LOADNIL                          R2
       54 SETTABLEKS                       R2 R1 K15 ["currentContentType"]
       56 GETUPVAL                         R1 4
       57 LOADNIL                          R2
       58 SETTABLEKS                       R2 R1 K16 ["currentContentId"]
       60 GETTABLEKS                       R1 R0 K17 ["metadata"]
       62 JUMPIF                           R1 ; [+1]
       63 RETURN                           R0 0
       64 GETUPVAL                         R2 5
       65 GETTABLEKS                       R2 R2 K18 ["FFlagDebugLogAssistantUI"]
       67 JUMPIFNOT                        R2 ; [+6]
       68 GETIMPORT                        R2 K20 [print]
       70 LOADK                            R3 K21 ["Processing with Roblox LLM:"]
       71 GETTABLEKS                       R4 R1 K22 ["modelName"]
       73 CALL                             R2 2 0
       74 GETTABLEKS                       R2 R1 K23 ["agenticMode"]
       76 JUMPIFNOTEQKNIL                  R2 ; [+2]
       78 RETURN                           R0 0
       79 GETUPVAL                         R3 4
       80 SETTABLEKS                       R2 R3 K24 ["isAgenticMode"]
       82 JUMPIFNOT                        R2 ; [+6]
       83 GETUPVAL                         R3 6
       84 GETTABLEKS                       R3 R3 K25 ["ModelQuality"]
       86 GETTABLEKS                       R3 R3 K26 ["High"]
       88 JUMP                             ; [+5]
       89 GETUPVAL                         R3 6
       90 GETTABLEKS                       R3 R3 K25 ["ModelQuality"]
       92 GETTABLEKS                       R3 R3 K27 ["Low"]
       94 GETUPVAL                         R4 3
       95 GETTABLEKS                       R4 R4 K28 ["setModelQuality"]
       97 MOVE                             R5 R3
       98 CALL                             R4 1 0
       99 RETURN                           R0 0
      100 GETTABLEKS                       R1 R0 K8 ["type"]
      102 JUMPIFNOTEQKS                    R1 K29 ["content_start"] ; [+5]
      104 GETUPVAL                         R1 7
      105 MOVE                             R2 R0
      106 CALL                             R1 1 0
      107 RETURN                           R0 0
      108 GETTABLEKS                       R1 R0 K8 ["type"]
      110 JUMPIFNOTEQKS                    R1 K30 ["content_delta"] ; [+5]
      112 GETUPVAL                         R1 8
      113 MOVE                             R2 R0
      114 CALL                             R1 1 0
      115 RETURN                           R0 0
      116 GETTABLEKS                       R1 R0 K8 ["type"]
      118 JUMPIFNOTEQKS                    R1 K31 ["content_end"] ; [+42]
      120 GETUPVAL                         R1 4
      121 GETTABLEKS                       R1 R1 K16 ["currentContentId"]
      123 JUMPIFNOT                        R1 ; [+9]
      124 GETUPVAL                         R1 3
      125 GETTABLEKS                       R1 R1 K32 ["observer"]
      127 GETTABLEKS                       R1 R1 K33 ["onContentFinished"]
      129 GETUPVAL                         R2 4
      130 GETTABLEKS                       R2 R2 K16 ["currentContentId"]
      132 CALL                             R1 1 0
      133 GETUPVAL                         R1 4
      134 GETTABLEKS                       R1 R1 K15 ["currentContentType"]
      136 JUMPIFNOTEQKS                    R1 K34 ["tool"] ; [+8]
      138 GETUPVAL                         R1 4
      139 GETTABLEKS                       R1 R1 K13 ["currentTool"]
      141 JUMPIFNOT                        R1 ; [+3]
      142 GETUPVAL                         R1 9
      143 CALL                             R1 0 0
      144 RETURN                           R0 0
      145 GETUPVAL                         R1 4
      146 GETTABLEKS                       R1 R1 K15 ["currentContentType"]
      148 JUMPIFNOTEQKS                    R1 K35 ["text"] ; [+4]
      150 GETUPVAL                         R1 10
      151 CALL                             R1 0 0
      152 RETURN                           R0 0
      153 GETUPVAL                         R1 4
      154 GETTABLEKS                       R1 R1 K15 ["currentContentType"]
      156 JUMPIFNOTEQKS                    R1 K36 ["thinking"] ; [+125]
      158 GETUPVAL                         R1 11
      159 CALL                             R1 0 0
      160 RETURN                           R0 0
      161 GETTABLEKS                       R1 R0 K8 ["type"]
      163 JUMPIFNOTEQKS                    R1 K37 ["message_delta"] ; [+9]
      165 GETUPVAL                         R1 4
      166 GETTABLEKS                       R2 R0 K38 ["delta"]
      168 GETTABLEKS                       R2 R2 K39 ["stopReason"]
      170 SETTABLEKS                       R2 R1 K39 ["stopReason"]
      172 RETURN                           R0 0
      173 GETTABLEKS                       R1 R0 K8 ["type"]
      175 JUMPIFNOTEQKS                    R1 K40 ["message_stop"] ; [+4]
      177 GETUPVAL                         R1 12
      178 CALL                             R1 0 0
      179 RETURN                           R0 0
      180 GETTABLEKS                       R1 R0 K8 ["type"]
      182 JUMPIFNOTEQKS                    R1 K41 ["error"] ; [+93]
      184 GETTABLEKS                       R1 R0 K41 ["error"]
      186 GETUPVAL                         R2 4
      187 GETTABLEKS                       R2 R2 K15 ["currentContentType"]
      189 JUMPIFNOTEQKS                    R2 K34 ["tool"] ; [+8]
      191 GETUPVAL                         R2 4
      192 GETTABLEKS                       R2 R2 K13 ["currentTool"]
      194 JUMPIFNOT                        R2 ; [+3]
      195 GETUPVAL                         R2 9
      196 CALL                             R2 0 0
      197 JUMP                             ; [+15]
      198 GETUPVAL                         R2 4
      199 GETTABLEKS                       R2 R2 K15 ["currentContentType"]
      201 JUMPIFNOTEQKS                    R2 K35 ["text"] ; [+4]
      203 GETUPVAL                         R2 10
      204 CALL                             R2 0 0
      205 JUMP                             ; [+7]
      206 GETUPVAL                         R2 4
      207 GETTABLEKS                       R2 R2 K15 ["currentContentType"]
      209 JUMPIFNOTEQKS                    R2 K36 ["thinking"] ; [+3]
      211 GETUPVAL                         R2 11
      212 CALL                             R2 0 0
      213 GETUPVAL                         R2 5
      214 GETTABLEKS                       R2 R2 K42 ["FFlagAssistantCompactOnInputTokenLimit"]
      216 JUMPIFNOT                        R2 ; [+22]
      217 LOADB                            R2 0
      218 JUMPIFNOTEQKS                    R1 K43 ["input_token_limit_error"] ; [+20]
      220 GETUPVAL                         R3 3
      221 GETTABLEKS                       R3 R3 K44 ["isSubagent"]
      223 NOT                              R2 R3
      224 JUMPIFNOT                        R2 ; [+14]
      225 LOADB                            R2 0
      226 GETUPVAL                         R3 4
      227 GETTABLEKS                       R3 R3 K45 ["inputTokenLimitRetryCount"]
      229 LOADN                            R4 1
      230 JUMPIFNOTLT                      R3 R4 ; [+8]
      232 GETUPVAL                         R2 13
      233 GETTABLEKS                       R2 R2 K46 ["get"]
      235 CALL                             R2 0 1
      236 GETTABLEKS                       R2 R2 K47 ["isCompactionExperimentEnabled"]
      238 CALL                             R2 0 1
      239 JUMPIFNOT                        R2 ; [+32]
      240 GETUPVAL                         R3 5
      241 GETTABLEKS                       R3 R3 K18 ["FFlagDebugLogAssistantUI"]
      243 JUMPIFNOT                        R3 ; [+4]
      244 GETIMPORT                        R3 K20 [print]
      246 LOADK                            R4 K48 ["Input token limit hit; compacting conversation and retrying request"]
      247 CALL                             R3 1 0
      248 DUPTABLE                         R4 K52 [{["resumedToolCallCount"], ["needsCompaction"] = True, ["inputTokenLimitRetryCount"]}]
      249 GETUPVAL                         R5 4
      250 GETTABLEKS                       R5 R5 K53 ["toolCallCount"]
      252 SETTABLEKS                       R5 R4 K49 ["resumedToolCallCount"]
      254 GETUPVAL                         R6 4
      255 GETTABLEKS                       R6 R6 K45 ["inputTokenLimitRetryCount"]
      257 ADDK                             R5 R6 K54 [1]
      258 SETTABLEKS                       R5 R4 K45 ["inputTokenLimitRetryCount"]
      260 NEWCLOSURE                       R3 P0
      261 CAPTURE                          UPVAL U3
      262 CAPTURE                          UPVAL U4
      263 CAPTURE                          VAL R4
      264 CAPTURE                          UPVAL U14
      265 CAPTURE                          UPVAL U0
      266 CAPTURE                          UPVAL U5
      267 CAPTURE                          UPVAL U15
      268 CAPTURE                          UPVAL U16
      269 MOVE                             R4 R3
      270 CALL                             R4 0 0
      271 RETURN                           R0 0
      272 GETUPVAL                         R3 17
      273 MOVE                             R4 R1
      274 CALL                             R3 1 0
      275 RETURN                           R0 0
      276 GETUPVAL                         R1 18
      277 GETTABLEKS                       R1 R1 K55 ["assertNever"]
      279 GETTABLEKS                       R2 R0 K8 ["type"]
      281 CALL                             R1 1 0
      282 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K3 [{[1] = "error", ["error"] = "timeout"}]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["Session closed despite already being closed"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K3 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K4 ["close"]
       15 CALL                             R0 0 0
       16 LOADB                            R0 1
       17 SETUPVAL                         R0 0
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K5 ["currentContentId"]
       21 JUMPIFNOT                        R0 ; [+9]
       22 GETUPVAL                         R0 4
       23 GETTABLEKS                       R0 R0 K6 ["observer"]
       25 GETTABLEKS                       R0 R0 K7 ["onContentFinished"]
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K5 ["currentContentId"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isClosed"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["close"]
        8 CALL                             R0 0 0
        9 LOADB                            R0 1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K2 ["observer"]
       14 GETTABLEKS                       R0 R0 K3 ["onPromptEnd"]
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K2 ["observer"]
       20 GETTABLEKS                       R0 R0 K3 ["onPromptEnd"]
       22 CALL                             R0 0 0
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K4 ["pendingToolCallPromises"]
       26 LOADNIL                          R1
       27 LOADNIL                          R2
       28 FORGPREP                         R0
       29 NAMECALL                         R5 R3 K5 ["cancel"]
       31 CALL                             R5 1 0
       32 FORGLOOP                         R0 2 ; [-4]
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K6 ["toolCallThreads"]
       37 LOADNIL                          R1
       38 LOADNIL                          R2
       39 FORGPREP                         R0
       40 GETIMPORT                        R5 K8 [task.cancel]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 FORGLOOP                         R0 2 ; [-5]
       46 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["setInputEnabled"]
        2 LOADB                            R4 0
        3 CALL                             R3 1 0
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["new"]
        8 GETTABLEKS                       R5 R0 K2 ["timeoutMs"]
       10 CALL                             R4 1 1
       11 DUPTABLE                         R5 K25 [{["sessionId"], ["currentText"] = "", ["currentSignature"] = "", ["currentTool"] = , ["currentToolInput"] = "", ["currentContentType"] = , ["currentContentId"] = , ["messages"], ["toolCallCount"], ["toolCallThreads"], ["pendingToolCallPromises"], ["isAgenticMode"] = False, ["requestStartTime"], ["messageGuid"], ["conversationSessionId"], ["compactedStore"], ["messageId"], ["logRequestStop"], ["inputTokenLimitRetryCount"]}]
       12 GETUPVAL                         R6 1
       13 LOADB                            R8 0
       14 NAMECALL                         R6 R6 K26 ["GenerateGUID"]
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K3 ["sessionId"]
       19 GETTABLEKS                       R6 R0 K27 ["initialMessages"]
       21 JUMPIF                           R6 ; [+2]
       22 NEWTABLE                         R6 0 0
       24 SETTABLEKS                       R6 R5 K12 ["messages"]
       26 ORK                              R6 R1 K28 [0]
       27 SETTABLEKS                       R6 R5 K13 ["toolCallCount"]
       29 NEWTABLE                         R6 0 0
       31 SETTABLEKS                       R6 R5 K14 ["toolCallThreads"]
       33 NEWTABLE                         R6 0 0
       35 SETTABLEKS                       R6 R5 K15 ["pendingToolCallPromises"]
       37 GETTABLEKS                       R6 R0 K18 ["requestStartTime"]
       39 SETTABLEKS                       R6 R5 K18 ["requestStartTime"]
       41 GETTABLEKS                       R6 R0 K19 ["messageGuid"]
       43 SETTABLEKS                       R6 R5 K19 ["messageGuid"]
       45 GETTABLEKS                       R6 R0 K20 ["conversationSessionId"]
       47 SETTABLEKS                       R6 R5 K20 ["conversationSessionId"]
       49 GETTABLEKS                       R6 R0 K21 ["compactedStore"]
       51 SETTABLEKS                       R6 R5 K21 ["compactedStore"]
       53 GETTABLEKS                       R6 R0 K22 ["messageId"]
       55 SETTABLEKS                       R6 R5 K22 ["messageId"]
       57 GETTABLEKS                       R6 R0 K23 ["logRequestStop"]
       59 SETTABLEKS                       R6 R5 K23 ["logRequestStop"]
       61 ORK                              R6 R2 K28 [0]
       62 SETTABLEKS                       R6 R5 K24 ["inputTokenLimitRetryCount"]
       64 NEWCLOSURE                       R6 P0
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          REF R3
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U5
       72 NEWCLOSURE                       R7 P1
       73 CAPTURE                          VAL R0
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U11
       84 NEWCLOSURE                       R9 P3
       85 CAPTURE                          VAL R5
       86 NEWCLOSURE                       R10 P4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          VAL R0
       90 NEWCLOSURE                       R11 P5
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R0
       93 NEWCLOSURE                       R12 P6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R0
       96 NEWCLOSURE                       R13 P7
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R0
       99 NEWCLOSURE                       R14 P8
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R10
      104 NEWCLOSURE                       R15 P9
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R0
      107 CAPTURE                          UPVAL U3
      108 CAPTURE                          VAL R7
      109 CAPTURE                          UPVAL U11
      110 CAPTURE                          REF R3
      111 CAPTURE                          UPVAL U12
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          UPVAL U10
      116 NEWCLOSURE                       R16 P10
      117 CAPTURE                          UPVAL U3
      118 CAPTURE                          VAL R5
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          VAL R0
      121 NEWCLOSURE                       R17 P11
      122 CAPTURE                          REF R3
      123 CAPTURE                          UPVAL U14
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R5
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U13
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R15
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          UPVAL U4
      138 CAPTURE                          UPVAL U5
      139 CAPTURE                          VAL R7
      140 CAPTURE                          UPVAL U10
      141 GETTABLEKS                       R18 R4 K29 ["onTimeout"]
      143 NEWCLOSURE                       R20 P12
      144 CAPTURE                          VAL R17
      145 NAMECALL                         R18 R18 K30 ["Connect"]
      147 CALL                             R18 2 1
      148 LOADB                            R19 0
      149 LOADB                            R20 0
      150 DUPTABLE                         R21 K37 [{"state", "processEvent", "close", "cancel", "isClosed", "isCanceled"}]
      151 SETTABLEKS                       R5 R21 K31 ["state"]
      153 SETTABLEKS                       R17 R21 K32 ["processEvent"]
      155 NEWCLOSURE                       R22 P13
      156 CAPTURE                          REF R19
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R0
      161 SETTABLEKS                       R22 R21 K33 ["close"]
      163 NEWCLOSURE                       R22 P14
      164 CAPTURE                          REF R3
      165 CAPTURE                          REF R20
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R5
      168 SETTABLEKS                       R22 R21 K34 ["cancel"]
      170 NEWCLOSURE                       R22 P15
      171 CAPTURE                          REF R19
      172 SETTABLEKS                       R22 R21 K35 ["isClosed"]
      174 NEWCLOSURE                       R22 P16
      175 CAPTURE                          REF R20
      176 SETTABLEKS                       R22 R21 K36 ["isCanceled"]
      178 MOVE                             R3 R21
      179 SETUPVAL                         R3 5
      180 CLOSEUPVALS                      R3
      181 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+41]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["cancel"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["state"]
        9 GETTABLEKS                       R0 R0 K2 ["logRequestStop"]
       11 DUPTABLE                         R1 K10 [{["requestJourneyDuration"], ["requestEndReason"] = "user_cancelled", ["messageGuid"], ["sessionId"], ["message"] = ""}]
       12 GETIMPORT                        R3 K13 [os.clock]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["state"]
       18 GETTABLEKS                       R4 R4 K14 ["requestStartTime"]
       20 SUB                              R2 R3 R4
       21 SETTABLEKS                       R2 R1 K3 ["requestJourneyDuration"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K1 ["state"]
       26 GETTABLEKS                       R2 R2 K6 ["messageGuid"]
       28 SETTABLEKS                       R2 R1 K6 ["messageGuid"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K1 ["state"]
       33 GETTABLEKS                       R2 R2 K15 ["conversationSessionId"]
       35 SETTABLEKS                       R2 R1 K7 ["sessionId"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K1 ["state"]
       40 GETTABLEKS                       R2 R2 K16 ["messageId"]
       42 CALL                             R0 2 0
       43 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["processEvent"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_25:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          REF R0
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          REF R0
       21 MOVE                             R4 R3
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 CLOSEUPVALS                      R0
       25 RETURN                           R4 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Engine"]
       17 GETTABLEKS                       R3 R3 K11 ["EngineEnv"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Engine"]
       24 GETTABLEKS                       R4 R4 K12 ["EngineFlags"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Engine"]
       31 GETTABLEKS                       R5 R5 K13 ["LLMFormattedToolTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Engine"]
       38 GETTABLEKS                       R6 R6 K14 ["LLMRequest"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["ModelContextProtocol"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Engine"]
       52 GETTABLEKS                       R8 R8 K17 ["ModelQuality"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K10 ["Engine"]
       59 GETTABLEKS                       R9 R9 K18 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["StreamEventUtils"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K10 ["Engine"]
       68 GETTABLEKS                       R10 R10 K20 ["StreamTypes"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K9 [require]
       73 GETTABLEKS                       R11 R0 K10 ["Engine"]
       75 GETTABLEKS                       R11 R11 K18 ["Util"]
       77 GETTABLEKS                       R11 R11 K21 ["TaskCollector"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K10 ["Engine"]
       84 GETTABLEKS                       R12 R12 K18 ["Util"]
       86 GETTABLEKS                       R12 R12 K22 ["Time"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K10 ["Engine"]
       93 GETTABLEKS                       R13 R13 K18 ["Util"]
       95 GETTABLEKS                       R13 R13 K23 ["Timer"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K10 ["Engine"]
      102 GETTABLEKS                       R14 R14 K24 ["Compaction"]
      104 GETTABLEKS                       R14 R14 K25 ["CompactedStore"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K10 ["Engine"]
      111 GETTABLEKS                       R15 R15 K18 ["Util"]
      113 GETTABLEKS                       R15 R15 K26 ["capToolResult"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R16 R0 K10 ["Engine"]
      120 GETTABLEKS                       R16 R16 K24 ["Compaction"]
      122 GETTABLEKS                       R16 R16 K27 ["compactThread"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R0 K10 ["Engine"]
      129 GETTABLEKS                       R17 R17 K18 ["Util"]
      131 GETTABLEKS                       R17 R17 K28 ["normalizeToolInput"]
      133 CALL                             R16 1 1
      134 DUPTABLE                         R17 K33 [{["Started"] = "Started", ["Resolved"] = "Resolved", ["Rejected"] = "Rejected", ["Cancelled"] = "Cancelled"}]
      135 DUPTABLE                         R18 K38 [{["ToolCancelled"] = "tool_cancelled", ["ToolError"] = "tool_error"}]
      136 DUPCLOSURE                       R19 K39 [PROTO_25]
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R8
      150 DUPTABLE                         R20 K41 [{"createProcessEventHandler"}]
      151 SETTABLEKS                       R19 R20 K40 ["createProcessEventHandler"]
      153 RETURN                           R20 1
