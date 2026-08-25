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
       20 CAPTURE                          UPVAL U7
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_3:
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
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K7 ["get"]
       30 CALL                             R2 0 1
       31 GETTABLEKS                       R2 R2 K9 ["isAssistantHarnessSplitEnabled"]
       33 CALL                             R2 0 1
       34 JUMPIF                           R2 ; [+53]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K10 ["FFlagAssistantToolExistenceRefactor"]
       38 JUMPIF                           R2 ; [+49]
       39 GETTABLEKS                       R2 R1 K11 ["logToolStarted"]
       41 DUPTABLE                         R3 K20 [{"messageGuid", "sessionId", "toolId", "toolName", "assistantMode", "input", "currentSubagent", "parentMessageGuid", "parentToolId"}]
       42 GETUPVAL                         R4 3
       43 GETTABLEKS                       R4 R4 K12 ["messageGuid"]
       45 SETTABLEKS                       R4 R3 K12 ["messageGuid"]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R4 R4 K21 ["conversationSessionId"]
       50 SETTABLEKS                       R4 R3 K13 ["sessionId"]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K2 ["id"]
       55 SETTABLEKS                       R4 R3 K14 ["toolId"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K3 ["name"]
       60 SETTABLEKS                       R4 R3 K15 ["toolName"]
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K16 ["assistantMode"]
       65 SETTABLEKS                       R4 R3 K16 ["assistantMode"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K4 ["input"]
       70 SETTABLEKS                       R4 R3 K4 ["input"]
       72 GETUPVAL                         R4 3
       73 GETTABLEKS                       R4 R4 K17 ["currentSubagent"]
       75 SETTABLEKS                       R4 R3 K17 ["currentSubagent"]
       77 GETUPVAL                         R4 3
       78 GETTABLEKS                       R4 R4 K18 ["parentMessageGuid"]
       80 SETTABLEKS                       R4 R3 K18 ["parentMessageGuid"]
       82 GETUPVAL                         R4 3
       83 GETTABLEKS                       R4 R4 K19 ["parentToolId"]
       85 SETTABLEKS                       R4 R3 K19 ["parentToolId"]
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 4
       89 JUMPIFNOT                        R2 ; [+8]
       90 GETUPVAL                         R2 3
       91 GETTABLEKS                       R2 R2 K22 ["observer"]
       93 GETTABLEKS                       R2 R2 K23 ["onPreExecuteToolUse"]
       95 GETUPVAL                         R3 4
       96 MOVE                             R4 R0
       97 CALL                             R2 2 0
       98 GETUPVAL                         R2 5
       99 GETTABLEKS                       R2 R2 K24 ["getTimestampMilliseconds"]
      101 CALL                             R2 0 1
      102 GETUPVAL                         R3 6
      103 JUMPIFNOT                        R3 ; [+53]
      104 DUPTABLE                         R3 K31 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K2 ["id"]
      108 SETTABLEKS                       R4 R3 K2 ["id"]
      110 GETUPVAL                         R4 0
      111 GETTABLEKS                       R4 R4 K3 ["name"]
      113 SETTABLEKS                       R4 R3 K3 ["name"]
      115 NEWTABLE                         R4 0 1
      117 DUPTABLE                         R5 K33 [{[1] = "text", ["text"]}]
      118 LOADK                            R7 K34 ["Error: The tool input was not valid JSON and could not be parsed. Please retry the tool call with a valid JSON object. Original input: %*"]
      119 GETUPVAL                         R9 6
      120 NAMECALL                         R7 R7 K35 ["format"]
      122 CALL                             R7 2 1
      123 MOVE                             R6 R7
      124 SETTABLEKS                       R6 R5 K32 ["text"]
      126 SETLIST                          R4 R5 1 [1]
      128 SETTABLEKS                       R4 R3 K26 ["content"]
      130 SETTABLEKS                       R2 R3 K29 ["startTime"]
      132 GETUPVAL                         R4 5
      133 GETTABLEKS                       R4 R4 K24 ["getTimestampMilliseconds"]
      135 CALL                             R4 0 1
      136 SETTABLEKS                       R4 R3 K30 ["startTimeAfterConfirmation"]
      138 GETUPVAL                         R4 4
      139 JUMPIFNOT                        R4 ; [+8]
      140 GETUPVAL                         R4 3
      141 GETTABLEKS                       R4 R4 K22 ["observer"]
      143 GETTABLEKS                       R4 R4 K36 ["onToolResult"]
      145 GETUPVAL                         R5 4
      146 MOVE                             R6 R3
      147 CALL                             R4 2 0
      148 DUPTABLE                         R4 K40 [{"toolUse", "toolResult", "invocationIndex"}]
      149 SETTABLEKS                       R0 R4 K37 ["toolUse"]
      151 SETTABLEKS                       R3 R4 K38 ["toolResult"]
      153 GETUPVAL                         R5 7
      154 SETTABLEKS                       R5 R4 K39 ["invocationIndex"]
      156 RETURN                           R4 1
      157 GETUPVAL                         R3 3
      158 GETTABLEKS                       R3 R3 K22 ["observer"]
      160 GETTABLEKS                       R3 R3 K41 ["checkToolConfirmationRequestAsync"]
      162 GETUPVAL                         R4 0
      163 GETTABLEKS                       R4 R4 K3 ["name"]
      165 GETUPVAL                         R5 0
      166 GETTABLEKS                       R5 R5 K4 ["input"]
      168 CALL                             R3 2 1
      169 GETUPVAL                         R4 3
      170 GETTABLEKS                       R4 R4 K22 ["observer"]
      172 GETTABLEKS                       R4 R4 K42 ["getToolCallOptions"]
      174 GETUPVAL                         R5 0
      175 GETTABLEKS                       R5 R5 K3 ["name"]
      177 CALL                             R4 1 1
      178 GETUPVAL                         R5 5
      179 GETTABLEKS                       R5 R5 K24 ["getTimestampMilliseconds"]
      181 CALL                             R5 0 1
      182 JUMPIFNOT                        R3 ; [+260]
      183 LOADB                            R6 0
      184 LOADNIL                          R7
      185 LOADNIL                          R8
      186 GETUPVAL                         R9 2
      187 GETTABLEKS                       R9 R9 K10 ["FFlagAssistantToolExistenceRefactor"]
      189 JUMPIFNOT                        R9 ; [+92]
      190 GETUPVAL                         R10 3
      191 GETTABLEKS                       R10 R10 K43 ["tools"]
      193 NEWCLOSURE                       R11 P0
      194 CAPTURE                          UPVAL U8
      195 CAPTURE                          UPVAL U0
      196 MOVE                             R12 R10
      197 LOADNIL                          R13
      198 LOADNIL                          R14
      199 FORGPREP                         R12
      200 GETUPVAL                         R18 8
      201 MOVE                             R19 R16
      202 CALL                             R18 1 1
      203 GETUPVAL                         R19 0
      204 GETTABLEKS                       R19 R19 K3 ["name"]
      206 JUMPIFEQ                         R18 R19 ; [+2]
      208 LOADB                            R17 0 +1
      209 LOADB                            R17 1
      210 JUMPIFNOT                        R17 ; [+2]
      211 MOVE                             R9 R16
      212 JUMP                             ; [+3]
      213 FORGLOOP                         R12 2 ; [-14]
      215 LOADNIL                          R9
      216 JUMPIFNOT                        R9 ; [+62]
      217 GETUPVAL                         R10 3
      218 GETTABLEKS                       R10 R10 K44 ["onToolCall"]
      220 DUPTABLE                         R11 K48 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      221 GETUPVAL                         R12 0
      222 GETTABLEKS                       R12 R12 K3 ["name"]
      224 SETTABLEKS                       R12 R11 K3 ["name"]
      226 GETUPVAL                         R12 0
      227 GETTABLEKS                       R12 R12 K4 ["input"]
      229 SETTABLEKS                       R12 R11 K45 ["arguments"]
      231 SETTABLEKS                       R4 R11 K46 ["toolCallOptions"]
      233 GETUPVAL                         R12 4
      234 SETTABLEKS                       R12 R11 K47 ["contentId"]
      236 GETUPVAL                         R12 0
      237 GETTABLEKS                       R12 R12 K2 ["id"]
      239 SETTABLEKS                       R12 R11 K14 ["toolId"]
      241 CALL                             R10 1 1
      242 GETUPVAL                         R11 9
      243 GETTABLEKS                       R11 R11 K49 ["pendingToolCallPromises"]
      245 LOADB                            R12 1
      246 SETTABLE                         R12 R11 R10
      247 LOADK                            R11 K50 ["Started"]
      248 NAMECALL                         R12 R10 K51 ["awaitStatus"]
      250 CALL                             R12 1 2
      251 MOVE                             R11 R12
      252 MOVE                             R7 R13
      253 JUMPIFEQKS                       R11 K52 ["Resolved"] ; [+2]
      255 LOADB                            R6 0 +1
      256 LOADB                            R6 1
      257 GETUPVAL                         R12 9
      258 GETTABLEKS                       R12 R12 K49 ["pendingToolCallPromises"]
      260 LOADNIL                          R13
      261 SETTABLE                         R13 R12 R10
      262 JUMPIF                           R6 ; [+80]
      263 GETUPVAL                         R12 2
      264 GETTABLEKS                       R12 R12 K53 ["FFlagDebugLogAssistantUI"]
      266 JUMPIFNOT                        R12 ; [+6]
      267 GETIMPORT                        R12 K55 [warn]
      269 LOADK                            R13 K56 ["ToolCall failed: "]
      270 MOVE                             R14 R11
      271 MOVE                             R15 R7
      272 CALL                             R12 3 0
      273 JUMPIFNOTEQKS                    R11 K57 ["Cancelled"] ; [+3]
      275 LOADK                            R8 K58 ["tool_cancelled"]
      276 JUMP                             ; [+66]
      277 LOADK                            R8 K59 ["tool_error"]
      278 JUMP                             ; [+64]
      279 LOADB                            R6 0
      280 LOADK                            R8 K60 ["tool_not_found"]
      281 JUMP                             ; [+61]
      282 GETUPVAL                         R9 3
      283 GETTABLEKS                       R9 R9 K44 ["onToolCall"]
      285 DUPTABLE                         R10 K48 [{"name", "arguments", "toolCallOptions", "contentId", "toolId"}]
      286 GETUPVAL                         R11 0
      287 GETTABLEKS                       R11 R11 K3 ["name"]
      289 SETTABLEKS                       R11 R10 K3 ["name"]
      291 GETUPVAL                         R11 0
      292 GETTABLEKS                       R11 R11 K4 ["input"]
      294 SETTABLEKS                       R11 R10 K45 ["arguments"]
      296 SETTABLEKS                       R4 R10 K46 ["toolCallOptions"]
      298 GETUPVAL                         R11 4
      299 SETTABLEKS                       R11 R10 K47 ["contentId"]
      301 GETUPVAL                         R11 0
      302 GETTABLEKS                       R11 R11 K2 ["id"]
      304 SETTABLEKS                       R11 R10 K14 ["toolId"]
      306 CALL                             R9 1 1
      307 GETUPVAL                         R10 9
      308 GETTABLEKS                       R10 R10 K49 ["pendingToolCallPromises"]
      310 LOADB                            R11 1
      311 SETTABLE                         R11 R10 R9
      312 LOADK                            R10 K50 ["Started"]
      313 NAMECALL                         R11 R9 K51 ["awaitStatus"]
      315 CALL                             R11 1 2
      316 MOVE                             R10 R11
      317 MOVE                             R7 R12
      318 JUMPIFEQKS                       R10 K52 ["Resolved"] ; [+2]
      320 LOADB                            R6 0 +1
      321 LOADB                            R6 1
      322 GETUPVAL                         R11 9
      323 GETTABLEKS                       R11 R11 K49 ["pendingToolCallPromises"]
      325 LOADNIL                          R12
      326 SETTABLE                         R12 R11 R9
      327 JUMPIF                           R6 ; [+15]
      328 GETUPVAL                         R11 2
      329 GETTABLEKS                       R11 R11 K53 ["FFlagDebugLogAssistantUI"]
      331 JUMPIFNOT                        R11 ; [+6]
      332 GETIMPORT                        R11 K55 [warn]
      334 LOADK                            R12 K56 ["ToolCall failed: "]
      335 MOVE                             R13 R10
      336 MOVE                             R14 R7
      337 CALL                             R11 3 0
      338 JUMPIFNOTEQKS                    R10 K57 ["Cancelled"] ; [+3]
      340 LOADK                            R8 K58 ["tool_cancelled"]
      341 JUMP                             ; [+1]
      342 LOADK                            R8 K59 ["tool_error"]
      343 LOADNIL                          R9
      344 JUMPIFNOT                        R6 ; [+5]
      345 JUMPIFNOT                        R7 ; [+3]
      346 GETTABLEKS                       R10 R7 K26 ["content"]
      348 JUMPIF                           R10 ; [+1]
      349 LOADK                            R8 K59 ["tool_error"]
      350 JUMPIFNOT                        R8 ; [+45]
      351 LOADNIL                          R10
      352 JUMPIFNOTEQKS                    R8 K60 ["tool_not_found"] ; [+3]
      354 LOADK                            R10 K61 ["Error: The tool was not found. It may have been removed by the user. You MUST try a different tool or ask the user for a different approach."]
      355 JUMP                             ; [+13]
      356 JUMPIFNOTEQKS                    R8 K58 ["tool_cancelled"] ; [+3]
      358 LOADK                            R10 K62 ["The tool call was cancelled by the user."]
      359 JUMP                             ; [+9]
      360 JUMPIFNOTEQKS                    R8 K59 ["tool_error"] ; [+3]
      362 LOADK                            R10 K63 ["Error: Tool call failed. Please try a different approach."]
      363 JUMP                             ; [+5]
      364 GETUPVAL                         R11 10
      365 GETTABLEKS                       R11 R11 K64 ["assertNever"]
      367 MOVE                             R12 R8
      368 CALL                             R11 1 0
      369 DUPTABLE                         R11 K33 [{[1] = "text", ["text"]}]
      370 SETTABLEKS                       R10 R11 K32 ["text"]
      372 DUPTABLE                         R12 K31 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = True, ["startTime"], ["startTimeAfterConfirmation"]}]
      373 GETUPVAL                         R13 0
      374 GETTABLEKS                       R13 R13 K2 ["id"]
      376 SETTABLEKS                       R13 R12 K2 ["id"]
      378 GETUPVAL                         R13 0
      379 GETTABLEKS                       R13 R13 K3 ["name"]
      381 SETTABLEKS                       R13 R12 K3 ["name"]
      383 NEWTABLE                         R13 0 1
      385 MOVE                             R14 R11
      386 SETLIST                          R13 R14 1 [1]
      388 SETTABLEKS                       R13 R12 K26 ["content"]
      390 SETTABLEKS                       R2 R12 K29 ["startTime"]
      392 SETTABLEKS                       R5 R12 K30 ["startTimeAfterConfirmation"]
      394 MOVE                             R9 R12
      395 JUMP                             ; [+28]
      396 DUPTABLE                         R10 K66 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      397 GETUPVAL                         R11 0
      398 GETTABLEKS                       R11 R11 K2 ["id"]
      400 SETTABLEKS                       R11 R10 K2 ["id"]
      402 GETUPVAL                         R11 0
      403 GETTABLEKS                       R11 R11 K3 ["name"]
      405 SETTABLEKS                       R11 R10 K3 ["name"]
      407 GETTABLEKS                       R11 R7 K26 ["content"]
      409 SETTABLEKS                       R11 R10 K26 ["content"]
      411 GETTABLEKS                       R11 R7 K27 ["isError"]
      413 SETTABLEKS                       R11 R10 K27 ["isError"]
      415 GETTABLEKS                       R11 R7 K65 ["structuredContent"]
      417 SETTABLEKS                       R11 R10 K65 ["structuredContent"]
      419 SETTABLEKS                       R2 R10 K29 ["startTime"]
      421 SETTABLEKS                       R5 R10 K30 ["startTimeAfterConfirmation"]
      423 MOVE                             R9 R10
      424 GETUPVAL                         R10 4
      425 JUMPIFNOT                        R10 ; [+8]
      426 GETUPVAL                         R10 3
      427 GETTABLEKS                       R10 R10 K22 ["observer"]
      429 GETTABLEKS                       R10 R10 K36 ["onToolResult"]
      431 GETUPVAL                         R11 4
      432 MOVE                             R12 R9
      433 CALL                             R10 2 0
      434 DUPTABLE                         R10 K40 [{"toolUse", "toolResult", "invocationIndex"}]
      435 SETTABLEKS                       R0 R10 K37 ["toolUse"]
      437 SETTABLEKS                       R9 R10 K38 ["toolResult"]
      439 GETUPVAL                         R11 7
      440 SETTABLEKS                       R11 R10 K39 ["invocationIndex"]
      442 RETURN                           R10 1
      443 DUPTABLE                         R6 K68 [{[1] = "text", ["text"] = "The user rejected the tool call. Please continue without using this tool and ask the user for a different approach, and terminate the conversation."}]
      444 GETUPVAL                         R8 2
      445 GETTABLEKS                       R8 R8 K69 ["FFlagAssistantSplitToolsAndWidgets"]
      447 JUMPIFNOT                        R8 ; [+2]
      448 DUPTABLE                         R7 K71 [{["rejected"] = True}]
      449 JUMP                             ; [+1]
      450 LOADNIL                          R7
      451 DUPTABLE                         R8 K73 [{[1] = "tool_result", ["id"], ["name"], ["content"], ["isError"] = False, ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      452 GETUPVAL                         R9 0
      453 GETTABLEKS                       R9 R9 K2 ["id"]
      455 SETTABLEKS                       R9 R8 K2 ["id"]
      457 GETUPVAL                         R9 0
      458 GETTABLEKS                       R9 R9 K3 ["name"]
      460 SETTABLEKS                       R9 R8 K3 ["name"]
      462 NEWTABLE                         R9 0 1
      464 MOVE                             R10 R6
      465 SETLIST                          R9 R10 1 [1]
      467 SETTABLEKS                       R9 R8 K26 ["content"]
      469 SETTABLEKS                       R7 R8 K65 ["structuredContent"]
      471 SETTABLEKS                       R2 R8 K29 ["startTime"]
      473 SETTABLEKS                       R5 R8 K30 ["startTimeAfterConfirmation"]
      475 GETUPVAL                         R9 4
      476 JUMPIFNOT                        R9 ; [+8]
      477 GETUPVAL                         R9 3
      478 GETTABLEKS                       R9 R9 K22 ["observer"]
      480 GETTABLEKS                       R9 R9 K36 ["onToolResult"]
      482 GETUPVAL                         R10 4
      483 MOVE                             R11 R8
      484 CALL                             R9 2 0
      485 DUPTABLE                         R9 K40 [{"toolUse", "toolResult", "invocationIndex"}]
      486 SETTABLEKS                       R0 R9 K37 ["toolUse"]
      488 SETTABLEKS                       R8 R9 K38 ["toolResult"]
      490 GETUPVAL                         R10 7
      491 SETTABLEKS                       R10 R9 K39 ["invocationIndex"]
      493 RETURN                           R9 1

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
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          REF R4
      100 CAPTURE                          VAL R2
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          UPVAL U0
      103 CAPTURE                          UPVAL U8
      104 GETUPVAL                         R6 9
      105 GETTABLEKS                       R6 R6 K24 ["wrapFunction"]
      107 MOVE                             R7 R5
      108 CALL                             R6 1 1
      109 GETUPVAL                         R8 0
      110 GETTABLEKS                       R8 R8 K6 ["toolCallThreads"]
      112 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      114 MOVE                             R9 R6
      115 GETIMPORT                        R7 K27 [table.insert]
      117 CALL                             R7 2 0
      118 GETUPVAL                         R7 0
      119 LOADK                            R8 K8 [""]
      120 SETTABLEKS                       R8 R7 K28 ["currentText"]
      122 GETUPVAL                         R7 0
      123 LOADK                            R8 K8 [""]
      124 SETTABLEKS                       R8 R7 K29 ["currentSignature"]
      126 GETUPVAL                         R7 0
      127 LOADNIL                          R8
      128 SETTABLEKS                       R8 R7 K0 ["currentTool"]
      130 GETUPVAL                         R7 0
      131 LOADK                            R8 K8 [""]
      132 SETTABLEKS                       R8 R7 K7 ["currentToolInput"]
      134 GETUPVAL                         R7 0
      135 LOADNIL                          R8
      136 SETTABLEKS                       R8 R7 K30 ["currentContentType"]
      138 CLOSEUPVALS                      R4
      139 RETURN                           R0 0

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
       83 JUMPIFNOTEQKS                    R0 K26 ["tool_use"] ; [+216]
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
      294 CAPTURE                          UPVAL U5
      295 CAPTURE                          UPVAL U8
      296 CAPTURE                          UPVAL U9
      297 MOVE                             R7 R6
      298 CALL                             R7 0 0
      299 RETURN                           R0 0
      300 GETUPVAL                         R0 10
      301 GETTABLEKS                       R0 R0 K68 ["assertNever"]
      303 GETUPVAL                         R1 0
      304 GETTABLEKS                       R1 R1 K0 ["stopReason"]
      306 CALL                             R0 1 0
      307 RETURN                           R0 0

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
       84 CAPTURE                          UPVAL U12
       85 NEWCLOSURE                       R9 P3
       86 CAPTURE                          VAL R5
       87 NEWCLOSURE                       R10 P4
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          VAL R0
       92 NEWCLOSURE                       R11 P5
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R0
       95 NEWCLOSURE                       R12 P6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R13 P7
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R0
      101 NEWCLOSURE                       R14 P8
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R10
      106 NEWCLOSURE                       R15 P9
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R7
      110 CAPTURE                          UPVAL U12
      111 CAPTURE                          REF R3
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          UPVAL U13
      114 CAPTURE                          UPVAL U2
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          UPVAL U11
      118 NEWCLOSURE                       R16 P10
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          VAL R5
      121 CAPTURE                          UPVAL U14
      122 CAPTURE                          VAL R0
      123 NEWCLOSURE                       R17 P11
      124 CAPTURE                          REF R3
      125 CAPTURE                          UPVAL U15
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R5
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U14
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R15
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          UPVAL U4
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          VAL R7
      142 CAPTURE                          UPVAL U11
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
      181 SETUPVAL                         R3 5
      182 CLOSEUPVALS                      R3
      183 RETURN                           R3 1

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
      134 DUPCLOSURE                       R17 K29 [PROTO_0]
      135 DUPTABLE                         R18 K34 [{["Started"] = "Started", ["Resolved"] = "Resolved", ["Rejected"] = "Rejected", ["Cancelled"] = "Cancelled"}]
      136 DUPTABLE                         R19 K41 [{["ToolNotFound"] = "tool_not_found", ["ToolCancelled"] = "tool_cancelled", ["ToolError"] = "tool_error"}]
      137 GETTABLEKS                       R20 R4 K42 ["getToolName"]
      139 DUPCLOSURE                       R21 K43 [PROTO_27]
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R8
      154 DUPTABLE                         R22 K45 [{"createProcessEventHandler"}]
      155 SETTABLEKS                       R21 R22 K44 ["createProcessEventHandler"]
      157 RETURN                           R22 1
