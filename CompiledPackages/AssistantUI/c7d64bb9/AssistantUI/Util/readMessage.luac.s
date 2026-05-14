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
       24 JUMPIFEQKS                       R9 K5 [""] ; [+320]
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
       62 JUMP                             ; [+198]
       63 GETTABLEKS                       R9 R8 K2 ["type"]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K3 ["Type"]
       68 JUMPIFNOTEQ                      R9 R10 ; [+50]
       70 GETTABLEKS                       R9 R8 K18 ["thinking"]
       72 JUMPIFNOTEQKS                    R9 K5 [""] ; [+5]
       74 GETTABLEKS                       R9 R8 K19 ["signature"]
       76 JUMPIFEQKS                       R9 K5 [""] ; [+268]
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
      118 JUMP                             ; [+142]
      119 GETUPVAL                         R9 2
      120 CALL                             R9 0 1
      121 JUMPIFNOT                        R9 ; [+139]
      122 GETTABLEKS                       R9 R0 K21 ["role"]
      124 GETUPVAL                         R10 3
      125 GETTABLEKS                       R10 R10 K22 ["ROLE"]
      127 GETTABLEKS                       R10 R10 K23 ["User"]
      129 JUMPIFNOTEQ                      R9 R10 ; [+131]
      131 GETTABLEKS                       R9 R8 K2 ["type"]
      133 GETUPVAL                         R10 4
      134 GETTABLEKS                       R10 R10 K3 ["Type"]
      136 JUMPIFNOTEQ                      R9 R10 ; [+124]
      138 GETTABLEKS                       R9 R8 K24 ["imageContents"]
      140 MOVE                             R10 R9
      141 LOADNIL                          R11
      142 LOADNIL                          R12
      143 FORGPREP                         R10
      144 GETUPVAL                         R15 5
      145 GETTABLEKS                       R15 R15 K25 ["storeImage"]
      147 MOVE                             R16 R14
      148 CALL                             R15 1 1
      149 JUMPIFNOT                        R3 ; [+75]
      150 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      151 DUPTABLE                         R19 K28 [{"type", "data", "mimeType"}]
      152 LOADK                            R20 K29 ["image"]
      153 SETTABLEKS                       R20 R19 K2 ["type"]
      155 GETTABLEKS                       R20 R14 K26 ["data"]
      157 SETTABLEKS                       R20 R19 K26 ["data"]
      159 GETTABLEKS                       R20 R14 K27 ["mimeType"]
      161 SETTABLEKS                       R20 R19 K27 ["mimeType"]
      163 SETTABLEKS                       R19 R18 K7 ["content"]
      165 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      167 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      169 LOADN                            R19 0
      170 SETTABLEKS                       R19 R18 K9 ["priority"]
      172 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      174 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      176 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      178 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      180 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      182 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      184 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      186 MOVE                             R17 R2
      187 GETIMPORT                        R16 K17 [table.insert]
      189 CALL                             R16 2 0
      190 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      191 DUPTABLE                         R19 K6 [{"type", "text"}]
      192 LOADK                            R20 K4 ["text"]
      193 SETTABLEKS                       R20 R19 K2 ["type"]
      195 SETTABLEKS                       R15 R19 K4 ["text"]
      197 SETTABLEKS                       R19 R18 K7 ["content"]
      199 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      201 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      203 LOADN                            R19 1
      204 SETTABLEKS                       R19 R18 K9 ["priority"]
      206 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      208 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      210 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      212 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      214 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      216 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      218 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      220 MOVE                             R17 R2
      221 GETIMPORT                        R16 K17 [table.insert]
      223 CALL                             R16 2 0
      224 JUMP                             ; [+34]
      225 DUPTABLE                         R18 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      226 DUPTABLE                         R19 K6 [{"type", "text"}]
      227 LOADK                            R20 K4 ["text"]
      228 SETTABLEKS                       R20 R19 K2 ["type"]
      230 SETTABLEKS                       R15 R19 K4 ["text"]
      232 SETTABLEKS                       R19 R18 K7 ["content"]
      234 GETTABLEKS                       R19 R8 K14 ["LayoutOrder"]
      236 SETTABLEKS                       R19 R18 K8 ["layoutOrder"]
      238 LOADN                            R19 0
      239 SETTABLEKS                       R19 R18 K9 ["priority"]
      241 GETTABLEKS                       R19 R8 K10 ["createdAt"]
      243 SETTABLEKS                       R19 R18 K10 ["createdAt"]
      245 GETTABLEKS                       R19 R8 K11 ["updatedAt"]
      247 SETTABLEKS                       R19 R18 K11 ["updatedAt"]
      249 GETTABLEKS                       R19 R8 K12 ["lastServerStreamId"]
      251 SETTABLEKS                       R19 R18 K12 ["lastServerStreamId"]
      253 FASTCALL2                        TABLE_INSERT R2 R18 ; [+4]
      255 MOVE                             R17 R2
      256 GETIMPORT                        R16 K17 [table.insert]
      258 CALL                             R16 2 0
      259 FORGLOOP                         R10 2 ; [-116]
      261 GETTABLEKS                       R9 R8 K30 ["toolUse"]
      263 JUMPIFNOT                        R9 ; [+30]
      264 DUPTABLE                         R11 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      265 GETTABLEKS                       R12 R8 K30 ["toolUse"]
      267 SETTABLEKS                       R12 R11 K7 ["content"]
      269 GETTABLEKS                       R12 R8 K14 ["LayoutOrder"]
      271 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      273 LOADN                            R12 3
      274 SETTABLEKS                       R12 R11 K9 ["priority"]
      276 GETTABLEKS                       R12 R8 K10 ["createdAt"]
      278 SETTABLEKS                       R12 R11 K10 ["createdAt"]
      280 GETTABLEKS                       R12 R8 K11 ["updatedAt"]
      282 SETTABLEKS                       R12 R11 K11 ["updatedAt"]
      284 GETTABLEKS                       R12 R8 K12 ["lastServerStreamId"]
      286 SETTABLEKS                       R12 R11 K12 ["lastServerStreamId"]
      288 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      290 MOVE                             R10 R2
      291 GETIMPORT                        R9 K17 [table.insert]
      293 CALL                             R9 2 0
      294 GETTABLEKS                       R9 R8 K31 ["toolResult"]
      296 JUMPIFNOT                        R9 ; [+48]
      297 DUPTABLE                         R11 K13 [{"content", "layoutOrder", "priority", "createdAt", "updatedAt", "lastServerStreamId"}]
      298 GETTABLEKS                       R13 R8 K31 ["toolResult"]
      300 GETUPVAL                         R14 6
      301 CALL                             R14 0 1
      302 JUMPIFNOT                        R14 ; [+14]
      303 GETUPVAL                         R14 7
      304 GETTABLEKS                       R14 R14 K32 ["join"]
      306 MOVE                             R15 R13
      307 DUPTABLE                         R16 K33 [{"content"}]
      308 GETUPVAL                         R17 8
      309 GETTABLEKS                       R18 R13 K7 ["content"]
      311 CALL                             R17 1 1
      312 SETTABLEKS                       R17 R16 K7 ["content"]
      314 CALL                             R14 2 1
      315 MOVE                             R12 R14
      316 JUMP                             ; [+1]
      317 MOVE                             R12 R13
      318 SETTABLEKS                       R12 R11 K7 ["content"]
      320 GETTABLEKS                       R12 R8 K14 ["LayoutOrder"]
      322 SETTABLEKS                       R12 R11 K8 ["layoutOrder"]
      324 LOADN                            R12 4
      325 SETTABLEKS                       R12 R11 K9 ["priority"]
      327 GETTABLEKS                       R12 R8 K10 ["createdAt"]
      329 SETTABLEKS                       R12 R11 K10 ["createdAt"]
      331 GETTABLEKS                       R12 R8 K11 ["updatedAt"]
      333 SETTABLEKS                       R12 R11 K11 ["updatedAt"]
      335 GETTABLEKS                       R12 R8 K12 ["lastServerStreamId"]
      337 SETTABLEKS                       R12 R11 K12 ["lastServerStreamId"]
      339 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      341 MOVE                             R10 R2
      342 GETIMPORT                        R9 K17 [table.insert]
      344 CALL                             R9 2 0
      345 FORGLOOP                         R4 2 ; [-331]
      347 GETIMPORT                        R4 K35 [table.sort]
      349 MOVE                             R5 R2
      350 GETUPVAL                         R6 9
      351 CALL                             R4 2 0
      352 NEWTABLE                         R4 0 0
      354 DUPTABLE                         R5 K37 [{"message", "createdAt", "updatedAt", "lastServerStreamId"}]
      355 DUPTABLE                         R6 K38 [{"content", "role"}]
      356 NEWTABLE                         R7 0 0
      358 SETTABLEKS                       R7 R6 K7 ["content"]
      360 GETTABLEKS                       R7 R0 K21 ["role"]
      362 SETTABLEKS                       R7 R6 K21 ["role"]
      364 SETTABLEKS                       R6 R5 K36 ["message"]
      366 LOADN                            R6 0
      367 SETTABLEKS                       R6 R5 K10 ["createdAt"]
      369 LOADN                            R6 0
      370 SETTABLEKS                       R6 R5 K11 ["updatedAt"]
      372 LOADK                            R6 K5 [""]
      373 SETTABLEKS                       R6 R5 K12 ["lastServerStreamId"]
      375 NEWCLOSURE                       R6 P0
      376 CAPTURE                          REF R5
      377 CAPTURE                          VAL R4
      378 NEWCLOSURE                       R7 P1
      379 CAPTURE                          REF R5
      380 CAPTURE                          VAL R4
      381 MOVE                             R8 R2
      382 LOADNIL                          R9
      383 LOADNIL                          R10
      384 FORGPREP                         R8
      385 GETTABLEKS                       R13 R12 K7 ["content"]
      387 GETTABLEKS                       R14 R13 K2 ["type"]
      389 JUMPIFEQKS                       R14 K4 ["text"] ; [+5]
      391 GETTABLEKS                       R14 R13 K2 ["type"]
      393 JUMPIFNOTEQKS                    R14 K29 ["image"] ; [+7]
      395 MOVE                             R14 R7
      396 GETTABLEKS                       R15 R0 K21 ["role"]
      398 MOVE                             R16 R12
      399 CALL                             R14 2 0
      400 JUMP                             ; [+32]
      401 GETTABLEKS                       R14 R13 K2 ["type"]
      403 JUMPIFEQKS                       R14 K18 ["thinking"] ; [+9]
      405 GETTABLEKS                       R14 R13 K2 ["type"]
      407 JUMPIFEQKS                       R14 K39 ["tool_use"] ; [+5]
      409 GETTABLEKS                       R14 R13 K2 ["type"]
      411 JUMPIFNOTEQKS                    R14 K40 ["input_requested"] ; [+6]
      413 MOVE                             R14 R7
      414 LOADK                            R15 K41 ["assistant"]
      415 MOVE                             R16 R12
      416 CALL                             R14 2 0
      417 JUMP                             ; [+15]
      418 GETTABLEKS                       R14 R13 K2 ["type"]
      420 JUMPIFNOTEQKS                    R14 K42 ["tool_result"] ; [+6]
      422 MOVE                             R14 R7
      423 LOADK                            R15 K43 ["user"]
      424 MOVE                             R16 R12
      425 CALL                             R14 2 0
      426 JUMP                             ; [+6]
      427 GETUPVAL                         R14 3
      428 GETTABLEKS                       R14 R14 K44 ["assertNever"]
      430 GETTABLEKS                       R15 R13 K2 ["type"]
      432 CALL                             R14 1 0
      433 FORGLOOP                         R8 2 ; [-49]
      435 GETTABLEKS                       R9 R5 K36 ["message"]
      437 GETTABLEKS                       R9 R9 K7 ["content"]
      439 LENGTH                           R8 R9
      440 LOADN                            R9 0
      441 JUMPIFNOTLT                      R9 R8 ; [+8]
      443 FASTCALL2                        TABLE_INSERT R4 R5 ; [+5]
      445 MOVE                             R9 R4
      446 MOVE                             R10 R5
      447 GETIMPORT                        R8 K17 [table.insert]
      449 CALL                             R8 2 0
      450 CLOSEUPVALS                      R5
      451 RETURN                           R4 1

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
       64 GETTABLEKS                       R9 R9 K18 ["FFlagEnableAssistantInputImageAttachment"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K17 ["Flags"]
       71 GETTABLEKS                       R10 R10 K19 ["FFlagMCPContentNormalization"]
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
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R12
       92 DUPCLOSURE                       R14 K24 [PROTO_5]
       93 CAPTURE                          VAL R13
       94 DUPTABLE                         R15 K27 [{"readMessage", "readMessageWithTimestamp"}]
       95 SETTABLEKS                       R14 R15 K25 ["readMessage"]
       97 SETTABLEKS                       R13 R15 K26 ["readMessageWithTimestamp"]
       99 RETURN                           R15 1
