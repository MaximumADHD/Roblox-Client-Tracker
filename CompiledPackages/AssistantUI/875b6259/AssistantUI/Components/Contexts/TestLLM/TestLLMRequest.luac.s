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
        0 JUMPIFEQKN                       R0 K0 [200] ; [+48]
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
       21 JUMPIFNOT                        R2 ; [+27]
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
       36 DUPTABLE                         R4 K13 [{"type", "error"}]
       37 LOADK                            R5 K12 ["error"]
       38 SETTABLEKS                       R5 R4 K11 ["type"]
       40 SETTABLEKS                       R2 R4 K12 ["error"]
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 3
       44 JUMPIFNOT                        R3 ; [+4]
       45 GETUPVAL                         R3 3
       46 NAMECALL                         R3 R3 K14 ["Close"]
       48 CALL                             R3 1 0
       49 RETURN                           R0 0

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
        1 GETTABLEKS                       R2 R2 K0 ["convertLLMtoOpenAIMessage"]
        3 GETTABLEKS                       R3 R0 K1 ["messages"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R3 R0 K2 ["system"]
        8 JUMPIFNOT                        R3 ; [+15]
        9 LOADN                            R5 1
       10 DUPTABLE                         R6 K5 [{"role", "content"}]
       11 LOADK                            R7 K2 ["system"]
       12 SETTABLEKS                       R7 R6 K3 ["role"]
       14 GETTABLEKS                       R7 R0 K2 ["system"]
       16 SETTABLEKS                       R7 R6 K4 ["content"]
       18 FASTCALL3                        TABLE_INSERT R2 R5 R6
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K8 [table.insert]
       23 CALL                             R3 3 0
       24 GETTABLEKS                       R4 R0 K9 ["isSubagent"]
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETUPVAL                         R3 1
       28 CALL                             R3 0 1
       29 JUMP                             ; [+2]
       30 GETUPVAL                         R3 2
       31 CALL                             R3 0 1
       32 LOADK                            R4 K10 ["/mnt/models"]
       33 GETTABLEKS                       R5 R0 K11 ["selectedModel"]
       35 JUMPIFNOT                        R5 ; [+6]
       36 GETTABLEKS                       R5 R0 K11 ["selectedModel"]
       38 JUMPIFEQKS                       R5 K12 [""] ; [+3]
       40 GETTABLEKS                       R4 R0 K11 ["selectedModel"]
       42 GETUPVAL                         R5 3
       43 CALL                             R5 0 1
       44 JUMPIFEQKS                       R5 K12 [""] ; [+2]
       46 MOVE                             R4 R5
       47 DUPTABLE                         R6 K20 [{"model", "messages", "tools", "tool_choice", "stream", "parallel_tool_calls", "max_tokens", "stream_options"}]
       48 SETTABLEKS                       R4 R6 K13 ["model"]
       50 SETTABLEKS                       R2 R6 K1 ["messages"]
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R8 R0 K14 ["tools"]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K14 ["tools"]
       58 LOADK                            R7 K21 ["auto"]
       59 SETTABLEKS                       R7 R6 K15 ["tool_choice"]
       61 LOADB                            R7 1
       62 SETTABLEKS                       R7 R6 K16 ["stream"]
       64 LOADB                            R7 0
       65 SETTABLEKS                       R7 R6 K17 ["parallel_tool_calls"]
       67 LOADN                            R7 128
       68 SETTABLEKS                       R7 R6 K18 ["max_tokens"]
       70 DUPTABLE                         R7 K23 [{"include_usage"}]
       71 LOADB                            R8 1
       72 SETTABLEKS                       R8 R7 K22 ["include_usage"]
       74 SETTABLEKS                       R7 R6 K19 ["stream_options"]
       76 GETUPVAL                         R7 5
       77 CALL                             R7 0 1
       78 JUMPIFNOT                        R7 ; [+15]
       79 GETIMPORT                        R7 K25 [print]
       81 LOADK                            R9 K26 ["--- TestLLMRequest requestBody: %*"]
       82 GETUPVAL                         R11 6
       83 GETTABLEKS                       R11 R11 K27 ["Json"]
       85 GETTABLEKS                       R11 R11 K28 ["encode"]
       87 MOVE                             R12 R6
       88 CALL                             R11 1 1
       89 NAMECALL                         R9 R9 K29 ["format"]
       91 CALL                             R9 2 1
       92 MOVE                             R8 R9
       93 CALL                             R7 1 0
       94 GETTABLEKS                       R8 R0 K30 ["apiKeys"]
       96 JUMPIFNOT                        R8 ; [+14]
       97 GETTABLEKS                       R9 R0 K30 ["apiKeys"]
       99 GETUPVAL                         R10 7
      100 GETTABLEKS                       R10 R10 K31 ["OPENAI_API_KEY"]
      102 GETTABLE                         R8 R9 R10
      103 JUMPIFNOT                        R8 ; [+7]
      104 GETTABLEKS                       R8 R0 K30 ["apiKeys"]
      106 GETUPVAL                         R9 7
      107 GETTABLEKS                       R9 R9 K31 ["OPENAI_API_KEY"]
      109 GETTABLE                         R7 R8 R9
      110 JUMP                             ; [+2]
      111 GETUPVAL                         R7 8
      112 CALL                             R7 0 1
      113 LOADNIL                          R8
      114 LOADNIL                          R9
      115 JUMPIFEQKS                       R3 K12 [""] ; [+3]
      117 MOVE                             R8 R3
      118 JUMP                             ; [+1]
      119 LOADK                            R8 K32 ["https://ai-inference-use1-sticky.prod.ml.rbx.com/kubeflow-creator-code/glm47-flash-search-rl/v1/chat/completions"]
      120 NEWTABLE                         R10 1 0
      122 LOADK                            R11 K33 ["application/json"]
      123 SETTABLEKS                       R11 R10 K34 ["content-type"]
      125 MOVE                             R9 R10
      126 JUMPIFEQKS                       R7 K12 [""] ; [+9]
      128 LOADK                            R11 K35 ["Bearer %*"]
      129 MOVE                             R13 R7
      130 NAMECALL                         R11 R11 K29 ["format"]
      132 CALL                             R11 2 1
      133 MOVE                             R10 R11
      134 SETTABLEKS                       R10 R9 K36 ["authorization"]
      136 GETUPVAL                         R10 5
      137 CALL                             R10 0 1
      138 JUMPIFNOT                        R10 ; [+9]
      139 GETIMPORT                        R10 K25 [print]
      141 LOADK                            R12 K37 ["--- TestLLMRequest sending request to: %*"]
      142 MOVE                             R14 R8
      143 NAMECALL                         R12 R12 K29 ["format"]
      145 CALL                             R12 2 1
      146 MOVE                             R11 R12
      147 CALL                             R10 1 0
      148 GETUPVAL                         R10 6
      149 GETTABLEKS                       R10 R10 K27 ["Json"]
      151 GETTABLEKS                       R10 R10 K28 ["encode"]
      153 MOVE                             R11 R6
      154 CALL                             R10 1 1
      155 GETUPVAL                         R11 9
      156 GETTABLEKS                       R11 R11 K38 ["get"]
      158 CALL                             R11 0 1
      159 GETTABLEKS                       R12 R11 K39 ["http"]
      161 GETTABLEKS                       R12 R12 K40 ["createWebStreamClient"]
      163 GETIMPORT                        R13 K44 [Enum.WebStreamClientType.RawStream]
      165 DUPTABLE                         R14 K49 [{"Method", "Url", "Headers", "Body"}]
      166 LOADK                            R15 K50 ["POST"]
      167 SETTABLEKS                       R15 R14 K45 ["Method"]
      169 SETTABLEKS                       R8 R14 K46 ["Url"]
      171 SETTABLEKS                       R9 R14 K47 ["Headers"]
      173 SETTABLEKS                       R10 R14 K48 ["Body"]
      175 CALL                             R12 2 1
      176 FASTCALL2K                       ASSERT R12 K51 ; [+5]
      178 MOVE                             R14 R12
      179 LOADK                            R15 K51 ["WebStreamClient should not be nil"]
      180 GETIMPORT                        R13 K53 [assert]
      182 CALL                             R13 2 0
      183 GETUPVAL                         R13 10
      184 GETTABLEKS                       R13 R13 K54 ["createParser"]
      186 DUPTABLE                         R14 K58 [{"onEvent", "onError", "onComment"}]
      187 NEWCLOSURE                       R15 P0
      188 CAPTURE                          UPVAL U5
      189 CAPTURE                          UPVAL U6
      190 CAPTURE                          UPVAL U11
      191 CAPTURE                          VAL R1
      192 SETTABLEKS                       R15 R14 K55 ["onEvent"]
      194 DUPCLOSURE                       R15 K59 [PROTO_3]
      195 CAPTURE                          UPVAL U5
      196 SETTABLEKS                       R15 R14 K56 ["onError"]
      198 DUPCLOSURE                       R15 K60 [PROTO_4]
      199 CAPTURE                          UPVAL U5
      200 SETTABLEKS                       R15 R14 K57 ["onComment"]
      202 CALL                             R13 1 1
      203 GETTABLEKS                       R14 R12 K61 ["MessageReceived"]
      205 GETTABLEKS                       R16 R13 K62 ["parseNextChunk"]
      207 NAMECALL                         R14 R14 K63 ["Connect"]
      209 CALL                             R14 2 1
      210 GETTABLEKS                       R15 R12 K64 ["Opened"]
      212 NEWCLOSURE                       R17 P3
      213 CAPTURE                          UPVAL U5
      214 CAPTURE                          REF R4
      215 CAPTURE                          VAL R1
      216 CAPTURE                          REF R12
      217 NAMECALL                         R15 R15 K63 ["Connect"]
      219 CALL                             R15 2 1
      220 GETTABLEKS                       R16 R12 K65 ["Closed"]
      222 NEWCLOSURE                       R18 P4
      223 CAPTURE                          UPVAL U5
      224 CAPTURE                          REF R14
      225 CAPTURE                          REF R15
      226 CAPTURE                          REF R12
      227 NAMECALL                         R16 R16 K66 ["Once"]
      229 CALL                             R16 2 0
      230 CLOSEUPVALS                      R4
      231 RETURN                           R0 0

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
       52 GETTABLEKS                       R7 R7 K18 ["FFlagDebugLogAssistantUI"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Flags"]
       59 GETTABLEKS                       R8 R8 K19 ["FStringMCPAssistantCustomModelName"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Flags"]
       66 GETTABLEKS                       R9 R9 K20 ["FStringMCPAssistantTestLLMAPIKey"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K17 ["Flags"]
       73 GETTABLEKS                       R10 R10 K21 ["FStringTestLLMURLOverride"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K17 ["Flags"]
       80 GETTABLEKS                       R11 R11 K22 ["FStringTestSubagentURLOverride"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R3 K23 ["EventStreamParser"]
       85 GETTABLEKS                       R12 R4 K24 ["createAdapter"]
       87 CALL                             R12 0 1
       88 DUPCLOSURE                       R13 K25 [PROTO_0]
       89 DUPCLOSURE                       R14 K26 [PROTO_7]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 DUPTABLE                         R15 K29 [{"requestHandler", "createRequestHandler"}]
      103 SETTABLEKS                       R14 R15 K27 ["requestHandler"]
      105 LOADNIL                          R16
      106 SETTABLEKS                       R16 R15 K28 ["createRequestHandler"]
      108 RETURN                           R15 1
