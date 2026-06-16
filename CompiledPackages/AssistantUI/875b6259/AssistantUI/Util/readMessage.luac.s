PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["join"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["message"]
        3 GETTABLEKS                       R1 R1 K1 ["content"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["message"]
        3 GETTABLEKS                       R2 R2 K1 ["role"]
        5 JUMPIFEQ                         R2 R0 ; [+45]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["message"]
       10 GETTABLEKS                       R3 R3 K2 ["content"]
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
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K6 ["createdAt"]
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
       71 GETUPVAL                         R3 0
       72 GETTABLEKS                       R3 R3 K0 ["message"]
       74 GETTABLEKS                       R3 R3 K2 ["content"]
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
       17 GETUPVAL                         R10 0
       18 GETTABLEKS                       R10 R10 K3 ["Type"]
       20 JUMPIFNOTEQ                      R9 R10 ; [+42]
       22 GETTABLEKS                       R9 R8 K4 ["text"]
       24 JUMPIFEQKS                       R9 K5 [""] ; [+317]
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
       62 JUMP                             ; [+195]
       63 GETTABLEKS                       R9 R8 K2 ["type"]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K3 ["Type"]
       68 JUMPIFNOTEQ                      R9 R10 ; [+50]
       70 GETTABLEKS                       R9 R8 K18 ["thinking"]
       72 JUMPIFNOTEQKS                    R9 K5 [""] ; [+5]
       74 GETTABLEKS                       R9 R8 K19 ["signature"]
       76 JUMPIFEQKS                       R9 K5 [""] ; [+265]
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
      118 JUMP                             ; [+139]
      119 GETTABLEKS                       R9 R0 K21 ["role"]
      121 GETUPVAL                         R10 2
      122 GETTABLEKS                       R10 R10 K22 ["ROLE"]
      124 GETTABLEKS                       R10 R10 K23 ["User"]
      126 JUMPIFNOTEQ                      R9 R10 ; [+131]
      128 GETTABLEKS                       R9 R8 K2 ["type"]
      130 GETUPVAL                         R10 3
      131 GETTABLEKS                       R10 R10 K3 ["Type"]
      133 JUMPIFNOTEQ                      R9 R10 ; [+124]
      135 GETTABLEKS                       R9 R8 K24 ["imageContents"]
      137 MOVE                             R10 R9
      138 LOADNIL                          R11
      139 LOADNIL                          R12
      140 FORGPREP                         R10
      141 GETUPVAL                         R15 4
      142 GETTABLEKS                       R15 R15 K25 ["storeImage"]
      144 MOVE                             R16 R14
      145 CALL                             R15 1 1
      146 JUMPIFNOT                        R3 ; [+75]
      147 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      148 DUPTABLE                         R19 K28 [{"type", "data", "mimeType"}]
      149 LOADK                            R20 K29 ["image"]
      150 SETTABLEKS                       R20 R19 K2 ["type"]
      152 GETTABLEKS                       R20 R14 K26 ["data"]
      154 SETTABLEKS                       R20 R19 K26 ["data"]
      156 GETTABLEKS                       R20 R14 K27 ["mimeType"]
      158 SETTABLEKS                       R20 R19 K27 ["mimeType"]
      160 SETTABLEKS                       R19 R18 K7 ["content"]
      162 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      164 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      166 LOADN                            R19 0
      167 SETTABLEKS                       R19 R18 K9 ["priority"]
      169 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      171 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      173 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      175 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      177 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      179 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      181 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      183 MOVE                             R17 R2
      184 GETIMPORT                        R16 K17 [table.insert]
      186 CALL                             R16 2 0
      187 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      188 DUPTABLE                         R19 K6 [{"type", "text"}]
      189 LOADK                            R20 K4 ["text"]
      190 SETTABLEKS                       R20 R19 K2 ["type"]
      192 SETTABLEKS                       R15 R19 K4 ["text"]
      194 SETTABLEKS                       R19 R18 K7 ["content"]
      196 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      198 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      200 LOADN                            R19 1
      201 SETTABLEKS                       R19 R18 K9 ["priority"]
      203 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      205 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      207 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      209 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      211 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      213 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      215 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      217 MOVE                             R17 R2
      218 GETIMPORT                        R16 K17 [table.insert]
      220 CALL                             R16 2 0
      221 JUMP                             ; [+34]
      222 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      223 DUPTABLE                         R19 K6 [{"type", "text"}]
      224 LOADK                            R20 K4 ["text"]
      225 SETTABLEKS                       R20 R19 K2 ["type"]
      227 SETTABLEKS                       R15 R19 K4 ["text"]
      229 SETTABLEKS                       R19 R18 K7 ["content"]
      231 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      233 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      235 LOADN                            R19 0
      236 SETTABLEKS                       R19 R18 K9 ["priority"]
      238 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      240 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      242 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      244 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      246 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      248 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      250 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      252 MOVE                             R17 R2
      253 GETIMPORT                        R16 K17 [table.insert]
      255 CALL                             R16 2 0
      256 FORGLOOP                         R10 2 ; [-116]
      258 GETTABLEKS                       R9 R8 K30 ["toolUse"]
      260 JUMPIFNOT                        R9 ; [+30]
      261 DUPTABLE                         R11 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      262 GETTABLEKS                       R12 R8 K30 ["toolUse"]
      264 SETTABLEKS                       R12 R11 K7 ["content"]
      266 GETTABLEKS                       R12 R8 K14 ["LayoutOrder"]
      268 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      270 LOADN                            R12 3
      271 SETTABLEKS                       R12 R11 K9 ["priority"]
      273 GETTABLEKS                       R12 R8 K10 ["createdAt"]
      275 SETTABLEKS                       R12 R11 K10 ["createdAt"]
      277 GETTABLEKS                       R12 R8 K11 ["updatedAt"]
      279 SETTABLEKS                       R12 R11 K11 ["updatedAt"]
      281 GETTABLEKS                       R12 R8 K12 ["lastServerStreamId"]
      283 SETTABLEKS                       R12 R11 K12 ["lastServerStreamId"]
      285 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      287 MOVE                             R10 R2
      288 GETIMPORT                        R9 K17 [table.insert]
      290 CALL                             R9 2 0
      291 GETTABLEKS                       R9 R8 K31 ["toolResult"]
      293 JUMPIFNOT                        R9 ; [+48]
      294 DUPTABLE                         R11 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      295 GETTABLEKS                       R13 R8 K31 ["toolResult"]
      297 GETUPVAL                         R14 5
      298 CALL                             R14 0 1
      299 JUMPIFNOT                        R14 ; [+14]
      300 GETUPVAL                         R14 6
      301 GETTABLEKS                       R14 R14 K32 ["join"]
      303 MOVE                             R15 R13
      304 DUPTABLE                         R16 K33 [{"content"}]
      305 GETUPVAL                         R17 7
      306 GETTABLEKS                       R18 R13 K7 ["content"]
      308 CALL                             R17 1 1
      309 SETTABLEKS                       R17 R16 K7 ["content"]
      311 CALL                             R14 2 1
      312 MOVE                             R12 R14
      313 JUMP                             ; [+1]
      314 MOVE                             R12 R13
      315 SETTABLEKS                       R12 R11 K7 ["content"]
      317 GETTABLEKS                       R12 R8 K14 ["LayoutOrder"]
      319 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      321 LOADN                            R12 4
      322 SETTABLEKS                       R12 R11 K9 ["priority"]
      324 GETTABLEKS                       R12 R8 K10 ["createdAt"]
      326 SETTABLEKS                       R12 R11 K10 ["createdAt"]
      328 GETTABLEKS                       R12 R8 K11 ["updatedAt"]
      330 SETTABLEKS                       R12 R11 K11 ["updatedAt"]
      332 GETTABLEKS                       R12 R8 K12 ["lastServerStreamId"]
      334 SETTABLEKS                       R12 R11 K12 ["lastServerStreamId"]
      336 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      338 MOVE                             R10 R2
      339 GETIMPORT                        R9 K17 [table.insert]
      341 CALL                             R9 2 0
      342 FORGLOOP                         R4 2 ; [-328]
      344 GETIMPORT                        R4 K35 [table.sort]
      346 MOVE                             R5 R2
      347 GETUPVAL                         R6 8
      348 CALL                             R4 2 0
      349 NEWTABLE                         R4 0 0
      351 DUPTABLE                         R5 K37 [{"message", "createdAt", "updatedAt", "lastServerStreamId"}]
      352 DUPTABLE                         R6 K38 [{"content", "role"}]
      353 NEWTABLE                         R7 0 0
      355 SETTABLEKS                       R7 R6 K7 ["content"]
      357 GETTABLEKS                       R7 R0 K21 ["role"]
      359 SETTABLEKS                       R7 R6 K21 ["role"]
      361 SETTABLEKS                       R6 R5 K36 ["message"]
      363 LOADN                            R6 0
      364 SETTABLEKS                       R6 R5 K10 ["createdAt"]
      366 LOADN                            R6 0
      367 SETTABLEKS                       R6 R5 K11 ["updatedAt"]
      369 LOADK                            R6 K5 [""]
      370 SETTABLEKS                       R6 R5 K12 ["lastServerStreamId"]
      372 NEWCLOSURE                       R6 P0
      373 CAPTURE                          REF R5
      374 CAPTURE                          VAL R4
      375 NEWCLOSURE                       R7 P1
      376 CAPTURE                          REF R5
      377 CAPTURE                          VAL R4
      378 MOVE                             R8 R2
      379 LOADNIL                          R9
      380 LOADNIL                          R10
      381 FORGPREP                         R8
      382 GETTABLEKS                       R13 R12 K7 ["content"]
      384 GETTABLEKS                       R14 R13 K2 ["type"]
      386 JUMPIFEQKS                       R14 K4 ["text"] ; [+5]
      388 GETTABLEKS                       R14 R13 K2 ["type"]
      390 JUMPIFNOTEQKS                    R14 K29 ["image"] ; [+7]
      392 MOVE                             R14 R7
      393 GETTABLEKS                       R15 R0 K21 ["role"]
      395 MOVE                             R16 R12
      396 CALL                             R14 2 0
      397 JUMP                             ; [+32]
      398 GETTABLEKS                       R14 R13 K2 ["type"]
      400 JUMPIFEQKS                       R14 K18 ["thinking"] ; [+9]
      402 GETTABLEKS                       R14 R13 K2 ["type"]
      404 JUMPIFEQKS                       R14 K39 ["tool_use"] ; [+5]
      406 GETTABLEKS                       R14 R13 K2 ["type"]
      408 JUMPIFNOTEQKS                    R14 K40 ["input_requested"] ; [+6]
      410 MOVE                             R14 R7
      411 LOADK                            R15 K41 ["assistant"]
      412 MOVE                             R16 R12
      413 CALL                             R14 2 0
      414 JUMP                             ; [+15]
      415 GETTABLEKS                       R14 R13 K2 ["type"]
      417 JUMPIFNOTEQKS                    R14 K42 ["tool_result"] ; [+6]
      419 MOVE                             R14 R7
      420 LOADK                            R15 K43 ["user"]
      421 MOVE                             R16 R12
      422 CALL                             R14 2 0
      423 JUMP                             ; [+6]
      424 GETUPVAL                         R14 2
      425 GETTABLEKS                       R14 R14 K44 ["assertNever"]
      427 GETTABLEKS                       R15 R13 K2 ["type"]
      429 CALL                             R14 1 0
      430 FORGLOOP                         R8 2 ; [-49]
      432 GETTABLEKS                       R9 R5 K36 ["message"]
      434 GETTABLEKS                       R9 R9 K7 ["content"]
      436 LENGTH                           R8 R9
      437 LOADN                            R9 0
      438 JUMPIFNOTLT                      R9 R8 ; [+8]
      440 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
      442 MOVE                             R9 R4
      443 MOVE                             R10 R5
      444 GETIMPORT                        R8 K17 [table.insert]
      446 CALL                             R8 2 0
      447 CLOSEUPVALS                      R5
      448 RETURN                           R4 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ImageContentStore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K12 ["ImageContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["McpContentNormalizer"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Components"]
       41 GETTABLEKS                       R6 R6 K11 ["ContentWidgets"]
       43 GETTABLEKS                       R6 R6 K14 ["TextContentWidget"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Components"]
       50 GETTABLEKS                       R7 R7 K11 ["ContentWidgets"]
       52 GETTABLEKS                       R7 R7 K15 ["ThinkingContentWidget"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K17 ["Flags"]
       64 GETTABLEKS                       R9 R9 K18 ["FFlagMCPContentNormalization"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R4 K19 ["normalizeContentArray"]
       69 DUPCLOSURE                       R10 K20 [PROTO_0]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R9
       73 DUPCLOSURE                       R11 K21 [PROTO_1]
       74 DUPCLOSURE                       R12 K22 [PROTO_4]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R11
       84 DUPCLOSURE                       R13 K23 [PROTO_5]
       85 CAPTURE                          VAL R12
       86 DUPTABLE                         R14 K26 [{"readMessage", "readMessageWithTimestamp"}]
       87 SETTABLEKS                       R13 R14 K24 ["readMessage"]
       89 SETTABLEKS                       R12 R14 K25 ["readMessageWithTimestamp"]
       91 RETURN                           R14 1
