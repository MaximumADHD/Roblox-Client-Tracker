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
       19 JUMP                             ; [+10]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantAcpHistoryCompatibility"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETIMPORT                        R0 K8 [table.clone]
       26 GETUPVAL                         R1 0
       27 CALL                             R0 1 1
       28 JUMP                             ; [+1]
       29 GETUPVAL                         R0 0
       30 LOADB                            R2 1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K9 ["role"]
       34 JUMPIFEQKS                       R3 K10 ["assistant"] ; [+14]
       36 LOADB                            R2 1
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K9 ["role"]
       40 JUMPIFEQKS                       R3 K11 ["user"] ; [+8]
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K9 ["role"]
       45 JUMPIFEQKS                       R3 K12 ["system"] ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 FASTCALL2K                       ASSERT R2 K13 ; [+4]
       51 LOADK                            R3 K13 ["Invalid message role"]
       52 GETIMPORT                        R1 K15 [assert]
       54 CALL                             R1 2 0
       55 DUPTABLE                         R1 K18 [{["type"] = "message", ["role"], ["content"]}]
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K9 ["role"]
       59 SETTABLEKS                       R2 R1 K9 ["role"]
       61 SETTABLEKS                       R0 R1 K17 ["content"]
       63 GETUPVAL                         R3 3
       64 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       66 MOVE                             R4 R1
       67 GETIMPORT                        R2 K20 [table.insert]
       69 CALL                             R2 2 0
       70 GETIMPORT                        R2 K22 [table.clear]
       72 GETUPVAL                         R3 0
       73 CALL                             R2 1 0
       74 RETURN                           R0 0

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
        9 JUMPIFNOT                        R9 ; [+224]
       10 NEWTABLE                         R9 0 0
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R9
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R8
       16 CAPTURE                          VAL R3
       17 GETTABLEKS                       R11 R8 K1 ["content"]
       19 LOADNIL                          R12
       20 LOADNIL                          R13
       21 FORGPREP                         R11
       22 GETTABLEKS                       R16 R15 K2 ["type"]
       24 JUMPIFNOTEQKS                    R16 K3 ["thinking"] ; [+34]
       26 JUMPIFNOT                        R2 ; [+203]
       27 GETTABLEKS                       R16 R15 K4 ["signature"]
       29 JUMPIFEQKS                       R16 K5 [""] ; [+200]
       31 GETIMPORT                        R16 K7 [pcall]
       33 NEWCLOSURE                       R17 P1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          VAL R15
       36 CALL                             R16 1 2
       37 JUMPIFNOT                        R16 ; [+192]
       38 FASTCALL1                        TYPE R17 ; [+3]
       39 MOVE                             R19 R17
       40 GETIMPORT                        R18 K8 [type]
       42 CALL                             R18 1 1
       43 JUMPIFNOTEQKS                    R18 K9 ["table"] ; [+186]
       45 GETTABLEKS                       R18 R17 K2 ["type"]
       47 JUMPIFNOTEQKS                    R18 K10 ["reasoning"] ; [+182]
       49 MOVE                             R18 R10
       50 CALL                             R18 0 0
       51 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
       53 MOVE                             R19 R3
       54 MOVE                             R20 R17
       55 GETIMPORT                        R18 K12 [table.insert]
       57 CALL                             R18 2 0
       58 JUMP                             ; [+171]
       59 GETTABLEKS                       R16 R15 K2 ["type"]
       61 JUMPIFNOTEQKS                    R16 K13 ["tool_result"] ; [+74]
       63 MOVE                             R16 R10
       64 CALL                             R16 0 0
       65 NEWTABLE                         R16 0 0
       67 GETTABLEKS                       R17 R15 K1 ["content"]
       69 LOADNIL                          R18
       70 LOADNIL                          R19
       71 FORGPREP                         R17
       72 GETTABLEKS                       R22 R21 K2 ["type"]
       74 JUMPIFNOTEQKS                    R22 K14 ["image"] ; [+20]
       76 DUPTABLE                         R24 K19 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
       77 LOADK                            R26 K20 ["data:%*;base64,%*"]
       78 GETTABLEKS                       R28 R21 K21 ["mimeType"]
       80 GETTABLEKS                       R29 R21 K22 ["data"]
       82 NAMECALL                         R26 R26 K23 ["format"]
       84 CALL                             R26 3 1
       85 MOVE                             R25 R26
       86 SETTABLEKS                       R25 R24 K18 ["image_url"]
       88 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
       90 MOVE                             R23 R16
       91 GETIMPORT                        R22 K12 [table.insert]
       93 CALL                             R22 2 0
       94 JUMP                             ; [+11]
       95 DUPTABLE                         R24 K26 [{["type"] = "input_text", ["text"]}]
       96 GETTABLEKS                       R25 R21 K25 ["text"]
       98 SETTABLEKS                       R25 R24 K25 ["text"]
      100 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
      102 MOVE                             R23 R16
      103 GETIMPORT                        R22 K12 [table.insert]
      105 CALL                             R22 2 0
      106 FORGLOOP                         R17 2 ; [-35]
      108 LENGTH                           R18 R16
      109 JUMPIFNOTEQKN                    R18 K27 [1] ; [+10]
      111 GETTABLEN                        R18 R16 1
      112 GETTABLEKS                       R18 R18 K2 ["type"]
      114 JUMPIFNOTEQKS                    R18 K24 ["input_text"] ; [+5]
      116 GETTABLEN                        R17 R16 1
      117 GETTABLEKS                       R17 R17 K25 ["text"]
      119 JUMP                             ; [+1]
      120 MOVE                             R17 R16
      121 DUPTABLE                         R18 K31 [{["type"] = "function_call_output", ["call_id"], ["output"]}]
      122 GETTABLEKS                       R19 R15 K32 ["id"]
      124 SETTABLEKS                       R19 R18 K29 ["call_id"]
      126 SETTABLEKS                       R17 R18 K30 ["output"]
      128 FASTCALL2                        TABLE_INSERT R3 R18 ; [+5]
      130 MOVE                             R20 R3
      131 MOVE                             R21 R18
      132 GETIMPORT                        R19 K12 [table.insert]
      134 CALL                             R19 2 0
      135 JUMP                             ; [+94]
      136 GETTABLEKS                       R16 R15 K2 ["type"]
      138 JUMPIFNOTEQKS                    R16 K25 ["text"] ; [+32]
      140 GETTABLEKS                       R16 R15 K25 ["text"]
      142 JUMPIFNOT                        R16 ; [+28]
      143 LENGTH                           R17 R9
      144 GETTABLE                         R16 R9 R17
      145 JUMPIFNOT                        R16 ; [+13]
      146 GETTABLEKS                       R17 R16 K2 ["type"]
      148 JUMPIFNOTEQKS                    R17 K24 ["input_text"] ; [+10]
      150 GETTABLEKS                       R18 R16 K25 ["text"]
      152 LOADK                            R19 K33 ["\n"]
      153 GETTABLEKS                       R20 R15 K25 ["text"]
      155 CONCAT                           R17 R18 R20
      156 SETTABLEKS                       R17 R16 K25 ["text"]
      158 JUMP                             ; [+71]
      159 DUPTABLE                         R19 K26 [{["type"] = "input_text", ["text"]}]
      160 GETTABLEKS                       R20 R15 K25 ["text"]
      162 SETTABLEKS                       R20 R19 K25 ["text"]
      164 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      166 MOVE                             R18 R9
      167 GETIMPORT                        R17 K12 [table.insert]
      169 CALL                             R17 2 0
      170 JUMP                             ; [+59]
      171 GETTABLEKS                       R16 R15 K2 ["type"]
      173 JUMPIFNOTEQKS                    R16 K14 ["image"] ; [+20]
      175 DUPTABLE                         R18 K19 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
      176 LOADK                            R20 K20 ["data:%*;base64,%*"]
      177 GETTABLEKS                       R22 R15 K21 ["mimeType"]
      179 GETTABLEKS                       R23 R15 K22 ["data"]
      181 NAMECALL                         R20 R20 K23 ["format"]
      183 CALL                             R20 3 1
      184 MOVE                             R19 R20
      185 SETTABLEKS                       R19 R18 K18 ["image_url"]
      187 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      189 MOVE                             R17 R9
      190 GETIMPORT                        R16 K12 [table.insert]
      192 CALL                             R16 2 0
      193 JUMP                             ; [+36]
      194 GETTABLEKS                       R16 R15 K2 ["type"]
      196 JUMPIFNOTEQKS                    R16 K34 ["tool_use"] ; [+33]
      198 MOVE                             R16 R10
      199 CALL                             R16 0 0
      200 LOADK                            R16 K5 [""]
      201 GETTABLEKS                       R17 R15 K35 ["input"]
      203 JUMPIFNOT                        R17 ; [+9]
      204 GETUPVAL                         R17 1
      205 GETTABLEKS                       R17 R17 K36 ["Json"]
      207 GETTABLEKS                       R17 R17 K37 ["encode"]
      209 GETTABLEKS                       R18 R15 K35 ["input"]
      211 CALL                             R17 1 1
      212 MOVE                             R16 R17
      213 DUPTABLE                         R19 K41 [{["type"] = "function_call", ["call_id"], ["name"], ["arguments"]}]
      214 GETTABLEKS                       R20 R15 K32 ["id"]
      216 SETTABLEKS                       R20 R19 K29 ["call_id"]
      218 GETTABLEKS                       R20 R15 K39 ["name"]
      220 SETTABLEKS                       R20 R19 K39 ["name"]
      222 SETTABLEKS                       R16 R19 K40 ["arguments"]
      224 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      226 MOVE                             R18 R3
      227 GETIMPORT                        R17 K12 [table.insert]
      229 CALL                             R17 2 0
      230 FORGLOOP                         R11 2 ; [-209]
      232 MOVE                             R11 R10
      233 CALL                             R11 0 0
      234 FORGLOOP                         R4 2 ; [-228]
      236 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["TokenUsageManager"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Types"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Components"]
       35 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K14 ["OpenAI"]
       39 GETTABLEKS                       R6 R6 K15 ["OpenAIRequestTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K14 ["OpenAI"]
       50 GETTABLEKS                       R7 R7 K16 ["OpenAIResponseTypes"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K17 ["createTracker"]
       55 GETTABLEKS                       R8 R4 K18 ["LLMProviderTypes"]
       57 GETTABLEKS                       R8 R8 K14 ["OpenAI"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K19 [PROTO_0]
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R9 K20 [PROTO_1]
       63 CAPTURE                          VAL R7
       64 DUPCLOSURE                       R10 K21 [PROTO_2]
       65 CAPTURE                          VAL R7
       66 DUPCLOSURE                       R11 K22 [PROTO_3]
       67 DUPCLOSURE                       R12 K23 [PROTO_6]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 DUPCLOSURE                       R13 K24 [PROTO_9]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 DUPTABLE                         R14 K29 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       74 SETTABLEKS                       R9 R14 K25 ["getTokenUsageTracker"]
       76 SETTABLEKS                       R10 R14 K26 ["resetTokenUsageTracker"]
       78 SETTABLEKS                       R12 R14 K27 ["createAdapter"]
       80 SETTABLEKS                       R13 R14 K28 ["convertLLMtoOpenAIMessage"]
       82 RETURN                           R14 1
