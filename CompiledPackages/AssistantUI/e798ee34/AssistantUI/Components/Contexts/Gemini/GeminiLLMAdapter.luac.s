PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["logTime"]
        3 CALL                             R3 1 0
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETIMPORT                        R4 K3 [string.match]
        7 MOVE                             R5 R1
        8 LOADK                            R6 K4 ["([^/]+)$"]
        9 CALL                             R4 2 1
       10 OR                               R3 R4 R1
       11 GETUPVAL                         R4 0
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K5 ["logModel"]
       15 CALL                             R4 2 0
       16 ORK                              R2 R2 K6 ["default"]
       17 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       19 MOVE                             R4 R2
       20 LOADK                            R5 K7 ["responseId is required for Gemini token usage tracking"]
       21 GETIMPORT                        R3 K9 [assert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R4 1
       25 GETTABLE                         R3 R4 R2
       26 JUMPIF                           R3 ; [+13]
       27 DUPTABLE                         R4 K13 [{"promptTokenCount", "candidatesTokenCount", "thoughtsTokenCount"}]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R4 K10 ["promptTokenCount"]
       31 LOADN                            R5 0
       32 SETTABLEKS                       R5 R4 K11 ["candidatesTokenCount"]
       34 LOADN                            R5 0
       35 SETTABLEKS                       R5 R4 K12 ["thoughtsTokenCount"]
       37 MOVE                             R3 R4
       38 GETUPVAL                         R4 1
       39 SETTABLE                         R3 R4 R2
       40 GETTABLEKS                       R4 R0 K10 ["promptTokenCount"]
       42 JUMPIFNOT                        R4 ; [+11]
       43 GETTABLEKS                       R5 R3 K10 ["promptTokenCount"]
       45 GETTABLEKS                       R6 R0 K10 ["promptTokenCount"]
       47 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       49 GETIMPORT                        R4 K16 [math.max]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K10 ["promptTokenCount"]
       54 GETTABLEKS                       R4 R0 K11 ["candidatesTokenCount"]
       56 JUMPIFNOT                        R4 ; [+11]
       57 GETTABLEKS                       R5 R3 K11 ["candidatesTokenCount"]
       59 GETTABLEKS                       R6 R0 K11 ["candidatesTokenCount"]
       61 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       63 GETIMPORT                        R4 K16 [math.max]
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R3 K11 ["candidatesTokenCount"]
       68 GETTABLEKS                       R4 R0 K12 ["thoughtsTokenCount"]
       70 JUMPIFNOT                        R4 ; [+11]
       71 GETTABLEKS                       R5 R3 K12 ["thoughtsTokenCount"]
       73 GETTABLEKS                       R6 R0 K12 ["thoughtsTokenCount"]
       75 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       77 GETIMPORT                        R4 K16 [math.max]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K12 ["thoughtsTokenCount"]
       82 LOADN                            R4 0
       83 LOADN                            R5 0
       84 LOADN                            R6 0
       85 GETUPVAL                         R7 1
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 GETTABLEKS                       R12 R11 K10 ["promptTokenCount"]
       91 ADD                              R4 R4 R12
       92 GETTABLEKS                       R13 R11 K11 ["candidatesTokenCount"]
       94 GETTABLEKS                       R14 R11 K12 ["thoughtsTokenCount"]
       96 ADD                              R12 R13 R14
       97 ADD                              R5 R5 R12
       98 GETTABLEKS                       R13 R11 K12 ["thoughtsTokenCount"]
      100 ADD                              R6 R6 R13
      101 FORGLOOP                         R7 2 ; [-13]
      103 GETUPVAL                         R7 0
      104 DUPTABLE                         R9 K20 [{"input_tokens", "output_tokens", "reasoning_tokens"}]
      105 SETTABLEKS                       R4 R9 K17 ["input_tokens"]
      107 SETTABLEKS                       R5 R9 K18 ["output_tokens"]
      109 SETTABLEKS                       R6 R9 K19 ["reasoning_tokens"]
      111 NAMECALL                         R7 R7 K21 ["setUsage"]
      113 CALL                             R7 2 0
      114 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetTotalUsage"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["STOP"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["FINISH_REASON_UNSPECIFIED"] ; [+8]
        4 GETTABLEKS                       R3 R1 K2 ["hasFunctionCall"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R2 K3 ["tool_use"]
        8 RETURN                           R2 1
        9 LOADK                            R2 K4 ["message_end"]
       10 RETURN                           R2 1
       11 JUMPIFNOTEQKS                    R0 K5 ["MAX_TOKENS"] ; [+3]
       13 LOADK                            R2 K6 ["token_limit"]
       14 RETURN                           R2 1
       15 JUMPIFEQKS                       R0 K7 ["SAFETY"] ; [+13]
       17 JUMPIFEQKS                       R0 K8 ["IMAGE_SAFETY"] ; [+11]
       19 JUMPIFEQKS                       R0 K9 ["PROHIBITED_CONTENT"] ; [+9]
       21 JUMPIFEQKS                       R0 K10 ["SPII"] ; [+7]
       23 JUMPIFEQKS                       R0 K11 ["BLOCKLIST"] ; [+5]
       25 JUMPIFEQKS                       R0 K12 ["RECITATION"] ; [+3]
       27 JUMPIFNOTEQKS                    R0 K13 ["LANGUAGE"] ; [+3]
       29 LOADK                            R2 K14 ["safety_filter"]
       30 RETURN                           R2 1
       31 JUMPIFEQKS                       R0 K15 ["OTHER"] ; [+3]
       33 JUMPIFNOTEQKS                    R0 K16 ["MALFORMED_FUNCTION_CALL"] ; [+3]
       35 LOADK                            R2 K4 ["message_end"]
       36 RETURN                           R2 1
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R2 R3 K17 ["assertNever"]
       40 MOVE                             R3 R0
       41 CALL                             R2 1 -1
       42 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 DUPTABLE                         R3 K4 [{"type", "error"}]
        7 LOADK                            R4 K3 ["error"]
        8 SETTABLEKS                       R4 R3 K2 ["type"]
       10 LOADK                            R4 K5 ["client_error"]
       11 SETTABLEKS                       R4 R3 K3 ["error"]
       13 JUMPIF                           R1 ; [+6]
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R3
       17 SETLIST                          R4 R5 1 [1]
       19 RETURN                           R4 1
       20 GETTABLEKS                       R4 R2 K3 ["error"]
       22 JUMPIFNOT                        R4 ; [+12]
       23 GETIMPORT                        R4 K7 [warn]
       25 LOADK                            R5 K8 ["Error from Gemini: "]
       26 GETTABLEKS                       R6 R2 K3 ["error"]
       28 CALL                             R4 2 0
       29 NEWTABLE                         R4 0 1
       31 MOVE                             R5 R3
       32 SETLIST                          R4 R5 1 [1]
       34 RETURN                           R4 1
       35 GETTABLEKS                       R4 R2 K9 ["usageMetadata"]
       37 JUMPIFNOT                        R4 ; [+12]
       38 GETTABLEKS                       R5 R2 K11 ["modelVersion"]
       40 ORK                              R4 R5 K10 []
       41 GETTABLEKS                       R6 R2 K12 ["responseId"]
       43 ORK                              R5 R6 K10 []
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R7 R2 K9 ["usageMetadata"]
       47 MOVE                             R8 R4
       48 MOVE                             R9 R5
       49 CALL                             R6 3 0
       50 GETTABLEKS                       R4 R2 K13 ["candidates"]
       52 JUMPIFNOT                        R4 ; [+3]
       53 GETTABLEKS                       R5 R2 K13 ["candidates"]
       55 GETTABLEN                        R4 R5 1
       56 JUMPIF                           R4 ; [+10]
       57 GETIMPORT                        R5 K7 [warn]
       59 LOADK                            R6 K14 ["Empty candidate field in Gemini response"]
       60 CALL                             R5 1 0
       61 NEWTABLE                         R5 0 1
       63 MOVE                             R6 R3
       64 SETLIST                          R5 R6 1 [1]
       66 RETURN                           R5 1
       67 NEWTABLE                         R5 0 0
       69 GETTABLEKS                       R6 R4 K15 ["content"]
       71 JUMPIFNOT                        R6 ; [+189]
       72 GETTABLEKS                       R7 R4 K15 ["content"]
       74 GETTABLEKS                       R6 R7 K16 ["parts"]
       76 JUMPIFNOT                        R6 ; [+184]
       77 GETTABLEKS                       R9 R4 K15 ["content"]
       79 GETTABLEKS                       R6 R9 K16 ["parts"]
       81 LOADNIL                          R7
       82 LOADNIL                          R8
       83 FORGPREP                         R6
       84 GETTABLEKS                       R11 R10 K17 ["text"]
       86 JUMPIFNOT                        R11 ; [+51]
       87 GETUPVAL                         R11 2
       88 JUMPIFNOT                        R11 ; [+3]
       89 GETUPVAL                         R11 3
       90 JUMPIFEQKS                       R11 K17 ["text"] ; [+25]
       92 DUPTABLE                         R11 K19 [{"type", "contentBlock"}]
       93 LOADK                            R12 K20 ["content_start"]
       94 SETTABLEKS                       R12 R11 K2 ["type"]
       96 DUPTABLE                         R12 K21 [{"type", "text"}]
       97 LOADK                            R13 K17 ["text"]
       98 SETTABLEKS                       R13 R12 K2 ["type"]
      100 LOADK                            R13 K22 [""]
      101 SETTABLEKS                       R13 R12 K17 ["text"]
      103 SETTABLEKS                       R12 R11 K18 ["contentBlock"]
      105 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      107 MOVE                             R13 R5
      108 MOVE                             R14 R11
      109 GETIMPORT                        R12 K25 [table.insert]
      111 CALL                             R12 2 0
      112 LOADB                            R12 1
      113 SETUPVAL                         R12 2
      114 LOADK                            R12 K17 ["text"]
      115 SETUPVAL                         R12 3
      116 DUPTABLE                         R11 K27 [{"type", "delta"}]
      117 LOADK                            R12 K28 ["content_delta"]
      118 SETTABLEKS                       R12 R11 K2 ["type"]
      120 DUPTABLE                         R12 K21 [{"type", "text"}]
      121 LOADK                            R13 K29 ["text_delta"]
      122 SETTABLEKS                       R13 R12 K2 ["type"]
      124 GETTABLEKS                       R13 R10 K17 ["text"]
      126 SETTABLEKS                       R13 R12 K17 ["text"]
      128 SETTABLEKS                       R12 R11 K26 ["delta"]
      130 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      132 MOVE                             R13 R5
      133 MOVE                             R14 R11
      134 GETIMPORT                        R12 K25 [table.insert]
      136 CALL                             R12 2 0
      137 JUMP                             ; [+121]
      138 GETTABLEKS                       R11 R10 K30 ["functionCall"]
      140 JUMPIFNOT                        R11 ; [+118]
      141 GETUPVAL                         R11 2
      142 JUMPIFNOT                        R11 ; [+14]
      143 GETUPVAL                         R11 3
      144 JUMPIFNOTEQKS                    R11 K17 ["text"] ; [+12]
      146 DUPTABLE                         R11 K31 [{"type"}]
      147 LOADK                            R12 K32 ["content_end"]
      148 SETTABLEKS                       R12 R11 K2 ["type"]
      150 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      152 MOVE                             R13 R5
      153 MOVE                             R14 R11
      154 GETIMPORT                        R12 K25 [table.insert]
      156 CALL                             R12 2 0
      157 GETTABLEKS                       R13 R10 K30 ["functionCall"]
      159 GETTABLEKS                       R12 R13 K33 ["name"]
      161 FASTCALL2K                       ASSERT R12 K34 ; [+4]
      163 LOADK                            R13 K34 ["functionCall.name is required"]
      164 GETIMPORT                        R11 K36 [assert]
      166 CALL                             R11 2 0
      167 GETTABLEKS                       R12 R10 K30 ["functionCall"]
      169 GETTABLEKS                       R11 R12 K33 ["name"]
      171 GETUPVAL                         R13 4
      172 ADDK                             R12 R13 K37 [1]
      173 SETUPVAL                         R12 4
      174 LOADK                            R13 K38 ["gemini_"]
      175 MOVE                             R14 R11
      176 LOADK                            R15 K39 ["_"]
      177 GETUPVAL                         R16 4
      178 CONCAT                           R12 R13 R16
      179 LOADNIL                          R13
      180 GETTABLEKS                       R14 R10 K40 ["thoughtSignature"]
      182 JUMPIFNOT                        R14 ; [+2]
      183 GETTABLEKS                       R13 R10 K40 ["thoughtSignature"]
      185 DUPTABLE                         R14 K19 [{"type", "contentBlock"}]
      186 LOADK                            R15 K20 ["content_start"]
      187 SETTABLEKS                       R15 R14 K2 ["type"]
      189 DUPTABLE                         R15 K43 [{"type", "name", "id", "input", "thoughtSignature"}]
      190 LOADK                            R16 K44 ["tool_use"]
      191 SETTABLEKS                       R16 R15 K2 ["type"]
      193 SETTABLEKS                       R11 R15 K33 ["name"]
      195 SETTABLEKS                       R12 R15 K41 ["id"]
      197 NEWTABLE                         R16 0 0
      199 SETTABLEKS                       R16 R15 K42 ["input"]
      201 SETTABLEKS                       R13 R15 K40 ["thoughtSignature"]
      203 SETTABLEKS                       R15 R14 K18 ["contentBlock"]
      205 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
      207 MOVE                             R16 R5
      208 MOVE                             R17 R14
      209 GETIMPORT                        R15 K25 [table.insert]
      211 CALL                             R15 2 0
      212 GETUPVAL                         R17 0
      213 GETTABLEKS                       R16 R17 K45 ["Json"]
      215 GETTABLEKS                       R15 R16 K46 ["encode"]
      217 GETTABLEKS                       R17 R10 K30 ["functionCall"]
      219 GETTABLEKS                       R16 R17 K47 ["args"]
      221 JUMPIF                           R16 ; [+2]
      222 NEWTABLE                         R16 0 0
      224 CALL                             R15 1 1
      225 DUPTABLE                         R16 K27 [{"type", "delta"}]
      226 LOADK                            R17 K28 ["content_delta"]
      227 SETTABLEKS                       R17 R16 K2 ["type"]
      229 DUPTABLE                         R17 K49 [{"type", "jsonDelta"}]
      230 LOADK                            R18 K50 ["json_delta"]
      231 SETTABLEKS                       R18 R17 K2 ["type"]
      233 SETTABLEKS                       R15 R17 K48 ["jsonDelta"]
      235 SETTABLEKS                       R17 R16 K26 ["delta"]
      237 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
      239 MOVE                             R18 R5
      240 MOVE                             R19 R16
      241 GETIMPORT                        R17 K25 [table.insert]
      243 CALL                             R17 2 0
      244 DUPTABLE                         R17 K31 [{"type"}]
      245 LOADK                            R18 K32 ["content_end"]
      246 SETTABLEKS                       R18 R17 K2 ["type"]
      248 FASTCALL2                        TABLE_INSERT R5 R17 ; [+5]
      250 MOVE                             R19 R5
      251 MOVE                             R20 R17
      252 GETIMPORT                        R18 K25 [table.insert]
      254 CALL                             R18 2 0
      255 LOADB                            R18 0
      256 SETUPVAL                         R18 2
      257 LOADNIL                          R18
      258 SETUPVAL                         R18 3
      259 FORGLOOP                         R6 2 ; [-176]
      261 GETTABLEKS                       R6 R4 K51 ["finishReason"]
      263 JUMPIFNOT                        R6 ; [+58]
      264 GETUPVAL                         R7 2
      265 JUMPIFNOT                        R7 ; [+11]
      266 DUPTABLE                         R7 K31 [{"type"}]
      267 LOADK                            R8 K32 ["content_end"]
      268 SETTABLEKS                       R8 R7 K2 ["type"]
      270 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      272 MOVE                             R9 R5
      273 MOVE                             R10 R7
      274 GETIMPORT                        R8 K25 [table.insert]
      276 CALL                             R8 2 0
      277 DUPTABLE                         R7 K27 [{"type", "delta"}]
      278 LOADK                            R8 K52 ["message_delta"]
      279 SETTABLEKS                       R8 R7 K2 ["type"]
      281 DUPTABLE                         R8 K54 [{"stopReason"}]
      282 GETUPVAL                         R9 5
      283 MOVE                             R10 R6
      284 DUPTABLE                         R11 K56 [{"hasFunctionCall"}]
      285 GETUPVAL                         R13 4
      286 LOADN                            R14 0
      287 JUMPIFLT                         R14 R13 ; [+2]
      289 LOADB                            R12 0 +1
      290 LOADB                            R12 1
      291 SETTABLEKS                       R12 R11 K55 ["hasFunctionCall"]
      293 CALL                             R9 2 1
      294 SETTABLEKS                       R9 R8 K53 ["stopReason"]
      296 SETTABLEKS                       R8 R7 K26 ["delta"]
      298 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      300 MOVE                             R9 R5
      301 MOVE                             R10 R7
      302 GETIMPORT                        R8 K25 [table.insert]
      304 CALL                             R8 2 0
      305 DUPTABLE                         R8 K31 [{"type"}]
      306 LOADK                            R9 K57 ["message_stop"]
      307 SETTABLEKS                       R9 R8 K2 ["type"]
      309 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      311 MOVE                             R10 R5
      312 MOVE                             R11 R8
      313 GETIMPORT                        R9 K25 [table.insert]
      315 CALL                             R9 2 0
      316 LOADB                            R9 0
      317 SETUPVAL                         R9 2
      318 LOADNIL                          R9
      319 SETUPVAL                         R9 3
      320 LOADN                            R9 0
      321 SETUPVAL                         R9 4
      322 RETURN                           R5 1

PROTO_6:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 LOADN                            R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 CAPTURE                          REF R2
        9 CAPTURE                          UPVAL U2
       10 CLOSEUPVALS                      R0
       11 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NEWTABLE                         R7 0 0
        8 GETTABLEKS                       R8 R6 K0 ["content"]
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 GETTABLEKS                       R13 R12 K1 ["type"]
       15 JUMPIFNOTEQKS                    R13 K2 ["text"] ; [+20]
       17 GETTABLEKS                       R13 R12 K2 ["text"]
       19 JUMPIFNOT                        R13 ; [+16]
       20 GETTABLEKS                       R13 R12 K2 ["text"]
       22 JUMPIFEQKS                       R13 K3 [""] ; [+13]
       24 DUPTABLE                         R15 K4 [{"text"}]
       25 GETTABLEKS                       R16 R12 K2 ["text"]
       27 SETTABLEKS                       R16 R15 K2 ["text"]
       29 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       31 MOVE                             R14 R7
       32 GETIMPORT                        R13 K7 [table.insert]
       34 CALL                             R13 2 0
       35 JUMP                             ; [+188]
       36 GETTABLEKS                       R13 R12 K1 ["type"]
       38 JUMPIFNOTEQKS                    R13 K8 ["image"] ; [+20]
       40 DUPTABLE                         R15 K10 [{"inline_data"}]
       41 DUPTABLE                         R16 K13 [{"mime_type", "data"}]
       42 GETTABLEKS                       R17 R12 K14 ["mimeType"]
       44 SETTABLEKS                       R17 R16 K11 ["mime_type"]
       46 GETTABLEKS                       R17 R12 K12 ["data"]
       48 SETTABLEKS                       R17 R16 K12 ["data"]
       50 SETTABLEKS                       R16 R15 K9 ["inline_data"]
       52 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       54 MOVE                             R14 R7
       55 GETIMPORT                        R13 K7 [table.insert]
       57 CALL                             R13 2 0
       58 JUMP                             ; [+165]
       59 GETTABLEKS                       R13 R12 K1 ["type"]
       61 JUMPIFNOTEQKS                    R13 K15 ["tool_result"] ; [+129]
       63 GETTABLEKS                       R13 R12 K16 ["id"]
       65 LOADN                            R16 1
       66 LOADN                            R17 7
       67 FASTCALL3                        STRING_SUB R13 R16 R17
       69 MOVE                             R15 R13
       70 GETIMPORT                        R14 K19 [string.sub]
       72 CALL                             R14 3 1
       73 JUMPIFNOTEQKS                    R14 K20 ["gemini_"] ; [+24]
       75 FASTCALL2K                       STRING_SUB R13 K21 ; [+5]
       77 MOVE                             R15 R13
       78 LOADK                            R16 K21 [8]
       79 GETIMPORT                        R14 K19 [string.sub]
       81 CALL                             R14 2 1
       82 MOVE                             R13 R14
       83 GETIMPORT                        R14 K23 [string.find]
       85 MOVE                             R15 R13
       86 LOADK                            R16 K24 ["_[0-9]+$"]
       87 CALL                             R14 2 1
       88 JUMPIFNOT                        R14 ; [+9]
       89 LOADN                            R17 1
       90 SUBK                             R18 R14 K25 [1]
       91 FASTCALL3                        STRING_SUB R13 R17 R18
       93 MOVE                             R16 R13
       94 GETIMPORT                        R15 K19 [string.sub]
       96 CALL                             R15 3 1
       97 MOVE                             R13 R15
       98 NEWTABLE                         R14 0 0
      100 GETTABLEKS                       R15 R12 K0 ["content"]
      102 LOADNIL                          R16
      103 LOADNIL                          R17
      104 FORGPREP                         R15
      105 GETTABLEKS                       R20 R19 K1 ["type"]
      107 JUMPIFNOTEQKS                    R20 K2 ["text"] ; [+8]
      109 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      111 MOVE                             R21 R14
      112 MOVE                             R22 R19
      113 GETIMPORT                        R20 K7 [table.insert]
      115 CALL                             R20 2 0
      116 FORGLOOP                         R15 2 ; [-12]
      118 LOADK                            R15 K3 [""]
      119 LENGTH                           R16 R14
      120 LOADN                            R17 0
      121 JUMPIFNOTLT                      R17 R16 ; [+9]
      123 GETUPVAL                         R18 0
      124 GETTABLEKS                       R17 R18 K26 ["Json"]
      126 GETTABLEKS                       R16 R17 K27 ["encode"]
      128 MOVE                             R17 R14
      129 CALL                             R16 1 1
      130 MOVE                             R15 R16
      131 DUPTABLE                         R16 K29 [{"functionResponse"}]
      132 DUPTABLE                         R17 K32 [{"name", "response"}]
      133 SETTABLEKS                       R13 R17 K30 ["name"]
      135 DUPTABLE                         R18 K33 [{"content", "name"}]
      136 SETTABLEKS                       R15 R18 K0 ["content"]
      138 SETTABLEKS                       R13 R18 K30 ["name"]
      140 SETTABLEKS                       R18 R17 K31 ["response"]
      142 SETTABLEKS                       R17 R16 K28 ["functionResponse"]
      144 GETTABLEKS                       R17 R12 K34 ["isError"]
      146 JUMPIFNOT                        R17 ; [+7]
      147 GETTABLEKS                       R18 R16 K28 ["functionResponse"]
      149 GETTABLEKS                       R17 R18 K31 ["response"]
      151 LOADB                            R18 1
      152 SETTABLEKS                       R18 R17 K35 ["error"]
      154 FASTCALL2                        TABLE_INSERT R7 R16 ; [+5]
      156 MOVE                             R18 R7
      157 MOVE                             R19 R16
      158 GETIMPORT                        R17 K7 [table.insert]
      160 CALL                             R17 2 0
      161 GETTABLEKS                       R17 R12 K0 ["content"]
      163 LOADNIL                          R18
      164 LOADNIL                          R19
      165 FORGPREP                         R17
      166 GETTABLEKS                       R22 R21 K1 ["type"]
      168 JUMPIFNOTEQKS                    R22 K8 ["image"] ; [+19]
      170 DUPTABLE                         R24 K10 [{"inline_data"}]
      171 DUPTABLE                         R25 K13 [{"mime_type", "data"}]
      172 GETTABLEKS                       R26 R21 K14 ["mimeType"]
      174 SETTABLEKS                       R26 R25 K11 ["mime_type"]
      176 GETTABLEKS                       R26 R21 K12 ["data"]
      178 SETTABLEKS                       R26 R25 K12 ["data"]
      180 SETTABLEKS                       R25 R24 K9 ["inline_data"]
      182 FASTCALL2                        TABLE_INSERT R7 R24 ; [+4]
      184 MOVE                             R23 R7
      185 GETIMPORT                        R22 K7 [table.insert]
      187 CALL                             R22 2 0
      188 FORGLOOP                         R17 2 ; [-23]
      190 JUMP                             ; [+33]
      191 GETTABLEKS                       R13 R12 K1 ["type"]
      193 JUMPIFNOTEQKS                    R13 K36 ["tool_use"] ; [+30]
      195 DUPTABLE                         R13 K38 [{"functionCall"}]
      196 DUPTABLE                         R14 K40 [{"name", "args"}]
      197 GETTABLEKS                       R15 R12 K30 ["name"]
      199 SETTABLEKS                       R15 R14 K30 ["name"]
      201 GETTABLEKS                       R15 R12 K41 ["input"]
      203 JUMPIF                           R15 ; [+2]
      204 NEWTABLE                         R15 0 0
      206 SETTABLEKS                       R15 R14 K39 ["args"]
      208 SETTABLEKS                       R14 R13 K37 ["functionCall"]
      210 GETTABLEKS                       R14 R12 K42 ["thoughtSignature"]
      212 JUMPIFNOT                        R14 ; [+4]
      213 GETTABLEKS                       R14 R12 K42 ["thoughtSignature"]
      215 SETTABLEKS                       R14 R13 K42 ["thoughtSignature"]
      217 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      219 MOVE                             R15 R7
      220 MOVE                             R16 R13
      221 GETIMPORT                        R14 K7 [table.insert]
      223 CALL                             R14 2 0
      224 FORGLOOP                         R8 2 ; [-212]
      226 LENGTH                           R8 R7
      227 LOADN                            R9 0
      228 JUMPIFNOTLT                      R9 R8 ; [+27]
      230 GETTABLEKS                       R8 R6 K43 ["role"]
      232 JUMPIFNOTEQKS                    R8 K44 ["assistant"] ; [+3]
      234 LOADK                            R8 K45 ["model"]
      235 JUMP                             ; [+9]
      236 JUMPIFNOTEQKS                    R8 K46 ["user"] ; [+8]
      238 GETTABLEN                        R9 R7 1
      239 JUMPIFNOT                        R9 ; [+5]
      240 GETTABLEN                        R10 R7 1
      241 GETTABLEKS                       R9 R10 K28 ["functionResponse"]
      243 JUMPIFNOT                        R9 ; [+1]
      244 LOADK                            R8 K47 ["function"]
      245 DUPTABLE                         R11 K49 [{"role", "parts"}]
      246 SETTABLEKS                       R8 R11 K43 ["role"]
      248 SETTABLEKS                       R7 R11 K48 ["parts"]
      250 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      252 MOVE                             R10 R1
      253 GETIMPORT                        R9 K7 [table.insert]
      255 CALL                             R9 2 0
      256 FORGLOOP                         R2 2 ; [-251]
      258 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["TokenUsageManager"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["createTracker"]
       28 GETTABLEKS                       R6 R3 K12 ["LLMProviderTypes"]
       30 GETTABLEKS                       R5 R6 K13 ["Gemini"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 0 0
       35 DUPCLOSURE                       R6 K14 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R7 K15 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R8 K16 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R9 K17 [PROTO_3]
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R10 K18 [PROTO_6]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R9
       49 DUPCLOSURE                       R11 K19 [PROTO_7]
       50 CAPTURE                          VAL R1
       51 DUPTABLE                         R12 K24 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoGeminiMessage"}]
       52 SETTABLEKS                       R7 R12 K20 ["getTokenUsageTracker"]
       54 SETTABLEKS                       R8 R12 K21 ["resetTokenUsageTracker"]
       56 SETTABLEKS                       R10 R12 K22 ["createAdapter"]
       58 SETTABLEKS                       R11 R12 K23 ["convertLLMtoGeminiMessage"]
       60 RETURN                           R12 1
