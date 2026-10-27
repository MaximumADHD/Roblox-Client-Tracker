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
        6 LOADK                            R2 K3 ["--- ClaudeLLMRequest event: %* %* %*"]
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
       23 JUMPIFNOT                        R1 ; [+17]
       24 JUMPIFNOT                        R2 ; [+16]
       25 GETTABLEKS                       R3 R2 K10 ["type"]
       27 JUMPIFNOT                        R3 ; [+13]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R4 R0 K6 ["data"]
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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["--- ClaudeLLMRequest error: %* (%*)"]
        7 GETTABLEKS                       R4 R0 K4 ["message"]
        9 GETTABLEKS                       R5 R0 K5 ["type"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 3 1
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["--- ClaudeLLMRequest comment: %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+15]
        2 GETIMPORT                        R1 K1 [warn]
        4 LOADK                            R2 K2 ["--- ClaudeLLMRequest error response body: %*"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 1
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K4 ["Close"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["parseNextChunk"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+48]
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
       20 JUMPIFNOT                        R2 ; [+28]
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
       44 LOADB                            R5 0
       45 SETUPVAL                         R5 3
       46 GETUPVAL                         R5 4
       47 MOVE                             R6 R4
       48 CALL                             R5 1 0
       49 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["--- ClaudeLLMRequest WebStreamClient closed"]
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

PROTO_7:
        0 LOADK                            R2 K0 ["claude-sonnet-4-5"]
        1 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        6 JUMPIFEQKS                       R3 K2 [""] ; [+4]
        8 GETTABLEKS                       R2 R0 K1 ["selectedModel"]
       10 JUMP                             ; [+6]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K3 ["FStringMCPAssistantCustomModelName"]
       14 JUMPIFEQKS                       R3 K2 [""] ; [+2]
       16 MOVE                             R2 R3
       17 DUPTABLE                         R3 K14 [{["model"], ["max_tokens"] = 64000, ["messages"], ["tools"], ["system"], ["stream"] = True, ["tool_choice"], ["cache_control"]}]
       18 SETTABLEKS                       R2 R3 K4 ["model"]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R5 R0 K7 ["messages"]
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K7 ["messages"]
       26 GETTABLEKS                       R4 R0 K8 ["tools"]
       28 SETTABLEKS                       R4 R3 K8 ["tools"]
       30 NEWTABLE                         R4 0 1
       32 DUPTABLE                         R5 K17 [{["type"] = "text", ["text"]}]
       33 GETTABLEKS                       R6 R0 K9 ["system"]
       35 SETTABLEKS                       R6 R5 K16 ["text"]
       37 SETLIST                          R4 R5 1 [1]
       39 SETTABLEKS                       R4 R3 K9 ["system"]
       41 DUPTABLE                         R4 K20 [{["type"] = "auto", ["disable_parallel_tool_use"] = True}]
       42 SETTABLEKS                       R4 R3 K12 ["tool_choice"]
       44 DUPTABLE                         R4 K22 [{["type"] = "ephemeral"}]
       45 SETTABLEKS                       R4 R3 K13 ["cache_control"]
       47 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       49 JUMPIFNOT                        R5 ; [+14]
       50 GETTABLEKS                       R6 R0 K23 ["apiKeys"]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K24 ["CLAUDE_API_KEY"]
       55 GETTABLE                         R5 R6 R7
       56 JUMPIFNOT                        R5 ; [+7]
       57 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R6 R6 K24 ["CLAUDE_API_KEY"]
       62 GETTABLE                         R4 R5 R6
       63 JUMP                             ; [+3]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K25 ["FStringMCPAssistantClaudeAPIKey"]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K26 ["FFlagDebugLogAssistantUI"]
       70 JUMPIFNOT                        R5 ; [+14]
       71 GETIMPORT                        R5 K28 [print]
       73 LOADK                            R6 K29 ["--- ClaudeLLMRequest requestBody: %*"]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K30 ["Json"]
       77 GETTABLEKS                       R8 R8 K31 ["encode"]
       79 MOVE                             R9 R3
       80 CALL                             R8 1 1
       81 NAMECALL                         R6 R6 K32 ["format"]
       83 CALL                             R6 2 1
       84 CALL                             R5 1 0
       85 GETUPVAL                         R5 3
       86 GETTABLEKS                       R5 R5 K30 ["Json"]
       88 GETTABLEKS                       R5 R5 K31 ["encode"]
       90 MOVE                             R6 R3
       91 CALL                             R5 1 1
       92 GETUPVAL                         R6 4
       93 GETTABLEKS                       R6 R6 K33 ["get"]
       95 CALL                             R6 0 1
       96 GETTABLEKS                       R7 R6 K34 ["http"]
       98 GETTABLEKS                       R7 R7 K35 ["createWebStreamClient"]
      100 GETIMPORT                        R8 K39 [Enum.WebStreamClientType.RawStream]
      102 DUPTABLE                         R9 K46 [{["Method"] = "POST", ["Url"] = "https://api.anthropic.com/v1/messages", ["Headers"], ["Body"]}]
      103 NEWTABLE                         R10 4 0
      105 LOADK                            R11 K47 ["application/json"]
      106 SETTABLEKS                       R11 R10 K48 ["content-type"]
      108 SETTABLEKS                       R4 R10 K49 ["x-api-key"]
      110 LOADK                            R11 K50 ["2023-06-01"]
      111 SETTABLEKS                       R11 R10 K51 ["anthropic-version"]
      113 SETTABLEKS                       R10 R9 K44 ["Headers"]
      115 SETTABLEKS                       R5 R9 K45 ["Body"]
      117 CALL                             R7 2 1
      118 FASTCALL2K                       ASSERT R7 K52 ; [+5]
      120 MOVE                             R9 R7
      121 LOADK                            R10 K52 ["WebStreamClient should not be nil"]
      122 GETIMPORT                        R8 K54 [assert]
      124 CALL                             R8 2 0
      125 GETUPVAL                         R8 5
      126 GETTABLEKS                       R8 R8 K55 ["createParser"]
      128 DUPTABLE                         R9 K59 [{"onEvent", "onError", "onComment"}]
      129 NEWCLOSURE                       R10 P0
      130 CAPTURE                          UPVAL U0
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U6
      133 CAPTURE                          VAL R1
      134 SETTABLEKS                       R10 R9 K56 ["onEvent"]
      136 DUPCLOSURE                       R10 K60 [PROTO_2]
      137 CAPTURE                          UPVAL U0
      138 SETTABLEKS                       R10 R9 K57 ["onError"]
      140 DUPCLOSURE                       R10 K61 [PROTO_3]
      141 CAPTURE                          UPVAL U0
      142 SETTABLEKS                       R10 R9 K58 ["onComment"]
      144 CALL                             R8 1 1
      145 LOADB                            R9 1
      146 GETTABLEKS                       R10 R7 K62 ["MessageReceived"]
      148 NEWCLOSURE                       R12 P3
      149 CAPTURE                          REF R9
      150 CAPTURE                          REF R7
      151 CAPTURE                          VAL R8
      152 NAMECALL                         R10 R10 K63 ["Connect"]
      154 CALL                             R10 2 1
      155 GETTABLEKS                       R11 R7 K64 ["Opened"]
      157 NEWCLOSURE                       R13 P4
      158 CAPTURE                          UPVAL U4
      159 CAPTURE                          VAL R0
      160 CAPTURE                          REF R2
      161 CAPTURE                          REF R9
      162 CAPTURE                          VAL R1
      163 NAMECALL                         R11 R11 K63 ["Connect"]
      165 CALL                             R11 2 1
      166 GETTABLEKS                       R12 R7 K65 ["Closed"]
      168 NEWCLOSURE                       R14 P5
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          REF R10
      171 CAPTURE                          REF R11
      172 CAPTURE                          REF R7
      173 NAMECALL                         R12 R12 K66 ["Once"]
      175 CALL                             R12 2 0
      176 CLOSEUPVALS                      R2
      177 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["Claude"]
       22 GETTABLEKS                       R3 R3 K11 ["ClaudeLLMAdapter"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Guest"]
       29 GETTABLEKS                       R4 R4 K13 ["Environment"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Flags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K15 ["ModelContextProtocol"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Types"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R2 K17 ["createAdapter"]
       51 CALL                             R7 0 1
       52 GETTABLEKS                       R8 R2 K18 ["convertLLMtoClaudeMessage"]
       54 GETTABLEKS                       R9 R5 K19 ["EventStreamParser"]
       56 DUPCLOSURE                       R10 K20 [PROTO_7]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R7
       64 DUPTABLE                         R11 K24 [{["requestHandler"], ["createRequestHandler"] = }]
       65 SETTABLEKS                       R10 R11 K21 ["requestHandler"]
       67 RETURN                           R11 1
