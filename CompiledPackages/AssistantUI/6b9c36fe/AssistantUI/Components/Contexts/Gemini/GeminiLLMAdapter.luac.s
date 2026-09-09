PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["logTime"]
        3 CALL                             R3 1 0
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETIMPORT                        R4 K3 [string.match]
        7 MOVE                             R5 R1
        8 LOADK                            R6 K4 ["([^/]+)$"]
        9 CALL                             R4 2 1
       10 OR                               R3 R4 R1
       11 GETUPVAL                         R4 0
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K5 ["logModel"]
       15 CALL                             R4 2 0
       16 ORK                              R2 R2 K6 ["default"]
       17 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       19 MOVE                             R4 R2
       20 LOADK                            R5 K7 ["responseId is required for Gemini token usage tracking"]
       21 GETIMPORT                        R3 K9 [assert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R4 1
       25 GETTABLE                         R3 R4 R2
       26 JUMPIF                           R3 ; [+4]
       27 DUPTABLE                         R4 K14 [{["promptTokenCount"] = 0, ["candidatesTokenCount"] = 0, ["thoughtsTokenCount"] = 0}]
       28 MOVE                             R3 R4
       29 GETUPVAL                         R4 1
       30 SETTABLE                         R3 R4 R2
       31 GETTABLEKS                       R4 R0 K10 ["promptTokenCount"]
       33 JUMPIFNOT                        R4 ; [+11]
       34 GETTABLEKS                       R5 R3 K10 ["promptTokenCount"]
       36 GETTABLEKS                       R6 R0 K10 ["promptTokenCount"]
       38 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       40 GETIMPORT                        R4 K17 [math.max]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K10 ["promptTokenCount"]
       45 GETTABLEKS                       R4 R0 K12 ["candidatesTokenCount"]
       47 JUMPIFNOT                        R4 ; [+11]
       48 GETTABLEKS                       R5 R3 K12 ["candidatesTokenCount"]
       50 GETTABLEKS                       R6 R0 K12 ["candidatesTokenCount"]
       52 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       54 GETIMPORT                        R4 K17 [math.max]
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K12 ["candidatesTokenCount"]
       59 GETTABLEKS                       R4 R0 K13 ["thoughtsTokenCount"]
       61 JUMPIFNOT                        R4 ; [+11]
       62 GETTABLEKS                       R5 R3 K13 ["thoughtsTokenCount"]
       64 GETTABLEKS                       R6 R0 K13 ["thoughtsTokenCount"]
       66 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       68 GETIMPORT                        R4 K17 [math.max]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R3 K13 ["thoughtsTokenCount"]
       73 LOADN                            R4 0
       74 LOADN                            R5 0
       75 LOADN                            R6 0
       76 GETUPVAL                         R7 1
       77 LOADNIL                          R8
       78 LOADNIL                          R9
       79 FORGPREP                         R7
       80 GETTABLEKS                       R12 R11 K10 ["promptTokenCount"]
       82 ADD                              R4 R4 R12
       83 GETTABLEKS                       R13 R11 K12 ["candidatesTokenCount"]
       85 GETTABLEKS                       R14 R11 K13 ["thoughtsTokenCount"]
       87 ADD                              R12 R13 R14
       88 ADD                              R5 R5 R12
       89 GETTABLEKS                       R13 R11 K13 ["thoughtsTokenCount"]
       91 ADD                              R6 R6 R13
       92 FORGLOOP                         R7 2 ; [-13]
       94 GETUPVAL                         R7 0
       95 DUPTABLE                         R9 K21 [{"input_tokens", "output_tokens", "reasoning_tokens"}]
       96 SETTABLEKS                       R4 R9 K18 ["input_tokens"]
       98 SETTABLEKS                       R5 R9 K19 ["output_tokens"]
      100 SETTABLEKS                       R6 R9 K20 ["reasoning_tokens"]
      102 NAMECALL                         R7 R7 K22 ["setUsage"]
      104 CALL                             R7 2 0
      105 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetTotalUsage"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 JUMPIFEQKS                       R0 K0 ["STOP"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["FINISH_REASON_UNSPECIFIED"] ; [+8]
        4 GETTABLEKS                       R3 R1 K2 ["hasFunctionCall"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R2 K3 ["tool_use"]
        8 RETURN                           R2 1
        9 LOADK                            R2 K4 ["message_end"]
       10 RETURN                           R2 1
       11 JUMPIFNOTEQKS                    R0 K5 ["MAX_TOKENS"] ; [+3]
       13 LOADK                            R2 K6 ["token_limit"]
       14 RETURN                           R2 1
       15 JUMPIFEQKS                       R0 K7 ["SAFETY"] ; [+13]
       17 JUMPIFEQKS                       R0 K8 ["IMAGE_SAFETY"] ; [+11]
       19 JUMPIFEQKS                       R0 K9 ["PROHIBITED_CONTENT"] ; [+9]
       21 JUMPIFEQKS                       R0 K10 ["SPII"] ; [+7]
       23 JUMPIFEQKS                       R0 K11 ["BLOCKLIST"] ; [+5]
       25 JUMPIFEQKS                       R0 K12 ["RECITATION"] ; [+3]
       27 JUMPIFNOTEQKS                    R0 K13 ["LANGUAGE"] ; [+3]
       29 LOADK                            R2 K14 ["safety_filter"]
       30 RETURN                           R2 1
       31 JUMPIFEQKS                       R0 K15 ["OTHER"] ; [+3]
       33 JUMPIFNOTEQKS                    R0 K16 ["MALFORMED_FUNCTION_CALL"] ; [+3]
       35 LOADK                            R2 K4 ["message_end"]
       36 RETURN                           R2 1
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K17 ["assertNever"]
       40 MOVE                             R3 R0
       41 CALL                             R2 1 -1
       42 RETURN                           R2 -1

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
        6 DUPTABLE                         R3 K5 [{["type"] = "error", ["error"] = "client_error"}]
        7 JUMPIF                           R1 ; [+6]
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R3
       11 SETLIST                          R4 R5 1 [1]
       13 RETURN                           R4 1
       14 GETTABLEKS                       R4 R2 K3 ["error"]
       16 JUMPIFNOT                        R4 ; [+12]
       17 GETIMPORT                        R4 K7 [warn]
       19 LOADK                            R5 K8 ["Error from Gemini: "]
       20 GETTABLEKS                       R6 R2 K3 ["error"]
       22 CALL                             R4 2 0
       23 NEWTABLE                         R4 0 1
       25 MOVE                             R5 R3
       26 SETLIST                          R4 R5 1 [1]
       28 RETURN                           R4 1
       29 GETTABLEKS                       R4 R2 K9 ["usageMetadata"]
       31 JUMPIFNOT                        R4 ; [+12]
       32 GETTABLEKS                       R5 R2 K11 ["modelVersion"]
       34 ORK                              R4 R5 K10 []
       35 GETTABLEKS                       R6 R2 K12 ["responseId"]
       37 ORK                              R5 R6 K10 []
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R7 R2 K9 ["usageMetadata"]
       41 MOVE                             R8 R4
       42 MOVE                             R9 R5
       43 CALL                             R6 3 0
       44 GETTABLEKS                       R4 R2 K13 ["candidates"]
       46 JUMPIFNOT                        R4 ; [+3]
       47 GETTABLEKS                       R5 R2 K13 ["candidates"]
       49 GETTABLEN                        R4 R5 1
       50 JUMPIF                           R4 ; [+10]
       51 GETIMPORT                        R5 K7 [warn]
       53 LOADK                            R6 K14 ["Empty candidate field in Gemini response"]
       54 CALL                             R5 1 0
       55 NEWTABLE                         R5 0 1
       57 MOVE                             R6 R3
       58 SETLIST                          R5 R6 1 [1]
       60 RETURN                           R5 1
       61 NEWTABLE                         R5 0 0
       63 GETTABLEKS                       R6 R4 K15 ["content"]
       65 JUMPIFNOT                        R6 ; [+156]
       66 GETTABLEKS                       R6 R4 K15 ["content"]
       68 GETTABLEKS                       R6 R6 K16 ["parts"]
       70 JUMPIFNOT                        R6 ; [+151]
       71 GETTABLEKS                       R6 R4 K15 ["content"]
       73 GETTABLEKS                       R6 R6 K16 ["parts"]
       75 LOADNIL                          R7
       76 LOADNIL                          R8
       77 FORGPREP                         R6
       78 GETTABLEKS                       R11 R10 K17 ["text"]
       80 JUMPIFNOT                        R11 ; [+36]
       81 GETUPVAL                         R11 2
       82 JUMPIFNOT                        R11 ; [+3]
       83 GETUPVAL                         R11 3
       84 JUMPIFEQKS                       R11 K17 ["text"] ; [+16]
       86 DUPTABLE                         R11 K20 [{["type"] = "content_start", ["contentBlock"]}]
       87 DUPTABLE                         R12 K22 [{["type"] = "text", ["text"] = ""}]
       88 SETTABLEKS                       R12 R11 K19 ["contentBlock"]
       90 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       92 MOVE                             R13 R5
       93 MOVE                             R14 R11
       94 GETIMPORT                        R12 K25 [table.insert]
       96 CALL                             R12 2 0
       97 LOADB                            R12 1
       98 SETUPVAL                         R12 2
       99 LOADK                            R12 K17 ["text"]
      100 SETUPVAL                         R12 3
      101 DUPTABLE                         R11 K28 [{["type"] = "content_delta", ["delta"]}]
      102 DUPTABLE                         R12 K30 [{["type"] = "text_delta", ["text"]}]
      103 GETTABLEKS                       R13 R10 K17 ["text"]
      105 SETTABLEKS                       R13 R12 K17 ["text"]
      107 SETTABLEKS                       R12 R11 K27 ["delta"]
      109 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      111 MOVE                             R13 R5
      112 MOVE                             R14 R11
      113 GETIMPORT                        R12 K25 [table.insert]
      115 CALL                             R12 2 0
      116 JUMP                             ; [+103]
      117 GETTABLEKS                       R11 R10 K31 ["functionCall"]
      119 JUMPIFNOT                        R11 ; [+100]
      120 GETUPVAL                         R11 2
      121 JUMPIFNOT                        R11 ; [+11]
      122 GETUPVAL                         R11 3
      123 JUMPIFNOTEQKS                    R11 K17 ["text"] ; [+9]
      125 DUPTABLE                         R11 K33 [{["type"] = "content_end"}]
      126 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      128 MOVE                             R13 R5
      129 MOVE                             R14 R11
      130 GETIMPORT                        R12 K25 [table.insert]
      132 CALL                             R12 2 0
      133 GETTABLEKS                       R12 R10 K31 ["functionCall"]
      135 GETTABLEKS                       R12 R12 K34 ["name"]
      137 FASTCALL2K                       ASSERT R12 K35 ; [+4]
      139 LOADK                            R13 K35 ["functionCall.name is required"]
      140 GETIMPORT                        R11 K37 [assert]
      142 CALL                             R11 2 0
      143 GETTABLEKS                       R11 R10 K31 ["functionCall"]
      145 GETTABLEKS                       R11 R11 K34 ["name"]
      147 GETUPVAL                         R13 4
      148 ADDK                             R12 R13 K38 [1]
      149 SETUPVAL                         R12 4
      150 LOADK                            R13 K39 ["gemini_"]
      151 MOVE                             R14 R11
      152 LOADK                            R15 K40 ["_"]
      153 GETUPVAL                         R16 4
      154 CONCAT                           R12 R13 R16
      155 LOADNIL                          R13
      156 GETTABLEKS                       R14 R10 K41 ["thoughtSignature"]
      158 JUMPIFNOT                        R14 ; [+2]
      159 GETTABLEKS                       R13 R10 K41 ["thoughtSignature"]
      161 DUPTABLE                         R14 K20 [{["type"] = "content_start", ["contentBlock"]}]
      162 DUPTABLE                         R15 K45 [{["type"] = "tool_use", ["name"], ["id"], ["input"], ["thoughtSignature"]}]
      163 SETTABLEKS                       R11 R15 K34 ["name"]
      165 SETTABLEKS                       R12 R15 K43 ["id"]
      167 NEWTABLE                         R16 0 0
      169 SETTABLEKS                       R16 R15 K44 ["input"]
      171 SETTABLEKS                       R13 R15 K41 ["thoughtSignature"]
      173 SETTABLEKS                       R15 R14 K19 ["contentBlock"]
      175 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
      177 MOVE                             R16 R5
      178 MOVE                             R17 R14
      179 GETIMPORT                        R15 K25 [table.insert]
      181 CALL                             R15 2 0
      182 GETUPVAL                         R15 0
      183 GETTABLEKS                       R15 R15 K46 ["Json"]
      185 GETTABLEKS                       R15 R15 K47 ["encode"]
      187 GETTABLEKS                       R16 R10 K31 ["functionCall"]
      189 GETTABLEKS                       R16 R16 K48 ["args"]
      191 JUMPIF                           R16 ; [+2]
      192 NEWTABLE                         R16 0 0
      194 CALL                             R15 1 1
      195 DUPTABLE                         R16 K28 [{["type"] = "content_delta", ["delta"]}]
      196 DUPTABLE                         R17 K51 [{["type"] = "json_delta", ["jsonDelta"]}]
      197 SETTABLEKS                       R15 R17 K50 ["jsonDelta"]
      199 SETTABLEKS                       R17 R16 K27 ["delta"]
      201 FASTCALL2                        TABLE_INSERT R5 R16 ; [+5]
      203 MOVE                             R18 R5
      204 MOVE                             R19 R16
      205 GETIMPORT                        R17 K25 [table.insert]
      207 CALL                             R17 2 0
      208 DUPTABLE                         R17 K33 [{["type"] = "content_end"}]
      209 FASTCALL2                        TABLE_INSERT R5 R17 ; [+5]
      211 MOVE                             R19 R5
      212 MOVE                             R20 R17
      213 GETIMPORT                        R18 K25 [table.insert]
      215 CALL                             R18 2 0
      216 LOADB                            R18 0
      217 SETUPVAL                         R18 2
      218 LOADNIL                          R18
      219 SETUPVAL                         R18 3
      220 FORGLOOP                         R6 2 ; [-143]
      222 GETTABLEKS                       R6 R4 K52 ["finishReason"]
      224 JUMPIFNOT                        R6 ; [+49]
      225 GETUPVAL                         R7 2
      226 JUMPIFNOT                        R7 ; [+8]
      227 DUPTABLE                         R7 K33 [{["type"] = "content_end"}]
      228 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      230 MOVE                             R9 R5
      231 MOVE                             R10 R7
      232 GETIMPORT                        R8 K25 [table.insert]
      234 CALL                             R8 2 0
      235 DUPTABLE                         R7 K54 [{["type"] = "message_delta", ["delta"]}]
      236 DUPTABLE                         R8 K56 [{"stopReason"}]
      237 GETUPVAL                         R9 5
      238 MOVE                             R10 R6
      239 DUPTABLE                         R11 K58 [{"hasFunctionCall"}]
      240 GETUPVAL                         R13 4
      241 LOADN                            R14 0
      242 JUMPIFLT                         R14 R13 ; [+2]
      244 LOADB                            R12 0 +1
      245 LOADB                            R12 1
      246 SETTABLEKS                       R12 R11 K57 ["hasFunctionCall"]
      248 CALL                             R9 2 1
      249 SETTABLEKS                       R9 R8 K55 ["stopReason"]
      251 SETTABLEKS                       R8 R7 K27 ["delta"]
      253 FASTCALL2                        TABLE_INSERT R5 R7 ; [+5]
      255 MOVE                             R9 R5
      256 MOVE                             R10 R7
      257 GETIMPORT                        R8 K25 [table.insert]
      259 CALL                             R8 2 0
      260 DUPTABLE                         R8 K60 [{["type"] = "message_stop"}]
      261 FASTCALL2                        TABLE_INSERT R5 R8 ; [+5]
      263 MOVE                             R10 R5
      264 MOVE                             R11 R8
      265 GETIMPORT                        R9 K25 [table.insert]
      267 CALL                             R9 2 0
      268 LOADB                            R9 0
      269 SETUPVAL                         R9 2
      270 LOADNIL                          R9
      271 SETUPVAL                         R9 3
      272 LOADN                            R9 0
      273 SETUPVAL                         R9 4
      274 RETURN                           R5 1

PROTO_6:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 LOADN                            R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 CAPTURE                          REF R2
        9 CAPTURE                          UPVAL U2
       10 CLOSEUPVALS                      R0
       11 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 NEWTABLE                         R7 0 0
        8 GETTABLEKS                       R8 R6 K0 ["content"]
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 GETTABLEKS                       R13 R12 K1 ["type"]
       15 JUMPIFNOTEQKS                    R13 K2 ["text"] ; [+20]
       17 GETTABLEKS                       R13 R12 K2 ["text"]
       19 JUMPIFNOT                        R13 ; [+16]
       20 GETTABLEKS                       R13 R12 K2 ["text"]
       22 JUMPIFEQKS                       R13 K3 [""] ; [+13]
       24 DUPTABLE                         R15 K4 [{"text"}]
       25 GETTABLEKS                       R16 R12 K2 ["text"]
       27 SETTABLEKS                       R16 R15 K2 ["text"]
       29 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       31 MOVE                             R14 R7
       32 GETIMPORT                        R13 K7 [table.insert]
       34 CALL                             R13 2 0
       35 JUMP                             ; [+188]
       36 GETTABLEKS                       R13 R12 K1 ["type"]
       38 JUMPIFNOTEQKS                    R13 K8 ["image"] ; [+20]
       40 DUPTABLE                         R15 K10 [{"inline_data"}]
       41 DUPTABLE                         R16 K13 [{"mime_type", "data"}]
       42 GETTABLEKS                       R17 R12 K14 ["mimeType"]
       44 SETTABLEKS                       R17 R16 K11 ["mime_type"]
       46 GETTABLEKS                       R17 R12 K12 ["data"]
       48 SETTABLEKS                       R17 R16 K12 ["data"]
       50 SETTABLEKS                       R16 R15 K9 ["inline_data"]
       52 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       54 MOVE                             R14 R7
       55 GETIMPORT                        R13 K7 [table.insert]
       57 CALL                             R13 2 0
       58 JUMP                             ; [+165]
       59 GETTABLEKS                       R13 R12 K1 ["type"]
       61 JUMPIFNOTEQKS                    R13 K15 ["tool_result"] ; [+129]
       63 GETTABLEKS                       R13 R12 K16 ["id"]
       65 LOADN                            R16 1
       66 LOADN                            R17 7
       67 FASTCALL3                        STRING_SUB R13 R16 R17
       69 MOVE                             R15 R13
       70 GETIMPORT                        R14 K19 [string.sub]
       72 CALL                             R14 3 1
       73 JUMPIFNOTEQKS                    R14 K20 ["gemini_"] ; [+24]
       75 FASTCALL2K                       STRING_SUB R13 K21 ; [+5]
       77 MOVE                             R15 R13
       78 LOADK                            R16 K21 [8]
       79 GETIMPORT                        R14 K19 [string.sub]
       81 CALL                             R14 2 1
       82 MOVE                             R13 R14
       83 GETIMPORT                        R14 K23 [string.find]
       85 MOVE                             R15 R13
       86 LOADK                            R16 K24 ["_[0-9]+$"]
       87 CALL                             R14 2 1
       88 JUMPIFNOT                        R14 ; [+9]
       89 LOADN                            R17 1
       90 SUBK                             R18 R14 K25 [1]
       91 FASTCALL3                        STRING_SUB R13 R17 R18
       93 MOVE                             R16 R13
       94 GETIMPORT                        R15 K19 [string.sub]
       96 CALL                             R15 3 1
       97 MOVE                             R13 R15
       98 NEWTABLE                         R14 0 0
      100 GETTABLEKS                       R15 R12 K0 ["content"]
      102 LOADNIL                          R16
      103 LOADNIL                          R17
      104 FORGPREP                         R15
      105 GETTABLEKS                       R20 R19 K1 ["type"]
      107 JUMPIFNOTEQKS                    R20 K2 ["text"] ; [+8]
      109 FASTCALL2                        TABLE_INSERT R14 R19 ; [+5]
      111 MOVE                             R21 R14
      112 MOVE                             R22 R19
      113 GETIMPORT                        R20 K7 [table.insert]
      115 CALL                             R20 2 0
      116 FORGLOOP                         R15 2 ; [-12]
      118 LOADK                            R15 K3 [""]
      119 LENGTH                           R16 R14
      120 LOADN                            R17 0
      121 JUMPIFNOTLT                      R17 R16 ; [+9]
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K26 ["Json"]
      126 GETTABLEKS                       R16 R16 K27 ["encode"]
      128 MOVE                             R17 R14
      129 CALL                             R16 1 1
      130 MOVE                             R15 R16
      131 DUPTABLE                         R16 K29 [{"functionResponse"}]
      132 DUPTABLE                         R17 K32 [{"name", "response"}]
      133 SETTABLEKS                       R13 R17 K30 ["name"]
      135 DUPTABLE                         R18 K33 [{"content", "name"}]
      136 SETTABLEKS                       R15 R18 K0 ["content"]
      138 SETTABLEKS                       R13 R18 K30 ["name"]
      140 SETTABLEKS                       R18 R17 K31 ["response"]
      142 SETTABLEKS                       R17 R16 K28 ["functionResponse"]
      144 GETTABLEKS                       R17 R12 K34 ["isError"]
      146 JUMPIFNOT                        R17 ; [+7]
      147 GETTABLEKS                       R17 R16 K28 ["functionResponse"]
      149 GETTABLEKS                       R17 R17 K31 ["response"]
      151 LOADB                            R18 1
      152 SETTABLEKS                       R18 R17 K35 ["error"]
      154 FASTCALL2                        TABLE_INSERT R7 R16 ; [+5]
      156 MOVE                             R18 R7
      157 MOVE                             R19 R16
      158 GETIMPORT                        R17 K7 [table.insert]
      160 CALL                             R17 2 0
      161 GETTABLEKS                       R17 R12 K0 ["content"]
      163 LOADNIL                          R18
      164 LOADNIL                          R19
      165 FORGPREP                         R17
      166 GETTABLEKS                       R22 R21 K1 ["type"]
      168 JUMPIFNOTEQKS                    R22 K8 ["image"] ; [+19]
      170 DUPTABLE                         R24 K10 [{"inline_data"}]
      171 DUPTABLE                         R25 K13 [{"mime_type", "data"}]
      172 GETTABLEKS                       R26 R21 K14 ["mimeType"]
      174 SETTABLEKS                       R26 R25 K11 ["mime_type"]
      176 GETTABLEKS                       R26 R21 K12 ["data"]
      178 SETTABLEKS                       R26 R25 K12 ["data"]
      180 SETTABLEKS                       R25 R24 K9 ["inline_data"]
      182 FASTCALL2                        TABLE_INSERT R7 R24 ; [+4]
      184 MOVE                             R23 R7
      185 GETIMPORT                        R22 K7 [table.insert]
      187 CALL                             R22 2 0
      188 FORGLOOP                         R17 2 ; [-23]
      190 JUMP                             ; [+33]
      191 GETTABLEKS                       R13 R12 K1 ["type"]
      193 JUMPIFNOTEQKS                    R13 K36 ["tool_use"] ; [+30]
      195 DUPTABLE                         R13 K38 [{"functionCall"}]
      196 DUPTABLE                         R14 K40 [{"name", "args"}]
      197 GETTABLEKS                       R15 R12 K30 ["name"]
      199 SETTABLEKS                       R15 R14 K30 ["name"]
      201 GETTABLEKS                       R15 R12 K41 ["input"]
      203 JUMPIF                           R15 ; [+2]
      204 NEWTABLE                         R15 0 0
      206 SETTABLEKS                       R15 R14 K39 ["args"]
      208 SETTABLEKS                       R14 R13 K37 ["functionCall"]
      210 GETTABLEKS                       R14 R12 K42 ["thoughtSignature"]
      212 JUMPIFNOT                        R14 ; [+4]
      213 GETTABLEKS                       R14 R12 K42 ["thoughtSignature"]
      215 SETTABLEKS                       R14 R13 K42 ["thoughtSignature"]
      217 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      219 MOVE                             R15 R7
      220 MOVE                             R16 R13
      221 GETIMPORT                        R14 K7 [table.insert]
      223 CALL                             R14 2 0
      224 FORGLOOP                         R8 2 ; [-212]
      226 LENGTH                           R8 R7
      227 LOADN                            R9 0
      228 JUMPIFNOTLT                      R9 R8 ; [+27]
      230 GETTABLEKS                       R8 R6 K43 ["role"]
      232 JUMPIFNOTEQKS                    R8 K44 ["assistant"] ; [+3]
      234 LOADK                            R8 K45 ["model"]
      235 JUMP                             ; [+9]
      236 JUMPIFNOTEQKS                    R8 K46 ["user"] ; [+8]
      238 GETTABLEN                        R9 R7 1
      239 JUMPIFNOT                        R9 ; [+5]
      240 GETTABLEN                        R9 R7 1
      241 GETTABLEKS                       R9 R9 K28 ["functionResponse"]
      243 JUMPIFNOT                        R9 ; [+1]
      244 LOADK                            R8 K47 ["function"]
      245 DUPTABLE                         R11 K49 [{"role", "parts"}]
      246 SETTABLEKS                       R8 R11 K43 ["role"]
      248 SETTABLEKS                       R7 R11 K48 ["parts"]
      250 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      252 MOVE                             R10 R1
      253 GETIMPORT                        R9 K7 [table.insert]
      255 CALL                             R9 2 0
      256 FORGLOOP                         R2 2 ; [-251]
      258 RETURN                           R1 1

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
       30 GETTABLEKS                       R5 R5 K13 ["Gemini"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 0 0
       35 DUPCLOSURE                       R6 K14 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R5
       38 DUPCLOSURE                       R7 K15 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 DUPCLOSURE                       R8 K16 [PROTO_2]
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R9 K17 [PROTO_3]
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R10 K18 [PROTO_6]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R9
       49 DUPCLOSURE                       R11 K19 [PROTO_7]
       50 CAPTURE                          VAL R1
       51 DUPTABLE                         R12 K24 [{"getTokenUsageTracker", "resetTokenUsageTracker", "createAdapter", "convertLLMtoGeminiMessage"}]
       52 SETTABLEKS                       R7 R12 K20 ["getTokenUsageTracker"]
       54 SETTABLEKS                       R8 R12 K21 ["resetTokenUsageTracker"]
       56 SETTABLEKS                       R10 R12 K22 ["createAdapter"]
       58 SETTABLEKS                       R11 R12 K23 ["convertLLMtoGeminiMessage"]
       60 RETURN                           R12 1
