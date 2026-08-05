PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["max_tool_calls"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["MaxTurnRequests"]
        5 RETURN                           R1 1
        6 JUMPIFNOTEQKS                    R0 K2 ["token_limit"] ; [+5]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["MaxTokens"]
       11 RETURN                           R1 1
       12 LOADK                            R2 K4 ["_roblox_%*"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K5 ["format"]
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+5]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["Cancelled"]
       10 SETUPVAL                         R0 2
       11 JUMP                             ; [+27]
       12 GETUPVAL                         R0 4
       13 JUMPIFNOT                        R0 ; [+21]
       14 GETUPVAL                         R1 4
       15 JUMPIFNOTEQKS                    R1 K1 ["max_tool_calls"] ; [+5]
       17 GETUPVAL                         R0 3
       18 GETTABLEKS                       R0 R0 K2 ["MaxTurnRequests"]
       20 JUMP                             ; [+12]
       21 JUMPIFNOTEQKS                    R1 K3 ["token_limit"] ; [+5]
       23 GETUPVAL                         R0 3
       24 GETTABLEKS                       R0 R0 K4 ["MaxTokens"]
       26 JUMP                             ; [+6]
       27 LOADK                            R2 K5 ["_roblox_%*"]
       28 MOVE                             R4 R1
       29 NAMECALL                         R2 R2 K6 ["format"]
       31 CALL                             R2 2 1
       32 MOVE                             R0 R2
       33 SETUPVAL                         R0 2
       34 JUMP                             ; [+4]
       35 GETUPVAL                         R0 3
       36 GETTABLEKS                       R0 R0 K7 ["EndTurn"]
       38 SETUPVAL                         R0 2
       39 GETUPVAL                         R0 5
       40 NAMECALL                         R0 R0 K8 ["Fire"]
       42 CALL                             R0 1 0
       43 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETIMPORT                        R1 K2 [task.defer]
        3 GETUPVAL                         R2 0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+4]
        2 MOVE                             R2 R1
        3 LOADK                            R3 K0 ["no tool transport injected"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0
        6 GETIMPORT                        R2 K2 [pcall]
        8 GETUPVAL                         R3 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["name"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["arguments"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K5 ["toolCallOptions"]
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K6 ["toolId"]
       21 CALL                             R2 5 2
       22 JUMPIFNOT                        R2 ; [+4]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R0 0
       27 MOVE                             R4 R1
       28 MOVE                             R5 R3
       29 CALL                             R4 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 1
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["cancelPending"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 0
       14 LOADB                            R0 1
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R0 1
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R0 5
       19 GETTABLEKS                       R0 R0 K1 ["Cancelled"]
       21 SETUPVAL                         R0 4
       22 JUMP                             ; [+27]
       23 GETUPVAL                         R0 6
       24 JUMPIFNOT                        R0 ; [+21]
       25 GETUPVAL                         R1 6
       26 JUMPIFNOTEQKS                    R1 K2 ["max_tool_calls"] ; [+5]
       28 GETUPVAL                         R0 5
       29 GETTABLEKS                       R0 R0 K3 ["MaxTurnRequests"]
       31 JUMP                             ; [+12]
       32 JUMPIFNOTEQKS                    R1 K4 ["token_limit"] ; [+5]
       34 GETUPVAL                         R0 5
       35 GETTABLEKS                       R0 R0 K5 ["MaxTokens"]
       37 JUMP                             ; [+6]
       38 LOADK                            R2 K6 ["_roblox_%*"]
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R2 K7 ["format"]
       42 CALL                             R2 2 1
       43 MOVE                             R0 R2
       44 SETUPVAL                         R0 4
       45 JUMP                             ; [+4]
       46 GETUPVAL                         R0 5
       47 GETTABLEKS                       R0 R0 K8 ["EndTurn"]
       49 SETUPVAL                         R0 4
       50 GETUPVAL                         R0 7
       51 NAMECALL                         R0 R0 K9 ["Fire"]
       53 CALL                             R0 1 0
       54 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 LOADB                            R2 0
        5 LOADB                            R3 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["EndTurn"]
        9 LOADNIL                          R5
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          REF R2
       12 CAPTURE                          REF R3
       13 CAPTURE                          REF R4
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          REF R5
       16 CAPTURE                          VAL R1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K2 ["create"]
       20 DUPTABLE                         R8 K5 [{"sendUpdate", "getToolCallOptions"}]
       21 GETTABLEKS                       R9 R0 K3 ["sendUpdate"]
       23 SETTABLEKS                       R9 R8 K3 ["sendUpdate"]
       25 GETTABLEKS                       R9 R0 K4 ["getToolCallOptions"]
       27 SETTABLEKS                       R9 R8 K4 ["getToolCallOptions"]
       29 CALL                             R7 1 1
       30 GETTABLEKS                       R8 R0 K6 ["tools"]
       32 JUMPIF                           R8 ; [+2]
       33 NEWTABLE                         R8 0 0
       35 GETTABLEKS                       R10 R0 K8 ["systemMessage"]
       37 ORK                              R9 R10 K7 [""]
       38 GETTABLEKS                       R10 R0 K9 ["messageGuid"]
       40 JUMPIF                           R10 ; [+5]
       41 GETUPVAL                         R10 3
       42 LOADB                            R12 0
       43 NAMECALL                         R10 R10 K10 ["GenerateGUID"]
       45 CALL                             R10 2 1
       46 GETTABLEKS                       R11 R0 K11 ["callTool"]
       48 GETUPVAL                         R12 4
       49 GETTABLEKS                       R12 R12 K12 ["inPlace"]
       51 GETTABLEKS                       R13 R0 K13 ["messages"]
       53 CALL                             R12 1 0
       54 LOADNIL                          R12
       55 GETTABLEKS                       R13 R0 K13 ["messages"]
       57 GETUPVAL                         R14 5
       58 GETTABLEKS                       R14 R14 K14 ["get"]
       60 GETTABLEKS                       R15 R0 K15 ["sessionId"]
       62 CALL                             R14 1 1
       63 JUMPIFNOT                        R14 ; [+42]
       64 GETTABLEKS                       R15 R14 K16 ["summary"]
       66 JUMPIFNOT                        R15 ; [+39]
       67 GETTABLEKS                       R15 R14 K17 ["compactedUIMessageCount"]
       69 LOADN                            R16 0
       70 JUMPIFNOTLT                      R16 R15 ; [+35]
       72 NEWTABLE                         R15 0 1
       74 GETTABLEKS                       R17 R0 K13 ["messages"]
       76 GETTABLEKS                       R19 R14 K17 ["compactedUIMessageCount"]
       78 ADDK                             R18 R19 K18 [1]
       79 FASTCALL2                        TABLE_UNPACK R17 R18 ; [+3]
       81 GETIMPORT                        R16 K21 [table.unpack]
       83 CALL                             R16 2 -1
       84 SETLIST                          R15 R16 -1 [1]
       86 GETUPVAL                         R16 6
       87 GETTABLEKS                       R16 R16 K22 ["reconstructFromStore"]
       89 MOVE                             R17 R15
       90 MOVE                             R18 R14
       91 DUPTABLE                         R19 K25 [{"threadId", "selectedModel"}]
       92 GETTABLEKS                       R20 R0 K15 ["sessionId"]
       94 SETTABLEKS                       R20 R19 K23 ["threadId"]
       96 GETTABLEKS                       R20 R0 K24 ["selectedModel"]
       98 SETTABLEKS                       R20 R19 K24 ["selectedModel"]
      100 CALL                             R16 3 1
      101 JUMPIFNOT                        R16 ; [+4]
      102 GETTABLEKS                       R12 R16 K26 ["compactedStore"]
      104 GETTABLEKS                       R13 R16 K13 ["messages"]
      106 JUMPIF                           R12 ; [+72]
      107 GETUPVAL                         R15 6
      108 GETTABLEKS                       R15 R15 K27 ["shouldCompact"]
      110 GETTABLEKS                       R16 R0 K13 ["messages"]
      112 DUPTABLE                         R17 K30 [{["isSubagent"] = False, ["selectedModel"]}]
      113 GETTABLEKS                       R18 R0 K24 ["selectedModel"]
      115 SETTABLEKS                       R18 R17 K24 ["selectedModel"]
      117 CALL                             R15 2 1
      118 JUMPIFNOT                        R15 ; [+60]
      119 GETTABLEKS                       R15 R0 K3 ["sendUpdate"]
      121 DUPTABLE                         R16 K34 [{["sessionUpdate"], ["status"] = "in_progress"}]
      122 GETUPVAL                         R17 7
      123 GETTABLEKS                       R17 R17 K35 ["SessionUpdateKind"]
      125 GETTABLEKS                       R17 R17 K36 ["CompactionStatus"]
      127 SETTABLEKS                       R17 R16 K31 ["sessionUpdate"]
      129 CALL                             R15 1 0
      130 GETUPVAL                         R15 6
      131 GETTABLEKS                       R15 R15 K37 ["compact"]
      133 GETTABLEKS                       R16 R0 K13 ["messages"]
      135 DUPTABLE                         R17 K42 [{"requestLLM", "threadId", "compactedStore", "selectedModel", "selectedProvider", "apiKeys", "uiMessageCount"}]
      136 GETTABLEKS                       R18 R0 K38 ["requestLLM"]
      138 SETTABLEKS                       R18 R17 K38 ["requestLLM"]
      140 GETTABLEKS                       R18 R0 K15 ["sessionId"]
      142 SETTABLEKS                       R18 R17 K23 ["threadId"]
      144 SETTABLEKS                       R14 R17 K26 ["compactedStore"]
      146 GETTABLEKS                       R18 R0 K24 ["selectedModel"]
      148 SETTABLEKS                       R18 R17 K24 ["selectedModel"]
      150 GETTABLEKS                       R18 R0 K39 ["selectedProvider"]
      152 SETTABLEKS                       R18 R17 K39 ["selectedProvider"]
      154 GETTABLEKS                       R18 R0 K40 ["apiKeys"]
      156 SETTABLEKS                       R18 R17 K40 ["apiKeys"]
      158 GETTABLEKS                       R19 R0 K13 ["messages"]
      160 LENGTH                           R18 R19
      161 SETTABLEKS                       R18 R17 K41 ["uiMessageCount"]
      163 CALL                             R15 2 1
      164 GETTABLEKS                       R12 R15 K26 ["compactedStore"]
      166 GETTABLEKS                       R13 R15 K13 ["messages"]
      168 GETTABLEKS                       R16 R0 K3 ["sendUpdate"]
      170 DUPTABLE                         R17 K44 [{["sessionUpdate"], ["status"] = "complete"}]
      171 GETUPVAL                         R18 7
      172 GETTABLEKS                       R18 R18 K35 ["SessionUpdateKind"]
      174 GETTABLEKS                       R18 R18 K36 ["CompactionStatus"]
      176 SETTABLEKS                       R18 R17 K31 ["sessionUpdate"]
      178 CALL                             R16 1 0
      179 DUPTABLE                         R15 K58 [{"showError", "requestLLM", "setInputEnabled", "onToolCall", "observer", "setModelQuality", "onPacketReceived", "maxToolCalls", "timeoutMs", "messageGuid", "conversationSessionId", "threadId", "systemMessage", "initialMessages", "requestStartTime", "tools", "apiKeys", "selectedModel", "selectedProvider", "compactedStore", "uiMessageCount", "messageId", "logRequestStop"}]
      180 NEWCLOSURE                       R16 P1
      181 CAPTURE                          REF R5
      182 SETTABLEKS                       R16 R15 K45 ["showError"]
      184 GETTABLEKS                       R16 R0 K38 ["requestLLM"]
      186 SETTABLEKS                       R16 R15 K38 ["requestLLM"]
      188 NEWCLOSURE                       R16 P2
      189 CAPTURE                          VAL R6
      190 SETTABLEKS                       R16 R15 K46 ["setInputEnabled"]
      192 NEWCLOSURE                       R16 P3
      193 CAPTURE                          UPVAL U8
      194 CAPTURE                          VAL R11
      195 SETTABLEKS                       R16 R15 K47 ["onToolCall"]
      197 SETTABLEKS                       R7 R15 K48 ["observer"]
      199 DUPCLOSURE                       R16 K59 [PROTO_6]
      200 SETTABLEKS                       R16 R15 K49 ["setModelQuality"]
      202 DUPCLOSURE                       R16 K60 [PROTO_7]
      203 SETTABLEKS                       R16 R15 K50 ["onPacketReceived"]
      205 GETTABLEKS                       R17 R0 K51 ["maxToolCalls"]
      207 ORK                              R16 R17 K61 [0]
      208 SETTABLEKS                       R16 R15 K51 ["maxToolCalls"]
      210 GETTABLEKS                       R17 R0 K52 ["timeoutMs"]
      212 ORK                              R16 R17 K62 [120000]
      213 SETTABLEKS                       R16 R15 K52 ["timeoutMs"]
      215 SETTABLEKS                       R10 R15 K9 ["messageGuid"]
      217 GETTABLEKS                       R16 R0 K15 ["sessionId"]
      219 SETTABLEKS                       R16 R15 K53 ["conversationSessionId"]
      221 GETTABLEKS                       R16 R0 K15 ["sessionId"]
      223 SETTABLEKS                       R16 R15 K23 ["threadId"]
      225 SETTABLEKS                       R9 R15 K8 ["systemMessage"]
      227 SETTABLEKS                       R13 R15 K54 ["initialMessages"]
      229 GETIMPORT                        R16 K65 [os.clock]
      231 CALL                             R16 0 1
      232 SETTABLEKS                       R16 R15 K55 ["requestStartTime"]
      234 SETTABLEKS                       R8 R15 K6 ["tools"]
      236 GETTABLEKS                       R16 R0 K40 ["apiKeys"]
      238 SETTABLEKS                       R16 R15 K40 ["apiKeys"]
      240 GETTABLEKS                       R16 R0 K24 ["selectedModel"]
      242 SETTABLEKS                       R16 R15 K24 ["selectedModel"]
      244 GETTABLEKS                       R16 R0 K39 ["selectedProvider"]
      246 SETTABLEKS                       R16 R15 K39 ["selectedProvider"]
      248 SETTABLEKS                       R12 R15 K26 ["compactedStore"]
      250 GETTABLEKS                       R17 R0 K13 ["messages"]
      252 LENGTH                           R16 R17
      253 SETTABLEKS                       R16 R15 K41 ["uiMessageCount"]
      255 GETUPVAL                         R16 3
      256 LOADB                            R18 0
      257 NAMECALL                         R16 R16 K10 ["GenerateGUID"]
      259 CALL                             R16 2 1
      260 SETTABLEKS                       R16 R15 K56 ["messageId"]
      262 DUPCLOSURE                       R16 K66 [PROTO_8]
      263 SETTABLEKS                       R16 R15 K57 ["logRequestStop"]
      265 GETUPVAL                         R16 9
      266 GETTABLEKS                       R16 R16 K67 ["LLMProcessEvent"]
      268 GETTABLEKS                       R16 R16 K68 ["createProcessEventHandler"]
      270 CALL                             R16 0 3
      271 MOVE                             R19 R17
      272 MOVE                             R20 R15
      273 CALL                             R19 1 1
      274 GETTABLEKS                       R20 R0 K69 ["registerCancel"]
      276 JUMPIFNOT                        R20 ; [+12]
      277 GETTABLEKS                       R20 R0 K69 ["registerCancel"]
      279 NEWCLOSURE                       R21 P7
      280 CAPTURE                          REF R2
      281 CAPTURE                          REF R3
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R18
      284 CAPTURE                          REF R4
      285 CAPTURE                          UPVAL U1
      286 CAPTURE                          REF R5
      287 CAPTURE                          VAL R1
      288 CALL                             R20 1 0
      289 DUPTABLE                         R20 K74 [{["threadId"], ["messageGuid"], ["system"], ["messages"], ["tools"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["apiKeys"], ["selectedModel"], ["selectedProvider"]}]
      290 GETTABLEKS                       R21 R0 K15 ["sessionId"]
      292 SETTABLEKS                       R21 R20 K23 ["threadId"]
      294 SETTABLEKS                       R10 R20 K9 ["messageGuid"]
      296 SETTABLEKS                       R9 R20 K70 ["system"]
      298 SETTABLEKS                       R13 R20 K13 ["messages"]
      300 SETTABLEKS                       R8 R20 K6 ["tools"]
      302 GETTABLEKS                       R21 R0 K40 ["apiKeys"]
      304 SETTABLEKS                       R21 R20 K40 ["apiKeys"]
      306 GETTABLEKS                       R21 R0 K24 ["selectedModel"]
      308 SETTABLEKS                       R21 R20 K24 ["selectedModel"]
      310 GETTABLEKS                       R21 R0 K39 ["selectedProvider"]
      312 SETTABLEKS                       R21 R20 K39 ["selectedProvider"]
      314 LENGTH                           R21 R13
      315 GETTABLEKS                       R22 R0 K38 ["requestLLM"]
      317 MOVE                             R23 R20
      318 GETTABLEKS                       R24 R19 K75 ["processEvent"]
      320 CALL                             R22 2 0
      321 JUMPIF                           R2 ; [+3]
      322 NAMECALL                         R22 R1 K76 ["Wait"]
      324 CALL                             R22 1 0
      325 MOVE                             R22 R18
      326 CALL                             R22 0 0
      327 GETTABLEKS                       R22 R19 K77 ["state"]
      329 GETTABLEKS                       R22 R22 K13 ["messages"]
      331 JUMPIFNOTEQ                      R22 R13 ; [+2]
      333 LOADB                            R23 0 +1
      334 LOADB                            R23 1
      335 GETTABLEKS                       R24 R0 K13 ["messages"]
      337 JUMPIFEQ                         R13 R24 ; [+29]
      339 ADDK                             R26 R21 K18 [1]
      340 LENGTH                           R24 R13
      341 LOADN                            R25 1
      342 FORNPREP                         R24
      343 GETTABLEKS                       R28 R0 K13 ["messages"]
      345 GETTABLE                         R29 R13 R26
      346 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      348 GETIMPORT                        R27 K79 [table.insert]
      350 CALL                             R27 2 0
      351 FORNLOOP                         R24
      352 JUMPIFNOT                        R23 ; [+28]
      353 LOADN                            R26 2
      354 LENGTH                           R24 R22
      355 LOADN                            R25 1
      356 FORNPREP                         R24
      357 GETTABLEKS                       R28 R0 K13 ["messages"]
      359 GETTABLE                         R29 R22 R26
      360 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      362 GETIMPORT                        R27 K79 [table.insert]
      364 CALL                             R27 2 0
      365 FORNLOOP                         R24
      366 JUMP                             ; [+14]
      367 JUMPIFNOT                        R23 ; [+13]
      368 LOADN                            R26 2
      369 LENGTH                           R24 R22
      370 LOADN                            R25 1
      371 FORNPREP                         R24
      372 GETTABLEKS                       R28 R0 K13 ["messages"]
      374 GETTABLE                         R29 R22 R26
      375 FASTCALL2                        TABLE_INSERT R28 R29 ; [+3]
      377 GETIMPORT                        R27 K79 [table.insert]
      379 CALL                             R27 2 0
      380 FORNLOOP                         R24
      381 CLOSEUPVALS                      R2
      382 RETURN                           R4 1

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
       17 GETTABLEKS                       R3 R3 K11 ["Compaction"]
       19 GETTABLEKS                       R3 R3 K12 ["CompactedStore"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Engine"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETIMPORT                        R5 K1 [script]
       31 GETTABLEKS                       R5 R5 K13 ["Parent"]
       33 GETTABLEKS                       R5 R5 K14 ["HarnessObserver"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Parent"]
       40 GETTABLEKS                       R6 R6 K15 ["Promise"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Parent"]
       47 GETTABLEKS                       R7 R7 K16 ["Signal"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K13 ["Parent"]
       54 GETTABLEKS                       R8 R8 K17 ["AgentClientProtocol"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Engine"]
       61 GETTABLEKS                       R9 R9 K11 ["Compaction"]
       63 GETTABLEKS                       R9 R9 K18 ["compactThread"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETIMPORT                        R10 K1 [script]
       70 GETTABLEKS                       R10 R10 K13 ["Parent"]
       72 GETTABLEKS                       R10 R10 K19 ["sanitizeMessages"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Engine"]
       79 GETTABLEKS                       R11 R11 K20 ["StreamTypes"]
       81 CALL                             R10 1 1
       82 GETTABLEKS                       R11 R7 K21 ["StopReason"]
       84 DUPCLOSURE                       R12 K22 [PROTO_0]
       85 CAPTURE                          VAL R11
       86 DUPCLOSURE                       R13 K23 [PROTO_10]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R3
       97 DUPTABLE                         R14 K26 [{"run", "mapErrorToStopReason"}]
       98 SETTABLEKS                       R13 R14 K24 ["run"]
      100 SETTABLEKS                       R12 R14 K25 ["mapErrorToStopReason"]
      102 RETURN                           R14 1
