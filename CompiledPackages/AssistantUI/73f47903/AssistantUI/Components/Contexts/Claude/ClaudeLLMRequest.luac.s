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
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K5 ["parseNextChunk"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+49]
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
       21 JUMPIFNOT                        R2 ; [+28]
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
       45 LOADB                            R5 0
       46 SETUPVAL                         R5 3
       47 GETUPVAL                         R5 4
       48 MOVE                             R6 R4
       49 CALL                             R5 1 0
       50 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- ClaudeLLMRequest WebStreamClient closed"]
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
       16 DUPTABLE                         R3 K13 [{["model"], ["max_tokens"] = 64000, ["messages"], ["tools"], ["system"], ["stream"] = True, ["tool_choice"], ["cache_control"]}]
       17 SETTABLEKS                       R2 R3 K3 ["model"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R5 R0 K6 ["messages"]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K6 ["messages"]
       25 GETTABLEKS                       R4 R0 K7 ["tools"]
       27 SETTABLEKS                       R4 R3 K7 ["tools"]
       29 NEWTABLE                         R4 0 1
       31 DUPTABLE                         R5 K16 [{["type"] = "text", ["text"]}]
       32 GETTABLEKS                       R6 R0 K8 ["system"]
       34 SETTABLEKS                       R6 R5 K15 ["text"]
       36 SETLIST                          R4 R5 1 [1]
       38 SETTABLEKS                       R4 R3 K8 ["system"]
       40 DUPTABLE                         R4 K19 [{["type"] = "auto", ["disable_parallel_tool_use"] = True}]
       41 SETTABLEKS                       R4 R3 K11 ["tool_choice"]
       43 DUPTABLE                         R4 K21 [{["type"] = "ephemeral"}]
       44 SETTABLEKS                       R4 R3 K12 ["cache_control"]
       46 GETTABLEKS                       R5 R0 K22 ["apiKeys"]
       48 JUMPIFNOT                        R5 ; [+14]
       49 GETTABLEKS                       R6 R0 K22 ["apiKeys"]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R7 R7 K23 ["CLAUDE_API_KEY"]
       54 GETTABLE                         R5 R6 R7
       55 JUMPIFNOT                        R5 ; [+7]
       56 GETTABLEKS                       R5 R0 K22 ["apiKeys"]
       58 GETUPVAL                         R6 2
       59 GETTABLEKS                       R6 R6 K23 ["CLAUDE_API_KEY"]
       61 GETTABLE                         R4 R5 R6
       62 JUMP                             ; [+2]
       63 GETUPVAL                         R4 3
       64 CALL                             R4 0 1
       65 GETUPVAL                         R5 4
       66 CALL                             R5 0 1
       67 JUMPIFNOT                        R5 ; [+15]
       68 GETIMPORT                        R5 K25 [print]
       70 LOADK                            R7 K26 ["--- ClaudeLLMRequest requestBody: %*"]
       71 GETUPVAL                         R9 5
       72 GETTABLEKS                       R9 R9 K27 ["Json"]
       74 GETTABLEKS                       R9 R9 K28 ["encode"]
       76 MOVE                             R10 R3
       77 CALL                             R9 1 1
       78 NAMECALL                         R7 R7 K29 ["format"]
       80 CALL                             R7 2 1
       81 MOVE                             R6 R7
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 5
       84 GETTABLEKS                       R5 R5 K27 ["Json"]
       86 GETTABLEKS                       R5 R5 K28 ["encode"]
       88 MOVE                             R6 R3
       89 CALL                             R5 1 1
       90 GETUPVAL                         R6 6
       91 GETTABLEKS                       R6 R6 K30 ["get"]
       93 CALL                             R6 0 1
       94 GETTABLEKS                       R7 R6 K31 ["http"]
       96 GETTABLEKS                       R7 R7 K32 ["createWebStreamClient"]
       98 GETIMPORT                        R8 K36 [Enum.WebStreamClientType.RawStream]
      100 DUPTABLE                         R9 K43 [{["Method"] = "POST", ["Url"] = "https://api.anthropic.com/v1/messages", ["Headers"], ["Body"]}]
      101 NEWTABLE                         R10 4 0
      103 LOADK                            R11 K44 ["application/json"]
      104 SETTABLEKS                       R11 R10 K45 ["content-type"]
      106 SETTABLEKS                       R4 R10 K46 ["x-api-key"]
      108 LOADK                            R11 K47 ["2023-06-01"]
      109 SETTABLEKS                       R11 R10 K48 ["anthropic-version"]
      111 SETTABLEKS                       R10 R9 K41 ["Headers"]
      113 SETTABLEKS                       R5 R9 K42 ["Body"]
      115 CALL                             R7 2 1
      116 FASTCALL2K                       ASSERT R7 K49 ; [+5]
      118 MOVE                             R9 R7
      119 LOADK                            R10 K49 ["WebStreamClient should not be nil"]
      120 GETIMPORT                        R8 K51 [assert]
      122 CALL                             R8 2 0
      123 GETUPVAL                         R8 7
      124 GETTABLEKS                       R8 R8 K52 ["createParser"]
      126 DUPTABLE                         R9 K56 [{"onEvent", "onError", "onComment"}]
      127 NEWCLOSURE                       R10 P0
      128 CAPTURE                          UPVAL U4
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          VAL R1
      132 SETTABLEKS                       R10 R9 K53 ["onEvent"]
      134 DUPCLOSURE                       R10 K57 [PROTO_2]
      135 CAPTURE                          UPVAL U4
      136 SETTABLEKS                       R10 R9 K54 ["onError"]
      138 DUPCLOSURE                       R10 K58 [PROTO_3]
      139 CAPTURE                          UPVAL U4
      140 SETTABLEKS                       R10 R9 K55 ["onComment"]
      142 CALL                             R8 1 1
      143 LOADB                            R9 1
      144 GETTABLEKS                       R10 R7 K59 ["MessageReceived"]
      146 NEWCLOSURE                       R12 P3
      147 CAPTURE                          REF R9
      148 CAPTURE                          REF R7
      149 CAPTURE                          VAL R8
      150 NAMECALL                         R10 R10 K60 ["Connect"]
      152 CALL                             R10 2 1
      153 GETTABLEKS                       R11 R7 K61 ["Opened"]
      155 NEWCLOSURE                       R13 P4
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          VAL R0
      158 CAPTURE                          REF R2
      159 CAPTURE                          REF R9
      160 CAPTURE                          VAL R1
      161 NAMECALL                         R11 R11 K60 ["Connect"]
      163 CALL                             R11 2 1
      164 GETTABLEKS                       R12 R7 K62 ["Closed"]
      166 NEWCLOSURE                       R14 P5
      167 CAPTURE                          UPVAL U4
      168 CAPTURE                          REF R10
      169 CAPTURE                          REF R11
      170 CAPTURE                          REF R7
      171 NAMECALL                         R12 R12 K63 ["Once"]
      173 CALL                             R12 2 0
      174 CLOSEUPVALS                      R2
      175 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["Claude"]
       15 GETTABLEKS                       R2 R2 K9 ["ClaudeLLMAdapter"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Guest"]
       22 GETTABLEKS                       R3 R3 K11 ["Environment"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Components"]
       29 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K12 ["DefaultLLMProvider"]
       33 GETTABLEKS                       R4 R4 K13 ["LLMRequest"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K14 ["Parent"]
       40 GETTABLEKS                       R5 R5 K15 ["ModelContextProtocol"]
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
       59 GETTABLEKS                       R8 R8 K19 ["FStringMCPAssistantClaudeAPIKey"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Flags"]
       66 GETTABLEKS                       R9 R9 K20 ["FStringMCPAssistantCustomModelName"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R1 K21 ["createAdapter"]
       71 CALL                             R9 0 1
       72 GETTABLEKS                       R10 R1 K22 ["convertLLMtoClaudeMessage"]
       74 GETTABLEKS                       R11 R4 K23 ["EventStreamParser"]
       76 DUPCLOSURE                       R12 K24 [PROTO_7]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R9
       86 DUPTABLE                         R13 K28 [{["requestHandler"], ["createRequestHandler"] = }]
       87 SETTABLEKS                       R12 R13 K25 ["requestHandler"]
       89 RETURN                           R13 1
