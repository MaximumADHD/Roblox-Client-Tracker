PROTO_0:
        0 GETIMPORT                        R0 K1 [Enum]
        2 GETTABLEKS                       R0 R0 K2 ["InputSink"]
        4 GETTABLEKS                       R0 R0 K3 ["All"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationGuiObjectInputSinkProperty"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K2 [pcall]
        8 GETIMPORT                        R1 K4 [game]
       10 GETTABLEKS                       R1 R1 K5 ["GetEngineFeature"]
       12 GETIMPORT                        R2 K4 [game]
       14 LOADK                            R3 K6 ["GuiObjectInputSink"]
       15 CALL                             R0 3 2
       16 JUMPIFNOT                        R0 ; [+1]
       17 JUMPIF                           R1 ; [+2]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K2 [pcall]
       22 DUPCLOSURE                       R3 K7 [PROTO_0]
       23 CALL                             R2 1 2
       24 JUMPIFNOT                        R2 ; [+2]
       25 MOVE                             R4 R3
       26 RETURN                           R4 1
       27 LOADNIL                          R4
       28 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["hoverOpenAtDepth"]
       10 JUMPIFNOT                        R0 ; [+55]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+53]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K1 ["hoverOpenAtDepth"]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K2 ["id"]
       20 LOADB                            R3 1
       21 CALL                             R0 3 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R0 2
       24 GETTABLEKS                       R0 R0 K3 ["hoverReset"]
       26 JUMPIFNOT                        R0 ; [+4]
       27 GETUPVAL                         R0 2
       28 GETTABLEKS                       R0 R0 K3 ["hoverReset"]
       30 CALL                             R0 0 0
       31 GETUPVAL                         R1 1
       32 GETTABLEKS                       R1 R1 K4 ["onActivated"]
       34 JUMPIFNOT                        R1 ; [+4]
       35 GETUPVAL                         R0 1
       36 GETTABLEKS                       R0 R0 K4 ["onActivated"]
       38 JUMP                             ; [+3]
       39 GETUPVAL                         R0 2
       40 GETTABLEKS                       R0 R0 K4 ["onActivated"]
       42 JUMPIF                           R0 ; [+6]
       43 GETUPVAL                         R1 5
       44 LOADK                            R3 K5 ["Menu should have either onActivated on itself or on all of its children"]
       45 NAMECALL                         R1 R1 K6 ["warning"]
       47 CALL                             R1 2 0
       48 JUMP                             ; [+5]
       49 MOVE                             R1 R0
       50 GETUPVAL                         R2 1
       51 GETTABLEKS                       R2 R2 K2 ["id"]
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 4
       55 LOADN                            R2 1
       56 JUMPIFNOTLT                      R2 R1 ; [+9]
       58 GETUPVAL                         R1 2
       59 GETTABLEKS                       R1 R1 K7 ["onNestedLeafActivated"]
       61 JUMPIFNOT                        R1 ; [+4]
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K7 ["onNestedLeafActivated"]
       65 CALL                             R1 0 0
       66 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hoverReset"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["hoverReset"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["Migration"]
        3 GETTABLEKS                       R1 R2 K0 ["uiblox"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["icon"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_8:
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
       20 GETTABLEKS                       R9 R2 K4 ["children"]
       22 JUMPIFNOTEQKNIL                  R9 ; [+2]
       24 LOADB                            R8 0 +1
       25 LOADB                            R8 1
       26 MOVE                             R9 R8
       27 JUMPIFNOT                        R9 ; [+9]
       28 GETTABLEKS                       R11 R3 K5 ["hoverOpenPath"]
       30 GETTABLE                         R10 R11 R7
       31 GETTABLEKS                       R11 R2 K6 ["id"]
       33 JUMPIFEQ                         R10 R11 ; [+2]
       35 LOADB                            R9 0 +1
       36 LOADB                            R9 1
       37 GETUPVAL                         R10 5
       38 MOVE                             R11 R5
       39 MOVE                             R12 R6
       40 JUMPIFNOT                        R8 ; [+2]
       41 LOADB                            R13 0
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R13 R2 K7 ["isChecked"]
       45 CALL                             R10 3 1
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R11 R11 K8 ["useRef"]
       49 LOADNIL                          R12
       50 CALL                             R11 1 1
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R12 R12 K9 ["useState"]
       54 LOADB                            R13 0
       55 CALL                             R12 1 2
       56 GETUPVAL                         R14 2
       57 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       59 NEWCLOSURE                       R15 P0
       60 CAPTURE                          VAL R13
       61 NEWTABLE                         R16 0 0
       63 CALL                             R14 2 1
       64 GETUPVAL                         R15 2
       65 GETTABLEKS                       R15 R15 K11 ["useEffect"]
       67 NEWCLOSURE                       R16 P1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 NEWTABLE                         R17 0 2
       72 GETTABLEKS                       R18 R2 K12 ["icon"]
       74 GETTABLEKS                       R19 R3 K13 ["setHasLeading"]
       76 SETLIST                          R17 R18 2 [1]
       78 CALL                             R15 2 0
       79 GETUPVAL                         R15 6
       80 DUPTABLE                         R16 K19 [{"itemRef", "id", "depth", "isSubmenu", "isDisabled", "hoverOpenAtDepth", "hoverCloseAtDepth"}]
       81 SETTABLEKS                       R11 R16 K14 ["itemRef"]
       83 GETTABLEKS                       R17 R2 K6 ["id"]
       85 SETTABLEKS                       R17 R16 K6 ["id"]
       87 SETTABLEKS                       R7 R16 K3 ["depth"]
       89 SETTABLEKS                       R8 R16 K15 ["isSubmenu"]
       91 GETTABLEKS                       R17 R2 K16 ["isDisabled"]
       93 SETTABLEKS                       R17 R16 K16 ["isDisabled"]
       95 GETTABLEKS                       R17 R3 K17 ["hoverOpenAtDepth"]
       97 SETTABLEKS                       R17 R16 K17 ["hoverOpenAtDepth"]
       99 GETTABLEKS                       R17 R3 K18 ["hoverCloseAtDepth"]
      101 SETTABLEKS                       R17 R16 K18 ["hoverCloseAtDepth"]
      103 CALL                             R15 1 0
      104 GETUPVAL                         R15 2
      105 GETTABLEKS                       R15 R15 K10 ["useCallback"]
      107 NEWCLOSURE                       R16 P2
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R7
      113 CAPTURE                          UPVAL U7
      114 NEWTABLE                         R17 0 10
      116 MOVE                             R18 R8
      117 GETTABLEKS                       R19 R2 K16 ["isDisabled"]
      119 MOVE                             R20 R9
      120 MOVE                             R21 R7
      121 GETTABLEKS                       R22 R2 K6 ["id"]
      123 GETTABLEKS                       R23 R2 K20 ["onActivated"]
      125 GETTABLEKS                       R24 R3 K20 ["onActivated"]
      127 GETTABLEKS                       R25 R3 K21 ["onNestedLeafActivated"]
      129 GETTABLEKS                       R26 R3 K17 ["hoverOpenAtDepth"]
      131 GETTABLEKS                       R27 R3 K22 ["hoverReset"]
      133 SETLIST                          R17 R18 10 [1]
      135 CALL                             R15 2 1
      136 GETUPVAL                         R16 2
      137 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      139 NEWCLOSURE                       R17 P3
      140 CAPTURE                          VAL R3
      141 NEWTABLE                         R18 0 1
      143 GETTABLEKS                       R19 R3 K22 ["hoverReset"]
      145 SETLIST                          R18 R19 1 [1]
      147 CALL                             R16 2 1
      148 GETUPVAL                         R17 2
      149 GETTABLEKS                       R17 R17 K23 ["useMemo"]
      151 NEWCLOSURE                       R18 P4
      152 CAPTURE                          VAL R5
      153 NEWTABLE                         R19 0 1
      155 MOVE                             R20 R5
      156 SETLIST                          R19 R20 1 [1]
      158 CALL                             R17 2 1
      159 GETUPVAL                         R18 2
      160 GETTABLEKS                       R18 R18 K23 ["useMemo"]
      162 NEWCLOSURE                       R19 P5
      163 CAPTURE                          UPVAL U8
      164 CAPTURE                          VAL R2
      165 NEWTABLE                         R20 0 1
      167 GETTABLEKS                       R21 R2 K12 ["icon"]
      169 SETLIST                          R20 R21 1 [1]
      171 CALL                             R18 2 1
      172 GETUPVAL                         R19 9
      173 MOVE                             R20 R11
      174 MOVE                             R21 R1
      175 CALL                             R19 2 1
      176 GETUPVAL                         R20 2
      177 GETTABLEKS                       R20 R20 K24 ["createElement"]
      179 GETUPVAL                         R21 10
      180 GETUPVAL                         R22 11
      181 MOVE                             R23 R2
      182 DUPTABLE                         R24 K30 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      183 GETTABLEKS                       R26 R2 K16 ["isDisabled"]
      185 JUMPIFNOT                        R26 ; [+4]
      186 GETUPVAL                         R25 12
      187 GETTABLEKS                       R25 R25 K31 ["DISABLED_TRANSPARENCY"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R25
      191 SETTABLEKS                       R25 R24 K25 ["GroupTransparency"]
      193 GETTABLEKS                       R25 R2 K16 ["isDisabled"]
      195 SETTABLEKS                       R25 R24 K16 ["isDisabled"]
      197 SETTABLEKS                       R15 R24 K20 ["onActivated"]
      199 DUPTABLE                         R25 K33 [{"Selectable"}]
      200 GETTABLEKS                       R27 R2 K16 ["isDisabled"]
      202 NOT                              R26 R27
      203 SETTABLEKS                       R26 R25 K32 ["Selectable"]
      205 SETTABLEKS                       R25 R24 K26 ["selection"]
      207 SETTABLEKS                       R17 R24 K27 ["cursor"]
      209 GETTABLEKS                       R25 R10 K34 ["container"]
      211 GETTABLEKS                       R25 R25 K28 ["tag"]
      213 SETTABLEKS                       R25 R24 K28 ["tag"]
      215 SETTABLEKS                       R19 R24 K29 ["ref"]
      217 CALL                             R22 2 1
      218 DUPTABLE                         R23 K39 [{"Icon", "Text", "Chevron", "Check"}]
      219 GETTABLEKS                       R25 R2 K12 ["icon"]
      221 JUMPIF                           R25 ; [+1]
      222 JUMPIFNOT                        R4 ; [+72]
      223 GETTABLEKS                       R25 R2 K12 ["icon"]
      225 JUMPIFNOT                        R25 ; [+52]
      226 GETUPVAL                         R25 13
      227 GETTABLEKS                       R26 R2 K12 ["icon"]
      229 CALL                             R25 1 1
      230 JUMPIFNOT                        R25 ; [+47]
      231 GETUPVAL                         R24 2
      232 GETTABLEKS                       R24 R24 K24 ["createElement"]
      234 GETUPVAL                         R25 10
      235 DUPTABLE                         R26 K42 [{["LayoutOrder"] = 1, ["tag"]}]
      236 LOADK                            R28 K43 ["align-x-center align-y-center %*"]
      237 GETTABLEKS                       R30 R10 K12 ["icon"]
      239 GETTABLEKS                       R30 R30 K28 ["tag"]
      241 NAMECALL                         R28 R28 K44 ["format"]
      243 CALL                             R28 2 1
      244 MOVE                             R27 R28
      245 SETTABLEKS                       R27 R26 K28 ["tag"]
      247 DUPTABLE                         R27 K45 [{"Icon"}]
      248 GETUPVAL                         R28 2
      249 GETTABLEKS                       R28 R28 K24 ["createElement"]
      251 GETUPVAL                         R29 14
      252 DUPTABLE                         R30 K48 [{"name", "style", "size"}]
      253 JUMPIFNOT                        R18 ; [+3]
      254 GETTABLEKS                       R31 R18 K46 ["name"]
      256 JUMP                             ; [+2]
      257 GETTABLEKS                       R31 R2 K12 ["icon"]
      259 SETTABLEKS                       R31 R30 K46 ["name"]
      261 GETTABLEKS                       R31 R10 K12 ["icon"]
      263 GETTABLEKS                       R31 R31 K47 ["style"]
      265 SETTABLEKS                       R31 R30 K47 ["style"]
      267 GETTABLEKS                       R31 R10 K12 ["icon"]
      269 GETTABLEKS                       R31 R31 K2 ["size"]
      271 SETTABLEKS                       R31 R30 K2 ["size"]
      273 CALL                             R28 2 1
      274 SETTABLEKS                       R28 R27 K35 ["Icon"]
      276 CALL                             R24 3 1
      277 JUMP                             ; [+18]
      278 GETUPVAL                         R24 2
      279 GETTABLEKS                       R24 R24 K24 ["createElement"]
      281 GETUPVAL                         R25 15
      282 DUPTABLE                         R26 K50 [{["LayoutOrder"] = 1, ["Image"], ["tag"]}]
      283 GETTABLEKS                       R27 R2 K12 ["icon"]
      285 SETTABLEKS                       R27 R26 K49 ["Image"]
      287 GETTABLEKS                       R27 R10 K12 ["icon"]
      289 GETTABLEKS                       R27 R27 K28 ["tag"]
      291 SETTABLEKS                       R27 R26 K28 ["tag"]
      293 CALL                             R24 2 1
      294 JUMP                             ; [+1]
      295 LOADNIL                          R24
      296 SETTABLEKS                       R24 R23 K35 ["Icon"]
      298 GETUPVAL                         R24 2
      299 GETTABLEKS                       R24 R24 K24 ["createElement"]
      301 GETUPVAL                         R25 16
      302 DUPTABLE                         R26 K52 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
      303 GETTABLEKS                       R27 R2 K53 ["text"]
      305 SETTABLEKS                       R27 R26 K36 ["Text"]
      307 GETTABLEKS                       R27 R10 K53 ["text"]
      309 GETTABLEKS                       R27 R27 K28 ["tag"]
      311 SETTABLEKS                       R27 R26 K28 ["tag"]
      313 CALL                             R24 2 1
      314 SETTABLEKS                       R24 R23 K36 ["Text"]
      316 JUMPIFNOT                        R8 ; [+35]
      317 GETUPVAL                         R24 2
      318 GETTABLEKS                       R24 R24 K24 ["createElement"]
      320 GETUPVAL                         R25 14
      321 DUPTABLE                         R26 K56 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      322 GETUPVAL                         R27 8
      323 GETTABLEKS                       R27 R27 K35 ["Icon"]
      325 GETTABLEKS                       R27 R27 K57 ["ChevronSmallRight"]
      327 SETTABLEKS                       R27 R26 K46 ["name"]
      329 GETTABLEKS                       R27 R10 K58 ["check"]
      331 GETTABLEKS                       R27 R27 K47 ["style"]
      333 SETTABLEKS                       R27 R26 K47 ["style"]
      335 GETTABLEKS                       R27 R10 K59 ["chevron"]
      337 GETTABLEKS                       R27 R27 K2 ["size"]
      339 SETTABLEKS                       R27 R26 K2 ["size"]
      341 LOADK                            R28 K60 ["%*--chevron"]
      342 GETTABLEKS                       R30 R2 K55 ["testId"]
      344 NAMECALL                         R28 R28 K44 ["format"]
      346 CALL                             R28 2 1
      347 MOVE                             R27 R28
      348 SETTABLEKS                       R27 R26 K55 ["testId"]
      350 CALL                             R24 2 1
      351 JUMP                             ; [+1]
      352 LOADNIL                          R24
      353 SETTABLEKS                       R24 R23 K37 ["Chevron"]
      355 JUMPIF                           R8 ; [+38]
      356 GETTABLEKS                       R25 R2 K7 ["isChecked"]
      358 JUMPIFNOT                        R25 ; [+35]
      359 GETUPVAL                         R24 2
      360 GETTABLEKS                       R24 R24 K24 ["createElement"]
      362 GETUPVAL                         R25 14
      363 DUPTABLE                         R26 K56 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      364 GETUPVAL                         R27 8
      365 GETTABLEKS                       R27 R27 K35 ["Icon"]
      367 GETTABLEKS                       R27 R27 K38 ["Check"]
      369 SETTABLEKS                       R27 R26 K46 ["name"]
      371 GETTABLEKS                       R27 R10 K58 ["check"]
      373 GETTABLEKS                       R27 R27 K47 ["style"]
      375 SETTABLEKS                       R27 R26 K47 ["style"]
      377 GETTABLEKS                       R27 R10 K58 ["check"]
      379 GETTABLEKS                       R27 R27 K2 ["size"]
      381 SETTABLEKS                       R27 R26 K2 ["size"]
      383 LOADK                            R28 K61 ["%*--checkmark"]
      384 GETTABLEKS                       R30 R2 K55 ["testId"]
      386 NAMECALL                         R28 R28 K44 ["format"]
      388 CALL                             R28 2 1
      389 MOVE                             R27 R28
      390 SETTABLEKS                       R27 R26 K55 ["testId"]
      392 CALL                             R24 2 1
      393 JUMP                             ; [+1]
      394 LOADNIL                          R24
      395 SETTABLEKS                       R24 R23 K38 ["Check"]
      397 CALL                             R20 3 1
      398 JUMPIF                           R8 ; [+1]
      399 RETURN                           R20 1
      400 GETTABLEKS                       R21 R5 K62 ["Stroke"]
      402 GETTABLEKS                       R21 R21 K63 ["Standard"]
      404 GETTABLEKS                       R22 R10 K64 ["groupPadding"]
      406 GETTABLEKS                       R22 R22 K2 ["size"]
      408 GETUPVAL                         R23 2
      409 GETTABLEKS                       R23 R23 K24 ["createElement"]
      411 GETUPVAL                         R24 2
      412 GETTABLEKS                       R24 R24 K65 ["Fragment"]
      414 LOADNIL                          R25
      415 DUPTABLE                         R26 K68 [{"Item", "Submenu"}]
      416 SETTABLEKS                       R20 R26 K66 ["Item"]
      418 GETUPVAL                         R27 2
      419 GETTABLEKS                       R27 R27 K24 ["createElement"]
      421 GETUPVAL                         R28 17
      422 GETTABLEKS                       R28 R28 K69 ["Root"]
      424 DUPTABLE                         R29 K71 [{"isOpen", "testId"}]
      425 SETTABLEKS                       R9 R29 K70 ["isOpen"]
      427 LOADK                            R31 K72 ["%*--submenu"]
      428 GETTABLEKS                       R33 R2 K55 ["testId"]
      430 NAMECALL                         R31 R31 K44 ["format"]
      432 CALL                             R31 2 1
      433 MOVE                             R30 R31
      434 SETTABLEKS                       R30 R29 K55 ["testId"]
      436 DUPTABLE                         R30 K75 [{"Anchor", "Content"}]
      437 GETUPVAL                         R31 2
      438 GETTABLEKS                       R31 R31 K24 ["createElement"]
      440 GETUPVAL                         R32 17
      441 GETTABLEKS                       R32 R32 K73 ["Anchor"]
      443 DUPTABLE                         R33 K77 [{"anchorRef"}]
      444 SETTABLEKS                       R11 R33 K76 ["anchorRef"]
      446 CALL                             R31 2 1
      447 SETTABLEKS                       R31 R30 K73 ["Anchor"]
      449 GETUPVAL                         R31 2
      450 GETTABLEKS                       R31 R31 K24 ["createElement"]
      452 GETUPVAL                         R32 17
      453 GETTABLEKS                       R32 R32 K74 ["Content"]
      455 DUPTABLE                         R33 K85 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      456 DUPTABLE                         R34 K88 [{"position", "offset"}]
      457 GETUPVAL                         R35 18
      458 GETTABLEKS                       R35 R35 K89 ["Right"]
      460 SETTABLEKS                       R35 R34 K86 ["position"]
      462 DIVK                             R36 R22 K51 [2]
      463 ADD                              R35 R36 R21
      464 SETTABLEKS                       R35 R34 K87 ["offset"]
      466 SETTABLEKS                       R34 R33 K78 ["side"]
      468 DUPTABLE                         R34 K88 [{"position", "offset"}]
      469 GETUPVAL                         R35 19
      470 GETTABLEKS                       R35 R35 K90 ["Start"]
      472 SETTABLEKS                       R35 R34 K86 ["position"]
      474 MINUS                            R35 R22
      475 SETTABLEKS                       R35 R34 K87 ["offset"]
      477 SETTABLEKS                       R34 R33 K79 ["align"]
      479 SETTABLEKS                       R16 R33 K82 ["onPressedOutside"]
      481 GETTABLEKS                       R34 R5 K91 ["Color"]
      483 GETTABLEKS                       R34 R34 K92 ["Surface"]
      485 GETTABLEKS                       R34 R34 K93 ["Surface_100"]
      487 SETTABLEKS                       R34 R33 K83 ["backgroundStyle"]
      489 GETUPVAL                         R34 20
      490 GETTABLEKS                       R34 R34 K94 ["Medium"]
      492 SETTABLEKS                       R34 R33 K84 ["radius"]
      494 GETUPVAL                         R34 2
      495 GETTABLEKS                       R34 R34 K24 ["createElement"]
      497 GETUPVAL                         R35 10
      498 DUPTABLE                         R36 K97 [{["tag"] = "col auto-xy stroke-standard stroke-default radius-medium", ["InputSink"]}]
      499 GETUPVAL                         R37 21
      500 SETTABLEKS                       R37 R36 K96 ["InputSink"]
      502 GETUPVAL                         R37 2
      503 GETTABLEKS                       R37 R37 K24 ["createElement"]
      505 GETUPVAL                         R38 3
      506 GETTABLEKS                       R38 R38 K98 ["Provider"]
      508 DUPTABLE                         R39 K100 [{"value"}]
      509 DUPTABLE                         R40 K101 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      510 GETTABLEKS                       R41 R3 K20 ["onActivated"]
      512 SETTABLEKS                       R41 R40 K20 ["onActivated"]
      514 GETTABLEKS                       R41 R3 K21 ["onNestedLeafActivated"]
      516 SETTABLEKS                       R41 R40 K21 ["onNestedLeafActivated"]
      518 SETTABLEKS                       R6 R40 K2 ["size"]
      520 SETTABLEKS                       R12 R40 K1 ["hasLeading"]
      522 SETTABLEKS                       R14 R40 K13 ["setHasLeading"]
      524 GETTABLEKS                       R41 R3 K5 ["hoverOpenPath"]
      526 SETTABLEKS                       R41 R40 K5 ["hoverOpenPath"]
      528 GETTABLEKS                       R41 R3 K17 ["hoverOpenAtDepth"]
      530 SETTABLEKS                       R41 R40 K17 ["hoverOpenAtDepth"]
      532 GETTABLEKS                       R41 R3 K18 ["hoverCloseAtDepth"]
      534 SETTABLEKS                       R41 R40 K18 ["hoverCloseAtDepth"]
      536 GETTABLEKS                       R41 R3 K22 ["hoverReset"]
      538 SETTABLEKS                       R41 R40 K22 ["hoverReset"]
      540 ADDK                             R41 R7 K41 [1]
      541 SETTABLEKS                       R41 R40 K3 ["depth"]
      543 SETTABLEKS                       R40 R39 K99 ["value"]
      545 GETTABLEKS                       R40 R2 K4 ["children"]
      547 CALL                             R37 3 -1
      548 CALL                             R34 -1 -1
      549 CALL                             R31 -1 1
      550 SETTABLEKS                       R31 R30 K74 ["Content"]
      552 CALL                             R27 3 1
      553 SETTABLEKS                       R27 R26 K67 ["Submenu"]
      555 CALL                             R23 3 -1
      556 RETURN                           R23 -1

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
      175 DUPCLOSURE                       R28 K40 [PROTO_1]
      176 CAPTURE                          VAL R23
      177 MOVE                             R29 R28
      178 CALL                             R29 0 1
      179 DUPCLOSURE                       R30 K41 [PROTO_8]
      180 CAPTURE                          VAL R16
      181 CAPTURE                          VAL R27
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R25
      186 CAPTURE                          VAL R26
      187 CAPTURE                          VAL R6
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R8
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R10
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R29
      202 GETTABLEKS                       R31 R3 K42 ["memo"]
      204 GETTABLEKS                       R32 R3 K43 ["forwardRef"]
      206 MOVE                             R33 R30
      207 CALL                             R32 1 -1
      208 CALL                             R31 -1 -1
      209 RETURN                           R31 -1
