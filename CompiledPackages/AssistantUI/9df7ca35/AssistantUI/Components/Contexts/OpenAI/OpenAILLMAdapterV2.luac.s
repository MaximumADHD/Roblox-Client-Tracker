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
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETTABLEKS                       R3 R2 K2 ["error"]
       10 JUMPIF                           R3 ; [+4]
       11 GETTABLEKS                       R3 R2 K3 ["type"]
       13 JUMPIFNOTEQKS                    R3 K2 ["error"] ; [+13]
       15 GETIMPORT                        R3 K5 [warn]
       17 LOADK                            R4 K6 ["Error from OpenAI: "]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 DUPTABLE                         R3 K8 [{["type"] = "error", ["error"] = "client_error"}]
       21 NEWTABLE                         R4 0 1
       23 MOVE                             R5 R3
       24 SETLIST                          R4 R5 1 [1]
       26 RETURN                           R4 1
       27 GETTABLEKS                       R3 R2 K3 ["type"]
       29 NEWTABLE                         R4 0 0
       31 JUMPIFNOTEQKS                    R3 K9 ["response.completed"] ; [+21]
       33 GETTABLEKS                       R5 R2 K10 ["response"]
       35 JUMPIFNOT                        R5 ; [+17]
       36 GETTABLEKS                       R5 R2 K10 ["response"]
       38 GETTABLEKS                       R5 R5 K11 ["usage"]
       40 JUMPIFNOT                        R5 ; [+12]
       41 GETTABLEKS                       R6 R2 K10 ["response"]
       43 GETTABLEKS                       R6 R6 K13 ["model"]
       45 ORK                              R5 R6 K12 []
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R7 R2 K10 ["response"]
       49 GETTABLEKS                       R7 R7 K11 ["usage"]
       51 MOVE                             R8 R5
       52 CALL                             R6 2 0
       53 JUMPIFNOTEQKS                    R3 K14 ["response.output_item.added"] ; [+43]
       55 GETTABLEKS                       R5 R2 K15 ["item"]
       57 JUMPIFNOT                        R5 ; [+39]
       58 GETTABLEKS                       R5 R2 K15 ["item"]
       60 GETTABLEKS                       R6 R5 K3 ["type"]
       62 JUMPIFNOTEQKS                    R6 K16 ["function_call"] ; [+34]
       64 GETTABLEKS                       R6 R5 K17 ["call_id"]
       66 JUMPIF                           R6 ; [+2]
       67 GETTABLEKS                       R6 R5 K18 ["id"]
       69 GETTABLEKS                       R7 R5 K19 ["name"]
       71 JUMPIFNOT                        R6 ; [+25]
       72 JUMPIFNOT                        R7 ; [+24]
       73 GETUPVAL                         R8 2
       74 JUMPIF                           R8 ; [+22]
       75 LOADB                            R8 1
       76 SETUPVAL                         R8 2
       77 LOADB                            R8 1
       78 SETUPVAL                         R8 3
       79 DUPTABLE                         R10 K22 [{["type"] = "content_start", ["contentBlock"]}]
       80 DUPTABLE                         R11 K25 [{["type"] = "tool_use", ["name"], ["id"], ["input"]}]
       81 SETTABLEKS                       R7 R11 K19 ["name"]
       83 SETTABLEKS                       R6 R11 K18 ["id"]
       85 NEWTABLE                         R12 0 0
       87 SETTABLEKS                       R12 R11 K24 ["input"]
       89 SETTABLEKS                       R11 R10 K21 ["contentBlock"]
       91 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
       93 MOVE                             R9 R4
       94 GETIMPORT                        R8 K28 [table.insert]
       96 CALL                             R8 2 0
       97 JUMPIFNOTEQKS                    R3 K29 ["response.output_item.done"] ; [+88]
       99 GETTABLEKS                       R5 R2 K15 ["item"]
      101 JUMPIFNOT                        R5 ; [+84]
      102 GETTABLEKS                       R5 R2 K15 ["item"]
      104 GETTABLEKS                       R6 R5 K3 ["type"]
      106 JUMPIFNOTEQKS                    R6 K30 ["reasoning"] ; [+79]
      108 NEWTABLE                         R6 0 0
      110 GETTABLEKS                       R7 R5 K31 ["summary"]
      112 JUMPIF                           R7 ; [+2]
      113 NEWTABLE                         R7 0 0
      115 LOADNIL                          R8
      116 LOADNIL                          R9
      117 FORGPREP                         R7
      118 GETTABLEKS                       R12 R11 K3 ["type"]
      120 JUMPIFNOTEQKS                    R12 K32 ["summary_text"] ; [+16]
      122 GETTABLEKS                       R12 R11 K33 ["text"]
      124 JUMPIFNOT                        R12 ; [+12]
      125 GETTABLEKS                       R12 R11 K33 ["text"]
      127 JUMPIFEQKS                       R12 K34 [""] ; [+9]
      129 GETTABLEKS                       R14 R11 K33 ["text"]
      131 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      133 MOVE                             R13 R6
      134 GETIMPORT                        R12 K28 [table.insert]
      136 CALL                             R12 2 0
      137 FORGLOOP                         R7 2 ; [-20]
      139 LENGTH                           R7 R6
      140 LOADN                            R8 0
      141 JUMPIFNOTLT                      R8 R7 ; [+44]
      143 DUPTABLE                         R9 K22 [{["type"] = "content_start", ["contentBlock"]}]
      144 DUPTABLE                         R10 K37 [{["type"] = "thinking", ["thinking"] = "", ["signature"] = ""}]
      145 SETTABLEKS                       R10 R9 K21 ["contentBlock"]
      147 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      149 MOVE                             R8 R4
      150 GETIMPORT                        R7 K28 [table.insert]
      152 CALL                             R7 2 0
      153 DUPTABLE                         R9 K40 [{["type"] = "content_delta", ["delta"]}]
      154 DUPTABLE                         R10 K42 [{["type"] = "thinking_delta", ["thinking"], ["signature"]}]
      155 GETIMPORT                        R11 K44 [table.concat]
      157 MOVE                             R12 R6
      158 LOADK                            R13 K45 ["\n"]
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R10 K35 ["thinking"]
      162 GETUPVAL                         R11 0
      163 GETTABLEKS                       R11 R11 K46 ["Json"]
      165 GETTABLEKS                       R11 R11 K47 ["encode"]
      167 MOVE                             R12 R5
      168 CALL                             R11 1 1
      169 SETTABLEKS                       R11 R10 K36 ["signature"]
      171 SETTABLEKS                       R10 R9 K39 ["delta"]
      173 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      175 MOVE                             R8 R4
      176 GETIMPORT                        R7 K28 [table.insert]
      178 CALL                             R7 2 0
      179 DUPTABLE                         R9 K49 [{["type"] = "content_end"}]
      180 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      182 MOVE                             R8 R4
      183 GETIMPORT                        R7 K28 [table.insert]
      185 CALL                             R7 2 0
      186 JUMPIFNOTEQKS                    R3 K50 ["response.content_part.added"] ; [+29]
      188 GETTABLEKS                       R5 R2 K51 ["part"]
      190 JUMPIFNOT                        R5 ; [+25]
      191 GETTABLEKS                       R5 R2 K51 ["part"]
      193 GETTABLEKS                       R6 R5 K3 ["type"]
      195 JUMPIFNOTEQKS                    R6 K52 ["output_text"] ; [+20]
      197 GETUPVAL                         R6 4
      198 JUMPIF                           R6 ; [+17]
      199 LOADB                            R6 1
      200 SETUPVAL                         R6 4
      201 DUPTABLE                         R8 K22 [{["type"] = "content_start", ["contentBlock"]}]
      202 DUPTABLE                         R9 K53 [{["type"] = "text", ["text"]}]
      203 GETTABLEKS                       R11 R5 K33 ["text"]
      205 ORK                              R10 R11 K34 [""]
      206 SETTABLEKS                       R10 R9 K33 ["text"]
      208 SETTABLEKS                       R9 R8 K21 ["contentBlock"]
      210 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      212 MOVE                             R7 R4
      213 GETIMPORT                        R6 K28 [table.insert]
      215 CALL                             R6 2 0
      216 JUMPIFNOTEQKS                    R3 K54 ["response.output_text.delta"] ; [+32]
      218 GETTABLEKS                       R5 R2 K39 ["delta"]
      220 JUMPIFNOT                        R5 ; [+28]
      221 GETUPVAL                         R5 4
      222 JUMPIF                           R5 ; [+12]
      223 LOADB                            R5 1
      224 SETUPVAL                         R5 4
      225 DUPTABLE                         R7 K22 [{["type"] = "content_start", ["contentBlock"]}]
      226 DUPTABLE                         R8 K55 [{["type"] = "text", ["text"] = ""}]
      227 SETTABLEKS                       R8 R7 K21 ["contentBlock"]
      229 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      231 MOVE                             R6 R4
      232 GETIMPORT                        R5 K28 [table.insert]
      234 CALL                             R5 2 0
      235 DUPTABLE                         R7 K40 [{["type"] = "content_delta", ["delta"]}]
      236 DUPTABLE                         R8 K57 [{["type"] = "text_delta", ["text"]}]
      237 GETTABLEKS                       R9 R2 K39 ["delta"]
      239 SETTABLEKS                       R9 R8 K33 ["text"]
      241 SETTABLEKS                       R8 R7 K39 ["delta"]
      243 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      245 MOVE                             R6 R4
      246 GETIMPORT                        R5 K28 [table.insert]
      248 CALL                             R5 2 0
      249 JUMPIFNOTEQKS                    R3 K58 ["response.output_text.done"] ; [+10]
      251 DUPTABLE                         R7 K49 [{["type"] = "content_end"}]
      252 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      254 MOVE                             R6 R4
      255 GETIMPORT                        R5 K28 [table.insert]
      257 CALL                             R5 2 0
      258 LOADB                            R5 0
      259 SETUPVAL                         R5 4
      260 JUMPIFNOTEQKS                    R3 K59 ["response.function_call_arguments.delta"] ; [+18]
      262 GETTABLEKS                       R5 R2 K39 ["delta"]
      264 JUMPIFNOT                        R5 ; [+14]
      265 DUPTABLE                         R7 K40 [{["type"] = "content_delta", ["delta"]}]
      266 DUPTABLE                         R8 K62 [{["type"] = "json_delta", ["jsonDelta"]}]
      267 GETTABLEKS                       R9 R2 K39 ["delta"]
      269 SETTABLEKS                       R9 R8 K61 ["jsonDelta"]
      271 SETTABLEKS                       R8 R7 K39 ["delta"]
      273 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      275 MOVE                             R6 R4
      276 GETIMPORT                        R5 K28 [table.insert]
      278 CALL                             R5 2 0
      279 JUMPIFNOTEQKS                    R3 K63 ["response.function_call_arguments.done"] ; [+10]
      281 DUPTABLE                         R7 K49 [{["type"] = "content_end"}]
      282 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      284 MOVE                             R6 R4
      285 GETIMPORT                        R5 K28 [table.insert]
      287 CALL                             R5 2 0
      288 LOADB                            R5 0
      289 SETUPVAL                         R5 2
      290 JUMPIFEQKS                       R3 K9 ["response.completed"] ; [+5]
      292 JUMPIFEQKS                       R3 K64 ["response.failed"] ; [+3]
      294 JUMPIFNOTEQKS                    R3 K65 ["response.incomplete"] ; [+63]
      296 GETUPVAL                         R5 4
      297 JUMPIF                           R5 ; [+2]
      298 GETUPVAL                         R5 2
      299 JUMPIFNOT                        R5 ; [+7]
      300 DUPTABLE                         R7 K49 [{["type"] = "content_end"}]
      301 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      303 MOVE                             R6 R4
      304 GETIMPORT                        R5 K28 [table.insert]
      306 CALL                             R5 2 0
      307 GETTABLEKS                       R6 R2 K10 ["response"]
      309 JUMPIFNOT                        R6 ; [+5]
      310 GETTABLEKS                       R5 R2 K10 ["response"]
      312 GETTABLEKS                       R5 R5 K66 ["status"]
      314 JUMPIF                           R5 ; [+1]
      315 LOADK                            R5 K67 ["completed"]
      316 GETUPVAL                         R7 3
      317 JUMPIFNOT                        R7 ; [+2]
      318 LOADK                            R6 K23 ["tool_use"]
      319 JUMP                             ; [+13]
      320 JUMPIFNOTEQKS                    R5 K67 ["completed"] ; [+3]
      322 LOADK                            R6 K68 ["message_end"]
      323 JUMP                             ; [+9]
      324 JUMPIFNOTEQKS                    R5 K69 ["failed"] ; [+3]
      326 LOADK                            R6 K70 ["safety_filter"]
      327 JUMP                             ; [+5]
      328 JUMPIFNOTEQKS                    R5 K71 ["incomplete"] ; [+3]
      330 LOADK                            R6 K72 ["token_limit"]
      331 JUMP                             ; [+1]
      332 LOADK                            R6 K68 ["message_end"]
      333 DUPTABLE                         R9 K74 [{["type"] = "message_delta", ["delta"]}]
      334 DUPTABLE                         R10 K76 [{"stopReason"}]
      335 SETTABLEKS                       R6 R10 K75 ["stopReason"]
      337 SETTABLEKS                       R10 R9 K39 ["delta"]
      339 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      341 MOVE                             R8 R4
      342 GETIMPORT                        R7 K28 [table.insert]
      344 CALL                             R7 2 0
      345 DUPTABLE                         R9 K78 [{["type"] = "message_stop"}]
      346 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      348 MOVE                             R8 R4
      349 GETIMPORT                        R7 K28 [table.insert]
      351 CALL                             R7 2 0
      352 LOADB                            R7 0
      353 SETUPVAL                         R7 4
      354 LOADB                            R7 0
      355 SETUPVAL                         R7 2
      356 LOADB                            R7 0
      357 SETUPVAL                         R7 3
      358 RETURN                           R4 1

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
        9 JUMPIFNOT                        R9 ; [+222]
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
       23 JUMPIFNOTEQKS                    R16 K3 ["thinking"] ; [+35]
       25 JUMPIFNOT                        R2 ; [+202]
       26 GETTABLEKS                       R16 R15 K4 ["signature"]
       28 JUMPIFEQKS                       R16 K5 [""] ; [+199]
       30 NEWCLOSURE                       R17 P1
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R15
       33 FASTPCALL                        pcall 1 ; [+2]
       34 GETIMPORT                        R16 K7 [pcall]
       36 CALL                             R16 1 2
       37 JUMPIFNOT                        R16 ; [+190]
       38 FASTCALL1                        TYPE R17 ; [+3]
       39 MOVE                             R19 R17
       40 GETIMPORT                        R18 K8 [type]
       42 CALL                             R18 1 1
       43 JUMPIFNOTEQKS                    R18 K9 ["table"] ; [+184]
       45 GETTABLEKS                       R18 R17 K2 ["type"]
       47 JUMPIFNOTEQKS                    R18 K10 ["reasoning"] ; [+180]
       49 MOVE                             R18 R10
       50 CALL                             R18 0 0
       51 FASTCALL2                        TABLE_INSERT R3 R17 ; [+5]
       53 MOVE                             R19 R3
       54 MOVE                             R20 R17
       55 GETIMPORT                        R18 K12 [table.insert]
       57 CALL                             R18 2 0
       58 JUMP                             ; [+169]
       59 GETTABLEKS                       R16 R15 K2 ["type"]
       61 JUMPIFNOTEQKS                    R16 K13 ["tool_result"] ; [+73]
       63 MOVE                             R16 R10
       64 CALL                             R16 0 0
       65 NEWTABLE                         R16 0 0
       67 GETTABLEKS                       R17 R15 K1 ["content"]
       69 LOADNIL                          R18
       70 LOADNIL                          R19
       71 FORGPREP                         R17
       72 GETTABLEKS                       R22 R21 K2 ["type"]
       74 JUMPIFNOTEQKS                    R22 K14 ["image"] ; [+19]
       76 DUPTABLE                         R24 K19 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
       77 LOADK                            R25 K20 ["data:%*;base64,%*"]
       78 GETTABLEKS                       R27 R21 K21 ["mimeType"]
       80 GETTABLEKS                       R28 R21 K22 ["data"]
       82 NAMECALL                         R25 R25 K23 ["format"]
       84 CALL                             R25 3 1
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
      105 FORGLOOP                         R17 2 ; [-34]
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
      134 JUMP                             ; [+93]
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
      157 JUMP                             ; [+70]
      158 DUPTABLE                         R19 K26 [{["type"] = "input_text", ["text"]}]
      159 GETTABLEKS                       R20 R15 K25 ["text"]
      161 SETTABLEKS                       R20 R19 K25 ["text"]
      163 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      165 MOVE                             R18 R9
      166 GETIMPORT                        R17 K12 [table.insert]
      168 CALL                             R17 2 0
      169 JUMP                             ; [+58]
      170 GETTABLEKS                       R16 R15 K2 ["type"]
      172 JUMPIFNOTEQKS                    R16 K14 ["image"] ; [+19]
      174 DUPTABLE                         R18 K19 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
      175 LOADK                            R19 K20 ["data:%*;base64,%*"]
      176 GETTABLEKS                       R21 R15 K21 ["mimeType"]
      178 GETTABLEKS                       R22 R15 K22 ["data"]
      180 NAMECALL                         R19 R19 K23 ["format"]
      182 CALL                             R19 3 1
      183 SETTABLEKS                       R19 R18 K18 ["image_url"]
      185 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
      187 MOVE                             R17 R9
      188 GETIMPORT                        R16 K12 [table.insert]
      190 CALL                             R16 2 0
      191 JUMP                             ; [+36]
      192 GETTABLEKS                       R16 R15 K2 ["type"]
      194 JUMPIFNOTEQKS                    R16 K34 ["tool_use"] ; [+33]
      196 MOVE                             R16 R10
      197 CALL                             R16 0 0
      198 LOADK                            R16 K5 [""]
      199 GETTABLEKS                       R17 R15 K35 ["input"]
      201 JUMPIFNOT                        R17 ; [+9]
      202 GETUPVAL                         R17 0
      203 GETTABLEKS                       R17 R17 K36 ["Json"]
      205 GETTABLEKS                       R17 R17 K37 ["encode"]
      207 GETTABLEKS                       R18 R15 K35 ["input"]
      209 CALL                             R17 1 1
      210 MOVE                             R16 R17
      211 DUPTABLE                         R19 K41 [{["type"] = "function_call", ["call_id"], ["name"], ["arguments"]}]
      212 GETTABLEKS                       R20 R15 K32 ["id"]
      214 SETTABLEKS                       R20 R19 K29 ["call_id"]
      216 GETTABLEKS                       R20 R15 K39 ["name"]
      218 SETTABLEKS                       R20 R19 K39 ["name"]
      220 SETTABLEKS                       R16 R19 K40 ["arguments"]
      222 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      224 MOVE                             R18 R3
      225 GETIMPORT                        R17 K12 [table.insert]
      227 CALL                             R17 2 0
      228 FORGLOOP                         R11 2 ; [-208]
      230 MOVE                             R11 R10
      231 CALL                             R11 0 0
      232 FORGLOOP                         R4 2 ; [-226]
      234 RETURN                           R3 1

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
