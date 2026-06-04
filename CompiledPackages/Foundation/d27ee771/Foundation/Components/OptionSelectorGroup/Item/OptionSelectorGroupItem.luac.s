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
      180 DUPTABLE                         R22 K45 [{"Text", "TextWrapped", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      181 GETUPVAL                         R23 13
      182 MOVE                             R24 R5
      183 CALL                             R23 1 1
      184 SETTABLEKS                       R23 R22 K38 ["Text"]
      186 LOADB                            R23 1
      187 SETTABLEKS                       R23 R22 K39 ["TextWrapped"]
      189 GETIMPORT                        R23 K48 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R23 R22 K40 ["TextXAlignment"]
      193 LOADB                            R23 1
      194 SETTABLEKS                       R23 R22 K41 ["RichText"]
      196 GETTABLEKS                       R23 R10 K1 ["label"]
      198 GETTABLEKS                       R23 R23 K42 ["tag"]
      200 SETTABLEKS                       R23 R22 K42 ["tag"]
      202 GETUPVAL                         R23 14
      203 GETTABLEKS                       R24 R16 K49 ["textTransparency"]
      205 GETTABLEKS                       R25 R14 K50 ["transparency"]
      207 MOVE                             R26 R11
      208 CALL                             R23 3 1
      209 SETTABLEKS                       R23 R22 K43 ["textStyle"]
      211 LOADN                            R23 2
      212 SETTABLEKS                       R23 R22 K44 ["LayoutOrder"]
      214 CALL                             R20 2 1
      215 GETUPVAL                         R21 11
      216 GETTABLEKS                       R21 R21 K37 ["createElement"]
      218 GETUPVAL                         R22 15
      219 GETUPVAL                         R23 16
      220 MOVE                             R24 R2
      221 DUPTABLE                         R25 K57 [{"stroke", "Size", "selection", "cursor", "onActivated", "isDisabled", "tag", "ref"}]
      222 DUPTABLE                         R26 K59 [{"Color", "Transparency"}]
      223 GETTABLEKS                       R27 R12 K19 ["Color3"]
      225 SETTABLEKS                       R27 R26 K20 ["Color"]
      227 GETTABLEKS                       R28 R12 K58 ["Transparency"]
      229 GETTABLEKS                       R29 R14 K50 ["transparency"]
      231 NEWCLOSURE                       R32 P3
      232 CAPTURE                          VAL R28
      233 NAMECALL                         R30 R29 K60 ["map"]
      235 CALL                             R30 2 1
      236 MOVE                             R27 R30
      237 SETTABLEKS                       R27 R26 K58 ["Transparency"]
      239 SETTABLEKS                       R26 R25 K51 ["stroke"]
      241 SETTABLEKS                       R8 R25 K52 ["Size"]
      243 DUPTABLE                         R26 K62 [{"Selectable"}]
      244 GETTABLEKS                       R28 R2 K28 ["isDisabled"]
      246 JUMPIFNOT                        R28 ; [+2]
      247 LOADB                            R27 0
      248 JUMP                             ; [+2]
      249 GETTABLEKS                       R27 R3 K61 ["Selectable"]
      251 SETTABLEKS                       R27 R26 K61 ["Selectable"]
      253 SETTABLEKS                       R26 R25 K53 ["selection"]
      255 SETTABLEKS                       R19 R25 K54 ["cursor"]
      257 SETTABLEKS                       R18 R25 K55 ["onActivated"]
      259 GETTABLEKS                       R26 R2 K28 ["isDisabled"]
      261 SETTABLEKS                       R26 R25 K28 ["isDisabled"]
      263 GETUPVAL                         R27 5
      264 GETTABLEKS                       R27 R27 K8 ["FoundationFixOptionSelectorGroupItemSize"]
      266 JUMPIFNOT                        R27 ; [+27]
      267 NEWTABLE                         R26 4 0
      269 GETUPVAL                         R28 4
      270 GETTABLEKS                       R28 R28 K7 ["Fill"]
      272 JUMPIFNOTEQ                      R7 R28 ; [+2]
      274 LOADB                            R27 0 +1
      275 LOADB                            R27 1
      276 SETTABLEKS                       R27 R26 K63 ["auto-xy"]
      278 GETUPVAL                         R28 4
      279 GETTABLEKS                       R28 R28 K7 ["Fill"]
      281 JUMPIFEQ                         R7 R28 ; [+2]
      283 LOADB                            R27 0 +1
      284 LOADB                            R27 1
      285 SETTABLEKS                       R27 R26 K64 ["auto-y fill"]
      287 GETTABLEKS                       R27 R10 K35 ["container"]
      289 GETTABLEKS                       R27 R27 K42 ["tag"]
      291 LOADB                            R28 1
      292 SETTABLE                         R28 R26 R27
      293 JUMP                             ; [+47]
      294 NEWTABLE                         R26 4 0
      296 LOADB                            R27 1
      297 GETTABLEKS                       R28 R2 K16 ["width"]
      299 GETTABLEKS                       R28 R28 K65 ["Scale"]
      301 JUMPIFEQKN                       R28 K66 [0] ; [+10]
      303 MOVE                             R27 R7
      304 JUMPIFNOT                        R27 ; [+7]
      305 GETUPVAL                         R28 4
      306 GETTABLEKS                       R28 R28 K7 ["Fill"]
      308 JUMPIFNOTEQ                      R7 R28 ; [+2]
      310 LOADB                            R27 0 +1
      311 LOADB                            R27 1
      312 SETTABLEKS                       R27 R26 K63 ["auto-xy"]
      314 GETTABLEKS                       R28 R2 K16 ["width"]
      316 GETTABLEKS                       R28 R28 K65 ["Scale"]
      318 JUMPIFNOTEQKN                    R28 K66 [0] ; [+2]
      320 LOADB                            R27 0 +1
      321 LOADB                            R27 1
      322 SETTABLEKS                       R27 R26 K67 ["auto-y"]
      324 MOVE                             R27 R7
      325 JUMPIFNOT                        R27 ; [+7]
      326 GETUPVAL                         R28 4
      327 GETTABLEKS                       R28 R28 K7 ["Fill"]
      329 JUMPIFEQ                         R7 R28 ; [+2]
      331 LOADB                            R27 0 +1
      332 LOADB                            R27 1
      333 SETTABLEKS                       R27 R26 K68 ["fill"]
      335 GETTABLEKS                       R27 R10 K35 ["container"]
      337 GETTABLEKS                       R27 R27 K42 ["tag"]
      339 LOADB                            R28 1
      340 SETTABLE                         R28 R26 R27
      341 SETTABLEKS                       R26 R25 K42 ["tag"]
      343 SETTABLEKS                       R1 R25 K56 ["ref"]
      345 CALL                             R23 2 1
      346 DUPTABLE                         R24 K70 [{"ItemInner"}]
      347 GETUPVAL                         R25 11
      348 GETTABLEKS                       R25 R25 K37 ["createElement"]
      350 GETUPVAL                         R26 15
      351 DUPTABLE                         R27 K71 [{"tag", "Size"}]
      352 GETTABLEKS                       R28 R10 K72 ["itemInner"]
      354 GETTABLEKS                       R28 R28 K42 ["tag"]
      356 SETTABLEKS                       R28 R27 K42 ["tag"]
      358 SETTABLEKS                       R8 R27 K52 ["Size"]
      360 DUPTABLE                         R28 K77 [{"IconRow", "Label", "Metadata", "Description"}]
      361 GETUPVAL                         R29 11
      362 GETTABLEKS                       R29 R29 K37 ["createElement"]
      364 GETUPVAL                         R30 15
      365 DUPTABLE                         R31 K78 [{"tag", "LayoutOrder"}]
      366 LOADK                            R32 K79 ["size-full-0 auto-y row gap-small align-y-center"]
      367 SETTABLEKS                       R32 R31 K42 ["tag"]
      369 LOADN                            R32 1
      370 SETTABLEKS                       R32 R31 K44 ["LayoutOrder"]
      372 DUPTABLE                         R32 K82 [{"Icon", "Label", "Checkmark"}]
      373 GETTABLEKS                       R34 R2 K83 ["icon"]
      375 JUMPIFNOT                        R34 ; [+29]
      376 GETUPVAL                         R33 11
      377 GETTABLEKS                       R33 R33 K37 ["createElement"]
      379 GETUPVAL                         R34 17
      380 DUPTABLE                         R35 K86 [{"name", "size", "style", "LayoutOrder"}]
      381 GETTABLEKS                       R36 R2 K83 ["icon"]
      383 SETTABLEKS                       R36 R35 K84 ["name"]
      385 GETTABLEKS                       R36 R10 K83 ["icon"]
      387 GETTABLEKS                       R36 R36 K17 ["size"]
      389 SETTABLEKS                       R36 R35 K17 ["size"]
      391 GETTABLEKS                       R36 R14 K50 ["transparency"]
      393 NEWCLOSURE                       R38 P4
      394 CAPTURE                          VAL R11
      395 NAMECALL                         R36 R36 K60 ["map"]
      397 CALL                             R36 2 1
      398 SETTABLEKS                       R36 R35 K85 ["style"]
      400 LOADN                            R36 0
      401 SETTABLEKS                       R36 R35 K44 ["LayoutOrder"]
      403 CALL                             R33 2 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R33
      406 SETTABLEKS                       R33 R32 K80 ["Icon"]
      408 GETUPVAL                         R34 3
      409 GETTABLEKS                       R34 R34 K4 ["Horizontal"]
      411 JUMPIFNOTEQ                      R6 R34 ; [+3]
      413 MOVE                             R33 R20
      414 JUMP                             ; [+9]
      415 GETUPVAL                         R33 11
      416 GETTABLEKS                       R33 R33 K37 ["createElement"]
      418 GETUPVAL                         R34 15
      419 DUPTABLE                         R35 K87 [{"tag"}]
      420 LOADK                            R36 K88 ["grow"]
      421 SETTABLEKS                       R36 R35 K42 ["tag"]
      423 CALL                             R33 2 1
      424 SETTABLEKS                       R33 R32 K74 ["Label"]
      426 GETUPVAL                         R33 11
      427 GETTABLEKS                       R33 R33 K37 ["createElement"]
      429 GETUPVAL                         R34 17
      430 DUPTABLE                         R35 K86 [{"name", "size", "style", "LayoutOrder"}]
      431 LOADK                            R36 K89 ["check-large"]
      432 SETTABLEKS                       R36 R35 K84 ["name"]
      434 GETTABLEKS                       R36 R10 K83 ["icon"]
      436 GETTABLEKS                       R36 R36 K17 ["size"]
      438 SETTABLEKS                       R36 R35 K17 ["size"]
      440 GETTABLEKS                       R36 R14 K50 ["transparency"]
      442 NEWCLOSURE                       R38 P5
      443 CAPTURE                          VAL R11
      444 CAPTURE                          VAL R4
      445 NAMECALL                         R36 R36 K60 ["map"]
      447 CALL                             R36 2 1
      448 SETTABLEKS                       R36 R35 K85 ["style"]
      450 LOADN                            R36 3
      451 SETTABLEKS                       R36 R35 K44 ["LayoutOrder"]
      453 CALL                             R33 2 1
      454 SETTABLEKS                       R33 R32 K81 ["Checkmark"]
      456 CALL                             R29 3 1
      457 SETTABLEKS                       R29 R28 K73 ["IconRow"]
      459 GETUPVAL                         R30 3
      460 GETTABLEKS                       R30 R30 K3 ["Vertical"]
      462 JUMPIFNOTEQ                      R6 R30 ; [+3]
      464 MOVE                             R29 R20
      465 JUMP                             ; [+1]
      466 LOADNIL                          R29
      467 SETTABLEKS                       R29 R28 K74 ["Label"]
      469 GETTABLEKS                       R30 R2 K90 ["metadata"]
      471 JUMPIFNOT                        R30 ; [+42]
      472 GETUPVAL                         R29 11
      473 GETTABLEKS                       R29 R29 K37 ["createElement"]
      475 GETUPVAL                         R30 12
      476 DUPTABLE                         R31 K92 [{"Text", "TextTruncate", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      477 GETUPVAL                         R32 13
      478 GETTABLEKS                       R33 R2 K90 ["metadata"]
      480 CALL                             R32 1 1
      481 SETTABLEKS                       R32 R31 K38 ["Text"]
      483 GETIMPORT                        R32 K94 [Enum.TextTruncate.AtEnd]
      485 SETTABLEKS                       R32 R31 K91 ["TextTruncate"]
      487 GETIMPORT                        R32 K48 [Enum.TextXAlignment.Left]
      489 SETTABLEKS                       R32 R31 K40 ["TextXAlignment"]
      491 LOADB                            R32 1
      492 SETTABLEKS                       R32 R31 K41 ["RichText"]
      494 GETTABLEKS                       R32 R10 K90 ["metadata"]
      496 GETTABLEKS                       R32 R32 K42 ["tag"]
      498 SETTABLEKS                       R32 R31 K42 ["tag"]
      500 GETUPVAL                         R32 14
      501 GETTABLEKS                       R33 R16 K49 ["textTransparency"]
      503 GETTABLEKS                       R34 R14 K50 ["transparency"]
      505 MOVE                             R35 R11
      506 CALL                             R32 3 1
      507 SETTABLEKS                       R32 R31 K43 ["textStyle"]
      509 LOADN                            R32 3
      510 SETTABLEKS                       R32 R31 K44 ["LayoutOrder"]
      512 CALL                             R29 2 1
      513 JUMP                             ; [+1]
      514 LOADNIL                          R29
      515 SETTABLEKS                       R29 R28 K75 ["Metadata"]
      517 GETTABLEKS                       R30 R2 K95 ["description"]
      519 JUMPIFNOT                        R30 ; [+41]
      520 GETUPVAL                         R29 11
      521 GETTABLEKS                       R29 R29 K37 ["createElement"]
      523 GETUPVAL                         R30 12
      524 DUPTABLE                         R31 K45 [{"Text", "TextWrapped", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      525 GETUPVAL                         R32 13
      526 GETTABLEKS                       R33 R2 K95 ["description"]
      528 CALL                             R32 1 1
      529 SETTABLEKS                       R32 R31 K38 ["Text"]
      531 LOADB                            R32 1
      532 SETTABLEKS                       R32 R31 K39 ["TextWrapped"]
      534 GETIMPORT                        R32 K48 [Enum.TextXAlignment.Left]
      536 SETTABLEKS                       R32 R31 K40 ["TextXAlignment"]
      538 LOADB                            R32 1
      539 SETTABLEKS                       R32 R31 K41 ["RichText"]
      541 GETTABLEKS                       R32 R10 K95 ["description"]
      543 GETTABLEKS                       R32 R32 K42 ["tag"]
      545 SETTABLEKS                       R32 R31 K42 ["tag"]
      547 GETUPVAL                         R32 14
      548 GETTABLEKS                       R33 R16 K49 ["textTransparency"]
      550 GETTABLEKS                       R34 R14 K50 ["transparency"]
      552 MOVE                             R35 R11
      553 CALL                             R32 3 1
      554 SETTABLEKS                       R32 R31 K43 ["textStyle"]
      556 LOADN                            R32 4
      557 SETTABLEKS                       R32 R31 K44 ["LayoutOrder"]
      559 CALL                             R29 2 1
      560 JUMP                             ; [+1]
      561 LOADNIL                          R29
      562 SETTABLEKS                       R29 R28 K76 ["Description"]
      564 CALL                             R25 3 1
      565 SETTABLEKS                       R25 R24 K69 ["ItemInner"]
      567 CALL                             R21 3 -1
      568 RETURN                           R21 -1

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
      138 DUPTABLE                         R24 K36 [{"isDisabled", "size", "width"}]
      139 LOADB                            R25 0
      140 SETTABLEKS                       R25 R24 K33 ["isDisabled"]
      142 GETTABLEKS                       R25 R19 K37 ["Medium"]
      144 SETTABLEKS                       R25 R24 K34 ["size"]
      146 GETIMPORT                        R25 K40 [UDim.new]
      148 LOADN                            R26 0
      149 LOADN                            R27 0
      150 CALL                             R25 2 1
      151 SETTABLEKS                       R25 R24 K35 ["width"]
      153 DUPCLOSURE                       R25 K41 [PROTO_9]
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R10
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R7
      172 GETTABLEKS                       R26 R2 K42 ["memo"]
      174 GETTABLEKS                       R27 R2 K43 ["forwardRef"]
      176 MOVE                             R28 R25
      177 CALL                             R27 1 -1
      178 CALL                             R26 -1 -1
      179 RETURN                           R26 -1
