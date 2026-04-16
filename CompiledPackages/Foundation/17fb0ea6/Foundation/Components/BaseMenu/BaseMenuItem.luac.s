PROTO_0:
        0 GETIMPORT                        R2 K1 [Enum]
        2 GETTABLEKS                       R1 R2 K2 ["InputSink"]
        4 GETTABLEKS                       R0 R1 K3 ["All"]
        6 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationGuiObjectInputSinkProperty"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K2 [pcall]
        8 GETIMPORT                        R2 K4 [game]
       10 GETTABLEKS                       R1 R2 K5 ["GetEngineFeature"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["icon"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["setHasLeading"]
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["setHasLeading"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["hoverOpenAtDepth"]
       10 JUMPIFNOT                        R0 ; [+47]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+45]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K1 ["hoverOpenAtDepth"]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K2 ["id"]
       20 LOADB                            R3 1
       21 CALL                             R0 3 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 5
       24 GETTABLEKS                       R0 R1 K3 ["FoundationBaseMenuSubmenuSupport"]
       26 JUMPIFNOT                        R0 ; [+8]
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R0 R1 K4 ["hoverReset"]
       30 JUMPIFNOT                        R0 ; [+4]
       31 GETUPVAL                         R1 2
       32 GETTABLEKS                       R0 R1 K4 ["hoverReset"]
       34 CALL                             R0 0 0
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R1 R2 K5 ["onActivated"]
       38 JUMPIFNOT                        R1 ; [+4]
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R0 R1 K5 ["onActivated"]
       42 JUMP                             ; [+3]
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R0 R1 K5 ["onActivated"]
       46 JUMPIF                           R0 ; [+6]
       47 GETUPVAL                         R1 6
       48 LOADK                            R3 K6 ["Menu should have either onActivated on itself or on all of its children"]
       49 NAMECALL                         R1 R1 K7 ["warning"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0
       53 MOVE                             R1 R0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R2 R3 K2 ["id"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hoverReset"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["hoverReset"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["Radius"]
        7 GETTABLEKS                       R3 R4 K8 ["Small"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K9 ["Size"]
       15 GETTABLEKS                       R1 R2 K10 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K1 ["Migration"]
        3 GETTABLEKS                       R1 R2 K0 ["uiblox"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["icon"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R3 K1 ["hasLeading"]
       11 GETUPVAL                         R5 4
       12 CALL                             R5 0 1
       13 GETTABLEKS                       R6 R2 K2 ["size"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R3 K2 ["size"]
       18 GETTABLEKS                       R7 R3 K3 ["depth"]
       20 GETUPVAL                         R9 5
       21 GETTABLEKS                       R8 R9 K4 ["FoundationBaseMenuSubmenuSupport"]
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
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R11 R12 K9 ["useRef"]
       53 LOADNIL                          R12
       54 CALL                             R11 1 1
       55 LOADNIL                          R12
       56 LOADNIL                          R13
       57 LOADNIL                          R14
       58 GETUPVAL                         R16 5
       59 GETTABLEKS                       R15 R16 K4 ["FoundationBaseMenuSubmenuSupport"]
       61 JUMPIFNOT                        R15 ; [+16]
       62 GETUPVAL                         R16 2
       63 GETTABLEKS                       R15 R16 K10 ["useState"]
       65 LOADB                            R16 0
       66 CALL                             R15 1 2
       67 MOVE                             R12 R15
       68 MOVE                             R13 R16
       69 GETUPVAL                         R16 2
       70 GETTABLEKS                       R15 R16 K11 ["useCallback"]
       72 NEWCLOSURE                       R16 P0
       73 CAPTURE                          REF R13
       74 NEWTABLE                         R17 0 0
       76 CALL                             R15 2 1
       77 MOVE                             R14 R15
       78 GETUPVAL                         R16 2
       79 GETTABLEKS                       R15 R16 K12 ["useEffect"]
       81 NEWCLOSURE                       R16 P1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R3
       84 NEWTABLE                         R17 0 2
       86 GETTABLEKS                       R18 R2 K13 ["icon"]
       88 GETTABLEKS                       R19 R3 K14 ["setHasLeading"]
       90 SETLIST                          R17 R18 2 [1]
       92 CALL                             R15 2 0
       93 GETUPVAL                         R16 5
       94 GETTABLEKS                       R15 R16 K4 ["FoundationBaseMenuSubmenuSupport"]
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
      122 GETUPVAL                         R16 2
      123 GETTABLEKS                       R15 R16 K11 ["useCallback"]
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
      154 GETUPVAL                         R18 5
      155 GETTABLEKS                       R17 R18 K4 ["FoundationBaseMenuSubmenuSupport"]
      157 JUMPIFNOT                        R17 ; [+13]
      158 GETUPVAL                         R18 2
      159 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      161 NEWCLOSURE                       R18 P3
      162 CAPTURE                          VAL R3
      163 NEWTABLE                         R19 0 1
      165 GETTABLEKS                       R20 R3 K22 ["hoverReset"]
      167 SETLIST                          R19 R20 1 [1]
      169 CALL                             R17 2 1
      170 MOVE                             R16 R17
      171 GETUPVAL                         R18 2
      172 GETTABLEKS                       R17 R18 K23 ["useMemo"]
      174 NEWCLOSURE                       R18 P4
      175 CAPTURE                          VAL R5
      176 NEWTABLE                         R19 0 1
      178 MOVE                             R20 R5
      179 SETLIST                          R19 R20 1 [1]
      181 CALL                             R17 2 1
      182 GETUPVAL                         R19 2
      183 GETTABLEKS                       R18 R19 K23 ["useMemo"]
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
      199 GETUPVAL                         R21 2
      200 GETTABLEKS                       R20 R21 K24 ["createElement"]
      202 GETUPVAL                         R21 11
      203 GETUPVAL                         R22 12
      204 MOVE                             R23 R2
      205 DUPTABLE                         R24 K30 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      206 GETTABLEKS                       R26 R2 K17 ["isDisabled"]
      208 JUMPIFNOT                        R26 ; [+4]
      209 GETUPVAL                         R26 13
      210 GETTABLEKS                       R25 R26 K31 ["DISABLED_TRANSPARENCY"]
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
      232 GETTABLEKS                       R26 R10 K34 ["container"]
      234 GETTABLEKS                       R25 R26 K28 ["tag"]
      236 SETTABLEKS                       R25 R24 K28 ["tag"]
      238 GETUPVAL                         R27 5
      239 GETTABLEKS                       R26 R27 K4 ["FoundationBaseMenuSubmenuSupport"]
      241 JUMPIFNOT                        R26 ; [+2]
      242 MOVE                             R25 R19
      243 JUMP                             ; [+1]
      244 MOVE                             R25 R1
      245 SETTABLEKS                       R25 R24 K29 ["ref"]
      247 CALL                             R22 2 1
      248 DUPTABLE                         R23 K39 [{"Icon", "Text", "Chevron", "Check"}]
      249 GETTABLEKS                       R25 R2 K13 ["icon"]
      251 JUMPIF                           R25 ; [+1]
      252 JUMPIFNOT                        R4 ; [+78]
      253 GETTABLEKS                       R25 R2 K13 ["icon"]
      255 JUMPIFNOT                        R25 ; [+55]
      256 GETUPVAL                         R25 14
      257 GETTABLEKS                       R26 R2 K13 ["icon"]
      259 CALL                             R25 1 1
      260 JUMPIFNOT                        R25 ; [+50]
      261 GETUPVAL                         R25 2
      262 GETTABLEKS                       R24 R25 K24 ["createElement"]
      264 GETUPVAL                         R25 11
      265 DUPTABLE                         R26 K41 [{"LayoutOrder", "tag"}]
      266 LOADN                            R27 1
      267 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      269 LOADK                            R28 K42 ["align-x-center align-y-center %*"]
      270 GETTABLEKS                       R31 R10 K13 ["icon"]
      272 GETTABLEKS                       R30 R31 K28 ["tag"]
      274 NAMECALL                         R28 R28 K43 ["format"]
      276 CALL                             R28 2 1
      277 MOVE                             R27 R28
      278 SETTABLEKS                       R27 R26 K28 ["tag"]
      280 DUPTABLE                         R27 K44 [{"Icon"}]
      281 GETUPVAL                         R29 2
      282 GETTABLEKS                       R28 R29 K24 ["createElement"]
      284 GETUPVAL                         R29 15
      285 DUPTABLE                         R30 K47 [{"name", "style", "size"}]
      286 JUMPIFNOT                        R18 ; [+3]
      287 GETTABLEKS                       R31 R18 K45 ["name"]
      289 JUMP                             ; [+2]
      290 GETTABLEKS                       R31 R2 K13 ["icon"]
      292 SETTABLEKS                       R31 R30 K45 ["name"]
      294 GETTABLEKS                       R32 R10 K13 ["icon"]
      296 GETTABLEKS                       R31 R32 K46 ["style"]
      298 SETTABLEKS                       R31 R30 K46 ["style"]
      300 GETTABLEKS                       R32 R10 K13 ["icon"]
      302 GETTABLEKS                       R31 R32 K2 ["size"]
      304 SETTABLEKS                       R31 R30 K2 ["size"]
      306 CALL                             R28 2 1
      307 SETTABLEKS                       R28 R27 K35 ["Icon"]
      309 CALL                             R24 3 1
      310 JUMP                             ; [+21]
      311 GETUPVAL                         R25 2
      312 GETTABLEKS                       R24 R25 K24 ["createElement"]
      314 GETUPVAL                         R25 16
      315 DUPTABLE                         R26 K49 [{"LayoutOrder", "Image", "tag"}]
      316 LOADN                            R27 1
      317 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      319 GETTABLEKS                       R27 R2 K13 ["icon"]
      321 SETTABLEKS                       R27 R26 K48 ["Image"]
      323 GETTABLEKS                       R28 R10 K13 ["icon"]
      325 GETTABLEKS                       R27 R28 K28 ["tag"]
      327 SETTABLEKS                       R27 R26 K28 ["tag"]
      329 CALL                             R24 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R24
      332 SETTABLEKS                       R24 R23 K35 ["Icon"]
      334 GETUPVAL                         R25 2
      335 GETTABLEKS                       R24 R25 K24 ["createElement"]
      337 GETUPVAL                         R25 17
      338 DUPTABLE                         R26 K50 [{"LayoutOrder", "Text", "tag"}]
      339 LOADN                            R27 2
      340 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      342 GETTABLEKS                       R27 R2 K51 ["text"]
      344 SETTABLEKS                       R27 R26 K36 ["Text"]
      346 GETTABLEKS                       R28 R10 K51 ["text"]
      348 GETTABLEKS                       R27 R28 K28 ["tag"]
      350 SETTABLEKS                       R27 R26 K28 ["tag"]
      352 CALL                             R24 2 1
      353 SETTABLEKS                       R24 R23 K36 ["Text"]
      355 JUMPIFNOT                        R8 ; [+38]
      356 GETUPVAL                         R25 2
      357 GETTABLEKS                       R24 R25 K24 ["createElement"]
      359 GETUPVAL                         R25 15
      360 DUPTABLE                         R26 K53 [{"LayoutOrder", "name", "style", "size", "testId"}]
      361 LOADN                            R27 3
      362 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      364 GETUPVAL                         R29 9
      365 GETTABLEKS                       R28 R29 K35 ["Icon"]
      367 GETTABLEKS                       R27 R28 K54 ["ChevronSmallRight"]
      369 SETTABLEKS                       R27 R26 K45 ["name"]
      371 GETTABLEKS                       R28 R10 K55 ["check"]
      373 GETTABLEKS                       R27 R28 K46 ["style"]
      375 SETTABLEKS                       R27 R26 K46 ["style"]
      377 GETTABLEKS                       R28 R10 K56 ["chevron"]
      379 GETTABLEKS                       R27 R28 K2 ["size"]
      381 SETTABLEKS                       R27 R26 K2 ["size"]
      383 LOADK                            R28 K57 ["%*--chevron"]
      384 GETTABLEKS                       R30 R2 K52 ["testId"]
      386 NAMECALL                         R28 R28 K43 ["format"]
      388 CALL                             R28 2 1
      389 MOVE                             R27 R28
      390 SETTABLEKS                       R27 R26 K52 ["testId"]
      392 CALL                             R24 2 1
      393 JUMP                             ; [+1]
      394 LOADNIL                          R24
      395 SETTABLEKS                       R24 R23 K37 ["Chevron"]
      397 JUMPIF                           R8 ; [+41]
      398 GETTABLEKS                       R25 R2 K8 ["isChecked"]
      400 JUMPIFNOT                        R25 ; [+38]
      401 GETUPVAL                         R25 2
      402 GETTABLEKS                       R24 R25 K24 ["createElement"]
      404 GETUPVAL                         R25 15
      405 DUPTABLE                         R26 K53 [{"LayoutOrder", "name", "style", "size", "testId"}]
      406 LOADN                            R27 3
      407 SETTABLEKS                       R27 R26 K40 ["LayoutOrder"]
      409 GETUPVAL                         R29 9
      410 GETTABLEKS                       R28 R29 K35 ["Icon"]
      412 GETTABLEKS                       R27 R28 K38 ["Check"]
      414 SETTABLEKS                       R27 R26 K45 ["name"]
      416 GETTABLEKS                       R28 R10 K55 ["check"]
      418 GETTABLEKS                       R27 R28 K46 ["style"]
      420 SETTABLEKS                       R27 R26 K46 ["style"]
      422 GETTABLEKS                       R28 R10 K55 ["check"]
      424 GETTABLEKS                       R27 R28 K2 ["size"]
      426 SETTABLEKS                       R27 R26 K2 ["size"]
      428 LOADK                            R28 K58 ["%*--checkmark"]
      429 GETTABLEKS                       R30 R2 K52 ["testId"]
      431 NAMECALL                         R28 R28 K43 ["format"]
      433 CALL                             R28 2 1
      434 MOVE                             R27 R28
      435 SETTABLEKS                       R27 R26 K52 ["testId"]
      437 CALL                             R24 2 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R24
      440 SETTABLEKS                       R24 R23 K38 ["Check"]
      442 CALL                             R20 3 1
      443 JUMPIF                           R8 ; [+2]
      444 CLOSEUPVALS                      R13
      445 RETURN                           R20 1
      446 GETTABLEKS                       R22 R5 K59 ["Stroke"]
      448 GETTABLEKS                       R21 R22 K60 ["Standard"]
      450 GETTABLEKS                       R23 R10 K61 ["groupPadding"]
      452 GETTABLEKS                       R22 R23 K2 ["size"]
      454 GETUPVAL                         R24 2
      455 GETTABLEKS                       R23 R24 K24 ["createElement"]
      457 GETUPVAL                         R25 2
      458 GETTABLEKS                       R24 R25 K62 ["Fragment"]
      460 LOADNIL                          R25
      461 DUPTABLE                         R26 K65 [{"Item", "Submenu"}]
      462 SETTABLEKS                       R20 R26 K63 ["Item"]
      464 GETUPVAL                         R28 2
      465 GETTABLEKS                       R27 R28 K24 ["createElement"]
      467 GETUPVAL                         R29 18
      468 GETTABLEKS                       R28 R29 K66 ["Root"]
      470 DUPTABLE                         R29 K68 [{"isOpen", "testId"}]
      471 SETTABLEKS                       R9 R29 K67 ["isOpen"]
      473 LOADK                            R31 K69 ["%*--submenu"]
      474 GETTABLEKS                       R33 R2 K52 ["testId"]
      476 NAMECALL                         R31 R31 K43 ["format"]
      478 CALL                             R31 2 1
      479 MOVE                             R30 R31
      480 SETTABLEKS                       R30 R29 K52 ["testId"]
      482 DUPTABLE                         R30 K72 [{"Anchor", "Content"}]
      483 GETUPVAL                         R32 2
      484 GETTABLEKS                       R31 R32 K24 ["createElement"]
      486 GETUPVAL                         R33 18
      487 GETTABLEKS                       R32 R33 K70 ["Anchor"]
      489 DUPTABLE                         R33 K74 [{"anchorRef"}]
      490 SETTABLEKS                       R11 R33 K73 ["anchorRef"]
      492 CALL                             R31 2 1
      493 SETTABLEKS                       R31 R30 K70 ["Anchor"]
      495 GETUPVAL                         R32 2
      496 GETTABLEKS                       R31 R32 K24 ["createElement"]
      498 GETUPVAL                         R33 18
      499 GETTABLEKS                       R32 R33 K71 ["Content"]
      501 DUPTABLE                         R33 K81 [{"side", "align", "hasArrow", "onPressedOutside", "backgroundStyle", "radius"}]
      502 DUPTABLE                         R34 K84 [{"position", "offset"}]
      503 GETUPVAL                         R36 19
      504 GETTABLEKS                       R35 R36 K85 ["Right"]
      506 SETTABLEKS                       R35 R34 K82 ["position"]
      508 DIVK                             R36 R22 K86 [2]
      509 ADD                              R35 R36 R21
      510 SETTABLEKS                       R35 R34 K83 ["offset"]
      512 SETTABLEKS                       R34 R33 K75 ["side"]
      514 DUPTABLE                         R34 K84 [{"position", "offset"}]
      515 GETUPVAL                         R36 20
      516 GETTABLEKS                       R35 R36 K87 ["Start"]
      518 SETTABLEKS                       R35 R34 K82 ["position"]
      520 MINUS                            R35 R22
      521 SETTABLEKS                       R35 R34 K83 ["offset"]
      523 SETTABLEKS                       R34 R33 K76 ["align"]
      525 LOADB                            R34 0
      526 SETTABLEKS                       R34 R33 K77 ["hasArrow"]
      528 SETTABLEKS                       R16 R33 K78 ["onPressedOutside"]
      530 GETTABLEKS                       R36 R5 K88 ["Color"]
      532 GETTABLEKS                       R35 R36 K89 ["Surface"]
      534 GETTABLEKS                       R34 R35 K90 ["Surface_100"]
      536 SETTABLEKS                       R34 R33 K79 ["backgroundStyle"]
      538 GETUPVAL                         R35 21
      539 GETTABLEKS                       R34 R35 K91 ["Medium"]
      541 SETTABLEKS                       R34 R33 K80 ["radius"]
      543 GETUPVAL                         R35 2
      544 GETTABLEKS                       R34 R35 K24 ["createElement"]
      546 GETUPVAL                         R35 11
      547 DUPTABLE                         R36 K93 [{"tag", "InputSink"}]
      548 LOADK                            R37 K94 ["col auto-xy stroke-standard stroke-default radius-medium"]
      549 SETTABLEKS                       R37 R36 K28 ["tag"]
      551 GETUPVAL                         R37 22
      552 SETTABLEKS                       R37 R36 K92 ["InputSink"]
      554 GETUPVAL                         R38 2
      555 GETTABLEKS                       R37 R38 K24 ["createElement"]
      557 GETUPVAL                         R39 3
      558 GETTABLEKS                       R38 R39 K95 ["Provider"]
      560 DUPTABLE                         R39 K97 [{"value"}]
      561 DUPTABLE                         R40 K98 [{"onActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      562 GETTABLEKS                       R41 R3 K21 ["onActivated"]
      564 SETTABLEKS                       R41 R40 K21 ["onActivated"]
      566 SETTABLEKS                       R6 R40 K2 ["size"]
      568 SETTABLEKS                       R12 R40 K1 ["hasLeading"]
      570 SETTABLEKS                       R14 R40 K14 ["setHasLeading"]
      572 GETTABLEKS                       R41 R3 K6 ["hoverOpenPath"]
      574 SETTABLEKS                       R41 R40 K6 ["hoverOpenPath"]
      576 GETTABLEKS                       R41 R3 K18 ["hoverOpenAtDepth"]
      578 SETTABLEKS                       R41 R40 K18 ["hoverOpenAtDepth"]
      580 GETTABLEKS                       R41 R3 K19 ["hoverCloseAtDepth"]
      582 SETTABLEKS                       R41 R40 K19 ["hoverCloseAtDepth"]
      584 GETTABLEKS                       R41 R3 K22 ["hoverReset"]
      586 SETTABLEKS                       R41 R40 K22 ["hoverReset"]
      588 ADDK                             R41 R7 K99 [1]
      589 SETTABLEKS                       R41 R40 K3 ["depth"]
      591 SETTABLEKS                       R40 R39 K96 ["value"]
      593 GETTABLEKS                       R40 R2 K5 ["children"]
      595 CALL                             R37 3 -1
      596 CALL                             R34 -1 -1
      597 CALL                             R31 -1 1
      598 SETTABLEKS                       R31 R30 K71 ["Content"]
      600 CALL                             R27 3 1
      601 SETTABLEKS                       R27 R26 K64 ["Submenu"]
      603 CALL                             R23 3 -1
      604 CLOSEUPVALS                      R13
      605 RETURN                           R23 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["iconMigrationUtils"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K11 ["isBuilderOrMigratedIcon"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R8 R0 K9 ["Utility"]
       32 GETTABLEKS                       R7 R8 K12 ["Logger"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Constants"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Components"]
       44 GETTABLEKS                       R9 R10 K15 ["Icon"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K6 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Components"]
       51 GETTABLEKS                       R10 R11 K16 ["Image"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K6 [require]
       56 GETTABLEKS                       R12 R0 K14 ["Components"]
       58 GETTABLEKS                       R11 R12 K17 ["Popover"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R13 R0 K14 ["Components"]
       65 GETTABLEKS                       R12 R13 K18 ["Text"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R14 R0 K14 ["Components"]
       72 GETTABLEKS                       R13 R14 K19 ["Types"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K14 ["Components"]
       79 GETTABLEKS                       R14 R15 K20 ["View"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R17 R0 K21 ["Providers"]
       86 GETTABLEKS                       R16 R17 K22 ["Style"]
       88 GETTABLEKS                       R15 R16 K23 ["useTokens"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETTABLEKS                       R17 R0 K9 ["Utility"]
       95 GETTABLEKS                       R16 R17 K24 ["withCommonProps"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R18 R0 K9 ["Utility"]
      102 GETTABLEKS                       R17 R18 K25 ["withDefaults"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R18 R1 K26 ["ReactUtils"]
      109 CALL                             R17 1 1
      110 GETTABLEKS                       R18 R17 K27 ["useComposedRef"]
      112 GETIMPORT                        R19 K6 [require]
      114 GETTABLEKS                       R21 R0 K28 ["Enums"]
      116 GETTABLEKS                       R20 R21 K29 ["InputSize"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K6 [require]
      121 GETTABLEKS                       R22 R0 K28 ["Enums"]
      123 GETTABLEKS                       R21 R22 K30 ["PopoverAlign"]
      125 CALL                             R20 1 1
      126 GETIMPORT                        R21 K6 [require]
      128 GETTABLEKS                       R23 R0 K28 ["Enums"]
      130 GETTABLEKS                       R22 R23 K31 ["PopoverSide"]
      132 CALL                             R21 1 1
      133 GETIMPORT                        R22 K6 [require]
      135 GETTABLEKS                       R24 R0 K28 ["Enums"]
      137 GETTABLEKS                       R23 R24 K32 ["Radius"]
      139 CALL                             R22 1 1
      140 GETIMPORT                        R23 K6 [require]
      142 GETTABLEKS                       R25 R0 K9 ["Utility"]
      144 GETTABLEKS                       R24 R25 K33 ["Flags"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K6 [require]
      149 GETIMPORT                        R27 K1 [script]
      151 GETTABLEKS                       R26 R27 K4 ["Parent"]
      153 GETTABLEKS                       R25 R26 K34 ["BaseMenuContext"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K6 [require]
      158 GETIMPORT                        R28 K1 [script]
      160 GETTABLEKS                       R27 R28 K4 ["Parent"]
      162 GETTABLEKS                       R26 R27 K35 ["useBaseMenuItemVariants"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K6 [require]
      167 GETIMPORT                        R29 K1 [script]
      169 GETTABLEKS                       R28 R29 K4 ["Parent"]
      171 GETTABLEKS                       R27 R28 K36 ["useMenuItemHover"]
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
      188 CAPTURE                          VAL R23
      189 CAPTURE                          VAL R25
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R6
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
