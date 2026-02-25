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
       16 GETTABLEKS                       R4 R0 K3 ["prompt_tokens_details"]
       18 GETTABLEKS                       R3 R4 K4 ["cached_tokens"]
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
       52 GETTABLEKS                       R3 R0 K12 ["completion_tokens_details"]
       54 GETTABLEKS                       R2 R3 K13 ["reasoning_tokens"]
       56 JUMPIFNOT                        R2 ; [+11]
       57 GETUPVAL                         R2 0
       58 DUPTABLE                         R4 K14 [{"reasoning_tokens"}]
       59 GETTABLEKS                       R6 R0 K12 ["completion_tokens_details"]
       61 GETTABLEKS                       R5 R6 K13 ["reasoning_tokens"]
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
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K9 ["assertNever"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

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
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R3 R2 K2 ["error"]
       11 JUMPIFNOT                        R3 ; [+18]
       12 GETIMPORT                        R3 K4 [warn]
       14 LOADK                            R4 K5 ["Error from OpenAI: "]
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 DUPTABLE                         R3 K7 [{"type", "error"}]
       18 LOADK                            R4 K2 ["error"]
       19 SETTABLEKS                       R4 R3 K6 ["type"]
       21 LOADK                            R4 K8 ["client_error"]
       22 SETTABLEKS                       R4 R3 K2 ["error"]
       24 NEWTABLE                         R4 0 1
       26 MOVE                             R5 R3
       27 SETLIST                          R4 R5 1 [1]
       29 RETURN                           R4 1
       30 GETTABLEKS                       R3 R2 K9 ["usage"]
       32 JUMPIFNOT                        R3 ; [+8]
       33 GETTABLEKS                       R4 R2 K11 ["model"]
       35 ORK                              R3 R4 K10 []
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R5 R2 K9 ["usage"]
       39 MOVE                             R6 R3
       40 CALL                             R4 2 0
       41 GETTABLEKS                       R3 R2 K12 ["choices"]
       43 JUMPIFNOT                        R3 ; [+5]
       44 GETTABLEKS                       R4 R2 K12 ["choices"]
       46 LENGTH                           R3 R4
       47 JUMPIFNOTEQKN                    R3 K13 [0] ; [+4]
       49 NEWTABLE                         R3 0 0
       51 RETURN                           R3 1
       52 GETTABLEKS                       R4 R2 K12 ["choices"]
       54 GETTABLEN                        R3 R4 1
       55 JUMPIF                           R3 ; [+3]
       56 NEWTABLE                         R4 0 0
       58 RETURN                           R4 1
       59 GETTABLEKS                       R4 R3 K14 ["delta"]
       61 NEWTABLE                         R5 0 0
       63 GETTABLEKS                       R6 R4 K15 ["content"]
       65 JUMPIFNOT                        R6 ; [+45]
       66 GETUPVAL                         R6 4
       67 JUMPIF                           R6 ; [+22]
       68 DUPTABLE                         R6 K17 [{"type", "contentBlock"}]
       69 LOADK                            R7 K18 ["content_start"]
       70 SETTABLEKS                       R7 R6 K6 ["type"]
       72 DUPTABLE                         R7 K20 [{"type", "text"}]
       73 LOADK                            R8 K19 ["text"]
       74 SETTABLEKS                       R8 R7 K6 ["type"]
       76 LOADK                            R8 K21 [""]
       77 SETTABLEKS                       R8 R7 K19 ["text"]
       79 SETTABLEKS                       R7 R6 K16 ["contentBlock"]
       81 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
       83 MOVE                             R8 R5
       84 MOVE                             R9 R6
       85 GETIMPORT                        R7 K24 [table.insert]
       87 CALL                             R7 2 0
       88 LOADB                            R7 1
       89 SETUPVAL                         R7 4
       90 DUPTABLE                         R6 K25 [{"type", "delta"}]
       91 LOADK                            R7 K26 ["content_delta"]
       92 SETTABLEKS                       R7 R6 K6 ["type"]
       94 DUPTABLE                         R7 K20 [{"type", "text"}]
       95 LOADK                            R8 K27 ["text_delta"]
       96 SETTABLEKS                       R8 R7 K6 ["type"]
       98 GETTABLEKS                       R8 R4 K15 ["content"]
      100 SETTABLEKS                       R8 R7 K19 ["text"]
      102 SETTABLEKS                       R7 R6 K14 ["delta"]
      104 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
      106 MOVE                             R8 R5
      107 MOVE                             R9 R6
      108 GETIMPORT                        R7 K24 [table.insert]
      110 CALL                             R7 2 0
      111 GETTABLEKS                       R6 R4 K28 ["tool_calls"]
      113 JUMPIFNOT                        R6 ; [+95]
      114 GETTABLEKS                       R7 R4 K28 ["tool_calls"]
      116 GETTABLEN                        R6 R7 1
      117 GETUPVAL                         R7 5
      118 JUMPIF                           R7 ; [+58]
      119 JUMPIFNOT                        R6 ; [+57]
      120 GETTABLEKS                       R7 R6 K29 ["function"]
      122 JUMPIFNOT                        R7 ; [+54]
      123 GETTABLEKS                       R8 R6 K29 ["function"]
      125 GETTABLEKS                       R7 R8 K30 ["name"]
      127 JUMPIFNOT                        R7 ; [+49]
      128 GETTABLEKS                       R7 R6 K29 ["function"]
      130 GETTABLEKS                       R9 R7 K30 ["name"]
      132 FASTCALL2K                       ASSERT R9 K31 ; [+4]
      134 LOADK                            R10 K31 ["Function call name is required"]
      135 GETIMPORT                        R8 K33 [assert]
      137 CALL                             R8 2 0
      138 GETTABLEKS                       R9 R6 K34 ["id"]
      140 FASTCALL2K                       ASSERT R9 K35 ; [+4]
      142 LOADK                            R10 K35 ["Tool call ID is required"]
      143 GETIMPORT                        R8 K33 [assert]
      145 CALL                             R8 2 0
      146 DUPTABLE                         R8 K17 [{"type", "contentBlock"}]
      147 LOADK                            R9 K18 ["content_start"]
      148 SETTABLEKS                       R9 R8 K6 ["type"]
      150 DUPTABLE                         R9 K37 [{"type", "name", "id", "input"}]
      151 LOADK                            R10 K38 ["tool_use"]
      152 SETTABLEKS                       R10 R9 K6 ["type"]
      154 GETTABLEKS                       R10 R7 K30 ["name"]
      156 SETTABLEKS                       R10 R9 K30 ["name"]
      158 GETTABLEKS                       R10 R6 K34 ["id"]
      160 SETTABLEKS                       R10 R9 K34 ["id"]
      162 NEWTABLE                         R10 0 0
      164 SETTABLEKS                       R10 R9 K36 ["input"]
      166 SETTABLEKS                       R9 R8 K16 ["contentBlock"]
      168 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      170 MOVE                             R10 R5
      171 MOVE                             R11 R8
      172 GETIMPORT                        R9 K24 [table.insert]
      174 CALL                             R9 2 0
      175 LOADB                            R9 1
      176 SETUPVAL                         R9 5
      177 JUMPIFNOT                        R6 ; [+31]
      178 GETTABLEKS                       R7 R6 K29 ["function"]
      180 JUMPIFNOT                        R7 ; [+28]
      181 GETTABLEKS                       R8 R6 K29 ["function"]
      183 GETTABLEKS                       R7 R8 K39 ["arguments"]
      185 JUMPIFNOT                        R7 ; [+23]
      186 DUPTABLE                         R7 K25 [{"type", "delta"}]
      187 LOADK                            R8 K26 ["content_delta"]
      188 SETTABLEKS                       R8 R7 K6 ["type"]
      190 DUPTABLE                         R8 K41 [{"type", "jsonDelta"}]
      191 LOADK                            R9 K42 ["json_delta"]
      192 SETTABLEKS                       R9 R8 K6 ["type"]
      194 GETTABLEKS                       R10 R6 K29 ["function"]
      196 GETTABLEKS                       R9 R10 K39 ["arguments"]
      198 SETTABLEKS                       R9 R8 K40 ["jsonDelta"]
      200 SETTABLEKS                       R8 R7 K14 ["delta"]
      202 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      204 MOVE                             R9 R5
      205 MOVE                             R10 R7
      206 GETIMPORT                        R8 K24 [table.insert]
      208 CALL                             R8 2 0
      209 GETTABLEKS                       R6 R3 K43 ["finish_reason"]
      211 JUMPIFNOT                        R6 ; [+67]
      212 DUPTABLE                         R6 K44 [{"type"}]
      213 LOADK                            R7 K45 ["content_end"]
      214 SETTABLEKS                       R7 R6 K6 ["type"]
      216 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
      218 MOVE                             R8 R5
      219 MOVE                             R9 R6
      220 GETIMPORT                        R7 K24 [table.insert]
      222 CALL                             R7 2 0
      223 DUPTABLE                         R9 K25 [{"type", "delta"}]
      224 LOADK                            R10 K46 ["message_delta"]
      225 SETTABLEKS                       R10 R9 K6 ["type"]
      227 DUPTABLE                         R10 K48 [{"stopReason"}]
      228 GETTABLEKS                       R12 R3 K43 ["finish_reason"]
      230 JUMPIFNOTEQKS                    R12 K49 ["stop"] ; [+3]
      232 LOADK                            R11 K50 ["message_end"]
      233 JUMP                             ; [+20]
      234 JUMPIFEQKS                       R12 K28 ["tool_calls"] ; [+3]
      236 JUMPIFNOTEQKS                    R12 K51 ["function_call"] ; [+3]
      238 LOADK                            R11 K38 ["tool_use"]
      239 JUMP                             ; [+14]
      240 JUMPIFNOTEQKS                    R12 K52 ["length"] ; [+3]
      242 LOADK                            R11 K53 ["token_limit"]
      243 JUMP                             ; [+10]
      244 JUMPIFNOTEQKS                    R12 K54 ["content_filter"] ; [+3]
      246 LOADK                            R11 K55 ["safety_filter"]
      247 JUMP                             ; [+6]
      248 GETUPVAL                         R14 6
      249 GETTABLEKS                       R13 R14 K56 ["assertNever"]
      251 MOVE                             R14 R12
      252 CALL                             R13 1 1
      253 MOVE                             R11 R13
      254 SETTABLEKS                       R11 R10 K47 ["stopReason"]
      256 SETTABLEKS                       R10 R9 K14 ["delta"]
      258 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      260 MOVE                             R8 R5
      261 GETIMPORT                        R7 K24 [table.insert]
      263 CALL                             R7 2 0
      264 DUPTABLE                         R7 K44 [{"type"}]
      265 LOADK                            R8 K57 ["message_stop"]
      266 SETTABLEKS                       R8 R7 K6 ["type"]
      268 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      270 MOVE                             R9 R5
      271 MOVE                             R10 R7
      272 GETIMPORT                        R8 K24 [table.insert]
      274 CALL                             R8 2 0
      275 LOADB                            R8 0
      276 SETUPVAL                         R8 4
      277 LOADB                            R8 0
      278 SETUPVAL                         R8 5
      279 RETURN                           R5 1

PROTO_6:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          REF R0
        8 CAPTURE                          REF R1
        9 CAPTURE                          UPVAL U4
       10 CLOSEUPVALS                      R0
       11 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKS                       R0 K0 [""] ; [+5]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K1 ["content"]
        7 GETUPVAL                         R1 2
        8 LENGTH                           R0 R1
        9 LOADN                            R1 0
       10 JUMPIFNOTLT                      R1 R0 ; [+5]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 2
       14 SETTABLEKS                       R1 R0 K2 ["tool_calls"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K1 ["content"]
       19 JUMPIF                           R0 ; [+4]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R0 R1 K2 ["tool_calls"]
       23 JUMPIFNOT                        R0 ; [+7]
       24 GETUPVAL                         R1 3
       25 GETUPVAL                         R2 1
       26 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       28 GETIMPORT                        R0 K5 [table.insert]
       30 CALL                             R0 2 0
       31 DUPTABLE                         R0 K7 [{"role"}]
       32 GETUPVAL                         R2 4
       33 GETTABLEKS                       R1 R2 K6 ["role"]
       35 SETTABLEKS                       R1 R0 K6 ["role"]
       37 SETUPVAL                         R0 1
       38 LOADK                            R0 K0 [""]
       39 SETUPVAL                         R0 0
       40 NEWTABLE                         R0 0 0
       42 SETUPVAL                         R0 2
       43 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["content"]
        8 JUMPIFNOT                        R7 ; [+137]
        9 DUPTABLE                         R7 K2 [{"role"}]
       10 GETTABLEKS                       R8 R6 K1 ["role"]
       12 SETTABLEKS                       R8 R7 K1 ["role"]
       14 LOADK                            R8 K3 [""]
       15 NEWTABLE                         R9 0 0
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          REF R8
       19 CAPTURE                          REF R7
       20 CAPTURE                          REF R9
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R6
       23 GETTABLEKS                       R11 R6 K0 ["content"]
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 GETTABLEKS                       R16 R15 K4 ["type"]
       30 JUMPIFNOTEQKS                    R16 K5 ["tool_result"] ; [+41]
       32 MOVE                             R16 R10
       33 CALL                             R16 0 0
       34 LOADNIL                          R16
       35 GETUPVAL                         R17 0
       36 CALL                             R17 0 1
       37 JUMPIFNOT                        R17 ; [+10]
       38 GETUPVAL                         R19 1
       39 GETTABLEKS                       R18 R19 K6 ["Json"]
       41 GETTABLEKS                       R17 R18 K7 ["encode"]
       43 GETTABLEKS                       R18 R15 K0 ["content"]
       45 CALL                             R17 1 1
       46 MOVE                             R16 R17
       47 JUMP                             ; [+7]
       48 GETUPVAL                         R17 2
       49 GETTABLEKS                       R19 R15 K0 ["content"]
       51 NAMECALL                         R17 R17 K8 ["JSONEncode"]
       53 CALL                             R17 2 1
       54 MOVE                             R16 R17
       55 DUPTABLE                         R19 K10 [{"role", "tool_call_id", "content"}]
       56 LOADK                            R20 K11 ["tool"]
       57 SETTABLEKS                       R20 R19 K1 ["role"]
       59 GETTABLEKS                       R20 R15 K12 ["id"]
       61 SETTABLEKS                       R20 R19 K9 ["tool_call_id"]
       63 SETTABLEKS                       R16 R19 K0 ["content"]
       65 FASTCALL2                        TABLE_INSERT R1 R19 ; [+4]
       67 MOVE                             R18 R1
       68 GETIMPORT                        R17 K15 [table.insert]
       70 CALL                             R17 2 0
       71 JUMP                             ; [+69]
       72 GETTABLEKS                       R16 R15 K4 ["type"]
       74 JUMPIFNOTEQKS                    R16 K16 ["text"] ; [+14]
       76 GETTABLEKS                       R16 R15 K16 ["text"]
       78 JUMPIFNOT                        R16 ; [+10]
       79 JUMPIFEQKS                       R8 K3 [""] ; [+4]
       81 MOVE                             R16 R8
       82 LOADK                            R17 K17 ["\n"]
       83 CONCAT                           R8 R16 R17
       84 MOVE                             R16 R8
       85 GETTABLEKS                       R17 R15 K16 ["text"]
       87 CONCAT                           R8 R16 R17
       88 JUMP                             ; [+52]
       89 GETTABLEKS                       R16 R15 K4 ["type"]
       91 JUMPIFNOTEQKS                    R16 K18 ["tool_use"] ; [+49]
       93 LOADK                            R16 K3 [""]
       94 GETTABLEKS                       R17 R15 K19 ["input"]
       96 JUMPIFNOT                        R17 ; [+20]
       97 GETUPVAL                         R17 0
       98 CALL                             R17 0 1
       99 JUMPIFNOT                        R17 ; [+10]
      100 GETUPVAL                         R19 1
      101 GETTABLEKS                       R18 R19 K6 ["Json"]
      103 GETTABLEKS                       R17 R18 K7 ["encode"]
      105 GETTABLEKS                       R18 R15 K19 ["input"]
      107 CALL                             R17 1 1
      108 MOVE                             R16 R17
      109 JUMP                             ; [+7]
      110 GETUPVAL                         R17 2
      111 GETTABLEKS                       R19 R15 K19 ["input"]
      113 NAMECALL                         R17 R17 K8 ["JSONEncode"]
      115 CALL                             R17 2 1
      116 MOVE                             R16 R17
      117 NEWTABLE                         R19 4 0
      119 GETTABLEKS                       R20 R15 K12 ["id"]
      121 SETTABLEKS                       R20 R19 K12 ["id"]
      123 LOADK                            R20 K20 ["function"]
      124 SETTABLEKS                       R20 R19 K4 ["type"]
      126 DUPTABLE                         R20 K23 [{"name", "arguments"}]
      127 GETTABLEKS                       R21 R15 K21 ["name"]
      129 SETTABLEKS                       R21 R20 K21 ["name"]
      131 SETTABLEKS                       R16 R20 K22 ["arguments"]
      133 SETTABLEKS                       R20 R19 K20 ["function"]
      135 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      137 MOVE                             R18 R9
      138 GETIMPORT                        R17 K15 [table.insert]
      140 CALL                             R17 2 0
      141 FORGLOOP                         R11 2 ; [-114]
      143 MOVE                             R11 R10
      144 CALL                             R11 0 0
      145 CLOSEUPVALS                      R7
      146 FORGLOOP                         R2 2 ; [-141]
      148 RETURN                           R1 1

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
       41 LOADK                            R7 K18 ["OpenAI"]
       42 CALL                             R6 1 1
       43 DUPCLOSURE                       R7 K19 [PROTO_0]
       44 CAPTURE                          VAL R6
       45 DUPCLOSURE                       R8 K20 [PROTO_1]
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R9 K21 [PROTO_2]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R10 K22 [PROTO_3]
       50 CAPTURE                          VAL R4
       51 DUPCLOSURE                       R11 K23 [PROTO_6]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R4
       57 DUPCLOSURE                       R12 K24 [PROTO_8]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 DUPTABLE                         R13 K29 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       62 SETTABLEKS                       R8 R13 K25 ["getTokenUsageTracker"]
       64 SETTABLEKS                       R9 R13 K26 ["resetTokenUsageTracker"]
       66 SETTABLEKS                       R11 R13 K27 ["createAdapter"]
       68 SETTABLEKS                       R12 R13 K28 ["convertLLMtoOpenAIMessage"]
       70 RETURN                           R13 1
