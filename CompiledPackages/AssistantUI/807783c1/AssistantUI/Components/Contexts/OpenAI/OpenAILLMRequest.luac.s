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
        0 JUMPIFEQKN                       R0 K0 [200] ; [+56]
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
       21 JUMPIFNOT                        R2 ; [+35]
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
       42 DUPTABLE                         R4 K19 [{"type", "error"}]
       43 LOADK                            R5 K18 ["error"]
       44 SETTABLEKS                       R5 R4 K17 ["type"]
       46 SETTABLEKS                       R2 R4 K18 ["error"]
       48 GETUPVAL                         R5 3
       49 MOVE                             R6 R4
       50 CALL                             R5 1 0
       51 GETUPVAL                         R5 4
       52 JUMPIFNOT                        R5 ; [+4]
       53 GETUPVAL                         R5 4
       54 NAMECALL                         R5 R5 K20 ["Close"]
       56 CALL                             R5 1 0
       57 RETURN                           R0 0

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
        6 JUMPIFNOT                        R3 ; [+22]
        7 GETTABLEKS                       R3 R0 K1 ["system"]
        9 JUMPIFEQKS                       R3 K2 [""] ; [+19]
       11 LOADN                            R5 1
       12 DUPTABLE                         R6 K6 [{"type", "role", "content"}]
       13 LOADK                            R7 K7 ["message"]
       14 SETTABLEKS                       R7 R6 K3 ["type"]
       16 LOADK                            R7 K1 ["system"]
       17 SETTABLEKS                       R7 R6 K4 ["role"]
       19 GETTABLEKS                       R7 R0 K1 ["system"]
       21 SETTABLEKS                       R7 R6 K5 ["content"]
       23 FASTCALL3                        TABLE_INSERT R2 R5 R6
       25 MOVE                             R4 R2
       26 GETIMPORT                        R3 K10 [table.insert]
       28 CALL                             R3 3 0
       29 LOADK                            R3 K11 ["gpt-4o-2024-08-06"]
       30 GETTABLEKS                       R4 R0 K12 ["selectedModel"]
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETTABLEKS                       R4 R0 K12 ["selectedModel"]
       35 JUMPIFEQKS                       R4 K2 [""] ; [+4]
       37 GETTABLEKS                       R3 R0 K12 ["selectedModel"]
       39 JUMP                             ; [+5]
       40 GETUPVAL                         R4 1
       41 CALL                             R4 0 1
       42 JUMPIFEQKS                       R4 K2 [""] ; [+2]
       44 MOVE                             R3 R4
       45 DUPTABLE                         R4 K18 [{"model", "input", "tools", "tool_choice", "stream"}]
       46 SETTABLEKS                       R3 R4 K13 ["model"]
       48 SETTABLEKS                       R2 R4 K14 ["input"]
       50 GETTABLEKS                       R5 R0 K15 ["tools"]
       52 SETTABLEKS                       R5 R4 K15 ["tools"]
       54 LOADK                            R5 K19 ["auto"]
       55 SETTABLEKS                       R5 R4 K16 ["tool_choice"]
       57 LOADB                            R5 1
       58 SETTABLEKS                       R5 R4 K17 ["stream"]
       60 GETUPVAL                         R5 2
       61 CALL                             R5 0 1
       62 JUMPIFNOT                        R5 ; [+15]
       63 GETIMPORT                        R5 K21 [print]
       65 LOADK                            R7 K22 ["--- OpenAILLMRequest requestBody: %*"]
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K23 ["Json"]
       69 GETTABLEKS                       R9 R9 K24 ["encode"]
       71 MOVE                             R10 R4
       72 CALL                             R9 1 1
       73 NAMECALL                         R7 R7 K25 ["format"]
       75 CALL                             R7 2 1
       76 MOVE                             R6 R7
       77 CALL                             R5 1 0
       78 GETTABLEKS                       R6 R0 K26 ["apiKeys"]
       80 JUMPIFNOT                        R6 ; [+14]
       81 GETTABLEKS                       R7 R0 K26 ["apiKeys"]
       83 GETUPVAL                         R8 4
       84 GETTABLEKS                       R8 R8 K27 ["OPENAI_API_KEY"]
       86 GETTABLE                         R6 R7 R8
       87 JUMPIFNOT                        R6 ; [+7]
       88 GETTABLEKS                       R6 R0 K26 ["apiKeys"]
       90 GETUPVAL                         R7 4
       91 GETTABLEKS                       R7 R7 K27 ["OPENAI_API_KEY"]
       93 GETTABLE                         R5 R6 R7
       94 JUMP                             ; [+2]
       95 GETUPVAL                         R5 5
       96 CALL                             R5 0 1
       97 LOADNIL                          R6
       98 LOADNIL                          R7
       99 GETUPVAL                         R8 6
      100 CALL                             R8 0 1
      101 JUMPIFNOT                        R8 ; [+10]
      102 LOADK                            R6 K28 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
      103 NEWTABLE                         R8 2 0
      105 LOADK                            R9 K29 ["application/json"]
      106 SETTABLEKS                       R9 R8 K30 ["content-type"]
      108 SETTABLEKS                       R5 R8 K31 ["api-key"]
      110 MOVE                             R7 R8
      111 JUMP                             ; [+15]
      112 LOADK                            R6 K32 ["https://api.openai.com/v1/responses"]
      113 NEWTABLE                         R8 2 0
      115 LOADK                            R9 K29 ["application/json"]
      116 SETTABLEKS                       R9 R8 K30 ["content-type"]
      118 LOADK                            R10 K33 ["Bearer %*"]
      119 MOVE                             R12 R5
      120 NAMECALL                         R10 R10 K25 ["format"]
      122 CALL                             R10 2 1
      123 MOVE                             R9 R10
      124 SETTABLEKS                       R9 R8 K34 ["authorization"]
      126 MOVE                             R7 R8
      127 GETUPVAL                         R8 3
      128 GETTABLEKS                       R8 R8 K23 ["Json"]
      130 GETTABLEKS                       R8 R8 K24 ["encode"]
      132 MOVE                             R9 R4
      133 CALL                             R8 1 1
      134 GETUPVAL                         R9 7
      135 GETTABLEKS                       R9 R9 K35 ["get"]
      137 CALL                             R9 0 1
      138 GETTABLEKS                       R10 R9 K36 ["http"]
      140 GETTABLEKS                       R10 R10 K37 ["createWebStreamClient"]
      142 GETIMPORT                        R11 K41 [Enum.WebStreamClientType.RawStream]
      144 DUPTABLE                         R12 K46 [{"Method", "Url", "Headers", "Body"}]
      145 LOADK                            R13 K47 ["POST"]
      146 SETTABLEKS                       R13 R12 K42 ["Method"]
      148 SETTABLEKS                       R6 R12 K43 ["Url"]
      150 SETTABLEKS                       R7 R12 K44 ["Headers"]
      152 SETTABLEKS                       R8 R12 K45 ["Body"]
      154 CALL                             R10 2 1
      155 FASTCALL2K                       ASSERT R10 K48 ; [+5]
      157 MOVE                             R12 R10
      158 LOADK                            R13 K48 ["WebStreamClient should not be nil"]
      159 GETIMPORT                        R11 K50 [assert]
      161 CALL                             R11 2 0
      162 GETUPVAL                         R11 8
      163 GETTABLEKS                       R11 R11 K51 ["createParser"]
      165 DUPTABLE                         R12 K55 [{"onEvent", "onError", "onComment"}]
      166 NEWCLOSURE                       R13 P0
      167 CAPTURE                          UPVAL U2
      168 CAPTURE                          UPVAL U3
      169 CAPTURE                          UPVAL U9
      170 CAPTURE                          VAL R1
      171 SETTABLEKS                       R13 R12 K52 ["onEvent"]
      173 DUPCLOSURE                       R13 K56 [PROTO_2]
      174 CAPTURE                          UPVAL U2
      175 SETTABLEKS                       R13 R12 K53 ["onError"]
      177 DUPCLOSURE                       R13 K57 [PROTO_3]
      178 CAPTURE                          UPVAL U2
      179 SETTABLEKS                       R13 R12 K54 ["onComment"]
      181 CALL                             R11 1 1
      182 GETTABLEKS                       R12 R10 K58 ["MessageReceived"]
      184 GETTABLEKS                       R14 R11 K59 ["parseNextChunk"]
      186 NAMECALL                         R12 R12 K60 ["Connect"]
      188 CALL                             R12 2 1
      189 GETTABLEKS                       R13 R10 K61 ["Opened"]
      191 NEWCLOSURE                       R15 P3
      192 CAPTURE                          UPVAL U7
      193 CAPTURE                          VAL R0
      194 CAPTURE                          REF R3
      195 CAPTURE                          VAL R1
      196 CAPTURE                          REF R10
      197 NAMECALL                         R13 R13 K60 ["Connect"]
      199 CALL                             R13 2 1
      200 GETTABLEKS                       R14 R10 K62 ["Closed"]
      202 NEWCLOSURE                       R16 P4
      203 CAPTURE                          UPVAL U2
      204 CAPTURE                          REF R12
      205 CAPTURE                          REF R13
      206 CAPTURE                          REF R10
      207 NAMECALL                         R14 R14 K63 ["Once"]
      209 CALL                             R14 2 0
      210 CLOSEUPVALS                      R3
      211 RETURN                           R0 0

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
      105 DUPTABLE                         R15 K29 [{"requestHandler", "createRequestHandler"}]
      106 SETTABLEKS                       R14 R15 K27 ["requestHandler"]
      108 LOADNIL                          R16
      109 SETTABLEKS                       R16 R15 K28 ["createRequestHandler"]
      111 RETURN                           R15 1
