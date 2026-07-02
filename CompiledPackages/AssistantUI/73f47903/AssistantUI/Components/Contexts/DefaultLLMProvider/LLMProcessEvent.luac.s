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
       28 CALL                             R2 0 1
       29 JUMPIF                           R2 ; [+49]
       30 GETTABLEKS                       R2 R1 K9 ["logToolStarted"]
       32 DUPTABLE                         R3 K18 [{"messageGuid", "sessionId", "toolId", "toolName", "assistantMode", "input", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K10 ["messageGuid"]
       36 SETTABLEKS                       R4 R3 K10 ["messageGuid"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K19 ["conversationSessionId"]
       41 SETTABLEKS                       R4 R3 K11 ["sessionId"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K2 ["id"]
       46 SETTABLEKS                       R4 R3 K12 ["toolId"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K3 ["name"]
       51 SETTABLEKS                       R4 R3 K13 ["toolName"]
       53 GETUPVAL                         R4 3
       54 GETTABLEKS                       R4 R4 K14 ["assistantMode"]
       56 SETTABLEKS                       R4 R3 K14 ["assistantMode"]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K4 ["input"]
       61 SETTABLEKS                       R4 R3 K4 ["input"]
       63 GETUPVAL                         R4 3
       64 GETTABLEKS                       R4 R4 K15 ["currentSubagent"]
       66 SETTABLEKS                       R4 R3 K15 ["currentSubagent"]
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R4 R4 K16 ["parentMessageGuid"]
       71 SETTABLEKS                       R4 R3 K16 ["parentMessageGuid"]
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R4 R4 K17 ["parentToolId"]
       76 SETTABLEKS                       R4 R3 K17 ["parentToolId"]
       78 CALL                             R2 1 0
       79 GETUPVAL                         R2 4
       80 JUMPIFNOT                        R2 ; [+8]
       81 GETUPVAL                         R2 3
       82 GETTABLEKS                       R2 R2 K20 ["observer"]
       84 GETTABLEKS                       R2 R2 K21 ["onPreExecuteToolUse"]
       86 GETUPVAL                         R3 4
       87 MOVE                             R4 R0
       88 CALL                             R2 2 0
       89 GETUPVAL                         R2 5
       90 GETTABLEKS                       R2 R2 K22 ["getTimestampMilliseconds"]
       92 CALL                             R2 0 1
       93 GETUPVAL                         R3 6
       94 JUMPIFNOT                        R3 ; [+53]
       95 DUPTABLE                         R3 K29 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
       96 GETUPVAL                         R4 0
       97 GETTABLEKS                       R4 R4 K2 ["id"]
       99 SETTABLEKS                       R4 R3 K2 ["id"]
      101 GETUPVAL                         R4 0
      102 GETTABLEKS                       R4 R4 K3 ["name"]
      104 SETTABLEKS                       R4 R3 K3 ["name"]
      106 NEWTABLE                         R4 0 1
      108 DUPTABLE                         R5 K31 [{[1] = "text", ["text"]}]
      109 LOADK                            R7 K32 ["Error: The tool input was not valid JSON and could not be parsed. Please retry the tool call with a valid JSON object. Original input: %*"]
      110 GETUPVAL                         R9 6
      111 NAMECALL                         R7 R7 K33 ["format"]
      113 CALL                             R7 2 1
      114 MOVE                             R6 R7
      115 SETTABLEKS                       R6 R5 K30 ["text"]
      117 SETLIST                          R4 R5 1 [1]
      119 SETTABLEKS                       R4 R3 K24 ["content"]
      121 SETTABLEKS                       R2 R3 K27 ["startTime"]
      123 GETUPVAL                         R4 5
      124 GETTABLEKS                       R4 R4 K22 ["getTimestampMilliseconds"]
      126 CALL                             R4 0 1
      127 SETTABLEKS                       R4 R3 K28 ["startTimeAfterConfirmation"]
      129 GETUPVAL                         R4 4
      130 JUMPIFNOT                        R4 ; [+8]
      131 GETUPVAL                         R4 3
      132 GETTABLEKS                       R4 R4 K20 ["observer"]
      134 GETTABLEKS                       R4 R4 K34 ["onToolResult"]
      136 GETUPVAL                         R5 4
      137 MOVE                             R6 R3
      138 CALL                             R4 2 0
      139 DUPTABLE                         R4 K38 [{"toolUse", "toolResult", "invocationIndex"}]
      140 SETTABLEKS                       R0 R4 K35 ["toolUse"]
      142 SETTABLEKS                       R3 R4 K36 ["toolResult"]
      144 GETUPVAL                         R5 7
      145 SETTABLEKS                       R5 R4 K37 ["invocationIndex"]
      147 RETURN                           R4 1
      148 GETUPVAL                         R3 3
      149 GETTABLEKS                       R3 R3 K20 ["observer"]
      151 GETTABLEKS                       R3 R3 K39 ["checkToolConfirmationRequestAsync"]
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R4 R4 K3 ["name"]
      156 GETUPVAL                         R5 0
      157 GETTABLEKS                       R5 R5 K4 ["input"]
      159 CALL                             R3 2 1
      160 GETUPVAL                         R4 3
      161 GETTABLEKS                       R4 R4 K20 ["observer"]
      163 GETTABLEKS                       R4 R4 K40 ["getToolCallOptions"]
      165 GETUPVAL                         R5 0
      166 GETTABLEKS                       R5 R5 K3 ["name"]
      168 CALL                             R4 1 1
      169 GETUPVAL                         R5 5
      170 GETTABLEKS                       R5 R5 K22 ["getTimestampMilliseconds"]
      172 CALL                             R5 0 1
      173 JUMPIFNOT                        R3 ; [+241]
      174 LOADB                            R6 0
      175 LOADNIL                          R7
      176 LOADNIL                          R8
      177 GETUPVAL                         R9 2
      178 CALL                             R9 0 1
      179 JUMPIFNOT                        R9 ; [+75]
      180 GETUPVAL                         R9 8
      181 GETTABLEKS                       R9 R9 K41 ["find"]
      183 GETUPVAL                         R10 3
      184 GETTABLEKS                       R10 R10 K42 ["tools"]
      186 NEWCLOSURE                       R11 P0
      187 CAPTURE                          UPVAL U9
      188 CAPTURE                          UPVAL U0
      189 CALL                             R9 2 1
      190 JUMPIFNOT                        R9 ; [+61]
      191 GETUPVAL                         R10 3
      192 GETTABLEKS                       R10 R10 K43 ["onToolCall"]
      194 DUPTABLE                         R11 K47 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      195 GETUPVAL                         R12 0
      196 GETTABLEKS                       R12 R12 K3 ["name"]
      198 SETTABLEKS                       R12 R11 K3 ["name"]
      200 GETUPVAL                         R12 0
      201 GETTABLEKS                       R12 R12 K4 ["input"]
      203 SETTABLEKS                       R12 R11 K44 ["arguments"]
      205 SETTABLEKS                       R4 R11 K45 ["toolCallOptions"]
      207 GETUPVAL                         R12 4
      208 SETTABLEKS                       R12 R11 K46 ["contentId"]
      210 GETUPVAL                         R12 0
      211 GETTABLEKS                       R12 R12 K2 ["id"]
      213 SETTABLEKS                       R12 R11 K12 ["toolId"]
      215 CALL                             R10 1 1
      216 GETUPVAL                         R11 10
      217 GETTABLEKS                       R11 R11 K48 ["pendingToolCallPromises"]
      219 LOADB                            R12 1
      220 SETTABLE                         R12 R11 R10
      221 LOADK                            R11 K49 ["Started"]
      222 NAMECALL                         R12 R10 K50 ["awaitStatus"]
      224 CALL                             R12 1 2
      225 MOVE                             R11 R12
      226 MOVE                             R7 R13
      227 JUMPIFEQKS                       R11 K51 ["Resolved"] ; [+2]
      229 LOADB                            R6 0 +1
      230 LOADB                            R6 1
      231 GETUPVAL                         R12 10
      232 GETTABLEKS                       R12 R12 K48 ["pendingToolCallPromises"]
      234 LOADNIL                          R13
      235 SETTABLE                         R13 R12 R10
      236 JUMPIF                           R6 ; [+78]
      237 GETUPVAL                         R12 11
      238 CALL                             R12 0 1
      239 JUMPIFNOT                        R12 ; [+6]
      240 GETIMPORT                        R12 K53 [warn]
      242 LOADK                            R13 K54 ["ToolCall failed: "]
      243 MOVE                             R14 R11
      244 MOVE                             R15 R7
      245 CALL                             R12 3 0
      246 JUMPIFNOTEQKS                    R11 K55 ["Cancelled"] ; [+3]
      248 LOADK                            R8 K56 ["tool_cancelled"]
      249 JUMP                             ; [+65]
      250 LOADK                            R8 K57 ["tool_error"]
      251 JUMP                             ; [+63]
      252 LOADB                            R6 0
      253 LOADK                            R8 K58 ["tool_not_found"]
      254 JUMP                             ; [+60]
      255 GETUPVAL                         R9 3
      256 GETTABLEKS                       R9 R9 K43 ["onToolCall"]
      258 DUPTABLE                         R10 K47 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      259 GETUPVAL                         R11 0
      260 GETTABLEKS                       R11 R11 K3 ["name"]
      262 SETTABLEKS                       R11 R10 K3 ["name"]
      264 GETUPVAL                         R11 0
      265 GETTABLEKS                       R11 R11 K4 ["input"]
      267 SETTABLEKS                       R11 R10 K44 ["arguments"]
      269 SETTABLEKS                       R4 R10 K45 ["toolCallOptions"]
      271 GETUPVAL                         R11 4
      272 SETTABLEKS                       R11 R10 K46 ["contentId"]
      274 GETUPVAL                         R11 0
      275 GETTABLEKS                       R11 R11 K2 ["id"]
      277 SETTABLEKS                       R11 R10 K12 ["toolId"]
      279 CALL                             R9 1 1
      280 GETUPVAL                         R10 10
      281 GETTABLEKS                       R10 R10 K48 ["pendingToolCallPromises"]
      283 LOADB                            R11 1
      284 SETTABLE                         R11 R10 R9
      285 LOADK                            R10 K49 ["Started"]
      286 NAMECALL                         R11 R9 K50 ["awaitStatus"]
      288 CALL                             R11 1 2
      289 MOVE                             R10 R11
      290 MOVE                             R7 R12
      291 JUMPIFEQKS                       R10 K51 ["Resolved"] ; [+2]
      293 LOADB                            R6 0 +1
      294 LOADB                            R6 1
      295 GETUPVAL                         R11 10
      296 GETTABLEKS                       R11 R11 K48 ["pendingToolCallPromises"]
      298 LOADNIL                          R12
      299 SETTABLE                         R12 R11 R9
      300 JUMPIF                           R6 ; [+14]
      301 GETUPVAL                         R11 11
      302 CALL                             R11 0 1
      303 JUMPIFNOT                        R11 ; [+6]
      304 GETIMPORT                        R11 K53 [warn]
      306 LOADK                            R12 K54 ["ToolCall failed: "]
      307 MOVE                             R13 R10
      308 MOVE                             R14 R7
      309 CALL                             R11 3 0
      310 JUMPIFNOTEQKS                    R10 K55 ["Cancelled"] ; [+3]
      312 LOADK                            R8 K56 ["tool_cancelled"]
      313 JUMP                             ; [+1]
      314 LOADK                            R8 K57 ["tool_error"]
      315 LOADNIL                          R9
      316 JUMPIFNOT                        R6 ; [+5]
      317 JUMPIFNOT                        R7 ; [+3]
      318 GETTABLEKS                       R10 R7 K24 ["content"]
      320 JUMPIF                           R10 ; [+1]
      321 LOADK                            R8 K57 ["tool_error"]
      322 JUMPIFNOT                        R8 ; [+45]
      323 LOADNIL                          R10
      324 JUMPIFNOTEQKS                    R8 K58 ["tool_not_found"] ; [+3]
      326 LOADK                            R10 K59 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      327 JUMP                             ; [+13]
      328 JUMPIFNOTEQKS                    R8 K56 ["tool_cancelled"] ; [+3]
      330 LOADK                            R10 K60 ["The tool call was cancelled by the user."]
      331 JUMP                             ; [+9]
      332 JUMPIFNOTEQKS                    R8 K57 ["tool_error"] ; [+3]
      334 LOADK                            R10 K61 ["Error: Tool call failed. Please try a different approach."]
      335 JUMP                             ; [+5]
      336 GETUPVAL                         R11 12
      337 GETTABLEKS                       R11 R11 K62 ["assertNever"]
      339 MOVE                             R12 R8
      340 CALL                             R11 1 0
      341 DUPTABLE                         R11 K31 [{[1] = "text", ["text"]}]
      342 SETTABLEKS                       R10 R11 K30 ["text"]
      344 DUPTABLE                         R12 K29 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
      345 GETUPVAL                         R13 0
      346 GETTABLEKS                       R13 R13 K2 ["id"]
      348 SETTABLEKS                       R13 R12 K2 ["id"]
      350 GETUPVAL                         R13 0
      351 GETTABLEKS                       R13 R13 K3 ["name"]
      353 SETTABLEKS                       R13 R12 K3 ["name"]
      355 NEWTABLE                         R13 0 1
      357 MOVE                             R14 R11
      358 SETLIST                          R13 R14 1 [1]
      360 SETTABLEKS                       R13 R12 K24 ["content"]
      362 SETTABLEKS                       R2 R12 K27 ["startTime"]
      364 SETTABLEKS                       R5 R12 K28 ["startTimeAfterConfirmation"]
      366 MOVE                             R9 R12
      367 JUMP                             ; [+28]
      368 DUPTABLE                         R10 K64 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      369 GETUPVAL                         R11 0
      370 GETTABLEKS                       R11 R11 K2 ["id"]
      372 SETTABLEKS                       R11 R10 K2 ["id"]
      374 GETUPVAL                         R11 0
      375 GETTABLEKS                       R11 R11 K3 ["name"]
      377 SETTABLEKS                       R11 R10 K3 ["name"]
      379 GETTABLEKS                       R11 R7 K24 ["content"]
      381 SETTABLEKS                       R11 R10 K24 ["content"]
      383 GETTABLEKS                       R11 R7 K25 ["isError"]
      385 SETTABLEKS                       R11 R10 K25 ["isError"]
      387 GETTABLEKS                       R11 R7 K63 ["structuredContent"]
      389 SETTABLEKS                       R11 R10 K63 ["structuredContent"]
      391 SETTABLEKS                       R2 R10 K27 ["startTime"]
      393 SETTABLEKS                       R5 R10 K28 ["startTimeAfterConfirmation"]
      395 MOVE                             R9 R10
      396 GETUPVAL                         R10 4
      397 JUMPIFNOT                        R10 ; [+8]
      398 GETUPVAL                         R10 3
      399 GETTABLEKS                       R10 R10 K20 ["observer"]
      401 GETTABLEKS                       R10 R10 K34 ["onToolResult"]
      403 GETUPVAL                         R11 4
      404 MOVE                             R12 R9
      405 CALL                             R10 2 0
      406 DUPTABLE                         R10 K38 [{"toolUse", "toolResult", "invocationIndex"}]
      407 SETTABLEKS                       R0 R10 K35 ["toolUse"]
      409 SETTABLEKS                       R9 R10 K36 ["toolResult"]
      411 GETUPVAL                         R11 7
      412 SETTABLEKS                       R11 R10 K37 ["invocationIndex"]
      414 RETURN                           R10 1
      415 DUPTABLE                         R6 K66 [{[1] = "text", ["text"] = "The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."}]
      416 DUPTABLE                         R7 K68 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["startTime"], ["startTimeAfterConfirmation"]}]
      417 GETUPVAL                         R8 0
      418 GETTABLEKS                       R8 R8 K2 ["id"]
      420 SETTABLEKS                       R8 R7 K2 ["id"]
      422 GETUPVAL                         R8 0
      423 GETTABLEKS                       R8 R8 K3 ["name"]
      425 SETTABLEKS                       R8 R7 K3 ["name"]
      427 NEWTABLE                         R8 0 1
      429 MOVE                             R9 R6
      430 SETLIST                          R8 R9 1 [1]
      432 SETTABLEKS                       R8 R7 K24 ["content"]
      434 SETTABLEKS                       R2 R7 K27 ["startTime"]
      436 SETTABLEKS                       R5 R7 K28 ["startTimeAfterConfirmation"]
      438 GETUPVAL                         R8 4
      439 JUMPIFNOT                        R8 ; [+8]
      440 GETUPVAL                         R8 3
      441 GETTABLEKS                       R8 R8 K20 ["observer"]
      443 GETTABLEKS                       R8 R8 K34 ["onToolResult"]
      445 GETUPVAL                         R9 4
      446 MOVE                             R10 R7
      447 CALL                             R8 2 0
      448 DUPTABLE                         R8 K38 [{"toolUse", "toolResult", "invocationIndex"}]
      449 SETTABLEKS                       R0 R8 K35 ["toolUse"]
      451 SETTABLEKS                       R7 R8 K36 ["toolResult"]
      453 GETUPVAL                         R9 7
      454 SETTABLEKS                       R9 R8 K37 ["invocationIndex"]
      456 RETURN                           R8 1

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
       32 JUMP                             ; [+40]
       33 GETIMPORT                        R5 K12 [pcall]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U0
       38 CALL                             R5 1 2
       39 JUMPIF                           R5 ; [+32]
       40 GETUPVAL                         R7 2
       41 CALL                             R7 0 1
       42 JUMPIFNOT                        R7 ; [+8]
       43 GETIMPORT                        R7 K14 [warn]
       45 LOADK                            R8 K15 ["Tool call input JSON parse failed: "]
       46 MOVE                             R9 R6
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K7 ["currentToolInput"]
       50 CALL                             R7 3 0
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K16 ["get"]
       54 CALL                             R7 0 1
       55 GETTABLEKS                       R7 R7 K17 ["EventLogger"]
       57 GETTABLEKS                       R7 R7 K18 ["logErrorEvent"]
       59 LOADK                            R8 K19 ["invalid_tool_call_json"]
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 0
       62 GETTABLEKS                       R4 R7 K7 ["currentToolInput"]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K9 ["Types"]
       67 GETTABLEKS                       R7 R7 K10 ["emptyObject"]
       69 CALL                             R7 0 1
       70 MOVE                             R3 R7
       71 JUMP                             ; [+1]
       72 MOVE                             R3 R6
       73 FASTCALL2K                       ASSERT R3 K20 ; [+5]
       75 MOVE                             R6 R3
       76 LOADK                            R7 K20 ["Expected parsedInput to be set"]
       77 GETIMPORT                        R5 K4 [assert]
       79 CALL                             R5 2 0
       80 SETTABLEKS                       R3 R0 K21 ["input"]
       82 NEWCLOSURE                       R5 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U5
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          REF R4
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          UPVAL U9
       96 GETUPVAL                         R6 10
       97 GETTABLEKS                       R6 R6 K22 ["wrapFunction"]
       99 MOVE                             R7 R5
      100 CALL                             R6 1 1
      101 GETUPVAL                         R8 0
      102 GETTABLEKS                       R8 R8 K6 ["toolCallThreads"]
      104 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      106 MOVE                             R9 R6
      107 GETIMPORT                        R7 K25 [table.insert]
      109 CALL                             R7 2 0
      110 GETUPVAL                         R7 0
      111 LOADK                            R8 K8 [""]
      112 SETTABLEKS                       R8 R7 K26 ["currentText"]
      114 GETUPVAL                         R7 0
      115 LOADK                            R8 K8 [""]
      116 SETTABLEKS                       R8 R7 K27 ["currentSignature"]
      118 GETUPVAL                         R7 0
      119 LOADNIL                          R8
      120 SETTABLEKS                       R8 R7 K0 ["currentTool"]
      122 GETUPVAL                         R7 0
      123 LOADK                            R8 K8 [""]
      124 SETTABLEKS                       R8 R7 K7 ["currentToolInput"]
      126 GETUPVAL                         R7 0
      127 LOADNIL                          R8
      128 SETTABLEKS                       R8 R7 K28 ["currentContentType"]
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
       83 JUMPIFNOTEQKS                    R0 K26 ["tool_use"] ; [+212]
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
      175 CALL                             R3 0 1
      176 GETUPVAL                         R4 6
      177 CALL                             R4 0 1
      178 MOVE                             R5 R2
      179 LOADNIL                          R6
      180 LOADNIL                          R7
      181 FORGPREP                         R5
      182 JUMPIFNOT                        R3 ; [+6]
      183 GETUPVAL                         R10 7
      184 GETTABLEKS                       R11 R9 K49 ["toolResult"]
      186 MOVE                             R12 R4
      187 CALL                             R10 2 1
      188 JUMP                             ; [+2]
      189 GETTABLEKS                       R10 R9 K49 ["toolResult"]
      191 DUPTABLE                         R11 K51 [{["role"] = "user", ["content"]}]
      192 NEWTABLE                         R12 0 1
      194 MOVE                             R13 R10
      195 SETLIST                          R12 R13 1 [1]
      197 SETTABLEKS                       R12 R11 K45 ["content"]
      199 GETUPVAL                         R13 0
      200 GETTABLEKS                       R13 R13 K48 ["messages"]
      202 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      204 MOVE                             R14 R11
      205 GETIMPORT                        R12 K39 [table.insert]
      207 CALL                             R12 2 0
      208 FORGLOOP                         R5 2 ; [-27]
      210 GETUPVAL                         R5 8
      211 CALL                             R5 0 1
      212 JUMPIFNOT                        R5 ; [+34]
      213 GETUPVAL                         R5 1
      214 GETTABLEKS                       R5 R5 K52 ["getInterruptionMessages"]
      216 JUMPIFNOT                        R5 ; [+30]
      217 GETUPVAL                         R5 1
      218 GETTABLEKS                       R5 R5 K52 ["getInterruptionMessages"]
      220 CALL                             R5 0 1
      221 JUMPIFNOT                        R5 ; [+25]
      222 MOVE                             R6 R5
      223 LOADNIL                          R7
      224 LOADNIL                          R8
      225 FORGPREP                         R6
      226 DUPTABLE                         R11 K51 [{["role"] = "user", ["content"]}]
      227 NEWTABLE                         R12 0 1
      229 DUPTABLE                         R13 K55 [{["type"] = "text", ["text"]}]
      230 SETTABLEKS                       R10 R13 K54 ["text"]
      232 SETLIST                          R12 R13 1 [1]
      234 SETTABLEKS                       R12 R11 K45 ["content"]
      236 GETUPVAL                         R13 0
      237 GETTABLEKS                       R13 R13 K48 ["messages"]
      239 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      241 MOVE                             R14 R11
      242 GETIMPORT                        R12 K39 [table.insert]
      244 CALL                             R12 2 0
      245 FORGLOOP                         R6 2 ; [-20]
      247 GETUPVAL                         R5 9
      248 GETTABLEKS                       R5 R5 K56 ["shouldCompact"]
      250 GETUPVAL                         R6 0
      251 GETTABLEKS                       R6 R6 K48 ["messages"]
      253 DUPTABLE                         R7 K59 [{"isSubagent", "selectedModel"}]
      254 GETUPVAL                         R8 1
      255 GETTABLEKS                       R8 R8 K57 ["isSubagent"]
      257 SETTABLEKS                       R8 R7 K57 ["isSubagent"]
      259 GETUPVAL                         R8 1
      260 GETTABLEKS                       R8 R8 K58 ["selectedModel"]
      262 SETTABLEKS                       R8 R7 K58 ["selectedModel"]
      264 CALL                             R5 2 1
      265 GETUPVAL                         R6 0
      266 GETTABLEKS                       R6 R6 K27 ["toolCallCount"]
      268 GETUPVAL                         R7 1
      269 GETTABLEKS                       R7 R7 K60 ["maxToolCalls"]
      271 JUMPIFNOTLT                      R7 R6 ; [+5]
      273 GETUPVAL                         R6 2
      274 LOADK                            R7 K61 ["max_tool_calls"]
      275 CALL                             R6 1 0
      276 RETURN                           R0 0
      277 DUPTABLE                         R7 K64 [{"resumedToolCallCount", "needsCompaction"}]
      278 GETUPVAL                         R8 0
      279 GETTABLEKS                       R8 R8 K27 ["toolCallCount"]
      281 SETTABLEKS                       R8 R7 K62 ["resumedToolCallCount"]
      283 SETTABLEKS                       R5 R7 K63 ["needsCompaction"]
      285 NEWCLOSURE                       R6 P1
      286 CAPTURE                          UPVAL U1
      287 CAPTURE                          UPVAL U0
      288 CAPTURE                          VAL R7
      289 CAPTURE                          UPVAL U9
      290 CAPTURE                          UPVAL U4
      291 CAPTURE                          UPVAL U10
      292 CAPTURE                          UPVAL U11
      293 MOVE                             R7 R6
      294 CALL                             R7 0 0
      295 RETURN                           R0 0
      296 GETUPVAL                         R0 12
      297 GETTABLEKS                       R0 R0 K65 ["assertNever"]
      299 GETUPVAL                         R1 0
      300 GETTABLEKS                       R1 R1 K0 ["stopReason"]
      302 CALL                             R0 1 0
      303 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["metadata"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETIMPORT                        R2 K2 [print]
        9 LOADK                            R3 K3 ["Processing with Roblox LLM:"]
       10 GETTABLEKS                       R4 R1 K4 ["modelName"]
       12 CALL                             R2 2 0
       13 GETTABLEKS                       R2 R1 K5 ["agenticMode"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R2 R3 K6 ["isAgenticMode"]
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K7 ["ModelQuality"]
       25 GETTABLEKS                       R3 R3 K8 ["High"]
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K7 ["ModelQuality"]
       31 GETTABLEKS                       R3 R3 K9 ["Low"]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K10 ["setModelQuality"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

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
       34 JUMPIFNOTEQKS                    R1 K9 ["message_start"] ; [+29]
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
       60 GETUPVAL                         R1 5
       61 MOVE                             R2 R0
       62 CALL                             R1 1 0
       63 RETURN                           R0 0
       64 GETTABLEKS                       R1 R0 K8 ["type"]
       66 JUMPIFNOTEQKS                    R1 K17 ["content_start"] ; [+5]
       68 GETUPVAL                         R1 6
       69 MOVE                             R2 R0
       70 CALL                             R1 1 0
       71 RETURN                           R0 0
       72 GETTABLEKS                       R1 R0 K8 ["type"]
       74 JUMPIFNOTEQKS                    R1 K18 ["content_delta"] ; [+5]
       76 GETUPVAL                         R1 7
       77 MOVE                             R2 R0
       78 CALL                             R1 1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R1 R0 K8 ["type"]
       82 JUMPIFNOTEQKS                    R1 K19 ["content_end"] ; [+42]
       84 GETUPVAL                         R1 4
       85 GETTABLEKS                       R1 R1 K16 ["currentContentId"]
       87 JUMPIFNOT                        R1 ; [+9]
       88 GETUPVAL                         R1 3
       89 GETTABLEKS                       R1 R1 K20 ["observer"]
       91 GETTABLEKS                       R1 R1 K21 ["onContentFinished"]
       93 GETUPVAL                         R2 4
       94 GETTABLEKS                       R2 R2 K16 ["currentContentId"]
       96 CALL                             R1 1 0
       97 GETUPVAL                         R1 4
       98 GETTABLEKS                       R1 R1 K15 ["currentContentType"]
      100 JUMPIFNOTEQKS                    R1 K22 ["tool"] ; [+8]
      102 GETUPVAL                         R1 4
      103 GETTABLEKS                       R1 R1 K13 ["currentTool"]
      105 JUMPIFNOT                        R1 ; [+3]
      106 GETUPVAL                         R1 8
      107 CALL                             R1 0 0
      108 RETURN                           R0 0
      109 GETUPVAL                         R1 4
      110 GETTABLEKS                       R1 R1 K15 ["currentContentType"]
      112 JUMPIFNOTEQKS                    R1 K23 ["text"] ; [+4]
      114 GETUPVAL                         R1 9
      115 CALL                             R1 0 0
      116 RETURN                           R0 0
      117 GETUPVAL                         R1 4
      118 GETTABLEKS                       R1 R1 K15 ["currentContentType"]
      120 JUMPIFNOTEQKS                    R1 K24 ["thinking"] ; [+122]
      122 GETUPVAL                         R1 10
      123 CALL                             R1 0 0
      124 RETURN                           R0 0
      125 GETTABLEKS                       R1 R0 K8 ["type"]
      127 JUMPIFNOTEQKS                    R1 K25 ["message_delta"] ; [+9]
      129 GETUPVAL                         R1 4
      130 GETTABLEKS                       R2 R0 K26 ["delta"]
      132 GETTABLEKS                       R2 R2 K27 ["stopReason"]
      134 SETTABLEKS                       R2 R1 K27 ["stopReason"]
      136 RETURN                           R0 0
      137 GETTABLEKS                       R1 R0 K8 ["type"]
      139 JUMPIFNOTEQKS                    R1 K28 ["message_stop"] ; [+4]
      141 GETUPVAL                         R1 11
      142 CALL                             R1 0 0
      143 RETURN                           R0 0
      144 GETTABLEKS                       R1 R0 K8 ["type"]
      146 JUMPIFNOTEQKS                    R1 K29 ["error"] ; [+90]
      148 GETTABLEKS                       R1 R0 K29 ["error"]
      150 GETUPVAL                         R2 4
      151 GETTABLEKS                       R2 R2 K15 ["currentContentType"]
      153 JUMPIFNOTEQKS                    R2 K22 ["tool"] ; [+8]
      155 GETUPVAL                         R2 4
      156 GETTABLEKS                       R2 R2 K13 ["currentTool"]
      158 JUMPIFNOT                        R2 ; [+3]
      159 GETUPVAL                         R2 8
      160 CALL                             R2 0 0
      161 JUMP                             ; [+15]
      162 GETUPVAL                         R2 4
      163 GETTABLEKS                       R2 R2 K15 ["currentContentType"]
      165 JUMPIFNOTEQKS                    R2 K23 ["text"] ; [+4]
      167 GETUPVAL                         R2 9
      168 CALL                             R2 0 0
      169 JUMP                             ; [+7]
      170 GETUPVAL                         R2 4
      171 GETTABLEKS                       R2 R2 K15 ["currentContentType"]
      173 JUMPIFNOTEQKS                    R2 K24 ["thinking"] ; [+3]
      175 GETUPVAL                         R2 10
      176 CALL                             R2 0 0
      177 GETUPVAL                         R2 12
      178 CALL                             R2 0 1
      179 JUMPIFNOT                        R2 ; [+22]
      180 LOADB                            R2 0
      181 JUMPIFNOTEQKS                    R1 K30 ["input_token_limit_error"] ; [+20]
      183 GETUPVAL                         R3 3
      184 GETTABLEKS                       R3 R3 K31 ["isSubagent"]
      186 NOT                              R2 R3
      187 JUMPIFNOT                        R2 ; [+14]
      188 LOADB                            R2 0
      189 GETUPVAL                         R3 4
      190 GETTABLEKS                       R3 R3 K32 ["inputTokenLimitRetryCount"]
      192 LOADN                            R4 1
      193 JUMPIFNOTLT                      R3 R4 ; [+8]
      195 GETUPVAL                         R2 13
      196 GETTABLEKS                       R2 R2 K33 ["get"]
      198 CALL                             R2 0 1
      199 GETTABLEKS                       R2 R2 K34 ["isCompactionExperimentEnabled"]
      201 CALL                             R2 0 1
      202 JUMPIFNOT                        R2 ; [+30]
      203 GETUPVAL                         R3 14
      204 CALL                             R3 0 1
      205 JUMPIFNOT                        R3 ; [+4]
      206 GETIMPORT                        R3 K36 [print]
      208 LOADK                            R4 K37 ["Input token limit hit; compacting conversation and retrying request"]
      209 CALL                             R3 1 0
      210 DUPTABLE                         R4 K41 [{["resumedToolCallCount"], ["needsCompaction"] = True, ["inputTokenLimitRetryCount"]}]
      211 GETUPVAL                         R5 4
      212 GETTABLEKS                       R5 R5 K42 ["toolCallCount"]
      214 SETTABLEKS                       R5 R4 K38 ["resumedToolCallCount"]
      216 GETUPVAL                         R6 4
      217 GETTABLEKS                       R6 R6 K32 ["inputTokenLimitRetryCount"]
      219 ADDK                             R5 R6 K43 [1]
      220 SETTABLEKS                       R5 R4 K32 ["inputTokenLimitRetryCount"]
      222 NEWCLOSURE                       R3 P0
      223 CAPTURE                          UPVAL U3
      224 CAPTURE                          UPVAL U4
      225 CAPTURE                          VAL R4
      226 CAPTURE                          UPVAL U15
      227 CAPTURE                          UPVAL U0
      228 CAPTURE                          UPVAL U16
      229 CAPTURE                          UPVAL U17
      230 MOVE                             R4 R3
      231 CALL                             R4 0 0
      232 RETURN                           R0 0
      233 GETUPVAL                         R3 18
      234 MOVE                             R4 R1
      235 CALL                             R3 1 0
      236 RETURN                           R0 0
      237 GETUPVAL                         R1 19
      238 GETTABLEKS                       R1 R1 K44 ["assertNever"]
      240 GETTABLEKS                       R2 R0 K8 ["type"]
      242 CALL                             R1 1 0
      243 RETURN                           R0 0

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
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U12
       84 CAPTURE                          UPVAL U13
       85 NEWCLOSURE                       R9 P3
       86 CAPTURE                          VAL R5
       87 NEWCLOSURE                       R10 P4
       88 CAPTURE                          VAL R5
       89 NEWCLOSURE                       R11 P5
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R0
       92 NEWCLOSURE                       R12 P6
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R0
       95 NEWCLOSURE                       R13 P7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R14 P8
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R10
      103 NEWCLOSURE                       R15 P9
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R7
      107 CAPTURE                          UPVAL U13
      108 CAPTURE                          REF R3
      109 CAPTURE                          UPVAL U14
      110 CAPTURE                          UPVAL U15
      111 CAPTURE                          UPVAL U16
      112 CAPTURE                          UPVAL U17
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          UPVAL U12
      117 NEWCLOSURE                       R16 P10
      118 CAPTURE                          UPVAL U6
      119 CAPTURE                          VAL R5
      120 CAPTURE                          UPVAL U18
      121 CAPTURE                          VAL R0
      122 NEWCLOSURE                       R17 P11
      123 CAPTURE                          REF R3
      124 CAPTURE                          UPVAL U19
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R15
      135 CAPTURE                          UPVAL U20
      136 CAPTURE                          UPVAL U7
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          UPVAL U3
      140 CAPTURE                          UPVAL U4
      141 CAPTURE                          VAL R7
      142 CAPTURE                          UPVAL U12
      143 GETTABLEKS                       R18 R4 K29 ["onTimeout"]
      145 NEWCLOSURE                       R20 P12
      146 CAPTURE                          VAL R17
      147 NAMECALL                         R18 R18 K30 ["Connect"]
      149 CALL                             R18 2 1
      150 LOADB                            R19 0
      151 LOADB                            R20 0
      152 DUPTABLE                         R21 K37 [{"state", "processEvent", "close", "cancel", "isClosed", "isCanceled"}]
      153 SETTABLEKS                       R5 R21 K31 ["state"]
      155 SETTABLEKS                       R17 R21 K32 ["processEvent"]
      157 NEWCLOSURE                       R22 P13
      158 CAPTURE                          REF R19
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R0
      163 SETTABLEKS                       R22 R21 K33 ["close"]
      165 NEWCLOSURE                       R22 P14
      166 CAPTURE                          REF R3
      167 CAPTURE                          REF R20
      168 CAPTURE                          VAL R0
      169 CAPTURE                          VAL R5
      170 SETTABLEKS                       R22 R21 K34 ["cancel"]
      172 NEWCLOSURE                       R22 P15
      173 CAPTURE                          REF R19
      174 SETTABLEKS                       R22 R21 K35 ["isClosed"]
      176 NEWCLOSURE                       R22 P16
      177 CAPTURE                          REF R20
      178 SETTABLEKS                       R22 R21 K36 ["isCanceled"]
      180 MOVE                             R3 R21
      181 SETUPVAL                         R3 4
      182 CLOSEUPVALS                      R3
      183 RETURN                           R3 1

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
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 CAPTURE                          UPVAL U17
       22 CAPTURE                          UPVAL U18
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          REF R0
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          REF R0
       27 MOVE                             R4 R3
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 CLOSEUPVALS                      R0
       31 RETURN                           R4 3

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
      120 GETTABLEKS                       R16 R0 K22 ["Util"]
      122 GETTABLEKS                       R16 R16 K30 ["capToolResult"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K9 [require]
      127 GETTABLEKS                       R17 R0 K22 ["Util"]
      129 GETTABLEKS                       R17 R17 K28 ["Compaction"]
      131 GETTABLEKS                       R17 R17 K31 ["compactThread"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R0 K32 ["Flags"]
      138 GETTABLEKS                       R18 R18 K33 ["FFlagAssistantCapToolResult"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R0 K32 ["Flags"]
      145 GETTABLEKS                       R19 R19 K34 ["FFlagAssistantCompactOnInputTokenLimit"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K9 [require]
      150 GETTABLEKS                       R20 R0 K32 ["Flags"]
      152 GETTABLEKS                       R20 R20 K35 ["FFlagAssistantMultiPlayerAgents"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R20 K9 [require]
      157 GETTABLEKS                       R21 R0 K32 ["Flags"]
      159 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantToolExistenceRefactor"]
      161 CALL                             R20 1 1
      162 GETIMPORT                        R21 K9 [require]
      164 GETTABLEKS                       R22 R0 K32 ["Flags"]
      166 GETTABLEKS                       R22 R22 K37 ["FFlagDebugLogAssistantUI"]
      168 CALL                             R21 1 1
      169 GETIMPORT                        R22 K9 [require]
      171 GETTABLEKS                       R23 R0 K32 ["Flags"]
      173 GETTABLEKS                       R23 R23 K38 ["FIntAssistantMaxToolResultChars"]
      175 CALL                             R22 1 1
      176 DUPTABLE                         R23 K43 [{["Started"] = "Started", ["Resolved"] = "Resolved", ["Rejected"] = "Rejected", ["Cancelled"] = "Cancelled"}]
      177 DUPTABLE                         R24 K50 [{["ToolNotFound"] = "tool_not_found", ["ToolCancelled"] = "tool_cancelled", ["ToolError"] = "tool_error"}]
      178 GETTABLEKS                       R25 R4 K51 ["getToolName"]
      180 DUPCLOSURE                       R26 K52 [PROTO_26]
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R11
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R18
      200 DUPTABLE                         R27 K54 [{"createProcessEventHandler"}]
      201 SETTABLEKS                       R26 R27 K53 ["createProcessEventHandler"]
      203 RETURN                           R27 1
