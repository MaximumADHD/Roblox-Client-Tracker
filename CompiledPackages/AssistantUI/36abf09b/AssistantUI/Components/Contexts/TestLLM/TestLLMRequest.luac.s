PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["data"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
       54 DUPTABLE                         R8 K30 [{["model"], ["messages"], ["tools"], ["tool_choice"] = "auto", ["stream"] = True, ["parallel_tool_calls"] = False, ["max_tokens"] = 16000, ["stream_options"], ["chat_template_kwargs"]}]
       55 SETTABLEKS                       R6 R8 K18 ["model"]
       57 SETTABLEKS                       R4 R8 K3 ["messages"]
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R10 R0 K19 ["tools"]
       62 CALL                             R9 1 1
       63 SETTABLEKS                       R9 R8 K19 ["tools"]
       65 DUPTABLE                         R9 K32 [{["include_usage"] = True}]
       66 SETTABLEKS                       R9 R8 K28 ["stream_options"]
       68 DUPTABLE                         R9 K36 [{"enable_thinking", "clear_thinking", "preserve_thinking"}]
       69 SETTABLEKS                       R2 R9 K33 ["enable_thinking"]
       71 NOT                              R10 R3
       72 SETTABLEKS                       R10 R9 K34 ["clear_thinking"]
       74 SETTABLEKS                       R3 R9 K35 ["preserve_thinking"]
       76 SETTABLEKS                       R9 R8 K29 ["chat_template_kwargs"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R9 R9 K37 ["FFlagDebugLogAssistantUI"]
       81 JUMPIFNOT                        R9 ; [+15]
       82 GETIMPORT                        R9 K39 [print]
       84 LOADK                            R11 K40 ["--- TestLLMRequest requestBody: %*"]
       85 GETUPVAL                         R13 3
       86 GETTABLEKS                       R13 R13 K41 ["Json"]
       88 GETTABLEKS                       R13 R13 K42 ["encode"]
       90 MOVE                             R14 R8
       91 CALL                             R13 1 1
       92 NAMECALL                         R11 R11 K43 ["format"]
       94 CALL                             R11 2 1
       95 MOVE                             R10 R11
       96 CALL                             R9 1 0
       97 GETTABLEKS                       R10 R0 K44 ["apiKeys"]
       99 JUMPIFNOT                        R10 ; [+14]
      100 GETTABLEKS                       R11 R0 K44 ["apiKeys"]
      102 GETUPVAL                         R12 4
      103 GETTABLEKS                       R12 R12 K45 ["OPENAI_API_KEY"]
      105 GETTABLE                         R10 R11 R12
      106 JUMPIFNOT                        R10 ; [+7]
      107 GETTABLEKS                       R10 R0 K44 ["apiKeys"]
      109 GETUPVAL                         R11 4
      110 GETTABLEKS                       R11 R11 K45 ["OPENAI_API_KEY"]
      112 GETTABLE                         R9 R10 R11
      113 JUMP                             ; [+3]
      114 GETUPVAL                         R9 0
      115 GETTABLEKS                       R9 R9 K46 ["FStringMCPAssistantTestLLMAPIKey"]
      117 LOADNIL                          R10
      118 LOADNIL                          R11
      119 JUMPIFEQKS                       R5 K16 [""] ; [+3]
      121 MOVE                             R10 R5
      122 JUMP                             ; [+1]
      123 LOADK                            R10 K47 ["https://ai-inference-use1-sticky.prod.ml.rbx.com/kubeflow-creator-code/glm47-flash-search-rl/v1/chat/completions"]
      124 NEWTABLE                         R12 1 0
      126 LOADK                            R13 K48 ["application/json"]
      127 SETTABLEKS                       R13 R12 K49 ["content-type"]
      129 MOVE                             R11 R12
      130 JUMPIFEQKS                       R9 K16 [""] ; [+9]
      132 LOADK                            R13 K50 ["Bearer %*"]
      133 MOVE                             R15 R9
      134 NAMECALL                         R13 R13 K43 ["format"]
      136 CALL                             R13 2 1
      137 MOVE                             R12 R13
      138 SETTABLEKS                       R12 R11 K51 ["authorization"]
      140 GETUPVAL                         R12 0
      141 GETTABLEKS                       R12 R12 K37 ["FFlagDebugLogAssistantUI"]
      143 JUMPIFNOT                        R12 ; [+9]
      144 GETIMPORT                        R12 K39 [print]
      146 LOADK                            R14 K52 ["--- TestLLMRequest sending request to: %*"]
      147 MOVE                             R16 R10
      148 NAMECALL                         R14 R14 K43 ["format"]
      150 CALL                             R14 2 1
      151 MOVE                             R13 R14
      152 CALL                             R12 1 0
      153 GETUPVAL                         R12 3
      154 GETTABLEKS                       R12 R12 K41 ["Json"]
      156 GETTABLEKS                       R12 R12 K42 ["encode"]
      158 MOVE                             R13 R8
      159 CALL                             R12 1 1
      160 GETUPVAL                         R13 5
      161 GETTABLEKS                       R13 R13 K53 ["get"]
      163 CALL                             R13 0 1
      164 GETTABLEKS                       R14 R13 K54 ["http"]
      166 GETTABLEKS                       R14 R14 K55 ["createWebStreamClient"]
      168 GETIMPORT                        R15 K59 [Enum.WebStreamClientType.RawStream]
      170 DUPTABLE                         R16 K65 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      171 SETTABLEKS                       R10 R16 K62 ["Url"]
      173 SETTABLEKS                       R11 R16 K63 ["Headers"]
      175 SETTABLEKS                       R12 R16 K64 ["Body"]
      177 CALL                             R14 2 1
      178 FASTCALL2K                       ASSERT R14 K66 ; [+5]
      180 MOVE                             R16 R14
      181 LOADK                            R17 K66 ["WebStreamClient should not be nil"]
      182 GETIMPORT                        R15 K68 [assert]
      184 CALL                             R15 2 0
      185 GETUPVAL                         R15 6
      186 GETTABLEKS                       R15 R15 K69 ["createParser"]
      188 DUPTABLE                         R16 K73 [{"onEvent", "onError", "onComment"}]
      189 NEWCLOSURE                       R17 P0
      190 CAPTURE                          UPVAL U0
      191 CAPTURE                          UPVAL U3
      192 CAPTURE                          UPVAL U7
      193 CAPTURE                          VAL R1
      194 SETTABLEKS                       R17 R16 K70 ["onEvent"]
      196 DUPCLOSURE                       R17 K74 [PROTO_3]
      197 CAPTURE                          UPVAL U0
      198 SETTABLEKS                       R17 R16 K71 ["onError"]
      200 DUPCLOSURE                       R17 K75 [PROTO_4]
      201 CAPTURE                          UPVAL U0
      202 SETTABLEKS                       R17 R16 K72 ["onComment"]
      204 CALL                             R15 1 1
      205 GETTABLEKS                       R16 R14 K76 ["MessageReceived"]
      207 GETTABLEKS                       R18 R15 K77 ["parseNextChunk"]
      209 NAMECALL                         R16 R16 K78 ["Connect"]
      211 CALL                             R16 2 1
      212 GETTABLEKS                       R17 R14 K79 ["Opened"]
      214 NEWCLOSURE                       R19 P3
      215 CAPTURE                          UPVAL U0
      216 CAPTURE                          REF R6
      217 CAPTURE                          VAL R1
      218 CAPTURE                          REF R14
      219 NAMECALL                         R17 R17 K78 ["Connect"]
      221 CALL                             R17 2 1
      222 GETTABLEKS                       R18 R14 K80 ["Closed"]
      224 NEWCLOSURE                       R20 P4
      225 CAPTURE                          UPVAL U0
      226 CAPTURE                          REF R16
      227 CAPTURE                          REF R17
      228 CAPTURE                          REF R14
      229 NAMECALL                         R18 R18 K81 ["Once"]
      231 CALL                             R18 2 0
      232 CLOSEUPVALS                      R6
      233 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["DefaultLLMProvider"]
       22 GETTABLEKS                       R3 R3 K11 ["LLMRequest"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R4 K13 ["ModelContextProtocol"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Components"]
       36 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       38 GETTABLEKS                       R5 R5 K14 ["TestLLM"]
       40 GETTABLEKS                       R5 R5 K15 ["TestLLMAdapter"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K16 ["Flags"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K17 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K18 ["EventStreamParser"]
       55 GETTABLEKS                       R8 R4 K19 ["createAdapter"]
       57 CALL                             R8 0 1
       58 DUPCLOSURE                       R9 K20 [PROTO_0]
       59 DUPCLOSURE                       R10 K21 [PROTO_7]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R8
       68 DUPTABLE                         R11 K25 [{["requestHandler"], ["createRequestHandler"] = }]
       69 SETTABLEKS                       R10 R11 K22 ["requestHandler"]
       71 RETURN                           R11 1
