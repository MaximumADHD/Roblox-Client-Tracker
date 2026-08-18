PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 RETURN                           R1 1
        4 LOADB                            R1 0
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_4]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R3 0
        5 JUMP                             ; [+1]
        6 LOADN                            R3 0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Size"]
        3 GETTABLEKS                       R1 R1 K1 ["Size_400"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["Gap"]
        8 GETTABLEKS                       R2 R2 K3 ["Small"]
       10 ADD                              R0 R1 R2
       11 GETIMPORT                        R1 K6 [UDim2.fromOffset]
       13 MINUS                            R2 R0
       14 LOADN                            R3 0
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 1
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R2 R2 K7 ["map"]
       21 CALL                             R2 2 1
       22 RETURN                           R1 2

PROTO_8:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_8]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["map"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETIMPORT                        R1 K2 [UDim.new]
        3 LOADN                            R2 0
        4 LOADN                            R3 24
        5 CALL                             R1 2 1
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [UDim.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 GETTABLEKS                       R5 R0 K2 ["type"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R5 R0 K3 ["image"]
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R4
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R5
       33 NEWTABLE                         R8 0 1
       35 MOVE                             R9 R5
       36 SETLIST                          R8 R9 1 [1]
       38 CALL                             R6 2 1
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R8 R0 K5 ["showIndeterminateProgressIndicator"]
       42 CALL                             R7 1 1
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 GETUPVAL                         R10 5
       46 CALL                             R10 0 1
       47 JUMPIFNOT                        R10 ; [+27]
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       51 NEWCLOSURE                       R11 P2
       52 CAPTURE                          REF R7
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R7
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 MOVE                             R7 R10
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       63 NEWCLOSURE                       R11 P3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R7
       66 NEWTABLE                         R12 0 2
       68 MOVE                             R13 R2
       69 MOVE                             R14 R7
       70 SETLIST                          R12 R13 2 [1]
       72 CALL                             R10 2 2
       73 MOVE                             R8 R10
       74 MOVE                             R9 R11
       75 GETUPVAL                         R10 3
       76 GETTABLEKS                       R11 R0 K6 ["title"]
       78 CALL                             R10 1 1
       79 GETUPVAL                         R11 4
       80 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       82 NEWCLOSURE                       R12 P4
       83 CAPTURE                          VAL R10
       84 NEWTABLE                         R13 0 1
       86 MOVE                             R14 R10
       87 SETLIST                          R13 R14 1 [1]
       89 CALL                             R11 2 1
       90 GETUPVAL                         R12 3
       91 GETTABLEKS                       R13 R0 K7 ["description"]
       93 CALL                             R12 1 1
       94 GETUPVAL                         R13 4
       95 GETTABLEKS                       R13 R13 K4 ["useMemo"]
       97 NEWCLOSURE                       R14 P5
       98 CAPTURE                          VAL R12
       99 NEWTABLE                         R15 0 1
      101 MOVE                             R16 R12
      102 SETLIST                          R15 R16 1 [1]
      104 CALL                             R13 2 1
      105 GETUPVAL                         R14 6
      106 GETUPVAL                         R15 1
      107 GETTABLEKS                       R15 R15 K8 ["View"]
      109 DUPTABLE                         R16 K14 [{["tag"], ["onAbsoluteSizeChanged"], ["testId"] = "--dialog", ["Size"]}]
      110 NEWTABLE                         R17 2 0
      112 LOADB                            R18 1
      113 SETTABLEKS                       R18 R17 K15 ["component-dialog-view col flex-y-between auto-y bg-surface-200"]
      115 GETUPVAL                         R19 7
      116 NOT                              R18 R19
      117 JUMPIF                           R18 ; [+3]
      118 GETTABLEKS                       R19 R0 K16 ["isContentFullBleed"]
      120 NOT                              R18 R19
      121 SETTABLEKS                       R18 R17 K17 ["gap-small padding-x-large padding-y-medium"]
      123 SETTABLEKS                       R17 R16 K9 ["tag"]
      125 GETTABLEKS                       R17 R0 K10 ["onAbsoluteSizeChanged"]
      127 SETTABLEKS                       R17 R16 K10 ["onAbsoluteSizeChanged"]
      129 GETIMPORT                        R17 K20 [UDim2.fromOffset]
      131 GETTABLEKS                       R19 R0 K22 ["width"]
      133 ORK                              R18 R19 K21 [350]
      134 LOADN                            R19 0
      135 CALL                             R17 2 1
      136 SETTABLEKS                       R17 R16 K13 ["Size"]
      138 DUPTABLE                         R17 K25 [{"IconAndTextRow", "ButtonGroup"}]
      139 GETUPVAL                         R18 6
      140 GETUPVAL                         R19 1
      141 GETTABLEKS                       R19 R19 K8 ["View"]
      143 DUPTABLE                         R20 K27 [{"tag", "LayoutOrder"}]
      144 NEWTABLE                         R21 2 0
      146 LOADB                            R22 1
      147 SETTABLEKS                       R22 R21 K28 ["row flex-x-between items-start gap-medium size-full-0 auto-y"]
      149 GETUPVAL                         R23 7
      150 NOT                              R22 R23
      151 JUMPIF                           R22 ; [+3]
      152 GETTABLEKS                       R23 R0 K16 ["isContentFullBleed"]
      154 NOT                              R22 R23
      155 SETTABLEKS                       R22 R21 K29 ["padding-bottom-medium"]
      157 SETTABLEKS                       R21 R20 K9 ["tag"]
      159 MOVE                             R21 R1
      160 CALL                             R21 0 1
      161 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      163 DUPTABLE                         R21 K33 [{"Image", "Icon", "TextColumn"}]
      164 GETUPVAL                         R22 6
      165 GETUPVAL                         R23 1
      166 GETTABLEKS                       R23 R23 K30 ["Image"]
      168 DUPTABLE                         R24 K36 [{["tag"], ["Image"], ["Visible"], ["Size"], ["LayoutOrder"], ["testId"] = "--dialog-thumbnail"}]
      169 GETUPVAL                         R26 5
      170 CALL                             R26 0 1
      171 JUMPIFNOT                        R26 ; [+2]
      172 LOADK                            R25 K37 ["radius-small size-900-900"]
      173 JUMP                             ; [+1]
      174 LOADNIL                          R25
      175 SETTABLEKS                       R25 R24 K9 ["tag"]
      177 SETTABLEKS                       R4 R24 K30 ["Image"]
      179 SETTABLEKS                       R5 R24 K34 ["Visible"]
      181 GETUPVAL                         R26 5
      182 CALL                             R26 0 1
      183 JUMPIF                           R26 ; [+6]
      184 GETIMPORT                        R25 K20 [UDim2.fromOffset]
      186 LOADN                            R26 36
      187 LOADN                            R27 36
      188 CALL                             R25 2 1
      189 JUMP                             ; [+1]
      190 LOADNIL                          R25
      191 SETTABLEKS                       R25 R24 K13 ["Size"]
      193 MOVE                             R25 R1
      194 CALL                             R25 0 1
      195 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      197 GETUPVAL                         R26 5
      198 CALL                             R26 0 1
      199 JUMPIF                           R26 ; [+15]
      200 DUPTABLE                         R25 K39 [{"UICorner"}]
      201 GETUPVAL                         R26 6
      202 LOADK                            R27 K38 ["UICorner"]
      203 DUPTABLE                         R28 K41 [{"CornerRadius"}]
      204 GETIMPORT                        R29 K44 [UDim.new]
      206 LOADN                            R30 0
      207 LOADN                            R31 4
      208 CALL                             R29 2 1
      209 SETTABLEKS                       R29 R28 K40 ["CornerRadius"]
      211 CALL                             R26 2 1
      212 SETTABLEKS                       R26 R25 K38 ["UICorner"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R25
      216 CALL                             R22 3 1
      217 SETTABLEKS                       R22 R21 K30 ["Image"]
      219 JUMPIFNOT                        R3 ; [+39]
      220 GETUPVAL                         R22 6
      221 GETUPVAL                         R23 1
      222 GETTABLEKS                       R23 R23 K31 ["Icon"]
      224 DUPTABLE                         R24 K50 [{["name"], ["size"], ["style"], ["variant"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-icon"}]
      225 GETTABLEKS                       R25 R3 K51 ["icon"]
      227 SETTABLEKS                       R25 R24 K45 ["name"]
      229 GETUPVAL                         R25 1
      230 GETTABLEKS                       R25 R25 K52 ["Enums"]
      232 GETTABLEKS                       R25 R25 K53 ["IconSize"]
      234 GETTABLEKS                       R25 R25 K54 ["Large"]
      236 SETTABLEKS                       R25 R24 K46 ["size"]
      238 GETTABLEKS                       R25 R3 K55 ["color"]
      240 SETTABLEKS                       R25 R24 K47 ["style"]
      242 GETUPVAL                         R25 1
      243 GETTABLEKS                       R25 R25 K52 ["Enums"]
      245 GETTABLEKS                       R25 R25 K56 ["IconVariant"]
      247 GETTABLEKS                       R25 R25 K57 ["Filled"]
      249 SETTABLEKS                       R25 R24 K48 ["variant"]
      251 SETTABLEKS                       R6 R24 K34 ["Visible"]
      253 MOVE                             R25 R1
      254 CALL                             R25 0 1
      255 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      257 CALL                             R22 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R22
      260 SETTABLEKS                       R22 R21 K31 ["Icon"]
      262 GETUPVAL                         R22 6
      263 GETUPVAL                         R23 1
      264 GETTABLEKS                       R23 R23 K8 ["View"]
      266 DUPTABLE                         R24 K59 [{["tag"] = "col fill gap-medium auto-y", ["LayoutOrder"]}]
      267 MOVE                             R25 R1
      268 CALL                             R25 0 1
      269 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      271 DUPTABLE                         R25 K63 [{"Title", "Description", "Children"}]
      272 GETUPVAL                         R26 6
      273 GETUPVAL                         R27 1
      274 GETTABLEKS                       R27 R27 K64 ["Text"]
      276 DUPTABLE                         R28 K67 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left text-align-y-center", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-title"}]
      277 SETTABLEKS                       R10 R28 K64 ["Text"]
      279 SETTABLEKS                       R11 R28 K34 ["Visible"]
      281 MOVE                             R29 R1
      282 CALL                             R29 0 1
      283 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      285 CALL                             R26 2 1
      286 SETTABLEKS                       R26 R25 K60 ["Title"]
      288 GETUPVAL                         R26 6
      289 GETUPVAL                         R27 1
      290 GETTABLEKS                       R27 R27 K64 ["Text"]
      292 DUPTABLE                         R28 K70 [{["tag"] = "grow size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top", ["Text"], ["Visible"], ["LayoutOrder"], ["testId"] = "--dialog-description"}]
      293 SETTABLEKS                       R12 R28 K64 ["Text"]
      295 SETTABLEKS                       R13 R28 K34 ["Visible"]
      297 MOVE                             R29 R1
      298 CALL                             R29 0 1
      299 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      301 DUPTABLE                         R29 K73 [{"ProgressSpinner", "SpinnerPadding"}]
      302 GETUPVAL                         R30 6
      303 GETUPVAL                         R31 1
      304 GETTABLEKS                       R31 R31 K74 ["Progress"]
      306 DUPTABLE                         R32 K78 [{["shape"], ["size"], ["Visible"], ["Position"], ["testId"] = "--dialog-progress"}]
      307 GETUPVAL                         R33 1
      308 GETTABLEKS                       R33 R33 K52 ["Enums"]
      310 GETTABLEKS                       R33 R33 K79 ["ProgressShape"]
      312 GETTABLEKS                       R33 R33 K80 ["Circle"]
      314 SETTABLEKS                       R33 R32 K75 ["shape"]
      316 GETUPVAL                         R33 1
      317 GETTABLEKS                       R33 R33 K52 ["Enums"]
      319 GETTABLEKS                       R33 R33 K81 ["ProgressSize"]
      321 GETTABLEKS                       R33 R33 K82 ["Small"]
      323 SETTABLEKS                       R33 R32 K46 ["size"]
      325 SETTABLEKS                       R7 R32 K34 ["Visible"]
      327 GETUPVAL                         R34 5
      328 CALL                             R34 0 1
      329 JUMPIFNOT                        R34 ; [+2]
      330 MOVE                             R33 R8
      331 JUMP                             ; [+5]
      332 GETIMPORT                        R33 K20 [UDim2.fromOffset]
      334 LOADN                            R34 -24
      335 LOADN                            R35 1
      336 CALL                             R33 2 1
      337 SETTABLEKS                       R33 R32 K76 ["Position"]
      339 CALL                             R30 2 1
      340 SETTABLEKS                       R30 R29 K71 ["ProgressSpinner"]
      342 GETUPVAL                         R30 6
      343 LOADK                            R31 K83 ["UIPadding"]
      344 DUPTABLE                         R32 K85 [{"PaddingLeft"}]
      345 GETUPVAL                         R34 5
      346 CALL                             R34 0 1
      347 JUMPIFNOT                        R34 ; [+2]
      348 MOVE                             R33 R9
      349 JUMP                             ; [+4]
      350 DUPCLOSURE                       R35 K86 [PROTO_12]
      351 NAMECALL                         R33 R7 K87 ["map"]
      353 CALL                             R33 2 1
      354 SETTABLEKS                       R33 R32 K84 ["PaddingLeft"]
      356 CALL                             R30 2 1
      357 SETTABLEKS                       R30 R29 K72 ["SpinnerPadding"]
      359 CALL                             R26 3 1
      360 SETTABLEKS                       R26 R25 K61 ["Description"]
      362 GETUPVAL                         R27 4
      363 GETTABLEKS                       R27 R27 K62 ["Children"]
      365 GETTABLEKS                       R27 R27 K88 ["count"]
      367 GETTABLEKS                       R28 R0 K89 ["children"]
      369 CALL                             R27 1 1
      370 LOADN                            R28 0
      371 JUMPIFNOTLT                      R28 R27 ; [+29]
      373 GETUPVAL                         R26 6
      374 GETUPVAL                         R27 1
      375 GETTABLEKS                       R27 R27 K8 ["View"]
      377 DUPTABLE                         R28 K91 [{["tag"], ["LayoutOrder"], ["testId"] = "--dialog-children"}]
      378 NEWTABLE                         R29 2 0
      380 LOADB                            R30 1
      381 SETTABLEKS                       R30 R29 K92 ["size-full-0 auto-y col gap-medium"]
      383 GETUPVAL                         R31 7
      384 NOT                              R30 R31
      385 JUMPIF                           R30 ; [+3]
      386 GETTABLEKS                       R31 R0 K16 ["isContentFullBleed"]
      388 NOT                              R30 R31
      389 SETTABLEKS                       R30 R29 K93 ["padding-right-small"]
      391 SETTABLEKS                       R29 R28 K9 ["tag"]
      393 MOVE                             R29 R1
      394 CALL                             R29 0 1
      395 SETTABLEKS                       R29 R28 K26 ["LayoutOrder"]
      397 GETTABLEKS                       R29 R0 K89 ["children"]
      399 CALL                             R26 3 1
      400 JUMP                             ; [+1]
      401 LOADNIL                          R26
      402 SETTABLEKS                       R26 R25 K62 ["Children"]
      404 CALL                             R22 3 1
      405 SETTABLEKS                       R22 R21 K32 ["TextColumn"]
      407 CALL                             R18 3 1
      408 SETTABLEKS                       R18 R17 K23 ["IconAndTextRow"]
      410 GETUPVAL                         R19 7
      411 JUMPIFNOT                        R19 ; [+62]
      412 GETTABLEKS                       R19 R0 K16 ["isContentFullBleed"]
      414 JUMPIFNOT                        R19 ; [+59]
      415 GETUPVAL                         R18 6
      416 GETUPVAL                         R19 1
      417 GETTABLEKS                       R19 R19 K8 ["View"]
      419 DUPTABLE                         R20 K95 [{["LayoutOrder"], ["tag"] = "col size-full-0 auto-y"}]
      420 MOVE                             R21 R1
      421 CALL                             R21 0 1
      422 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      424 DUPTABLE                         R21 K98 [{"Divider", "Padding"}]
      425 GETUPVAL                         R22 6
      426 GETUPVAL                         R23 1
      427 GETTABLEKS                       R23 R23 K96 ["Divider"]
      429 DUPTABLE                         R24 K99 [{"LayoutOrder"}]
      430 MOVE                             R25 R1
      431 CALL                             R25 0 1
      432 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      434 CALL                             R22 2 1
      435 SETTABLEKS                       R22 R21 K96 ["Divider"]
      437 GETUPVAL                         R22 6
      438 GETUPVAL                         R23 1
      439 GETTABLEKS                       R23 R23 K8 ["View"]
      441 DUPTABLE                         R24 K101 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-large padding-y-large"}]
      442 MOVE                             R25 R1
      443 CALL                             R25 0 1
      444 SETTABLEKS                       R25 R24 K26 ["LayoutOrder"]
      446 DUPTABLE                         R25 K103 [{"Actions"}]
      447 GETUPVAL                         R26 6
      448 GETUPVAL                         R27 8
      449 DUPTABLE                         R28 K108 [{"primaryAction", "secondaryAction", "tertiaryAction", "tertiaryActionVariant"}]
      450 GETTABLEKS                       R29 R0 K104 ["primaryAction"]
      452 SETTABLEKS                       R29 R28 K104 ["primaryAction"]
      454 GETTABLEKS                       R29 R0 K105 ["secondaryAction"]
      456 SETTABLEKS                       R29 R28 K105 ["secondaryAction"]
      458 GETTABLEKS                       R29 R0 K106 ["tertiaryAction"]
      460 SETTABLEKS                       R29 R28 K106 ["tertiaryAction"]
      462 GETTABLEKS                       R29 R0 K107 ["tertiaryActionVariant"]
      464 SETTABLEKS                       R29 R28 K107 ["tertiaryActionVariant"]
      466 CALL                             R26 2 1
      467 SETTABLEKS                       R26 R25 K102 ["Actions"]
      469 CALL                             R22 3 1
      470 SETTABLEKS                       R22 R21 K97 ["Padding"]
      472 CALL                             R18 3 1
      473 JUMP                             ; [+28]
      474 GETUPVAL                         R18 6
      475 GETUPVAL                         R19 8
      476 DUPTABLE                         R20 K109 [{"LayoutOrder", "primaryAction", "secondaryAction", "tertiaryAction", "tertiaryActionVariant"}]
      477 MOVE                             R21 R1
      478 CALL                             R21 0 1
      479 SETTABLEKS                       R21 R20 K26 ["LayoutOrder"]
      481 GETTABLEKS                       R21 R0 K104 ["primaryAction"]
      483 SETTABLEKS                       R21 R20 K104 ["primaryAction"]
      485 GETTABLEKS                       R21 R0 K105 ["secondaryAction"]
      487 SETTABLEKS                       R21 R20 K105 ["secondaryAction"]
      489 GETTABLEKS                       R21 R0 K106 ["tertiaryAction"]
      491 SETTABLEKS                       R21 R20 K106 ["tertiaryAction"]
      493 GETUPVAL                         R22 7
      494 JUMPIFNOT                        R22 ; [+3]
      495 GETTABLEKS                       R21 R0 K107 ["tertiaryActionVariant"]
      497 JUMPIF                           R21 ; [+1]
      498 LOADNIL                          R21
      499 SETTABLEKS                       R21 R20 K107 ["tertiaryActionVariant"]
      501 CALL                             R18 2 1
      502 SETTABLEKS                       R18 R17 K24 ["ButtonGroup"]
      504 CALL                             R14 3 -1
      505 CLOSEUPVALS                      R7
      506 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Dialog"]
       15 GETTABLEKS                       R3 R3 K9 ["DialogButtonGroup"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["SharedFlags"]
       42 GETTABLEKS                       R8 R8 K15 ["getFFlagStudioFoundationOpenPlaceDialogFixes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       49 GETTABLEKS                       R9 R9 K17 ["useBindable"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K7 ["Components"]
       56 GETTABLEKS                       R10 R10 K8 ["Dialog"]
       58 GETTABLEKS                       R10 R10 K18 ["useDialogIconProps"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K14 ["SharedFlags"]
       65 GETTABLEKS                       R11 R11 K19 ["getFFlagStudioFoundationDialogDeviceSimFixes"]
       67 CALL                             R10 1 1
       68 CALL                             R10 0 1
       69 GETTABLEKS                       R11 R4 K20 ["Util"]
       71 GETTABLEKS                       R11 R11 K21 ["counter"]
       73 GETTABLEKS                       R12 R5 K22 ["createElement"]
       75 DUPCLOSURE                       R13 K23 [PROTO_13]
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R2
       85 GETTABLEKS                       R14 R5 K24 ["memo"]
       87 MOVE                             R15 R13
       88 CALL                             R14 1 -1
       89 RETURN                           R14 -1
