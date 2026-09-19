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
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["--- OpenAILLMRequest event: %* %* %*"]
        7 GETTABLEKS                       R4 R0 K4 ["id"]
        9 GETTABLEKS                       R5 R0 K5 ["event"]
       11 GETTABLEKS                       R6 R0 K6 ["data"]
       13 NAMECALL                         R2 R2 K7 ["format"]
       15 CALL                             R2 4 1
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K9 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 2
       23 JUMPIFNOT                        R1 ; [+14]
       24 JUMPIFNOT                        R2 ; [+13]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R4 R0 K6 ["data"]
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
       13 GETTABLEKS                       R1 R1 K4 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R1 ; [+11]
       16 GETIMPORT                        R1 K3 [warn]
       18 LOADK                            R2 K5 ["--- OpenAILLMRequest error: %* (%*)"]
       19 GETTABLEKS                       R4 R0 K6 ["message"]
       21 GETTABLEKS                       R5 R0 K7 ["type"]
       23 NAMECALL                         R2 R2 K8 ["format"]
       25 CALL                             R2 3 1
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["--- OpenAILLMRequest comment: %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+52]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R3 K3 ["WebStreamClient opened with error code: %*"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 JUMPIFNOTEQKN                    R0 K5 [401] ; [+3]
       13 LOADK                            R2 K6 ["external_connection_unauthorized_error"]
       14 JUMP                             ; [+5]
       15 JUMPIFNOTEQKN                    R0 K7 [429] ; [+3]
       17 LOADK                            R2 K8 ["external_connection_quota_exceeded_error"]
       18 JUMP                             ; [+1]
       19 LOADK                            R2 K9 ["external_connection_general_error"]
       20 JUMPIFNOT                        R2 ; [+32]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K10 ["get"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R3 R3 K11 ["EventLogger"]
       27 GETTABLEKS                       R4 R3 K12 ["logExternalAPIError"]
       29 DUPTABLE                         R5 K16 [{"messageGuid", "model", "statusCode"}]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K13 ["messageGuid"]
       33 SETTABLEKS                       R6 R5 K13 ["messageGuid"]
       35 GETUPVAL                         R6 2
       36 SETTABLEKS                       R6 R5 K14 ["model"]
       38 SETTABLEKS                       R0 R5 K15 ["statusCode"]
       40 CALL                             R4 1 0
       41 DUPTABLE                         R4 K19 [{["type"] = "error", ["error"]}]
       42 SETTABLEKS                       R2 R4 K18 ["error"]
       44 GETUPVAL                         R5 3
       45 MOVE                             R6 R4
       46 CALL                             R5 1 0
       47 GETUPVAL                         R5 4
       48 JUMPIFNOT                        R5 ; [+4]
       49 GETUPVAL                         R5 4
       50 NAMECALL                         R5 R5 K20 ["Close"]
       52 CALL                             R5 1 0
       53 RETURN                           R0 0

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
        1 GETTABLEKS                       R2 R2 K0 ["FFlagMCPAssistantOpenAIThinkingEnabled"]
        3 MOVE                             R3 R2
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["FFlagMCPAssistantOpenAIPreserveThinking"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["FStringMCPAssistantOpenAIReasoningEffort"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R0 K3 ["messages"]
       14 MOVE                             R7 R3
       15 CALL                             R5 2 1
       16 GETTABLEKS                       R6 R0 K4 ["system"]
       18 JUMPIFNOT                        R6 ; [+16]
       19 GETTABLEKS                       R6 R0 K4 ["system"]
       21 JUMPIFEQKS                       R6 K5 [""] ; [+13]
       23 LOADN                            R8 1
       24 DUPTABLE                         R9 K10 [{["type"] = "message", ["role"] = "system", ["content"]}]
       25 GETTABLEKS                       R10 R0 K4 ["system"]
       27 SETTABLEKS                       R10 R9 K9 ["content"]
       29 FASTCALL3                        TABLE_INSERT R5 R8 R9
       31 MOVE                             R7 R5
       32 GETIMPORT                        R6 K13 [table.insert]
       34 CALL                             R6 3 0
       35 LOADK                            R6 K14 ["gpt-4o-2024-08-06"]
       36 GETTABLEKS                       R7 R0 K15 ["selectedModel"]
       38 JUMPIFNOT                        R7 ; [+7]
       39 GETTABLEKS                       R7 R0 K15 ["selectedModel"]
       41 JUMPIFEQKS                       R7 K5 [""] ; [+4]
       43 GETTABLEKS                       R6 R0 K15 ["selectedModel"]
       45 JUMP                             ; [+6]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K16 ["FStringMCPAssistantCustomModelName"]
       49 JUMPIFEQKS                       R7 K5 [""] ; [+2]
       51 MOVE                             R6 R7
       52 DUPTABLE                         R7 K26 [{["model"], ["input"], ["tools"], ["tool_choice"] = "auto", ["reasoning"], ["store"], ["stream"] = True}]
       53 SETTABLEKS                       R6 R7 K17 ["model"]
       55 SETTABLEKS                       R5 R7 K18 ["input"]
       57 GETTABLEKS                       R8 R0 K19 ["tools"]
       59 SETTABLEKS                       R8 R7 K19 ["tools"]
       61 JUMPIFNOT                        R2 ; [+9]
       62 DUPTABLE                         R8 K29 [{["effort"], ["summary"] = "auto"}]
       63 JUMPIFEQKS                       R4 K5 [""] ; [+3]
       65 MOVE                             R9 R4
       66 JUMP                             ; [+1]
       67 LOADNIL                          R9
       68 SETTABLEKS                       R9 R8 K27 ["effort"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R8
       72 SETTABLEKS                       R8 R7 K22 ["reasoning"]
       74 JUMPIFNOT                        R2 ; [+2]
       75 LOADB                            R8 0
       76 JUMP                             ; [+1]
       77 LOADNIL                          R8
       78 SETTABLEKS                       R8 R7 K23 ["store"]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R8 R8 K30 ["FFlagDebugLogAssistantUI"]
       83 JUMPIFNOT                        R8 ; [+14]
       84 GETIMPORT                        R8 K32 [print]
       86 LOADK                            R9 K33 ["--- OpenAILLMRequest requestBody: %*"]
       87 GETUPVAL                         R11 2
       88 GETTABLEKS                       R11 R11 K34 ["Json"]
       90 GETTABLEKS                       R11 R11 K35 ["encode"]
       92 MOVE                             R12 R7
       93 CALL                             R11 1 1
       94 NAMECALL                         R9 R9 K36 ["format"]
       96 CALL                             R9 2 1
       97 CALL                             R8 1 0
       98 GETTABLEKS                       R9 R0 K37 ["apiKeys"]
      100 JUMPIFNOT                        R9 ; [+14]
      101 GETTABLEKS                       R10 R0 K37 ["apiKeys"]
      103 GETUPVAL                         R11 3
      104 GETTABLEKS                       R11 R11 K38 ["OPENAI_API_KEY"]
      106 GETTABLE                         R9 R10 R11
      107 JUMPIFNOT                        R9 ; [+7]
      108 GETTABLEKS                       R9 R0 K37 ["apiKeys"]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R10 R10 K38 ["OPENAI_API_KEY"]
      113 GETTABLE                         R8 R9 R10
      114 JUMP                             ; [+3]
      115 GETUPVAL                         R8 0
      116 GETTABLEKS                       R8 R8 K39 ["FStringMCPAssistantOpenAIAPIKey"]
      118 LOADNIL                          R9
      119 LOADNIL                          R10
      120 GETUPVAL                         R11 0
      121 GETTABLEKS                       R11 R11 K40 ["FFlagMCPAssistantAzureOpenAI"]
      123 JUMPIFNOT                        R11 ; [+10]
      124 LOADK                            R9 K41 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
      125 NEWTABLE                         R11 2 0
      127 LOADK                            R12 K42 ["application/json"]
      128 SETTABLEKS                       R12 R11 K43 ["content-type"]
      130 SETTABLEKS                       R8 R11 K44 ["api-key"]
      132 MOVE                             R10 R11
      133 JUMP                             ; [+14]
      134 LOADK                            R9 K45 ["https://api.openai.com/v1/responses"]
      135 NEWTABLE                         R11 2 0
      137 LOADK                            R12 K42 ["application/json"]
      138 SETTABLEKS                       R12 R11 K43 ["content-type"]
      140 LOADK                            R12 K46 ["Bearer %*"]
      141 MOVE                             R14 R8
      142 NAMECALL                         R12 R12 K36 ["format"]
      144 CALL                             R12 2 1
      145 SETTABLEKS                       R12 R11 K47 ["authorization"]
      147 MOVE                             R10 R11
      148 GETUPVAL                         R11 2
      149 GETTABLEKS                       R11 R11 K34 ["Json"]
      151 GETTABLEKS                       R11 R11 K35 ["encode"]
      153 MOVE                             R12 R7
      154 CALL                             R11 1 1
      155 GETUPVAL                         R12 4
      156 GETTABLEKS                       R12 R12 K48 ["get"]
      158 CALL                             R12 0 1
      159 GETTABLEKS                       R13 R12 K49 ["http"]
      161 GETTABLEKS                       R13 R13 K50 ["createWebStreamClient"]
      163 GETIMPORT                        R14 K54 [Enum.WebStreamClientType.RawStream]
      165 DUPTABLE                         R15 K60 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      166 SETTABLEKS                       R9 R15 K57 ["Url"]
      168 SETTABLEKS                       R10 R15 K58 ["Headers"]
      170 SETTABLEKS                       R11 R15 K59 ["Body"]
      172 CALL                             R13 2 1
      173 FASTCALL2K                       ASSERT R13 K61 ; [+5]
      175 MOVE                             R15 R13
      176 LOADK                            R16 K61 ["WebStreamClient should not be nil"]
      177 GETIMPORT                        R14 K63 [assert]
      179 CALL                             R14 2 0
      180 GETUPVAL                         R14 5
      181 GETTABLEKS                       R14 R14 K64 ["createParser"]
      183 DUPTABLE                         R15 K68 [{"onEvent", "onError", "onComment"}]
      184 NEWCLOSURE                       R16 P0
      185 CAPTURE                          UPVAL U0
      186 CAPTURE                          UPVAL U2
      187 CAPTURE                          UPVAL U6
      188 CAPTURE                          VAL R1
      189 SETTABLEKS                       R16 R15 K65 ["onEvent"]
      191 DUPCLOSURE                       R16 K69 [PROTO_2]
      192 CAPTURE                          UPVAL U0
      193 SETTABLEKS                       R16 R15 K66 ["onError"]
      195 DUPCLOSURE                       R16 K70 [PROTO_3]
      196 CAPTURE                          UPVAL U0
      197 SETTABLEKS                       R16 R15 K67 ["onComment"]
      199 CALL                             R14 1 1
      200 GETTABLEKS                       R15 R13 K71 ["MessageReceived"]
      202 GETTABLEKS                       R17 R14 K72 ["parseNextChunk"]
      204 NAMECALL                         R15 R15 K73 ["Connect"]
      206 CALL                             R15 2 1
      207 GETTABLEKS                       R16 R13 K74 ["Opened"]
      209 NEWCLOSURE                       R18 P3
      210 CAPTURE                          UPVAL U4
      211 CAPTURE                          VAL R0
      212 CAPTURE                          REF R6
      213 CAPTURE                          VAL R1
      214 CAPTURE                          REF R13
      215 NAMECALL                         R16 R16 K73 ["Connect"]
      217 CALL                             R16 2 1
      218 GETTABLEKS                       R17 R13 K75 ["Closed"]
      220 NEWCLOSURE                       R19 P4
      221 CAPTURE                          UPVAL U0
      222 CAPTURE                          REF R15
      223 CAPTURE                          REF R16
      224 CAPTURE                          REF R13
      225 NAMECALL                         R17 R17 K76 ["Once"]
      227 CALL                             R17 2 0
      228 CLOSEUPVALS                      R6
      229 RETURN                           R0 0

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
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R9
       75 DUPTABLE                         R12 K25 [{["requestHandler"], ["createRequestHandler"] = }]
       76 SETTABLEKS                       R11 R12 K22 ["requestHandler"]
       78 RETURN                           R12 1
