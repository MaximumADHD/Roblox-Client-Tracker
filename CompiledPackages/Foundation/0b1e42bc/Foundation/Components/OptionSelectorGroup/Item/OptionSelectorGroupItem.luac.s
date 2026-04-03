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
       48 GETIMPORT                        R8 K10 [UDim2.fromScale]
       50 LOADN                            R9 1
       51 LOADN                            R10 0
       52 CALL                             R8 2 1
       53 GETUPVAL                         R9 5
       54 CALL                             R9 0 1
       55 GETUPVAL                         R10 6
       56 MOVE                             R11 R9
       57 GETTABLEKS                       R12 R2 K11 ["size"]
       59 CALL                             R10 2 1
       60 GETTABLEKS                       R12 R10 K12 ["content"]
       62 GETTABLEKS                       R11 R12 K13 ["Color3"]
       64 JUMPIFNOT                        R4 ; [+7]
       65 GETTABLEKS                       R14 R9 K14 ["Color"]
       67 GETTABLEKS                       R13 R14 K15 ["System"]
       69 GETTABLEKS                       R12 R13 K16 ["Contrast"]
       71 JUMP                             ; [+6]
       72 GETTABLEKS                       R14 R9 K14 ["Color"]
       74 GETTABLEKS                       R13 R14 K17 ["Stroke"]
       76 GETTABLEKS                       R12 R13 K18 ["Emphasis"]
       78 GETUPVAL                         R13 7
       79 LOADN                            R14 0
       80 GETUPVAL                         R16 8
       81 GETTABLEKS                       R15 R16 K19 ["DISABLED_TRANSPARENCY"]
       83 CALL                             R13 2 1
       84 GETUPVAL                         R14 9
       85 GETTABLEKS                       R15 R13 K20 ["Default"]
       87 CALL                             R14 1 2
       88 GETUPVAL                         R16 9
       89 GETTABLEKS                       R17 R13 K20 ["Default"]
       91 CALL                             R16 1 2
       92 GETUPVAL                         R19 10
       93 GETTABLEKS                       R18 R19 K21 ["useEffect"]
       95 NEWCLOSURE                       R19 P0
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R13
       99 NEWTABLE                         R20 0 1
      101 GETTABLEKS                       R21 R2 K22 ["isDisabled"]
      103 SETLIST                          R20 R21 1 [1]
      105 CALL                             R18 2 0
      106 GETUPVAL                         R19 10
      107 GETTABLEKS                       R18 R19 K23 ["useCallback"]
      109 NEWCLOSURE                       R19 P1
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R2
      112 NEWTABLE                         R20 0 4
      114 GETTABLEKS                       R21 R2 K22 ["isDisabled"]
      116 GETTABLEKS                       R22 R2 K0 ["value"]
      118 GETTABLEKS                       R23 R3 K24 ["onValueChanged"]
      120 GETTABLEKS                       R24 R3 K0 ["value"]
      122 SETLIST                          R20 R21 4 [1]
      124 CALL                             R18 2 1
      125 LOADK                            R20 K25 ["%*--item-%*"]
      126 GETTABLEKS                       R22 R3 K26 ["testId"]
      128 GETTABLEKS                       R23 R2 K0 ["value"]
      130 NAMECALL                         R20 R20 K27 ["format"]
      132 CALL                             R20 3 1
      133 MOVE                             R19 R20
      134 SETTABLEKS                       R19 R2 K26 ["testId"]
      136 GETUPVAL                         R20 10
      137 GETTABLEKS                       R19 R20 K28 ["useMemo"]
      139 NEWCLOSURE                       R20 P2
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R9
      142 NEWTABLE                         R21 0 2
      144 MOVE                             R22 R9
      145 GETTABLEKS                       R24 R10 K29 ["container"]
      147 GETTABLEKS                       R23 R24 K30 ["radius"]
      149 SETLIST                          R21 R22 2 [1]
      151 CALL                             R19 2 1
      152 GETUPVAL                         R21 10
      153 GETTABLEKS                       R20 R21 K31 ["createElement"]
      155 GETUPVAL                         R21 11
      156 DUPTABLE                         R22 K39 [{"Text", "TextWrapped", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      157 GETUPVAL                         R23 12
      158 MOVE                             R24 R5
      159 CALL                             R23 1 1
      160 SETTABLEKS                       R23 R22 K32 ["Text"]
      162 LOADB                            R23 1
      163 SETTABLEKS                       R23 R22 K33 ["TextWrapped"]
      165 GETIMPORT                        R23 K42 [Enum.TextXAlignment.Left]
      167 SETTABLEKS                       R23 R22 K34 ["TextXAlignment"]
      169 LOADB                            R23 1
      170 SETTABLEKS                       R23 R22 K35 ["RichText"]
      172 GETTABLEKS                       R24 R10 K1 ["label"]
      174 GETTABLEKS                       R23 R24 K36 ["tag"]
      176 SETTABLEKS                       R23 R22 K36 ["tag"]
      178 GETUPVAL                         R23 13
      179 GETTABLEKS                       R24 R16 K43 ["textTransparency"]
      181 GETTABLEKS                       R25 R14 K44 ["transparency"]
      183 MOVE                             R26 R11
      184 CALL                             R23 3 1
      185 SETTABLEKS                       R23 R22 K37 ["textStyle"]
      187 LOADN                            R23 2
      188 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      190 CALL                             R20 2 1
      191 GETUPVAL                         R22 10
      192 GETTABLEKS                       R21 R22 K31 ["createElement"]
      194 GETUPVAL                         R22 14
      195 GETUPVAL                         R23 15
      196 MOVE                             R24 R2
      197 DUPTABLE                         R25 K51 [{"stroke", "Size", "selection", "cursor", "onActivated", "isDisabled", "tag", "ref"}]
      198 DUPTABLE                         R26 K53 [{"Color", "Transparency"}]
      199 GETTABLEKS                       R27 R12 K13 ["Color3"]
      201 SETTABLEKS                       R27 R26 K14 ["Color"]
      203 GETTABLEKS                       R28 R12 K52 ["Transparency"]
      205 GETTABLEKS                       R29 R14 K44 ["transparency"]
      207 NEWCLOSURE                       R32 P3
      208 CAPTURE                          VAL R28
      209 NAMECALL                         R30 R29 K54 ["map"]
      211 CALL                             R30 2 1
      212 MOVE                             R27 R30
      213 SETTABLEKS                       R27 R26 K52 ["Transparency"]
      215 SETTABLEKS                       R26 R25 K45 ["stroke"]
      217 SETTABLEKS                       R8 R25 K46 ["Size"]
      219 DUPTABLE                         R26 K56 [{"Selectable"}]
      220 GETTABLEKS                       R28 R2 K22 ["isDisabled"]
      222 JUMPIFNOT                        R28 ; [+2]
      223 LOADB                            R27 0
      224 JUMP                             ; [+2]
      225 GETTABLEKS                       R27 R3 K55 ["Selectable"]
      227 SETTABLEKS                       R27 R26 K55 ["Selectable"]
      229 SETTABLEKS                       R26 R25 K47 ["selection"]
      231 SETTABLEKS                       R19 R25 K48 ["cursor"]
      233 SETTABLEKS                       R18 R25 K49 ["onActivated"]
      235 GETTABLEKS                       R26 R2 K22 ["isDisabled"]
      237 SETTABLEKS                       R26 R25 K22 ["isDisabled"]
      239 NEWTABLE                         R26 4 0
      241 GETUPVAL                         R29 4
      242 GETTABLEKS                       R28 R29 K7 ["Fill"]
      244 JUMPIFNOTEQ                      R7 R28 ; [+2]
      246 LOADB                            R27 0 +1
      247 LOADB                            R27 1
      248 SETTABLEKS                       R27 R26 K57 ["auto-xy"]
      250 GETUPVAL                         R29 4
      251 GETTABLEKS                       R28 R29 K7 ["Fill"]
      253 JUMPIFEQ                         R7 R28 ; [+2]
      255 LOADB                            R27 0 +1
      256 LOADB                            R27 1
      257 SETTABLEKS                       R27 R26 K58 ["fill auto-y"]
      259 GETTABLEKS                       R28 R10 K29 ["container"]
      261 GETTABLEKS                       R27 R28 K36 ["tag"]
      263 LOADB                            R28 1
      264 SETTABLE                         R28 R26 R27
      265 SETTABLEKS                       R26 R25 K36 ["tag"]
      267 SETTABLEKS                       R1 R25 K50 ["ref"]
      269 CALL                             R23 2 1
      270 DUPTABLE                         R24 K60 [{"ItemInner"}]
      271 GETUPVAL                         R26 10
      272 GETTABLEKS                       R25 R26 K31 ["createElement"]
      274 GETUPVAL                         R26 14
      275 DUPTABLE                         R27 K61 [{"tag", "Size"}]
      276 GETTABLEKS                       R29 R10 K62 ["itemInner"]
      278 GETTABLEKS                       R28 R29 K36 ["tag"]
      280 SETTABLEKS                       R28 R27 K36 ["tag"]
      282 SETTABLEKS                       R8 R27 K46 ["Size"]
      284 DUPTABLE                         R28 K67 [{"IconRow", "Label", "Metadata", "Description"}]
      285 GETUPVAL                         R30 10
      286 GETTABLEKS                       R29 R30 K31 ["createElement"]
      288 GETUPVAL                         R30 14
      289 DUPTABLE                         R31 K68 [{"tag", "LayoutOrder"}]
      290 LOADK                            R32 K69 ["size-full-0 auto-y row gap-small align-y-center"]
      291 SETTABLEKS                       R32 R31 K36 ["tag"]
      293 LOADN                            R32 1
      294 SETTABLEKS                       R32 R31 K38 ["LayoutOrder"]
      296 DUPTABLE                         R32 K72 [{"Icon", "Label", "Checkmark"}]
      297 GETTABLEKS                       R34 R2 K73 ["icon"]
      299 JUMPIFNOT                        R34 ; [+29]
      300 GETUPVAL                         R34 10
      301 GETTABLEKS                       R33 R34 K31 ["createElement"]
      303 GETUPVAL                         R34 16
      304 DUPTABLE                         R35 K76 [{"name", "size", "style", "LayoutOrder"}]
      305 GETTABLEKS                       R36 R2 K73 ["icon"]
      307 SETTABLEKS                       R36 R35 K74 ["name"]
      309 GETTABLEKS                       R37 R10 K73 ["icon"]
      311 GETTABLEKS                       R36 R37 K11 ["size"]
      313 SETTABLEKS                       R36 R35 K11 ["size"]
      315 GETTABLEKS                       R36 R14 K44 ["transparency"]
      317 NEWCLOSURE                       R38 P4
      318 CAPTURE                          VAL R11
      319 NAMECALL                         R36 R36 K54 ["map"]
      321 CALL                             R36 2 1
      322 SETTABLEKS                       R36 R35 K75 ["style"]
      324 LOADN                            R36 0
      325 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      327 CALL                             R33 2 1
      328 JUMP                             ; [+1]
      329 LOADNIL                          R33
      330 SETTABLEKS                       R33 R32 K70 ["Icon"]
      332 GETUPVAL                         R35 3
      333 GETTABLEKS                       R34 R35 K4 ["Horizontal"]
      335 JUMPIFNOTEQ                      R6 R34 ; [+3]
      337 MOVE                             R33 R20
      338 JUMP                             ; [+9]
      339 GETUPVAL                         R34 10
      340 GETTABLEKS                       R33 R34 K31 ["createElement"]
      342 GETUPVAL                         R34 14
      343 DUPTABLE                         R35 K77 [{"tag"}]
      344 LOADK                            R36 K78 ["grow"]
      345 SETTABLEKS                       R36 R35 K36 ["tag"]
      347 CALL                             R33 2 1
      348 SETTABLEKS                       R33 R32 K64 ["Label"]
      350 GETUPVAL                         R34 10
      351 GETTABLEKS                       R33 R34 K31 ["createElement"]
      353 GETUPVAL                         R34 16
      354 DUPTABLE                         R35 K76 [{"name", "size", "style", "LayoutOrder"}]
      355 LOADK                            R36 K79 ["check-large"]
      356 SETTABLEKS                       R36 R35 K74 ["name"]
      358 GETTABLEKS                       R37 R10 K73 ["icon"]
      360 GETTABLEKS                       R36 R37 K11 ["size"]
      362 SETTABLEKS                       R36 R35 K11 ["size"]
      364 GETTABLEKS                       R36 R14 K44 ["transparency"]
      366 NEWCLOSURE                       R38 P5
      367 CAPTURE                          VAL R11
      368 CAPTURE                          VAL R4
      369 NAMECALL                         R36 R36 K54 ["map"]
      371 CALL                             R36 2 1
      372 SETTABLEKS                       R36 R35 K75 ["style"]
      374 LOADN                            R36 3
      375 SETTABLEKS                       R36 R35 K38 ["LayoutOrder"]
      377 CALL                             R33 2 1
      378 SETTABLEKS                       R33 R32 K71 ["Checkmark"]
      380 CALL                             R29 3 1
      381 SETTABLEKS                       R29 R28 K63 ["IconRow"]
      383 GETUPVAL                         R31 3
      384 GETTABLEKS                       R30 R31 K3 ["Vertical"]
      386 JUMPIFNOTEQ                      R6 R30 ; [+3]
      388 MOVE                             R29 R20
      389 JUMP                             ; [+1]
      390 LOADNIL                          R29
      391 SETTABLEKS                       R29 R28 K64 ["Label"]
      393 GETTABLEKS                       R30 R2 K80 ["metadata"]
      395 JUMPIFNOT                        R30 ; [+42]
      396 GETUPVAL                         R30 10
      397 GETTABLEKS                       R29 R30 K31 ["createElement"]
      399 GETUPVAL                         R30 11
      400 DUPTABLE                         R31 K82 [{"Text", "TextTruncate", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      401 GETUPVAL                         R32 12
      402 GETTABLEKS                       R33 R2 K80 ["metadata"]
      404 CALL                             R32 1 1
      405 SETTABLEKS                       R32 R31 K32 ["Text"]
      407 GETIMPORT                        R32 K84 [Enum.TextTruncate.AtEnd]
      409 SETTABLEKS                       R32 R31 K81 ["TextTruncate"]
      411 GETIMPORT                        R32 K42 [Enum.TextXAlignment.Left]
      413 SETTABLEKS                       R32 R31 K34 ["TextXAlignment"]
      415 LOADB                            R32 1
      416 SETTABLEKS                       R32 R31 K35 ["RichText"]
      418 GETTABLEKS                       R33 R10 K80 ["metadata"]
      420 GETTABLEKS                       R32 R33 K36 ["tag"]
      422 SETTABLEKS                       R32 R31 K36 ["tag"]
      424 GETUPVAL                         R32 13
      425 GETTABLEKS                       R33 R16 K43 ["textTransparency"]
      427 GETTABLEKS                       R34 R14 K44 ["transparency"]
      429 MOVE                             R35 R11
      430 CALL                             R32 3 1
      431 SETTABLEKS                       R32 R31 K37 ["textStyle"]
      433 LOADN                            R32 3
      434 SETTABLEKS                       R32 R31 K38 ["LayoutOrder"]
      436 CALL                             R29 2 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R29
      439 SETTABLEKS                       R29 R28 K65 ["Metadata"]
      441 GETTABLEKS                       R30 R2 K85 ["description"]
      443 JUMPIFNOT                        R30 ; [+41]
      444 GETUPVAL                         R30 10
      445 GETTABLEKS                       R29 R30 K31 ["createElement"]
      447 GETUPVAL                         R30 11
      448 DUPTABLE                         R31 K39 [{"Text", "TextWrapped", "TextXAlignment", "RichText", "tag", "textStyle", "LayoutOrder"}]
      449 GETUPVAL                         R32 12
      450 GETTABLEKS                       R33 R2 K85 ["description"]
      452 CALL                             R32 1 1
      453 SETTABLEKS                       R32 R31 K32 ["Text"]
      455 LOADB                            R32 1
      456 SETTABLEKS                       R32 R31 K33 ["TextWrapped"]
      458 GETIMPORT                        R32 K42 [Enum.TextXAlignment.Left]
      460 SETTABLEKS                       R32 R31 K34 ["TextXAlignment"]
      462 LOADB                            R32 1
      463 SETTABLEKS                       R32 R31 K35 ["RichText"]
      465 GETTABLEKS                       R33 R10 K85 ["description"]
      467 GETTABLEKS                       R32 R33 K36 ["tag"]
      469 SETTABLEKS                       R32 R31 K36 ["tag"]
      471 GETUPVAL                         R32 13
      472 GETTABLEKS                       R33 R16 K43 ["textTransparency"]
      474 GETTABLEKS                       R34 R14 K44 ["transparency"]
      476 MOVE                             R35 R11
      477 CALL                             R32 3 1
      478 SETTABLEKS                       R32 R31 K37 ["textStyle"]
      480 LOADN                            R32 4
      481 SETTABLEKS                       R32 R31 K38 ["LayoutOrder"]
      483 CALL                             R29 2 1
      484 JUMP                             ; [+1]
      485 LOADNIL                          R29
      486 SETTABLEKS                       R29 R28 K66 ["Description"]
      488 CALL                             R25 3 1
      489 SETTABLEKS                       R25 R24 K59 ["ItemInner"]
      491 CALL                             R21 3 -1
      492 RETURN                           R21 -1

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
