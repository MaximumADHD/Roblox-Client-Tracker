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
       96 JUMPIFNOTEQKS                    R3 K29 ["response.content_part.added"] ; [+29]
       98 GETTABLEKS                       R5 R2 K30 ["part"]
      100 JUMPIFNOT                        R5 ; [+25]
      101 GETTABLEKS                       R5 R2 K30 ["part"]
      103 GETTABLEKS                       R6 R5 K3 ["type"]
      105 JUMPIFNOTEQKS                    R6 K31 ["output_text"] ; [+20]
      107 GETUPVAL                         R6 4
      108 JUMPIF                           R6 ; [+17]
      109 LOADB                            R6 1
      110 SETUPVAL                         R6 4
      111 DUPTABLE                         R8 K22 [{["type"] = "content_start", ["contentBlock"]}]
      112 DUPTABLE                         R9 K33 [{["type"] = "text", ["text"]}]
      113 GETTABLEKS                       R11 R5 K32 ["text"]
      115 ORK                              R10 R11 K34 [""]
      116 SETTABLEKS                       R10 R9 K32 ["text"]
      118 SETTABLEKS                       R9 R8 K21 ["contentBlock"]
      120 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      122 MOVE                             R7 R4
      123 GETIMPORT                        R6 K28 [table.insert]
      125 CALL                             R6 2 0
      126 JUMPIFNOTEQKS                    R3 K35 ["response.output_text.delta"] ; [+32]
      128 GETTABLEKS                       R5 R2 K36 ["delta"]
      130 JUMPIFNOT                        R5 ; [+28]
      131 GETUPVAL                         R5 4
      132 JUMPIF                           R5 ; [+12]
      133 LOADB                            R5 1
      134 SETUPVAL                         R5 4
      135 DUPTABLE                         R7 K22 [{["type"] = "content_start", ["contentBlock"]}]
      136 DUPTABLE                         R8 K37 [{["type"] = "text", ["text"] = ""}]
      137 SETTABLEKS                       R8 R7 K21 ["contentBlock"]
      139 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      141 MOVE                             R6 R4
      142 GETIMPORT                        R5 K28 [table.insert]
      144 CALL                             R5 2 0
      145 DUPTABLE                         R7 K39 [{["type"] = "content_delta", ["delta"]}]
      146 DUPTABLE                         R8 K41 [{["type"] = "text_delta", ["text"]}]
      147 GETTABLEKS                       R9 R2 K36 ["delta"]
      149 SETTABLEKS                       R9 R8 K32 ["text"]
      151 SETTABLEKS                       R8 R7 K36 ["delta"]
      153 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      155 MOVE                             R6 R4
      156 GETIMPORT                        R5 K28 [table.insert]
      158 CALL                             R5 2 0
      159 JUMPIFNOTEQKS                    R3 K42 ["response.output_text.done"] ; [+10]
      161 DUPTABLE                         R7 K44 [{["type"] = "content_end"}]
      162 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      164 MOVE                             R6 R4
      165 GETIMPORT                        R5 K28 [table.insert]
      167 CALL                             R5 2 0
      168 LOADB                            R5 0
      169 SETUPVAL                         R5 4
      170 JUMPIFNOTEQKS                    R3 K45 ["response.function_call_arguments.delta"] ; [+18]
      172 GETTABLEKS                       R5 R2 K36 ["delta"]
      174 JUMPIFNOT                        R5 ; [+14]
      175 DUPTABLE                         R7 K39 [{["type"] = "content_delta", ["delta"]}]
      176 DUPTABLE                         R8 K48 [{["type"] = "json_delta", ["jsonDelta"]}]
      177 GETTABLEKS                       R9 R2 K36 ["delta"]
      179 SETTABLEKS                       R9 R8 K47 ["jsonDelta"]
      181 SETTABLEKS                       R8 R7 K36 ["delta"]
      183 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      185 MOVE                             R6 R4
      186 GETIMPORT                        R5 K28 [table.insert]
      188 CALL                             R5 2 0
      189 JUMPIFNOTEQKS                    R3 K49 ["response.function_call_arguments.done"] ; [+10]
      191 DUPTABLE                         R7 K44 [{["type"] = "content_end"}]
      192 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      194 MOVE                             R6 R4
      195 GETIMPORT                        R5 K28 [table.insert]
      197 CALL                             R5 2 0
      198 LOADB                            R5 0
      199 SETUPVAL                         R5 2
      200 JUMPIFEQKS                       R3 K9 ["response.completed"] ; [+5]
      202 JUMPIFEQKS                       R3 K50 ["response.failed"] ; [+3]
      204 JUMPIFNOTEQKS                    R3 K51 ["response.incomplete"] ; [+63]
      206 GETUPVAL                         R5 4
      207 JUMPIF                           R5 ; [+2]
      208 GETUPVAL                         R5 2
      209 JUMPIFNOT                        R5 ; [+7]
      210 DUPTABLE                         R7 K44 [{["type"] = "content_end"}]
      211 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      213 MOVE                             R6 R4
      214 GETIMPORT                        R5 K28 [table.insert]
      216 CALL                             R5 2 0
      217 GETTABLEKS                       R6 R2 K10 ["response"]
      219 JUMPIFNOT                        R6 ; [+5]
      220 GETTABLEKS                       R5 R2 K10 ["response"]
      222 GETTABLEKS                       R5 R5 K52 ["status"]
      224 JUMPIF                           R5 ; [+1]
      225 LOADK                            R5 K53 ["completed"]
      226 GETUPVAL                         R7 3
      227 JUMPIFNOT                        R7 ; [+2]
      228 LOADK                            R6 K23 ["tool_use"]
      229 JUMP                             ; [+13]
      230 JUMPIFNOTEQKS                    R5 K53 ["completed"] ; [+3]
      232 LOADK                            R6 K54 ["message_end"]
      233 JUMP                             ; [+9]
      234 JUMPIFNOTEQKS                    R5 K55 ["failed"] ; [+3]
      236 LOADK                            R6 K56 ["safety_filter"]
      237 JUMP                             ; [+5]
      238 JUMPIFNOTEQKS                    R5 K57 ["incomplete"] ; [+3]
      240 LOADK                            R6 K58 ["token_limit"]
      241 JUMP                             ; [+1]
      242 LOADK                            R6 K54 ["message_end"]
      243 DUPTABLE                         R9 K60 [{["type"] = "message_delta", ["delta"]}]
      244 DUPTABLE                         R10 K62 [{"stopReason"}]
      245 SETTABLEKS                       R6 R10 K61 ["stopReason"]
      247 SETTABLEKS                       R10 R9 K36 ["delta"]
      249 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      251 MOVE                             R8 R4
      252 GETIMPORT                        R7 K28 [table.insert]
      254 CALL                             R7 2 0
      255 DUPTABLE                         R9 K64 [{["type"] = "message_stop"}]
      256 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      258 MOVE                             R8 R4
      259 GETIMPORT                        R7 K28 [table.insert]
      261 CALL                             R7 2 0
      262 LOADB                            R7 0
      263 SETUPVAL                         R7 4
      264 LOADB                            R7 0
      265 SETUPVAL                         R7 2
      266 LOADB                            R7 0
      267 SETUPVAL                         R7 3
      268 RETURN                           R4 1

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
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["content"]
        8 JUMPIFNOT                        R7 ; [+187]
        9 NEWTABLE                         R7 0 0
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R7
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R6
       15 CAPTURE                          VAL R1
       16 GETTABLEKS                       R9 R6 K0 ["content"]
       18 LOADNIL                          R10
       19 LOADNIL                          R11
       20 FORGPREP                         R9
       21 GETTABLEKS                       R14 R13 K1 ["type"]
       23 JUMPIFNOTEQKS                    R14 K2 ["tool_result"] ; [+74]
       25 MOVE                             R14 R8
       26 CALL                             R14 0 0
       27 NEWTABLE                         R14 0 0
       29 GETTABLEKS                       R15 R13 K0 ["content"]
       31 LOADNIL                          R16
       32 LOADNIL                          R17
       33 FORGPREP                         R15
       34 GETTABLEKS                       R20 R19 K1 ["type"]
       36 JUMPIFNOTEQKS                    R20 K3 ["image"] ; [+20]
       38 DUPTABLE                         R22 K8 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
       39 LOADK                            R24 K9 ["data:%*;base64,%*"]
       40 GETTABLEKS                       R26 R19 K10 ["mimeType"]
       42 GETTABLEKS                       R27 R19 K11 ["data"]
       44 NAMECALL                         R24 R24 K12 ["format"]
       46 CALL                             R24 3 1
       47 MOVE                             R23 R24
       48 SETTABLEKS                       R23 R22 K7 ["image_url"]
       50 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
       52 MOVE                             R21 R14
       53 GETIMPORT                        R20 K15 [table.insert]
       55 CALL                             R20 2 0
       56 JUMP                             ; [+11]
       57 DUPTABLE                         R22 K18 [{["type"] = "input_text", ["text"]}]
       58 GETTABLEKS                       R23 R19 K17 ["text"]
       60 SETTABLEKS                       R23 R22 K17 ["text"]
       62 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
       64 MOVE                             R21 R14
       65 GETIMPORT                        R20 K15 [table.insert]
       67 CALL                             R20 2 0
       68 FORGLOOP                         R15 2 ; [-35]
       70 LENGTH                           R16 R14
       71 JUMPIFNOTEQKN                    R16 K19 [1] ; [+10]
       73 GETTABLEN                        R16 R14 1
       74 GETTABLEKS                       R16 R16 K1 ["type"]
       76 JUMPIFNOTEQKS                    R16 K16 ["input_text"] ; [+5]
       78 GETTABLEN                        R15 R14 1
       79 GETTABLEKS                       R15 R15 K17 ["text"]
       81 JUMP                             ; [+1]
       82 MOVE                             R15 R14
       83 DUPTABLE                         R16 K23 [{["type"] = "function_call_output", ["call_id"], ["output"]}]
       84 GETTABLEKS                       R17 R13 K24 ["id"]
       86 SETTABLEKS                       R17 R16 K21 ["call_id"]
       88 SETTABLEKS                       R15 R16 K22 ["output"]
       90 FASTCALL2                        TABLE_INSERT R1 R16 ; [+5]
       92 MOVE                             R18 R1
       93 MOVE                             R19 R16
       94 GETIMPORT                        R17 K15 [table.insert]
       96 CALL                             R17 2 0
       97 JUMP                             ; [+94]
       98 GETTABLEKS                       R14 R13 K1 ["type"]
      100 JUMPIFNOTEQKS                    R14 K17 ["text"] ; [+32]
      102 GETTABLEKS                       R14 R13 K17 ["text"]
      104 JUMPIFNOT                        R14 ; [+28]
      105 LENGTH                           R15 R7
      106 GETTABLE                         R14 R7 R15
      107 JUMPIFNOT                        R14 ; [+13]
      108 GETTABLEKS                       R15 R14 K1 ["type"]
      110 JUMPIFNOTEQKS                    R15 K16 ["input_text"] ; [+10]
      112 GETTABLEKS                       R16 R14 K17 ["text"]
      114 LOADK                            R17 K25 ["\n"]
      115 GETTABLEKS                       R18 R13 K17 ["text"]
      117 CONCAT                           R15 R16 R18
      118 SETTABLEKS                       R15 R14 K17 ["text"]
      120 JUMP                             ; [+71]
      121 DUPTABLE                         R17 K18 [{["type"] = "input_text", ["text"]}]
      122 GETTABLEKS                       R18 R13 K17 ["text"]
      124 SETTABLEKS                       R18 R17 K17 ["text"]
      126 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
      128 MOVE                             R16 R7
      129 GETIMPORT                        R15 K15 [table.insert]
      131 CALL                             R15 2 0
      132 JUMP                             ; [+59]
      133 GETTABLEKS                       R14 R13 K1 ["type"]
      135 JUMPIFNOTEQKS                    R14 K3 ["image"] ; [+20]
      137 DUPTABLE                         R16 K8 [{["type"] = "input_image", ["detail"] = "auto", ["image_url"]}]
      138 LOADK                            R18 K9 ["data:%*;base64,%*"]
      139 GETTABLEKS                       R20 R13 K10 ["mimeType"]
      141 GETTABLEKS                       R21 R13 K11 ["data"]
      143 NAMECALL                         R18 R18 K12 ["format"]
      145 CALL                             R18 3 1
      146 MOVE                             R17 R18
      147 SETTABLEKS                       R17 R16 K7 ["image_url"]
      149 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      151 MOVE                             R15 R7
      152 GETIMPORT                        R14 K15 [table.insert]
      154 CALL                             R14 2 0
      155 JUMP                             ; [+36]
      156 GETTABLEKS                       R14 R13 K1 ["type"]
      158 JUMPIFNOTEQKS                    R14 K26 ["tool_use"] ; [+33]
      160 MOVE                             R14 R8
      161 CALL                             R14 0 0
      162 LOADK                            R14 K27 [""]
      163 GETTABLEKS                       R15 R13 K28 ["input"]
      165 JUMPIFNOT                        R15 ; [+9]
      166 GETUPVAL                         R15 1
      167 GETTABLEKS                       R15 R15 K29 ["Json"]
      169 GETTABLEKS                       R15 R15 K30 ["encode"]
      171 GETTABLEKS                       R16 R13 K28 ["input"]
      173 CALL                             R15 1 1
      174 MOVE                             R14 R15
      175 DUPTABLE                         R17 K34 [{["type"] = "function_call", ["call_id"], ["name"], ["arguments"]}]
      176 GETTABLEKS                       R18 R13 K24 ["id"]
      178 SETTABLEKS                       R18 R17 K21 ["call_id"]
      180 GETTABLEKS                       R18 R13 K32 ["name"]
      182 SETTABLEKS                       R18 R17 K32 ["name"]
      184 SETTABLEKS                       R14 R17 K33 ["arguments"]
      186 FASTCALL2                        TABLE_INSERT R1 R17 ; [+4]
      188 MOVE                             R16 R1
      189 GETIMPORT                        R15 K15 [table.insert]
      191 CALL                             R15 2 0
      192 FORGLOOP                         R9 2 ; [-172]
      194 MOVE                             R9 R8
      195 CALL                             R9 0 0
      196 FORGLOOP                         R2 2 ; [-191]
      198 RETURN                           R1 1

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
       70 DUPCLOSURE                       R13 K24 [PROTO_8]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R2
       73 DUPTABLE                         R14 K29 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       74 SETTABLEKS                       R9 R14 K25 ["getTokenUsageTracker"]
       76 SETTABLEKS                       R10 R14 K26 ["resetTokenUsageTracker"]
       78 SETTABLEKS                       R12 R14 K27 ["createAdapter"]
       80 SETTABLEKS                       R13 R14 K28 ["convertLLMtoOpenAIMessage"]
       82 RETURN                           R14 1
