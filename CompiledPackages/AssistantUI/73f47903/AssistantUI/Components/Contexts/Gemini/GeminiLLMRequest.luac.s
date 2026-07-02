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
        5 LOADK                            R3 K2 ["--- GeminiLLMRequest event: %* %* %*"]
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
       17 LOADK                            R3 K4 ["--- GeminiLLMRequest error: %* (%*)"]
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
        5 LOADK                            R3 K2 ["--- GeminiLLMRequest comment: %*"]
        6 MOVE                             R5 R0
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- GeminiLLMRequest WebStreamClient closed"]
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
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+15]
       54 GETIMPORT                        R4 K17 [print]
       56 LOADK                            R6 K18 ["--- GeminiLLMRequest requestBody: %*"]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K19 ["Json"]
       60 GETTABLEKS                       R8 R8 K20 ["encode"]
       62 MOVE                             R9 R3
       63 CALL                             R8 1 1
       64 NAMECALL                         R6 R6 K21 ["format"]
       66 CALL                             R6 2 1
       67 MOVE                             R5 R6
       68 CALL                             R4 1 0
       69 GETTABLEKS                       R5 R0 K22 ["apiKeys"]
       71 JUMPIFNOT                        R5 ; [+14]
       72 GETTABLEKS                       R6 R0 K22 ["apiKeys"]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R7 R7 K23 ["GEMINI_API_KEY"]
       77 GETTABLE                         R5 R6 R7
       78 JUMPIFNOT                        R5 ; [+7]
       79 GETTABLEKS                       R5 R0 K22 ["apiKeys"]
       81 GETUPVAL                         R6 3
       82 GETTABLEKS                       R6 R6 K23 ["GEMINI_API_KEY"]
       84 GETTABLE                         R4 R5 R6
       85 JUMP                             ; [+2]
       86 GETUPVAL                         R4 4
       87 CALL                             R4 0 1
       88 LOADK                            R5 K24 ["gemini-2.5-pro"]
       89 GETTABLEKS                       R6 R0 K25 ["selectedModel"]
       91 JUMPIFNOT                        R6 ; [+7]
       92 GETTABLEKS                       R6 R0 K25 ["selectedModel"]
       94 JUMPIFEQKS                       R6 K26 [""] ; [+4]
       96 GETTABLEKS                       R5 R0 K25 ["selectedModel"]
       98 JUMP                             ; [+5]
       99 GETUPVAL                         R6 5
      100 CALL                             R6 0 1
      101 JUMPIFEQKS                       R6 K26 [""] ; [+2]
      103 MOVE                             R5 R6
      104 LOADK                            R7 K27 ["https://generativelanguage.googleapis.com/v1beta/models/%*:streamGenerateContent?alt=sse&key="]
      105 MOVE                             R9 R5
      106 NAMECALL                         R7 R7 K21 ["format"]
      108 CALL                             R7 2 1
      109 MOVE                             R6 R7
      110 FASTCALL1                        TYPEOF R4 ; [+3]
      111 MOVE                             R8 R4
      112 GETIMPORT                        R7 K29 [typeof]
      114 CALL                             R7 1 1
      115 JUMPIFNOTEQKS                    R7 K30 ["Secret"] ; [+7]
      117 MOVE                             R9 R6
      118 NAMECALL                         R7 R4 K31 ["AddPrefix"]
      120 CALL                             R7 2 1
      121 MOVE                             R6 R7
      122 JUMP                             ; [+3]
      123 MOVE                             R7 R6
      124 MOVE                             R8 R4
      125 CONCAT                           R6 R7 R8
      126 GETUPVAL                         R7 2
      127 GETTABLEKS                       R7 R7 K19 ["Json"]
      129 GETTABLEKS                       R7 R7 K20 ["encode"]
      131 MOVE                             R8 R3
      132 CALL                             R7 1 1
      133 GETUPVAL                         R8 6
      134 GETTABLEKS                       R8 R8 K32 ["get"]
      136 CALL                             R8 0 1
      137 GETTABLEKS                       R9 R8 K33 ["http"]
      139 GETTABLEKS                       R9 R9 K34 ["createWebStreamClient"]
      141 GETIMPORT                        R10 K38 [Enum.WebStreamClientType.RawStream]
      143 DUPTABLE                         R11 K44 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      144 SETTABLEKS                       R6 R11 K41 ["Url"]
      146 NEWTABLE                         R12 1 0
      148 LOADK                            R13 K45 ["application/json"]
      149 SETTABLEKS                       R13 R12 K46 ["Content-Type"]
      151 SETTABLEKS                       R12 R11 K42 ["Headers"]
      153 SETTABLEKS                       R7 R11 K43 ["Body"]
      155 CALL                             R9 2 1
      156 FASTCALL2K                       ASSERT R9 K47 ; [+5]
      158 MOVE                             R11 R9
      159 LOADK                            R12 K47 ["WebStreamClient should not be nil"]
      160 GETIMPORT                        R10 K49 [assert]
      162 CALL                             R10 2 0
      163 GETUPVAL                         R10 7
      164 GETTABLEKS                       R10 R10 K50 ["createParser"]
      166 DUPTABLE                         R11 K54 [{"onEvent", "onError", "onComment"}]
      167 NEWCLOSURE                       R12 P0
      168 CAPTURE                          UPVAL U1
      169 CAPTURE                          UPVAL U2
      170 CAPTURE                          UPVAL U8
      171 CAPTURE                          VAL R1
      172 SETTABLEKS                       R12 R11 K51 ["onEvent"]
      174 DUPCLOSURE                       R12 K55 [PROTO_2]
      175 CAPTURE                          UPVAL U1
      176 SETTABLEKS                       R12 R11 K52 ["onError"]
      178 DUPCLOSURE                       R12 K56 [PROTO_3]
      179 CAPTURE                          UPVAL U1
      180 SETTABLEKS                       R12 R11 K53 ["onComment"]
      182 CALL                             R10 1 1
      183 GETTABLEKS                       R11 R9 K57 ["MessageReceived"]
      185 GETTABLEKS                       R13 R10 K58 ["parseNextChunk"]
      187 NAMECALL                         R11 R11 K59 ["Connect"]
      189 CALL                             R11 2 1
      190 GETTABLEKS                       R12 R9 K60 ["Opened"]
      192 NEWCLOSURE                       R14 P3
      193 CAPTURE                          UPVAL U6
      194 CAPTURE                          VAL R0
      195 CAPTURE                          REF R5
      196 CAPTURE                          VAL R1
      197 CAPTURE                          REF R9
      198 NAMECALL                         R12 R12 K59 ["Connect"]
      200 CALL                             R12 2 1
      201 GETTABLEKS                       R13 R9 K61 ["Closed"]
      203 NEWCLOSURE                       R15 P4
      204 CAPTURE                          UPVAL U1
      205 CAPTURE                          REF R11
      206 CAPTURE                          REF R12
      207 CAPTURE                          REF R9
      208 NAMECALL                         R13 R13 K62 ["Once"]
      210 CALL                             R13 2 0
      211 CLOSEUPVALS                      R5
      212 RETURN                           R0 0

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
       20 GETTABLEKS                       R3 R3 K10 ["Gemini"]
       22 GETTABLEKS                       R3 R3 K11 ["GeminiLLMAdapter"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Components"]
       29 GETTABLEKS                       R4 R4 K9 ["Contexts"]
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
       59 GETTABLEKS                       R8 R8 K19 ["FStringMCPAssistantCustomModelName"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K17 ["Flags"]
       66 GETTABLEKS                       R9 R9 K20 ["FStringMCPAssistantGeminiAPIKey"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R4 K21 ["EventStreamParser"]
       71 GETTABLEKS                       R10 R2 K22 ["createAdapter"]
       73 CALL                             R10 0 1
       74 GETTABLEKS                       R11 R2 K23 ["convertLLMtoGeminiMessage"]
       76 DUPCLOSURE                       R12 K24 [PROTO_6]
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 DUPTABLE                         R13 K28 [{["requestHandler"], ["createRequestHandler"] = }]
       87 SETTABLEKS                       R12 R13 K25 ["requestHandler"]
       89 RETURN                           R13 1
