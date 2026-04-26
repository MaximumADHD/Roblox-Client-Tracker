PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["data"]
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
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+26]
        7 GETTABLEKS                       R3 R0 K1 ["system"]
        9 JUMPIFNOT                        R3 ; [+41]
       10 GETTABLEKS                       R3 R0 K1 ["system"]
       12 JUMPIFEQKS                       R3 K2 [""] ; [+38]
       14 LOADN                            R5 1
       15 DUPTABLE                         R6 K6 [{"type", "role", "content"}]
       16 LOADK                            R7 K7 ["message"]
       17 SETTABLEKS                       R7 R6 K3 ["type"]
       19 LOADK                            R7 K1 ["system"]
       20 SETTABLEKS                       R7 R6 K4 ["role"]
       22 GETTABLEKS                       R7 R0 K1 ["system"]
       24 SETTABLEKS                       R7 R6 K5 ["content"]
       26 FASTCALL3                        TABLE_INSERT R2 R5 R6
       28 MOVE                             R4 R2
       29 GETIMPORT                        R3 K10 [table.insert]
       31 CALL                             R3 3 0
       32 JUMP                             ; [+18]
       33 GETTABLEKS                       R3 R0 K1 ["system"]
       35 JUMPIFNOT                        R3 ; [+15]
       36 LOADN                            R5 1
       37 DUPTABLE                         R6 K11 [{"role", "content"}]
       38 LOADK                            R7 K1 ["system"]
       39 SETTABLEKS                       R7 R6 K4 ["role"]
       41 GETTABLEKS                       R7 R0 K1 ["system"]
       43 SETTABLEKS                       R7 R6 K5 ["content"]
       45 FASTCALL3                        TABLE_INSERT R2 R5 R6
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K10 [table.insert]
       50 CALL                             R3 3 0
       51 LOADK                            R3 K12 ["gpt-4o-2024-08-06"]
       52 GETTABLEKS                       R4 R0 K13 ["selectedModel"]
       54 JUMPIFNOT                        R4 ; [+7]
       55 GETTABLEKS                       R4 R0 K13 ["selectedModel"]
       57 JUMPIFEQKS                       R4 K2 [""] ; [+4]
       59 GETTABLEKS                       R3 R0 K13 ["selectedModel"]
       61 JUMP                             ; [+5]
       62 GETUPVAL                         R4 2
       63 CALL                             R4 0 1
       64 JUMPIFEQKS                       R4 K2 [""] ; [+2]
       66 MOVE                             R3 R4
       67 LOADNIL                          R4
       68 GETUPVAL                         R5 1
       69 CALL                             R5 0 1
       70 JUMPIFNOT                        R5 ; [+17]
       71 DUPTABLE                         R5 K19 [{"model", "input", "tools", "tool_choice", "stream"}]
       72 SETTABLEKS                       R3 R5 K14 ["model"]
       74 SETTABLEKS                       R2 R5 K15 ["input"]
       76 GETTABLEKS                       R6 R0 K16 ["tools"]
       78 SETTABLEKS                       R6 R5 K16 ["tools"]
       80 LOADK                            R6 K20 ["auto"]
       81 SETTABLEKS                       R6 R5 K17 ["tool_choice"]
       83 LOADB                            R6 1
       84 SETTABLEKS                       R6 R5 K18 ["stream"]
       86 MOVE                             R4 R5
       87 JUMP                             ; [+22]
       88 DUPTABLE                         R5 K23 [{"model", "messages", "tools", "stream", "parallel_tool_calls", "stream_options"}]
       89 SETTABLEKS                       R3 R5 K14 ["model"]
       91 SETTABLEKS                       R2 R5 K0 ["messages"]
       93 GETTABLEKS                       R6 R0 K16 ["tools"]
       95 SETTABLEKS                       R6 R5 K16 ["tools"]
       97 LOADB                            R6 1
       98 SETTABLEKS                       R6 R5 K18 ["stream"]
      100 LOADB                            R6 0
      101 SETTABLEKS                       R6 R5 K21 ["parallel_tool_calls"]
      103 DUPTABLE                         R6 K25 [{"include_usage"}]
      104 LOADB                            R7 1
      105 SETTABLEKS                       R7 R6 K24 ["include_usage"]
      107 SETTABLEKS                       R6 R5 K22 ["stream_options"]
      109 MOVE                             R4 R5
      110 GETUPVAL                         R5 3
      111 CALL                             R5 0 1
      112 JUMPIFNOT                        R5 ; [+15]
      113 GETIMPORT                        R5 K27 [print]
      115 LOADK                            R7 K28 ["--- OpenAILLMRequest requestBody: %*"]
      116 GETUPVAL                         R11 4
      117 GETTABLEKS                       R10 R11 K29 ["Json"]
      119 GETTABLEKS                       R9 R10 K30 ["encode"]
      121 MOVE                             R10 R4
      122 CALL                             R9 1 1
      123 NAMECALL                         R7 R7 K31 ["format"]
      125 CALL                             R7 2 1
      126 MOVE                             R6 R7
      127 CALL                             R5 1 0
      128 GETTABLEKS                       R6 R0 K32 ["apiKeys"]
      130 JUMPIFNOT                        R6 ; [+14]
      131 GETTABLEKS                       R7 R0 K32 ["apiKeys"]
      133 GETUPVAL                         R9 5
      134 GETTABLEKS                       R8 R9 K33 ["OPENAI_API_KEY"]
      136 GETTABLE                         R6 R7 R8
      137 JUMPIFNOT                        R6 ; [+7]
      138 GETTABLEKS                       R6 R0 K32 ["apiKeys"]
      140 GETUPVAL                         R8 5
      141 GETTABLEKS                       R7 R8 K33 ["OPENAI_API_KEY"]
      143 GETTABLE                         R5 R6 R7
      144 JUMP                             ; [+2]
      145 GETUPVAL                         R5 6
      146 CALL                             R5 0 1
      147 LOADNIL                          R6
      148 LOADNIL                          R7
      149 GETUPVAL                         R8 7
      150 CALL                             R8 0 1
      151 JUMPIFNOT                        R8 ; [+15]
      152 GETUPVAL                         R8 1
      153 CALL                             R8 0 1
      154 JUMPIFNOT                        R8 ; [+2]
      155 LOADK                            R6 K34 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
      156 JUMP                             ; [+1]
      157 LOADK                            R6 K35 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/chat/completions?api-version=2025-01-01-preview"]
      158 NEWTABLE                         R8 2 0
      160 LOADK                            R9 K36 ["application/json"]
      161 SETTABLEKS                       R9 R8 K37 ["content-type"]
      163 SETTABLEKS                       R5 R8 K38 ["api-key"]
      165 MOVE                             R7 R8
      166 JUMP                             ; [+20]
      167 GETUPVAL                         R8 1
      168 CALL                             R8 0 1
      169 JUMPIFNOT                        R8 ; [+2]
      170 LOADK                            R6 K39 ["https://api.openai.com/v1/responses"]
      171 JUMP                             ; [+1]
      172 LOADK                            R6 K40 ["https://api.openai.com/v1/chat/completions"]
      173 NEWTABLE                         R8 2 0
      175 LOADK                            R9 K36 ["application/json"]
      176 SETTABLEKS                       R9 R8 K37 ["content-type"]
      178 LOADK                            R10 K41 ["Bearer %*"]
      179 MOVE                             R12 R5
      180 NAMECALL                         R10 R10 K31 ["format"]
      182 CALL                             R10 2 1
      183 MOVE                             R9 R10
      184 SETTABLEKS                       R9 R8 K42 ["authorization"]
      186 MOVE                             R7 R8
      187 GETUPVAL                         R10 4
      188 GETTABLEKS                       R9 R10 K29 ["Json"]
      190 GETTABLEKS                       R8 R9 K30 ["encode"]
      192 MOVE                             R9 R4
      193 CALL                             R8 1 1
      194 GETUPVAL                         R10 8
      195 GETTABLEKS                       R9 R10 K43 ["get"]
      197 CALL                             R9 0 1
      198 GETTABLEKS                       R11 R9 K44 ["http"]
      200 GETTABLEKS                       R10 R11 K45 ["createWebStreamClient"]
      202 GETIMPORT                        R11 K49 [Enum.WebStreamClientType.RawStream]
      204 DUPTABLE                         R12 K54 [{"Method", "Url", "Headers", "Body"}]
      205 LOADK                            R13 K55 ["POST"]
      206 SETTABLEKS                       R13 R12 K50 ["Method"]
      208 SETTABLEKS                       R6 R12 K51 ["Url"]
      210 SETTABLEKS                       R7 R12 K52 ["Headers"]
      212 SETTABLEKS                       R8 R12 K53 ["Body"]
      214 CALL                             R10 2 1
      215 FASTCALL2K                       ASSERT R10 K56 ; [+5]
      217 MOVE                             R12 R10
      218 LOADK                            R13 K56 ["WebStreamClient should not be nil"]
      219 GETIMPORT                        R11 K58 [assert]
      221 CALL                             R11 2 0
      222 GETUPVAL                         R12 9
      223 GETTABLEKS                       R11 R12 K59 ["createParser"]
      225 DUPTABLE                         R12 K63 [{"onEvent", "onError", "onComment"}]
      226 NEWCLOSURE                       R13 P0
      227 CAPTURE                          UPVAL U3
      228 CAPTURE                          UPVAL U4
      229 CAPTURE                          UPVAL U10
      230 CAPTURE                          VAL R1
      231 SETTABLEKS                       R13 R12 K60 ["onEvent"]
      233 DUPCLOSURE                       R13 K64 [PROTO_2]
      234 CAPTURE                          UPVAL U3
      235 SETTABLEKS                       R13 R12 K61 ["onError"]
      237 DUPCLOSURE                       R13 K65 [PROTO_3]
      238 CAPTURE                          UPVAL U3
      239 SETTABLEKS                       R13 R12 K62 ["onComment"]
      241 CALL                             R11 1 1
      242 GETTABLEKS                       R12 R10 K66 ["MessageReceived"]
      244 GETTABLEKS                       R14 R11 K67 ["parseNextChunk"]
      246 NAMECALL                         R12 R12 K68 ["Connect"]
      248 CALL                             R12 2 1
      249 GETTABLEKS                       R13 R10 K69 ["Opened"]
      251 NEWCLOSURE                       R15 P3
      252 CAPTURE                          UPVAL U8
      253 CAPTURE                          VAL R0
      254 CAPTURE                          REF R3
      255 CAPTURE                          VAL R1
      256 CAPTURE                          REF R10
      257 NAMECALL                         R13 R13 K68 ["Connect"]
      259 CALL                             R13 2 1
      260 GETTABLEKS                       R14 R10 K70 ["Closed"]
      262 NEWCLOSURE                       R16 P4
      263 CAPTURE                          UPVAL U3
      264 CAPTURE                          REF R12
      265 CAPTURE                          REF R13
      266 CAPTURE                          REF R10
      267 NAMECALL                         R14 R14 K71 ["Once"]
      269 CALL                             R14 2 0
      270 CLOSEUPVALS                      R3
      271 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Contexts"]
       20 GETTABLEKS                       R4 R5 K10 ["DefaultLLMProvider"]
       22 GETTABLEKS                       R3 R4 K11 ["LLMRequest"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R4 R5 K13 ["ModelContextProtocol"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K14 ["Flags"]
       36 GETTABLEKS                       R5 R6 K15 ["FFlagAssistantNewOpenAIAdapter"]
       38 CALL                             R4 1 1
       39 LOADNIL                          R5
       40 MOVE                             R6 R4
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+13]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R10 R0 K8 ["Components"]
       47 GETTABLEKS                       R9 R10 K9 ["Contexts"]
       49 GETTABLEKS                       R8 R9 K16 ["OpenAI"]
       51 GETTABLEKS                       R7 R8 K17 ["OpenAILLMAdapterV2"]
       53 CALL                             R6 1 1
       54 MOVE                             R5 R6
       55 JUMP                             ; [+12]
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R9 R10 K9 ["Contexts"]
       62 GETTABLEKS                       R8 R9 K16 ["OpenAI"]
       64 GETTABLEKS                       R7 R8 K18 ["OpenAILLMAdapter"]
       66 CALL                             R6 1 1
       67 MOVE                             R5 R6
       68 GETIMPORT                        R6 K5 [require]
       70 GETTABLEKS                       R10 R0 K8 ["Components"]
       72 GETTABLEKS                       R9 R10 K9 ["Contexts"]
       74 GETTABLEKS                       R8 R9 K16 ["OpenAI"]
       76 GETTABLEKS                       R7 R8 K19 ["OpenAIRequestTypes"]
       78 CALL                             R6 1 1
       79 GETIMPORT                        R7 K5 [require]
       81 GETTABLEKS                       R8 R0 K20 ["Types"]
       83 CALL                             R7 1 1
       84 GETIMPORT                        R8 K5 [require]
       86 GETTABLEKS                       R10 R0 K14 ["Flags"]
       88 GETTABLEKS                       R9 R10 K21 ["FFlagDebugLogAssistantUI"]
       90 CALL                             R8 1 1
       91 GETIMPORT                        R9 K5 [require]
       93 GETTABLEKS                       R11 R0 K14 ["Flags"]
       95 GETTABLEKS                       R10 R11 K22 ["FFlagMCPAssistantAzureOpenAI"]
       97 CALL                             R9 1 1
       98 GETIMPORT                        R10 K5 [require]
      100 GETTABLEKS                       R12 R0 K14 ["Flags"]
      102 GETTABLEKS                       R11 R12 K23 ["FStringMCPAssistantCustomModelName"]
      104 CALL                             R10 1 1
      105 GETIMPORT                        R11 K5 [require]
      107 GETTABLEKS                       R13 R0 K14 ["Flags"]
      109 GETTABLEKS                       R12 R13 K24 ["FStringMCPAssistantOpenAIAPIKey"]
      111 CALL                             R11 1 1
      112 GETTABLEKS                       R12 R3 K25 ["EventStreamParser"]
      114 GETTABLEKS                       R13 R5 K26 ["createAdapter"]
      116 CALL                             R13 0 1
      117 GETTABLEKS                       R14 R5 K27 ["convertLLMtoOpenAIMessage"]
      119 DUPCLOSURE                       R15 K28 [PROTO_6]
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R13
      131 DUPTABLE                         R16 K31 [{"requestHandler", "createRequestHandler"}]
      132 SETTABLEKS                       R15 R16 K29 ["requestHandler"]
      134 LOADNIL                          R17
      135 SETTABLEKS                       R17 R16 K30 ["createRequestHandler"]
      137 RETURN                           R16 1
