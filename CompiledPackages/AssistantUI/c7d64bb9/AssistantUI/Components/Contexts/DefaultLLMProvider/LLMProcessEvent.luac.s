PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["needsCompaction"]
        3 JUMPIFNOT                        R0 ; [+100]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["observer"]
        7 GETTABLEKS                       R0 R0 K2 ["onContentStart"]
        9 DUPTABLE                         R1 K4 [{"type"}]
       10 LOADK                            R2 K5 ["compaction_status"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K6 ["compact"]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K7 ["messages"]
       20 DUPTABLE                         R3 K15 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K8 ["requestLLM"]
       24 SETTABLEKS                       R4 R3 K8 ["requestLLM"]
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K9 ["threadId"]
       29 SETTABLEKS                       R4 R3 K9 ["threadId"]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K10 ["compactedStore"]
       34 SETTABLEKS                       R4 R3 K10 ["compactedStore"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K11 ["selectedModel"]
       39 SETTABLEKS                       R4 R3 K11 ["selectedModel"]
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R4 R4 K12 ["selectedProvider"]
       44 SETTABLEKS                       R4 R3 K12 ["selectedProvider"]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K13 ["apiKeys"]
       49 SETTABLEKS                       R4 R3 K13 ["apiKeys"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K14 ["uiMessageCount"]
       54 SETTABLEKS                       R4 R3 K14 ["uiMessageCount"]
       56 CALL                             R1 2 1
       57 GETUPVAL                         R2 3
       58 GETTABLEKS                       R3 R1 K7 ["messages"]
       60 SETTABLEKS                       R3 R2 K7 ["messages"]
       62 GETUPVAL                         R2 3
       63 GETTABLEKS                       R3 R1 K10 ["compactedStore"]
       65 SETTABLEKS                       R3 R2 K10 ["compactedStore"]
       67 GETUPVAL                         R2 4
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K10 ["compactedStore"]
       71 SETTABLEKS                       R3 R2 K10 ["compactedStore"]
       73 GETUPVAL                         R2 4
       74 GETUPVAL                         R3 3
       75 GETTABLEKS                       R3 R3 K7 ["messages"]
       77 SETTABLEKS                       R3 R2 K16 ["initialMessages"]
       79 JUMPIFNOT                        R0 ; [+18]
       80 GETUPVAL                         R2 1
       81 GETTABLEKS                       R2 R2 K1 ["observer"]
       83 GETTABLEKS                       R2 R2 K17 ["onContentDelta"]
       85 MOVE                             R3 R0
       86 DUPTABLE                         R4 K4 [{"type"}]
       87 LOADK                            R5 K18 ["summary_delta"]
       88 SETTABLEKS                       R5 R4 K3 ["type"]
       90 CALL                             R2 2 0
       91 GETUPVAL                         R2 1
       92 GETTABLEKS                       R2 R2 K1 ["observer"]
       94 GETTABLEKS                       R2 R2 K19 ["onContentFinished"]
       96 MOVE                             R3 R0
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 5
       99 GETTABLEKS                       R2 R2 K20 ["isCanceled"]
      101 CALL                             R2 0 1
      102 JUMPIFNOT                        R2 ; [+1]
      103 RETURN                           R0 0
      104 DUPTABLE                         R0 K29 [{"threadId", "messages", "tools", "system", "messageGuid", "isFirstMessage", "isAgenticMode", "apiKeys", "selectedModel", "conversationUrl", "isSubagent", "assistantMode"}]
      105 GETUPVAL                         R1 1
      106 GETTABLEKS                       R1 R1 K9 ["threadId"]
      108 SETTABLEKS                       R1 R0 K9 ["threadId"]
      110 GETUPVAL                         R1 3
      111 GETTABLEKS                       R1 R1 K7 ["messages"]
      113 SETTABLEKS                       R1 R0 K7 ["messages"]
      115 GETUPVAL                         R1 1
      116 GETTABLEKS                       R1 R1 K21 ["tools"]
      118 SETTABLEKS                       R1 R0 K21 ["tools"]
      120 GETUPVAL                         R1 1
      121 GETTABLEKS                       R1 R1 K30 ["systemMessage"]
      123 SETTABLEKS                       R1 R0 K22 ["system"]
      125 GETUPVAL                         R1 1
      126 GETTABLEKS                       R1 R1 K23 ["messageGuid"]
      128 SETTABLEKS                       R1 R0 K23 ["messageGuid"]
      130 LOADB                            R1 0
      131 SETTABLEKS                       R1 R0 K24 ["isFirstMessage"]
      133 GETUPVAL                         R1 3
      134 GETTABLEKS                       R1 R1 K25 ["isAgenticMode"]
      136 SETTABLEKS                       R1 R0 K25 ["isAgenticMode"]
      138 GETUPVAL                         R1 1
      139 GETTABLEKS                       R1 R1 K13 ["apiKeys"]
      141 SETTABLEKS                       R1 R0 K13 ["apiKeys"]
      143 GETUPVAL                         R1 1
      144 GETTABLEKS                       R1 R1 K11 ["selectedModel"]
      146 SETTABLEKS                       R1 R0 K11 ["selectedModel"]
      148 GETUPVAL                         R1 1
      149 GETTABLEKS                       R1 R1 K26 ["conversationUrl"]
      151 SETTABLEKS                       R1 R0 K26 ["conversationUrl"]
      153 GETUPVAL                         R1 1
      154 GETTABLEKS                       R1 R1 K27 ["isSubagent"]
      156 SETTABLEKS                       R1 R0 K27 ["isSubagent"]
      158 GETUPVAL                         R2 6
      159 CALL                             R2 0 1
      160 JUMPIFNOT                        R2 ; [+4]
      161 GETUPVAL                         R1 1
      162 GETTABLEKS                       R1 R1 K28 ["assistantMode"]
      164 JUMPIF                           R1 ; [+1]
      165 LOADNIL                          R1
      166 SETTABLEKS                       R1 R0 K28 ["assistantMode"]
      168 GETUPVAL                         R1 7
      169 GETUPVAL                         R2 4
      170 GETUPVAL                         R3 0
      171 GETTABLEKS                       R3 R3 K31 ["resumedToolCallCount"]
      173 CALL                             R1 2 1
      174 FASTCALL2K                       ASSERT R1 K32 ; [+5]
      176 MOVE                             R3 R1
      177 LOADK                            R4 K32 ["Failed to create new session"]
      178 GETIMPORT                        R2 K34 [assert]
      180 CALL                             R2 2 0
      181 SETUPVAL                         R1 8
      182 GETUPVAL                         R2 1
      183 GETTABLEKS                       R2 R2 K8 ["requestLLM"]
      185 MOVE                             R3 R0
      186 GETTABLEKS                       R4 R1 K35 ["processEvent"]
      188 CALL                             R2 2 0
      189 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K3 ["compactedStore"]
       10 SETTABLEKS                       R1 R0 K3 ["compactedStore"]
       12 GETIMPORT                        R1 K6 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 CAPTURE                          UPVAL U8
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

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
       25 DUPTABLE                         R2 K10 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       26 GETIMPORT                        R4 K13 [os.clock]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K14 ["requestStartTime"]
       32 SUB                              R3 R4 R5
       33 SETTABLEKS                       R3 R2 K5 ["requestJourneyDuration"]
       35 SETTABLEKS                       R0 R2 K6 ["requestEndReason"]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K7 ["messageGuid"]
       40 SETTABLEKS                       R3 R2 K7 ["messageGuid"]
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K15 ["conversationSessionId"]
       45 SETTABLEKS                       R3 R2 K8 ["sessionId"]
       47 LOADK                            R3 K16 [""]
       48 SETTABLEKS                       R3 R2 K9 ["message"]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K17 ["messageId"]
       53 CALL                             R1 2 0
       54 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K5 [{"type", "id", "name", "input", "thoughtSignature"}]
        1 LOADK                            R1 K6 ["tool_use"]
        2 SETTABLEKS                       R1 R0 K0 ["type"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["id"]
        7 SETTABLEKS                       R1 R0 K1 ["id"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["name"]
       12 SETTABLEKS                       R1 R0 K2 ["name"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["input"]
       17 SETTABLEKS                       R1 R0 K3 ["input"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K4 ["thoughtSignature"]
       22 SETTABLEKS                       R1 R0 K4 ["thoughtSignature"]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K7 ["get"]
       27 CALL                             R1 0 1
       28 GETTABLEKS                       R1 R1 K8 ["EventLogger"]
       30 GETUPVAL                         R2 2
       31 CALL                             R2 0 1
       32 JUMPIF                           R2 ; [+34]
       33 GETTABLEKS                       R2 R1 K9 ["logToolStarted"]
       35 DUPTABLE                         R3 K15 [{"messageGuid", "sessionId", "toolId", "toolName", "assistantMode"}]
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R4 R4 K10 ["messageGuid"]
       39 SETTABLEKS                       R4 R3 K10 ["messageGuid"]
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K16 ["conversationSessionId"]
       44 SETTABLEKS                       R4 R3 K11 ["sessionId"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K1 ["id"]
       49 SETTABLEKS                       R4 R3 K12 ["toolId"]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K2 ["name"]
       54 SETTABLEKS                       R4 R3 K13 ["toolName"]
       56 GETUPVAL                         R5 4
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+4]
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R4 R4 K14 ["assistantMode"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R4
       64 SETTABLEKS                       R4 R3 K14 ["assistantMode"]
       66 CALL                             R2 1 0
       67 GETUPVAL                         R2 5
       68 JUMPIFNOT                        R2 ; [+8]
       69 GETUPVAL                         R2 3
       70 GETTABLEKS                       R2 R2 K17 ["observer"]
       72 GETTABLEKS                       R2 R2 K18 ["onPreExecuteToolUse"]
       74 GETUPVAL                         R3 5
       75 MOVE                             R4 R0
       76 CALL                             R2 2 0
       77 GETUPVAL                         R2 6
       78 GETTABLEKS                       R2 R2 K19 ["getTimestampMilliseconds"]
       80 CALL                             R2 0 1
       81 GETUPVAL                         R3 7
       82 JUMPIFNOT                        R3 ; [+62]
       83 DUPTABLE                         R3 K24 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       84 LOADK                            R4 K25 ["tool_result"]
       85 SETTABLEKS                       R4 R3 K0 ["type"]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K1 ["id"]
       90 SETTABLEKS                       R4 R3 K1 ["id"]
       92 GETUPVAL                         R4 0
       93 GETTABLEKS                       R4 R4 K2 ["name"]
       95 SETTABLEKS                       R4 R3 K2 ["name"]
       97 NEWTABLE                         R4 0 1
       99 DUPTABLE                         R5 K27 [{"type", "text"}]
      100 LOADK                            R6 K26 ["text"]
      101 SETTABLEKS                       R6 R5 K0 ["type"]
      103 LOADK                            R7 K28 ["Error: The tool input was not valid JSON and could not be parsed. Please retry the tool call with a valid JSON object. Original input: %*"]
      104 GETUPVAL                         R9 7
      105 NAMECALL                         R7 R7 K29 ["format"]
      107 CALL                             R7 2 1
      108 MOVE                             R6 R7
      109 SETTABLEKS                       R6 R5 K26 ["text"]
      111 SETLIST                          R4 R5 1 [1]
      113 SETTABLEKS                       R4 R3 K20 ["content"]
      115 LOADB                            R4 1
      116 SETTABLEKS                       R4 R3 K21 ["isError"]
      118 SETTABLEKS                       R2 R3 K22 ["startTime"]
      120 GETUPVAL                         R4 6
      121 GETTABLEKS                       R4 R4 K19 ["getTimestampMilliseconds"]
      123 CALL                             R4 0 1
      124 SETTABLEKS                       R4 R3 K23 ["startTimeAfterConfirmation"]
      126 GETUPVAL                         R4 5
      127 JUMPIFNOT                        R4 ; [+8]
      128 GETUPVAL                         R4 3
      129 GETTABLEKS                       R4 R4 K17 ["observer"]
      131 GETTABLEKS                       R4 R4 K30 ["onToolResult"]
      133 GETUPVAL                         R5 5
      134 MOVE                             R6 R3
      135 CALL                             R4 2 0
      136 DUPTABLE                         R4 K34 [{"toolUse", "toolResult", "invocationIndex"}]
      137 SETTABLEKS                       R0 R4 K31 ["toolUse"]
      139 SETTABLEKS                       R3 R4 K32 ["toolResult"]
      141 GETUPVAL                         R5 8
      142 SETTABLEKS                       R5 R4 K33 ["invocationIndex"]
      144 RETURN                           R4 1
      145 GETUPVAL                         R3 3
      146 GETTABLEKS                       R3 R3 K17 ["observer"]
      148 GETTABLEKS                       R3 R3 K35 ["checkToolConfirmationRequestAsync"]
      150 GETUPVAL                         R4 0
      151 GETTABLEKS                       R4 R4 K2 ["name"]
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R5 R5 K3 ["input"]
      156 CALL                             R3 2 1
      157 GETUPVAL                         R4 3
      158 GETTABLEKS                       R4 R4 K17 ["observer"]
      160 GETTABLEKS                       R4 R4 K36 ["getToolCallOptions"]
      162 GETUPVAL                         R5 0
      163 GETTABLEKS                       R5 R5 K2 ["name"]
      165 CALL                             R4 1 1
      166 GETUPVAL                         R5 6
      167 GETTABLEKS                       R5 R5 K19 ["getTimestampMilliseconds"]
      169 CALL                             R5 0 1
      170 JUMPIFNOT                        R3 ; [+280]
      171 LOADB                            R6 0
      172 LOADNIL                          R7
      173 LOADNIL                          R8
      174 GETUPVAL                         R9 2
      175 CALL                             R9 0 1
      176 JUMPIFNOT                        R9 ; [+84]
      177 GETUPVAL                         R9 9
      178 GETTABLEKS                       R9 R9 K37 ["find"]
      180 GETUPVAL                         R10 3
      181 GETTABLEKS                       R10 R10 K38 ["tools"]
      183 NEWCLOSURE                       R11 P0
      184 CAPTURE                          UPVAL U10
      185 CAPTURE                          UPVAL U0
      186 CALL                             R9 2 1
      187 JUMPIFNOT                        R9 ; [+68]
      188 GETUPVAL                         R10 3
      189 GETTABLEKS                       R10 R10 K39 ["onToolCall"]
      191 DUPTABLE                         R11 K43 [{"name", "arguments", "toolCallOptions", "contentId"}]
      192 GETUPVAL                         R12 0
      193 GETTABLEKS                       R12 R12 K2 ["name"]
      195 SETTABLEKS                       R12 R11 K2 ["name"]
      197 GETUPVAL                         R12 0
      198 GETTABLEKS                       R12 R12 K3 ["input"]
      200 SETTABLEKS                       R12 R11 K40 ["arguments"]
      202 SETTABLEKS                       R4 R11 K41 ["toolCallOptions"]
      204 GETUPVAL                         R12 5
      205 SETTABLEKS                       R12 R11 K42 ["contentId"]
      207 CALL                             R10 1 1
      208 GETUPVAL                         R11 11
      209 GETTABLEKS                       R11 R11 K44 ["pendingToolCallPromises"]
      211 LOADB                            R12 1
      212 SETTABLE                         R12 R11 R10
      213 GETUPVAL                         R11 12
      214 GETTABLEKS                       R11 R11 K45 ["Started"]
      216 NAMECALL                         R12 R10 K46 ["awaitStatus"]
      218 CALL                             R12 1 2
      219 MOVE                             R11 R12
      220 MOVE                             R7 R13
      221 GETUPVAL                         R12 12
      222 GETTABLEKS                       R12 R12 K47 ["Resolved"]
      224 JUMPIFEQ                         R11 R12 ; [+2]
      226 LOADB                            R6 0 +1
      227 LOADB                            R6 1
      228 GETUPVAL                         R12 11
      229 GETTABLEKS                       R12 R12 K44 ["pendingToolCallPromises"]
      231 LOADNIL                          R13
      232 SETTABLE                         R13 R12 R10
      233 JUMPIF                           R6 ; [+94]
      234 GETUPVAL                         R12 13
      235 CALL                             R12 0 1
      236 JUMPIFNOT                        R12 ; [+6]
      237 GETIMPORT                        R12 K49 [warn]
      239 LOADK                            R13 K50 ["ToolCall failed: "]
      240 MOVE                             R14 R11
      241 MOVE                             R15 R7
      242 CALL                             R12 3 0
      243 GETUPVAL                         R12 12
      244 GETTABLEKS                       R12 R12 K51 ["Cancelled"]
      246 JUMPIFNOTEQ                      R11 R12 ; [+5]
      248 GETUPVAL                         R12 14
      249 GETTABLEKS                       R8 R12 K52 ["ToolCancelled"]
      251 JUMP                             ; [+76]
      252 GETUPVAL                         R12 14
      253 GETTABLEKS                       R8 R12 K53 ["ToolError"]
      255 JUMP                             ; [+72]
      256 LOADB                            R6 0
      257 GETUPVAL                         R10 14
      258 GETTABLEKS                       R8 R10 K54 ["ToolNotFound"]
      260 JUMP                             ; [+67]
      261 GETUPVAL                         R9 3
      262 GETTABLEKS                       R9 R9 K39 ["onToolCall"]
      264 DUPTABLE                         R10 K43 [{"name", "arguments", "toolCallOptions", "contentId"}]
      265 GETUPVAL                         R11 0
      266 GETTABLEKS                       R11 R11 K2 ["name"]
      268 SETTABLEKS                       R11 R10 K2 ["name"]
      270 GETUPVAL                         R11 0
      271 GETTABLEKS                       R11 R11 K3 ["input"]
      273 SETTABLEKS                       R11 R10 K40 ["arguments"]
      275 SETTABLEKS                       R4 R10 K41 ["toolCallOptions"]
      277 GETUPVAL                         R11 5
      278 SETTABLEKS                       R11 R10 K42 ["contentId"]
      280 CALL                             R9 1 1
      281 GETUPVAL                         R10 11
      282 GETTABLEKS                       R10 R10 K44 ["pendingToolCallPromises"]
      284 LOADB                            R11 1
      285 SETTABLE                         R11 R10 R9
      286 GETUPVAL                         R10 12
      287 GETTABLEKS                       R10 R10 K45 ["Started"]
      289 NAMECALL                         R11 R9 K46 ["awaitStatus"]
      291 CALL                             R11 1 2
      292 MOVE                             R10 R11
      293 MOVE                             R7 R12
      294 GETUPVAL                         R11 12
      295 GETTABLEKS                       R11 R11 K47 ["Resolved"]
      297 JUMPIFEQ                         R10 R11 ; [+2]
      299 LOADB                            R6 0 +1
      300 LOADB                            R6 1
      301 GETUPVAL                         R11 11
      302 GETTABLEKS                       R11 R11 K44 ["pendingToolCallPromises"]
      304 LOADNIL                          R12
      305 SETTABLE                         R12 R11 R9
      306 JUMPIF                           R6 ; [+21]
      307 GETUPVAL                         R11 13
      308 CALL                             R11 0 1
      309 JUMPIFNOT                        R11 ; [+6]
      310 GETIMPORT                        R11 K49 [warn]
      312 LOADK                            R12 K50 ["ToolCall failed: "]
      313 MOVE                             R13 R10
      314 MOVE                             R14 R7
      315 CALL                             R11 3 0
      316 GETUPVAL                         R11 12
      317 GETTABLEKS                       R11 R11 K51 ["Cancelled"]
      319 JUMPIFNOTEQ                      R10 R11 ; [+5]
      321 GETUPVAL                         R11 14
      322 GETTABLEKS                       R8 R11 K52 ["ToolCancelled"]
      324 JUMP                             ; [+3]
      325 GETUPVAL                         R11 14
      326 GETTABLEKS                       R8 R11 K53 ["ToolError"]
      328 LOADNIL                          R9
      329 JUMPIFNOT                        R6 ; [+7]
      330 JUMPIFNOT                        R7 ; [+3]
      331 GETTABLEKS                       R10 R7 K20 ["content"]
      333 JUMPIF                           R10 ; [+3]
      334 GETUPVAL                         R10 14
      335 GETTABLEKS                       R8 R10 K53 ["ToolError"]
      337 JUMPIFNOT                        R8 ; [+63]
      338 LOADNIL                          R10
      339 GETUPVAL                         R11 14
      340 GETTABLEKS                       R11 R11 K54 ["ToolNotFound"]
      342 JUMPIFNOTEQ                      R8 R11 ; [+3]
      344 LOADK                            R10 K55 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      345 JUMP                             ; [+19]
      346 GETUPVAL                         R11 14
      347 GETTABLEKS                       R11 R11 K52 ["ToolCancelled"]
      349 JUMPIFNOTEQ                      R8 R11 ; [+3]
      351 LOADK                            R10 K56 ["The tool call was cancelled by the user."]
      352 JUMP                             ; [+12]
      353 GETUPVAL                         R11 14
      354 GETTABLEKS                       R11 R11 K53 ["ToolError"]
      356 JUMPIFNOTEQ                      R8 R11 ; [+3]
      358 LOADK                            R10 K57 ["Error: Tool call failed. Please try a different approach."]
      359 JUMP                             ; [+5]
      360 GETUPVAL                         R11 15
      361 GETTABLEKS                       R11 R11 K58 ["assertNever"]
      363 MOVE                             R12 R8
      364 CALL                             R11 1 0
      365 DUPTABLE                         R11 K27 [{"type", "text"}]
      366 LOADK                            R12 K26 ["text"]
      367 SETTABLEKS                       R12 R11 K0 ["type"]
      369 SETTABLEKS                       R10 R11 K26 ["text"]
      371 DUPTABLE                         R12 K24 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      372 LOADK                            R13 K25 ["tool_result"]
      373 SETTABLEKS                       R13 R12 K0 ["type"]
      375 GETUPVAL                         R13 0
      376 GETTABLEKS                       R13 R13 K1 ["id"]
      378 SETTABLEKS                       R13 R12 K1 ["id"]
      380 GETUPVAL                         R13 0
      381 GETTABLEKS                       R13 R13 K2 ["name"]
      383 SETTABLEKS                       R13 R12 K2 ["name"]
      385 NEWTABLE                         R13 0 1
      387 MOVE                             R14 R11
      388 SETLIST                          R13 R14 1 [1]
      390 SETTABLEKS                       R13 R12 K20 ["content"]
      392 LOADB                            R13 1
      393 SETTABLEKS                       R13 R12 K21 ["isError"]
      395 SETTABLEKS                       R2 R12 K22 ["startTime"]
      397 SETTABLEKS                       R5 R12 K23 ["startTimeAfterConfirmation"]
      399 MOVE                             R9 R12
      400 JUMP                             ; [+31]
      401 DUPTABLE                         R10 K60 [{"type", "id", "name", "content", "isError", "structuredContent", "startTime", "startTimeAfterConfirmation"}]
      402 LOADK                            R11 K25 ["tool_result"]
      403 SETTABLEKS                       R11 R10 K0 ["type"]
      405 GETUPVAL                         R11 0
      406 GETTABLEKS                       R11 R11 K1 ["id"]
      408 SETTABLEKS                       R11 R10 K1 ["id"]
      410 GETUPVAL                         R11 0
      411 GETTABLEKS                       R11 R11 K2 ["name"]
      413 SETTABLEKS                       R11 R10 K2 ["name"]
      415 GETTABLEKS                       R11 R7 K20 ["content"]
      417 SETTABLEKS                       R11 R10 K20 ["content"]
      419 GETTABLEKS                       R11 R7 K21 ["isError"]
      421 SETTABLEKS                       R11 R10 K21 ["isError"]
      423 GETTABLEKS                       R11 R7 K59 ["structuredContent"]
      425 SETTABLEKS                       R11 R10 K59 ["structuredContent"]
      427 SETTABLEKS                       R2 R10 K22 ["startTime"]
      429 SETTABLEKS                       R5 R10 K23 ["startTimeAfterConfirmation"]
      431 MOVE                             R9 R10
      432 GETUPVAL                         R10 5
      433 JUMPIFNOT                        R10 ; [+8]
      434 GETUPVAL                         R10 3
      435 GETTABLEKS                       R10 R10 K17 ["observer"]
      437 GETTABLEKS                       R10 R10 K30 ["onToolResult"]
      439 GETUPVAL                         R11 5
      440 MOVE                             R12 R9
      441 CALL                             R10 2 0
      442 DUPTABLE                         R10 K34 [{"toolUse", "toolResult", "invocationIndex"}]
      443 SETTABLEKS                       R0 R10 K31 ["toolUse"]
      445 SETTABLEKS                       R9 R10 K32 ["toolResult"]
      447 GETUPVAL                         R11 8
      448 SETTABLEKS                       R11 R10 K33 ["invocationIndex"]
      450 RETURN                           R10 1
      451 DUPTABLE                         R6 K27 [{"type", "text"}]
      452 LOADK                            R7 K26 ["text"]
      453 SETTABLEKS                       R7 R6 K0 ["type"]
      455 LOADK                            R7 K61 ["The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."]
      456 SETTABLEKS                       R7 R6 K26 ["text"]
      458 DUPTABLE                         R7 K24 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
      459 LOADK                            R8 K25 ["tool_result"]
      460 SETTABLEKS                       R8 R7 K0 ["type"]
      462 GETUPVAL                         R8 0
      463 GETTABLEKS                       R8 R8 K1 ["id"]
      465 SETTABLEKS                       R8 R7 K1 ["id"]
      467 GETUPVAL                         R8 0
      468 GETTABLEKS                       R8 R8 K2 ["name"]
      470 SETTABLEKS                       R8 R7 K2 ["name"]
      472 NEWTABLE                         R8 0 1
      474 MOVE                             R9 R6
      475 SETLIST                          R8 R9 1 [1]
      477 SETTABLEKS                       R8 R7 K20 ["content"]
      479 LOADB                            R8 0
      480 SETTABLEKS                       R8 R7 K21 ["isError"]
      482 SETTABLEKS                       R2 R7 K22 ["startTime"]
      484 SETTABLEKS                       R5 R7 K23 ["startTimeAfterConfirmation"]
      486 GETUPVAL                         R8 5
      487 JUMPIFNOT                        R8 ; [+8]
      488 GETUPVAL                         R8 3
      489 GETTABLEKS                       R8 R8 K17 ["observer"]
      491 GETTABLEKS                       R8 R8 K30 ["onToolResult"]
      493 GETUPVAL                         R9 5
      494 MOVE                             R10 R7
      495 CALL                             R8 2 0
      496 DUPTABLE                         R8 K34 [{"toolUse", "toolResult", "invocationIndex"}]
      497 SETTABLEKS                       R0 R8 K31 ["toolUse"]
      499 SETTABLEKS                       R7 R8 K32 ["toolResult"]
      501 GETUPVAL                         R9 8
      502 SETTABLEKS                       R9 R8 K33 ["invocationIndex"]
      504 RETURN                           R8 1

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
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R1
       89 CAPTURE                          UPVAL U7
       90 CAPTURE                          REF R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U9
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U10
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          UPVAL U12
       99 GETUPVAL                         R6 13
      100 GETTABLEKS                       R6 R6 K22 ["wrapFunction"]
      102 MOVE                             R7 R5
      103 CALL                             R6 1 1
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R8 R8 K6 ["toolCallThreads"]
      107 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      109 MOVE                             R9 R6
      110 GETIMPORT                        R7 K25 [table.insert]
      112 CALL                             R7 2 0
      113 GETUPVAL                         R7 0
      114 LOADK                            R8 K8 [""]
      115 SETTABLEKS                       R8 R7 K26 ["currentText"]
      117 GETUPVAL                         R7 0
      118 LOADK                            R8 K8 [""]
      119 SETTABLEKS                       R8 R7 K27 ["currentSignature"]
      121 GETUPVAL                         R7 0
      122 LOADNIL                          R8
      123 SETTABLEKS                       R8 R7 K0 ["currentTool"]
      125 GETUPVAL                         R7 0
      126 LOADK                            R8 K8 [""]
      127 SETTABLEKS                       R8 R7 K7 ["currentToolInput"]
      129 GETUPVAL                         R7 0
      130 LOADNIL                          R8
      131 SETTABLEKS                       R8 R7 K28 ["currentContentType"]
      133 CLOSEUPVALS                      R4
      134 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentText"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+30]
        5 DUPTABLE                         R0 K4 [{"type", "text"}]
        6 LOADK                            R1 K3 ["text"]
        7 SETTABLEKS                       R1 R0 K2 ["type"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["currentText"]
       12 SETTABLEKS                       R1 R0 K3 ["text"]
       14 DUPTABLE                         R1 K7 [{"role", "content"}]
       15 LOADK                            R2 K8 ["assistant"]
       16 SETTABLEKS                       R2 R1 K5 ["role"]
       18 NEWTABLE                         R2 0 1
       20 MOVE                             R3 R0
       21 SETLIST                          R2 R3 1 [1]
       23 SETTABLEKS                       R2 R1 K6 ["content"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K9 ["messages"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentText"]
        3 JUMPIFNOTEQKS                    R0 K1 [""] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["currentSignature"]
        8 JUMPIFEQKS                       R0 K1 [""] ; [+35]
       10 DUPTABLE                         R0 K6 [{"type", "thinking", "signature"}]
       11 LOADK                            R1 K4 ["thinking"]
       12 SETTABLEKS                       R1 R0 K3 ["type"]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["currentText"]
       17 SETTABLEKS                       R1 R0 K4 ["thinking"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K2 ["currentSignature"]
       22 SETTABLEKS                       R1 R0 K5 ["signature"]
       24 DUPTABLE                         R1 K9 [{"role", "content"}]
       25 LOADK                            R2 K10 ["assistant"]
       26 SETTABLEKS                       R2 R1 K7 ["role"]
       28 NEWTABLE                         R2 0 1
       30 MOVE                             R3 R0
       31 SETLIST                          R2 R3 1 [1]
       33 SETTABLEKS                       R2 R1 K8 ["content"]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K11 ["messages"]
       38 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       40 MOVE                             R4 R1
       41 GETIMPORT                        R2 K14 [table.insert]
       43 CALL                             R2 2 0
       44 RETURN                           R0 0

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
        4 JUMPIFNOTEQKS                    R2 K2 ["text_delta"] ; [+32]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R2 K3 ["currentText"]
        9 GETTABLEKS                       R5 R1 K4 ["text"]
       11 CONCAT                           R3 R4 R5
       12 SETTABLEKS                       R3 R2 K3 ["currentText"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K5 ["currentContentId"]
       17 JUMPIFNOT                        R2 ; [+118]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K6 ["observer"]
       21 GETTABLEKS                       R2 R2 K7 ["onContentDelta"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["currentContentId"]
       26 DUPTABLE                         R4 K8 [{"type", "text"}]
       27 LOADK                            R5 K2 ["text_delta"]
       28 SETTABLEKS                       R5 R4 K1 ["type"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K3 ["currentText"]
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
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K5 ["currentContentId"]
       52 JUMPIFNOT                        R2 ; [+83]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K12 ["currentTool"]
       56 FASTCALL2K                       ASSERT R3 K13 ; [+4]
       58 LOADK                            R4 K13 ["Expected currentTool to be set"]
       59 GETIMPORT                        R2 K15 [assert]
       61 CALL                             R2 2 0
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R2 R2 K6 ["observer"]
       65 GETTABLEKS                       R2 R2 K7 ["onContentDelta"]
       67 GETUPVAL                         R3 0
       68 GETTABLEKS                       R3 R3 K5 ["currentContentId"]
       70 DUPTABLE                         R4 K16 [{"type", "jsonDelta"}]
       71 LOADK                            R5 K9 ["json_delta"]
       72 SETTABLEKS                       R5 R4 K1 ["type"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K10 ["currentToolInput"]
       77 SETTABLEKS                       R5 R4 K11 ["jsonDelta"]
       79 DUPTABLE                         R5 K18 [{"toolName"}]
       80 GETUPVAL                         R6 0
       81 GETTABLEKS                       R6 R6 K12 ["currentTool"]
       83 GETTABLEKS                       R6 R6 K19 ["name"]
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
      109 GETUPVAL                         R2 0
      110 GETTABLEKS                       R2 R2 K5 ["currentContentId"]
      112 JUMPIFNOT                        R2 ; [+23]
      113 GETUPVAL                         R2 1
      114 GETTABLEKS                       R2 R2 K6 ["observer"]
      116 GETTABLEKS                       R2 R2 K7 ["onContentDelta"]
      118 GETUPVAL                         R3 0
      119 GETTABLEKS                       R3 R3 K5 ["currentContentId"]
      121 DUPTABLE                         R4 K24 [{"type", "thinking", "signature"}]
      122 LOADK                            R5 K20 ["thinking_delta"]
      123 SETTABLEKS                       R5 R4 K1 ["type"]
      125 GETUPVAL                         R5 0
      126 GETTABLEKS                       R5 R5 K3 ["currentText"]
      128 SETTABLEKS                       R5 R4 K21 ["thinking"]
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K22 ["currentSignature"]
      133 SETTABLEKS                       R5 R4 K23 ["signature"]
      135 CALL                             R2 2 0
      136 RETURN                           R0 0

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
       17 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+52]
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
       39 DUPTABLE                         R1 K15 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       40 GETIMPORT                        R3 K18 [os.clock]
       42 CALL                             R3 0 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K19 ["requestStartTime"]
       46 SUB                              R2 R3 R4
       47 SETTABLEKS                       R2 R1 K10 ["requestJourneyDuration"]
       49 LOADK                            R2 K20 ["message_stop"]
       50 SETTABLEKS                       R2 R1 K11 ["requestEndReason"]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K12 ["messageGuid"]
       55 SETTABLEKS                       R2 R1 K12 ["messageGuid"]
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R2 R2 K21 ["conversationSessionId"]
       60 SETTABLEKS                       R2 R1 K13 ["sessionId"]
       62 LOADK                            R2 K22 [""]
       63 SETTABLEKS                       R2 R1 K14 ["message"]
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R2 R2 K23 ["messageId"]
       68 CALL                             R0 2 0
       69 RETURN                           R0 0
       70 GETUPVAL                         R0 0
       71 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       73 JUMPIFEQKS                       R0 K24 ["safety_filter"] ; [+6]
       75 GETUPVAL                         R0 0
       76 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       78 JUMPIFNOTEQKS                    R0 K25 ["token_limit"] ; [+7]
       80 GETUPVAL                         R0 2
       81 GETUPVAL                         R1 0
       82 GETTABLEKS                       R1 R1 K0 ["stopReason"]
       84 CALL                             R0 1 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R0 0
       87 GETTABLEKS                       R0 R0 K0 ["stopReason"]
       89 JUMPIFNOTEQKS                    R0 K26 ["tool_use"] ; [+174]
       91 GETUPVAL                         R0 0
       92 GETTABLEKS                       R1 R0 K27 ["toolCallCount"]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K28 ["toolCallThreads"]
       97 LENGTH                           R2 R3
       98 ADD                              R1 R1 R2
       99 SETTABLEKS                       R1 R0 K27 ["toolCallCount"]
      101 GETUPVAL                         R0 3
      102 GETTABLEKS                       R0 R0 K29 ["collectTasks"]
      104 GETUPVAL                         R1 0
      105 GETTABLEKS                       R1 R1 K28 ["toolCallThreads"]
      107 CALL                             R0 1 2
      108 GETUPVAL                         R3 4
      109 FASTCALL2K                       ASSERT R3 K30 ; [+4]
      111 LOADK                            R4 K30 ["Expected session to be set"]
      112 GETIMPORT                        R2 K3 [assert]
      114 CALL                             R2 2 0
      115 GETUPVAL                         R2 4
      116 GETTABLEKS                       R2 R2 K31 ["isCanceled"]
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
      154 DUPCLOSURE                       R5 K42 [PROTO_14]
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
      172 GETUPVAL                         R10 0
      173 GETTABLEKS                       R10 R10 K48 ["messages"]
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
      199 GETUPVAL                         R10 0
      200 GETTABLEKS                       R10 R10 K48 ["messages"]
      202 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      204 MOVE                             R11 R8
      205 GETIMPORT                        R9 K39 [table.insert]
      207 CALL                             R9 2 0
      208 FORGLOOP                         R3 2 ; [-22]
      210 GETUPVAL                         R3 5
      211 CALL                             R3 0 1
      212 JUMPIFNOT                        R3 ; [+18]
      213 GETUPVAL                         R3 6
      214 GETTABLEKS                       R3 R3 K51 ["shouldCompact"]
      216 GETUPVAL                         R4 0
      217 GETTABLEKS                       R4 R4 K48 ["messages"]
      219 DUPTABLE                         R5 K54 [{"isSubagent", "selectedModel"}]
      220 GETUPVAL                         R6 1
      221 GETTABLEKS                       R6 R6 K52 ["isSubagent"]
      223 SETTABLEKS                       R6 R5 K52 ["isSubagent"]
      225 GETUPVAL                         R6 1
      226 GETTABLEKS                       R6 R6 K53 ["selectedModel"]
      228 SETTABLEKS                       R6 R5 K53 ["selectedModel"]
      230 CALL                             R3 2 1
      231 GETUPVAL                         R4 0
      232 GETTABLEKS                       R4 R4 K27 ["toolCallCount"]
      234 GETUPVAL                         R5 1
      235 GETTABLEKS                       R5 R5 K55 ["maxToolCalls"]
      237 JUMPIFNOTLT                      R5 R4 ; [+5]
      239 GETUPVAL                         R4 2
      240 LOADK                            R5 K56 ["max_tool_calls"]
      241 CALL                             R4 1 0
      242 RETURN                           R0 0
      243 DUPTABLE                         R5 K59 [{"resumedToolCallCount", "needsCompaction"}]
      244 GETUPVAL                         R6 0
      245 GETTABLEKS                       R6 R6 K27 ["toolCallCount"]
      247 SETTABLEKS                       R6 R5 K57 ["resumedToolCallCount"]
      249 SETTABLEKS                       R3 R5 K58 ["needsCompaction"]
      251 NEWCLOSURE                       R4 P1
      252 CAPTURE                          UPVAL U1
      253 CAPTURE                          UPVAL U5
      254 CAPTURE                          UPVAL U0
      255 CAPTURE                          VAL R5
      256 CAPTURE                          UPVAL U6
      257 CAPTURE                          UPVAL U4
      258 CAPTURE                          UPVAL U7
      259 CAPTURE                          UPVAL U8
      260 CAPTURE                          UPVAL U9
      261 MOVE                             R5 R4
      262 CALL                             R5 0 0
      263 RETURN                           R0 0
      264 GETUPVAL                         R0 10
      265 GETTABLEKS                       R0 R0 K60 ["assertNever"]
      267 GETUPVAL                         R1 0
      268 GETTABLEKS                       R1 R1 K0 ["stopReason"]
      270 CALL                             R0 1 0
      271 RETURN                           R0 0

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
      120 JUMPIFNOTEQKS                    R1 K24 ["thinking"] ; [+66]
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
      146 JUMPIFNOTEQKS                    R1 K29 ["error"] ; [+34]
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
      178 MOVE                             R3 R1
      179 CALL                             R2 1 0
      180 RETURN                           R0 0
      181 GETUPVAL                         R1 13
      182 GETTABLEKS                       R1 R1 K30 ["assertNever"]
      184 GETTABLEKS                       R2 R0 K8 ["type"]
      186 CALL                             R1 1 0
      187 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R0 K2 [{"type", "error"}]
        1 LOADK                            R1 K1 ["error"]
        2 SETTABLEKS                       R1 R0 K0 ["type"]
        4 LOADK                            R1 K3 ["timeout"]
        5 SETTABLEKS                       R1 R0 K1 ["error"]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

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
        0 GETTABLEKS                       R2 R0 K0 ["setInputEnabled"]
        2 LOADB                            R3 0
        3 CALL                             R2 1 0
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 GETTABLEKS                       R4 R0 K2 ["timeoutMs"]
       10 CALL                             R3 1 1
       11 DUPTABLE                         R4 K21 [{"sessionId", "currentText", "currentSignature", "currentTool", "currentToolInput", "currentContentType", "currentContentId", "messages", "toolCallCount", "toolCallThreads", "pendingToolCallPromises", "isAgenticMode", "requestStartTime", "messageGuid", "conversationSessionId", "compactedStore", "messageId", "logRequestStop"}]
       12 GETUPVAL                         R5 1
       13 LOADB                            R7 0
       14 NAMECALL                         R5 R5 K22 ["GenerateGUID"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K3 ["sessionId"]
       19 LOADK                            R5 K23 [""]
       20 SETTABLEKS                       R5 R4 K4 ["currentText"]
       22 LOADK                            R5 K23 [""]
       23 SETTABLEKS                       R5 R4 K5 ["currentSignature"]
       25 LOADNIL                          R5
       26 SETTABLEKS                       R5 R4 K6 ["currentTool"]
       28 LOADK                            R5 K23 [""]
       29 SETTABLEKS                       R5 R4 K7 ["currentToolInput"]
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K8 ["currentContentType"]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K9 ["currentContentId"]
       37 GETTABLEKS                       R5 R0 K24 ["initialMessages"]
       39 JUMPIF                           R5 ; [+2]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R4 K10 ["messages"]
       44 ORK                              R5 R1 K25 [0]
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
       70 GETTABLEKS                       R5 R0 K18 ["compactedStore"]
       72 SETTABLEKS                       R5 R4 K18 ["compactedStore"]
       74 GETTABLEKS                       R5 R0 K19 ["messageId"]
       76 SETTABLEKS                       R5 R4 K19 ["messageId"]
       78 GETTABLEKS                       R5 R0 K20 ["logRequestStop"]
       80 SETTABLEKS                       R5 R4 K20 ["logRequestStop"]
       82 NEWCLOSURE                       R5 P0
       83 CAPTURE                          VAL R0
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          REF R2
       88 CAPTURE                          UPVAL U4
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          UPVAL U6
       91 NEWCLOSURE                       R6 P1
       92 CAPTURE                          VAL R0
       93 NEWCLOSURE                       R7 P2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          VAL R0
      100 CAPTURE                          UPVAL U4
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          UPVAL U12
      103 CAPTURE                          UPVAL U13
      104 CAPTURE                          UPVAL U14
      105 CAPTURE                          UPVAL U15
      106 CAPTURE                          UPVAL U16
      107 CAPTURE                          UPVAL U17
      108 NEWCLOSURE                       R8 P3
      109 CAPTURE                          VAL R4
      110 NEWCLOSURE                       R9 P4
      111 CAPTURE                          VAL R4
      112 NEWCLOSURE                       R10 P5
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R0
      115 NEWCLOSURE                       R11 P6
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R0
      118 NEWCLOSURE                       R12 P7
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R0
      121 NEWCLOSURE                       R13 P8
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R9
      126 NEWCLOSURE                       R14 P9
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R6
      130 CAPTURE                          UPVAL U17
      131 CAPTURE                          REF R2
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          UPVAL U3
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          UPVAL U5
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          UPVAL U16
      138 NEWCLOSURE                       R15 P10
      139 CAPTURE                          UPVAL U8
      140 CAPTURE                          VAL R4
      141 CAPTURE                          UPVAL U18
      142 CAPTURE                          VAL R0
      143 NEWCLOSURE                       R16 P11
      144 CAPTURE                          REF R2
      145 CAPTURE                          UPVAL U19
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R6
      157 CAPTURE                          UPVAL U16
      158 GETTABLEKS                       R17 R3 K26 ["onTimeout"]
      160 NEWCLOSURE                       R19 P12
      161 CAPTURE                          VAL R16
      162 NAMECALL                         R17 R17 K27 ["Connect"]
      164 CALL                             R17 2 1
      165 LOADB                            R18 0
      166 LOADB                            R19 0
      167 DUPTABLE                         R20 K34 [{"state", "processEvent", "close", "cancel", "isClosed", "isCanceled"}]
      168 SETTABLEKS                       R4 R20 K28 ["state"]
      170 SETTABLEKS                       R16 R20 K29 ["processEvent"]
      172 NEWCLOSURE                       R21 P13
      173 CAPTURE                          REF R18
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R21 R20 K30 ["close"]
      180 NEWCLOSURE                       R21 P14
      181 CAPTURE                          REF R2
      182 CAPTURE                          REF R19
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R4
      185 SETTABLEKS                       R21 R20 K31 ["cancel"]
      187 NEWCLOSURE                       R21 P15
      188 CAPTURE                          REF R18
      189 SETTABLEKS                       R21 R20 K32 ["isClosed"]
      191 NEWCLOSURE                       R21 P16
      192 CAPTURE                          REF R19
      193 SETTABLEKS                       R21 R20 K33 ["isCanceled"]
      195 MOVE                             R2 R20
      196 SETUPVAL                         R2 6
      197 CLOSEUPVALS                      R2
      198 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+47]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["cancel"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["state"]
        9 GETTABLEKS                       R0 R0 K2 ["logRequestStop"]
       11 DUPTABLE                         R1 K8 [{"requestJourneyDuration", "requestEndReason", "messageGuid", "sessionId", "message"}]
       12 GETIMPORT                        R3 K11 [os.clock]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K1 ["state"]
       18 GETTABLEKS                       R4 R4 K12 ["requestStartTime"]
       20 SUB                              R2 R3 R4
       21 SETTABLEKS                       R2 R1 K3 ["requestJourneyDuration"]
       23 LOADK                            R2 K13 ["user_cancelled"]
       24 SETTABLEKS                       R2 R1 K4 ["requestEndReason"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K1 ["state"]
       29 GETTABLEKS                       R2 R2 K5 ["messageGuid"]
       31 SETTABLEKS                       R2 R1 K5 ["messageGuid"]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K1 ["state"]
       36 GETTABLEKS                       R2 R2 K14 ["conversationSessionId"]
       38 SETTABLEKS                       R2 R1 K6 ["sessionId"]
       40 LOADK                            R2 K15 [""]
       41 SETTABLEKS                       R2 R1 K7 ["message"]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K1 ["state"]
       46 GETTABLEKS                       R2 R2 K16 ["messageId"]
       48 CALL                             R0 2 0
       49 RETURN                           R0 0

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
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          VAL R1
        8 CAPTURE                          REF R0
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
      122 GETTABLEKS                       R16 R16 K28 ["Compaction"]
      124 GETTABLEKS                       R16 R16 K30 ["compactThread"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R0 K31 ["Flags"]
      131 GETTABLEKS                       R17 R17 K32 ["getAssistantModeEnabled"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K9 [require]
      136 GETTABLEKS                       R18 R0 K31 ["Flags"]
      138 GETTABLEKS                       R18 R18 K33 ["FFlagAssistantContextCompaction"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R0 K31 ["Flags"]
      145 GETTABLEKS                       R19 R19 K34 ["FFlagAssistantToolExistenceRefactor"]
      147 CALL                             R18 1 1
      148 GETIMPORT                        R19 K9 [require]
      150 GETTABLEKS                       R20 R0 K31 ["Flags"]
      152 GETTABLEKS                       R20 R20 K35 ["FFlagDebugLogAssistantUI"]
      154 CALL                             R19 1 1
      155 DUPTABLE                         R20 K40 [{"Started", "Resolved", "Rejected", "Cancelled"}]
      156 LOADK                            R21 K36 ["Started"]
      157 SETTABLEKS                       R21 R20 K36 ["Started"]
      159 LOADK                            R21 K37 ["Resolved"]
      160 SETTABLEKS                       R21 R20 K37 ["Resolved"]
      162 LOADK                            R21 K38 ["Rejected"]
      163 SETTABLEKS                       R21 R20 K38 ["Rejected"]
      165 LOADK                            R21 K39 ["Cancelled"]
      166 SETTABLEKS                       R21 R20 K39 ["Cancelled"]
      168 DUPTABLE                         R21 K44 [{"ToolNotFound", "ToolCancelled", "ToolError"}]
      169 LOADK                            R22 K45 ["tool_not_found"]
      170 SETTABLEKS                       R22 R21 K41 ["ToolNotFound"]
      172 LOADK                            R22 K46 ["tool_cancelled"]
      173 SETTABLEKS                       R22 R21 K42 ["ToolCancelled"]
      175 LOADK                            R22 K47 ["tool_error"]
      176 SETTABLEKS                       R22 R21 K43 ["ToolError"]
      178 GETTABLEKS                       R22 R4 K48 ["getToolName"]
      180 DUPCLOSURE                       R23 K49 [PROTO_26]
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R8
      198 CAPTURE                          VAL R9
      199 DUPTABLE                         R24 K51 [{"createProcessEventHandler"}]
      200 SETTABLEKS                       R23 R24 K50 ["createProcessEventHandler"]
      202 RETURN                           R24 1
