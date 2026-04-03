PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["join"]
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K2 [{"content"}]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R5 R0 K1 ["content"]
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K1 ["content"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
       16 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["layoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["layoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 JUMPIFNOT                        R4 ; [+9]
       11 GETTABLEKS                       R6 R0 K2 ["priority"]
       13 GETTABLEKS                       R7 R1 K2 ["priority"]
       15 JUMPIFLT                         R6 R7 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 RETURN                           R5 1
       20 JUMPIFLT                         R2 R3 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["message"]
        3 GETTABLEKS                       R1 R2 K1 ["content"]
        5 LENGTH                           R0 R1
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+8]
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 0
       11 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       13 GETIMPORT                        R0 K4 [table.insert]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["message"]
        3 GETTABLEKS                       R2 R3 K1 ["role"]
        5 JUMPIFEQ                         R2 R0 ; [+45]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["message"]
       10 GETTABLEKS                       R3 R4 K2 ["content"]
       12 LENGTH                           R2 R3
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+8]
       16 GETUPVAL                         R3 1
       17 GETUPVAL                         R4 0
       18 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       20 GETIMPORT                        R2 K5 [table.insert]
       22 CALL                             R2 2 0
       23 DUPTABLE                         R2 K9 [{"message", "createdAt", "updatedAt", "lastServerStreamId"}]
       24 DUPTABLE                         R3 K10 [{"content", "role"}]
       25 NEWTABLE                         R4 0 1
       27 GETTABLEKS                       R5 R1 K2 ["content"]
       29 SETLIST                          R4 R5 1 [1]
       31 SETTABLEKS                       R4 R3 K2 ["content"]
       33 SETTABLEKS                       R0 R3 K1 ["role"]
       35 SETTABLEKS                       R3 R2 K0 ["message"]
       37 GETTABLEKS                       R3 R1 K6 ["createdAt"]
       39 SETTABLEKS                       R3 R2 K6 ["createdAt"]
       41 GETTABLEKS                       R3 R1 K7 ["updatedAt"]
       43 SETTABLEKS                       R3 R2 K7 ["updatedAt"]
       45 GETTABLEKS                       R3 R1 K8 ["lastServerStreamId"]
       47 SETTABLEKS                       R3 R2 K8 ["lastServerStreamId"]
       49 SETUPVAL                         R2 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R2 R3 K6 ["createdAt"]
       54 JUMPIFNOTEQKN                    R2 K11 [0] ; [+6]
       56 GETUPVAL                         R2 0
       57 GETTABLEKS                       R3 R1 K6 ["createdAt"]
       59 SETTABLEKS                       R3 R2 K6 ["createdAt"]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R3 R1 K7 ["updatedAt"]
       64 SETTABLEKS                       R3 R2 K7 ["updatedAt"]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R3 R1 K8 ["lastServerStreamId"]
       69 SETTABLEKS                       R3 R2 K8 ["lastServerStreamId"]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R4 R5 K0 ["message"]
       74 GETTABLEKS                       R3 R4 K2 ["content"]
       76 GETTABLEKS                       R4 R1 K2 ["content"]
       78 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       80 GETIMPORT                        R2 K5 [table.insert]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["contents"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["type"]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R8 R9 K2 ["Type"]
       12 JUMPIFNOTEQ                      R7 R8 ; [+42]
       14 GETTABLEKS                       R7 R6 K3 ["text"]
       16 JUMPIFEQKS                       R7 K4 [""] ; [+235]
       18 DUPTABLE                         R8 K5 [{"type", "text"}]
       19 LOADK                            R9 K3 ["text"]
       20 SETTABLEKS                       R9 R8 K1 ["type"]
       22 GETTABLEKS                       R9 R6 K3 ["text"]
       24 SETTABLEKS                       R9 R8 K3 ["text"]
       26 DUPTABLE                         R11 K12 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
       27 SETTABLEKS                       R8 R11 K6 ["content"]
       29 GETTABLEKS                       R12 R6 K13 ["LayoutOrder"]
       31 SETTABLEKS                       R12 R11 K7 ["layoutOrder"]
       33 LOADN                            R12 1
       34 SETTABLEKS                       R12 R11 K8 ["priority"]
       36 GETTABLEKS                       R12 R6 K9 ["createdAt"]
       38 SETTABLEKS                       R12 R11 K9 ["createdAt"]
       40 GETTABLEKS                       R12 R6 K10 ["updatedAt"]
       42 SETTABLEKS                       R12 R11 K10 ["updatedAt"]
       44 GETTABLEKS                       R12 R6 K11 ["lastServerStreamId"]
       46 SETTABLEKS                       R12 R11 K11 ["lastServerStreamId"]
       48 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       50 MOVE                             R10 R1
       51 GETIMPORT                        R9 K16 [table.insert]
       53 CALL                             R9 2 0
       54 JUMP                             ; [+113]
       55 GETTABLEKS                       R7 R6 K1 ["type"]
       57 GETUPVAL                         R9 1
       58 GETTABLEKS                       R8 R9 K2 ["Type"]
       60 JUMPIFNOTEQ                      R7 R8 ; [+50]
       62 GETTABLEKS                       R7 R6 K17 ["thinking"]
       64 JUMPIFNOTEQKS                    R7 K4 [""] ; [+5]
       66 GETTABLEKS                       R7 R6 K18 ["signature"]
       68 JUMPIFEQKS                       R7 K4 [""] ; [+183]
       70 DUPTABLE                         R7 K19 [{"type", "thinking", "signature"}]
       71 LOADK                            R8 K17 ["thinking"]
       72 SETTABLEKS                       R8 R7 K1 ["type"]
       74 GETTABLEKS                       R8 R6 K17 ["thinking"]
       76 SETTABLEKS                       R8 R7 K17 ["thinking"]
       78 GETTABLEKS                       R8 R6 K18 ["signature"]
       80 SETTABLEKS                       R8 R7 K18 ["signature"]
       82 DUPTABLE                         R10 K12 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
       83 SETTABLEKS                       R7 R10 K6 ["content"]
       85 GETTABLEKS                       R11 R6 K13 ["LayoutOrder"]
       87 SETTABLEKS                       R11 R10 K7 ["layoutOrder"]
       89 LOADN                            R11 1
       90 SETTABLEKS                       R11 R10 K8 ["priority"]
       92 GETTABLEKS                       R11 R6 K9 ["createdAt"]
       94 SETTABLEKS                       R11 R10 K9 ["createdAt"]
       96 GETTABLEKS                       R11 R6 K10 ["updatedAt"]
       98 SETTABLEKS                       R11 R10 K10 ["updatedAt"]
      100 GETTABLEKS                       R11 R6 K11 ["lastServerStreamId"]
      102 SETTABLEKS                       R11 R10 K11 ["lastServerStreamId"]
      104 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      106 MOVE                             R9 R1
      107 GETIMPORT                        R8 K16 [table.insert]
      109 CALL                             R8 2 0
      110 JUMP                             ; [+57]
      111 GETUPVAL                         R7 2
      112 CALL                             R7 0 1
      113 JUMPIFNOT                        R7 ; [+54]
      114 GETTABLEKS                       R7 R6 K1 ["type"]
      116 GETUPVAL                         R9 3
      117 GETTABLEKS                       R8 R9 K2 ["Type"]
      119 JUMPIFNOTEQ                      R7 R8 ; [+48]
      121 GETTABLEKS                       R7 R6 K20 ["imageContents"]
      123 MOVE                             R8 R7
      124 LOADNIL                          R9
      125 LOADNIL                          R10
      126 FORGPREP                         R8
      127 GETUPVAL                         R14 4
      128 GETTABLEKS                       R13 R14 K21 ["storeImage"]
      130 MOVE                             R14 R12
      131 CALL                             R13 1 1
      132 DUPTABLE                         R14 K5 [{"type", "text"}]
      133 LOADK                            R15 K3 ["text"]
      134 SETTABLEKS                       R15 R14 K1 ["type"]
      136 SETTABLEKS                       R13 R14 K3 ["text"]
      138 DUPTABLE                         R17 K12 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      139 SETTABLEKS                       R14 R17 K6 ["content"]
      141 GETTABLEKS                       R18 R6 K13 ["LayoutOrder"]
      143 SETTABLEKS                       R18 R17 K7 ["layoutOrder"]
      145 LOADN                            R18 0
      146 SETTABLEKS                       R18 R17 K8 ["priority"]
      148 GETTABLEKS                       R18 R6 K9 ["createdAt"]
      150 SETTABLEKS                       R18 R17 K9 ["createdAt"]
      152 GETTABLEKS                       R18 R6 K10 ["updatedAt"]
      154 SETTABLEKS                       R18 R17 K10 ["updatedAt"]
      156 GETTABLEKS                       R18 R6 K11 ["lastServerStreamId"]
      158 SETTABLEKS                       R18 R17 K11 ["lastServerStreamId"]
      160 FASTCALL2                        TABLE_INSERT R1 R17 ; [+4]
      162 MOVE                             R16 R1
      163 GETIMPORT                        R15 K16 [table.insert]
      165 CALL                             R15 2 0
      166 FORGLOOP                         R8 2 ; [-40]
      168 GETTABLEKS                       R7 R6 K22 ["toolUse"]
      170 JUMPIFNOT                        R7 ; [+30]
      171 DUPTABLE                         R9 K12 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      172 GETTABLEKS                       R10 R6 K22 ["toolUse"]
      174 SETTABLEKS                       R10 R9 K6 ["content"]
      176 GETTABLEKS                       R10 R6 K13 ["LayoutOrder"]
      178 SETTABLEKS                       R10 R9 K7 ["layoutOrder"]
      180 LOADN                            R10 2
      181 SETTABLEKS                       R10 R9 K8 ["priority"]
      183 GETTABLEKS                       R10 R6 K9 ["createdAt"]
      185 SETTABLEKS                       R10 R9 K9 ["createdAt"]
      187 GETTABLEKS                       R10 R6 K10 ["updatedAt"]
      189 SETTABLEKS                       R10 R9 K10 ["updatedAt"]
      191 GETTABLEKS                       R10 R6 K11 ["lastServerStreamId"]
      193 SETTABLEKS                       R10 R9 K11 ["lastServerStreamId"]
      195 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      197 MOVE                             R8 R1
      198 GETIMPORT                        R7 K16 [table.insert]
      200 CALL                             R7 2 0
      201 GETTABLEKS                       R7 R6 K23 ["toolResult"]
      203 JUMPIFNOT                        R7 ; [+48]
      204 DUPTABLE                         R9 K12 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      205 GETTABLEKS                       R11 R6 K23 ["toolResult"]
      207 GETUPVAL                         R12 5
      208 CALL                             R12 0 1
      209 JUMPIFNOT                        R12 ; [+14]
      210 GETUPVAL                         R13 6
      211 GETTABLEKS                       R12 R13 K24 ["join"]
      213 MOVE                             R13 R11
      214 DUPTABLE                         R14 K25 [{"content"}]
      215 GETUPVAL                         R15 7
      216 GETTABLEKS                       R16 R11 K6 ["content"]
      218 CALL                             R15 1 1
      219 SETTABLEKS                       R15 R14 K6 ["content"]
      221 CALL                             R12 2 1
      222 MOVE                             R10 R12
      223 JUMP                             ; [+1]
      224 MOVE                             R10 R11
      225 SETTABLEKS                       R10 R9 K6 ["content"]
      227 GETTABLEKS                       R10 R6 K13 ["LayoutOrder"]
      229 SETTABLEKS                       R10 R9 K7 ["layoutOrder"]
      231 LOADN                            R10 3
      232 SETTABLEKS                       R10 R9 K8 ["priority"]
      234 GETTABLEKS                       R10 R6 K9 ["createdAt"]
      236 SETTABLEKS                       R10 R9 K9 ["createdAt"]
      238 GETTABLEKS                       R10 R6 K10 ["updatedAt"]
      240 SETTABLEKS                       R10 R9 K10 ["updatedAt"]
      242 GETTABLEKS                       R10 R6 K11 ["lastServerStreamId"]
      244 SETTABLEKS                       R10 R9 K11 ["lastServerStreamId"]
      246 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      248 MOVE                             R8 R1
      249 GETIMPORT                        R7 K16 [table.insert]
      251 CALL                             R7 2 0
      252 FORGLOOP                         R2 2 ; [-246]
      254 GETIMPORT                        R2 K27 [table.sort]
      256 MOVE                             R3 R1
      257 GETUPVAL                         R4 8
      258 CALL                             R2 2 0
      259 NEWTABLE                         R2 0 0
      261 DUPTABLE                         R3 K29 [{"message", "createdAt", "updatedAt", "lastServerStreamId"}]
      262 DUPTABLE                         R4 K31 [{"content", "role"}]
      263 NEWTABLE                         R5 0 0
      265 SETTABLEKS                       R5 R4 K6 ["content"]
      267 GETTABLEKS                       R5 R0 K30 ["role"]
      269 SETTABLEKS                       R5 R4 K30 ["role"]
      271 SETTABLEKS                       R4 R3 K28 ["message"]
      273 LOADN                            R4 0
      274 SETTABLEKS                       R4 R3 K9 ["createdAt"]
      276 LOADN                            R4 0
      277 SETTABLEKS                       R4 R3 K10 ["updatedAt"]
      279 LOADK                            R4 K4 [""]
      280 SETTABLEKS                       R4 R3 K11 ["lastServerStreamId"]
      282 NEWCLOSURE                       R4 P0
      283 CAPTURE                          REF R3
      284 CAPTURE                          VAL R2
      285 NEWCLOSURE                       R5 P1
      286 CAPTURE                          REF R3
      287 CAPTURE                          VAL R2
      288 MOVE                             R6 R1
      289 LOADNIL                          R7
      290 LOADNIL                          R8
      291 FORGPREP                         R6
      292 GETTABLEKS                       R11 R10 K6 ["content"]
      294 GETTABLEKS                       R12 R11 K1 ["type"]
      296 JUMPIFEQKS                       R12 K3 ["text"] ; [+5]
      298 GETTABLEKS                       R12 R11 K1 ["type"]
      300 JUMPIFNOTEQKS                    R12 K32 ["image"] ; [+7]
      302 MOVE                             R12 R5
      303 GETTABLEKS                       R13 R0 K30 ["role"]
      305 MOVE                             R14 R10
      306 CALL                             R12 2 0
      307 JUMP                             ; [+32]
      308 GETTABLEKS                       R12 R11 K1 ["type"]
      310 JUMPIFEQKS                       R12 K17 ["thinking"] ; [+9]
      312 GETTABLEKS                       R12 R11 K1 ["type"]
      314 JUMPIFEQKS                       R12 K33 ["tool_use"] ; [+5]
      316 GETTABLEKS                       R12 R11 K1 ["type"]
      318 JUMPIFNOTEQKS                    R12 K34 ["input_requested"] ; [+6]
      320 MOVE                             R12 R5
      321 LOADK                            R13 K35 ["assistant"]
      322 MOVE                             R14 R10
      323 CALL                             R12 2 0
      324 JUMP                             ; [+15]
      325 GETTABLEKS                       R12 R11 K1 ["type"]
      327 JUMPIFNOTEQKS                    R12 K36 ["tool_result"] ; [+6]
      329 MOVE                             R12 R5
      330 LOADK                            R13 K37 ["user"]
      331 MOVE                             R14 R10
      332 CALL                             R12 2 0
      333 JUMP                             ; [+6]
      334 GETUPVAL                         R13 9
      335 GETTABLEKS                       R12 R13 K38 ["assertNever"]
      337 GETTABLEKS                       R13 R11 K1 ["type"]
      339 CALL                             R12 1 0
      340 FORGLOOP                         R6 2 ; [-49]
      342 GETTABLEKS                       R8 R3 K28 ["message"]
      344 GETTABLEKS                       R7 R8 K6 ["content"]
      346 LENGTH                           R6 R7
      347 LOADN                            R7 0
      348 JUMPIFNOTLT                      R7 R6 ; [+8]
      350 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
      352 MOVE                             R7 R2
      353 MOVE                             R8 R3
      354 GETIMPORT                        R6 K16 [table.insert]
      356 CALL                             R6 2 0
      357 CLOSEUPVALS                      R3
      358 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R10 R7 K0 ["message"]
       11 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K3 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 2 ; [-9]
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["ImageContentStore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R5 K12 ["ImageContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["McpContentNormalizer"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Components"]
       41 GETTABLEKS                       R7 R8 K11 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R7 K14 ["TextContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Components"]
       50 GETTABLEKS                       R8 R9 K11 ["ContentWidgets"]
       52 GETTABLEKS                       R7 R8 K15 ["ThinkingContentWidget"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R10 R0 K17 ["Flags"]
       64 GETTABLEKS                       R9 R10 K18 ["FFlagEnableAssistantInputImageAttachment"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K17 ["Flags"]
       71 GETTABLEKS                       R10 R11 K19 ["FFlagMCPContentNormalization"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R4 K20 ["normalizeContentArray"]
       76 DUPCLOSURE                       R11 K21 [PROTO_0]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R10
       80 DUPCLOSURE                       R12 K22 [PROTO_1]
       81 DUPCLOSURE                       R13 K23 [PROTO_4]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R7
       92 DUPCLOSURE                       R14 K24 [PROTO_5]
       93 CAPTURE                          VAL R13
       94 DUPTABLE                         R15 K27 [{"readMessage", "readMessageWithTimestamp"}]
       95 SETTABLEKS                       R14 R15 K25 ["readMessage"]
       97 SETTABLEKS                       R13 R15 K26 ["readMessageWithTimestamp"]
       99 RETURN                           R15 1
