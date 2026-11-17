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
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{[1] = "content_end"}]
        5 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
        7 GETIMPORT                        R0 K5 [table.insert]
        9 CALL                             R0 2 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R3 R2 K2 ["error"]
       10 JUMPIFNOT                        R3 ; [+12]
       11 GETIMPORT                        R3 K4 [warn]
       13 LOADK                            R4 K5 ["Error from OpenAI-compatible chat completions endpoint: "]
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 DUPTABLE                         R3 K8 [{["type"] = "error", ["error"] = "client_error"}]
       17 NEWTABLE                         R4 0 1
       19 MOVE                             R5 R3
       20 SETLIST                          R4 R5 1 [1]
       22 RETURN                           R4 1
       23 GETTABLEKS                       R3 R2 K9 ["usage"]
       25 JUMPIFNOT                        R3 ; [+8]
       26 GETTABLEKS                       R4 R2 K11 ["model"]
       28 ORK                              R3 R4 K10 []
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R5 R2 K9 ["usage"]
       32 MOVE                             R6 R3
       33 CALL                             R4 2 0
       34 GETTABLEKS                       R3 R2 K12 ["choices"]
       36 JUMPIFNOT                        R3 ; [+5]
       37 GETTABLEKS                       R4 R2 K12 ["choices"]
       39 LENGTH                           R3 R4
       40 JUMPIFNOTEQKN                    R3 K13 [0] ; [+4]
       42 NEWTABLE                         R3 0 0
       44 RETURN                           R3 1
       45 GETTABLEKS                       R4 R2 K12 ["choices"]
       47 GETTABLEN                        R3 R4 1
       48 JUMPIF                           R3 ; [+3]
       49 NEWTABLE                         R4 0 0
       51 RETURN                           R4 1
       52 GETTABLEKS                       R4 R3 K14 ["delta"]
       54 NEWTABLE                         R5 0 0
       56 NEWCLOSURE                       R6 P1
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R5
       59 GETTABLEKS                       R7 R4 K15 ["reasoning_content"]
       61 JUMPIF                           R7 ; [+2]
       62 GETTABLEKS                       R7 R4 K16 ["reasoning"]
       64 JUMPIFNOT                        R7 ; [+45]
       65 JUMPIFEQKS                       R7 K17 [""] ; [+44]
       67 GETUPVAL                         R8 2
       68 JUMPIFEQKS                       R8 K16 ["reasoning"] ; [+28]
       70 GETUPVAL                         R8 2
       71 JUMPIFEQKNIL                     R8 ; [+10]
       73 DUPTABLE                         R10 K19 [{["type"] = "content_end"}]
       74 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
       76 MOVE                             R9 R5
       77 GETIMPORT                        R8 K22 [table.insert]
       79 CALL                             R8 2 0
       80 LOADNIL                          R8
       81 SETUPVAL                         R8 2
       82 DUPTABLE                         R8 K25 [{["type"] = "content_start", ["contentBlock"]}]
       83 DUPTABLE                         R9 K28 [{["type"] = "thinking", ["thinking"] = "", ["signature"] = ""}]
       84 SETTABLEKS                       R9 R8 K24 ["contentBlock"]
       86 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
       88 MOVE                             R10 R5
       89 MOVE                             R11 R8
       90 GETIMPORT                        R9 K22 [table.insert]
       92 CALL                             R9 2 0
       93 LOADK                            R9 K16 ["reasoning"]
       94 SETUPVAL                         R9 2
       95 LOADNIL                          R9
       96 SETUPVAL                         R9 3
       97 DUPTABLE                         R8 K30 [{["type"] = "content_delta", ["delta"]}]
       98 DUPTABLE                         R9 K32 [{["type"] = "thinking_delta", ["thinking"], ["signature"] = ""}]
       99 SETTABLEKS                       R7 R9 K26 ["thinking"]
      101 SETTABLEKS                       R9 R8 K14 ["delta"]
      103 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      105 MOVE                             R10 R5
      106 MOVE                             R11 R8
      107 GETIMPORT                        R9 K22 [table.insert]
      109 CALL                             R9 2 0
      110 GETTABLEKS                       R8 R4 K33 ["content"]
      112 JUMPIFNOT                        R8 ; [+45]
      113 GETUPVAL                         R8 2
      114 JUMPIFEQKS                       R8 K34 ["text"] ; [+28]
      116 GETUPVAL                         R8 2
      117 JUMPIFEQKNIL                     R8 ; [+10]
      119 DUPTABLE                         R10 K19 [{["type"] = "content_end"}]
      120 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      122 MOVE                             R9 R5
      123 GETIMPORT                        R8 K22 [table.insert]
      125 CALL                             R8 2 0
      126 LOADNIL                          R8
      127 SETUPVAL                         R8 2
      128 DUPTABLE                         R8 K25 [{["type"] = "content_start", ["contentBlock"]}]
      129 DUPTABLE                         R9 K35 [{["type"] = "text", ["text"] = ""}]
      130 SETTABLEKS                       R9 R8 K24 ["contentBlock"]
      132 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      134 MOVE                             R10 R5
      135 MOVE                             R11 R8
      136 GETIMPORT                        R9 K22 [table.insert]
      138 CALL                             R9 2 0
      139 LOADK                            R9 K34 ["text"]
      140 SETUPVAL                         R9 2
      141 LOADNIL                          R9
      142 SETUPVAL                         R9 3
      143 DUPTABLE                         R8 K30 [{["type"] = "content_delta", ["delta"]}]
      144 DUPTABLE                         R9 K37 [{["type"] = "text_delta", ["text"]}]
      145 GETTABLEKS                       R10 R4 K33 ["content"]
      147 SETTABLEKS                       R10 R9 K34 ["text"]
      149 SETTABLEKS                       R9 R8 K14 ["delta"]
      151 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      153 MOVE                             R10 R5
      154 MOVE                             R11 R8
      155 GETIMPORT                        R9 K22 [table.insert]
      157 CALL                             R9 2 0
      158 GETTABLEKS                       R8 R4 K38 ["tool_calls"]
      160 JUMPIFNOT                        R8 ; [+96]
      161 GETTABLEKS                       R8 R4 K38 ["tool_calls"]
      163 LOADNIL                          R9
      164 LOADNIL                          R10
      165 FORGPREP                         R8
      166 GETTABLEKS                       R13 R12 K39 ["function"]
      168 GETTABLEKS                       R15 R12 K40 ["index"]
      170 ORK                              R14 R15 K13 [0]
      171 JUMPIFNOT                        R13 ; [+60]
      172 GETTABLEKS                       R15 R13 K41 ["name"]
      174 JUMPIFNOT                        R15 ; [+57]
      175 GETUPVAL                         R15 3
      176 JUMPIFEQ                         R14 R15 ; [+55]
      178 GETTABLEKS                       R16 R13 K41 ["name"]
      180 FASTCALL2K                       ASSERT R16 K42 ; [+4]
      182 LOADK                            R17 K42 ["Function call name is required"]
      183 GETIMPORT                        R15 K44 [assert]
      185 CALL                             R15 2 0
      186 GETTABLEKS                       R16 R12 K45 ["id"]
      188 FASTCALL2K                       ASSERT R16 K46 ; [+4]
      190 LOADK                            R17 K46 ["Tool call ID is required"]
      191 GETIMPORT                        R15 K44 [assert]
      193 CALL                             R15 2 0
      194 GETUPVAL                         R15 2
      195 JUMPIFEQKNIL                     R15 ; [+10]
      197 DUPTABLE                         R17 K19 [{["type"] = "content_end"}]
      198 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      200 MOVE                             R16 R5
      201 GETIMPORT                        R15 K22 [table.insert]
      203 CALL                             R15 2 0
      204 LOADNIL                          R15
      205 SETUPVAL                         R15 2
      206 DUPTABLE                         R15 K25 [{["type"] = "content_start", ["contentBlock"]}]
      207 DUPTABLE                         R16 K49 [{["type"] = "tool_use", ["name"], ["id"], ["input"]}]
      208 GETTABLEKS                       R17 R13 K41 ["name"]
      210 SETTABLEKS                       R17 R16 K41 ["name"]
      212 GETTABLEKS                       R17 R12 K45 ["id"]
      214 SETTABLEKS                       R17 R16 K45 ["id"]
      216 NEWTABLE                         R17 0 0
      218 SETTABLEKS                       R17 R16 K48 ["input"]
      220 SETTABLEKS                       R16 R15 K24 ["contentBlock"]
      222 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      224 MOVE                             R17 R5
      225 MOVE                             R18 R15
      226 GETIMPORT                        R16 K22 [table.insert]
      228 CALL                             R16 2 0
      229 LOADK                            R16 K50 ["tool"]
      230 SETUPVAL                         R16 2
      231 SETUPVAL                         R14 3
      232 JUMPIFNOT                        R13 ; [+22]
      233 GETTABLEKS                       R15 R13 K51 ["arguments"]
      235 JUMPIFNOT                        R15 ; [+19]
      236 GETTABLEKS                       R15 R13 K51 ["arguments"]
      238 JUMPIFEQKS                       R15 K17 [""] ; [+16]
      240 DUPTABLE                         R15 K30 [{["type"] = "content_delta", ["delta"]}]
      241 DUPTABLE                         R16 K54 [{["type"] = "json_delta", ["jsonDelta"]}]
      242 GETTABLEKS                       R17 R13 K51 ["arguments"]
      244 SETTABLEKS                       R17 R16 K53 ["jsonDelta"]
      246 SETTABLEKS                       R16 R15 K14 ["delta"]
      248 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      250 MOVE                             R17 R5
      251 MOVE                             R18 R15
      252 GETIMPORT                        R16 K22 [table.insert]
      254 CALL                             R16 2 0
      255 FORGLOOP                         R8 2 ; [-90]
      257 GETTABLEKS                       R8 R3 K55 ["finish_reason"]
      259 JUMPIFNOT                        R8 ; [+62]
      260 GETUPVAL                         R8 2
      261 JUMPIFEQKNIL                     R8 ; [+10]
      263 DUPTABLE                         R10 K19 [{["type"] = "content_end"}]
      264 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      266 MOVE                             R9 R5
      267 GETIMPORT                        R8 K22 [table.insert]
      269 CALL                             R8 2 0
      270 LOADNIL                          R8
      271 SETUPVAL                         R8 2
      272 DUPTABLE                         R10 K57 [{["type"] = "message_delta", ["delta"]}]
      273 DUPTABLE                         R11 K59 [{"stopReason"}]
      274 GETTABLEKS                       R13 R3 K55 ["finish_reason"]
      276 JUMPIFNOTEQKS                    R13 K60 ["stop"] ; [+3]
      278 LOADK                            R12 K61 ["message_end"]
      279 JUMP                             ; [+20]
      280 JUMPIFEQKS                       R13 K38 ["tool_calls"] ; [+3]
      282 JUMPIFNOTEQKS                    R13 K62 ["function_call"] ; [+3]
      284 LOADK                            R12 K47 ["tool_use"]
      285 JUMP                             ; [+14]
      286 JUMPIFNOTEQKS                    R13 K63 ["length"] ; [+3]
      288 LOADK                            R12 K64 ["token_limit"]
      289 JUMP                             ; [+10]
      290 JUMPIFNOTEQKS                    R13 K65 ["content_filter"] ; [+3]
      292 LOADK                            R12 K66 ["safety_filter"]
      293 JUMP                             ; [+6]
      294 GETUPVAL                         R14 4
      295 GETTABLEKS                       R14 R14 K67 ["assertNever"]
      297 MOVE                             R15 R13
      298 CALL                             R14 1 1
      299 MOVE                             R12 R14
      300 SETTABLEKS                       R12 R11 K58 ["stopReason"]
      302 SETTABLEKS                       R11 R10 K14 ["delta"]
      304 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      306 MOVE                             R9 R5
      307 GETIMPORT                        R8 K22 [table.insert]
      309 CALL                             R8 2 0
      310 DUPTABLE                         R8 K69 [{["type"] = "message_stop"}]
      311 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      313 MOVE                             R10 R5
      314 MOVE                             R11 R8
      315 GETIMPORT                        R9 K22 [table.insert]
      317 CALL                             R9 2 0
      318 LOADNIL                          R9
      319 SETUPVAL                         R9 2
      320 LOADNIL                          R9
      321 SETUPVAL                         R9 3
      322 RETURN                           R5 1

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
        3 DUPTABLE                         R0 K2 [{[1] = "assistant"}]
        4 GETUPVAL                         R1 1
        5 JUMPIFEQKS                       R1 K3 [""] ; [+4]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K4 ["reasoning_content"]
       10 GETUPVAL                         R1 2
       11 JUMPIFEQKS                       R1 K3 [""] ; [+4]
       13 GETUPVAL                         R1 2
       14 SETTABLEKS                       R1 R0 K5 ["content"]
       16 GETUPVAL                         R2 3
       17 LENGTH                           R1 R2
       18 LOADN                            R2 0
       19 JUMPIFNOTLT                      R2 R1 ; [+4]
       21 GETUPVAL                         R1 3
       22 SETTABLEKS                       R1 R0 K6 ["tool_calls"]
       24 GETTABLEKS                       R1 R0 K5 ["content"]
       26 JUMPIF                           R1 ; [+6]
       27 GETTABLEKS                       R1 R0 K6 ["tool_calls"]
       29 JUMPIF                           R1 ; [+3]
       30 GETTABLEKS                       R1 R0 K4 ["reasoning_content"]
       32 JUMPIFNOT                        R1 ; [+7]
       33 GETUPVAL                         R2 4
       34 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       36 MOVE                             R3 R0
       37 GETIMPORT                        R1 K9 [table.insert]
       39 CALL                             R1 2 0
       40 LOADK                            R1 K3 [""]
       41 SETUPVAL                         R1 2
       42 NEWTABLE                         R1 0 0
       44 SETUPVAL                         R1 3
       45 LOADK                            R1 K3 [""]
       46 SETUPVAL                         R1 1
       47 LOADB                            R1 0
       48 SETUPVAL                         R1 0
       49 RETURN                           R0 0

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
       24 JUMPIFNOT                        R14 ; [+192]
       25 GETTABLEKS                       R14 R13 K2 ["role"]
       27 JUMPIFNOTEQKS                    R14 K3 ["assistant"] ; [+106]
       29 LOADB                            R7 1
       30 GETTABLEKS                       R14 R13 K1 ["content"]
       32 LOADNIL                          R15
       33 LOADNIL                          R16
       34 FORGPREP                         R14
       35 GETTABLEKS                       R19 R18 K4 ["type"]
       37 JUMPIFNOTEQKS                    R19 K5 ["thinking"] ; [+7]
       39 JUMPIFNOT                        R2 ; [+91]
       40 MOVE                             R19 R6
       41 GETTABLEKS                       R20 R18 K5 ["thinking"]
       43 CONCAT                           R6 R19 R20
       44 JUMP                             ; [+86]
       45 GETTABLEKS                       R19 R18 K4 ["type"]
       47 JUMPIFNOTEQKS                    R19 K6 ["tool_result"] ; [+25]
       49 MOVE                             R19 R8
       50 CALL                             R19 0 0
       51 DUPTABLE                         R21 K9 [{["role"] = "tool", ["tool_call_id"], ["content"]}]
       52 GETTABLEKS                       R22 R18 K10 ["id"]
       54 SETTABLEKS                       R22 R21 K8 ["tool_call_id"]
       56 GETUPVAL                         R22 0
       57 GETTABLEKS                       R22 R22 K11 ["Json"]
       59 GETTABLEKS                       R22 R22 K12 ["encode"]
       61 GETTABLEKS                       R23 R18 K1 ["content"]
       63 CALL                             R22 1 1
       64 SETTABLEKS                       R22 R21 K1 ["content"]
       66 FASTCALL2                        TABLE_INSERT R3 R21 ; [+4]
       68 MOVE                             R20 R3
       69 GETIMPORT                        R19 K15 [table.insert]
       71 CALL                             R19 2 0
       72 JUMP                             ; [+58]
       73 GETTABLEKS                       R19 R18 K4 ["type"]
       75 JUMPIFNOTEQKS                    R19 K16 ["text"] ; [+14]
       77 GETTABLEKS                       R19 R18 K16 ["text"]
       79 JUMPIFNOT                        R19 ; [+10]
       80 JUMPIFEQKS                       R4 K0 [""] ; [+4]
       82 MOVE                             R19 R4
       83 LOADK                            R20 K17 ["\n"]
       84 CONCAT                           R4 R19 R20
       85 MOVE                             R19 R4
       86 GETTABLEKS                       R20 R18 K16 ["text"]
       88 CONCAT                           R4 R19 R20
       89 JUMP                             ; [+41]
       90 GETTABLEKS                       R19 R18 K4 ["type"]
       92 JUMPIFNOTEQKS                    R19 K18 ["tool_use"] ; [+38]
       94 LOADK                            R19 K0 [""]
       95 GETTABLEKS                       R20 R18 K19 ["input"]
       97 JUMPIFNOT                        R20 ; [+9]
       98 GETUPVAL                         R20 0
       99 GETTABLEKS                       R20 R20 K11 ["Json"]
      101 GETTABLEKS                       R20 R20 K12 ["encode"]
      103 GETTABLEKS                       R21 R18 K19 ["input"]
      105 CALL                             R20 1 1
      106 MOVE                             R19 R20
      107 NEWTABLE                         R22 4 0
      109 GETTABLEKS                       R23 R18 K10 ["id"]
      111 SETTABLEKS                       R23 R22 K10 ["id"]
      113 LOADK                            R23 K20 ["function"]
      114 SETTABLEKS                       R23 R22 K4 ["type"]
      116 DUPTABLE                         R23 K23 [{"name", "arguments"}]
      117 GETTABLEKS                       R24 R18 K21 ["name"]
      119 SETTABLEKS                       R24 R23 K21 ["name"]
      121 SETTABLEKS                       R19 R23 K22 ["arguments"]
      123 SETTABLEKS                       R23 R22 K20 ["function"]
      125 FASTCALL2                        TABLE_INSERT R5 R22 ; [+4]
      127 MOVE                             R21 R5
      128 GETIMPORT                        R20 K15 [table.insert]
      130 CALL                             R20 2 0
      131 FORGLOOP                         R14 2 ; [-97]
      133 JUMP                             ; [+83]
      134 MOVE                             R14 R8
      135 CALL                             R14 0 0
      136 LOADK                            R14 K0 [""]
      137 GETTABLEKS                       R15 R13 K1 ["content"]
      139 LOADNIL                          R16
      140 LOADNIL                          R17
      141 FORGPREP                         R15
      142 GETTABLEKS                       R20 R19 K4 ["type"]
      144 JUMPIFNOTEQKS                    R20 K6 ["tool_result"] ; [+39]
      146 JUMPIFEQKS                       R14 K0 [""] ; [+15]
      148 DUPTABLE                         R22 K24 [{"role", "content"}]
      149 GETTABLEKS                       R23 R13 K2 ["role"]
      151 SETTABLEKS                       R23 R22 K2 ["role"]
      153 SETTABLEKS                       R14 R22 K1 ["content"]
      155 FASTCALL2                        TABLE_INSERT R3 R22 ; [+4]
      157 MOVE                             R21 R3
      158 GETIMPORT                        R20 K15 [table.insert]
      160 CALL                             R20 2 0
      161 LOADK                            R14 K0 [""]
      162 DUPTABLE                         R22 K9 [{["role"] = "tool", ["tool_call_id"], ["content"]}]
      163 GETTABLEKS                       R23 R19 K10 ["id"]
      165 SETTABLEKS                       R23 R22 K8 ["tool_call_id"]
      167 GETUPVAL                         R23 0
      168 GETTABLEKS                       R23 R23 K11 ["Json"]
      170 GETTABLEKS                       R23 R23 K12 ["encode"]
      172 GETTABLEKS                       R24 R19 K1 ["content"]
      174 CALL                             R23 1 1
      175 SETTABLEKS                       R23 R22 K1 ["content"]
      177 FASTCALL2                        TABLE_INSERT R3 R22 ; [+4]
      179 MOVE                             R21 R3
      180 GETIMPORT                        R20 K15 [table.insert]
      182 CALL                             R20 2 0
      183 JUMP                             ; [+16]
      184 GETTABLEKS                       R20 R19 K4 ["type"]
      186 JUMPIFNOTEQKS                    R20 K16 ["text"] ; [+13]
      188 GETTABLEKS                       R20 R19 K16 ["text"]
      190 JUMPIFNOT                        R20 ; [+9]
      191 JUMPIFEQKS                       R14 K0 [""] ; [+4]
      193 MOVE                             R20 R14
      194 LOADK                            R21 K17 ["\n"]
      195 CONCAT                           R14 R20 R21
      196 MOVE                             R20 R14
      197 GETTABLEKS                       R21 R19 K16 ["text"]
      199 CONCAT                           R14 R20 R21
      200 FORGLOOP                         R15 2 ; [-59]
      202 JUMPIFEQKS                       R14 K0 [""] ; [+14]
      204 DUPTABLE                         R17 K24 [{"role", "content"}]
      205 GETTABLEKS                       R18 R13 K2 ["role"]
      207 SETTABLEKS                       R18 R17 K2 ["role"]
      209 SETTABLEKS                       R14 R17 K1 ["content"]
      211 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      213 MOVE                             R16 R3
      214 GETIMPORT                        R15 K15 [table.insert]
      216 CALL                             R15 2 0
      217 FORGLOOP                         R9 2 ; [-196]
      219 MOVE                             R9 R8
      220 CALL                             R9 0 0
      221 CLOSEUPVALS                      R4
      222 RETURN                           R3 1

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
