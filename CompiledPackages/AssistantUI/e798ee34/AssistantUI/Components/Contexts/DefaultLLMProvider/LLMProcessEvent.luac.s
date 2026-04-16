PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["resumedToolCallCount"]
        5 CALL                             R0 2 1
        6 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K1 ["Failed to create new session"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 SETUPVAL                         R0 3
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R1 R2 K4 ["requestLLM"]
       17 GETUPVAL                         R2 5
       18 GETTABLEKS                       R3 R0 K5 ["processEvent"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K5 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U4
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K12 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "conversationUrl", "isSubagent", "assistantMode"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["threadId"]
        4 SETTABLEKS                       R2 R1 K0 ["threadId"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["messages"]
        9 SETTABLEKS                       R2 R1 K1 ["messages"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K2 ["tools"]
       14 SETTABLEKS                       R2 R1 K2 ["tools"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K13 ["systemMessage"]
       19 SETTABLEKS                       R2 R1 K3 ["system"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K4 ["messageGuid"]
       24 SETTABLEKS                       R2 R1 K4 ["messageGuid"]
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R1 K5 ["isFirstMessage"]
       29 GETUPVAL                         R3 1
       30 GETTABLEKS                       R2 R3 K6 ["isAgenticMode"]
       32 SETTABLEKS                       R2 R1 K6 ["isAgenticMode"]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R2 R3 K7 ["apiKeys"]
       37 SETTABLEKS                       R2 R1 K7 ["apiKeys"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R2 R3 K8 ["selectedModel"]
       42 SETTABLEKS                       R2 R1 K8 ["selectedModel"]
       44 GETUPVAL                         R3 0
       45 GETTABLEKS                       R2 R3 K9 ["conversationUrl"]
       47 SETTABLEKS                       R2 R1 K9 ["conversationUrl"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K10 ["isSubagent"]
       52 SETTABLEKS                       R2 R1 K10 ["isSubagent"]
       54 GETUPVAL                         R3 2
       55 CALL                             R3 0 1
       56 JUMPIFNOT                        R3 ; [+4]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R2 R3 K11 ["assistantMode"]
       60 JUMPIF                           R2 ; [+1]
       61 LOADNIL                          R2
       62 SETTABLEKS                       R2 R1 K11 ["assistantMode"]
       64 NEWCLOSURE                       R2 P0
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R0
       68 CAPTURE                          UPVAL U4
       69 CAPTURE                          VAL R1
       70 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observer"]
        3 GETTABLEKS                       R1 R2 K1 ["onPromptEnd"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["observer"]
        9 GETTABLEKS                       R1 R2 K1 ["onPromptEnd"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K2 ["setInputEnabled"]
       15 LOADB                            R2 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K3 ["showError"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K4 ["logRequestStop"]
       25 DUPTABLE                         R2 K10 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       26 GETIMPORT                        R4 K13 [os.clock]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K14 ["requestStartTime"]
       32 SUB                              R3 R4 R5
       33 SETTABLEKS                       R3 R2 K5 ["requestJourneyDuration"]
       35 SETTABLEKS                       R0 R2 K6 ["requestEndReason"]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K7 ["messageGuid"]
       40 SETTABLEKS                       R3 R2 K7 ["messageGuid"]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R3 R4 K15 ["conversationSessionId"]
       45 SETTABLEKS                       R3 R2 K8 ["sessionId"]
       47 LOADK                            R3 K16 [""]
       48 SETTABLEKS                       R3 R2 K9 ["message"]
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K17 ["messageId"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["currentToolInput"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["currentToolInput"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["name"]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R0 K5 [{"type", "id", "name", "input", "thoughtSignature"}]
        1 LOADK                            R1 K6 ["tool_use"]
        2 SETTABLEKS                       R1 R0 K0 ["type"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["id"]
        7 SETTABLEKS                       R1 R0 K1 ["id"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["name"]
       12 SETTABLEKS                       R1 R0 K2 ["name"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["input"]
       17 SETTABLEKS                       R1 R0 K3 ["input"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K4 ["thoughtSignature"]
       22 SETTABLEKS                       R1 R0 K4 ["thoughtSignature"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K7 ["get"]
       27 CALL                             R2 0 1
       28 GETTABLEKS                       R1 R2 K8 ["EventLogger"]
       30 GETUPVAL                         R2 2
       31 CALL                             R2 0 1
       32 JUMPIF                           R2 ; [+19]
       33 GETTABLEKS                       R2 R1 K9 ["logToolStarted"]
       35 DUPTABLE                         R3 K13 [{"messageGuid", "sessionId", "toolName"}]
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R4 R5 K10 ["messageGuid"]
       39 SETTABLEKS                       R4 R3 K10 ["messageGuid"]
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R4 R5 K14 ["conversationSessionId"]
       44 SETTABLEKS                       R4 R3 K11 ["sessionId"]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K2 ["name"]
       49 SETTABLEKS                       R4 R3 K12 ["toolName"]
       51 CALL                             R2 1 0
       52 GETUPVAL                         R2 4
       53 JUMPIFNOT                        R2 ; [+8]
       54 GETUPVAL                         R4 3
       55 GETTABLEKS                       R3 R4 K15 ["observer"]
       57 GETTABLEKS                       R2 R3 K16 ["onPreExecuteToolUse"]
       59 GETUPVAL                         R3 4
       60 MOVE                             R4 R0
       61 CALL                             R2 2 0
       62 GETUPVAL                         R3 5
       63 GETTABLEKS                       R2 R3 K17 ["getTimestampMilliseconds"]
       65 CALL                             R2 0 1
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R4 R5 K15 ["observer"]
       69 GETTABLEKS                       R3 R4 K18 ["checkToolConfirmationRequestAsync"]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K2 ["name"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R5 R6 K3 ["input"]
       77 CALL                             R3 2 1
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R5 R6 K15 ["observer"]
       81 GETTABLEKS                       R4 R5 K19 ["getToolCallOptions"]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R5 R6 K2 ["name"]
       86 CALL                             R4 1 1
       87 GETUPVAL                         R6 5
       88 GETTABLEKS                       R5 R6 K17 ["getTimestampMilliseconds"]
       90 CALL                             R5 0 1
       91 JUMPIFNOT                        R3 ; [+280]
       92 LOADB                            R6 0
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 GETUPVAL                         R9 2
       96 CALL                             R9 0 1
       97 JUMPIFNOT                        R9 ; [+84]
       98 GETUPVAL                         R10 6
       99 GETTABLEKS                       R9 R10 K20 ["find"]
      101 GETUPVAL                         R11 3
      102 GETTABLEKS                       R10 R11 K21 ["tools"]
      104 NEWCLOSURE                       R11 P0
      105 CAPTURE                          UPVAL U7
      106 CAPTURE                          UPVAL U0
      107 CALL                             R9 2 1
      108 JUMPIFNOT                        R9 ; [+68]
      109 GETUPVAL                         R11 3
      110 GETTABLEKS                       R10 R11 K22 ["onToolCall"]
      112 DUPTABLE                         R11 K26 [{"name", "arguments", "toolCallOptions", "contentId"}]
      113 GETUPVAL                         R13 0
      114 GETTABLEKS                       R12 R13 K2 ["name"]
      116 SETTABLEKS                       R12 R11 K2 ["name"]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R12 R13 K3 ["input"]
      121 SETTABLEKS                       R12 R11 K23 ["arguments"]
      123 SETTABLEKS                       R4 R11 K24 ["toolCallOptions"]
      125 GETUPVAL                         R12 4
      126 SETTABLEKS                       R12 R11 K25 ["contentId"]
      128 CALL                             R10 1 1
      129 GETUPVAL                         R12 8
      130 GETTABLEKS                       R11 R12 K27 ["pendingToolCallPromises"]
      132 LOADB                            R12 1
      133 SETTABLE                         R12 R11 R10
      134 GETUPVAL                         R12 9
      135 GETTABLEKS                       R11 R12 K28 ["Started"]
      137 NAMECALL                         R12 R10 K29 ["awaitStatus"]
      139 CALL                             R12 1 2
      140 MOVE                             R11 R12
      141 MOVE                             R7 R13
      142 GETUPVAL                         R13 9
      143 GETTABLEKS                       R12 R13 K30 ["Resolved"]
      145 JUMPIFEQ                         R11 R12 ; [+2]
      147 LOADB                            R6 0 +1
      148 LOADB                            R6 1
      149 GETUPVAL                         R13 8
      150 GETTABLEKS                       R12 R13 K27 ["pendingToolCallPromises"]
      152 LOADNIL                          R13
      153 SETTABLE                         R13 R12 R10
      154 JUMPIF                           R6 ; [+94]
      155 GETUPVAL                         R12 10
      156 CALL                             R12 0 1
      157 JUMPIFNOT                        R12 ; [+6]
      158 GETIMPORT                        R12 K32 [warn]
      160 LOADK                            R13 K33 ["ToolCall failed: "]
      161 MOVE                             R14 R11
      162 MOVE                             R15 R7
      163 CALL                             R12 3 0
      164 GETUPVAL                         R13 9
      165 GETTABLEKS                       R12 R13 K34 ["Cancelled"]
      167 JUMPIFNOTEQ                      R11 R12 ; [+5]
      169 GETUPVAL                         R12 11
      170 GETTABLEKS                       R8 R12 K35 ["ToolCancelled"]
      172 JUMP                             ; [+76]
      173 GETUPVAL                         R12 11
      174 GETTABLEKS                       R8 R12 K36 ["ToolError"]
      176 JUMP                             ; [+72]
      177 LOADB                            R6 0
      178 GETUPVAL                         R10 11
      179 GETTABLEKS                       R8 R10 K37 ["ToolNotFound"]
      181 JUMP                             ; [+67]
      182 GETUPVAL                         R10 3
      183 GETTABLEKS                       R9 R10 K22 ["onToolCall"]
      185 DUPTABLE                         R10 K26 [{"name", "arguments", "toolCallOptions", "contentId"}]
      186 GETUPVAL                         R12 0
      187 GETTABLEKS                       R11 R12 K2 ["name"]
      189 SETTABLEKS                       R11 R10 K2 ["name"]
      191 GETUPVAL                         R12 0
      192 GETTABLEKS                       R11 R12 K3 ["input"]
      194 SETTABLEKS                       R11 R10 K23 ["arguments"]
      196 SETTABLEKS                       R4 R10 K24 ["toolCallOptions"]
      198 GETUPVAL                         R11 4
      199 SETTABLEKS                       R11 R10 K25 ["contentId"]
      201 CALL                             R9 1 1
      202 GETUPVAL                         R11 8
      203 GETTABLEKS                       R10 R11 K27 ["pendingToolCallPromises"]
      205 LOADB                            R11 1
      206 SETTABLE                         R11 R10 R9
      207 GETUPVAL                         R11 9
      208 GETTABLEKS                       R10 R11 K28 ["Started"]
      210 NAMECALL                         R11 R9 K29 ["awaitStatus"]
      212 CALL                             R11 1 2
      213 MOVE                             R10 R11
      214 MOVE                             R7 R12
      215 GETUPVAL                         R12 9
      216 GETTABLEKS                       R11 R12 K30 ["Resolved"]
      218 JUMPIFEQ                         R10 R11 ; [+2]
      220 LOADB                            R6 0 +1
      221 LOADB                            R6 1
      222 GETUPVAL                         R12 8
      223 GETTABLEKS                       R11 R12 K27 ["pendingToolCallPromises"]
      225 LOADNIL                          R12
      226 SETTABLE                         R12 R11 R9
      227 JUMPIF                           R6 ; [+21]
      228 GETUPVAL                         R11 10
      229 CALL                             R11 0 1
      230 JUMPIFNOT                        R11 ; [+6]
      231 GETIMPORT                        R11 K32 [warn]
      233 LOADK                            R12 K33 ["ToolCall failed: "]
      234 MOVE                             R13 R10
      235 MOVE                             R14 R7
      236 CALL                             R11 3 0
      237 GETUPVAL                         R12 9
      238 GETTABLEKS                       R11 R12 K34 ["Cancelled"]
      240 JUMPIFNOTEQ                      R10 R11 ; [+5]
      242 GETUPVAL                         R11 11
      243 GETTABLEKS                       R8 R11 K35 ["ToolCancelled"]
      245 JUMP                             ; [+3]
      246 GETUPVAL                         R11 11
      247 GETTABLEKS                       R8 R11 K36 ["ToolError"]
      249 LOADNIL                          R9
      250 JUMPIFNOT                        R6 ; [+7]
      251 JUMPIFNOT                        R7 ; [+3]
      252 GETTABLEKS                       R10 R7 K38 ["content"]
      254 JUMPIF                           R10 ; [+3]
      255 GETUPVAL                         R10 11
      256 GETTABLEKS                       R8 R10 K36 ["ToolError"]
      258 JUMPIFNOT                        R8 ; [+63]
      259 LOADNIL                          R10
      260 GETUPVAL                         R12 11
      261 GETTABLEKS                       R11 R12 K37 ["ToolNotFound"]
      263 JUMPIFNOTEQ                      R8 R11 ; [+3]
      265 LOADK                            R10 K39 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      266 JUMP                             ; [+19]
      267 GETUPVAL                         R12 11
      268 GETTABLEKS                       R11 R12 K35 ["ToolCancelled"]
      270 JUMPIFNOTEQ                      R8 R11 ; [+3]
      272 LOADK                            R10 K40 ["The tool call was cancelled by the user."]
      273 JUMP                             ; [+12]
      274 GETUPVAL                         R12 11
      275 GETTABLEKS                       R11 R12 K36 ["ToolError"]
      277 JUMPIFNOTEQ                      R8 R11 ; [+3]
      279 LOADK                            R10 K41 ["Error: Tool call failed. Please try a different approach."]
      280 JUMP                             ; [+5]
      281 GETUPVAL                         R12 12
      282 GETTABLEKS                       R11 R12 K42 ["assertNever"]
      284 MOVE                             R12 R8
      285 CALL                             R11 1 0
      286 DUPTABLE                         R11 K44 [{"type", "text"}]
      287 LOADK                            R12 K43 ["text"]
      288 SETTABLEKS                       R12 R11 K0 ["type"]
      290 SETTABLEKS                       R10 R11 K43 ["text"]
      292 DUPTABLE                         R12 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      293 LOADK                            R13 K49 ["tool_result"]
      294 SETTABLEKS                       R13 R12 K0 ["type"]
      296 GETUPVAL                         R14 0
      297 GETTABLEKS                       R13 R14 K1 ["id"]
      299 SETTABLEKS                       R13 R12 K1 ["id"]
      301 GETUPVAL                         R14 0
      302 GETTABLEKS                       R13 R14 K2 ["name"]
      304 SETTABLEKS                       R13 R12 K2 ["name"]
      306 NEWTABLE                         R13 0 1
      308 MOVE                             R14 R11
      309 SETLIST                          R13 R14 1 [1]
      311 SETTABLEKS                       R13 R12 K38 ["content"]
      313 LOADB                            R13 1
      314 SETTABLEKS                       R13 R12 K45 ["isError"]
      316 SETTABLEKS                       R2 R12 K46 ["startTime"]
      318 SETTABLEKS                       R5 R12 K47 ["startTimeAfterConfirmation"]
      320 MOVE                             R9 R12
      321 JUMP                             ; [+31]
      322 DUPTABLE                         R10 K51 [{"type", "id", "name", "content", "isError", "structuredContent", "startTime", "startTimeAfterConfirmation"}]
      323 LOADK                            R11 K49 ["tool_result"]
      324 SETTABLEKS                       R11 R10 K0 ["type"]
      326 GETUPVAL                         R12 0
      327 GETTABLEKS                       R11 R12 K1 ["id"]
      329 SETTABLEKS                       R11 R10 K1 ["id"]
      331 GETUPVAL                         R12 0
      332 GETTABLEKS                       R11 R12 K2 ["name"]
      334 SETTABLEKS                       R11 R10 K2 ["name"]
      336 GETTABLEKS                       R11 R7 K38 ["content"]
      338 SETTABLEKS                       R11 R10 K38 ["content"]
      340 GETTABLEKS                       R11 R7 K45 ["isError"]
      342 SETTABLEKS                       R11 R10 K45 ["isError"]
      344 GETTABLEKS                       R11 R7 K50 ["structuredContent"]
      346 SETTABLEKS                       R11 R10 K50 ["structuredContent"]
      348 SETTABLEKS                       R2 R10 K46 ["startTime"]
      350 SETTABLEKS                       R5 R10 K47 ["startTimeAfterConfirmation"]
      352 MOVE                             R9 R10
      353 GETUPVAL                         R10 4
      354 JUMPIFNOT                        R10 ; [+8]
      355 GETUPVAL                         R12 3
      356 GETTABLEKS                       R11 R12 K15 ["observer"]
      358 GETTABLEKS                       R10 R11 K52 ["onToolResult"]
      360 GETUPVAL                         R11 4
      361 MOVE                             R12 R9
      362 CALL                             R10 2 0
      363 DUPTABLE                         R10 K56 [{"toolUse", "toolResult", "invocationIndex"}]
      364 SETTABLEKS                       R0 R10 K53 ["toolUse"]
      366 SETTABLEKS                       R9 R10 K54 ["toolResult"]
      368 GETUPVAL                         R11 13
      369 SETTABLEKS                       R11 R10 K55 ["invocationIndex"]
      371 RETURN                           R10 1
      372 DUPTABLE                         R6 K44 [{"type", "text"}]
      373 LOADK                            R7 K43 ["text"]
      374 SETTABLEKS                       R7 R6 K0 ["type"]
      376 LOADK                            R7 K57 ["The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."]
      377 SETTABLEKS                       R7 R6 K43 ["text"]
      379 DUPTABLE                         R7 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      380 LOADK                            R8 K49 ["tool_result"]
      381 SETTABLEKS                       R8 R7 K0 ["type"]
      383 GETUPVAL                         R9 0
      384 GETTABLEKS                       R8 R9 K1 ["id"]
      386 SETTABLEKS                       R8 R7 K1 ["id"]
      388 GETUPVAL                         R9 0
      389 GETTABLEKS                       R8 R9 K2 ["name"]
      391 SETTABLEKS                       R8 R7 K2 ["name"]
      393 NEWTABLE                         R8 0 1
      395 MOVE                             R9 R6
      396 SETLIST                          R8 R9 1 [1]
      398 SETTABLEKS                       R8 R7 K38 ["content"]
      400 LOADB                            R8 0
      401 SETTABLEKS                       R8 R7 K45 ["isError"]
      403 SETTABLEKS                       R2 R7 K46 ["startTime"]
      405 SETTABLEKS                       R5 R7 K47 ["startTimeAfterConfirmation"]
      407 GETUPVAL                         R8 4
      408 JUMPIFNOT                        R8 ; [+8]
      409 GETUPVAL                         R10 3
      410 GETTABLEKS                       R9 R10 K15 ["observer"]
      412 GETTABLEKS                       R8 R9 K52 ["onToolResult"]
      414 GETUPVAL                         R9 4
      415 MOVE                             R10 R7
      416 CALL                             R8 2 0
      417 DUPTABLE                         R8 K56 [{"toolUse", "toolResult", "invocationIndex"}]
      418 SETTABLEKS                       R0 R8 K53 ["toolUse"]
      420 SETTABLEKS                       R7 R8 K54 ["toolResult"]
      422 GETUPVAL                         R9 13
      423 SETTABLEKS                       R9 R8 K55 ["invocationIndex"]
      425 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["currentTool"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["currentContentId"]
        6 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        8 MOVE                             R3 R0
        9 LOADK                            R4 K2 ["Expected currentTool to be set"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K6 ["toolCallThreads"]
       16 LENGTH                           R3 R4
       17 ADDK                             R2 R3 K5 [1]
       18 LOADNIL                          R3
       19 GETUPVAL                         R4 1
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+40]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K7 ["currentToolInput"]
       25 JUMPIFNOTEQKS                    R4 K8 [""] ; [+9]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K9 ["Types"]
       30 GETTABLEKS                       R4 R5 K10 ["emptyObject"]
       32 CALL                             R4 0 1
       33 MOVE                             R3 R4
       34 JUMP                             ; [+19]
       35 GETIMPORT                        R4 K12 [pcall]
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U0
       40 CALL                             R4 1 2
       41 JUMPIF                           R4 ; [+11]
       42 GETUPVAL                         R7 3
       43 GETTABLEKS                       R6 R7 K13 ["processEvent"]
       45 DUPTABLE                         R7 K16 [{"type", "error"}]
       46 LOADK                            R8 K15 ["error"]
       47 SETTABLEKS                       R8 R7 K14 ["type"]
       49 LOADK                            R8 K17 ["client_error"]
       50 SETTABLEKS                       R8 R7 K15 ["error"]
       52 CALL                             R6 1 0
       53 MOVE                             R3 R5
       54 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       56 MOVE                             R5 R3
       57 LOADK                            R6 K18 ["Expected parsedInput to be set"]
       58 GETIMPORT                        R4 K4 [assert]
       60 CALL                             R4 2 0
       61 JUMP                             ; [+20]
       62 GETIMPORT                        R4 K12 [pcall]
       64 NEWCLOSURE                       R5 P1
       65 CAPTURE                          UPVAL U2
       66 CAPTURE                          UPVAL U0
       67 CALL                             R4 1 2
       68 JUMPIF                           R4 ; [+12]
       69 GETUPVAL                         R7 3
       70 GETTABLEKS                       R6 R7 K13 ["processEvent"]
       72 DUPTABLE                         R7 K16 [{"type", "error"}]
       73 LOADK                            R8 K15 ["error"]
       74 SETTABLEKS                       R8 R7 K14 ["type"]
       76 LOADK                            R8 K17 ["client_error"]
       77 SETTABLEKS                       R8 R7 K15 ["error"]
       79 CALL                             R6 1 0
       80 RETURN                           R0 0
       81 MOVE                             R3 R5
       82 SETTABLEKS                       R3 R0 K19 ["input"]
       84 NEWCLOSURE                       R4 P2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U4
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          UPVAL U9
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          UPVAL U10
       95 CAPTURE                          UPVAL U11
       96 CAPTURE                          UPVAL U12
       97 CAPTURE                          UPVAL U13
       98 CAPTURE                          VAL R2
       99 GETUPVAL                         R6 14
      100 GETTABLEKS                       R5 R6 K20 ["wrapFunction"]
      102 MOVE                             R6 R4
      103 CALL                             R5 1 1
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R7 R8 K6 ["toolCallThreads"]
      107 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      109 MOVE                             R8 R5
      110 GETIMPORT                        R6 K23 [table.insert]
      112 CALL                             R6 2 0
      113 GETUPVAL                         R6 0
      114 LOADK                            R7 K8 [""]
      115 SETTABLEKS                       R7 R6 K24 ["currentText"]
      117 GETUPVAL                         R6 0
      118 LOADK                            R7 K8 [""]
      119 SETTABLEKS                       R7 R6 K25 ["currentSignature"]
      121 GETUPVAL                         R6 0
      122 LOADNIL                          R7
      123 SETTABLEKS                       R7 R6 K0 ["currentTool"]
      125 GETUPVAL                         R6 0
      126 LOADK                            R7 K8 [""]
      127 SETTABLEKS                       R7 R6 K7 ["currentToolInput"]
      129 GETUPVAL                         R6 0
      130 LOADNIL                          R7
      131 SETTABLEKS                       R7 R6 K26 ["currentContentType"]
      133 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["currentText"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+30]
        5 DUPTABLE                         R0 K4 [{"type", "text"}]
        6 LOADK                            R1 K3 ["text"]
        7 SETTABLEKS                       R1 R0 K2 ["type"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["currentText"]
       12 SETTABLEKS                       R1 R0 K3 ["text"]
       14 DUPTABLE                         R1 K7 [{"role", "content"}]
       15 LOADK                            R2 K8 ["assistant"]
       16 SETTABLEKS                       R2 R1 K5 ["role"]
       18 NEWTABLE                         R2 0 1
       20 MOVE                             R3 R0
       21 SETLIST                          R2 R3 1 [1]
       23 SETTABLEKS                       R2 R1 K6 ["content"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K9 ["messages"]
       28 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       30 MOVE                             R4 R1
       31 GETIMPORT                        R2 K12 [table.insert]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R0 0
       35 LOADK                            R1 K1 [""]
       36 SETTABLEKS                       R1 R0 K0 ["currentText"]
       38 GETUPVAL                         R0 0
       39 LOADK                            R1 K1 [""]
       40 SETTABLEKS                       R1 R0 K13 ["currentSignature"]
       42 GETUPVAL                         R0 0
       43 LOADNIL                          R1
       44 SETTABLEKS                       R1 R0 K14 ["currentTool"]
       46 GETUPVAL                         R0 0
       47 LOADK                            R1 K1 [""]
       48 SETTABLEKS                       R1 R0 K15 ["currentToolInput"]
       50 GETUPVAL                         R0 0
       51 LOADNIL                          R1
       52 SETTABLEKS                       R1 R0 K16 ["currentContentType"]
       54 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["currentText"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["currentSignature"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+35]
       10 DUPTABLE                         R0 K6 [{"type", "thinking", "signature"}]
       11 LOADK                            R1 K4 ["thinking"]
       12 SETTABLEKS                       R1 R0 K3 ["type"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["currentText"]
       17 SETTABLEKS                       R1 R0 K4 ["thinking"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K2 ["currentSignature"]
       22 SETTABLEKS                       R1 R0 K5 ["signature"]
       24 DUPTABLE                         R1 K9 [{"role", "content"}]
       25 LOADK                            R2 K10 ["assistant"]
       26 SETTABLEKS                       R2 R1 K7 ["role"]
       28 NEWTABLE                         R2 0 1
       30 MOVE                             R3 R0
       31 SETLIST                          R2 R3 1 [1]
       33 SETTABLEKS                       R2 R1 K8 ["content"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K11 ["messages"]
       38 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       40 MOVE                             R4 R1
       41 GETIMPORT                        R2 K14 [table.insert]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

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
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R3 R4 K14 ["currentTool"]
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
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R4 R5 K22 ["observer"]
       94 GETTABLEKS                       R3 R4 K23 ["onContentStart"]
       96 GETTABLEKS                       R4 R0 K0 ["contentBlock"]
       98 CALL                             R3 1 1
       99 SETTABLEKS                       R3 R2 K20 ["currentContentId"]
      101 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["delta"]
        2 GETTABLEKS                       R2 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["text_delta"] ; [+32]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["currentText"]
        9 GETTABLEKS                       R5 R1 K4 ["text"]
       11 CONCAT                           R3 R4 R5
       12 SETTABLEKS                       R3 R2 K3 ["currentText"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K5 ["currentContentId"]
       17 JUMPIFNOT                        R2 ; [+118]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K6 ["observer"]
       21 GETTABLEKS                       R2 R3 K7 ["onContentDelta"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K5 ["currentContentId"]
       26 DUPTABLE                         R4 K8 [{"type", "text"}]
       27 LOADK                            R5 K2 ["text_delta"]
       28 SETTABLEKS                       R5 R4 K1 ["type"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K3 ["currentText"]
       33 SETTABLEKS                       R5 R4 K4 ["text"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0
       37 GETTABLEKS                       R2 R1 K1 ["type"]
       39 JUMPIFNOTEQKS                    R2 K9 ["json_delta"] ; [+49]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R4 R2 K10 ["currentToolInput"]
       44 GETTABLEKS                       R5 R1 K11 ["jsonDelta"]
       46 CONCAT                           R3 R4 R5
       47 SETTABLEKS                       R3 R2 K10 ["currentToolInput"]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K5 ["currentContentId"]
       52 JUMPIFNOT                        R2 ; [+83]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K12 ["currentTool"]
       56 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       58 LOADK                            R4 K13 ["Expected currentTool to be set"]
       59 GETIMPORT                        R2 K15 [assert]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R3 R4 K6 ["observer"]
       65 GETTABLEKS                       R2 R3 K7 ["onContentDelta"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R3 R4 K5 ["currentContentId"]
       70 DUPTABLE                         R4 K16 [{"type", "jsonDelta"}]
       71 LOADK                            R5 K9 ["json_delta"]
       72 SETTABLEKS                       R5 R4 K1 ["type"]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R5 R6 K10 ["currentToolInput"]
       77 SETTABLEKS                       R5 R4 K11 ["jsonDelta"]
       79 DUPTABLE                         R5 K18 [{"toolName"}]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K12 ["currentTool"]
       83 GETTABLEKS                       R6 R7 K19 ["name"]
       85 SETTABLEKS                       R6 R5 K17 ["toolName"]
       87 CALL                             R2 3 0
       88 RETURN                           R0 0
       89 GETTABLEKS                       R2 R1 K1 ["type"]
       91 JUMPIFNOTEQKS                    R2 K20 ["thinking_delta"] ; [+44]
       93 GETUPVAL                         R2 0
       94 GETTABLEKS                       R4 R2 K3 ["currentText"]
       96 GETTABLEKS                       R5 R1 K21 ["thinking"]
       98 CONCAT                           R3 R4 R5
       99 SETTABLEKS                       R3 R2 K3 ["currentText"]
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R4 R2 K22 ["currentSignature"]
      104 GETTABLEKS                       R5 R1 K23 ["signature"]
      106 CONCAT                           R3 R4 R5
      107 SETTABLEKS                       R3 R2 K22 ["currentSignature"]
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R2 R3 K5 ["currentContentId"]
      112 JUMPIFNOT                        R2 ; [+23]
      113 GETUPVAL                         R4 1
      114 GETTABLEKS                       R3 R4 K6 ["observer"]
      116 GETTABLEKS                       R2 R3 K7 ["onContentDelta"]
      118 GETUPVAL                         R4 0
      119 GETTABLEKS                       R3 R4 K5 ["currentContentId"]
      121 DUPTABLE                         R4 K24 [{"type", "thinking", "signature"}]
      122 LOADK                            R5 K20 ["thinking_delta"]
      123 SETTABLEKS                       R5 R4 K1 ["type"]
      125 GETUPVAL                         R6 0
      126 GETTABLEKS                       R5 R6 K3 ["currentText"]
      128 SETTABLEKS                       R5 R4 K21 ["thinking"]
      130 GETUPVAL                         R6 0
      131 GETTABLEKS                       R5 R6 K22 ["currentSignature"]
      133 SETTABLEKS                       R5 R4 K23 ["signature"]
      135 CALL                             R2 2 0
      136 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["currentContentId"]
        3 JUMPIFNOT                        R0 ; [+9]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["observer"]
        7 GETTABLEKS                       R0 R1 K2 ["onContentFinished"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["currentContentId"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["currentContentType"]
        3 JUMPIFNOTEQKS                    R0 K1 ["tool"] ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K2 ["currentTool"]
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["currentContentType"]
       15 JUMPIFNOTEQKS                    R0 K3 ["text"] ; [+4]
       17 GETUPVAL                         R0 2
       18 CALL                             R0 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K0 ["currentContentType"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["stopReason"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        5 LOADK                            R2 K1 ["Session stop reason is not set!"]
        6 GETIMPORT                        R0 K3 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       12 JUMPIFEQKS                       R0 K4 ["message_end"] ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       17 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+52]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K6 ["observer"]
       22 GETTABLEKS                       R0 R1 K7 ["onPromptEnd"]
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K6 ["observer"]
       28 GETTABLEKS                       R0 R1 K7 ["onPromptEnd"]
       30 CALL                             R0 0 0
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R0 R1 K8 ["setInputEnabled"]
       34 LOADB                            R1 1
       35 CALL                             R0 1 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K9 ["logRequestStop"]
       39 DUPTABLE                         R1 K15 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       40 GETIMPORT                        R3 K18 [os.clock]
       42 CALL                             R3 0 1
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R4 R5 K19 ["requestStartTime"]
       46 SUB                              R2 R3 R4
       47 SETTABLEKS                       R2 R1 K10 ["requestJourneyDuration"]
       49 LOADK                            R2 K20 ["message_stop"]
       50 SETTABLEKS                       R2 R1 K11 ["requestEndReason"]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K12 ["messageGuid"]
       55 SETTABLEKS                       R2 R1 K12 ["messageGuid"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R2 R3 K21 ["conversationSessionId"]
       60 SETTABLEKS                       R2 R1 K13 ["sessionId"]
       62 LOADK                            R2 K22 [""]
       63 SETTABLEKS                       R2 R1 K14 ["message"]
       65 GETUPVAL                         R3 1
       66 GETTABLEKS                       R2 R3 K23 ["messageId"]
       68 CALL                             R0 2 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R1 0
       71 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       73 JUMPIFEQKS                       R0 K24 ["safety_filter"] ; [+6]
       75 GETUPVAL                         R1 0
       76 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       78 JUMPIFNOTEQKS                    R0 K25 ["token_limit"] ; [+7]
       80 GETUPVAL                         R0 2
       81 GETUPVAL                         R2 0
       82 GETTABLEKS                       R1 R2 K0 ["stopReason"]
       84 CALL                             R0 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R1 0
       87 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       89 JUMPIFNOTEQKS                    R0 K26 ["tool_use"] ; [+143]
       91 GETUPVAL                         R0 0
       92 GETTABLEKS                       R1 R0 K27 ["toolCallCount"]
       94 GETUPVAL                         R4 0
       95 GETTABLEKS                       R3 R4 K28 ["toolCallThreads"]
       97 LENGTH                           R2 R3
       98 ADD                              R1 R1 R2
       99 SETTABLEKS                       R1 R0 K27 ["toolCallCount"]
      101 GETUPVAL                         R1 3
      102 GETTABLEKS                       R0 R1 K29 ["collectTasks"]
      104 GETUPVAL                         R2 0
      105 GETTABLEKS                       R1 R2 K28 ["toolCallThreads"]
      107 CALL                             R0 1 2
      108 GETUPVAL                         R3 4
      109 FASTCALL2K                       ASSERT R3 K30 ; [+4]
      111 LOADK                            R4 K30 ["Expected session to be set"]
      112 GETIMPORT                        R2 K3 [assert]
      114 CALL                             R2 2 0
      115 GETUPVAL                         R3 4
      116 GETTABLEKS                       R2 R3 K31 ["isCanceled"]
      118 CALL                             R2 0 1
      119 JUMPIFNOT                        R2 ; [+1]
      120 RETURN                           R0 0
      121 JUMPIF                           R0 ; [+7]
      122 GETUPVAL                         R2 2
      123 LOADK                            R3 K32 ["client_error"]
      124 CALL                             R2 1 0
      125 GETIMPORT                        R2 K34 [error]
      127 LOADK                            R3 K35 ["Failed to execute all tool calls"]
      128 CALL                             R2 1 0
      129 FASTCALL2K                       ASSERT R1 K36 ; [+5]
      131 MOVE                             R3 R1
      132 LOADK                            R4 K36 ["Expected toolCallResults to be set"]
      133 GETIMPORT                        R2 K3 [assert]
      135 CALL                             R2 2 0
      136 NEWTABLE                         R2 0 0
      138 MOVE                             R3 R1
      139 LOADNIL                          R4
      140 LOADNIL                          R5
      141 FORGPREP                         R3
      142 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      144 MOVE                             R9 R2
      145 MOVE                             R10 R7
      146 GETIMPORT                        R8 K39 [table.insert]
      148 CALL                             R8 2 0
      149 FORGLOOP                         R3 2 ; [-8]
      151 GETIMPORT                        R3 K41 [table.sort]
      153 MOVE                             R4 R2
      154 DUPCLOSURE                       R5 K42 [PROTO_15]
      155 CALL                             R3 2 0
      156 MOVE                             R3 R2
      157 LOADNIL                          R4
      158 LOADNIL                          R5
      159 FORGPREP                         R3
      160 DUPTABLE                         R8 K45 [{"role", "content"}]
      161 LOADK                            R9 K46 ["assistant"]
      162 SETTABLEKS                       R9 R8 K43 ["role"]
      164 NEWTABLE                         R9 0 1
      166 GETTABLEKS                       R10 R7 K47 ["toolUse"]
      168 SETLIST                          R9 R10 1 [1]
      170 SETTABLEKS                       R9 R8 K44 ["content"]
      172 GETUPVAL                         R11 0
      173 GETTABLEKS                       R10 R11 K48 ["messages"]
      175 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      177 MOVE                             R11 R8
      178 GETIMPORT                        R9 K39 [table.insert]
      180 CALL                             R9 2 0
      181 FORGLOOP                         R3 2 ; [-22]
      183 MOVE                             R3 R2
      184 LOADNIL                          R4
      185 LOADNIL                          R5
      186 FORGPREP                         R3
      187 DUPTABLE                         R8 K45 [{"role", "content"}]
      188 LOADK                            R9 K49 ["user"]
      189 SETTABLEKS                       R9 R8 K43 ["role"]
      191 NEWTABLE                         R9 0 1
      193 GETTABLEKS                       R10 R7 K50 ["toolResult"]
      195 SETLIST                          R9 R10 1 [1]
      197 SETTABLEKS                       R9 R8 K44 ["content"]
      199 GETUPVAL                         R11 0
      200 GETTABLEKS                       R10 R11 K48 ["messages"]
      202 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      204 MOVE                             R11 R8
      205 GETIMPORT                        R9 K39 [table.insert]
      207 CALL                             R9 2 0
      208 FORGLOOP                         R3 2 ; [-22]
      210 GETUPVAL                         R4 0
      211 GETTABLEKS                       R3 R4 K27 ["toolCallCount"]
      213 GETUPVAL                         R5 1
      214 GETTABLEKS                       R4 R5 K51 ["maxToolCalls"]
      216 JUMPIFNOTLT                      R4 R3 ; [+5]
      218 GETUPVAL                         R3 2
      219 LOADK                            R4 K52 ["max_tool_calls"]
      220 CALL                             R3 1 0
      221 RETURN                           R0 0
      222 GETUPVAL                         R3 5
      223 DUPTABLE                         R4 K54 [{"resumedToolCallCount"}]
      224 GETUPVAL                         R6 0
      225 GETTABLEKS                       R5 R6 K27 ["toolCallCount"]
      227 SETTABLEKS                       R5 R4 K53 ["resumedToolCallCount"]
      229 CALL                             R3 1 1
      230 MOVE                             R4 R3
      231 CALL                             R4 0 0
      232 RETURN                           R0 0
      233 GETUPVAL                         R1 6
      234 GETTABLEKS                       R0 R1 K55 ["assertNever"]
      236 GETUPVAL                         R2 0
      237 GETTABLEKS                       R1 R2 K0 ["stopReason"]
      239 CALL                             R0 1 0
      240 RETURN                           R0 0

PROTO_17:
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
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K7 ["ModelQuality"]
       25 GETTABLEKS                       R3 R4 K8 ["High"]
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K7 ["ModelQuality"]
       31 GETTABLEKS                       R3 R4 K9 ["Low"]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K10 ["setModelQuality"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 0
       38 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Expected session to be set"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K3 ["isClosed"]
       10 CALL                             R1 0 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K4 ["isTerminalEventType"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K5 ["close"]
       22 CALL                             R1 0 0
       23 JUMP                             ; [+8]
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K6 ["reset"]
       27 CALL                             R1 0 0
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R1 R2 K7 ["onPacketReceived"]
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
       84 GETUPVAL                         R2 4
       85 GETTABLEKS                       R1 R2 K16 ["currentContentId"]
       87 JUMPIFNOT                        R1 ; [+9]
       88 GETUPVAL                         R3 3
       89 GETTABLEKS                       R2 R3 K20 ["observer"]
       91 GETTABLEKS                       R1 R2 K21 ["onContentFinished"]
       93 GETUPVAL                         R3 4
       94 GETTABLEKS                       R2 R3 K16 ["currentContentId"]
       96 CALL                             R1 1 0
       97 GETUPVAL                         R2 4
       98 GETTABLEKS                       R1 R2 K15 ["currentContentType"]
      100 JUMPIFNOTEQKS                    R1 K22 ["tool"] ; [+8]
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R1 R2 K13 ["currentTool"]
      105 JUMPIFNOT                        R1 ; [+3]
      106 GETUPVAL                         R1 8
      107 CALL                             R1 0 0
      108 RETURN                           R0 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R1 R2 K15 ["currentContentType"]
      112 JUMPIFNOTEQKS                    R1 K23 ["text"] ; [+4]
      114 GETUPVAL                         R1 9
      115 CALL                             R1 0 0
      116 RETURN                           R0 0
      117 GETUPVAL                         R2 4
      118 GETTABLEKS                       R1 R2 K15 ["currentContentType"]
      120 JUMPIFNOTEQKS                    R1 K24 ["thinking"] ; [+66]
      122 GETUPVAL                         R1 10
      123 CALL                             R1 0 0
      124 RETURN                           R0 0
      125 GETTABLEKS                       R1 R0 K8 ["type"]
      127 JUMPIFNOTEQKS                    R1 K25 ["message_delta"] ; [+9]
      129 GETUPVAL                         R1 4
      130 GETTABLEKS                       R3 R0 K26 ["delta"]
      132 GETTABLEKS                       R2 R3 K27 ["stopReason"]
      134 SETTABLEKS                       R2 R1 K27 ["stopReason"]
      136 RETURN                           R0 0
      137 GETTABLEKS                       R1 R0 K8 ["type"]
      139 JUMPIFNOTEQKS                    R1 K28 ["message_stop"] ; [+4]
      141 GETUPVAL                         R1 11
      142 CALL                             R1 0 0
      143 RETURN                           R0 0
      144 GETTABLEKS                       R1 R0 K8 ["type"]
      146 JUMPIFNOTEQKS                    R1 K29 ["error"] ; [+34]
      148 GETTABLEKS                       R1 R0 K29 ["error"]
      150 GETUPVAL                         R3 4
      151 GETTABLEKS                       R2 R3 K15 ["currentContentType"]
      153 JUMPIFNOTEQKS                    R2 K22 ["tool"] ; [+8]
      155 GETUPVAL                         R3 4
      156 GETTABLEKS                       R2 R3 K13 ["currentTool"]
      158 JUMPIFNOT                        R2 ; [+3]
      159 GETUPVAL                         R2 8
      160 CALL                             R2 0 0
      161 JUMP                             ; [+15]
      162 GETUPVAL                         R3 4
      163 GETTABLEKS                       R2 R3 K15 ["currentContentType"]
      165 JUMPIFNOTEQKS                    R2 K23 ["text"] ; [+4]
      167 GETUPVAL                         R2 9
      168 CALL                             R2 0 0
      169 JUMP                             ; [+7]
      170 GETUPVAL                         R3 4
      171 GETTABLEKS                       R2 R3 K15 ["currentContentType"]
      173 JUMPIFNOTEQKS                    R2 K24 ["thinking"] ; [+3]
      175 GETUPVAL                         R2 10
      176 CALL                             R2 0 0
      177 GETUPVAL                         R2 12
      178 MOVE                             R3 R1
      179 CALL                             R2 1 0
      180 RETURN                           R0 0
      181 GETUPVAL                         R2 13
      182 GETTABLEKS                       R1 R2 K30 ["assertNever"]
      184 GETTABLEKS                       R2 R0 K8 ["type"]
      186 CALL                             R1 1 0
      187 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R0 K2 [{"type", "error"}]
        1 LOADK                            R1 K1 ["error"]
        2 SETTABLEKS                       R1 R0 K0 ["type"]
        4 LOADK                            R1 K3 ["timeout"]
        5 SETTABLEKS                       R1 R0 K1 ["error"]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K4 ["close"]
       15 CALL                             R0 0 0
       16 LOADB                            R0 1
       17 SETUPVAL                         R0 0
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R0 R1 K5 ["currentContentId"]
       21 JUMPIFNOT                        R0 ; [+9]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R1 R2 K6 ["observer"]
       25 GETTABLEKS                       R0 R1 K7 ["onContentFinished"]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R1 R2 K5 ["currentContentId"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isClosed"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["close"]
        8 CALL                             R0 0 0
        9 LOADB                            R0 1
       10 SETUPVAL                         R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["observer"]
       14 GETTABLEKS                       R0 R1 K3 ["onPromptEnd"]
       16 JUMPIFNOT                        R0 ; [+6]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K2 ["observer"]
       20 GETTABLEKS                       R0 R1 K3 ["onPromptEnd"]
       22 CALL                             R0 0 0
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R0 R3 K4 ["pendingToolCallPromises"]
       26 LOADNIL                          R1
       27 LOADNIL                          R2
       28 FORGPREP                         R0
       29 NAMECALL                         R5 R3 K5 ["cancel"]
       31 CALL                             R5 1 0
       32 FORGLOOP                         R0 2 ; [-4]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R0 R3 K6 ["toolCallThreads"]
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
        0 GETTABLEKS                       R2 R0 K0 ["setInputEnabled"]
        2 LOADB                            R3 0
        3 CALL                             R2 1 0
        4 LOADNIL                          R2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["new"]
        8 GETTABLEKS                       R4 R0 K2 ["timeoutMs"]
       10 CALL                             R3 1 1
       11 DUPTABLE                         R4 K20 [{"sessionId", "currentText", "currentSignature", "currentTool", "currentToolInput", "currentContentType", "currentContentId", "messages", "toolCallCount", "toolCallThreads", "pendingToolCallPromises", "isAgenticMode", "requestStartTime", "messageGuid", "conversationSessionId", "messageId", "logRequestStop"}]
       12 GETUPVAL                         R5 1
       13 LOADB                            R7 0
       14 NAMECALL                         R5 R5 K21 ["GenerateGUID"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       19 LOADK                            R5 K22 [""]
       20 SETTABLEKS                       R5 R4 K4 ["currentText"]
       22 LOADK                            R5 K22 [""]
       23 SETTABLEKS                       R5 R4 K5 ["currentSignature"]
       25 LOADNIL                          R5
       26 SETTABLEKS                       R5 R4 K6 ["currentTool"]
       28 LOADK                            R5 K22 [""]
       29 SETTABLEKS                       R5 R4 K7 ["currentToolInput"]
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K8 ["currentContentType"]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K9 ["currentContentId"]
       37 GETTABLEKS                       R5 R0 K23 ["initialMessages"]
       39 JUMPIF                           R5 ; [+2]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R4 K10 ["messages"]
       44 ORK                              R5 R1 K24 [0]
       45 SETTABLEKS                       R5 R4 K11 ["toolCallCount"]
       47 NEWTABLE                         R5 0 0
       49 SETTABLEKS                       R5 R4 K12 ["toolCallThreads"]
       51 NEWTABLE                         R5 0 0
       53 SETTABLEKS                       R5 R4 K13 ["pendingToolCallPromises"]
       55 LOADB                            R5 0
       56 SETTABLEKS                       R5 R4 K14 ["isAgenticMode"]
       58 GETTABLEKS                       R5 R0 K15 ["requestStartTime"]
       60 SETTABLEKS                       R5 R4 K15 ["requestStartTime"]
       62 GETTABLEKS                       R5 R0 K16 ["messageGuid"]
       64 SETTABLEKS                       R5 R4 K16 ["messageGuid"]
       66 GETTABLEKS                       R5 R0 K17 ["conversationSessionId"]
       68 SETTABLEKS                       R5 R4 K17 ["conversationSessionId"]
       70 GETTABLEKS                       R5 R0 K18 ["messageId"]
       72 SETTABLEKS                       R5 R4 K18 ["messageId"]
       74 GETTABLEKS                       R5 R0 K19 ["logRequestStop"]
       76 SETTABLEKS                       R5 R4 K19 ["logRequestStop"]
       78 NEWCLOSURE                       R5 P0
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U4
       84 NEWCLOSURE                       R6 P1
       85 CAPTURE                          VAL R0
       86 NEWCLOSURE                       R7 P2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          REF R2
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          UPVAL U11
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          UPVAL U13
       99 CAPTURE                          UPVAL U14
      100 CAPTURE                          UPVAL U15
      101 CAPTURE                          UPVAL U16
      102 NEWCLOSURE                       R8 P3
      103 CAPTURE                          VAL R4
      104 NEWCLOSURE                       R9 P4
      105 CAPTURE                          VAL R4
      106 NEWCLOSURE                       R10 P5
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R0
      109 NEWCLOSURE                       R11 P6
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R0
      112 NEWCLOSURE                       R12 P7
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 NEWCLOSURE                       R13 P8
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 NEWCLOSURE                       R14 P9
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R6
      124 CAPTURE                          UPVAL U16
      125 CAPTURE                          REF R2
      126 CAPTURE                          VAL R5
      127 CAPTURE                          UPVAL U15
      128 NEWCLOSURE                       R15 P10
      129 CAPTURE                          UPVAL U13
      130 CAPTURE                          VAL R4
      131 CAPTURE                          UPVAL U17
      132 CAPTURE                          VAL R0
      133 NEWCLOSURE                       R16 P11
      134 CAPTURE                          REF R2
      135 CAPTURE                          UPVAL U18
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R6
      147 CAPTURE                          UPVAL U15
      148 GETTABLEKS                       R17 R3 K25 ["onTimeout"]
      150 NEWCLOSURE                       R19 P12
      151 CAPTURE                          VAL R16
      152 NAMECALL                         R17 R17 K26 ["Connect"]
      154 CALL                             R17 2 1
      155 LOADB                            R18 0
      156 LOADB                            R19 0
      157 DUPTABLE                         R20 K33 [{"state", "processEvent", "close", "cancel", "isClosed", "isCanceled"}]
      158 SETTABLEKS                       R4 R20 K27 ["state"]
      160 SETTABLEKS                       R16 R20 K28 ["processEvent"]
      162 NEWCLOSURE                       R21 P13
      163 CAPTURE                          REF R18
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R0
      168 SETTABLEKS                       R21 R20 K29 ["close"]
      170 NEWCLOSURE                       R21 P14
      171 CAPTURE                          REF R2
      172 CAPTURE                          REF R19
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R4
      175 SETTABLEKS                       R21 R20 K30 ["cancel"]
      177 NEWCLOSURE                       R21 P15
      178 CAPTURE                          REF R18
      179 SETTABLEKS                       R21 R20 K31 ["isClosed"]
      181 NEWCLOSURE                       R21 P16
      182 CAPTURE                          REF R19
      183 SETTABLEKS                       R21 R20 K32 ["isCanceled"]
      185 MOVE                             R2 R20
      186 SETUPVAL                         R2 4
      187 CLOSEUPVALS                      R2
      188 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+47]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["cancel"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["state"]
        9 GETTABLEKS                       R0 R1 K2 ["logRequestStop"]
       11 DUPTABLE                         R1 K8 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       12 GETIMPORT                        R3 K11 [os.clock]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K1 ["state"]
       18 GETTABLEKS                       R4 R5 K12 ["requestStartTime"]
       20 SUB                              R2 R3 R4
       21 SETTABLEKS                       R2 R1 K3 ["requestJourneyDuration"]
       23 LOADK                            R2 K13 ["user_cancelled"]
       24 SETTABLEKS                       R2 R1 K4 ["requestEndReason"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K1 ["state"]
       29 GETTABLEKS                       R2 R3 K5 ["messageGuid"]
       31 SETTABLEKS                       R2 R1 K5 ["messageGuid"]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K1 ["state"]
       36 GETTABLEKS                       R2 R3 K14 ["conversationSessionId"]
       38 SETTABLEKS                       R2 R1 K6 ["sessionId"]
       40 LOADK                            R2 K15 [""]
       41 SETTABLEKS                       R2 R1 K7 ["message"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K1 ["state"]
       46 GETTABLEKS                       R2 R3 K16 ["messageId"]
       48 CALL                             R0 2 0
       49 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["processEvent"]
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
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 CAPTURE                          UPVAL U16
       21 NEWCLOSURE                       R2 P1
       22 CAPTURE                          REF R0
       23 NEWCLOSURE                       R3 P2
       24 CAPTURE                          REF R0
       25 MOVE                             R4 R3
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 CLOSEUPVALS                      R0
       29 RETURN                           R4 3

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
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Guest"]
       24 GETTABLEKS                       R4 R5 K13 ["Environment"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R8 R0 K14 ["Components"]
       31 GETTABLEKS                       R7 R8 K15 ["Contexts"]
       33 GETTABLEKS                       R6 R7 K16 ["DefaultLLMProvider"]
       35 GETTABLEKS                       R5 R6 K17 ["LLMFormattedToolTypes"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R9 R0 K14 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       44 GETTABLEKS                       R7 R8 K16 ["DefaultLLMProvider"]
       46 GETTABLEKS                       R6 R7 K18 ["LLMRequest"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Components"]
       53 GETTABLEKS                       R9 R10 K15 ["Contexts"]
       55 GETTABLEKS                       R8 R9 K16 ["DefaultLLMProvider"]
       57 GETTABLEKS                       R7 R8 K19 ["LLMSystemMessage"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R9 R0 K10 ["Parent"]
       64 GETTABLEKS                       R8 R9 K20 ["ModelContextProtocol"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R11 R0 K14 ["Components"]
       71 GETTABLEKS                       R10 R11 K15 ["Contexts"]
       73 GETTABLEKS                       R9 R10 K21 ["ModelQualityContext"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K9 [require]
       78 GETTABLEKS                       R11 R0 K22 ["Util"]
       80 GETTABLEKS                       R10 R11 K23 ["StreamEventUtils"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K9 [require]
       85 GETTABLEKS                       R12 R0 K22 ["Util"]
       87 GETTABLEKS                       R11 R12 K24 ["TaskCollector"]
       89 CALL                             R10 1 1
       90 GETIMPORT                        R11 K9 [require]
       92 GETTABLEKS                       R13 R0 K22 ["Util"]
       94 GETTABLEKS                       R12 R13 K25 ["Time"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R14 R0 K22 ["Util"]
      101 GETTABLEKS                       R13 R14 K26 ["Timer"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K9 [require]
      106 GETTABLEKS                       R14 R0 K27 ["Types"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R16 R0 K28 ["Flags"]
      113 GETTABLEKS                       R15 R16 K29 ["getAssistantModeEnabled"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R17 R0 K28 ["Flags"]
      120 GETTABLEKS                       R16 R17 K30 ["FFlagAssistantMultipleExternalMCPServers"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R18 R0 K28 ["Flags"]
      127 GETTABLEKS                       R17 R18 K31 ["FFlagAssistantToolExistenceRefactor"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R19 R0 K28 ["Flags"]
      134 GETTABLEKS                       R18 R19 K32 ["FFlagDebugLogAssistantUI"]
      136 CALL                             R17 1 1
      137 DUPTABLE                         R18 K37 [{"Started", "Resolved", "Rejected", "Cancelled"}]
      138 LOADK                            R19 K33 ["Started"]
      139 SETTABLEKS                       R19 R18 K33 ["Started"]
      141 LOADK                            R19 K34 ["Resolved"]
      142 SETTABLEKS                       R19 R18 K34 ["Resolved"]
      144 LOADK                            R19 K35 ["Rejected"]
      145 SETTABLEKS                       R19 R18 K35 ["Rejected"]
      147 LOADK                            R19 K36 ["Cancelled"]
      148 SETTABLEKS                       R19 R18 K36 ["Cancelled"]
      150 DUPTABLE                         R19 K41 [{"ToolNotFound", "ToolCancelled", "ToolError"}]
      151 LOADK                            R20 K42 ["tool_not_found"]
      152 SETTABLEKS                       R20 R19 K38 ["ToolNotFound"]
      154 LOADK                            R20 K43 ["tool_cancelled"]
      155 SETTABLEKS                       R20 R19 K39 ["ToolCancelled"]
      157 LOADK                            R20 K44 ["tool_error"]
      158 SETTABLEKS                       R20 R19 K40 ["ToolError"]
      160 GETTABLEKS                       R20 R4 K45 ["getToolName"]
      162 DUPCLOSURE                       R21 K46 [PROTO_27]
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R11
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R20
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R9
      180 DUPTABLE                         R22 K48 [{"createProcessEventHandler"}]
      181 SETTABLEKS                       R21 R22 K47 ["createProcessEventHandler"]
      183 RETURN                           R22 1
