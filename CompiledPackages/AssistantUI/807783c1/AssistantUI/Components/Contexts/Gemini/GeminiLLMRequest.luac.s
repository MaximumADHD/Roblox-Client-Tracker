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
        0 JUMPIFEQKN                       R0 K0 [200] ; [+62]
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
       48 DUPTABLE                         R4 K22 [{"type", "error"}]
       49 LOADK                            R5 K21 ["error"]
       50 SETTABLEKS                       R5 R4 K20 ["type"]
       52 SETTABLEKS                       R2 R4 K21 ["error"]
       54 GETUPVAL                         R5 3
       55 MOVE                             R6 R4
       56 CALL                             R5 1 0
       57 GETUPVAL                         R5 4
       58 JUMPIFNOT                        R5 ; [+4]
       59 GETUPVAL                         R5 4
       60 NAMECALL                         R5 R5 K23 ["Close"]
       62 CALL                             R5 1 0
       63 RETURN                           R0 0

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
       48 DUPTABLE                         R4 K14 [{"temperature"}]
       49 LOADK                            R5 K15 [0.5]
       50 SETTABLEKS                       R5 R4 K13 ["temperature"]
       52 SETTABLEKS                       R4 R3 K4 ["generationConfig"]
       54 GETUPVAL                         R4 1
       55 CALL                             R4 0 1
       56 JUMPIFNOT                        R4 ; [+15]
       57 GETIMPORT                        R4 K17 [print]
       59 LOADK                            R6 K18 ["--- GeminiLLMRequest requestBody: %*"]
       60 GETUPVAL                         R8 2
       61 GETTABLEKS                       R8 R8 K19 ["Json"]
       63 GETTABLEKS                       R8 R8 K20 ["encode"]
       65 MOVE                             R9 R3
       66 CALL                             R8 1 1
       67 NAMECALL                         R6 R6 K21 ["format"]
       69 CALL                             R6 2 1
       70 MOVE                             R5 R6
       71 CALL                             R4 1 0
       72 GETTABLEKS                       R5 R0 K22 ["apiKeys"]
       74 JUMPIFNOT                        R5 ; [+14]
       75 GETTABLEKS                       R6 R0 K22 ["apiKeys"]
       77 GETUPVAL                         R7 3
       78 GETTABLEKS                       R7 R7 K23 ["GEMINI_API_KEY"]
       80 GETTABLE                         R5 R6 R7
       81 JUMPIFNOT                        R5 ; [+7]
       82 GETTABLEKS                       R5 R0 K22 ["apiKeys"]
       84 GETUPVAL                         R6 3
       85 GETTABLEKS                       R6 R6 K23 ["GEMINI_API_KEY"]
       87 GETTABLE                         R4 R5 R6
       88 JUMP                             ; [+2]
       89 GETUPVAL                         R4 4
       90 CALL                             R4 0 1
       91 LOADK                            R5 K24 ["gemini-2.5-pro"]
       92 GETTABLEKS                       R6 R0 K25 ["selectedModel"]
       94 JUMPIFNOT                        R6 ; [+7]
       95 GETTABLEKS                       R6 R0 K25 ["selectedModel"]
       97 JUMPIFEQKS                       R6 K26 [""] ; [+4]
       99 GETTABLEKS                       R5 R0 K25 ["selectedModel"]
      101 JUMP                             ; [+5]
      102 GETUPVAL                         R6 5
      103 CALL                             R6 0 1
      104 JUMPIFEQKS                       R6 K26 [""] ; [+2]
      106 MOVE                             R5 R6
      107 LOADK                            R7 K27 ["https://generativelanguage.googleapis.com/v1beta/models/%*:streamGenerateContent?alt=sse&key="]
      108 MOVE                             R9 R5
      109 NAMECALL                         R7 R7 K21 ["format"]
      111 CALL                             R7 2 1
      112 MOVE                             R6 R7
      113 FASTCALL1                        TYPEOF R4 ; [+3]
      114 MOVE                             R8 R4
      115 GETIMPORT                        R7 K29 [typeof]
      117 CALL                             R7 1 1
      118 JUMPIFNOTEQKS                    R7 K30 ["Secret"] ; [+7]
      120 MOVE                             R9 R6
      121 NAMECALL                         R7 R4 K31 ["AddPrefix"]
      123 CALL                             R7 2 1
      124 MOVE                             R6 R7
      125 JUMP                             ; [+3]
      126 MOVE                             R7 R6
      127 MOVE                             R8 R4
      128 CONCAT                           R6 R7 R8
      129 GETUPVAL                         R7 2
      130 GETTABLEKS                       R7 R7 K19 ["Json"]
      132 GETTABLEKS                       R7 R7 K20 ["encode"]
      134 MOVE                             R8 R3
      135 CALL                             R7 1 1
      136 GETUPVAL                         R8 6
      137 GETTABLEKS                       R8 R8 K32 ["get"]
      139 CALL                             R8 0 1
      140 GETTABLEKS                       R9 R8 K33 ["http"]
      142 GETTABLEKS                       R9 R9 K34 ["createWebStreamClient"]
      144 GETIMPORT                        R10 K38 [Enum.WebStreamClientType.RawStream]
      146 DUPTABLE                         R11 K43 [{"Method", "Url", "Headers", "Body"}]
      147 LOADK                            R12 K44 ["POST"]
      148 SETTABLEKS                       R12 R11 K39 ["Method"]
      150 SETTABLEKS                       R6 R11 K40 ["Url"]
      152 NEWTABLE                         R12 1 0
      154 LOADK                            R13 K45 ["application/json"]
      155 SETTABLEKS                       R13 R12 K46 ["Content-Type"]
      157 SETTABLEKS                       R12 R11 K41 ["Headers"]
      159 SETTABLEKS                       R7 R11 K42 ["Body"]
      161 CALL                             R9 2 1
      162 FASTCALL2K                       ASSERT R9 K47 ; [+5]
      164 MOVE                             R11 R9
      165 LOADK                            R12 K47 ["WebStreamClient should not be nil"]
      166 GETIMPORT                        R10 K49 [assert]
      168 CALL                             R10 2 0
      169 GETUPVAL                         R10 7
      170 GETTABLEKS                       R10 R10 K50 ["createParser"]
      172 DUPTABLE                         R11 K54 [{"onEvent", "onError", "onComment"}]
      173 NEWCLOSURE                       R12 P0
      174 CAPTURE                          UPVAL U1
      175 CAPTURE                          UPVAL U2
      176 CAPTURE                          UPVAL U8
      177 CAPTURE                          VAL R1
      178 SETTABLEKS                       R12 R11 K51 ["onEvent"]
      180 DUPCLOSURE                       R12 K55 [PROTO_2]
      181 CAPTURE                          UPVAL U1
      182 SETTABLEKS                       R12 R11 K52 ["onError"]
      184 DUPCLOSURE                       R12 K56 [PROTO_3]
      185 CAPTURE                          UPVAL U1
      186 SETTABLEKS                       R12 R11 K53 ["onComment"]
      188 CALL                             R10 1 1
      189 GETTABLEKS                       R11 R9 K57 ["MessageReceived"]
      191 GETTABLEKS                       R13 R10 K58 ["parseNextChunk"]
      193 NAMECALL                         R11 R11 K59 ["Connect"]
      195 CALL                             R11 2 1
      196 GETTABLEKS                       R12 R9 K60 ["Opened"]
      198 NEWCLOSURE                       R14 P3
      199 CAPTURE                          UPVAL U6
      200 CAPTURE                          VAL R0
      201 CAPTURE                          REF R5
      202 CAPTURE                          VAL R1
      203 CAPTURE                          REF R9
      204 NAMECALL                         R12 R12 K59 ["Connect"]
      206 CALL                             R12 2 1
      207 GETTABLEKS                       R13 R9 K61 ["Closed"]
      209 NEWCLOSURE                       R15 P4
      210 CAPTURE                          UPVAL U1
      211 CAPTURE                          REF R11
      212 CAPTURE                          REF R12
      213 CAPTURE                          REF R9
      214 NAMECALL                         R13 R13 K62 ["Once"]
      216 CALL                             R13 2 0
      217 CLOSEUPVALS                      R5
      218 RETURN                           R0 0

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
       86 DUPTABLE                         R13 K27 [{"requestHandler", "createRequestHandler"}]
       87 SETTABLEKS                       R12 R13 K25 ["requestHandler"]
       89 LOADNIL                          R14
       90 SETTABLEKS                       R14 R13 K26 ["createRequestHandler"]
       92 RETURN                           R13 1
