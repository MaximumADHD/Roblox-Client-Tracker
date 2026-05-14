PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 FASTCALL3                        STRING_SUB R2 R0 R0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R0
        5 GETIMPORT                        R1 K2 [string.sub]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R2
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R0
        7 FASTCALL1                        STRING_LEN R0 ; [+3]
        8 MOVE                             R6 R0
        9 GETIMPORT                        R5 K2 [string.len]
       11 CALL                             R5 1 1
       12 JUMPIFNOTLE                      R2 R5 ; [+416]
       14 FASTCALL3                        STRING_SUB R0 R2 R2
       16 MOVE                             R7 R0
       17 MOVE                             R8 R2
       18 MOVE                             R9 R2
       19 GETIMPORT                        R6 K4 [string.sub]
       21 CALL                             R6 3 1
       22 JUMPIFEQKS                       R6 K5 ["*"] ; [+5]
       24 JUMPIFEQKS                       R6 K6 ["+"] ; [+3]
       26 JUMPIFNOTEQKS                    R6 K7 ["?"] ; [+28]
       28 DUPTABLE                         R9 K11 [{"type", "index", "value"}]
       29 LOADK                            R10 K12 ["MODIFIER"]
       30 SETTABLEKS                       R10 R9 K8 ["type"]
       32 SETTABLEKS                       R2 R9 K9 ["index"]
       34 MOVE                             R12 R2
       35 ADDK                             R2 R2 K13 [1]
       36 MOVE                             R11 R12
       37 FASTCALL3                        STRING_SUB R0 R11 R11
       39 MOVE                             R13 R0
       40 MOVE                             R14 R11
       41 MOVE                             R15 R11
       42 GETIMPORT                        R12 K4 [string.sub]
       44 CALL                             R12 3 1
       45 MOVE                             R10 R12
       46 SETTABLEKS                       R10 R9 K10 ["value"]
       48 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       50 MOVE                             R8 R1
       51 GETIMPORT                        R7 K16 [table.insert]
       53 CALL                             R7 2 0
       54 JUMP                             ; [+373]
       55 JUMPIFNOTEQKS                    R6 K17 ["\\"] ; [+31]
       57 DUPTABLE                         R9 K11 [{"type", "index", "value"}]
       58 LOADK                            R10 K18 ["ESCAPED_CHAR"]
       59 SETTABLEKS                       R10 R9 K8 ["type"]
       61 MOVE                             R11 R2
       62 ADDK                             R2 R2 K13 [1]
       63 MOVE                             R10 R11
       64 SETTABLEKS                       R10 R9 K9 ["index"]
       66 MOVE                             R12 R2
       67 ADDK                             R2 R2 K13 [1]
       68 MOVE                             R11 R12
       69 FASTCALL3                        STRING_SUB R0 R11 R11
       71 MOVE                             R13 R0
       72 MOVE                             R14 R11
       73 MOVE                             R15 R11
       74 GETIMPORT                        R12 K4 [string.sub]
       76 CALL                             R12 3 1
       77 MOVE                             R10 R12
       78 SETTABLEKS                       R10 R9 K10 ["value"]
       80 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       82 MOVE                             R8 R1
       83 GETIMPORT                        R7 K16 [table.insert]
       85 CALL                             R7 2 0
       86 JUMP                             ; [+341]
       87 JUMPIFNOTEQKS                    R6 K19 ["{"] ; [+28]
       89 DUPTABLE                         R9 K11 [{"type", "index", "value"}]
       90 LOADK                            R10 K20 ["OPEN"]
       91 SETTABLEKS                       R10 R9 K8 ["type"]
       93 SETTABLEKS                       R2 R9 K9 ["index"]
       95 MOVE                             R12 R2
       96 ADDK                             R2 R2 K13 [1]
       97 MOVE                             R11 R12
       98 FASTCALL3                        STRING_SUB R0 R11 R11
      100 MOVE                             R13 R0
      101 MOVE                             R14 R11
      102 MOVE                             R15 R11
      103 GETIMPORT                        R12 K4 [string.sub]
      105 CALL                             R12 3 1
      106 MOVE                             R10 R12
      107 SETTABLEKS                       R10 R9 K10 ["value"]
      109 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      111 MOVE                             R8 R1
      112 GETIMPORT                        R7 K16 [table.insert]
      114 CALL                             R7 2 0
      115 JUMP                             ; [+312]
      116 JUMPIFNOTEQKS                    R6 K21 ["}"] ; [+28]
      118 DUPTABLE                         R9 K11 [{"type", "index", "value"}]
      119 LOADK                            R10 K22 ["CLOSE"]
      120 SETTABLEKS                       R10 R9 K8 ["type"]
      122 SETTABLEKS                       R2 R9 K9 ["index"]
      124 MOVE                             R12 R2
      125 ADDK                             R2 R2 K13 [1]
      126 MOVE                             R11 R12
      127 FASTCALL3                        STRING_SUB R0 R11 R11
      129 MOVE                             R13 R0
      130 MOVE                             R14 R11
      131 MOVE                             R15 R11
      132 GETIMPORT                        R12 K4 [string.sub]
      134 CALL                             R12 3 1
      135 MOVE                             R10 R12
      136 SETTABLEKS                       R10 R9 K10 ["value"]
      138 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      140 MOVE                             R8 R1
      141 GETIMPORT                        R7 K16 [table.insert]
      143 CALL                             R7 2 0
      144 JUMP                             ; [+283]
      145 JUMPIFNOTEQKS                    R6 K23 [":"] ; [+80]
      147 LOADK                            R7 K24 [""]
      148 ADDK                             R8 R2 K13 [1]
      149 NEWCLOSURE                       R9 P2
      150 CAPTURE                          REF R8
      151 JUMPIFNOTLE                      R8 R5 ; [+45]
      153 FASTCALL2                        STRING_BYTE R0 R8 ; [+5]
      155 MOVE                             R11 R0
      156 MOVE                             R12 R8
      157 GETIMPORT                        R10 K26 [string.byte]
      159 CALL                             R10 2 1
      160 LOADN                            R11 48
      161 JUMPIFNOTLE                      R11 R10 ; [+4]
      163 LOADN                            R11 57
      164 JUMPIFLE                         R10 R11 ; [+15]
      166 LOADN                            R11 65
      167 JUMPIFNOTLE                      R11 R10 ; [+4]
      169 LOADN                            R11 90
      170 JUMPIFLE                         R10 R11 ; [+9]
      172 LOADN                            R11 97
      173 JUMPIFNOTLE                      R11 R10 ; [+4]
      175 LOADN                            R11 122
      176 JUMPIFLE                         R10 R11 ; [+3]
      178 JUMPIFNOTEQKN                    R10 K27 [95] ; [+18]
      180 MOVE                             R11 R7
      181 MOVE                             R14 R8
      182 ADDK                             R8 R8 K13 [1]
      183 MOVE                             R13 R14
      184 FASTCALL3                        STRING_SUB R0 R13 R13
      186 MOVE                             R15 R0
      187 MOVE                             R16 R13
      188 MOVE                             R17 R13
      189 GETIMPORT                        R14 K4 [string.sub]
      191 CALL                             R14 3 1
      192 MOVE                             R12 R14
      193 CONCAT                           R7 R11 R12
      194 JUMP                             ; [+1]
      195 JUMP                             ; [+1]
      196 JUMPBACK                         ; [-46]
      197 JUMPIFNOTEQKS                    R7 K24 [""] ; [+10]
      199 GETIMPORT                        R10 K29 [error]
      201 LOADK                            R12 K30 ["Missing parameter name at %d"]
      202 MOVE                             R14 R2
      203 NAMECALL                         R12 R12 K31 ["format"]
      205 CALL                             R12 2 1
      206 MOVE                             R11 R12
      207 CALL                             R10 1 0
      208 DUPTABLE                         R12 K11 [{"type", "index", "value"}]
      209 LOADK                            R13 K32 ["NAME"]
      210 SETTABLEKS                       R13 R12 K8 ["type"]
      212 SETTABLEKS                       R2 R12 K9 ["index"]
      214 SETTABLEKS                       R7 R12 K10 ["value"]
      216 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      218 MOVE                             R11 R1
      219 GETIMPORT                        R10 K16 [table.insert]
      221 CALL                             R10 2 0
      222 MOVE                             R2 R8
      223 CLOSEUPVALS                      R8
      224 JUMP                             ; [+203]
      225 CLOSEUPVALS                      R8
      226 JUMPIFNOTEQKS                    R6 K33 ["("] ; [+175]
      228 LOADN                            R7 1
      229 LOADK                            R8 K24 [""]
      230 ADDK                             R9 R2 K13 [1]
      231 MOVE                             R11 R9
      232 FASTCALL3                        STRING_SUB R0 R11 R11
      234 MOVE                             R13 R0
      235 MOVE                             R14 R11
      236 MOVE                             R15 R11
      237 GETIMPORT                        R12 K4 [string.sub]
      239 CALL                             R12 3 1
      240 MOVE                             R10 R12
      241 JUMPIFNOTEQKS                    R10 K7 ["?"] ; [+10]
      243 GETIMPORT                        R10 K29 [error]
      245 LOADK                            R12 K34 ["Pattern cannot start with \"?\" at %d"]
      246 MOVE                             R14 R9
      247 NAMECALL                         R12 R12 K31 ["format"]
      249 CALL                             R12 2 1
      250 MOVE                             R11 R12
      251 CALL                             R10 1 0
      252 NEWCLOSURE                       R10 P3
      253 CAPTURE                          REF R9
      254 JUMPIFNOTLE                      R9 R5 ; [+107]
      256 MOVE                             R12 R9
      257 FASTCALL3                        STRING_SUB R0 R12 R12
      259 MOVE                             R14 R0
      260 MOVE                             R15 R12
      261 MOVE                             R16 R12
      262 GETIMPORT                        R13 K4 [string.sub]
      264 CALL                             R13 3 1
      265 MOVE                             R11 R13
      266 JUMPIFNOTEQKS                    R11 K17 ["\\"] ; [+28]
      268 MOVE                             R11 R8
      269 MOVE                             R16 R9
      270 ADDK                             R9 R9 K13 [1]
      271 MOVE                             R15 R16
      272 FASTCALL3                        STRING_SUB R0 R15 R15
      274 MOVE                             R17 R0
      275 MOVE                             R18 R15
      276 MOVE                             R19 R15
      277 GETIMPORT                        R16 K4 [string.sub]
      279 CALL                             R16 3 1
      280 MOVE                             R13 R16
      281 MOVE                             R16 R9
      282 ADDK                             R9 R9 K13 [1]
      283 MOVE                             R15 R16
      284 FASTCALL3                        STRING_SUB R0 R15 R15
      286 MOVE                             R17 R0
      287 MOVE                             R18 R15
      288 MOVE                             R19 R15
      289 GETIMPORT                        R16 K4 [string.sub]
      291 CALL                             R16 3 1
      292 MOVE                             R14 R16
      293 CONCAT                           R12 R13 R14
      294 CONCAT                           R8 R11 R12
      295 MOVE                             R12 R9
      296 FASTCALL3                        STRING_SUB R0 R12 R12
      298 MOVE                             R14 R0
      299 MOVE                             R15 R12
      300 MOVE                             R16 R12
      301 GETIMPORT                        R13 K4 [string.sub]
      303 CALL                             R13 3 1
      304 MOVE                             R11 R13
      305 JUMPIFNOTEQKS                    R11 K35 [")"] ; [+7]
      307 SUBK                             R7 R7 K13 [1]
      308 JUMPIFNOTEQKN                    R7 K36 [0] ; [+38]
      310 ADDK                             R9 R9 K13 [1]
      311 JUMP                             ; [+50]
      312 JUMP                             ; [+34]
      313 MOVE                             R12 R9
      314 FASTCALL3                        STRING_SUB R0 R12 R12
      316 MOVE                             R14 R0
      317 MOVE                             R15 R12
      318 MOVE                             R16 R12
      319 GETIMPORT                        R13 K4 [string.sub]
      321 CALL                             R13 3 1
      322 MOVE                             R11 R13
      323 JUMPIFNOTEQKS                    R11 K33 ["("] ; [+23]
      325 ADDK                             R7 R7 K13 [1]
      326 ADDK                             R12 R9 K13 [1]
      327 FASTCALL3                        STRING_SUB R0 R12 R12
      329 MOVE                             R14 R0
      330 MOVE                             R15 R12
      331 MOVE                             R16 R12
      332 GETIMPORT                        R13 K4 [string.sub]
      334 CALL                             R13 3 1
      335 MOVE                             R11 R13
      336 JUMPIFEQKS                       R11 K7 ["?"] ; [+10]
      338 GETIMPORT                        R11 K29 [error]
      340 LOADK                            R13 K37 ["Capturing groups are not allowed at %d"]
      341 MOVE                             R15 R9
      342 NAMECALL                         R13 R13 K31 ["format"]
      344 CALL                             R13 2 1
      345 MOVE                             R12 R13
      346 CALL                             R11 1 0
      347 MOVE                             R11 R8
      348 MOVE                             R14 R9
      349 ADDK                             R9 R9 K13 [1]
      350 MOVE                             R13 R14
      351 FASTCALL3                        STRING_SUB R0 R13 R13
      353 MOVE                             R15 R0
      354 MOVE                             R16 R13
      355 MOVE                             R17 R13
      356 GETIMPORT                        R14 K4 [string.sub]
      358 CALL                             R14 3 1
      359 MOVE                             R12 R14
      360 CONCAT                           R8 R11 R12
      361 JUMPBACK                         ; [-108]
      362 JUMPIFEQKN                       R7 K36 [0] ; [+10]
      364 GETIMPORT                        R11 K29 [error]
      366 LOADK                            R13 K38 ["Unbalanced pattern at %d"]
      367 MOVE                             R15 R2
      368 NAMECALL                         R13 R13 K31 ["format"]
      370 CALL                             R13 2 1
      371 MOVE                             R12 R13
      372 CALL                             R11 1 0
      373 JUMPIFNOTEQKS                    R8 K24 [""] ; [+10]
      375 GETIMPORT                        R11 K29 [error]
      377 LOADK                            R13 K39 ["Missing pattern at %d"]
      378 MOVE                             R15 R2
      379 NAMECALL                         R13 R13 K31 ["format"]
      381 CALL                             R13 2 1
      382 MOVE                             R12 R13
      383 CALL                             R11 1 0
      384 DUPTABLE                         R13 K11 [{"type", "index", "value"}]
      385 LOADK                            R14 K40 ["PATTERN"]
      386 SETTABLEKS                       R14 R13 K8 ["type"]
      388 SETTABLEKS                       R2 R13 K9 ["index"]
      390 SETTABLEKS                       R8 R13 K10 ["value"]
      392 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      394 MOVE                             R12 R1
      395 GETIMPORT                        R11 K16 [table.insert]
      397 CALL                             R11 2 0
      398 MOVE                             R2 R9
      399 CLOSEUPVALS                      R9
      400 JUMP                             ; [+27]
      401 CLOSEUPVALS                      R9
      402 DUPTABLE                         R9 K11 [{"type", "index", "value"}]
      403 LOADK                            R10 K41 ["CHAR"]
      404 SETTABLEKS                       R10 R9 K8 ["type"]
      406 SETTABLEKS                       R2 R9 K9 ["index"]
      408 MOVE                             R12 R2
      409 ADDK                             R2 R2 K13 [1]
      410 MOVE                             R11 R12
      411 FASTCALL3                        STRING_SUB R0 R11 R11
      413 MOVE                             R13 R0
      414 MOVE                             R14 R11
      415 MOVE                             R15 R11
      416 GETIMPORT                        R12 K4 [string.sub]
      418 CALL                             R12 3 1
      419 MOVE                             R10 R12
      420 SETTABLEKS                       R10 R9 K10 ["value"]
      422 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      424 MOVE                             R8 R1
      425 GETIMPORT                        R7 K16 [table.insert]
      427 CALL                             R7 2 0
      428 JUMPBACK                         ; [-417]
      429 DUPTABLE                         R8 K11 [{"type", "index", "value"}]
      430 LOADK                            R9 K42 ["END"]
      431 SETTABLEKS                       R9 R8 K8 ["type"]
      433 SETTABLEKS                       R2 R8 K9 ["index"]
      435 LOADK                            R9 K24 [""]
      436 SETTABLEKS                       R9 R8 K10 ["value"]
      438 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      440 MOVE                             R7 R1
      441 GETIMPORT                        R6 K16 [table.insert]
      443 CALL                             R6 2 0
      444 CLOSEUPVALS                      R2
      445 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 JUMPIFNOTLE                      R1 R2 ; [+18]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R1 R2 R3
        8 GETTABLEKS                       R1 R1 K0 ["type"]
       10 JUMPIFNOTEQ                      R1 R0 ; [+11]
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R5 0
       15 ADDK                             R5 R5 K1 [1]
       16 SETUPVAL                         R5 0
       17 MOVE                             R3 R4
       18 GETTABLE                         R1 R2 R3
       19 GETTABLEKS                       R1 R1 K2 ["value"]
       21 RETURN                           R1 1
       22 LOADNIL                          R1
       23 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 LENGTH                           R3 R4
        3 JUMPIFNOTLE                      R2 R3 ; [+19]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R2 R3 R4
        8 GETTABLEKS                       R2 R2 K0 ["type"]
       10 JUMPIFNOTEQ                      R2 R0 ; [+12]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 0
       14 GETUPVAL                         R6 0
       15 ADDK                             R6 R6 K1 [1]
       16 SETUPVAL                         R6 0
       17 MOVE                             R4 R5
       18 GETTABLE                         R2 R3 R4
       19 GETTABLEKS                       R2 R2 K2 ["value"]
       21 MOVE                             R1 R2
       22 JUMP                             ; [+1]
       23 LOADNIL                          R1
       24 JUMPIFEQKNIL                     R1 ; [+2]
       26 RETURN                           R1 1
       27 GETUPVAL                         R3 1
       28 GETUPVAL                         R4 0
       29 GETTABLE                         R2 R3 R4
       30 JUMPIFNOTEQKNIL                  R2 ; [+10]
       32 GETIMPORT                        R3 K4 [error]
       34 LOADK                            R5 K5 ["Expected token %s, got nil"]
       35 MOVE                             R7 R0
       36 NAMECALL                         R5 R5 K6 ["format"]
       38 CALL                             R5 2 1
       39 MOVE                             R4 R5
       40 CALL                             R3 1 0
       41 GETTABLEKS                       R3 R2 K0 ["type"]
       43 GETTABLEKS                       R4 R2 K7 ["index"]
       45 GETIMPORT                        R5 K4 [error]
       47 LOADK                            R7 K8 ["Unexpected %s at %d, expected %s"]
       48 MOVE                             R9 R3
       49 MOVE                             R10 R4
       50 MOVE                             R11 R0
       51 NAMECALL                         R7 R7 K6 ["format"]
       53 CALL                             R7 4 1
       54 MOVE                             R6 R7
       55 CALL                             R5 1 0
       56 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R0 K0 [""]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 LENGTH                           R3 R4
        4 JUMPIFNOTLE                      R2 R3 ; [+19]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R2 R3 R4
        9 GETTABLEKS                       R2 R2 K1 ["type"]
       11 JUMPIFNOTEQKS                    R2 K2 ["CHAR"] ; [+12]
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R5 0
       15 GETUPVAL                         R6 0
       16 ADDK                             R6 R6 K3 [1]
       17 SETUPVAL                         R6 0
       18 MOVE                             R4 R5
       19 GETTABLE                         R2 R3 R4
       20 GETTABLEKS                       R2 R2 K4 ["value"]
       22 MOVE                             R1 R2
       23 JUMP                             ; [+1]
       24 LOADNIL                          R1
       25 JUMPIF                           R1 ; [+24]
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R4 1
       28 LENGTH                           R3 R4
       29 JUMPIFNOTLE                      R2 R3 ; [+19]
       31 GETUPVAL                         R3 1
       32 GETUPVAL                         R4 0
       33 GETTABLE                         R2 R3 R4
       34 GETTABLEKS                       R2 R2 K1 ["type"]
       36 JUMPIFNOTEQKS                    R2 K5 ["ESCAPED_CHAR"] ; [+12]
       38 GETUPVAL                         R3 1
       39 GETUPVAL                         R5 0
       40 GETUPVAL                         R6 0
       41 ADDK                             R6 R6 K3 [1]
       42 SETUPVAL                         R6 0
       43 MOVE                             R4 R5
       44 GETTABLE                         R2 R3 R4
       45 GETTABLEKS                       R2 R2 K4 ["value"]
       47 MOVE                             R1 R2
       48 JUMP                             ; [+1]
       49 LOADNIL                          R1
       50 JUMPIFNOT                        R1 ; [+56]
       51 JUMPIFEQKS                       R1 K0 [""] ; [+55]
       53 MOVE                             R2 R0
       54 MOVE                             R3 R1
       55 CONCAT                           R0 R2 R3
       56 GETUPVAL                         R3 0
       57 GETUPVAL                         R5 1
       58 LENGTH                           R4 R5
       59 JUMPIFNOTLE                      R3 R4 ; [+19]
       61 GETUPVAL                         R4 1
       62 GETUPVAL                         R5 0
       63 GETTABLE                         R3 R4 R5
       64 GETTABLEKS                       R3 R3 K1 ["type"]
       66 JUMPIFNOTEQKS                    R3 K2 ["CHAR"] ; [+12]
       68 GETUPVAL                         R4 1
       69 GETUPVAL                         R6 0
       70 GETUPVAL                         R7 0
       71 ADDK                             R7 R7 K3 [1]
       72 SETUPVAL                         R7 0
       73 MOVE                             R5 R6
       74 GETTABLE                         R3 R4 R5
       75 GETTABLEKS                       R3 R3 K4 ["value"]
       77 MOVE                             R2 R3
       78 JUMP                             ; [+1]
       79 LOADNIL                          R2
       80 JUMPIF                           R2 ; [+24]
       81 GETUPVAL                         R3 0
       82 GETUPVAL                         R5 1
       83 LENGTH                           R4 R5
       84 JUMPIFNOTLE                      R3 R4 ; [+19]
       86 GETUPVAL                         R4 1
       87 GETUPVAL                         R5 0
       88 GETTABLE                         R3 R4 R5
       89 GETTABLEKS                       R3 R3 K1 ["type"]
       91 JUMPIFNOTEQKS                    R3 K5 ["ESCAPED_CHAR"] ; [+12]
       93 GETUPVAL                         R4 1
       94 GETUPVAL                         R6 0
       95 GETUPVAL                         R7 0
       96 ADDK                             R7 R7 K3 [1]
       97 SETUPVAL                         R7 0
       98 MOVE                             R5 R6
       99 GETTABLE                         R3 R4 R5
      100 GETTABLEKS                       R3 R3 K4 ["value"]
      102 MOVE                             R2 R3
      103 JUMP                             ; [+1]
      104 LOADNIL                          R2
      105 MOVE                             R1 R2
      106 JUMPBACK                         ; [-57]
      107 RETURN                           R0 1

PROTO_11:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LOADK                            R4 K0 ["./"]
        8 GETTABLEKS                       R5 R2 K1 ["prefixes"]
       10 JUMPIFEQKNIL                     R5 ; [+7]
       12 GETTABLEKS                       R5 R2 K1 ["prefixes"]
       14 JUMPIFEQKS                       R5 K2 [""] ; [+3]
       16 GETTABLEKS                       R4 R2 K1 ["prefixes"]
       18 GETIMPORT                        R5 K5 [string.format]
       20 LOADK                            R6 K6 ["[^%s]+?"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R9 R2 K8 ["delimiter"]
       24 ORK                              R8 R9 K7 ["/#?"]
       25 CALL                             R7 1 -1
       26 CALL                             R5 -1 1
       27 NEWTABLE                         R6 0 0
       29 LOADN                            R7 0
       30 LOADN                            R8 1
       31 LOADK                            R9 K2 [""]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          REF R8
       34 NEWCLOSURE                       R11 P1
       35 CAPTURE                          REF R7
       36 NEWCLOSURE                       R12 P2
       37 CAPTURE                          REF R8
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R13 P3
       40 CAPTURE                          REF R8
       41 CAPTURE                          VAL R3
       42 NEWCLOSURE                       R14 P4
       43 CAPTURE                          REF R8
       44 CAPTURE                          VAL R3
       45 LENGTH                           R15 R3
       46 JUMPIFNOTLE                      R8 R15 ; [+289]
       48 LENGTH                           R16 R3
       49 JUMPIFNOTLE                      R8 R16 ; [+14]
       51 GETTABLE                         R16 R3 R8
       52 GETTABLEKS                       R16 R16 K9 ["type"]
       54 JUMPIFNOTEQKS                    R16 K10 ["CHAR"] ; [+9]
       56 MOVE                             R18 R8
       57 ADDK                             R8 R8 K11 [1]
       58 MOVE                             R17 R18
       59 GETTABLE                         R16 R3 R17
       60 GETTABLEKS                       R16 R16 K12 ["value"]
       62 MOVE                             R15 R16
       63 JUMP                             ; [+1]
       64 LOADNIL                          R15
       65 LENGTH                           R17 R3
       66 JUMPIFNOTLE                      R8 R17 ; [+14]
       68 GETTABLE                         R17 R3 R8
       69 GETTABLEKS                       R17 R17 K9 ["type"]
       71 JUMPIFNOTEQKS                    R17 K13 ["NAME"] ; [+9]
       73 MOVE                             R19 R8
       74 ADDK                             R8 R8 K11 [1]
       75 MOVE                             R18 R19
       76 GETTABLE                         R17 R3 R18
       77 GETTABLEKS                       R17 R17 K12 ["value"]
       79 MOVE                             R16 R17
       80 JUMP                             ; [+1]
       81 LOADNIL                          R16
       82 LENGTH                           R18 R3
       83 JUMPIFNOTLE                      R8 R18 ; [+14]
       85 GETTABLE                         R18 R3 R8
       86 GETTABLEKS                       R18 R18 K9 ["type"]
       88 JUMPIFNOTEQKS                    R18 K14 ["PATTERN"] ; [+9]
       90 MOVE                             R20 R8
       91 ADDK                             R8 R8 K11 [1]
       92 MOVE                             R19 R20
       93 GETTABLE                         R18 R3 R19
       94 GETTABLEKS                       R18 R18 K12 ["value"]
       96 MOVE                             R17 R18
       97 JUMP                             ; [+1]
       98 LOADNIL                          R17
       99 JUMPIFNOT                        R16 ; [+2]
      100 JUMPIFNOTEQKS                    R16 K2 [""] ; [+4]
      102 JUMPIFNOT                        R17 ; [+77]
      103 JUMPIFEQKS                       R17 K2 [""] ; [+76]
      105 ORK                              R18 R15 K2 [""]
      106 GETIMPORT                        R19 K16 [string.find]
      108 MOVE                             R20 R4
      109 MOVE                             R21 R18
      110 CALL                             R19 2 1
      111 JUMPIFNOTEQKNIL                  R19 ; [+5]
      113 MOVE                             R19 R9
      114 MOVE                             R20 R18
      115 CONCAT                           R9 R19 R20
      116 LOADK                            R18 K2 [""]
      117 JUMPIFEQKNIL                     R9 ; [+11]
      119 JUMPIFEQKS                       R9 K2 [""] ; [+9]
      121 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
      123 MOVE                             R20 R6
      124 MOVE                             R21 R9
      125 GETIMPORT                        R19 K19 [table.insert]
      127 CALL                             R19 2 0
      128 LOADK                            R9 K2 [""]
      129 MOVE                             R19 R16
      130 JUMPIFEQKNIL                     R16 ; [+3]
      132 JUMPIFNOTEQKS                    R16 K2 [""] ; [+4]
      134 MOVE                             R20 R7
      135 ADDK                             R7 R7 K11 [1]
      136 MOVE                             R19 R20
      137 MOVE                             R20 R17
      138 JUMPIFEQKNIL                     R17 ; [+3]
      140 JUMPIFNOTEQKS                    R17 K2 [""] ; [+2]
      142 MOVE                             R20 R5
      143 DUPTABLE                         R23 K25 [{"name", "prefix", "suffix", "pattern", "modifier"}]
      144 SETTABLEKS                       R19 R23 K20 ["name"]
      146 SETTABLEKS                       R18 R23 K21 ["prefix"]
      148 LOADK                            R24 K2 [""]
      149 SETTABLEKS                       R24 R23 K22 ["suffix"]
      151 SETTABLEKS                       R20 R23 K23 ["pattern"]
      153 LENGTH                           R26 R3
      154 JUMPIFNOTLE                      R8 R26 ; [+14]
      156 GETTABLE                         R26 R3 R8
      157 GETTABLEKS                       R26 R26 K9 ["type"]
      159 JUMPIFNOTEQKS                    R26 K26 ["MODIFIER"] ; [+9]
      161 MOVE                             R28 R8
      162 ADDK                             R8 R8 K11 [1]
      163 MOVE                             R27 R28
      164 GETTABLE                         R26 R3 R27
      165 GETTABLEKS                       R26 R26 K12 ["value"]
      167 MOVE                             R25 R26
      168 JUMP                             ; [+1]
      169 LOADNIL                          R25
      170 ORK                              R24 R25 K2 [""]
      171 SETTABLEKS                       R24 R23 K24 ["modifier"]
      173 FASTCALL2                        TABLE_INSERT R6 R23 ; [+4]
      175 MOVE                             R22 R6
      176 GETIMPORT                        R21 K19 [table.insert]
      178 CALL                             R21 2 0
      179 JUMP                             ; [+155]
      180 MOVE                             R18 R15
      181 JUMPIF                           R18 ; [+17]
      182 LENGTH                           R19 R3
      183 JUMPIFNOTLE                      R8 R19 ; [+14]
      185 GETTABLE                         R19 R3 R8
      186 GETTABLEKS                       R19 R19 K9 ["type"]
      188 JUMPIFNOTEQKS                    R19 K27 ["ESCAPED_CHAR"] ; [+9]
      190 MOVE                             R21 R8
      191 ADDK                             R8 R8 K11 [1]
      192 MOVE                             R20 R21
      193 GETTABLE                         R19 R3 R20
      194 GETTABLEKS                       R19 R19 K12 ["value"]
      196 MOVE                             R18 R19
      197 JUMP                             ; [+1]
      198 LOADNIL                          R18
      199 JUMPIFNOT                        R18 ; [+6]
      200 JUMPIFEQKS                       R18 K2 [""] ; [+5]
      202 MOVE                             R19 R9
      203 MOVE                             R20 R18
      204 CONCAT                           R9 R19 R20
      205 JUMP                             ; [+129]
      206 JUMPIFNOT                        R9 ; [+10]
      207 JUMPIFEQKS                       R9 K2 [""] ; [+9]
      209 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
      211 MOVE                             R20 R6
      212 MOVE                             R21 R9
      213 GETIMPORT                        R19 K19 [table.insert]
      215 CALL                             R19 2 0
      216 LOADK                            R9 K2 [""]
      217 LENGTH                           R20 R3
      218 JUMPIFNOTLE                      R8 R20 ; [+14]
      220 GETTABLE                         R20 R3 R8
      221 GETTABLEKS                       R20 R20 K9 ["type"]
      223 JUMPIFNOTEQKS                    R20 K28 ["OPEN"] ; [+9]
      225 MOVE                             R22 R8
      226 ADDK                             R8 R8 K11 [1]
      227 MOVE                             R21 R22
      228 GETTABLE                         R20 R3 R21
      229 GETTABLEKS                       R20 R20 K12 ["value"]
      231 MOVE                             R19 R20
      232 JUMP                             ; [+1]
      233 LOADNIL                          R19
      234 JUMPIFNOT                        R19 ; [+97]
      235 JUMPIFEQKS                       R19 K2 [""] ; [+96]
      237 MOVE                             R20 R14
      238 CALL                             R20 0 1
      239 LENGTH                           R23 R3
      240 JUMPIFNOTLE                      R8 R23 ; [+14]
      242 GETTABLE                         R23 R3 R8
      243 GETTABLEKS                       R23 R23 K9 ["type"]
      245 JUMPIFNOTEQKS                    R23 K13 ["NAME"] ; [+9]
      247 MOVE                             R25 R8
      248 ADDK                             R8 R8 K11 [1]
      249 MOVE                             R24 R25
      250 GETTABLE                         R23 R3 R24
      251 GETTABLEKS                       R23 R23 K12 ["value"]
      253 MOVE                             R22 R23
      254 JUMP                             ; [+1]
      255 LOADNIL                          R22
      256 ORK                              R21 R22 K2 [""]
      257 LENGTH                           R24 R3
      258 JUMPIFNOTLE                      R8 R24 ; [+14]
      260 GETTABLE                         R24 R3 R8
      261 GETTABLEKS                       R24 R24 K9 ["type"]
      263 JUMPIFNOTEQKS                    R24 K14 ["PATTERN"] ; [+9]
      265 MOVE                             R26 R8
      266 ADDK                             R8 R8 K11 [1]
      267 MOVE                             R25 R26
      268 GETTABLE                         R24 R3 R25
      269 GETTABLEKS                       R24 R24 K12 ["value"]
      271 MOVE                             R23 R24
      272 JUMP                             ; [+1]
      273 LOADNIL                          R23
      274 ORK                              R22 R23 K2 [""]
      275 MOVE                             R23 R14
      276 CALL                             R23 0 1
      277 MOVE                             R24 R13
      278 LOADK                            R25 K29 ["CLOSE"]
      279 CALL                             R24 1 0
      280 JUMPIFNOTEQKS                    R21 K2 [""] ; [+6]
      282 JUMPIFEQKS                       R22 K2 [""] ; [+4]
      284 MOVE                             R24 R7
      285 ADDK                             R7 R7 K11 [1]
      286 MOVE                             R21 R24
      287 JUMPIFEQKS                       R21 K2 [""] ; [+8]
      289 JUMPIFEQKN                       R21 K30 [0] ; [+6]
      291 JUMPIFEQKNIL                     R22 ; [+3]
      293 JUMPIFNOTEQKS                    R22 K2 [""] ; [+2]
      295 MOVE                             R22 R5
      296 DUPTABLE                         R26 K31 [{"name", "pattern", "prefix", "suffix", "modifier"}]
      297 SETTABLEKS                       R21 R26 K20 ["name"]
      299 SETTABLEKS                       R22 R26 K23 ["pattern"]
      301 SETTABLEKS                       R20 R26 K21 ["prefix"]
      303 SETTABLEKS                       R23 R26 K22 ["suffix"]
      305 LENGTH                           R29 R3
      306 JUMPIFNOTLE                      R8 R29 ; [+14]
      308 GETTABLE                         R29 R3 R8
      309 GETTABLEKS                       R29 R29 K9 ["type"]
      311 JUMPIFNOTEQKS                    R29 K26 ["MODIFIER"] ; [+9]
      313 MOVE                             R31 R8
      314 ADDK                             R8 R8 K11 [1]
      315 MOVE                             R30 R31
      316 GETTABLE                         R29 R3 R30
      317 GETTABLEKS                       R29 R29 K12 ["value"]
      319 MOVE                             R28 R29
      320 JUMP                             ; [+1]
      321 LOADNIL                          R28
      322 ORK                              R27 R28 K2 [""]
      323 SETTABLEKS                       R27 R26 K24 ["modifier"]
      325 FASTCALL2                        TABLE_INSERT R6 R26 ; [+4]
      327 MOVE                             R25 R6
      328 GETIMPORT                        R24 K19 [table.insert]
      330 CALL                             R24 2 0
      331 JUMP                             ; [+3]
      332 MOVE                             R20 R13
      333 LOADK                            R21 K32 ["END"]
      334 CALL                             R20 1 0
      335 JUMPBACK                         ; [-291]
      336 CLOSEUPVALS                      R7
      337 RETURN                           R6 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["tokensToFunction"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["parse"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R3 2 1
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_13:
        0 RETURN                           R0 1

PROTO_14:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+11]
        7 GETUPVAL                         R1 0
        8 LOADK                            R2 K3 ["^(?:%s)$"]
        9 GETTABLEKS                       R4 R0 K4 ["pattern"]
       11 NAMECALL                         R2 R2 K5 ["format"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R1 K0 [""]
        1 GETUPVAL                         R2 0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 FASTCALL1                        TYPE R6 ; [+3]
        6 MOVE                             R8 R6
        7 GETIMPORT                        R7 K2 [type]
        9 CALL                             R7 1 1
       10 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+5]
       12 MOVE                             R7 R1
       13 MOVE                             R8 R6
       14 CONCAT                           R1 R7 R8
       15 JUMP                             ; [+170]
       16 JUMPIFNOT                        R0 ; [+8]
       17 GETTABLEKS                       R9 R6 K4 ["name"]
       19 FASTCALL1                        TOSTRING R9 ; [+2]
       20 GETIMPORT                        R8 K6 [tostring]
       22 CALL                             R8 1 1
       23 GETTABLE                         R7 R0 R8
       24 JUMP                             ; [+1]
       25 LOADNIL                          R7
       26 LOADB                            R8 1
       27 GETTABLEKS                       R9 R6 K7 ["modifier"]
       29 JUMPIFEQKS                       R9 K8 ["?"] ; [+7]
       31 GETTABLEKS                       R9 R6 K7 ["modifier"]
       33 JUMPIFEQKS                       R9 K9 ["*"] ; [+2]
       35 LOADB                            R8 0 +1
       36 LOADB                            R8 1
       37 LOADB                            R9 1
       38 GETTABLEKS                       R10 R6 K7 ["modifier"]
       40 JUMPIFEQKS                       R10 K9 ["*"] ; [+7]
       42 GETTABLEKS                       R10 R6 K7 ["modifier"]
       44 JUMPIFEQKS                       R10 K10 ["+"] ; [+2]
       46 LOADB                            R9 0 +1
       47 LOADB                            R9 1
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K11 ["isArray"]
       51 MOVE                             R11 R7
       52 CALL                             R10 1 1
       53 JUMPIFNOT                        R10 ; [+65]
       54 JUMPIF                           R9 ; [+10]
       55 GETIMPORT                        R10 K13 [error]
       57 LOADK                            R12 K14 ["Expected \"%s\" to not repeat, but got an array"]
       58 GETTABLEKS                       R14 R6 K4 ["name"]
       60 NAMECALL                         R12 R12 K15 ["format"]
       62 CALL                             R12 2 1
       63 MOVE                             R11 R12
       64 CALL                             R10 1 0
       65 LENGTH                           R10 R7
       66 JUMPIFNOTEQKN                    R10 K16 [0] ; [+12]
       68 JUMPIF                           R8 ; [+117]
       69 GETIMPORT                        R10 K13 [error]
       71 LOADK                            R12 K17 ["Expected \"%s\" to not be empty"]
       72 GETTABLEKS                       R14 R6 K4 ["name"]
       74 NAMECALL                         R12 R12 K15 ["format"]
       76 CALL                             R12 2 1
       77 MOVE                             R11 R12
       78 CALL                             R10 1 0
       79 MOVE                             R10 R7
       80 LOADNIL                          R11
       81 LOADNIL                          R12
       82 FORGPREP                         R10
       83 GETUPVAL                         R15 2
       84 MOVE                             R16 R14
       85 MOVE                             R17 R6
       86 CALL                             R15 2 1
       87 GETUPVAL                         R16 3
       88 JUMPIFNOT                        R16 ; [+20]
       89 GETUPVAL                         R17 4
       90 GETTABLE                         R16 R17 R5
       91 MOVE                             R18 R15
       92 NAMECALL                         R16 R16 K18 ["test"]
       94 CALL                             R16 2 1
       95 JUMPIF                           R16 ; [+13]
       96 GETIMPORT                        R16 K13 [error]
       98 LOADK                            R18 K19 ["Expected all \"%s\" to match \"%s\", but got \"%s\""]
       99 GETTABLEKS                       R20 R6 K4 ["name"]
      101 GETTABLEKS                       R21 R6 K20 ["pattern"]
      103 MOVE                             R22 R15
      104 NAMECALL                         R18 R18 K15 ["format"]
      106 CALL                             R18 4 1
      107 MOVE                             R17 R18
      108 CALL                             R16 1 0
      109 MOVE                             R16 R1
      110 GETTABLEKS                       R17 R6 K21 ["prefix"]
      112 MOVE                             R18 R15
      113 GETTABLEKS                       R19 R6 K22 ["suffix"]
      115 CONCAT                           R1 R16 R19
      116 FORGLOOP                         R10 2 ; [-34]
      118 JUMP                             ; [+67]
      119 FASTCALL1                        TYPE R7 ; [+3]
      120 MOVE                             R11 R7
      121 GETIMPORT                        R10 K2 [type]
      123 CALL                             R10 1 1
      124 JUMPIFEQKS                       R10 K3 ["string"] ; [+3]
      126 JUMPIFNOTEQKS                    R10 K23 ["number"] ; [+39]
      128 GETUPVAL                         R11 2
      129 FASTCALL1                        TOSTRING R7 ; [+3]
      130 MOVE                             R13 R7
      131 GETIMPORT                        R12 K6 [tostring]
      133 CALL                             R12 1 1
      134 MOVE                             R13 R6
      135 CALL                             R11 2 1
      136 GETUPVAL                         R12 3
      137 JUMPIFNOT                        R12 ; [+20]
      138 GETUPVAL                         R13 4
      139 GETTABLE                         R12 R13 R5
      140 MOVE                             R14 R11
      141 NAMECALL                         R12 R12 K18 ["test"]
      143 CALL                             R12 2 1
      144 JUMPIF                           R12 ; [+13]
      145 GETIMPORT                        R12 K13 [error]
      147 LOADK                            R14 K24 ["Expected \"%s\" to match \"%s\", but got \"%s\""]
      148 GETTABLEKS                       R16 R6 K4 ["name"]
      150 GETTABLEKS                       R17 R6 K20 ["pattern"]
      152 MOVE                             R18 R11
      153 NAMECALL                         R14 R14 K15 ["format"]
      155 CALL                             R14 4 1
      156 MOVE                             R13 R14
      157 CALL                             R12 1 0
      158 MOVE                             R12 R1
      159 GETTABLEKS                       R13 R6 K21 ["prefix"]
      161 MOVE                             R14 R11
      162 GETTABLEKS                       R15 R6 K22 ["suffix"]
      164 CONCAT                           R1 R12 R15
      165 JUMP                             ; [+20]
      166 JUMPIF                           R8 ; [+19]
      167 JUMPIFNOT                        R9 ; [+2]
      168 LOADK                            R11 K25 ["an array"]
      169 JUMP                             ; [+1]
      170 LOADK                            R11 K26 ["a string"]
      171 GETIMPORT                        R12 K13 [error]
      173 LOADK                            R14 K27 ["Expected \"%s\" to be %s"]
      174 GETTABLEKS                       R17 R6 K4 ["name"]
      176 FASTCALL1                        TOSTRING R17 ; [+2]
      177 GETIMPORT                        R16 K6 [tostring]
      179 CALL                             R16 1 1
      180 MOVE                             R17 R11
      181 NAMECALL                         R14 R14 K15 ["format"]
      183 CALL                             R14 3 1
      184 MOVE                             R13 R14
      185 CALL                             R12 1 0
      186 FORGLOOP                         R2 2 ; [-182]
      188 RETURN                           R1 1

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R2 R1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R2 K0 ["encode"]
       10 JUMPIF                           R4 ; [+1]
       11 DUPCLOSURE                       R4 K1 [PROTO_13]
       12 GETTABLEKS                       R5 R2 K2 ["validate"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 LOADB                            R5 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K3 ["map"]
       20 MOVE                             R7 R0
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R3
       24 CALL                             R6 2 1
       25 NEWCLOSURE                       R7 P2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          REF R5
       30 CAPTURE                          VAL R6
       31 CLOSEUPVALS                      R5
       32 RETURN                           R7 1

PROTO_17:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["pathToRegexp"]
        5 MOVE                             R4 R0
        6 MOVE                             R5 R2
        7 MOVE                             R6 R1
        8 CALL                             R3 3 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["regexpToFunction"]
       12 MOVE                             R5 R3
       13 MOVE                             R6 R2
       14 MOVE                             R7 R1
       15 CALL                             R4 3 -1
       16 RETURN                           R4 -1

PROTO_18:
        0 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["exec"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 GETTABLEKS                       R4 R1 K2 ["index"]
       11 ORK                              R3 R4 K1 [0]
       12 NEWTABLE                         R4 0 0
       14 LOADN                            R7 2
       15 GETTABLEKS                       R5 R1 K3 ["n"]
       17 LOADN                            R6 1
       18 FORNPREP                         R5
       19 GETTABLE                         R8 R1 R7
       20 JUMPIFEQKNIL                     R8 ; [+39]
       22 GETUPVAL                         R9 1
       23 SUBK                             R10 R7 K4 [1]
       24 GETTABLE                         R8 R9 R10
       25 GETTABLEKS                       R9 R8 K5 ["modifier"]
       27 JUMPIFEQKS                       R9 K6 ["*"] ; [+5]
       29 GETTABLEKS                       R9 R8 K5 ["modifier"]
       31 JUMPIFNOTEQKS                    R9 K7 ["+"] ; [+21]
       33 GETTABLEKS                       R9 R8 K8 ["name"]
       35 GETUPVAL                         R10 2
       36 GETTABLEKS                       R10 R10 K9 ["map"]
       38 GETIMPORT                        R11 K12 [string.split]
       40 GETTABLE                         R12 R1 R7
       41 GETTABLEKS                       R14 R8 K13 ["prefix"]
       43 GETTABLEKS                       R15 R8 K14 ["suffix"]
       45 CONCAT                           R13 R14 R15
       46 CALL                             R11 2 1
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R8
       50 CALL                             R10 2 1
       51 SETTABLE                         R10 R4 R9
       52 JUMP                             ; [+7]
       53 GETTABLEKS                       R9 R8 K8 ["name"]
       55 GETUPVAL                         R10 3
       56 GETTABLE                         R11 R1 R7
       57 MOVE                             R12 R8
       58 CALL                             R10 2 1
       59 SETTABLE                         R10 R4 R9
       60 FORNLOOP                         R5
       61 DUPTABLE                         R5 K17 [{"path", "index", "params"}]
       62 SETTABLEKS                       R2 R5 K15 ["path"]
       64 SETTABLEKS                       R3 R5 K2 ["index"]
       66 SETTABLEKS                       R4 R5 K16 ["params"]
       68 RETURN                           R5 1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R2 ; [+3]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R2 K0 ["decode"]
        6 JUMPIF                           R3 ; [+1]
        7 DUPCLOSURE                       R3 K1 [PROTO_18]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R3
       13 RETURN                           R4 1

PROTO_22:
        0 LOADK                            R2 K0 ["\\"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_23:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[%.%+%*%?=%^!:${}%(%)%[%]|/\\]"]
        4 DUPCLOSURE                       R4 K4 [PROTO_22]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_24:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["sensitive"]
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADK                            R1 K1 [""]
        5 RETURN                           R1 1
        6 LOADK                            R1 K2 ["i"]
        7 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pathToRegexp"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETTABLEKS                       R1 R1 K1 ["source"]
        9 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 MOVE                             R4 R0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CALL                             R3 2 1
        9 GETUPVAL                         R4 2
       10 LOADK                            R5 K1 ["(?:%s)"]
       11 GETIMPORT                        R7 K4 [table.concat]
       13 MOVE                             R8 R3
       14 LOADK                            R9 K5 ["|"]
       15 CALL                             R7 2 -1
       16 NAMECALL                         R5 R5 K6 ["format"]
       18 CALL                             R5 -1 1
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R2
       21 CALL                             R6 1 -1
       22 CALL                             R4 -1 -1
       23 RETURN                           R4 -1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["tokensToRegexp"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["parse"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R2
        8 CALL                             R4 2 1
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 -1
       12 RETURN                           R3 -1

PROTO_28:
        0 RETURN                           R0 1

PROTO_29:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFEQKNIL                     R2 ; [+2]
        4 MOVE                             R3 R2
        5 GETTABLEKS                       R4 R3 K0 ["strict"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R4 0
       10 GETTABLEKS                       R5 R3 K1 ["start"]
       12 JUMPIFNOTEQKNIL                  R5 ; [+2]
       14 LOADB                            R5 1
       15 GETTABLEKS                       R6 R3 K2 ["end_"]
       17 JUMPIFNOTEQKNIL                  R6 ; [+2]
       19 LOADB                            R6 1
       20 GETTABLEKS                       R7 R3 K3 ["encode"]
       22 JUMPIF                           R7 ; [+1]
       23 DUPCLOSURE                       R7 K4 [PROTO_28]
       24 GETTABLEKS                       R9 R3 K5 ["endsWith"]
       26 JUMPIFNOT                        R9 ; [+10]
       27 LOADK                            R8 K6 ["[%s]|$"]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R12 R3 K5 ["endsWith"]
       31 ORK                              R11 R12 K7 [""]
       32 CALL                             R10 1 -1
       33 NAMECALL                         R8 R8 K8 ["format"]
       35 CALL                             R8 -1 1
       36 JUMP                             ; [+1]
       37 LOADK                            R8 K9 ["$"]
       38 LOADK                            R9 K10 ["[%s]"]
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R13 R3 K12 ["delimiter"]
       42 ORK                              R12 R13 K11 ["/#?"]
       43 CALL                             R11 1 -1
       44 NAMECALL                         R9 R9 K8 ["format"]
       46 CALL                             R9 -1 1
       47 JUMPIFNOT                        R5 ; [+2]
       48 LOADK                            R10 K13 ["^"]
       49 JUMP                             ; [+1]
       50 LOADK                            R10 K7 [""]
       51 MOVE                             R11 R0
       52 LOADNIL                          R12
       53 LOADNIL                          R13
       54 FORGPREP                         R11
       55 FASTCALL1                        TYPE R15 ; [+3]
       56 MOVE                             R17 R15
       57 GETIMPORT                        R16 K15 [type]
       59 CALL                             R16 1 1
       60 JUMPIFNOTEQKS                    R16 K16 ["string"] ; [+9]
       62 MOVE                             R16 R10
       63 GETUPVAL                         R17 0
       64 MOVE                             R18 R7
       65 MOVE                             R19 R15
       66 CALL                             R18 1 -1
       67 CALL                             R17 -1 1
       68 CONCAT                           R10 R16 R17
       69 JUMP                             ; [+98]
       70 GETUPVAL                         R16 0
       71 MOVE                             R17 R7
       72 GETTABLEKS                       R18 R15 K17 ["prefix"]
       74 CALL                             R17 1 -1
       75 CALL                             R16 -1 1
       76 GETUPVAL                         R17 0
       77 MOVE                             R18 R7
       78 GETTABLEKS                       R19 R15 K18 ["suffix"]
       80 CALL                             R18 1 -1
       81 CALL                             R17 -1 1
       82 GETTABLEKS                       R18 R15 K19 ["pattern"]
       84 JUMPIFNOT                        R18 ; [+73]
       85 GETTABLEKS                       R18 R15 K19 ["pattern"]
       87 JUMPIFEQKS                       R18 K7 [""] ; [+70]
       89 JUMPIFNOT                        R1 ; [+7]
       90 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
       92 MOVE                             R19 R1
       93 MOVE                             R20 R15
       94 GETIMPORT                        R18 K22 [table.insert]
       96 CALL                             R18 2 0
       97 JUMPIFNOT                        R16 ; [+2]
       98 JUMPIFNOTEQKS                    R16 K7 [""] ; [+4]
      100 JUMPIFNOT                        R17 ; [+46]
      101 JUMPIFEQKS                       R17 K7 [""] ; [+45]
      103 GETTABLEKS                       R18 R15 K23 ["modifier"]
      105 JUMPIFEQKS                       R18 K24 ["+"] ; [+5]
      107 GETTABLEKS                       R18 R15 K23 ["modifier"]
      109 JUMPIFNOTEQKS                    R18 K25 ["*"] ; [+24]
      111 GETTABLEKS                       R19 R15 K23 ["modifier"]
      113 JUMPIFNOTEQKS                    R19 K25 ["*"] ; [+3]
      115 LOADK                            R18 K26 ["?"]
      116 JUMP                             ; [+1]
      117 LOADK                            R18 K7 [""]
      118 MOVE                             R19 R10
      119 LOADK                            R20 K27 ["(?:%s((?:%s)(?:%s%s(?:%s))*)%s)%s"]
      120 MOVE                             R22 R16
      121 GETTABLEKS                       R23 R15 K19 ["pattern"]
      123 MOVE                             R24 R17
      124 MOVE                             R25 R16
      125 GETTABLEKS                       R26 R15 K19 ["pattern"]
      127 MOVE                             R27 R17
      128 MOVE                             R28 R18
      129 NAMECALL                         R20 R20 K8 ["format"]
      131 CALL                             R20 8 1
      132 CONCAT                           R10 R19 R20
      133 JUMP                             ; [+34]
      134 MOVE                             R18 R10
      135 LOADK                            R19 K28 ["(?:%s(%s)%s)%s"]
      136 MOVE                             R21 R16
      137 GETTABLEKS                       R22 R15 K19 ["pattern"]
      139 MOVE                             R23 R17
      140 GETTABLEKS                       R24 R15 K23 ["modifier"]
      142 NAMECALL                         R19 R19 K8 ["format"]
      144 CALL                             R19 5 1
      145 CONCAT                           R10 R18 R19
      146 JUMP                             ; [+21]
      147 MOVE                             R18 R10
      148 LOADK                            R19 K29 ["(%s)%s"]
      149 GETTABLEKS                       R21 R15 K19 ["pattern"]
      151 GETTABLEKS                       R22 R15 K23 ["modifier"]
      153 NAMECALL                         R19 R19 K8 ["format"]
      155 CALL                             R19 3 1
      156 CONCAT                           R10 R18 R19
      157 JUMP                             ; [+10]
      158 MOVE                             R18 R10
      159 LOADK                            R19 K30 ["(?:%s%s)%s"]
      160 MOVE                             R21 R16
      161 MOVE                             R22 R17
      162 GETTABLEKS                       R23 R15 K23 ["modifier"]
      164 NAMECALL                         R19 R19 K8 ["format"]
      166 CALL                             R19 4 1
      167 CONCAT                           R10 R18 R19
      168 FORGLOOP                         R11 2 ; [-114]
      170 JUMPIFNOT                        R6 ; [+27]
      171 JUMPIF                           R4 ; [+7]
      172 MOVE                             R11 R10
      173 LOADK                            R12 K31 ["%s?"]
      174 MOVE                             R14 R9
      175 NAMECALL                         R12 R12 K8 ["format"]
      177 CALL                             R12 2 1
      178 CONCAT                           R10 R11 R12
      179 GETTABLEKS                       R11 R3 K5 ["endsWith"]
      181 JUMPIFNOT                        R11 ; [+12]
      182 GETTABLEKS                       R11 R3 K5 ["endsWith"]
      184 JUMPIFEQKS                       R11 K7 [""] ; [+9]
      186 MOVE                             R11 R10
      187 LOADK                            R12 K32 ["(?=%s)"]
      188 MOVE                             R14 R8
      189 NAMECALL                         R12 R12 K8 ["format"]
      191 CALL                             R12 2 1
      192 CONCAT                           R10 R11 R12
      193 JUMP                             ; [+47]
      194 MOVE                             R11 R10
      195 LOADK                            R12 K9 ["$"]
      196 CONCAT                           R10 R11 R12
      197 JUMP                             ; [+43]
      198 LENGTH                           R12 R0
      199 GETTABLE                         R11 R0 R12
      200 JUMPIFEQKNIL                     R11 ; [+2]
      202 LOADB                            R12 0 +1
      203 LOADB                            R12 1
      204 FASTCALL1                        TYPE R11 ; [+3]
      205 MOVE                             R14 R11
      206 GETIMPORT                        R13 K15 [type]
      208 CALL                             R13 1 1
      209 JUMPIFNOTEQKS                    R13 K16 ["string"] ; [+13]
      211 GETIMPORT                        R13 K34 [string.find]
      213 MOVE                             R14 R9
      214 LOADN                            R17 255
      215 NAMECALL                         R15 R11 K35 ["sub"]
      217 CALL                             R15 2 -1
      218 CALL                             R13 -1 1
      219 JUMPIFNOTEQKNIL                  R13 ; [+2]
      221 LOADB                            R12 0 +1
      222 LOADB                            R12 1
      223 JUMPIF                           R4 ; [+8]
      224 MOVE                             R13 R10
      225 GETIMPORT                        R14 K36 [string.format]
      227 LOADK                            R15 K37 ["(?:%s(?=%s))?"]
      228 MOVE                             R16 R9
      229 MOVE                             R17 R8
      230 CALL                             R14 3 1
      231 CONCAT                           R10 R13 R14
      232 JUMPIF                           R12 ; [+8]
      233 MOVE                             R13 R10
      234 GETIMPORT                        R14 K36 [string.format]
      236 LOADK                            R15 K38 ["(?=%s|%s)"]
      237 MOVE                             R16 R9
      238 MOVE                             R17 R8
      239 CALL                             R14 3 1
      240 CONCAT                           R10 R13 R14
      241 GETUPVAL                         R11 1
      242 MOVE                             R12 R10
      243 GETUPVAL                         R13 2
      244 MOVE                             R14 R3
      245 CALL                             R13 1 -1
      246 CALL                             R11 -1 -1
      247 RETURN                           R11 -1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isArray"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+6]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Array"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["RegExp"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K8 [PROTO_0]
       22 NEWTABLE                         R6 8 0
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 DUPCLOSURE                       R9 K9 [PROTO_5]
       27 NEWCLOSURE                       R10 P2
       28 CAPTURE                          VAL R9
       29 CAPTURE                          REF R7
       30 SETTABLEKS                       R10 R6 K10 ["parse"]
       32 DUPCLOSURE                       R10 K11 [PROTO_12]
       33 CAPTURE                          VAL R6
       34 SETTABLEKS                       R10 R6 K12 ["compile"]
       36 NEWCLOSURE                       R10 P4
       37 CAPTURE                          REF R8
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R10 R6 K13 ["tokensToFunction"]
       42 DUPCLOSURE                       R10 K14 [PROTO_17]
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R10 R6 K15 ["match"]
       46 DUPCLOSURE                       R10 K16 [PROTO_21]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R10 R6 K17 ["regexpToFunction"]
       50 DUPCLOSURE                       R7 K18 [PROTO_23]
       51 DUPCLOSURE                       R8 K19 [PROTO_24]
       52 NEWCLOSURE                       R10 P9
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 CAPTURE                          REF R8
       57 DUPCLOSURE                       R11 K20 [PROTO_27]
       58 CAPTURE                          VAL R6
       59 NEWCLOSURE                       R12 P11
       60 CAPTURE                          REF R7
       61 CAPTURE                          VAL R4
       62 CAPTURE                          REF R8
       63 SETTABLEKS                       R12 R6 K21 ["tokensToRegexp"]
       65 DUPCLOSURE                       R12 K22 [PROTO_30]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R11
       69 SETTABLEKS                       R12 R6 K23 ["pathToRegexp"]
       71 CLOSEUPVALS                      R7
       72 RETURN                           R6 1
