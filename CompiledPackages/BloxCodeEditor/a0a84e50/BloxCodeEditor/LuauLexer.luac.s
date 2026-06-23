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
        4 JUMPIFNOTLE                      R2 R3 ; [+867]
        6 MOVE                             R6 R2
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R0 K0 ["sub"]
       10 CALL                             R4 3 1
       11 JUMPIFEQKS                       R4 K1 [" "] ; [+7]
       13 JUMPIFEQKS                       R4 K2 ["\t"] ; [+5]
       15 JUMPIFEQKS                       R4 K3 ["\r"] ; [+3]
       17 JUMPIFNOTEQKS                    R4 K4 ["\n"] ; [+37]
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
       37 DUPTABLE                         R8 K8 [{"type", "value"}]
       38 LOADK                            R9 K9 ["whitespace"]
       39 SETTABLEKS                       R9 R8 K6 ["type"]
       41 MOVE                             R11 R5
       42 SUBK                             R12 R2 K5 [1]
       43 NAMECALL                         R9 R0 K0 ["sub"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K7 ["value"]
       48 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       50 MOVE                             R7 R1
       51 GETIMPORT                        R6 K12 [table.insert]
       53 CALL                             R6 2 0
       54 JUMP                             ; [+816]
       55 JUMPIFNOTEQKS                    R4 K13 ["-"] ; [+109]
       57 ADDK                             R5 R2 K5 [1]
       58 JUMPIFNOTLE                      R5 R3 ; [+106]
       60 ADDK                             R7 R2 K5 [1]
       61 ADDK                             R8 R2 K5 [1]
       62 NAMECALL                         R5 R0 K0 ["sub"]
       64 CALL                             R5 3 1
       65 JUMPIFNOTEQKS                    R5 K13 ["-"] ; [+99]
       67 ADDK                             R5 R2 K14 [3]
       68 JUMPIFNOTLE                      R5 R3 ; [+52]
       70 ADDK                             R7 R2 K15 [2]
       71 ADDK                             R8 R2 K14 [3]
       72 NAMECALL                         R5 R0 K0 ["sub"]
       74 CALL                             R5 3 1
       75 JUMPIFNOTEQKS                    R5 K16 ["[["] ; [+45]
       77 LOADK                            R7 K17 ["]]"]
       78 ADDK                             R8 R2 K18 [4]
       79 LOADB                            R9 1
       80 NAMECALL                         R5 R0 K19 ["find"]
       82 CALL                             R5 4 1
       83 JUMPIFNOT                        R5 ; [+19]
       84 DUPTABLE                         R8 K8 [{"type", "value"}]
       85 LOADK                            R9 K20 ["comment"]
       86 SETTABLEKS                       R9 R8 K6 ["type"]
       88 MOVE                             R11 R2
       89 ADDK                             R12 R5 K5 [1]
       90 NAMECALL                         R9 R0 K0 ["sub"]
       92 CALL                             R9 3 1
       93 SETTABLEKS                       R9 R8 K7 ["value"]
       95 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       97 MOVE                             R7 R1
       98 GETIMPORT                        R6 K12 [table.insert]
      100 CALL                             R6 2 0
      101 ADDK                             R2 R5 K15 [2]
      102 JUMP                             ; [+768]
      103 DUPTABLE                         R8 K8 [{"type", "value"}]
      104 LOADK                            R9 K20 ["comment"]
      105 SETTABLEKS                       R9 R8 K6 ["type"]
      107 MOVE                             R11 R2
      108 NAMECALL                         R9 R0 K0 ["sub"]
      110 CALL                             R9 2 1
      111 SETTABLEKS                       R9 R8 K7 ["value"]
      113 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      115 MOVE                             R7 R1
      116 GETIMPORT                        R6 K12 [table.insert]
      118 CALL                             R6 2 0
      119 ADDK                             R2 R3 K5 [1]
      120 JUMP                             ; [+750]
      121 LOADK                            R7 K4 ["\n"]
      122 ADDK                             R8 R2 K15 [2]
      123 LOADB                            R9 1
      124 NAMECALL                         R5 R0 K19 ["find"]
      126 CALL                             R5 4 1
      127 JUMPIFNOT                        R5 ; [+19]
      128 DUPTABLE                         R8 K8 [{"type", "value"}]
      129 LOADK                            R9 K20 ["comment"]
      130 SETTABLEKS                       R9 R8 K6 ["type"]
      132 MOVE                             R11 R2
      133 SUBK                             R12 R5 K5 [1]
      134 NAMECALL                         R9 R0 K0 ["sub"]
      136 CALL                             R9 3 1
      137 SETTABLEKS                       R9 R8 K7 ["value"]
      139 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      141 MOVE                             R7 R1
      142 GETIMPORT                        R6 K12 [table.insert]
      144 CALL                             R6 2 0
      145 MOVE                             R2 R5
      146 JUMP                             ; [+724]
      147 DUPTABLE                         R8 K8 [{"type", "value"}]
      148 LOADK                            R9 K20 ["comment"]
      149 SETTABLEKS                       R9 R8 K6 ["type"]
      151 MOVE                             R11 R2
      152 NAMECALL                         R9 R0 K0 ["sub"]
      154 CALL                             R9 2 1
      155 SETTABLEKS                       R9 R8 K7 ["value"]
      157 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      159 MOVE                             R7 R1
      160 GETIMPORT                        R6 K12 [table.insert]
      162 CALL                             R6 2 0
      163 ADDK                             R2 R3 K5 [1]
      164 JUMP                             ; [+706]
      165 JUMPIFEQKS                       R4 K21 ["\""] ; [+3]
      167 JUMPIFNOTEQKS                    R4 K22 ["'"] ; [+38]
      169 MOVE                             R5 R2
      170 ADDK                             R2 R2 K5 [1]
      171 JUMPIFNOTLE                      R2 R3 ; [+16]
      173 MOVE                             R8 R2
      174 MOVE                             R9 R2
      175 NAMECALL                         R6 R0 K0 ["sub"]
      177 CALL                             R6 3 1
      178 JUMPIFNOTEQKS                    R6 K23 ["\\"] ; [+3]
      180 ADDK                             R2 R2 K15 [2]
      181 JUMP                             ; [+5]
      182 JUMPIFNOTEQ                      R6 R4 ; [+3]
      184 ADDK                             R2 R2 K5 [1]
      185 JUMP                             ; [+2]
      186 ADDK                             R2 R2 K5 [1]
      187 JUMPBACK                         ; [-17]
      188 MOVE                             R8 R5
      189 SUBK                             R9 R2 K5 [1]
      190 NAMECALL                         R6 R0 K0 ["sub"]
      192 CALL                             R6 3 1
      193 DUPTABLE                         R9 K8 [{"type", "value"}]
      194 LOADK                            R10 K24 ["string"]
      195 SETTABLEKS                       R10 R9 K6 ["type"]
      197 SETTABLEKS                       R6 R9 K7 ["value"]
      199 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      201 MOVE                             R8 R1
      202 GETIMPORT                        R7 K12 [table.insert]
      204 CALL                             R7 2 0
      205 JUMP                             ; [+665]
      206 JUMPIFNOTEQKS                    R4 K25 ["["] ; [+55]
      208 ADDK                             R5 R2 K5 [1]
      209 JUMPIFNOTLE                      R5 R3 ; [+52]
      211 ADDK                             R7 R2 K5 [1]
      212 ADDK                             R8 R2 K5 [1]
      213 NAMECALL                         R5 R0 K0 ["sub"]
      215 CALL                             R5 3 1
      216 JUMPIFNOTEQKS                    R5 K25 ["["] ; [+45]
      218 LOADK                            R7 K17 ["]]"]
      219 ADDK                             R8 R2 K15 [2]
      220 LOADB                            R9 1
      221 NAMECALL                         R5 R0 K19 ["find"]
      223 CALL                             R5 4 1
      224 JUMPIFNOT                        R5 ; [+19]
      225 DUPTABLE                         R8 K8 [{"type", "value"}]
      226 LOADK                            R9 K24 ["string"]
      227 SETTABLEKS                       R9 R8 K6 ["type"]
      229 MOVE                             R11 R2
      230 ADDK                             R12 R5 K5 [1]
      231 NAMECALL                         R9 R0 K0 ["sub"]
      233 CALL                             R9 3 1
      234 SETTABLEKS                       R9 R8 K7 ["value"]
      236 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      238 MOVE                             R7 R1
      239 GETIMPORT                        R6 K12 [table.insert]
      241 CALL                             R6 2 0
      242 ADDK                             R2 R5 K15 [2]
      243 JUMP                             ; [+627]
      244 DUPTABLE                         R8 K8 [{"type", "value"}]
      245 LOADK                            R9 K24 ["string"]
      246 SETTABLEKS                       R9 R8 K6 ["type"]
      248 MOVE                             R11 R2
      249 NAMECALL                         R9 R0 K0 ["sub"]
      251 CALL                             R9 2 1
      252 SETTABLEKS                       R9 R8 K7 ["value"]
      254 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      256 MOVE                             R7 R1
      257 GETIMPORT                        R6 K12 [table.insert]
      259 CALL                             R6 2 0
      260 ADDK                             R2 R3 K5 [1]
      261 JUMP                             ; [+609]
      262 JUMPIFNOTEQKS                    R4 K26 ["`"] ; [+38]
      264 MOVE                             R5 R2
      265 ADDK                             R2 R2 K5 [1]
      266 JUMPIFNOTLE                      R2 R3 ; [+16]
      268 MOVE                             R8 R2
      269 MOVE                             R9 R2
      270 NAMECALL                         R6 R0 K0 ["sub"]
      272 CALL                             R6 3 1
      273 JUMPIFNOTEQKS                    R6 K23 ["\\"] ; [+3]
      275 ADDK                             R2 R2 K15 [2]
      276 JUMP                             ; [+5]
      277 JUMPIFNOTEQKS                    R6 K26 ["`"] ; [+3]
      279 ADDK                             R2 R2 K5 [1]
      280 JUMP                             ; [+2]
      281 ADDK                             R2 R2 K5 [1]
      282 JUMPBACK                         ; [-17]
      283 DUPTABLE                         R8 K8 [{"type", "value"}]
      284 LOADK                            R9 K24 ["string"]
      285 SETTABLEKS                       R9 R8 K6 ["type"]
      287 MOVE                             R11 R5
      288 SUBK                             R12 R2 K5 [1]
      289 NAMECALL                         R9 R0 K0 ["sub"]
      291 CALL                             R9 3 1
      292 SETTABLEKS                       R9 R8 K7 ["value"]
      294 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      296 MOVE                             R7 R1
      297 GETIMPORT                        R6 K12 [table.insert]
      299 CALL                             R6 2 0
      300 JUMP                             ; [+570]
      301 LOADB                            R5 0
      302 LOADK                            R6 K27 ["0"]
      303 JUMPIFNOTLE                      R6 R4 ; [+6]
      305 LOADK                            R6 K28 ["9"]
      306 JUMPIFLE                         R4 R6 ; [+2]
      308 LOADB                            R5 0 +1
      309 LOADB                            R5 1
      310 JUMPIF                           R5 ; [+20]
      311 JUMPIFNOTEQKS                    R4 K29 ["."] ; [+244]
      313 ADDK                             R5 R2 K5 [1]
      314 JUMPIFNOTLE                      R5 R3 ; [+241]
      316 ADDK                             R8 R2 K5 [1]
      317 ADDK                             R9 R2 K5 [1]
      318 NAMECALL                         R6 R0 K0 ["sub"]
      320 CALL                             R6 3 1
      321 LOADB                            R5 0
      322 LOADK                            R7 K27 ["0"]
      323 JUMPIFNOTLE                      R7 R6 ; [+6]
      325 LOADK                            R7 K28 ["9"]
      326 JUMPIFLE                         R6 R7 ; [+2]
      328 LOADB                            R5 0 +1
      329 LOADB                            R5 1
      330 JUMPIFNOT                        R5 ; [+225]
      331 MOVE                             R5 R2
      332 MOVE                             R8 R2
      333 MOVE                             R9 R2
      334 NAMECALL                         R6 R0 K0 ["sub"]
      336 CALL                             R6 3 1
      337 JUMPIFNOTEQKS                    R6 K27 ["0"] ; [+118]
      339 ADDK                             R6 R2 K5 [1]
      340 JUMPIFNOTLE                      R6 R3 ; [+115]
      342 ADDK                             R8 R2 K5 [1]
      343 ADDK                             R9 R2 K5 [1]
      344 NAMECALL                         R6 R0 K0 ["sub"]
      346 CALL                             R6 3 1
      347 NAMECALL                         R6 R6 K30 ["lower"]
      349 CALL                             R6 1 1
      350 JUMPIFNOTEQKS                    R6 K31 ["x"] ; [+42]
      352 ADDK                             R2 R2 K15 [2]
      353 JUMPIFNOTLE                      R2 R3 ; [+135]
      355 MOVE                             R10 R2
      356 MOVE                             R11 R2
      357 NAMECALL                         R8 R0 K0 ["sub"]
      359 CALL                             R8 3 1
      360 NAMECALL                         R9 R8 K30 ["lower"]
      362 CALL                             R9 1 1
      363 LOADB                            R7 0
      364 LOADK                            R10 K27 ["0"]
      365 JUMPIFNOTLE                      R10 R8 ; [+6]
      367 LOADK                            R10 K28 ["9"]
      368 JUMPIFLE                         R8 R10 ; [+2]
      370 LOADB                            R7 0 +1
      371 LOADB                            R7 1
      372 JUMPIF                           R7 ; [+9]
      373 LOADB                            R7 0
      374 LOADK                            R10 K32 ["a"]
      375 JUMPIFNOTLE                      R10 R9 ; [+6]
      377 LOADK                            R10 K33 ["f"]
      378 JUMPIFLE                         R9 R10 ; [+2]
      380 LOADB                            R7 0 +1
      381 LOADB                            R7 1
      382 JUMPIF                           R7 ; [+7]
      383 MOVE                             R9 R2
      384 MOVE                             R10 R2
      385 NAMECALL                         R7 R0 K0 ["sub"]
      387 CALL                             R7 3 1
      388 JUMPIFNOTEQKS                    R7 K34 ["_"] ; [+100]
      390 ADDK                             R2 R2 K5 [1]
      391 JUMPBACK                         ; [-39]
      392 JUMP                             ; [+96]
      393 JUMPIFNOTEQKS                    R6 K35 ["b"] ; [+28]
      395 ADDK                             R2 R2 K15 [2]
      396 JUMPIFNOTLE                      R2 R3 ; [+92]
      398 MOVE                             R9 R2
      399 MOVE                             R10 R2
      400 NAMECALL                         R7 R0 K0 ["sub"]
      402 CALL                             R7 3 1
      403 JUMPIFEQKS                       R7 K27 ["0"] ; [+15]
      405 MOVE                             R9 R2
      406 MOVE                             R10 R2
      407 NAMECALL                         R7 R0 K0 ["sub"]
      409 CALL                             R7 3 1
      410 JUMPIFEQKS                       R7 K36 ["1"] ; [+8]
      412 MOVE                             R9 R2
      413 MOVE                             R10 R2
      414 NAMECALL                         R7 R0 K0 ["sub"]
      416 CALL                             R7 3 1
      417 JUMPIFNOTEQKS                    R7 K34 ["_"] ; [+71]
      419 ADDK                             R2 R2 K5 [1]
      420 JUMPBACK                         ; [-25]
      421 JUMP                             ; [+67]
      422 JUMPIFNOTLE                      R2 R3 ; [+66]
      424 MOVE                             R10 R2
      425 MOVE                             R11 R2
      426 NAMECALL                         R8 R0 K0 ["sub"]
      428 CALL                             R8 3 1
      429 LOADB                            R7 0
      430 LOADK                            R9 K27 ["0"]
      431 JUMPIFNOTLE                      R9 R8 ; [+6]
      433 LOADK                            R9 K28 ["9"]
      434 JUMPIFLE                         R8 R9 ; [+2]
      436 LOADB                            R7 0 +1
      437 LOADB                            R7 1
      438 JUMPIF                           R7 ; [+14]
      439 MOVE                             R9 R2
      440 MOVE                             R10 R2
      441 NAMECALL                         R7 R0 K0 ["sub"]
      443 CALL                             R7 3 1
      444 JUMPIFEQKS                       R7 K34 ["_"] ; [+8]
      446 MOVE                             R9 R2
      447 MOVE                             R10 R2
      448 NAMECALL                         R7 R0 K0 ["sub"]
      450 CALL                             R7 3 1
      451 JUMPIFNOTEQKS                    R7 K29 ["."] ; [+37]
      453 ADDK                             R2 R2 K5 [1]
      454 JUMPBACK                         ; [-33]
      455 JUMP                             ; [+33]
      456 JUMPIFNOTLE                      R2 R3 ; [+32]
      458 MOVE                             R9 R2
      459 MOVE                             R10 R2
      460 NAMECALL                         R7 R0 K0 ["sub"]
      462 CALL                             R7 3 1
      463 LOADB                            R6 0
      464 LOADK                            R8 K27 ["0"]
      465 JUMPIFNOTLE                      R8 R7 ; [+6]
      467 LOADK                            R8 K28 ["9"]
      468 JUMPIFLE                         R7 R8 ; [+2]
      470 LOADB                            R6 0 +1
      471 LOADB                            R6 1
      472 JUMPIF                           R6 ; [+14]
      473 MOVE                             R8 R2
      474 MOVE                             R9 R2
      475 NAMECALL                         R6 R0 K0 ["sub"]
      477 CALL                             R6 3 1
      478 JUMPIFEQKS                       R6 K34 ["_"] ; [+8]
      480 MOVE                             R8 R2
      481 MOVE                             R9 R2
      482 NAMECALL                         R6 R0 K0 ["sub"]
      484 CALL                             R6 3 1
      485 JUMPIFNOTEQKS                    R6 K29 ["."] ; [+3]
      487 ADDK                             R2 R2 K5 [1]
      488 JUMPBACK                         ; [-33]
      489 JUMPIFNOTLE                      R2 R3 ; [+48]
      491 MOVE                             R8 R2
      492 MOVE                             R9 R2
      493 NAMECALL                         R6 R0 K0 ["sub"]
      495 CALL                             R6 3 1
      496 NAMECALL                         R6 R6 K30 ["lower"]
      498 CALL                             R6 1 1
      499 JUMPIFNOTEQKS                    R6 K37 ["e"] ; [+38]
      501 ADDK                             R2 R2 K5 [1]
      502 JUMPIFNOTLE                      R2 R3 ; [+16]
      504 MOVE                             R8 R2
      505 MOVE                             R9 R2
      506 NAMECALL                         R6 R0 K0 ["sub"]
      508 CALL                             R6 3 1
      509 JUMPIFEQKS                       R6 K38 ["+"] ; [+8]
      511 MOVE                             R8 R2
      512 MOVE                             R9 R2
      513 NAMECALL                         R6 R0 K0 ["sub"]
      515 CALL                             R6 3 1
      516 JUMPIFNOTEQKS                    R6 K13 ["-"] ; [+2]
      518 ADDK                             R2 R2 K5 [1]
      519 JUMPIFNOTLE                      R2 R3 ; [+18]
      521 MOVE                             R9 R2
      522 MOVE                             R10 R2
      523 NAMECALL                         R7 R0 K0 ["sub"]
      525 CALL                             R7 3 1
      526 LOADB                            R6 0
      527 LOADK                            R8 K27 ["0"]
      528 JUMPIFNOTLE                      R8 R7 ; [+6]
      530 LOADK                            R8 K28 ["9"]
      531 JUMPIFLE                         R7 R8 ; [+2]
      533 LOADB                            R6 0 +1
      534 LOADB                            R6 1
      535 JUMPIFNOT                        R6 ; [+2]
      536 ADDK                             R2 R2 K5 [1]
      537 JUMPBACK                         ; [-19]
      538 DUPTABLE                         R8 K8 [{"type", "value"}]
      539 LOADK                            R9 K39 ["number"]
      540 SETTABLEKS                       R9 R8 K6 ["type"]
      542 MOVE                             R11 R5
      543 SUBK                             R12 R2 K5 [1]
      544 NAMECALL                         R9 R0 K0 ["sub"]
      546 CALL                             R9 3 1
      547 SETTABLEKS                       R9 R8 K7 ["value"]
      549 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      551 MOVE                             R7 R1
      552 GETIMPORT                        R6 K12 [table.insert]
      554 CALL                             R6 2 0
      555 JUMP                             ; [+315]
      556 LOADK                            R6 K32 ["a"]
      557 JUMPIFNOTLE                      R6 R4 ; [+5]
      559 LOADB                            R5 1
      560 LOADK                            R6 K40 ["z"]
      561 JUMPIFLE                         R4 R6 ; [+12]
      563 LOADK                            R6 K41 ["A"]
      564 JUMPIFNOTLE                      R6 R4 ; [+5]
      566 LOADB                            R5 1
      567 LOADK                            R6 K42 ["Z"]
      568 JUMPIFLE                         R4 R6 ; [+5]
      570 JUMPIFEQKS                       R4 K34 ["_"] ; [+2]
      572 LOADB                            R5 0 +1
      573 LOADB                            R5 1
      574 JUMPIFNOT                        R5 ; [+134]
      575 MOVE                             R5 R2
      576 JUMPIFNOTLE                      R2 R3 ; [+37]
      578 MOVE                             R9 R2
      579 MOVE                             R10 R2
      580 NAMECALL                         R7 R0 K0 ["sub"]
      582 CALL                             R7 3 1
      583 LOADK                            R8 K32 ["a"]
      584 JUMPIFNOTLE                      R8 R7 ; [+5]
      586 LOADB                            R6 1
      587 LOADK                            R8 K40 ["z"]
      588 JUMPIFLE                         R7 R8 ; [+12]
      590 LOADK                            R8 K41 ["A"]
      591 JUMPIFNOTLE                      R8 R7 ; [+5]
      593 LOADB                            R6 1
      594 LOADK                            R8 K42 ["Z"]
      595 JUMPIFLE                         R7 R8 ; [+5]
      597 JUMPIFEQKS                       R7 K34 ["_"] ; [+2]
      599 LOADB                            R6 0 +1
      600 LOADB                            R6 1
      601 JUMPIF                           R6 ; [+9]
      602 LOADB                            R6 0
      603 LOADK                            R8 K27 ["0"]
      604 JUMPIFNOTLE                      R8 R7 ; [+6]
      606 LOADK                            R8 K28 ["9"]
      607 JUMPIFLE                         R7 R8 ; [+2]
      609 LOADB                            R6 0 +1
      610 LOADB                            R6 1
      611 JUMPIFNOT                        R6 ; [+2]
      612 ADDK                             R2 R2 K5 [1]
      613 JUMPBACK                         ; [-38]
      614 MOVE                             R8 R5
      615 SUBK                             R9 R2 K5 [1]
      616 NAMECALL                         R6 R0 K0 ["sub"]
      618 CALL                             R6 3 1
      619 LOADNIL                          R7
      620 LENGTH                           R10 R1
      621 LOADN                            R8 1
      622 LOADN                            R9 255
      623 FORNPREP                         R8
      624 GETTABLE                         R11 R1 R10
      625 GETTABLEKS                       R11 R11 K6 ["type"]
      627 JUMPIFEQKS                       R11 K9 ["whitespace"] ; [+5]
      629 GETTABLE                         R11 R1 R10
      630 GETTABLEKS                       R7 R11 K7 ["value"]
      632 JUMP                             ; [+1]
      633 FORNLOOP                         R8
      634 JUMPIFNOTEQKS                    R7 K29 ["."] ; [+14]
      636 DUPTABLE                         R10 K8 [{"type", "value"}]
      637 LOADK                            R11 K43 ["member"]
      638 SETTABLEKS                       R11 R10 K6 ["type"]
      640 SETTABLEKS                       R6 R10 K7 ["value"]
      642 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      644 MOVE                             R9 R1
      645 GETIMPORT                        R8 K12 [table.insert]
      647 CALL                             R8 2 0
      648 JUMP                             ; [+222]
      649 JUMPIFNOTEQKS                    R7 K44 [":"] ; [+14]
      651 DUPTABLE                         R10 K8 [{"type", "value"}]
      652 LOADK                            R11 K45 ["method"]
      653 SETTABLEKS                       R11 R10 K6 ["type"]
      655 SETTABLEKS                       R6 R10 K7 ["value"]
      657 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      659 MOVE                             R9 R1
      660 GETIMPORT                        R8 K12 [table.insert]
      662 CALL                             R8 2 0
      663 JUMP                             ; [+207]
      664 GETUPVAL                         R9 0
      665 GETTABLE                         R8 R9 R6
      666 JUMPIFNOT                        R8 ; [+13]
      667 DUPTABLE                         R10 K8 [{"type", "value"}]
      668 LOADK                            R11 K46 ["keyword"]
      669 SETTABLEKS                       R11 R10 K6 ["type"]
      671 SETTABLEKS                       R6 R10 K7 ["value"]
      673 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      675 MOVE                             R9 R1
      676 GETIMPORT                        R8 K12 [table.insert]
      678 CALL                             R8 2 0
      679 JUMP                             ; [+191]
      680 GETUPVAL                         R9 1
      681 GETTABLE                         R8 R9 R6
      682 JUMPIFNOT                        R8 ; [+13]
      683 DUPTABLE                         R10 K8 [{"type", "value"}]
      684 LOADK                            R11 K47 ["builtin"]
      685 SETTABLEKS                       R11 R10 K6 ["type"]
      687 SETTABLEKS                       R6 R10 K7 ["value"]
      689 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      691 MOVE                             R9 R1
      692 GETIMPORT                        R8 K12 [table.insert]
      694 CALL                             R8 2 0
      695 JUMP                             ; [+175]
      696 DUPTABLE                         R10 K8 [{"type", "value"}]
      697 LOADK                            R11 K48 ["identifier"]
      698 SETTABLEKS                       R11 R10 K6 ["type"]
      700 SETTABLEKS                       R6 R10 K7 ["value"]
      702 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      704 MOVE                             R9 R1
      705 GETIMPORT                        R8 K12 [table.insert]
      707 CALL                             R8 2 0
      708 JUMP                             ; [+162]
      709 JUMPIFNOTEQKS                    R4 K29 ["."] ; [+84]
      711 ADDK                             R5 R2 K5 [1]
      712 JUMPIFLT                         R3 R5 ; [+16]
      714 ADDK                             R8 R2 K5 [1]
      715 ADDK                             R9 R2 K5 [1]
      716 NAMECALL                         R6 R0 K0 ["sub"]
      718 CALL                             R6 3 1
      719 LOADB                            R5 0
      720 LOADK                            R7 K27 ["0"]
      721 JUMPIFNOTLE                      R7 R6 ; [+6]
      723 LOADK                            R7 K28 ["9"]
      724 JUMPIFLE                         R6 R7 ; [+2]
      726 LOADB                            R5 0 +1
      727 LOADB                            R5 1
      728 JUMPIF                           R5 ; [+65]
      729 ADDK                             R5 R2 K15 [2]
      730 JUMPIFNOTLE                      R5 R3 ; [+23]
      732 ADDK                             R7 R2 K5 [1]
      733 ADDK                             R8 R2 K15 [2]
      734 NAMECALL                         R5 R0 K0 ["sub"]
      736 CALL                             R5 3 1
      737 JUMPIFNOTEQKS                    R5 K49 [".."] ; [+16]
      739 DUPTABLE                         R7 K8 [{"type", "value"}]
      740 LOADK                            R8 K50 ["operator"]
      741 SETTABLEKS                       R8 R7 K6 ["type"]
      743 LOADK                            R8 K51 ["..."]
      744 SETTABLEKS                       R8 R7 K7 ["value"]
      746 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      748 MOVE                             R6 R1
      749 GETIMPORT                        R5 K12 [table.insert]
      751 CALL                             R5 2 0
      752 ADDK                             R2 R2 K14 [3]
      753 JUMP                             ; [+117]
      754 ADDK                             R5 R2 K5 [1]
      755 JUMPIFNOTLE                      R5 R3 ; [+23]
      757 ADDK                             R7 R2 K5 [1]
      758 ADDK                             R8 R2 K5 [1]
      759 NAMECALL                         R5 R0 K0 ["sub"]
      761 CALL                             R5 3 1
      762 JUMPIFNOTEQKS                    R5 K29 ["."] ; [+16]
      764 DUPTABLE                         R7 K8 [{"type", "value"}]
      765 LOADK                            R8 K50 ["operator"]
      766 SETTABLEKS                       R8 R7 K6 ["type"]
      768 LOADK                            R8 K49 [".."]
      769 SETTABLEKS                       R8 R7 K7 ["value"]
      771 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      773 MOVE                             R6 R1
      774 GETIMPORT                        R5 K12 [table.insert]
      776 CALL                             R5 2 0
      777 ADDK                             R2 R2 K15 [2]
      778 JUMP                             ; [+92]
      779 DUPTABLE                         R7 K8 [{"type", "value"}]
      780 LOADK                            R8 K50 ["operator"]
      781 SETTABLEKS                       R8 R7 K6 ["type"]
      783 LOADK                            R8 K29 ["."]
      784 SETTABLEKS                       R8 R7 K7 ["value"]
      786 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      788 MOVE                             R6 R1
      789 GETIMPORT                        R5 K12 [table.insert]
      791 CALL                             R5 2 0
      792 ADDK                             R2 R2 K5 [1]
      793 JUMP                             ; [+77]
      794 JUMPIFEQKS                       R4 K52 ["="] ; [+7]
      796 JUMPIFEQKS                       R4 K53 ["~"] ; [+5]
      798 JUMPIFEQKS                       R4 K54 ["<"] ; [+3]
      800 JUMPIFNOTEQKS                    R4 K55 [">"] ; [+30]
      802 ADDK                             R5 R2 K5 [1]
      803 JUMPIFNOTLE                      R5 R3 ; [+27]
      805 ADDK                             R7 R2 K5 [1]
      806 ADDK                             R8 R2 K5 [1]
      807 NAMECALL                         R5 R0 K0 ["sub"]
      809 CALL                             R5 3 1
      810 JUMPIFNOTEQKS                    R5 K52 ["="] ; [+20]
      812 DUPTABLE                         R7 K8 [{"type", "value"}]
      813 LOADK                            R8 K50 ["operator"]
      814 SETTABLEKS                       R8 R7 K6 ["type"]
      816 MOVE                             R10 R2
      817 ADDK                             R11 R2 K5 [1]
      818 NAMECALL                         R8 R0 K0 ["sub"]
      820 CALL                             R8 3 1
      821 SETTABLEKS                       R8 R7 K7 ["value"]
      823 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      825 MOVE                             R6 R1
      826 GETIMPORT                        R5 K12 [table.insert]
      828 CALL                             R5 2 0
      829 ADDK                             R2 R2 K15 [2]
      830 JUMP                             ; [+40]
      831 JUMPIFNOTEQKS                    R4 K13 ["-"] ; [+26]
      833 ADDK                             R5 R2 K5 [1]
      834 JUMPIFNOTLE                      R5 R3 ; [+23]
      836 ADDK                             R7 R2 K5 [1]
      837 ADDK                             R8 R2 K5 [1]
      838 NAMECALL                         R5 R0 K0 ["sub"]
      840 CALL                             R5 3 1
      841 JUMPIFNOTEQKS                    R5 K55 [">"] ; [+16]
      843 DUPTABLE                         R7 K8 [{"type", "value"}]
      844 LOADK                            R8 K50 ["operator"]
      845 SETTABLEKS                       R8 R7 K6 ["type"]
      847 LOADK                            R8 K56 ["->"]
      848 SETTABLEKS                       R8 R7 K7 ["value"]
      850 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      852 MOVE                             R6 R1
      853 GETIMPORT                        R5 K12 [table.insert]
      855 CALL                             R5 2 0
      856 ADDK                             R2 R2 K15 [2]
      857 JUMP                             ; [+13]
      858 DUPTABLE                         R7 K8 [{"type", "value"}]
      859 LOADK                            R8 K50 ["operator"]
      860 SETTABLEKS                       R8 R7 K6 ["type"]
      862 SETTABLEKS                       R4 R7 K7 ["value"]
      864 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      866 MOVE                             R6 R1
      867 GETIMPORT                        R5 K12 [table.insert]
      869 CALL                             R5 2 0
      870 ADDK                             R2 R2 K5 [1]
      871 JUMPBACK                         ; [-868]
      872 RETURN                           R1 1

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
