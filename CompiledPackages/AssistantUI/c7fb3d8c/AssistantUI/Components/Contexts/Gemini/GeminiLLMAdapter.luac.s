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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R0 R0 K2 ["JSONDecode"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 2
        8 DUPTABLE                         R3 K4 [{"type", "error"}]
        9 LOADK                            R4 K3 ["error"]
       10 SETTABLEKS                       R4 R3 K2 ["type"]
       12 LOADK                            R4 K5 ["client_error"]
       13 SETTABLEKS                       R4 R3 K3 ["error"]
       15 JUMPIF                           R1 ; [+6]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R3
       19 SETLIST                          R4 R5 1 [1]
       21 RETURN                           R4 1
       22 GETTABLEKS                       R4 R2 K3 ["error"]
       24 JUMPIFNOT                        R4 ; [+12]
       25 GETIMPORT                        R4 K7 [warn]
       27 LOADK                            R5 K8 ["Error from Gemini: "]
       28 GETTABLEKS                       R6 R2 K3 ["error"]
       30 CALL                             R4 2 0
       31 NEWTABLE                         R4 0 1
       33 MOVE                             R5 R3
       34 SETLIST                          R4 R5 1 [1]
       36 RETURN                           R4 1
       37 GETTABLEKS                       R4 R2 K9 ["usageMetadata"]
       39 JUMPIFNOT                        R4 ; [+12]
       40 GETTABLEKS                       R5 R2 K11 ["modelVersion"]
       42 ORK                              R4 R5 K10 []
       43 GETTABLEKS                       R6 R2 K12 ["responseId"]
       45 ORK                              R5 R6 K10 []
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R7 R2 K9 ["usageMetadata"]
       49 MOVE                             R8 R4
       50 MOVE                             R9 R5
       51 CALL                             R6 3 0
       52 GETTABLEKS                       R4 R2 K13 ["candidates"]
       54 JUMPIFNOT                        R4 ; [+3]
       55 GETTABLEKS                       R5 R2 K13 ["candidates"]
       57 GETTABLEN                        R4 R5 1
       58 JUMPIF                           R4 ; [+10]
       59 GETIMPORT                        R5 K7 [warn]
       61 LOADK                            R6 K14 ["Empty candidate field in Gemini response"]
       62 CALL                             R5 1 0
       63 NEWTABLE                         R5 0 1
       65 MOVE                             R6 R3
       66 SETLIST                          R5 R6 1 [1]
       68 RETURN                           R5 1
       69 NEWTABLE                         R5 0 0
       71 GETTABLEKS                       R6 R4 K15 ["content"]
       73 JUMPIFNOT                        R6 ; [+207]
       74 GETTABLEKS                       R7 R4 K15 ["content"]
       76 GETTABLEKS                       R6 R7 K16 ["parts"]
       78 JUMPIFNOT                        R6 ; [+202]
       79 GETTABLEKS                       R9 R4 K15 ["content"]
       81 GETTABLEKS                       R6 R9 K16 ["parts"]
       83 LOADNIL                          R7
       84 LOADNIL                          R8
       85 FORGPREP                         R6
       86 GETTABLEKS                       R11 R10 K17 ["text"]
       88 JUMPIFNOT                        R11 ; [+51]
       89 GETUPVAL                         R11 4
       90 JUMPIFNOT                        R11 ; [+3]
       91 GETUPVAL                         R11 5
       92 JUMPIFEQKS                       R11 K17 ["text"] ; [+25]
       94 DUPTABLE                         R11 K19 [{"type", "contentBlock"}]
       95 LOADK                            R12 K20 ["content_start"]
       96 SETTABLEKS                       R12 R11 K2 ["type"]
       98 DUPTABLE                         R12 K21 [{"type", "text"}]
       99 LOADK                            R13 K17 ["text"]
      100 SETTABLEKS                       R13 R12 K2 ["type"]
      102 LOADK                            R13 K22 [""]
      103 SETTABLEKS                       R13 R12 K17 ["text"]
      105 SETTABLEKS                       R12 R11 K18 ["contentBlock"]
      107 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      109 MOVE                             R13 R5
      110 MOVE                             R14 R11
      111 GETIMPORT                        R12 K25 [table.insert]
      113 CALL                             R12 2 0
      114 LOADB                            R12 1
      115 SETUPVAL                         R12 4
      116 LOADK                            R12 K17 ["text"]
      117 SETUPVAL                         R12 5
      118 DUPTABLE                         R11 K27 [{"type", "delta"}]
      119 LOADK                            R12 K28 ["content_delta"]
      120 SETTABLEKS                       R12 R11 K2 ["type"]
      122 DUPTABLE                         R12 K21 [{"type", "text"}]
      123 LOADK                            R13 K29 ["text_delta"]
      124 SETTABLEKS                       R13 R12 K2 ["type"]
      126 GETTABLEKS                       R13 R10 K17 ["text"]
      128 SETTABLEKS                       R13 R12 K17 ["text"]
      130 SETTABLEKS                       R12 R11 K26 ["delta"]
      132 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      134 MOVE                             R13 R5
      135 MOVE                             R14 R11
      136 GETIMPORT                        R12 K25 [table.insert]
      138 CALL                             R12 2 0
      139 JUMP                             ; [+139]
      140 GETTABLEKS                       R11 R10 K30 ["functionCall"]
      142 JUMPIFNOT                        R11 ; [+136]
      143 GETUPVAL                         R11 4
      144 JUMPIFNOT                        R11 ; [+14]
      145 GETUPVAL                         R11 5
      146 JUMPIFNOTEQKS                    R11 K17 ["text"] ; [+12]
      148 DUPTABLE                         R11 K31 [{"type"}]
      149 LOADK                            R12 K32 ["content_end"]
      150 SETTABLEKS                       R12 R11 K2 ["type"]
      152 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      154 MOVE                             R13 R5
      155 MOVE                             R14 R11
      156 GETIMPORT                        R12 K25 [table.insert]
      158 CALL                             R12 2 0
      159 GETTABLEKS                       R13 R10 K30 ["functionCall"]
      161 GETTABLEKS                       R12 R13 K33 ["name"]
      163 FASTCALL2K                       ASSERT R12 K34 ; [+4]
      165 LOADK                            R13 K34 ["functionCall.name is required"]
      166 GETIMPORT                        R11 K36 [assert]
      168 CALL                             R11 2 0
      169 GETTABLEKS                       R12 R10 K30 ["functionCall"]
      171 GETTABLEKS                       R11 R12 K33 ["name"]
      173 GETUPVAL                         R13 6
      174 ADDK                             R12 R13 K37 [1]
      175 SETUPVAL                         R12 6
      176 LOADK                            R13 K38 ["gemini_"]
      177 MOVE                             R14 R11
      178 LOADK                            R15 K39 ["_"]
      179 GETUPVAL                         R16 6
      180 CONCAT                           R12 R13 R16
      181 LOADNIL                          R13
      182 GETTABLEKS                       R14 R10 K40 ["thoughtSignature"]
      184 JUMPIFNOT                        R14 ; [+2]
      185 GETTABLEKS                       R13 R10 K40 ["thoughtSignature"]
      187 DUPTABLE                         R14 K19 [{"type", "contentBlock"}]
      188 LOADK                            R15 K20 ["content_start"]
      189 SETTABLEKS                       R15 R14 K2 ["type"]
      191 DUPTABLE                         R15 K43 [{"type", "name", "id", "input", "thoughtSignature"}]
      192 LOADK                            R16 K44 ["tool_use"]
      193 SETTABLEKS                       R16 R15 K2 ["type"]
      195 SETTABLEKS                       R11 R15 K33 ["name"]
      197 SETTABLEKS                       R12 R15 K41 ["id"]
      199 NEWTABLE                         R16 0 0
      201 SETTABLEKS                       R16 R15 K42 ["input"]
      203 SETTABLEKS                       R13 R15 K40 ["thoughtSignature"]
      205 SETTABLEKS                       R15 R14 K18 ["contentBlock"]
      207 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
      209 MOVE                             R16 R5
      210 MOVE                             R17 R14
      211 GETIMPORT                        R15 K25 [table.insert]
      213 CALL                             R15 2 0
      214 LOADNIL                          R15
      215 GETUPVAL                         R16 0
      216 CALL                             R16 0 1
      217 JUMPIFNOT                        R16 ; [+15]
      218 GETUPVAL                         R18 1
      219 GETTABLEKS                       R17 R18 K45 ["Json"]
      221 GETTABLEKS                       R16 R17 K46 ["encode"]
      223 GETTABLEKS                       R18 R10 K30 ["functionCall"]
      225 GETTABLEKS                       R17 R18 K47 ["args"]
      227 JUMPIF                           R17 ; [+2]
      228 NEWTABLE                         R17 0 0
      230 CALL                             R16 1 1
      231 MOVE                             R15 R16
      232 JUMP                             ; [+12]
      233 GETUPVAL                         R16 2
      234 GETTABLEKS                       R19 R10 K30 ["functionCall"]
      236 GETTABLEKS                       R18 R19 K47 ["args"]
      238 JUMPIF                           R18 ; [+2]
      239 NEWTABLE                         R18 0 0
      241 NAMECALL                         R16 R16 K48 ["JSONEncode"]
      243 CALL                             R16 2 1
      244 MOVE                             R15 R16
      245 DUPTABLE                         R16 K27 [{"type", "delta"}]
      246 LOADK                            R17 K28 ["content_delta"]
      247 SETTABLEKS                       R17 R16 K2 ["type"]
      249 DUPTABLE                         R17 K50 [{"type", "jsonDelta"}]
      250 LOADK                            R18 K51 ["json_delta"]
      251 SETTABLEKS                       R18 R17 K2 ["type"]
      253 SETTABLEKS                       R15 R17 K49 ["jsonDelta"]
      255 SETTABLEKS                       R17 R16 K26 ["delta"]
      257 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
      259 MOVE                             R18 R5
      260 MOVE                             R19 R16
      261 GETIMPORT                        R17 K25 [table.insert]
      263 CALL                             R17 2 0
      264 DUPTABLE                         R17 K31 [{"type"}]
      265 LOADK                            R18 K32 ["content_end"]
      266 SETTABLEKS                       R18 R17 K2 ["type"]
      268 FASTCALL2                        TABLE_INSERT R5 R17 ; [+5]
      270 MOVE                             R19 R5
      271 MOVE                             R20 R17
      272 GETIMPORT                        R18 K25 [table.insert]
      274 CALL                             R18 2 0
      275 LOADB                            R18 0
      276 SETUPVAL                         R18 4
      277 LOADNIL                          R18
      278 SETUPVAL                         R18 5
      279 FORGLOOP                         R6 2 ; [-194]
      281 GETTABLEKS                       R6 R4 K52 ["finishReason"]
      283 JUMPIFNOT                        R6 ; [+58]
      284 GETUPVAL                         R7 4
      285 JUMPIFNOT                        R7 ; [+11]
      286 DUPTABLE                         R7 K31 [{"type"}]
      287 LOADK                            R8 K32 ["content_end"]
      288 SETTABLEKS                       R8 R7 K2 ["type"]
      290 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      292 MOVE                             R9 R5
      293 MOVE                             R10 R7
      294 GETIMPORT                        R8 K25 [table.insert]
      296 CALL                             R8 2 0
      297 DUPTABLE                         R7 K27 [{"type", "delta"}]
      298 LOADK                            R8 K53 ["message_delta"]
      299 SETTABLEKS                       R8 R7 K2 ["type"]
      301 DUPTABLE                         R8 K55 [{"stopReason"}]
      302 GETUPVAL                         R9 7
      303 MOVE                             R10 R6
      304 DUPTABLE                         R11 K57 [{"hasFunctionCall"}]
      305 GETUPVAL                         R13 6
      306 LOADN                            R14 0
      307 JUMPIFLT                         R14 R13 ; [+2]
      309 LOADB                            R12 0 +1
      310 LOADB                            R12 1
      311 SETTABLEKS                       R12 R11 K56 ["hasFunctionCall"]
      313 CALL                             R9 2 1
      314 SETTABLEKS                       R9 R8 K54 ["stopReason"]
      316 SETTABLEKS                       R8 R7 K26 ["delta"]
      318 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      320 MOVE                             R9 R5
      321 MOVE                             R10 R7
      322 GETIMPORT                        R8 K25 [table.insert]
      324 CALL                             R8 2 0
      325 DUPTABLE                         R8 K31 [{"type"}]
      326 LOADK                            R9 K58 ["message_stop"]
      327 SETTABLEKS                       R9 R8 K2 ["type"]
      329 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      331 MOVE                             R10 R5
      332 MOVE                             R11 R8
      333 GETIMPORT                        R9 K25 [table.insert]
      335 CALL                             R9 2 0
      336 LOADB                            R9 0
      337 SETUPVAL                         R9 4
      338 LOADNIL                          R9
      339 SETUPVAL                         R9 5
      340 LOADN                            R9 0
      341 SETUPVAL                         R9 6
      342 RETURN                           R5 1

PROTO_6:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 LOADN                            R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          REF R0
        9 CAPTURE                          REF R1
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U4
       12 CLOSEUPVALS                      R0
       13 RETURN                           R3 1

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
       35 JUMP                             ; [+198]
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
       58 JUMP                             ; [+175]
       59 GETTABLEKS                       R13 R12 K1 ["type"]
       61 JUMPIFNOTEQKS                    R13 K15 ["tool_result"] ; [+139]
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
      121 JUMPIFNOTLT                      R17 R16 ; [+19]
      123 GETUPVAL                         R16 0
      124 CALL                             R16 0 1
      125 JUMPIFNOT                        R16 ; [+9]
      126 GETUPVAL                         R18 1
      127 GETTABLEKS                       R17 R18 K26 ["Json"]
      129 GETTABLEKS                       R16 R17 K27 ["encode"]
      131 MOVE                             R17 R14
      132 CALL                             R16 1 1
      133 MOVE                             R15 R16
      134 JUMP                             ; [+6]
      135 GETUPVAL                         R16 2
      136 MOVE                             R18 R14
      137 NAMECALL                         R16 R16 K28 ["JSONEncode"]
      139 CALL                             R16 2 1
      140 MOVE                             R15 R16
      141 DUPTABLE                         R16 K30 [{"functionResponse"}]
      142 DUPTABLE                         R17 K33 [{"name", "response"}]
      143 SETTABLEKS                       R13 R17 K31 ["name"]
      145 DUPTABLE                         R18 K34 [{"content", "name"}]
      146 SETTABLEKS                       R15 R18 K0 ["content"]
      148 SETTABLEKS                       R13 R18 K31 ["name"]
      150 SETTABLEKS                       R18 R17 K32 ["response"]
      152 SETTABLEKS                       R17 R16 K29 ["functionResponse"]
      154 GETTABLEKS                       R17 R12 K35 ["isError"]
      156 JUMPIFNOT                        R17 ; [+7]
      157 GETTABLEKS                       R18 R16 K29 ["functionResponse"]
      159 GETTABLEKS                       R17 R18 K32 ["response"]
      161 LOADB                            R18 1
      162 SETTABLEKS                       R18 R17 K36 ["error"]
      164 FASTCALL2                        TABLE_INSERT R7 R16 ; [+5]
      166 MOVE                             R18 R7
      167 MOVE                             R19 R16
      168 GETIMPORT                        R17 K7 [table.insert]
      170 CALL                             R17 2 0
      171 GETTABLEKS                       R17 R12 K0 ["content"]
      173 LOADNIL                          R18
      174 LOADNIL                          R19
      175 FORGPREP                         R17
      176 GETTABLEKS                       R22 R21 K1 ["type"]
      178 JUMPIFNOTEQKS                    R22 K8 ["image"] ; [+19]
      180 DUPTABLE                         R24 K10 [{"inline_data"}]
      181 DUPTABLE                         R25 K13 [{"mime_type", "data"}]
      182 GETTABLEKS                       R26 R21 K14 ["mimeType"]
      184 SETTABLEKS                       R26 R25 K11 ["mime_type"]
      186 GETTABLEKS                       R26 R21 K12 ["data"]
      188 SETTABLEKS                       R26 R25 K12 ["data"]
      190 SETTABLEKS                       R25 R24 K9 ["inline_data"]
      192 FASTCALL2                        TABLE_INSERT R7 R24 ; [+4]
      194 MOVE                             R23 R7
      195 GETIMPORT                        R22 K7 [table.insert]
      197 CALL                             R22 2 0
      198 FORGLOOP                         R17 2 ; [-23]
      200 JUMP                             ; [+33]
      201 GETTABLEKS                       R13 R12 K1 ["type"]
      203 JUMPIFNOTEQKS                    R13 K37 ["tool_use"] ; [+30]
      205 DUPTABLE                         R13 K39 [{"functionCall"}]
      206 DUPTABLE                         R14 K41 [{"name", "args"}]
      207 GETTABLEKS                       R15 R12 K31 ["name"]
      209 SETTABLEKS                       R15 R14 K31 ["name"]
      211 GETTABLEKS                       R15 R12 K42 ["input"]
      213 JUMPIF                           R15 ; [+2]
      214 NEWTABLE                         R15 0 0
      216 SETTABLEKS                       R15 R14 K40 ["args"]
      218 SETTABLEKS                       R14 R13 K38 ["functionCall"]
      220 GETTABLEKS                       R14 R12 K43 ["thoughtSignature"]
      222 JUMPIFNOT                        R14 ; [+4]
      223 GETTABLEKS                       R14 R12 K43 ["thoughtSignature"]
      225 SETTABLEKS                       R14 R13 K43 ["thoughtSignature"]
      227 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      229 MOVE                             R15 R7
      230 MOVE                             R16 R13
      231 GETIMPORT                        R14 K7 [table.insert]
      233 CALL                             R14 2 0
      234 FORGLOOP                         R8 2 ; [-222]
      236 LENGTH                           R8 R7
      237 LOADN                            R9 0
      238 JUMPIFNOTLT                      R9 R8 ; [+27]
      240 GETTABLEKS                       R8 R6 K44 ["role"]
      242 JUMPIFNOTEQKS                    R8 K45 ["assistant"] ; [+3]
      244 LOADK                            R8 K46 ["model"]
      245 JUMP                             ; [+9]
      246 JUMPIFNOTEQKS                    R8 K47 ["user"] ; [+8]
      248 GETTABLEN                        R9 R7 1
      249 JUMPIFNOT                        R9 ; [+5]
      250 GETTABLEN                        R10 R7 1
      251 GETTABLEKS                       R9 R10 K29 ["functionResponse"]
      253 JUMPIFNOT                        R9 ; [+1]
      254 LOADK                            R8 K48 ["function"]
      255 DUPTABLE                         R11 K50 [{"role", "parts"}]
      256 SETTABLEKS                       R8 R11 K44 ["role"]
      258 SETTABLEKS                       R7 R11 K49 ["parts"]
      260 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      262 MOVE                             R10 R1
      263 GETIMPORT                        R9 K7 [table.insert]
      265 CALL                             R9 2 0
      266 FORGLOOP                         R2 2 ; [-261]
      268 RETURN                           R1 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["ModelContextProtocol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R5 K13 ["TokenUsageManager"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R7 R0 K15 ["Flags"]
       36 GETTABLEKS                       R6 R7 K16 ["FFlagAssistantJsonEncoder"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K17 ["createTracker"]
       41 LOADK                            R7 K18 ["Gemini"]
       42 CALL                             R6 1 1
       43 NEWTABLE                         R7 0 0
       45 DUPCLOSURE                       R8 K19 [PROTO_0]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R9 K20 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R10 K21 [PROTO_2]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R7
       53 DUPCLOSURE                       R11 K22 [PROTO_3]
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R12 K23 [PROTO_6]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R11
       61 DUPCLOSURE                       R13 K24 [PROTO_7]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R1
       65 DUPTABLE                         R14 K29 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoGeminiMessage"}]
       66 SETTABLEKS                       R9 R14 K25 ["getTokenUsageTracker"]
       68 SETTABLEKS                       R10 R14 K26 ["resetTokenUsageTracker"]
       70 SETTABLEKS                       R12 R14 K27 ["createAdapter"]
       72 SETTABLEKS                       R13 R14 K28 ["convertLLMtoGeminiMessage"]
       74 RETURN                           R14 1
