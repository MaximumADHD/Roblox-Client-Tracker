PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["logTime"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["logModel"]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R0 K2 ["input_tokens"]
       11 JUMPIFNOT                        R2 ; [+19]
       12 LOADN                            R3 0
       13 GETTABLEKS                       R4 R0 K3 ["input_tokens_details"]
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETTABLEKS                       R5 R4 K4 ["cached_tokens"]
       18 JUMPIFNOT                        R5 ; [+2]
       19 GETTABLEKS                       R3 R4 K4 ["cached_tokens"]
       21 GETUPVAL                         R5 0
       22 DUPTABLE                         R7 K6 [{"input_tokens", "cache_read_input_tokens"}]
       23 SUB                              R8 R2 R3
       24 SETTABLEKS                       R8 R7 K2 ["input_tokens"]
       26 SETTABLEKS                       R3 R7 K5 ["cache_read_input_tokens"]
       28 NAMECALL                         R5 R5 K7 ["addUsage"]
       30 CALL                             R5 2 0
       31 GETTABLEKS                       R3 R0 K8 ["output_tokens"]
       33 JUMPIFNOT                        R3 ; [+7]
       34 GETUPVAL                         R4 0
       35 DUPTABLE                         R6 K9 [{"output_tokens"}]
       36 SETTABLEKS                       R3 R6 K8 ["output_tokens"]
       38 NAMECALL                         R4 R4 K7 ["addUsage"]
       40 CALL                             R4 2 0
       41 GETTABLEKS                       R4 R0 K10 ["output_tokens_details"]
       43 JUMPIFNOT                        R4 ; [+12]
       44 GETTABLEKS                       R5 R4 K11 ["reasoning_tokens"]
       46 JUMPIFNOT                        R5 ; [+9]
       47 GETUPVAL                         R5 0
       48 DUPTABLE                         R7 K12 [{"reasoning_tokens"}]
       49 GETTABLEKS                       R8 R4 K11 ["reasoning_tokens"]
       51 SETTABLEKS                       R8 R7 K11 ["reasoning_tokens"]
       53 NAMECALL                         R5 R5 K7 ["addUsage"]
       55 CALL                             R5 2 0
       56 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetTotalUsage"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKS                    R0 K0 ["completed"] ; [+3]
        2 LOADK                            R1 K1 ["message_end"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["failed"] ; [+3]
        6 LOADK                            R1 K3 ["safety_filter"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K4 ["incomplete"] ; [+3]
       10 LOADK                            R1 K5 ["token_limit"]
       11 RETURN                           R1 1
       12 LOADK                            R1 K1 ["message_end"]
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETTABLEKS                       R3 R2 K2 ["error"]
        9 JUMPIF                           R3 ; [+4]
       10 GETTABLEKS                       R3 R2 K3 ["type"]
       12 JUMPIFNOTEQKS                    R3 K2 ["error"] ; [+13]
       14 GETIMPORT                        R3 K5 [warn]
       16 LOADK                            R4 K6 ["Error from OpenAI: "]
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 DUPTABLE                         R3 K8 [{["type"] = "error", ["error"] = "client_error"}]
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R3
       23 SETLIST                          R4 R5 1 [1]
       25 RETURN                           R4 1
       26 GETTABLEKS                       R3 R2 K3 ["type"]
       28 NEWTABLE                         R4 0 0
       30 JUMPIFNOTEQKS                    R3 K9 ["response.completed"] ; [+21]
       32 GETTABLEKS                       R5 R2 K10 ["response"]
       34 JUMPIFNOT                        R5 ; [+17]
       35 GETTABLEKS                       R5 R2 K10 ["response"]
       37 GETTABLEKS                       R5 R5 K11 ["usage"]
       39 JUMPIFNOT                        R5 ; [+12]
       40 GETTABLEKS                       R6 R2 K10 ["response"]
       42 GETTABLEKS                       R6 R6 K13 ["model"]
       44 ORK                              R5 R6 K12 []
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R7 R2 K10 ["response"]
       48 GETTABLEKS                       R7 R7 K11 ["usage"]
       50 MOVE                             R8 R5
       51 CALL                             R6 2 0
       52 JUMPIFNOTEQKS                    R3 K14 ["response.output_item.added"] ; [+43]
       54 GETTABLEKS                       R5 R2 K15 ["item"]
       56 JUMPIFNOT                        R5 ; [+39]
       57 GETTABLEKS                       R5 R2 K15 ["item"]
       59 GETTABLEKS                       R6 R5 K3 ["type"]
       61 JUMPIFNOTEQKS                    R6 K16 ["function_call"] ; [+34]
       63 GETTABLEKS                       R6 R5 K17 ["call_id"]
       65 JUMPIF                           R6 ; [+2]
       66 GETTABLEKS                       R6 R5 K18 ["id"]
       68 GETTABLEKS                       R7 R5 K19 ["name"]
       70 JUMPIFNOT                        R6 ; [+25]
       71 JUMPIFNOT                        R7 ; [+24]
       72 GETUPVAL                         R8 2
       73 JUMPIF                           R8 ; [+22]
       74 LOADB                            R8 1
       75 SETUPVAL                         R8 2
       76 LOADB                            R8 1
       77 SETUPVAL                         R8 3
       78 DUPTABLE                         R10 K22 [{["type"] = "content_start", ["contentBlock"]}]
       79 DUPTABLE                         R11 K25 [{["type"] = "tool_use", ["name"], ["id"], ["input"]}]
       80 SETTABLEKS                       R7 R11 K19 ["name"]
       82 SETTABLEKS                       R6 R11 K18 ["id"]
       84 NEWTABLE                         R12 0 0
       86 SETTABLEKS                       R12 R11 K24 ["input"]
       88 SETTABLEKS                       R11 R10 K21 ["contentBlock"]
       90 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       92 MOVE                             R9 R4
       93 GETIMPORT                        R8 K28 [table.insert]
       95 CALL                             R8 2 0
       96 JUMPIFNOTEQKS                    R3 K29 ["response.output_item.done"] ; [+88]
       98 GETTABLEKS                       R5 R2 K15 ["item"]
      100 JUMPIFNOT                        R5 ; [+84]
      101 GETTABLEKS                       R5 R2 K15 ["item"]
      103 GETTABLEKS                       R6 R5 K3 ["type"]
      105 JUMPIFNOTEQKS                    R6 K30 ["reasoning"] ; [+79]
      107 NEWTABLE                         R6 0 0
      109 GETTABLEKS                       R7 R5 K31 ["summary"]
      111 JUMPIF                           R7 ; [+2]
      112 NEWTABLE                         R7 0 0
      114 LOADNIL                          R8
      115 LOADNIL                          R9
      116 FORGPREP                         R7
      117 GETTABLEKS                       R12 R11 K3 ["type"]
      119 JUMPIFNOTEQKS                    R12 K32 ["summary_text"] ; [+16]
      121 GETTABLEKS                       R12 R11 K33 ["text"]
      123 JUMPIFNOT                        R12 ; [+12]
      124 GETTABLEKS                       R12 R11 K33 ["text"]
      126 JUMPIFEQKS                       R12 K34 [""] ; [+9]
      128 GETTABLEKS                       R14 R11 K33 ["text"]
      130 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      132 MOVE                             R13 R6
      133 GETIMPORT                        R12 K28 [table.insert]
      135 CALL                             R12 2 0
      136 FORGLOOP                         R7 2 ; [-20]
      138 LENGTH                           R7 R6
      139 LOADN                            R8 0
      140 JUMPIFNOTLT                      R8 R7 ; [+44]
      142 DUPTABLE                         R9 K22 [{["type"] = "content_start", ["contentBlock"]}]
      143 DUPTABLE                         R10 K37 [{["type"] = "thinking", ["thinking"] = "", ["signature"] = ""}]
      144 SETTABLEKS                       R10 R9 K21 ["contentBlock"]
      146 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      148 MOVE                             R8 R4
      149 GETIMPORT                        R7 K28 [table.insert]
      151 CALL                             R7 2 0
      152 DUPTABLE                         R9 K40 [{["type"] = "content_delta", ["delta"]}]
      153 DUPTABLE                         R10 K42 [{["type"] = "thinking_delta", ["thinking"], ["signature"]}]
      154 GETIMPORT                        R11 K44 [table.concat]
      156 MOVE                             R12 R6
      157 LOADK                            R13 K45 ["\n"]
      158 CALL                             R11 2 1
      159 SETTABLEKS                       R11 R10 K35 ["thinking"]
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R11 R11 K46 ["Json"]
      164 GETTABLEKS                       R11 R11 K47 ["encode"]
      166 MOVE                             R12 R5
      167 CALL                             R11 1 1
      168 SETTABLEKS                       R11 R10 K36 ["signature"]
      170 SETTABLEKS                       R10 R9 K39 ["delta"]
      172 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      174 MOVE                             R8 R4
      175 GETIMPORT                        R7 K28 [table.insert]
      177 CALL                             R7 2 0
      178 DUPTABLE                         R9 K49 [{["type"] = "content_end"}]
      179 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      181 MOVE                             R8 R4
      182 GETIMPORT                        R7 K28 [table.insert]
      184 CALL                             R7 2 0
      185 JUMPIFNOTEQKS                    R3 K50 ["response.content_part.added"] ; [+29]
      187 GETTABLEKS                       R5 R2 K51 ["part"]
      189 JUMPIFNOT                        R5 ; [+25]
      190 GETTABLEKS                       R5 R2 K51 ["part"]
      192 GETTABLEKS                       R6 R5 K3 ["type"]
      194 JUMPIFNOTEQKS                    R6 K52 ["output_text"] ; [+20]
      196 GETUPVAL                         R6 4
      197 JUMPIF                           R6 ; [+17]
      198 LOADB                            R6 1
      199 SETUPVAL                         R6 4
      200 DUPTABLE                         R8 K22 [{["type"] = "content_start", ["contentBlock"]}]
      201 DUPTABLE                         R9 K53 [{["type"] = "text", ["text"]}]
      202 GETTABLEKS                       R11 R5 K33 ["text"]
      204 ORK                              R10 R11 K34 [""]
      205 SETTABLEKS                       R10 R9 K33 ["text"]
      207 SETTABLEKS                       R9 R8 K21 ["contentBlock"]
      209 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      211 MOVE                             R7 R4
      212 GETIMPORT                        R6 K28 [table.insert]
      214 CALL                             R6 2 0
      215 JUMPIFNOTEQKS                    R3 K54 ["response.output_text.delta"] ; [+32]
      217 GETTABLEKS                       R5 R2 K39 ["delta"]
      219 JUMPIFNOT                        R5 ; [+28]
      220 GETUPVAL                         R5 4
      221 JUMPIF                           R5 ; [+12]
      222 LOADB                            R5 1
      223 SETUPVAL                         R5 4
      224 DUPTABLE                         R7 K22 [{["type"] = "content_start", ["contentBlock"]}]
      225 DUPTABLE                         R8 K55 [{["type"] = "text", ["text"] = ""}]
      226 SETTABLEKS                       R8 R7 K21 ["contentBlock"]
      228 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      230 MOVE                             R6 R4
      231 GETIMPORT                        R5 K28 [table.insert]
      233 CALL                             R5 2 0
      234 DUPTABLE                         R7 K40 [{["type"] = "content_delta", ["delta"]}]
      235 DUPTABLE                         R8 K57 [{["type"] = "text_delta", ["text"]}]
      236 GETTABLEKS                       R9 R2 K39 ["delta"]
      238 SETTABLEKS                       R9 R8 K33 ["text"]
      240 SETTABLEKS                       R8 R7 K39 ["delta"]
      242 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      244 MOVE                             R6 R4
      245 GETIMPORT                        R5 K28 [table.insert]
      247 CALL                             R5 2 0
      248 JUMPIFNOTEQKS                    R3 K58 ["response.output_text.done"] ; [+10]
      250 DUPTABLE                         R7 K49 [{["type"] = "content_end"}]
      251 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      253 MOVE                             R6 R4
      254 GETIMPORT                        R5 K28 [table.insert]
      256 CALL                             R5 2 0
      257 LOADB                            R5 0
      258 SETUPVAL                         R5 4
      259 JUMPIFNOTEQKS                    R3 K59 ["response.function_call_arguments.delta"] ; [+18]
      261 GETTABLEKS                       R5 R2 K39 ["delta"]
      263 JUMPIFNOT                        R5 ; [+14]
      264 DUPTABLE                         R7 K40 [{["type"] = "content_delta", ["delta"]}]
      265 DUPTABLE                         R8 K62 [{["type"] = "json_delta", ["jsonDelta"]}]
      266 GETTABLEKS                       R9 R2 K39 ["delta"]
      268 SETTABLEKS                       R9 R8 K61 ["jsonDelta"]
      270 SETTABLEKS                       R8 R7 K39 ["delta"]
      272 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      274 MOVE                             R6 R4
      275 GETIMPORT                        R5 K28 [table.insert]
      277 CALL                             R5 2 0
      278 JUMPIFNOTEQKS                    R3 K63 ["response.function_call_arguments.done"] ; [+10]
      280 DUPTABLE                         R7 K49 [{["type"] = "content_end"}]
      281 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      283 MOVE                             R6 R4
      284 GETIMPORT                        R5 K28 [table.insert]
      286 CALL                             R5 2 0
      287 LOADB                            R5 0
      288 SETUPVAL                         R5 2
      289 JUMPIFEQKS                       R3 K9 ["response.completed"] ; [+5]
      291 JUMPIFEQKS                       R3 K64 ["response.failed"] ; [+3]
      293 JUMPIFNOTEQKS                    R3 K65 ["response.incomplete"] ; [+63]
      295 GETUPVAL                         R5 4
      296 JUMPIF                           R5 ; [+2]
      297 GETUPVAL                         R5 2
      298 JUMPIFNOT                        R5 ; [+7]
      299 DUPTABLE                         R7 K49 [{["type"] = "content_end"}]
      300 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      302 MOVE                             R6 R4
      303 GETIMPORT                        R5 K28 [table.insert]
      305 CALL                             R5 2 0
      306 GETTABLEKS                       R6 R2 K10 ["response"]
      308 JUMPIFNOT                        R6 ; [+5]
      309 GETTABLEKS                       R5 R2 K10 ["response"]
      311 GETTABLEKS                       R5 R5 K66 ["status"]
      313 JUMPIF                           R5 ; [+1]
      314 LOADK                            R5 K67 ["completed"]
      315 GETUPVAL                         R7 3
      316 JUMPIFNOT                        R7 ; [+2]
      317 LOADK                            R6 K23 ["tool_use"]
      318 JUMP                             ; [+13]
      319 JUMPIFNOTEQKS                    R5 K67 ["completed"] ; [+3]
      321 LOADK                            R6 K68 ["message_end"]
      322 JUMP                             ; [+9]
      323 JUMPIFNOTEQKS                    R5 K69 ["failed"] ; [+3]
      325 LOADK                            R6 K70 ["safety_filter"]
      326 JUMP                             ; [+5]
      327 JUMPIFNOTEQKS                    R5 K71 ["incomplete"] ; [+3]
      329 LOADK                            R6 K72 ["token_limit"]
      330 JUMP                             ; [+1]
      331 LOADK                            R6 K68 ["message_end"]
      332 DUPTABLE                         R9 K74 [{["type"] = "message_delta", ["delta"]}]
      333 DUPTABLE                         R10 K76 [{"stopReason"}]
      334 SETTABLEKS                       R6 R10 K75 ["stopReason"]
      336 SETTABLEKS                       R10 R9 K39 ["delta"]
      338 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      340 MOVE                             R8 R4
      341 GETIMPORT                        R7 K28 [table.insert]
      343 CALL                             R7 2 0
      344 DUPTABLE                         R9 K78 [{["type"] = "message_stop"}]
      345 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      347 MOVE                             R8 R4
      348 GETIMPORT                        R7 K28 [table.insert]
      350 CALL                             R7 2 0
      351 LOADB                            R7 0
      352 SETUPVAL                         R7 4
      353 LOADB                            R7 0
      354 SETUPVAL                         R7 2
      355 LOADB                            R7 0
      356 SETUPVAL                         R7 3
      357 RETURN                           R4 1

PROTO_6:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 LOADB                            R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R1
        7 CAPTURE                          REF R2
        8 CAPTURE                          REF R0
        9 CLOSEUPVALS                      R0
       10 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 LENGTH                           R1 R2
        7 JUMPIFNOTEQKN                    R1 K1 [1] ; [+12]
        9 GETUPVAL                         R2 0
       10 GETTABLEN                        R1 R2 1
       11 GETTABLEKS                       R1 R1 K2 ["type"]
       13 JUMPIFNOTEQKS                    R1 K3 ["input_text"] ; [+6]
       15 GETUPVAL                         R1 0
       16 GETTABLEN                        R0 R1 1
       17 GETTABLEKS                       R0 R0 K4 ["text"]
       19 JUMP                             ; [+4]
       20 GETIMPORT                        R0 K7 [table.clone]
       22 GETUPVAL                         R1 0
       23 CALL                             R0 1 1
       24 LOADB                            R2 1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K8 ["role"]
       28 JUMPIFEQKS                       R3 K9 ["assistant"] ; [+14]
       30 LOADB                            R2 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K8 ["role"]
       34 JUMPIFEQKS                       R3 K10 ["user"] ; [+8]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K8 ["role"]
       39 JUMPIFEQKS                       R3 K11 ["system"] ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       45 LOADK                            R3 K12 ["Invalid message role"]
       46 GETIMPORT                        R1 K14 [assert]
       48 CALL                             R1 2 0
       49 DUPTABLE                         R1 K17 [{["type"] = "message", ["role"], ["content"]}]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K8 ["role"]
       53 SETTABLEKS                       R2 R1 K8 ["role"]
       55 SETTABLEKS                       R0 R1 K16 ["content"]
       57 GETUPVAL                         R3 2
       58 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       60 MOVE                             R4 R1
       61 GETIMPORT                        R2 K19 [table.insert]
       63 CALL                             R2 2 0
       64 GETIMPORT                        R2 K21 [table.clear]
       66 GETUPVAL                         R3 0
       67 CALL                             R2 1 0
       68 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["signature"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_9:
        0 ORK                              R2 R1 K0 [False]
        1 NEWTABLE                         R3 0 0
        3 MOVE                             R4 R0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K1 ["content"]
        9 JUMPIFNOT                        R9 ; [+223]
       10 NEWTABLE                         R9 0 0
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R9
       14 CAPTURE                          VAL R8
       15 CAPTURE                          VAL R3
       16 GETTABLEKS                       R11 R8 K1 ["content"]
       18 LOADNIL                          R12
       19 LOADNIL                          R13
       20 FORGPREP                         R11
       21 GETTABLEKS                       R16 R15 K2 ["type"]
       23 JUMPIFNOTEQKS                    R16 K3 ["thinking"] ; [+34]
       25 JUMPIFNOT                        R2 ; [+203]
       26 GETTABLEKS                       R16 R15 K4 ["signature"]
       28 JUMPIFEQKS                       R16 K5 [""] ; [+200]
       30 GETIMPORT                        R16 K7 [pcall]
       32 NEWCLOSURE                       R17 P1
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R15
       35 CALL                             R16 1 2
       36 JUMPIFNOT                        R16 ; [+192]
       37 FASTCALL1                        TYPE R17 ; [+3]
       38 MOVE                             R19 R17
       39 GETIMPORT                        R18 K8 [type]
       41 CALL                             R18 1 1
       42 JUMPIFNOTEQKS                    R18 K9 ["table"] ; [+186]
       44 GETTABLEKS                       R18 R17 K2 ["type"]
       46 JUMPIFNOTEQKS                    R18 K10 ["reasoning"] ; [+182]
       48 MOVE                             R18 R10
       49 CALL                             R18 0 0
       50 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
       52 MOVE                             R19 R3
       53 MOVE                             R20 R17
       54 GETIMPORT                        R18 K12 [table.insert]
       56 CALL                             R18 2 0
       57 JUMP                             ; [+171]
       58 GETTABLEKS                       R16 R15 K2 ["type"]
       60 JUMPIFNOTEQKS                    R16 K13 ["tool_result"] ; [+74]
       62 MOVE                             R16 R10
       63 CALL                             R16 0 0
       64 NEWTABLE                         R16 0 0
       66 GETTABLEKS                       R17 R15 K1 ["content"]
       68 LOADNIL                          R18
       69 LOADNIL                          R19
       70 FORGPREP                         R17
       71 GETTABLEKS                       R22 R21 K2 ["type"]
       73 JUMPIFNOTEQKS                    R22 K14 ["image"] ; [+20]
       75 DUPTABLE                         R24 K19 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
       76 LOADK                            R26 K20 ["data:%*;base64,%*"]
       77 GETTABLEKS                       R28 R21 K21 ["mimeType"]
       79 GETTABLEKS                       R29 R21 K22 ["data"]
       81 NAMECALL                         R26 R26 K23 ["format"]
       83 CALL                             R26 3 1
       84 MOVE                             R25 R26
       85 SETTABLEKS                       R25 R24 K18 ["image_url"]
       87 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
       89 MOVE                             R23 R16
       90 GETIMPORT                        R22 K12 [table.insert]
       92 CALL                             R22 2 0
       93 JUMP                             ; [+11]
       94 DUPTABLE                         R24 K26 [{["type"] = "input_text", ["text"]}]
       95 GETTABLEKS                       R25 R21 K25 ["text"]
       97 SETTABLEKS                       R25 R24 K25 ["text"]
       99 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      101 MOVE                             R23 R16
      102 GETIMPORT                        R22 K12 [table.insert]
      104 CALL                             R22 2 0
      105 FORGLOOP                         R17 2 ; [-35]
      107 LENGTH                           R18 R16
      108 JUMPIFNOTEQKN                    R18 K27 [1] ; [+10]
      110 GETTABLEN                        R18 R16 1
      111 GETTABLEKS                       R18 R18 K2 ["type"]
      113 JUMPIFNOTEQKS                    R18 K24 ["input_text"] ; [+5]
      115 GETTABLEN                        R17 R16 1
      116 GETTABLEKS                       R17 R17 K25 ["text"]
      118 JUMP                             ; [+1]
      119 MOVE                             R17 R16
      120 DUPTABLE                         R18 K31 [{["type"] = "function_call_output", ["call_id"], ["output"]}]
      121 GETTABLEKS                       R19 R15 K32 ["id"]
      123 SETTABLEKS                       R19 R18 K29 ["call_id"]
      125 SETTABLEKS                       R17 R18 K30 ["output"]
      127 FASTCALL2                        TABLE_INSERT R3 R18 ; [+5]
      129 MOVE                             R20 R3
      130 MOVE                             R21 R18
      131 GETIMPORT                        R19 K12 [table.insert]
      133 CALL                             R19 2 0
      134 JUMP                             ; [+94]
      135 GETTABLEKS                       R16 R15 K2 ["type"]
      137 JUMPIFNOTEQKS                    R16 K25 ["text"] ; [+32]
      139 GETTABLEKS                       R16 R15 K25 ["text"]
      141 JUMPIFNOT                        R16 ; [+28]
      142 LENGTH                           R17 R9
      143 GETTABLE                         R16 R9 R17
      144 JUMPIFNOT                        R16 ; [+13]
      145 GETTABLEKS                       R17 R16 K2 ["type"]
      147 JUMPIFNOTEQKS                    R17 K24 ["input_text"] ; [+10]
      149 GETTABLEKS                       R18 R16 K25 ["text"]
      151 LOADK                            R19 K33 ["\n"]
      152 GETTABLEKS                       R20 R15 K25 ["text"]
      154 CONCAT                           R17 R18 R20
      155 SETTABLEKS                       R17 R16 K25 ["text"]
      157 JUMP                             ; [+71]
      158 DUPTABLE                         R19 K26 [{["type"] = "input_text", ["text"]}]
      159 GETTABLEKS                       R20 R15 K25 ["text"]
      161 SETTABLEKS                       R20 R19 K25 ["text"]
      163 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      165 MOVE                             R18 R9
      166 GETIMPORT                        R17 K12 [table.insert]
      168 CALL                             R17 2 0
      169 JUMP                             ; [+59]
      170 GETTABLEKS                       R16 R15 K2 ["type"]
      172 JUMPIFNOTEQKS                    R16 K14 ["image"] ; [+20]
      174 DUPTABLE                         R18 K19 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
      175 LOADK                            R20 K20 ["data:%*;base64,%*"]
      176 GETTABLEKS                       R22 R15 K21 ["mimeType"]
      178 GETTABLEKS                       R23 R15 K22 ["data"]
      180 NAMECALL                         R20 R20 K23 ["format"]
      182 CALL                             R20 3 1
      183 MOVE                             R19 R20
      184 SETTABLEKS                       R19 R18 K18 ["image_url"]
      186 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      188 MOVE                             R17 R9
      189 GETIMPORT                        R16 K12 [table.insert]
      191 CALL                             R16 2 0
      192 JUMP                             ; [+36]
      193 GETTABLEKS                       R16 R15 K2 ["type"]
      195 JUMPIFNOTEQKS                    R16 K34 ["tool_use"] ; [+33]
      197 MOVE                             R16 R10
      198 CALL                             R16 0 0
      199 LOADK                            R16 K5 [""]
      200 GETTABLEKS                       R17 R15 K35 ["input"]
      202 JUMPIFNOT                        R17 ; [+9]
      203 GETUPVAL                         R17 0
      204 GETTABLEKS                       R17 R17 K36 ["Json"]
      206 GETTABLEKS                       R17 R17 K37 ["encode"]
      208 GETTABLEKS                       R18 R15 K35 ["input"]
      210 CALL                             R17 1 1
      211 MOVE                             R16 R17
      212 DUPTABLE                         R19 K41 [{["type"] = "function_call", ["call_id"], ["name"], ["arguments"]}]
      213 GETTABLEKS                       R20 R15 K32 ["id"]
      215 SETTABLEKS                       R20 R19 K29 ["call_id"]
      217 GETTABLEKS                       R20 R15 K39 ["name"]
      219 SETTABLEKS                       R20 R19 K39 ["name"]
      221 SETTABLEKS                       R16 R19 K40 ["arguments"]
      223 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      225 MOVE                             R18 R3
      226 GETIMPORT                        R17 K12 [table.insert]
      228 CALL                             R17 2 0
      229 FORGLOOP                         R11 2 ; [-209]
      231 MOVE                             R11 R10
      232 CALL                             R11 0 0
      233 FORGLOOP                         R4 2 ; [-227]
      235 RETURN                           R3 1

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
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Components"]
       30 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K13 ["OpenAI"]
       34 GETTABLEKS                       R5 R5 K14 ["OpenAIRequestTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K11 ["Components"]
       41 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K13 ["OpenAI"]
       45 GETTABLEKS                       R6 R6 K15 ["OpenAIResponseTypes"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K16 ["createTracker"]
       50 GETTABLEKS                       R7 R3 K17 ["LLMProviderTypes"]
       52 GETTABLEKS                       R7 R7 K13 ["OpenAI"]
       54 CALL                             R6 1 1
       55 DUPCLOSURE                       R7 K18 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R8 K19 [PROTO_1]
       58 CAPTURE                          VAL R6
       59 DUPCLOSURE                       R9 K20 [PROTO_2]
       60 CAPTURE                          VAL R6
       61 DUPCLOSURE                       R10 K21 [PROTO_3]
       62 DUPCLOSURE                       R11 K22 [PROTO_6]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R12 K23 [PROTO_9]
       66 CAPTURE                          VAL R1
       67 DUPTABLE                         R13 K28 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       68 SETTABLEKS                       R8 R13 K24 ["getTokenUsageTracker"]
       70 SETTABLEKS                       R9 R13 K25 ["resetTokenUsageTracker"]
       72 SETTABLEKS                       R11 R13 K26 ["createAdapter"]
       74 SETTABLEKS                       R12 R13 K27 ["convertLLMtoOpenAIMessage"]
       76 RETURN                           R13 1
