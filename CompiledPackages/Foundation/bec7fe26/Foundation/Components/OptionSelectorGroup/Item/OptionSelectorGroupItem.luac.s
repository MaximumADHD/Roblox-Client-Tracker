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
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R9 R9 K8 ["FoundationFixOptionSelectorGroupItemSize"]
       51 JUMPIFNOT                        R9 ; [+6]
       52 GETIMPORT                        R8 K11 [UDim2.fromScale]
       54 LOADN                            R9 1
       55 LOADN                            R10 0
       56 CALL                             R8 2 1
       57 JUMP                             ; [+19]
       58 GETIMPORT                        R8 K13 [UDim2.new]
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K7 ["Fill"]
       63 JUMPIFNOTEQ                      R7 R10 ; [+7]
       65 GETIMPORT                        R9 K15 [UDim.new]
       67 LOADN                            R10 1
       68 LOADN                            R11 0
       69 CALL                             R9 2 1
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R9 R2 K16 ["width"]
       73 GETIMPORT                        R10 K15 [UDim.new]
       75 CALL                             R10 0 -1
       76 CALL                             R8 -1 1
       77 GETUPVAL                         R9 6
       78 CALL                             R9 0 1
       79 GETUPVAL                         R10 7
       80 MOVE                             R11 R9
       81 GETTABLEKS                       R12 R2 K17 ["size"]
       83 CALL                             R10 2 1
       84 GETTABLEKS                       R11 R10 K18 ["content"]
       86 GETTABLEKS                       R11 R11 K19 ["Color3"]
       88 JUMPIFNOT                        R4 ; [+7]
       89 GETTABLEKS                       R12 R9 K20 ["Color"]
       91 GETTABLEKS                       R12 R12 K21 ["System"]
       93 GETTABLEKS                       R12 R12 K22 ["Contrast"]
       95 JUMP                             ; [+6]
       96 GETTABLEKS                       R12 R9 K20 ["Color"]
       98 GETTABLEKS                       R12 R12 K23 ["Stroke"]
      100 GETTABLEKS                       R12 R12 K24 ["Emphasis"]
      102 GETUPVAL                         R13 8
      103 LOADN                            R14 0
      104 GETUPVAL                         R15 9
      105 GETTABLEKS                       R15 R15 K25 ["DISABLED_TRANSPARENCY"]
      107 CALL                             R13 2 1
      108 GETUPVAL                         R14 10
      109 GETTABLEKS                       R15 R13 K26 ["Default"]
      111 CALL                             R14 1 2
      112 GETUPVAL                         R16 10
      113 GETTABLEKS                       R17 R13 K26 ["Default"]
      115 CALL                             R16 1 2
      116 GETUPVAL                         R18 11
      117 GETTABLEKS                       R18 R18 K27 ["useEffect"]
      119 NEWCLOSURE                       R19 P0
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R13
      123 NEWTABLE                         R20 0 1
      125 GETTABLEKS                       R21 R2 K28 ["isDisabled"]
      127 SETLIST                          R20 R21 1 [1]
      129 CALL                             R18 2 0
      130 GETUPVAL                         R18 11
      131 GETTABLEKS                       R18 R18 K29 ["useCallback"]
      133 NEWCLOSURE                       R19 P1
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R2
      136 NEWTABLE                         R20 0 4
      138 GETTABLEKS                       R21 R2 K28 ["isDisabled"]
      140 GETTABLEKS                       R22 R2 K0 ["value"]
      142 GETTABLEKS                       R23 R3 K30 ["onValueChanged"]
      144 GETTABLEKS                       R24 R3 K0 ["value"]
      146 SETLIST                          R20 R21 4 [1]
      148 CALL                             R18 2 1
      149 LOADK                            R20 K31 ["%*--item-%*"]
      150 GETTABLEKS                       R22 R3 K32 ["testId"]
      152 GETTABLEKS                       R23 R2 K0 ["value"]
      154 NAMECALL                         R20 R20 K33 ["format"]
      156 CALL                             R20 3 1
      157 MOVE                             R19 R20
      158 SETTABLEKS                       R19 R2 K32 ["testId"]
      160 GETUPVAL                         R19 11
      161 GETTABLEKS                       R19 R19 K34 ["useMemo"]
      163 NEWCLOSURE                       R20 P2
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R9
      166 NEWTABLE                         R21 0 2
      168 MOVE                             R22 R9
      169 GETTABLEKS                       R23 R10 K35 ["container"]
      171 GETTABLEKS                       R23 R23 K36 ["radius"]
      173 SETLIST                          R21 R22 2 [1]
      175 CALL                             R19 2 1
      176 GETUPVAL                         R20 11
      177 GETTABLEKS                       R20 R20 K37 ["createElement"]
      179 GETUPVAL                         R21 12
      180 DUPTABLE                         R22 K47 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 2}]
      181 GETUPVAL                         R23 13
      182 MOVE                             R24 R5
      183 CALL                             R23 1 1
      184 SETTABLEKS                       R23 R22 K38 ["Text"]
      186 GETIMPORT                        R23 K50 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R23 R22 K41 ["TextXAlignment"]
      190 GETTABLEKS                       R23 R10 K1 ["label"]
      192 GETTABLEKS                       R23 R23 K43 ["tag"]
      194 SETTABLEKS                       R23 R22 K43 ["tag"]
      196 GETUPVAL                         R23 14
      197 GETTABLEKS                       R24 R16 K51 ["textTransparency"]
      199 GETTABLEKS                       R25 R14 K52 ["transparency"]
      201 MOVE                             R26 R11
      202 CALL                             R23 3 1
      203 SETTABLEKS                       R23 R22 K44 ["textStyle"]
      205 CALL                             R20 2 1
      206 GETUPVAL                         R21 11
      207 GETTABLEKS                       R21 R21 K37 ["createElement"]
      209 GETUPVAL                         R22 15
      210 GETUPVAL                         R23 16
      211 MOVE                             R24 R2
      212 DUPTABLE                         R25 K59 [{"stroke", "Size", "selection", "cursor", "onActivated", "isDisabled", "tag", "ref"}]
      213 DUPTABLE                         R26 K61 [{"Color", "Transparency"}]
      214 GETTABLEKS                       R27 R12 K19 ["Color3"]
      216 SETTABLEKS                       R27 R26 K20 ["Color"]
      218 GETTABLEKS                       R28 R12 K60 ["Transparency"]
      220 GETTABLEKS                       R29 R14 K52 ["transparency"]
      222 NEWCLOSURE                       R32 P3
      223 CAPTURE                          VAL R28
      224 NAMECALL                         R30 R29 K62 ["map"]
      226 CALL                             R30 2 1
      227 MOVE                             R27 R30
      228 SETTABLEKS                       R27 R26 K60 ["Transparency"]
      230 SETTABLEKS                       R26 R25 K53 ["stroke"]
      232 SETTABLEKS                       R8 R25 K54 ["Size"]
      234 DUPTABLE                         R26 K64 [{"Selectable"}]
      235 GETTABLEKS                       R28 R2 K28 ["isDisabled"]
      237 JUMPIFNOT                        R28 ; [+2]
      238 LOADB                            R27 0
      239 JUMP                             ; [+2]
      240 GETTABLEKS                       R27 R3 K63 ["Selectable"]
      242 SETTABLEKS                       R27 R26 K63 ["Selectable"]
      244 SETTABLEKS                       R26 R25 K55 ["selection"]
      246 SETTABLEKS                       R19 R25 K56 ["cursor"]
      248 SETTABLEKS                       R18 R25 K57 ["onActivated"]
      250 GETTABLEKS                       R26 R2 K28 ["isDisabled"]
      252 SETTABLEKS                       R26 R25 K28 ["isDisabled"]
      254 GETUPVAL                         R27 5
      255 GETTABLEKS                       R27 R27 K8 ["FoundationFixOptionSelectorGroupItemSize"]
      257 JUMPIFNOT                        R27 ; [+27]
      258 NEWTABLE                         R26 4 0
      260 GETUPVAL                         R28 4
      261 GETTABLEKS                       R28 R28 K7 ["Fill"]
      263 JUMPIFNOTEQ                      R7 R28 ; [+2]
      265 LOADB                            R27 0 +1
      266 LOADB                            R27 1
      267 SETTABLEKS                       R27 R26 K65 ["auto-xy"]
      269 GETUPVAL                         R28 4
      270 GETTABLEKS                       R28 R28 K7 ["Fill"]
      272 JUMPIFEQ                         R7 R28 ; [+2]
      274 LOADB                            R27 0 +1
      275 LOADB                            R27 1
      276 SETTABLEKS                       R27 R26 K66 ["auto-y fill"]
      278 GETTABLEKS                       R27 R10 K35 ["container"]
      280 GETTABLEKS                       R27 R27 K43 ["tag"]
      282 LOADB                            R28 1
      283 SETTABLE                         R28 R26 R27
      284 JUMP                             ; [+47]
      285 NEWTABLE                         R26 4 0
      287 LOADB                            R27 1
      288 GETTABLEKS                       R28 R2 K16 ["width"]
      290 GETTABLEKS                       R28 R28 K67 ["Scale"]
      292 JUMPIFEQKN                       R28 K68 [0] ; [+10]
      294 MOVE                             R27 R7
      295 JUMPIFNOT                        R27 ; [+7]
      296 GETUPVAL                         R28 4
      297 GETTABLEKS                       R28 R28 K7 ["Fill"]
      299 JUMPIFNOTEQ                      R7 R28 ; [+2]
      301 LOADB                            R27 0 +1
      302 LOADB                            R27 1
      303 SETTABLEKS                       R27 R26 K65 ["auto-xy"]
      305 GETTABLEKS                       R28 R2 K16 ["width"]
      307 GETTABLEKS                       R28 R28 K67 ["Scale"]
      309 JUMPIFNOTEQKN                    R28 K68 [0] ; [+2]
      311 LOADB                            R27 0 +1
      312 LOADB                            R27 1
      313 SETTABLEKS                       R27 R26 K69 ["auto-y"]
      315 MOVE                             R27 R7
      316 JUMPIFNOT                        R27 ; [+7]
      317 GETUPVAL                         R28 4
      318 GETTABLEKS                       R28 R28 K7 ["Fill"]
      320 JUMPIFEQ                         R7 R28 ; [+2]
      322 LOADB                            R27 0 +1
      323 LOADB                            R27 1
      324 SETTABLEKS                       R27 R26 K70 ["fill"]
      326 GETTABLEKS                       R27 R10 K35 ["container"]
      328 GETTABLEKS                       R27 R27 K43 ["tag"]
      330 LOADB                            R28 1
      331 SETTABLE                         R28 R26 R27
      332 SETTABLEKS                       R26 R25 K43 ["tag"]
      334 SETTABLEKS                       R1 R25 K58 ["ref"]
      336 CALL                             R23 2 1
      337 DUPTABLE                         R24 K72 [{"ItemInner"}]
      338 GETUPVAL                         R25 11
      339 GETTABLEKS                       R25 R25 K37 ["createElement"]
      341 GETUPVAL                         R26 15
      342 DUPTABLE                         R27 K73 [{"tag", "Size"}]
      343 GETTABLEKS                       R28 R10 K74 ["itemInner"]
      345 GETTABLEKS                       R28 R28 K43 ["tag"]
      347 SETTABLEKS                       R28 R27 K43 ["tag"]
      349 SETTABLEKS                       R8 R27 K54 ["Size"]
      351 DUPTABLE                         R28 K79 [{"IconRow", "Label", "Metadata", "Description"}]
      352 GETUPVAL                         R29 11
      353 GETTABLEKS                       R29 R29 K37 ["createElement"]
      355 GETUPVAL                         R30 15
      356 DUPTABLE                         R31 K82 [{["tag"] = "size-full-0 auto-y row gap-small align-y-center", ["LayoutOrder"] = 1}]
      357 DUPTABLE                         R32 K85 [{"Icon", "Label", "Checkmark"}]
      358 GETTABLEKS                       R34 R2 K86 ["icon"]
      360 JUMPIFNOT                        R34 ; [+26]
      361 GETUPVAL                         R33 11
      362 GETTABLEKS                       R33 R33 K37 ["createElement"]
      364 GETUPVAL                         R34 17
      365 DUPTABLE                         R35 K89 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 0}]
      366 GETTABLEKS                       R36 R2 K86 ["icon"]
      368 SETTABLEKS                       R36 R35 K87 ["name"]
      370 GETTABLEKS                       R36 R10 K86 ["icon"]
      372 GETTABLEKS                       R36 R36 K17 ["size"]
      374 SETTABLEKS                       R36 R35 K17 ["size"]
      376 GETTABLEKS                       R36 R14 K52 ["transparency"]
      378 NEWCLOSURE                       R38 P4
      379 CAPTURE                          VAL R11
      380 NAMECALL                         R36 R36 K62 ["map"]
      382 CALL                             R36 2 1
      383 SETTABLEKS                       R36 R35 K88 ["style"]
      385 CALL                             R33 2 1
      386 JUMP                             ; [+1]
      387 LOADNIL                          R33
      388 SETTABLEKS                       R33 R32 K83 ["Icon"]
      390 GETUPVAL                         R34 3
      391 GETTABLEKS                       R34 R34 K4 ["Horizontal"]
      393 JUMPIFNOTEQ                      R6 R34 ; [+3]
      395 MOVE                             R33 R20
      396 JUMP                             ; [+6]
      397 GETUPVAL                         R33 11
      398 GETTABLEKS                       R33 R33 K37 ["createElement"]
      400 GETUPVAL                         R34 15
      401 DUPTABLE                         R35 K91 [{["tag"] = "grow"}]
      402 CALL                             R33 2 1
      403 SETTABLEKS                       R33 R32 K76 ["Label"]
      405 GETUPVAL                         R33 11
      406 GETTABLEKS                       R33 R33 K37 ["createElement"]
      408 GETUPVAL                         R34 17
      409 DUPTABLE                         R35 K94 [{["name"] = "check-large", ["size"], ["style"], ["LayoutOrder"] = 3}]
      410 GETTABLEKS                       R36 R10 K86 ["icon"]
      412 GETTABLEKS                       R36 R36 K17 ["size"]
      414 SETTABLEKS                       R36 R35 K17 ["size"]
      416 GETTABLEKS                       R36 R14 K52 ["transparency"]
      418 NEWCLOSURE                       R38 P5
      419 CAPTURE                          VAL R11
      420 CAPTURE                          VAL R4
      421 NAMECALL                         R36 R36 K62 ["map"]
      423 CALL                             R36 2 1
      424 SETTABLEKS                       R36 R35 K88 ["style"]
      426 CALL                             R33 2 1
      427 SETTABLEKS                       R33 R32 K84 ["Checkmark"]
      429 CALL                             R29 3 1
      430 SETTABLEKS                       R29 R28 K75 ["IconRow"]
      432 GETUPVAL                         R30 3
      433 GETTABLEKS                       R30 R30 K3 ["Vertical"]
      435 JUMPIFNOTEQ                      R6 R30 ; [+3]
      437 MOVE                             R29 R20
      438 JUMP                             ; [+1]
      439 LOADNIL                          R29
      440 SETTABLEKS                       R29 R28 K76 ["Label"]
      442 GETTABLEKS                       R30 R2 K95 ["metadata"]
      444 JUMPIFNOT                        R30 ; [+36]
      445 GETUPVAL                         R29 11
      446 GETTABLEKS                       R29 R29 K37 ["createElement"]
      448 GETUPVAL                         R30 12
      449 DUPTABLE                         R31 K97 [{["Text"], ["TextTruncate"], ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 3}]
      450 GETUPVAL                         R32 13
      451 GETTABLEKS                       R33 R2 K95 ["metadata"]
      453 CALL                             R32 1 1
      454 SETTABLEKS                       R32 R31 K38 ["Text"]
      456 GETIMPORT                        R32 K99 [Enum.TextTruncate.AtEnd]
      458 SETTABLEKS                       R32 R31 K96 ["TextTruncate"]
      460 GETIMPORT                        R32 K50 [Enum.TextXAlignment.Left]
      462 SETTABLEKS                       R32 R31 K41 ["TextXAlignment"]
      464 GETTABLEKS                       R32 R10 K95 ["metadata"]
      466 GETTABLEKS                       R32 R32 K43 ["tag"]
      468 SETTABLEKS                       R32 R31 K43 ["tag"]
      470 GETUPVAL                         R32 14
      471 GETTABLEKS                       R33 R16 K51 ["textTransparency"]
      473 GETTABLEKS                       R34 R14 K52 ["transparency"]
      475 MOVE                             R35 R11
      476 CALL                             R32 3 1
      477 SETTABLEKS                       R32 R31 K44 ["textStyle"]
      479 CALL                             R29 2 1
      480 JUMP                             ; [+1]
      481 LOADNIL                          R29
      482 SETTABLEKS                       R29 R28 K77 ["Metadata"]
      484 GETTABLEKS                       R30 R2 K100 ["description"]
      486 JUMPIFNOT                        R30 ; [+32]
      487 GETUPVAL                         R29 11
      488 GETTABLEKS                       R29 R29 K37 ["createElement"]
      490 GETUPVAL                         R30 12
      491 DUPTABLE                         R31 K102 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 4}]
      492 GETUPVAL                         R32 13
      493 GETTABLEKS                       R33 R2 K100 ["description"]
      495 CALL                             R32 1 1
      496 SETTABLEKS                       R32 R31 K38 ["Text"]
      498 GETIMPORT                        R32 K50 [Enum.TextXAlignment.Left]
      500 SETTABLEKS                       R32 R31 K41 ["TextXAlignment"]
      502 GETTABLEKS                       R32 R10 K100 ["description"]
      504 GETTABLEKS                       R32 R32 K43 ["tag"]
      506 SETTABLEKS                       R32 R31 K43 ["tag"]
      508 GETUPVAL                         R32 14
      509 GETTABLEKS                       R33 R16 K51 ["textTransparency"]
      511 GETTABLEKS                       R34 R14 K52 ["transparency"]
      513 MOVE                             R35 R11
      514 CALL                             R32 3 1
      515 SETTABLEKS                       R32 R31 K44 ["textStyle"]
      517 CALL                             R29 2 1
      518 JUMP                             ; [+1]
      519 LOADNIL                          R29
      520 SETTABLEKS                       R29 R28 K78 ["Description"]
      522 CALL                             R25 3 1
      523 SETTABLEKS                       R25 R24 K71 ["ItemInner"]
      525 CALL                             R21 3 -1
      526 RETURN                           R21 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Motion"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K11 ["useMotion"]
       28 GETTABLEKS                       R6 R0 K12 ["Components"]
       30 GETIMPORT                        R7 K6 [require]
       32 GETTABLEKS                       R8 R6 K13 ["Icon"]
       34 CALL                             R7 1 1
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R6 K14 ["Text"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K6 [require]
       42 GETTABLEKS                       R10 R6 K15 ["Types"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K6 [require]
       47 GETTABLEKS                       R11 R6 K16 ["View"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K6 [require]
       52 GETTABLEKS                       R12 R0 K17 ["Constants"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R13 R0 K8 ["Utility"]
       59 GETTABLEKS                       R13 R13 K18 ["escapeRichText"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K6 [require]
       64 GETTABLEKS                       R14 R0 K19 ["Providers"]
       66 GETTABLEKS                       R14 R14 K20 ["Style"]
       68 GETTABLEKS                       R14 R14 K21 ["useTokens"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETTABLEKS                       R15 R0 K8 ["Utility"]
       75 GETTABLEKS                       R15 R15 K22 ["withCommonProps"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K6 [require]
       80 GETTABLEKS                       R16 R0 K8 ["Utility"]
       82 GETTABLEKS                       R16 R16 K23 ["withDefaults"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K6 [require]
       87 GETIMPORT                        R17 K1 [script]
       89 GETTABLEKS                       R17 R17 K4 ["Parent"]
       91 GETTABLEKS                       R17 R17 K24 ["useOptionSelectorGroupItemMotionStates"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K6 [require]
       96 GETIMPORT                        R18 K1 [script]
       98 GETTABLEKS                       R18 R18 K4 ["Parent"]
      100 GETTABLEKS                       R18 R18 K25 ["useOptionSelectorGroupItemVariants"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K6 [require]
      105 GETTABLEKS                       R19 R0 K26 ["Enums"]
      107 GETTABLEKS                       R19 R19 K27 ["FillBehavior"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R20 R0 K26 ["Enums"]
      114 GETTABLEKS                       R20 R20 K28 ["InputSize"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K6 [require]
      119 GETTABLEKS                       R21 R0 K26 ["Enums"]
      121 GETTABLEKS                       R21 R21 K29 ["Orientation"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K6 [require]
      126 GETIMPORT                        R22 K1 [script]
      128 GETTABLEKS                       R22 R22 K4 ["Parent"]
      130 GETTABLEKS                       R22 R22 K4 ["Parent"]
      132 GETTABLEKS                       R22 R22 K30 ["useOptionSelectorGroup"]
      134 CALL                             R21 1 1
      135 DUPCLOSURE                       R22 K31 [PROTO_1]
      136 DUPCLOSURE                       R23 K32 [PROTO_3]
      137 CAPTURE                          VAL R2
      138 DUPTABLE                         R24 K37 [{["isDisabled"] = False, ["size"], ["width"]}]
      139 GETTABLEKS                       R25 R19 K38 ["Medium"]
      141 SETTABLEKS                       R25 R24 K35 ["size"]
      143 GETIMPORT                        R25 K41 [UDim.new]
      145 LOADN                            R26 0
      146 LOADN                            R27 0
      147 CALL                             R25 2 1
      148 SETTABLEKS                       R25 R24 K36 ["width"]
      150 DUPCLOSURE                       R25 K42 [PROTO_9]
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R17
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R7
      169 GETTABLEKS                       R26 R2 K43 ["memo"]
      171 GETTABLEKS                       R27 R2 K44 ["forwardRef"]
      173 MOVE                             R28 R25
      174 CALL                             R27 1 -1
      175 CALL                             R26 -1 -1
      176 RETURN                           R26 -1
