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
        6 LOADK                            R2 K3 ["--- GeminiLLMRequest event: %* %* %*"]
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
       23 JUMPIFNOT                        R1 ; [+14]
       24 JUMPIFNOT                        R2 ; [+13]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R4 R0 K6 ["data"]
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
       13 GETTABLEKS                       R1 R1 K4 ["FFlagDebugLogAssistantUI"]
       15 JUMPIFNOT                        R1 ; [+11]
       16 GETIMPORT                        R1 K3 [warn]
       18 LOADK                            R2 K5 ["--- GeminiLLMRequest error: %* (%*)"]
       19 GETTABLEKS                       R4 R0 K6 ["message"]
       21 GETTABLEKS                       R5 R0 K7 ["type"]
       23 NAMECALL                         R2 R2 K8 ["format"]
       25 CALL                             R2 3 1
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["--- GeminiLLMRequest comment: %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKN                       R0 K0 [200] ; [+58]
        2 GETIMPORT                        R2 K2 [warn]
        4 LOADK                            R3 K3 ["WebStreamClient opened with error code: %*"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 CALL                             R2 1 0
       10 LOADNIL                          R2
       11 JUMPIFNOTEQKN                    R0 K5 [400] ; [+3]
       13 LOADK                            R2 K6 ["external_connection_unauthorized_error"]
       14 JUMP                             ; [+5]
       15 JUMPIFNOTEQKN                    R0 K7 [429] ; [+3]
       17 LOADK                            R2 K8 ["external_connection_quota_exceeded_error"]
       18 JUMP                             ; [+1]
       19 LOADK                            R2 K9 ["external_connection_general_error"]
       20 FASTCALL2K                       ASSERT R2 K10 ; [+5]
       22 MOVE                             R4 R2
       23 LOADK                            R5 K10 ["Error type should be set"]
       24 GETIMPORT                        R3 K12 [assert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K13 ["get"]
       30 CALL                             R3 0 1
       31 GETTABLEKS                       R3 R3 K14 ["EventLogger"]
       33 GETTABLEKS                       R4 R3 K15 ["logExternalAPIError"]
       35 DUPTABLE                         R5 K19 [{"messageGuid", "model", "statusCode"}]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K16 ["messageGuid"]
       39 SETTABLEKS                       R6 R5 K16 ["messageGuid"]
       41 GETUPVAL                         R6 2
       42 SETTABLEKS                       R6 R5 K17 ["model"]
       44 SETTABLEKS                       R0 R5 K18 ["statusCode"]
       46 CALL                             R4 1 0
       47 DUPTABLE                         R4 K22 [{["type"] = "error", ["error"]}]
       48 SETTABLEKS                       R2 R4 K21 ["error"]
       50 GETUPVAL                         R5 3
       51 MOVE                             R6 R4
       52 CALL                             R5 1 0
       53 GETUPVAL                         R5 4
       54 JUMPIFNOT                        R5 ; [+4]
       55 GETUPVAL                         R5 4
       56 NAMECALL                         R5 R5 K23 ["Close"]
       58 CALL                             R5 1 0
       59 RETURN                           R0 0

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
       54 JUMPIFNOT                        R4 ; [+14]
       55 GETIMPORT                        R4 K18 [print]
       57 LOADK                            R5 K19 ["--- GeminiLLMRequest requestBody: %*"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K20 ["Json"]
       61 GETTABLEKS                       R7 R7 K21 ["encode"]
       63 MOVE                             R8 R3
       64 CALL                             R7 1 1
       65 NAMECALL                         R5 R5 K22 ["format"]
       67 CALL                             R5 2 1
       68 CALL                             R4 1 0
       69 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       71 JUMPIFNOT                        R5 ; [+14]
       72 GETTABLEKS                       R6 R0 K23 ["apiKeys"]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R7 R7 K24 ["GEMINI_API_KEY"]
       77 GETTABLE                         R5 R6 R7
       78 JUMPIFNOT                        R5 ; [+7]
       79 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       81 GETUPVAL                         R6 3
       82 GETTABLEKS                       R6 R6 K24 ["GEMINI_API_KEY"]
       84 GETTABLE                         R4 R5 R6
       85 JUMP                             ; [+3]
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R4 R4 K25 ["FStringMCPAssistantGeminiAPIKey"]
       89 LOADK                            R5 K26 ["gemini-2.5-pro"]
       90 GETTABLEKS                       R6 R0 K27 ["selectedModel"]
       92 JUMPIFNOT                        R6 ; [+7]
       93 GETTABLEKS                       R6 R0 K27 ["selectedModel"]
       95 JUMPIFEQKS                       R6 K28 [""] ; [+4]
       97 GETTABLEKS                       R5 R0 K27 ["selectedModel"]
       99 JUMP                             ; [+6]
      100 GETUPVAL                         R6 1
      101 GETTABLEKS                       R6 R6 K29 ["FStringMCPAssistantCustomModelName"]
      103 JUMPIFEQKS                       R6 K28 [""] ; [+2]
      105 MOVE                             R5 R6
      106 LOADK                            R6 K30 ["https://generativelanguage.googleapis.com/v1beta/models/%*:streamGenerateContent?alt=sse&key="]
      107 MOVE                             R8 R5
      108 NAMECALL                         R6 R6 K22 ["format"]
      110 CALL                             R6 2 1
      111 FASTCALL1                        TYPEOF R4 ; [+3]
      112 MOVE                             R8 R4
      113 GETIMPORT                        R7 K32 [typeof]
      115 CALL                             R7 1 1
      116 JUMPIFNOTEQKS                    R7 K33 ["Secret"] ; [+7]
      118 MOVE                             R9 R6
      119 NAMECALL                         R7 R4 K34 ["AddPrefix"]
      121 CALL                             R7 2 1
      122 MOVE                             R6 R7
      123 JUMP                             ; [+3]
      124 MOVE                             R7 R6
      125 MOVE                             R8 R4
      126 CONCAT                           R6 R7 R8
      127 GETUPVAL                         R7 2
      128 GETTABLEKS                       R7 R7 K20 ["Json"]
      130 GETTABLEKS                       R7 R7 K21 ["encode"]
      132 MOVE                             R8 R3
      133 CALL                             R7 1 1
      134 GETUPVAL                         R8 4
      135 GETTABLEKS                       R8 R8 K35 ["get"]
      137 CALL                             R8 0 1
      138 GETTABLEKS                       R9 R8 K36 ["http"]
      140 GETTABLEKS                       R9 R9 K37 ["createWebStreamClient"]
      142 GETIMPORT                        R10 K41 [Enum.WebStreamClientType.RawStream]
      144 DUPTABLE                         R11 K47 [{["Method"] = "POST", ["Url"], ["Headers"], ["Body"]}]
      145 SETTABLEKS                       R6 R11 K44 ["Url"]
      147 NEWTABLE                         R12 1 0
      149 LOADK                            R13 K48 ["application/json"]
      150 SETTABLEKS                       R13 R12 K49 ["Content-Type"]
      152 SETTABLEKS                       R12 R11 K45 ["Headers"]
      154 SETTABLEKS                       R7 R11 K46 ["Body"]
      156 CALL                             R9 2 1
      157 FASTCALL2K                       ASSERT R9 K50 ; [+5]
      159 MOVE                             R11 R9
      160 LOADK                            R12 K50 ["WebStreamClient should not be nil"]
      161 GETIMPORT                        R10 K52 [assert]
      163 CALL                             R10 2 0
      164 GETUPVAL                         R10 5
      165 GETTABLEKS                       R10 R10 K53 ["createParser"]
      167 DUPTABLE                         R11 K57 [{"onEvent", "onError", "onComment"}]
      168 NEWCLOSURE                       R12 P0
      169 CAPTURE                          UPVAL U1
      170 CAPTURE                          UPVAL U2
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R1
      173 SETTABLEKS                       R12 R11 K54 ["onEvent"]
      175 DUPCLOSURE                       R12 K58 [PROTO_2]
      176 CAPTURE                          UPVAL U1
      177 SETTABLEKS                       R12 R11 K55 ["onError"]
      179 DUPCLOSURE                       R12 K59 [PROTO_3]
      180 CAPTURE                          UPVAL U1
      181 SETTABLEKS                       R12 R11 K56 ["onComment"]
      183 CALL                             R10 1 1
      184 GETTABLEKS                       R11 R9 K60 ["MessageReceived"]
      186 GETTABLEKS                       R13 R10 K61 ["parseNextChunk"]
      188 NAMECALL                         R11 R11 K62 ["Connect"]
      190 CALL                             R11 2 1
      191 GETTABLEKS                       R12 R9 K63 ["Opened"]
      193 NEWCLOSURE                       R14 P3
      194 CAPTURE                          UPVAL U4
      195 CAPTURE                          VAL R0
      196 CAPTURE                          REF R5
      197 CAPTURE                          VAL R1
      198 CAPTURE                          REF R9
      199 NAMECALL                         R12 R12 K62 ["Connect"]
      201 CALL                             R12 2 1
      202 GETTABLEKS                       R13 R9 K64 ["Closed"]
      204 NEWCLOSURE                       R15 P4
      205 CAPTURE                          UPVAL U1
      206 CAPTURE                          REF R11
      207 CAPTURE                          REF R12
      208 CAPTURE                          REF R9
      209 NAMECALL                         R13 R13 K65 ["Once"]
      211 CALL                             R13 2 0
      212 CLOSEUPVALS                      R5
      213 RETURN                           R0 0

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
