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
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R4 R1 K0 ["attachRawImageContent"]
        6 JUMPIFEQKB                       R4 TRUE ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R0 K1 ["contents"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R9 R8 K2 ["type"]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K3 ["Type"]
       20 JUMPIFNOTEQ                      R9 R10 ; [+42]
       22 GETTABLEKS                       R9 R8 K4 ["text"]
       24 JUMPIFEQKS                       R9 K5 [""] ; [+311]
       26 DUPTABLE                         R10 K6 [{"type", "text"}]
       27 LOADK                            R11 K4 ["text"]
       28 SETTABLEKS                       R11 R10 K2 ["type"]
       30 GETTABLEKS                       R11 R8 K4 ["text"]
       32 SETTABLEKS                       R11 R10 K4 ["text"]
       34 DUPTABLE                         R13 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
       35 SETTABLEKS                       R10 R13 K7 ["content"]
       37 GETTABLEKS                       R14 R8 K14 ["LayoutOrder"]
       39 SETTABLEKS                       R14 R13 K8 ["layoutOrder"]
       41 LOADN                            R14 2
       42 SETTABLEKS                       R14 R13 K9 ["priority"]
       44 GETTABLEKS                       R14 R8 K10 ["createdAt"]
       46 SETTABLEKS                       R14 R13 K10 ["createdAt"]
       48 GETTABLEKS                       R14 R8 K11 ["updatedAt"]
       50 SETTABLEKS                       R14 R13 K11 ["updatedAt"]
       52 GETTABLEKS                       R14 R8 K12 ["lastServerStreamId"]
       54 SETTABLEKS                       R14 R13 K12 ["lastServerStreamId"]
       56 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       58 MOVE                             R12 R2
       59 GETIMPORT                        R11 K17 [table.insert]
       61 CALL                             R11 2 0
       62 JUMP                             ; [+189]
       63 GETTABLEKS                       R9 R8 K2 ["type"]
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K3 ["Type"]
       68 JUMPIFNOTEQ                      R9 R10 ; [+50]
       70 GETTABLEKS                       R9 R8 K18 ["thinking"]
       72 JUMPIFNOTEQKS                    R9 K5 [""] ; [+5]
       74 GETTABLEKS                       R9 R8 K19 ["signature"]
       76 JUMPIFEQKS                       R9 K5 [""] ; [+259]
       78 DUPTABLE                         R9 K20 [{"type", "thinking", "signature"}]
       79 LOADK                            R10 K18 ["thinking"]
       80 SETTABLEKS                       R10 R9 K2 ["type"]
       82 GETTABLEKS                       R10 R8 K18 ["thinking"]
       84 SETTABLEKS                       R10 R9 K18 ["thinking"]
       86 GETTABLEKS                       R10 R8 K19 ["signature"]
       88 SETTABLEKS                       R10 R9 K19 ["signature"]
       90 DUPTABLE                         R12 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
       91 SETTABLEKS                       R9 R12 K7 ["content"]
       93 GETTABLEKS                       R13 R8 K14 ["LayoutOrder"]
       95 SETTABLEKS                       R13 R12 K8 ["layoutOrder"]
       97 LOADN                            R13 2
       98 SETTABLEKS                       R13 R12 K9 ["priority"]
      100 GETTABLEKS                       R13 R8 K10 ["createdAt"]
      102 SETTABLEKS                       R13 R12 K10 ["createdAt"]
      104 GETTABLEKS                       R13 R8 K11 ["updatedAt"]
      106 SETTABLEKS                       R13 R12 K11 ["updatedAt"]
      108 GETTABLEKS                       R13 R8 K12 ["lastServerStreamId"]
      110 SETTABLEKS                       R13 R12 K12 ["lastServerStreamId"]
      112 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      114 MOVE                             R11 R2
      115 GETIMPORT                        R10 K17 [table.insert]
      117 CALL                             R10 2 0
      118 JUMP                             ; [+133]
      119 GETUPVAL                         R9 2
      120 CALL                             R9 0 1
      121 JUMPIFNOT                        R9 ; [+130]
      122 GETTABLEKS                       R9 R8 K2 ["type"]
      124 GETUPVAL                         R11 3
      125 GETTABLEKS                       R10 R11 K3 ["Type"]
      127 JUMPIFNOTEQ                      R9 R10 ; [+124]
      129 GETTABLEKS                       R9 R8 K21 ["imageContents"]
      131 MOVE                             R10 R9
      132 LOADNIL                          R11
      133 LOADNIL                          R12
      134 FORGPREP                         R10
      135 GETUPVAL                         R16 4
      136 GETTABLEKS                       R15 R16 K22 ["storeImage"]
      138 MOVE                             R16 R14
      139 CALL                             R15 1 1
      140 JUMPIFNOT                        R3 ; [+75]
      141 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      142 DUPTABLE                         R19 K25 [{"type", "data", "mimeType"}]
      143 LOADK                            R20 K26 ["image"]
      144 SETTABLEKS                       R20 R19 K2 ["type"]
      146 GETTABLEKS                       R20 R14 K23 ["data"]
      148 SETTABLEKS                       R20 R19 K23 ["data"]
      150 GETTABLEKS                       R20 R14 K24 ["mimeType"]
      152 SETTABLEKS                       R20 R19 K24 ["mimeType"]
      154 SETTABLEKS                       R19 R18 K7 ["content"]
      156 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      158 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      160 LOADN                            R19 0
      161 SETTABLEKS                       R19 R18 K9 ["priority"]
      163 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      165 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      167 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      169 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      171 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      173 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      175 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      177 MOVE                             R17 R2
      178 GETIMPORT                        R16 K17 [table.insert]
      180 CALL                             R16 2 0
      181 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      182 DUPTABLE                         R19 K6 [{"type", "text"}]
      183 LOADK                            R20 K4 ["text"]
      184 SETTABLEKS                       R20 R19 K2 ["type"]
      186 SETTABLEKS                       R15 R19 K4 ["text"]
      188 SETTABLEKS                       R19 R18 K7 ["content"]
      190 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      192 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      194 LOADN                            R19 1
      195 SETTABLEKS                       R19 R18 K9 ["priority"]
      197 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      199 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      201 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      203 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      205 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      207 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      209 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      211 MOVE                             R17 R2
      212 GETIMPORT                        R16 K17 [table.insert]
      214 CALL                             R16 2 0
      215 JUMP                             ; [+34]
      216 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      217 DUPTABLE                         R19 K6 [{"type", "text"}]
      218 LOADK                            R20 K4 ["text"]
      219 SETTABLEKS                       R20 R19 K2 ["type"]
      221 SETTABLEKS                       R15 R19 K4 ["text"]
      223 SETTABLEKS                       R19 R18 K7 ["content"]
      225 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      227 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      229 LOADN                            R19 0
      230 SETTABLEKS                       R19 R18 K9 ["priority"]
      232 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      234 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      236 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      238 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      240 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      242 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      244 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      246 MOVE                             R17 R2
      247 GETIMPORT                        R16 K17 [table.insert]
      249 CALL                             R16 2 0
      250 FORGLOOP                         R10 2 ; [-116]
      252 GETTABLEKS                       R9 R8 K27 ["toolUse"]
      254 JUMPIFNOT                        R9 ; [+30]
      255 DUPTABLE                         R11 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      256 GETTABLEKS                       R12 R8 K27 ["toolUse"]
      258 SETTABLEKS                       R12 R11 K7 ["content"]
      260 GETTABLEKS                       R12 R8 K14 ["LayoutOrder"]
      262 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      264 LOADN                            R12 3
      265 SETTABLEKS                       R12 R11 K9 ["priority"]
      267 GETTABLEKS                       R12 R8 K10 ["createdAt"]
      269 SETTABLEKS                       R12 R11 K10 ["createdAt"]
      271 GETTABLEKS                       R12 R8 K11 ["updatedAt"]
      273 SETTABLEKS                       R12 R11 K11 ["updatedAt"]
      275 GETTABLEKS                       R12 R8 K12 ["lastServerStreamId"]
      277 SETTABLEKS                       R12 R11 K12 ["lastServerStreamId"]
      279 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      281 MOVE                             R10 R2
      282 GETIMPORT                        R9 K17 [table.insert]
      284 CALL                             R9 2 0
      285 GETTABLEKS                       R9 R8 K28 ["toolResult"]
      287 JUMPIFNOT                        R9 ; [+48]
      288 DUPTABLE                         R11 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      289 GETTABLEKS                       R13 R8 K28 ["toolResult"]
      291 GETUPVAL                         R14 5
      292 CALL                             R14 0 1
      293 JUMPIFNOT                        R14 ; [+14]
      294 GETUPVAL                         R15 6
      295 GETTABLEKS                       R14 R15 K29 ["join"]
      297 MOVE                             R15 R13
      298 DUPTABLE                         R16 K30 [{"content"}]
      299 GETUPVAL                         R17 7
      300 GETTABLEKS                       R18 R13 K7 ["content"]
      302 CALL                             R17 1 1
      303 SETTABLEKS                       R17 R16 K7 ["content"]
      305 CALL                             R14 2 1
      306 MOVE                             R12 R14
      307 JUMP                             ; [+1]
      308 MOVE                             R12 R13
      309 SETTABLEKS                       R12 R11 K7 ["content"]
      311 GETTABLEKS                       R12 R8 K14 ["LayoutOrder"]
      313 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      315 LOADN                            R12 4
      316 SETTABLEKS                       R12 R11 K9 ["priority"]
      318 GETTABLEKS                       R12 R8 K10 ["createdAt"]
      320 SETTABLEKS                       R12 R11 K10 ["createdAt"]
      322 GETTABLEKS                       R12 R8 K11 ["updatedAt"]
      324 SETTABLEKS                       R12 R11 K11 ["updatedAt"]
      326 GETTABLEKS                       R12 R8 K12 ["lastServerStreamId"]
      328 SETTABLEKS                       R12 R11 K12 ["lastServerStreamId"]
      330 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      332 MOVE                             R10 R2
      333 GETIMPORT                        R9 K17 [table.insert]
      335 CALL                             R9 2 0
      336 FORGLOOP                         R4 2 ; [-322]
      338 GETIMPORT                        R4 K32 [table.sort]
      340 MOVE                             R5 R2
      341 GETUPVAL                         R6 8
      342 CALL                             R4 2 0
      343 NEWTABLE                         R4 0 0
      345 DUPTABLE                         R5 K34 [{"message", "createdAt", "updatedAt", "lastServerStreamId"}]
      346 DUPTABLE                         R6 K36 [{"content", "role"}]
      347 NEWTABLE                         R7 0 0
      349 SETTABLEKS                       R7 R6 K7 ["content"]
      351 GETTABLEKS                       R7 R0 K35 ["role"]
      353 SETTABLEKS                       R7 R6 K35 ["role"]
      355 SETTABLEKS                       R6 R5 K33 ["message"]
      357 LOADN                            R6 0
      358 SETTABLEKS                       R6 R5 K10 ["createdAt"]
      360 LOADN                            R6 0
      361 SETTABLEKS                       R6 R5 K11 ["updatedAt"]
      363 LOADK                            R6 K5 [""]
      364 SETTABLEKS                       R6 R5 K12 ["lastServerStreamId"]
      366 NEWCLOSURE                       R6 P0
      367 CAPTURE                          REF R5
      368 CAPTURE                          VAL R4
      369 NEWCLOSURE                       R7 P1
      370 CAPTURE                          REF R5
      371 CAPTURE                          VAL R4
      372 MOVE                             R8 R2
      373 LOADNIL                          R9
      374 LOADNIL                          R10
      375 FORGPREP                         R8
      376 GETTABLEKS                       R13 R12 K7 ["content"]
      378 GETTABLEKS                       R14 R13 K2 ["type"]
      380 JUMPIFEQKS                       R14 K4 ["text"] ; [+5]
      382 GETTABLEKS                       R14 R13 K2 ["type"]
      384 JUMPIFNOTEQKS                    R14 K26 ["image"] ; [+7]
      386 MOVE                             R14 R7
      387 GETTABLEKS                       R15 R0 K35 ["role"]
      389 MOVE                             R16 R12
      390 CALL                             R14 2 0
      391 JUMP                             ; [+32]
      392 GETTABLEKS                       R14 R13 K2 ["type"]
      394 JUMPIFEQKS                       R14 K18 ["thinking"] ; [+9]
      396 GETTABLEKS                       R14 R13 K2 ["type"]
      398 JUMPIFEQKS                       R14 K37 ["tool_use"] ; [+5]
      400 GETTABLEKS                       R14 R13 K2 ["type"]
      402 JUMPIFNOTEQKS                    R14 K38 ["input_requested"] ; [+6]
      404 MOVE                             R14 R7
      405 LOADK                            R15 K39 ["assistant"]
      406 MOVE                             R16 R12
      407 CALL                             R14 2 0
      408 JUMP                             ; [+15]
      409 GETTABLEKS                       R14 R13 K2 ["type"]
      411 JUMPIFNOTEQKS                    R14 K40 ["tool_result"] ; [+6]
      413 MOVE                             R14 R7
      414 LOADK                            R15 K41 ["user"]
      415 MOVE                             R16 R12
      416 CALL                             R14 2 0
      417 JUMP                             ; [+6]
      418 GETUPVAL                         R15 9
      419 GETTABLEKS                       R14 R15 K42 ["assertNever"]
      421 GETTABLEKS                       R15 R13 K2 ["type"]
      423 CALL                             R14 1 0
      424 FORGLOOP                         R8 2 ; [-49]
      426 GETTABLEKS                       R10 R5 K33 ["message"]
      428 GETTABLEKS                       R9 R10 K7 ["content"]
      430 LENGTH                           R8 R9
      431 LOADN                            R9 0
      432 JUMPIFNOTLT                      R9 R8 ; [+8]
      434 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
      436 MOVE                             R9 R4
      437 MOVE                             R10 R5
      438 GETIMPORT                        R8 K17 [table.insert]
      440 CALL                             R8 2 0
      441 CLOSEUPVALS                      R5
      442 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R11 R8 K0 ["message"]
       12 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       14 MOVE                             R10 R3
       15 GETIMPORT                        R9 K3 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 2 ; [-9]
       20 RETURN                           R3 1

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
