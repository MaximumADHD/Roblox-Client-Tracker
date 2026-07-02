PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["data"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R3 K2 ["--- OpenAILLMRequest event: %* %* %*"]
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

PROTO_2:
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
       17 LOADK                            R3 K4 ["--- OpenAILLMRequest error: %* (%*)"]
       18 GETTABLEKS                       R5 R0 K5 ["message"]
       20 GETTABLEKS                       R6 R0 K6 ["type"]
       22 NAMECALL                         R3 R3 K7 ["format"]
       24 CALL                             R3 3 1
       25 MOVE                             R2 R3
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R3 K2 ["--- OpenAILLMRequest comment: %*"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+53]
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
       21 JUMPIFNOT                        R2 ; [+32]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K10 ["get"]
       25 CALL                             R3 0 1
       26 GETTABLEKS                       R3 R3 K11 ["EventLogger"]
       28 GETTABLEKS                       R4 R3 K12 ["logExternalAPIError"]
       30 DUPTABLE                         R5 K16 [{"messageGuid", "model", "statusCode"}]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K13 ["messageGuid"]
       34 SETTABLEKS                       R6 R5 K13 ["messageGuid"]
       36 GETUPVAL                         R6 2
       37 SETTABLEKS                       R6 R5 K14 ["model"]
       39 SETTABLEKS                       R0 R5 K15 ["statusCode"]
       41 CALL                             R4 1 0
       42 DUPTABLE                         R4 K19 [{["type"] = "error", ["error"]}]
       43 SETTABLEKS                       R2 R4 K18 ["error"]
       45 GETUPVAL                         R5 3
       46 MOVE                             R6 R4
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 4
       49 JUMPIFNOT                        R5 ; [+4]
       50 GETUPVAL                         R5 4
       51 NAMECALL                         R5 R5 K20 ["Close"]
       53 CALL                             R5 1 0
       54 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- OpenAILLMRequest WebStreamClient closed"]
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["messages"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K1 ["system"]
        6 JUMPIFNOT                        R3 ; [+16]
        7 GETTABLEKS                       R3 R0 K1 ["system"]
        9 JUMPIFEQKS                       R3 K2 [""] ; [+13]
       11 LOADN                            R5 1
       12 DUPTABLE                         R6 K7 [{["type"] = "message", ["role"] = "system", ["content"]}]
       13 GETTABLEKS                       R7 R0 K1 ["system"]
       15 SETTABLEKS                       R7 R6 K6 ["content"]
       17 FASTCALL3                        TABLE_INSERT R2 R5 R6
       19 MOVE                             R4 R2
       20 GETIMPORT                        R3 K10 [table.insert]
       22 CALL                             R3 3 0
       23 LOADK                            R3 K11 ["gpt-4o-2024-08-06"]
       24 GETTABLEKS                       R4 R0 K12 ["selectedModel"]
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETTABLEKS                       R4 R0 K12 ["selectedModel"]
       29 JUMPIFEQKS                       R4 K2 [""] ; [+4]
       31 GETTABLEKS                       R3 R0 K12 ["selectedModel"]
       33 JUMP                             ; [+5]
       34 GETUPVAL                         R4 1
       35 CALL                             R4 0 1
       36 JUMPIFEQKS                       R4 K2 [""] ; [+2]
       38 MOVE                             R3 R4
       39 DUPTABLE                         R4 K20 [{["model"], ["input"], ["tools"], ["tool_choice"] = "auto", ["stream"] = True}]
       40 SETTABLEKS                       R3 R4 K13 ["model"]
       42 SETTABLEKS                       R2 R4 K14 ["input"]
       44 GETTABLEKS                       R5 R0 K15 ["tools"]
       46 SETTABLEKS                       R5 R4 K15 ["tools"]
       48 GETUPVAL                         R5 2
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+15]
       51 GETIMPORT                        R5 K22 [print]
       53 LOADK                            R7 K23 ["--- OpenAILLMRequest requestBody: %*"]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K24 ["Json"]
       57 GETTABLEKS                       R9 R9 K25 ["encode"]
       59 MOVE                             R10 R4
       60 CALL                             R9 1 1
       61 NAMECALL                         R7 R7 K26 ["format"]
       63 CALL                             R7 2 1
       64 MOVE                             R6 R7
       65 CALL                             R5 1 0
       66 GETTABLEKS                       R6 R0 K27 ["apiKeys"]
       68 JUMPIFNOT                        R6 ; [+14]
       69 GETTABLEKS                       R7 R0 K27 ["apiKeys"]
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R8 R8 K28 ["OPENAI_API_KEY"]
       74 GETTABLE                         R6 R7 R8
       75 JUMPIFNOT                        R6 ; [+7]
       76 GETTABLEKS                       R6 R0 K27 ["apiKeys"]
       78 GETUPVAL                         R7 4
       79 GETTABLEKS                       R7 R7 K28 ["OPENAI_API_KEY"]
       81 GETTABLE                         R5 R6 R7
       82 JUMP                             ; [+2]
       83 GETUPVAL                         R5 5
       84 CALL                             R5 0 1
       85 LOADNIL                          R6
       86 LOADNIL                          R7
       87 GETUPVAL                         R8 6
       88 CALL                             R8 0 1
       89 JUMPIFNOT                        R8 ; [+10]
       90 LOADK                            R6 K29 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
       91 NEWTABLE                         R8 2 0
       93 LOADK                            R9 K30 ["application/json"]
       94 SETTABLEKS                       R9 R8 K31 ["content-type"]
       96 SETTABLEKS                       R5 R8 K32 ["api-key"]
       98 MOVE                             R7 R8
       99 JUMP                             ; [+15]
      100 LOADK                            R6 K33 ["https://api.openai.com/v1/responses"]
      101 NEWTABLE                         R8 2 0
      103 LOADK                            R9 K30 ["application/json"]
      104 SETTABLEKS                       R9 R8 K31 ["content-type"]
      106 LOADK                            R10 K34 ["Bearer %*"]
      107 MOVE                             R12 R5
      108 NAMECALL                         R10 R10 K26 ["format"]
      110 CALL                             R10 2 1
      111 MOVE                             R9 R10
      112 SETTABLEKS                       R9 R8 K35 ["authorization"]
      114 MOVE                             R7 R8
      115 GETUPVAL                         R8 3
      116 GETTABLEKS                       R8 R8 K24 ["Json"]
      118 GETTABLEKS                       R8 R8 K25 ["encode"]
      120 MOVE                             R9 R4
      121 CALL                             R8 1 1
      122 GETUPVAL                         R9 7
      123 GETTABLEKS                       R9 R9 K36 ["get"]
      125 CALL                             R9 0 1
      126 GETTABLEKS                       R10 R9 K37 ["http"]
      128 GETTABLEKS                       R10 R10 K38 ["createWebStreamClient"]
      130 GETIMPORT                        R11 K42 [Enum.WebStreamClientType.RawStream]
      132 DUPTABLE                         R12 K48 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      133 SETTABLEKS                       R6 R12 K45 ["Url"]
      135 SETTABLEKS                       R7 R12 K46 ["Headers"]
      137 SETTABLEKS                       R8 R12 K47 ["Body"]
      139 CALL                             R10 2 1
      140 FASTCALL2K                       ASSERT R10 K49 ; [+5]
      142 MOVE                             R12 R10
      143 LOADK                            R13 K49 ["WebStreamClient should not be nil"]
      144 GETIMPORT                        R11 K51 [assert]
      146 CALL                             R11 2 0
      147 GETUPVAL                         R11 8
      148 GETTABLEKS                       R11 R11 K52 ["createParser"]
      150 DUPTABLE                         R12 K56 [{"onEvent", "onError", "onComment"}]
      151 NEWCLOSURE                       R13 P0
      152 CAPTURE                          UPVAL U2
      153 CAPTURE                          UPVAL U3
      154 CAPTURE                          UPVAL U9
      155 CAPTURE                          VAL R1
      156 SETTABLEKS                       R13 R12 K53 ["onEvent"]
      158 DUPCLOSURE                       R13 K57 [PROTO_2]
      159 CAPTURE                          UPVAL U2
      160 SETTABLEKS                       R13 R12 K54 ["onError"]
      162 DUPCLOSURE                       R13 K58 [PROTO_3]
      163 CAPTURE                          UPVAL U2
      164 SETTABLEKS                       R13 R12 K55 ["onComment"]
      166 CALL                             R11 1 1
      167 GETTABLEKS                       R12 R10 K59 ["MessageReceived"]
      169 GETTABLEKS                       R14 R11 K60 ["parseNextChunk"]
      171 NAMECALL                         R12 R12 K61 ["Connect"]
      173 CALL                             R12 2 1
      174 GETTABLEKS                       R13 R10 K62 ["Opened"]
      176 NEWCLOSURE                       R15 P3
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          VAL R0
      179 CAPTURE                          REF R3
      180 CAPTURE                          VAL R1
      181 CAPTURE                          REF R10
      182 NAMECALL                         R13 R13 K61 ["Connect"]
      184 CALL                             R13 2 1
      185 GETTABLEKS                       R14 R10 K63 ["Closed"]
      187 NEWCLOSURE                       R16 P4
      188 CAPTURE                          UPVAL U2
      189 CAPTURE                          REF R12
      190 CAPTURE                          REF R13
      191 CAPTURE                          REF R10
      192 NAMECALL                         R14 R14 K64 ["Once"]
      194 CALL                             R14 2 0
      195 CLOSEUPVALS                      R3
      196 RETURN                           R0 0

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
       38 GETTABLEKS                       R5 R5 K14 ["OpenAI"]
       40 GETTABLEKS                       R5 R5 K15 ["OpenAILLMAdapterV2"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Components"]
       47 GETTABLEKS                       R6 R6 K9 ["Contexts"]
       49 GETTABLEKS                       R6 R6 K14 ["OpenAI"]
       51 GETTABLEKS                       R6 R6 K16 ["OpenAIRequestTypes"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K17 ["Types"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K18 ["Flags"]
       63 GETTABLEKS                       R8 R8 K19 ["FFlagDebugLogAssistantUI"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K18 ["Flags"]
       70 GETTABLEKS                       R9 R9 K20 ["FFlagMCPAssistantAzureOpenAI"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K18 ["Flags"]
       77 GETTABLEKS                       R10 R10 K21 ["FStringMCPAssistantCustomModelName"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K18 ["Flags"]
       84 GETTABLEKS                       R11 R11 K22 ["FStringMCPAssistantOpenAIAPIKey"]
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R3 K23 ["EventStreamParser"]
       89 GETTABLEKS                       R12 R4 K24 ["createAdapter"]
       91 CALL                             R12 0 1
       92 GETTABLEKS                       R13 R4 K25 ["convertLLMtoOpenAIMessage"]
       94 DUPCLOSURE                       R14 K26 [PROTO_6]
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R12
      105 DUPTABLE                         R15 K30 [{["requestHandler"], ["createRequestHandler"] = }]
      106 SETTABLEKS                       R14 R15 K27 ["requestHandler"]
      108 RETURN                           R15 1
