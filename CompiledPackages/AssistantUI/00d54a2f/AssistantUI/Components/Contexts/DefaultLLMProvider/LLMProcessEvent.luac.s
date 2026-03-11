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
        0 DUPTABLE                         R1 K10 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "isSubagent"}]
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
       17 GETTABLEKS                       R2 R3 K11 ["systemMessage"]
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
       45 GETTABLEKS                       R2 R3 K9 ["isSubagent"]
       47 SETTABLEKS                       R2 R1 K9 ["isSubagent"]
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R1
       55 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["observer"]
        6 GETTABLEKS                       R1 R2 K1 ["onPromptEnd"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["observer"]
       12 GETTABLEKS                       R1 R2 K1 ["onPromptEnd"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["setInputEnabled"]
       18 LOADB                            R2 1
       19 CALL                             R1 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K3 ["showError"]
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K4 ["logRequestStop"]
       28 DUPTABLE                         R2 K10 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       29 GETIMPORT                        R4 K13 [os.clock]
       31 CALL                             R4 0 1
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K14 ["requestStartTime"]
       35 SUB                              R3 R4 R5
       36 SETTABLEKS                       R3 R2 K5 ["requestJourneyDuration"]
       38 SETTABLEKS                       R0 R2 K6 ["requestEndReason"]
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K7 ["messageGuid"]
       43 SETTABLEKS                       R3 R2 K7 ["messageGuid"]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K15 ["conversationSessionId"]
       48 SETTABLEKS                       R3 R2 K8 ["sessionId"]
       50 LOADK                            R3 K16 [""]
       51 SETTABLEKS                       R3 R2 K9 ["message"]
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R3 R4 K17 ["messageId"]
       56 CALL                             R1 2 0
       57 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["currentToolInput"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["currentToolInput"]
       17 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["currentToolInput"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["currentToolInput"]
       17 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

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
       91 JUMPIFNOT                        R3 ; [+276]
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
      321 JUMP                             ; [+27]
      322 DUPTABLE                         R10 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
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
      344 SETTABLEKS                       R2 R10 K46 ["startTime"]
      346 SETTABLEKS                       R5 R10 K47 ["startTimeAfterConfirmation"]
      348 MOVE                             R9 R10
      349 GETUPVAL                         R10 4
      350 JUMPIFNOT                        R10 ; [+8]
      351 GETUPVAL                         R12 3
      352 GETTABLEKS                       R11 R12 K15 ["observer"]
      354 GETTABLEKS                       R10 R11 K50 ["onToolResult"]
      356 GETUPVAL                         R11 4
      357 MOVE                             R12 R9
      358 CALL                             R10 2 0
      359 DUPTABLE                         R10 K54 [{"toolUse", "toolResult", "invocationIndex"}]
      360 SETTABLEKS                       R0 R10 K51 ["toolUse"]
      362 SETTABLEKS                       R9 R10 K52 ["toolResult"]
      364 GETUPVAL                         R11 13
      365 SETTABLEKS                       R11 R10 K53 ["invocationIndex"]
      367 RETURN                           R10 1
      368 DUPTABLE                         R6 K44 [{"type", "text"}]
      369 LOADK                            R7 K43 ["text"]
      370 SETTABLEKS                       R7 R6 K0 ["type"]
      372 LOADK                            R7 K55 ["The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."]
      373 SETTABLEKS                       R7 R6 K43 ["text"]
      375 DUPTABLE                         R7 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      376 LOADK                            R8 K49 ["tool_result"]
      377 SETTABLEKS                       R8 R7 K0 ["type"]
      379 GETUPVAL                         R9 0
      380 GETTABLEKS                       R8 R9 K1 ["id"]
      382 SETTABLEKS                       R8 R7 K1 ["id"]
      384 GETUPVAL                         R9 0
      385 GETTABLEKS                       R8 R9 K2 ["name"]
      387 SETTABLEKS                       R8 R7 K2 ["name"]
      389 NEWTABLE                         R8 0 1
      391 MOVE                             R9 R6
      392 SETLIST                          R8 R9 1 [1]
      394 SETTABLEKS                       R8 R7 K38 ["content"]
      396 LOADB                            R8 0
      397 SETTABLEKS                       R8 R7 K45 ["isError"]
      399 SETTABLEKS                       R2 R7 K46 ["startTime"]
      401 SETTABLEKS                       R5 R7 K47 ["startTimeAfterConfirmation"]
      403 GETUPVAL                         R8 4
      404 JUMPIFNOT                        R8 ; [+8]
      405 GETUPVAL                         R10 3
      406 GETTABLEKS                       R9 R10 K15 ["observer"]
      408 GETTABLEKS                       R8 R9 K50 ["onToolResult"]
      410 GETUPVAL                         R9 4
      411 MOVE                             R10 R7
      412 CALL                             R8 2 0
      413 DUPTABLE                         R8 K54 [{"toolUse", "toolResult", "invocationIndex"}]
      414 SETTABLEKS                       R0 R8 K51 ["toolUse"]
      416 SETTABLEKS                       R7 R8 K52 ["toolResult"]
      418 GETUPVAL                         R9 13
      419 SETTABLEKS                       R9 R8 K53 ["invocationIndex"]
      421 RETURN                           R8 1

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
       21 JUMPIFNOT                        R4 ; [+48]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K7 ["currentToolInput"]
       25 JUMPIFNOTEQKS                    R4 K8 [""] ; [+15]
       27 GETUPVAL                         R4 2
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+8]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R5 R6 K9 ["Types"]
       33 GETTABLEKS                       R4 R5 K10 ["emptyObject"]
       35 CALL                             R4 0 1
       36 MOVE                             R3 R4
       37 JUMP                             ; [+24]
       38 NEWTABLE                         R3 0 0
       40 JUMP                             ; [+21]
       41 GETIMPORT                        R4 K12 [pcall]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U4
       48 CALL                             R4 1 2
       49 JUMPIF                           R4 ; [+11]
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R6 R7 K13 ["processEvent"]
       53 DUPTABLE                         R7 K16 [{"type", "error"}]
       54 LOADK                            R8 K15 ["error"]
       55 SETTABLEKS                       R8 R7 K14 ["type"]
       57 LOADK                            R8 K17 ["client_error"]
       58 SETTABLEKS                       R8 R7 K15 ["error"]
       60 CALL                             R6 1 0
       61 MOVE                             R3 R5
       62 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       64 MOVE                             R5 R3
       65 LOADK                            R6 K18 ["Expected parsedInput to be set"]
       66 GETIMPORT                        R4 K4 [assert]
       68 CALL                             R4 2 0
       69 JUMP                             ; [+22]
       70 GETIMPORT                        R4 K12 [pcall]
       72 NEWCLOSURE                       R5 P1
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          UPVAL U4
       77 CALL                             R4 1 2
       78 JUMPIF                           R4 ; [+12]
       79 GETUPVAL                         R7 5
       80 GETTABLEKS                       R6 R7 K13 ["processEvent"]
       82 DUPTABLE                         R7 K16 [{"type", "error"}]
       83 LOADK                            R8 K15 ["error"]
       84 SETTABLEKS                       R8 R7 K14 ["type"]
       86 LOADK                            R8 K17 ["client_error"]
       87 SETTABLEKS                       R8 R7 K15 ["error"]
       89 CALL                             R6 1 0
       90 RETURN                           R0 0
       91 MOVE                             R3 R5
       92 SETTABLEKS                       R3 R0 K19 ["input"]
       94 NEWCLOSURE                       R4 P2
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          UPVAL U7
       98 CAPTURE                          UPVAL U8
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          UPVAL U13
      106 CAPTURE                          UPVAL U14
      107 CAPTURE                          UPVAL U15
      108 CAPTURE                          VAL R2
      109 GETUPVAL                         R6 16
      110 GETTABLEKS                       R5 R6 K20 ["wrapFunction"]
      112 MOVE                             R6 R4
      113 CALL                             R5 1 1
      114 GETUPVAL                         R8 0
      115 GETTABLEKS                       R7 R8 K6 ["toolCallThreads"]
      117 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      119 MOVE                             R8 R5
      120 GETIMPORT                        R6 K23 [table.insert]
      122 CALL                             R6 2 0
      123 GETUPVAL                         R6 0
      124 LOADK                            R7 K8 [""]
      125 SETTABLEKS                       R7 R6 K24 ["currentText"]
      127 GETUPVAL                         R6 0
      128 LOADK                            R7 K8 [""]
      129 SETTABLEKS                       R7 R6 K25 ["currentSignature"]
      131 GETUPVAL                         R6 0
      132 LOADNIL                          R7
      133 SETTABLEKS                       R7 R6 K0 ["currentTool"]
      135 GETUPVAL                         R6 0
      136 LOADK                            R7 K8 [""]
      137 SETTABLEKS                       R7 R6 K7 ["currentToolInput"]
      139 GETUPVAL                         R6 0
      140 LOADNIL                          R7
      141 SETTABLEKS                       R7 R6 K26 ["currentContentType"]
      143 RETURN                           R0 0

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
       17 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+55]
       19 GETUPVAL                         R0 1
       20 CALL                             R0 0 1
       21 JUMPIFNOT                        R0 ; [+12]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R1 R2 K6 ["observer"]
       25 GETTABLEKS                       R0 R1 K7 ["onPromptEnd"]
       27 JUMPIFNOT                        R0 ; [+6]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K6 ["observer"]
       31 GETTABLEKS                       R0 R1 K7 ["onPromptEnd"]
       33 CALL                             R0 0 0
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R0 R1 K8 ["setInputEnabled"]
       37 LOADB                            R1 1
       38 CALL                             R0 1 0
       39 GETUPVAL                         R1 2
       40 GETTABLEKS                       R0 R1 K9 ["logRequestStop"]
       42 DUPTABLE                         R1 K15 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       43 GETIMPORT                        R3 K18 [os.clock]
       45 CALL                             R3 0 1
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R4 R5 K19 ["requestStartTime"]
       49 SUB                              R2 R3 R4
       50 SETTABLEKS                       R2 R1 K10 ["requestJourneyDuration"]
       52 LOADK                            R2 K20 ["message_stop"]
       53 SETTABLEKS                       R2 R1 K11 ["requestEndReason"]
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R2 R3 K12 ["messageGuid"]
       58 SETTABLEKS                       R2 R1 K12 ["messageGuid"]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R2 R3 K21 ["conversationSessionId"]
       63 SETTABLEKS                       R2 R1 K13 ["sessionId"]
       65 LOADK                            R2 K22 [""]
       66 SETTABLEKS                       R2 R1 K14 ["message"]
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R2 R3 K23 ["messageId"]
       71 CALL                             R0 2 0
       72 RETURN                           R0 0
       73 GETUPVAL                         R1 0
       74 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       76 JUMPIFEQKS                       R0 K24 ["safety_filter"] ; [+6]
       78 GETUPVAL                         R1 0
       79 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       81 JUMPIFNOTEQKS                    R0 K25 ["token_limit"] ; [+7]
       83 GETUPVAL                         R0 3
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R1 R2 K0 ["stopReason"]
       87 CALL                             R0 1 0
       88 RETURN                           R0 0
       89 GETUPVAL                         R1 0
       90 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       92 JUMPIFNOTEQKS                    R0 K26 ["tool_use"] ; [+143]
       94 GETUPVAL                         R0 0
       95 GETTABLEKS                       R1 R0 K27 ["toolCallCount"]
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R3 R4 K28 ["toolCallThreads"]
      100 LENGTH                           R2 R3
      101 ADD                              R1 R1 R2
      102 SETTABLEKS                       R1 R0 K27 ["toolCallCount"]
      104 GETUPVAL                         R1 4
      105 GETTABLEKS                       R0 R1 K29 ["collectTasks"]
      107 GETUPVAL                         R2 0
      108 GETTABLEKS                       R1 R2 K28 ["toolCallThreads"]
      110 CALL                             R0 1 2
      111 GETUPVAL                         R3 5
      112 FASTCALL2K                       ASSERT R3 K30 ; [+4]
      114 LOADK                            R4 K30 ["Expected session to be set"]
      115 GETIMPORT                        R2 K3 [assert]
      117 CALL                             R2 2 0
      118 GETUPVAL                         R3 5
      119 GETTABLEKS                       R2 R3 K31 ["isCanceled"]
      121 CALL                             R2 0 1
      122 JUMPIFNOT                        R2 ; [+1]
      123 RETURN                           R0 0
      124 JUMPIF                           R0 ; [+7]
      125 GETUPVAL                         R2 3
      126 LOADK                            R3 K32 ["client_error"]
      127 CALL                             R2 1 0
      128 GETIMPORT                        R2 K34 [error]
      130 LOADK                            R3 K35 ["Failed to execute all tool calls"]
      131 CALL                             R2 1 0
      132 FASTCALL2K                       ASSERT R1 K36 ; [+5]
      134 MOVE                             R3 R1
      135 LOADK                            R4 K36 ["Expected toolCallResults to be set"]
      136 GETIMPORT                        R2 K3 [assert]
      138 CALL                             R2 2 0
      139 NEWTABLE                         R2 0 0
      141 MOVE                             R3 R1
      142 LOADNIL                          R4
      143 LOADNIL                          R5
      144 FORGPREP                         R3
      145 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      147 MOVE                             R9 R2
      148 MOVE                             R10 R7
      149 GETIMPORT                        R8 K39 [table.insert]
      151 CALL                             R8 2 0
      152 FORGLOOP                         R3 2 ; [-8]
      154 GETIMPORT                        R3 K41 [table.sort]
      156 MOVE                             R4 R2
      157 DUPCLOSURE                       R5 K42 [PROTO_15]
      158 CALL                             R3 2 0
      159 MOVE                             R3 R2
      160 LOADNIL                          R4
      161 LOADNIL                          R5
      162 FORGPREP                         R3
      163 DUPTABLE                         R8 K45 [{"role", "content"}]
      164 LOADK                            R9 K46 ["assistant"]
      165 SETTABLEKS                       R9 R8 K43 ["role"]
      167 NEWTABLE                         R9 0 1
      169 GETTABLEKS                       R10 R7 K47 ["toolUse"]
      171 SETLIST                          R9 R10 1 [1]
      173 SETTABLEKS                       R9 R8 K44 ["content"]
      175 GETUPVAL                         R11 0
      176 GETTABLEKS                       R10 R11 K48 ["messages"]
      178 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      180 MOVE                             R11 R8
      181 GETIMPORT                        R9 K39 [table.insert]
      183 CALL                             R9 2 0
      184 FORGLOOP                         R3 2 ; [-22]
      186 MOVE                             R3 R2
      187 LOADNIL                          R4
      188 LOADNIL                          R5
      189 FORGPREP                         R3
      190 DUPTABLE                         R8 K45 [{"role", "content"}]
      191 LOADK                            R9 K49 ["user"]
      192 SETTABLEKS                       R9 R8 K43 ["role"]
      194 NEWTABLE                         R9 0 1
      196 GETTABLEKS                       R10 R7 K50 ["toolResult"]
      198 SETLIST                          R9 R10 1 [1]
      200 SETTABLEKS                       R9 R8 K44 ["content"]
      202 GETUPVAL                         R11 0
      203 GETTABLEKS                       R10 R11 K48 ["messages"]
      205 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      207 MOVE                             R11 R8
      208 GETIMPORT                        R9 K39 [table.insert]
      210 CALL                             R9 2 0
      211 FORGLOOP                         R3 2 ; [-22]
      213 GETUPVAL                         R4 0
      214 GETTABLEKS                       R3 R4 K27 ["toolCallCount"]
      216 GETUPVAL                         R5 2
      217 GETTABLEKS                       R4 R5 K51 ["maxToolCalls"]
      219 JUMPIFNOTLT                      R4 R3 ; [+5]
      221 GETUPVAL                         R3 3
      222 LOADK                            R4 K52 ["max_tool_calls"]
      223 CALL                             R3 1 0
      224 RETURN                           R0 0
      225 GETUPVAL                         R3 6
      226 DUPTABLE                         R4 K54 [{"resumedToolCallCount"}]
      227 GETUPVAL                         R6 0
      228 GETTABLEKS                       R5 R6 K27 ["toolCallCount"]
      230 SETTABLEKS                       R5 R4 K53 ["resumedToolCallCount"]
      232 CALL                             R3 1 1
      233 MOVE                             R4 R3
      234 CALL                             R4 0 0
      235 RETURN                           R0 0
      236 GETUPVAL                         R1 7
      237 GETTABLEKS                       R0 R1 K55 ["assertNever"]
      239 GETUPVAL                         R2 0
      240 GETTABLEKS                       R1 R2 K0 ["stopReason"]
      242 CALL                             R0 1 0
      243 RETURN                           R0 0

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
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 1
       13 JUMPIFNOT                        R0 ; [+12]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K2 ["observer"]
       17 GETTABLEKS                       R0 R1 K3 ["onPromptEnd"]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R1 R2 K2 ["observer"]
       23 GETTABLEKS                       R0 R1 K3 ["onPromptEnd"]
       25 CALL                             R0 0 0
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R0 R3 K4 ["pendingToolCallPromises"]
       29 LOADNIL                          R1
       30 LOADNIL                          R2
       31 FORGPREP                         R0
       32 NAMECALL                         R5 R3 K5 ["cancel"]
       34 CALL                             R5 1 0
       35 FORGLOOP                         R0 2 ; [-4]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R0 R3 K6 ["toolCallThreads"]
       40 LOADNIL                          R1
       41 LOADNIL                          R2
       42 FORGPREP                         R0
       43 GETIMPORT                        R5 K8 [task.cancel]
       45 MOVE                             R6 R4
       46 CALL                             R5 1 0
       47 FORGLOOP                         R0 2 ; [-5]
       49 RETURN                           R0 0

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
       83 NEWCLOSURE                       R6 P1
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          VAL R0
       86 NEWCLOSURE                       R7 P2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          REF R2
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          UPVAL U9
       95 CAPTURE                          VAL R0
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U14
      101 CAPTURE                          UPVAL U15
      102 CAPTURE                          UPVAL U16
      103 CAPTURE                          UPVAL U17
      104 NEWCLOSURE                       R8 P3
      105 CAPTURE                          VAL R4
      106 NEWCLOSURE                       R9 P4
      107 CAPTURE                          VAL R4
      108 NEWCLOSURE                       R10 P5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R0
      111 NEWCLOSURE                       R11 P6
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R0
      114 NEWCLOSURE                       R12 P7
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R0
      117 NEWCLOSURE                       R13 P8
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 NEWCLOSURE                       R14 P9
      123 CAPTURE                          VAL R4
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R6
      127 CAPTURE                          UPVAL U17
      128 CAPTURE                          REF R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          UPVAL U16
      131 NEWCLOSURE                       R15 P10
      132 CAPTURE                          UPVAL U14
      133 CAPTURE                          VAL R4
      134 CAPTURE                          UPVAL U18
      135 CAPTURE                          VAL R0
      136 NEWCLOSURE                       R16 P11
      137 CAPTURE                          REF R2
      138 CAPTURE                          UPVAL U19
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R6
      150 CAPTURE                          UPVAL U16
      151 GETTABLEKS                       R17 R3 K25 ["onTimeout"]
      153 NEWCLOSURE                       R19 P12
      154 CAPTURE                          VAL R16
      155 NAMECALL                         R17 R17 K26 ["Connect"]
      157 CALL                             R17 2 1
      158 LOADB                            R18 0
      159 LOADB                            R19 0
      160 DUPTABLE                         R20 K33 [{"state", "processEvent", "close", "cancel", "isClosed", "isCanceled"}]
      161 SETTABLEKS                       R4 R20 K27 ["state"]
      163 SETTABLEKS                       R16 R20 K28 ["processEvent"]
      165 NEWCLOSURE                       R21 P13
      166 CAPTURE                          REF R18
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R21 R20 K29 ["close"]
      173 NEWCLOSURE                       R21 P14
      174 CAPTURE                          REF R2
      175 CAPTURE                          REF R19
      176 CAPTURE                          UPVAL U4
      177 CAPTURE                          VAL R0
      178 CAPTURE                          VAL R4
      179 SETTABLEKS                       R21 R20 K30 ["cancel"]
      181 NEWCLOSURE                       R21 P15
      182 CAPTURE                          REF R18
      183 SETTABLEKS                       R21 R20 K31 ["isClosed"]
      185 NEWCLOSURE                       R21 P16
      186 CAPTURE                          REF R19
      187 SETTABLEKS                       R21 R20 K32 ["isCanceled"]
      189 MOVE                             R2 R20
      190 SETUPVAL                         R2 3
      191 CLOSEUPVALS                      R2
      192 RETURN                           R2 1

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
        4 CAPTURE                          VAL R1
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U2
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
       22 NEWCLOSURE                       R2 P1
       23 CAPTURE                          REF R0
       24 NEWCLOSURE                       R3 P2
       25 CAPTURE                          REF R0
       26 MOVE                             R4 R3
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 CLOSEUPVALS                      R0
       30 RETURN                           R4 3

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
      113 GETTABLEKS                       R15 R16 K29 ["FFlagAssistantJsonEncoder"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K9 [require]
      118 GETTABLEKS                       R17 R0 K28 ["Flags"]
      120 GETTABLEKS                       R16 R17 K30 ["FFlagAssistantMultiEditConfirmation"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R18 R0 K28 ["Flags"]
      127 GETTABLEKS                       R17 R18 K31 ["FFlagAssistantMultipleExternalMCPServers"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R19 R0 K28 ["Flags"]
      134 GETTABLEKS                       R18 R19 K32 ["FFlagDebugLogAssistantUI"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K9 [require]
      139 GETTABLEKS                       R20 R0 K28 ["Flags"]
      141 GETTABLEKS                       R19 R20 K33 ["FFlagMCPAssistantManagementMenu"]
      143 CALL                             R18 1 1
      144 DUPTABLE                         R19 K38 [{"Started", "Resolved", "Rejected", "Cancelled"}]
      145 LOADK                            R20 K34 ["Started"]
      146 SETTABLEKS                       R20 R19 K34 ["Started"]
      148 LOADK                            R20 K35 ["Resolved"]
      149 SETTABLEKS                       R20 R19 K35 ["Resolved"]
      151 LOADK                            R20 K36 ["Rejected"]
      152 SETTABLEKS                       R20 R19 K36 ["Rejected"]
      154 LOADK                            R20 K37 ["Cancelled"]
      155 SETTABLEKS                       R20 R19 K37 ["Cancelled"]
      157 DUPTABLE                         R20 K42 [{"ToolNotFound", "ToolCancelled", "ToolError"}]
      158 LOADK                            R21 K43 ["tool_not_found"]
      159 SETTABLEKS                       R21 R20 K39 ["ToolNotFound"]
      161 LOADK                            R21 K44 ["tool_cancelled"]
      162 SETTABLEKS                       R21 R20 K40 ["ToolCancelled"]
      164 LOADK                            R21 K45 ["tool_error"]
      165 SETTABLEKS                       R21 R20 K41 ["ToolError"]
      167 GETTABLEKS                       R21 R4 K46 ["getToolName"]
      169 DUPCLOSURE                       R22 K47 [PROTO_27]
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R9
      188 DUPTABLE                         R23 K49 [{"createProcessEventHandler"}]
      189 SETTABLEKS                       R22 R23 K48 ["createProcessEventHandler"]
      191 RETURN                           R23 1
