PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["test"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R7 3
        7 FASTCALL1                        TABLE_UNPACK R7 ; [+2]
        8 GETIMPORT                        R6 K3 [table.unpack]
       10 CALL                             R6 1 -1
       11 CALL                             R4 -1 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 CALL                             R4 3 -1
       16 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["it"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R7 3
        7 FASTCALL1                        TABLE_UNPACK R7 ; [+2]
        8 GETIMPORT                        R6 K3 [table.unpack]
       10 CALL                             R6 1 -1
       11 CALL                             R4 -1 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 MOVE                             R7 R3
       15 CALL                             R4 3 -1
       16 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["describe"]
        4 LOADB                            R6 0
        5 CALL                             R4 2 1
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R7 3
        8 FASTCALL1                        TABLE_UNPACK R7 ; [+2]
        9 GETIMPORT                        R6 K3 [table.unpack]
       11 CALL                             R6 1 -1
       12 CALL                             R4 -1 1
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 MOVE                             R7 R3
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

PROTO_3:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R4 ; [+3]
        3 GETIMPORT                        R3 K2 [select]
        5 GETVARARGS                       R5 -1
        6 CALL                             R3 -1 1
        7 LOADN                            R4 0
        8 JUMPIFNOTLT                      R4 R3 ; [+7]
       10 NEWTABLE                         R2 0 0
       12 GETVARARGS                       R3 -1
       13 SETLIST                          R2 R3 -1 [1]
       15 JUMP                             ; [+2]
       16 NEWTABLE                         R2 0 0
       18 LENGTH                           R4 R2
       19 JUMPIFEQKN                       R4 K3 [0] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K4 ["isArray"]
       26 MOVE                             R5 R1
       27 CALL                             R4 1 1
       28 JUMPIFNOT                        R4 ; [+6]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K5 ["toJSBoolean"]
       32 GETTABLEKS                       R5 R1 K6 ["raw"]
       34 CALL                             R4 1 1
       35 JUMPIF                           R3 ; [+9]
       36 JUMPIF                           R4 ; [+8]
       37 GETIMPORT                        R5 K8 [error]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K9 ["new"]
       42 LOADK                            R7 K10 ["`.each` must only be called with an Array or Tagged Template Literal."]
       43 CALL                             R6 1 -1
       44 CALL                             R5 -1 0
       45 NEWTABLE                         R6 2 0
       47 DUPTABLE                         R7 K12 [{"__call"}]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R8 R7 K11 ["__call"]
       55 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       57 GETIMPORT                        R5 K14 [setmetatable]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R8 R0 K15 ["test"]
       63 JUMPIFNOT                        R8 ; [+5]
       64 GETTABLEKS                       R7 R0 K15 ["test"]
       66 GETTABLEKS                       R7 R7 K16 ["skip"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R7
       70 CALL                             R6 1 1
       71 MOVE                             R7 R1
       72 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       73 MOVE                             R9 R2
       74 GETIMPORT                        R8 K19 [table.unpack]
       76 CALL                             R8 1 -1
       77 CALL                             R6 -1 1
       78 SETTABLEKS                       R6 R5 K16 ["skip"]
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R8 R0 K15 ["test"]
       83 JUMPIFNOT                        R8 ; [+5]
       84 GETTABLEKS                       R7 R0 K15 ["test"]
       86 GETTABLEKS                       R7 R7 K20 ["only"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R7
       90 CALL                             R6 1 1
       91 MOVE                             R7 R1
       92 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
       93 MOVE                             R9 R2
       94 GETIMPORT                        R8 K19 [table.unpack]
       96 CALL                             R8 1 -1
       97 CALL                             R6 -1 1
       98 SETTABLEKS                       R6 R5 K20 ["only"]
      100 NEWTABLE                         R7 2 0
      102 DUPTABLE                         R8 K12 [{"__call"}]
      103 NEWCLOSURE                       R9 P1
      104 CAPTURE                          UPVAL U3
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 SETTABLEKS                       R9 R8 K11 ["__call"]
      110 FASTCALL2                        SETMETATABLE R7 R8 ; [+3]
      112 GETIMPORT                        R6 K14 [setmetatable]
      114 CALL                             R6 2 1
      115 GETUPVAL                         R7 3
      116 GETTABLEKS                       R9 R0 K21 ["it"]
      118 JUMPIFNOT                        R9 ; [+5]
      119 GETTABLEKS                       R8 R0 K21 ["it"]
      121 GETTABLEKS                       R8 R8 K16 ["skip"]
      123 JUMP                             ; [+1]
      124 LOADNIL                          R8
      125 CALL                             R7 1 1
      126 MOVE                             R8 R1
      127 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      128 MOVE                             R10 R2
      129 GETIMPORT                        R9 K19 [table.unpack]
      131 CALL                             R9 1 -1
      132 CALL                             R7 -1 1
      133 SETTABLEKS                       R7 R6 K16 ["skip"]
      135 GETUPVAL                         R7 3
      136 GETTABLEKS                       R9 R0 K21 ["it"]
      138 JUMPIFNOT                        R9 ; [+5]
      139 GETTABLEKS                       R8 R0 K21 ["it"]
      141 GETTABLEKS                       R8 R8 K20 ["only"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R8
      145 CALL                             R7 1 1
      146 MOVE                             R8 R1
      147 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      148 MOVE                             R10 R2
      149 GETIMPORT                        R9 K19 [table.unpack]
      151 CALL                             R9 1 -1
      152 CALL                             R7 -1 1
      153 SETTABLEKS                       R7 R6 K20 ["only"]
      155 GETUPVAL                         R7 3
      156 GETTABLEKS                       R8 R0 K22 ["xit"]
      158 CALL                             R7 1 1
      159 MOVE                             R8 R1
      160 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      161 MOVE                             R10 R2
      162 GETIMPORT                        R9 K19 [table.unpack]
      164 CALL                             R9 1 -1
      165 CALL                             R7 -1 1
      166 GETUPVAL                         R8 3
      167 GETTABLEKS                       R9 R0 K23 ["fit"]
      169 CALL                             R8 1 1
      170 MOVE                             R9 R1
      171 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      172 MOVE                             R11 R2
      173 GETIMPORT                        R10 K19 [table.unpack]
      175 CALL                             R10 1 -1
      176 CALL                             R8 -1 1
      177 GETUPVAL                         R9 3
      178 GETTABLEKS                       R10 R0 K24 ["xtest"]
      180 CALL                             R9 1 1
      181 MOVE                             R10 R1
      182 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      183 MOVE                             R12 R2
      184 GETIMPORT                        R11 K19 [table.unpack]
      186 CALL                             R11 1 -1
      187 CALL                             R9 -1 1
      188 NEWTABLE                         R11 2 0
      190 DUPTABLE                         R12 K12 [{"__call"}]
      191 NEWCLOSURE                       R13 P2
      192 CAPTURE                          UPVAL U3
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R2
      196 SETTABLEKS                       R13 R12 K11 ["__call"]
      198 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
      200 GETIMPORT                        R10 K14 [setmetatable]
      202 CALL                             R10 2 1
      203 GETUPVAL                         R11 3
      204 GETTABLEKS                       R13 R0 K25 ["describe"]
      206 JUMPIFNOT                        R13 ; [+5]
      207 GETTABLEKS                       R12 R0 K25 ["describe"]
      209 GETTABLEKS                       R12 R12 K16 ["skip"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R12
      213 LOADB                            R13 0
      214 CALL                             R11 2 1
      215 MOVE                             R12 R1
      216 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      217 MOVE                             R14 R2
      218 GETIMPORT                        R13 K19 [table.unpack]
      220 CALL                             R13 1 -1
      221 CALL                             R11 -1 1
      222 SETTABLEKS                       R11 R10 K16 ["skip"]
      224 GETUPVAL                         R11 3
      225 GETTABLEKS                       R13 R0 K25 ["describe"]
      227 JUMPIFNOT                        R13 ; [+5]
      228 GETTABLEKS                       R12 R0 K25 ["describe"]
      230 GETTABLEKS                       R12 R12 K20 ["only"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R12
      234 LOADB                            R13 0
      235 CALL                             R11 2 1
      236 MOVE                             R12 R1
      237 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      238 MOVE                             R14 R2
      239 GETIMPORT                        R13 K19 [table.unpack]
      241 CALL                             R13 1 -1
      242 CALL                             R11 -1 1
      243 SETTABLEKS                       R11 R10 K20 ["only"]
      245 GETUPVAL                         R11 3
      246 GETTABLEKS                       R12 R0 K26 ["fdescribe"]
      248 LOADB                            R13 0
      249 CALL                             R11 2 1
      250 MOVE                             R12 R1
      251 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      252 MOVE                             R14 R2
      253 GETIMPORT                        R13 K19 [table.unpack]
      255 CALL                             R13 1 -1
      256 CALL                             R11 -1 1
      257 GETUPVAL                         R12 3
      258 GETTABLEKS                       R13 R0 K27 ["xdescribe"]
      260 LOADB                            R14 0
      261 CALL                             R12 2 1
      262 MOVE                             R13 R1
      263 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      264 MOVE                             R15 R2
      265 GETIMPORT                        R14 K19 [table.unpack]
      267 CALL                             R14 1 -1
      268 CALL                             R12 -1 1
      269 GETUPVAL                         R13 3
      270 GETTABLEKS                       R14 R0 K28 ["testSKIP"]
      272 CALL                             R13 1 1
      273 MOVE                             R14 R1
      274 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      275 MOVE                             R16 R2
      276 GETIMPORT                        R15 K19 [table.unpack]
      278 CALL                             R15 1 -1
      279 CALL                             R13 -1 1
      280 GETUPVAL                         R14 3
      281 GETTABLEKS                       R15 R0 K29 ["testFOCUS"]
      283 CALL                             R14 1 1
      284 MOVE                             R15 R1
      285 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      286 MOVE                             R17 R2
      287 GETIMPORT                        R16 K19 [table.unpack]
      289 CALL                             R16 1 -1
      290 CALL                             R14 -1 1
      291 GETUPVAL                         R15 3
      292 GETTABLEKS                       R16 R0 K30 ["itSKIP"]
      294 CALL                             R15 1 1
      295 MOVE                             R16 R1
      296 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      297 MOVE                             R18 R2
      298 GETIMPORT                        R17 K19 [table.unpack]
      300 CALL                             R17 1 -1
      301 CALL                             R15 -1 1
      302 GETUPVAL                         R16 3
      303 GETTABLEKS                       R17 R0 K31 ["itFOCUS"]
      305 CALL                             R16 1 1
      306 MOVE                             R17 R1
      307 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      308 MOVE                             R19 R2
      309 GETIMPORT                        R18 K19 [table.unpack]
      311 CALL                             R18 1 -1
      312 CALL                             R16 -1 1
      313 GETUPVAL                         R17 3
      314 GETTABLEKS                       R18 R0 K32 ["describeSKIP"]
      316 LOADB                            R19 0
      317 CALL                             R17 2 1
      318 MOVE                             R18 R1
      319 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      320 MOVE                             R20 R2
      321 GETIMPORT                        R19 K19 [table.unpack]
      323 CALL                             R19 1 -1
      324 CALL                             R17 -1 1
      325 GETUPVAL                         R18 3
      326 GETTABLEKS                       R19 R0 K33 ["describeFOCUS"]
      328 LOADB                            R20 0
      329 CALL                             R18 2 1
      330 MOVE                             R19 R1
      331 FASTCALL1                        TABLE_UNPACK R2 ; [+3]
      332 MOVE                             R21 R2
      333 GETIMPORT                        R20 K19 [table.unpack]
      335 CALL                             R20 1 -1
      336 CALL                             R18 -1 1
      337 DUPTABLE                         R19 K34 [{"describe", "fdescribe", "fit", "it", "test", "xdescribe", "xit", "xtest", "describeSKIP", "describeFOCUS", "itSKIP", "itFOCUS", "testSKIP", "testFOCUS"}]
      338 SETTABLEKS                       R10 R19 K25 ["describe"]
      340 SETTABLEKS                       R11 R19 K26 ["fdescribe"]
      342 SETTABLEKS                       R8 R19 K23 ["fit"]
      344 SETTABLEKS                       R6 R19 K21 ["it"]
      346 SETTABLEKS                       R5 R19 K15 ["test"]
      348 SETTABLEKS                       R12 R19 K27 ["xdescribe"]
      350 SETTABLEKS                       R7 R19 K22 ["xit"]
      352 SETTABLEKS                       R9 R19 K24 ["xtest"]
      354 SETTABLEKS                       R17 R19 K32 ["describeSKIP"]
      356 SETTABLEKS                       R18 R19 K33 ["describeFOCUS"]
      358 SETTABLEKS                       R15 R19 K30 ["itSKIP"]
      360 SETTABLEKS                       R16 R19 K31 ["itFOCUS"]
      362 SETTABLEKS                       R13 R19 K28 ["testSKIP"]
      364 SETTABLEKS                       R14 R19 K29 ["testFOCUS"]
      366 RETURN                           R19 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+112]
        7 NEWTABLE                         R1 0 0
        9 NEWTABLE                         R2 0 0
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 LOADB                            R5 0
       14 LOADN                            R8 1
       15 LENGTH                           R6 R0
       16 LOADN                            R7 1
       17 FORNPREP                         R6
       18 FASTCALL3                        STRING_SUB R0 R8 R8
       20 MOVE                             R10 R0
       21 MOVE                             R11 R8
       22 MOVE                             R12 R8
       23 GETIMPORT                        R9 K4 [string.sub]
       25 CALL                             R9 3 1
       26 LENGTH                           R11 R0
       27 JUMPIFNOTLT                      R8 R11 ; [+10]
       29 ADDK                             R12 R8 K5 [1]
       30 ADDK                             R13 R8 K5 [1]
       31 FASTCALL3                        STRING_SUB R0 R12 R13
       33 MOVE                             R11 R0
       34 GETIMPORT                        R10 K4 [string.sub]
       36 CALL                             R10 3 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R10
       39 LENGTH                           R11 R0
       40 JUMPIFNOTEQ                      R8 R11 ; [+20]
       42 JUMPIFNOT                        R5 ; [+4]
       43 GETIMPORT                        R11 K7 [error]
       45 LOADK                            R12 K8 ["expression not closed"]
       46 CALL                             R11 1 0
       47 FASTCALL2                        STRING_SUB R0 R3 ; [+5]
       49 MOVE                             R14 R0
       50 MOVE                             R15 R3
       51 GETIMPORT                        R13 K4 [string.sub]
       53 CALL                             R13 2 1
       54 FASTCALL2                        TABLE_INSERT R1 R13 ; [+4]
       56 MOVE                             R12 R1
       57 GETIMPORT                        R11 K11 [table.insert]
       59 CALL                             R11 2 0
       60 JUMP                             ; [+43]
       61 JUMPIF                           R5 ; [+7]
       62 JUMPIFNOTEQKS                    R9 K12 ["$"] ; [+6]
       64 JUMPIFNOTEQKS                    R10 K13 ["{"] ; [+39]
       66 LOADB                            R5 1
       67 SUBK                             R4 R8 K5 [1]
       68 JUMP                             ; [+35]
       69 JUMPIFNOT                        R5 ; [+34]
       70 JUMPIFNOTEQKS                    R9 K14 ["}"] ; [+33]
       72 FASTCALL3                        STRING_SUB R0 R3 R4
       74 MOVE                             R12 R0
       75 MOVE                             R13 R3
       76 MOVE                             R14 R4
       77 GETIMPORT                        R11 K4 [string.sub]
       79 CALL                             R11 3 1
       80 ADDK                             R14 R4 K15 [3]
       81 SUBK                             R15 R8 K5 [1]
       82 FASTCALL3                        STRING_SUB R0 R14 R15
       84 MOVE                             R13 R0
       85 GETIMPORT                        R12 K4 [string.sub]
       87 CALL                             R12 3 1
       88 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       90 MOVE                             R14 R1
       91 MOVE                             R15 R11
       92 GETIMPORT                        R13 K11 [table.insert]
       94 CALL                             R13 2 0
       95 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       97 MOVE                             R14 R2
       98 MOVE                             R15 R12
       99 GETIMPORT                        R13 K11 [table.insert]
      101 CALL                             R13 2 0
      102 ADDK                             R3 R8 K5 [1]
      103 LOADB                            R5 0
      104 FORNLOOP                         R6
      105 DUPTABLE                         R8 K17 [{"__index"}]
      106 DUPTABLE                         R9 K19 [{"raw"}]
      107 SETTABLEKS                       R0 R9 K18 ["raw"]
      109 SETTABLEKS                       R9 R8 K16 ["__index"]
      111 FASTCALL2                        SETMETATABLE R1 R8 ; [+4]
      113 MOVE                             R7 R1
      114 GETIMPORT                        R6 K21 [setmetatable]
      116 CALL                             R6 2 1
      117 RETURN                           R6 1
      118 RETURN                           R0 1

PROTO_5:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 0
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+14]
       10 NEWTABLE                         R4 0 0
       12 DUPTABLE                         R5 K4 [{"__call"}]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R6 R5 K3 ["__call"]
       17 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       19 GETIMPORT                        R3 K6 [setmetatable]
       21 CALL                             R3 2 1
       22 JUMP                             ; [+1]
       23 MOVE                             R3 R1
       24 SETTABLE                         R3 R2 R0
       25 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 GETVARARGS                       R4 -1
        7 CALL                             R1 -1 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_9:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 MOVE                             R5 R1
        5 CALL                             R4 1 1
        6 GETVARARGS                       R5 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1

PROTO_10:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 JUMP                             ; [+2]
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["forEach"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["keys"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R1
       16 CALL                             R2 2 0
       17 DUPTABLE                         R3 K3 [{"withGlobal"}]
       18 DUPCLOSURE                       R4 K4 [PROTO_8]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R4 R3 K2 ["withGlobal"]
       23 DUPTABLE                         R4 K6 [{"__call"}]
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U3
       28 SETTABLEKS                       R5 R4 K5 ["__call"]
       30 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       32 GETIMPORT                        R2 K8 [setmetatable]
       34 CALL                             R2 2 1
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Array"]
       12 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       14 GETTABLEKS                       R4 R1 K8 ["Error"]
       16 GETTABLEKS                       R5 R1 K9 ["Object"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETIMPORT                        R7 K1 [script]
       22 GETTABLEKS                       R7 R7 K10 ["nilPlaceholder"]
       24 CALL                             R6 1 1
       25 NEWTABLE                         R7 4 0
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R0 K11 ["JestTypes"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K4 [require]
       34 GETIMPORT                        R10 K1 [script]
       36 GETTABLEKS                       R10 R10 K12 ["bind"]
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R9 R9 K13 ["default"]
       41 DUPCLOSURE                       R10 K14 [PROTO_3]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R9
       46 DUPCLOSURE                       R11 K15 [PROTO_4]
       47 DUPCLOSURE                       R12 K16 [PROTO_10]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R11
       52 SETTABLEKS                       R9 R7 K12 ["bind"]
       54 SETTABLEKS                       R12 R7 K13 ["default"]
       56 SETTABLEKS                       R6 R7 K17 ["NIL"]
       58 RETURN                           R7 1
