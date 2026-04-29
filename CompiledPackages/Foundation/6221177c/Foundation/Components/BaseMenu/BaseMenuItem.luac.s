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
       10 JUMPIFNOT                        R0 ; [+63]
       11 GETUPVAL                         R0 3
       12 JUMPIF                           R0 ; [+61]
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
       52 JUMP                             ; [+5]
       53 MOVE                             R1 R0
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R2 R3 K2 ["id"]
       57 CALL                             R1 1 0
       58 GETUPVAL                         R2 5
       59 GETTABLEKS                       R1 R2 K8 ["FoundationFixNestedSubMenuOnClick"]
       61 JUMPIFNOT                        R1 ; [+12]
       62 GETUPVAL                         R1 4
       63 LOADN                            R2 1
       64 JUMPIFNOTLT                      R2 R1 ; [+9]
       66 GETUPVAL                         R2 2
       67 GETTABLEKS                       R1 R2 K9 ["onNestedLeafActivated"]
       69 JUMPIFNOT                        R1 ; [+4]
       70 GETUPVAL                         R2 2
       71 GETTABLEKS                       R1 R2 K9 ["onNestedLeafActivated"]
       73 CALL                             R1 0 0
       74 RETURN                           R0 0

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
      133 NEWTABLE                         R17 0 10
      135 MOVE                             R18 R8
      136 GETTABLEKS                       R19 R2 K17 ["isDisabled"]
      138 MOVE                             R20 R9
      139 MOVE                             R21 R7
      140 GETTABLEKS                       R22 R2 K7 ["id"]
      142 GETTABLEKS                       R23 R2 K21 ["onActivated"]
      144 GETTABLEKS                       R24 R3 K21 ["onActivated"]
      146 GETTABLEKS                       R25 R3 K22 ["onNestedLeafActivated"]
      148 GETTABLEKS                       R26 R3 K18 ["hoverOpenAtDepth"]
      150 GETTABLEKS                       R27 R3 K23 ["hoverReset"]
      152 SETLIST                          R17 R18 10 [1]
      154 CALL                             R15 2 1
      155 LOADNIL                          R16
      156 GETUPVAL                         R18 5
      157 GETTABLEKS                       R17 R18 K4 ["FoundationBaseMenuSubmenuSupport"]
      159 JUMPIFNOT                        R17 ; [+13]
      160 GETUPVAL                         R18 2
      161 GETTABLEKS                       R17 R18 K11 ["useCallback"]
      163 NEWCLOSURE                       R18 P3
      164 CAPTURE                          VAL R3
      165 NEWTABLE                         R19 0 1
      167 GETTABLEKS                       R20 R3 K23 ["hoverReset"]
      169 SETLIST                          R19 R20 1 [1]
      171 CALL                             R17 2 1
      172 MOVE                             R16 R17
      173 GETUPVAL                         R18 2
      174 GETTABLEKS                       R17 R18 K24 ["useMemo"]
      176 NEWCLOSURE                       R18 P4
      177 CAPTURE                          VAL R5
      178 NEWTABLE                         R19 0 1
      180 MOVE                             R20 R5
      181 SETLIST                          R19 R20 1 [1]
      183 CALL                             R17 2 1
      184 GETUPVAL                         R19 2
      185 GETTABLEKS                       R18 R19 K24 ["useMemo"]
      187 NEWCLOSURE                       R19 P5
      188 CAPTURE                          UPVAL U9
      189 CAPTURE                          VAL R2
      190 NEWTABLE                         R20 0 1
      192 GETTABLEKS                       R21 R2 K13 ["icon"]
      194 SETLIST                          R20 R21 1 [1]
      196 CALL                             R18 2 1
      197 GETUPVAL                         R19 10
      198 MOVE                             R20 R11
      199 MOVE                             R21 R1
      200 CALL                             R19 2 1
      201 GETUPVAL                         R21 2
      202 GETTABLEKS                       R20 R21 K25 ["createElement"]
      204 GETUPVAL                         R21 11
      205 GETUPVAL                         R22 12
      206 MOVE                             R23 R2
      207 DUPTABLE                         R24 K31 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      208 GETTABLEKS                       R26 R2 K17 ["isDisabled"]
      210 JUMPIFNOT                        R26 ; [+4]
      211 GETUPVAL                         R26 13
      212 GETTABLEKS                       R25 R26 K32 ["DISABLED_TRANSPARENCY"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R25
      216 SETTABLEKS                       R25 R24 K26 ["GroupTransparency"]
      218 GETTABLEKS                       R25 R2 K17 ["isDisabled"]
      220 SETTABLEKS                       R25 R24 K17 ["isDisabled"]
      222 SETTABLEKS                       R15 R24 K21 ["onActivated"]
      224 DUPTABLE                         R25 K34 [{"Selectable"}]
      225 GETTABLEKS                       R27 R2 K17 ["isDisabled"]
      227 NOT                              R26 R27
      228 SETTABLEKS                       R26 R25 K33 ["Selectable"]
      230 SETTABLEKS                       R25 R24 K27 ["selection"]
      232 SETTABLEKS                       R17 R24 K28 ["cursor"]
      234 GETTABLEKS                       R26 R10 K35 ["container"]
      236 GETTABLEKS                       R25 R26 K29 ["tag"]
      238 SETTABLEKS                       R25 R24 K29 ["tag"]
      240 GETUPVAL                         R27 5
      241 GETTABLEKS                       R26 R27 K4 ["FoundationBaseMenuSubmenuSupport"]
      243 JUMPIFNOT                        R26 ; [+2]
      244 MOVE                             R25 R19
      245 JUMP                             ; [+1]
      246 MOVE                             R25 R1
      247 SETTABLEKS                       R25 R24 K30 ["ref"]
      249 CALL                             R22 2 1
      250 DUPTABLE                         R23 K40 [{"Icon", "Text", "Chevron", "Check"}]
      251 GETTABLEKS                       R25 R2 K13 ["icon"]
      253 JUMPIF                           R25 ; [+1]
      254 JUMPIFNOT                        R4 ; [+78]
      255 GETTABLEKS                       R25 R2 K13 ["icon"]
      257 JUMPIFNOT                        R25 ; [+55]
      258 GETUPVAL                         R25 14
      259 GETTABLEKS                       R26 R2 K13 ["icon"]
      261 CALL                             R25 1 1
      262 JUMPIFNOT                        R25 ; [+50]
      263 GETUPVAL                         R25 2
      264 GETTABLEKS                       R24 R25 K25 ["createElement"]
      266 GETUPVAL                         R25 11
      267 DUPTABLE                         R26 K42 [{"LayoutOrder", "tag"}]
      268 LOADN                            R27 1
      269 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      271 LOADK                            R28 K43 ["align-x-center align-y-center %*"]
      272 GETTABLEKS                       R31 R10 K13 ["icon"]
      274 GETTABLEKS                       R30 R31 K29 ["tag"]
      276 NAMECALL                         R28 R28 K44 ["format"]
      278 CALL                             R28 2 1
      279 MOVE                             R27 R28
      280 SETTABLEKS                       R27 R26 K29 ["tag"]
      282 DUPTABLE                         R27 K45 [{"Icon"}]
      283 GETUPVAL                         R29 2
      284 GETTABLEKS                       R28 R29 K25 ["createElement"]
      286 GETUPVAL                         R29 15
      287 DUPTABLE                         R30 K48 [{"name", "style", "size"}]
      288 JUMPIFNOT                        R18 ; [+3]
      289 GETTABLEKS                       R31 R18 K46 ["name"]
      291 JUMP                             ; [+2]
      292 GETTABLEKS                       R31 R2 K13 ["icon"]
      294 SETTABLEKS                       R31 R30 K46 ["name"]
      296 GETTABLEKS                       R32 R10 K13 ["icon"]
      298 GETTABLEKS                       R31 R32 K47 ["style"]
      300 SETTABLEKS                       R31 R30 K47 ["style"]
      302 GETTABLEKS                       R32 R10 K13 ["icon"]
      304 GETTABLEKS                       R31 R32 K2 ["size"]
      306 SETTABLEKS                       R31 R30 K2 ["size"]
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K36 ["Icon"]
      311 CALL                             R24 3 1
      312 JUMP                             ; [+21]
      313 GETUPVAL                         R25 2
      314 GETTABLEKS                       R24 R25 K25 ["createElement"]
      316 GETUPVAL                         R25 16
      317 DUPTABLE                         R26 K50 [{"LayoutOrder", "Image", "tag"}]
      318 LOADN                            R27 1
      319 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      321 GETTABLEKS                       R27 R2 K13 ["icon"]
      323 SETTABLEKS                       R27 R26 K49 ["Image"]
      325 GETTABLEKS                       R28 R10 K13 ["icon"]
      327 GETTABLEKS                       R27 R28 K29 ["tag"]
      329 SETTABLEKS                       R27 R26 K29 ["tag"]
      331 CALL                             R24 2 1
      332 JUMP                             ; [+1]
      333 LOADNIL                          R24
      334 SETTABLEKS                       R24 R23 K36 ["Icon"]
      336 GETUPVAL                         R25 2
      337 GETTABLEKS                       R24 R25 K25 ["createElement"]
      339 GETUPVAL                         R25 17
      340 DUPTABLE                         R26 K51 [{"LayoutOrder", "Text", "tag"}]
      341 LOADN                            R27 2
      342 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      344 GETTABLEKS                       R27 R2 K52 ["text"]
      346 SETTABLEKS                       R27 R26 K37 ["Text"]
      348 GETTABLEKS                       R28 R10 K52 ["text"]
      350 GETTABLEKS                       R27 R28 K29 ["tag"]
      352 SETTABLEKS                       R27 R26 K29 ["tag"]
      354 CALL                             R24 2 1
      355 SETTABLEKS                       R24 R23 K37 ["Text"]
      357 JUMPIFNOT                        R8 ; [+38]
      358 GETUPVAL                         R25 2
      359 GETTABLEKS                       R24 R25 K25 ["createElement"]
      361 GETUPVAL                         R25 15
      362 DUPTABLE                         R26 K54 [{"LayoutOrder", "name", "style", "size", "testId"}]
      363 LOADN                            R27 3
      364 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      366 GETUPVAL                         R29 9
      367 GETTABLEKS                       R28 R29 K36 ["Icon"]
      369 GETTABLEKS                       R27 R28 K55 ["ChevronSmallRight"]
      371 SETTABLEKS                       R27 R26 K46 ["name"]
      373 GETTABLEKS                       R28 R10 K56 ["check"]
      375 GETTABLEKS                       R27 R28 K47 ["style"]
      377 SETTABLEKS                       R27 R26 K47 ["style"]
      379 GETTABLEKS                       R28 R10 K57 ["chevron"]
      381 GETTABLEKS                       R27 R28 K2 ["size"]
      383 SETTABLEKS                       R27 R26 K2 ["size"]
      385 LOADK                            R28 K58 ["%*--chevron"]
      386 GETTABLEKS                       R30 R2 K53 ["testId"]
      388 NAMECALL                         R28 R28 K44 ["format"]
      390 CALL                             R28 2 1
      391 MOVE                             R27 R28
      392 SETTABLEKS                       R27 R26 K53 ["testId"]
      394 CALL                             R24 2 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R24
      397 SETTABLEKS                       R24 R23 K38 ["Chevron"]
      399 JUMPIF                           R8 ; [+41]
      400 GETTABLEKS                       R25 R2 K8 ["isChecked"]
      402 JUMPIFNOT                        R25 ; [+38]
      403 GETUPVAL                         R25 2
      404 GETTABLEKS                       R24 R25 K25 ["createElement"]
      406 GETUPVAL                         R25 15
      407 DUPTABLE                         R26 K54 [{"LayoutOrder", "name", "style", "size", "testId"}]
      408 LOADN                            R27 3
      409 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      411 GETUPVAL                         R29 9
      412 GETTABLEKS                       R28 R29 K36 ["Icon"]
      414 GETTABLEKS                       R27 R28 K39 ["Check"]
      416 SETTABLEKS                       R27 R26 K46 ["name"]
      418 GETTABLEKS                       R28 R10 K56 ["check"]
      420 GETTABLEKS                       R27 R28 K47 ["style"]
      422 SETTABLEKS                       R27 R26 K47 ["style"]
      424 GETTABLEKS                       R28 R10 K56 ["check"]
      426 GETTABLEKS                       R27 R28 K2 ["size"]
      428 SETTABLEKS                       R27 R26 K2 ["size"]
      430 LOADK                            R28 K59 ["%*--checkmark"]
      431 GETTABLEKS                       R30 R2 K53 ["testId"]
      433 NAMECALL                         R28 R28 K44 ["format"]
      435 CALL                             R28 2 1
      436 MOVE                             R27 R28
      437 SETTABLEKS                       R27 R26 K53 ["testId"]
      439 CALL                             R24 2 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R24
      442 SETTABLEKS                       R24 R23 K39 ["Check"]
      444 CALL                             R20 3 1
      445 JUMPIF                           R8 ; [+2]
      446 CLOSEUPVALS                      R13
      447 RETURN                           R20 1
      448 GETTABLEKS                       R22 R5 K60 ["Stroke"]
      450 GETTABLEKS                       R21 R22 K61 ["Standard"]
      452 GETTABLEKS                       R23 R10 K62 ["groupPadding"]
      454 GETTABLEKS                       R22 R23 K2 ["size"]
      456 GETUPVAL                         R24 2
      457 GETTABLEKS                       R23 R24 K25 ["createElement"]
      459 GETUPVAL                         R25 2
      460 GETTABLEKS                       R24 R25 K63 ["Fragment"]
      462 LOADNIL                          R25
      463 DUPTABLE                         R26 K66 [{"Item", "Submenu"}]
      464 SETTABLEKS                       R20 R26 K64 ["Item"]
      466 GETUPVAL                         R28 2
      467 GETTABLEKS                       R27 R28 K25 ["createElement"]
      469 GETUPVAL                         R29 18
      470 GETTABLEKS                       R28 R29 K67 ["Root"]
      472 DUPTABLE                         R29 K69 [{"isOpen", "testId"}]
      473 SETTABLEKS                       R9 R29 K68 ["isOpen"]
      475 LOADK                            R31 K70 ["%*--submenu"]
      476 GETTABLEKS                       R33 R2 K53 ["testId"]
      478 NAMECALL                         R31 R31 K44 ["format"]
      480 CALL                             R31 2 1
      481 MOVE                             R30 R31
      482 SETTABLEKS                       R30 R29 K53 ["testId"]
      484 DUPTABLE                         R30 K73 [{"Anchor", "Content"}]
      485 GETUPVAL                         R32 2
      486 GETTABLEKS                       R31 R32 K25 ["createElement"]
      488 GETUPVAL                         R33 18
      489 GETTABLEKS                       R32 R33 K71 ["Anchor"]
      491 DUPTABLE                         R33 K75 [{"anchorRef"}]
      492 SETTABLEKS                       R11 R33 K74 ["anchorRef"]
      494 CALL                             R31 2 1
      495 SETTABLEKS                       R31 R30 K71 ["Anchor"]
      497 GETUPVAL                         R32 2
      498 GETTABLEKS                       R31 R32 K25 ["createElement"]
      500 GETUPVAL                         R33 18
      501 GETTABLEKS                       R32 R33 K72 ["Content"]
      503 DUPTABLE                         R33 K82 [{"side", "align", "hasArrow", "onPressedOutside", "backgroundStyle", "radius"}]
      504 DUPTABLE                         R34 K85 [{"position", "offset"}]
      505 GETUPVAL                         R36 19
      506 GETTABLEKS                       R35 R36 K86 ["Right"]
      508 SETTABLEKS                       R35 R34 K83 ["position"]
      510 DIVK                             R36 R22 K87 [2]
      511 ADD                              R35 R36 R21
      512 SETTABLEKS                       R35 R34 K84 ["offset"]
      514 SETTABLEKS                       R34 R33 K76 ["side"]
      516 DUPTABLE                         R34 K85 [{"position", "offset"}]
      517 GETUPVAL                         R36 20
      518 GETTABLEKS                       R35 R36 K88 ["Start"]
      520 SETTABLEKS                       R35 R34 K83 ["position"]
      522 MINUS                            R35 R22
      523 SETTABLEKS                       R35 R34 K84 ["offset"]
      525 SETTABLEKS                       R34 R33 K77 ["align"]
      527 LOADB                            R34 0
      528 SETTABLEKS                       R34 R33 K78 ["hasArrow"]
      530 SETTABLEKS                       R16 R33 K79 ["onPressedOutside"]
      532 GETTABLEKS                       R36 R5 K89 ["Color"]
      534 GETTABLEKS                       R35 R36 K90 ["Surface"]
      536 GETTABLEKS                       R34 R35 K91 ["Surface_100"]
      538 SETTABLEKS                       R34 R33 K80 ["backgroundStyle"]
      540 GETUPVAL                         R35 21
      541 GETTABLEKS                       R34 R35 K92 ["Medium"]
      543 SETTABLEKS                       R34 R33 K81 ["radius"]
      545 GETUPVAL                         R35 2
      546 GETTABLEKS                       R34 R35 K25 ["createElement"]
      548 GETUPVAL                         R35 11
      549 DUPTABLE                         R36 K94 [{"tag", "InputSink"}]
      550 LOADK                            R37 K95 ["col auto-xy stroke-standard stroke-default radius-medium"]
      551 SETTABLEKS                       R37 R36 K29 ["tag"]
      553 GETUPVAL                         R37 22
      554 SETTABLEKS                       R37 R36 K93 ["InputSink"]
      556 GETUPVAL                         R38 2
      557 GETTABLEKS                       R37 R38 K25 ["createElement"]
      559 GETUPVAL                         R39 3
      560 GETTABLEKS                       R38 R39 K96 ["Provider"]
      562 DUPTABLE                         R39 K98 [{"value"}]
      563 DUPTABLE                         R40 K99 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      564 GETTABLEKS                       R41 R3 K21 ["onActivated"]
      566 SETTABLEKS                       R41 R40 K21 ["onActivated"]
      568 GETTABLEKS                       R41 R3 K22 ["onNestedLeafActivated"]
      570 SETTABLEKS                       R41 R40 K22 ["onNestedLeafActivated"]
      572 SETTABLEKS                       R6 R40 K2 ["size"]
      574 SETTABLEKS                       R12 R40 K1 ["hasLeading"]
      576 SETTABLEKS                       R14 R40 K14 ["setHasLeading"]
      578 GETTABLEKS                       R41 R3 K6 ["hoverOpenPath"]
      580 SETTABLEKS                       R41 R40 K6 ["hoverOpenPath"]
      582 GETTABLEKS                       R41 R3 K18 ["hoverOpenAtDepth"]
      584 SETTABLEKS                       R41 R40 K18 ["hoverOpenAtDepth"]
      586 GETTABLEKS                       R41 R3 K19 ["hoverCloseAtDepth"]
      588 SETTABLEKS                       R41 R40 K19 ["hoverCloseAtDepth"]
      590 GETTABLEKS                       R41 R3 K23 ["hoverReset"]
      592 SETTABLEKS                       R41 R40 K23 ["hoverReset"]
      594 ADDK                             R41 R7 K100 [1]
      595 SETTABLEKS                       R41 R40 K3 ["depth"]
      597 SETTABLEKS                       R40 R39 K97 ["value"]
      599 GETTABLEKS                       R40 R2 K5 ["children"]
      601 CALL                             R37 3 -1
      602 CALL                             R34 -1 -1
      603 CALL                             R31 -1 1
      604 SETTABLEKS                       R31 R30 K72 ["Content"]
      606 CALL                             R27 3 1
      607 SETTABLEKS                       R27 R26 K65 ["Submenu"]
      609 CALL                             R23 3 -1
      610 CLOSEUPVALS                      R13
      611 RETURN                           R23 -1

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
