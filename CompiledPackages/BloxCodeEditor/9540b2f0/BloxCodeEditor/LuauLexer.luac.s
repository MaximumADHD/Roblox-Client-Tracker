PROTO_0:
        0 LOADK                            R2 K0 ["a"]
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADK                            R2 K1 ["z"]
        5 JUMPIFLE                         R0 R2 ; [+12]
        7 LOADK                            R2 K2 ["A"]
        8 JUMPIFNOTLE                      R2 R0 ; [+5]
       10 LOADB                            R1 1
       11 LOADK                            R2 K3 ["Z"]
       12 JUMPIFLE                         R0 R2 ; [+5]
       14 JUMPIFEQKS                       R0 K4 ["_"] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 LOADK                            R2 K0 ["0"]
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 LOADK                            R2 K1 ["9"]
        5 JUMPIFLE                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 ["a"]
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADK                            R2 K1 ["z"]
        5 JUMPIFLE                         R0 R2 ; [+12]
        7 LOADK                            R2 K2 ["A"]
        8 JUMPIFNOTLE                      R2 R0 ; [+5]
       10 LOADB                            R1 1
       11 LOADK                            R2 K3 ["Z"]
       12 JUMPIFLE                         R0 R2 ; [+5]
       14 JUMPIFEQKS                       R0 K4 ["_"] ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 JUMPIF                           R1 ; [+9]
       19 LOADB                            R1 0
       20 LOADK                            R2 K5 ["0"]
       21 JUMPIFNOTLE                      R2 R0 ; [+6]
       23 LOADK                            R2 K6 ["9"]
       24 JUMPIFLE                         R0 R2 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 RETURN                           R1 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 LOADB                            R2 0
        4 LOADK                            R3 K1 ["0"]
        5 JUMPIFNOTLE                      R3 R0 ; [+6]
        7 LOADK                            R3 K2 ["9"]
        8 JUMPIFLE                         R0 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 JUMPIF                           R2 ; [+9]
       13 LOADB                            R2 0
       14 LOADK                            R3 K3 ["a"]
       15 JUMPIFNOTLE                      R3 R1 ; [+6]
       17 LOADK                            R3 K4 ["f"]
       18 JUMPIFLE                         R1 R3 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLE                      R2 R3 ; [+792]
        6 MOVE                             R6 R2
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R0 K0 ["sub"]
       10 CALL                             R4 3 1
       11 JUMPIFEQKS                       R4 K1 [" "] ; [+7]
       13 JUMPIFEQKS                       R4 K2 ["\t"] ; [+5]
       15 JUMPIFEQKS                       R4 K3 ["\r"] ; [+3]
       17 JUMPIFNOTEQKS                    R4 K4 ["\n"] ; [+34]
       19 MOVE                             R5 R2
       20 JUMPIFNOTLE                      R2 R3 ; [+16]
       22 MOVE                             R8 R2
       23 MOVE                             R9 R2
       24 NAMECALL                         R6 R0 K0 ["sub"]
       26 CALL                             R6 3 1
       27 JUMPIFEQKS                       R6 K1 [" "] ; [+7]
       29 JUMPIFEQKS                       R6 K2 ["\t"] ; [+5]
       31 JUMPIFEQKS                       R6 K3 ["\r"] ; [+3]
       33 JUMPIFNOTEQKS                    R6 K4 ["\n"] ; [+3]
       35 ADDK                             R2 R2 K5 [1]
       36 JUMPBACK                         ; [-17]
       37 DUPTABLE                         R8 K9 [{["type"] = "whitespace", ["value"]}]
       38 MOVE                             R11 R5
       39 SUBK                             R12 R2 K5 [1]
       40 NAMECALL                         R9 R0 K0 ["sub"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K8 ["value"]
       45 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       47 MOVE                             R7 R1
       48 GETIMPORT                        R6 K12 [table.insert]
       50 CALL                             R6 2 0
       51 JUMP                             ; [+744]
       52 JUMPIFNOTEQKS                    R4 K13 ["-"] ; [+97]
       54 ADDK                             R5 R2 K5 [1]
       55 JUMPIFNOTLE                      R5 R3 ; [+94]
       57 ADDK                             R7 R2 K5 [1]
       58 ADDK                             R8 R2 K5 [1]
       59 NAMECALL                         R5 R0 K0 ["sub"]
       61 CALL                             R5 3 1
       62 JUMPIFNOTEQKS                    R5 K13 ["-"] ; [+87]
       64 ADDK                             R5 R2 K14 [3]
       65 JUMPIFNOTLE                      R5 R3 ; [+46]
       67 ADDK                             R7 R2 K15 [2]
       68 ADDK                             R8 R2 K14 [3]
       69 NAMECALL                         R5 R0 K0 ["sub"]
       71 CALL                             R5 3 1
       72 JUMPIFNOTEQKS                    R5 K16 ["[["] ; [+39]
       74 LOADK                            R7 K17 ["]]"]
       75 ADDK                             R8 R2 K18 [4]
       76 LOADB                            R9 1
       77 NAMECALL                         R5 R0 K19 ["find"]
       79 CALL                             R5 4 1
       80 JUMPIFNOT                        R5 ; [+16]
       81 DUPTABLE                         R8 K21 [{["type"] = "comment", ["value"]}]
       82 MOVE                             R11 R2
       83 ADDK                             R12 R5 K5 [1]
       84 NAMECALL                         R9 R0 K0 ["sub"]
       86 CALL                             R9 3 1
       87 SETTABLEKS                       R9 R8 K8 ["value"]
       89 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       91 MOVE                             R7 R1
       92 GETIMPORT                        R6 K12 [table.insert]
       94 CALL                             R6 2 0
       95 ADDK                             R2 R5 K15 [2]
       96 JUMP                             ; [+699]
       97 DUPTABLE                         R8 K21 [{["type"] = "comment", ["value"]}]
       98 MOVE                             R11 R2
       99 NAMECALL                         R9 R0 K0 ["sub"]
      101 CALL                             R9 2 1
      102 SETTABLEKS                       R9 R8 K8 ["value"]
      104 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      106 MOVE                             R7 R1
      107 GETIMPORT                        R6 K12 [table.insert]
      109 CALL                             R6 2 0
      110 ADDK                             R2 R3 K5 [1]
      111 JUMP                             ; [+684]
      112 LOADK                            R7 K4 ["\n"]
      113 ADDK                             R8 R2 K15 [2]
      114 LOADB                            R9 1
      115 NAMECALL                         R5 R0 K19 ["find"]
      117 CALL                             R5 4 1
      118 JUMPIFNOT                        R5 ; [+16]
      119 DUPTABLE                         R8 K21 [{["type"] = "comment", ["value"]}]
      120 MOVE                             R11 R2
      121 SUBK                             R12 R5 K5 [1]
      122 NAMECALL                         R9 R0 K0 ["sub"]
      124 CALL                             R9 3 1
      125 SETTABLEKS                       R9 R8 K8 ["value"]
      127 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      129 MOVE                             R7 R1
      130 GETIMPORT                        R6 K12 [table.insert]
      132 CALL                             R6 2 0
      133 MOVE                             R2 R5
      134 JUMP                             ; [+661]
      135 DUPTABLE                         R8 K21 [{["type"] = "comment", ["value"]}]
      136 MOVE                             R11 R2
      137 NAMECALL                         R9 R0 K0 ["sub"]
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K8 ["value"]
      142 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      144 MOVE                             R7 R1
      145 GETIMPORT                        R6 K12 [table.insert]
      147 CALL                             R6 2 0
      148 ADDK                             R2 R3 K5 [1]
      149 JUMP                             ; [+646]
      150 JUMPIFEQKS                       R4 K22 ["\""] ; [+3]
      152 JUMPIFNOTEQKS                    R4 K23 ["'"] ; [+35]
      154 MOVE                             R5 R2
      155 ADDK                             R2 R2 K5 [1]
      156 JUMPIFNOTLE                      R2 R3 ; [+16]
      158 MOVE                             R8 R2
      159 MOVE                             R9 R2
      160 NAMECALL                         R6 R0 K0 ["sub"]
      162 CALL                             R6 3 1
      163 JUMPIFNOTEQKS                    R6 K24 ["\\"] ; [+3]
      165 ADDK                             R2 R2 K15 [2]
      166 JUMP                             ; [+5]
      167 JUMPIFNOTEQ                      R6 R4 ; [+3]
      169 ADDK                             R2 R2 K5 [1]
      170 JUMP                             ; [+2]
      171 ADDK                             R2 R2 K5 [1]
      172 JUMPBACK                         ; [-17]
      173 MOVE                             R8 R5
      174 SUBK                             R9 R2 K5 [1]
      175 NAMECALL                         R6 R0 K0 ["sub"]
      177 CALL                             R6 3 1
      178 DUPTABLE                         R9 K26 [{["type"] = "string", ["value"]}]
      179 SETTABLEKS                       R6 R9 K8 ["value"]
      181 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      183 MOVE                             R8 R1
      184 GETIMPORT                        R7 K12 [table.insert]
      186 CALL                             R7 2 0
      187 JUMP                             ; [+608]
      188 JUMPIFNOTEQKS                    R4 K27 ["["] ; [+49]
      190 ADDK                             R5 R2 K5 [1]
      191 JUMPIFNOTLE                      R5 R3 ; [+46]
      193 ADDK                             R7 R2 K5 [1]
      194 ADDK                             R8 R2 K5 [1]
      195 NAMECALL                         R5 R0 K0 ["sub"]
      197 CALL                             R5 3 1
      198 JUMPIFNOTEQKS                    R5 K27 ["["] ; [+39]
      200 LOADK                            R7 K17 ["]]"]
      201 ADDK                             R8 R2 K15 [2]
      202 LOADB                            R9 1
      203 NAMECALL                         R5 R0 K19 ["find"]
      205 CALL                             R5 4 1
      206 JUMPIFNOT                        R5 ; [+16]
      207 DUPTABLE                         R8 K26 [{["type"] = "string", ["value"]}]
      208 MOVE                             R11 R2
      209 ADDK                             R12 R5 K5 [1]
      210 NAMECALL                         R9 R0 K0 ["sub"]
      212 CALL                             R9 3 1
      213 SETTABLEKS                       R9 R8 K8 ["value"]
      215 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      217 MOVE                             R7 R1
      218 GETIMPORT                        R6 K12 [table.insert]
      220 CALL                             R6 2 0
      221 ADDK                             R2 R5 K15 [2]
      222 JUMP                             ; [+573]
      223 DUPTABLE                         R8 K26 [{["type"] = "string", ["value"]}]
      224 MOVE                             R11 R2
      225 NAMECALL                         R9 R0 K0 ["sub"]
      227 CALL                             R9 2 1
      228 SETTABLEKS                       R9 R8 K8 ["value"]
      230 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      232 MOVE                             R7 R1
      233 GETIMPORT                        R6 K12 [table.insert]
      235 CALL                             R6 2 0
      236 ADDK                             R2 R3 K5 [1]
      237 JUMP                             ; [+558]
      238 JUMPIFNOTEQKS                    R4 K28 ["`"] ; [+35]
      240 MOVE                             R5 R2
      241 ADDK                             R2 R2 K5 [1]
      242 JUMPIFNOTLE                      R2 R3 ; [+16]
      244 MOVE                             R8 R2
      245 MOVE                             R9 R2
      246 NAMECALL                         R6 R0 K0 ["sub"]
      248 CALL                             R6 3 1
      249 JUMPIFNOTEQKS                    R6 K24 ["\\"] ; [+3]
      251 ADDK                             R2 R2 K15 [2]
      252 JUMP                             ; [+5]
      253 JUMPIFNOTEQKS                    R6 K28 ["`"] ; [+3]
      255 ADDK                             R2 R2 K5 [1]
      256 JUMP                             ; [+2]
      257 ADDK                             R2 R2 K5 [1]
      258 JUMPBACK                         ; [-17]
      259 DUPTABLE                         R8 K26 [{["type"] = "string", ["value"]}]
      260 MOVE                             R11 R5
      261 SUBK                             R12 R2 K5 [1]
      262 NAMECALL                         R9 R0 K0 ["sub"]
      264 CALL                             R9 3 1
      265 SETTABLEKS                       R9 R8 K8 ["value"]
      267 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      269 MOVE                             R7 R1
      270 GETIMPORT                        R6 K12 [table.insert]
      272 CALL                             R6 2 0
      273 JUMP                             ; [+522]
      274 LOADB                            R5 0
      275 LOADK                            R6 K29 ["0"]
      276 JUMPIFNOTLE                      R6 R4 ; [+6]
      278 LOADK                            R6 K30 ["9"]
      279 JUMPIFLE                         R4 R6 ; [+2]
      281 LOADB                            R5 0 +1
      282 LOADB                            R5 1
      283 JUMPIF                           R5 ; [+20]
      284 JUMPIFNOTEQKS                    R4 K31 ["."] ; [+241]
      286 ADDK                             R5 R2 K5 [1]
      287 JUMPIFNOTLE                      R5 R3 ; [+238]
      289 ADDK                             R8 R2 K5 [1]
      290 ADDK                             R9 R2 K5 [1]
      291 NAMECALL                         R6 R0 K0 ["sub"]
      293 CALL                             R6 3 1
      294 LOADB                            R5 0
      295 LOADK                            R7 K29 ["0"]
      296 JUMPIFNOTLE                      R7 R6 ; [+6]
      298 LOADK                            R7 K30 ["9"]
      299 JUMPIFLE                         R6 R7 ; [+2]
      301 LOADB                            R5 0 +1
      302 LOADB                            R5 1
      303 JUMPIFNOT                        R5 ; [+222]
      304 MOVE                             R5 R2
      305 MOVE                             R8 R2
      306 MOVE                             R9 R2
      307 NAMECALL                         R6 R0 K0 ["sub"]
      309 CALL                             R6 3 1
      310 JUMPIFNOTEQKS                    R6 K29 ["0"] ; [+118]
      312 ADDK                             R6 R2 K5 [1]
      313 JUMPIFNOTLE                      R6 R3 ; [+115]
      315 ADDK                             R8 R2 K5 [1]
      316 ADDK                             R9 R2 K5 [1]
      317 NAMECALL                         R6 R0 K0 ["sub"]
      319 CALL                             R6 3 1
      320 NAMECALL                         R6 R6 K32 ["lower"]
      322 CALL                             R6 1 1
      323 JUMPIFNOTEQKS                    R6 K33 ["x"] ; [+42]
      325 ADDK                             R2 R2 K15 [2]
      326 JUMPIFNOTLE                      R2 R3 ; [+135]
      328 MOVE                             R10 R2
      329 MOVE                             R11 R2
      330 NAMECALL                         R8 R0 K0 ["sub"]
      332 CALL                             R8 3 1
      333 NAMECALL                         R9 R8 K32 ["lower"]
      335 CALL                             R9 1 1
      336 LOADB                            R7 0
      337 LOADK                            R10 K29 ["0"]
      338 JUMPIFNOTLE                      R10 R8 ; [+6]
      340 LOADK                            R10 K30 ["9"]
      341 JUMPIFLE                         R8 R10 ; [+2]
      343 LOADB                            R7 0 +1
      344 LOADB                            R7 1
      345 JUMPIF                           R7 ; [+9]
      346 LOADB                            R7 0
      347 LOADK                            R10 K34 ["a"]
      348 JUMPIFNOTLE                      R10 R9 ; [+6]
      350 LOADK                            R10 K35 ["f"]
      351 JUMPIFLE                         R9 R10 ; [+2]
      353 LOADB                            R7 0 +1
      354 LOADB                            R7 1
      355 JUMPIF                           R7 ; [+7]
      356 MOVE                             R9 R2
      357 MOVE                             R10 R2
      358 NAMECALL                         R7 R0 K0 ["sub"]
      360 CALL                             R7 3 1
      361 JUMPIFNOTEQKS                    R7 K36 ["_"] ; [+100]
      363 ADDK                             R2 R2 K5 [1]
      364 JUMPBACK                         ; [-39]
      365 JUMP                             ; [+96]
      366 JUMPIFNOTEQKS                    R6 K37 ["b"] ; [+28]
      368 ADDK                             R2 R2 K15 [2]
      369 JUMPIFNOTLE                      R2 R3 ; [+92]
      371 MOVE                             R9 R2
      372 MOVE                             R10 R2
      373 NAMECALL                         R7 R0 K0 ["sub"]
      375 CALL                             R7 3 1
      376 JUMPIFEQKS                       R7 K29 ["0"] ; [+15]
      378 MOVE                             R9 R2
      379 MOVE                             R10 R2
      380 NAMECALL                         R7 R0 K0 ["sub"]
      382 CALL                             R7 3 1
      383 JUMPIFEQKS                       R7 K38 ["1"] ; [+8]
      385 MOVE                             R9 R2
      386 MOVE                             R10 R2
      387 NAMECALL                         R7 R0 K0 ["sub"]
      389 CALL                             R7 3 1
      390 JUMPIFNOTEQKS                    R7 K36 ["_"] ; [+71]
      392 ADDK                             R2 R2 K5 [1]
      393 JUMPBACK                         ; [-25]
      394 JUMP                             ; [+67]
      395 JUMPIFNOTLE                      R2 R3 ; [+66]
      397 MOVE                             R10 R2
      398 MOVE                             R11 R2
      399 NAMECALL                         R8 R0 K0 ["sub"]
      401 CALL                             R8 3 1
      402 LOADB                            R7 0
      403 LOADK                            R9 K29 ["0"]
      404 JUMPIFNOTLE                      R9 R8 ; [+6]
      406 LOADK                            R9 K30 ["9"]
      407 JUMPIFLE                         R8 R9 ; [+2]
      409 LOADB                            R7 0 +1
      410 LOADB                            R7 1
      411 JUMPIF                           R7 ; [+14]
      412 MOVE                             R9 R2
      413 MOVE                             R10 R2
      414 NAMECALL                         R7 R0 K0 ["sub"]
      416 CALL                             R7 3 1
      417 JUMPIFEQKS                       R7 K36 ["_"] ; [+8]
      419 MOVE                             R9 R2
      420 MOVE                             R10 R2
      421 NAMECALL                         R7 R0 K0 ["sub"]
      423 CALL                             R7 3 1
      424 JUMPIFNOTEQKS                    R7 K31 ["."] ; [+37]
      426 ADDK                             R2 R2 K5 [1]
      427 JUMPBACK                         ; [-33]
      428 JUMP                             ; [+33]
      429 JUMPIFNOTLE                      R2 R3 ; [+32]
      431 MOVE                             R9 R2
      432 MOVE                             R10 R2
      433 NAMECALL                         R7 R0 K0 ["sub"]
      435 CALL                             R7 3 1
      436 LOADB                            R6 0
      437 LOADK                            R8 K29 ["0"]
      438 JUMPIFNOTLE                      R8 R7 ; [+6]
      440 LOADK                            R8 K30 ["9"]
      441 JUMPIFLE                         R7 R8 ; [+2]
      443 LOADB                            R6 0 +1
      444 LOADB                            R6 1
      445 JUMPIF                           R6 ; [+14]
      446 MOVE                             R8 R2
      447 MOVE                             R9 R2
      448 NAMECALL                         R6 R0 K0 ["sub"]
      450 CALL                             R6 3 1
      451 JUMPIFEQKS                       R6 K36 ["_"] ; [+8]
      453 MOVE                             R8 R2
      454 MOVE                             R9 R2
      455 NAMECALL                         R6 R0 K0 ["sub"]
      457 CALL                             R6 3 1
      458 JUMPIFNOTEQKS                    R6 K31 ["."] ; [+3]
      460 ADDK                             R2 R2 K5 [1]
      461 JUMPBACK                         ; [-33]
      462 JUMPIFNOTLE                      R2 R3 ; [+48]
      464 MOVE                             R8 R2
      465 MOVE                             R9 R2
      466 NAMECALL                         R6 R0 K0 ["sub"]
      468 CALL                             R6 3 1
      469 NAMECALL                         R6 R6 K32 ["lower"]
      471 CALL                             R6 1 1
      472 JUMPIFNOTEQKS                    R6 K39 ["e"] ; [+38]
      474 ADDK                             R2 R2 K5 [1]
      475 JUMPIFNOTLE                      R2 R3 ; [+16]
      477 MOVE                             R8 R2
      478 MOVE                             R9 R2
      479 NAMECALL                         R6 R0 K0 ["sub"]
      481 CALL                             R6 3 1
      482 JUMPIFEQKS                       R6 K40 ["+"] ; [+8]
      484 MOVE                             R8 R2
      485 MOVE                             R9 R2
      486 NAMECALL                         R6 R0 K0 ["sub"]
      488 CALL                             R6 3 1
      489 JUMPIFNOTEQKS                    R6 K13 ["-"] ; [+2]
      491 ADDK                             R2 R2 K5 [1]
      492 JUMPIFNOTLE                      R2 R3 ; [+18]
      494 MOVE                             R9 R2
      495 MOVE                             R10 R2
      496 NAMECALL                         R7 R0 K0 ["sub"]
      498 CALL                             R7 3 1
      499 LOADB                            R6 0
      500 LOADK                            R8 K29 ["0"]
      501 JUMPIFNOTLE                      R8 R7 ; [+6]
      503 LOADK                            R8 K30 ["9"]
      504 JUMPIFLE                         R7 R8 ; [+2]
      506 LOADB                            R6 0 +1
      507 LOADB                            R6 1
      508 JUMPIFNOT                        R6 ; [+2]
      509 ADDK                             R2 R2 K5 [1]
      510 JUMPBACK                         ; [-19]
      511 DUPTABLE                         R8 K42 [{["type"] = "number", ["value"]}]
      512 MOVE                             R11 R5
      513 SUBK                             R12 R2 K5 [1]
      514 NAMECALL                         R9 R0 K0 ["sub"]
      516 CALL                             R9 3 1
      517 SETTABLEKS                       R9 R8 K8 ["value"]
      519 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      521 MOVE                             R7 R1
      522 GETIMPORT                        R6 K12 [table.insert]
      524 CALL                             R6 2 0
      525 JUMP                             ; [+270]
      526 LOADK                            R6 K34 ["a"]
      527 JUMPIFNOTLE                      R6 R4 ; [+5]
      529 LOADB                            R5 1
      530 LOADK                            R6 K43 ["z"]
      531 JUMPIFLE                         R4 R6 ; [+12]
      533 LOADK                            R6 K44 ["A"]
      534 JUMPIFNOTLE                      R6 R4 ; [+5]
      536 LOADB                            R5 1
      537 LOADK                            R6 K45 ["Z"]
      538 JUMPIFLE                         R4 R6 ; [+5]
      540 JUMPIFEQKS                       R4 K36 ["_"] ; [+2]
      542 LOADB                            R5 0 +1
      543 LOADB                            R5 1
      544 JUMPIFNOT                        R5 ; [+119]
      545 MOVE                             R5 R2
      546 JUMPIFNOTLE                      R2 R3 ; [+37]
      548 MOVE                             R9 R2
      549 MOVE                             R10 R2
      550 NAMECALL                         R7 R0 K0 ["sub"]
      552 CALL                             R7 3 1
      553 LOADK                            R8 K34 ["a"]
      554 JUMPIFNOTLE                      R8 R7 ; [+5]
      556 LOADB                            R6 1
      557 LOADK                            R8 K43 ["z"]
      558 JUMPIFLE                         R7 R8 ; [+12]
      560 LOADK                            R8 K44 ["A"]
      561 JUMPIFNOTLE                      R8 R7 ; [+5]
      563 LOADB                            R6 1
      564 LOADK                            R8 K45 ["Z"]
      565 JUMPIFLE                         R7 R8 ; [+5]
      567 JUMPIFEQKS                       R7 K36 ["_"] ; [+2]
      569 LOADB                            R6 0 +1
      570 LOADB                            R6 1
      571 JUMPIF                           R6 ; [+9]
      572 LOADB                            R6 0
      573 LOADK                            R8 K29 ["0"]
      574 JUMPIFNOTLE                      R8 R7 ; [+6]
      576 LOADK                            R8 K30 ["9"]
      577 JUMPIFLE                         R7 R8 ; [+2]
      579 LOADB                            R6 0 +1
      580 LOADB                            R6 1
      581 JUMPIFNOT                        R6 ; [+2]
      582 ADDK                             R2 R2 K5 [1]
      583 JUMPBACK                         ; [-38]
      584 MOVE                             R8 R5
      585 SUBK                             R9 R2 K5 [1]
      586 NAMECALL                         R6 R0 K0 ["sub"]
      588 CALL                             R6 3 1
      589 LOADNIL                          R7
      590 LENGTH                           R10 R1
      591 LOADN                            R8 1
      592 LOADN                            R9 -1
      593 FORNPREP                         R8
      594 GETTABLE                         R11 R1 R10
      595 GETTABLEKS                       R11 R11 K6 ["type"]
      597 JUMPIFEQKS                       R11 K7 ["whitespace"] ; [+5]
      599 GETTABLE                         R11 R1 R10
      600 GETTABLEKS                       R7 R11 K8 ["value"]
      602 JUMP                             ; [+1]
      603 FORNLOOP                         R8
      604 JUMPIFNOTEQKS                    R7 K31 ["."] ; [+11]
      606 DUPTABLE                         R10 K47 [{["type"] = "member", ["value"]}]
      607 SETTABLEKS                       R6 R10 K8 ["value"]
      609 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      611 MOVE                             R9 R1
      612 GETIMPORT                        R8 K12 [table.insert]
      614 CALL                             R8 2 0
      615 JUMP                             ; [+180]
      616 JUMPIFNOTEQKS                    R7 K48 [":"] ; [+11]
      618 DUPTABLE                         R10 K50 [{["type"] = "method", ["value"]}]
      619 SETTABLEKS                       R6 R10 K8 ["value"]
      621 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      623 MOVE                             R9 R1
      624 GETIMPORT                        R8 K12 [table.insert]
      626 CALL                             R8 2 0
      627 JUMP                             ; [+168]
      628 GETUPVAL                         R9 0
      629 GETTABLE                         R8 R9 R6
      630 JUMPIFNOT                        R8 ; [+10]
      631 DUPTABLE                         R10 K52 [{["type"] = "keyword", ["value"]}]
      632 SETTABLEKS                       R6 R10 K8 ["value"]
      634 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      636 MOVE                             R9 R1
      637 GETIMPORT                        R8 K12 [table.insert]
      639 CALL                             R8 2 0
      640 JUMP                             ; [+155]
      641 GETUPVAL                         R9 1
      642 GETTABLE                         R8 R9 R6
      643 JUMPIFNOT                        R8 ; [+10]
      644 DUPTABLE                         R10 K54 [{["type"] = "builtin", ["value"]}]
      645 SETTABLEKS                       R6 R10 K8 ["value"]
      647 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      649 MOVE                             R9 R1
      650 GETIMPORT                        R8 K12 [table.insert]
      652 CALL                             R8 2 0
      653 JUMP                             ; [+142]
      654 DUPTABLE                         R10 K56 [{["type"] = "identifier", ["value"]}]
      655 SETTABLEKS                       R6 R10 K8 ["value"]
      657 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      659 MOVE                             R9 R1
      660 GETIMPORT                        R8 K12 [table.insert]
      662 CALL                             R8 2 0
      663 JUMP                             ; [+132]
      664 JUMPIFNOTEQKS                    R4 K31 ["."] ; [+66]
      666 ADDK                             R5 R2 K5 [1]
      667 JUMPIFLT                         R3 R5 ; [+16]
      669 ADDK                             R8 R2 K5 [1]
      670 ADDK                             R9 R2 K5 [1]
      671 NAMECALL                         R6 R0 K0 ["sub"]
      673 CALL                             R6 3 1
      674 LOADB                            R5 0
      675 LOADK                            R7 K29 ["0"]
      676 JUMPIFNOTLE                      R7 R6 ; [+6]
      678 LOADK                            R7 K30 ["9"]
      679 JUMPIFLE                         R6 R7 ; [+2]
      681 LOADB                            R5 0 +1
      682 LOADB                            R5 1
      683 JUMPIF                           R5 ; [+47]
      684 ADDK                             R5 R2 K15 [2]
      685 JUMPIFNOTLE                      R5 R3 ; [+17]
      687 ADDK                             R7 R2 K5 [1]
      688 ADDK                             R8 R2 K15 [2]
      689 NAMECALL                         R5 R0 K0 ["sub"]
      691 CALL                             R5 3 1
      692 JUMPIFNOTEQKS                    R5 K57 [".."] ; [+10]
      694 DUPTABLE                         R7 K60 [{["type"] = "operator", ["value"] = "..."}]
      695 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      697 MOVE                             R6 R1
      698 GETIMPORT                        R5 K12 [table.insert]
      700 CALL                             R5 2 0
      701 ADDK                             R2 R2 K14 [3]
      702 JUMP                             ; [+93]
      703 ADDK                             R5 R2 K5 [1]
      704 JUMPIFNOTLE                      R5 R3 ; [+17]
      706 ADDK                             R7 R2 K5 [1]
      707 ADDK                             R8 R2 K5 [1]
      708 NAMECALL                         R5 R0 K0 ["sub"]
      710 CALL                             R5 3 1
      711 JUMPIFNOTEQKS                    R5 K31 ["."] ; [+10]
      713 DUPTABLE                         R7 K61 [{["type"] = "operator", ["value"] = ".."}]
      714 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      716 MOVE                             R6 R1
      717 GETIMPORT                        R5 K12 [table.insert]
      719 CALL                             R5 2 0
      720 ADDK                             R2 R2 K15 [2]
      721 JUMP                             ; [+74]
      722 DUPTABLE                         R7 K62 [{["type"] = "operator", ["value"] = "."}]
      723 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      725 MOVE                             R6 R1
      726 GETIMPORT                        R5 K12 [table.insert]
      728 CALL                             R5 2 0
      729 ADDK                             R2 R2 K5 [1]
      730 JUMP                             ; [+65]
      731 JUMPIFEQKS                       R4 K63 ["="] ; [+7]
      733 JUMPIFEQKS                       R4 K64 ["~"] ; [+5]
      735 JUMPIFEQKS                       R4 K65 ["<"] ; [+3]
      737 JUMPIFNOTEQKS                    R4 K66 [">"] ; [+27]
      739 ADDK                             R5 R2 K5 [1]
      740 JUMPIFNOTLE                      R5 R3 ; [+24]
      742 ADDK                             R7 R2 K5 [1]
      743 ADDK                             R8 R2 K5 [1]
      744 NAMECALL                         R5 R0 K0 ["sub"]
      746 CALL                             R5 3 1
      747 JUMPIFNOTEQKS                    R5 K63 ["="] ; [+17]
      749 DUPTABLE                         R7 K67 [{["type"] = "operator", ["value"]}]
      750 MOVE                             R10 R2
      751 ADDK                             R11 R2 K5 [1]
      752 NAMECALL                         R8 R0 K0 ["sub"]
      754 CALL                             R8 3 1
      755 SETTABLEKS                       R8 R7 K8 ["value"]
      757 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      759 MOVE                             R6 R1
      760 GETIMPORT                        R5 K12 [table.insert]
      762 CALL                             R5 2 0
      763 ADDK                             R2 R2 K15 [2]
      764 JUMP                             ; [+31]
      765 JUMPIFNOTEQKS                    R4 K13 ["-"] ; [+20]
      767 ADDK                             R5 R2 K5 [1]
      768 JUMPIFNOTLE                      R5 R3 ; [+17]
      770 ADDK                             R7 R2 K5 [1]
      771 ADDK                             R8 R2 K5 [1]
      772 NAMECALL                         R5 R0 K0 ["sub"]
      774 CALL                             R5 3 1
      775 JUMPIFNOTEQKS                    R5 K66 [">"] ; [+10]
      777 DUPTABLE                         R7 K69 [{["type"] = "operator", ["value"] = "->"}]
      778 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      780 MOVE                             R6 R1
      781 GETIMPORT                        R5 K12 [table.insert]
      783 CALL                             R5 2 0
      784 ADDK                             R2 R2 K15 [2]
      785 JUMP                             ; [+10]
      786 DUPTABLE                         R7 K67 [{["type"] = "operator", ["value"]}]
      787 SETTABLEKS                       R4 R7 K8 ["value"]
      789 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      791 MOVE                             R6 R1
      792 GETIMPORT                        R5 K12 [table.insert]
      794 CALL                             R5 2 0
      795 ADDK                             R2 R2 K5 [1]
      796 JUMPBACK                         ; [-793]
      797 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 22
        3 LOADK                            R1 K0 ["and"]
        4 LOADK                            R2 K1 ["break"]
        5 LOADK                            R3 K2 ["continue"]
        6 LOADK                            R4 K3 ["do"]
        7 LOADK                            R5 K4 ["else"]
        8 LOADK                            R6 K5 ["elseif"]
        9 LOADK                            R7 K6 ["end"]
       10 LOADK                            R8 K7 ["for"]
       11 LOADK                            R9 K8 ["function"]
       12 LOADK                            R10 K9 ["if"]
       13 LOADK                            R11 K10 ["in"]
       14 LOADK                            R12 K11 ["local"]
       15 LOADK                            R13 K12 ["not"]
       16 LOADK                            R14 K13 ["or"]
       17 LOADK                            R15 K14 ["repeat"]
       18 LOADK                            R16 K15 ["return"]
       19 SETLIST                          R0 R1 16 [1]
       21 LOADK                            R1 K16 ["then"]
       22 LOADK                            R2 K17 ["until"]
       23 LOADK                            R3 K18 ["while"]
       24 LOADK                            R4 K19 ["type"]
       25 LOADK                            R5 K20 ["export"]
       26 LOADK                            R6 K21 ["typeof"]
       27 SETLIST                          R0 R1 6 [17]
       29 NEWTABLE                         R1 0 4
       31 LOADK                            R2 K22 ["true"]
       32 LOADK                            R3 K23 ["false"]
       33 LOADK                            R4 K24 ["nil"]
       34 LOADK                            R5 K25 ["self"]
       35 SETLIST                          R1 R2 4 [1]
       37 NEWTABLE                         R2 0 0
       39 MOVE                             R3 R0
       40 LOADNIL                          R4
       41 LOADNIL                          R5
       42 FORGPREP                         R3
       43 LOADB                            R8 1
       44 SETTABLE                         R8 R2 R7
       45 FORGLOOP                         R3 2 ; [-3]
       47 NEWTABLE                         R3 0 0
       49 MOVE                             R4 R1
       50 LOADNIL                          R5
       51 LOADNIL                          R6
       52 FORGPREP                         R4
       53 LOADB                            R9 1
       54 SETTABLE                         R9 R3 R8
       55 FORGLOOP                         R4 2 ; [-3]
       57 DUPCLOSURE                       R4 K26 [PROTO_0]
       58 DUPCLOSURE                       R5 K27 [PROTO_1]
       59 DUPCLOSURE                       R6 K28 [PROTO_2]
       60 DUPCLOSURE                       R7 K29 [PROTO_3]
       61 DUPCLOSURE                       R8 K30 [PROTO_4]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 DUPTABLE                         R9 K32 [{"tokenize"}]
       65 SETTABLEKS                       R8 R9 K31 ["tokenize"]
       67 RETURN                           R9 1
