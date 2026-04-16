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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Json"]
        3 GETTABLEKS                       R0 R1 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R3 R2 K2 ["error"]
        9 JUMPIFNOT                        R3 ; [+18]
       10 GETIMPORT                        R3 K4 [warn]
       12 LOADK                            R4 K5 ["Error from OpenAI: "]
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
       61 GETTABLEKS                       R6 R4 K15 ["content"]
       63 JUMPIFNOT                        R6 ; [+45]
       64 GETUPVAL                         R6 2
       65 JUMPIF                           R6 ; [+22]
       66 DUPTABLE                         R6 K17 [{"type", "contentBlock"}]
       67 LOADK                            R7 K18 ["content_start"]
       68 SETTABLEKS                       R7 R6 K6 ["type"]
       70 DUPTABLE                         R7 K20 [{"type", "text"}]
       71 LOADK                            R8 K19 ["text"]
       72 SETTABLEKS                       R8 R7 K6 ["type"]
       74 LOADK                            R8 K21 [""]
       75 SETTABLEKS                       R8 R7 K19 ["text"]
       77 SETTABLEKS                       R7 R6 K16 ["contentBlock"]
       79 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
       81 MOVE                             R8 R5
       82 MOVE                             R9 R6
       83 GETIMPORT                        R7 K24 [table.insert]
       85 CALL                             R7 2 0
       86 LOADB                            R7 1
       87 SETUPVAL                         R7 2
       88 DUPTABLE                         R6 K25 [{"type", "delta"}]
       89 LOADK                            R7 K26 ["content_delta"]
       90 SETTABLEKS                       R7 R6 K6 ["type"]
       92 DUPTABLE                         R7 K20 [{"type", "text"}]
       93 LOADK                            R8 K27 ["text_delta"]
       94 SETTABLEKS                       R8 R7 K6 ["type"]
       96 GETTABLEKS                       R8 R4 K15 ["content"]
       98 SETTABLEKS                       R8 R7 K19 ["text"]
      100 SETTABLEKS                       R7 R6 K14 ["delta"]
      102 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
      104 MOVE                             R8 R5
      105 MOVE                             R9 R6
      106 GETIMPORT                        R7 K24 [table.insert]
      108 CALL                             R7 2 0
      109 GETTABLEKS                       R6 R4 K28 ["tool_calls"]
      111 JUMPIFNOT                        R6 ; [+95]
      112 GETTABLEKS                       R7 R4 K28 ["tool_calls"]
      114 GETTABLEN                        R6 R7 1
      115 GETUPVAL                         R7 3
      116 JUMPIF                           R7 ; [+58]
      117 JUMPIFNOT                        R6 ; [+57]
      118 GETTABLEKS                       R7 R6 K29 ["function"]
      120 JUMPIFNOT                        R7 ; [+54]
      121 GETTABLEKS                       R8 R6 K29 ["function"]
      123 GETTABLEKS                       R7 R8 K30 ["name"]
      125 JUMPIFNOT                        R7 ; [+49]
      126 GETTABLEKS                       R7 R6 K29 ["function"]
      128 GETTABLEKS                       R9 R7 K30 ["name"]
      130 FASTCALL2K                       ASSERT R9 K31 ; [+4]
      132 LOADK                            R10 K31 ["Function call name is required"]
      133 GETIMPORT                        R8 K33 [assert]
      135 CALL                             R8 2 0
      136 GETTABLEKS                       R9 R6 K34 ["id"]
      138 FASTCALL2K                       ASSERT R9 K35 ; [+4]
      140 LOADK                            R10 K35 ["Tool call ID is required"]
      141 GETIMPORT                        R8 K33 [assert]
      143 CALL                             R8 2 0
      144 DUPTABLE                         R8 K17 [{"type", "contentBlock"}]
      145 LOADK                            R9 K18 ["content_start"]
      146 SETTABLEKS                       R9 R8 K6 ["type"]
      148 DUPTABLE                         R9 K37 [{"type", "name", "id", "input"}]
      149 LOADK                            R10 K38 ["tool_use"]
      150 SETTABLEKS                       R10 R9 K6 ["type"]
      152 GETTABLEKS                       R10 R7 K30 ["name"]
      154 SETTABLEKS                       R10 R9 K30 ["name"]
      156 GETTABLEKS                       R10 R6 K34 ["id"]
      158 SETTABLEKS                       R10 R9 K34 ["id"]
      160 NEWTABLE                         R10 0 0
      162 SETTABLEKS                       R10 R9 K36 ["input"]
      164 SETTABLEKS                       R9 R8 K16 ["contentBlock"]
      166 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      168 MOVE                             R10 R5
      169 MOVE                             R11 R8
      170 GETIMPORT                        R9 K24 [table.insert]
      172 CALL                             R9 2 0
      173 LOADB                            R9 1
      174 SETUPVAL                         R9 3
      175 JUMPIFNOT                        R6 ; [+31]
      176 GETTABLEKS                       R7 R6 K29 ["function"]
      178 JUMPIFNOT                        R7 ; [+28]
      179 GETTABLEKS                       R8 R6 K29 ["function"]
      181 GETTABLEKS                       R7 R8 K39 ["arguments"]
      183 JUMPIFNOT                        R7 ; [+23]
      184 DUPTABLE                         R7 K25 [{"type", "delta"}]
      185 LOADK                            R8 K26 ["content_delta"]
      186 SETTABLEKS                       R8 R7 K6 ["type"]
      188 DUPTABLE                         R8 K41 [{"type", "jsonDelta"}]
      189 LOADK                            R9 K42 ["json_delta"]
      190 SETTABLEKS                       R9 R8 K6 ["type"]
      192 GETTABLEKS                       R10 R6 K29 ["function"]
      194 GETTABLEKS                       R9 R10 K39 ["arguments"]
      196 SETTABLEKS                       R9 R8 K40 ["jsonDelta"]
      198 SETTABLEKS                       R8 R7 K14 ["delta"]
      200 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      202 MOVE                             R9 R5
      203 MOVE                             R10 R7
      204 GETIMPORT                        R8 K24 [table.insert]
      206 CALL                             R8 2 0
      207 GETTABLEKS                       R6 R3 K43 ["finish_reason"]
      209 JUMPIFNOT                        R6 ; [+67]
      210 DUPTABLE                         R6 K44 [{"type"}]
      211 LOADK                            R7 K45 ["content_end"]
      212 SETTABLEKS                       R7 R6 K6 ["type"]
      214 FASTCALL2                        TABLE_INSERT R5 R6 ; [+5]
      216 MOVE                             R8 R5
      217 MOVE                             R9 R6
      218 GETIMPORT                        R7 K24 [table.insert]
      220 CALL                             R7 2 0
      221 DUPTABLE                         R9 K25 [{"type", "delta"}]
      222 LOADK                            R10 K46 ["message_delta"]
      223 SETTABLEKS                       R10 R9 K6 ["type"]
      225 DUPTABLE                         R10 K48 [{"stopReason"}]
      226 GETTABLEKS                       R12 R3 K43 ["finish_reason"]
      228 JUMPIFNOTEQKS                    R12 K49 ["stop"] ; [+3]
      230 LOADK                            R11 K50 ["message_end"]
      231 JUMP                             ; [+20]
      232 JUMPIFEQKS                       R12 K28 ["tool_calls"] ; [+3]
      234 JUMPIFNOTEQKS                    R12 K51 ["function_call"] ; [+3]
      236 LOADK                            R11 K38 ["tool_use"]
      237 JUMP                             ; [+14]
      238 JUMPIFNOTEQKS                    R12 K52 ["length"] ; [+3]
      240 LOADK                            R11 K53 ["token_limit"]
      241 JUMP                             ; [+10]
      242 JUMPIFNOTEQKS                    R12 K54 ["content_filter"] ; [+3]
      244 LOADK                            R11 K55 ["safety_filter"]
      245 JUMP                             ; [+6]
      246 GETUPVAL                         R14 4
      247 GETTABLEKS                       R13 R14 K56 ["assertNever"]
      249 MOVE                             R14 R12
      250 CALL                             R13 1 1
      251 MOVE                             R11 R13
      252 SETTABLEKS                       R11 R10 K47 ["stopReason"]
      254 SETTABLEKS                       R10 R9 K14 ["delta"]
      256 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      258 MOVE                             R8 R5
      259 GETIMPORT                        R7 K24 [table.insert]
      261 CALL                             R7 2 0
      262 DUPTABLE                         R7 K44 [{"type"}]
      263 LOADK                            R8 K57 ["message_stop"]
      264 SETTABLEKS                       R8 R7 K6 ["type"]
      266 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      268 MOVE                             R9 R5
      269 MOVE                             R10 R7
      270 GETIMPORT                        R8 K24 [table.insert]
      272 CALL                             R8 2 0
      273 LOADB                            R8 0
      274 SETUPVAL                         R8 2
      275 LOADB                            R8 0
      276 SETUPVAL                         R8 3
      277 RETURN                           R5 1

PROTO_6:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U2
        8 CLOSEUPVALS                      R0
        9 RETURN                           R2 1

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
        8 JUMPIFNOT                        R7 ; [+115]
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
       30 JUMPIFNOTEQKS                    R16 K5 ["tool_result"] ; [+30]
       32 MOVE                             R16 R10
       33 CALL                             R16 0 0
       34 LOADNIL                          R16
       35 GETUPVAL                         R19 0
       36 GETTABLEKS                       R18 R19 K6 ["Json"]
       38 GETTABLEKS                       R17 R18 K7 ["encode"]
       40 GETTABLEKS                       R18 R15 K0 ["content"]
       42 CALL                             R17 1 1
       43 MOVE                             R16 R17
       44 DUPTABLE                         R19 K9 [{"role", "tool_call_id", "content"}]
       45 LOADK                            R20 K10 ["tool"]
       46 SETTABLEKS                       R20 R19 K1 ["role"]
       48 GETTABLEKS                       R20 R15 K11 ["id"]
       50 SETTABLEKS                       R20 R19 K8 ["tool_call_id"]
       52 SETTABLEKS                       R16 R19 K0 ["content"]
       54 FASTCALL2                        TABLE_INSERT R1 R19 ; [+4]
       56 MOVE                             R18 R1
       57 GETIMPORT                        R17 K14 [table.insert]
       59 CALL                             R17 2 0
       60 JUMP                             ; [+58]
       61 GETTABLEKS                       R16 R15 K4 ["type"]
       63 JUMPIFNOTEQKS                    R16 K15 ["text"] ; [+14]
       65 GETTABLEKS                       R16 R15 K15 ["text"]
       67 JUMPIFNOT                        R16 ; [+10]
       68 JUMPIFEQKS                       R8 K3 [""] ; [+4]
       70 MOVE                             R16 R8
       71 LOADK                            R17 K16 ["\n"]
       72 CONCAT                           R8 R16 R17
       73 MOVE                             R16 R8
       74 GETTABLEKS                       R17 R15 K15 ["text"]
       76 CONCAT                           R8 R16 R17
       77 JUMP                             ; [+41]
       78 GETTABLEKS                       R16 R15 K4 ["type"]
       80 JUMPIFNOTEQKS                    R16 K17 ["tool_use"] ; [+38]
       82 LOADK                            R16 K3 [""]
       83 GETTABLEKS                       R17 R15 K18 ["input"]
       85 JUMPIFNOT                        R17 ; [+9]
       86 GETUPVAL                         R19 0
       87 GETTABLEKS                       R18 R19 K6 ["Json"]
       89 GETTABLEKS                       R17 R18 K7 ["encode"]
       91 GETTABLEKS                       R18 R15 K18 ["input"]
       93 CALL                             R17 1 1
       94 MOVE                             R16 R17
       95 NEWTABLE                         R19 4 0
       97 GETTABLEKS                       R20 R15 K11 ["id"]
       99 SETTABLEKS                       R20 R19 K11 ["id"]
      101 LOADK                            R20 K19 ["function"]
      102 SETTABLEKS                       R20 R19 K4 ["type"]
      104 DUPTABLE                         R20 K22 [{"name", "arguments"}]
      105 GETTABLEKS                       R21 R15 K20 ["name"]
      107 SETTABLEKS                       R21 R20 K20 ["name"]
      109 SETTABLEKS                       R16 R20 K21 ["arguments"]
      111 SETTABLEKS                       R20 R19 K19 ["function"]
      113 FASTCALL2                        TABLE_INSERT R9 R19 ; [+4]
      115 MOVE                             R18 R9
      116 GETIMPORT                        R17 K14 [table.insert]
      118 CALL                             R17 2 0
      119 FORGLOOP                         R11 2 ; [-92]
      121 MOVE                             R11 R10
      122 CALL                             R11 0 0
      123 CLOSEUPVALS                      R7
      124 FORGLOOP                         R2 2 ; [-119]
      126 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["TokenUsageManager"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["createTracker"]
       28 GETTABLEKS                       R6 R3 K12 ["LLMProviderTypes"]
       30 GETTABLEKS                       R5 R6 K13 ["OpenAI"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K14 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R6 K15 [PROTO_1]
       36 CAPTURE                          VAL R4
       37 DUPCLOSURE                       R7 K16 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R8 K17 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 DUPCLOSURE                       R9 K18 [PROTO_6]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R10 K19 [PROTO_8]
       46 CAPTURE                          VAL R1
       47 DUPTABLE                         R11 K24 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoOpenAIMessage"}]
       48 SETTABLEKS                       R6 R11 K20 ["getTokenUsageTracker"]
       50 SETTABLEKS                       R7 R11 K21 ["resetTokenUsageTracker"]
       52 SETTABLEKS                       R9 R11 K22 ["createAdapter"]
       54 SETTABLEKS                       R10 R11 K23 ["convertLLMtoOpenAIMessage"]
       56 RETURN                           R11 1
