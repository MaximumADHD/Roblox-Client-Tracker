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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["--- OpenAILLMRequest event: %* %* %*"]
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

PROTO_2:
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
       18 LOADK                            R3 K5 ["--- OpenAILLMRequest error: %* (%*)"]
       19 GETTABLEKS                       R5 R0 K6 ["message"]
       21 GETTABLEKS                       R6 R0 K7 ["type"]
       23 NAMECALL                         R3 R3 K8 ["format"]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["--- OpenAILLMRequest comment: %*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["--- OpenAILLMRequest WebStreamClient closed"]
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
       33 JUMP                             ; [+6]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K13 ["FStringMCPAssistantCustomModelName"]
       37 JUMPIFEQKS                       R4 K2 [""] ; [+2]
       39 MOVE                             R3 R4
       40 DUPTABLE                         R4 K21 [{["model"], ["input"], ["tools"], ["tool_choice"] = "auto", ["stream"] = True}]
       41 SETTABLEKS                       R3 R4 K14 ["model"]
       43 SETTABLEKS                       R2 R4 K15 ["input"]
       45 GETTABLEKS                       R5 R0 K16 ["tools"]
       47 SETTABLEKS                       R5 R4 K16 ["tools"]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K22 ["FFlagDebugLogAssistantUI"]
       52 JUMPIFNOT                        R5 ; [+15]
       53 GETIMPORT                        R5 K24 [print]
       55 LOADK                            R7 K25 ["--- OpenAILLMRequest requestBody: %*"]
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K26 ["Json"]
       59 GETTABLEKS                       R9 R9 K27 ["encode"]
       61 MOVE                             R10 R4
       62 CALL                             R9 1 1
       63 NAMECALL                         R7 R7 K28 ["format"]
       65 CALL                             R7 2 1
       66 MOVE                             R6 R7
       67 CALL                             R5 1 0
       68 GETTABLEKS                       R6 R0 K29 ["apiKeys"]
       70 JUMPIFNOT                        R6 ; [+14]
       71 GETTABLEKS                       R7 R0 K29 ["apiKeys"]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K30 ["OPENAI_API_KEY"]
       76 GETTABLE                         R6 R7 R8
       77 JUMPIFNOT                        R6 ; [+7]
       78 GETTABLEKS                       R6 R0 K29 ["apiKeys"]
       80 GETUPVAL                         R7 3
       81 GETTABLEKS                       R7 R7 K30 ["OPENAI_API_KEY"]
       83 GETTABLE                         R5 R6 R7
       84 JUMP                             ; [+3]
       85 GETUPVAL                         R5 1
       86 GETTABLEKS                       R5 R5 K31 ["FStringMCPAssistantOpenAIAPIKey"]
       88 LOADNIL                          R6
       89 LOADNIL                          R7
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K32 ["FFlagMCPAssistantAzureOpenAI"]
       93 JUMPIFNOT                        R8 ; [+10]
       94 LOADK                            R6 K33 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
       95 NEWTABLE                         R8 2 0
       97 LOADK                            R9 K34 ["application/json"]
       98 SETTABLEKS                       R9 R8 K35 ["content-type"]
      100 SETTABLEKS                       R5 R8 K36 ["api-key"]
      102 MOVE                             R7 R8
      103 JUMP                             ; [+15]
      104 LOADK                            R6 K37 ["https://api.openai.com/v1/responses"]
      105 NEWTABLE                         R8 2 0
      107 LOADK                            R9 K34 ["application/json"]
      108 SETTABLEKS                       R9 R8 K35 ["content-type"]
      110 LOADK                            R10 K38 ["Bearer %*"]
      111 MOVE                             R12 R5
      112 NAMECALL                         R10 R10 K28 ["format"]
      114 CALL                             R10 2 1
      115 MOVE                             R9 R10
      116 SETTABLEKS                       R9 R8 K39 ["authorization"]
      118 MOVE                             R7 R8
      119 GETUPVAL                         R8 2
      120 GETTABLEKS                       R8 R8 K26 ["Json"]
      122 GETTABLEKS                       R8 R8 K27 ["encode"]
      124 MOVE                             R9 R4
      125 CALL                             R8 1 1
      126 GETUPVAL                         R9 4
      127 GETTABLEKS                       R9 R9 K40 ["get"]
      129 CALL                             R9 0 1
      130 GETTABLEKS                       R10 R9 K41 ["http"]
      132 GETTABLEKS                       R10 R10 K42 ["createWebStreamClient"]
      134 GETIMPORT                        R11 K46 [Enum.WebStreamClientType.RawStream]
      136 DUPTABLE                         R12 K52 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      137 SETTABLEKS                       R6 R12 K49 ["Url"]
      139 SETTABLEKS                       R7 R12 K50 ["Headers"]
      141 SETTABLEKS                       R8 R12 K51 ["Body"]
      143 CALL                             R10 2 1
      144 FASTCALL2K                       ASSERT R10 K53 ; [+5]
      146 MOVE                             R12 R10
      147 LOADK                            R13 K53 ["WebStreamClient should not be nil"]
      148 GETIMPORT                        R11 K55 [assert]
      150 CALL                             R11 2 0
      151 GETUPVAL                         R11 5
      152 GETTABLEKS                       R11 R11 K56 ["createParser"]
      154 DUPTABLE                         R12 K60 [{"onEvent", "onError", "onComment"}]
      155 NEWCLOSURE                       R13 P0
      156 CAPTURE                          UPVAL U1
      157 CAPTURE                          UPVAL U2
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R1
      160 SETTABLEKS                       R13 R12 K57 ["onEvent"]
      162 DUPCLOSURE                       R13 K61 [PROTO_2]
      163 CAPTURE                          UPVAL U1
      164 SETTABLEKS                       R13 R12 K58 ["onError"]
      166 DUPCLOSURE                       R13 K62 [PROTO_3]
      167 CAPTURE                          UPVAL U1
      168 SETTABLEKS                       R13 R12 K59 ["onComment"]
      170 CALL                             R11 1 1
      171 GETTABLEKS                       R12 R10 K63 ["MessageReceived"]
      173 GETTABLEKS                       R14 R11 K64 ["parseNextChunk"]
      175 NAMECALL                         R12 R12 K65 ["Connect"]
      177 CALL                             R12 2 1
      178 GETTABLEKS                       R13 R10 K66 ["Opened"]
      180 NEWCLOSURE                       R15 P3
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          VAL R0
      183 CAPTURE                          REF R3
      184 CAPTURE                          VAL R1
      185 CAPTURE                          REF R10
      186 NAMECALL                         R13 R13 K65 ["Connect"]
      188 CALL                             R13 2 1
      189 GETTABLEKS                       R14 R10 K67 ["Closed"]
      191 NEWCLOSURE                       R16 P4
      192 CAPTURE                          UPVAL U1
      193 CAPTURE                          REF R12
      194 CAPTURE                          REF R13
      195 CAPTURE                          REF R10
      196 NAMECALL                         R14 R14 K68 ["Once"]
      198 CALL                             R14 2 0
      199 CLOSEUPVALS                      R3
      200 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K13 ["OpenAI"]
       36 GETTABLEKS                       R5 R5 K14 ["OpenAILLMAdapterV2"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K13 ["OpenAI"]
       47 GETTABLEKS                       R6 R6 K15 ["OpenAIRequestTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K16 ["Flags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Types"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R3 K18 ["EventStreamParser"]
       62 GETTABLEKS                       R9 R4 K19 ["createAdapter"]
       64 CALL                             R9 0 1
       65 GETTABLEKS                       R10 R4 K20 ["convertLLMtoOpenAIMessage"]
       67 DUPCLOSURE                       R11 K21 [PROTO_6]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 DUPTABLE                         R12 K25 [{["requestHandler"], ["createRequestHandler"] = }]
       76 SETTABLEKS                       R11 R12 K22 ["requestHandler"]
       78 RETURN                           R12 1
