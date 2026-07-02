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
       12 JUMPIFNOTLE                      R2 R5 ; [+395]
       14 FASTCALL3                        STRING_SUB R0 R2 R2
       16 MOVE                             R7 R0
       17 MOVE                             R8 R2
       18 MOVE                             R9 R2
       19 GETIMPORT                        R6 K4 [string.sub]
       21 CALL                             R6 3 1
       22 JUMPIFEQKS                       R6 K5 ["*"] ; [+5]
       24 JUMPIFEQKS                       R6 K6 ["+"] ; [+3]
       26 JUMPIFNOTEQKS                    R6 K7 ["?"] ; [+25]
       28 DUPTABLE                         R9 K12 [{["type"] = "MODIFIER", ["index"], ["value"]}]
       29 SETTABLEKS                       R2 R9 K10 ["index"]
       31 MOVE                             R12 R2
       32 ADDK                             R2 R2 K13 [1]
       33 MOVE                             R11 R12
       34 FASTCALL3                        STRING_SUB R0 R11 R11
       36 MOVE                             R13 R0
       37 MOVE                             R14 R11
       38 MOVE                             R15 R11
       39 GETIMPORT                        R12 K4 [string.sub]
       41 CALL                             R12 3 1
       42 MOVE                             R10 R12
       43 SETTABLEKS                       R10 R9 K11 ["value"]
       45 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       47 MOVE                             R8 R1
       48 GETIMPORT                        R7 K16 [table.insert]
       50 CALL                             R7 2 0
       51 JUMP                             ; [+355]
       52 JUMPIFNOTEQKS                    R6 K17 ["\\"] ; [+28]
       54 DUPTABLE                         R9 K19 [{["type"] = "ESCAPED_CHAR", ["index"], ["value"]}]
       55 MOVE                             R11 R2
       56 ADDK                             R2 R2 K13 [1]
       57 MOVE                             R10 R11
       58 SETTABLEKS                       R10 R9 K10 ["index"]
       60 MOVE                             R12 R2
       61 ADDK                             R2 R2 K13 [1]
       62 MOVE                             R11 R12
       63 FASTCALL3                        STRING_SUB R0 R11 R11
       65 MOVE                             R13 R0
       66 MOVE                             R14 R11
       67 MOVE                             R15 R11
       68 GETIMPORT                        R12 K4 [string.sub]
       70 CALL                             R12 3 1
       71 MOVE                             R10 R12
       72 SETTABLEKS                       R10 R9 K11 ["value"]
       74 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       76 MOVE                             R8 R1
       77 GETIMPORT                        R7 K16 [table.insert]
       79 CALL                             R7 2 0
       80 JUMP                             ; [+326]
       81 JUMPIFNOTEQKS                    R6 K20 ["{"] ; [+25]
       83 DUPTABLE                         R9 K22 [{["type"] = "OPEN", ["index"], ["value"]}]
       84 SETTABLEKS                       R2 R9 K10 ["index"]
       86 MOVE                             R12 R2
       87 ADDK                             R2 R2 K13 [1]
       88 MOVE                             R11 R12
       89 FASTCALL3                        STRING_SUB R0 R11 R11
       91 MOVE                             R13 R0
       92 MOVE                             R14 R11
       93 MOVE                             R15 R11
       94 GETIMPORT                        R12 K4 [string.sub]
       96 CALL                             R12 3 1
       97 MOVE                             R10 R12
       98 SETTABLEKS                       R10 R9 K11 ["value"]
      100 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      102 MOVE                             R8 R1
      103 GETIMPORT                        R7 K16 [table.insert]
      105 CALL                             R7 2 0
      106 JUMP                             ; [+300]
      107 JUMPIFNOTEQKS                    R6 K23 ["}"] ; [+25]
      109 DUPTABLE                         R9 K25 [{["type"] = "CLOSE", ["index"], ["value"]}]
      110 SETTABLEKS                       R2 R9 K10 ["index"]
      112 MOVE                             R12 R2
      113 ADDK                             R2 R2 K13 [1]
      114 MOVE                             R11 R12
      115 FASTCALL3                        STRING_SUB R0 R11 R11
      117 MOVE                             R13 R0
      118 MOVE                             R14 R11
      119 MOVE                             R15 R11
      120 GETIMPORT                        R12 K4 [string.sub]
      122 CALL                             R12 3 1
      123 MOVE                             R10 R12
      124 SETTABLEKS                       R10 R9 K11 ["value"]
      126 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      128 MOVE                             R8 R1
      129 GETIMPORT                        R7 K16 [table.insert]
      131 CALL                             R7 2 0
      132 JUMP                             ; [+274]
      133 JUMPIFNOTEQKS                    R6 K26 [":"] ; [+77]
      135 LOADK                            R7 K27 [""]
      136 ADDK                             R8 R2 K13 [1]
      137 NEWCLOSURE                       R9 P2
      138 CAPTURE                          REF R8
      139 JUMPIFNOTLE                      R8 R5 ; [+45]
      141 FASTCALL2                        STRING_BYTE R0 R8 ; [+5]
      143 MOVE                             R11 R0
      144 MOVE                             R12 R8
      145 GETIMPORT                        R10 K29 [string.byte]
      147 CALL                             R10 2 1
      148 LOADN                            R11 48
      149 JUMPIFNOTLE                      R11 R10 ; [+4]
      151 LOADN                            R11 57
      152 JUMPIFLE                         R10 R11 ; [+15]
      154 LOADN                            R11 65
      155 JUMPIFNOTLE                      R11 R10 ; [+4]
      157 LOADN                            R11 90
      158 JUMPIFLE                         R10 R11 ; [+9]
      160 LOADN                            R11 97
      161 JUMPIFNOTLE                      R11 R10 ; [+4]
      163 LOADN                            R11 122
      164 JUMPIFLE                         R10 R11 ; [+3]
      166 JUMPIFNOTEQKN                    R10 K30 [95] ; [+18]
      168 MOVE                             R11 R7
      169 MOVE                             R14 R8
      170 ADDK                             R8 R8 K13 [1]
      171 MOVE                             R13 R14
      172 FASTCALL3                        STRING_SUB R0 R13 R13
      174 MOVE                             R15 R0
      175 MOVE                             R16 R13
      176 MOVE                             R17 R13
      177 GETIMPORT                        R14 K4 [string.sub]
      179 CALL                             R14 3 1
      180 MOVE                             R12 R14
      181 CONCAT                           R7 R11 R12
      182 JUMP                             ; [+1]
      183 JUMP                             ; [+1]
      184 JUMPBACK                         ; [-46]
      185 JUMPIFNOTEQKS                    R7 K27 [""] ; [+10]
      187 GETIMPORT                        R10 K32 [error]
      189 LOADK                            R12 K33 ["Missing parameter name at %d"]
      190 MOVE                             R14 R2
      191 NAMECALL                         R12 R12 K34 ["format"]
      193 CALL                             R12 2 1
      194 MOVE                             R11 R12
      195 CALL                             R10 1 0
      196 DUPTABLE                         R12 K36 [{["type"] = "NAME", ["index"], ["value"]}]
      197 SETTABLEKS                       R2 R12 K10 ["index"]
      199 SETTABLEKS                       R7 R12 K11 ["value"]
      201 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      203 MOVE                             R11 R1
      204 GETIMPORT                        R10 K16 [table.insert]
      206 CALL                             R10 2 0
      207 MOVE                             R2 R8
      208 CLOSEUPVALS                      R8
      209 JUMP                             ; [+197]
      210 CLOSEUPVALS                      R8
      211 JUMPIFNOTEQKS                    R6 K37 ["("] ; [+172]
      213 LOADN                            R7 1
      214 LOADK                            R8 K27 [""]
      215 ADDK                             R9 R2 K13 [1]
      216 MOVE                             R11 R9
      217 FASTCALL3                        STRING_SUB R0 R11 R11
      219 MOVE                             R13 R0
      220 MOVE                             R14 R11
      221 MOVE                             R15 R11
      222 GETIMPORT                        R12 K4 [string.sub]
      224 CALL                             R12 3 1
      225 MOVE                             R10 R12
      226 JUMPIFNOTEQKS                    R10 K7 ["?"] ; [+10]
      228 GETIMPORT                        R10 K32 [error]
      230 LOADK                            R12 K38 ["Pattern cannot start with \"?\" at %d"]
      231 MOVE                             R14 R9
      232 NAMECALL                         R12 R12 K34 ["format"]
      234 CALL                             R12 2 1
      235 MOVE                             R11 R12
      236 CALL                             R10 1 0
      237 NEWCLOSURE                       R10 P3
      238 CAPTURE                          REF R9
      239 JUMPIFNOTLE                      R9 R5 ; [+107]
      241 MOVE                             R12 R9
      242 FASTCALL3                        STRING_SUB R0 R12 R12
      244 MOVE                             R14 R0
      245 MOVE                             R15 R12
      246 MOVE                             R16 R12
      247 GETIMPORT                        R13 K4 [string.sub]
      249 CALL                             R13 3 1
      250 MOVE                             R11 R13
      251 JUMPIFNOTEQKS                    R11 K17 ["\\"] ; [+28]
      253 MOVE                             R11 R8
      254 MOVE                             R16 R9
      255 ADDK                             R9 R9 K13 [1]
      256 MOVE                             R15 R16
      257 FASTCALL3                        STRING_SUB R0 R15 R15
      259 MOVE                             R17 R0
      260 MOVE                             R18 R15
      261 MOVE                             R19 R15
      262 GETIMPORT                        R16 K4 [string.sub]
      264 CALL                             R16 3 1
      265 MOVE                             R13 R16
      266 MOVE                             R16 R9
      267 ADDK                             R9 R9 K13 [1]
      268 MOVE                             R15 R16
      269 FASTCALL3                        STRING_SUB R0 R15 R15
      271 MOVE                             R17 R0
      272 MOVE                             R18 R15
      273 MOVE                             R19 R15
      274 GETIMPORT                        R16 K4 [string.sub]
      276 CALL                             R16 3 1
      277 MOVE                             R14 R16
      278 CONCAT                           R12 R13 R14
      279 CONCAT                           R8 R11 R12
      280 MOVE                             R12 R9
      281 FASTCALL3                        STRING_SUB R0 R12 R12
      283 MOVE                             R14 R0
      284 MOVE                             R15 R12
      285 MOVE                             R16 R12
      286 GETIMPORT                        R13 K4 [string.sub]
      288 CALL                             R13 3 1
      289 MOVE                             R11 R13
      290 JUMPIFNOTEQKS                    R11 K39 [")"] ; [+7]
      292 SUBK                             R7 R7 K13 [1]
      293 JUMPIFNOTEQKN                    R7 K40 [0] ; [+38]
      295 ADDK                             R9 R9 K13 [1]
      296 JUMP                             ; [+50]
      297 JUMP                             ; [+34]
      298 MOVE                             R12 R9
      299 FASTCALL3                        STRING_SUB R0 R12 R12
      301 MOVE                             R14 R0
      302 MOVE                             R15 R12
      303 MOVE                             R16 R12
      304 GETIMPORT                        R13 K4 [string.sub]
      306 CALL                             R13 3 1
      307 MOVE                             R11 R13
      308 JUMPIFNOTEQKS                    R11 K37 ["("] ; [+23]
      310 ADDK                             R7 R7 K13 [1]
      311 ADDK                             R12 R9 K13 [1]
      312 FASTCALL3                        STRING_SUB R0 R12 R12
      314 MOVE                             R14 R0
      315 MOVE                             R15 R12
      316 MOVE                             R16 R12
      317 GETIMPORT                        R13 K4 [string.sub]
      319 CALL                             R13 3 1
      320 MOVE                             R11 R13
      321 JUMPIFEQKS                       R11 K7 ["?"] ; [+10]
      323 GETIMPORT                        R11 K32 [error]
      325 LOADK                            R13 K41 ["Capturing groups are not allowed at %d"]
      326 MOVE                             R15 R9
      327 NAMECALL                         R13 R13 K34 ["format"]
      329 CALL                             R13 2 1
      330 MOVE                             R12 R13
      331 CALL                             R11 1 0
      332 MOVE                             R11 R8
      333 MOVE                             R14 R9
      334 ADDK                             R9 R9 K13 [1]
      335 MOVE                             R13 R14
      336 FASTCALL3                        STRING_SUB R0 R13 R13
      338 MOVE                             R15 R0
      339 MOVE                             R16 R13
      340 MOVE                             R17 R13
      341 GETIMPORT                        R14 K4 [string.sub]
      343 CALL                             R14 3 1
      344 MOVE                             R12 R14
      345 CONCAT                           R8 R11 R12
      346 JUMPBACK                         ; [-108]
      347 JUMPIFEQKN                       R7 K40 [0] ; [+10]
      349 GETIMPORT                        R11 K32 [error]
      351 LOADK                            R13 K42 ["Unbalanced pattern at %d"]
      352 MOVE                             R15 R2
      353 NAMECALL                         R13 R13 K34 ["format"]
      355 CALL                             R13 2 1
      356 MOVE                             R12 R13
      357 CALL                             R11 1 0
      358 JUMPIFNOTEQKS                    R8 K27 [""] ; [+10]
      360 GETIMPORT                        R11 K32 [error]
      362 LOADK                            R13 K43 ["Missing pattern at %d"]
      363 MOVE                             R15 R2
      364 NAMECALL                         R13 R13 K34 ["format"]
      366 CALL                             R13 2 1
      367 MOVE                             R12 R13
      368 CALL                             R11 1 0
      369 DUPTABLE                         R13 K45 [{["type"] = "PATTERN", ["index"], ["value"]}]
      370 SETTABLEKS                       R2 R13 K10 ["index"]
      372 SETTABLEKS                       R8 R13 K11 ["value"]
      374 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
      376 MOVE                             R12 R1
      377 GETIMPORT                        R11 K16 [table.insert]
      379 CALL                             R11 2 0
      380 MOVE                             R2 R9
      381 CLOSEUPVALS                      R9
      382 JUMP                             ; [+24]
      383 CLOSEUPVALS                      R9
      384 DUPTABLE                         R9 K47 [{["type"] = "CHAR", ["index"], ["value"]}]
      385 SETTABLEKS                       R2 R9 K10 ["index"]
      387 MOVE                             R12 R2
      388 ADDK                             R2 R2 K13 [1]
      389 MOVE                             R11 R12
      390 FASTCALL3                        STRING_SUB R0 R11 R11
      392 MOVE                             R13 R0
      393 MOVE                             R14 R11
      394 MOVE                             R15 R11
      395 GETIMPORT                        R12 K4 [string.sub]
      397 CALL                             R12 3 1
      398 MOVE                             R10 R12
      399 SETTABLEKS                       R10 R9 K11 ["value"]
      401 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      403 MOVE                             R8 R1
      404 GETIMPORT                        R7 K16 [table.insert]
      406 CALL                             R7 2 0
      407 JUMPBACK                         ; [-396]
      408 DUPTABLE                         R8 K49 [{["type"] = "END", ["index"], ["value"] = ""}]
      409 SETTABLEKS                       R2 R8 K10 ["index"]
      411 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      413 MOVE                             R7 R1
      414 GETIMPORT                        R6 K16 [table.insert]
      416 CALL                             R6 2 0
      417 CLOSEUPVALS                      R2
      418 RETURN                           R1 1

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
       46 JUMPIFNOTLE                      R8 R15 ; [+286]
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
      102 JUMPIFNOT                        R17 ; [+74]
      103 JUMPIFEQKS                       R17 K2 [""] ; [+73]
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
      143 DUPTABLE                         R23 K25 [{["name"], ["prefix"], ["suffix"] = "", ["pattern"], ["modifier"]}]
      144 SETTABLEKS                       R19 R23 K20 ["name"]
      146 SETTABLEKS                       R18 R23 K21 ["prefix"]
      148 SETTABLEKS                       R20 R23 K23 ["pattern"]
      150 LENGTH                           R26 R3
      151 JUMPIFNOTLE                      R8 R26 ; [+14]
      153 GETTABLE                         R26 R3 R8
      154 GETTABLEKS                       R26 R26 K9 ["type"]
      156 JUMPIFNOTEQKS                    R26 K26 ["MODIFIER"] ; [+9]
      158 MOVE                             R28 R8
      159 ADDK                             R8 R8 K11 [1]
      160 MOVE                             R27 R28
      161 GETTABLE                         R26 R3 R27
      162 GETTABLEKS                       R26 R26 K12 ["value"]
      164 MOVE                             R25 R26
      165 JUMP                             ; [+1]
      166 LOADNIL                          R25
      167 ORK                              R24 R25 K2 [""]
      168 SETTABLEKS                       R24 R23 K24 ["modifier"]
      170 FASTCALL2                        TABLE_INSERT R6 R23 ; [+4]
      172 MOVE                             R22 R6
      173 GETIMPORT                        R21 K19 [table.insert]
      175 CALL                             R21 2 0
      176 JUMP                             ; [+155]
      177 MOVE                             R18 R15
      178 JUMPIF                           R18 ; [+17]
      179 LENGTH                           R19 R3
      180 JUMPIFNOTLE                      R8 R19 ; [+14]
      182 GETTABLE                         R19 R3 R8
      183 GETTABLEKS                       R19 R19 K9 ["type"]
      185 JUMPIFNOTEQKS                    R19 K27 ["ESCAPED_CHAR"] ; [+9]
      187 MOVE                             R21 R8
      188 ADDK                             R8 R8 K11 [1]
      189 MOVE                             R20 R21
      190 GETTABLE                         R19 R3 R20
      191 GETTABLEKS                       R19 R19 K12 ["value"]
      193 MOVE                             R18 R19
      194 JUMP                             ; [+1]
      195 LOADNIL                          R18
      196 JUMPIFNOT                        R18 ; [+6]
      197 JUMPIFEQKS                       R18 K2 [""] ; [+5]
      199 MOVE                             R19 R9
      200 MOVE                             R20 R18
      201 CONCAT                           R9 R19 R20
      202 JUMP                             ; [+129]
      203 JUMPIFNOT                        R9 ; [+10]
      204 JUMPIFEQKS                       R9 K2 [""] ; [+9]
      206 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
      208 MOVE                             R20 R6
      209 MOVE                             R21 R9
      210 GETIMPORT                        R19 K19 [table.insert]
      212 CALL                             R19 2 0
      213 LOADK                            R9 K2 [""]
      214 LENGTH                           R20 R3
      215 JUMPIFNOTLE                      R8 R20 ; [+14]
      217 GETTABLE                         R20 R3 R8
      218 GETTABLEKS                       R20 R20 K9 ["type"]
      220 JUMPIFNOTEQKS                    R20 K28 ["OPEN"] ; [+9]
      222 MOVE                             R22 R8
      223 ADDK                             R8 R8 K11 [1]
      224 MOVE                             R21 R22
      225 GETTABLE                         R20 R3 R21
      226 GETTABLEKS                       R20 R20 K12 ["value"]
      228 MOVE                             R19 R20
      229 JUMP                             ; [+1]
      230 LOADNIL                          R19
      231 JUMPIFNOT                        R19 ; [+97]
      232 JUMPIFEQKS                       R19 K2 [""] ; [+96]
      234 MOVE                             R20 R14
      235 CALL                             R20 0 1
      236 LENGTH                           R23 R3
      237 JUMPIFNOTLE                      R8 R23 ; [+14]
      239 GETTABLE                         R23 R3 R8
      240 GETTABLEKS                       R23 R23 K9 ["type"]
      242 JUMPIFNOTEQKS                    R23 K13 ["NAME"] ; [+9]
      244 MOVE                             R25 R8
      245 ADDK                             R8 R8 K11 [1]
      246 MOVE                             R24 R25
      247 GETTABLE                         R23 R3 R24
      248 GETTABLEKS                       R23 R23 K12 ["value"]
      250 MOVE                             R22 R23
      251 JUMP                             ; [+1]
      252 LOADNIL                          R22
      253 ORK                              R21 R22 K2 [""]
      254 LENGTH                           R24 R3
      255 JUMPIFNOTLE                      R8 R24 ; [+14]
      257 GETTABLE                         R24 R3 R8
      258 GETTABLEKS                       R24 R24 K9 ["type"]
      260 JUMPIFNOTEQKS                    R24 K14 ["PATTERN"] ; [+9]
      262 MOVE                             R26 R8
      263 ADDK                             R8 R8 K11 [1]
      264 MOVE                             R25 R26
      265 GETTABLE                         R24 R3 R25
      266 GETTABLEKS                       R24 R24 K12 ["value"]
      268 MOVE                             R23 R24
      269 JUMP                             ; [+1]
      270 LOADNIL                          R23
      271 ORK                              R22 R23 K2 [""]
      272 MOVE                             R23 R14
      273 CALL                             R23 0 1
      274 MOVE                             R24 R13
      275 LOADK                            R25 K29 ["CLOSE"]
      276 CALL                             R24 1 0
      277 JUMPIFNOTEQKS                    R21 K2 [""] ; [+6]
      279 JUMPIFEQKS                       R22 K2 [""] ; [+4]
      281 MOVE                             R24 R7
      282 ADDK                             R7 R7 K11 [1]
      283 MOVE                             R21 R24
      284 JUMPIFEQKS                       R21 K2 [""] ; [+8]
      286 JUMPIFEQKN                       R21 K30 [0] ; [+6]
      288 JUMPIFEQKNIL                     R22 ; [+3]
      290 JUMPIFNOTEQKS                    R22 K2 [""] ; [+2]
      292 MOVE                             R22 R5
      293 DUPTABLE                         R26 K31 [{"name", "pattern", "prefix", "suffix", "modifier"}]
      294 SETTABLEKS                       R21 R26 K20 ["name"]
      296 SETTABLEKS                       R22 R26 K23 ["pattern"]
      298 SETTABLEKS                       R20 R26 K21 ["prefix"]
      300 SETTABLEKS                       R23 R26 K22 ["suffix"]
      302 LENGTH                           R29 R3
      303 JUMPIFNOTLE                      R8 R29 ; [+14]
      305 GETTABLE                         R29 R3 R8
      306 GETTABLEKS                       R29 R29 K9 ["type"]
      308 JUMPIFNOTEQKS                    R29 K26 ["MODIFIER"] ; [+9]
      310 MOVE                             R31 R8
      311 ADDK                             R8 R8 K11 [1]
      312 MOVE                             R30 R31
      313 GETTABLE                         R29 R3 R30
      314 GETTABLEKS                       R29 R29 K12 ["value"]
      316 MOVE                             R28 R29
      317 JUMP                             ; [+1]
      318 LOADNIL                          R28
      319 ORK                              R27 R28 K2 [""]
      320 SETTABLEKS                       R27 R26 K24 ["modifier"]
      322 FASTCALL2                        TABLE_INSERT R6 R26 ; [+4]
      324 MOVE                             R25 R6
      325 GETIMPORT                        R24 K19 [table.insert]
      327 CALL                             R24 2 0
      328 JUMP                             ; [+3]
      329 MOVE                             R20 R13
      330 LOADK                            R21 K32 ["END"]
      331 CALL                             R20 1 0
      332 JUMPBACK                         ; [-288]
      333 CLOSEUPVALS                      R7
      334 RETURN                           R6 1

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
      214 LOADN                            R17 -1
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
