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
        6 LOADK                            R3 K3 ["--- GeminiLLMRequest event: %* %* %*"]
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
       24 JUMPIFNOT                        R1 ; [+14]
       25 JUMPIFNOT                        R2 ; [+13]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R4 R0 K6 ["data"]
       29 CALL                             R3 1 1
       30 MOVE                             R4 R3
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 GETUPVAL                         R9 3
       35 MOVE                             R10 R8
       36 CALL                             R9 1 0
       37 FORGLOOP                         R4 2 ; [-4]
       39 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R1 R0 K0 ["value"]
        5 JUMPIFEQKS                       R1 K1 [""] ; [+6]
        7 GETIMPORT                        R1 K3 [warn]
        9 GETTABLEKS                       R2 R0 K0 ["value"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R1 ; [+12]
       16 GETIMPORT                        R1 K3 [warn]
       18 LOADK                            R3 K5 ["--- GeminiLLMRequest error: %* (%*)"]
       19 GETTABLEKS                       R5 R0 K6 ["message"]
       21 GETTABLEKS                       R6 R0 K7 ["type"]
       23 NAMECALL                         R3 R3 K8 ["format"]
       25 CALL                             R3 3 1
       26 MOVE                             R2 R3
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["--- GeminiLLMRequest comment: %*"]
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K4 ["format"]
       10 CALL                             R3 2 1
       11 MOVE                             R2 R3
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+59]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R4 K3 ["WebStreamClient opened with error code: %*"]
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K4 ["format"]
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 CALL                             R2 1 0
       11 LOADNIL                          R2
       12 JUMPIFNOTEQKN                    R0 K5 [400] ; [+3]
       14 LOADK                            R2 K6 ["external_connection_unauthorized_error"]
       15 JUMP                             ; [+5]
       16 JUMPIFNOTEQKN                    R0 K7 [429] ; [+3]
       18 LOADK                            R2 K8 ["external_connection_quota_exceeded_error"]
       19 JUMP                             ; [+1]
       20 LOADK                            R2 K9 ["external_connection_general_error"]
       21 FASTCALL2K                       ASSERT R2 K10 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K10 ["Error type should be set"]
       25 GETIMPORT                        R3 K12 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K13 ["get"]
       31 CALL                             R3 0 1
       32 GETTABLEKS                       R3 R3 K14 ["EventLogger"]
       34 GETTABLEKS                       R4 R3 K15 ["logExternalAPIError"]
       36 DUPTABLE                         R5 K19 [{"messageGuid", "model", "statusCode"}]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K16 ["messageGuid"]
       40 SETTABLEKS                       R6 R5 K16 ["messageGuid"]
       42 GETUPVAL                         R6 2
       43 SETTABLEKS                       R6 R5 K17 ["model"]
       45 SETTABLEKS                       R0 R5 K18 ["statusCode"]
       47 CALL                             R4 1 0
       48 DUPTABLE                         R4 K22 [{["type"] = "error", ["error"]}]
       49 SETTABLEKS                       R2 R4 K21 ["error"]
       51 GETUPVAL                         R5 3
       52 MOVE                             R6 R4
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 4
       55 JUMPIFNOT                        R5 ; [+4]
       56 GETUPVAL                         R5 4
       57 NAMECALL                         R5 R5 K23 ["Close"]
       59 CALL                             R5 1 0
       60 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["--- GeminiLLMRequest WebStreamClient closed"]
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["messages"]
        3 CALL                             R2 1 1
        4 DUPTABLE                         R3 K5 [{"contents", "tools", "systemInstruction", "generationConfig"}]
        5 SETTABLEKS                       R2 R3 K1 ["contents"]
        7 GETTABLEKS                       R5 R0 K2 ["tools"]
        9 JUMPIFNOT                        R5 ; [+16]
       10 GETTABLEKS                       R6 R0 K2 ["tools"]
       12 LENGTH                           R5 R6
       13 LOADN                            R6 0
       14 JUMPIFNOTLT                      R6 R5 ; [+11]
       16 NEWTABLE                         R4 0 1
       18 DUPTABLE                         R5 K7 [{"functionDeclarations"}]
       19 GETTABLEKS                       R6 R0 K2 ["tools"]
       21 SETTABLEKS                       R6 R5 K6 ["functionDeclarations"]
       23 SETLIST                          R4 R5 1 [1]
       25 JUMPIF                           R4 ; [+1]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K2 ["tools"]
       29 GETTABLEKS                       R5 R0 K8 ["system"]
       31 JUMPIFNOT                        R5 ; [+13]
       32 DUPTABLE                         R4 K10 [{"parts"}]
       33 NEWTABLE                         R5 0 1
       35 DUPTABLE                         R6 K12 [{"text"}]
       36 GETTABLEKS                       R7 R0 K8 ["system"]
       38 SETTABLEKS                       R7 R6 K11 ["text"]
       40 SETLIST                          R5 R6 1 [1]
       42 SETTABLEKS                       R5 R4 K9 ["parts"]
       44 JUMPIF                           R4 ; [+1]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K3 ["systemInstruction"]
       48 DUPTABLE                         R4 K15 [{["temperature"] = 0.5}]
       49 SETTABLEKS                       R4 R3 K4 ["generationConfig"]
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R4 R4 K16 ["FFlagDebugLogAssistantUI"]
       54 JUMPIFNOT                        R4 ; [+15]
       55 GETIMPORT                        R4 K18 [print]
       57 LOADK                            R6 K19 ["--- GeminiLLMRequest requestBody: %*"]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R8 R8 K20 ["Json"]
       61 GETTABLEKS                       R8 R8 K21 ["encode"]
       63 MOVE                             R9 R3
       64 CALL                             R8 1 1
       65 NAMECALL                         R6 R6 K22 ["format"]
       67 CALL                             R6 2 1
       68 MOVE                             R5 R6
       69 CALL                             R4 1 0
       70 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       72 JUMPIFNOT                        R5 ; [+14]
       73 GETTABLEKS                       R6 R0 K23 ["apiKeys"]
       75 GETUPVAL                         R7 3
       76 GETTABLEKS                       R7 R7 K24 ["GEMINI_API_KEY"]
       78 GETTABLE                         R5 R6 R7
       79 JUMPIFNOT                        R5 ; [+7]
       80 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K24 ["GEMINI_API_KEY"]
       85 GETTABLE                         R4 R5 R6
       86 JUMP                             ; [+3]
       87 GETUPVAL                         R4 1
       88 GETTABLEKS                       R4 R4 K25 ["FStringMCPAssistantGeminiAPIKey"]
       90 LOADK                            R5 K26 ["gemini-2.5-pro"]
       91 GETTABLEKS                       R6 R0 K27 ["selectedModel"]
       93 JUMPIFNOT                        R6 ; [+7]
       94 GETTABLEKS                       R6 R0 K27 ["selectedModel"]
       96 JUMPIFEQKS                       R6 K28 [""] ; [+4]
       98 GETTABLEKS                       R5 R0 K27 ["selectedModel"]
      100 JUMP                             ; [+6]
      101 GETUPVAL                         R6 1
      102 GETTABLEKS                       R6 R6 K29 ["FStringMCPAssistantCustomModelName"]
      104 JUMPIFEQKS                       R6 K28 [""] ; [+2]
      106 MOVE                             R5 R6
      107 LOADK                            R7 K30 ["https://generativelanguage.googleapis.com/v1beta/models/%*:streamGenerateContent?alt=sse&key="]
      108 MOVE                             R9 R5
      109 NAMECALL                         R7 R7 K22 ["format"]
      111 CALL                             R7 2 1
      112 MOVE                             R6 R7
      113 FASTCALL1                        TYPEOF R4 ; [+3]
      114 MOVE                             R8 R4
      115 GETIMPORT                        R7 K32 [typeof]
      117 CALL                             R7 1 1
      118 JUMPIFNOTEQKS                    R7 K33 ["Secret"] ; [+7]
      120 MOVE                             R9 R6
      121 NAMECALL                         R7 R4 K34 ["AddPrefix"]
      123 CALL                             R7 2 1
      124 MOVE                             R6 R7
      125 JUMP                             ; [+3]
      126 MOVE                             R7 R6
      127 MOVE                             R8 R4
      128 CONCAT                           R6 R7 R8
      129 GETUPVAL                         R7 2
      130 GETTABLEKS                       R7 R7 K20 ["Json"]
      132 GETTABLEKS                       R7 R7 K21 ["encode"]
      134 MOVE                             R8 R3
      135 CALL                             R7 1 1
      136 GETUPVAL                         R8 4
      137 GETTABLEKS                       R8 R8 K35 ["get"]
      139 CALL                             R8 0 1
      140 GETTABLEKS                       R9 R8 K36 ["http"]
      142 GETTABLEKS                       R9 R9 K37 ["createWebStreamClient"]
      144 GETIMPORT                        R10 K41 [Enum.WebStreamClientType.RawStream]
      146 DUPTABLE                         R11 K47 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      147 SETTABLEKS                       R6 R11 K44 ["Url"]
      149 NEWTABLE                         R12 1 0
      151 LOADK                            R13 K48 ["application/json"]
      152 SETTABLEKS                       R13 R12 K49 ["Content-Type"]
      154 SETTABLEKS                       R12 R11 K45 ["Headers"]
      156 SETTABLEKS                       R7 R11 K46 ["Body"]
      158 CALL                             R9 2 1
      159 FASTCALL2K                       ASSERT R9 K50 ; [+5]
      161 MOVE                             R11 R9
      162 LOADK                            R12 K50 ["WebStreamClient should not be nil"]
      163 GETIMPORT                        R10 K52 [assert]
      165 CALL                             R10 2 0
      166 GETUPVAL                         R10 5
      167 GETTABLEKS                       R10 R10 K53 ["createParser"]
      169 DUPTABLE                         R11 K57 [{"onEvent", "onError", "onComment"}]
      170 NEWCLOSURE                       R12 P0
      171 CAPTURE                          UPVAL U1
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          UPVAL U6
      174 CAPTURE                          VAL R1
      175 SETTABLEKS                       R12 R11 K54 ["onEvent"]
      177 DUPCLOSURE                       R12 K58 [PROTO_2]
      178 CAPTURE                          UPVAL U1
      179 SETTABLEKS                       R12 R11 K55 ["onError"]
      181 DUPCLOSURE                       R12 K59 [PROTO_3]
      182 CAPTURE                          UPVAL U1
      183 SETTABLEKS                       R12 R11 K56 ["onComment"]
      185 CALL                             R10 1 1
      186 GETTABLEKS                       R11 R9 K60 ["MessageReceived"]
      188 GETTABLEKS                       R13 R10 K61 ["parseNextChunk"]
      190 NAMECALL                         R11 R11 K62 ["Connect"]
      192 CALL                             R11 2 1
      193 GETTABLEKS                       R12 R9 K63 ["Opened"]
      195 NEWCLOSURE                       R14 P3
      196 CAPTURE                          UPVAL U4
      197 CAPTURE                          VAL R0
      198 CAPTURE                          REF R5
      199 CAPTURE                          VAL R1
      200 CAPTURE                          REF R9
      201 NAMECALL                         R12 R12 K62 ["Connect"]
      203 CALL                             R12 2 1
      204 GETTABLEKS                       R13 R9 K64 ["Closed"]
      206 NEWCLOSURE                       R15 P4
      207 CAPTURE                          UPVAL U1
      208 CAPTURE                          REF R11
      209 CAPTURE                          REF R12
      210 CAPTURE                          REF R9
      211 NAMECALL                         R13 R13 K65 ["Once"]
      213 CALL                             R13 2 0
      214 CLOSEUPVALS                      R5
      215 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K13 ["Gemini"]
       34 GETTABLEKS                       R5 R5 K14 ["GeminiLLMAdapter"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K15 ["ModelContextProtocol"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Types"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R5 K17 ["EventStreamParser"]
       51 GETTABLEKS                       R8 R4 K18 ["createAdapter"]
       53 CALL                             R8 0 1
       54 GETTABLEKS                       R9 R4 K19 ["convertLLMtoGeminiMessage"]
       56 DUPCLOSURE                       R10 K20 [PROTO_6]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 DUPTABLE                         R11 K24 [{["requestHandler"], ["createRequestHandler"] = }]
       65 SETTABLEKS                       R10 R11 K21 ["requestHandler"]
       67 RETURN                           R11 1
