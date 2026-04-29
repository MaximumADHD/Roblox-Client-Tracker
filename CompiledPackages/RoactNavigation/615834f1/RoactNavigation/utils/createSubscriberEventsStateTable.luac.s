PROTO_0:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 GETUPVAL                         R8 1
        6 MOVE                             R9 R7
        7 MOVE                             R10 R2
        8 CALL                             R8 2 0
        9 FORGLOOP                         R3 2 [inext] ; [-5]
       11 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R7 R0
        3 GETIMPORT                        R6 K1 [type]
        5 CALL                             R6 1 1
        6 JUMPIFEQKS                       R6 K2 ["string"] ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 LOADK                            R6 K3 ["name must be a string"]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R4 0
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R7 R1
       15 GETIMPORT                        R6 K1 [type]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K2 ["string"] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 LOADK                            R6 K4 ["initialState must be a string"]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 0
       25 FASTCALL1                        TYPE R2 ; [+3]
       26 MOVE                             R7 R2
       27 GETIMPORT                        R6 K1 [type]
       29 CALL                             R6 1 1
       30 JUMPIFEQKS                       R6 K5 ["function"] ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 LOADK                            R6 K6 ["emitAction must be a function"]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 0
       37 FASTCALL1                        TYPE R3 ; [+3]
       38 MOVE                             R7 R3
       39 GETIMPORT                        R6 K1 [type]
       41 CALL                             R6 1 1
       42 JUMPIFEQKS                       R6 K5 ["function"] ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 LOADK                            R6 K7 ["disconnectAllAction must be a function"]
       47 CALL                             R4 2 0
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R2
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R5 R6 K8 ["new"]
       53 LOADK                            R7 K9 ["SubscriberEventsTable("]
       54 MOVE                             R8 R0
       55 LOADK                            R9 K10 [")"]
       56 CONCAT                           R6 R7 R9
       57 MOVE                             R7 R1
       58 LOADNIL                          R8
       59 DUPTABLE                         R9 K16 [{"Blurred", "Focusing", "Focused", "Blurring", "Disconnected"}]
       60 NEWTABLE                         R10 8 0
       62 GETUPVAL                         R12 2
       63 LOADK                            R13 K17 ["A"]
       64 CONCAT                           R11 R12 R13
       65 DUPTABLE                         R12 K20 [{"nextState", "action"}]
       66 LOADK                            R13 K13 ["Focused"]
       67 SETTABLEKS                       R13 R12 K18 ["nextState"]
       69 MOVE                             R13 R4
       70 GETUPVAL                         R15 3
       71 GETTABLEKS                       R14 R15 K21 ["WillFocus"]
       73 GETUPVAL                         R16 3
       74 GETTABLEKS                       R15 R16 K22 ["DidFocus"]
       76 CALL                             R13 2 1
       77 SETTABLEKS                       R13 R12 K19 ["action"]
       79 SETTABLE                         R12 R10 R11
       80 GETUPVAL                         R12 4
       81 LOADK                            R13 K17 ["A"]
       82 CONCAT                           R11 R12 R13
       83 DUPTABLE                         R12 K20 [{"nextState", "action"}]
       84 LOADK                            R13 K13 ["Focused"]
       85 SETTABLEKS                       R13 R12 K18 ["nextState"]
       87 MOVE                             R13 R4
       88 GETUPVAL                         R15 3
       89 GETTABLEKS                       R14 R15 K21 ["WillFocus"]
       91 GETUPVAL                         R16 3
       92 GETTABLEKS                       R15 R16 K22 ["DidFocus"]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K19 ["action"]
       97 SETTABLE                         R12 R10 R11
       98 GETUPVAL                         R12 2
       99 LOADK                            R13 K23 ["AT"]
      100 CONCAT                           R11 R12 R13
      101 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      102 LOADK                            R13 K12 ["Focusing"]
      103 SETTABLEKS                       R13 R12 K18 ["nextState"]
      105 MOVE                             R13 R4
      106 GETUPVAL                         R15 3
      107 GETTABLEKS                       R14 R15 K21 ["WillFocus"]
      109 CALL                             R13 1 1
      110 SETTABLEKS                       R13 R12 K19 ["action"]
      112 SETTABLE                         R12 R10 R11
      113 GETUPVAL                         R12 4
      114 LOADK                            R13 K23 ["AT"]
      115 CONCAT                           R11 R12 R13
      116 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      117 LOADK                            R13 K12 ["Focusing"]
      118 SETTABLEKS                       R13 R12 K18 ["nextState"]
      120 MOVE                             R13 R4
      121 GETUPVAL                         R15 3
      122 GETTABLEKS                       R14 R15 K21 ["WillFocus"]
      124 CALL                             R13 1 1
      125 SETTABLEKS                       R13 R12 K19 ["action"]
      127 SETTABLE                         R12 R10 R11
      128 DUPTABLE                         R11 K20 [{"nextState", "action"}]
      129 LOADK                            R12 K15 ["Disconnected"]
      130 SETTABLEKS                       R12 R11 K18 ["nextState"]
      132 SETTABLEKS                       R3 R11 K19 ["action"]
      134 SETTABLEKS                       R11 R10 K24 ["shutdown"]
      136 GETUPVAL                         R11 5
      137 DUPTABLE                         R12 K25 [{"action"}]
      138 MOVE                             R13 R4
      139 GETUPVAL                         R15 3
      140 GETTABLEKS                       R14 R15 K26 ["Refocus"]
      142 CALL                             R13 1 1
      143 SETTABLEKS                       R13 R12 K19 ["action"]
      145 SETTABLE                         R12 R10 R11
      146 SETTABLEKS                       R10 R9 K11 ["Blurred"]
      148 NEWTABLE                         R10 4 0
      150 GETUPVAL                         R12 6
      151 LOADK                            R13 K17 ["A"]
      152 CONCAT                           R11 R12 R13
      153 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      154 LOADK                            R13 K13 ["Focused"]
      155 SETTABLEKS                       R13 R12 K18 ["nextState"]
      157 MOVE                             R13 R4
      158 GETUPVAL                         R15 3
      159 GETTABLEKS                       R14 R15 K22 ["DidFocus"]
      161 CALL                             R13 1 1
      162 SETTABLEKS                       R13 R12 K19 ["action"]
      164 SETTABLE                         R12 R10 R11
      165 GETUPVAL                         R12 4
      166 LOADK                            R13 K17 ["A"]
      167 CONCAT                           R11 R12 R13
      168 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      169 LOADK                            R13 K13 ["Focused"]
      170 SETTABLEKS                       R13 R12 K18 ["nextState"]
      172 MOVE                             R13 R4
      173 GETUPVAL                         R15 3
      174 GETTABLEKS                       R14 R15 K22 ["DidFocus"]
      176 CALL                             R13 1 1
      177 SETTABLEKS                       R13 R12 K19 ["action"]
      179 SETTABLE                         R12 R10 R11
      180 GETUPVAL                         R12 7
      181 LOADK                            R13 K27 ["T"]
      182 CONCAT                           R11 R12 R13
      183 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      184 LOADK                            R13 K14 ["Blurring"]
      185 SETTABLEKS                       R13 R12 K18 ["nextState"]
      187 MOVE                             R13 R4
      188 GETUPVAL                         R15 3
      189 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      191 CALL                             R13 1 1
      192 SETTABLEKS                       R13 R12 K19 ["action"]
      194 SETTABLE                         R12 R10 R11
      195 GETUPVAL                         R11 5
      196 DUPTABLE                         R12 K25 [{"action"}]
      197 MOVE                             R13 R4
      198 GETUPVAL                         R15 3
      199 GETTABLEKS                       R14 R15 K26 ["Refocus"]
      201 CALL                             R13 1 1
      202 SETTABLEKS                       R13 R12 K19 ["action"]
      204 SETTABLE                         R12 R10 R11
      205 SETTABLEKS                       R10 R9 K12 ["Focusing"]
      207 NEWTABLE                         R10 16 0
      209 GETUPVAL                         R11 7
      210 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      211 LOADK                            R13 K14 ["Blurring"]
      212 SETTABLEKS                       R13 R12 K18 ["nextState"]
      214 MOVE                             R13 R4
      215 GETUPVAL                         R15 3
      216 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      218 CALL                             R13 1 1
      219 SETTABLEKS                       R13 R12 K19 ["action"]
      221 SETTABLE                         R12 R10 R11
      222 GETUPVAL                         R12 7
      223 LOADK                            R13 K27 ["T"]
      224 CONCAT                           R11 R12 R13
      225 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      226 LOADK                            R13 K14 ["Blurring"]
      227 SETTABLEKS                       R13 R12 K18 ["nextState"]
      229 MOVE                             R13 R4
      230 GETUPVAL                         R15 3
      231 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      233 CALL                             R13 1 1
      234 SETTABLEKS                       R13 R12 K19 ["action"]
      236 SETTABLE                         R12 R10 R11
      237 GETUPVAL                         R12 7
      238 LOADK                            R13 K17 ["A"]
      239 CONCAT                           R11 R12 R13
      240 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      241 LOADK                            R13 K14 ["Blurring"]
      242 SETTABLEKS                       R13 R12 K18 ["nextState"]
      244 MOVE                             R13 R4
      245 GETUPVAL                         R15 3
      246 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      248 CALL                             R13 1 1
      249 SETTABLEKS                       R13 R12 K19 ["action"]
      251 SETTABLE                         R12 R10 R11
      252 GETUPVAL                         R12 7
      253 LOADK                            R13 K23 ["AT"]
      254 CONCAT                           R11 R12 R13
      255 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      256 LOADK                            R13 K14 ["Blurring"]
      257 SETTABLEKS                       R13 R12 K18 ["nextState"]
      259 MOVE                             R13 R4
      260 GETUPVAL                         R15 3
      261 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      263 CALL                             R13 1 1
      264 SETTABLEKS                       R13 R12 K19 ["action"]
      266 SETTABLE                         R12 R10 R11
      267 GETUPVAL                         R11 4
      268 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      269 LOADK                            R13 K14 ["Blurring"]
      270 SETTABLEKS                       R13 R12 K18 ["nextState"]
      272 MOVE                             R13 R4
      273 GETUPVAL                         R15 3
      274 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      276 CALL                             R13 1 1
      277 SETTABLEKS                       R13 R12 K19 ["action"]
      279 SETTABLE                         R12 R10 R11
      280 GETUPVAL                         R12 4
      281 LOADK                            R13 K27 ["T"]
      282 CONCAT                           R11 R12 R13
      283 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      284 LOADK                            R13 K14 ["Blurring"]
      285 SETTABLEKS                       R13 R12 K18 ["nextState"]
      287 MOVE                             R13 R4
      288 GETUPVAL                         R15 3
      289 GETTABLEKS                       R14 R15 K28 ["WillBlur"]
      291 CALL                             R13 1 1
      292 SETTABLEKS                       R13 R12 K19 ["action"]
      294 SETTABLE                         R12 R10 R11
      295 GETUPVAL                         R12 4
      296 LOADK                            R13 K17 ["A"]
      297 CONCAT                           R11 R12 R13
      298 DUPTABLE                         R12 K25 [{"action"}]
      299 MOVE                             R13 R4
      300 GETUPVAL                         R15 3
      301 GETTABLEKS                       R14 R15 K29 ["Action"]
      303 CALL                             R13 1 1
      304 SETTABLEKS                       R13 R12 K19 ["action"]
      306 SETTABLE                         R12 R10 R11
      307 GETUPVAL                         R12 4
      308 LOADK                            R13 K23 ["AT"]
      309 CONCAT                           R11 R12 R13
      310 DUPTABLE                         R12 K25 [{"action"}]
      311 MOVE                             R13 R4
      312 GETUPVAL                         R15 3
      313 GETTABLEKS                       R14 R15 K29 ["Action"]
      315 CALL                             R13 1 1
      316 SETTABLEKS                       R13 R12 K19 ["action"]
      318 SETTABLE                         R12 R10 R11
      319 GETUPVAL                         R11 5
      320 DUPTABLE                         R12 K25 [{"action"}]
      321 MOVE                             R13 R4
      322 GETUPVAL                         R15 3
      323 GETTABLEKS                       R14 R15 K26 ["Refocus"]
      325 CALL                             R13 1 1
      326 SETTABLEKS                       R13 R12 K19 ["action"]
      328 SETTABLE                         R12 R10 R11
      329 SETTABLEKS                       R10 R9 K13 ["Focused"]
      331 NEWTABLE                         R10 8 0
      333 GETUPVAL                         R11 4
      334 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      335 LOADK                            R13 K11 ["Blurred"]
      336 SETTABLEKS                       R13 R12 K18 ["nextState"]
      338 MOVE                             R13 R4
      339 GETUPVAL                         R15 3
      340 GETTABLEKS                       R14 R15 K30 ["DidBlur"]
      342 CALL                             R13 1 1
      343 SETTABLEKS                       R13 R12 K19 ["action"]
      345 SETTABLE                         R12 R10 R11
      346 GETUPVAL                         R11 8
      347 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      348 LOADK                            R13 K11 ["Blurred"]
      349 SETTABLEKS                       R13 R12 K18 ["nextState"]
      351 MOVE                             R13 R4
      352 GETUPVAL                         R15 3
      353 GETTABLEKS                       R14 R15 K30 ["DidBlur"]
      355 CALL                             R13 1 1
      356 SETTABLEKS                       R13 R12 K19 ["action"]
      358 SETTABLE                         R12 R10 R11
      359 GETUPVAL                         R12 8
      360 LOADK                            R13 K17 ["A"]
      361 CONCAT                           R11 R12 R13
      362 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      363 LOADK                            R13 K11 ["Blurred"]
      364 SETTABLEKS                       R13 R12 K18 ["nextState"]
      366 MOVE                             R13 R4
      367 GETUPVAL                         R15 3
      368 GETTABLEKS                       R14 R15 K30 ["DidBlur"]
      370 CALL                             R13 1 1
      371 SETTABLEKS                       R13 R12 K19 ["action"]
      373 SETTABLE                         R12 R10 R11
      374 GETUPVAL                         R12 8
      375 LOADK                            R13 K27 ["T"]
      376 CONCAT                           R11 R12 R13
      377 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      378 LOADK                            R13 K11 ["Blurred"]
      379 SETTABLEKS                       R13 R12 K18 ["nextState"]
      381 MOVE                             R13 R4
      382 GETUPVAL                         R15 3
      383 GETTABLEKS                       R14 R15 K30 ["DidBlur"]
      385 CALL                             R13 1 1
      386 SETTABLEKS                       R13 R12 K19 ["action"]
      388 SETTABLE                         R12 R10 R11
      389 GETUPVAL                         R12 8
      390 LOADK                            R13 K23 ["AT"]
      391 CONCAT                           R11 R12 R13
      392 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      393 LOADK                            R13 K11 ["Blurred"]
      394 SETTABLEKS                       R13 R12 K18 ["nextState"]
      396 MOVE                             R13 R4
      397 GETUPVAL                         R15 3
      398 GETTABLEKS                       R14 R15 K30 ["DidBlur"]
      400 CALL                             R13 1 1
      401 SETTABLEKS                       R13 R12 K19 ["action"]
      403 SETTABLE                         R12 R10 R11
      404 GETUPVAL                         R12 4
      405 LOADK                            R13 K17 ["A"]
      406 CONCAT                           R11 R12 R13
      407 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      408 LOADK                            R13 K13 ["Focused"]
      409 SETTABLEKS                       R13 R12 K18 ["nextState"]
      411 MOVE                             R13 R4
      412 GETUPVAL                         R15 3
      413 GETTABLEKS                       R14 R15 K22 ["DidFocus"]
      415 CALL                             R13 1 1
      416 SETTABLEKS                       R13 R12 K19 ["action"]
      418 SETTABLE                         R12 R10 R11
      419 GETUPVAL                         R12 4
      420 LOADK                            R13 K23 ["AT"]
      421 CONCAT                           R11 R12 R13
      422 DUPTABLE                         R12 K20 [{"nextState", "action"}]
      423 LOADK                            R13 K12 ["Focusing"]
      424 SETTABLEKS                       R13 R12 K18 ["nextState"]
      426 MOVE                             R13 R4
      427 GETUPVAL                         R15 3
      428 GETTABLEKS                       R14 R15 K21 ["WillFocus"]
      430 CALL                             R13 1 1
      431 SETTABLEKS                       R13 R12 K19 ["action"]
      433 SETTABLE                         R12 R10 R11
      434 GETUPVAL                         R11 5
      435 DUPTABLE                         R12 K25 [{"action"}]
      436 MOVE                             R13 R4
      437 GETUPVAL                         R15 3
      438 GETTABLEKS                       R14 R15 K26 ["Refocus"]
      440 CALL                             R13 1 1
      441 SETTABLEKS                       R13 R12 K19 ["action"]
      443 SETTABLE                         R12 R10 R11
      444 SETTABLEKS                       R10 R9 K14 ["Blurring"]
      446 NEWTABLE                         R10 0 0
      448 SETTABLEKS                       R10 R9 K15 ["Disconnected"]
      450 CALL                             R5 4 -1
      451 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["StateTable"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R5 K3 [script]
       18 GETTABLEKS                       R4 R5 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 GETTABLEKS                       R2 R3 K6 ["NavigationEvents"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R5 K3 [script]
       29 GETTABLEKS                       R4 R5 K4 ["Parent"]
       31 GETTABLEKS                       R3 R4 K7 ["validate"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R4 R1 K8 ["WillFocus"]
       36 FASTCALL1                        TOSTRING R4 ; [+2]
       37 GETIMPORT                        R3 K10 [tostring]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R5 R1 K11 ["DidFocus"]
       42 FASTCALL1                        TOSTRING R5 ; [+2]
       43 GETIMPORT                        R4 K10 [tostring]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R6 R1 K12 ["WillBlur"]
       48 FASTCALL1                        TOSTRING R6 ; [+2]
       49 GETIMPORT                        R5 K10 [tostring]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R7 R1 K13 ["DidBlur"]
       54 FASTCALL1                        TOSTRING R7 ; [+2]
       55 GETIMPORT                        R6 K10 [tostring]
       57 CALL                             R6 1 1
       58 GETTABLEKS                       R8 R1 K14 ["Action"]
       60 FASTCALL1                        TOSTRING R8 ; [+2]
       61 GETIMPORT                        R7 K10 [tostring]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R9 R1 K15 ["Refocus"]
       66 FASTCALL1                        TOSTRING R9 ; [+2]
       67 GETIMPORT                        R8 K10 [tostring]
       69 CALL                             R8 1 1
       70 DUPCLOSURE                       R9 K16 [PROTO_2]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 RETURN                           R9 1
