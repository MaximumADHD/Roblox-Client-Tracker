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
       60 GETTABLEKS                       R11 R10 K12 ["content"]
       62 GETTABLEKS                       R11 R11 K13 ["Color3"]
       64 JUMPIFNOT                        R4 ; [+7]
       65 GETTABLEKS                       R12 R9 K14 ["Color"]
       67 GETTABLEKS                       R12 R12 K15 ["System"]
       69 GETTABLEKS                       R12 R12 K16 ["Contrast"]
       71 JUMP                             ; [+6]
       72 GETTABLEKS                       R12 R9 K14 ["Color"]
       74 GETTABLEKS                       R12 R12 K17 ["Stroke"]
       76 GETTABLEKS                       R12 R12 K18 ["Emphasis"]
       78 GETUPVAL                         R13 7
       79 LOADN                            R14 0
       80 GETUPVAL                         R15 8
       81 GETTABLEKS                       R15 R15 K19 ["DISABLED_TRANSPARENCY"]
       83 CALL                             R13 2 1
       84 GETUPVAL                         R14 9
       85 GETTABLEKS                       R15 R13 K20 ["Default"]
       87 CALL                             R14 1 2
       88 GETUPVAL                         R16 9
       89 GETTABLEKS                       R17 R13 K20 ["Default"]
       91 CALL                             R16 1 2
       92 GETUPVAL                         R18 10
       93 GETTABLEKS                       R18 R18 K21 ["useEffect"]
       95 NEWCLOSURE                       R19 P0
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R13
       99 NEWTABLE                         R20 0 1
      101 GETTABLEKS                       R21 R2 K22 ["isDisabled"]
      103 SETLIST                          R20 R21 1 [1]
      105 CALL                             R18 2 0
      106 GETUPVAL                         R18 10
      107 GETTABLEKS                       R18 R18 K23 ["useCallback"]
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
      136 GETUPVAL                         R19 10
      137 GETTABLEKS                       R19 R19 K28 ["useMemo"]
      139 NEWCLOSURE                       R20 P2
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R9
      142 NEWTABLE                         R21 0 2
      144 MOVE                             R22 R9
      145 GETTABLEKS                       R23 R10 K29 ["container"]
      147 GETTABLEKS                       R23 R23 K30 ["radius"]
      149 SETLIST                          R21 R22 2 [1]
      151 CALL                             R19 2 1
      152 GETUPVAL                         R20 10
      153 GETTABLEKS                       R20 R20 K31 ["createElement"]
      155 GETUPVAL                         R21 11
      156 DUPTABLE                         R22 K41 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 2}]
      157 GETUPVAL                         R23 12
      158 MOVE                             R24 R5
      159 CALL                             R23 1 1
      160 SETTABLEKS                       R23 R22 K32 ["Text"]
      162 GETIMPORT                        R23 K44 [Enum.TextXAlignment.Left]
      164 SETTABLEKS                       R23 R22 K35 ["TextXAlignment"]
      166 GETTABLEKS                       R23 R10 K1 ["label"]
      168 GETTABLEKS                       R23 R23 K37 ["tag"]
      170 SETTABLEKS                       R23 R22 K37 ["tag"]
      172 GETUPVAL                         R23 13
      173 GETTABLEKS                       R24 R16 K45 ["textTransparency"]
      175 GETTABLEKS                       R25 R14 K46 ["transparency"]
      177 MOVE                             R26 R11
      178 CALL                             R23 3 1
      179 SETTABLEKS                       R23 R22 K38 ["textStyle"]
      181 CALL                             R20 2 1
      182 GETUPVAL                         R21 10
      183 GETTABLEKS                       R21 R21 K31 ["createElement"]
      185 GETUPVAL                         R22 14
      186 GETUPVAL                         R23 15
      187 MOVE                             R24 R2
      188 DUPTABLE                         R25 K53 [{"stroke", "Size", "selection", "cursor", "onActivated", "isDisabled", "tag", "ref"}]
      189 DUPTABLE                         R26 K55 [{"Color", "Transparency"}]
      190 GETTABLEKS                       R27 R12 K13 ["Color3"]
      192 SETTABLEKS                       R27 R26 K14 ["Color"]
      194 GETTABLEKS                       R28 R12 K54 ["Transparency"]
      196 GETTABLEKS                       R29 R14 K46 ["transparency"]
      198 NEWCLOSURE                       R32 P3
      199 CAPTURE                          VAL R28
      200 NAMECALL                         R30 R29 K56 ["map"]
      202 CALL                             R30 2 1
      203 MOVE                             R27 R30
      204 SETTABLEKS                       R27 R26 K54 ["Transparency"]
      206 SETTABLEKS                       R26 R25 K47 ["stroke"]
      208 SETTABLEKS                       R8 R25 K48 ["Size"]
      210 DUPTABLE                         R26 K58 [{"Selectable"}]
      211 GETTABLEKS                       R28 R2 K22 ["isDisabled"]
      213 JUMPIFNOT                        R28 ; [+2]
      214 LOADB                            R27 0
      215 JUMP                             ; [+2]
      216 GETTABLEKS                       R27 R3 K57 ["Selectable"]
      218 SETTABLEKS                       R27 R26 K57 ["Selectable"]
      220 SETTABLEKS                       R26 R25 K49 ["selection"]
      222 SETTABLEKS                       R19 R25 K50 ["cursor"]
      224 SETTABLEKS                       R18 R25 K51 ["onActivated"]
      226 GETTABLEKS                       R26 R2 K22 ["isDisabled"]
      228 SETTABLEKS                       R26 R25 K22 ["isDisabled"]
      230 NEWTABLE                         R26 4 0
      232 GETUPVAL                         R28 4
      233 GETTABLEKS                       R28 R28 K7 ["Fill"]
      235 JUMPIFNOTEQ                      R7 R28 ; [+2]
      237 LOADB                            R27 0 +1
      238 LOADB                            R27 1
      239 SETTABLEKS                       R27 R26 K59 ["auto-xy"]
      241 GETUPVAL                         R28 4
      242 GETTABLEKS                       R28 R28 K7 ["Fill"]
      244 JUMPIFEQ                         R7 R28 ; [+2]
      246 LOADB                            R27 0 +1
      247 LOADB                            R27 1
      248 SETTABLEKS                       R27 R26 K60 ["fill auto-y"]
      250 GETTABLEKS                       R27 R10 K29 ["container"]
      252 GETTABLEKS                       R27 R27 K37 ["tag"]
      254 LOADB                            R28 1
      255 SETTABLE                         R28 R26 R27
      256 SETTABLEKS                       R26 R25 K37 ["tag"]
      258 SETTABLEKS                       R1 R25 K52 ["ref"]
      260 CALL                             R23 2 1
      261 DUPTABLE                         R24 K62 [{"ItemInner"}]
      262 GETUPVAL                         R25 10
      263 GETTABLEKS                       R25 R25 K31 ["createElement"]
      265 GETUPVAL                         R26 14
      266 DUPTABLE                         R27 K63 [{"tag", "Size"}]
      267 GETTABLEKS                       R28 R10 K64 ["itemInner"]
      269 GETTABLEKS                       R28 R28 K37 ["tag"]
      271 SETTABLEKS                       R28 R27 K37 ["tag"]
      273 SETTABLEKS                       R8 R27 K48 ["Size"]
      275 DUPTABLE                         R28 K69 [{"IconRow", "Label", "Metadata", "Description"}]
      276 GETUPVAL                         R29 10
      277 GETTABLEKS                       R29 R29 K31 ["createElement"]
      279 GETUPVAL                         R30 14
      280 DUPTABLE                         R31 K72 [{["tag"] = "size-full-0 auto-y row gap-small align-y-center", ["LayoutOrder"] = 1}]
      281 DUPTABLE                         R32 K75 [{"Icon", "Label", "Checkmark"}]
      282 GETTABLEKS                       R34 R2 K76 ["icon"]
      284 JUMPIFNOT                        R34 ; [+26]
      285 GETUPVAL                         R33 10
      286 GETTABLEKS                       R33 R33 K31 ["createElement"]
      288 GETUPVAL                         R34 16
      289 DUPTABLE                         R35 K80 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 0}]
      290 GETTABLEKS                       R36 R2 K76 ["icon"]
      292 SETTABLEKS                       R36 R35 K77 ["name"]
      294 GETTABLEKS                       R36 R10 K76 ["icon"]
      296 GETTABLEKS                       R36 R36 K11 ["size"]
      298 SETTABLEKS                       R36 R35 K11 ["size"]
      300 GETTABLEKS                       R36 R14 K46 ["transparency"]
      302 NEWCLOSURE                       R38 P4
      303 CAPTURE                          VAL R11
      304 NAMECALL                         R36 R36 K56 ["map"]
      306 CALL                             R36 2 1
      307 SETTABLEKS                       R36 R35 K78 ["style"]
      309 CALL                             R33 2 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R33
      312 SETTABLEKS                       R33 R32 K73 ["Icon"]
      314 GETUPVAL                         R34 3
      315 GETTABLEKS                       R34 R34 K4 ["Horizontal"]
      317 JUMPIFNOTEQ                      R6 R34 ; [+3]
      319 MOVE                             R33 R20
      320 JUMP                             ; [+6]
      321 GETUPVAL                         R33 10
      322 GETTABLEKS                       R33 R33 K31 ["createElement"]
      324 GETUPVAL                         R34 14
      325 DUPTABLE                         R35 K82 [{["tag"] = "grow"}]
      326 CALL                             R33 2 1
      327 SETTABLEKS                       R33 R32 K66 ["Label"]
      329 GETUPVAL                         R33 10
      330 GETTABLEKS                       R33 R33 K31 ["createElement"]
      332 GETUPVAL                         R34 16
      333 DUPTABLE                         R35 K85 [{["name"] = "check-large", ["size"], ["style"], ["LayoutOrder"] = 3}]
      334 GETTABLEKS                       R36 R10 K76 ["icon"]
      336 GETTABLEKS                       R36 R36 K11 ["size"]
      338 SETTABLEKS                       R36 R35 K11 ["size"]
      340 GETTABLEKS                       R36 R14 K46 ["transparency"]
      342 NEWCLOSURE                       R38 P5
      343 CAPTURE                          VAL R11
      344 CAPTURE                          VAL R4
      345 NAMECALL                         R36 R36 K56 ["map"]
      347 CALL                             R36 2 1
      348 SETTABLEKS                       R36 R35 K78 ["style"]
      350 CALL                             R33 2 1
      351 SETTABLEKS                       R33 R32 K74 ["Checkmark"]
      353 CALL                             R29 3 1
      354 SETTABLEKS                       R29 R28 K65 ["IconRow"]
      356 GETUPVAL                         R30 3
      357 GETTABLEKS                       R30 R30 K3 ["Vertical"]
      359 JUMPIFNOTEQ                      R6 R30 ; [+3]
      361 MOVE                             R29 R20
      362 JUMP                             ; [+1]
      363 LOADNIL                          R29
      364 SETTABLEKS                       R29 R28 K66 ["Label"]
      366 GETTABLEKS                       R30 R2 K86 ["metadata"]
      368 JUMPIFNOT                        R30 ; [+36]
      369 GETUPVAL                         R29 10
      370 GETTABLEKS                       R29 R29 K31 ["createElement"]
      372 GETUPVAL                         R30 11
      373 DUPTABLE                         R31 K88 [{["Text"], ["TextTruncate"], ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 3}]
      374 GETUPVAL                         R32 12
      375 GETTABLEKS                       R33 R2 K86 ["metadata"]
      377 CALL                             R32 1 1
      378 SETTABLEKS                       R32 R31 K32 ["Text"]
      380 GETIMPORT                        R32 K90 [Enum.TextTruncate.AtEnd]
      382 SETTABLEKS                       R32 R31 K87 ["TextTruncate"]
      384 GETIMPORT                        R32 K44 [Enum.TextXAlignment.Left]
      386 SETTABLEKS                       R32 R31 K35 ["TextXAlignment"]
      388 GETTABLEKS                       R32 R10 K86 ["metadata"]
      390 GETTABLEKS                       R32 R32 K37 ["tag"]
      392 SETTABLEKS                       R32 R31 K37 ["tag"]
      394 GETUPVAL                         R32 13
      395 GETTABLEKS                       R33 R16 K45 ["textTransparency"]
      397 GETTABLEKS                       R34 R14 K46 ["transparency"]
      399 MOVE                             R35 R11
      400 CALL                             R32 3 1
      401 SETTABLEKS                       R32 R31 K38 ["textStyle"]
      403 CALL                             R29 2 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R29
      406 SETTABLEKS                       R29 R28 K67 ["Metadata"]
      408 GETTABLEKS                       R30 R2 K91 ["description"]
      410 JUMPIFNOT                        R30 ; [+32]
      411 GETUPVAL                         R29 10
      412 GETTABLEKS                       R29 R29 K31 ["createElement"]
      414 GETUPVAL                         R30 11
      415 DUPTABLE                         R31 K93 [{["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True, ["tag"], ["textStyle"], ["LayoutOrder"] = 4}]
      416 GETUPVAL                         R32 12
      417 GETTABLEKS                       R33 R2 K91 ["description"]
      419 CALL                             R32 1 1
      420 SETTABLEKS                       R32 R31 K32 ["Text"]
      422 GETIMPORT                        R32 K44 [Enum.TextXAlignment.Left]
      424 SETTABLEKS                       R32 R31 K35 ["TextXAlignment"]
      426 GETTABLEKS                       R32 R10 K91 ["description"]
      428 GETTABLEKS                       R32 R32 K37 ["tag"]
      430 SETTABLEKS                       R32 R31 K37 ["tag"]
      432 GETUPVAL                         R32 13
      433 GETTABLEKS                       R33 R16 K45 ["textTransparency"]
      435 GETTABLEKS                       R34 R14 K46 ["transparency"]
      437 MOVE                             R35 R11
      438 CALL                             R32 3 1
      439 SETTABLEKS                       R32 R31 K38 ["textStyle"]
      441 CALL                             R29 2 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R29
      444 SETTABLEKS                       R29 R28 K68 ["Description"]
      446 CALL                             R25 3 1
      447 SETTABLEKS                       R25 R24 K61 ["ItemInner"]
      449 CALL                             R21 3 -1
      450 RETURN                           R21 -1

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
