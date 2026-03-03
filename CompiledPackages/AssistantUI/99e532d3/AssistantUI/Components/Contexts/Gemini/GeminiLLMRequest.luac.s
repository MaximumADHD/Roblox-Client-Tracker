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
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R1 1 2
       25 JUMPIFNOT                        R1 ; [+14]
       26 JUMPIFNOT                        R2 ; [+13]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R4 R0 K5 ["data"]
       30 CALL                             R3 1 1
       31 MOVE                             R4 R3
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETUPVAL                         R9 5
       36 MOVE                             R10 R8
       37 CALL                             R9 1 0
       38 FORGLOOP                         R4 2 ; [-4]
       40 RETURN                           R0 0

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
        0 JUMPIFEQKN                       R0 K0 [200] ; [+60]
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
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K13 ["get"]
       31 CALL                             R4 0 1
       32 GETTABLEKS                       R3 R4 K14 ["EventLogger"]
       34 GETTABLEKS                       R4 R3 K15 ["logExternalAPIError"]
       36 DUPTABLE                         R5 K19 [{"messageGuid", "model", "statusCode"}]
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K16 ["messageGuid"]
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
       58 NAMECALL                         R5 R5 K23 ["Close"]
       60 CALL                             R5 1 0
       61 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETIMPORT                        R0 K1 [print]
        5 LOADK                            R1 K2 ["--- GeminiLLMRequest WebStreamClient closed"]
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
       56 JUMPIFNOT                        R4 ; [+32]
       57 GETUPVAL                         R4 2
       58 CALL                             R4 0 1
       59 JUMPIFNOT                        R4 ; [+16]
       60 GETIMPORT                        R4 K17 [print]
       62 LOADK                            R6 K18 ["--- GeminiLLMRequest requestBody: %*"]
       63 GETUPVAL                         R10 3
       64 GETTABLEKS                       R9 R10 K19 ["Json"]
       66 GETTABLEKS                       R8 R9 K20 ["encode"]
       68 MOVE                             R9 R3
       69 CALL                             R8 1 1
       70 NAMECALL                         R6 R6 K21 ["format"]
       72 CALL                             R6 2 1
       73 MOVE                             R5 R6
       74 CALL                             R4 1 0
       75 JUMP                             ; [+13]
       76 GETIMPORT                        R4 K17 [print]
       78 LOADK                            R6 K18 ["--- GeminiLLMRequest requestBody: %*"]
       79 GETUPVAL                         R8 4
       80 MOVE                             R10 R3
       81 NAMECALL                         R8 R8 K22 ["JSONEncode"]
       83 CALL                             R8 2 1
       84 NAMECALL                         R6 R6 K21 ["format"]
       86 CALL                             R6 2 1
       87 MOVE                             R5 R6
       88 CALL                             R4 1 0
       89 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
       91 JUMPIFNOT                        R5 ; [+14]
       92 GETTABLEKS                       R6 R0 K23 ["apiKeys"]
       94 GETUPVAL                         R8 5
       95 GETTABLEKS                       R7 R8 K24 ["GEMINI_API_KEY"]
       97 GETTABLE                         R5 R6 R7
       98 JUMPIFNOT                        R5 ; [+7]
       99 GETTABLEKS                       R5 R0 K23 ["apiKeys"]
      101 GETUPVAL                         R7 5
      102 GETTABLEKS                       R6 R7 K24 ["GEMINI_API_KEY"]
      104 GETTABLE                         R4 R5 R6
      105 JUMP                             ; [+2]
      106 GETUPVAL                         R4 6
      107 CALL                             R4 0 1
      108 LOADK                            R5 K25 ["gemini-2.5-pro"]
      109 GETTABLEKS                       R6 R0 K26 ["selectedModel"]
      111 JUMPIFNOT                        R6 ; [+7]
      112 GETTABLEKS                       R6 R0 K26 ["selectedModel"]
      114 JUMPIFEQKS                       R6 K27 [""] ; [+4]
      116 GETTABLEKS                       R5 R0 K26 ["selectedModel"]
      118 JUMP                             ; [+5]
      119 GETUPVAL                         R6 7
      120 CALL                             R6 0 1
      121 JUMPIFEQKS                       R6 K27 [""] ; [+2]
      123 MOVE                             R5 R6
      124 LOADK                            R7 K28 ["https://generativelanguage.googleapis.com/v1beta/models/%*:streamGenerateContent?alt=sse&key="]
      125 MOVE                             R9 R5
      126 NAMECALL                         R7 R7 K21 ["format"]
      128 CALL                             R7 2 1
      129 MOVE                             R6 R7
      130 FASTCALL1                        TYPEOF R4 ; [+3]
      131 MOVE                             R8 R4
      132 GETIMPORT                        R7 K30 [typeof]
      134 CALL                             R7 1 1
      135 JUMPIFNOTEQKS                    R7 K31 ["Secret"] ; [+7]
      137 MOVE                             R9 R6
      138 NAMECALL                         R7 R4 K32 ["AddPrefix"]
      140 CALL                             R7 2 1
      141 MOVE                             R6 R7
      142 JUMP                             ; [+3]
      143 MOVE                             R7 R6
      144 MOVE                             R8 R4
      145 CONCAT                           R6 R7 R8
      146 LOADNIL                          R7
      147 GETUPVAL                         R8 2
      148 CALL                             R8 0 1
      149 JUMPIFNOT                        R8 ; [+9]
      150 GETUPVAL                         R10 3
      151 GETTABLEKS                       R9 R10 K19 ["Json"]
      153 GETTABLEKS                       R8 R9 K20 ["encode"]
      155 MOVE                             R9 R3
      156 CALL                             R8 1 1
      157 MOVE                             R7 R8
      158 JUMP                             ; [+6]
      159 GETUPVAL                         R8 4
      160 MOVE                             R10 R3
      161 NAMECALL                         R8 R8 K22 ["JSONEncode"]
      163 CALL                             R8 2 1
      164 MOVE                             R7 R8
      165 GETUPVAL                         R9 8
      166 GETTABLEKS                       R8 R9 K33 ["get"]
      168 CALL                             R8 0 1
      169 GETTABLEKS                       R10 R8 K34 ["http"]
      171 GETTABLEKS                       R9 R10 K35 ["createWebStreamClient"]
      173 GETIMPORT                        R10 K39 [Enum.WebStreamClientType.RawStream]
      175 DUPTABLE                         R11 K44 [{"Method", "Url", "Headers", "Body"}]
      176 LOADK                            R12 K45 ["POST"]
      177 SETTABLEKS                       R12 R11 K40 ["Method"]
      179 SETTABLEKS                       R6 R11 K41 ["Url"]
      181 NEWTABLE                         R12 1 0
      183 LOADK                            R13 K46 ["application/json"]
      184 SETTABLEKS                       R13 R12 K47 ["Content-Type"]
      186 SETTABLEKS                       R12 R11 K42 ["Headers"]
      188 SETTABLEKS                       R7 R11 K43 ["Body"]
      190 CALL                             R9 2 1
      191 FASTCALL2K                       ASSERT R9 K48 ; [+5]
      193 MOVE                             R11 R9
      194 LOADK                            R12 K48 ["WebStreamClient should not be nil"]
      195 GETIMPORT                        R10 K50 [assert]
      197 CALL                             R10 2 0
      198 GETUPVAL                         R11 9
      199 GETTABLEKS                       R10 R11 K51 ["createParser"]
      201 DUPTABLE                         R11 K55 [{"onEvent", "onError", "onComment"}]
      202 NEWCLOSURE                       R12 P0
      203 CAPTURE                          UPVAL U1
      204 CAPTURE                          UPVAL U2
      205 CAPTURE                          UPVAL U3
      206 CAPTURE                          UPVAL U4
      207 CAPTURE                          UPVAL U10
      208 CAPTURE                          VAL R1
      209 SETTABLEKS                       R12 R11 K52 ["onEvent"]
      211 DUPCLOSURE                       R12 K56 [PROTO_2]
      212 CAPTURE                          UPVAL U1
      213 SETTABLEKS                       R12 R11 K53 ["onError"]
      215 DUPCLOSURE                       R12 K57 [PROTO_3]
      216 CAPTURE                          UPVAL U1
      217 SETTABLEKS                       R12 R11 K54 ["onComment"]
      219 CALL                             R10 1 1
      220 GETTABLEKS                       R11 R9 K58 ["MessageReceived"]
      222 GETTABLEKS                       R13 R10 K59 ["parseNextChunk"]
      224 NAMECALL                         R11 R11 K60 ["Connect"]
      226 CALL                             R11 2 1
      227 GETTABLEKS                       R12 R9 K61 ["Opened"]
      229 NEWCLOSURE                       R14 P3
      230 CAPTURE                          UPVAL U8
      231 CAPTURE                          VAL R0
      232 CAPTURE                          REF R5
      233 CAPTURE                          VAL R1
      234 CAPTURE                          REF R9
      235 NAMECALL                         R12 R12 K60 ["Connect"]
      237 CALL                             R12 2 1
      238 GETTABLEKS                       R13 R9 K62 ["Closed"]
      240 NEWCLOSURE                       R15 P4
      241 CAPTURE                          UPVAL U1
      242 CAPTURE                          REF R11
      243 CAPTURE                          REF R12
      244 CAPTURE                          REF R9
      245 NAMECALL                         R13 R13 K63 ["Once"]
      247 CALL                             R13 2 0
      248 CLOSEUPVALS                      R5
      249 RETURN                           R0 0

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
       15 GETTABLEKS                       R4 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R4 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R7 R0 K12 ["Components"]
       24 GETTABLEKS                       R6 R7 K13 ["Contexts"]
       26 GETTABLEKS                       R5 R6 K14 ["Gemini"]
       28 GETTABLEKS                       R4 R5 K15 ["GeminiLLMAdapter"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R8 K13 ["Contexts"]
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
       72 GETTABLEKS                       R10 R11 K24 ["FStringMCPAssistantCustomModelName"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R12 R0 K21 ["Flags"]
       79 GETTABLEKS                       R11 R12 K25 ["FStringMCPAssistantGeminiAPIKey"]
       81 CALL                             R10 1 1
       82 GETTABLEKS                       R11 R5 K26 ["EventStreamParser"]
       84 GETTABLEKS                       R12 R3 K27 ["createAdapter"]
       86 CALL                             R12 0 1
       87 GETTABLEKS                       R13 R3 K28 ["convertLLMtoGeminiMessage"]
       89 DUPCLOSURE                       R14 K29 [PROTO_6]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R12
      101 DUPTABLE                         R15 K32 [{"requestHandler", "createRequestHandler"}]
      102 SETTABLEKS                       R14 R15 K30 ["requestHandler"]
      104 LOADNIL                          R16
      105 SETTABLEKS                       R16 R15 K31 ["createRequestHandler"]
      107 RETURN                           R15 1
