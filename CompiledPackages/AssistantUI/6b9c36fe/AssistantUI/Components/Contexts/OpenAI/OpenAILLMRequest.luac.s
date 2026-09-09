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
       83 JUMPIFNOT                        R8 ; [+15]
       84 GETIMPORT                        R8 K32 [print]
       86 LOADK                            R10 K33 ["--- OpenAILLMRequest requestBody: %*"]
       87 GETUPVAL                         R12 2
       88 GETTABLEKS                       R12 R12 K34 ["Json"]
       90 GETTABLEKS                       R12 R12 K35 ["encode"]
       92 MOVE                             R13 R7
       93 CALL                             R12 1 1
       94 NAMECALL                         R10 R10 K36 ["format"]
       96 CALL                             R10 2 1
       97 MOVE                             R9 R10
       98 CALL                             R8 1 0
       99 GETTABLEKS                       R9 R0 K37 ["apiKeys"]
      101 JUMPIFNOT                        R9 ; [+14]
      102 GETTABLEKS                       R10 R0 K37 ["apiKeys"]
      104 GETUPVAL                         R11 3
      105 GETTABLEKS                       R11 R11 K38 ["OPENAI_API_KEY"]
      107 GETTABLE                         R9 R10 R11
      108 JUMPIFNOT                        R9 ; [+7]
      109 GETTABLEKS                       R9 R0 K37 ["apiKeys"]
      111 GETUPVAL                         R10 3
      112 GETTABLEKS                       R10 R10 K38 ["OPENAI_API_KEY"]
      114 GETTABLE                         R8 R9 R10
      115 JUMP                             ; [+3]
      116 GETUPVAL                         R8 0
      117 GETTABLEKS                       R8 R8 K39 ["FStringMCPAssistantOpenAIAPIKey"]
      119 LOADNIL                          R9
      120 LOADNIL                          R10
      121 GETUPVAL                         R11 0
      122 GETTABLEKS                       R11 R11 K40 ["FFlagMCPAssistantAzureOpenAI"]
      124 JUMPIFNOT                        R11 ; [+10]
      125 LOADK                            R9 K41 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
      126 NEWTABLE                         R11 2 0
      128 LOADK                            R12 K42 ["application/json"]
      129 SETTABLEKS                       R12 R11 K43 ["content-type"]
      131 SETTABLEKS                       R8 R11 K44 ["api-key"]
      133 MOVE                             R10 R11
      134 JUMP                             ; [+15]
      135 LOADK                            R9 K45 ["https://api.openai.com/v1/responses"]
      136 NEWTABLE                         R11 2 0
      138 LOADK                            R12 K42 ["application/json"]
      139 SETTABLEKS                       R12 R11 K43 ["content-type"]
      141 LOADK                            R13 K46 ["Bearer %*"]
      142 MOVE                             R15 R8
      143 NAMECALL                         R13 R13 K36 ["format"]
      145 CALL                             R13 2 1
      146 MOVE                             R12 R13
      147 SETTABLEKS                       R12 R11 K47 ["authorization"]
      149 MOVE                             R10 R11
      150 GETUPVAL                         R11 2
      151 GETTABLEKS                       R11 R11 K34 ["Json"]
      153 GETTABLEKS                       R11 R11 K35 ["encode"]
      155 MOVE                             R12 R7
      156 CALL                             R11 1 1
      157 GETUPVAL                         R12 4
      158 GETTABLEKS                       R12 R12 K48 ["get"]
      160 CALL                             R12 0 1
      161 GETTABLEKS                       R13 R12 K49 ["http"]
      163 GETTABLEKS                       R13 R13 K50 ["createWebStreamClient"]
      165 GETIMPORT                        R14 K54 [Enum.WebStreamClientType.RawStream]
      167 DUPTABLE                         R15 K60 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      168 SETTABLEKS                       R9 R15 K57 ["Url"]
      170 SETTABLEKS                       R10 R15 K58 ["Headers"]
      172 SETTABLEKS                       R11 R15 K59 ["Body"]
      174 CALL                             R13 2 1
      175 FASTCALL2K                       ASSERT R13 K61 ; [+5]
      177 MOVE                             R15 R13
      178 LOADK                            R16 K61 ["WebStreamClient should not be nil"]
      179 GETIMPORT                        R14 K63 [assert]
      181 CALL                             R14 2 0
      182 GETUPVAL                         R14 5
      183 GETTABLEKS                       R14 R14 K64 ["createParser"]
      185 DUPTABLE                         R15 K68 [{"onEvent", "onError", "onComment"}]
      186 NEWCLOSURE                       R16 P0
      187 CAPTURE                          UPVAL U0
      188 CAPTURE                          UPVAL U2
      189 CAPTURE                          UPVAL U6
      190 CAPTURE                          VAL R1
      191 SETTABLEKS                       R16 R15 K65 ["onEvent"]
      193 DUPCLOSURE                       R16 K69 [PROTO_2]
      194 CAPTURE                          UPVAL U0
      195 SETTABLEKS                       R16 R15 K66 ["onError"]
      197 DUPCLOSURE                       R16 K70 [PROTO_3]
      198 CAPTURE                          UPVAL U0
      199 SETTABLEKS                       R16 R15 K67 ["onComment"]
      201 CALL                             R14 1 1
      202 GETTABLEKS                       R15 R13 K71 ["MessageReceived"]
      204 GETTABLEKS                       R17 R14 K72 ["parseNextChunk"]
      206 NAMECALL                         R15 R15 K73 ["Connect"]
      208 CALL                             R15 2 1
      209 GETTABLEKS                       R16 R13 K74 ["Opened"]
      211 NEWCLOSURE                       R18 P3
      212 CAPTURE                          UPVAL U4
      213 CAPTURE                          VAL R0
      214 CAPTURE                          REF R6
      215 CAPTURE                          VAL R1
      216 CAPTURE                          REF R13
      217 NAMECALL                         R16 R16 K73 ["Connect"]
      219 CALL                             R16 2 1
      220 GETTABLEKS                       R17 R13 K75 ["Closed"]
      222 NEWCLOSURE                       R19 P4
      223 CAPTURE                          UPVAL U0
      224 CAPTURE                          REF R15
      225 CAPTURE                          REF R16
      226 CAPTURE                          REF R13
      227 NAMECALL                         R17 R17 K76 ["Once"]
      229 CALL                             R17 2 0
      230 CLOSEUPVALS                      R6
      231 RETURN                           R0 0

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
