PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+8]
        7 MOVE                             R1 R0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 RETURN                           R1 6
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K1 [typeof]
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+14]
       21 GETTABLEKS                       R1 R0 K4 ["label"]
       23 GETTABLEKS                       R2 R0 K5 ["input"]
       25 GETTABLEKS                       R3 R0 K6 ["onActivated"]
       27 GETTABLEKS                       R4 R0 K7 ["onSecondaryActivated"]
       29 GETTABLEKS                       R5 R0 K8 ["sortDirection"]
       31 GETTABLEKS                       R6 R0 K9 ["testId"]
       33 RETURN                           R1 6
       34 LOADNIL                          R1
       35 LOADNIL                          R2
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 LOADNIL                          R6
       40 RETURN                           R1 6

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isHeader"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 DUPTABLE                         R0 K4 [{["iconName"] = "flag", ["iconVariant"]}]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K5 ["Filled"]
        8 SETTABLEKS                       R1 R0 K3 ["iconVariant"]
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K6 ["status"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K7 ["InvalidFlag"]
       17 JUMPIFNOTEQ                      R0 R1 ; [+17]
       19 DUPTABLE                         R0 K12 [{["iconName"] = "circle-minus", ["iconVariant"], ["textStyle"], ["tooltip"] = "This override name doesn't match a flag type."}]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K5 ["Filled"]
       23 SETTABLEKS                       R1 R0 K3 ["iconVariant"]
       25 GETUPVAL                         R1 3
       26 GETTABLEKS                       R1 R1 K13 ["Color"]
       28 GETTABLEKS                       R1 R1 K14 ["System"]
       30 GETTABLEKS                       R1 R1 K15 ["Alert"]
       32 SETTABLEKS                       R1 R0 K9 ["textStyle"]
       34 RETURN                           R0 1
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K6 ["status"]
       38 GETUPVAL                         R1 2
       39 GETTABLEKS                       R1 R1 K16 ["InvalidValue"]
       41 JUMPIFNOTEQ                      R0 R1 ; [+17]
       43 DUPTABLE                         R0 K19 [{["iconName"] = "circle-question", ["iconVariant"], ["textStyle"], ["tooltip"] = "This value isn't valid for the flag's type."}]
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K5 ["Filled"]
       47 SETTABLEKS                       R1 R0 K3 ["iconVariant"]
       49 GETUPVAL                         R1 3
       50 GETTABLEKS                       R1 R1 K13 ["Color"]
       52 GETTABLEKS                       R1 R1 K14 ["System"]
       54 GETTABLEKS                       R1 R1 K20 ["Warning"]
       56 SETTABLEKS                       R1 R0 K9 ["textStyle"]
       58 RETURN                           R0 1
       59 GETUPVAL                         R0 0
       60 GETTABLEKS                       R0 R0 K6 ["status"]
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K21 ["MissingFlag"]
       65 JUMPIFNOTEQ                      R0 R1 ; [+17]
       67 DUPTABLE                         R0 K23 [{["iconName"] = "circle-question", ["iconVariant"], ["textStyle"], ["tooltip"] = "This flag isn't in the loaded list."}]
       68 GETUPVAL                         R1 1
       69 GETTABLEKS                       R1 R1 K5 ["Filled"]
       71 SETTABLEKS                       R1 R0 K3 ["iconVariant"]
       73 GETUPVAL                         R1 3
       74 GETTABLEKS                       R1 R1 K13 ["Color"]
       76 GETTABLEKS                       R1 R1 K14 ["System"]
       78 GETTABLEKS                       R1 R1 K20 ["Warning"]
       80 SETTABLEKS                       R1 R0 K9 ["textStyle"]
       82 RETURN                           R0 1
       83 GETUPVAL                         R0 4
       84 JUMPIFNOT                        R0 ; [+16]
       85 DUPTABLE                         R0 K26 [{["iconName"] = "circle-check", ["iconVariant"], ["textStyle"], ["tooltip"] = "This override changes the default value."}]
       86 GETUPVAL                         R1 1
       87 GETTABLEKS                       R1 R1 K5 ["Filled"]
       89 SETTABLEKS                       R1 R0 K3 ["iconVariant"]
       91 GETUPVAL                         R1 3
       92 GETTABLEKS                       R1 R1 K13 ["Color"]
       94 GETTABLEKS                       R1 R1 K27 ["Content"]
       96 GETTABLEKS                       R1 R1 K28 ["Link"]
       98 SETTABLEKS                       R1 R0 K9 ["textStyle"]
      100 RETURN                           R0 1
      101 GETUPVAL                         R0 5
      102 JUMPIFNOT                        R0 ; [+11]
      103 DUPTABLE                         R0 K31 [{["iconName"] = "circle", ["textStyle"], ["tooltip"] = "This override matches the default value."}]
      104 GETUPVAL                         R1 3
      105 GETTABLEKS                       R1 R1 K13 ["Color"]
      107 GETTABLEKS                       R1 R1 K27 ["Content"]
      109 GETTABLEKS                       R1 R1 K32 ["Emphasis"]
      111 SETTABLEKS                       R1 R0 K9 ["textStyle"]
      113 RETURN                           R0 1
      114 NEWTABLE                         R0 0 0
      116 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K1 ["Dictionary"]
        7 GETTABLEKS                       R6 R6 K2 ["join"]
        9 DUPTABLE                         R7 K8 [{"tag", "text", "fontStyle", "textStyle", "LayoutOrder"}]
       10 SETTABLEKS                       R1 R7 K3 ["tag"]
       12 SETTABLEKS                       R2 R7 K4 ["text"]
       14 GETUPVAL                         R8 3
       15 SETTABLEKS                       R8 R7 K5 ["fontStyle"]
       17 GETUPVAL                         R8 4
       18 GETTABLEKS                       R8 R8 K6 ["textStyle"]
       20 SETTABLEKS                       R8 R7 K6 ["textStyle"]
       22 SETTABLEKS                       R0 R7 K7 ["LayoutOrder"]
       24 MOVE                             R8 R3
       25 JUMPIF                           R8 ; [+2]
       26 NEWTABLE                         R8 0 0
       28 CALL                             R6 2 -1
       29 CALL                             R4 -1 -1
       30 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Size"]
        4 GETTABLEKS                       R2 R2 K1 ["Size_800"]
        6 GETTABLEKS                       R5 R0 K2 ["value"]
        8 FASTCALL1                        TYPEOF R5 ; [+2]
        9 GETIMPORT                        R4 K4 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+4]
       14 GETTABLEKS                       R3 R0 K2 ["value"]
       16 JUMP                             ; [+23]
       17 GETTABLEKS                       R5 R0 K2 ["value"]
       19 FASTCALL1                        TYPEOF R5 ; [+2]
       20 GETIMPORT                        R4 K4 [typeof]
       22 CALL                             R4 1 1
       23 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+15]
       25 GETTABLEKS                       R4 R0 K2 ["value"]
       27 GETTABLEKS                       R4 R4 K7 ["label"]
       29 JUMPIFNOT                        R4 ; [+9]
       30 GETTABLEKS                       R4 R0 K2 ["value"]
       32 GETTABLEKS                       R4 R4 K7 ["label"]
       34 FASTCALL1                        TOSTRING R4 ; [+2]
       35 GETIMPORT                        R3 K9 [tostring]
       37 CALL                             R3 1 1
       38 JUMP                             ; [+1]
       39 LOADNIL                          R3
       40 GETTABLEKS                       R5 R0 K10 ["overrideValue"]
       42 JUMPIFNOTEQKNIL                  R5 ; [+2]
       44 LOADB                            R4 0 +1
       45 LOADB                            R4 1
       46 MOVE                             R5 R4
       47 JUMPIFNOT                        R5 ; [+6]
       48 GETTABLEKS                       R6 R0 K10 ["overrideValue"]
       50 JUMPIFNOTEQ                      R6 R3 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K11 ["useMemo"]
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R8 0 5
       66 GETTABLEKS                       R9 R0 K12 ["isHeader"]
       68 GETTABLEKS                       R10 R0 K13 ["status"]
       70 MOVE                             R11 R5
       71 MOVE                             R12 R4
       72 MOVE                             R13 R1
       73 SETLIST                          R8 R9 5 [1]
       75 CALL                             R6 2 1
       76 GETTABLEKS                       R8 R6 K14 ["iconName"]
       78 JUMPIFNOTEQKNIL                  R8 ; [+2]
       80 LOADB                            R7 0 +1
       81 LOADB                            R7 1
       82 JUMPIFNOT                        R7 ; [+5]
       83 GETTABLEKS                       R8 R1 K15 ["Typography"]
       85 GETTABLEKS                       R8 R8 K16 ["LabelSmall"]
       87 JUMP                             ; [+4]
       88 GETTABLEKS                       R8 R1 K15 ["Typography"]
       90 GETTABLEKS                       R8 R8 K17 ["BodySmall"]
       92 GETTABLEKS                       R11 R0 K19 ["LayoutOrder"]
       94 MODK                             R10 R11 K18 [2]
       95 JUMPIFNOTEQKN                    R10 K20 [0] ; [+8]
       97 GETTABLEKS                       R9 R1 K21 ["Color"]
       99 GETTABLEKS                       R9 R9 K22 ["Surface"]
      101 GETTABLEKS                       R9 R9 K23 ["Surface_100"]
      103 JUMP                             ; [+6]
      104 GETTABLEKS                       R9 R1 K21 ["Color"]
      106 GETTABLEKS                       R9 R9 K22 ["Surface"]
      108 GETTABLEKS                       R9 R9 K24 ["Surface_0"]
      110 NEWCLOSURE                       R10 P1
      111 CAPTURE                          UPVAL U1
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R6
      116 GETTABLEKS                       R12 R0 K25 ["override"]
      118 JUMPIFNOTEQKNIL                  R12 ; [+2]
      120 LOADB                            R11 0 +1
      121 LOADB                            R11 1
      122 GETTABLEKS                       R18 R0 K26 ["type"]
      124 FASTCALL1                        TYPEOF R18 ; [+3]
      125 MOVE                             R20 R18
      126 GETIMPORT                        R19 K4 [typeof]
      128 CALL                             R19 1 1
      129 JUMPIFNOTEQKS                    R19 K5 ["string"] ; [+8]
      131 MOVE                             R12 R18
      132 LOADNIL                          R13
      133 LOADNIL                          R14
      134 LOADNIL                          R15
      135 LOADNIL                          R16
      136 LOADNIL                          R17
      137 JUMP                             ; [+26]
      138 FASTCALL1                        TYPEOF R18 ; [+3]
      139 MOVE                             R20 R18
      140 GETIMPORT                        R19 K4 [typeof]
      142 CALL                             R19 1 1
      143 JUMPIFNOTEQKS                    R19 K6 ["table"] ; [+14]
      145 GETTABLEKS                       R12 R18 K7 ["label"]
      147 GETTABLEKS                       R13 R18 K27 ["input"]
      149 GETTABLEKS                       R14 R18 K28 ["onActivated"]
      151 GETTABLEKS                       R15 R18 K29 ["onSecondaryActivated"]
      153 GETTABLEKS                       R16 R18 K30 ["sortDirection"]
      155 GETTABLEKS                       R17 R18 K31 ["testId"]
      157 JUMP                             ; [+6]
      158 LOADNIL                          R12
      159 LOADNIL                          R13
      160 LOADNIL                          R14
      161 LOADNIL                          R15
      162 LOADNIL                          R16
      163 LOADNIL                          R17
      164 GETTABLEKS                       R24 R0 K32 ["name"]
      166 FASTCALL1                        TYPEOF R24 ; [+3]
      167 MOVE                             R26 R24
      168 GETIMPORT                        R25 K4 [typeof]
      170 CALL                             R25 1 1
      171 JUMPIFNOTEQKS                    R25 K5 ["string"] ; [+8]
      173 MOVE                             R18 R24
      174 LOADNIL                          R19
      175 LOADNIL                          R20
      176 LOADNIL                          R21
      177 LOADNIL                          R22
      178 LOADNIL                          R23
      179 JUMP                             ; [+26]
      180 FASTCALL1                        TYPEOF R24 ; [+3]
      181 MOVE                             R26 R24
      182 GETIMPORT                        R25 K4 [typeof]
      184 CALL                             R25 1 1
      185 JUMPIFNOTEQKS                    R25 K6 ["table"] ; [+14]
      187 GETTABLEKS                       R18 R24 K7 ["label"]
      189 GETTABLEKS                       R19 R24 K27 ["input"]
      191 GETTABLEKS                       R20 R24 K28 ["onActivated"]
      193 GETTABLEKS                       R21 R24 K29 ["onSecondaryActivated"]
      195 GETTABLEKS                       R22 R24 K30 ["sortDirection"]
      197 GETTABLEKS                       R23 R24 K31 ["testId"]
      199 JUMP                             ; [+6]
      200 LOADNIL                          R18
      201 LOADNIL                          R19
      202 LOADNIL                          R20
      203 LOADNIL                          R21
      204 LOADNIL                          R22
      205 LOADNIL                          R23
      206 GETTABLEKS                       R30 R0 K2 ["value"]
      208 FASTCALL1                        TYPEOF R30 ; [+3]
      209 MOVE                             R32 R30
      210 GETIMPORT                        R31 K4 [typeof]
      212 CALL                             R31 1 1
      213 JUMPIFNOTEQKS                    R31 K5 ["string"] ; [+8]
      215 MOVE                             R24 R30
      216 LOADNIL                          R25
      217 LOADNIL                          R26
      218 LOADNIL                          R27
      219 LOADNIL                          R28
      220 LOADNIL                          R29
      221 JUMP                             ; [+26]
      222 FASTCALL1                        TYPEOF R30 ; [+3]
      223 MOVE                             R32 R30
      224 GETIMPORT                        R31 K4 [typeof]
      226 CALL                             R31 1 1
      227 JUMPIFNOTEQKS                    R31 K6 ["table"] ; [+14]
      229 GETTABLEKS                       R24 R30 K7 ["label"]
      231 GETTABLEKS                       R25 R30 K27 ["input"]
      233 GETTABLEKS                       R26 R30 K28 ["onActivated"]
      235 GETTABLEKS                       R27 R30 K29 ["onSecondaryActivated"]
      237 GETTABLEKS                       R28 R30 K30 ["sortDirection"]
      239 GETTABLEKS                       R29 R30 K31 ["testId"]
      241 JUMP                             ; [+6]
      242 LOADNIL                          R24
      243 LOADNIL                          R25
      244 LOADNIL                          R26
      245 LOADNIL                          R27
      246 LOADNIL                          R28
      247 LOADNIL                          R29
      248 GETTABLEKS                       R36 R0 K25 ["override"]
      250 FASTCALL1                        TYPEOF R36 ; [+3]
      251 MOVE                             R38 R36
      252 GETIMPORT                        R37 K4 [typeof]
      254 CALL                             R37 1 1
      255 JUMPIFNOTEQKS                    R37 K5 ["string"] ; [+8]
      257 MOVE                             R30 R36
      258 LOADNIL                          R31
      259 LOADNIL                          R32
      260 LOADNIL                          R33
      261 LOADNIL                          R34
      262 LOADNIL                          R35
      263 JUMP                             ; [+26]
      264 FASTCALL1                        TYPEOF R36 ; [+3]
      265 MOVE                             R38 R36
      266 GETIMPORT                        R37 K4 [typeof]
      268 CALL                             R37 1 1
      269 JUMPIFNOTEQKS                    R37 K6 ["table"] ; [+14]
      271 GETTABLEKS                       R30 R36 K7 ["label"]
      273 GETTABLEKS                       R31 R36 K27 ["input"]
      275 GETTABLEKS                       R32 R36 K28 ["onActivated"]
      277 GETTABLEKS                       R33 R36 K29 ["onSecondaryActivated"]
      279 GETTABLEKS                       R34 R36 K30 ["sortDirection"]
      281 GETTABLEKS                       R35 R36 K31 ["testId"]
      283 JUMP                             ; [+6]
      284 LOADNIL                          R30
      285 LOADNIL                          R31
      286 LOADNIL                          R32
      287 LOADNIL                          R33
      288 LOADNIL                          R34
      289 LOADNIL                          R35
      290 GETUPVAL                         R36 1
      291 GETTABLEKS                       R36 R36 K33 ["createElement"]
      293 GETUPVAL                         R37 6
      294 DUPTABLE                         R38 K38 [{["tag"] = "row gap-xsmall flex-x-fill items-stretch", [2], ["backgroundStyle"], ["onActivated"], ["onStateChanged"], ["LayoutOrder"]}]
      295 GETIMPORT                        R39 K41 [UDim2.new]
      297 LOADN                            R40 1
      298 GETTABLEKS                       R42 R0 K12 ["isHeader"]
      300 JUMPIFNOT                        R42 ; [+6]
      301 GETTABLEKS                       R42 R1 K42 ["Padding"]
      303 GETTABLEKS                       R42 R42 K43 ["Small"]
      305 MINUS                            R41 R42
      306 JUMP                             ; [+1]
      307 LOADN                            R41 0
      308 LOADN                            R42 0
      309 MOVE                             R43 R2
      310 CALL                             R39 4 1
      311 SETTABLEKS                       R39 R38 K0 ["Size"]
      313 SETTABLEKS                       R9 R38 K36 ["backgroundStyle"]
      315 GETTABLEKS                       R39 R0 K28 ["onActivated"]
      317 SETTABLEKS                       R39 R38 K28 ["onActivated"]
      319 GETTABLEKS                       R39 R0 K37 ["onStateChanged"]
      321 SETTABLEKS                       R39 R38 K37 ["onStateChanged"]
      323 GETTABLEKS                       R39 R0 K19 ["LayoutOrder"]
      325 SETTABLEKS                       R39 R38 K19 ["LayoutOrder"]
      327 DUPTABLE                         R39 K50 [{"Icon", "Type", "Name", "Value", "Override", "Actions"}]
      328 GETTABLEKS                       R41 R0 K51 ["valueType"]
      330 JUMPIFNOT                        R41 ; [+58]
      331 MOVE                             R40 R10
      332 LOADN                            R41 -1
      333 LOADK                            R42 K52 ["size-600-full no-flex"]
      334 GETTABLEKS                       R44 R6 K14 ["iconName"]
      336 JUMPIFNOT                        R44 ; [+49]
      337 GETUPVAL                         R43 1
      338 GETTABLEKS                       R43 R43 K33 ["createElement"]
      340 GETTABLEKS                       R45 R6 K53 ["tooltip"]
      342 JUMPIFNOT                        R45 ; [+2]
      343 GETUPVAL                         R44 7
      344 JUMP                             ; [+3]
      345 GETUPVAL                         R44 1
      346 GETTABLEKS                       R44 R44 K54 ["Fragment"]
      348 GETTABLEKS                       R46 R6 K53 ["tooltip"]
      350 JUMPIFNOT                        R46 ; [+6]
      351 DUPTABLE                         R45 K56 [{"title"}]
      352 GETTABLEKS                       R46 R6 K53 ["tooltip"]
      354 SETTABLEKS                       R46 R45 K55 ["title"]
      356 JUMP                             ; [+1]
      357 LOADNIL                          R45
      358 DUPTABLE                         R46 K57 [{"Icon"}]
      359 GETUPVAL                         R47 1
      360 GETTABLEKS                       R47 R47 K33 ["createElement"]
      362 GETUPVAL                         R48 8
      363 DUPTABLE                         R49 K61 [{"name", "size", "variant", "style"}]
      364 GETTABLEKS                       R50 R6 K14 ["iconName"]
      366 SETTABLEKS                       R50 R49 K32 ["name"]
      368 GETUPVAL                         R50 9
      369 GETTABLEKS                       R50 R50 K62 ["XSmall"]
      371 SETTABLEKS                       R50 R49 K58 ["size"]
      373 GETTABLEKS                       R50 R6 K63 ["iconVariant"]
      375 SETTABLEKS                       R50 R49 K59 ["variant"]
      377 GETTABLEKS                       R50 R6 K64 ["textStyle"]
      379 SETTABLEKS                       R50 R49 K60 ["style"]
      381 CALL                             R47 2 1
      382 SETTABLEKS                       R47 R46 K44 ["Icon"]
      384 CALL                             R43 3 1
      385 JUMP                             ; [+1]
      386 LOADNIL                          R43
      387 CALL                             R40 3 1
      388 JUMP                             ; [+1]
      389 LOADNIL                          R40
      390 SETTABLEKS                       R40 R39 K44 ["Icon"]
      392 JUMPIFNOT                        R12 ; [+30]
      393 MOVE                             R40 R10
      394 LOADN                            R41 1
      395 LOADK                            R42 K65 ["grow-2 size-0-full"]
      396 MOVE                             R43 R12
      397 DUPTABLE                         R44 K67 [{"input", "sortable", "onActivated", "onSecondaryActivated", "sortDirection", "testId"}]
      398 SETTABLEKS                       R13 R44 K27 ["input"]
      400 JUMPIFNOTEQKNIL                  R14 ; [+2]
      402 LOADB                            R45 0 +1
      403 LOADB                            R45 1
      404 SETTABLEKS                       R45 R44 K66 ["sortable"]
      406 MOVE                             R45 R14
      407 JUMPIF                           R45 ; [+5]
      408 JUMPIFNOT                        R15 ; [+3]
      409 GETTABLEKS                       R45 R0 K28 ["onActivated"]
      411 JUMP                             ; [+1]
      412 LOADNIL                          R45
      413 SETTABLEKS                       R45 R44 K28 ["onActivated"]
      415 SETTABLEKS                       R15 R44 K29 ["onSecondaryActivated"]
      417 SETTABLEKS                       R16 R44 K30 ["sortDirection"]
      419 SETTABLEKS                       R17 R44 K31 ["testId"]
      421 CALL                             R40 4 1
      422 JUMP                             ; [+1]
      423 LOADNIL                          R40
      424 SETTABLEKS                       R40 R39 K45 ["Type"]
      426 MOVE                             R40 R10
      427 LOADN                            R41 2
      428 LOADK                            R42 K68 ["grow-%* size-0-full"]
      429 JUMPIFNOT                        R11 ; [+2]
      430 LOADN                            R44 5
      431 JUMP                             ; [+1]
      432 LOADN                            R44 4
      433 NAMECALL                         R42 R42 K69 ["format"]
      435 CALL                             R42 2 1
      436 MOVE                             R43 R18
      437 DUPTABLE                         R44 K67 [{"input", "sortable", "onActivated", "onSecondaryActivated", "sortDirection", "testId"}]
      438 SETTABLEKS                       R19 R44 K27 ["input"]
      440 JUMPIFNOTEQKNIL                  R20 ; [+2]
      442 LOADB                            R45 0 +1
      443 LOADB                            R45 1
      444 SETTABLEKS                       R45 R44 K66 ["sortable"]
      446 MOVE                             R45 R20
      447 JUMPIF                           R45 ; [+5]
      448 JUMPIFNOT                        R21 ; [+3]
      449 GETTABLEKS                       R45 R0 K28 ["onActivated"]
      451 JUMP                             ; [+1]
      452 LOADNIL                          R45
      453 SETTABLEKS                       R45 R44 K28 ["onActivated"]
      455 SETTABLEKS                       R21 R44 K29 ["onSecondaryActivated"]
      457 SETTABLEKS                       R22 R44 K30 ["sortDirection"]
      459 SETTABLEKS                       R23 R44 K31 ["testId"]
      461 CALL                             R40 4 1
      462 SETTABLEKS                       R40 R39 K46 ["Name"]
      464 MOVE                             R40 R10
      465 LOADN                            R41 3
      466 LOADK                            R42 K70 ["grow-3 size-0-full"]
      467 MOVE                             R43 R24
      468 DUPTABLE                         R44 K72 [{"input", "sortable", "onActivated", "onSecondaryActivated", "sortDirection", "testId", "fontStyle"}]
      469 SETTABLEKS                       R25 R44 K27 ["input"]
      471 JUMPIFNOTEQKNIL                  R26 ; [+2]
      473 LOADB                            R45 0 +1
      474 LOADB                            R45 1
      475 SETTABLEKS                       R45 R44 K66 ["sortable"]
      477 MOVE                             R45 R26
      478 JUMPIF                           R45 ; [+5]
      479 JUMPIFNOT                        R27 ; [+3]
      480 GETTABLEKS                       R45 R0 K28 ["onActivated"]
      482 JUMP                             ; [+1]
      483 LOADNIL                          R45
      484 SETTABLEKS                       R45 R44 K28 ["onActivated"]
      486 SETTABLEKS                       R27 R44 K29 ["onSecondaryActivated"]
      488 SETTABLEKS                       R28 R44 K30 ["sortDirection"]
      490 SETTABLEKS                       R29 R44 K31 ["testId"]
      492 GETTABLEKS                       R46 R0 K12 ["isHeader"]
      494 JUMPIFNOT                        R46 ; [+2]
      495 MOVE                             R45 R8
      496 JUMP                             ; [+14]
      497 GETUPVAL                         R45 5
      498 GETTABLEKS                       R45 R45 K73 ["Dictionary"]
      500 GETTABLEKS                       R45 R45 K74 ["join"]
      502 MOVE                             R46 R8
      503 DUPTABLE                         R47 K76 [{"Font"}]
      504 JUMPIFNOT                        R7 ; [+2]
      505 GETUPVAL                         R48 10
      506 JUMP                             ; [+1]
      507 GETUPVAL                         R48 11
      508 SETTABLEKS                       R48 R47 K75 ["Font"]
      510 CALL                             R45 2 1
      511 SETTABLEKS                       R45 R44 K71 ["fontStyle"]
      513 CALL                             R40 4 1
      514 SETTABLEKS                       R40 R39 K47 ["Value"]
      516 JUMPIFNOT                        R11 ; [+23]
      517 MOVE                             R40 R10
      518 LOADN                            R41 4
      519 LOADK                            R42 K77 ["grow-4 size-0-full"]
      520 MOVE                             R43 R30
      521 DUPTABLE                         R44 K67 [{"input", "sortable", "onActivated", "onSecondaryActivated", "sortDirection", "testId"}]
      522 SETTABLEKS                       R31 R44 K27 ["input"]
      524 JUMPIFNOTEQKNIL                  R32 ; [+2]
      526 LOADB                            R45 0 +1
      527 LOADB                            R45 1
      528 SETTABLEKS                       R45 R44 K66 ["sortable"]
      530 SETTABLEKS                       R32 R44 K28 ["onActivated"]
      532 SETTABLEKS                       R33 R44 K29 ["onSecondaryActivated"]
      534 SETTABLEKS                       R34 R44 K30 ["sortDirection"]
      536 SETTABLEKS                       R35 R44 K31 ["testId"]
      538 CALL                             R40 4 1
      539 JUMP                             ; [+1]
      540 LOADNIL                          R40
      541 SETTABLEKS                       R40 R39 K48 ["Override"]
      543 GETTABLEKS                       R41 R0 K78 ["actions"]
      545 JUMPIFNOT                        R41 ; [+15]
      546 MOVE                             R40 R10
      547 LOADN                            R41 5
      548 LOADK                            R42 K79 ["size-3000-full no-flex align-x-right"]
      549 GETUPVAL                         R43 1
      550 GETTABLEKS                       R43 R43 K33 ["createElement"]
      552 GETUPVAL                         R44 1
      553 GETTABLEKS                       R44 R44 K54 ["Fragment"]
      555 LOADNIL                          R45
      556 GETTABLEKS                       R46 R0 K78 ["actions"]
      558 CALL                             R43 3 -1
      559 CALL                             R40 -1 1
      560 JUMP                             ; [+1]
      561 LOADNIL                          R40
      562 SETTABLEKS                       R40 R39 K49 ["Actions"]
      564 CALL                             R36 3 -1
      565 RETURN                           R36 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["Icon"]
       26 GETTABLEKS                       R6 R4 K11 ["Tooltip"]
       28 GETTABLEKS                       R7 R4 K12 ["View"]
       30 GETTABLEKS                       R8 R4 K13 ["Enums"]
       32 GETTABLEKS                       R8 R8 K14 ["IconSize"]
       34 GETTABLEKS                       R9 R4 K13 ["Enums"]
       36 GETTABLEKS                       R9 R9 K15 ["IconVariant"]
       38 GETTABLEKS                       R10 R4 K16 ["Hooks"]
       40 GETTABLEKS                       R10 R10 K17 ["useTokens"]
       42 GETIMPORT                        R11 K6 [require]
       44 GETIMPORT                        R12 K1 [script]
       46 GETTABLEKS                       R12 R12 K4 ["Parent"]
       48 GETTABLEKS                       R12 R12 K18 ["FlagRowCell"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K6 [require]
       53 GETIMPORT                        R13 K1 [script]
       55 GETTABLEKS                       R13 R13 K4 ["Parent"]
       57 GETTABLEKS                       R13 R13 K19 ["OverrideStatus"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K22 [Font.new]
       62 LOADK                            R14 K23 ["rbxasset://fonts/families/BuilderMono.json"]
       63 GETIMPORT                        R15 K27 [Enum.FontWeight.Regular]
       65 GETIMPORT                        R16 K30 [Enum.FontStyle.Normal]
       67 CALL                             R13 3 1
       68 GETIMPORT                        R14 K22 [Font.new]
       70 LOADK                            R15 K23 ["rbxasset://fonts/families/BuilderMono.json"]
       71 GETIMPORT                        R16 K32 [Enum.FontWeight.Bold]
       73 GETIMPORT                        R17 K30 [Enum.FontStyle.Normal]
       75 CALL                             R14 3 1
       76 GETIMPORT                        R15 K6 [require]
       78 GETIMPORT                        R16 K1 [script]
       80 GETTABLEKS                       R16 R16 K4 ["Parent"]
       82 GETTABLEKS                       R16 R16 K33 ["SortDirection"]
       84 CALL                             R15 1 1
       85 DUPCLOSURE                       R16 K34 [PROTO_0]
       86 DUPCLOSURE                       R17 K35 [PROTO_3]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R13
       99 GETTABLEKS                       R18 R2 K36 ["memo"]
      101 MOVE                             R19 R17
      102 CALL                             R18 1 -1
      103 RETURN                           R18 -1
