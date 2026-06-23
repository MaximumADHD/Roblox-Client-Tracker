PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["logTime"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["logModel"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K2 ["prompt_tokens"]
       11 JUMPIFNOT                        R2 ; [+25]
       12 LOADN                            R2 0
       13 GETTABLEKS                       R3 R0 K3 ["prompt_tokens_details"]
       15 JUMPIFNOT                        R3 ; [+9]
       16 GETTABLEKS                       R3 R0 K3 ["prompt_tokens_details"]
       18 GETTABLEKS                       R3 R3 K4 ["cached_tokens"]
       20 JUMPIFNOT                        R3 ; [+4]
       21 GETTABLEKS                       R3 R0 K3 ["prompt_tokens_details"]
       23 GETTABLEKS                       R2 R3 K4 ["cached_tokens"]
       25 GETUPVAL                         R3 0
       26 DUPTABLE                         R5 K7 [{"input_tokens", "cache_read_input_tokens"}]
       27 GETTABLEKS                       R7 R0 K2 ["prompt_tokens"]
       29 SUB                              R6 R7 R2
       30 SETTABLEKS                       R6 R5 K5 ["input_tokens"]
       32 SETTABLEKS                       R2 R5 K6 ["cache_read_input_tokens"]
       34 NAMECALL                         R3 R3 K8 ["addUsage"]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R2 R0 K9 ["completion_tokens"]
       39 JUMPIFNOT                        R2 ; [+9]
       40 GETUPVAL                         R2 0
       41 DUPTABLE                         R4 K11 [{"output_tokens"}]
       42 GETTABLEKS                       R5 R0 K9 ["completion_tokens"]
       44 SETTABLEKS                       R5 R4 K10 ["output_tokens"]
       46 NAMECALL                         R2 R2 K8 ["addUsage"]
       48 CALL                             R2 2 0
       49 GETTABLEKS                       R2 R0 K12 ["completion_tokens_details"]
       51 JUMPIFNOT                        R2 ; [+16]
       52 GETTABLEKS                       R2 R0 K12 ["completion_tokens_details"]
       54 GETTABLEKS                       R2 R2 K13 ["reasoning_tokens"]
       56 JUMPIFNOT                        R2 ; [+11]
       57 GETUPVAL                         R2 0
       58 DUPTABLE                         R4 K14 [{"reasoning_tokens"}]
       59 GETTABLEKS                       R5 R0 K12 ["completion_tokens_details"]
       61 GETTABLEKS                       R5 R5 K13 ["reasoning_tokens"]
       63 SETTABLEKS                       R5 R4 K13 ["reasoning_tokens"]
       65 NAMECALL                         R2 R2 K8 ["addUsage"]
       67 CALL                             R2 2 0
       68 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetTotalUsage"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["stop"] ; [+3]
        2 LOADK                            R1 K1 ["message_end"]
        3 RETURN                           R1 1
        4 JUMPIFEQKS                       R0 K2 ["tool_calls"] ; [+3]
        6 JUMPIFNOTEQKS                    R0 K3 ["function_call"] ; [+3]
        8 LOADK                            R1 K4 ["tool_use"]
        9 RETURN                           R1 1
       10 JUMPIFNOTEQKS                    R0 K5 ["length"] ; [+3]
       12 LOADK                            R1 K6 ["token_limit"]
       13 RETURN                           R1 1
       14 JUMPIFNOTEQKS                    R0 K7 ["content_filter"] ; [+3]
       16 LOADK                            R1 K8 ["safety_filter"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K9 ["assertNever"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+13]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K1 [{"type"}]
        5 LOADK                            R3 K2 ["content_end"]
        6 SETTABLEKS                       R3 R2 K0 ["type"]
        8 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       10 GETIMPORT                        R0 K5 [table.insert]
       12 CALL                             R0 2 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R3 R2 K2 ["error"]
        9 JUMPIFNOT                        R3 ; [+18]
       10 GETIMPORT                        R3 K4 [warn]
       12 LOADK                            R4 K5 ["Error from OpenAI-compatible chat completions endpoint: "]
       13 MOVE                             R5 R2
       14 CALL                             R3 2 0
       15 DUPTABLE                         R3 K7 [{"type", "error"}]
       16 LOADK                            R4 K2 ["error"]
       17 SETTABLEKS                       R4 R3 K6 ["type"]
       19 LOADK                            R4 K8 ["client_error"]
       20 SETTABLEKS                       R4 R3 K2 ["error"]
       22 NEWTABLE                         R4 0 1
       24 MOVE                             R5 R3
       25 SETLIST                          R4 R5 1 [1]
       27 RETURN                           R4 1
       28 GETTABLEKS                       R3 R2 K9 ["usage"]
       30 JUMPIFNOT                        R3 ; [+8]
       31 GETTABLEKS                       R4 R2 K11 ["model"]
       33 ORK                              R3 R4 K10 []
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R5 R2 K9 ["usage"]
       37 MOVE                             R6 R3
       38 CALL                             R4 2 0
       39 GETTABLEKS                       R3 R2 K12 ["choices"]
       41 JUMPIFNOT                        R3 ; [+5]
       42 GETTABLEKS                       R4 R2 K12 ["choices"]
       44 LENGTH                           R3 R4
       45 JUMPIFNOTEQKN                    R3 K13 [0] ; [+4]
       47 NEWTABLE                         R3 0 0
       49 RETURN                           R3 1
       50 GETTABLEKS                       R4 R2 K12 ["choices"]
       52 GETTABLEN                        R3 R4 1
       53 JUMPIF                           R3 ; [+3]
       54 NEWTABLE                         R4 0 0
       56 RETURN                           R4 1
       57 GETTABLEKS                       R4 R3 K14 ["delta"]
       59 NEWTABLE                         R5 0 0
       61 NEWCLOSURE                       R6 P1
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R5
       64 GETTABLEKS                       R7 R4 K15 ["reasoning_content"]
       66 JUMPIF                           R7 ; [+2]
       67 GETTABLEKS                       R7 R4 K16 ["reasoning"]
       69 JUMPIFNOT                        R7 ; [+69]
       70 JUMPIFEQKS                       R7 K17 [""] ; [+68]
       72 GETUPVAL                         R8 2
       73 JUMPIFEQKS                       R8 K16 ["reasoning"] ; [+43]
       75 GETUPVAL                         R8 2
       76 JUMPIFEQKNIL                     R8 ; [+13]
       78 DUPTABLE                         R10 K18 [{"type"}]
       79 LOADK                            R11 K19 ["content_end"]
       80 SETTABLEKS                       R11 R10 K6 ["type"]
       82 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
       84 MOVE                             R9 R5
       85 GETIMPORT                        R8 K22 [table.insert]
       87 CALL                             R8 2 0
       88 LOADNIL                          R8
       89 SETUPVAL                         R8 2
       90 DUPTABLE                         R8 K24 [{"type", "contentBlock"}]
       91 LOADK                            R9 K25 ["content_start"]
       92 SETTABLEKS                       R9 R8 K6 ["type"]
       94 DUPTABLE                         R9 K28 [{"type", "thinking", "signature"}]
       95 LOADK                            R10 K26 ["thinking"]
       96 SETTABLEKS                       R10 R9 K6 ["type"]
       98 LOADK                            R10 K17 [""]
       99 SETTABLEKS                       R10 R9 K26 ["thinking"]
      101 LOADK                            R10 K17 [""]
      102 SETTABLEKS                       R10 R9 K27 ["signature"]
      104 SETTABLEKS                       R9 R8 K23 ["contentBlock"]
      106 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      108 MOVE                             R10 R5
      109 MOVE                             R11 R8
      110 GETIMPORT                        R9 K22 [table.insert]
      112 CALL                             R9 2 0
      113 LOADK                            R9 K16 ["reasoning"]
      114 SETUPVAL                         R9 2
      115 LOADNIL                          R9
      116 SETUPVAL                         R9 3
      117 DUPTABLE                         R8 K29 [{"type", "delta"}]
      118 LOADK                            R9 K30 ["content_delta"]
      119 SETTABLEKS                       R9 R8 K6 ["type"]
      121 DUPTABLE                         R9 K28 [{"type", "thinking", "signature"}]
      122 LOADK                            R10 K31 ["thinking_delta"]
      123 SETTABLEKS                       R10 R9 K6 ["type"]
      125 SETTABLEKS                       R7 R9 K26 ["thinking"]
      127 LOADK                            R10 K17 [""]
      128 SETTABLEKS                       R10 R9 K27 ["signature"]
      130 SETTABLEKS                       R9 R8 K14 ["delta"]
      132 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      134 MOVE                             R10 R5
      135 MOVE                             R11 R8
      136 GETIMPORT                        R9 K22 [table.insert]
      138 CALL                             R9 2 0
      139 GETTABLEKS                       R8 R4 K32 ["content"]
      141 JUMPIFNOT                        R8 ; [+63]
      142 GETUPVAL                         R8 2
      143 JUMPIFEQKS                       R8 K33 ["text"] ; [+40]
      145 GETUPVAL                         R8 2
      146 JUMPIFEQKNIL                     R8 ; [+13]
      148 DUPTABLE                         R10 K18 [{"type"}]
      149 LOADK                            R11 K19 ["content_end"]
      150 SETTABLEKS                       R11 R10 K6 ["type"]
      152 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      154 MOVE                             R9 R5
      155 GETIMPORT                        R8 K22 [table.insert]
      157 CALL                             R8 2 0
      158 LOADNIL                          R8
      159 SETUPVAL                         R8 2
      160 DUPTABLE                         R8 K24 [{"type", "contentBlock"}]
      161 LOADK                            R9 K25 ["content_start"]
      162 SETTABLEKS                       R9 R8 K6 ["type"]
      164 DUPTABLE                         R9 K34 [{"type", "text"}]
      165 LOADK                            R10 K33 ["text"]
      166 SETTABLEKS                       R10 R9 K6 ["type"]
      168 LOADK                            R10 K17 [""]
      169 SETTABLEKS                       R10 R9 K33 ["text"]
      171 SETTABLEKS                       R9 R8 K23 ["contentBlock"]
      173 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      175 MOVE                             R10 R5
      176 MOVE                             R11 R8
      177 GETIMPORT                        R9 K22 [table.insert]
      179 CALL                             R9 2 0
      180 LOADK                            R9 K33 ["text"]
      181 SETUPVAL                         R9 2
      182 LOADNIL                          R9
      183 SETUPVAL                         R9 3
      184 DUPTABLE                         R8 K29 [{"type", "delta"}]
      185 LOADK                            R9 K30 ["content_delta"]
      186 SETTABLEKS                       R9 R8 K6 ["type"]
      188 DUPTABLE                         R9 K34 [{"type", "text"}]
      189 LOADK                            R10 K35 ["text_delta"]
      190 SETTABLEKS                       R10 R9 K6 ["type"]
      192 GETTABLEKS                       R10 R4 K32 ["content"]
      194 SETTABLEKS                       R10 R9 K33 ["text"]
      196 SETTABLEKS                       R9 R8 K14 ["delta"]
      198 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      200 MOVE                             R10 R5
      201 MOVE                             R11 R8
      202 GETIMPORT                        R9 K22 [table.insert]
      204 CALL                             R9 2 0
      205 GETTABLEKS                       R8 R4 K36 ["tool_calls"]
      207 JUMPIFNOT                        R8 ; [+111]
      208 GETTABLEKS                       R8 R4 K36 ["tool_calls"]
      210 LOADNIL                          R9
      211 LOADNIL                          R10
      212 FORGPREP                         R8
      213 GETTABLEKS                       R13 R12 K37 ["function"]
      215 GETTABLEKS                       R15 R12 K38 ["index"]
      217 ORK                              R14 R15 K13 [0]
      218 JUMPIFNOT                        R13 ; [+69]
      219 GETTABLEKS                       R15 R13 K39 ["name"]
      221 JUMPIFNOT                        R15 ; [+66]
      222 GETUPVAL                         R15 3
      223 JUMPIFEQ                         R14 R15 ; [+64]
      225 GETTABLEKS                       R16 R13 K39 ["name"]
      227 FASTCALL2K                       ASSERT R16 K40 ; [+4]
      229 LOADK                            R17 K40 ["Function call name is required"]
      230 GETIMPORT                        R15 K42 [assert]
      232 CALL                             R15 2 0
      233 GETTABLEKS                       R16 R12 K43 ["id"]
      235 FASTCALL2K                       ASSERT R16 K44 ; [+4]
      237 LOADK                            R17 K44 ["Tool call ID is required"]
      238 GETIMPORT                        R15 K42 [assert]
      240 CALL                             R15 2 0
      241 GETUPVAL                         R15 2
      242 JUMPIFEQKNIL                     R15 ; [+13]
      244 DUPTABLE                         R17 K18 [{"type"}]
      245 LOADK                            R18 K19 ["content_end"]
      246 SETTABLEKS                       R18 R17 K6 ["type"]
      248 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      250 MOVE                             R16 R5
      251 GETIMPORT                        R15 K22 [table.insert]
      253 CALL                             R15 2 0
      254 LOADNIL                          R15
      255 SETUPVAL                         R15 2
      256 DUPTABLE                         R15 K24 [{"type", "contentBlock"}]
      257 LOADK                            R16 K25 ["content_start"]
      258 SETTABLEKS                       R16 R15 K6 ["type"]
      260 DUPTABLE                         R16 K46 [{"type", "name", "id", "input"}]
      261 LOADK                            R17 K47 ["tool_use"]
      262 SETTABLEKS                       R17 R16 K6 ["type"]
      264 GETTABLEKS                       R17 R13 K39 ["name"]
      266 SETTABLEKS                       R17 R16 K39 ["name"]
      268 GETTABLEKS                       R17 R12 K43 ["id"]
      270 SETTABLEKS                       R17 R16 K43 ["id"]
      272 NEWTABLE                         R17 0 0
      274 SETTABLEKS                       R17 R16 K45 ["input"]
      276 SETTABLEKS                       R16 R15 K23 ["contentBlock"]
      278 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      280 MOVE                             R17 R5
      281 MOVE                             R18 R15
      282 GETIMPORT                        R16 K22 [table.insert]
      284 CALL                             R16 2 0
      285 LOADK                            R16 K48 ["tool"]
      286 SETUPVAL                         R16 2
      287 SETUPVAL                         R14 3
      288 JUMPIFNOT                        R13 ; [+28]
      289 GETTABLEKS                       R15 R13 K49 ["arguments"]
      291 JUMPIFNOT                        R15 ; [+25]
      292 GETTABLEKS                       R15 R13 K49 ["arguments"]
      294 JUMPIFEQKS                       R15 K17 [""] ; [+22]
      296 DUPTABLE                         R15 K29 [{"type", "delta"}]
      297 LOADK                            R16 K30 ["content_delta"]
      298 SETTABLEKS                       R16 R15 K6 ["type"]
      300 DUPTABLE                         R16 K51 [{"type", "jsonDelta"}]
      301 LOADK                            R17 K52 ["json_delta"]
      302 SETTABLEKS                       R17 R16 K6 ["type"]
      304 GETTABLEKS                       R17 R13 K49 ["arguments"]
      306 SETTABLEKS                       R17 R16 K50 ["jsonDelta"]
      308 SETTABLEKS                       R16 R15 K14 ["delta"]
      310 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      312 MOVE                             R17 R5
      313 MOVE                             R18 R15
      314 GETIMPORT                        R16 K22 [table.insert]
      316 CALL                             R16 2 0
      317 FORGLOOP                         R8 2 ; [-105]
      319 GETTABLEKS                       R8 R3 K53 ["finish_reason"]
      321 JUMPIFNOT                        R8 ; [+71]
      322 GETUPVAL                         R8 2
      323 JUMPIFEQKNIL                     R8 ; [+13]
      325 DUPTABLE                         R10 K18 [{"type"}]
      326 LOADK                            R11 K19 ["content_end"]
      327 SETTABLEKS                       R11 R10 K6 ["type"]
      329 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      331 MOVE                             R9 R5
      332 GETIMPORT                        R8 K22 [table.insert]
      334 CALL                             R8 2 0
      335 LOADNIL                          R8
      336 SETUPVAL                         R8 2
      337 DUPTABLE                         R10 K29 [{"type", "delta"}]
      338 LOADK                            R11 K54 ["message_delta"]
      339 SETTABLEKS                       R11 R10 K6 ["type"]
      341 DUPTABLE                         R11 K56 [{"stopReason"}]
      342 GETTABLEKS                       R13 R3 K53 ["finish_reason"]
      344 JUMPIFNOTEQKS                    R13 K57 ["stop"] ; [+3]
      346 LOADK                            R12 K58 ["message_end"]
      347 JUMP                             ; [+20]
      348 JUMPIFEQKS                       R13 K36 ["tool_calls"] ; [+3]
      350 JUMPIFNOTEQKS                    R13 K59 ["function_call"] ; [+3]
      352 LOADK                            R12 K47 ["tool_use"]
      353 JUMP                             ; [+14]
      354 JUMPIFNOTEQKS                    R13 K60 ["length"] ; [+3]
      356 LOADK                            R12 K61 ["token_limit"]
      357 JUMP                             ; [+10]
      358 JUMPIFNOTEQKS                    R13 K62 ["content_filter"] ; [+3]
      360 LOADK                            R12 K63 ["safety_filter"]
      361 JUMP                             ; [+6]
      362 GETUPVAL                         R14 4
      363 GETTABLEKS                       R14 R14 K64 ["assertNever"]
      365 MOVE                             R15 R13
      366 CALL                             R14 1 1
      367 MOVE                             R12 R14
      368 SETTABLEKS                       R12 R11 K55 ["stopReason"]
      370 SETTABLEKS                       R11 R10 K14 ["delta"]
      372 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      374 MOVE                             R9 R5
      375 GETIMPORT                        R8 K22 [table.insert]
      377 CALL                             R8 2 0
      378 DUPTABLE                         R8 K18 [{"type"}]
      379 LOADK                            R9 K65 ["message_stop"]
      380 SETTABLEKS                       R9 R8 K6 ["type"]
      382 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      384 MOVE                             R10 R5
      385 MOVE                             R11 R8
      386 GETIMPORT                        R9 K22 [table.insert]
      388 CALL                             R9 2 0
      389 LOADNIL                          R9
      390 SETUPVAL                         R9 2
      391 LOADNIL                          R9
      392 SETUPVAL                         R9 3
      393 RETURN                           R5 1

PROTO_7:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CLOSEUPVALS                      R0
        9 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 DUPTABLE                         R0 K1 [{"role"}]
        4 LOADK                            R1 K2 ["assistant"]
        5 SETTABLEKS                       R1 R0 K0 ["role"]
        7 GETUPVAL                         R1 1
        8 JUMPIFEQKS                       R1 K3 [""] ; [+4]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K4 ["reasoning_content"]
       13 GETUPVAL                         R1 2
       14 JUMPIFEQKS                       R1 K3 [""] ; [+4]
       16 GETUPVAL                         R1 2
       17 SETTABLEKS                       R1 R0 K5 ["content"]
       19 GETUPVAL                         R2 3
       20 LENGTH                           R1 R2
       21 LOADN                            R2 0
       22 JUMPIFNOTLT                      R2 R1 ; [+4]
       24 GETUPVAL                         R1 3
       25 SETTABLEKS                       R1 R0 K6 ["tool_calls"]
       27 GETTABLEKS                       R1 R0 K5 ["content"]
       29 JUMPIF                           R1 ; [+6]
       30 GETTABLEKS                       R1 R0 K6 ["tool_calls"]
       32 JUMPIF                           R1 ; [+3]
       33 GETTABLEKS                       R1 R0 K4 ["reasoning_content"]
       35 JUMPIFNOT                        R1 ; [+7]
       36 GETUPVAL                         R2 4
       37 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       39 MOVE                             R3 R0
       40 GETIMPORT                        R1 K9 [table.insert]
       42 CALL                             R1 2 0
       43 LOADK                            R1 K3 [""]
       44 SETUPVAL                         R1 2
       45 NEWTABLE                         R1 0 0
       47 SETUPVAL                         R1 3
       48 LOADK                            R1 K3 [""]
       49 SETUPVAL                         R1 1
       50 LOADB                            R1 0
       51 SETUPVAL                         R1 0
       52 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R2 1
        3 JUMP                             ; [+1]
        4 MOVE                             R2 R1
        5 NEWTABLE                         R3 0 0
        7 LOADK                            R4 K0 [""]
        8 NEWTABLE                         R5 0 0
       10 LOADK                            R6 K0 [""]
       11 LOADB                            R7 0
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          REF R7
       14 CAPTURE                          REF R6
       15 CAPTURE                          REF R4
       16 CAPTURE                          REF R5
       17 CAPTURE                          VAL R3
       18 MOVE                             R9 R0
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 FORGPREP                         R9
       22 GETTABLEKS                       R14 R13 K1 ["content"]
       24 JUMPIFNOT                        R14 ; [+198]
       25 GETTABLEKS                       R14 R13 K2 ["role"]
       27 JUMPIFNOTEQKS                    R14 K3 ["assistant"] ; [+109]
       29 LOADB                            R7 1
       30 GETTABLEKS                       R14 R13 K1 ["content"]
       32 LOADNIL                          R15
       33 LOADNIL                          R16
       34 FORGPREP                         R14
       35 GETTABLEKS                       R19 R18 K4 ["type"]
       37 JUMPIFNOTEQKS                    R19 K5 ["thinking"] ; [+7]
       39 JUMPIFNOT                        R2 ; [+94]
       40 MOVE                             R19 R6
       41 GETTABLEKS                       R20 R18 K5 ["thinking"]
       43 CONCAT                           R6 R19 R20
       44 JUMP                             ; [+89]
       45 GETTABLEKS                       R19 R18 K4 ["type"]
       47 JUMPIFNOTEQKS                    R19 K6 ["tool_result"] ; [+28]
       49 MOVE                             R19 R8
       50 CALL                             R19 0 0
       51 DUPTABLE                         R21 K8 [{"role", "tool_call_id", "content"}]
       52 LOADK                            R22 K9 ["tool"]
       53 SETTABLEKS                       R22 R21 K2 ["role"]
       55 GETTABLEKS                       R22 R18 K10 ["id"]
       57 SETTABLEKS                       R22 R21 K7 ["tool_call_id"]
       59 GETUPVAL                         R22 0
       60 GETTABLEKS                       R22 R22 K11 ["Json"]
       62 GETTABLEKS                       R22 R22 K12 ["encode"]
       64 GETTABLEKS                       R23 R18 K1 ["content"]
       66 CALL                             R22 1 1
       67 SETTABLEKS                       R22 R21 K1 ["content"]
       69 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
       71 MOVE                             R20 R3
       72 GETIMPORT                        R19 K15 [table.insert]
       74 CALL                             R19 2 0
       75 JUMP                             ; [+58]
       76 GETTABLEKS                       R19 R18 K4 ["type"]
       78 JUMPIFNOTEQKS                    R19 K16 ["text"] ; [+14]
       80 GETTABLEKS                       R19 R18 K16 ["text"]
       82 JUMPIFNOT                        R19 ; [+10]
       83 JUMPIFEQKS                       R4 K0 [""] ; [+4]
       85 MOVE                             R19 R4
       86 LOADK                            R20 K17 ["\n"]
       87 CONCAT                           R4 R19 R20
       88 MOVE                             R19 R4
       89 GETTABLEKS                       R20 R18 K16 ["text"]
       91 CONCAT                           R4 R19 R20
       92 JUMP                             ; [+41]
       93 GETTABLEKS                       R19 R18 K4 ["type"]
       95 JUMPIFNOTEQKS                    R19 K18 ["tool_use"] ; [+38]
       97 LOADK                            R19 K0 [""]
       98 GETTABLEKS                       R20 R18 K19 ["input"]
      100 JUMPIFNOT                        R20 ; [+9]
      101 GETUPVAL                         R20 0
      102 GETTABLEKS                       R20 R20 K11 ["Json"]
      104 GETTABLEKS                       R20 R20 K12 ["encode"]
      106 GETTABLEKS                       R21 R18 K19 ["input"]
      108 CALL                             R20 1 1
      109 MOVE                             R19 R20
      110 NEWTABLE                         R22 4 0
      112 GETTABLEKS                       R23 R18 K10 ["id"]
      114 SETTABLEKS                       R23 R22 K10 ["id"]
      116 LOADK                            R23 K20 ["function"]
      117 SETTABLEKS                       R23 R22 K4 ["type"]
      119 DUPTABLE                         R23 K23 [{"name", "arguments"}]
      120 GETTABLEKS                       R24 R18 K21 ["name"]
      122 SETTABLEKS                       R24 R23 K21 ["name"]
      124 SETTABLEKS                       R19 R23 K22 ["arguments"]
      126 SETTABLEKS                       R23 R22 K20 ["function"]
      128 FASTCALL2                        TABLE_INSERT R5 R22 ; [+4]
      130 MOVE                             R21 R5
      131 GETIMPORT                        R20 K15 [table.insert]
      133 CALL                             R20 2 0
      134 FORGLOOP                         R14 2 ; [-100]
      136 JUMP                             ; [+86]
      137 MOVE                             R14 R8
      138 CALL                             R14 0 0
      139 LOADK                            R14 K0 [""]
      140 GETTABLEKS                       R15 R13 K1 ["content"]
      142 LOADNIL                          R16
      143 LOADNIL                          R17
      144 FORGPREP                         R15
      145 GETTABLEKS                       R20 R19 K4 ["type"]
      147 JUMPIFNOTEQKS                    R20 K6 ["tool_result"] ; [+42]
      149 JUMPIFEQKS                       R14 K0 [""] ; [+15]
      151 DUPTABLE                         R22 K24 [{"role", "content"}]
      152 GETTABLEKS                       R23 R13 K2 ["role"]
      154 SETTABLEKS                       R23 R22 K2 ["role"]
      156 SETTABLEKS                       R14 R22 K1 ["content"]
      158 FASTCALL2                        TABLE_INSERT R3 R22 ; [+4]
      160 MOVE                             R21 R3
      161 GETIMPORT                        R20 K15 [table.insert]
      163 CALL                             R20 2 0
      164 LOADK                            R14 K0 [""]
      165 DUPTABLE                         R22 K8 [{"role", "tool_call_id", "content"}]
      166 LOADK                            R23 K9 ["tool"]
      167 SETTABLEKS                       R23 R22 K2 ["role"]
      169 GETTABLEKS                       R23 R19 K10 ["id"]
      171 SETTABLEKS                       R23 R22 K7 ["tool_call_id"]
      173 GETUPVAL                         R23 0
      174 GETTABLEKS                       R23 R23 K11 ["Json"]
      176 GETTABLEKS                       R23 R23 K12 ["encode"]
      178 GETTABLEKS                       R24 R19 K1 ["content"]
      180 CALL                             R23 1 1
      181 SETTABLEKS                       R23 R22 K1 ["content"]
      183 FASTCALL2                        TABLE_INSERT R3 R22 ; [+4]
      185 MOVE                             R21 R3
      186 GETIMPORT                        R20 K15 [table.insert]
      188 CALL                             R20 2 0
      189 JUMP                             ; [+16]
      190 GETTABLEKS                       R20 R19 K4 ["type"]
      192 JUMPIFNOTEQKS                    R20 K16 ["text"] ; [+13]
      194 GETTABLEKS                       R20 R19 K16 ["text"]
      196 JUMPIFNOT                        R20 ; [+9]
      197 JUMPIFEQKS                       R14 K0 [""] ; [+4]
      199 MOVE                             R20 R14
      200 LOADK                            R21 K17 ["\n"]
      201 CONCAT                           R14 R20 R21
      202 MOVE                             R20 R14
      203 GETTABLEKS                       R21 R19 K16 ["text"]
      205 CONCAT                           R14 R20 R21
      206 FORGLOOP                         R15 2 ; [-62]
      208 JUMPIFEQKS                       R14 K0 [""] ; [+14]
      210 DUPTABLE                         R17 K24 [{"role", "content"}]
      211 GETTABLEKS                       R18 R13 K2 ["role"]
      213 SETTABLEKS                       R18 R17 K2 ["role"]
      215 SETTABLEKS                       R14 R17 K1 ["content"]
      217 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      219 MOVE                             R16 R3
      220 GETIMPORT                        R15 K15 [table.insert]
      222 CALL                             R15 2 0
      223 FORGLOOP                         R9 2 ; [-202]
      225 MOVE                             R9 R8
      226 CALL                             R9 0 0
      227 CLOSEUPVALS                      R4
      228 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["TokenUsageManager"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["createTracker"]
       28 LOADK                            R5 K12 ["TestOpenAI"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 DUPCLOSURE                       R6 K14 [PROTO_1]
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R7 K15 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 DUPCLOSURE                       R8 K16 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 DUPCLOSURE                       R9 K17 [PROTO_7]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R10 K18 [PROTO_9]
       43 CAPTURE                          VAL R1
       44 DUPTABLE                         R11 K23 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       45 SETTABLEKS                       R6 R11 K19 ["getTokenUsageTracker"]
       47 SETTABLEKS                       R7 R11 K20 ["resetTokenUsageTracker"]
       49 SETTABLEKS                       R9 R11 K21 ["createAdapter"]
       51 SETTABLEKS                       R10 R11 K22 ["convertLLMtoOpenAIMessage"]
       53 RETURN                           R11 1
