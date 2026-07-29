PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R1
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 JUMPIFNOT                        R7 ; [+1]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["currentToolInput"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["name"]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_7:
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
       25 GETTABLEKS                       R1 R1 K8 ["eventLogger"]
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
      174 JUMPIFNOT                        R3 ; [+260]
      175 LOADB                            R6 0
      176 LOADNIL                          R7
      177 LOADNIL                          R8
      178 GETUPVAL                         R9 2
      179 GETTABLEKS                       R9 R9 K9 ["FFlagAssistantToolExistenceRefactor"]
      181 JUMPIFNOT                        R9 ; [+92]
      182 GETUPVAL                         R10 3
      183 GETTABLEKS                       R10 R10 K42 ["tools"]
      185 NEWCLOSURE                       R11 P0
      186 CAPTURE                          UPVAL U8
      187 CAPTURE                          UPVAL U0
      188 MOVE                             R12 R10
      189 LOADNIL                          R13
      190 LOADNIL                          R14
      191 FORGPREP                         R12
      192 GETUPVAL                         R18 8
      193 MOVE                             R19 R16
      194 CALL                             R18 1 1
      195 GETUPVAL                         R19 0
      196 GETTABLEKS                       R19 R19 K3 ["name"]
      198 JUMPIFEQ                         R18 R19 ; [+2]
      200 LOADB                            R17 0 +1
      201 LOADB                            R17 1
      202 JUMPIFNOT                        R17 ; [+2]
      203 MOVE                             R9 R16
      204 JUMP                             ; [+3]
      205 FORGLOOP                         R12 2 ; [-14]
      207 LOADNIL                          R9
      208 JUMPIFNOT                        R9 ; [+62]
      209 GETUPVAL                         R10 3
      210 GETTABLEKS                       R10 R10 K43 ["onToolCall"]
      212 DUPTABLE                         R11 K47 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      213 GETUPVAL                         R12 0
      214 GETTABLEKS                       R12 R12 K3 ["name"]
      216 SETTABLEKS                       R12 R11 K3 ["name"]
      218 GETUPVAL                         R12 0
      219 GETTABLEKS                       R12 R12 K4 ["input"]
      221 SETTABLEKS                       R12 R11 K44 ["arguments"]
      223 SETTABLEKS                       R4 R11 K45 ["toolCallOptions"]
      225 GETUPVAL                         R12 4
      226 SETTABLEKS                       R12 R11 K46 ["contentId"]
      228 GETUPVAL                         R12 0
      229 GETTABLEKS                       R12 R12 K2 ["id"]
      231 SETTABLEKS                       R12 R11 K13 ["toolId"]
      233 CALL                             R10 1 1
      234 GETUPVAL                         R11 9
      235 GETTABLEKS                       R11 R11 K48 ["pendingToolCallPromises"]
      237 LOADB                            R12 1
      238 SETTABLE                         R12 R11 R10
      239 LOADK                            R11 K49 ["Started"]
      240 NAMECALL                         R12 R10 K50 ["awaitStatus"]
      242 CALL                             R12 1 2
      243 MOVE                             R11 R12
      244 MOVE                             R7 R13
      245 JUMPIFEQKS                       R11 K51 ["Resolved"] ; [+2]
      247 LOADB                            R6 0 +1
      248 LOADB                            R6 1
      249 GETUPVAL                         R12 9
      250 GETTABLEKS                       R12 R12 K48 ["pendingToolCallPromises"]
      252 LOADNIL                          R13
      253 SETTABLE                         R13 R12 R10
      254 JUMPIF                           R6 ; [+80]
      255 GETUPVAL                         R12 2
      256 GETTABLEKS                       R12 R12 K52 ["FFlagDebugLogAssistantUI"]
      258 JUMPIFNOT                        R12 ; [+6]
      259 GETIMPORT                        R12 K54 [warn]
      261 LOADK                            R13 K55 ["ToolCall failed: "]
      262 MOVE                             R14 R11
      263 MOVE                             R15 R7
      264 CALL                             R12 3 0
      265 JUMPIFNOTEQKS                    R11 K56 ["Cancelled"] ; [+3]
      267 LOADK                            R8 K57 ["tool_cancelled"]
      268 JUMP                             ; [+66]
      269 LOADK                            R8 K58 ["tool_error"]
      270 JUMP                             ; [+64]
      271 LOADB                            R6 0
      272 LOADK                            R8 K59 ["tool_not_found"]
      273 JUMP                             ; [+61]
      274 GETUPVAL                         R9 3
      275 GETTABLEKS                       R9 R9 K43 ["onToolCall"]
      277 DUPTABLE                         R10 K47 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      278 GETUPVAL                         R11 0
      279 GETTABLEKS                       R11 R11 K3 ["name"]
      281 SETTABLEKS                       R11 R10 K3 ["name"]
      283 GETUPVAL                         R11 0
      284 GETTABLEKS                       R11 R11 K4 ["input"]
      286 SETTABLEKS                       R11 R10 K44 ["arguments"]
      288 SETTABLEKS                       R4 R10 K45 ["toolCallOptions"]
      290 GETUPVAL                         R11 4
      291 SETTABLEKS                       R11 R10 K46 ["contentId"]
      293 GETUPVAL                         R11 0
      294 GETTABLEKS                       R11 R11 K2 ["id"]
      296 SETTABLEKS                       R11 R10 K13 ["toolId"]
      298 CALL                             R9 1 1
      299 GETUPVAL                         R10 9
      300 GETTABLEKS                       R10 R10 K48 ["pendingToolCallPromises"]
      302 LOADB                            R11 1
      303 SETTABLE                         R11 R10 R9
      304 LOADK                            R10 K49 ["Started"]
      305 NAMECALL                         R11 R9 K50 ["awaitStatus"]
      307 CALL                             R11 1 2
      308 MOVE                             R10 R11
      309 MOVE                             R7 R12
      310 JUMPIFEQKS                       R10 K51 ["Resolved"] ; [+2]
      312 LOADB                            R6 0 +1
      313 LOADB                            R6 1
      314 GETUPVAL                         R11 9
      315 GETTABLEKS                       R11 R11 K48 ["pendingToolCallPromises"]
      317 LOADNIL                          R12
      318 SETTABLE                         R12 R11 R9
      319 JUMPIF                           R6 ; [+15]
      320 GETUPVAL                         R11 2
      321 GETTABLEKS                       R11 R11 K52 ["FFlagDebugLogAssistantUI"]
      323 JUMPIFNOT                        R11 ; [+6]
      324 GETIMPORT                        R11 K54 [warn]
      326 LOADK                            R12 K55 ["ToolCall failed: "]
      327 MOVE                             R13 R10
      328 MOVE                             R14 R7
      329 CALL                             R11 3 0
      330 JUMPIFNOTEQKS                    R10 K56 ["Cancelled"] ; [+3]
      332 LOADK                            R8 K57 ["tool_cancelled"]
      333 JUMP                             ; [+1]
      334 LOADK                            R8 K58 ["tool_error"]
      335 LOADNIL                          R9
      336 JUMPIFNOT                        R6 ; [+5]
      337 JUMPIFNOT                        R7 ; [+3]
      338 GETTABLEKS                       R10 R7 K25 ["content"]
      340 JUMPIF                           R10 ; [+1]
      341 LOADK                            R8 K58 ["tool_error"]
      342 JUMPIFNOT                        R8 ; [+45]
      343 LOADNIL                          R10
      344 JUMPIFNOTEQKS                    R8 K59 ["tool_not_found"] ; [+3]
      346 LOADK                            R10 K60 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      347 JUMP                             ; [+13]
      348 JUMPIFNOTEQKS                    R8 K57 ["tool_cancelled"] ; [+3]
      350 LOADK                            R10 K61 ["The tool call was cancelled by the user."]
      351 JUMP                             ; [+9]
      352 JUMPIFNOTEQKS                    R8 K58 ["tool_error"] ; [+3]
      354 LOADK                            R10 K62 ["Error: Tool call failed. Please try a different approach."]
      355 JUMP                             ; [+5]
      356 GETUPVAL                         R11 10
      357 GETTABLEKS                       R11 R11 K63 ["assertNever"]
      359 MOVE                             R12 R8
      360 CALL                             R11 1 0
      361 DUPTABLE                         R11 K32 [{[1] = "text", ["text"]}]
      362 SETTABLEKS                       R10 R11 K31 ["text"]
      364 DUPTABLE                         R12 K30 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
      365 GETUPVAL                         R13 0
      366 GETTABLEKS                       R13 R13 K2 ["id"]
      368 SETTABLEKS                       R13 R12 K2 ["id"]
      370 GETUPVAL                         R13 0
      371 GETTABLEKS                       R13 R13 K3 ["name"]
      373 SETTABLEKS                       R13 R12 K3 ["name"]
      375 NEWTABLE                         R13 0 1
      377 MOVE                             R14 R11
      378 SETLIST                          R13 R14 1 [1]
      380 SETTABLEKS                       R13 R12 K25 ["content"]
      382 SETTABLEKS                       R2 R12 K28 ["startTime"]
      384 SETTABLEKS                       R5 R12 K29 ["startTimeAfterConfirmation"]
      386 MOVE                             R9 R12
      387 JUMP                             ; [+28]
      388 DUPTABLE                         R10 K65 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      389 GETUPVAL                         R11 0
      390 GETTABLEKS                       R11 R11 K2 ["id"]
      392 SETTABLEKS                       R11 R10 K2 ["id"]
      394 GETUPVAL                         R11 0
      395 GETTABLEKS                       R11 R11 K3 ["name"]
      397 SETTABLEKS                       R11 R10 K3 ["name"]
      399 GETTABLEKS                       R11 R7 K25 ["content"]
      401 SETTABLEKS                       R11 R10 K25 ["content"]
      403 GETTABLEKS                       R11 R7 K26 ["isError"]
      405 SETTABLEKS                       R11 R10 K26 ["isError"]
      407 GETTABLEKS                       R11 R7 K64 ["structuredContent"]
      409 SETTABLEKS                       R11 R10 K64 ["structuredContent"]
      411 SETTABLEKS                       R2 R10 K28 ["startTime"]
      413 SETTABLEKS                       R5 R10 K29 ["startTimeAfterConfirmation"]
      415 MOVE                             R9 R10
      416 GETUPVAL                         R10 4
      417 JUMPIFNOT                        R10 ; [+8]
      418 GETUPVAL                         R10 3
      419 GETTABLEKS                       R10 R10 K21 ["observer"]
      421 GETTABLEKS                       R10 R10 K35 ["onToolResult"]
      423 GETUPVAL                         R11 4
      424 MOVE                             R12 R9
      425 CALL                             R10 2 0
      426 DUPTABLE                         R10 K39 [{"toolUse", "toolResult", "invocationIndex"}]
      427 SETTABLEKS                       R0 R10 K36 ["toolUse"]
      429 SETTABLEKS                       R9 R10 K37 ["toolResult"]
      431 GETUPVAL                         R11 7
      432 SETTABLEKS                       R11 R10 K38 ["invocationIndex"]
      434 RETURN                           R10 1
      435 DUPTABLE                         R6 K67 [{[1] = "text", ["text"] = "The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."}]
      436 GETUPVAL                         R8 2
      437 GETTABLEKS                       R8 R8 K68 ["FFlagAssistantSplitToolsAndWidgets"]
      439 JUMPIFNOT                        R8 ; [+2]
      440 DUPTABLE                         R7 K70 [{["rejected"] = True}]
      441 JUMP                             ; [+1]
      442 LOADNIL                          R7
      443 DUPTABLE                         R8 K72 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      444 GETUPVAL                         R9 0
      445 GETTABLEKS                       R9 R9 K2 ["id"]
      447 SETTABLEKS                       R9 R8 K2 ["id"]
      449 GETUPVAL                         R9 0
      450 GETTABLEKS                       R9 R9 K3 ["name"]
      452 SETTABLEKS                       R9 R8 K3 ["name"]
      454 NEWTABLE                         R9 0 1
      456 MOVE                             R10 R6
      457 SETLIST                          R9 R10 1 [1]
      459 SETTABLEKS                       R9 R8 K25 ["content"]
      461 SETTABLEKS                       R7 R8 K64 ["structuredContent"]
      463 SETTABLEKS                       R2 R8 K28 ["startTime"]
      465 SETTABLEKS                       R5 R8 K29 ["startTimeAfterConfirmation"]
      467 GETUPVAL                         R9 4
      468 JUMPIFNOT                        R9 ; [+8]
      469 GETUPVAL                         R9 3
      470 GETTABLEKS                       R9 R9 K21 ["observer"]
      472 GETTABLEKS                       R9 R9 K35 ["onToolResult"]
      474 GETUPVAL                         R10 4
      475 MOVE                             R11 R8
      476 CALL                             R9 2 0
      477 DUPTABLE                         R9 K39 [{"toolUse", "toolResult", "invocationIndex"}]
      478 SETTABLEKS                       R0 R9 K36 ["toolUse"]
      480 SETTABLEKS                       R8 R9 K37 ["toolResult"]
      482 GETUPVAL                         R10 7
      483 SETTABLEKS                       R10 R9 K38 ["invocationIndex"]
      485 RETURN                           R9 1

PROTO_8:
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
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U7
       95 GETUPVAL                         R6 8
       96 GETTABLEKS                       R6 R6 K23 ["wrapFunction"]
       98 MOVE                             R7 R5
       99 CALL                             R6 1 1
      100 GETUPVAL                         R8 0
      101 GETTABLEKS                       R8 R8 K6 ["toolCallThreads"]
      103 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      105 MOVE                             R9 R6
      106 GETIMPORT                        R7 K26 [table.insert]
      108 CALL                             R7 2 0
      109 GETUPVAL                         R7 0
      110 LOADK                            R8 K8 [""]
      111 SETTABLEKS                       R8 R7 K27 ["currentText"]
      113 GETUPVAL                         R7 0
      114 LOADK                            R8 K8 [""]
      115 SETTABLEKS                       R8 R7 K28 ["currentSignature"]
      117 GETUPVAL                         R7 0
      118 LOADNIL                          R8
      119 SETTABLEKS                       R8 R7 K0 ["currentTool"]
      121 GETUPVAL                         R7 0
      122 LOADK                            R8 K8 [""]
      123 SETTABLEKS                       R8 R7 K7 ["currentToolInput"]
      125 GETUPVAL                         R7 0
      126 LOADNIL                          R8
      127 SETTABLEKS                       R8 R7 K29 ["currentContentType"]
      129 CLOSEUPVALS                      R4
      130 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentText"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["currentSignature"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+94]
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
       39 GETTABLEKS                       R2 R2 K15 ["FFlagAssistantLogThinkingTokens"]
       41 JUMPIFNOT                        R2 ; [+61]
       42 GETUPVAL                         R2 2
       43 GETTABLEKS                       R2 R2 K16 ["get"]
       45 CALL                             R2 0 1
       46 GETTABLEKS                       R2 R2 K17 ["eventLogger"]
       48 GETTABLEKS                       R2 R2 K18 ["logThinkingBlock"]
       50 DUPTABLE                         R3 K26 [{"messageGuid", "sessionId", "thinkingText", "isSubagent", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       51 GETUPVAL                         R4 3
       52 GETTABLEKS                       R4 R4 K19 ["messageGuid"]
       54 SETTABLEKS                       R4 R3 K19 ["messageGuid"]
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R4 R4 K27 ["conversationSessionId"]
       59 SETTABLEKS                       R4 R3 K20 ["sessionId"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K0 ["currentText"]
       64 SETTABLEKS                       R4 R3 K21 ["thinkingText"]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K22 ["isSubagent"]
       69 JUMPIFEQKB                       R5 TRUE ; [+2]
       71 LOADB                            R4 0 +1
       72 LOADB                            R4 1
       73 SETTABLEKS                       R4 R3 K22 ["isSubagent"]
       75 GETUPVAL                         R4 3
       76 GETTABLEKS                       R4 R4 K23 ["currentSubagent"]
       78 SETTABLEKS                       R4 R3 K23 ["currentSubagent"]
       80 GETUPVAL                         R4 3
       81 GETTABLEKS                       R4 R4 K24 ["parentMessageGuid"]
       83 SETTABLEKS                       R4 R3 K24 ["parentMessageGuid"]
       85 GETUPVAL                         R4 3
       86 GETTABLEKS                       R4 R4 K25 ["parentToolId"]
       88 SETTABLEKS                       R4 R3 K25 ["parentToolId"]
       90 CALL                             R2 1 0
       91 GETUPVAL                         R2 0
       92 LOADK                            R3 K1 [""]
       93 SETTABLEKS                       R3 R2 K0 ["currentText"]
       95 GETUPVAL                         R2 0
       96 LOADK                            R3 K1 [""]
       97 SETTABLEKS                       R3 R2 K2 ["currentSignature"]
       99 GETUPVAL                         R2 0
      100 LOADNIL                          R3
      101 SETTABLEKS                       R3 R2 K28 ["currentContentType"]
      103 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["invocationIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["invocationIndex"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_16:
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
      148 DUPCLOSURE                       R5 K42 [PROTO_15]
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 DUPTABLE                         R0 K3 [{[1] = "error", ["error"] = "timeout"}]
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_24:
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
       83 NEWCLOSURE                       R9 P3
       84 CAPTURE                          VAL R5
       85 NEWCLOSURE                       R10 P4
       86 CAPTURE                          VAL R5
       87 CAPTURE                          UPVAL U6
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
      107 CAPTURE                          VAL R7
      108 CAPTURE                          UPVAL U11
      109 CAPTURE                          REF R3
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          UPVAL U12
      112 CAPTURE                          UPVAL U2
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U10
      116 NEWCLOSURE                       R16 P10
      117 CAPTURE                          UPVAL U6
      118 CAPTURE                          VAL R5
      119 CAPTURE                          UPVAL U13
      120 CAPTURE                          VAL R0
      121 NEWCLOSURE                       R17 P11
      122 CAPTURE                          REF R3
      123 CAPTURE                          UPVAL U14
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R5
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          UPVAL U13
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R15
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          UPVAL U4
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
      179 SETUPVAL                         R3 4
      180 CLOSEUPVALS                      R3
      181 RETURN                           R3 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["processEvent"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_27:
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
      125 DUPCLOSURE                       R16 K28 [PROTO_0]
      126 DUPTABLE                         R17 K33 [{["Started"] = "Started", ["Resolved"] = "Resolved", ["Rejected"] = "Rejected", ["Cancelled"] = "Cancelled"}]
      127 DUPTABLE                         R18 K40 [{["ToolNotFound"] = "tool_not_found", ["ToolCancelled"] = "tool_cancelled", ["ToolError"] = "tool_error"}]
      128 GETTABLEKS                       R19 R4 K41 ["getToolName"]
      130 DUPCLOSURE                       R20 K42 [PROTO_27]
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R8
      144 DUPTABLE                         R21 K44 [{"createProcessEventHandler"}]
      145 SETTABLEKS                       R20 R21 K43 ["createProcessEventHandler"]
      147 RETURN                           R21 1
