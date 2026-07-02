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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R3 K2 ["--- TestLLMRequest event: %* %* %*"]
        6 GETTABLEKS                       R5 R0 K3 ["id"]
        8 GETTABLEKS                       R6 R0 K4 ["event"]
       10 GETTABLEKS                       R7 R0 K5 ["data"]
       12 NAMECALL                         R3 R3 K6 ["format"]
       14 CALL                             R3 4 1
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K8 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 2
       23 JUMPIFNOT                        R1 ; [+14]
       24 JUMPIFNOT                        R2 ; [+13]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R4 R0 K5 ["data"]
       28 CALL                             R3 1 1
       29 MOVE                             R4 R3
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 FORGPREP                         R4
       33 GETUPVAL                         R9 3
       34 MOVE                             R10 R8
       35 CALL                             R9 1 0
       36 FORGLOOP                         R4 2 ; [-4]
       38 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K0 ["value"]
        5 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        7 GETIMPORT                        R1 K3 [warn]
        9 GETTABLEKS                       R2 R0 K0 ["value"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+12]
       15 GETIMPORT                        R1 K3 [warn]
       17 LOADK                            R3 K4 ["--- TestLLMRequest error: %* (%*)"]
       18 GETTABLEKS                       R5 R0 K5 ["message"]
       20 GETTABLEKS                       R6 R0 K6 ["type"]
       22 NAMECALL                         R3 R3 K7 ["format"]
       24 CALL                             R3 3 1
       25 MOVE                             R2 R3
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R3 K2 ["--- TestLLMRequest comment: %*"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+45]
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
       21 JUMPIFNOT                        R2 ; [+24]
       22 GETUPVAL                         R3 0
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETIMPORT                        R3 K2 [warn]
       27 LOADK                            R5 K10 ["TestLLMRequest failed: model=%*, statusCode=%*"]
       28 GETUPVAL                         R7 1
       29 MOVE                             R8 R0
       30 NAMECALL                         R5 R5 K4 ["format"]
       32 CALL                             R5 3 1
       33 MOVE                             R4 R5
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 2
       36 DUPTABLE                         R4 K13 [{["type"] = "error", ["error"]}]
       37 SETTABLEKS                       R2 R4 K12 ["error"]
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 3
       41 JUMPIFNOT                        R3 ; [+4]
       42 GETUPVAL                         R3 3
       43 NAMECALL                         R3 R3 K14 ["Close"]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- TestLLMRequest WebStreamClient closed"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K3 ["Connected"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 1
       14 NAMECALL                         R0 R0 K4 ["Disconnect"]
       16 CALL                             R0 1 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 GETUPVAL                         R0 2
       20 JUMPIFNOT                        R0 ; [+10]
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K3 ["Connected"]
       24 JUMPIFNOT                        R0 ; [+6]
       25 GETUPVAL                         R0 2
       26 NAMECALL                         R0 R0 K4 ["Disconnect"]
       28 CALL                             R0 1 0
       29 LOADNIL                          R0
       30 SETUPVAL                         R0 2
       31 LOADNIL                          R0
       32 SETUPVAL                         R0 3
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K0 ["convertLLMtoOpenAIMessage"]
        7 GETTABLEKS                       R5 R0 K1 ["messages"]
        9 MOVE                             R6 R3
       10 CALL                             R4 2 1
       11 GETTABLEKS                       R5 R0 K2 ["system"]
       13 JUMPIFNOT                        R5 ; [+12]
       14 LOADN                            R7 1
       15 DUPTABLE                         R8 K5 [{["role"] = "system", ["content"]}]
       16 GETTABLEKS                       R9 R0 K2 ["system"]
       18 SETTABLEKS                       R9 R8 K4 ["content"]
       20 FASTCALL3                        TABLE_INSERT R4 R7 R8
       22 MOVE                             R6 R4
       23 GETIMPORT                        R5 K8 [table.insert]
       25 CALL                             R5 3 0
       26 GETTABLEKS                       R6 R0 K9 ["isSubagent"]
       28 JUMPIFNOT                        R6 ; [+3]
       29 GETUPVAL                         R5 3
       30 CALL                             R5 0 1
       31 JUMP                             ; [+2]
       32 GETUPVAL                         R5 4
       33 CALL                             R5 0 1
       34 LOADK                            R6 K10 ["/mnt/models"]
       35 GETTABLEKS                       R7 R0 K11 ["selectedModel"]
       37 JUMPIFNOT                        R7 ; [+6]
       38 GETTABLEKS                       R7 R0 K11 ["selectedModel"]
       40 JUMPIFEQKS                       R7 K12 [""] ; [+3]
       42 GETTABLEKS                       R6 R0 K11 ["selectedModel"]
       44 GETUPVAL                         R7 5
       45 CALL                             R7 0 1
       46 JUMPIFEQKS                       R7 K12 [""] ; [+2]
       48 MOVE                             R6 R7
       49 DUPTABLE                         R8 K25 [{["model"], ["messages"], ["tools"], ["tool_choice"] = "auto", ["stream"] = True, ["parallel_tool_calls"] = False, ["max_tokens"] = 16000, ["stream_options"], ["chat_template_kwargs"]}]
       50 SETTABLEKS                       R6 R8 K13 ["model"]
       52 SETTABLEKS                       R4 R8 K1 ["messages"]
       54 GETUPVAL                         R9 6
       55 GETTABLEKS                       R10 R0 K14 ["tools"]
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R8 K14 ["tools"]
       60 DUPTABLE                         R9 K27 [{["include_usage"] = True}]
       61 SETTABLEKS                       R9 R8 K23 ["stream_options"]
       63 DUPTABLE                         R9 K31 [{"enable_thinking", "clear_thinking", "preserve_thinking"}]
       64 SETTABLEKS                       R2 R9 K28 ["enable_thinking"]
       66 NOT                              R10 R3
       67 SETTABLEKS                       R10 R9 K29 ["clear_thinking"]
       69 SETTABLEKS                       R3 R9 K30 ["preserve_thinking"]
       71 SETTABLEKS                       R9 R8 K24 ["chat_template_kwargs"]
       73 GETUPVAL                         R9 7
       74 CALL                             R9 0 1
       75 JUMPIFNOT                        R9 ; [+15]
       76 GETIMPORT                        R9 K33 [print]
       78 LOADK                            R11 K34 ["--- TestLLMRequest requestBody: %*"]
       79 GETUPVAL                         R13 8
       80 GETTABLEKS                       R13 R13 K35 ["Json"]
       82 GETTABLEKS                       R13 R13 K36 ["encode"]
       84 MOVE                             R14 R8
       85 CALL                             R13 1 1
       86 NAMECALL                         R11 R11 K37 ["format"]
       88 CALL                             R11 2 1
       89 MOVE                             R10 R11
       90 CALL                             R9 1 0
       91 GETTABLEKS                       R10 R0 K38 ["apiKeys"]
       93 JUMPIFNOT                        R10 ; [+14]
       94 GETTABLEKS                       R11 R0 K38 ["apiKeys"]
       96 GETUPVAL                         R12 9
       97 GETTABLEKS                       R12 R12 K39 ["OPENAI_API_KEY"]
       99 GETTABLE                         R10 R11 R12
      100 JUMPIFNOT                        R10 ; [+7]
      101 GETTABLEKS                       R10 R0 K38 ["apiKeys"]
      103 GETUPVAL                         R11 9
      104 GETTABLEKS                       R11 R11 K39 ["OPENAI_API_KEY"]
      106 GETTABLE                         R9 R10 R11
      107 JUMP                             ; [+2]
      108 GETUPVAL                         R9 10
      109 CALL                             R9 0 1
      110 LOADNIL                          R10
      111 LOADNIL                          R11
      112 JUMPIFEQKS                       R5 K12 [""] ; [+3]
      114 MOVE                             R10 R5
      115 JUMP                             ; [+1]
      116 LOADK                            R10 K40 ["https://ai-inference-use1-sticky.prod.ml.rbx.com/kubeflow-creator-code/glm47-flash-search-rl/v1/chat/completions"]
      117 NEWTABLE                         R12 1 0
      119 LOADK                            R13 K41 ["application/json"]
      120 SETTABLEKS                       R13 R12 K42 ["content-type"]
      122 MOVE                             R11 R12
      123 JUMPIFEQKS                       R9 K12 [""] ; [+9]
      125 LOADK                            R13 K43 ["Bearer %*"]
      126 MOVE                             R15 R9
      127 NAMECALL                         R13 R13 K37 ["format"]
      129 CALL                             R13 2 1
      130 MOVE                             R12 R13
      131 SETTABLEKS                       R12 R11 K44 ["authorization"]
      133 GETUPVAL                         R12 7
      134 CALL                             R12 0 1
      135 JUMPIFNOT                        R12 ; [+9]
      136 GETIMPORT                        R12 K33 [print]
      138 LOADK                            R14 K45 ["--- TestLLMRequest sending request to: %*"]
      139 MOVE                             R16 R10
      140 NAMECALL                         R14 R14 K37 ["format"]
      142 CALL                             R14 2 1
      143 MOVE                             R13 R14
      144 CALL                             R12 1 0
      145 GETUPVAL                         R12 8
      146 GETTABLEKS                       R12 R12 K35 ["Json"]
      148 GETTABLEKS                       R12 R12 K36 ["encode"]
      150 MOVE                             R13 R8
      151 CALL                             R12 1 1
      152 GETUPVAL                         R13 11
      153 GETTABLEKS                       R13 R13 K46 ["get"]
      155 CALL                             R13 0 1
      156 GETTABLEKS                       R14 R13 K47 ["http"]
      158 GETTABLEKS                       R14 R14 K48 ["createWebStreamClient"]
      160 GETIMPORT                        R15 K52 [Enum.WebStreamClientType.RawStream]
      162 DUPTABLE                         R16 K58 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      163 SETTABLEKS                       R10 R16 K55 ["Url"]
      165 SETTABLEKS                       R11 R16 K56 ["Headers"]
      167 SETTABLEKS                       R12 R16 K57 ["Body"]
      169 CALL                             R14 2 1
      170 FASTCALL2K                       ASSERT R14 K59 ; [+5]
      172 MOVE                             R16 R14
      173 LOADK                            R17 K59 ["WebStreamClient should not be nil"]
      174 GETIMPORT                        R15 K61 [assert]
      176 CALL                             R15 2 0
      177 GETUPVAL                         R15 12
      178 GETTABLEKS                       R15 R15 K62 ["createParser"]
      180 DUPTABLE                         R16 K66 [{"onEvent", "onError", "onComment"}]
      181 NEWCLOSURE                       R17 P0
      182 CAPTURE                          UPVAL U7
      183 CAPTURE                          UPVAL U8
      184 CAPTURE                          UPVAL U13
      185 CAPTURE                          VAL R1
      186 SETTABLEKS                       R17 R16 K63 ["onEvent"]
      188 DUPCLOSURE                       R17 K67 [PROTO_3]
      189 CAPTURE                          UPVAL U7
      190 SETTABLEKS                       R17 R16 K64 ["onError"]
      192 DUPCLOSURE                       R17 K68 [PROTO_4]
      193 CAPTURE                          UPVAL U7
      194 SETTABLEKS                       R17 R16 K65 ["onComment"]
      196 CALL                             R15 1 1
      197 GETTABLEKS                       R16 R14 K69 ["MessageReceived"]
      199 GETTABLEKS                       R18 R15 K70 ["parseNextChunk"]
      201 NAMECALL                         R16 R16 K71 ["Connect"]
      203 CALL                             R16 2 1
      204 GETTABLEKS                       R17 R14 K72 ["Opened"]
      206 NEWCLOSURE                       R19 P3
      207 CAPTURE                          UPVAL U7
      208 CAPTURE                          REF R6
      209 CAPTURE                          VAL R1
      210 CAPTURE                          REF R14
      211 NAMECALL                         R17 R17 K71 ["Connect"]
      213 CALL                             R17 2 1
      214 GETTABLEKS                       R18 R14 K73 ["Closed"]
      216 NEWCLOSURE                       R20 P4
      217 CAPTURE                          UPVAL U7
      218 CAPTURE                          REF R16
      219 CAPTURE                          REF R17
      220 CAPTURE                          REF R14
      221 NAMECALL                         R18 R18 K74 ["Once"]
      223 CALL                             R18 2 0
      224 CLOSEUPVALS                      R6
      225 RETURN                           R0 0

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
       45 GETTABLEKS                       R6 R0 K16 ["Types"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K17 ["Flags"]
       52 GETTABLEKS                       R7 R7 K18 ["FFlagAssistantTestLLMPreserveThinking"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Flags"]
       59 GETTABLEKS                       R8 R8 K19 ["FFlagAssistantTestLLMThinkingEnabled"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Flags"]
       66 GETTABLEKS                       R9 R9 K20 ["FFlagDebugLogAssistantUI"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K17 ["Flags"]
       73 GETTABLEKS                       R10 R10 K21 ["FStringMCPAssistantCustomModelName"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K17 ["Flags"]
       80 GETTABLEKS                       R11 R11 K22 ["FStringMCPAssistantTestLLMAPIKey"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K17 ["Flags"]
       87 GETTABLEKS                       R12 R12 K23 ["FStringTestLLMURLOverride"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K17 ["Flags"]
       94 GETTABLEKS                       R13 R13 K24 ["FStringTestSubagentURLOverride"]
       96 CALL                             R12 1 1
       97 GETTABLEKS                       R13 R3 K25 ["EventStreamParser"]
       99 GETTABLEKS                       R14 R4 K26 ["createAdapter"]
      101 CALL                             R14 0 1
      102 DUPCLOSURE                       R15 K27 [PROTO_0]
      103 DUPCLOSURE                       R16 K28 [PROTO_7]
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R14
      118 DUPTABLE                         R17 K32 [{["requestHandler"], ["createRequestHandler"] = }]
      119 SETTABLEKS                       R16 R17 K29 ["requestHandler"]
      121 RETURN                           R17 1
