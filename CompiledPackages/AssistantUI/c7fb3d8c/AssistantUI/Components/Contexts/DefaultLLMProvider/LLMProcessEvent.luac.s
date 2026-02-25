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
        0 DUPTABLE                         R1 K9 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel"}]
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
       17 GETTABLEKS                       R2 R3 K10 ["systemMessage"]
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
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R1
       50 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setInputEnabled"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["showError"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["logRequestStop"]
       13 DUPTABLE                         R2 K8 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       14 GETIMPORT                        R4 K11 [os.clock]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K12 ["requestStartTime"]
       20 SUB                              R3 R4 R5
       21 SETTABLEKS                       R3 R2 K3 ["requestJourneyDuration"]
       23 SETTABLEKS                       R0 R2 K4 ["requestEndReason"]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K5 ["messageGuid"]
       28 SETTABLEKS                       R3 R2 K5 ["messageGuid"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K13 ["conversationSessionId"]
       33 SETTABLEKS                       R3 R2 K6 ["sessionId"]
       35 LOADK                            R3 K14 [""]
       36 SETTABLEKS                       R3 R2 K7 ["message"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K15 ["messsageId"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

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
       30 GETTABLEKS                       R2 R1 K9 ["logToolStarted"]
       32 DUPTABLE                         R3 K13 [{"messageGuid", "sessionId", "toolName"}]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R4 R5 K10 ["messageGuid"]
       36 SETTABLEKS                       R4 R3 K10 ["messageGuid"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R4 R5 K14 ["conversationSessionId"]
       41 SETTABLEKS                       R4 R3 K11 ["sessionId"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K2 ["name"]
       46 SETTABLEKS                       R4 R3 K12 ["toolName"]
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 3
       50 JUMPIFNOT                        R2 ; [+8]
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K15 ["observer"]
       54 GETTABLEKS                       R2 R3 K16 ["onPreExecuteToolUse"]
       56 GETUPVAL                         R3 3
       57 MOVE                             R4 R0
       58 CALL                             R2 2 0
       59 GETUPVAL                         R3 4
       60 GETTABLEKS                       R2 R3 K17 ["getTimestampMilliseconds"]
       62 CALL                             R2 0 1
       63 GETUPVAL                         R5 2
       64 GETTABLEKS                       R4 R5 K15 ["observer"]
       66 GETTABLEKS                       R3 R4 K18 ["checkToolConfirmationRequestAsync"]
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R4 R5 K2 ["name"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R5 R6 K3 ["input"]
       74 CALL                             R3 2 1
       75 GETUPVAL                         R5 5
       76 CALL                             R5 0 1
       77 JUMPIF                           R5 ; [+3]
       78 GETUPVAL                         R5 6
       79 CALL                             R5 0 1
       80 JUMPIFNOT                        R5 ; [+10]
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R5 R6 K15 ["observer"]
       84 GETTABLEKS                       R4 R5 K19 ["getToolCallOptions"]
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R5 R6 K2 ["name"]
       89 CALL                             R4 1 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R4
       92 GETUPVAL                         R6 4
       93 GETTABLEKS                       R5 R6 K17 ["getTimestampMilliseconds"]
       95 CALL                             R5 0 1
       96 JUMPIFNOT                        R3 ; [+286]
       97 LOADB                            R6 0
       98 LOADNIL                          R7
       99 LOADNIL                          R8
      100 GETUPVAL                         R9 7
      101 CALL                             R9 0 1
      102 JUMPIFNOT                        R9 ; [+89]
      103 GETUPVAL                         R10 8
      104 GETTABLEKS                       R9 R10 K20 ["find"]
      106 GETUPVAL                         R11 2
      107 GETTABLEKS                       R10 R11 K21 ["tools"]
      109 NEWCLOSURE                       R11 P0
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          UPVAL U0
      112 CALL                             R9 2 1
      113 JUMPIFNOT                        R9 ; [+73]
      114 GETUPVAL                         R11 2
      115 GETTABLEKS                       R10 R11 K22 ["onToolCall"]
      117 DUPTABLE                         R11 K26 [{"name", "arguments", "toolCallOptions", "contentId"}]
      118 GETUPVAL                         R13 0
      119 GETTABLEKS                       R12 R13 K2 ["name"]
      121 SETTABLEKS                       R12 R11 K2 ["name"]
      123 GETUPVAL                         R13 0
      124 GETTABLEKS                       R12 R13 K3 ["input"]
      126 SETTABLEKS                       R12 R11 K23 ["arguments"]
      128 SETTABLEKS                       R4 R11 K24 ["toolCallOptions"]
      130 GETUPVAL                         R13 6
      131 CALL                             R13 0 1
      132 JUMPIFNOT                        R13 ; [+2]
      133 GETUPVAL                         R12 3
      134 JUMP                             ; [+1]
      135 LOADNIL                          R12
      136 SETTABLEKS                       R12 R11 K25 ["contentId"]
      138 CALL                             R10 1 1
      139 GETUPVAL                         R12 10
      140 GETTABLEKS                       R11 R12 K27 ["pendingToolCallPromises"]
      142 LOADB                            R12 1
      143 SETTABLE                         R12 R11 R10
      144 GETUPVAL                         R12 11
      145 GETTABLEKS                       R11 R12 K28 ["Started"]
      147 NAMECALL                         R12 R10 K29 ["awaitStatus"]
      149 CALL                             R12 1 2
      150 MOVE                             R11 R12
      151 MOVE                             R7 R13
      152 GETUPVAL                         R13 11
      153 GETTABLEKS                       R12 R13 K30 ["Resolved"]
      155 JUMPIFEQ                         R11 R12 ; [+2]
      157 LOADB                            R6 0 +1
      158 LOADB                            R6 1
      159 GETUPVAL                         R13 10
      160 GETTABLEKS                       R12 R13 K27 ["pendingToolCallPromises"]
      162 LOADNIL                          R13
      163 SETTABLE                         R13 R12 R10
      164 JUMPIF                           R6 ; [+99]
      165 GETUPVAL                         R12 12
      166 CALL                             R12 0 1
      167 JUMPIFNOT                        R12 ; [+6]
      168 GETIMPORT                        R12 K32 [warn]
      170 LOADK                            R13 K33 ["ToolCall failed: "]
      171 MOVE                             R14 R11
      172 MOVE                             R15 R7
      173 CALL                             R12 3 0
      174 GETUPVAL                         R13 11
      175 GETTABLEKS                       R12 R13 K34 ["Cancelled"]
      177 JUMPIFNOTEQ                      R11 R12 ; [+5]
      179 GETUPVAL                         R12 13
      180 GETTABLEKS                       R8 R12 K35 ["ToolCancelled"]
      182 JUMP                             ; [+81]
      183 GETUPVAL                         R12 13
      184 GETTABLEKS                       R8 R12 K36 ["ToolError"]
      186 JUMP                             ; [+77]
      187 LOADB                            R6 0
      188 GETUPVAL                         R10 13
      189 GETTABLEKS                       R8 R10 K37 ["ToolNotFound"]
      191 JUMP                             ; [+72]
      192 GETUPVAL                         R10 2
      193 GETTABLEKS                       R9 R10 K22 ["onToolCall"]
      195 DUPTABLE                         R10 K26 [{"name", "arguments", "toolCallOptions", "contentId"}]
      196 GETUPVAL                         R12 0
      197 GETTABLEKS                       R11 R12 K2 ["name"]
      199 SETTABLEKS                       R11 R10 K2 ["name"]
      201 GETUPVAL                         R12 0
      202 GETTABLEKS                       R11 R12 K3 ["input"]
      204 SETTABLEKS                       R11 R10 K23 ["arguments"]
      206 SETTABLEKS                       R4 R10 K24 ["toolCallOptions"]
      208 GETUPVAL                         R12 6
      209 CALL                             R12 0 1
      210 JUMPIFNOT                        R12 ; [+2]
      211 GETUPVAL                         R11 3
      212 JUMP                             ; [+1]
      213 LOADNIL                          R11
      214 SETTABLEKS                       R11 R10 K25 ["contentId"]
      216 CALL                             R9 1 1
      217 GETUPVAL                         R11 10
      218 GETTABLEKS                       R10 R11 K27 ["pendingToolCallPromises"]
      220 LOADB                            R11 1
      221 SETTABLE                         R11 R10 R9
      222 GETUPVAL                         R11 11
      223 GETTABLEKS                       R10 R11 K28 ["Started"]
      225 NAMECALL                         R11 R9 K29 ["awaitStatus"]
      227 CALL                             R11 1 2
      228 MOVE                             R10 R11
      229 MOVE                             R7 R12
      230 GETUPVAL                         R12 11
      231 GETTABLEKS                       R11 R12 K30 ["Resolved"]
      233 JUMPIFEQ                         R10 R11 ; [+2]
      235 LOADB                            R6 0 +1
      236 LOADB                            R6 1
      237 GETUPVAL                         R12 10
      238 GETTABLEKS                       R11 R12 K27 ["pendingToolCallPromises"]
      240 LOADNIL                          R12
      241 SETTABLE                         R12 R11 R9
      242 JUMPIF                           R6 ; [+21]
      243 GETUPVAL                         R11 12
      244 CALL                             R11 0 1
      245 JUMPIFNOT                        R11 ; [+6]
      246 GETIMPORT                        R11 K32 [warn]
      248 LOADK                            R12 K33 ["ToolCall failed: "]
      249 MOVE                             R13 R10
      250 MOVE                             R14 R7
      251 CALL                             R11 3 0
      252 GETUPVAL                         R12 11
      253 GETTABLEKS                       R11 R12 K34 ["Cancelled"]
      255 JUMPIFNOTEQ                      R10 R11 ; [+5]
      257 GETUPVAL                         R11 13
      258 GETTABLEKS                       R8 R11 K35 ["ToolCancelled"]
      260 JUMP                             ; [+3]
      261 GETUPVAL                         R11 13
      262 GETTABLEKS                       R8 R11 K36 ["ToolError"]
      264 LOADNIL                          R9
      265 JUMPIFNOT                        R6 ; [+7]
      266 JUMPIFNOT                        R7 ; [+3]
      267 GETTABLEKS                       R10 R7 K38 ["content"]
      269 JUMPIF                           R10 ; [+3]
      270 GETUPVAL                         R10 13
      271 GETTABLEKS                       R8 R10 K36 ["ToolError"]
      273 JUMPIFNOT                        R8 ; [+63]
      274 LOADNIL                          R10
      275 GETUPVAL                         R12 13
      276 GETTABLEKS                       R11 R12 K37 ["ToolNotFound"]
      278 JUMPIFNOTEQ                      R8 R11 ; [+3]
      280 LOADK                            R10 K39 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      281 JUMP                             ; [+19]
      282 GETUPVAL                         R12 13
      283 GETTABLEKS                       R11 R12 K35 ["ToolCancelled"]
      285 JUMPIFNOTEQ                      R8 R11 ; [+3]
      287 LOADK                            R10 K40 ["The tool call was cancelled by the user."]
      288 JUMP                             ; [+12]
      289 GETUPVAL                         R12 13
      290 GETTABLEKS                       R11 R12 K36 ["ToolError"]
      292 JUMPIFNOTEQ                      R8 R11 ; [+3]
      294 LOADK                            R10 K41 ["Error: Tool call failed. Please try a different approach."]
      295 JUMP                             ; [+5]
      296 GETUPVAL                         R12 14
      297 GETTABLEKS                       R11 R12 K42 ["assertNever"]
      299 MOVE                             R12 R8
      300 CALL                             R11 1 0
      301 DUPTABLE                         R11 K44 [{"type", "text"}]
      302 LOADK                            R12 K43 ["text"]
      303 SETTABLEKS                       R12 R11 K0 ["type"]
      305 SETTABLEKS                       R10 R11 K43 ["text"]
      307 DUPTABLE                         R12 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      308 LOADK                            R13 K49 ["tool_result"]
      309 SETTABLEKS                       R13 R12 K0 ["type"]
      311 GETUPVAL                         R14 0
      312 GETTABLEKS                       R13 R14 K1 ["id"]
      314 SETTABLEKS                       R13 R12 K1 ["id"]
      316 GETUPVAL                         R14 0
      317 GETTABLEKS                       R13 R14 K2 ["name"]
      319 SETTABLEKS                       R13 R12 K2 ["name"]
      321 NEWTABLE                         R13 0 1
      323 MOVE                             R14 R11
      324 SETLIST                          R13 R14 1 [1]
      326 SETTABLEKS                       R13 R12 K38 ["content"]
      328 LOADB                            R13 1
      329 SETTABLEKS                       R13 R12 K45 ["isError"]
      331 SETTABLEKS                       R2 R12 K46 ["startTime"]
      333 SETTABLEKS                       R5 R12 K47 ["startTimeAfterConfirmation"]
      335 MOVE                             R9 R12
      336 JUMP                             ; [+27]
      337 DUPTABLE                         R10 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      338 LOADK                            R11 K49 ["tool_result"]
      339 SETTABLEKS                       R11 R10 K0 ["type"]
      341 GETUPVAL                         R12 0
      342 GETTABLEKS                       R11 R12 K1 ["id"]
      344 SETTABLEKS                       R11 R10 K1 ["id"]
      346 GETUPVAL                         R12 0
      347 GETTABLEKS                       R11 R12 K2 ["name"]
      349 SETTABLEKS                       R11 R10 K2 ["name"]
      351 GETTABLEKS                       R11 R7 K38 ["content"]
      353 SETTABLEKS                       R11 R10 K38 ["content"]
      355 GETTABLEKS                       R11 R7 K45 ["isError"]
      357 SETTABLEKS                       R11 R10 K45 ["isError"]
      359 SETTABLEKS                       R2 R10 K46 ["startTime"]
      361 SETTABLEKS                       R5 R10 K47 ["startTimeAfterConfirmation"]
      363 MOVE                             R9 R10
      364 GETUPVAL                         R10 3
      365 JUMPIFNOT                        R10 ; [+8]
      366 GETUPVAL                         R12 2
      367 GETTABLEKS                       R11 R12 K15 ["observer"]
      369 GETTABLEKS                       R10 R11 K50 ["onToolResult"]
      371 GETUPVAL                         R11 3
      372 MOVE                             R12 R9
      373 CALL                             R10 2 0
      374 DUPTABLE                         R10 K54 [{"toolUse", "toolResult", "invocationIndex"}]
      375 SETTABLEKS                       R0 R10 K51 ["toolUse"]
      377 SETTABLEKS                       R9 R10 K52 ["toolResult"]
      379 GETUPVAL                         R11 15
      380 SETTABLEKS                       R11 R10 K53 ["invocationIndex"]
      382 RETURN                           R10 1
      383 DUPTABLE                         R6 K44 [{"type", "text"}]
      384 LOADK                            R7 K43 ["text"]
      385 SETTABLEKS                       R7 R6 K0 ["type"]
      387 LOADK                            R7 K55 ["The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."]
      388 SETTABLEKS                       R7 R6 K43 ["text"]
      390 DUPTABLE                         R7 K48 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      391 LOADK                            R8 K49 ["tool_result"]
      392 SETTABLEKS                       R8 R7 K0 ["type"]
      394 GETUPVAL                         R9 0
      395 GETTABLEKS                       R8 R9 K1 ["id"]
      397 SETTABLEKS                       R8 R7 K1 ["id"]
      399 GETUPVAL                         R9 0
      400 GETTABLEKS                       R8 R9 K2 ["name"]
      402 SETTABLEKS                       R8 R7 K2 ["name"]
      404 NEWTABLE                         R8 0 1
      406 MOVE                             R9 R6
      407 SETLIST                          R8 R9 1 [1]
      409 SETTABLEKS                       R8 R7 K38 ["content"]
      411 LOADB                            R8 0
      412 SETTABLEKS                       R8 R7 K45 ["isError"]
      414 SETTABLEKS                       R2 R7 K46 ["startTime"]
      416 SETTABLEKS                       R5 R7 K47 ["startTimeAfterConfirmation"]
      418 GETUPVAL                         R8 3
      419 JUMPIFNOT                        R8 ; [+8]
      420 GETUPVAL                         R10 2
      421 GETTABLEKS                       R9 R10 K15 ["observer"]
      423 GETTABLEKS                       R8 R9 K50 ["onToolResult"]
      425 GETUPVAL                         R9 3
      426 MOVE                             R10 R7
      427 CALL                             R8 2 0
      428 DUPTABLE                         R8 K54 [{"toolUse", "toolResult", "invocationIndex"}]
      429 SETTABLEKS                       R0 R8 K51 ["toolUse"]
      431 SETTABLEKS                       R7 R8 K52 ["toolResult"]
      433 GETUPVAL                         R9 15
      434 SETTABLEKS                       R9 R8 K53 ["invocationIndex"]
      436 RETURN                           R8 1

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
       21 JUMPIFNOT                        R4 ; [+60]
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
       37 JUMP                             ; [+36]
       38 NEWTABLE                         R3 0 0
       40 JUMP                             ; [+33]
       41 GETIMPORT                        R4 K12 [pcall]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U4
       48 CALL                             R4 1 2
       49 JUMPIF                           R4 ; [+23]
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R6 R7 K13 ["processEvent"]
       53 DUPTABLE                         R7 K16 [{"type", "error"}]
       54 LOADK                            R8 K15 ["error"]
       55 SETTABLEKS                       R8 R7 K14 ["type"]
       57 LOADK                            R8 K17 ["client_error"]
       58 SETTABLEKS                       R8 R7 K15 ["error"]
       60 CALL                             R6 1 0
       61 LOADK                            R8 K18 ["Failed to decode tool input with JSON: %*"]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K7 ["currentToolInput"]
       65 NAMECALL                         R8 R8 K19 ["format"]
       67 CALL                             R8 2 1
       68 MOVE                             R7 R8
       69 FASTCALL1                        ASSERT R7 ; [+2]
       70 GETIMPORT                        R6 K4 [assert]
       72 CALL                             R6 1 0
       73 MOVE                             R3 R5
       74 FASTCALL2K                       ASSERT R3 K20 ; [+5]
       76 MOVE                             R5 R3
       77 LOADK                            R6 K20 ["Expected parsedInput to be set"]
       78 GETIMPORT                        R4 K4 [assert]
       80 CALL                             R4 2 0
       81 JUMP                             ; [+22]
       82 GETIMPORT                        R4 K12 [pcall]
       84 NEWCLOSURE                       R5 P1
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          UPVAL U4
       89 CALL                             R4 1 2
       90 JUMPIF                           R4 ; [+12]
       91 GETUPVAL                         R7 5
       92 GETTABLEKS                       R6 R7 K13 ["processEvent"]
       94 DUPTABLE                         R7 K16 [{"type", "error"}]
       95 LOADK                            R8 K15 ["error"]
       96 SETTABLEKS                       R8 R7 K14 ["type"]
       98 LOADK                            R8 K17 ["client_error"]
       99 SETTABLEKS                       R8 R7 K15 ["error"]
      101 CALL                             R6 1 0
      102 RETURN                           R0 0
      103 MOVE                             R3 R5
      104 SETTABLEKS                       R3 R0 K21 ["input"]
      106 NEWCLOSURE                       R4 P2
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U6
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          VAL R1
      111 CAPTURE                          UPVAL U8
      112 CAPTURE                          UPVAL U9
      113 CAPTURE                          UPVAL U10
      114 CAPTURE                          UPVAL U11
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          UPVAL U13
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U14
      119 CAPTURE                          UPVAL U15
      120 CAPTURE                          UPVAL U16
      121 CAPTURE                          UPVAL U17
      122 CAPTURE                          VAL R2
      123 GETUPVAL                         R6 18
      124 GETTABLEKS                       R5 R6 K22 ["wrapFunction"]
      126 MOVE                             R6 R4
      127 CALL                             R5 1 1
      128 GETUPVAL                         R8 0
      129 GETTABLEKS                       R7 R8 K6 ["toolCallThreads"]
      131 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      133 MOVE                             R8 R5
      134 GETIMPORT                        R6 K25 [table.insert]
      136 CALL                             R6 2 0
      137 GETUPVAL                         R6 0
      138 LOADK                            R7 K8 [""]
      139 SETTABLEKS                       R7 R6 K26 ["currentText"]
      141 GETUPVAL                         R6 0
      142 LOADK                            R7 K8 [""]
      143 SETTABLEKS                       R7 R6 K27 ["currentSignature"]
      145 GETUPVAL                         R6 0
      146 LOADNIL                          R7
      147 SETTABLEKS                       R7 R6 K0 ["currentTool"]
      149 GETUPVAL                         R6 0
      150 LOADK                            R7 K8 [""]
      151 SETTABLEKS                       R7 R6 K7 ["currentToolInput"]
      153 GETUPVAL                         R6 0
      154 LOADNIL                          R7
      155 SETTABLEKS                       R7 R6 K28 ["currentContentType"]
      157 RETURN                           R0 0

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
       17 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+40]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R0 R1 K6 ["setInputEnabled"]
       22 LOADB                            R1 1
       23 CALL                             R0 1 0
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R0 R1 K7 ["logRequestStop"]
       27 DUPTABLE                         R1 K13 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       28 GETIMPORT                        R3 K16 [os.clock]
       30 CALL                             R3 0 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K17 ["requestStartTime"]
       34 SUB                              R2 R3 R4
       35 SETTABLEKS                       R2 R1 K8 ["requestJourneyDuration"]
       37 LOADK                            R2 K18 ["message_stop"]
       38 SETTABLEKS                       R2 R1 K9 ["requestEndReason"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K10 ["messageGuid"]
       43 SETTABLEKS                       R2 R1 K10 ["messageGuid"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R2 R3 K19 ["conversationSessionId"]
       48 SETTABLEKS                       R2 R1 K11 ["sessionId"]
       50 LOADK                            R2 K20 [""]
       51 SETTABLEKS                       R2 R1 K12 ["message"]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R2 R3 K21 ["messsageId"]
       56 CALL                             R0 2 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       61 JUMPIFEQKS                       R0 K22 ["safety_filter"] ; [+6]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       66 JUMPIFNOTEQKS                    R0 K23 ["token_limit"] ; [+7]
       68 GETUPVAL                         R0 2
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R1 R2 K0 ["stopReason"]
       72 CALL                             R0 1 0
       73 RETURN                           R0 0
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R0 R1 K0 ["stopReason"]
       77 JUMPIFNOTEQKS                    R0 K24 ["tool_use"] ; [+143]
       79 GETUPVAL                         R0 0
       80 GETTABLEKS                       R1 R0 K25 ["toolCallCount"]
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R3 R4 K26 ["toolCallThreads"]
       85 LENGTH                           R2 R3
       86 ADD                              R1 R1 R2
       87 SETTABLEKS                       R1 R0 K25 ["toolCallCount"]
       89 GETUPVAL                         R1 3
       90 GETTABLEKS                       R0 R1 K27 ["collectTasks"]
       92 GETUPVAL                         R2 0
       93 GETTABLEKS                       R1 R2 K26 ["toolCallThreads"]
       95 CALL                             R0 1 2
       96 GETUPVAL                         R3 4
       97 FASTCALL2K                       ASSERT R3 K28 ; [+4]
       99 LOADK                            R4 K28 ["Expected session to be set"]
      100 GETIMPORT                        R2 K3 [assert]
      102 CALL                             R2 2 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K29 ["isCanceled"]
      106 CALL                             R2 0 1
      107 JUMPIFNOT                        R2 ; [+1]
      108 RETURN                           R0 0
      109 JUMPIF                           R0 ; [+7]
      110 GETUPVAL                         R2 2
      111 LOADK                            R3 K30 ["client_error"]
      112 CALL                             R2 1 0
      113 GETIMPORT                        R2 K32 [error]
      115 LOADK                            R3 K33 ["Failed to execute all tool calls"]
      116 CALL                             R2 1 0
      117 FASTCALL2K                       ASSERT R1 K34 ; [+5]
      119 MOVE                             R3 R1
      120 LOADK                            R4 K34 ["Expected toolCallResults to be set"]
      121 GETIMPORT                        R2 K3 [assert]
      123 CALL                             R2 2 0
      124 NEWTABLE                         R2 0 0
      126 MOVE                             R3 R1
      127 LOADNIL                          R4
      128 LOADNIL                          R5
      129 FORGPREP                         R3
      130 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
      132 MOVE                             R9 R2
      133 MOVE                             R10 R7
      134 GETIMPORT                        R8 K37 [table.insert]
      136 CALL                             R8 2 0
      137 FORGLOOP                         R3 2 ; [-8]
      139 GETIMPORT                        R3 K39 [table.sort]
      141 MOVE                             R4 R2
      142 DUPCLOSURE                       R5 K40 [PROTO_15]
      143 CALL                             R3 2 0
      144 MOVE                             R3 R2
      145 LOADNIL                          R4
      146 LOADNIL                          R5
      147 FORGPREP                         R3
      148 DUPTABLE                         R8 K43 [{"role", "content"}]
      149 LOADK                            R9 K44 ["assistant"]
      150 SETTABLEKS                       R9 R8 K41 ["role"]
      152 NEWTABLE                         R9 0 1
      154 GETTABLEKS                       R10 R7 K45 ["toolUse"]
      156 SETLIST                          R9 R10 1 [1]
      158 SETTABLEKS                       R9 R8 K42 ["content"]
      160 GETUPVAL                         R11 0
      161 GETTABLEKS                       R10 R11 K46 ["messages"]
      163 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      165 MOVE                             R11 R8
      166 GETIMPORT                        R9 K37 [table.insert]
      168 CALL                             R9 2 0
      169 FORGLOOP                         R3 2 ; [-22]
      171 MOVE                             R3 R2
      172 LOADNIL                          R4
      173 LOADNIL                          R5
      174 FORGPREP                         R3
      175 DUPTABLE                         R8 K43 [{"role", "content"}]
      176 LOADK                            R9 K47 ["user"]
      177 SETTABLEKS                       R9 R8 K41 ["role"]
      179 NEWTABLE                         R9 0 1
      181 GETTABLEKS                       R10 R7 K48 ["toolResult"]
      183 SETLIST                          R9 R10 1 [1]
      185 SETTABLEKS                       R9 R8 K42 ["content"]
      187 GETUPVAL                         R11 0
      188 GETTABLEKS                       R10 R11 K46 ["messages"]
      190 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      192 MOVE                             R11 R8
      193 GETIMPORT                        R9 K37 [table.insert]
      195 CALL                             R9 2 0
      196 FORGLOOP                         R3 2 ; [-22]
      198 GETUPVAL                         R4 0
      199 GETTABLEKS                       R3 R4 K25 ["toolCallCount"]
      201 GETUPVAL                         R5 1
      202 GETTABLEKS                       R4 R5 K49 ["maxToolCalls"]
      204 JUMPIFNOTLT                      R4 R3 ; [+5]
      206 GETUPVAL                         R3 2
      207 LOADK                            R4 K50 ["max_tool_calls"]
      208 CALL                             R3 1 0
      209 RETURN                           R0 0
      210 GETUPVAL                         R3 5
      211 DUPTABLE                         R4 K52 [{"resumedToolCallCount"}]
      212 GETUPVAL                         R6 0
      213 GETTABLEKS                       R5 R6 K25 ["toolCallCount"]
      215 SETTABLEKS                       R5 R4 K51 ["resumedToolCallCount"]
      217 CALL                             R3 1 1
      218 MOVE                             R4 R3
      219 CALL                             R4 0 0
      220 RETURN                           R0 0
      221 GETUPVAL                         R1 6
      222 GETTABLEKS                       R0 R1 K53 ["assertNever"]
      224 GETUPVAL                         R2 0
      225 GETTABLEKS                       R1 R2 K0 ["stopReason"]
      227 CALL                             R0 1 0
      228 RETURN                           R0 0

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
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R0 R3 K2 ["pendingToolCallPromises"]
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 FORGPREP                         R0
       17 NAMECALL                         R5 R3 K3 ["cancel"]
       19 CALL                             R5 1 0
       20 FORGLOOP                         R0 2 ; [-4]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R0 R3 K4 ["toolCallThreads"]
       25 LOADNIL                          R1
       26 LOADNIL                          R2
       27 FORGPREP                         R0
       28 GETIMPORT                        R5 K6 [task.cancel]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 FORGLOOP                         R0 2 ; [-5]
       34 RETURN                           R0 0

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
       11 DUPTABLE                         R4 K20 [{"sessionId", "currentText", "currentSignature", "currentTool", "currentToolInput", "currentContentType", "currentContentId", "messages", "toolCallCount", "toolCallThreads", "pendingToolCallPromises", "isAgenticMode", "requestStartTime", "messageGuid", "conversationSessionId", "messsageId", "logRequestStop"}]
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
       70 GETTABLEKS                       R5 R0 K18 ["messsageId"]
       72 SETTABLEKS                       R5 R4 K18 ["messsageId"]
       74 GETTABLEKS                       R5 R0 K19 ["logRequestStop"]
       76 SETTABLEKS                       R5 R4 K19 ["logRequestStop"]
       78 NEWCLOSURE                       R5 P0
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          UPVAL U3
       83 NEWCLOSURE                       R6 P1
       84 CAPTURE                          VAL R0
       85 NEWCLOSURE                       R7 P2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U1
       91 CAPTURE                          REF R2
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U9
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U14
      101 CAPTURE                          UPVAL U15
      102 CAPTURE                          UPVAL U16
      103 CAPTURE                          UPVAL U17
      104 CAPTURE                          UPVAL U18
      105 NEWCLOSURE                       R8 P3
      106 CAPTURE                          VAL R4
      107 NEWCLOSURE                       R9 P4
      108 CAPTURE                          VAL R4
      109 NEWCLOSURE                       R10 P5
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R0
      112 NEWCLOSURE                       R11 P6
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 NEWCLOSURE                       R12 P7
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R0
      118 NEWCLOSURE                       R13 P8
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R9
      123 NEWCLOSURE                       R14 P9
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R6
      127 CAPTURE                          UPVAL U18
      128 CAPTURE                          REF R2
      129 CAPTURE                          VAL R5
      130 CAPTURE                          UPVAL U17
      131 NEWCLOSURE                       R15 P10
      132 CAPTURE                          UPVAL U15
      133 CAPTURE                          VAL R4
      134 CAPTURE                          UPVAL U19
      135 CAPTURE                          VAL R0
      136 NEWCLOSURE                       R16 P11
      137 CAPTURE                          REF R2
      138 CAPTURE                          UPVAL U20
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
      150 CAPTURE                          UPVAL U17
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
      176 CAPTURE                          VAL R4
      177 SETTABLEKS                       R21 R20 K30 ["cancel"]
      179 NEWCLOSURE                       R21 P15
      180 CAPTURE                          REF R18
      181 SETTABLEKS                       R21 R20 K31 ["isClosed"]
      183 NEWCLOSURE                       R21 P16
      184 CAPTURE                          REF R19
      185 SETTABLEKS                       R21 R20 K32 ["isCanceled"]
      187 MOVE                             R2 R20
      188 SETUPVAL                         R2 3
      189 CLOSEUPVALS                      R2
      190 RETURN                           R2 1

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
       46 GETTABLEKS                       R2 R3 K16 ["messsageId"]
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
      120 GETTABLEKS                       R16 R17 K30 ["FFlagAssistantMultipleExternalMCPServers"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R18 R0 K28 ["Flags"]
      127 GETTABLEKS                       R17 R18 K31 ["FFlagDebugLogAssistantUI"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K9 [require]
      132 GETTABLEKS                       R19 R0 K28 ["Flags"]
      134 GETTABLEKS                       R18 R19 K32 ["FFlagEnableAssistantImageUpload"]
      136 CALL                             R17 1 1
      137 GETIMPORT                        R18 K9 [require]
      139 GETTABLEKS                       R20 R0 K28 ["Flags"]
      141 GETTABLEKS                       R19 R20 K33 ["FFlagMCPAssistantLongRunningToolCalls"]
      143 CALL                             R18 1 1
      144 GETIMPORT                        R19 K9 [require]
      146 GETTABLEKS                       R21 R0 K28 ["Flags"]
      148 GETTABLEKS                       R20 R21 K34 ["FFlagMCPAssistantManagementMenu"]
      150 CALL                             R19 1 1
      151 DUPTABLE                         R20 K39 [{"Started", "Resolved", "Rejected", "Cancelled"}]
      152 LOADK                            R21 K35 ["Started"]
      153 SETTABLEKS                       R21 R20 K35 ["Started"]
      155 LOADK                            R21 K36 ["Resolved"]
      156 SETTABLEKS                       R21 R20 K36 ["Resolved"]
      158 LOADK                            R21 K37 ["Rejected"]
      159 SETTABLEKS                       R21 R20 K37 ["Rejected"]
      161 LOADK                            R21 K38 ["Cancelled"]
      162 SETTABLEKS                       R21 R20 K38 ["Cancelled"]
      164 DUPTABLE                         R21 K43 [{"ToolNotFound", "ToolCancelled", "ToolError"}]
      165 LOADK                            R22 K44 ["tool_not_found"]
      166 SETTABLEKS                       R22 R21 K40 ["ToolNotFound"]
      168 LOADK                            R22 K45 ["tool_cancelled"]
      169 SETTABLEKS                       R22 R21 K41 ["ToolCancelled"]
      171 LOADK                            R22 K46 ["tool_error"]
      172 SETTABLEKS                       R22 R21 K42 ["ToolError"]
      174 GETTABLEKS                       R22 R4 K47 ["getToolName"]
      176 DUPCLOSURE                       R23 K48 [PROTO_27]
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R16
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R9
      196 DUPTABLE                         R24 K50 [{"createProcessEventHandler"}]
      197 SETTABLEKS                       R23 R24 K49 ["createProcessEventHandler"]
      199 RETURN                           R24 1
