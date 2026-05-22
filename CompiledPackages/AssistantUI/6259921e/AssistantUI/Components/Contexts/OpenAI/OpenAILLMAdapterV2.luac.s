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
       12 JUMPIFNOTEQKS                    R3 K2 ["error"] ; [+19]
       14 GETIMPORT                        R3 K5 [warn]
       16 LOADK                            R4 K6 ["Error from OpenAI: "]
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 DUPTABLE                         R3 K7 [{"type", "error"}]
       20 LOADK                            R4 K2 ["error"]
       21 SETTABLEKS                       R4 R3 K3 ["type"]
       23 LOADK                            R4 K8 ["client_error"]
       24 SETTABLEKS                       R4 R3 K2 ["error"]
       26 NEWTABLE                         R4 0 1
       28 MOVE                             R5 R3
       29 SETLIST                          R4 R5 1 [1]
       31 RETURN                           R4 1
       32 GETTABLEKS                       R3 R2 K3 ["type"]
       34 NEWTABLE                         R4 0 0
       36 JUMPIFNOTEQKS                    R3 K9 ["response.completed"] ; [+21]
       38 GETTABLEKS                       R5 R2 K10 ["response"]
       40 JUMPIFNOT                        R5 ; [+17]
       41 GETTABLEKS                       R5 R2 K10 ["response"]
       43 GETTABLEKS                       R5 R5 K11 ["usage"]
       45 JUMPIFNOT                        R5 ; [+12]
       46 GETTABLEKS                       R6 R2 K10 ["response"]
       48 GETTABLEKS                       R6 R6 K13 ["model"]
       50 ORK                              R5 R6 K12 []
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R7 R2 K10 ["response"]
       54 GETTABLEKS                       R7 R7 K11 ["usage"]
       56 MOVE                             R8 R5
       57 CALL                             R6 2 0
       58 JUMPIFNOTEQKS                    R3 K14 ["response.output_item.added"] ; [+49]
       60 GETTABLEKS                       R5 R2 K15 ["item"]
       62 JUMPIFNOT                        R5 ; [+45]
       63 GETTABLEKS                       R5 R2 K15 ["item"]
       65 GETTABLEKS                       R6 R5 K3 ["type"]
       67 JUMPIFNOTEQKS                    R6 K16 ["function_call"] ; [+40]
       69 GETTABLEKS                       R6 R5 K17 ["call_id"]
       71 JUMPIF                           R6 ; [+2]
       72 GETTABLEKS                       R6 R5 K18 ["id"]
       74 GETTABLEKS                       R7 R5 K19 ["name"]
       76 JUMPIFNOT                        R6 ; [+31]
       77 JUMPIFNOT                        R7 ; [+30]
       78 GETUPVAL                         R8 2
       79 JUMPIF                           R8 ; [+28]
       80 LOADB                            R8 1
       81 SETUPVAL                         R8 2
       82 LOADB                            R8 1
       83 SETUPVAL                         R8 3
       84 DUPTABLE                         R10 K21 [{"type", "contentBlock"}]
       85 LOADK                            R11 K22 ["content_start"]
       86 SETTABLEKS                       R11 R10 K3 ["type"]
       88 DUPTABLE                         R11 K24 [{"type", "name", "id", "input"}]
       89 LOADK                            R12 K25 ["tool_use"]
       90 SETTABLEKS                       R12 R11 K3 ["type"]
       92 SETTABLEKS                       R7 R11 K19 ["name"]
       94 SETTABLEKS                       R6 R11 K18 ["id"]
       96 NEWTABLE                         R12 0 0
       98 SETTABLEKS                       R12 R11 K23 ["input"]
      100 SETTABLEKS                       R11 R10 K20 ["contentBlock"]
      102 FASTCALL2                        TABLE_INSERT R4 R10 ; [+4]
      104 MOVE                             R9 R4
      105 GETIMPORT                        R8 K28 [table.insert]
      107 CALL                             R8 2 0
      108 JUMPIFNOTEQKS                    R3 K29 ["response.content_part.added"] ; [+35]
      110 GETTABLEKS                       R5 R2 K30 ["part"]
      112 JUMPIFNOT                        R5 ; [+31]
      113 GETTABLEKS                       R5 R2 K30 ["part"]
      115 GETTABLEKS                       R6 R5 K3 ["type"]
      117 JUMPIFNOTEQKS                    R6 K31 ["output_text"] ; [+26]
      119 GETUPVAL                         R6 4
      120 JUMPIF                           R6 ; [+23]
      121 LOADB                            R6 1
      122 SETUPVAL                         R6 4
      123 DUPTABLE                         R8 K21 [{"type", "contentBlock"}]
      124 LOADK                            R9 K22 ["content_start"]
      125 SETTABLEKS                       R9 R8 K3 ["type"]
      127 DUPTABLE                         R9 K33 [{"type", "text"}]
      128 LOADK                            R10 K32 ["text"]
      129 SETTABLEKS                       R10 R9 K3 ["type"]
      131 GETTABLEKS                       R11 R5 K32 ["text"]
      133 ORK                              R10 R11 K34 [""]
      134 SETTABLEKS                       R10 R9 K32 ["text"]
      136 SETTABLEKS                       R9 R8 K20 ["contentBlock"]
      138 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      140 MOVE                             R7 R4
      141 GETIMPORT                        R6 K28 [table.insert]
      143 CALL                             R6 2 0
      144 JUMPIFNOTEQKS                    R3 K35 ["response.output_text.delta"] ; [+47]
      146 GETTABLEKS                       R5 R2 K36 ["delta"]
      148 JUMPIFNOT                        R5 ; [+43]
      149 GETUPVAL                         R5 4
      150 JUMPIF                           R5 ; [+21]
      151 LOADB                            R5 1
      152 SETUPVAL                         R5 4
      153 DUPTABLE                         R7 K21 [{"type", "contentBlock"}]
      154 LOADK                            R8 K22 ["content_start"]
      155 SETTABLEKS                       R8 R7 K3 ["type"]
      157 DUPTABLE                         R8 K33 [{"type", "text"}]
      158 LOADK                            R9 K32 ["text"]
      159 SETTABLEKS                       R9 R8 K3 ["type"]
      161 LOADK                            R9 K34 [""]
      162 SETTABLEKS                       R9 R8 K32 ["text"]
      164 SETTABLEKS                       R8 R7 K20 ["contentBlock"]
      166 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      168 MOVE                             R6 R4
      169 GETIMPORT                        R5 K28 [table.insert]
      171 CALL                             R5 2 0
      172 DUPTABLE                         R7 K37 [{"type", "delta"}]
      173 LOADK                            R8 K38 ["content_delta"]
      174 SETTABLEKS                       R8 R7 K3 ["type"]
      176 DUPTABLE                         R8 K33 [{"type", "text"}]
      177 LOADK                            R9 K39 ["text_delta"]
      178 SETTABLEKS                       R9 R8 K3 ["type"]
      180 GETTABLEKS                       R9 R2 K36 ["delta"]
      182 SETTABLEKS                       R9 R8 K32 ["text"]
      184 SETTABLEKS                       R8 R7 K36 ["delta"]
      186 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      188 MOVE                             R6 R4
      189 GETIMPORT                        R5 K28 [table.insert]
      191 CALL                             R5 2 0
      192 JUMPIFNOTEQKS                    R3 K40 ["response.output_text.done"] ; [+13]
      194 DUPTABLE                         R7 K41 [{"type"}]
      195 LOADK                            R8 K42 ["content_end"]
      196 SETTABLEKS                       R8 R7 K3 ["type"]
      198 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      200 MOVE                             R6 R4
      201 GETIMPORT                        R5 K28 [table.insert]
      203 CALL                             R5 2 0
      204 LOADB                            R5 0
      205 SETUPVAL                         R5 4
      206 JUMPIFNOTEQKS                    R3 K43 ["response.function_call_arguments.delta"] ; [+24]
      208 GETTABLEKS                       R5 R2 K36 ["delta"]
      210 JUMPIFNOT                        R5 ; [+20]
      211 DUPTABLE                         R7 K37 [{"type", "delta"}]
      212 LOADK                            R8 K38 ["content_delta"]
      213 SETTABLEKS                       R8 R7 K3 ["type"]
      215 DUPTABLE                         R8 K45 [{"type", "jsonDelta"}]
      216 LOADK                            R9 K46 ["json_delta"]
      217 SETTABLEKS                       R9 R8 K3 ["type"]
      219 GETTABLEKS                       R9 R2 K36 ["delta"]
      221 SETTABLEKS                       R9 R8 K44 ["jsonDelta"]
      223 SETTABLEKS                       R8 R7 K36 ["delta"]
      225 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      227 MOVE                             R6 R4
      228 GETIMPORT                        R5 K28 [table.insert]
      230 CALL                             R5 2 0
      231 JUMPIFNOTEQKS                    R3 K47 ["response.function_call_arguments.done"] ; [+13]
      233 DUPTABLE                         R7 K41 [{"type"}]
      234 LOADK                            R8 K42 ["content_end"]
      235 SETTABLEKS                       R8 R7 K3 ["type"]
      237 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      239 MOVE                             R6 R4
      240 GETIMPORT                        R5 K28 [table.insert]
      242 CALL                             R5 2 0
      243 LOADB                            R5 0
      244 SETUPVAL                         R5 2
      245 JUMPIFEQKS                       R3 K9 ["response.completed"] ; [+5]
      247 JUMPIFEQKS                       R3 K48 ["response.failed"] ; [+3]
      249 JUMPIFNOTEQKS                    R3 K49 ["response.incomplete"] ; [+72]
      251 GETUPVAL                         R5 4
      252 JUMPIF                           R5 ; [+2]
      253 GETUPVAL                         R5 2
      254 JUMPIFNOT                        R5 ; [+10]
      255 DUPTABLE                         R7 K41 [{"type"}]
      256 LOADK                            R8 K42 ["content_end"]
      257 SETTABLEKS                       R8 R7 K3 ["type"]
      259 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      261 MOVE                             R6 R4
      262 GETIMPORT                        R5 K28 [table.insert]
      264 CALL                             R5 2 0
      265 GETTABLEKS                       R6 R2 K10 ["response"]
      267 JUMPIFNOT                        R6 ; [+5]
      268 GETTABLEKS                       R5 R2 K10 ["response"]
      270 GETTABLEKS                       R5 R5 K50 ["status"]
      272 JUMPIF                           R5 ; [+1]
      273 LOADK                            R5 K51 ["completed"]
      274 GETUPVAL                         R7 3
      275 JUMPIFNOT                        R7 ; [+2]
      276 LOADK                            R6 K25 ["tool_use"]
      277 JUMP                             ; [+13]
      278 JUMPIFNOTEQKS                    R5 K51 ["completed"] ; [+3]
      280 LOADK                            R6 K52 ["message_end"]
      281 JUMP                             ; [+9]
      282 JUMPIFNOTEQKS                    R5 K53 ["failed"] ; [+3]
      284 LOADK                            R6 K54 ["safety_filter"]
      285 JUMP                             ; [+5]
      286 JUMPIFNOTEQKS                    R5 K55 ["incomplete"] ; [+3]
      288 LOADK                            R6 K56 ["token_limit"]
      289 JUMP                             ; [+1]
      290 LOADK                            R6 K52 ["message_end"]
      291 DUPTABLE                         R9 K37 [{"type", "delta"}]
      292 LOADK                            R10 K57 ["message_delta"]
      293 SETTABLEKS                       R10 R9 K3 ["type"]
      295 DUPTABLE                         R10 K59 [{"stopReason"}]
      296 SETTABLEKS                       R6 R10 K58 ["stopReason"]
      298 SETTABLEKS                       R10 R9 K36 ["delta"]
      300 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      302 MOVE                             R8 R4
      303 GETIMPORT                        R7 K28 [table.insert]
      305 CALL                             R7 2 0
      306 DUPTABLE                         R9 K41 [{"type"}]
      307 LOADK                            R10 K60 ["message_stop"]
      308 SETTABLEKS                       R10 R9 K3 ["type"]
      310 FASTCALL2                        TABLE_INSERT R4 R9 ; [+4]
      312 MOVE                             R8 R4
      313 GETIMPORT                        R7 K28 [table.insert]
      315 CALL                             R7 2 0
      316 LOADB                            R7 0
      317 SETUPVAL                         R7 4
      318 LOADB                            R7 0
      319 SETUPVAL                         R7 2
      320 LOADB                            R7 0
      321 SETUPVAL                         R7 3
      322 RETURN                           R4 1

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
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R0 0
       21 LOADB                            R2 1
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K5 ["role"]
       25 JUMPIFEQKS                       R3 K6 ["assistant"] ; [+14]
       27 LOADB                            R2 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K5 ["role"]
       31 JUMPIFEQKS                       R3 K7 ["user"] ; [+8]
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K5 ["role"]
       36 JUMPIFEQKS                       R3 K8 ["system"] ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       42 LOADK                            R3 K9 ["Invalid message role"]
       43 GETIMPORT                        R1 K11 [assert]
       45 CALL                             R1 2 0
       46 DUPTABLE                         R1 K13 [{"type", "role", "content"}]
       47 LOADK                            R2 K14 ["message"]
       48 SETTABLEKS                       R2 R1 K2 ["type"]
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K5 ["role"]
       53 SETTABLEKS                       R2 R1 K5 ["role"]
       55 SETTABLEKS                       R0 R1 K12 ["content"]
       57 GETUPVAL                         R3 2
       58 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       60 MOVE                             R4 R1
       61 GETIMPORT                        R2 K17 [table.insert]
       63 CALL                             R2 2 0
       64 GETIMPORT                        R2 K19 [table.clear]
       66 GETUPVAL                         R3 0
       67 CALL                             R2 1 0
       68 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["content"]
        8 JUMPIFNOT                        R7 ; [+210]
        9 NEWTABLE                         R7 0 0
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R7
       13 CAPTURE                          VAL R6
       14 CAPTURE                          VAL R1
       15 GETTABLEKS                       R9 R6 K0 ["content"]
       17 LOADNIL                          R10
       18 LOADNIL                          R11
       19 FORGPREP                         R9
       20 GETTABLEKS                       R14 R13 K1 ["type"]
       22 JUMPIFNOTEQKS                    R14 K2 ["tool_result"] ; [+86]
       24 MOVE                             R14 R8
       25 CALL                             R14 0 0
       26 NEWTABLE                         R14 0 0
       28 GETTABLEKS                       R15 R13 K0 ["content"]
       30 LOADNIL                          R16
       31 LOADNIL                          R17
       32 FORGPREP                         R15
       33 GETTABLEKS                       R20 R19 K1 ["type"]
       35 JUMPIFNOTEQKS                    R20 K3 ["image"] ; [+26]
       37 DUPTABLE                         R22 K6 [{"type", "detail", "image_url"}]
       38 LOADK                            R23 K7 ["input_image"]
       39 SETTABLEKS                       R23 R22 K1 ["type"]
       41 LOADK                            R23 K8 ["auto"]
       42 SETTABLEKS                       R23 R22 K4 ["detail"]
       44 LOADK                            R24 K9 ["data:%*;base64,%*"]
       45 GETTABLEKS                       R26 R19 K10 ["mimeType"]
       47 GETTABLEKS                       R27 R19 K11 ["data"]
       49 NAMECALL                         R24 R24 K12 ["format"]
       51 CALL                             R24 3 1
       52 MOVE                             R23 R24
       53 SETTABLEKS                       R23 R22 K5 ["image_url"]
       55 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
       57 MOVE                             R21 R14
       58 GETIMPORT                        R20 K15 [table.insert]
       60 CALL                             R20 2 0
       61 JUMP                             ; [+14]
       62 DUPTABLE                         R22 K17 [{"type", "text"}]
       63 LOADK                            R23 K18 ["input_text"]
       64 SETTABLEKS                       R23 R22 K1 ["type"]
       66 GETTABLEKS                       R23 R19 K16 ["text"]
       68 SETTABLEKS                       R23 R22 K16 ["text"]
       70 FASTCALL2                        TABLE_INSERT R14 R22 ; [+4]
       72 MOVE                             R21 R14
       73 GETIMPORT                        R20 K15 [table.insert]
       75 CALL                             R20 2 0
       76 FORGLOOP                         R15 2 ; [-44]
       78 LENGTH                           R16 R14
       79 JUMPIFNOTEQKN                    R16 K19 [1] ; [+10]
       81 GETTABLEN                        R16 R14 1
       82 GETTABLEKS                       R16 R16 K1 ["type"]
       84 JUMPIFNOTEQKS                    R16 K18 ["input_text"] ; [+5]
       86 GETTABLEN                        R15 R14 1
       87 GETTABLEKS                       R15 R15 K16 ["text"]
       89 JUMP                             ; [+1]
       90 MOVE                             R15 R14
       91 DUPTABLE                         R16 K22 [{"type", "call_id", "output"}]
       92 LOADK                            R17 K23 ["function_call_output"]
       93 SETTABLEKS                       R17 R16 K1 ["type"]
       95 GETTABLEKS                       R17 R13 K24 ["id"]
       97 SETTABLEKS                       R17 R16 K20 ["call_id"]
       99 SETTABLEKS                       R15 R16 K21 ["output"]
      101 FASTCALL2                        TABLE_INSERT R1 R16 ; [+5]
      103 MOVE                             R18 R1
      104 MOVE                             R19 R16
      105 GETIMPORT                        R17 K15 [table.insert]
      107 CALL                             R17 2 0
      108 JUMP                             ; [+106]
      109 GETTABLEKS                       R14 R13 K1 ["type"]
      111 JUMPIFNOTEQKS                    R14 K16 ["text"] ; [+35]
      113 GETTABLEKS                       R14 R13 K16 ["text"]
      115 JUMPIFNOT                        R14 ; [+31]
      116 LENGTH                           R15 R7
      117 GETTABLE                         R14 R7 R15
      118 JUMPIFNOT                        R14 ; [+13]
      119 GETTABLEKS                       R15 R14 K1 ["type"]
      121 JUMPIFNOTEQKS                    R15 K18 ["input_text"] ; [+10]
      123 GETTABLEKS                       R16 R14 K16 ["text"]
      125 LOADK                            R17 K25 ["\n"]
      126 GETTABLEKS                       R18 R13 K16 ["text"]
      128 CONCAT                           R15 R16 R18
      129 SETTABLEKS                       R15 R14 K16 ["text"]
      131 JUMP                             ; [+83]
      132 DUPTABLE                         R17 K17 [{"type", "text"}]
      133 LOADK                            R18 K18 ["input_text"]
      134 SETTABLEKS                       R18 R17 K1 ["type"]
      136 GETTABLEKS                       R18 R13 K16 ["text"]
      138 SETTABLEKS                       R18 R17 K16 ["text"]
      140 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
      142 MOVE                             R16 R7
      143 GETIMPORT                        R15 K15 [table.insert]
      145 CALL                             R15 2 0
      146 JUMP                             ; [+68]
      147 GETTABLEKS                       R14 R13 K1 ["type"]
      149 JUMPIFNOTEQKS                    R14 K3 ["image"] ; [+26]
      151 DUPTABLE                         R16 K6 [{"type", "detail", "image_url"}]
      152 LOADK                            R17 K7 ["input_image"]
      153 SETTABLEKS                       R17 R16 K1 ["type"]
      155 LOADK                            R17 K8 ["auto"]
      156 SETTABLEKS                       R17 R16 K4 ["detail"]
      158 LOADK                            R18 K9 ["data:%*;base64,%*"]
      159 GETTABLEKS                       R20 R13 K10 ["mimeType"]
      161 GETTABLEKS                       R21 R13 K11 ["data"]
      163 NAMECALL                         R18 R18 K12 ["format"]
      165 CALL                             R18 3 1
      166 MOVE                             R17 R18
      167 SETTABLEKS                       R17 R16 K5 ["image_url"]
      169 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      171 MOVE                             R15 R7
      172 GETIMPORT                        R14 K15 [table.insert]
      174 CALL                             R14 2 0
      175 JUMP                             ; [+39]
      176 GETTABLEKS                       R14 R13 K1 ["type"]
      178 JUMPIFNOTEQKS                    R14 K26 ["tool_use"] ; [+36]
      180 MOVE                             R14 R8
      181 CALL                             R14 0 0
      182 LOADK                            R14 K27 [""]
      183 GETTABLEKS                       R15 R13 K28 ["input"]
      185 JUMPIFNOT                        R15 ; [+9]
      186 GETUPVAL                         R15 0
      187 GETTABLEKS                       R15 R15 K29 ["Json"]
      189 GETTABLEKS                       R15 R15 K30 ["encode"]
      191 GETTABLEKS                       R16 R13 K28 ["input"]
      193 CALL                             R15 1 1
      194 MOVE                             R14 R15
      195 DUPTABLE                         R17 K33 [{"type", "call_id", "name", "arguments"}]
      196 LOADK                            R18 K34 ["function_call"]
      197 SETTABLEKS                       R18 R17 K1 ["type"]
      199 GETTABLEKS                       R18 R13 K24 ["id"]
      201 SETTABLEKS                       R18 R17 K20 ["call_id"]
      203 GETTABLEKS                       R18 R13 K31 ["name"]
      205 SETTABLEKS                       R18 R17 K31 ["name"]
      207 SETTABLEKS                       R14 R17 K32 ["arguments"]
      209 FASTCALL2                        TABLE_INSERT R1 R17 ; [+4]
      211 MOVE                             R16 R1
      212 GETIMPORT                        R15 K15 [table.insert]
      214 CALL                             R15 2 0
      215 FORGLOOP                         R9 2 ; [-196]
      217 MOVE                             R9 R8
      218 CALL                             R9 0 0
      219 FORGLOOP                         R2 2 ; [-214]
      221 RETURN                           R1 1

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
       65 DUPCLOSURE                       R12 K23 [PROTO_8]
       66 CAPTURE                          VAL R1
       67 DUPTABLE                         R13 K28 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       68 SETTABLEKS                       R8 R13 K24 ["getTokenUsageTracker"]
       70 SETTABLEKS                       R9 R13 K25 ["resetTokenUsageTracker"]
       72 SETTABLEKS                       R11 R13 K26 ["createAdapter"]
       74 SETTABLEKS                       R12 R13 K27 ["convertLLMtoOpenAIMessage"]
       76 RETURN                           R13 1
