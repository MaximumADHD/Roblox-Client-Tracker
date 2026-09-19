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
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R3 R2 K2 ["error"]
        9 JUMPIFNOT                        R3 ; [+12]
       10 GETIMPORT                        R3 K4 [warn]
       12 LOADK                            R4 K5 ["Error from OpenAI-compatible chat completions endpoint: "]
       13 MOVE                             R5 R2
       14 CALL                             R3 2 0
       15 DUPTABLE                         R3 K8 [{["type"] = "error", ["error"] = "client_error"}]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R3
       19 SETLIST                          R4 R5 1 [1]
       21 RETURN                           R4 1
       22 GETTABLEKS                       R3 R2 K9 ["usage"]
       24 JUMPIFNOT                        R3 ; [+8]
       25 GETTABLEKS                       R4 R2 K11 ["model"]
       27 ORK                              R3 R4 K10 []
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R5 R2 K9 ["usage"]
       31 MOVE                             R6 R3
       32 CALL                             R4 2 0
       33 GETTABLEKS                       R3 R2 K12 ["choices"]
       35 JUMPIFNOT                        R3 ; [+5]
       36 GETTABLEKS                       R4 R2 K12 ["choices"]
       38 LENGTH                           R3 R4
       39 JUMPIFNOTEQKN                    R3 K13 [0] ; [+4]
       41 NEWTABLE                         R3 0 0
       43 RETURN                           R3 1
       44 GETTABLEKS                       R4 R2 K12 ["choices"]
       46 GETTABLEN                        R3 R4 1
       47 JUMPIF                           R3 ; [+3]
       48 NEWTABLE                         R4 0 0
       50 RETURN                           R4 1
       51 GETTABLEKS                       R4 R3 K14 ["delta"]
       53 NEWTABLE                         R5 0 0
       55 NEWCLOSURE                       R6 P1
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R5
       58 GETTABLEKS                       R7 R4 K15 ["reasoning_content"]
       60 JUMPIF                           R7 ; [+2]
       61 GETTABLEKS                       R7 R4 K16 ["reasoning"]
       63 JUMPIFNOT                        R7 ; [+45]
       64 JUMPIFEQKS                       R7 K17 [""] ; [+44]
       66 GETUPVAL                         R8 2
       67 JUMPIFEQKS                       R8 K16 ["reasoning"] ; [+28]
       69 GETUPVAL                         R8 2
       70 JUMPIFEQKNIL                     R8 ; [+10]
       72 DUPTABLE                         R10 K19 [{["type"] = "content_end"}]
       73 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
       75 MOVE                             R9 R5
       76 GETIMPORT                        R8 K22 [table.insert]
       78 CALL                             R8 2 0
       79 LOADNIL                          R8
       80 SETUPVAL                         R8 2
       81 DUPTABLE                         R8 K25 [{["type"] = "content_start", ["contentBlock"]}]
       82 DUPTABLE                         R9 K28 [{["type"] = "thinking", ["thinking"] = "", ["signature"] = ""}]
       83 SETTABLEKS                       R9 R8 K24 ["contentBlock"]
       85 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
       87 MOVE                             R10 R5
       88 MOVE                             R11 R8
       89 GETIMPORT                        R9 K22 [table.insert]
       91 CALL                             R9 2 0
       92 LOADK                            R9 K16 ["reasoning"]
       93 SETUPVAL                         R9 2
       94 LOADNIL                          R9
       95 SETUPVAL                         R9 3
       96 DUPTABLE                         R8 K30 [{["type"] = "content_delta", ["delta"]}]
       97 DUPTABLE                         R9 K32 [{["type"] = "thinking_delta", ["thinking"], ["signature"] = ""}]
       98 SETTABLEKS                       R7 R9 K26 ["thinking"]
      100 SETTABLEKS                       R9 R8 K14 ["delta"]
      102 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      104 MOVE                             R10 R5
      105 MOVE                             R11 R8
      106 GETIMPORT                        R9 K22 [table.insert]
      108 CALL                             R9 2 0
      109 GETTABLEKS                       R8 R4 K33 ["content"]
      111 JUMPIFNOT                        R8 ; [+45]
      112 GETUPVAL                         R8 2
      113 JUMPIFEQKS                       R8 K34 ["text"] ; [+28]
      115 GETUPVAL                         R8 2
      116 JUMPIFEQKNIL                     R8 ; [+10]
      118 DUPTABLE                         R10 K19 [{["type"] = "content_end"}]
      119 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      121 MOVE                             R9 R5
      122 GETIMPORT                        R8 K22 [table.insert]
      124 CALL                             R8 2 0
      125 LOADNIL                          R8
      126 SETUPVAL                         R8 2
      127 DUPTABLE                         R8 K25 [{["type"] = "content_start", ["contentBlock"]}]
      128 DUPTABLE                         R9 K35 [{["type"] = "text", ["text"] = ""}]
      129 SETTABLEKS                       R9 R8 K24 ["contentBlock"]
      131 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      133 MOVE                             R10 R5
      134 MOVE                             R11 R8
      135 GETIMPORT                        R9 K22 [table.insert]
      137 CALL                             R9 2 0
      138 LOADK                            R9 K34 ["text"]
      139 SETUPVAL                         R9 2
      140 LOADNIL                          R9
      141 SETUPVAL                         R9 3
      142 DUPTABLE                         R8 K30 [{["type"] = "content_delta", ["delta"]}]
      143 DUPTABLE                         R9 K37 [{["type"] = "text_delta", ["text"]}]
      144 GETTABLEKS                       R10 R4 K33 ["content"]
      146 SETTABLEKS                       R10 R9 K34 ["text"]
      148 SETTABLEKS                       R9 R8 K14 ["delta"]
      150 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      152 MOVE                             R10 R5
      153 MOVE                             R11 R8
      154 GETIMPORT                        R9 K22 [table.insert]
      156 CALL                             R9 2 0
      157 GETTABLEKS                       R8 R4 K38 ["tool_calls"]
      159 JUMPIFNOT                        R8 ; [+96]
      160 GETTABLEKS                       R8 R4 K38 ["tool_calls"]
      162 LOADNIL                          R9
      163 LOADNIL                          R10
      164 FORGPREP                         R8
      165 GETTABLEKS                       R13 R12 K39 ["function"]
      167 GETTABLEKS                       R15 R12 K40 ["index"]
      169 ORK                              R14 R15 K13 [0]
      170 JUMPIFNOT                        R13 ; [+60]
      171 GETTABLEKS                       R15 R13 K41 ["name"]
      173 JUMPIFNOT                        R15 ; [+57]
      174 GETUPVAL                         R15 3
      175 JUMPIFEQ                         R14 R15 ; [+55]
      177 GETTABLEKS                       R16 R13 K41 ["name"]
      179 FASTCALL2K                       ASSERT R16 K42 ; [+4]
      181 LOADK                            R17 K42 ["Function call name is required"]
      182 GETIMPORT                        R15 K44 [assert]
      184 CALL                             R15 2 0
      185 GETTABLEKS                       R16 R12 K45 ["id"]
      187 FASTCALL2K                       ASSERT R16 K46 ; [+4]
      189 LOADK                            R17 K46 ["Tool call ID is required"]
      190 GETIMPORT                        R15 K44 [assert]
      192 CALL                             R15 2 0
      193 GETUPVAL                         R15 2
      194 JUMPIFEQKNIL                     R15 ; [+10]
      196 DUPTABLE                         R17 K19 [{["type"] = "content_end"}]
      197 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      199 MOVE                             R16 R5
      200 GETIMPORT                        R15 K22 [table.insert]
      202 CALL                             R15 2 0
      203 LOADNIL                          R15
      204 SETUPVAL                         R15 2
      205 DUPTABLE                         R15 K25 [{["type"] = "content_start", ["contentBlock"]}]
      206 DUPTABLE                         R16 K49 [{["type"] = "tool_use", ["name"], ["id"], ["input"]}]
      207 GETTABLEKS                       R17 R13 K41 ["name"]
      209 SETTABLEKS                       R17 R16 K41 ["name"]
      211 GETTABLEKS                       R17 R12 K45 ["id"]
      213 SETTABLEKS                       R17 R16 K45 ["id"]
      215 NEWTABLE                         R17 0 0
      217 SETTABLEKS                       R17 R16 K48 ["input"]
      219 SETTABLEKS                       R16 R15 K24 ["contentBlock"]
      221 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      223 MOVE                             R17 R5
      224 MOVE                             R18 R15
      225 GETIMPORT                        R16 K22 [table.insert]
      227 CALL                             R16 2 0
      228 LOADK                            R16 K50 ["tool"]
      229 SETUPVAL                         R16 2
      230 SETUPVAL                         R14 3
      231 JUMPIFNOT                        R13 ; [+22]
      232 GETTABLEKS                       R15 R13 K51 ["arguments"]
      234 JUMPIFNOT                        R15 ; [+19]
      235 GETTABLEKS                       R15 R13 K51 ["arguments"]
      237 JUMPIFEQKS                       R15 K17 [""] ; [+16]
      239 DUPTABLE                         R15 K30 [{["type"] = "content_delta", ["delta"]}]
      240 DUPTABLE                         R16 K54 [{["type"] = "json_delta", ["jsonDelta"]}]
      241 GETTABLEKS                       R17 R13 K51 ["arguments"]
      243 SETTABLEKS                       R17 R16 K53 ["jsonDelta"]
      245 SETTABLEKS                       R16 R15 K14 ["delta"]
      247 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
      249 MOVE                             R17 R5
      250 MOVE                             R18 R15
      251 GETIMPORT                        R16 K22 [table.insert]
      253 CALL                             R16 2 0
      254 FORGLOOP                         R8 2 ; [-90]
      256 GETTABLEKS                       R8 R3 K55 ["finish_reason"]
      258 JUMPIFNOT                        R8 ; [+62]
      259 GETUPVAL                         R8 2
      260 JUMPIFEQKNIL                     R8 ; [+10]
      262 DUPTABLE                         R10 K19 [{["type"] = "content_end"}]
      263 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      265 MOVE                             R9 R5
      266 GETIMPORT                        R8 K22 [table.insert]
      268 CALL                             R8 2 0
      269 LOADNIL                          R8
      270 SETUPVAL                         R8 2
      271 DUPTABLE                         R10 K57 [{["type"] = "message_delta", ["delta"]}]
      272 DUPTABLE                         R11 K59 [{"stopReason"}]
      273 GETTABLEKS                       R13 R3 K55 ["finish_reason"]
      275 JUMPIFNOTEQKS                    R13 K60 ["stop"] ; [+3]
      277 LOADK                            R12 K61 ["message_end"]
      278 JUMP                             ; [+20]
      279 JUMPIFEQKS                       R13 K38 ["tool_calls"] ; [+3]
      281 JUMPIFNOTEQKS                    R13 K62 ["function_call"] ; [+3]
      283 LOADK                            R12 K47 ["tool_use"]
      284 JUMP                             ; [+14]
      285 JUMPIFNOTEQKS                    R13 K63 ["length"] ; [+3]
      287 LOADK                            R12 K64 ["token_limit"]
      288 JUMP                             ; [+10]
      289 JUMPIFNOTEQKS                    R13 K65 ["content_filter"] ; [+3]
      291 LOADK                            R12 K66 ["safety_filter"]
      292 JUMP                             ; [+6]
      293 GETUPVAL                         R14 4
      294 GETTABLEKS                       R14 R14 K67 ["assertNever"]
      296 MOVE                             R15 R13
      297 CALL                             R14 1 1
      298 MOVE                             R12 R14
      299 SETTABLEKS                       R12 R11 K58 ["stopReason"]
      301 SETTABLEKS                       R11 R10 K14 ["delta"]
      303 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      305 MOVE                             R9 R5
      306 GETIMPORT                        R8 K22 [table.insert]
      308 CALL                             R8 2 0
      309 DUPTABLE                         R8 K69 [{["type"] = "message_stop"}]
      310 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      312 MOVE                             R10 R5
      313 MOVE                             R11 R8
      314 GETIMPORT                        R9 K22 [table.insert]
      316 CALL                             R9 2 0
      317 LOADNIL                          R9
      318 SETUPVAL                         R9 2
      319 LOADNIL                          R9
      320 SETUPVAL                         R9 3
      321 RETURN                           R5 1

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
