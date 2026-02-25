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
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K9 ["assertNever"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

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
        8 JUMPIF                           R1 ; [+13]
        9 DUPTABLE                         R3 K4 [{"type", "error"}]
       10 LOADK                            R4 K3 ["error"]
       11 SETTABLEKS                       R4 R3 K2 ["type"]
       13 LOADK                            R4 K5 ["client_error"]
       14 SETTABLEKS                       R4 R3 K3 ["error"]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R3
       19 SETLIST                          R4 R5 1 [1]
       21 RETURN                           R4 1
       22 NEWTABLE                         R3 0 0
       24 GETTABLEKS                       R4 R2 K2 ["type"]
       26 JUMPIFNOTEQKS                    R4 K6 ["ping"] ; [+2]
       28 RETURN                           R3 1
       29 GETTABLEKS                       R4 R2 K2 ["type"]
       31 JUMPIFNOTEQKS                    R4 K7 ["message_start"] ; [+32]
       33 GETTABLEKS                       R5 R2 K8 ["message"]
       35 JUMPIFNOT                        R5 ; [+16]
       36 GETTABLEKS                       R6 R2 K8 ["message"]
       38 GETTABLEKS                       R5 R6 K9 ["usage"]
       40 JUMPIFNOT                        R5 ; [+11]
       41 GETTABLEKS                       R7 R2 K8 ["message"]
       43 GETTABLEKS                       R6 R7 K11 ["model"]
       45 ORK                              R5 R6 K10 []
       46 JUMPIFNOT                        R5 ; [+5]
       47 GETUPVAL                         R6 3
       48 MOVE                             R8 R5
       49 NAMECALL                         R6 R6 K12 ["logModel"]
       51 CALL                             R6 2 0
       52 DUPTABLE                         R5 K13 [{"type"}]
       53 LOADK                            R6 K7 ["message_start"]
       54 SETTABLEKS                       R6 R5 K2 ["type"]
       56 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       58 MOVE                             R7 R3
       59 MOVE                             R8 R5
       60 GETIMPORT                        R6 K16 [table.insert]
       62 CALL                             R6 2 0
       63 RETURN                           R3 1
       64 JUMPIFNOTEQKS                    R4 K17 ["content_block_start"] ; [+17]
       66 DUPTABLE                         R5 K19 [{"type", "contentBlock"}]
       67 LOADK                            R6 K20 ["content_start"]
       68 SETTABLEKS                       R6 R5 K2 ["type"]
       70 GETTABLEKS                       R6 R2 K21 ["content_block"]
       72 SETTABLEKS                       R6 R5 K18 ["contentBlock"]
       74 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       76 MOVE                             R7 R3
       77 MOVE                             R8 R5
       78 GETIMPORT                        R6 K16 [table.insert]
       80 CALL                             R6 2 0
       81 RETURN                           R3 1
       82 JUMPIFNOTEQKS                    R4 K22 ["content_block_delta"] ; [+45]
       84 LOADNIL                          R5
       85 GETTABLEKS                       R7 R2 K23 ["delta"]
       87 GETTABLEKS                       R6 R7 K2 ["type"]
       89 JUMPIFNOTEQKS                    R6 K24 ["input_json_delta"] ; [+13]
       91 DUPTABLE                         R6 K26 [{"type", "jsonDelta"}]
       92 LOADK                            R7 K27 ["json_delta"]
       93 SETTABLEKS                       R7 R6 K2 ["type"]
       95 GETTABLEKS                       R8 R2 K23 ["delta"]
       97 GETTABLEKS                       R7 R8 K28 ["partial_json"]
       99 SETTABLEKS                       R7 R6 K25 ["jsonDelta"]
      101 MOVE                             R5 R6
      102 JUMP                             ; [+11]
      103 DUPTABLE                         R6 K30 [{"type", "text"}]
      104 LOADK                            R7 K31 ["text_delta"]
      105 SETTABLEKS                       R7 R6 K2 ["type"]
      107 GETTABLEKS                       R8 R2 K23 ["delta"]
      109 GETTABLEKS                       R7 R8 K29 ["text"]
      111 SETTABLEKS                       R7 R6 K29 ["text"]
      113 MOVE                             R5 R6
      114 DUPTABLE                         R6 K32 [{"type", "delta"}]
      115 LOADK                            R7 K33 ["content_delta"]
      116 SETTABLEKS                       R7 R6 K2 ["type"]
      118 SETTABLEKS                       R5 R6 K23 ["delta"]
      120 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
      122 MOVE                             R8 R3
      123 MOVE                             R9 R6
      124 GETIMPORT                        R7 K16 [table.insert]
      126 CALL                             R7 2 0
      127 RETURN                           R3 1
      128 JUMPIFNOTEQKS                    R4 K34 ["content_block_stop"] ; [+13]
      130 DUPTABLE                         R5 K13 [{"type"}]
      131 LOADK                            R6 K35 ["content_end"]
      132 SETTABLEKS                       R6 R5 K2 ["type"]
      134 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      136 MOVE                             R7 R3
      137 MOVE                             R8 R5
      138 GETIMPORT                        R6 K16 [table.insert]
      140 CALL                             R6 2 0
      141 RETURN                           R3 1
      142 JUMPIFNOTEQKS                    R4 K36 ["message_stop"] ; [+13]
      144 DUPTABLE                         R5 K13 [{"type"}]
      145 LOADK                            R6 K36 ["message_stop"]
      146 SETTABLEKS                       R6 R5 K2 ["type"]
      148 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      150 MOVE                             R7 R3
      151 MOVE                             R8 R5
      152 GETIMPORT                        R6 K16 [table.insert]
      154 CALL                             R6 2 0
      155 RETURN                           R3 1
      156 JUMPIFNOTEQKS                    R4 K37 ["message_delta"] ; [+82]
      158 GETTABLEKS                       R5 R2 K9 ["usage"]
      160 JUMPIFNOT                        R5 ; [+27]
      161 GETTABLEKS                       R5 R2 K9 ["usage"]
      163 GETUPVAL                         R6 3
      164 NAMECALL                         R6 R6 K38 ["logTime"]
      166 CALL                             R6 1 0
      167 GETUPVAL                         R6 3
      168 DUPTABLE                         R8 K43 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens"}]
      169 GETTABLEKS                       R9 R5 K39 ["input_tokens"]
      171 SETTABLEKS                       R9 R8 K39 ["input_tokens"]
      173 GETTABLEKS                       R9 R5 K40 ["output_tokens"]
      175 SETTABLEKS                       R9 R8 K40 ["output_tokens"]
      177 GETTABLEKS                       R9 R5 K41 ["cache_read_input_tokens"]
      179 SETTABLEKS                       R9 R8 K41 ["cache_read_input_tokens"]
      181 GETTABLEKS                       R9 R5 K42 ["cache_creation_input_tokens"]
      183 SETTABLEKS                       R9 R8 K42 ["cache_creation_input_tokens"]
      185 NAMECALL                         R6 R6 K44 ["addUsage"]
      187 CALL                             R6 2 0
      188 DUPTABLE                         R5 K32 [{"type", "delta"}]
      189 LOADK                            R6 K37 ["message_delta"]
      190 SETTABLEKS                       R6 R5 K2 ["type"]
      192 DUPTABLE                         R6 K46 [{"stopReason"}]
      193 GETTABLEKS                       R9 R2 K23 ["delta"]
      195 GETTABLEKS                       R8 R9 K47 ["stop_reason"]
      197 JUMPIFEQKS                       R8 K48 ["end_turn"] ; [+5]
      199 JUMPIFEQKS                       R8 K49 ["pause_turn"] ; [+3]
      201 JUMPIFNOTEQKNIL                  R8 ; [+3]
      203 LOADK                            R7 K50 ["message_end"]
      204 JUMP                             ; [+22]
      205 JUMPIFNOTEQKS                    R8 K51 ["max_tokens"] ; [+3]
      207 LOADK                            R7 K52 ["token_limit"]
      208 JUMP                             ; [+18]
      209 JUMPIFNOTEQKS                    R8 K53 ["stop_sequence"] ; [+3]
      211 LOADK                            R7 K53 ["stop_sequence"]
      212 JUMP                             ; [+14]
      213 JUMPIFNOTEQKS                    R8 K54 ["tool_use"] ; [+3]
      215 LOADK                            R7 K54 ["tool_use"]
      216 JUMP                             ; [+10]
      217 JUMPIFNOTEQKS                    R8 K55 ["refusal"] ; [+3]
      219 LOADK                            R7 K56 ["safety_filter"]
      220 JUMP                             ; [+6]
      221 GETUPVAL                         R10 4
      222 GETTABLEKS                       R9 R10 K57 ["assertNever"]
      224 MOVE                             R10 R8
      225 CALL                             R9 1 1
      226 MOVE                             R7 R9
      227 SETTABLEKS                       R7 R6 K45 ["stopReason"]
      229 SETTABLEKS                       R6 R5 K23 ["delta"]
      231 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      233 MOVE                             R7 R3
      234 MOVE                             R8 R5
      235 GETIMPORT                        R6 K16 [table.insert]
      237 CALL                             R6 2 0
      238 RETURN                           R3 1
      239 GETUPVAL                         R6 4
      240 GETTABLEKS                       R5 R6 K57 ["assertNever"]
      242 MOVE                             R6 R4
      243 CALL                             R5 1 0
      244 RETURN                           R3 1

PROTO_6:
        0 DUPCLOSURE                       R0 K0 [PROTO_5]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

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
       22 JUMPIFNOTEQKS                    R13 K4 ["tool_result"] ; [+72]
       24 NEWTABLE                         R13 0 0
       26 GETTABLEKS                       R14 R12 K1 ["content"]
       28 LOADNIL                          R15
       29 LOADNIL                          R16
       30 FORGPREP                         R14
       31 GETTABLEKS                       R19 R18 K3 ["type"]
       33 JUMPIFNOTEQKS                    R19 K5 ["image"] ; [+27]
       35 DUPTABLE                         R19 K7 [{"type", "source"}]
       36 LOADK                            R20 K5 ["image"]
       37 SETTABLEKS                       R20 R19 K3 ["type"]
       39 DUPTABLE                         R20 K10 [{"type", "media_type", "data"}]
       40 LOADK                            R21 K11 ["base64"]
       41 SETTABLEKS                       R21 R20 K3 ["type"]
       43 GETTABLEKS                       R21 R18 K12 ["mimeType"]
       45 SETTABLEKS                       R21 R20 K8 ["media_type"]
       47 GETTABLEKS                       R21 R18 K9 ["data"]
       49 SETTABLEKS                       R21 R20 K9 ["data"]
       51 SETTABLEKS                       R20 R19 K6 ["source"]
       53 FASTCALL2                        TABLE_INSERT R13 R19 ; [+5]
       55 MOVE                             R21 R13
       56 MOVE                             R22 R19
       57 GETIMPORT                        R20 K15 [table.insert]
       59 CALL                             R20 2 0
       60 JUMP                             ; [+7]
       61 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
       63 MOVE                             R20 R13
       64 MOVE                             R21 R18
       65 GETIMPORT                        R19 K15 [table.insert]
       67 CALL                             R19 2 0
       68 FORGLOOP                         R14 2 ; [-38]
       70 DUPTABLE                         R14 K17 [{"type", "tool_use_id", "content"}]
       71 LOADK                            R15 K4 ["tool_result"]
       72 SETTABLEKS                       R15 R14 K3 ["type"]
       74 GETTABLEKS                       R15 R12 K18 ["id"]
       76 SETTABLEKS                       R15 R14 K16 ["tool_use_id"]
       78 SETTABLEKS                       R13 R14 K1 ["content"]
       80 GETTABLEKS                       R15 R12 K19 ["isError"]
       82 JUMPIFNOT                        R15 ; [+3]
       83 LOADB                            R15 1
       84 SETTABLEKS                       R15 R14 K20 ["is_error"]
       86 GETTABLEKS                       R16 R7 K1 ["content"]
       88 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       90 MOVE                             R17 R14
       91 GETIMPORT                        R15 K15 [table.insert]
       93 CALL                             R15 2 0
       94 JUMP                             ; [+72]
       95 GETTABLEKS                       R13 R12 K3 ["type"]
       97 JUMPIFNOTEQKS                    R13 K5 ["image"] ; [+28]
       99 DUPTABLE                         R13 K7 [{"type", "source"}]
      100 LOADK                            R14 K5 ["image"]
      101 SETTABLEKS                       R14 R13 K3 ["type"]
      103 DUPTABLE                         R14 K10 [{"type", "media_type", "data"}]
      104 LOADK                            R15 K11 ["base64"]
      105 SETTABLEKS                       R15 R14 K3 ["type"]
      107 GETTABLEKS                       R15 R12 K12 ["mimeType"]
      109 SETTABLEKS                       R15 R14 K8 ["media_type"]
      111 GETTABLEKS                       R15 R12 K9 ["data"]
      113 SETTABLEKS                       R15 R14 K9 ["data"]
      115 SETTABLEKS                       R14 R13 K6 ["source"]
      117 GETTABLEKS                       R15 R7 K1 ["content"]
      119 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      121 MOVE                             R16 R13
      122 GETIMPORT                        R14 K15 [table.insert]
      124 CALL                             R14 2 0
      125 JUMP                             ; [+41]
      126 GETTABLEKS                       R13 R12 K3 ["type"]
      128 JUMPIFNOTEQKS                    R13 K21 ["text"] ; [+10]
      130 GETTABLEKS                       R14 R7 K1 ["content"]
      132 FASTCALL2                        TABLE_INSERT R14 R12 ; [+4]
      134 MOVE                             R15 R12
      135 GETIMPORT                        R13 K15 [table.insert]
      137 CALL                             R13 2 0
      138 JUMP                             ; [+28]
      139 GETTABLEKS                       R13 R12 K3 ["type"]
      141 JUMPIFNOTEQKS                    R13 K22 ["tool_use"] ; [+25]
      143 DUPTABLE                         R13 K25 [{"type", "id", "name", "input"}]
      144 LOADK                            R14 K22 ["tool_use"]
      145 SETTABLEKS                       R14 R13 K3 ["type"]
      147 GETTABLEKS                       R14 R12 K18 ["id"]
      149 SETTABLEKS                       R14 R13 K18 ["id"]
      151 GETTABLEKS                       R14 R12 K23 ["name"]
      153 SETTABLEKS                       R14 R13 K23 ["name"]
      155 GETTABLEKS                       R14 R12 K24 ["input"]
      157 SETTABLEKS                       R14 R13 K24 ["input"]
      159 GETTABLEKS                       R15 R7 K1 ["content"]
      161 FASTCALL2                        TABLE_INSERT R15 R13 ; [+4]
      163 MOVE                             R16 R13
      164 GETIMPORT                        R14 K15 [table.insert]
      166 CALL                             R14 2 0
      167 FORGLOOP                         R8 2 ; [-148]
      169 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
      171 MOVE                             R9 R1
      172 MOVE                             R10 R7
      173 GETIMPORT                        R8 K15 [table.insert]
      175 CALL                             R8 2 0
      176 FORGLOOP                         R2 2 ; [-171]
      178 RETURN                           R1 1

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
       41 LOADK                            R7 K18 ["Claude"]
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
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 DUPCLOSURE                       R12 K24 [PROTO_7]
       58 DUPTABLE                         R13 K29 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoClaudeMessage"}]
       59 SETTABLEKS                       R8 R13 K25 ["getTokenUsageTracker"]
       61 SETTABLEKS                       R9 R13 K26 ["resetTokenUsageTracker"]
       63 SETTABLEKS                       R11 R13 K27 ["createAdapter"]
       65 SETTABLEKS                       R12 R13 K28 ["convertLLMtoClaudeMessage"]
       67 RETURN                           R13 1
