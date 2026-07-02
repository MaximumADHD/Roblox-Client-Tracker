PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["icon"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setHasLeading"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["setHasLeading"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["hoverOpenAtDepth"]
       10 JUMPIFNOT                        R0 ; [+47]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+45]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["hoverOpenAtDepth"]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K2 ["id"]
       20 LOADB                            R3 1
       21 CALL                             R0 3 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 5
       24 GETTABLEKS                       R0 R0 K3 ["FoundationBaseMenuSubmenuSupport"]
       26 JUMPIFNOT                        R0 ; [+8]
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K4 ["hoverReset"]
       30 JUMPIFNOT                        R0 ; [+4]
       31 GETUPVAL                         R0 2
       32 GETTABLEKS                       R0 R0 K4 ["hoverReset"]
       34 CALL                             R0 0 0
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K5 ["onActivated"]
       38 JUMPIFNOT                        R1 ; [+4]
       39 GETUPVAL                         R0 1
       40 GETTABLEKS                       R0 R0 K5 ["onActivated"]
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R0 2
       44 GETTABLEKS                       R0 R0 K5 ["onActivated"]
       46 JUMPIF                           R0 ; [+6]
       47 GETUPVAL                         R1 6
       48 LOADK                            R3 K6 ["Menu should have either onActivated on itself or on all of its children"]
       49 NAMECALL                         R1 R1 K7 ["warning"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0
       53 MOVE                             R1 R0
       54 GETUPVAL                         R2 1
       55 GETTABLEKS                       R2 R2 K2 ["id"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hoverReset"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["hoverReset"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Radius"]
        7 GETTABLEKS                       R3 R3 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K9 ["Size"]
       15 GETTABLEKS                       R1 R1 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["Migration"]
        3 GETTABLEKS                       R1 R2 K0 ["uiblox"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["icon"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R3 K1 ["hasLeading"]
       11 GETUPVAL                         R5 4
       12 CALL                             R5 0 1
       13 GETTABLEKS                       R6 R2 K2 ["size"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R3 K2 ["size"]
       18 GETTABLEKS                       R7 R3 K3 ["depth"]
       20 GETUPVAL                         R8 5
       21 GETTABLEKS                       R8 R8 K4 ["FoundationBaseMenuSubmenuSupport"]
       23 JUMPIFNOT                        R8 ; [+6]
       24 GETTABLEKS                       R9 R2 K5 ["children"]
       26 JUMPIFNOTEQKNIL                  R9 ; [+2]
       28 LOADB                            R8 0 +1
       29 LOADB                            R8 1
       30 MOVE                             R9 R8
       31 JUMPIFNOT                        R9 ; [+9]
       32 GETTABLEKS                       R11 R3 K6 ["hoverOpenPath"]
       34 GETTABLE                         R10 R11 R7
       35 GETTABLEKS                       R11 R2 K7 ["id"]
       37 JUMPIFEQ                         R10 R11 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 GETUPVAL                         R10 6
       42 MOVE                             R11 R5
       43 MOVE                             R12 R6
       44 JUMPIFNOT                        R8 ; [+2]
       45 LOADB                            R13 0
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R13 R2 K8 ["isChecked"]
       49 CALL                             R10 3 1
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R11 R11 K9 ["useRef"]
       53 LOADNIL                          R12
       54 CALL                             R11 1 1
       55 LOADNIL                          R12
       56 LOADNIL                          R13
       57 LOADNIL                          R14
       58 GETUPVAL                         R15 5
       59 GETTABLEKS                       R15 R15 K4 ["FoundationBaseMenuSubmenuSupport"]
       61 JUMPIFNOT                        R15 ; [+16]
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R15 R15 K10 ["useState"]
       65 LOADB                            R16 0
       66 CALL                             R15 1 2
       67 MOVE                             R12 R15
       68 MOVE                             R13 R16
       69 GETUPVAL                         R15 2
       70 GETTABLEKS                       R15 R15 K11 ["useCallback"]
       72 NEWCLOSURE                       R16 P0
       73 CAPTURE                          REF R13
       74 NEWTABLE                         R17 0 0
       76 CALL                             R15 2 1
       77 MOVE                             R14 R15
       78 GETUPVAL                         R15 2
       79 GETTABLEKS                       R15 R15 K12 ["useEffect"]
       81 NEWCLOSURE                       R16 P1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 NEWTABLE                         R17 0 2
       86 GETTABLEKS                       R18 R2 K13 ["icon"]
       88 GETTABLEKS                       R19 R3 K14 ["setHasLeading"]
       90 SETLIST                          R17 R18 2 [1]
       92 CALL                             R15 2 0
       93 GETUPVAL                         R15 5
       94 GETTABLEKS                       R15 R15 K4 ["FoundationBaseMenuSubmenuSupport"]
       96 JUMPIFNOT                        R15 ; [+25]
       97 GETUPVAL                         R15 7
       98 DUPTABLE                         R16 K20 [{"itemRef", "id", "depth", "isSubmenu", "isDisabled", "hoverOpenAtDepth", "hoverCloseAtDepth"}]
       99 SETTABLEKS                       R11 R16 K15 ["itemRef"]
      101 GETTABLEKS                       R17 R2 K7 ["id"]
      103 SETTABLEKS                       R17 R16 K7 ["id"]
      105 SETTABLEKS                       R7 R16 K3 ["depth"]
      107 SETTABLEKS                       R8 R16 K16 ["isSubmenu"]
      109 GETTABLEKS                       R17 R2 K17 ["isDisabled"]
      111 SETTABLEKS                       R17 R16 K17 ["isDisabled"]
      113 GETTABLEKS                       R17 R3 K18 ["hoverOpenAtDepth"]
      115 SETTABLEKS                       R17 R16 K18 ["hoverOpenAtDepth"]
      117 GETTABLEKS                       R17 R3 K19 ["hoverCloseAtDepth"]
      119 SETTABLEKS                       R17 R16 K19 ["hoverCloseAtDepth"]
      121 CALL                             R15 1 0
      122 GETUPVAL                         R15 2
      123 GETTABLEKS                       R15 R15 K11 ["useCallback"]
      125 NEWCLOSURE                       R16 P2
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R7
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          UPVAL U8
      133 NEWTABLE                         R17 0 9
      135 MOVE                             R18 R8
      136 GETTABLEKS                       R19 R2 K17 ["isDisabled"]
      138 MOVE                             R20 R9
      139 MOVE                             R21 R7
      140 GETTABLEKS                       R22 R2 K7 ["id"]
      142 GETTABLEKS                       R23 R2 K21 ["onActivated"]
      144 GETTABLEKS                       R24 R3 K21 ["onActivated"]
      146 GETTABLEKS                       R25 R3 K18 ["hoverOpenAtDepth"]
      148 GETTABLEKS                       R26 R3 K22 ["hoverReset"]
      150 SETLIST                          R17 R18 9 [1]
      152 CALL                             R15 2 1
      153 LOADNIL                          R16
      154 GETUPVAL                         R17 5
      155 GETTABLEKS                       R17 R17 K4 ["FoundationBaseMenuSubmenuSupport"]
      157 JUMPIFNOT                        R17 ; [+13]
      158 GETUPVAL                         R17 2
      159 GETTABLEKS                       R17 R17 K11 ["useCallback"]
      161 NEWCLOSURE                       R18 P3
      162 CAPTURE                          VAL R3
      163 NEWTABLE                         R19 0 1
      165 GETTABLEKS                       R20 R3 K22 ["hoverReset"]
      167 SETLIST                          R19 R20 1 [1]
      169 CALL                             R17 2 1
      170 MOVE                             R16 R17
      171 GETUPVAL                         R17 2
      172 GETTABLEKS                       R17 R17 K23 ["useMemo"]
      174 NEWCLOSURE                       R18 P4
      175 CAPTURE                          VAL R5
      176 NEWTABLE                         R19 0 1
      178 MOVE                             R20 R5
      179 SETLIST                          R19 R20 1 [1]
      181 CALL                             R17 2 1
      182 GETUPVAL                         R18 2
      183 GETTABLEKS                       R18 R18 K23 ["useMemo"]
      185 NEWCLOSURE                       R19 P5
      186 CAPTURE                          UPVAL U9
      187 CAPTURE                          VAL R2
      188 NEWTABLE                         R20 0 1
      190 GETTABLEKS                       R21 R2 K13 ["icon"]
      192 SETLIST                          R20 R21 1 [1]
      194 CALL                             R18 2 1
      195 GETUPVAL                         R19 10
      196 MOVE                             R20 R11
      197 MOVE                             R21 R1
      198 CALL                             R19 2 1
      199 GETUPVAL                         R20 2
      200 GETTABLEKS                       R20 R20 K24 ["createElement"]
      202 GETUPVAL                         R21 11
      203 GETUPVAL                         R22 12
      204 MOVE                             R23 R2
      205 DUPTABLE                         R24 K30 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      206 GETTABLEKS                       R26 R2 K17 ["isDisabled"]
      208 JUMPIFNOT                        R26 ; [+4]
      209 GETUPVAL                         R25 13
      210 GETTABLEKS                       R25 R25 K31 ["DISABLED_TRANSPARENCY"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R25
      214 SETTABLEKS                       R25 R24 K25 ["GroupTransparency"]
      216 GETTABLEKS                       R25 R2 K17 ["isDisabled"]
      218 SETTABLEKS                       R25 R24 K17 ["isDisabled"]
      220 SETTABLEKS                       R15 R24 K21 ["onActivated"]
      222 DUPTABLE                         R25 K33 [{"Selectable"}]
      223 GETTABLEKS                       R27 R2 K17 ["isDisabled"]
      225 NOT                              R26 R27
      226 SETTABLEKS                       R26 R25 K32 ["Selectable"]
      228 SETTABLEKS                       R25 R24 K26 ["selection"]
      230 SETTABLEKS                       R17 R24 K27 ["cursor"]
      232 GETTABLEKS                       R25 R10 K34 ["container"]
      234 GETTABLEKS                       R25 R25 K28 ["tag"]
      236 SETTABLEKS                       R25 R24 K28 ["tag"]
      238 GETUPVAL                         R26 5
      239 GETTABLEKS                       R26 R26 K4 ["FoundationBaseMenuSubmenuSupport"]
      241 JUMPIFNOT                        R26 ; [+2]
      242 MOVE                             R25 R19
      243 JUMP                             ; [+1]
      244 MOVE                             R25 R1
      245 SETTABLEKS                       R25 R24 K29 ["ref"]
      247 CALL                             R22 2 1
      248 DUPTABLE                         R23 K39 [{"Icon", "Text", "Chevron", "Check"}]
      249 GETTABLEKS                       R25 R2 K13 ["icon"]
      251 JUMPIF                           R25 ; [+1]
      252 JUMPIFNOT                        R4 ; [+72]
      253 GETTABLEKS                       R25 R2 K13 ["icon"]
      255 JUMPIFNOT                        R25 ; [+52]
      256 GETUPVAL                         R25 14
      257 GETTABLEKS                       R26 R2 K13 ["icon"]
      259 CALL                             R25 1 1
      260 JUMPIFNOT                        R25 ; [+47]
      261 GETUPVAL                         R24 2
      262 GETTABLEKS                       R24 R24 K24 ["createElement"]
      264 GETUPVAL                         R25 11
      265 DUPTABLE                         R26 K42 [{["LayoutOrder"] = 1, ["tag"]}]
      266 LOADK                            R28 K43 ["align-x-center align-y-center %*"]
      267 GETTABLEKS                       R30 R10 K13 ["icon"]
      269 GETTABLEKS                       R30 R30 K28 ["tag"]
      271 NAMECALL                         R28 R28 K44 ["format"]
      273 CALL                             R28 2 1
      274 MOVE                             R27 R28
      275 SETTABLEKS                       R27 R26 K28 ["tag"]
      277 DUPTABLE                         R27 K45 [{"Icon"}]
      278 GETUPVAL                         R28 2
      279 GETTABLEKS                       R28 R28 K24 ["createElement"]
      281 GETUPVAL                         R29 15
      282 DUPTABLE                         R30 K48 [{"name", "style", "size"}]
      283 JUMPIFNOT                        R18 ; [+3]
      284 GETTABLEKS                       R31 R18 K46 ["name"]
      286 JUMP                             ; [+2]
      287 GETTABLEKS                       R31 R2 K13 ["icon"]
      289 SETTABLEKS                       R31 R30 K46 ["name"]
      291 GETTABLEKS                       R31 R10 K13 ["icon"]
      293 GETTABLEKS                       R31 R31 K47 ["style"]
      295 SETTABLEKS                       R31 R30 K47 ["style"]
      297 GETTABLEKS                       R31 R10 K13 ["icon"]
      299 GETTABLEKS                       R31 R31 K2 ["size"]
      301 SETTABLEKS                       R31 R30 K2 ["size"]
      303 CALL                             R28 2 1
      304 SETTABLEKS                       R28 R27 K35 ["Icon"]
      306 CALL                             R24 3 1
      307 JUMP                             ; [+18]
      308 GETUPVAL                         R24 2
      309 GETTABLEKS                       R24 R24 K24 ["createElement"]
      311 GETUPVAL                         R25 16
      312 DUPTABLE                         R26 K50 [{["LayoutOrder"] = 1, ["Image"], ["tag"]}]
      313 GETTABLEKS                       R27 R2 K13 ["icon"]
      315 SETTABLEKS                       R27 R26 K49 ["Image"]
      317 GETTABLEKS                       R27 R10 K13 ["icon"]
      319 GETTABLEKS                       R27 R27 K28 ["tag"]
      321 SETTABLEKS                       R27 R26 K28 ["tag"]
      323 CALL                             R24 2 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R24
      326 SETTABLEKS                       R24 R23 K35 ["Icon"]
      328 GETUPVAL                         R24 2
      329 GETTABLEKS                       R24 R24 K24 ["createElement"]
      331 GETUPVAL                         R25 17
      332 DUPTABLE                         R26 K52 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
      333 GETTABLEKS                       R27 R2 K53 ["text"]
      335 SETTABLEKS                       R27 R26 K36 ["Text"]
      337 GETTABLEKS                       R27 R10 K53 ["text"]
      339 GETTABLEKS                       R27 R27 K28 ["tag"]
      341 SETTABLEKS                       R27 R26 K28 ["tag"]
      343 CALL                             R24 2 1
      344 SETTABLEKS                       R24 R23 K36 ["Text"]
      346 JUMPIFNOT                        R8 ; [+35]
      347 GETUPVAL                         R24 2
      348 GETTABLEKS                       R24 R24 K24 ["createElement"]
      350 GETUPVAL                         R25 15
      351 DUPTABLE                         R26 K56 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      352 GETUPVAL                         R27 9
      353 GETTABLEKS                       R27 R27 K35 ["Icon"]
      355 GETTABLEKS                       R27 R27 K57 ["ChevronSmallRight"]
      357 SETTABLEKS                       R27 R26 K46 ["name"]
      359 GETTABLEKS                       R27 R10 K58 ["check"]
      361 GETTABLEKS                       R27 R27 K47 ["style"]
      363 SETTABLEKS                       R27 R26 K47 ["style"]
      365 GETTABLEKS                       R27 R10 K59 ["chevron"]
      367 GETTABLEKS                       R27 R27 K2 ["size"]
      369 SETTABLEKS                       R27 R26 K2 ["size"]
      371 LOADK                            R28 K60 ["%*--chevron"]
      372 GETTABLEKS                       R30 R2 K55 ["testId"]
      374 NAMECALL                         R28 R28 K44 ["format"]
      376 CALL                             R28 2 1
      377 MOVE                             R27 R28
      378 SETTABLEKS                       R27 R26 K55 ["testId"]
      380 CALL                             R24 2 1
      381 JUMP                             ; [+1]
      382 LOADNIL                          R24
      383 SETTABLEKS                       R24 R23 K37 ["Chevron"]
      385 JUMPIF                           R8 ; [+38]
      386 GETTABLEKS                       R25 R2 K8 ["isChecked"]
      388 JUMPIFNOT                        R25 ; [+35]
      389 GETUPVAL                         R24 2
      390 GETTABLEKS                       R24 R24 K24 ["createElement"]
      392 GETUPVAL                         R25 15
      393 DUPTABLE                         R26 K56 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      394 GETUPVAL                         R27 9
      395 GETTABLEKS                       R27 R27 K35 ["Icon"]
      397 GETTABLEKS                       R27 R27 K38 ["Check"]
      399 SETTABLEKS                       R27 R26 K46 ["name"]
      401 GETTABLEKS                       R27 R10 K58 ["check"]
      403 GETTABLEKS                       R27 R27 K47 ["style"]
      405 SETTABLEKS                       R27 R26 K47 ["style"]
      407 GETTABLEKS                       R27 R10 K58 ["check"]
      409 GETTABLEKS                       R27 R27 K2 ["size"]
      411 SETTABLEKS                       R27 R26 K2 ["size"]
      413 LOADK                            R28 K61 ["%*--checkmark"]
      414 GETTABLEKS                       R30 R2 K55 ["testId"]
      416 NAMECALL                         R28 R28 K44 ["format"]
      418 CALL                             R28 2 1
      419 MOVE                             R27 R28
      420 SETTABLEKS                       R27 R26 K55 ["testId"]
      422 CALL                             R24 2 1
      423 JUMP                             ; [+1]
      424 LOADNIL                          R24
      425 SETTABLEKS                       R24 R23 K38 ["Check"]
      427 CALL                             R20 3 1
      428 JUMPIF                           R8 ; [+2]
      429 CLOSEUPVALS                      R13
      430 RETURN                           R20 1
      431 GETTABLEKS                       R21 R5 K62 ["Stroke"]
      433 GETTABLEKS                       R21 R21 K63 ["Standard"]
      435 GETTABLEKS                       R22 R10 K64 ["groupPadding"]
      437 GETTABLEKS                       R22 R22 K2 ["size"]
      439 GETUPVAL                         R23 2
      440 GETTABLEKS                       R23 R23 K24 ["createElement"]
      442 GETUPVAL                         R24 2
      443 GETTABLEKS                       R24 R24 K65 ["Fragment"]
      445 LOADNIL                          R25
      446 DUPTABLE                         R26 K68 [{"Item", "Submenu"}]
      447 SETTABLEKS                       R20 R26 K66 ["Item"]
      449 GETUPVAL                         R27 2
      450 GETTABLEKS                       R27 R27 K24 ["createElement"]
      452 GETUPVAL                         R28 18
      453 GETTABLEKS                       R28 R28 K69 ["Root"]
      455 DUPTABLE                         R29 K71 [{"isOpen", "testId"}]
      456 SETTABLEKS                       R9 R29 K70 ["isOpen"]
      458 LOADK                            R31 K72 ["%*--submenu"]
      459 GETTABLEKS                       R33 R2 K55 ["testId"]
      461 NAMECALL                         R31 R31 K44 ["format"]
      463 CALL                             R31 2 1
      464 MOVE                             R30 R31
      465 SETTABLEKS                       R30 R29 K55 ["testId"]
      467 DUPTABLE                         R30 K75 [{"Anchor", "Content"}]
      468 GETUPVAL                         R31 2
      469 GETTABLEKS                       R31 R31 K24 ["createElement"]
      471 GETUPVAL                         R32 18
      472 GETTABLEKS                       R32 R32 K73 ["Anchor"]
      474 DUPTABLE                         R33 K77 [{"anchorRef"}]
      475 SETTABLEKS                       R11 R33 K76 ["anchorRef"]
      477 CALL                             R31 2 1
      478 SETTABLEKS                       R31 R30 K73 ["Anchor"]
      480 GETUPVAL                         R31 2
      481 GETTABLEKS                       R31 R31 K24 ["createElement"]
      483 GETUPVAL                         R32 18
      484 GETTABLEKS                       R32 R32 K74 ["Content"]
      486 DUPTABLE                         R33 K85 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      487 DUPTABLE                         R34 K88 [{"position", "offset"}]
      488 GETUPVAL                         R35 19
      489 GETTABLEKS                       R35 R35 K89 ["Right"]
      491 SETTABLEKS                       R35 R34 K86 ["position"]
      493 DIVK                             R36 R22 K51 [2]
      494 ADD                              R35 R36 R21
      495 SETTABLEKS                       R35 R34 K87 ["offset"]
      497 SETTABLEKS                       R34 R33 K78 ["side"]
      499 DUPTABLE                         R34 K88 [{"position", "offset"}]
      500 GETUPVAL                         R35 20
      501 GETTABLEKS                       R35 R35 K90 ["Start"]
      503 SETTABLEKS                       R35 R34 K86 ["position"]
      505 MINUS                            R35 R22
      506 SETTABLEKS                       R35 R34 K87 ["offset"]
      508 SETTABLEKS                       R34 R33 K79 ["align"]
      510 SETTABLEKS                       R16 R33 K82 ["onPressedOutside"]
      512 GETTABLEKS                       R34 R5 K91 ["Color"]
      514 GETTABLEKS                       R34 R34 K92 ["Surface"]
      516 GETTABLEKS                       R34 R34 K93 ["Surface_100"]
      518 SETTABLEKS                       R34 R33 K83 ["backgroundStyle"]
      520 GETUPVAL                         R34 21
      521 GETTABLEKS                       R34 R34 K94 ["Medium"]
      523 SETTABLEKS                       R34 R33 K84 ["radius"]
      525 GETUPVAL                         R34 2
      526 GETTABLEKS                       R34 R34 K24 ["createElement"]
      528 GETUPVAL                         R35 11
      529 DUPTABLE                         R36 K96 [{["tag"] = "col auto-xy stroke-standard stroke-default radius-medium"}]
      530 GETUPVAL                         R37 2
      531 GETTABLEKS                       R37 R37 K24 ["createElement"]
      533 GETUPVAL                         R38 3
      534 GETTABLEKS                       R38 R38 K97 ["Provider"]
      536 DUPTABLE                         R39 K99 [{"value"}]
      537 DUPTABLE                         R40 K100 [{"onActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      538 GETTABLEKS                       R41 R3 K21 ["onActivated"]
      540 SETTABLEKS                       R41 R40 K21 ["onActivated"]
      542 SETTABLEKS                       R6 R40 K2 ["size"]
      544 SETTABLEKS                       R12 R40 K1 ["hasLeading"]
      546 SETTABLEKS                       R14 R40 K14 ["setHasLeading"]
      548 GETTABLEKS                       R41 R3 K6 ["hoverOpenPath"]
      550 SETTABLEKS                       R41 R40 K6 ["hoverOpenPath"]
      552 GETTABLEKS                       R41 R3 K18 ["hoverOpenAtDepth"]
      554 SETTABLEKS                       R41 R40 K18 ["hoverOpenAtDepth"]
      556 GETTABLEKS                       R41 R3 K19 ["hoverCloseAtDepth"]
      558 SETTABLEKS                       R41 R40 K19 ["hoverCloseAtDepth"]
      560 GETTABLEKS                       R41 R3 K22 ["hoverReset"]
      562 SETTABLEKS                       R41 R40 K22 ["hoverReset"]
      564 ADDK                             R41 R7 K41 [1]
      565 SETTABLEKS                       R41 R40 K3 ["depth"]
      567 SETTABLEKS                       R40 R39 K98 ["value"]
      569 GETTABLEKS                       R40 R2 K5 ["children"]
      571 CALL                             R37 3 -1
      572 CALL                             R34 -1 -1
      573 CALL                             R31 -1 1
      574 SETTABLEKS                       R31 R30 K74 ["Content"]
      576 CALL                             R27 3 1
      577 SETTABLEKS                       R27 R26 K67 ["Submenu"]
      579 CALL                             R23 3 -1
      580 CLOSEUPVALS                      R13
      581 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["iconMigrationUtils"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K11 ["isBuilderOrMigratedIcon"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Utility"]
       32 GETTABLEKS                       R7 R7 K12 ["Logger"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Constants"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K14 ["Components"]
       44 GETTABLEKS                       R9 R9 K15 ["Icon"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Components"]
       51 GETTABLEKS                       R10 R10 K16 ["Image"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Components"]
       58 GETTABLEKS                       R11 R11 K17 ["Popover"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R12 R0 K14 ["Components"]
       65 GETTABLEKS                       R12 R12 K18 ["Text"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R0 K14 ["Components"]
       72 GETTABLEKS                       R13 R13 K19 ["Types"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R0 K14 ["Components"]
       79 GETTABLEKS                       R14 R14 K20 ["View"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K21 ["Providers"]
       86 GETTABLEKS                       R15 R15 K22 ["Style"]
       88 GETTABLEKS                       R15 R15 K23 ["useTokens"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R16 R0 K9 ["Utility"]
       95 GETTABLEKS                       R16 R16 K24 ["withCommonProps"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K9 ["Utility"]
      102 GETTABLEKS                       R17 R17 K25 ["withDefaults"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R1 K26 ["ReactUtils"]
      109 CALL                             R17 1 1
      110 GETTABLEKS                       R18 R17 K27 ["useComposedRef"]
      112 GETIMPORT                        R19 K6 [require]
      114 GETTABLEKS                       R20 R0 K28 ["Enums"]
      116 GETTABLEKS                       R20 R20 K29 ["InputSize"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K6 [require]
      121 GETTABLEKS                       R21 R0 K28 ["Enums"]
      123 GETTABLEKS                       R21 R21 K30 ["PopoverAlign"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K6 [require]
      128 GETTABLEKS                       R22 R0 K28 ["Enums"]
      130 GETTABLEKS                       R22 R22 K31 ["PopoverSide"]
      132 CALL                             R21 1 1
      133 GETIMPORT                        R22 K6 [require]
      135 GETTABLEKS                       R23 R0 K28 ["Enums"]
      137 GETTABLEKS                       R23 R23 K32 ["Radius"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K6 [require]
      142 GETTABLEKS                       R24 R0 K9 ["Utility"]
      144 GETTABLEKS                       R24 R24 K33 ["Flags"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K6 [require]
      149 GETIMPORT                        R25 K1 [script]
      151 GETTABLEKS                       R25 R25 K4 ["Parent"]
      153 GETTABLEKS                       R25 R25 K34 ["BaseMenuContext"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K6 [require]
      158 GETIMPORT                        R26 K1 [script]
      160 GETTABLEKS                       R26 R26 K4 ["Parent"]
      162 GETTABLEKS                       R26 R26 K35 ["useBaseMenuItemVariants"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K6 [require]
      167 GETIMPORT                        R27 K1 [script]
      169 GETTABLEKS                       R27 R27 K4 ["Parent"]
      171 GETTABLEKS                       R27 R27 K36 ["useMenuItemHover"]
      173 CALL                             R26 1 1
      174 DUPTABLE                         R27 K39 [{["isChecked"] = False}]
      175 DUPCLOSURE                       R28 K40 [PROTO_6]
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R27
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R11
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R22
      198 GETTABLEKS                       R29 R3 K41 ["memo"]
      200 GETTABLEKS                       R30 R3 K42 ["forwardRef"]
      202 MOVE                             R31 R28
      203 CALL                             R30 1 -1
      204 CALL                             R29 -1 -1
      205 RETURN                           R29 -1
