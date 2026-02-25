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
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R1 1 2
       25 JUMPIFNOT                        R1 ; [+17]
       26 JUMPIFNOT                        R2 ; [+16]
       27 GETTABLEKS                       R3 R2 K9 ["type"]
       29 JUMPIFNOT                        R3 ; [+13]
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R4 R0 K5 ["data"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R3
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 GETUPVAL                         R9 5
       39 MOVE                             R10 R8
       40 CALL                             R9 1 0
       41 FORGLOOP                         R4 2 ; [-4]
       43 RETURN                           R0 0

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
        0 JUMPIFEQKN                       R0 K0 [200] ; [+58]
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
       25 JUMPIFNOT                        R2 ; [+33]
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
       52 GETUPVAL                         R5 3
       53 MOVE                             R6 R4
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 4
       56 NAMECALL                         R5 R5 K21 ["Close"]
       58 CALL                             R5 1 0
       59 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 LOADK                            R2 K0 ["claude-sonnet-4-5"]
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        6 JUMPIFNOT                        R3 ; [+7]
        7 GETTABLEKS                       R3 R0 K1 ["selectedModel"]
        9 JUMPIFEQKS                       R3 K2 [""] ; [+4]
       11 GETTABLEKS                       R2 R0 K1 ["selectedModel"]
       13 JUMP                             ; [+5]
       14 GETUPVAL                         R3 1
       15 CALL                             R3 0 1
       16 JUMPIFEQKS                       R3 K2 [""] ; [+2]
       18 MOVE                             R2 R3
       19 DUPTABLE                         R3 K10 [{"model", "max_tokens", "messages", "tools", "system", "stream", "tool_choice"}]
       20 SETTABLEKS                       R2 R3 K3 ["model"]
       22 LOADK                            R4 K11 [64000]
       23 SETTABLEKS                       R4 R3 K4 ["max_tokens"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R5 R0 K5 ["messages"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["messages"]
       31 GETTABLEKS                       R4 R0 K6 ["tools"]
       33 SETTABLEKS                       R4 R3 K6 ["tools"]
       35 NEWTABLE                         R4 0 1
       37 DUPTABLE                         R5 K15 [{"type", "text", "cache_control"}]
       38 LOADK                            R6 K13 ["text"]
       39 SETTABLEKS                       R6 R5 K12 ["type"]
       41 GETTABLEKS                       R6 R0 K7 ["system"]
       43 SETTABLEKS                       R6 R5 K13 ["text"]
       45 DUPTABLE                         R6 K16 [{"type"}]
       46 LOADK                            R7 K17 ["ephemeral"]
       47 SETTABLEKS                       R7 R6 K12 ["type"]
       49 SETTABLEKS                       R6 R5 K14 ["cache_control"]
       51 SETLIST                          R4 R5 1 [1]
       53 SETTABLEKS                       R4 R3 K7 ["system"]
       55 LOADB                            R4 1
       56 SETTABLEKS                       R4 R3 K8 ["stream"]
       58 DUPTABLE                         R4 K19 [{"type", "disable_parallel_tool_use"}]
       59 LOADK                            R5 K20 ["auto"]
       60 SETTABLEKS                       R5 R4 K12 ["type"]
       62 LOADB                            R5 1
       63 SETTABLEKS                       R5 R4 K18 ["disable_parallel_tool_use"]
       65 SETTABLEKS                       R4 R3 K9 ["tool_choice"]
       67 GETUPVAL                         R5 0
       68 CALL                             R5 0 1
       69 JUMPIFNOT                        R5 ; [+17]
       70 GETTABLEKS                       R5 R0 K21 ["apiKeys"]
       72 JUMPIFNOT                        R5 ; [+14]
       73 GETTABLEKS                       R6 R0 K21 ["apiKeys"]
       75 GETUPVAL                         R8 3
       76 GETTABLEKS                       R7 R8 K22 ["CLAUDE_API_KEY"]
       78 GETTABLE                         R5 R6 R7
       79 JUMPIFNOT                        R5 ; [+7]
       80 GETTABLEKS                       R5 R0 K21 ["apiKeys"]
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R6 R7 K22 ["CLAUDE_API_KEY"]
       85 GETTABLE                         R4 R5 R6
       86 JUMP                             ; [+2]
       87 GETUPVAL                         R4 4
       88 CALL                             R4 0 1
       89 GETUPVAL                         R5 5
       90 CALL                             R5 0 1
       91 JUMPIFNOT                        R5 ; [+32]
       92 GETUPVAL                         R5 6
       93 CALL                             R5 0 1
       94 JUMPIFNOT                        R5 ; [+16]
       95 GETIMPORT                        R5 K24 [print]
       97 LOADK                            R7 K25 ["--- ClaudeLLMRequest requestBody: %*"]
       98 GETUPVAL                         R11 7
       99 GETTABLEKS                       R10 R11 K26 ["Json"]
      101 GETTABLEKS                       R9 R10 K27 ["encode"]
      103 MOVE                             R10 R3
      104 CALL                             R9 1 1
      105 NAMECALL                         R7 R7 K28 ["format"]
      107 CALL                             R7 2 1
      108 MOVE                             R6 R7
      109 CALL                             R5 1 0
      110 JUMP                             ; [+13]
      111 GETIMPORT                        R5 K24 [print]
      113 LOADK                            R7 K25 ["--- ClaudeLLMRequest requestBody: %*"]
      114 GETUPVAL                         R9 8
      115 MOVE                             R11 R3
      116 NAMECALL                         R9 R9 K29 ["JSONEncode"]
      118 CALL                             R9 2 1
      119 NAMECALL                         R7 R7 K28 ["format"]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 CALL                             R5 1 0
      124 LOADNIL                          R5
      125 GETUPVAL                         R6 6
      126 CALL                             R6 0 1
      127 JUMPIFNOT                        R6 ; [+9]
      128 GETUPVAL                         R8 7
      129 GETTABLEKS                       R7 R8 K26 ["Json"]
      131 GETTABLEKS                       R6 R7 K27 ["encode"]
      133 MOVE                             R7 R3
      134 CALL                             R6 1 1
      135 MOVE                             R5 R6
      136 JUMP                             ; [+6]
      137 GETUPVAL                         R6 8
      138 MOVE                             R8 R3
      139 NAMECALL                         R6 R6 K29 ["JSONEncode"]
      141 CALL                             R6 2 1
      142 MOVE                             R5 R6
      143 GETUPVAL                         R7 9
      144 GETTABLEKS                       R6 R7 K30 ["get"]
      146 CALL                             R6 0 1
      147 GETTABLEKS                       R8 R6 K31 ["http"]
      149 GETTABLEKS                       R7 R8 K32 ["createWebStreamClient"]
      151 GETIMPORT                        R8 K36 [Enum.WebStreamClientType.RawStream]
      153 DUPTABLE                         R9 K41 [{"Method", "Url", "Headers", "Body"}]
      154 LOADK                            R10 K42 ["POST"]
      155 SETTABLEKS                       R10 R9 K37 ["Method"]
      157 LOADK                            R10 K43 ["https://api.anthropic.com/v1/messages"]
      158 SETTABLEKS                       R10 R9 K38 ["Url"]
      160 NEWTABLE                         R10 4 0
      162 LOADK                            R11 K44 ["application/json"]
      163 SETTABLEKS                       R11 R10 K45 ["content-type"]
      165 SETTABLEKS                       R4 R10 K46 ["x-api-key"]
      167 LOADK                            R11 K47 ["2023-06-01"]
      168 SETTABLEKS                       R11 R10 K48 ["anthropic-version"]
      170 SETTABLEKS                       R10 R9 K39 ["Headers"]
      172 SETTABLEKS                       R5 R9 K40 ["Body"]
      174 CALL                             R7 2 1
      175 FASTCALL2K                       ASSERT R7 K49 ; [+5]
      177 MOVE                             R9 R7
      178 LOADK                            R10 K49 ["WebStreamClient should not be nil"]
      179 GETIMPORT                        R8 K51 [assert]
      181 CALL                             R8 2 0
      182 GETUPVAL                         R9 10
      183 GETTABLEKS                       R8 R9 K52 ["createParser"]
      185 DUPTABLE                         R9 K56 [{"onEvent", "onError", "onComment"}]
      186 NEWCLOSURE                       R10 P0
      187 CAPTURE                          UPVAL U5
      188 CAPTURE                          UPVAL U6
      189 CAPTURE                          UPVAL U7
      190 CAPTURE                          UPVAL U8
      191 CAPTURE                          UPVAL U11
      192 CAPTURE                          VAL R1
      193 SETTABLEKS                       R10 R9 K53 ["onEvent"]
      195 DUPCLOSURE                       R10 K57 [PROTO_2]
      196 CAPTURE                          UPVAL U5
      197 SETTABLEKS                       R10 R9 K54 ["onError"]
      199 DUPCLOSURE                       R10 K58 [PROTO_3]
      200 CAPTURE                          UPVAL U5
      201 SETTABLEKS                       R10 R9 K55 ["onComment"]
      203 CALL                             R8 1 1
      204 GETTABLEKS                       R9 R7 K59 ["MessageReceived"]
      206 GETTABLEKS                       R11 R8 K60 ["parseNextChunk"]
      208 NAMECALL                         R9 R9 K61 ["Connect"]
      210 CALL                             R9 2 1
      211 GETTABLEKS                       R10 R7 K62 ["Opened"]
      213 NEWCLOSURE                       R12 P3
      214 CAPTURE                          UPVAL U9
      215 CAPTURE                          VAL R0
      216 CAPTURE                          REF R2
      217 CAPTURE                          VAL R1
      218 CAPTURE                          REF R7
      219 NAMECALL                         R10 R10 K61 ["Connect"]
      221 CALL                             R10 2 1
      222 GETTABLEKS                       R11 R7 K63 ["Closed"]
      224 NEWCLOSURE                       R13 P4
      225 CAPTURE                          UPVAL U5
      226 CAPTURE                          REF R9
      227 CAPTURE                          REF R10
      228 CAPTURE                          REF R7
      229 NAMECALL                         R11 R11 K64 ["Once"]
      231 CALL                             R11 2 0
      232 CLOSEUPVALS                      R2
      233 RETURN                           R0 0

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
       15 GETTABLEKS                       R6 R0 K10 ["Components"]
       17 GETTABLEKS                       R5 R6 K11 ["Contexts"]
       19 GETTABLEKS                       R4 R5 K12 ["Claude"]
       21 GETTABLEKS                       R3 R4 K13 ["ClaudeLLMAdapter"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R5 R0 K14 ["Guest"]
       28 GETTABLEKS                       R4 R5 K15 ["Environment"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R8 R0 K10 ["Components"]
       35 GETTABLEKS                       R7 R8 K11 ["Contexts"]
       37 GETTABLEKS                       R6 R7 K16 ["DefaultLLMProvider"]
       39 GETTABLEKS                       R5 R6 K17 ["LLMRequest"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R7 R0 K18 ["Parent"]
       46 GETTABLEKS                       R6 R7 K19 ["ModelContextProtocol"]
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
       72 GETTABLEKS                       R10 R11 K24 ["FFlagMCPAssistantExternalAPIKey"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R12 R0 K21 ["Flags"]
       79 GETTABLEKS                       R11 R12 K25 ["FStringMCPAssistantClaudeAPIKey"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R13 R0 K21 ["Flags"]
       86 GETTABLEKS                       R12 R13 K26 ["FStringMCPAssistantCustomModelName"]
       88 CALL                             R11 1 1
       89 GETTABLEKS                       R12 R2 K27 ["createAdapter"]
       91 CALL                             R12 0 1
       92 GETTABLEKS                       R13 R2 K28 ["convertLLMtoClaudeMessage"]
       94 GETTABLEKS                       R14 R5 K29 ["EventStreamParser"]
       96 DUPCLOSURE                       R15 K30 [PROTO_6]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R12
      109 DUPTABLE                         R16 K33 [{"requestHandler", "createRequestHandler"}]
      110 SETTABLEKS                       R15 R16 K31 ["requestHandler"]
      112 LOADNIL                          R17
      113 SETTABLEKS                       R17 R16 K32 ["createRequestHandler"]
      115 RETURN                           R16 1
