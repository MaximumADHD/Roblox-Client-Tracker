PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R4 K0 ["%s+$"]
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R0 K1 ["gsub"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 LENGTH                           R6 R0
        1 JUMPIFEQKN                       R6 K0 [0] ; [+13]
        3 MOVE                             R6 R2
        4 MOVE                             R8 R3
        5 LOADK                            R9 K1 [" "]
        6 LOADK                            R12 K2 ["%s+$"]
        7 NEWCLOSURE                       R13 P0
        8 CAPTURE                          VAL R4
        9 NAMECALL                         R10 R0 K3 ["gsub"]
       11 CALL                             R10 3 1
       12 CONCAT                           R7 R8 R10
       13 CALL                             R6 1 -1
       14 RETURN                           R6 -1
       15 JUMPIFEQKS                       R3 K1 [" "] ; [+5]
       17 MOVE                             R6 R2
       18 MOVE                             R7 R3
       19 CALL                             R6 1 -1
       20 RETURN                           R6 -1
       21 JUMPIFNOT                        R1 ; [+10]
       22 LENGTH                           R6 R5
       23 JUMPIFEQKN                       R6 K0 [0] ; [+8]
       25 MOVE                             R6 R2
       26 MOVE                             R8 R3
       27 LOADK                            R9 K1 [" "]
       28 MOVE                             R10 R5
       29 CONCAT                           R7 R8 R10
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 LOADK                            R6 K4 [""]
       33 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R2 K0 ["aColor"]
        5 GETTABLEKS                       R7 R2 K1 ["aIndicator"]
        7 GETTABLEKS                       R8 R2 K2 ["changeLineTrailingSpaceColor"]
        9 GETTABLEKS                       R9 R2 K3 ["emptyFirstOrLastLinePlaceholder"]
       11 CALL                             R3 6 -1
       12 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R2 K0 ["bColor"]
        5 GETTABLEKS                       R7 R2 K1 ["bIndicator"]
        7 GETTABLEKS                       R8 R2 K2 ["changeLineTrailingSpaceColor"]
        9 GETTABLEKS                       R9 R2 K3 ["emptyFirstOrLastLinePlaceholder"]
       11 CALL                             R3 6 -1
       12 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 GETTABLEKS                       R6 R2 K0 ["commonColor"]
        5 GETTABLEKS                       R7 R2 K1 ["commonIndicator"]
        7 GETTABLEKS                       R8 R2 K2 ["commonLineTrailingSpaceColor"]
        9 GETTABLEKS                       R9 R2 K3 ["emptyFirstOrLastLinePlaceholder"]
       11 CALL                             R3 6 -1
       12 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R5 R4 K0 ["patchColor"]
        2 GETIMPORT                        R6 K3 [string.format]
        4 LOADK                            R7 K4 ["@@ -%d,%d +%d,%d @@"]
        5 ADDK                             R8 R0 K5 [1]
        6 SUB                              R9 R1 R0
        7 ADDK                             R10 R2 K5 [1]
        8 SUB                              R11 R3 R2
        9 CALL                             R6 5 -1
       10 CALL                             R5 -1 -1
       11 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADB                            R6 1
        6 JUMPIFEQKN                       R1 K0 [0] ; [+6]
        8 GETUPVAL                         R7 2
        9 JUMPIFEQ                         R1 R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 GETUPVAL                         R7 3
       14 CALL                             R4 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R2 K3 [table.insert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 4
       20 ADDK                             R2 R2 K4 [1]
       21 SETUPVAL                         R2 4
       22 GETUPVAL                         R2 5
       23 ADDK                             R2 R2 K4 [1]
       24 SETUPVAL                         R2 5
       25 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADB                            R6 1
        6 JUMPIFEQKN                       R1 K0 [0] ; [+6]
        8 GETUPVAL                         R7 2
        9 JUMPIFEQ                         R1 R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 GETUPVAL                         R7 3
       14 CALL                             R4 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R2 K3 [table.insert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 4
       20 ADDK                             R2 R2 K4 [1]
       21 SETUPVAL                         R2 4
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 LOADB                            R6 1
        6 JUMPIFEQKN                       R1 K0 [0] ; [+6]
        8 GETUPVAL                         R7 2
        9 JUMPIFEQ                         R1 R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 GETUPVAL                         R7 3
       14 CALL                             R4 3 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R2 K3 [table.insert]
       18 CALL                             R2 -1 0
       19 GETUPVAL                         R2 4
       20 ADDK                             R2 R2 K4 [1]
       21 SETUPVAL                         R2 4
       22 RETURN                           R0 0

PROTO_10:
        0 LENGTH                           R2 R0
        1 GETTABLEKS                       R3 R1 K0 ["contextLines"]
        3 ADD                              R4 R3 R3
        4 MOVE                             R5 R2
        5 LOADB                            R6 0
        6 LOADN                            R7 0
        7 LOADN                            R8 0
        8 JUMPIFEQ                         R8 R2 ; [+48]
       10 MOVE                             R9 R8
       11 JUMPIFEQ                         R8 R2 ; [+9]
       13 ADDK                             R12 R8 K1 [1]
       14 GETTABLE                         R11 R0 R12
       15 GETTABLEN                        R10 R11 1
       16 GETUPVAL                         R11 0
       17 JUMPIFNOTEQ                      R10 R11 ; [+3]
       19 ADDK                             R8 R8 K1 [1]
       20 JUMPBACK                         ; [-10]
       21 JUMPIFEQ                         R9 R8 ; [+24]
       23 JUMPIFNOTEQKN                    R9 K2 [0] ; [+7]
       25 JUMPIFNOTLT                      R3 R8 ; [+20]
       27 SUB                              R10 R8 R3
       28 SUB                              R5 R5 R10
       29 LOADB                            R6 1
       30 JUMP                             ; [+15]
       31 JUMPIFNOTEQ                      R8 R2 ; [+8]
       33 SUB                              R10 R8 R9
       34 JUMPIFNOTLT                      R3 R10 ; [+11]
       36 SUB                              R11 R10 R3
       37 SUB                              R5 R5 R11
       38 LOADB                            R6 1
       39 JUMP                             ; [+6]
       40 SUB                              R10 R8 R9
       41 JUMPIFNOTLT                      R4 R10 ; [+4]
       43 SUB                              R11 R10 R4
       44 SUB                              R5 R5 R11
       45 ADDK                             R7 R7 K1 [1]
       46 JUMPIFEQ                         R8 R2 ; [+9]
       48 ADDK                             R12 R8 K1 [1]
       49 GETTABLE                         R11 R0 R12
       50 GETTABLEN                        R10 R11 1
       51 GETUPVAL                         R11 0
       52 JUMPIFEQ                         R10 R11 ; [+3]
       54 ADDK                             R8 R8 K1 [1]
       55 JUMPBACK                         ; [-10]
       56 JUMPBACK                         ; [-49]
       57 LOADB                            R9 1
       58 JUMPIFNOTEQKN                    R7 K2 [0] ; [+2]
       60 MOVE                             R9 R6
       61 JUMPIFEQKN                       R7 K2 [0] ; [+4]
       63 ADDK                             R10 R7 K1 [1]
       64 ADD                              R5 R5 R10
       65 JUMP                             ; [+2]
       66 JUMPIFNOT                        R6 ; [+1]
       67 ADDK                             R5 R5 K1 [1]
       68 SUBK                             R10 R5 K1 [1]
       69 NEWTABLE                         R11 0 0
       71 LOADN                            R12 0
       72 JUMPIFNOT                        R9 ; [+7]
       73 FASTCALL2K                       TABLE_INSERT R11 K3 ; [+5]
       75 MOVE                             R14 R11
       76 LOADK                            R15 K3 [""]
       77 GETIMPORT                        R13 K6 [table.insert]
       79 CALL                             R13 2 0
       80 LOADN                            R13 0
       81 LOADN                            R14 0
       82 LOADN                            R15 0
       83 LOADN                            R16 0
       84 NEWCLOSURE                       R17 P0
       85 CAPTURE                          VAL R11
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R1
       89 CAPTURE                          REF R15
       90 CAPTURE                          REF R16
       91 NEWCLOSURE                       R18 P1
       92 CAPTURE                          VAL R11
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R1
       96 CAPTURE                          REF R15
       97 NEWCLOSURE                       R19 P2
       98 CAPTURE                          VAL R11
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R1
      102 CAPTURE                          REF R16
      103 LOADN                            R8 0
      104 JUMPIFEQ                         R8 R2 ; [+266]
      106 MOVE                             R20 R8
      107 JUMPIFEQ                         R8 R2 ; [+9]
      109 ADDK                             R23 R8 K1 [1]
      110 GETTABLE                         R22 R0 R23
      111 GETTABLEN                        R21 R22 1
      112 GETUPVAL                         R22 0
      113 JUMPIFNOTEQ                      R21 R22 ; [+3]
      115 ADDK                             R8 R8 K1 [1]
      116 JUMPBACK                         ; [-10]
      117 JUMPIFEQ                         R20 R8 ; [+190]
      119 JUMPIFNOTEQKN                    R20 K2 [0] ; [+36]
      121 JUMPIFNOTLT                      R3 R8 ; [+6]
      123 SUB                              R20 R8 R3
      124 MOVE                             R13 R20
      125 MOVE                             R14 R20
      126 MOVE                             R15 R13
      127 MOVE                             R16 R14
      128 MOVE                             R21 R20
      129 JUMPIFEQ                         R21 R8 ; [+178]
      131 ADDK                             R24 R21 K1 [1]
      132 GETTABLE                         R23 R0 R24
      133 GETTABLEN                        R22 R23 2
      134 LENGTH                           R23 R11
      135 MOVE                             R25 R11
      136 GETUPVAL                         R26 1
      137 MOVE                             R27 R22
      138 LOADB                            R28 1
      139 JUMPIFEQKN                       R23 K2 [0] ; [+5]
      141 JUMPIFEQ                         R23 R10 ; [+2]
      143 LOADB                            R28 0 +1
      144 LOADB                            R28 1
      145 MOVE                             R29 R1
      146 CALL                             R26 3 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R24 K6 [table.insert]
      150 CALL                             R24 -1 0
      151 ADDK                             R15 R15 K1 [1]
      152 ADDK                             R16 R16 K1 [1]
      153 ADDK                             R21 R21 K1 [1]
      154 JUMPBACK                         ; [-26]
      155 JUMP                             ; [+152]
      156 JUMPIFNOTEQ                      R8 R2 ; [+34]
      158 MOVE                             R21 R8
      159 SUB                              R22 R8 R20
      160 JUMPIFNOTLT                      R3 R22 ; [+2]
      162 ADD                              R21 R20 R3
      163 MOVE                             R22 R20
      164 JUMPIFEQ                         R22 R21 ; [+143]
      166 ADDK                             R25 R22 K1 [1]
      167 GETTABLE                         R24 R0 R25
      168 GETTABLEN                        R23 R24 2
      169 LENGTH                           R24 R11
      170 MOVE                             R26 R11
      171 GETUPVAL                         R27 1
      172 MOVE                             R28 R23
      173 LOADB                            R29 1
      174 JUMPIFEQKN                       R24 K2 [0] ; [+5]
      176 JUMPIFEQ                         R24 R10 ; [+2]
      178 LOADB                            R29 0 +1
      179 LOADB                            R29 1
      180 MOVE                             R30 R1
      181 CALL                             R27 3 -1
      182 FASTCALL                         TABLE_INSERT ; [+2]
      183 GETIMPORT                        R25 K6 [table.insert]
      185 CALL                             R25 -1 0
      186 ADDK                             R15 R15 K1 [1]
      187 ADDK                             R16 R16 K1 [1]
      188 ADDK                             R22 R22 K1 [1]
      189 JUMPBACK                         ; [-26]
      190 JUMP                             ; [+117]
      191 SUB                              R21 R8 R20
      192 JUMPIFNOTLT                      R4 R21 ; [+88]
      194 ADD                              R22 R20 R3
      195 MOVE                             R23 R20
      196 JUMPIFEQ                         R23 R22 ; [+25]
      198 ADDK                             R26 R23 K1 [1]
      199 GETTABLE                         R25 R0 R26
      200 GETTABLEN                        R24 R25 2
      201 LENGTH                           R25 R11
      202 MOVE                             R27 R11
      203 GETUPVAL                         R28 1
      204 MOVE                             R29 R24
      205 LOADB                            R30 1
      206 JUMPIFEQKN                       R25 K2 [0] ; [+5]
      208 JUMPIFEQ                         R25 R10 ; [+2]
      210 LOADB                            R30 0 +1
      211 LOADB                            R30 1
      212 MOVE                             R31 R1
      213 CALL                             R28 3 -1
      214 FASTCALL                         TABLE_INSERT ; [+2]
      215 GETIMPORT                        R26 K6 [table.insert]
      217 CALL                             R26 -1 0
      218 ADDK                             R15 R15 K1 [1]
      219 ADDK                             R16 R16 K1 [1]
      220 ADDK                             R23 R23 K1 [1]
      221 JUMPBACK                         ; [-26]
      222 ADDK                             R24 R12 K1 [1]
      223 MOVE                             R26 R13
      224 MOVE                             R27 R15
      225 MOVE                             R28 R14
      226 MOVE                             R29 R16
      227 GETTABLEKS                       R30 R1 K7 ["patchColor"]
      229 GETIMPORT                        R31 K10 [string.format]
      231 LOADK                            R32 K11 ["@@ -%d,%d +%d,%d @@"]
      232 ADDK                             R33 R26 K1 [1]
      233 SUB                              R34 R27 R26
      234 ADDK                             R35 R28 K1 [1]
      235 SUB                              R36 R29 R28
      236 CALL                             R31 5 -1
      237 CALL                             R30 -1 1
      238 MOVE                             R25 R30
      239 SETTABLE                         R25 R11 R24
      240 LENGTH                           R12 R11
      241 FASTCALL2K                       TABLE_INSERT R11 K3 ; [+5]
      243 MOVE                             R25 R11
      244 LOADK                            R26 K3 [""]
      245 GETIMPORT                        R24 K6 [table.insert]
      247 CALL                             R24 2 0
      248 SUB                              R24 R21 R4
      249 ADD                              R13 R15 R24
      250 ADD                              R14 R16 R24
      251 MOVE                             R15 R13
      252 MOVE                             R16 R14
      253 SUB                              R23 R8 R3
      254 JUMPIFEQ                         R23 R8 ; [+53]
      256 ADDK                             R27 R23 K1 [1]
      257 GETTABLE                         R26 R0 R27
      258 GETTABLEN                        R25 R26 2
      259 LENGTH                           R26 R11
      260 MOVE                             R28 R11
      261 GETUPVAL                         R29 1
      262 MOVE                             R30 R25
      263 LOADB                            R31 1
      264 JUMPIFEQKN                       R26 K2 [0] ; [+5]
      266 JUMPIFEQ                         R26 R10 ; [+2]
      268 LOADB                            R31 0 +1
      269 LOADB                            R31 1
      270 MOVE                             R32 R1
      271 CALL                             R29 3 -1
      272 FASTCALL                         TABLE_INSERT ; [+2]
      273 GETIMPORT                        R27 K6 [table.insert]
      275 CALL                             R27 -1 0
      276 ADDK                             R15 R15 K1 [1]
      277 ADDK                             R16 R16 K1 [1]
      278 ADDK                             R23 R23 K1 [1]
      279 JUMPBACK                         ; [-26]
      280 JUMP                             ; [+27]
      281 MOVE                             R22 R20
      282 JUMPIFEQ                         R22 R8 ; [+25]
      284 ADDK                             R25 R22 K1 [1]
      285 GETTABLE                         R24 R0 R25
      286 GETTABLEN                        R23 R24 2
      287 LENGTH                           R24 R11
      288 MOVE                             R26 R11
      289 GETUPVAL                         R27 1
      290 MOVE                             R28 R23
      291 LOADB                            R29 1
      292 JUMPIFEQKN                       R24 K2 [0] ; [+5]
      294 JUMPIFEQ                         R24 R10 ; [+2]
      296 LOADB                            R29 0 +1
      297 LOADB                            R29 1
      298 MOVE                             R30 R1
      299 CALL                             R27 3 -1
      300 FASTCALL                         TABLE_INSERT ; [+2]
      301 GETIMPORT                        R25 K6 [table.insert]
      303 CALL                             R25 -1 0
      304 ADDK                             R15 R15 K1 [1]
      305 ADDK                             R16 R16 K1 [1]
      306 ADDK                             R22 R22 K1 [1]
      307 JUMPBACK                         ; [-26]
      308 JUMPIFEQ                         R8 R2 ; [+30]
      310 ADDK                             R23 R8 K1 [1]
      311 GETTABLE                         R22 R0 R23
      312 GETTABLEN                        R21 R22 1
      313 GETUPVAL                         R22 4
      314 JUMPIFNOTEQ                      R21 R22 ; [+24]
      316 ADDK                             R23 R8 K1 [1]
      317 GETTABLE                         R22 R0 R23
      318 GETTABLEN                        R21 R22 2
      319 LENGTH                           R22 R11
      320 MOVE                             R24 R11
      321 GETUPVAL                         R25 2
      322 MOVE                             R26 R21
      323 LOADB                            R27 1
      324 JUMPIFEQKN                       R22 K2 [0] ; [+5]
      326 JUMPIFEQ                         R22 R10 ; [+2]
      328 LOADB                            R27 0 +1
      329 LOADB                            R27 1
      330 MOVE                             R28 R1
      331 CALL                             R25 3 -1
      332 FASTCALL                         TABLE_INSERT ; [+2]
      333 GETIMPORT                        R23 K6 [table.insert]
      335 CALL                             R23 -1 0
      336 ADDK                             R15 R15 K1 [1]
      337 ADDK                             R8 R8 K1 [1]
      338 JUMPBACK                         ; [-31]
      339 JUMPIFEQ                         R8 R2 ; [+30]
      341 ADDK                             R23 R8 K1 [1]
      342 GETTABLE                         R22 R0 R23
      343 GETTABLEN                        R21 R22 1
      344 GETUPVAL                         R22 5
      345 JUMPIFNOTEQ                      R21 R22 ; [+24]
      347 ADDK                             R23 R8 K1 [1]
      348 GETTABLE                         R22 R0 R23
      349 GETTABLEN                        R21 R22 2
      350 LENGTH                           R22 R11
      351 MOVE                             R24 R11
      352 GETUPVAL                         R25 3
      353 MOVE                             R26 R21
      354 LOADB                            R27 1
      355 JUMPIFEQKN                       R22 K2 [0] ; [+5]
      357 JUMPIFEQ                         R22 R10 ; [+2]
      359 LOADB                            R27 0 +1
      360 LOADB                            R27 1
      361 MOVE                             R28 R1
      362 CALL                             R25 3 -1
      363 FASTCALL                         TABLE_INSERT ; [+2]
      364 GETIMPORT                        R23 K6 [table.insert]
      366 CALL                             R23 -1 0
      367 ADDK                             R16 R16 K1 [1]
      368 ADDK                             R8 R8 K1 [1]
      369 JUMPBACK                         ; [-31]
      370 JUMPBACK                         ; [-267]
      371 JUMPIFNOT                        R9 ; [+18]
      372 ADDK                             R20 R12 K1 [1]
      373 MOVE                             R22 R13
      374 MOVE                             R23 R15
      375 MOVE                             R24 R14
      376 MOVE                             R25 R16
      377 GETTABLEKS                       R26 R1 K7 ["patchColor"]
      379 GETIMPORT                        R27 K10 [string.format]
      381 LOADK                            R28 K11 ["@@ -%d,%d +%d,%d @@"]
      382 ADDK                             R29 R22 K1 [1]
      383 SUB                              R30 R23 R22
      384 ADDK                             R31 R24 K1 [1]
      385 SUB                              R32 R25 R24
      386 CALL                             R27 5 -1
      387 CALL                             R26 -1 1
      388 MOVE                             R21 R26
      389 SETTABLE                         R21 R11 R20
      390 GETIMPORT                        R20 K13 [table.concat]
      392 MOVE                             R21 R11
      393 LOADK                            R22 K14 ["\n"]
      394 CALL                             R20 2 -1
      395 CLOSEUPVALS                      R15
      396 RETURN                           R20 -1

PROTO_11:
        0 GETTABLEN                        R3 R0 2
        1 LOADB                            R4 1
        2 JUMPIFEQKN                       R1 K0 [1] ; [+6]
        4 LENGTH                           R5 R2
        5 JUMPIFEQ                         R1 R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 GETTABLEN                        R5 R0 1
       10 GETUPVAL                         R6 0
       11 JUMPIFNOTEQ                      R5 R6 ; [+7]
       13 GETUPVAL                         R6 1
       14 MOVE                             R7 R3
       15 MOVE                             R8 R4
       16 GETUPVAL                         R9 2
       17 CALL                             R6 3 -1
       18 RETURN                           R6 -1
       19 GETUPVAL                         R6 3
       20 JUMPIFNOTEQ                      R5 R6 ; [+7]
       22 GETUPVAL                         R6 4
       23 MOVE                             R7 R3
       24 MOVE                             R8 R4
       25 GETUPVAL                         R9 2
       26 CALL                             R6 3 -1
       27 RETURN                           R6 -1
       28 GETUPVAL                         R6 5
       29 MOVE                             R7 R3
       30 MOVE                             R8 R4
       31 GETUPVAL                         R9 2
       32 CALL                             R6 3 -1
       33 RETURN                           R6 -1

PROTO_12:
        0 GETIMPORT                        R2 K2 [table.concat]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["map"]
        5 MOVE                             R4 R0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R3 2 1
       14 LOADK                            R4 K4 ["\n"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["CleanupSemantic"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K8 ["DIFF_DELETE"]
       21 GETTABLEKS                       R6 R4 K9 ["DIFF_EQUAL"]
       23 GETTABLEKS                       R7 R4 K10 ["DIFF_INSERT"]
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R0 K11 ["types"]
       29 CALL                             R8 1 1
       30 DUPCLOSURE                       R9 K12 [PROTO_1]
       31 DUPCLOSURE                       R10 K13 [PROTO_2]
       32 DUPCLOSURE                       R11 K14 [PROTO_3]
       33 CAPTURE                          VAL R10
       34 DUPCLOSURE                       R12 K15 [PROTO_4]
       35 CAPTURE                          VAL R10
       36 DUPCLOSURE                       R13 K16 [PROTO_5]
       37 CAPTURE                          VAL R10
       38 DUPCLOSURE                       R14 K17 [PROTO_6]
       39 DUPCLOSURE                       R15 K18 [PROTO_10]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R13
       42 CAPTURE                          VAL R11
       43 CAPTURE                          VAL R12
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R7
       46 DUPCLOSURE                       R16 K19 [PROTO_12]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R11
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R12
       52 CAPTURE                          VAL R13
       53 DUPTABLE                         R17 K22 [{"joinAlignedDiffsNoExpand", "joinAlignedDiffsExpand"}]
       54 SETTABLEKS                       R15 R17 K20 ["joinAlignedDiffsNoExpand"]
       56 SETTABLEKS                       R16 R17 K21 ["joinAlignedDiffsExpand"]
       58 RETURN                           R17 1
