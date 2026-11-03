PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["logTime"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R3 K5 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens"}]
        6 GETTABLEKS                       R4 R0 K1 ["input_tokens"]
        8 SETTABLEKS                       R4 R3 K1 ["input_tokens"]
       10 GETTABLEKS                       R4 R0 K2 ["output_tokens"]
       12 SETTABLEKS                       R4 R3 K2 ["output_tokens"]
       14 GETTABLEKS                       R4 R0 K3 ["cache_read_input_tokens"]
       16 SETTABLEKS                       R4 R3 K3 ["cache_read_input_tokens"]
       18 GETTABLEKS                       R4 R0 K4 ["cache_creation_input_tokens"]
       20 SETTABLEKS                       R4 R3 K4 ["cache_creation_input_tokens"]
       22 NAMECALL                         R1 R1 K6 ["addUsage"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetTotalUsage"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["end_turn"] ; [+5]
        2 JUMPIFEQKS                       R0 K1 ["pause_turn"] ; [+3]
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADK                            R1 K2 ["message_end"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K3 ["max_tokens"] ; [+3]
       10 LOADK                            R1 K4 ["token_limit"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K5 ["stop_sequence"] ; [+3]
       14 LOADK                            R1 K5 ["stop_sequence"]
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKS                    R0 K6 ["tool_use"] ; [+3]
       18 LOADK                            R1 K6 ["tool_use"]
       19 RETURN                           R1 1
       20 JUMPIFNOTEQKS                    R0 K7 ["refusal"] ; [+3]
       22 LOADK                            R1 K8 ["safety_filter"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K9 ["assertNever"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

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
        6 JUMPIF                           R1 ; [+7]
        7 DUPTABLE                         R3 K5 [{["type"] = "error", ["error"] = "client_error"}]
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R3
       11 SETLIST                          R4 R5 1 [1]
       13 RETURN                           R4 1
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R4 R2 K2 ["type"]
       18 JUMPIFNOTEQKS                    R4 K6 ["ping"] ; [+2]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R4 R2 K2 ["type"]
       23 JUMPIFNOTEQKS                    R4 K7 ["message_start"] ; [+29]
       25 GETTABLEKS                       R5 R2 K8 ["message"]
       27 JUMPIFNOT                        R5 ; [+16]
       28 GETTABLEKS                       R5 R2 K8 ["message"]
       30 GETTABLEKS                       R5 R5 K9 ["usage"]
       32 JUMPIFNOT                        R5 ; [+11]
       33 GETTABLEKS                       R6 R2 K8 ["message"]
       35 GETTABLEKS                       R6 R6 K11 ["model"]
       37 ORK                              R5 R6 K10 []
       38 JUMPIFNOT                        R5 ; [+5]
       39 GETUPVAL                         R6 1
       40 MOVE                             R8 R5
       41 NAMECALL                         R6 R6 K12 ["logModel"]
       43 CALL                             R6 2 0
       44 DUPTABLE                         R5 K13 [{["type"] = "message_start"}]
       45 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       47 MOVE                             R7 R3
       48 MOVE                             R8 R5
       49 GETIMPORT                        R6 K16 [table.insert]
       51 CALL                             R6 2 0
       52 RETURN                           R3 1
       53 JUMPIFNOTEQKS                    R4 K17 ["content_block_start"] ; [+14]
       55 DUPTABLE                         R5 K20 [{["type"] = "content_start", ["contentBlock"]}]
       56 GETTABLEKS                       R6 R2 K21 ["content_block"]
       58 SETTABLEKS                       R6 R5 K19 ["contentBlock"]
       60 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       62 MOVE                             R7 R3
       63 MOVE                             R8 R5
       64 GETIMPORT                        R6 K16 [table.insert]
       66 CALL                             R6 2 0
       67 RETURN                           R3 1
       68 JUMPIFNOTEQKS                    R4 K22 ["content_block_delta"] ; [+36]
       70 LOADNIL                          R5
       71 GETTABLEKS                       R6 R2 K23 ["delta"]
       73 GETTABLEKS                       R6 R6 K2 ["type"]
       75 JUMPIFNOTEQKS                    R6 K24 ["input_json_delta"] ; [+10]
       77 DUPTABLE                         R6 K27 [{["type"] = "json_delta", ["jsonDelta"]}]
       78 GETTABLEKS                       R7 R2 K23 ["delta"]
       80 GETTABLEKS                       R7 R7 K28 ["partial_json"]
       82 SETTABLEKS                       R7 R6 K26 ["jsonDelta"]
       84 MOVE                             R5 R6
       85 JUMP                             ; [+8]
       86 DUPTABLE                         R6 K31 [{["type"] = "text_delta", ["text"]}]
       87 GETTABLEKS                       R7 R2 K23 ["delta"]
       89 GETTABLEKS                       R7 R7 K30 ["text"]
       91 SETTABLEKS                       R7 R6 K30 ["text"]
       93 MOVE                             R5 R6
       94 DUPTABLE                         R6 K33 [{["type"] = "content_delta", ["delta"]}]
       95 SETTABLEKS                       R5 R6 K23 ["delta"]
       97 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
       99 MOVE                             R8 R3
      100 MOVE                             R9 R6
      101 GETIMPORT                        R7 K16 [table.insert]
      103 CALL                             R7 2 0
      104 RETURN                           R3 1
      105 JUMPIFNOTEQKS                    R4 K34 ["content_block_stop"] ; [+10]
      107 DUPTABLE                         R5 K36 [{["type"] = "content_end"}]
      108 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      110 MOVE                             R7 R3
      111 MOVE                             R8 R5
      112 GETIMPORT                        R6 K16 [table.insert]
      114 CALL                             R6 2 0
      115 RETURN                           R3 1
      116 JUMPIFNOTEQKS                    R4 K37 ["message_stop"] ; [+10]
      118 DUPTABLE                         R5 K38 [{["type"] = "message_stop"}]
      119 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      121 MOVE                             R7 R3
      122 MOVE                             R8 R5
      123 GETIMPORT                        R6 K16 [table.insert]
      125 CALL                             R6 2 0
      126 RETURN                           R3 1
      127 JUMPIFNOTEQKS                    R4 K39 ["message_delta"] ; [+79]
      129 GETTABLEKS                       R5 R2 K9 ["usage"]
      131 JUMPIFNOT                        R5 ; [+27]
      132 GETTABLEKS                       R5 R2 K9 ["usage"]
      134 GETUPVAL                         R6 1
      135 NAMECALL                         R6 R6 K40 ["logTime"]
      137 CALL                             R6 1 0
      138 GETUPVAL                         R6 1
      139 DUPTABLE                         R8 K45 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens"}]
      140 GETTABLEKS                       R9 R5 K41 ["input_tokens"]
      142 SETTABLEKS                       R9 R8 K41 ["input_tokens"]
      144 GETTABLEKS                       R9 R5 K42 ["output_tokens"]
      146 SETTABLEKS                       R9 R8 K42 ["output_tokens"]
      148 GETTABLEKS                       R9 R5 K43 ["cache_read_input_tokens"]
      150 SETTABLEKS                       R9 R8 K43 ["cache_read_input_tokens"]
      152 GETTABLEKS                       R9 R5 K44 ["cache_creation_input_tokens"]
      154 SETTABLEKS                       R9 R8 K44 ["cache_creation_input_tokens"]
      156 NAMECALL                         R6 R6 K46 ["addUsage"]
      158 CALL                             R6 2 0
      159 DUPTABLE                         R5 K47 [{["type"] = "message_delta", ["delta"]}]
      160 DUPTABLE                         R6 K49 [{"stopReason"}]
      161 GETTABLEKS                       R8 R2 K23 ["delta"]
      163 GETTABLEKS                       R8 R8 K50 ["stop_reason"]
      165 JUMPIFEQKS                       R8 K51 ["end_turn"] ; [+5]
      167 JUMPIFEQKS                       R8 K52 ["pause_turn"] ; [+3]
      169 JUMPIFNOTEQKNIL                  R8 ; [+3]
      171 LOADK                            R7 K53 ["message_end"]
      172 JUMP                             ; [+22]
      173 JUMPIFNOTEQKS                    R8 K54 ["max_tokens"] ; [+3]
      175 LOADK                            R7 K55 ["token_limit"]
      176 JUMP                             ; [+18]
      177 JUMPIFNOTEQKS                    R8 K56 ["stop_sequence"] ; [+3]
      179 LOADK                            R7 K56 ["stop_sequence"]
      180 JUMP                             ; [+14]
      181 JUMPIFNOTEQKS                    R8 K57 ["tool_use"] ; [+3]
      183 LOADK                            R7 K57 ["tool_use"]
      184 JUMP                             ; [+10]
      185 JUMPIFNOTEQKS                    R8 K58 ["refusal"] ; [+3]
      187 LOADK                            R7 K59 ["safety_filter"]
      188 JUMP                             ; [+6]
      189 GETUPVAL                         R9 2
      190 GETTABLEKS                       R9 R9 K60 ["assertNever"]
      192 MOVE                             R10 R8
      193 CALL                             R9 1 1
      194 MOVE                             R7 R9
      195 SETTABLEKS                       R7 R6 K48 ["stopReason"]
      197 SETTABLEKS                       R6 R5 K23 ["delta"]
      199 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      201 MOVE                             R7 R3
      202 MOVE                             R8 R5
      203 GETIMPORT                        R6 K16 [table.insert]
      205 CALL                             R6 2 0
      206 RETURN                           R3 1
      207 GETUPVAL                         R5 2
      208 GETTABLEKS                       R5 R5 K60 ["assertNever"]
      210 MOVE                             R6 R4
      211 CALL                             R5 1 0
      212 RETURN                           R3 1

PROTO_6:
        0 DUPCLOSURE                       R0 K0 [PROTO_5]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R7 K2 [{"role", "content"}]
        7 GETTABLEKS                       R8 R6 K0 ["role"]
        9 SETTABLEKS                       R8 R7 K0 ["role"]
       11 NEWTABLE                         R8 0 0
       13 SETTABLEKS                       R8 R7 K1 ["content"]
       15 GETTABLEKS                       R8 R6 K1 ["content"]
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 GETTABLEKS                       R13 R12 K3 ["type"]
       22 JUMPIFNOTEQKS                    R13 K4 ["tool_result"] ; [+63]
       24 NEWTABLE                         R13 0 0
       26 GETTABLEKS                       R14 R12 K1 ["content"]
       28 LOADNIL                          R15
       29 LOADNIL                          R16
       30 FORGPREP                         R14
       31 GETTABLEKS                       R19 R18 K3 ["type"]
       33 JUMPIFNOTEQKS                    R19 K5 ["image"] ; [+21]
       35 DUPTABLE                         R19 K7 [{["type"] = "image", ["source"]}]
       36 DUPTABLE                         R20 K11 [{["type"] = "base64", ["media_type"], ["data"]}]
       37 GETTABLEKS                       R21 R18 K12 ["mimeType"]
       39 SETTABLEKS                       R21 R20 K9 ["media_type"]
       41 GETTABLEKS                       R21 R18 K10 ["data"]
       43 SETTABLEKS                       R21 R20 K10 ["data"]
       45 SETTABLEKS                       R20 R19 K6 ["source"]
       47 FASTCALL2                        TABLE_INSERT R13 R19 ; [+5]
       49 MOVE                             R21 R13
       50 MOVE                             R22 R19
       51 GETIMPORT                        R20 K15 [table.insert]
       53 CALL                             R20 2 0
       54 JUMP                             ; [+7]
       55 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
       57 MOVE                             R20 R13
       58 MOVE                             R21 R18
       59 GETIMPORT                        R19 K15 [table.insert]
       61 CALL                             R19 2 0
       62 FORGLOOP                         R14 2 ; [-32]
       64 DUPTABLE                         R14 K17 [{["type"] = "tool_result", ["tool_use_id"], ["content"]}]
       65 GETTABLEKS                       R15 R12 K18 ["id"]
       67 SETTABLEKS                       R15 R14 K16 ["tool_use_id"]
       69 SETTABLEKS                       R13 R14 K1 ["content"]
       71 GETTABLEKS                       R15 R12 K19 ["isError"]
       73 JUMPIFNOT                        R15 ; [+3]
       74 LOADB                            R15 1
       75 SETTABLEKS                       R15 R14 K20 ["is_error"]
       77 GETTABLEKS                       R16 R7 K1 ["content"]
       79 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       81 MOVE                             R17 R14
       82 GETIMPORT                        R15 K15 [table.insert]
       84 CALL                             R15 2 0
       85 JUMP                             ; [+67]
       86 GETTABLEKS                       R13 R12 K3 ["type"]
       88 JUMPIFNOTEQKS                    R13 K5 ["image"] ; [+22]
       90 DUPTABLE                         R13 K7 [{["type"] = "image", ["source"]}]
       91 DUPTABLE                         R14 K11 [{["type"] = "base64", ["media_type"], ["data"]}]
       92 GETTABLEKS                       R15 R12 K12 ["mimeType"]
       94 SETTABLEKS                       R15 R14 K9 ["media_type"]
       96 GETTABLEKS                       R15 R12 K10 ["data"]
       98 SETTABLEKS                       R15 R14 K10 ["data"]
      100 SETTABLEKS                       R14 R13 K6 ["source"]
      102 GETTABLEKS                       R15 R7 K1 ["content"]
      104 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      106 MOVE                             R16 R13
      107 GETIMPORT                        R14 K15 [table.insert]
      109 CALL                             R14 2 0
      110 JUMP                             ; [+42]
      111 GETTABLEKS                       R13 R12 K3 ["type"]
      113 JUMPIFNOTEQKS                    R13 K21 ["text"] ; [+14]
      115 GETTABLEKS                       R14 R7 K1 ["content"]
      117 DUPTABLE                         R15 K22 [{["type"] = "text", ["text"]}]
      118 GETTABLEKS                       R16 R12 K21 ["text"]
      120 SETTABLEKS                       R16 R15 K21 ["text"]
      122 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      124 GETIMPORT                        R13 K15 [table.insert]
      126 CALL                             R13 2 0
      127 JUMP                             ; [+25]
      128 GETTABLEKS                       R13 R12 K3 ["type"]
      130 JUMPIFNOTEQKS                    R13 K23 ["tool_use"] ; [+22]
      132 DUPTABLE                         R13 K26 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      133 GETTABLEKS                       R14 R12 K18 ["id"]
      135 SETTABLEKS                       R14 R13 K18 ["id"]
      137 GETTABLEKS                       R14 R12 K24 ["name"]
      139 SETTABLEKS                       R14 R13 K24 ["name"]
      141 GETTABLEKS                       R14 R12 K25 ["input"]
      143 SETTABLEKS                       R14 R13 K25 ["input"]
      145 GETTABLEKS                       R15 R7 K1 ["content"]
      147 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      149 MOVE                             R16 R13
      150 GETIMPORT                        R14 K15 [table.insert]
      152 CALL                             R14 2 0
      153 FORGLOOP                         R8 2 ; [-134]
      155 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
      157 MOVE                             R9 R1
      158 MOVE                             R10 R7
      159 GETIMPORT                        R8 K15 [table.insert]
      161 CALL                             R8 2 0
      162 FORGLOOP                         R2 2 ; [-157]
      164 RETURN                           R1 1

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
       28 GETTABLEKS                       R5 R3 K12 ["LLMProviderTypes"]
       30 GETTABLEKS                       R5 R5 K13 ["Claude"]
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
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R10 K19 [PROTO_7]
       46 DUPTABLE                         R11 K24 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoClaudeMessage"}]
       47 SETTABLEKS                       R6 R11 K20 ["getTokenUsageTracker"]
       49 SETTABLEKS                       R7 R11 K21 ["resetTokenUsageTracker"]
       51 SETTABLEKS                       R9 R11 K22 ["createAdapter"]
       53 SETTABLEKS                       R10 R11 K23 ["convertLLMtoClaudeMessage"]
       55 RETURN                           R11 1
