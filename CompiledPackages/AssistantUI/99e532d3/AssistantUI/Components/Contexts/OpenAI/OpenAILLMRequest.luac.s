PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K2 ["data"]
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K2 ["data"]
       17 NAMECALL                         R0 R0 K3 ["JSONDecode"]
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

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
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R1 1 2
       25 JUMPIFNOT                        R1 ; [+14]
       26 JUMPIFNOT                        R2 ; [+13]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R4 R0 K5 ["data"]
       30 CALL                             R3 1 1
       31 MOVE                             R4 R3
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETUPVAL                         R9 5
       36 MOVE                             R10 R8
       37 CALL                             R9 1 0
       38 FORGLOOP                         R4 2 ; [-4]
       40 RETURN                           R0 0

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
        0 JUMPIFEQKN                       R0 K0 [200] ; [+54]
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
       21 JUMPIFNOT                        R2 ; [+33]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K10 ["get"]
       25 CALL                             R4 0 1
       26 GETTABLEKS                       R3 R4 K11 ["EventLogger"]
       28 GETTABLEKS                       R4 R3 K12 ["logExternalAPIError"]
       30 DUPTABLE                         R5 K16 [{"messageGuid", "model", "statusCode"}]
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K13 ["messageGuid"]
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
       52 NAMECALL                         R5 R5 K20 ["Close"]
       54 CALL                             R5 1 0
       55 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- OpenAILLMRequest WebStreamClient closed"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K3 ["Connected"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 1
       14 NAMECALL                         R0 R0 K4 ["Disconnect"]
       16 CALL                             R0 1 0
       17 LOADNIL                          R0
       18 SETUPVAL                         R0 1
       19 GETUPVAL                         R0 2
       20 JUMPIFNOT                        R0 ; [+10]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R0 R1 K3 ["Connected"]
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
        6 JUMPIFNOT                        R3 ; [+15]
        7 LOADN                            R5 1
        8 DUPTABLE                         R6 K4 [{"role", "content"}]
        9 LOADK                            R7 K1 ["system"]
       10 SETTABLEKS                       R7 R6 K2 ["role"]
       12 GETTABLEKS                       R7 R0 K1 ["system"]
       14 SETTABLEKS                       R7 R6 K3 ["content"]
       16 FASTCALL3                        TABLE_INSERT R2 R5 R6
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K7 [table.insert]
       21 CALL                             R3 3 0
       22 LOADK                            R3 K8 ["gpt-4o-2024-08-06"]
       23 GETTABLEKS                       R4 R0 K9 ["selectedModel"]
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETTABLEKS                       R4 R0 K9 ["selectedModel"]
       28 JUMPIFEQKS                       R4 K10 [""] ; [+4]
       30 GETTABLEKS                       R3 R0 K9 ["selectedModel"]
       32 JUMP                             ; [+5]
       33 GETUPVAL                         R4 1
       34 CALL                             R4 0 1
       35 JUMPIFEQKS                       R4 K10 [""] ; [+2]
       37 MOVE                             R3 R4
       38 DUPTABLE                         R4 K16 [{"model", "messages", "tools", "stream", "parallel_tool_calls", "stream_options"}]
       39 SETTABLEKS                       R3 R4 K11 ["model"]
       41 SETTABLEKS                       R2 R4 K0 ["messages"]
       43 GETTABLEKS                       R5 R0 K12 ["tools"]
       45 SETTABLEKS                       R5 R4 K12 ["tools"]
       47 LOADB                            R5 1
       48 SETTABLEKS                       R5 R4 K13 ["stream"]
       50 LOADB                            R5 0
       51 SETTABLEKS                       R5 R4 K14 ["parallel_tool_calls"]
       53 DUPTABLE                         R5 K18 [{"include_usage"}]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K17 ["include_usage"]
       57 SETTABLEKS                       R5 R4 K15 ["stream_options"]
       59 GETUPVAL                         R5 2
       60 CALL                             R5 0 1
       61 JUMPIFNOT                        R5 ; [+32]
       62 GETUPVAL                         R5 3
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+16]
       65 GETIMPORT                        R5 K20 [print]
       67 LOADK                            R7 K21 ["--- OpenAILLMRequest requestBody: %*"]
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R10 R11 K22 ["Json"]
       71 GETTABLEKS                       R9 R10 K23 ["encode"]
       73 MOVE                             R10 R4
       74 CALL                             R9 1 1
       75 NAMECALL                         R7 R7 K24 ["format"]
       77 CALL                             R7 2 1
       78 MOVE                             R6 R7
       79 CALL                             R5 1 0
       80 JUMP                             ; [+13]
       81 GETIMPORT                        R5 K20 [print]
       83 LOADK                            R7 K21 ["--- OpenAILLMRequest requestBody: %*"]
       84 GETUPVAL                         R9 5
       85 MOVE                             R11 R4
       86 NAMECALL                         R9 R9 K25 ["JSONEncode"]
       88 CALL                             R9 2 1
       89 NAMECALL                         R7 R7 K24 ["format"]
       91 CALL                             R7 2 1
       92 MOVE                             R6 R7
       93 CALL                             R5 1 0
       94 GETTABLEKS                       R6 R0 K26 ["apiKeys"]
       96 JUMPIFNOT                        R6 ; [+14]
       97 GETTABLEKS                       R7 R0 K26 ["apiKeys"]
       99 GETUPVAL                         R9 6
      100 GETTABLEKS                       R8 R9 K27 ["OPENAI_API_KEY"]
      102 GETTABLE                         R6 R7 R8
      103 JUMPIFNOT                        R6 ; [+7]
      104 GETTABLEKS                       R6 R0 K26 ["apiKeys"]
      106 GETUPVAL                         R8 6
      107 GETTABLEKS                       R7 R8 K27 ["OPENAI_API_KEY"]
      109 GETTABLE                         R5 R6 R7
      110 JUMP                             ; [+2]
      111 GETUPVAL                         R5 7
      112 CALL                             R5 0 1
      113 LOADNIL                          R6
      114 LOADNIL                          R7
      115 GETUPVAL                         R8 8
      116 CALL                             R8 0 1
      117 JUMPIFNOT                        R8 ; [+10]
      118 LOADK                            R6 K28 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/chat/completions?api-version=2025-01-01-preview"]
      119 NEWTABLE                         R8 2 0
      121 LOADK                            R9 K29 ["application/json"]
      122 SETTABLEKS                       R9 R8 K30 ["content-type"]
      124 SETTABLEKS                       R5 R8 K31 ["api-key"]
      126 MOVE                             R7 R8
      127 JUMP                             ; [+15]
      128 LOADK                            R6 K32 ["https://api.openai.com/v1/chat/completions"]
      129 NEWTABLE                         R8 2 0
      131 LOADK                            R9 K29 ["application/json"]
      132 SETTABLEKS                       R9 R8 K30 ["content-type"]
      134 LOADK                            R10 K33 ["Bearer %*"]
      135 MOVE                             R12 R5
      136 NAMECALL                         R10 R10 K24 ["format"]
      138 CALL                             R10 2 1
      139 MOVE                             R9 R10
      140 SETTABLEKS                       R9 R8 K34 ["authorization"]
      142 MOVE                             R7 R8
      143 LOADNIL                          R8
      144 GETUPVAL                         R9 3
      145 CALL                             R9 0 1
      146 JUMPIFNOT                        R9 ; [+9]
      147 GETUPVAL                         R11 4
      148 GETTABLEKS                       R10 R11 K22 ["Json"]
      150 GETTABLEKS                       R9 R10 K23 ["encode"]
      152 MOVE                             R10 R4
      153 CALL                             R9 1 1
      154 MOVE                             R8 R9
      155 JUMP                             ; [+6]
      156 GETUPVAL                         R9 5
      157 MOVE                             R11 R4
      158 NAMECALL                         R9 R9 K25 ["JSONEncode"]
      160 CALL                             R9 2 1
      161 MOVE                             R8 R9
      162 GETUPVAL                         R10 9
      163 GETTABLEKS                       R9 R10 K35 ["get"]
      165 CALL                             R9 0 1
      166 GETTABLEKS                       R11 R9 K36 ["http"]
      168 GETTABLEKS                       R10 R11 K37 ["createWebStreamClient"]
      170 GETIMPORT                        R11 K41 [Enum.WebStreamClientType.RawStream]
      172 DUPTABLE                         R12 K46 [{"Method", "Url", "Headers", "Body"}]
      173 LOADK                            R13 K47 ["POST"]
      174 SETTABLEKS                       R13 R12 K42 ["Method"]
      176 SETTABLEKS                       R6 R12 K43 ["Url"]
      178 SETTABLEKS                       R7 R12 K44 ["Headers"]
      180 SETTABLEKS                       R8 R12 K45 ["Body"]
      182 CALL                             R10 2 1
      183 FASTCALL2K                       ASSERT R10 K48 ; [+5]
      185 MOVE                             R12 R10
      186 LOADK                            R13 K48 ["WebStreamClient should not be nil"]
      187 GETIMPORT                        R11 K50 [assert]
      189 CALL                             R11 2 0
      190 GETUPVAL                         R12 10
      191 GETTABLEKS                       R11 R12 K51 ["createParser"]
      193 DUPTABLE                         R12 K55 [{"onEvent", "onError", "onComment"}]
      194 NEWCLOSURE                       R13 P0
      195 CAPTURE                          UPVAL U2
      196 CAPTURE                          UPVAL U3
      197 CAPTURE                          UPVAL U4
      198 CAPTURE                          UPVAL U5
      199 CAPTURE                          UPVAL U11
      200 CAPTURE                          VAL R1
      201 SETTABLEKS                       R13 R12 K52 ["onEvent"]
      203 DUPCLOSURE                       R13 K56 [PROTO_2]
      204 CAPTURE                          UPVAL U2
      205 SETTABLEKS                       R13 R12 K53 ["onError"]
      207 DUPCLOSURE                       R13 K57 [PROTO_3]
      208 CAPTURE                          UPVAL U2
      209 SETTABLEKS                       R13 R12 K54 ["onComment"]
      211 CALL                             R11 1 1
      212 GETTABLEKS                       R12 R10 K58 ["MessageReceived"]
      214 GETTABLEKS                       R14 R11 K59 ["parseNextChunk"]
      216 NAMECALL                         R12 R12 K60 ["Connect"]
      218 CALL                             R12 2 1
      219 GETTABLEKS                       R13 R10 K61 ["Opened"]
      221 NEWCLOSURE                       R15 P3
      222 CAPTURE                          UPVAL U9
      223 CAPTURE                          VAL R0
      224 CAPTURE                          REF R3
      225 CAPTURE                          VAL R1
      226 CAPTURE                          REF R10
      227 NAMECALL                         R13 R13 K60 ["Connect"]
      229 CALL                             R13 2 1
      230 GETTABLEKS                       R14 R10 K62 ["Closed"]
      232 NEWCLOSURE                       R16 P4
      233 CAPTURE                          UPVAL U2
      234 CAPTURE                          REF R12
      235 CAPTURE                          REF R13
      236 CAPTURE                          REF R10
      237 NAMECALL                         R14 R14 K63 ["Once"]
      239 CALL                             R14 2 0
      240 CLOSEUPVALS                      R3
      241 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R4 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R7 R0 K12 ["Components"]
       24 GETTABLEKS                       R6 R7 K13 ["Contexts"]
       26 GETTABLEKS                       R5 R6 K14 ["DefaultLLMProvider"]
       28 GETTABLEKS                       R4 R5 K15 ["LLMRequest"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R0 K16 ["Parent"]
       35 GETTABLEKS                       R5 R6 K17 ["ModelContextProtocol"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R9 R0 K12 ["Components"]
       42 GETTABLEKS                       R8 R9 K13 ["Contexts"]
       44 GETTABLEKS                       R7 R8 K18 ["OpenAI"]
       46 GETTABLEKS                       R6 R7 K19 ["OpenAILLMAdapter"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K20 ["Types"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R9 R0 K21 ["Flags"]
       58 GETTABLEKS                       R8 R9 K22 ["FFlagAssistantJsonEncoder"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R10 R0 K21 ["Flags"]
       65 GETTABLEKS                       R9 R10 K23 ["FFlagDebugLogAssistantUI"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R11 R0 K21 ["Flags"]
       72 GETTABLEKS                       R10 R11 K24 ["FFlagMCPAssistantAzureOpenAI"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R12 R0 K21 ["Flags"]
       79 GETTABLEKS                       R11 R12 K25 ["FStringMCPAssistantCustomModelName"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R13 R0 K21 ["Flags"]
       86 GETTABLEKS                       R12 R13 K26 ["FStringMCPAssistantOpenAIAPIKey"]
       88 CALL                             R11 1 1
       89 GETTABLEKS                       R12 R4 K27 ["EventStreamParser"]
       91 GETTABLEKS                       R13 R5 K28 ["createAdapter"]
       93 CALL                             R13 0 1
       94 GETTABLEKS                       R14 R5 K29 ["convertLLMtoOpenAIMessage"]
       96 DUPCLOSURE                       R15 K30 [PROTO_6]
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R13
      109 DUPTABLE                         R16 K33 [{"requestHandler", "createRequestHandler"}]
      110 SETTABLEKS                       R15 R16 K31 ["requestHandler"]
      112 LOADNIL                          R17
      113 SETTABLEKS                       R17 R16 K32 ["createRequestHandler"]
      115 RETURN                           R16 1
