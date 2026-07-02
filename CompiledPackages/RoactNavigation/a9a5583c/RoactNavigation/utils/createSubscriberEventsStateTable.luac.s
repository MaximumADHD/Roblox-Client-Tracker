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
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K8 ["new"]
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
       65 DUPTABLE                         R12 K20 [{["nextState"] = "Focused", ["action"]}]
       66 MOVE                             R13 R4
       67 GETUPVAL                         R14 3
       68 GETTABLEKS                       R14 R14 K21 ["WillFocus"]
       70 GETUPVAL                         R15 3
       71 GETTABLEKS                       R15 R15 K22 ["DidFocus"]
       73 CALL                             R13 2 1
       74 SETTABLEKS                       R13 R12 K19 ["action"]
       76 SETTABLE                         R12 R10 R11
       77 GETUPVAL                         R12 4
       78 LOADK                            R13 K17 ["A"]
       79 CONCAT                           R11 R12 R13
       80 DUPTABLE                         R12 K20 [{["nextState"] = "Focused", ["action"]}]
       81 MOVE                             R13 R4
       82 GETUPVAL                         R14 3
       83 GETTABLEKS                       R14 R14 K21 ["WillFocus"]
       85 GETUPVAL                         R15 3
       86 GETTABLEKS                       R15 R15 K22 ["DidFocus"]
       88 CALL                             R13 2 1
       89 SETTABLEKS                       R13 R12 K19 ["action"]
       91 SETTABLE                         R12 R10 R11
       92 GETUPVAL                         R12 2
       93 LOADK                            R13 K23 ["AT"]
       94 CONCAT                           R11 R12 R13
       95 DUPTABLE                         R12 K24 [{["nextState"] = "Focusing", ["action"]}]
       96 MOVE                             R13 R4
       97 GETUPVAL                         R14 3
       98 GETTABLEKS                       R14 R14 K21 ["WillFocus"]
      100 CALL                             R13 1 1
      101 SETTABLEKS                       R13 R12 K19 ["action"]
      103 SETTABLE                         R12 R10 R11
      104 GETUPVAL                         R12 4
      105 LOADK                            R13 K23 ["AT"]
      106 CONCAT                           R11 R12 R13
      107 DUPTABLE                         R12 K24 [{["nextState"] = "Focusing", ["action"]}]
      108 MOVE                             R13 R4
      109 GETUPVAL                         R14 3
      110 GETTABLEKS                       R14 R14 K21 ["WillFocus"]
      112 CALL                             R13 1 1
      113 SETTABLEKS                       R13 R12 K19 ["action"]
      115 SETTABLE                         R12 R10 R11
      116 DUPTABLE                         R11 K25 [{["nextState"] = "Disconnected", ["action"]}]
      117 SETTABLEKS                       R3 R11 K19 ["action"]
      119 SETTABLEKS                       R11 R10 K26 ["shutdown"]
      121 GETUPVAL                         R11 5
      122 DUPTABLE                         R12 K27 [{"action"}]
      123 MOVE                             R13 R4
      124 GETUPVAL                         R14 3
      125 GETTABLEKS                       R14 R14 K28 ["Refocus"]
      127 CALL                             R13 1 1
      128 SETTABLEKS                       R13 R12 K19 ["action"]
      130 SETTABLE                         R12 R10 R11
      131 SETTABLEKS                       R10 R9 K11 ["Blurred"]
      133 NEWTABLE                         R10 4 0
      135 GETUPVAL                         R12 6
      136 LOADK                            R13 K17 ["A"]
      137 CONCAT                           R11 R12 R13
      138 DUPTABLE                         R12 K20 [{["nextState"] = "Focused", ["action"]}]
      139 MOVE                             R13 R4
      140 GETUPVAL                         R14 3
      141 GETTABLEKS                       R14 R14 K22 ["DidFocus"]
      143 CALL                             R13 1 1
      144 SETTABLEKS                       R13 R12 K19 ["action"]
      146 SETTABLE                         R12 R10 R11
      147 GETUPVAL                         R12 4
      148 LOADK                            R13 K17 ["A"]
      149 CONCAT                           R11 R12 R13
      150 DUPTABLE                         R12 K20 [{["nextState"] = "Focused", ["action"]}]
      151 MOVE                             R13 R4
      152 GETUPVAL                         R14 3
      153 GETTABLEKS                       R14 R14 K22 ["DidFocus"]
      155 CALL                             R13 1 1
      156 SETTABLEKS                       R13 R12 K19 ["action"]
      158 SETTABLE                         R12 R10 R11
      159 GETUPVAL                         R12 7
      160 LOADK                            R13 K29 ["T"]
      161 CONCAT                           R11 R12 R13
      162 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      163 MOVE                             R13 R4
      164 GETUPVAL                         R14 3
      165 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      167 CALL                             R13 1 1
      168 SETTABLEKS                       R13 R12 K19 ["action"]
      170 SETTABLE                         R12 R10 R11
      171 GETUPVAL                         R11 5
      172 DUPTABLE                         R12 K27 [{"action"}]
      173 MOVE                             R13 R4
      174 GETUPVAL                         R14 3
      175 GETTABLEKS                       R14 R14 K28 ["Refocus"]
      177 CALL                             R13 1 1
      178 SETTABLEKS                       R13 R12 K19 ["action"]
      180 SETTABLE                         R12 R10 R11
      181 SETTABLEKS                       R10 R9 K12 ["Focusing"]
      183 NEWTABLE                         R10 16 0
      185 GETUPVAL                         R11 7
      186 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      187 MOVE                             R13 R4
      188 GETUPVAL                         R14 3
      189 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      191 CALL                             R13 1 1
      192 SETTABLEKS                       R13 R12 K19 ["action"]
      194 SETTABLE                         R12 R10 R11
      195 GETUPVAL                         R12 7
      196 LOADK                            R13 K29 ["T"]
      197 CONCAT                           R11 R12 R13
      198 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      199 MOVE                             R13 R4
      200 GETUPVAL                         R14 3
      201 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      203 CALL                             R13 1 1
      204 SETTABLEKS                       R13 R12 K19 ["action"]
      206 SETTABLE                         R12 R10 R11
      207 GETUPVAL                         R12 7
      208 LOADK                            R13 K17 ["A"]
      209 CONCAT                           R11 R12 R13
      210 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      211 MOVE                             R13 R4
      212 GETUPVAL                         R14 3
      213 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      215 CALL                             R13 1 1
      216 SETTABLEKS                       R13 R12 K19 ["action"]
      218 SETTABLE                         R12 R10 R11
      219 GETUPVAL                         R12 7
      220 LOADK                            R13 K23 ["AT"]
      221 CONCAT                           R11 R12 R13
      222 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      223 MOVE                             R13 R4
      224 GETUPVAL                         R14 3
      225 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      227 CALL                             R13 1 1
      228 SETTABLEKS                       R13 R12 K19 ["action"]
      230 SETTABLE                         R12 R10 R11
      231 GETUPVAL                         R11 4
      232 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      233 MOVE                             R13 R4
      234 GETUPVAL                         R14 3
      235 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      237 CALL                             R13 1 1
      238 SETTABLEKS                       R13 R12 K19 ["action"]
      240 SETTABLE                         R12 R10 R11
      241 GETUPVAL                         R12 4
      242 LOADK                            R13 K29 ["T"]
      243 CONCAT                           R11 R12 R13
      244 DUPTABLE                         R12 K30 [{["nextState"] = "Blurring", ["action"]}]
      245 MOVE                             R13 R4
      246 GETUPVAL                         R14 3
      247 GETTABLEKS                       R14 R14 K31 ["WillBlur"]
      249 CALL                             R13 1 1
      250 SETTABLEKS                       R13 R12 K19 ["action"]
      252 SETTABLE                         R12 R10 R11
      253 GETUPVAL                         R12 4
      254 LOADK                            R13 K17 ["A"]
      255 CONCAT                           R11 R12 R13
      256 DUPTABLE                         R12 K27 [{"action"}]
      257 MOVE                             R13 R4
      258 GETUPVAL                         R14 3
      259 GETTABLEKS                       R14 R14 K32 ["Action"]
      261 CALL                             R13 1 1
      262 SETTABLEKS                       R13 R12 K19 ["action"]
      264 SETTABLE                         R12 R10 R11
      265 GETUPVAL                         R12 4
      266 LOADK                            R13 K23 ["AT"]
      267 CONCAT                           R11 R12 R13
      268 DUPTABLE                         R12 K27 [{"action"}]
      269 MOVE                             R13 R4
      270 GETUPVAL                         R14 3
      271 GETTABLEKS                       R14 R14 K32 ["Action"]
      273 CALL                             R13 1 1
      274 SETTABLEKS                       R13 R12 K19 ["action"]
      276 SETTABLE                         R12 R10 R11
      277 GETUPVAL                         R11 5
      278 DUPTABLE                         R12 K27 [{"action"}]
      279 MOVE                             R13 R4
      280 GETUPVAL                         R14 3
      281 GETTABLEKS                       R14 R14 K28 ["Refocus"]
      283 CALL                             R13 1 1
      284 SETTABLEKS                       R13 R12 K19 ["action"]
      286 SETTABLE                         R12 R10 R11
      287 SETTABLEKS                       R10 R9 K13 ["Focused"]
      289 NEWTABLE                         R10 8 0
      291 GETUPVAL                         R11 4
      292 DUPTABLE                         R12 K33 [{["nextState"] = "Blurred", ["action"]}]
      293 MOVE                             R13 R4
      294 GETUPVAL                         R14 3
      295 GETTABLEKS                       R14 R14 K34 ["DidBlur"]
      297 CALL                             R13 1 1
      298 SETTABLEKS                       R13 R12 K19 ["action"]
      300 SETTABLE                         R12 R10 R11
      301 GETUPVAL                         R11 8
      302 DUPTABLE                         R12 K33 [{["nextState"] = "Blurred", ["action"]}]
      303 MOVE                             R13 R4
      304 GETUPVAL                         R14 3
      305 GETTABLEKS                       R14 R14 K34 ["DidBlur"]
      307 CALL                             R13 1 1
      308 SETTABLEKS                       R13 R12 K19 ["action"]
      310 SETTABLE                         R12 R10 R11
      311 GETUPVAL                         R12 8
      312 LOADK                            R13 K17 ["A"]
      313 CONCAT                           R11 R12 R13
      314 DUPTABLE                         R12 K33 [{["nextState"] = "Blurred", ["action"]}]
      315 MOVE                             R13 R4
      316 GETUPVAL                         R14 3
      317 GETTABLEKS                       R14 R14 K34 ["DidBlur"]
      319 CALL                             R13 1 1
      320 SETTABLEKS                       R13 R12 K19 ["action"]
      322 SETTABLE                         R12 R10 R11
      323 GETUPVAL                         R12 8
      324 LOADK                            R13 K29 ["T"]
      325 CONCAT                           R11 R12 R13
      326 DUPTABLE                         R12 K33 [{["nextState"] = "Blurred", ["action"]}]
      327 MOVE                             R13 R4
      328 GETUPVAL                         R14 3
      329 GETTABLEKS                       R14 R14 K34 ["DidBlur"]
      331 CALL                             R13 1 1
      332 SETTABLEKS                       R13 R12 K19 ["action"]
      334 SETTABLE                         R12 R10 R11
      335 GETUPVAL                         R12 8
      336 LOADK                            R13 K23 ["AT"]
      337 CONCAT                           R11 R12 R13
      338 DUPTABLE                         R12 K33 [{["nextState"] = "Blurred", ["action"]}]
      339 MOVE                             R13 R4
      340 GETUPVAL                         R14 3
      341 GETTABLEKS                       R14 R14 K34 ["DidBlur"]
      343 CALL                             R13 1 1
      344 SETTABLEKS                       R13 R12 K19 ["action"]
      346 SETTABLE                         R12 R10 R11
      347 GETUPVAL                         R12 4
      348 LOADK                            R13 K17 ["A"]
      349 CONCAT                           R11 R12 R13
      350 DUPTABLE                         R12 K20 [{["nextState"] = "Focused", ["action"]}]
      351 MOVE                             R13 R4
      352 GETUPVAL                         R14 3
      353 GETTABLEKS                       R14 R14 K22 ["DidFocus"]
      355 CALL                             R13 1 1
      356 SETTABLEKS                       R13 R12 K19 ["action"]
      358 SETTABLE                         R12 R10 R11
      359 GETUPVAL                         R12 4
      360 LOADK                            R13 K23 ["AT"]
      361 CONCAT                           R11 R12 R13
      362 DUPTABLE                         R12 K24 [{["nextState"] = "Focusing", ["action"]}]
      363 MOVE                             R13 R4
      364 GETUPVAL                         R14 3
      365 GETTABLEKS                       R14 R14 K21 ["WillFocus"]
      367 CALL                             R13 1 1
      368 SETTABLEKS                       R13 R12 K19 ["action"]
      370 SETTABLE                         R12 R10 R11
      371 GETUPVAL                         R11 5
      372 DUPTABLE                         R12 K27 [{"action"}]
      373 MOVE                             R13 R4
      374 GETUPVAL                         R14 3
      375 GETTABLEKS                       R14 R14 K28 ["Refocus"]
      377 CALL                             R13 1 1
      378 SETTABLEKS                       R13 R12 K19 ["action"]
      380 SETTABLE                         R12 R10 R11
      381 SETTABLEKS                       R10 R9 K14 ["Blurring"]
      383 NEWTABLE                         R10 0 0
      385 SETTABLEKS                       R10 R9 K15 ["Disconnected"]
      387 CALL                             R5 4 -1
      388 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["StateTable"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K6 ["NavigationEvents"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R3 K3 [script]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["validate"]
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
