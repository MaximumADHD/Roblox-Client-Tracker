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
        5 LOADK                            R3 K2 ["--- ClaudeLLMRequest event: %* %* %*"]
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
       23 JUMPIFNOT                        R1 ; [+17]
       24 JUMPIFNOT                        R2 ; [+16]
       25 GETTABLEKS                       R3 R2 K9 ["type"]
       27 JUMPIFNOT                        R3 ; [+13]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R4 R0 K5 ["data"]
       31 CALL                             R3 1 1
       32 MOVE                             R4 R3
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETUPVAL                         R9 3
       37 MOVE                             R10 R8
       38 CALL                             R9 1 0
       39 FORGLOOP                         R4 2 ; [-4]
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETIMPORT                        R1 K1 [warn]
        5 LOADK                            R3 K2 ["--- ClaudeLLMRequest error: %* (%*)"]
        6 GETTABLEKS                       R5 R0 K3 ["message"]
        8 GETTABLEKS                       R6 R0 K4 ["type"]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETIMPORT                        R1 K1 [print]
        5 LOADK                            R3 K2 ["--- ClaudeLLMRequest comment: %*"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+16]
        2 GETIMPORT                        R1 K1 [warn]
        4 LOADK                            R3 K2 ["--- ClaudeLLMRequest error response body: %*"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 1
       14 NAMECALL                         R1 R1 K4 ["Close"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K5 ["parseNextChunk"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+56]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R4 K3 ["WebStreamClient opened with error code: %*"]
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K4 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 JUMPIFNOTEQKN                    R0 K5 [400] ; [+3]
       14 LOADK                            R2 K6 ["external_connection_general_error"]
       15 JUMP                             ; [+9]
       16 JUMPIFNOTEQKN                    R0 K7 [401] ; [+3]
       18 LOADK                            R2 K8 ["external_connection_unauthorized_error"]
       19 JUMP                             ; [+5]
       20 JUMPIFNOTEQKN                    R0 K9 [429] ; [+3]
       22 LOADK                            R2 K10 ["external_connection_quota_exceeded_error"]
       23 JUMP                             ; [+1]
       24 LOADK                            R2 K6 ["external_connection_general_error"]
       25 JUMPIFNOT                        R2 ; [+31]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K11 ["get"]
       29 CALL                             R4 0 1
       30 GETTABLEKS                       R3 R4 K12 ["EventLogger"]
       32 GETTABLEKS                       R4 R3 K13 ["logExternalAPIError"]
       34 DUPTABLE                         R5 K17 [{"messageGuid", "model", "statusCode"}]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R6 R7 K14 ["messageGuid"]
       38 SETTABLEKS                       R6 R5 K14 ["messageGuid"]
       40 GETUPVAL                         R6 2
       41 SETTABLEKS                       R6 R5 K15 ["model"]
       43 SETTABLEKS                       R0 R5 K16 ["statusCode"]
       45 CALL                             R4 1 0
       46 DUPTABLE                         R4 K20 [{"type", "error"}]
       47 LOADK                            R5 K19 ["error"]
       48 SETTABLEKS                       R5 R4 K18 ["type"]
       50 SETTABLEKS                       R2 R4 K19 ["error"]
       52 LOADB                            R5 0
       53 SETUPVAL                         R5 3
       54 GETUPVAL                         R5 4
       55 MOVE                             R6 R4
       56 CALL                             R5 1 0
       57 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- ClaudeLLMRequest WebStreamClient closed"]
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

PROTO_7:
        0 LOADK                            R2 K0 ["claude-sonnet-4-5"]
        1 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        6 JUMPIFEQKS                       R3 K2 [""] ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["selectedModel"]
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R3 0
       12 CALL                             R3 0 1
       13 JUMPIFEQKS                       R3 K2 [""] ; [+2]
       15 MOVE                             R2 R3
       16 DUPTABLE                         R3 K11 [{"model", "max_tokens", "messages", "tools", "system", "stream", "tool_choice", "cache_control"}]
       17 SETTABLEKS                       R2 R3 K3 ["model"]
       19 LOADK                            R4 K12 [64000]
       20 SETTABLEKS                       R4 R3 K4 ["max_tokens"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R5 R0 K5 ["messages"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K5 ["messages"]
       28 GETTABLEKS                       R4 R0 K6 ["tools"]
       30 SETTABLEKS                       R4 R3 K6 ["tools"]
       32 NEWTABLE                         R4 0 1
       34 DUPTABLE                         R5 K15 [{"type", "text", "cache_control"}]
       35 LOADK                            R6 K14 ["text"]
       36 SETTABLEKS                       R6 R5 K13 ["type"]
       38 GETTABLEKS                       R6 R0 K7 ["system"]
       40 SETTABLEKS                       R6 R5 K14 ["text"]
       42 GETUPVAL                         R7 2
       43 CALL                             R7 0 1
       44 JUMPIF                           R7 ; [+5]
       45 DUPTABLE                         R6 K16 [{"type"}]
       46 LOADK                            R7 K17 ["ephemeral"]
       47 SETTABLEKS                       R7 R6 K13 ["type"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K10 ["cache_control"]
       53 SETLIST                          R4 R5 1 [1]
       55 SETTABLEKS                       R4 R3 K7 ["system"]
       57 LOADB                            R4 1
       58 SETTABLEKS                       R4 R3 K8 ["stream"]
       60 DUPTABLE                         R4 K19 [{"type", "disable_parallel_tool_use"}]
       61 LOADK                            R5 K20 ["auto"]
       62 SETTABLEKS                       R5 R4 K13 ["type"]
       64 LOADB                            R5 1
       65 SETTABLEKS                       R5 R4 K18 ["disable_parallel_tool_use"]
       67 SETTABLEKS                       R4 R3 K9 ["tool_choice"]
       69 GETUPVAL                         R5 2
       70 CALL                             R5 0 1
       71 JUMPIFNOT                        R5 ; [+5]
       72 DUPTABLE                         R4 K16 [{"type"}]
       73 LOADK                            R5 K17 ["ephemeral"]
       74 SETTABLEKS                       R5 R4 K13 ["type"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R4
       78 SETTABLEKS                       R4 R3 K10 ["cache_control"]
       80 GETTABLEKS                       R5 R0 K21 ["apiKeys"]
       82 JUMPIFNOT                        R5 ; [+14]
       83 GETTABLEKS                       R6 R0 K21 ["apiKeys"]
       85 GETUPVAL                         R8 3
       86 GETTABLEKS                       R7 R8 K22 ["CLAUDE_API_KEY"]
       88 GETTABLE                         R5 R6 R7
       89 JUMPIFNOT                        R5 ; [+7]
       90 GETTABLEKS                       R5 R0 K21 ["apiKeys"]
       92 GETUPVAL                         R7 3
       93 GETTABLEKS                       R6 R7 K22 ["CLAUDE_API_KEY"]
       95 GETTABLE                         R4 R5 R6
       96 JUMP                             ; [+2]
       97 GETUPVAL                         R4 4
       98 CALL                             R4 0 1
       99 GETUPVAL                         R5 5
      100 CALL                             R5 0 1
      101 JUMPIFNOT                        R5 ; [+15]
      102 GETIMPORT                        R5 K24 [print]
      104 LOADK                            R7 K25 ["--- ClaudeLLMRequest requestBody: %*"]
      105 GETUPVAL                         R11 6
      106 GETTABLEKS                       R10 R11 K26 ["Json"]
      108 GETTABLEKS                       R9 R10 K27 ["encode"]
      110 MOVE                             R10 R3
      111 CALL                             R9 1 1
      112 NAMECALL                         R7 R7 K28 ["format"]
      114 CALL                             R7 2 1
      115 MOVE                             R6 R7
      116 CALL                             R5 1 0
      117 GETUPVAL                         R7 6
      118 GETTABLEKS                       R6 R7 K26 ["Json"]
      120 GETTABLEKS                       R5 R6 K27 ["encode"]
      122 MOVE                             R6 R3
      123 CALL                             R5 1 1
      124 GETUPVAL                         R7 7
      125 GETTABLEKS                       R6 R7 K29 ["get"]
      127 CALL                             R6 0 1
      128 GETTABLEKS                       R8 R6 K30 ["http"]
      130 GETTABLEKS                       R7 R8 K31 ["createWebStreamClient"]
      132 GETIMPORT                        R8 K35 [Enum.WebStreamClientType.RawStream]
      134 DUPTABLE                         R9 K40 [{"Method", "Url", "Headers", "Body"}]
      135 LOADK                            R10 K41 ["POST"]
      136 SETTABLEKS                       R10 R9 K36 ["Method"]
      138 LOADK                            R10 K42 ["https://api.anthropic.com/v1/messages"]
      139 SETTABLEKS                       R10 R9 K37 ["Url"]
      141 NEWTABLE                         R10 4 0
      143 LOADK                            R11 K43 ["application/json"]
      144 SETTABLEKS                       R11 R10 K44 ["content-type"]
      146 SETTABLEKS                       R4 R10 K45 ["x-api-key"]
      148 LOADK                            R11 K46 ["2023-06-01"]
      149 SETTABLEKS                       R11 R10 K47 ["anthropic-version"]
      151 SETTABLEKS                       R10 R9 K38 ["Headers"]
      153 SETTABLEKS                       R5 R9 K39 ["Body"]
      155 CALL                             R7 2 1
      156 FASTCALL2K                       ASSERT R7 K48 ; [+5]
      158 MOVE                             R9 R7
      159 LOADK                            R10 K48 ["WebStreamClient should not be nil"]
      160 GETIMPORT                        R8 K50 [assert]
      162 CALL                             R8 2 0
      163 GETUPVAL                         R9 8
      164 GETTABLEKS                       R8 R9 K51 ["createParser"]
      166 DUPTABLE                         R9 K55 [{"onEvent", "onError", "onComment"}]
      167 NEWCLOSURE                       R10 P0
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          UPVAL U6
      170 CAPTURE                          UPVAL U9
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R10 R9 K52 ["onEvent"]
      174 DUPCLOSURE                       R10 K56 [PROTO_2]
      175 CAPTURE                          UPVAL U5
      176 SETTABLEKS                       R10 R9 K53 ["onError"]
      178 DUPCLOSURE                       R10 K57 [PROTO_3]
      179 CAPTURE                          UPVAL U5
      180 SETTABLEKS                       R10 R9 K54 ["onComment"]
      182 CALL                             R8 1 1
      183 LOADB                            R9 1
      184 GETTABLEKS                       R10 R7 K58 ["MessageReceived"]
      186 NEWCLOSURE                       R12 P3
      187 CAPTURE                          REF R9
      188 CAPTURE                          REF R7
      189 CAPTURE                          VAL R8
      190 NAMECALL                         R10 R10 K59 ["Connect"]
      192 CALL                             R10 2 1
      193 GETTABLEKS                       R11 R7 K60 ["Opened"]
      195 NEWCLOSURE                       R13 P4
      196 CAPTURE                          UPVAL U7
      197 CAPTURE                          VAL R0
      198 CAPTURE                          REF R2
      199 CAPTURE                          REF R9
      200 CAPTURE                          VAL R1
      201 NAMECALL                         R11 R11 K59 ["Connect"]
      203 CALL                             R11 2 1
      204 GETTABLEKS                       R12 R7 K61 ["Closed"]
      206 NEWCLOSURE                       R14 P5
      207 CAPTURE                          UPVAL U5
      208 CAPTURE                          REF R10
      209 CAPTURE                          REF R11
      210 CAPTURE                          REF R7
      211 NAMECALL                         R12 R12 K62 ["Once"]
      213 CALL                             R12 2 0
      214 CLOSEUPVALS                      R2
      215 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       13 GETTABLEKS                       R3 R4 K8 ["Claude"]
       15 GETTABLEKS                       R2 R3 K9 ["ClaudeLLMAdapter"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Guest"]
       22 GETTABLEKS                       R3 R4 K11 ["Environment"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Components"]
       29 GETTABLEKS                       R6 R7 K7 ["Contexts"]
       31 GETTABLEKS                       R5 R6 K12 ["DefaultLLMProvider"]
       33 GETTABLEKS                       R4 R5 K13 ["LLMRequest"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K14 ["Parent"]
       40 GETTABLEKS                       R5 R6 K15 ["ModelContextProtocol"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K16 ["Types"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R8 R0 K17 ["Flags"]
       52 GETTABLEKS                       R7 R8 K18 ["FFlagBYOKEnableCaching"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R9 R0 K17 ["Flags"]
       59 GETTABLEKS                       R8 R9 K19 ["FFlagDebugLogAssistantUI"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R10 R0 K17 ["Flags"]
       66 GETTABLEKS                       R9 R10 K20 ["FStringMCPAssistantClaudeAPIKey"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R11 R0 K17 ["Flags"]
       73 GETTABLEKS                       R10 R11 K21 ["FStringMCPAssistantCustomModelName"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R1 K22 ["createAdapter"]
       78 CALL                             R10 0 1
       79 GETTABLEKS                       R11 R1 K23 ["convertLLMtoClaudeMessage"]
       81 GETTABLEKS                       R12 R4 K24 ["EventStreamParser"]
       83 DUPCLOSURE                       R13 K25 [PROTO_7]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R10
       94 DUPTABLE                         R14 K28 [{"requestHandler", "createRequestHandler"}]
       95 SETTABLEKS                       R13 R14 K26 ["requestHandler"]
       97 LOADNIL                          R15
       98 SETTABLEKS                       R15 R14 K27 ["createRequestHandler"]
      100 RETURN                           R14 1
