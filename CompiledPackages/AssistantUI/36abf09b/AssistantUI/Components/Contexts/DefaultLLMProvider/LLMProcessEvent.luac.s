PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["needsCompaction"]
        3 JUMPIFNOT                        R0 ; [+94]
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
       96 JUMPIFNOT                        R2 ; [+1]
       97 RETURN                           R0 0
       98 DUPTABLE                         R0 K31 [{["threadId"], ["messages"], ["tools"], ["system"], ["messageGuid"], ["isFirstMessage"] = False, ["isAgenticMode"], ["apiKeys"], ["selectedModel"], ["conversationUrl"], ["isSubagent"], ["assistantMode"]}]
       99 GETUPVAL                         R1 1
      100 GETTABLEKS                       R1 R1 K9 ["threadId"]
      102 SETTABLEKS                       R1 R0 K9 ["threadId"]
      104 GETUPVAL                         R1 3
      105 GETTABLEKS                       R1 R1 K7 ["messages"]
      107 SETTABLEKS                       R1 R0 K7 ["messages"]
      109 GETUPVAL                         R1 1
      110 GETTABLEKS                       R1 R1 K22 ["tools"]
      112 SETTABLEKS                       R1 R0 K22 ["tools"]
      114 GETUPVAL                         R1 1
      115 GETTABLEKS                       R1 R1 K32 ["systemMessage"]
      117 SETTABLEKS                       R1 R0 K23 ["system"]
      119 GETUPVAL                         R1 1
      120 GETTABLEKS                       R1 R1 K24 ["messageGuid"]
      122 SETTABLEKS                       R1 R0 K24 ["messageGuid"]
      124 GETUPVAL                         R1 3
      125 GETTABLEKS                       R1 R1 K27 ["isAgenticMode"]
      127 SETTABLEKS                       R1 R0 K27 ["isAgenticMode"]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K13 ["apiKeys"]
      132 SETTABLEKS                       R1 R0 K13 ["apiKeys"]
      134 GETUPVAL                         R1 1
      135 GETTABLEKS                       R1 R1 K11 ["selectedModel"]
      137 SETTABLEKS                       R1 R0 K11 ["selectedModel"]
      139 GETUPVAL                         R1 1
      140 GETTABLEKS                       R1 R1 K28 ["conversationUrl"]
      142 SETTABLEKS                       R1 R0 K28 ["conversationUrl"]
      144 GETUPVAL                         R1 1
      145 GETTABLEKS                       R1 R1 K29 ["isSubagent"]
      147 SETTABLEKS                       R1 R0 K29 ["isSubagent"]
      149 GETUPVAL                         R1 1
      150 GETTABLEKS                       R1 R1 K30 ["assistantMode"]
      152 SETTABLEKS                       R1 R0 K30 ["assistantMode"]
      154 GETUPVAL                         R1 6
      155 GETUPVAL                         R2 4
      156 GETUPVAL                         R3 0
      157 GETTABLEKS                       R3 R3 K33 ["resumedToolCallCount"]
      159 GETUPVAL                         R4 0
      160 GETTABLEKS                       R4 R4 K34 ["inputTokenLimitRetryCount"]
      162 CALL                             R1 3 1
      163 FASTCALL2K                       ASSERT R1 K35 ; [+5]
      165 MOVE                             R3 R1
      166 LOADK                            R4 K35 ["Failed to create new session"]
      167 GETIMPORT                        R2 K37 [assert]
      169 CALL                             R2 2 0
      170 SETUPVAL                         R1 7
      171 GETUPVAL                         R2 1
      172 GETTABLEKS                       R2 R2 K8 ["requestLLM"]
      174 MOVE                             R3 R0
      175 GETTABLEKS                       R4 R1 K38 ["processEvent"]
      177 CALL                             R2 2 0
      178 RETURN                           R0 0

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
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["name"]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_6:
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
       22 GETTABLEKS                       R1 R1 K7 ["get"]
       24 CALL                             R1 0 1
       25 GETTABLEKS                       R1 R1 K8 ["EventLogger"]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K9 ["FFlagAssistantToolExistenceRefactor"]
       30 JUMPIF                           R2 ; [+49]
       31 GETTABLEKS                       R2 R1 K10 ["logToolStarted"]
       33 DUPTABLE                         R3 K19 [{"messageGuid", "sessionId", "toolId", "toolName", "assistantMode", "input", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K11 ["messageGuid"]
       37 SETTABLEKS                       R4 R3 K11 ["messageGuid"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K20 ["conversationSessionId"]
       42 SETTABLEKS                       R4 R3 K12 ["sessionId"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K2 ["id"]
       47 SETTABLEKS                       R4 R3 K13 ["toolId"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K3 ["name"]
       52 SETTABLEKS                       R4 R3 K14 ["toolName"]
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R4 R4 K15 ["assistantMode"]
       57 SETTABLEKS                       R4 R3 K15 ["assistantMode"]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K4 ["input"]
       62 SETTABLEKS                       R4 R3 K4 ["input"]
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K16 ["currentSubagent"]
       67 SETTABLEKS                       R4 R3 K16 ["currentSubagent"]
       69 GETUPVAL                         R4 3
       70 GETTABLEKS                       R4 R4 K17 ["parentMessageGuid"]
       72 SETTABLEKS                       R4 R3 K17 ["parentMessageGuid"]
       74 GETUPVAL                         R4 3
       75 GETTABLEKS                       R4 R4 K18 ["parentToolId"]
       77 SETTABLEKS                       R4 R3 K18 ["parentToolId"]
       79 CALL                             R2 1 0
       80 GETUPVAL                         R2 4
       81 JUMPIFNOT                        R2 ; [+8]
       82 GETUPVAL                         R2 3
       83 GETTABLEKS                       R2 R2 K21 ["observer"]
       85 GETTABLEKS                       R2 R2 K22 ["onPreExecuteToolUse"]
       87 GETUPVAL                         R3 4
       88 MOVE                             R4 R0
       89 CALL                             R2 2 0
       90 GETUPVAL                         R2 5
       91 GETTABLEKS                       R2 R2 K23 ["getTimestampMilliseconds"]
       93 CALL                             R2 0 1
       94 GETUPVAL                         R3 6
       95 JUMPIFNOT                        R3 ; [+53]
       96 DUPTABLE                         R3 K30 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K2 ["id"]
      100 SETTABLEKS                       R4 R3 K2 ["id"]
      102 GETUPVAL                         R4 0
      103 GETTABLEKS                       R4 R4 K3 ["name"]
      105 SETTABLEKS                       R4 R3 K3 ["name"]
      107 NEWTABLE                         R4 0 1
      109 DUPTABLE                         R5 K32 [{[1] = "text", ["text"]}]
      110 LOADK                            R7 K33 ["Error: The tool input was not valid JSON and could not be parsed. Please retry the tool call with a valid JSON object. Original input: %*"]
      111 GETUPVAL                         R9 6
      112 NAMECALL                         R7 R7 K34 ["format"]
      114 CALL                             R7 2 1
      115 MOVE                             R6 R7
      116 SETTABLEKS                       R6 R5 K31 ["text"]
      118 SETLIST                          R4 R5 1 [1]
      120 SETTABLEKS                       R4 R3 K25 ["content"]
      122 SETTABLEKS                       R2 R3 K28 ["startTime"]
      124 GETUPVAL                         R4 5
      125 GETTABLEKS                       R4 R4 K23 ["getTimestampMilliseconds"]
      127 CALL                             R4 0 1
      128 SETTABLEKS                       R4 R3 K29 ["startTimeAfterConfirmation"]
      130 GETUPVAL                         R4 4
      131 JUMPIFNOT                        R4 ; [+8]
      132 GETUPVAL                         R4 3
      133 GETTABLEKS                       R4 R4 K21 ["observer"]
      135 GETTABLEKS                       R4 R4 K35 ["onToolResult"]
      137 GETUPVAL                         R5 4
      138 MOVE                             R6 R3
      139 CALL                             R4 2 0
      140 DUPTABLE                         R4 K39 [{"toolUse", "toolResult", "invocationIndex"}]
      141 SETTABLEKS                       R0 R4 K36 ["toolUse"]
      143 SETTABLEKS                       R3 R4 K37 ["toolResult"]
      145 GETUPVAL                         R5 7
      146 SETTABLEKS                       R5 R4 K38 ["invocationIndex"]
      148 RETURN                           R4 1
      149 GETUPVAL                         R3 3
      150 GETTABLEKS                       R3 R3 K21 ["observer"]
      152 GETTABLEKS                       R3 R3 K40 ["checkToolConfirmationRequestAsync"]
      154 GETUPVAL                         R4 0
      155 GETTABLEKS                       R4 R4 K3 ["name"]
      157 GETUPVAL                         R5 0
      158 GETTABLEKS                       R5 R5 K4 ["input"]
      160 CALL                             R3 2 1
      161 GETUPVAL                         R4 3
      162 GETTABLEKS                       R4 R4 K21 ["observer"]
      164 GETTABLEKS                       R4 R4 K41 ["getToolCallOptions"]
      166 GETUPVAL                         R5 0
      167 GETTABLEKS                       R5 R5 K3 ["name"]
      169 CALL                             R4 1 1
      170 GETUPVAL                         R5 5
      171 GETTABLEKS                       R5 R5 K23 ["getTimestampMilliseconds"]
      173 CALL                             R5 0 1
      174 JUMPIFNOT                        R3 ; [+244]
      175 LOADB                            R6 0
      176 LOADNIL                          R7
      177 LOADNIL                          R8
      178 GETUPVAL                         R9 2
      179 GETTABLEKS                       R9 R9 K9 ["FFlagAssistantToolExistenceRefactor"]
      181 JUMPIFNOT                        R9 ; [+76]
      182 GETUPVAL                         R9 8
      183 GETTABLEKS                       R9 R9 K42 ["find"]
      185 GETUPVAL                         R10 3
      186 GETTABLEKS                       R10 R10 K43 ["tools"]
      188 NEWCLOSURE                       R11 P0
      189 CAPTURE                          UPVAL U9
      190 CAPTURE                          UPVAL U0
      191 CALL                             R9 2 1
      192 JUMPIFNOT                        R9 ; [+62]
      193 GETUPVAL                         R10 3
      194 GETTABLEKS                       R10 R10 K44 ["onToolCall"]
      196 DUPTABLE                         R11 K48 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      197 GETUPVAL                         R12 0
      198 GETTABLEKS                       R12 R12 K3 ["name"]
      200 SETTABLEKS                       R12 R11 K3 ["name"]
      202 GETUPVAL                         R12 0
      203 GETTABLEKS                       R12 R12 K4 ["input"]
      205 SETTABLEKS                       R12 R11 K45 ["arguments"]
      207 SETTABLEKS                       R4 R11 K46 ["toolCallOptions"]
      209 GETUPVAL                         R12 4
      210 SETTABLEKS                       R12 R11 K47 ["contentId"]
      212 GETUPVAL                         R12 0
      213 GETTABLEKS                       R12 R12 K2 ["id"]
      215 SETTABLEKS                       R12 R11 K13 ["toolId"]
      217 CALL                             R10 1 1
      218 GETUPVAL                         R11 10
      219 GETTABLEKS                       R11 R11 K49 ["pendingToolCallPromises"]
      221 LOADB                            R12 1
      222 SETTABLE                         R12 R11 R10
      223 LOADK                            R11 K50 ["Started"]
      224 NAMECALL                         R12 R10 K51 ["awaitStatus"]
      226 CALL                             R12 1 2
      227 MOVE                             R11 R12
      228 MOVE                             R7 R13
      229 JUMPIFEQKS                       R11 K52 ["Resolved"] ; [+2]
      231 LOADB                            R6 0 +1
      232 LOADB                            R6 1
      233 GETUPVAL                         R12 10
      234 GETTABLEKS                       R12 R12 K49 ["pendingToolCallPromises"]
      236 LOADNIL                          R13
      237 SETTABLE                         R13 R12 R10
      238 JUMPIF                           R6 ; [+80]
      239 GETUPVAL                         R12 2
      240 GETTABLEKS                       R12 R12 K53 ["FFlagDebugLogAssistantUI"]
      242 JUMPIFNOT                        R12 ; [+6]
      243 GETIMPORT                        R12 K55 [warn]
      245 LOADK                            R13 K56 ["ToolCall failed: "]
      246 MOVE                             R14 R11
      247 MOVE                             R15 R7
      248 CALL                             R12 3 0
      249 JUMPIFNOTEQKS                    R11 K57 ["Cancelled"] ; [+3]
      251 LOADK                            R8 K58 ["tool_cancelled"]
      252 JUMP                             ; [+66]
      253 LOADK                            R8 K59 ["tool_error"]
      254 JUMP                             ; [+64]
      255 LOADB                            R6 0
      256 LOADK                            R8 K60 ["tool_not_found"]
      257 JUMP                             ; [+61]
      258 GETUPVAL                         R9 3
      259 GETTABLEKS                       R9 R9 K44 ["onToolCall"]
      261 DUPTABLE                         R10 K48 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      262 GETUPVAL                         R11 0
      263 GETTABLEKS                       R11 R11 K3 ["name"]
      265 SETTABLEKS                       R11 R10 K3 ["name"]
      267 GETUPVAL                         R11 0
      268 GETTABLEKS                       R11 R11 K4 ["input"]
      270 SETTABLEKS                       R11 R10 K45 ["arguments"]
      272 SETTABLEKS                       R4 R10 K46 ["toolCallOptions"]
      274 GETUPVAL                         R11 4
      275 SETTABLEKS                       R11 R10 K47 ["contentId"]
      277 GETUPVAL                         R11 0
      278 GETTABLEKS                       R11 R11 K2 ["id"]
      280 SETTABLEKS                       R11 R10 K13 ["toolId"]
      282 CALL                             R9 1 1
      283 GETUPVAL                         R10 10
      284 GETTABLEKS                       R10 R10 K49 ["pendingToolCallPromises"]
      286 LOADB                            R11 1
      287 SETTABLE                         R11 R10 R9
      288 LOADK                            R10 K50 ["Started"]
      289 NAMECALL                         R11 R9 K51 ["awaitStatus"]
      291 CALL                             R11 1 2
      292 MOVE                             R10 R11
      293 MOVE                             R7 R12
      294 JUMPIFEQKS                       R10 K52 ["Resolved"] ; [+2]
      296 LOADB                            R6 0 +1
      297 LOADB                            R6 1
      298 GETUPVAL                         R11 10
      299 GETTABLEKS                       R11 R11 K49 ["pendingToolCallPromises"]
      301 LOADNIL                          R12
      302 SETTABLE                         R12 R11 R9
      303 JUMPIF                           R6 ; [+15]
      304 GETUPVAL                         R11 2
      305 GETTABLEKS                       R11 R11 K53 ["FFlagDebugLogAssistantUI"]
      307 JUMPIFNOT                        R11 ; [+6]
      308 GETIMPORT                        R11 K55 [warn]
      310 LOADK                            R12 K56 ["ToolCall failed: "]
      311 MOVE                             R13 R10
      312 MOVE                             R14 R7
      313 CALL                             R11 3 0
      314 JUMPIFNOTEQKS                    R10 K57 ["Cancelled"] ; [+3]
      316 LOADK                            R8 K58 ["tool_cancelled"]
      317 JUMP                             ; [+1]
      318 LOADK                            R8 K59 ["tool_error"]
      319 LOADNIL                          R9
      320 JUMPIFNOT                        R6 ; [+5]
      321 JUMPIFNOT                        R7 ; [+3]
      322 GETTABLEKS                       R10 R7 K25 ["content"]
      324 JUMPIF                           R10 ; [+1]
      325 LOADK                            R8 K59 ["tool_error"]
      326 JUMPIFNOT                        R8 ; [+45]
      327 LOADNIL                          R10
      328 JUMPIFNOTEQKS                    R8 K60 ["tool_not_found"] ; [+3]
      330 LOADK                            R10 K61 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      331 JUMP                             ; [+13]
      332 JUMPIFNOTEQKS                    R8 K58 ["tool_cancelled"] ; [+3]
      334 LOADK                            R10 K62 ["The tool call was cancelled by the user."]
      335 JUMP                             ; [+9]
      336 JUMPIFNOTEQKS                    R8 K59 ["tool_error"] ; [+3]
      338 LOADK                            R10 K63 ["Error: Tool call failed. Please try a different approach."]
      339 JUMP                             ; [+5]
      340 GETUPVAL                         R11 11
      341 GETTABLEKS                       R11 R11 K64 ["assertNever"]
      343 MOVE                             R12 R8
      344 CALL                             R11 1 0
      345 DUPTABLE                         R11 K32 [{[1] = "text", ["text"]}]
      346 SETTABLEKS                       R10 R11 K31 ["text"]
      348 DUPTABLE                         R12 K30 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
      349 GETUPVAL                         R13 0
      350 GETTABLEKS                       R13 R13 K2 ["id"]
      352 SETTABLEKS                       R13 R12 K2 ["id"]
      354 GETUPVAL                         R13 0
      355 GETTABLEKS                       R13 R13 K3 ["name"]
      357 SETTABLEKS                       R13 R12 K3 ["name"]
      359 NEWTABLE                         R13 0 1
      361 MOVE                             R14 R11
      362 SETLIST                          R13 R14 1 [1]
      364 SETTABLEKS                       R13 R12 K25 ["content"]
      366 SETTABLEKS                       R2 R12 K28 ["startTime"]
      368 SETTABLEKS                       R5 R12 K29 ["startTimeAfterConfirmation"]
      370 MOVE                             R9 R12
      371 JUMP                             ; [+28]
      372 DUPTABLE                         R10 K66 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      373 GETUPVAL                         R11 0
      374 GETTABLEKS                       R11 R11 K2 ["id"]
      376 SETTABLEKS                       R11 R10 K2 ["id"]
      378 GETUPVAL                         R11 0
      379 GETTABLEKS                       R11 R11 K3 ["name"]
      381 SETTABLEKS                       R11 R10 K3 ["name"]
      383 GETTABLEKS                       R11 R7 K25 ["content"]
      385 SETTABLEKS                       R11 R10 K25 ["content"]
      387 GETTABLEKS                       R11 R7 K26 ["isError"]
      389 SETTABLEKS                       R11 R10 K26 ["isError"]
      391 GETTABLEKS                       R11 R7 K65 ["structuredContent"]
      393 SETTABLEKS                       R11 R10 K65 ["structuredContent"]
      395 SETTABLEKS                       R2 R10 K28 ["startTime"]
      397 SETTABLEKS                       R5 R10 K29 ["startTimeAfterConfirmation"]
      399 MOVE                             R9 R10
      400 GETUPVAL                         R10 4
      401 JUMPIFNOT                        R10 ; [+8]
      402 GETUPVAL                         R10 3
      403 GETTABLEKS                       R10 R10 K21 ["observer"]
      405 GETTABLEKS                       R10 R10 K35 ["onToolResult"]
      407 GETUPVAL                         R11 4
      408 MOVE                             R12 R9
      409 CALL                             R10 2 0
      410 DUPTABLE                         R10 K39 [{"toolUse", "toolResult", "invocationIndex"}]
      411 SETTABLEKS                       R0 R10 K36 ["toolUse"]
      413 SETTABLEKS                       R9 R10 K37 ["toolResult"]
      415 GETUPVAL                         R11 7
      416 SETTABLEKS                       R11 R10 K38 ["invocationIndex"]
      418 RETURN                           R10 1
      419 DUPTABLE                         R6 K68 [{[1] = "text", ["text"] = "The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."}]
      420 DUPTABLE                         R7 K70 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["startTime"], ["startTimeAfterConfirmation"]}]
      421 GETUPVAL                         R8 0
      422 GETTABLEKS                       R8 R8 K2 ["id"]
      424 SETTABLEKS                       R8 R7 K2 ["id"]
      426 GETUPVAL                         R8 0
      427 GETTABLEKS                       R8 R8 K3 ["name"]
      429 SETTABLEKS                       R8 R7 K3 ["name"]
      431 NEWTABLE                         R8 0 1
      433 MOVE                             R9 R6
      434 SETLIST                          R8 R9 1 [1]
      436 SETTABLEKS                       R8 R7 K25 ["content"]
      438 SETTABLEKS                       R2 R7 K28 ["startTime"]
      440 SETTABLEKS                       R5 R7 K29 ["startTimeAfterConfirmation"]
      442 GETUPVAL                         R8 4
      443 JUMPIFNOT                        R8 ; [+8]
      444 GETUPVAL                         R8 3
      445 GETTABLEKS                       R8 R8 K21 ["observer"]
      447 GETTABLEKS                       R8 R8 K35 ["onToolResult"]
      449 GETUPVAL                         R9 4
      450 MOVE                             R10 R7
      451 CALL                             R8 2 0
      452 DUPTABLE                         R8 K39 [{"toolUse", "toolResult", "invocationIndex"}]
      453 SETTABLEKS                       R0 R8 K36 ["toolUse"]
      455 SETTABLEKS                       R7 R8 K37 ["toolResult"]
      457 GETUPVAL                         R9 7
      458 SETTABLEKS                       R9 R8 K38 ["invocationIndex"]
      460 RETURN                           R8 1

PROTO_7:
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
       32 JUMP                             ; [+41]
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
       56 GETTABLEKS                       R7 R7 K18 ["EventLogger"]
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
       72 JUMP                             ; [+1]
       73 MOVE                             R3 R6
       74 FASTCALL2K                       ASSERT R3 K21 ; [+5]
       76 MOVE                             R6 R3
       77 LOADK                            R7 K21 ["Expected parsedInput to be set"]
       78 GETIMPORT                        R5 K4 [assert]
       80 CALL                             R5 2 0
       81 SETTABLEKS                       R3 R0 K22 ["input"]
       83 NEWCLOSURE                       R5 P1
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          REF R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U8
       96 GETUPVAL                         R6 9
       97 GETTABLEKS                       R6 R6 K23 ["wrapFunction"]
       99 MOVE                             R7 R5
      100 CALL                             R6 1 1
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K6 ["toolCallThreads"]
      104 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      106 MOVE                             R9 R6
      107 GETIMPORT                        R7 K26 [table.insert]
      109 CALL                             R7 2 0
      110 GETUPVAL                         R7 0
      111 LOADK                            R8 K8 [""]
      112 SETTABLEKS                       R8 R7 K27 ["currentText"]
      114 GETUPVAL                         R7 0
      115 LOADK                            R8 K8 [""]
      116 SETTABLEKS                       R8 R7 K28 ["currentSignature"]
      118 GETUPVAL                         R7 0
      119 LOADNIL                          R8
      120 SETTABLEKS                       R8 R7 K0 ["currentTool"]
      122 GETUPVAL                         R7 0
      123 LOADK                            R8 K8 [""]
      124 SETTABLEKS                       R8 R7 K7 ["currentToolInput"]
      126 GETUPVAL                         R7 0
      127 LOADNIL                          R8
      128 SETTABLEKS                       R8 R7 K29 ["currentContentType"]
      130 CLOSEUPVALS                      R4
      131 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentText"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["currentSignature"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+29]
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
       38 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["invocationIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["invocationIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_15:
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
       17 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+46]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K6 ["observer"]
       22 GETTABLEKS                       R0 R0 K7 ["onPromptEnd"]
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R0 1
       26 GETTABLEKS                       R0 R0 K6 ["observer"]
       28 GETTABLEKS                       R0 R0 K7 ["onPromptEnd"]
       30 CALL                             R0 0 0
       31 GETUPVAL                         R0 1
       32 GETTABLEKS                       R0 R0 K8 ["setInputEnabled"]
       34 LOADB                            R1 1
       35 CALL                             R0 1 0
       36 GETUPVAL                         R0 1
       37 GETTABLEKS                       R0 R0 K9 ["logRequestStop"]
       39 DUPTABLE                         R1 K17 [{["requestJourneyDuration"], ["requestEndReason"] = "message_stop", ["messageGuid"], ["sessionId"], ["message"] = ""}]
       40 GETIMPORT                        R3 K20 [os.clock]
       42 CALL                             R3 0 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K21 ["requestStartTime"]
       46 SUB                              R2 R3 R4
       47 SETTABLEKS                       R2 R1 K10 ["requestJourneyDuration"]
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R2 K13 ["messageGuid"]
       52 SETTABLEKS                       R2 R1 K13 ["messageGuid"]
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K22 ["conversationSessionId"]
       57 SETTABLEKS                       R2 R1 K14 ["sessionId"]
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K23 ["messageId"]
       62 CALL                             R0 2 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R0 0
       65 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       67 JUMPIFEQKS                       R0 K24 ["safety_filter"] ; [+6]
       69 GETUPVAL                         R0 0
       70 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       72 JUMPIFNOTEQKS                    R0 K25 ["token_limit"] ; [+7]
       74 GETUPVAL                         R0 2
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R1 R1 K0 ["stopReason"]
       78 CALL                             R0 1 0
       79 RETURN                           R0 0
       80 GETUPVAL                         R0 0
       81 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       83 JUMPIFNOTEQKS                    R0 K26 ["tool_use"] ; [+215]
       85 GETUPVAL                         R0 0
       86 GETTABLEKS                       R1 R0 K27 ["toolCallCount"]
       88 GETUPVAL                         R3 0
       89 GETTABLEKS                       R3 R3 K28 ["toolCallThreads"]
       91 LENGTH                           R2 R3
       92 ADD                              R1 R1 R2
       93 SETTABLEKS                       R1 R0 K27 ["toolCallCount"]
       95 GETUPVAL                         R0 3
       96 GETTABLEKS                       R0 R0 K29 ["collectTasks"]
       98 GETUPVAL                         R1 0
       99 GETTABLEKS                       R1 R1 K28 ["toolCallThreads"]
      101 CALL                             R0 1 2
      102 GETUPVAL                         R3 4
      103 FASTCALL2K                       ASSERT R3 K30 ; [+4]
      105 LOADK                            R4 K30 ["Expected session to be set"]
      106 GETIMPORT                        R2 K3 [assert]
      108 CALL                             R2 2 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K31 ["isCanceled"]
      112 CALL                             R2 0 1
      113 JUMPIFNOT                        R2 ; [+1]
      114 RETURN                           R0 0
      115 JUMPIF                           R0 ; [+7]
      116 GETUPVAL                         R2 2
      117 LOADK                            R3 K32 ["client_error"]
      118 CALL                             R2 1 0
      119 GETIMPORT                        R2 K34 [error]
      121 LOADK                            R3 K35 ["Failed to execute all tool calls"]
      122 CALL                             R2 1 0
      123 FASTCALL2K                       ASSERT R1 K36 ; [+5]
      125 MOVE                             R3 R1
      126 LOADK                            R4 K36 ["Expected toolCallResults to be set"]
      127 GETIMPORT                        R2 K3 [assert]
      129 CALL                             R2 2 0
      130 NEWTABLE                         R2 0 0
      132 MOVE                             R3 R1
      133 LOADNIL                          R4
      134 LOADNIL                          R5
      135 FORGPREP                         R3
      136 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      138 MOVE                             R9 R2
      139 MOVE                             R10 R7
      140 GETIMPORT                        R8 K39 [table.insert]
      142 CALL                             R8 2 0
      143 FORGLOOP                         R3 2 ; [-8]
      145 GETIMPORT                        R3 K41 [table.sort]
      147 MOVE                             R4 R2
      148 DUPCLOSURE                       R5 K42 [PROTO_14]
      149 CALL                             R3 2 0
      150 MOVE                             R3 R2
      151 LOADNIL                          R4
      152 LOADNIL                          R5
      153 FORGPREP                         R3
      154 DUPTABLE                         R8 K46 [{["role"] = "assistant", ["content"]}]
      155 NEWTABLE                         R9 0 1
      157 GETTABLEKS                       R10 R7 K47 ["toolUse"]
      159 SETLIST                          R9 R10 1 [1]
      161 SETTABLEKS                       R9 R8 K45 ["content"]
      163 GETUPVAL                         R10 0
      164 GETTABLEKS                       R10 R10 K48 ["messages"]
      166 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      168 MOVE                             R11 R8
      169 GETIMPORT                        R9 K39 [table.insert]
      171 CALL                             R9 2 0
      172 FORGLOOP                         R3 2 ; [-19]
      174 GETUPVAL                         R3 5
      175 GETTABLEKS                       R3 R3 K49 ["FFlagAssistantCapToolResult"]
      177 GETUPVAL                         R4 5
      178 GETTABLEKS                       R4 R4 K50 ["FIntAssistantMaxToolResultChars"]
      180 MOVE                             R5 R2
      181 LOADNIL                          R6
      182 LOADNIL                          R7
      183 FORGPREP                         R5
      184 JUMPIFNOT                        R3 ; [+6]
      185 GETUPVAL                         R10 6
      186 GETTABLEKS                       R11 R9 K51 ["toolResult"]
      188 MOVE                             R12 R4
      189 CALL                             R10 2 1
      190 JUMP                             ; [+2]
      191 GETTABLEKS                       R10 R9 K51 ["toolResult"]
      193 DUPTABLE                         R11 K53 [{["role"] = "user", ["content"]}]
      194 NEWTABLE                         R12 0 1
      196 MOVE                             R13 R10
      197 SETLIST                          R12 R13 1 [1]
      199 SETTABLEKS                       R12 R11 K45 ["content"]
      201 GETUPVAL                         R13 0
      202 GETTABLEKS                       R13 R13 K48 ["messages"]
      204 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      206 MOVE                             R14 R11
      207 GETIMPORT                        R12 K39 [table.insert]
      209 CALL                             R12 2 0
      210 FORGLOOP                         R5 2 ; [-27]
      212 GETUPVAL                         R5 5
      213 GETTABLEKS                       R5 R5 K54 ["FFlagAssistantMultiPlayerAgents"]
      215 JUMPIFNOT                        R5 ; [+34]
      216 GETUPVAL                         R5 1
      217 GETTABLEKS                       R5 R5 K55 ["getInterruptionMessages"]
      219 JUMPIFNOT                        R5 ; [+30]
      220 GETUPVAL                         R5 1
      221 GETTABLEKS                       R5 R5 K55 ["getInterruptionMessages"]
      223 CALL                             R5 0 1
      224 JUMPIFNOT                        R5 ; [+25]
      225 MOVE                             R6 R5
      226 LOADNIL                          R7
      227 LOADNIL                          R8
      228 FORGPREP                         R6
      229 DUPTABLE                         R11 K53 [{["role"] = "user", ["content"]}]
      230 NEWTABLE                         R12 0 1
      232 DUPTABLE                         R13 K58 [{["type"] = "text", ["text"]}]
      233 SETTABLEKS                       R10 R13 K57 ["text"]
      235 SETLIST                          R12 R13 1 [1]
      237 SETTABLEKS                       R12 R11 K45 ["content"]
      239 GETUPVAL                         R13 0
      240 GETTABLEKS                       R13 R13 K48 ["messages"]
      242 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      244 MOVE                             R14 R11
      245 GETIMPORT                        R12 K39 [table.insert]
      247 CALL                             R12 2 0
      248 FORGLOOP                         R6 2 ; [-20]
      250 GETUPVAL                         R5 7
      251 GETTABLEKS                       R5 R5 K59 ["shouldCompact"]
      253 GETUPVAL                         R6 0
      254 GETTABLEKS                       R6 R6 K48 ["messages"]
      256 DUPTABLE                         R7 K62 [{"isSubagent", "selectedModel"}]
      257 GETUPVAL                         R8 1
      258 GETTABLEKS                       R8 R8 K60 ["isSubagent"]
      260 SETTABLEKS                       R8 R7 K60 ["isSubagent"]
      262 GETUPVAL                         R8 1
      263 GETTABLEKS                       R8 R8 K61 ["selectedModel"]
      265 SETTABLEKS                       R8 R7 K61 ["selectedModel"]
      267 CALL                             R5 2 1
      268 GETUPVAL                         R6 0
      269 GETTABLEKS                       R6 R6 K27 ["toolCallCount"]
      271 GETUPVAL                         R7 1
      272 GETTABLEKS                       R7 R7 K63 ["maxToolCalls"]
      274 JUMPIFNOTLT                      R7 R6 ; [+5]
      276 GETUPVAL                         R6 2
      277 LOADK                            R7 K64 ["max_tool_calls"]
      278 CALL                             R6 1 0
      279 RETURN                           R0 0
      280 DUPTABLE                         R7 K67 [{"resumedToolCallCount", "needsCompaction"}]
      281 GETUPVAL                         R8 0
      282 GETTABLEKS                       R8 R8 K27 ["toolCallCount"]
      284 SETTABLEKS                       R8 R7 K65 ["resumedToolCallCount"]
      286 SETTABLEKS                       R5 R7 K66 ["needsCompaction"]
      288 NEWCLOSURE                       R6 P1
      289 CAPTURE                          UPVAL U1
      290 CAPTURE                          UPVAL U0
      291 CAPTURE                          VAL R7
      292 CAPTURE                          UPVAL U7
      293 CAPTURE                          UPVAL U4
      294 CAPTURE                          UPVAL U8
      295 CAPTURE                          UPVAL U9
      296 MOVE                             R7 R6
      297 CALL                             R7 0 0
      298 RETURN                           R0 0
      299 GETUPVAL                         R0 10
      300 GETTABLEKS                       R0 R0 K68 ["assertNever"]
      302 GETUPVAL                         R1 0
      303 GETTABLEKS                       R1 R1 K0 ["stopReason"]
      305 CALL                             R0 1 0
      306 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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
      156 JUMPIFNOTEQKS                    R1 K36 ["thinking"] ; [+124]
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
      182 JUMPIFNOTEQKS                    R1 K41 ["error"] ; [+92]
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
      239 JUMPIFNOT                        R2 ; [+31]
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
      266 CAPTURE                          UPVAL U15
      267 CAPTURE                          UPVAL U16
      268 MOVE                             R4 R3
      269 CALL                             R4 0 0
      270 RETURN                           R0 0
      271 GETUPVAL                         R3 17
      272 MOVE                             R4 R1
      273 CALL                             R3 1 0
      274 RETURN                           R0 0
      275 GETUPVAL                         R1 18
      276 GETTABLEKS                       R1 R1 K55 ["assertNever"]
      278 GETTABLEKS                       R2 R0 K8 ["type"]
      280 CALL                             R1 1 0
      281 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R0 K3 [{[1] = "error", ["error"] = "timeout"}]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_23:
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
       71 NEWCLOSURE                       R7 P1
       72 CAPTURE                          VAL R0
       73 NEWCLOSURE                       R8 P2
       74 CAPTURE                          VAL R5
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U7
       78 CAPTURE                          VAL R0
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U12
       84 NEWCLOSURE                       R9 P3
       85 CAPTURE                          VAL R5
       86 NEWCLOSURE                       R10 P4
       87 CAPTURE                          VAL R5
       88 NEWCLOSURE                       R11 P5
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R0
       91 NEWCLOSURE                       R12 P6
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R0
       94 NEWCLOSURE                       R13 P7
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R0
       97 NEWCLOSURE                       R14 P8
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 NEWCLOSURE                       R15 P9
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R7
      106 CAPTURE                          UPVAL U12
      107 CAPTURE                          REF R3
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          UPVAL U13
      110 CAPTURE                          UPVAL U2
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U11
      114 NEWCLOSURE                       R16 P10
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          VAL R5
      117 CAPTURE                          UPVAL U14
      118 CAPTURE                          VAL R0
      119 NEWCLOSURE                       R17 P11
      120 CAPTURE                          REF R3
      121 CAPTURE                          UPVAL U15
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R5
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          UPVAL U14
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R15
      133 CAPTURE                          UPVAL U7
      134 CAPTURE                          UPVAL U2
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R7
      138 CAPTURE                          UPVAL U11
      139 GETTABLEKS                       R18 R4 K29 ["onTimeout"]
      141 NEWCLOSURE                       R20 P12
      142 CAPTURE                          VAL R17
      143 NAMECALL                         R18 R18 K30 ["Connect"]
      145 CALL                             R18 2 1
      146 LOADB                            R19 0
      147 LOADB                            R20 0
      148 DUPTABLE                         R21 K37 [{"state", "processEvent", "close", "cancel", "isClosed", "isCanceled"}]
      149 SETTABLEKS                       R5 R21 K31 ["state"]
      151 SETTABLEKS                       R17 R21 K32 ["processEvent"]
      153 NEWCLOSURE                       R22 P13
      154 CAPTURE                          REF R19
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R22 R21 K33 ["close"]
      161 NEWCLOSURE                       R22 P14
      162 CAPTURE                          REF R3
      163 CAPTURE                          REF R20
      164 CAPTURE                          VAL R0
      165 CAPTURE                          VAL R5
      166 SETTABLEKS                       R22 R21 K34 ["cancel"]
      168 NEWCLOSURE                       R22 P15
      169 CAPTURE                          REF R19
      170 SETTABLEKS                       R22 R21 K35 ["isClosed"]
      172 NEWCLOSURE                       R22 P16
      173 CAPTURE                          REF R20
      174 SETTABLEKS                       R22 R21 K36 ["isCanceled"]
      176 MOVE                             R3 R21
      177 SETUPVAL                         R3 4
      178 CLOSEUPVALS                      R3
      179 RETURN                           R3 1

PROTO_24:
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

PROTO_25:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["processEvent"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_26:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          REF R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          REF R0
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          REF R0
       22 MOVE                             R4 R3
       23 MOVE                             R5 R1
       24 MOVE                             R6 R2
       25 CLOSEUPVALS                      R0
       26 RETURN                           R4 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R4 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Components"]
       31 GETTABLEKS                       R5 R5 K15 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K16 ["DefaultLLMProvider"]
       35 GETTABLEKS                       R5 R5 K17 ["LLMFormattedToolTypes"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K14 ["Components"]
       42 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       44 GETTABLEKS                       R6 R6 K16 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R6 R6 K18 ["LLMRequest"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K14 ["Components"]
       53 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       55 GETTABLEKS                       R7 R7 K16 ["DefaultLLMProvider"]
       57 GETTABLEKS                       R7 R7 K19 ["LLMSystemMessage"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R0 K10 ["Parent"]
       64 GETTABLEKS                       R8 R8 K20 ["ModelContextProtocol"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R9 R0 K14 ["Components"]
       71 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       73 GETTABLEKS                       R9 R9 K21 ["ModelQualityContext"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R10 R0 K22 ["Util"]
       80 GETTABLEKS                       R10 R10 K23 ["StreamEventUtils"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R11 R0 K22 ["Util"]
       87 GETTABLEKS                       R11 R11 K24 ["TaskCollector"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R12 R0 K22 ["Util"]
       94 GETTABLEKS                       R12 R12 K25 ["Time"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R0 K22 ["Util"]
      101 GETTABLEKS                       R13 R13 K26 ["Timer"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K27 ["Types"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K22 ["Util"]
      113 GETTABLEKS                       R15 R15 K28 ["Compaction"]
      115 GETTABLEKS                       R15 R15 K29 ["CompactedStore"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R0 K30 ["Flags"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R17 R0 K22 ["Util"]
      127 GETTABLEKS                       R17 R17 K31 ["capToolResult"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R18 R0 K22 ["Util"]
      134 GETTABLEKS                       R18 R18 K28 ["Compaction"]
      136 GETTABLEKS                       R18 R18 K32 ["compactThread"]
      138 CALL                             R17 1 1
      139 DUPTABLE                         R18 K37 [{["Started"] = "Started", ["Resolved"] = "Resolved", ["Rejected"] = "Rejected", ["Cancelled"] = "Cancelled"}]
      140 DUPTABLE                         R19 K44 [{["ToolNotFound"] = "tool_not_found", ["ToolCancelled"] = "tool_cancelled", ["ToolError"] = "tool_error"}]
      141 GETTABLEKS                       R20 R4 K45 ["getToolName"]
      143 DUPCLOSURE                       R21 K46 [PROTO_26]
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R9
      158 DUPTABLE                         R22 K48 [{"createProcessEventHandler"}]
      159 SETTABLEKS                       R21 R22 K47 ["createProcessEventHandler"]
      161 RETURN                           R22 1
