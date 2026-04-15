PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R5 0
        5 SUBRK                            R4 R0 K5 [NULL]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["joinBindings"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Disabled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["Default"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onValueChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["value"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["value"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+3]
       11 LOADNIL                          R1
       12 JUMP                             ; [+3]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K1 ["value"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["container"]
        7 GETTABLEKS                       R3 R4 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K8 ["Size"]
       15 GETTABLEKS                       R1 R2 K9 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K10 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K11 ["Thicker"]
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
       21 GETUPVAL                         R9 3
       22 GETTABLEKS                       R8 R9 K3 ["Vertical"]
       24 JUMPIFNOTEQ                      R7 R8 ; [+5]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R6 R7 K4 ["Horizontal"]
       29 JUMP                             ; [+3]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R6 R7 K3 ["Vertical"]
       33 GETUPVAL                         R9 3
       34 GETTABLEKS                       R8 R9 K4 ["Horizontal"]
       36 JUMPIFNOTEQ                      R6 R8 ; [+5]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R7 R8 K5 ["Fit"]
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R7 R2 K6 ["fillBehavior"]
       44 JUMPIF                           R7 ; [+3]
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R7 R8 K7 ["Fill"]
       48 GETIMPORT                        R8 K10 [UDim2.new]
       50 GETUPVAL                         R11 4
       51 GETTABLEKS                       R10 R11 K7 ["Fill"]
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
       74 GETTABLEKS                       R12 R10 K15 ["content"]
       76 GETTABLEKS                       R11 R12 K16 ["Color3"]
       78 JUMPIFNOT                        R4 ; [+7]
       79 GETTABLEKS                       R14 R9 K17 ["Color"]
       81 GETTABLEKS                       R13 R14 K18 ["System"]
       83 GETTABLEKS                       R12 R13 K19 ["Contrast"]
       85 JUMP                             ; [+6]
       86 GETTABLEKS                       R14 R9 K17 ["Color"]
       88 GETTABLEKS                       R13 R14 K20 ["Stroke"]
       90 GETTABLEKS                       R12 R13 K21 ["Emphasis"]
       92 GETUPVAL                         R13 7
       93 LOADN                            R14 0
       94 GETUPVAL                         R16 8
       95 GETTABLEKS                       R15 R16 K22 ["DISABLED_TRANSPARENCY"]
       97 CALL                             R13 2 1
       98 GETUPVAL                         R14 9
       99 GETTABLEKS                       R15 R13 K23 ["Default"]
      101 CALL                             R14 1 2
      102 GETUPVAL                         R16 9
      103 GETTABLEKS                       R17 R13 K23 ["Default"]
      105 CALL                             R16 1 2
      106 GETUPVAL                         R19 10
      107 GETTABLEKS                       R18 R19 K24 ["useEffect"]
      109 NEWCLOSURE                       R19 P0
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R13
      113 NEWTABLE                         R20 0 1
      115 GETTABLEKS                       R21 R2 K25 ["isDisabled"]
      117 SETLIST                          R20 R21 1 [1]
      119 CALL                             R18 2 0
      120 GETUPVAL                         R19 10
      121 GETTABLEKS                       R18 R19 K26 ["useCallback"]
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
      150 GETUPVAL                         R20 10
      151 GETTABLEKS                       R19 R20 K31 ["useMemo"]
      153 NEWCLOSURE                       R20 P2
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R9
      156 NEWTABLE                         R21 0 2
      158 MOVE                             R22 R9
      159 GETTABLEKS                       R24 R10 K32 ["container"]
      161 GETTABLEKS                       R23 R24 K33 ["radius"]
      163 SETLIST                          R21 R22 2 [1]
      165 CALL                             R19 2 1
      166 GETUPVAL                         R21 10
      167 GETTABLEKS                       R20 R21 K34 ["createElement"]
      169 GETUPVAL                         R21 11
      170 DUPTABLE                         R22 K42 [{"Text", "TextWrapped", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      171 GETUPVAL                         R23 12
      172 MOVE                             R24 R5
      173 CALL                             R23 1 1
      174 SETTABLEKS                       R23 R22 K35 ["Text"]
      176 LOADB                            R23 1
      177 SETTABLEKS                       R23 R22 K36 ["TextWrapped"]
      179 GETIMPORT                        R23 K45 [Enum.TextXAlignment.Left]
      181 SETTABLEKS                       R23 R22 K37 ["TextXAlignment"]
      183 LOADB                            R23 1
      184 SETTABLEKS                       R23 R22 K38 ["RichText"]
      186 GETTABLEKS                       R24 R10 K1 ["label"]
      188 GETTABLEKS                       R23 R24 K39 ["tag"]
      190 SETTABLEKS                       R23 R22 K39 ["tag"]
      192 GETUPVAL                         R23 13
      193 GETTABLEKS                       R24 R16 K46 ["textTransparency"]
      195 GETTABLEKS                       R25 R14 K47 ["transparency"]
      197 MOVE                             R26 R11
      198 CALL                             R23 3 1
      199 SETTABLEKS                       R23 R22 K40 ["textStyle"]
      201 LOADN                            R23 2
      202 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      204 CALL                             R20 2 1
      205 GETUPVAL                         R22 10
      206 GETTABLEKS                       R21 R22 K34 ["createElement"]
      208 GETUPVAL                         R22 14
      209 GETUPVAL                         R23 15
      210 MOVE                             R24 R2
      211 DUPTABLE                         R25 K54 [{"stroke", "Size", "selection", "cursor", "onActivated", "isDisabled", "tag", "ref"}]
      212 DUPTABLE                         R26 K56 [{"Color", "Transparency"}]
      213 GETTABLEKS                       R27 R12 K16 ["Color3"]
      215 SETTABLEKS                       R27 R26 K17 ["Color"]
      217 GETTABLEKS                       R28 R12 K55 ["Transparency"]
      219 GETTABLEKS                       R29 R14 K47 ["transparency"]
      221 NEWCLOSURE                       R32 P3
      222 CAPTURE                          VAL R28
      223 NAMECALL                         R30 R29 K57 ["map"]
      225 CALL                             R30 2 1
      226 MOVE                             R27 R30
      227 SETTABLEKS                       R27 R26 K55 ["Transparency"]
      229 SETTABLEKS                       R26 R25 K48 ["stroke"]
      231 SETTABLEKS                       R8 R25 K49 ["Size"]
      233 DUPTABLE                         R26 K59 [{"Selectable"}]
      234 GETTABLEKS                       R28 R2 K25 ["isDisabled"]
      236 JUMPIFNOT                        R28 ; [+2]
      237 LOADB                            R27 0
      238 JUMP                             ; [+2]
      239 GETTABLEKS                       R27 R3 K58 ["Selectable"]
      241 SETTABLEKS                       R27 R26 K58 ["Selectable"]
      243 SETTABLEKS                       R26 R25 K50 ["selection"]
      245 SETTABLEKS                       R19 R25 K51 ["cursor"]
      247 SETTABLEKS                       R18 R25 K52 ["onActivated"]
      249 GETTABLEKS                       R26 R2 K25 ["isDisabled"]
      251 SETTABLEKS                       R26 R25 K25 ["isDisabled"]
      253 NEWTABLE                         R26 4 0
      255 LOADB                            R27 1
      256 GETTABLEKS                       R29 R2 K13 ["width"]
      258 GETTABLEKS                       R28 R29 K60 ["Scale"]
      260 JUMPIFEQKN                       R28 K61 [0] ; [+10]
      262 MOVE                             R27 R7
      263 JUMPIFNOT                        R27 ; [+7]
      264 GETUPVAL                         R29 4
      265 GETTABLEKS                       R28 R29 K7 ["Fill"]
      267 JUMPIFNOTEQ                      R7 R28 ; [+2]
      269 LOADB                            R27 0 +1
      270 LOADB                            R27 1
      271 SETTABLEKS                       R27 R26 K62 ["auto-xy"]
      273 GETTABLEKS                       R29 R2 K13 ["width"]
      275 GETTABLEKS                       R28 R29 K60 ["Scale"]
      277 JUMPIFNOTEQKN                    R28 K61 [0] ; [+2]
      279 LOADB                            R27 0 +1
      280 LOADB                            R27 1
      281 SETTABLEKS                       R27 R26 K63 ["auto-y"]
      283 MOVE                             R27 R7
      284 JUMPIFNOT                        R27 ; [+7]
      285 GETUPVAL                         R29 4
      286 GETTABLEKS                       R28 R29 K7 ["Fill"]
      288 JUMPIFEQ                         R7 R28 ; [+2]
      290 LOADB                            R27 0 +1
      291 LOADB                            R27 1
      292 SETTABLEKS                       R27 R26 K64 ["fill"]
      294 GETTABLEKS                       R28 R10 K32 ["container"]
      296 GETTABLEKS                       R27 R28 K39 ["tag"]
      298 LOADB                            R28 1
      299 SETTABLE                         R28 R26 R27
      300 SETTABLEKS                       R26 R25 K39 ["tag"]
      302 SETTABLEKS                       R1 R25 K53 ["ref"]
      304 CALL                             R23 2 1
      305 DUPTABLE                         R24 K66 [{"ItemInner"}]
      306 GETUPVAL                         R26 10
      307 GETTABLEKS                       R25 R26 K34 ["createElement"]
      309 GETUPVAL                         R26 14
      310 DUPTABLE                         R27 K67 [{"tag", "Size"}]
      311 GETTABLEKS                       R29 R10 K68 ["itemInner"]
      313 GETTABLEKS                       R28 R29 K39 ["tag"]
      315 SETTABLEKS                       R28 R27 K39 ["tag"]
      317 SETTABLEKS                       R8 R27 K49 ["Size"]
      319 DUPTABLE                         R28 K73 [{"IconRow", "Label", "Metadata", "Description"}]
      320 GETUPVAL                         R30 10
      321 GETTABLEKS                       R29 R30 K34 ["createElement"]
      323 GETUPVAL                         R30 14
      324 DUPTABLE                         R31 K74 [{"tag", "LayoutOrder"}]
      325 LOADK                            R32 K75 ["size-full-0 auto-y row gap-small align-y-center"]
      326 SETTABLEKS                       R32 R31 K39 ["tag"]
      328 LOADN                            R32 1
      329 SETTABLEKS                       R32 R31 K41 ["LayoutOrder"]
      331 DUPTABLE                         R32 K78 [{"Icon", "Label", "Checkmark"}]
      332 GETTABLEKS                       R34 R2 K79 ["icon"]
      334 JUMPIFNOT                        R34 ; [+29]
      335 GETUPVAL                         R34 10
      336 GETTABLEKS                       R33 R34 K34 ["createElement"]
      338 GETUPVAL                         R34 16
      339 DUPTABLE                         R35 K82 [{"name", "size", "style", "LayoutOrder"}]
      340 GETTABLEKS                       R36 R2 K79 ["icon"]
      342 SETTABLEKS                       R36 R35 K80 ["name"]
      344 GETTABLEKS                       R37 R10 K79 ["icon"]
      346 GETTABLEKS                       R36 R37 K14 ["size"]
      348 SETTABLEKS                       R36 R35 K14 ["size"]
      350 GETTABLEKS                       R36 R14 K47 ["transparency"]
      352 NEWCLOSURE                       R38 P4
      353 CAPTURE                          VAL R11
      354 NAMECALL                         R36 R36 K57 ["map"]
      356 CALL                             R36 2 1
      357 SETTABLEKS                       R36 R35 K81 ["style"]
      359 LOADN                            R36 0
      360 SETTABLEKS                       R36 R35 K41 ["LayoutOrder"]
      362 CALL                             R33 2 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R33
      365 SETTABLEKS                       R33 R32 K76 ["Icon"]
      367 GETUPVAL                         R35 3
      368 GETTABLEKS                       R34 R35 K4 ["Horizontal"]
      370 JUMPIFNOTEQ                      R6 R34 ; [+3]
      372 MOVE                             R33 R20
      373 JUMP                             ; [+9]
      374 GETUPVAL                         R34 10
      375 GETTABLEKS                       R33 R34 K34 ["createElement"]
      377 GETUPVAL                         R34 14
      378 DUPTABLE                         R35 K83 [{"tag"}]
      379 LOADK                            R36 K84 ["grow"]
      380 SETTABLEKS                       R36 R35 K39 ["tag"]
      382 CALL                             R33 2 1
      383 SETTABLEKS                       R33 R32 K70 ["Label"]
      385 GETUPVAL                         R34 10
      386 GETTABLEKS                       R33 R34 K34 ["createElement"]
      388 GETUPVAL                         R34 16
      389 DUPTABLE                         R35 K82 [{"name", "size", "style", "LayoutOrder"}]
      390 LOADK                            R36 K85 ["check-large"]
      391 SETTABLEKS                       R36 R35 K80 ["name"]
      393 GETTABLEKS                       R37 R10 K79 ["icon"]
      395 GETTABLEKS                       R36 R37 K14 ["size"]
      397 SETTABLEKS                       R36 R35 K14 ["size"]
      399 GETTABLEKS                       R36 R14 K47 ["transparency"]
      401 NEWCLOSURE                       R38 P5
      402 CAPTURE                          VAL R11
      403 CAPTURE                          VAL R4
      404 NAMECALL                         R36 R36 K57 ["map"]
      406 CALL                             R36 2 1
      407 SETTABLEKS                       R36 R35 K81 ["style"]
      409 LOADN                            R36 3
      410 SETTABLEKS                       R36 R35 K41 ["LayoutOrder"]
      412 CALL                             R33 2 1
      413 SETTABLEKS                       R33 R32 K77 ["Checkmark"]
      415 CALL                             R29 3 1
      416 SETTABLEKS                       R29 R28 K69 ["IconRow"]
      418 GETUPVAL                         R31 3
      419 GETTABLEKS                       R30 R31 K3 ["Vertical"]
      421 JUMPIFNOTEQ                      R6 R30 ; [+3]
      423 MOVE                             R29 R20
      424 JUMP                             ; [+1]
      425 LOADNIL                          R29
      426 SETTABLEKS                       R29 R28 K70 ["Label"]
      428 GETTABLEKS                       R30 R2 K86 ["metadata"]
      430 JUMPIFNOT                        R30 ; [+42]
      431 GETUPVAL                         R30 10
      432 GETTABLEKS                       R29 R30 K34 ["createElement"]
      434 GETUPVAL                         R30 11
      435 DUPTABLE                         R31 K88 [{"Text", "TextTruncate", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      436 GETUPVAL                         R32 12
      437 GETTABLEKS                       R33 R2 K86 ["metadata"]
      439 CALL                             R32 1 1
      440 SETTABLEKS                       R32 R31 K35 ["Text"]
      442 GETIMPORT                        R32 K90 [Enum.TextTruncate.AtEnd]
      444 SETTABLEKS                       R32 R31 K87 ["TextTruncate"]
      446 GETIMPORT                        R32 K45 [Enum.TextXAlignment.Left]
      448 SETTABLEKS                       R32 R31 K37 ["TextXAlignment"]
      450 LOADB                            R32 1
      451 SETTABLEKS                       R32 R31 K38 ["RichText"]
      453 GETTABLEKS                       R33 R10 K86 ["metadata"]
      455 GETTABLEKS                       R32 R33 K39 ["tag"]
      457 SETTABLEKS                       R32 R31 K39 ["tag"]
      459 GETUPVAL                         R32 13
      460 GETTABLEKS                       R33 R16 K46 ["textTransparency"]
      462 GETTABLEKS                       R34 R14 K47 ["transparency"]
      464 MOVE                             R35 R11
      465 CALL                             R32 3 1
      466 SETTABLEKS                       R32 R31 K40 ["textStyle"]
      468 LOADN                            R32 3
      469 SETTABLEKS                       R32 R31 K41 ["LayoutOrder"]
      471 CALL                             R29 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R29
      474 SETTABLEKS                       R29 R28 K71 ["Metadata"]
      476 GETTABLEKS                       R30 R2 K91 ["description"]
      478 JUMPIFNOT                        R30 ; [+41]
      479 GETUPVAL                         R30 10
      480 GETTABLEKS                       R29 R30 K34 ["createElement"]
      482 GETUPVAL                         R30 11
      483 DUPTABLE                         R31 K42 [{"Text", "TextWrapped", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      484 GETUPVAL                         R32 12
      485 GETTABLEKS                       R33 R2 K91 ["description"]
      487 CALL                             R32 1 1
      488 SETTABLEKS                       R32 R31 K35 ["Text"]
      490 LOADB                            R32 1
      491 SETTABLEKS                       R32 R31 K36 ["TextWrapped"]
      493 GETIMPORT                        R32 K45 [Enum.TextXAlignment.Left]
      495 SETTABLEKS                       R32 R31 K37 ["TextXAlignment"]
      497 LOADB                            R32 1
      498 SETTABLEKS                       R32 R31 K38 ["RichText"]
      500 GETTABLEKS                       R33 R10 K91 ["description"]
      502 GETTABLEKS                       R32 R33 K39 ["tag"]
      504 SETTABLEKS                       R32 R31 K39 ["tag"]
      506 GETUPVAL                         R32 13
      507 GETTABLEKS                       R33 R16 K46 ["textTransparency"]
      509 GETTABLEKS                       R34 R14 K47 ["transparency"]
      511 MOVE                             R35 R11
      512 CALL                             R32 3 1
      513 SETTABLEKS                       R32 R31 K40 ["textStyle"]
      515 LOADN                            R32 4
      516 SETTABLEKS                       R32 R31 K41 ["LayoutOrder"]
      518 CALL                             R29 2 1
      519 JUMP                             ; [+1]
      520 LOADNIL                          R29
      521 SETTABLEKS                       R29 R28 K72 ["Description"]
      523 CALL                             R25 3 1
      524 SETTABLEKS                       R25 R24 K65 ["ItemInner"]
      526 CALL                             R21 3 -1
      527 RETURN                           R21 -1

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
       50 GETTABLEKS                       R13 R0 K16 ["Utility"]
       52 GETTABLEKS                       R12 R13 K17 ["escapeRichText"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K6 [require]
       57 GETTABLEKS                       R15 R0 K18 ["Providers"]
       59 GETTABLEKS                       R14 R15 K19 ["Style"]
       61 GETTABLEKS                       R13 R14 K20 ["useTokens"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K6 [require]
       66 GETTABLEKS                       R15 R0 K16 ["Utility"]
       68 GETTABLEKS                       R14 R15 K21 ["withCommonProps"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K6 [require]
       73 GETTABLEKS                       R16 R0 K16 ["Utility"]
       75 GETTABLEKS                       R15 R16 K22 ["withDefaults"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K6 [require]
       80 GETIMPORT                        R18 K1 [script]
       82 GETTABLEKS                       R17 R18 K4 ["Parent"]
       84 GETTABLEKS                       R16 R17 K23 ["useOptionSelectorGroupItemMotionStates"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K6 [require]
       89 GETIMPORT                        R19 K1 [script]
       91 GETTABLEKS                       R18 R19 K4 ["Parent"]
       93 GETTABLEKS                       R17 R18 K24 ["useOptionSelectorGroupItemVariants"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K6 [require]
       98 GETTABLEKS                       R19 R0 K25 ["Enums"]
      100 GETTABLEKS                       R18 R19 K26 ["FillBehavior"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K6 [require]
      105 GETTABLEKS                       R20 R0 K25 ["Enums"]
      107 GETTABLEKS                       R19 R20 K27 ["InputSize"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K6 [require]
      112 GETTABLEKS                       R21 R0 K25 ["Enums"]
      114 GETTABLEKS                       R20 R21 K28 ["Orientation"]
      116 CALL                             R19 1 1
      117 GETIMPORT                        R20 K6 [require]
      119 GETIMPORT                        R24 K1 [script]
      121 GETTABLEKS                       R23 R24 K4 ["Parent"]
      123 GETTABLEKS                       R22 R23 K4 ["Parent"]
      125 GETTABLEKS                       R21 R22 K29 ["useOptionSelectorGroup"]
      127 CALL                             R20 1 1
      128 DUPCLOSURE                       R21 K30 [PROTO_1]
      129 DUPCLOSURE                       R22 K31 [PROTO_3]
      130 CAPTURE                          VAL R2
      131 DUPTABLE                         R23 K35 [{"isDisabled", "size", "width"}]
      132 LOADB                            R24 0
      133 SETTABLEKS                       R24 R23 K32 ["isDisabled"]
      135 GETTABLEKS                       R24 R18 K36 ["Medium"]
      137 SETTABLEKS                       R24 R23 K33 ["size"]
      139 GETIMPORT                        R24 K39 [UDim.new]
      141 LOADN                            R25 0
      142 LOADN                            R26 0
      143 CALL                             R24 2 1
      144 SETTABLEKS                       R24 R23 K34 ["width"]
      146 DUPCLOSURE                       R24 K40 [PROTO_9]
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R20
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R7
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R6
      164 GETTABLEKS                       R25 R2 K41 ["memo"]
      166 GETTABLEKS                       R26 R2 K42 ["forwardRef"]
      168 MOVE                             R27 R24
      169 CALL                             R26 1 -1
      170 CALL                             R25 -1 -1
      171 RETURN                           R25 -1
