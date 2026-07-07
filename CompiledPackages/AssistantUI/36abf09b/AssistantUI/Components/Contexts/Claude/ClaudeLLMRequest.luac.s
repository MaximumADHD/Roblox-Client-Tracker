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
        6 LOADK                            R3 K3 ["--- ClaudeLLMRequest event: %* %* %*"]
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
       24 JUMPIFNOT                        R1 ; [+17]
       25 JUMPIFNOT                        R2 ; [+16]
       26 GETTABLEKS                       R3 R2 K10 ["type"]
       28 JUMPIFNOT                        R3 ; [+13]
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R4 R0 K6 ["data"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R3
       34 LOADNIL                          R5
       35 LOADNIL                          R6
       36 FORGPREP                         R4
       37 GETUPVAL                         R9 3
       38 MOVE                             R10 R8
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 ; [-4]
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R3 K3 ["--- ClaudeLLMRequest error: %* (%*)"]
        7 GETTABLEKS                       R5 R0 K4 ["message"]
        9 GETTABLEKS                       R6 R0 K5 ["type"]
       11 NAMECALL                         R3 R3 K6 ["format"]
       13 CALL                             R3 3 1
       14 MOVE                             R2 R3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["--- ClaudeLLMRequest comment: %*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
       70 JUMPIFNOT                        R5 ; [+15]
       71 GETIMPORT                        R5 K28 [print]
       73 LOADK                            R7 K29 ["--- ClaudeLLMRequest requestBody: %*"]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K30 ["Json"]
       77 GETTABLEKS                       R9 R9 K31 ["encode"]
       79 MOVE                             R10 R3
       80 CALL                             R9 1 1
       81 NAMECALL                         R7 R7 K32 ["format"]
       83 CALL                             R7 2 1
       84 MOVE                             R6 R7
       85 CALL                             R5 1 0
       86 GETUPVAL                         R5 3
       87 GETTABLEKS                       R5 R5 K30 ["Json"]
       89 GETTABLEKS                       R5 R5 K31 ["encode"]
       91 MOVE                             R6 R3
       92 CALL                             R5 1 1
       93 GETUPVAL                         R6 4
       94 GETTABLEKS                       R6 R6 K33 ["get"]
       96 CALL                             R6 0 1
       97 GETTABLEKS                       R7 R6 K34 ["http"]
       99 GETTABLEKS                       R7 R7 K35 ["createWebStreamClient"]
      101 GETIMPORT                        R8 K39 [Enum.WebStreamClientType.RawStream]
      103 DUPTABLE                         R9 K46 [{["Method"] = "POST", ["Url"] = "https://api.anthropic.com/v1/messages", ["Headers"], ["Body"]}]
      104 NEWTABLE                         R10 4 0
      106 LOADK                            R11 K47 ["application/json"]
      107 SETTABLEKS                       R11 R10 K48 ["content-type"]
      109 SETTABLEKS                       R4 R10 K49 ["x-api-key"]
      111 LOADK                            R11 K50 ["2023-06-01"]
      112 SETTABLEKS                       R11 R10 K51 ["anthropic-version"]
      114 SETTABLEKS                       R10 R9 K44 ["Headers"]
      116 SETTABLEKS                       R5 R9 K45 ["Body"]
      118 CALL                             R7 2 1
      119 FASTCALL2K                       ASSERT R7 K52 ; [+5]
      121 MOVE                             R9 R7
      122 LOADK                            R10 K52 ["WebStreamClient should not be nil"]
      123 GETIMPORT                        R8 K54 [assert]
      125 CALL                             R8 2 0
      126 GETUPVAL                         R8 5
      127 GETTABLEKS                       R8 R8 K55 ["createParser"]
      129 DUPTABLE                         R9 K59 [{"onEvent", "onError", "onComment"}]
      130 NEWCLOSURE                       R10 P0
      131 CAPTURE                          UPVAL U0
      132 CAPTURE                          UPVAL U3
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R10 R9 K56 ["onEvent"]
      137 DUPCLOSURE                       R10 K60 [PROTO_2]
      138 CAPTURE                          UPVAL U0
      139 SETTABLEKS                       R10 R9 K57 ["onError"]
      141 DUPCLOSURE                       R10 K61 [PROTO_3]
      142 CAPTURE                          UPVAL U0
      143 SETTABLEKS                       R10 R9 K58 ["onComment"]
      145 CALL                             R8 1 1
      146 LOADB                            R9 1
      147 GETTABLEKS                       R10 R7 K62 ["MessageReceived"]
      149 NEWCLOSURE                       R12 P3
      150 CAPTURE                          REF R9
      151 CAPTURE                          REF R7
      152 CAPTURE                          VAL R8
      153 NAMECALL                         R10 R10 K63 ["Connect"]
      155 CALL                             R10 2 1
      156 GETTABLEKS                       R11 R7 K64 ["Opened"]
      158 NEWCLOSURE                       R13 P4
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R0
      161 CAPTURE                          REF R2
      162 CAPTURE                          REF R9
      163 CAPTURE                          VAL R1
      164 NAMECALL                         R11 R11 K63 ["Connect"]
      166 CALL                             R11 2 1
      167 GETTABLEKS                       R12 R7 K65 ["Closed"]
      169 NEWCLOSURE                       R14 P5
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          REF R10
      172 CAPTURE                          REF R11
      173 CAPTURE                          REF R7
      174 NAMECALL                         R12 R12 K66 ["Once"]
      176 CALL                             R12 2 0
      177 CLOSEUPVALS                      R2
      178 RETURN                           R0 0

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
       27 GETTABLEKS                       R4 R0 K12 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["DefaultLLMProvider"]
       38 GETTABLEKS                       R5 R5 K14 ["LLMRequest"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["ModelContextProtocol"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K17 ["Types"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K18 ["createAdapter"]
       55 CALL                             R7 0 1
       56 GETTABLEKS                       R8 R1 K19 ["convertLLMtoClaudeMessage"]
       58 GETTABLEKS                       R9 R5 K20 ["EventStreamParser"]
       60 DUPCLOSURE                       R10 K21 [PROTO_7]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R7
       68 DUPTABLE                         R11 K25 [{["requestHandler"], ["createRequestHandler"] = }]
       69 SETTABLEKS                       R10 R11 K22 ["requestHandler"]
       71 RETURN                           R11 1
