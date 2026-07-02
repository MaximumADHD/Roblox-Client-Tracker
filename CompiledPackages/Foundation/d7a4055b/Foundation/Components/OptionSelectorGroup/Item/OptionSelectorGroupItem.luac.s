PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R5 0
        5 SUBRK                            R4 K0 [1] R5
        6 MUL                              R3 R4 R0
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1
        9 RETURN                           R0 1

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 NAMECALL                         R2 R1 K0 ["map"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEN                        R1 R0 2
        1 DUPTABLE                         R2 K2 [{"Color3", "Transparency"}]
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R3 R2 K0 ["Color3"]
        5 SETTABLEKS                       R1 R2 K1 ["Transparency"]
        7 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["joinBindings"]
        3 NEWTABLE                         R4 0 2
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 SETLIST                          R4 R5 2 [1]
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R2
       12 NAMECALL                         R3 R3 K1 ["map"]
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Disabled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["Default"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onValueChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["value"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["value"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+3]
       11 LOADNIL                          R1
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["value"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["container"]
        7 GETTABLEKS                       R3 R3 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K8 ["Size"]
       15 GETTABLEKS                       R1 R1 K9 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K10 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K11 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Color3"]
        4 SETTABLEKS                       R0 R1 K1 ["Transparency"]
        6 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Color3"]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R2 R0
        7 JUMP                             ; [+1]
        8 LOADN                            R2 1
        9 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       11 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R5 R3 K0 ["value"]
        8 GETTABLEKS                       R6 R2 K0 ["value"]
       10 JUMPIFEQ                         R5 R6 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R2 K1 ["label"]
       16 JUMPIF                           R5 ; [+2]
       17 GETTABLEKS                       R5 R2 K0 ["value"]
       19 GETTABLEKS                       R7 R3 K2 ["orientation"]
       21 GETUPVAL                         R8 3
       22 GETTABLEKS                       R8 R8 K3 ["Vertical"]
       24 JUMPIFNOTEQ                      R7 R8 ; [+5]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K4 ["Horizontal"]
       29 JUMP                             ; [+3]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K3 ["Vertical"]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R8 R8 K4 ["Horizontal"]
       36 JUMPIFNOTEQ                      R6 R8 ; [+5]
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K5 ["Fit"]
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R7 R2 K6 ["fillBehavior"]
       44 JUMPIF                           R7 ; [+3]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R7 R7 K7 ["Fill"]
       48 GETIMPORT                        R8 K10 [UDim2.new]
       50 GETUPVAL                         R10 4
       51 GETTABLEKS                       R10 R10 K7 ["Fill"]
       53 JUMPIFNOTEQ                      R7 R10 ; [+7]
       55 GETIMPORT                        R9 K12 [UDim.new]
       57 LOADN                            R10 1
       58 LOADN                            R11 0
       59 CALL                             R9 2 1
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R9 R2 K13 ["width"]
       63 GETIMPORT                        R10 K12 [UDim.new]
       65 CALL                             R10 0 -1
       66 CALL                             R8 -1 1
       67 GETUPVAL                         R9 5
       68 CALL                             R9 0 1
       69 GETUPVAL                         R10 6
       70 MOVE                             R11 R9
       71 GETTABLEKS                       R12 R2 K14 ["size"]
       73 CALL                             R10 2 1
       74 GETTABLEKS                       R11 R10 K15 ["content"]
       76 GETTABLEKS                       R11 R11 K16 ["Color3"]
       78 JUMPIFNOT                        R4 ; [+7]
       79 GETTABLEKS                       R12 R9 K17 ["Color"]
       81 GETTABLEKS                       R12 R12 K18 ["System"]
       83 GETTABLEKS                       R12 R12 K19 ["Contrast"]
       85 JUMP                             ; [+6]
       86 GETTABLEKS                       R12 R9 K17 ["Color"]
       88 GETTABLEKS                       R12 R12 K20 ["Stroke"]
       90 GETTABLEKS                       R12 R12 K21 ["Emphasis"]
       92 GETUPVAL                         R13 7
       93 LOADN                            R14 0
       94 GETUPVAL                         R15 8
       95 GETTABLEKS                       R15 R15 K22 ["DISABLED_TRANSPARENCY"]
       97 CALL                             R13 2 1
       98 GETUPVAL                         R14 9
       99 GETTABLEKS                       R15 R13 K23 ["Default"]
      101 CALL                             R14 1 2
      102 GETUPVAL                         R16 9
      103 GETTABLEKS                       R17 R13 K23 ["Default"]
      105 CALL                             R16 1 2
      106 GETUPVAL                         R18 10
      107 GETTABLEKS                       R18 R18 K24 ["useEffect"]
      109 NEWCLOSURE                       R19 P0
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R13
      113 NEWTABLE                         R20 0 1
      115 GETTABLEKS                       R21 R2 K25 ["isDisabled"]
      117 SETLIST                          R20 R21 1 [1]
      119 CALL                             R18 2 0
      120 GETUPVAL                         R18 10
      121 GETTABLEKS                       R18 R18 K26 ["useCallback"]
      123 NEWCLOSURE                       R19 P1
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R2
      126 NEWTABLE                         R20 0 4
      128 GETTABLEKS                       R21 R2 K25 ["isDisabled"]
      130 GETTABLEKS                       R22 R2 K0 ["value"]
      132 GETTABLEKS                       R23 R3 K27 ["onValueChanged"]
      134 GETTABLEKS                       R24 R3 K0 ["value"]
      136 SETLIST                          R20 R21 4 [1]
      138 CALL                             R18 2 1
      139 LOADK                            R20 K28 ["%*--item-%*"]
      140 GETTABLEKS                       R22 R3 K29 ["testId"]
      142 GETTABLEKS                       R23 R2 K0 ["value"]
      144 NAMECALL                         R20 R20 K30 ["format"]
      146 CALL                             R20 3 1
      147 MOVE                             R19 R20
      148 SETTABLEKS                       R19 R2 K29 ["testId"]
      150 GETUPVAL                         R19 10
      151 GETTABLEKS                       R19 R19 K31 ["useMemo"]
      153 NEWCLOSURE                       R20 P2
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R9
      156 NEWTABLE                         R21 0 2
      158 MOVE                             R22 R9
      159 GETTABLEKS                       R23 R10 K32 ["container"]
      161 GETTABLEKS                       R23 R23 K33 ["radius"]
      163 SETLIST                          R21 R22 2 [1]
      165 CALL                             R19 2 1
      166 GETUPVAL                         R20 10
      167 GETTABLEKS                       R20 R20 K34 ["createElement"]
      169 GETUPVAL                         R21 11
      170 DUPTABLE                         R22 K44 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 2}]
      171 GETUPVAL                         R23 12
      172 MOVE                             R24 R5
      173 CALL                             R23 1 1
      174 SETTABLEKS                       R23 R22 K35 ["Text"]
      176 GETIMPORT                        R23 K47 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R23 R22 K38 ["TextXAlignment"]
      180 GETTABLEKS                       R23 R10 K1 ["label"]
      182 GETTABLEKS                       R23 R23 K40 ["tag"]
      184 SETTABLEKS                       R23 R22 K40 ["tag"]
      186 GETUPVAL                         R23 13
      187 GETTABLEKS                       R24 R16 K48 ["textTransparency"]
      189 GETTABLEKS                       R25 R14 K49 ["transparency"]
      191 MOVE                             R26 R11
      192 CALL                             R23 3 1
      193 SETTABLEKS                       R23 R22 K41 ["textStyle"]
      195 CALL                             R20 2 1
      196 GETUPVAL                         R21 10
      197 GETTABLEKS                       R21 R21 K34 ["createElement"]
      199 GETUPVAL                         R22 14
      200 GETUPVAL                         R23 15
      201 MOVE                             R24 R2
      202 DUPTABLE                         R25 K56 [{"stroke", "Size", "selection", "cursor", "onActivated", "isDisabled", "tag", "ref"}]
      203 DUPTABLE                         R26 K58 [{"Color", "Transparency"}]
      204 GETTABLEKS                       R27 R12 K16 ["Color3"]
      206 SETTABLEKS                       R27 R26 K17 ["Color"]
      208 GETTABLEKS                       R28 R12 K57 ["Transparency"]
      210 GETTABLEKS                       R29 R14 K49 ["transparency"]
      212 NEWCLOSURE                       R32 P3
      213 CAPTURE                          VAL R28
      214 NAMECALL                         R30 R29 K59 ["map"]
      216 CALL                             R30 2 1
      217 MOVE                             R27 R30
      218 SETTABLEKS                       R27 R26 K57 ["Transparency"]
      220 SETTABLEKS                       R26 R25 K50 ["stroke"]
      222 SETTABLEKS                       R8 R25 K51 ["Size"]
      224 DUPTABLE                         R26 K61 [{"Selectable"}]
      225 GETTABLEKS                       R28 R2 K25 ["isDisabled"]
      227 JUMPIFNOT                        R28 ; [+2]
      228 LOADB                            R27 0
      229 JUMP                             ; [+2]
      230 GETTABLEKS                       R27 R3 K60 ["Selectable"]
      232 SETTABLEKS                       R27 R26 K60 ["Selectable"]
      234 SETTABLEKS                       R26 R25 K52 ["selection"]
      236 SETTABLEKS                       R19 R25 K53 ["cursor"]
      238 SETTABLEKS                       R18 R25 K54 ["onActivated"]
      240 GETTABLEKS                       R26 R2 K25 ["isDisabled"]
      242 SETTABLEKS                       R26 R25 K25 ["isDisabled"]
      244 NEWTABLE                         R26 4 0
      246 LOADB                            R27 1
      247 GETTABLEKS                       R28 R2 K13 ["width"]
      249 GETTABLEKS                       R28 R28 K62 ["Scale"]
      251 JUMPIFEQKN                       R28 K63 [0] ; [+10]
      253 MOVE                             R27 R7
      254 JUMPIFNOT                        R27 ; [+7]
      255 GETUPVAL                         R28 4
      256 GETTABLEKS                       R28 R28 K7 ["Fill"]
      258 JUMPIFNOTEQ                      R7 R28 ; [+2]
      260 LOADB                            R27 0 +1
      261 LOADB                            R27 1
      262 SETTABLEKS                       R27 R26 K64 ["auto-xy"]
      264 GETTABLEKS                       R28 R2 K13 ["width"]
      266 GETTABLEKS                       R28 R28 K62 ["Scale"]
      268 JUMPIFNOTEQKN                    R28 K63 [0] ; [+2]
      270 LOADB                            R27 0 +1
      271 LOADB                            R27 1
      272 SETTABLEKS                       R27 R26 K65 ["auto-y"]
      274 MOVE                             R27 R7
      275 JUMPIFNOT                        R27 ; [+7]
      276 GETUPVAL                         R28 4
      277 GETTABLEKS                       R28 R28 K7 ["Fill"]
      279 JUMPIFEQ                         R7 R28 ; [+2]
      281 LOADB                            R27 0 +1
      282 LOADB                            R27 1
      283 SETTABLEKS                       R27 R26 K66 ["fill"]
      285 GETTABLEKS                       R27 R10 K32 ["container"]
      287 GETTABLEKS                       R27 R27 K40 ["tag"]
      289 LOADB                            R28 1
      290 SETTABLE                         R28 R26 R27
      291 SETTABLEKS                       R26 R25 K40 ["tag"]
      293 SETTABLEKS                       R1 R25 K55 ["ref"]
      295 CALL                             R23 2 1
      296 DUPTABLE                         R24 K68 [{"ItemInner"}]
      297 GETUPVAL                         R25 10
      298 GETTABLEKS                       R25 R25 K34 ["createElement"]
      300 GETUPVAL                         R26 14
      301 DUPTABLE                         R27 K69 [{"tag", "Size"}]
      302 GETTABLEKS                       R28 R10 K70 ["itemInner"]
      304 GETTABLEKS                       R28 R28 K40 ["tag"]
      306 SETTABLEKS                       R28 R27 K40 ["tag"]
      308 SETTABLEKS                       R8 R27 K51 ["Size"]
      310 DUPTABLE                         R28 K75 [{"IconRow", "Label", "Metadata", "Description"}]
      311 GETUPVAL                         R29 10
      312 GETTABLEKS                       R29 R29 K34 ["createElement"]
      314 GETUPVAL                         R30 14
      315 DUPTABLE                         R31 K78 [{["tag"] = "size-full-0 auto-y row gap-small align-y-center", ["LayoutOrder"] = 1}]
      316 DUPTABLE                         R32 K81 [{"Icon", "Label", "Checkmark"}]
      317 GETTABLEKS                       R34 R2 K82 ["icon"]
      319 JUMPIFNOT                        R34 ; [+26]
      320 GETUPVAL                         R33 10
      321 GETTABLEKS                       R33 R33 K34 ["createElement"]
      323 GETUPVAL                         R34 16
      324 DUPTABLE                         R35 K85 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 0}]
      325 GETTABLEKS                       R36 R2 K82 ["icon"]
      327 SETTABLEKS                       R36 R35 K83 ["name"]
      329 GETTABLEKS                       R36 R10 K82 ["icon"]
      331 GETTABLEKS                       R36 R36 K14 ["size"]
      333 SETTABLEKS                       R36 R35 K14 ["size"]
      335 GETTABLEKS                       R36 R14 K49 ["transparency"]
      337 NEWCLOSURE                       R38 P4
      338 CAPTURE                          VAL R11
      339 NAMECALL                         R36 R36 K59 ["map"]
      341 CALL                             R36 2 1
      342 SETTABLEKS                       R36 R35 K84 ["style"]
      344 CALL                             R33 2 1
      345 JUMP                             ; [+1]
      346 LOADNIL                          R33
      347 SETTABLEKS                       R33 R32 K79 ["Icon"]
      349 GETUPVAL                         R34 3
      350 GETTABLEKS                       R34 R34 K4 ["Horizontal"]
      352 JUMPIFNOTEQ                      R6 R34 ; [+3]
      354 MOVE                             R33 R20
      355 JUMP                             ; [+6]
      356 GETUPVAL                         R33 10
      357 GETTABLEKS                       R33 R33 K34 ["createElement"]
      359 GETUPVAL                         R34 14
      360 DUPTABLE                         R35 K87 [{["tag"] = "grow"}]
      361 CALL                             R33 2 1
      362 SETTABLEKS                       R33 R32 K72 ["Label"]
      364 GETUPVAL                         R33 10
      365 GETTABLEKS                       R33 R33 K34 ["createElement"]
      367 GETUPVAL                         R34 16
      368 DUPTABLE                         R35 K90 [{["name"] = "check-large", ["size"], ["style"], ["LayoutOrder"] = 3}]
      369 GETTABLEKS                       R36 R10 K82 ["icon"]
      371 GETTABLEKS                       R36 R36 K14 ["size"]
      373 SETTABLEKS                       R36 R35 K14 ["size"]
      375 GETTABLEKS                       R36 R14 K49 ["transparency"]
      377 NEWCLOSURE                       R38 P5
      378 CAPTURE                          VAL R11
      379 CAPTURE                          VAL R4
      380 NAMECALL                         R36 R36 K59 ["map"]
      382 CALL                             R36 2 1
      383 SETTABLEKS                       R36 R35 K84 ["style"]
      385 CALL                             R33 2 1
      386 SETTABLEKS                       R33 R32 K80 ["Checkmark"]
      388 CALL                             R29 3 1
      389 SETTABLEKS                       R29 R28 K71 ["IconRow"]
      391 GETUPVAL                         R30 3
      392 GETTABLEKS                       R30 R30 K3 ["Vertical"]
      394 JUMPIFNOTEQ                      R6 R30 ; [+3]
      396 MOVE                             R29 R20
      397 JUMP                             ; [+1]
      398 LOADNIL                          R29
      399 SETTABLEKS                       R29 R28 K72 ["Label"]
      401 GETTABLEKS                       R30 R2 K91 ["metadata"]
      403 JUMPIFNOT                        R30 ; [+36]
      404 GETUPVAL                         R29 10
      405 GETTABLEKS                       R29 R29 K34 ["createElement"]
      407 GETUPVAL                         R30 11
      408 DUPTABLE                         R31 K93 [{["Text"], ["TextTruncate"], ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 3}]
      409 GETUPVAL                         R32 12
      410 GETTABLEKS                       R33 R2 K91 ["metadata"]
      412 CALL                             R32 1 1
      413 SETTABLEKS                       R32 R31 K35 ["Text"]
      415 GETIMPORT                        R32 K95 [Enum.TextTruncate.AtEnd]
      417 SETTABLEKS                       R32 R31 K92 ["TextTruncate"]
      419 GETIMPORT                        R32 K47 [Enum.TextXAlignment.Left]
      421 SETTABLEKS                       R32 R31 K38 ["TextXAlignment"]
      423 GETTABLEKS                       R32 R10 K91 ["metadata"]
      425 GETTABLEKS                       R32 R32 K40 ["tag"]
      427 SETTABLEKS                       R32 R31 K40 ["tag"]
      429 GETUPVAL                         R32 13
      430 GETTABLEKS                       R33 R16 K48 ["textTransparency"]
      432 GETTABLEKS                       R34 R14 K49 ["transparency"]
      434 MOVE                             R35 R11
      435 CALL                             R32 3 1
      436 SETTABLEKS                       R32 R31 K41 ["textStyle"]
      438 CALL                             R29 2 1
      439 JUMP                             ; [+1]
      440 LOADNIL                          R29
      441 SETTABLEKS                       R29 R28 K73 ["Metadata"]
      443 GETTABLEKS                       R30 R2 K96 ["description"]
      445 JUMPIFNOT                        R30 ; [+32]
      446 GETUPVAL                         R29 10
      447 GETTABLEKS                       R29 R29 K34 ["createElement"]
      449 GETUPVAL                         R30 11
      450 DUPTABLE                         R31 K98 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 4}]
      451 GETUPVAL                         R32 12
      452 GETTABLEKS                       R33 R2 K96 ["description"]
      454 CALL                             R32 1 1
      455 SETTABLEKS                       R32 R31 K35 ["Text"]
      457 GETIMPORT                        R32 K47 [Enum.TextXAlignment.Left]
      459 SETTABLEKS                       R32 R31 K38 ["TextXAlignment"]
      461 GETTABLEKS                       R32 R10 K96 ["description"]
      463 GETTABLEKS                       R32 R32 K40 ["tag"]
      465 SETTABLEKS                       R32 R31 K40 ["tag"]
      467 GETUPVAL                         R32 13
      468 GETTABLEKS                       R33 R16 K48 ["textTransparency"]
      470 GETTABLEKS                       R34 R14 K49 ["transparency"]
      472 MOVE                             R35 R11
      473 CALL                             R32 3 1
      474 SETTABLEKS                       R32 R31 K41 ["textStyle"]
      476 CALL                             R29 2 1
      477 JUMP                             ; [+1]
      478 LOADNIL                          R29
      479 SETTABLEKS                       R29 R28 K74 ["Description"]
      481 CALL                             R25 3 1
      482 SETTABLEKS                       R25 R24 K67 ["ItemInner"]
      484 CALL                             R21 3 -1
      485 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Motion"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["useMotion"]
       21 GETTABLEKS                       R5 R0 K10 ["Components"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R5 K11 ["Icon"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K6 [require]
       30 GETTABLEKS                       R8 R5 K12 ["Text"]
       32 CALL                             R7 1 1
       33 GETIMPORT                        R8 K6 [require]
       35 GETTABLEKS                       R9 R5 K13 ["Types"]
       37 CALL                             R8 1 1
       38 GETIMPORT                        R9 K6 [require]
       40 GETTABLEKS                       R10 R5 K14 ["View"]
       42 CALL                             R9 1 1
       43 GETIMPORT                        R10 K6 [require]
       45 GETTABLEKS                       R11 R0 K15 ["Constants"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K6 [require]
       50 GETTABLEKS                       R12 R0 K16 ["Utility"]
       52 GETTABLEKS                       R12 R12 K17 ["escapeRichText"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K18 ["Providers"]
       59 GETTABLEKS                       R13 R13 K19 ["Style"]
       61 GETTABLEKS                       R13 R13 K20 ["useTokens"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K6 [require]
       66 GETTABLEKS                       R14 R0 K16 ["Utility"]
       68 GETTABLEKS                       R14 R14 K21 ["withCommonProps"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETTABLEKS                       R15 R0 K16 ["Utility"]
       75 GETTABLEKS                       R15 R15 K22 ["withDefaults"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K6 [require]
       80 GETIMPORT                        R16 K1 [script]
       82 GETTABLEKS                       R16 R16 K4 ["Parent"]
       84 GETTABLEKS                       R16 R16 K23 ["useOptionSelectorGroupItemMotionStates"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K6 [require]
       89 GETIMPORT                        R17 K1 [script]
       91 GETTABLEKS                       R17 R17 K4 ["Parent"]
       93 GETTABLEKS                       R17 R17 K24 ["useOptionSelectorGroupItemVariants"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K6 [require]
       98 GETTABLEKS                       R18 R0 K25 ["Enums"]
      100 GETTABLEKS                       R18 R18 K26 ["FillBehavior"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K6 [require]
      105 GETTABLEKS                       R19 R0 K25 ["Enums"]
      107 GETTABLEKS                       R19 R19 K27 ["InputSize"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R20 R0 K25 ["Enums"]
      114 GETTABLEKS                       R20 R20 K28 ["Orientation"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K6 [require]
      119 GETIMPORT                        R21 K1 [script]
      121 GETTABLEKS                       R21 R21 K4 ["Parent"]
      123 GETTABLEKS                       R21 R21 K4 ["Parent"]
      125 GETTABLEKS                       R21 R21 K29 ["useOptionSelectorGroup"]
      127 CALL                             R20 1 1
      128 DUPCLOSURE                       R21 K30 [PROTO_1]
      129 DUPCLOSURE                       R22 K31 [PROTO_3]
      130 CAPTURE                          VAL R2
      131 DUPTABLE                         R23 K36 [{["isDisabled"] = False, ["size"], ["width"]}]
      132 GETTABLEKS                       R24 R18 K37 ["Medium"]
      134 SETTABLEKS                       R24 R23 K34 ["size"]
      136 GETIMPORT                        R24 K40 [UDim.new]
      138 LOADN                            R25 0
      139 LOADN                            R26 0
      140 CALL                             R24 2 1
      141 SETTABLEKS                       R24 R23 K35 ["width"]
      143 DUPCLOSURE                       R24 K41 [PROTO_9]
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R6
      161 GETTABLEKS                       R25 R2 K42 ["memo"]
      163 GETTABLEKS                       R26 R2 K43 ["forwardRef"]
      165 MOVE                             R27 R24
      166 CALL                             R26 1 -1
      167 CALL                             R25 -1 -1
      168 RETURN                           R25 -1
