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
        6 JUMPIF                           R1 ; [+13]
        7 DUPTABLE                         R3 K4 [{"type", "error"}]
        8 LOADK                            R4 K3 ["error"]
        9 SETTABLEKS                       R4 R3 K2 ["type"]
       11 LOADK                            R4 K5 ["client_error"]
       12 SETTABLEKS                       R4 R3 K3 ["error"]
       14 NEWTABLE                         R4 0 1
       16 MOVE                             R5 R3
       17 SETLIST                          R4 R5 1 [1]
       19 RETURN                           R4 1
       20 NEWTABLE                         R3 0 0
       22 GETTABLEKS                       R4 R2 K2 ["type"]
       24 JUMPIFNOTEQKS                    R4 K6 ["ping"] ; [+2]
       26 RETURN                           R3 1
       27 GETTABLEKS                       R4 R2 K2 ["type"]
       29 JUMPIFNOTEQKS                    R4 K7 ["message_start"] ; [+32]
       31 GETTABLEKS                       R5 R2 K8 ["message"]
       33 JUMPIFNOT                        R5 ; [+16]
       34 GETTABLEKS                       R5 R2 K8 ["message"]
       36 GETTABLEKS                       R5 R5 K9 ["usage"]
       38 JUMPIFNOT                        R5 ; [+11]
       39 GETTABLEKS                       R6 R2 K8 ["message"]
       41 GETTABLEKS                       R6 R6 K11 ["model"]
       43 ORK                              R5 R6 K10 []
       44 JUMPIFNOT                        R5 ; [+5]
       45 GETUPVAL                         R6 1
       46 MOVE                             R8 R5
       47 NAMECALL                         R6 R6 K12 ["logModel"]
       49 CALL                             R6 2 0
       50 DUPTABLE                         R5 K13 [{"type"}]
       51 LOADK                            R6 K7 ["message_start"]
       52 SETTABLEKS                       R6 R5 K2 ["type"]
       54 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       56 MOVE                             R7 R3
       57 MOVE                             R8 R5
       58 GETIMPORT                        R6 K16 [table.insert]
       60 CALL                             R6 2 0
       61 RETURN                           R3 1
       62 JUMPIFNOTEQKS                    R4 K17 ["content_block_start"] ; [+17]
       64 DUPTABLE                         R5 K19 [{"type", "contentBlock"}]
       65 LOADK                            R6 K20 ["content_start"]
       66 SETTABLEKS                       R6 R5 K2 ["type"]
       68 GETTABLEKS                       R6 R2 K21 ["content_block"]
       70 SETTABLEKS                       R6 R5 K18 ["contentBlock"]
       72 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       74 MOVE                             R7 R3
       75 MOVE                             R8 R5
       76 GETIMPORT                        R6 K16 [table.insert]
       78 CALL                             R6 2 0
       79 RETURN                           R3 1
       80 JUMPIFNOTEQKS                    R4 K22 ["content_block_delta"] ; [+45]
       82 LOADNIL                          R5
       83 GETTABLEKS                       R6 R2 K23 ["delta"]
       85 GETTABLEKS                       R6 R6 K2 ["type"]
       87 JUMPIFNOTEQKS                    R6 K24 ["input_json_delta"] ; [+13]
       89 DUPTABLE                         R6 K26 [{"type", "jsonDelta"}]
       90 LOADK                            R7 K27 ["json_delta"]
       91 SETTABLEKS                       R7 R6 K2 ["type"]
       93 GETTABLEKS                       R7 R2 K23 ["delta"]
       95 GETTABLEKS                       R7 R7 K28 ["partial_json"]
       97 SETTABLEKS                       R7 R6 K25 ["jsonDelta"]
       99 MOVE                             R5 R6
      100 JUMP                             ; [+11]
      101 DUPTABLE                         R6 K30 [{"type", "text"}]
      102 LOADK                            R7 K31 ["text_delta"]
      103 SETTABLEKS                       R7 R6 K2 ["type"]
      105 GETTABLEKS                       R7 R2 K23 ["delta"]
      107 GETTABLEKS                       R7 R7 K29 ["text"]
      109 SETTABLEKS                       R7 R6 K29 ["text"]
      111 MOVE                             R5 R6
      112 DUPTABLE                         R6 K32 [{"type", "delta"}]
      113 LOADK                            R7 K33 ["content_delta"]
      114 SETTABLEKS                       R7 R6 K2 ["type"]
      116 SETTABLEKS                       R5 R6 K23 ["delta"]
      118 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
      120 MOVE                             R8 R3
      121 MOVE                             R9 R6
      122 GETIMPORT                        R7 K16 [table.insert]
      124 CALL                             R7 2 0
      125 RETURN                           R3 1
      126 JUMPIFNOTEQKS                    R4 K34 ["content_block_stop"] ; [+13]
      128 DUPTABLE                         R5 K13 [{"type"}]
      129 LOADK                            R6 K35 ["content_end"]
      130 SETTABLEKS                       R6 R5 K2 ["type"]
      132 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      134 MOVE                             R7 R3
      135 MOVE                             R8 R5
      136 GETIMPORT                        R6 K16 [table.insert]
      138 CALL                             R6 2 0
      139 RETURN                           R3 1
      140 JUMPIFNOTEQKS                    R4 K36 ["message_stop"] ; [+13]
      142 DUPTABLE                         R5 K13 [{"type"}]
      143 LOADK                            R6 K36 ["message_stop"]
      144 SETTABLEKS                       R6 R5 K2 ["type"]
      146 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      148 MOVE                             R7 R3
      149 MOVE                             R8 R5
      150 GETIMPORT                        R6 K16 [table.insert]
      152 CALL                             R6 2 0
      153 RETURN                           R3 1
      154 JUMPIFNOTEQKS                    R4 K37 ["message_delta"] ; [+82]
      156 GETTABLEKS                       R5 R2 K9 ["usage"]
      158 JUMPIFNOT                        R5 ; [+27]
      159 GETTABLEKS                       R5 R2 K9 ["usage"]
      161 GETUPVAL                         R6 1
      162 NAMECALL                         R6 R6 K38 ["logTime"]
      164 CALL                             R6 1 0
      165 GETUPVAL                         R6 1
      166 DUPTABLE                         R8 K43 [{"input_tokens", "output_tokens", "cache_read_input_tokens", "cache_creation_input_tokens"}]
      167 GETTABLEKS                       R9 R5 K39 ["input_tokens"]
      169 SETTABLEKS                       R9 R8 K39 ["input_tokens"]
      171 GETTABLEKS                       R9 R5 K40 ["output_tokens"]
      173 SETTABLEKS                       R9 R8 K40 ["output_tokens"]
      175 GETTABLEKS                       R9 R5 K41 ["cache_read_input_tokens"]
      177 SETTABLEKS                       R9 R8 K41 ["cache_read_input_tokens"]
      179 GETTABLEKS                       R9 R5 K42 ["cache_creation_input_tokens"]
      181 SETTABLEKS                       R9 R8 K42 ["cache_creation_input_tokens"]
      183 NAMECALL                         R6 R6 K44 ["addUsage"]
      185 CALL                             R6 2 0
      186 DUPTABLE                         R5 K32 [{"type", "delta"}]
      187 LOADK                            R6 K37 ["message_delta"]
      188 SETTABLEKS                       R6 R5 K2 ["type"]
      190 DUPTABLE                         R6 K46 [{"stopReason"}]
      191 GETTABLEKS                       R8 R2 K23 ["delta"]
      193 GETTABLEKS                       R8 R8 K47 ["stop_reason"]
      195 JUMPIFEQKS                       R8 K48 ["end_turn"] ; [+5]
      197 JUMPIFEQKS                       R8 K49 ["pause_turn"] ; [+3]
      199 JUMPIFNOTEQKNIL                  R8 ; [+3]
      201 LOADK                            R7 K50 ["message_end"]
      202 JUMP                             ; [+22]
      203 JUMPIFNOTEQKS                    R8 K51 ["max_tokens"] ; [+3]
      205 LOADK                            R7 K52 ["token_limit"]
      206 JUMP                             ; [+18]
      207 JUMPIFNOTEQKS                    R8 K53 ["stop_sequence"] ; [+3]
      209 LOADK                            R7 K53 ["stop_sequence"]
      210 JUMP                             ; [+14]
      211 JUMPIFNOTEQKS                    R8 K54 ["tool_use"] ; [+3]
      213 LOADK                            R7 K54 ["tool_use"]
      214 JUMP                             ; [+10]
      215 JUMPIFNOTEQKS                    R8 K55 ["refusal"] ; [+3]
      217 LOADK                            R7 K56 ["safety_filter"]
      218 JUMP                             ; [+6]
      219 GETUPVAL                         R9 2
      220 GETTABLEKS                       R9 R9 K57 ["assertNever"]
      222 MOVE                             R10 R8
      223 CALL                             R9 1 1
      224 MOVE                             R7 R9
      225 SETTABLEKS                       R7 R6 K45 ["stopReason"]
      227 SETTABLEKS                       R6 R5 K23 ["delta"]
      229 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
      231 MOVE                             R7 R3
      232 MOVE                             R8 R5
      233 GETIMPORT                        R6 K16 [table.insert]
      235 CALL                             R6 2 0
      236 RETURN                           R3 1
      237 GETUPVAL                         R5 2
      238 GETTABLEKS                       R5 R5 K57 ["assertNever"]
      240 MOVE                             R6 R4
      241 CALL                             R5 1 0
      242 RETURN                           R3 1

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
