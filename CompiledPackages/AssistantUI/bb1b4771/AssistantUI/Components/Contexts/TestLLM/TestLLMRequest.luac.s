PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 GETIMPORT                        R2 K4 [string.lower]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADK                            R3 K5 ["^https?://([^/%?#]+)"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETIMPORT                        R2 K2 [string.match]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K6 ["^([^:]+)"]
       15 CALL                             R2 2 1
       16 JUMPIF                           R2 ; [+2]
       17 LOADB                            R3 0
       18 RETURN                           R3 1
       19 LOADB                            R3 1
       20 JUMPIFEQKS                       R2 K7 ["fireworks.ai"] ; [+10]
       22 GETIMPORT                        R4 K2 [string.match]
       24 MOVE                             R5 R2
       25 LOADK                            R6 K8 ["%.fireworks%.ai$"]
       26 CALL                             R4 2 1
       27 JUMPIFNOTEQKNIL                  R4 ; [+2]
       29 LOADB                            R3 0 +1
       30 LOADB                            R3 1
       31 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 NEWTABLE                         R1 0 0
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K0 ["function"]
       11 JUMPIFNOT                        R7 ; [+8]
       12 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R6
       16 GETIMPORT                        R7 K3 [table.insert]
       18 CALL                             R7 2 0
       19 JUMP                             ; [+26]
       20 NEWTABLE                         R9 2 0
       22 LOADK                            R10 K0 ["function"]
       23 SETTABLEKS                       R10 R9 K4 ["type"]
       25 DUPTABLE                         R10 K8 [{"name", "description", "parameters"}]
       26 GETTABLEKS                       R11 R6 K5 ["name"]
       28 SETTABLEKS                       R11 R10 K5 ["name"]
       30 GETTABLEKS                       R11 R6 K6 ["description"]
       32 SETTABLEKS                       R11 R10 K6 ["description"]
       34 GETTABLEKS                       R11 R6 K7 ["parameters"]
       36 SETTABLEKS                       R11 R10 K7 ["parameters"]
       38 SETTABLEKS                       R10 R9 K0 ["function"]
       40 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K3 [table.insert]
       45 CALL                             R7 2 0
       46 FORGLOOP                         R2 2 ; [-38]
       48 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["data"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["--- TestLLMRequest event: %* %* %*"]
        7 GETTABLEKS                       R5 R0 K4 ["id"]
        9 GETTABLEKS                       R6 R0 K5 ["event"]
       11 GETTABLEKS                       R7 R0 K6 ["data"]
       13 NAMECALL                         R3 R3 K7 ["format"]
       15 CALL                             R3 4 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K9 [pcall]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CALL                             R1 1 2
       24 JUMPIFNOT                        R1 ; [+14]
       25 JUMPIFNOT                        R2 ; [+13]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R4 R0 K6 ["data"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R3
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 GETUPVAL                         R9 3
       35 MOVE                             R10 R8
       36 CALL                             R9 1 0
       37 FORGLOOP                         R4 2 ; [-4]
       39 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K0 ["value"]
        5 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        7 GETIMPORT                        R1 K3 [warn]
        9 GETTABLEKS                       R2 R0 K0 ["value"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R1 ; [+12]
       16 GETIMPORT                        R1 K3 [warn]
       18 LOADK                            R3 K5 ["--- TestLLMRequest error: %* (%*)"]
       19 GETTABLEKS                       R5 R0 K6 ["message"]
       21 GETTABLEKS                       R6 R0 K7 ["type"]
       23 NAMECALL                         R3 R3 K8 ["format"]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["--- TestLLMRequest comment: %*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+46]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R4 K3 ["WebStreamClient opened with error code: %*"]
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K4 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 JUMPIFNOTEQKN                    R0 K5 [401] ; [+3]
       14 LOADK                            R2 K6 ["external_connection_unauthorized_error"]
       15 JUMP                             ; [+5]
       16 JUMPIFNOTEQKN                    R0 K7 [429] ; [+3]
       18 LOADK                            R2 K8 ["external_connection_quota_exceeded_error"]
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K9 ["external_connection_general_error"]
       21 JUMPIFNOT                        R2 ; [+25]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K10 ["FFlagDebugLogAssistantUI"]
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETIMPORT                        R3 K2 [warn]
       28 LOADK                            R5 K11 ["TestLLMRequest failed: model=%*, statusCode=%*"]
       29 GETUPVAL                         R7 1
       30 MOVE                             R8 R0
       31 NAMECALL                         R5 R5 K4 ["format"]
       33 CALL                             R5 3 1
       34 MOVE                             R4 R5
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 2
       37 DUPTABLE                         R4 K14 [{["type"] = "error", ["error"]}]
       38 SETTABLEKS                       R2 R4 K13 ["error"]
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 3
       42 JUMPIFNOT                        R3 ; [+4]
       43 GETUPVAL                         R3 3
       44 NAMECALL                         R3 R3 K15 ["Close"]
       46 CALL                             R3 1 0
       47 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["--- TestLLMRequest WebStreamClient closed"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+10]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K4 ["Connected"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 1
       15 NAMECALL                         R0 R0 K5 ["Disconnect"]
       17 CALL                             R0 1 0
       18 LOADNIL                          R0
       19 SETUPVAL                         R0 1
       20 GETUPVAL                         R0 2
       21 JUMPIFNOT                        R0 ; [+10]
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K4 ["Connected"]
       25 JUMPIFNOT                        R0 ; [+6]
       26 GETUPVAL                         R0 2
       27 NAMECALL                         R0 R0 K5 ["Disconnect"]
       29 CALL                             R0 1 0
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 2
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 3
       34 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantTestLLMThinkingEnabled"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["FFlagAssistantTestLLMPreserveThinking"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["convertLLMtoOpenAIMessage"]
        9 GETTABLEKS                       R5 R0 K3 ["messages"]
       11 MOVE                             R6 R3
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R5 R0 K4 ["system"]
       15 JUMPIFNOT                        R5 ; [+12]
       16 LOADN                            R7 1
       17 DUPTABLE                         R8 K7 [{["role"] = "system", ["content"]}]
       18 GETTABLEKS                       R9 R0 K4 ["system"]
       20 SETTABLEKS                       R9 R8 K6 ["content"]
       22 FASTCALL3                        TABLE_INSERT R4 R7 R8
       24 MOVE                             R6 R4
       25 GETIMPORT                        R5 K10 [table.insert]
       27 CALL                             R5 3 0
       28 GETTABLEKS                       R6 R0 K11 ["isSubagent"]
       30 JUMPIFNOT                        R6 ; [+4]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K12 ["FStringTestSubagentURLOverride"]
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K13 ["FStringTestLLMURLOverride"]
       38 LOADK                            R6 K14 ["/mnt/models"]
       39 GETTABLEKS                       R7 R0 K15 ["selectedModel"]
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETTABLEKS                       R7 R0 K15 ["selectedModel"]
       44 JUMPIFEQKS                       R7 K16 [""] ; [+3]
       46 GETTABLEKS                       R6 R0 K15 ["selectedModel"]
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K17 ["FStringMCPAssistantCustomModelName"]
       51 JUMPIFEQKS                       R7 K16 [""] ; [+2]
       53 MOVE                             R6 R7
       54 JUMPIFEQKS                       R5 K16 [""] ; [+3]
       56 MOVE                             R8 R5
       57 JUMP                             ; [+1]
       58 LOADK                            R8 K18 ["https://ai-inference-use1-sticky.prod.ml.rbx.com/kubeflow-creator-code/glm47-flash-search-rl/v1/chat/completions"]
       59 GETUPVAL                         R9 2
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K19 ["FStringAssistantTestLLMReasoningEffort"]
       65 DUPTABLE                         R11 K33 [{["model"], ["messages"], ["tools"], ["tool_choice"] = "auto", ["stream"] = True, ["parallel_tool_calls"] = False, ["max_tokens"] = 16000, ["stream_options"], ["chat_template_kwargs"], ["reasoning_effort"]}]
       66 SETTABLEKS                       R6 R11 K20 ["model"]
       68 SETTABLEKS                       R4 R11 K3 ["messages"]
       70 GETUPVAL                         R12 3
       71 GETTABLEKS                       R13 R0 K21 ["tools"]
       73 CALL                             R12 1 1
       74 SETTABLEKS                       R12 R11 K21 ["tools"]
       76 DUPTABLE                         R12 K35 [{["include_usage"] = True}]
       77 SETTABLEKS                       R12 R11 K30 ["stream_options"]
       79 JUMPIFNOT                        R9 ; [+2]
       80 LOADNIL                          R12
       81 JUMP                             ; [+13]
       82 DUPTABLE                         R12 K41 [{"enable_thinking", "thinking", "clear_thinking", "preserve_thinking", "drop_thinking"}]
       83 SETTABLEKS                       R2 R12 K36 ["enable_thinking"]
       85 SETTABLEKS                       R2 R12 K37 ["thinking"]
       87 NOT                              R13 R3
       88 SETTABLEKS                       R13 R12 K38 ["clear_thinking"]
       90 SETTABLEKS                       R3 R12 K39 ["preserve_thinking"]
       92 NOT                              R13 R3
       93 SETTABLEKS                       R13 R12 K40 ["drop_thinking"]
       95 SETTABLEKS                       R12 R11 K31 ["chat_template_kwargs"]
       97 JUMPIFEQKS                       R10 K16 [""] ; [+3]
       99 MOVE                             R12 R10
      100 JUMP                             ; [+1]
      101 LOADNIL                          R12
      102 SETTABLEKS                       R12 R11 K32 ["reasoning_effort"]
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R12 R12 K42 ["FFlagDebugLogAssistantUI"]
      107 JUMPIFNOT                        R12 ; [+15]
      108 GETIMPORT                        R12 K44 [print]
      110 LOADK                            R14 K45 ["--- TestLLMRequest requestBody: %*"]
      111 GETUPVAL                         R16 4
      112 GETTABLEKS                       R16 R16 K46 ["Json"]
      114 GETTABLEKS                       R16 R16 K47 ["encode"]
      116 MOVE                             R17 R11
      117 CALL                             R16 1 1
      118 NAMECALL                         R14 R14 K48 ["format"]
      120 CALL                             R14 2 1
      121 MOVE                             R13 R14
      122 CALL                             R12 1 0
      123 GETTABLEKS                       R13 R0 K49 ["apiKeys"]
      125 JUMPIFNOT                        R13 ; [+14]
      126 GETTABLEKS                       R14 R0 K49 ["apiKeys"]
      128 GETUPVAL                         R15 5
      129 GETTABLEKS                       R15 R15 K50 ["OPENAI_API_KEY"]
      131 GETTABLE                         R13 R14 R15
      132 JUMPIFNOT                        R13 ; [+7]
      133 GETTABLEKS                       R13 R0 K49 ["apiKeys"]
      135 GETUPVAL                         R14 5
      136 GETTABLEKS                       R14 R14 K50 ["OPENAI_API_KEY"]
      138 GETTABLE                         R12 R13 R14
      139 JUMP                             ; [+3]
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K51 ["FStringMCPAssistantTestLLMAPIKey"]
      143 LOADNIL                          R13
      144 NEWTABLE                         R14 1 0
      146 LOADK                            R15 K52 ["application/json"]
      147 SETTABLEKS                       R15 R14 K53 ["content-type"]
      149 MOVE                             R13 R14
      150 JUMPIFEQKS                       R12 K16 [""] ; [+9]
      152 LOADK                            R15 K54 ["Bearer %*"]
      153 MOVE                             R17 R12
      154 NAMECALL                         R15 R15 K48 ["format"]
      156 CALL                             R15 2 1
      157 MOVE                             R14 R15
      158 SETTABLEKS                       R14 R13 K55 ["authorization"]
      160 GETUPVAL                         R14 0
      161 GETTABLEKS                       R14 R14 K42 ["FFlagDebugLogAssistantUI"]
      163 JUMPIFNOT                        R14 ; [+9]
      164 GETIMPORT                        R14 K44 [print]
      166 LOADK                            R16 K56 ["--- TestLLMRequest sending request to: %*"]
      167 MOVE                             R18 R8
      168 NAMECALL                         R16 R16 K48 ["format"]
      170 CALL                             R16 2 1
      171 MOVE                             R15 R16
      172 CALL                             R14 1 0
      173 GETUPVAL                         R14 4
      174 GETTABLEKS                       R14 R14 K46 ["Json"]
      176 GETTABLEKS                       R14 R14 K47 ["encode"]
      178 MOVE                             R15 R11
      179 CALL                             R14 1 1
      180 GETUPVAL                         R15 6
      181 GETTABLEKS                       R15 R15 K57 ["get"]
      183 CALL                             R15 0 1
      184 GETTABLEKS                       R16 R15 K58 ["http"]
      186 GETTABLEKS                       R16 R16 K59 ["createWebStreamClient"]
      188 GETIMPORT                        R17 K63 [Enum.WebStreamClientType.RawStream]
      190 DUPTABLE                         R18 K69 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      191 SETTABLEKS                       R8 R18 K66 ["Url"]
      193 SETTABLEKS                       R13 R18 K67 ["Headers"]
      195 SETTABLEKS                       R14 R18 K68 ["Body"]
      197 CALL                             R16 2 1
      198 FASTCALL2K                       ASSERT R16 K70 ; [+5]
      200 MOVE                             R18 R16
      201 LOADK                            R19 K70 ["WebStreamClient should not be nil"]
      202 GETIMPORT                        R17 K72 [assert]
      204 CALL                             R17 2 0
      205 GETUPVAL                         R17 7
      206 GETTABLEKS                       R17 R17 K73 ["createParser"]
      208 DUPTABLE                         R18 K77 [{"onEvent", "onError", "onComment"}]
      209 NEWCLOSURE                       R19 P0
      210 CAPTURE                          UPVAL U0
      211 CAPTURE                          UPVAL U4
      212 CAPTURE                          UPVAL U8
      213 CAPTURE                          VAL R1
      214 SETTABLEKS                       R19 R18 K74 ["onEvent"]
      216 DUPCLOSURE                       R19 K78 [PROTO_4]
      217 CAPTURE                          UPVAL U0
      218 SETTABLEKS                       R19 R18 K75 ["onError"]
      220 DUPCLOSURE                       R19 K79 [PROTO_5]
      221 CAPTURE                          UPVAL U0
      222 SETTABLEKS                       R19 R18 K76 ["onComment"]
      224 CALL                             R17 1 1
      225 GETTABLEKS                       R18 R16 K80 ["MessageReceived"]
      227 GETTABLEKS                       R20 R17 K81 ["parseNextChunk"]
      229 NAMECALL                         R18 R18 K82 ["Connect"]
      231 CALL                             R18 2 1
      232 GETTABLEKS                       R19 R16 K83 ["Opened"]
      234 NEWCLOSURE                       R21 P3
      235 CAPTURE                          UPVAL U0
      236 CAPTURE                          REF R6
      237 CAPTURE                          VAL R1
      238 CAPTURE                          REF R16
      239 NAMECALL                         R19 R19 K82 ["Connect"]
      241 CALL                             R19 2 1
      242 GETTABLEKS                       R20 R16 K84 ["Closed"]
      244 NEWCLOSURE                       R22 P4
      245 CAPTURE                          UPVAL U0
      246 CAPTURE                          REF R18
      247 CAPTURE                          REF R19
      248 CAPTURE                          REF R16
      249 NAMECALL                         R20 R20 K85 ["Once"]
      251 CALL                             R20 2 0
      252 CLOSEUPVALS                      R6
      253 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["TestLLM"]
       36 GETTABLEKS                       R5 R5 K14 ["TestLLMAdapter"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Types"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K17 ["EventStreamParser"]
       51 GETTABLEKS                       R8 R4 K18 ["createAdapter"]
       53 CALL                             R8 0 1
       54 DUPCLOSURE                       R9 K19 [PROTO_0]
       55 DUPCLOSURE                       R10 K20 [PROTO_1]
       56 DUPCLOSURE                       R11 K21 [PROTO_8]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R8
       66 DUPTABLE                         R12 K25 [{["requestHandler"], ["createRequestHandler"] = }]
       67 SETTABLEKS                       R11 R12 K22 ["requestHandler"]
       69 RETURN                           R12 1
