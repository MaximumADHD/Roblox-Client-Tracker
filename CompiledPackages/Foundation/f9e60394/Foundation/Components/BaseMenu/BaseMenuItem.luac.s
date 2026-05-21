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
       10 JUMPIFNOT                        R0 ; [+59]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+57]
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
       54 GETUPVAL                         R1 6
       55 GETTABLEKS                       R1 R1 K7 ["FoundationFixNestedSubMenuOnClick"]
       57 JUMPIFNOT                        R1 ; [+12]
       58 GETUPVAL                         R1 4
       59 LOADN                            R2 1
       60 JUMPIFNOTLT                      R2 R1 ; [+9]
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K8 ["onNestedLeafActivated"]
       65 JUMPIFNOT                        R1 ; [+4]
       66 GETUPVAL                         R1 2
       67 GETTABLEKS                       R1 R1 K8 ["onNestedLeafActivated"]
       69 CALL                             R1 0 0
       70 RETURN                           R0 0

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
      114 CAPTURE                          UPVAL U8
      115 NEWTABLE                         R17 0 10
      117 MOVE                             R18 R8
      118 GETTABLEKS                       R19 R2 K16 ["isDisabled"]
      120 MOVE                             R20 R9
      121 MOVE                             R21 R7
      122 GETTABLEKS                       R22 R2 K6 ["id"]
      124 GETTABLEKS                       R23 R2 K20 ["onActivated"]
      126 GETTABLEKS                       R24 R3 K20 ["onActivated"]
      128 GETTABLEKS                       R25 R3 K21 ["onNestedLeafActivated"]
      130 GETTABLEKS                       R26 R3 K17 ["hoverOpenAtDepth"]
      132 GETTABLEKS                       R27 R3 K22 ["hoverReset"]
      134 SETLIST                          R17 R18 10 [1]
      136 CALL                             R15 2 1
      137 GETUPVAL                         R16 2
      138 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      140 NEWCLOSURE                       R17 P3
      141 CAPTURE                          VAL R3
      142 NEWTABLE                         R18 0 1
      144 GETTABLEKS                       R19 R3 K22 ["hoverReset"]
      146 SETLIST                          R18 R19 1 [1]
      148 CALL                             R16 2 1
      149 GETUPVAL                         R17 2
      150 GETTABLEKS                       R17 R17 K23 ["useMemo"]
      152 NEWCLOSURE                       R18 P4
      153 CAPTURE                          VAL R5
      154 NEWTABLE                         R19 0 1
      156 MOVE                             R20 R5
      157 SETLIST                          R19 R20 1 [1]
      159 CALL                             R17 2 1
      160 GETUPVAL                         R18 2
      161 GETTABLEKS                       R18 R18 K23 ["useMemo"]
      163 NEWCLOSURE                       R19 P5
      164 CAPTURE                          UPVAL U9
      165 CAPTURE                          VAL R2
      166 NEWTABLE                         R20 0 1
      168 GETTABLEKS                       R21 R2 K12 ["icon"]
      170 SETLIST                          R20 R21 1 [1]
      172 CALL                             R18 2 1
      173 GETUPVAL                         R19 10
      174 MOVE                             R20 R11
      175 MOVE                             R21 R1
      176 CALL                             R19 2 1
      177 GETUPVAL                         R20 2
      178 GETTABLEKS                       R20 R20 K24 ["createElement"]
      180 GETUPVAL                         R21 11
      181 GETUPVAL                         R22 12
      182 MOVE                             R23 R2
      183 DUPTABLE                         R24 K30 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      184 GETTABLEKS                       R26 R2 K16 ["isDisabled"]
      186 JUMPIFNOT                        R26 ; [+4]
      187 GETUPVAL                         R25 13
      188 GETTABLEKS                       R25 R25 K31 ["DISABLED_TRANSPARENCY"]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R25
      192 SETTABLEKS                       R25 R24 K25 ["GroupTransparency"]
      194 GETTABLEKS                       R25 R2 K16 ["isDisabled"]
      196 SETTABLEKS                       R25 R24 K16 ["isDisabled"]
      198 SETTABLEKS                       R15 R24 K20 ["onActivated"]
      200 DUPTABLE                         R25 K33 [{"Selectable"}]
      201 GETTABLEKS                       R27 R2 K16 ["isDisabled"]
      203 NOT                              R26 R27
      204 SETTABLEKS                       R26 R25 K32 ["Selectable"]
      206 SETTABLEKS                       R25 R24 K26 ["selection"]
      208 SETTABLEKS                       R17 R24 K27 ["cursor"]
      210 GETTABLEKS                       R25 R10 K34 ["container"]
      212 GETTABLEKS                       R25 R25 K28 ["tag"]
      214 SETTABLEKS                       R25 R24 K28 ["tag"]
      216 SETTABLEKS                       R19 R24 K29 ["ref"]
      218 CALL                             R22 2 1
      219 DUPTABLE                         R23 K39 [{"Icon", "Text", "Chevron", "Check"}]
      220 GETTABLEKS                       R25 R2 K12 ["icon"]
      222 JUMPIF                           R25 ; [+1]
      223 JUMPIFNOT                        R4 ; [+78]
      224 GETTABLEKS                       R25 R2 K12 ["icon"]
      226 JUMPIFNOT                        R25 ; [+55]
      227 GETUPVAL                         R25 14
      228 GETTABLEKS                       R26 R2 K12 ["icon"]
      230 CALL                             R25 1 1
      231 JUMPIFNOT                        R25 ; [+50]
      232 GETUPVAL                         R24 2
      233 GETTABLEKS                       R24 R24 K24 ["createElement"]
      235 GETUPVAL                         R25 11
      236 DUPTABLE                         R26 K41 [{"LayoutOrder", "tag"}]
      237 LOADN                            R27 1
      238 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      240 LOADK                            R28 K42 ["align-x-center align-y-center %*"]
      241 GETTABLEKS                       R30 R10 K12 ["icon"]
      243 GETTABLEKS                       R30 R30 K28 ["tag"]
      245 NAMECALL                         R28 R28 K43 ["format"]
      247 CALL                             R28 2 1
      248 MOVE                             R27 R28
      249 SETTABLEKS                       R27 R26 K28 ["tag"]
      251 DUPTABLE                         R27 K44 [{"Icon"}]
      252 GETUPVAL                         R28 2
      253 GETTABLEKS                       R28 R28 K24 ["createElement"]
      255 GETUPVAL                         R29 15
      256 DUPTABLE                         R30 K47 [{"name", "style", "size"}]
      257 JUMPIFNOT                        R18 ; [+3]
      258 GETTABLEKS                       R31 R18 K45 ["name"]
      260 JUMP                             ; [+2]
      261 GETTABLEKS                       R31 R2 K12 ["icon"]
      263 SETTABLEKS                       R31 R30 K45 ["name"]
      265 GETTABLEKS                       R31 R10 K12 ["icon"]
      267 GETTABLEKS                       R31 R31 K46 ["style"]
      269 SETTABLEKS                       R31 R30 K46 ["style"]
      271 GETTABLEKS                       R31 R10 K12 ["icon"]
      273 GETTABLEKS                       R31 R31 K2 ["size"]
      275 SETTABLEKS                       R31 R30 K2 ["size"]
      277 CALL                             R28 2 1
      278 SETTABLEKS                       R28 R27 K35 ["Icon"]
      280 CALL                             R24 3 1
      281 JUMP                             ; [+21]
      282 GETUPVAL                         R24 2
      283 GETTABLEKS                       R24 R24 K24 ["createElement"]
      285 GETUPVAL                         R25 16
      286 DUPTABLE                         R26 K49 [{"LayoutOrder", "Image", "tag"}]
      287 LOADN                            R27 1
      288 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      290 GETTABLEKS                       R27 R2 K12 ["icon"]
      292 SETTABLEKS                       R27 R26 K48 ["Image"]
      294 GETTABLEKS                       R27 R10 K12 ["icon"]
      296 GETTABLEKS                       R27 R27 K28 ["tag"]
      298 SETTABLEKS                       R27 R26 K28 ["tag"]
      300 CALL                             R24 2 1
      301 JUMP                             ; [+1]
      302 LOADNIL                          R24
      303 SETTABLEKS                       R24 R23 K35 ["Icon"]
      305 GETUPVAL                         R24 2
      306 GETTABLEKS                       R24 R24 K24 ["createElement"]
      308 GETUPVAL                         R25 17
      309 DUPTABLE                         R26 K50 [{"LayoutOrder", "Text", "tag"}]
      310 LOADN                            R27 2
      311 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      313 GETTABLEKS                       R27 R2 K51 ["text"]
      315 SETTABLEKS                       R27 R26 K36 ["Text"]
      317 GETTABLEKS                       R27 R10 K51 ["text"]
      319 GETTABLEKS                       R27 R27 K28 ["tag"]
      321 SETTABLEKS                       R27 R26 K28 ["tag"]
      323 CALL                             R24 2 1
      324 SETTABLEKS                       R24 R23 K36 ["Text"]
      326 JUMPIFNOT                        R8 ; [+38]
      327 GETUPVAL                         R24 2
      328 GETTABLEKS                       R24 R24 K24 ["createElement"]
      330 GETUPVAL                         R25 15
      331 DUPTABLE                         R26 K53 [{"LayoutOrder", "name", "style", "size", "testId"}]
      332 LOADN                            R27 3
      333 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      335 GETUPVAL                         R27 9
      336 GETTABLEKS                       R27 R27 K35 ["Icon"]
      338 GETTABLEKS                       R27 R27 K54 ["ChevronSmallRight"]
      340 SETTABLEKS                       R27 R26 K45 ["name"]
      342 GETTABLEKS                       R27 R10 K55 ["check"]
      344 GETTABLEKS                       R27 R27 K46 ["style"]
      346 SETTABLEKS                       R27 R26 K46 ["style"]
      348 GETTABLEKS                       R27 R10 K56 ["chevron"]
      350 GETTABLEKS                       R27 R27 K2 ["size"]
      352 SETTABLEKS                       R27 R26 K2 ["size"]
      354 LOADK                            R28 K57 ["%*--chevron"]
      355 GETTABLEKS                       R30 R2 K52 ["testId"]
      357 NAMECALL                         R28 R28 K43 ["format"]
      359 CALL                             R28 2 1
      360 MOVE                             R27 R28
      361 SETTABLEKS                       R27 R26 K52 ["testId"]
      363 CALL                             R24 2 1
      364 JUMP                             ; [+1]
      365 LOADNIL                          R24
      366 SETTABLEKS                       R24 R23 K37 ["Chevron"]
      368 JUMPIF                           R8 ; [+41]
      369 GETTABLEKS                       R25 R2 K7 ["isChecked"]
      371 JUMPIFNOT                        R25 ; [+38]
      372 GETUPVAL                         R24 2
      373 GETTABLEKS                       R24 R24 K24 ["createElement"]
      375 GETUPVAL                         R25 15
      376 DUPTABLE                         R26 K53 [{"LayoutOrder", "name", "style", "size", "testId"}]
      377 LOADN                            R27 3
      378 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      380 GETUPVAL                         R27 9
      381 GETTABLEKS                       R27 R27 K35 ["Icon"]
      383 GETTABLEKS                       R27 R27 K38 ["Check"]
      385 SETTABLEKS                       R27 R26 K45 ["name"]
      387 GETTABLEKS                       R27 R10 K55 ["check"]
      389 GETTABLEKS                       R27 R27 K46 ["style"]
      391 SETTABLEKS                       R27 R26 K46 ["style"]
      393 GETTABLEKS                       R27 R10 K55 ["check"]
      395 GETTABLEKS                       R27 R27 K2 ["size"]
      397 SETTABLEKS                       R27 R26 K2 ["size"]
      399 LOADK                            R28 K58 ["%*--checkmark"]
      400 GETTABLEKS                       R30 R2 K52 ["testId"]
      402 NAMECALL                         R28 R28 K43 ["format"]
      404 CALL                             R28 2 1
      405 MOVE                             R27 R28
      406 SETTABLEKS                       R27 R26 K52 ["testId"]
      408 CALL                             R24 2 1
      409 JUMP                             ; [+1]
      410 LOADNIL                          R24
      411 SETTABLEKS                       R24 R23 K38 ["Check"]
      413 CALL                             R20 3 1
      414 JUMPIF                           R8 ; [+1]
      415 RETURN                           R20 1
      416 GETTABLEKS                       R21 R5 K59 ["Stroke"]
      418 GETTABLEKS                       R21 R21 K60 ["Standard"]
      420 GETTABLEKS                       R22 R10 K61 ["groupPadding"]
      422 GETTABLEKS                       R22 R22 K2 ["size"]
      424 GETUPVAL                         R23 2
      425 GETTABLEKS                       R23 R23 K24 ["createElement"]
      427 GETUPVAL                         R24 2
      428 GETTABLEKS                       R24 R24 K62 ["Fragment"]
      430 LOADNIL                          R25
      431 DUPTABLE                         R26 K65 [{"Item", "Submenu"}]
      432 SETTABLEKS                       R20 R26 K63 ["Item"]
      434 GETUPVAL                         R27 2
      435 GETTABLEKS                       R27 R27 K24 ["createElement"]
      437 GETUPVAL                         R28 18
      438 GETTABLEKS                       R28 R28 K66 ["Root"]
      440 DUPTABLE                         R29 K68 [{"isOpen", "testId"}]
      441 SETTABLEKS                       R9 R29 K67 ["isOpen"]
      443 LOADK                            R31 K69 ["%*--submenu"]
      444 GETTABLEKS                       R33 R2 K52 ["testId"]
      446 NAMECALL                         R31 R31 K43 ["format"]
      448 CALL                             R31 2 1
      449 MOVE                             R30 R31
      450 SETTABLEKS                       R30 R29 K52 ["testId"]
      452 DUPTABLE                         R30 K72 [{"Anchor", "Content"}]
      453 GETUPVAL                         R31 2
      454 GETTABLEKS                       R31 R31 K24 ["createElement"]
      456 GETUPVAL                         R32 18
      457 GETTABLEKS                       R32 R32 K70 ["Anchor"]
      459 DUPTABLE                         R33 K74 [{"anchorRef"}]
      460 SETTABLEKS                       R11 R33 K73 ["anchorRef"]
      462 CALL                             R31 2 1
      463 SETTABLEKS                       R31 R30 K70 ["Anchor"]
      465 GETUPVAL                         R31 2
      466 GETTABLEKS                       R31 R31 K24 ["createElement"]
      468 GETUPVAL                         R32 18
      469 GETTABLEKS                       R32 R32 K71 ["Content"]
      471 DUPTABLE                         R33 K81 [{"side", "align", "hasArrow", "onPressedOutside", "backgroundStyle", "radius"}]
      472 DUPTABLE                         R34 K84 [{"position", "offset"}]
      473 GETUPVAL                         R35 19
      474 GETTABLEKS                       R35 R35 K85 ["Right"]
      476 SETTABLEKS                       R35 R34 K82 ["position"]
      478 DIVK                             R36 R22 K86 [2]
      479 ADD                              R35 R36 R21
      480 SETTABLEKS                       R35 R34 K83 ["offset"]
      482 SETTABLEKS                       R34 R33 K75 ["side"]
      484 DUPTABLE                         R34 K84 [{"position", "offset"}]
      485 GETUPVAL                         R35 20
      486 GETTABLEKS                       R35 R35 K87 ["Start"]
      488 SETTABLEKS                       R35 R34 K82 ["position"]
      490 MINUS                            R35 R22
      491 SETTABLEKS                       R35 R34 K83 ["offset"]
      493 SETTABLEKS                       R34 R33 K76 ["align"]
      495 LOADB                            R34 0
      496 SETTABLEKS                       R34 R33 K77 ["hasArrow"]
      498 SETTABLEKS                       R16 R33 K78 ["onPressedOutside"]
      500 GETTABLEKS                       R34 R5 K88 ["Color"]
      502 GETTABLEKS                       R34 R34 K89 ["Surface"]
      504 GETTABLEKS                       R34 R34 K90 ["Surface_100"]
      506 SETTABLEKS                       R34 R33 K79 ["backgroundStyle"]
      508 GETUPVAL                         R34 21
      509 GETTABLEKS                       R34 R34 K91 ["Medium"]
      511 SETTABLEKS                       R34 R33 K80 ["radius"]
      513 GETUPVAL                         R34 2
      514 GETTABLEKS                       R34 R34 K24 ["createElement"]
      516 GETUPVAL                         R35 11
      517 DUPTABLE                         R36 K93 [{"tag", "InputSink"}]
      518 LOADK                            R37 K94 ["col auto-xy stroke-standard stroke-default radius-medium"]
      519 SETTABLEKS                       R37 R36 K28 ["tag"]
      521 GETUPVAL                         R37 22
      522 SETTABLEKS                       R37 R36 K92 ["InputSink"]
      524 GETUPVAL                         R37 2
      525 GETTABLEKS                       R37 R37 K24 ["createElement"]
      527 GETUPVAL                         R38 3
      528 GETTABLEKS                       R38 R38 K95 ["Provider"]
      530 DUPTABLE                         R39 K97 [{"value"}]
      531 DUPTABLE                         R40 K98 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      532 GETTABLEKS                       R41 R3 K20 ["onActivated"]
      534 SETTABLEKS                       R41 R40 K20 ["onActivated"]
      536 GETTABLEKS                       R41 R3 K21 ["onNestedLeafActivated"]
      538 SETTABLEKS                       R41 R40 K21 ["onNestedLeafActivated"]
      540 SETTABLEKS                       R6 R40 K2 ["size"]
      542 SETTABLEKS                       R12 R40 K1 ["hasLeading"]
      544 SETTABLEKS                       R14 R40 K13 ["setHasLeading"]
      546 GETTABLEKS                       R41 R3 K5 ["hoverOpenPath"]
      548 SETTABLEKS                       R41 R40 K5 ["hoverOpenPath"]
      550 GETTABLEKS                       R41 R3 K17 ["hoverOpenAtDepth"]
      552 SETTABLEKS                       R41 R40 K17 ["hoverOpenAtDepth"]
      554 GETTABLEKS                       R41 R3 K18 ["hoverCloseAtDepth"]
      556 SETTABLEKS                       R41 R40 K18 ["hoverCloseAtDepth"]
      558 GETTABLEKS                       R41 R3 K22 ["hoverReset"]
      560 SETTABLEKS                       R41 R40 K22 ["hoverReset"]
      562 ADDK                             R41 R7 K99 [1]
      563 SETTABLEKS                       R41 R40 K3 ["depth"]
      565 SETTABLEKS                       R40 R39 K96 ["value"]
      567 GETTABLEKS                       R40 R2 K4 ["children"]
      569 CALL                             R37 3 -1
      570 CALL                             R34 -1 -1
      571 CALL                             R31 -1 1
      572 SETTABLEKS                       R31 R30 K71 ["Content"]
      574 CALL                             R27 3 1
      575 SETTABLEKS                       R27 R26 K64 ["Submenu"]
      577 CALL                             R23 3 -1
      578 RETURN                           R23 -1

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
      174 DUPTABLE                         R27 K38 [{"isChecked"}]
      175 LOADB                            R28 0
      176 SETTABLEKS                       R28 R27 K37 ["isChecked"]
      178 DUPCLOSURE                       R28 K39 [PROTO_1]
      179 CAPTURE                          VAL R23
      180 MOVE                             R29 R28
      181 CALL                             R29 0 1
      182 DUPCLOSURE                       R30 K40 [PROTO_8]
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R24
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R26
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R9
      200 CAPTURE                          VAL R11
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R29
      206 GETTABLEKS                       R31 R3 K41 ["memo"]
      208 GETTABLEKS                       R32 R3 K42 ["forwardRef"]
      210 MOVE                             R33 R30
      211 CALL                             R32 1 -1
      212 CALL                             R31 -1 -1
      213 RETURN                           R31 -1
