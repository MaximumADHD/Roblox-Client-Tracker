PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleNode"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["View"]
        6 DUPTABLE                         R7 K9 [{["testId"] = "--collections-enable", ["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["onActivated"]}]
        7 SETTABLEKS                       R0 R7 K4 ["LayoutOrder"]
        9 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       11 LOADN                            R9 24
       12 GETUPVAL                         R10 2
       13 CALL                             R8 2 1
       14 SETTABLEKS                       R8 R7 K5 ["Size"]
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       21 DUPTABLE                         R8 K14 [{"Glyph"}]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K0 ["createElement"]
       25 GETUPVAL                         R10 1
       26 GETTABLEKS                       R10 R10 K15 ["Icon"]
       28 DUPTABLE                         R11 K19 [{"name", "size", "style"}]
       29 GETTABLEKS                       R13 R1 K20 ["enabled"]
       31 JUMPIFNOT                        R13 ; [+8]
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R12 R12 K21 ["Enums"]
       35 GETTABLEKS                       R12 R12 K22 ["IconName"]
       37 GETTABLEKS                       R12 R12 K23 ["PlayLarge"]
       39 JUMP                             ; [+7]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R12 R12 K21 ["Enums"]
       43 GETTABLEKS                       R12 R12 K22 ["IconName"]
       45 GETTABLEKS                       R12 R12 K24 ["PauseLarge"]
       47 SETTABLEKS                       R12 R11 K16 ["name"]
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R12 R12 K21 ["Enums"]
       52 GETTABLEKS                       R12 R12 K25 ["IconSize"]
       54 GETTABLEKS                       R12 R12 K26 ["Small"]
       56 SETTABLEKS                       R12 R11 K17 ["size"]
       58 JUMPIFNOT                        R4 ; [+12]
       59 DUPTABLE                         R12 K28 [{"Color3"}]
       60 GETTABLEKS                       R13 R3 K29 ["Color"]
       62 GETTABLEKS                       R13 R13 K30 ["System"]
       64 GETTABLEKS                       R13 R13 K31 ["Neutral"]
       66 GETTABLEKS                       R13 R13 K27 ["Color3"]
       68 SETTABLEKS                       R13 R12 K27 ["Color3"]
       70 JUMP                             ; [+26]
       71 GETTABLEKS                       R13 R1 K20 ["enabled"]
       73 JUMPIFNOT                        R13 ; [+12]
       74 DUPTABLE                         R12 K28 [{"Color3"}]
       75 GETTABLEKS                       R13 R3 K29 ["Color"]
       77 GETTABLEKS                       R13 R13 K30 ["System"]
       79 GETTABLEKS                       R13 R13 K32 ["Success"]
       81 GETTABLEKS                       R13 R13 K27 ["Color3"]
       83 SETTABLEKS                       R13 R12 K27 ["Color3"]
       85 JUMP                             ; [+11]
       86 DUPTABLE                         R12 K28 [{"Color3"}]
       87 GETTABLEKS                       R13 R3 K29 ["Color"]
       89 GETTABLEKS                       R13 R13 K30 ["System"]
       91 GETTABLEKS                       R13 R13 K33 ["Alert"]
       93 GETTABLEKS                       R13 R13 K27 ["Color3"]
       95 SETTABLEKS                       R13 R12 K27 ["Color3"]
       97 SETTABLEKS                       R12 R11 K18 ["style"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K13 ["Glyph"]
      102 CALL                             R5 3 -1
      103 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Text"]
        6 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"]}]
        7 SETTABLEKS                       R0 R5 K2 ["LayoutOrder"]
        9 GETTABLEKS                       R6 R1 K7 ["text"]
       11 SETTABLEKS                       R6 R5 K1 ["Text"]
       13 SETTABLEKS                       R2 R5 K5 ["onActivated"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onToggleExpanded"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openScript"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openScript"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggleHighlight"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R2 R0 K1 ["depth"]
        4 GETTABLEKS                       R3 R0 K2 ["controller"]
        6 GETUPVAL                         R4 0
        7 CALL                             R4 0 1
        8 LOADB                            R5 0
        9 GETTABLEKS                       R6 R1 K3 ["children"]
       11 JUMPIFEQKNIL                     R6 ; [+9]
       13 GETTABLEKS                       R7 R1 K3 ["children"]
       15 LENGTH                           R6 R7
       16 LOADN                            R7 0
       17 JUMPIFLT                         R7 R6 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 NEWTABLE                         R6 16 0
       23 LOADN                            R7 0
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          REF R7
       26 LOADN                            R9 0
       27 JUMPIFNOTLT                      R9 R2 ; [+23]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K4 ["createElement"]
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R10 R10 K5 ["View"]
       35 DUPTABLE                         R11 K8 [{"LayoutOrder", "Size"}]
       36 ADDK                             R7 R7 K9 [1]
       37 MOVE                             R12 R7
       38 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       40 GETIMPORT                        R12 K12 [UDim2.fromOffset]
       42 GETUPVAL                         R14 3
       43 MUL                              R13 R2 R14
       44 LOADN                            R14 0
       45 CALL                             R12 2 1
       46 SETTABLEKS                       R12 R11 K7 ["Size"]
       48 CALL                             R9 2 1
       49 SETTABLEKS                       R9 R6 K13 ["Indent"]
       51 JUMPIFNOT                        R5 ; [+77]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K4 ["createElement"]
       55 GETUPVAL                         R10 2
       56 GETTABLEKS                       R10 R10 K5 ["View"]
       58 DUPTABLE                         R11 K19 [{["testId"] = "--collections-disclosure", ["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["onActivated"]}]
       59 ADDK                             R7 R7 K9 [1]
       60 MOVE                             R12 R7
       61 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       63 GETIMPORT                        R12 K12 [UDim2.fromOffset]
       65 GETUPVAL                         R14 4
       66 ADDK                             R13 R14 K20 [4]
       67 GETUPVAL                         R14 5
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K7 ["Size"]
       71 NEWCLOSURE                       R12 P1
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R12 R11 K18 ["onActivated"]
       76 DUPTABLE                         R12 K22 [{"Caret"}]
       77 GETUPVAL                         R13 1
       78 GETTABLEKS                       R13 R13 K4 ["createElement"]
       80 GETUPVAL                         R14 2
       81 GETTABLEKS                       R14 R14 K23 ["Icon"]
       83 DUPTABLE                         R15 K27 [{"name", "variant", "size"}]
       84 GETTABLEKS                       R17 R0 K28 ["expanded"]
       86 JUMPIFNOT                        R17 ; [+8]
       87 GETUPVAL                         R16 2
       88 GETTABLEKS                       R16 R16 K29 ["Enums"]
       90 GETTABLEKS                       R16 R16 K30 ["IconName"]
       92 GETTABLEKS                       R16 R16 K31 ["CaretSmallDown"]
       94 JUMP                             ; [+7]
       95 GETUPVAL                         R16 2
       96 GETTABLEKS                       R16 R16 K29 ["Enums"]
       98 GETTABLEKS                       R16 R16 K30 ["IconName"]
      100 GETTABLEKS                       R16 R16 K32 ["CaretSmallRight"]
      102 SETTABLEKS                       R16 R15 K24 ["name"]
      104 GETUPVAL                         R16 2
      105 GETTABLEKS                       R16 R16 K29 ["Enums"]
      107 GETTABLEKS                       R16 R16 K33 ["IconVariant"]
      109 GETTABLEKS                       R16 R16 K34 ["Filled"]
      111 SETTABLEKS                       R16 R15 K25 ["variant"]
      113 GETUPVAL                         R16 2
      114 GETTABLEKS                       R16 R16 K29 ["Enums"]
      116 GETTABLEKS                       R16 R16 K35 ["IconSize"]
      118 GETTABLEKS                       R16 R16 K36 ["Small"]
      120 SETTABLEKS                       R16 R15 K26 ["size"]
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K21 ["Caret"]
      125 CALL                             R9 3 1
      126 SETTABLEKS                       R9 R6 K37 ["Disclosure"]
      128 JUMP                             ; [+22]
      129 GETUPVAL                         R9 1
      130 GETTABLEKS                       R9 R9 K4 ["createElement"]
      132 GETUPVAL                         R10 2
      133 GETTABLEKS                       R10 R10 K5 ["View"]
      135 DUPTABLE                         R11 K8 [{"LayoutOrder", "Size"}]
      136 ADDK                             R7 R7 K9 [1]
      137 MOVE                             R12 R7
      138 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      140 GETIMPORT                        R12 K12 [UDim2.fromOffset]
      142 GETUPVAL                         R14 4
      143 ADDK                             R13 R14 K20 [4]
      144 LOADN                            R14 0
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K7 ["Size"]
      148 CALL                             R9 2 1
      149 SETTABLEKS                       R9 R6 K37 ["Disclosure"]
      151 GETTABLEKS                       R9 R1 K38 ["type"]
      153 JUMPIFNOTEQKS                    R9 K39 ["callback"] ; [+103]
      155 GETUPVAL                         R9 6
      156 ADDK                             R7 R7 K9 [1]
      157 MOVE                             R10 R7
      158 MOVE                             R11 R1
      159 MOVE                             R12 R3
      160 MOVE                             R13 R4
      161 GETTABLEKS                       R15 R0 K40 ["parentEnabled"]
      163 JUMPIFEQKB                       R15 FALSE ; [+2]
      165 LOADB                            R14 0 +1
      166 LOADB                            R14 1
      167 CALL                             R9 5 1
      168 SETTABLEKS                       R9 R6 K41 ["Enable"]
      170 GETTABLEKS                       R9 R1 K42 ["scriptName"]
      172 JUMPIFNOT                        R9 ; [+59]
      173 GETTABLEKS                       R9 R1 K42 ["scriptName"]
      175 JUMPIFEQKS                       R9 K43 [""] ; [+56]
      177 GETUPVAL                         R9 1
      178 GETTABLEKS                       R9 R9 K4 ["createElement"]
      180 GETUPVAL                         R10 2
      181 GETTABLEKS                       R10 R10 K5 ["View"]
      183 DUPTABLE                         R11 K45 [{["testId"] = "--collections-open-script", ["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["onActivated"]}]
      184 ADDK                             R7 R7 K9 [1]
      185 MOVE                             R12 R7
      186 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      188 GETIMPORT                        R12 K12 [UDim2.fromOffset]
      190 LOADN                            R13 20
      191 GETUPVAL                         R14 5
      192 CALL                             R12 2 1
      193 SETTABLEKS                       R12 R11 K7 ["Size"]
      195 NEWCLOSURE                       R12 P2
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R1
      198 SETTABLEKS                       R12 R11 K18 ["onActivated"]
      200 DUPTABLE                         R12 K47 [{"Glyph"}]
      201 GETUPVAL                         R13 1
      202 GETTABLEKS                       R13 R13 K4 ["createElement"]
      204 GETUPVAL                         R14 2
      205 GETTABLEKS                       R14 R14 K23 ["Icon"]
      207 DUPTABLE                         R15 K48 [{"name", "size"}]
      208 GETUPVAL                         R16 2
      209 GETTABLEKS                       R16 R16 K29 ["Enums"]
      211 GETTABLEKS                       R16 R16 K30 ["IconName"]
      213 GETTABLEKS                       R16 R16 K49 ["DocumentQuestionMark"]
      215 SETTABLEKS                       R16 R15 K24 ["name"]
      217 GETUPVAL                         R16 2
      218 GETTABLEKS                       R16 R16 K29 ["Enums"]
      220 GETTABLEKS                       R16 R16 K35 ["IconSize"]
      222 GETTABLEKS                       R16 R16 K36 ["Small"]
      224 SETTABLEKS                       R16 R15 K26 ["size"]
      226 CALL                             R13 2 1
      227 SETTABLEKS                       R13 R12 K46 ["Glyph"]
      229 CALL                             R9 3 1
      230 SETTABLEKS                       R9 R6 K50 ["OpenScript"]
      232 ADDK                             R7 R7 K9 [1]
      233 MOVE                             R10 R7
      234 NEWCLOSURE                       R11 P3
      235 CAPTURE                          VAL R3
      236 CAPTURE                          VAL R1
      237 GETUPVAL                         R12 1
      238 GETTABLEKS                       R12 R12 K4 ["createElement"]
      240 GETUPVAL                         R13 2
      241 GETTABLEKS                       R13 R13 K51 ["Text"]
      243 DUPTABLE                         R14 K53 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"]}]
      244 SETTABLEKS                       R10 R14 K6 ["LayoutOrder"]
      246 GETTABLEKS                       R15 R1 K54 ["text"]
      248 SETTABLEKS                       R15 R14 K51 ["Text"]
      250 SETTABLEKS                       R11 R14 K18 ["onActivated"]
      252 CALL                             R12 2 1
      253 MOVE                             R9 R12
      254 SETTABLEKS                       R9 R6 K55 ["Name"]
      256 JUMP                             ; [+230]
      257 GETTABLEKS                       R9 R1 K38 ["type"]
      259 JUMPIFNOTEQKS                    R9 K56 ["collection"] ; [+158]
      261 GETUPVAL                         R9 6
      262 ADDK                             R7 R7 K9 [1]
      263 MOVE                             R10 R7
      264 MOVE                             R11 R1
      265 MOVE                             R12 R3
      266 MOVE                             R13 R4
      267 CALL                             R9 4 1
      268 SETTABLEKS                       R9 R6 K41 ["Enable"]
      270 GETTABLEKS                       R9 R3 K57 ["isHighlighted"]
      272 MOVE                             R10 R1
      273 CALL                             R9 1 1
      274 GETUPVAL                         R10 1
      275 GETTABLEKS                       R10 R10 K4 ["createElement"]
      277 GETUPVAL                         R11 2
      278 GETTABLEKS                       R11 R11 K5 ["View"]
      280 DUPTABLE                         R12 K61 [{["testId"] = "--collections-highlight", ["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center", ["cornerRadius"], ["backgroundStyle"], ["onActivated"]}]
      281 ADDK                             R7 R7 K9 [1]
      282 MOVE                             R13 R7
      283 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      285 GETIMPORT                        R13 K12 [UDim2.fromOffset]
      287 LOADN                            R14 24
      288 GETUPVAL                         R16 5
      289 SUBK                             R15 R16 K62 [6]
      290 CALL                             R13 2 1
      291 SETTABLEKS                       R13 R12 K7 ["Size"]
      293 GETIMPORT                        R13 K65 [UDim.new]
      295 LOADN                            R14 0
      296 LOADN                            R15 4
      297 CALL                             R13 2 1
      298 SETTABLEKS                       R13 R12 K59 ["cornerRadius"]
      300 JUMPIFNOT                        R9 ; [+12]
      301 DUPTABLE                         R13 K69 [{["Color3"], ["Transparency"] = 0.35}]
      302 GETTABLEKS                       R14 R4 K70 ["Color"]
      304 GETTABLEKS                       R14 R14 K71 ["System"]
      306 GETTABLEKS                       R14 R14 K72 ["Emphasis"]
      308 GETTABLEKS                       R14 R14 K66 ["Color3"]
      310 SETTABLEKS                       R14 R13 K66 ["Color3"]
      312 JUMP                             ; [+11]
      313 DUPTABLE                         R13 K73 [{["Color3"], ["Transparency"] = 1}]
      314 GETTABLEKS                       R14 R4 K70 ["Color"]
      316 GETTABLEKS                       R14 R14 K71 ["System"]
      318 GETTABLEKS                       R14 R14 K72 ["Emphasis"]
      320 GETTABLEKS                       R14 R14 K66 ["Color3"]
      322 SETTABLEKS                       R14 R13 K66 ["Color3"]
      324 SETTABLEKS                       R13 R12 K60 ["backgroundStyle"]
      326 NEWCLOSURE                       R13 P4
      327 CAPTURE                          VAL R3
      328 CAPTURE                          VAL R1
      329 SETTABLEKS                       R13 R12 K18 ["onActivated"]
      331 DUPTABLE                         R13 K47 [{"Glyph"}]
      332 GETUPVAL                         R14 1
      333 GETTABLEKS                       R14 R14 K4 ["createElement"]
      335 GETUPVAL                         R15 2
      336 GETTABLEKS                       R15 R15 K23 ["Icon"]
      338 DUPTABLE                         R16 K75 [{"name", "size", "style"}]
      339 JUMPIFNOT                        R9 ; [+8]
      340 GETUPVAL                         R17 2
      341 GETTABLEKS                       R17 R17 K29 ["Enums"]
      343 GETTABLEKS                       R17 R17 K30 ["IconName"]
      345 GETTABLEKS                       R17 R17 K76 ["Eye"]
      347 JUMP                             ; [+7]
      348 GETUPVAL                         R17 2
      349 GETTABLEKS                       R17 R17 K29 ["Enums"]
      351 GETTABLEKS                       R17 R17 K30 ["IconName"]
      353 GETTABLEKS                       R17 R17 K77 ["EyeSlash"]
      355 SETTABLEKS                       R17 R16 K24 ["name"]
      357 GETUPVAL                         R17 2
      358 GETTABLEKS                       R17 R17 K29 ["Enums"]
      360 GETTABLEKS                       R17 R17 K35 ["IconSize"]
      362 GETTABLEKS                       R17 R17 K36 ["Small"]
      364 SETTABLEKS                       R17 R16 K26 ["size"]
      366 JUMPIFNOT                        R9 ; [+12]
      367 DUPTABLE                         R17 K78 [{"Color3"}]
      368 GETTABLEKS                       R18 R4 K70 ["Color"]
      370 GETTABLEKS                       R18 R18 K79 ["Content"]
      372 GETTABLEKS                       R18 R18 K80 ["Default"]
      374 GETTABLEKS                       R18 R18 K66 ["Color3"]
      376 SETTABLEKS                       R18 R17 K66 ["Color3"]
      378 JUMP                             ; [+11]
      379 DUPTABLE                         R17 K78 [{"Color3"}]
      380 GETTABLEKS                       R18 R4 K70 ["Color"]
      382 GETTABLEKS                       R18 R18 K79 ["Content"]
      384 GETTABLEKS                       R18 R18 K81 ["Muted"]
      386 GETTABLEKS                       R18 R18 K66 ["Color3"]
      388 SETTABLEKS                       R18 R17 K66 ["Color3"]
      390 SETTABLEKS                       R17 R16 K74 ["style"]
      392 CALL                             R14 2 1
      393 SETTABLEKS                       R14 R13 K46 ["Glyph"]
      395 CALL                             R10 3 1
      396 SETTABLEKS                       R10 R6 K82 ["Highlight"]
      398 ADDK                             R7 R7 K9 [1]
      399 MOVE                             R11 R7
      400 GETUPVAL                         R12 1
      401 GETTABLEKS                       R12 R12 K4 ["createElement"]
      403 GETUPVAL                         R13 2
      404 GETTABLEKS                       R13 R13 K51 ["Text"]
      406 DUPTABLE                         R14 K84 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"] = }]
      407 SETTABLEKS                       R11 R14 K6 ["LayoutOrder"]
      409 GETTABLEKS                       R15 R1 K54 ["text"]
      411 SETTABLEKS                       R15 R14 K51 ["Text"]
      413 CALL                             R12 2 1
      414 MOVE                             R10 R12
      415 SETTABLEKS                       R10 R6 K55 ["Name"]
      417 JUMP                             ; [+69]
      418 GETUPVAL                         R9 1
      419 GETTABLEKS                       R9 R9 K4 ["createElement"]
      421 GETUPVAL                         R10 2
      422 GETTABLEKS                       R10 R10 K5 ["View"]
      424 DUPTABLE                         R11 K85 [{["LayoutOrder"], ["Size"], ["tag"] = "align-x-center align-y-center"}]
      425 ADDK                             R7 R7 K9 [1]
      426 MOVE                             R12 R7
      427 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      429 GETIMPORT                        R12 K12 [UDim2.fromOffset]
      431 LOADN                            R13 24
      432 GETUPVAL                         R14 5
      433 CALL                             R12 2 1
      434 SETTABLEKS                       R12 R11 K7 ["Size"]
      436 DUPTABLE                         R12 K47 [{"Glyph"}]
      437 GETUPVAL                         R13 1
      438 GETTABLEKS                       R13 R13 K4 ["createElement"]
      440 GETUPVAL                         R14 2
      441 GETTABLEKS                       R14 R14 K23 ["Icon"]
      443 DUPTABLE                         R15 K48 [{"name", "size"}]
      444 GETUPVAL                         R16 2
      445 GETTABLEKS                       R16 R16 K29 ["Enums"]
      447 GETTABLEKS                       R16 R16 K30 ["IconName"]
      449 GETTABLEKS                       R16 R16 K86 ["ComputerMonitor"]
      451 SETTABLEKS                       R16 R15 K24 ["name"]
      453 GETUPVAL                         R16 2
      454 GETTABLEKS                       R16 R16 K29 ["Enums"]
      456 GETTABLEKS                       R16 R16 K35 ["IconSize"]
      458 GETTABLEKS                       R16 R16 K36 ["Small"]
      460 SETTABLEKS                       R16 R15 K26 ["size"]
      462 CALL                             R13 2 1
      463 SETTABLEKS                       R13 R12 K46 ["Glyph"]
      465 CALL                             R9 3 1
      466 SETTABLEKS                       R9 R6 K87 ["NodeIcon"]
      468 ADDK                             R7 R7 K9 [1]
      469 MOVE                             R10 R7
      470 GETUPVAL                         R11 1
      471 GETTABLEKS                       R11 R11 K4 ["createElement"]
      473 GETUPVAL                         R12 2
      474 GETTABLEKS                       R12 R12 K51 ["Text"]
      476 DUPTABLE                         R13 K84 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left text-align-y-center text-truncate-end", ["onActivated"] = }]
      477 SETTABLEKS                       R10 R13 K6 ["LayoutOrder"]
      479 GETTABLEKS                       R14 R1 K54 ["text"]
      481 SETTABLEKS                       R14 R13 K51 ["Text"]
      483 CALL                             R11 2 1
      484 MOVE                             R9 R11
      485 SETTABLEKS                       R9 R6 K55 ["Name"]
      487 GETTABLEKS                       R9 R1 K88 ["enabled"]
      489 JUMPIFNOT                        R9 ; [+35]
      490 GETTABLEKS                       R9 R1 K89 ["runtime"]
      492 JUMPIFNOT                        R9 ; [+32]
      493 GETUPVAL                         R9 1
      494 GETTABLEKS                       R9 R9 K4 ["createElement"]
      496 GETUPVAL                         R10 2
      497 GETTABLEKS                       R10 R10 K51 ["Text"]
      499 DUPTABLE                         R11 K91 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "text-body-small text-align-x-right text-align-y-center text-truncate-end content-muted"}]
      500 ADDK                             R7 R7 K9 [1]
      501 MOVE                             R12 R7
      502 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      504 GETIMPORT                        R15 K94 [string.format]
      506 LOADK                            R16 K95 ["%.2f"]
      507 GETTABLEKS                       R17 R1 K89 ["runtime"]
      509 CALL                             R15 2 1
      510 MOVE                             R13 R15
      511 LOADK                            R14 K96 [" ms"]
      512 CONCAT                           R12 R13 R14
      513 SETTABLEKS                       R12 R11 K51 ["Text"]
      515 GETIMPORT                        R12 K12 [UDim2.fromOffset]
      517 LOADN                            R13 56
      518 GETUPVAL                         R14 5
      519 CALL                             R12 2 1
      520 SETTABLEKS                       R12 R11 K7 ["Size"]
      522 CALL                             R9 2 1
      523 SETTABLEKS                       R9 R6 K97 ["Runtime"]
      525 GETTABLEKS                       R9 R1 K98 ["history"]
      527 JUMPIFNOT                        R9 ; [+49]
      528 GETTABLEKS                       R10 R1 K98 ["history"]
      530 LENGTH                           R9 R10
      531 LOADN                            R10 0
      532 JUMPIFNOTLT                      R10 R9 ; [+44]
      534 GETUPVAL                         R9 1
      535 GETTABLEKS                       R9 R9 K4 ["createElement"]
      537 GETUPVAL                         R10 2
      538 GETTABLEKS                       R10 R10 K5 ["View"]
      540 DUPTABLE                         R11 K100 [{["LayoutOrder"], ["Size"], ["tag"] = "align-y-center"}]
      541 ADDK                             R7 R7 K9 [1]
      542 MOVE                             R12 R7
      543 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      545 GETIMPORT                        R12 K12 [UDim2.fromOffset]
      547 LOADN                            R13 64
      548 GETUPVAL                         R14 5
      549 CALL                             R12 2 1
      550 SETTABLEKS                       R12 R11 K7 ["Size"]
      552 DUPTABLE                         R12 K102 [{"Graph"}]
      553 GETUPVAL                         R13 1
      554 GETTABLEKS                       R13 R13 K4 ["createElement"]
      556 GETUPVAL                         R14 7
      557 DUPTABLE                         R15 K105 [{["history"], ["width"] = 64, ["Size"]}]
      558 GETTABLEKS                       R16 R1 K98 ["history"]
      560 SETTABLEKS                       R16 R15 K98 ["history"]
      562 GETIMPORT                        R16 K12 [UDim2.fromOffset]
      564 LOADN                            R17 64
      565 GETUPVAL                         R19 5
      566 SUBK                             R18 R19 K62 [6]
      567 CALL                             R16 2 1
      568 SETTABLEKS                       R16 R15 K7 ["Size"]
      570 CALL                             R13 2 1
      571 SETTABLEKS                       R13 R12 K101 ["Graph"]
      573 CALL                             R9 3 1
      574 SETTABLEKS                       R9 R6 K101 ["Graph"]
      576 JUMP                             ; [+40]
      577 GETTABLEKS                       R9 R1 K26 ["size"]
      579 JUMPIFNOT                        R9 ; [+37]
      580 GETUPVAL                         R9 1
      581 GETTABLEKS                       R9 R9 K4 ["createElement"]
      583 GETUPVAL                         R10 2
      584 GETTABLEKS                       R10 R10 K51 ["Text"]
      586 DUPTABLE                         R11 K91 [{["LayoutOrder"], ["Text"], ["Size"], ["tag"] = "text-body-small text-align-x-right text-align-y-center text-truncate-end content-muted"}]
      587 ADDK                             R7 R7 K9 [1]
      588 MOVE                             R12 R7
      589 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      591 GETTABLEKS                       R12 R0 K106 ["localization"]
      593 LOADK                            R14 K107 ["App"]
      594 LOADK                            R15 K108 ["InstanceCount"]
      595 DUPTABLE                         R16 K110 [{"count"}]
      596 LOADK                            R18 K43 [""]
      597 GETTABLEKS                       R19 R1 K26 ["size"]
      599 CONCAT                           R17 R18 R19
      600 SETTABLEKS                       R17 R16 K109 ["count"]
      602 NAMECALL                         R12 R12 K111 ["getText"]
      604 CALL                             R12 4 1
      605 SETTABLEKS                       R12 R11 K51 ["Text"]
      607 GETIMPORT                        R12 K12 [UDim2.fromOffset]
      609 LOADN                            R13 64
      610 GETUPVAL                         R14 5
      611 CALL                             R12 2 1
      612 SETTABLEKS                       R12 R11 K7 ["Size"]
      614 CALL                             R9 2 1
      615 SETTABLEKS                       R9 R6 K7 ["Size"]
      617 GETUPVAL                         R9 1
      618 GETTABLEKS                       R9 R9 K4 ["createElement"]
      620 GETUPVAL                         R10 2
      621 GETTABLEKS                       R10 R10 K5 ["View"]
      623 DUPTABLE                         R11 K114 [{["testId"] = "--collections-row", ["Size"], ["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall padding-x-xsmall"}]
      624 GETIMPORT                        R12 K115 [UDim2.new]
      626 LOADN                            R13 1
      627 LOADN                            R14 0
      628 LOADN                            R15 0
      629 GETUPVAL                         R16 5
      630 CALL                             R12 4 1
      631 SETTABLEKS                       R12 R11 K7 ["Size"]
      633 GETTABLEKS                       R12 R0 K116 ["order"]
      635 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      637 MOVE                             R12 R6
      638 CALL                             R9 3 -1
      639 CLOSEUPVALS                      R7
      640 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K11 ["Parent"]
       31 GETTABLEKS                       R5 R5 K12 ["HistoryGraph"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K13 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K11 ["Parent"]
       47 GETTABLEKS                       R7 R7 K15 ["constants"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K16 ["INDENT_PX"]
       52 GETTABLEKS                       R8 R6 K17 ["TRIANGLE_W"]
       54 GETTABLEKS                       R9 R6 K18 ["ROW_HEIGHT"]
       56 DUPCLOSURE                       R10 K19 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R9
       60 DUPCLOSURE                       R11 K20 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R1
       63 DUPCLOSURE                       R12 K21 [PROTO_8]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R4
       72 RETURN                           R12 1
