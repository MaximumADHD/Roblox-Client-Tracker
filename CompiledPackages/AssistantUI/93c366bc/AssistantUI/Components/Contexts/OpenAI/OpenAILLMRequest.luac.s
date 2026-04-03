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
      112 JUMPIFNOT                        R5 ; [+32]
      113 GETUPVAL                         R5 4
      114 CALL                             R5 0 1
      115 JUMPIFNOT                        R5 ; [+16]
      116 GETIMPORT                        R5 K27 [print]
      118 LOADK                            R7 K28 ["--- OpenAILLMRequest requestBody: %*"]
      119 GETUPVAL                         R11 5
      120 GETTABLEKS                       R10 R11 K29 ["Json"]
      122 GETTABLEKS                       R9 R10 K30 ["encode"]
      124 MOVE                             R10 R4
      125 CALL                             R9 1 1
      126 NAMECALL                         R7 R7 K31 ["format"]
      128 CALL                             R7 2 1
      129 MOVE                             R6 R7
      130 CALL                             R5 1 0
      131 JUMP                             ; [+13]
      132 GETIMPORT                        R5 K27 [print]
      134 LOADK                            R7 K28 ["--- OpenAILLMRequest requestBody: %*"]
      135 GETUPVAL                         R9 6
      136 MOVE                             R11 R4
      137 NAMECALL                         R9 R9 K32 ["JSONEncode"]
      139 CALL                             R9 2 1
      140 NAMECALL                         R7 R7 K31 ["format"]
      142 CALL                             R7 2 1
      143 MOVE                             R6 R7
      144 CALL                             R5 1 0
      145 GETTABLEKS                       R6 R0 K33 ["apiKeys"]
      147 JUMPIFNOT                        R6 ; [+14]
      148 GETTABLEKS                       R7 R0 K33 ["apiKeys"]
      150 GETUPVAL                         R9 7
      151 GETTABLEKS                       R8 R9 K34 ["OPENAI_API_KEY"]
      153 GETTABLE                         R6 R7 R8
      154 JUMPIFNOT                        R6 ; [+7]
      155 GETTABLEKS                       R6 R0 K33 ["apiKeys"]
      157 GETUPVAL                         R8 7
      158 GETTABLEKS                       R7 R8 K34 ["OPENAI_API_KEY"]
      160 GETTABLE                         R5 R6 R7
      161 JUMP                             ; [+2]
      162 GETUPVAL                         R5 8
      163 CALL                             R5 0 1
      164 LOADNIL                          R6
      165 LOADNIL                          R7
      166 GETUPVAL                         R8 9
      167 CALL                             R8 0 1
      168 JUMPIFNOT                        R8 ; [+15]
      169 GETUPVAL                         R8 1
      170 CALL                             R8 0 1
      171 JUMPIFNOT                        R8 ; [+2]
      172 LOADK                            R6 K35 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/responses?api-version=2025-01-01-preview"]
      173 JUMP                             ; [+1]
      174 LOADK                            R6 K36 ["https://rbx-conv-ai-dev-australia-east.openai.azure.com/openai/deployments/gpt-4o-2024-08-06/chat/completions?api-version=2025-01-01-preview"]
      175 NEWTABLE                         R8 2 0
      177 LOADK                            R9 K37 ["application/json"]
      178 SETTABLEKS                       R9 R8 K38 ["content-type"]
      180 SETTABLEKS                       R5 R8 K39 ["api-key"]
      182 MOVE                             R7 R8
      183 JUMP                             ; [+20]
      184 GETUPVAL                         R8 1
      185 CALL                             R8 0 1
      186 JUMPIFNOT                        R8 ; [+2]
      187 LOADK                            R6 K40 ["https://api.openai.com/v1/responses"]
      188 JUMP                             ; [+1]
      189 LOADK                            R6 K41 ["https://api.openai.com/v1/chat/completions"]
      190 NEWTABLE                         R8 2 0
      192 LOADK                            R9 K37 ["application/json"]
      193 SETTABLEKS                       R9 R8 K38 ["content-type"]
      195 LOADK                            R10 K42 ["Bearer %*"]
      196 MOVE                             R12 R5
      197 NAMECALL                         R10 R10 K31 ["format"]
      199 CALL                             R10 2 1
      200 MOVE                             R9 R10
      201 SETTABLEKS                       R9 R8 K43 ["authorization"]
      203 MOVE                             R7 R8
      204 LOADNIL                          R8
      205 GETUPVAL                         R9 4
      206 CALL                             R9 0 1
      207 JUMPIFNOT                        R9 ; [+9]
      208 GETUPVAL                         R11 5
      209 GETTABLEKS                       R10 R11 K29 ["Json"]
      211 GETTABLEKS                       R9 R10 K30 ["encode"]
      213 MOVE                             R10 R4
      214 CALL                             R9 1 1
      215 MOVE                             R8 R9
      216 JUMP                             ; [+6]
      217 GETUPVAL                         R9 6
      218 MOVE                             R11 R4
      219 NAMECALL                         R9 R9 K32 ["JSONEncode"]
      221 CALL                             R9 2 1
      222 MOVE                             R8 R9
      223 GETUPVAL                         R10 10
      224 GETTABLEKS                       R9 R10 K44 ["get"]
      226 CALL                             R9 0 1
      227 GETTABLEKS                       R11 R9 K45 ["http"]
      229 GETTABLEKS                       R10 R11 K46 ["createWebStreamClient"]
      231 GETIMPORT                        R11 K50 [Enum.WebStreamClientType.RawStream]
      233 DUPTABLE                         R12 K55 [{"Method", "Url", "Headers", "Body"}]
      234 LOADK                            R13 K56 ["POST"]
      235 SETTABLEKS                       R13 R12 K51 ["Method"]
      237 SETTABLEKS                       R6 R12 K52 ["Url"]
      239 SETTABLEKS                       R7 R12 K53 ["Headers"]
      241 SETTABLEKS                       R8 R12 K54 ["Body"]
      243 CALL                             R10 2 1
      244 FASTCALL2K                       ASSERT R10 K57 ; [+5]
      246 MOVE                             R12 R10
      247 LOADK                            R13 K57 ["WebStreamClient should not be nil"]
      248 GETIMPORT                        R11 K59 [assert]
      250 CALL                             R11 2 0
      251 GETUPVAL                         R12 11
      252 GETTABLEKS                       R11 R12 K60 ["createParser"]
      254 DUPTABLE                         R12 K64 [{"onEvent", "onError", "onComment"}]
      255 NEWCLOSURE                       R13 P0
      256 CAPTURE                          UPVAL U3
      257 CAPTURE                          UPVAL U4
      258 CAPTURE                          UPVAL U5
      259 CAPTURE                          UPVAL U6
      260 CAPTURE                          UPVAL U12
      261 CAPTURE                          VAL R1
      262 SETTABLEKS                       R13 R12 K61 ["onEvent"]
      264 DUPCLOSURE                       R13 K65 [PROTO_2]
      265 CAPTURE                          UPVAL U3
      266 SETTABLEKS                       R13 R12 K62 ["onError"]
      268 DUPCLOSURE                       R13 K66 [PROTO_3]
      269 CAPTURE                          UPVAL U3
      270 SETTABLEKS                       R13 R12 K63 ["onComment"]
      272 CALL                             R11 1 1
      273 GETTABLEKS                       R12 R10 K67 ["MessageReceived"]
      275 GETTABLEKS                       R14 R11 K68 ["parseNextChunk"]
      277 NAMECALL                         R12 R12 K69 ["Connect"]
      279 CALL                             R12 2 1
      280 GETTABLEKS                       R13 R10 K70 ["Opened"]
      282 NEWCLOSURE                       R15 P3
      283 CAPTURE                          UPVAL U10
      284 CAPTURE                          VAL R0
      285 CAPTURE                          REF R3
      286 CAPTURE                          VAL R1
      287 CAPTURE                          REF R10
      288 NAMECALL                         R13 R13 K69 ["Connect"]
      290 CALL                             R13 2 1
      291 GETTABLEKS                       R14 R10 K71 ["Closed"]
      293 NEWCLOSURE                       R16 P4
      294 CAPTURE                          UPVAL U3
      295 CAPTURE                          REF R12
      296 CAPTURE                          REF R13
      297 CAPTURE                          REF R10
      298 NAMECALL                         R14 R14 K72 ["Once"]
      300 CALL                             R14 2 0
      301 CLOSEUPVALS                      R3
      302 RETURN                           R0 0

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
       40 GETTABLEKS                       R7 R0 K18 ["Flags"]
       42 GETTABLEKS                       R6 R7 K19 ["FFlagAssistantNewOpenAIAdapter"]
       44 CALL                             R5 1 1
       45 LOADNIL                          R6
       46 MOVE                             R7 R5
       47 CALL                             R7 0 1
       48 JUMPIFNOT                        R7 ; [+13]
       49 GETIMPORT                        R7 K9 [require]
       51 GETTABLEKS                       R11 R0 K12 ["Components"]
       53 GETTABLEKS                       R10 R11 K13 ["Contexts"]
       55 GETTABLEKS                       R9 R10 K20 ["OpenAI"]
       57 GETTABLEKS                       R8 R9 K21 ["OpenAILLMAdapterV2"]
       59 CALL                             R7 1 1
       60 MOVE                             R6 R7
       61 JUMP                             ; [+12]
       62 GETIMPORT                        R7 K9 [require]
       64 GETTABLEKS                       R11 R0 K12 ["Components"]
       66 GETTABLEKS                       R10 R11 K13 ["Contexts"]
       68 GETTABLEKS                       R9 R10 K20 ["OpenAI"]
       70 GETTABLEKS                       R8 R9 K22 ["OpenAILLMAdapter"]
       72 CALL                             R7 1 1
       73 MOVE                             R6 R7
       74 GETIMPORT                        R7 K9 [require]
       76 GETTABLEKS                       R11 R0 K12 ["Components"]
       78 GETTABLEKS                       R10 R11 K13 ["Contexts"]
       80 GETTABLEKS                       R9 R10 K20 ["OpenAI"]
       82 GETTABLEKS                       R8 R9 K23 ["OpenAIRequestTypes"]
       84 CALL                             R7 1 1
       85 GETIMPORT                        R8 K9 [require]
       87 GETTABLEKS                       R9 R0 K24 ["Types"]
       89 CALL                             R8 1 1
       90 GETIMPORT                        R9 K9 [require]
       92 GETTABLEKS                       R11 R0 K18 ["Flags"]
       94 GETTABLEKS                       R10 R11 K25 ["FFlagAssistantJsonEncoder"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K9 [require]
       99 GETTABLEKS                       R12 R0 K18 ["Flags"]
      101 GETTABLEKS                       R11 R12 K26 ["FFlagDebugLogAssistantUI"]
      103 CALL                             R10 1 1
      104 GETIMPORT                        R11 K9 [require]
      106 GETTABLEKS                       R13 R0 K18 ["Flags"]
      108 GETTABLEKS                       R12 R13 K27 ["FFlagMCPAssistantAzureOpenAI"]
      110 CALL                             R11 1 1
      111 GETIMPORT                        R12 K9 [require]
      113 GETTABLEKS                       R14 R0 K18 ["Flags"]
      115 GETTABLEKS                       R13 R14 K28 ["FStringMCPAssistantCustomModelName"]
      117 CALL                             R12 1 1
      118 GETIMPORT                        R13 K9 [require]
      120 GETTABLEKS                       R15 R0 K18 ["Flags"]
      122 GETTABLEKS                       R14 R15 K29 ["FStringMCPAssistantOpenAIAPIKey"]
      124 CALL                             R13 1 1
      125 GETTABLEKS                       R14 R4 K30 ["EventStreamParser"]
      127 GETTABLEKS                       R15 R6 K31 ["createAdapter"]
      129 CALL                             R15 0 1
      130 GETTABLEKS                       R16 R6 K32 ["convertLLMtoOpenAIMessage"]
      132 DUPCLOSURE                       R17 K33 [PROTO_6]
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R15
      146 DUPTABLE                         R18 K36 [{"requestHandler", "createRequestHandler"}]
      147 SETTABLEKS                       R17 R18 K34 ["requestHandler"]
      149 LOADNIL                          R19
      150 SETTABLEKS                       R19 R18 K35 ["createRequestHandler"]
      152 RETURN                           R18 1
