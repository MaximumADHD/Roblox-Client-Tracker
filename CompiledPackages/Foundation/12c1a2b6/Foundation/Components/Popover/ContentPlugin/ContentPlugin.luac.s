PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["side"]
        4 JUMPIF                           R1 ; [+3]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Bottom"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["align"]
       11 JUMPIF                           R2 ; [+3]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["Start"]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 4
       17 GETUPVAL                         R6 5
       18 JUMPIFNOT                        R6 ; [+2]
       19 GETUPVAL                         R5 6
       20 JUMP                             ; [+1]
       21 LOADN                            R5 0
       22 CALL                             R0 5 -1
       23 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["FoundationPopoverPluginDepthPool"]
        3 JUMPIFNOT                        R5 ; [+2]
        4 GETUPVAL                         R4 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K1 ["registerPopoverAsync"]
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R2
       13 MOVE                             R9 R3
       14 MOVE                             R10 R4
       15 CALL                             R5 5 -1
       16 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPressedOutside"]
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIF                           R0 ; [+9]
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K1 ["current"]
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K2 ["PopoverContent rendered in a plugin context without onPressedOutside. In Studio, the QWidget popup will close on focus loss, but the parent's isOpen state will not update. Provide onPressedOutside to stay in sync."]
       14 NAMECALL                         R0 R0 K3 ["warning"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPressedOutside"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onPressedOutside"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useContext"]
        9 GETUPVAL                         R5 4
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K0 ["useContext"]
       14 GETUPVAL                         R6 5
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 6
       17 CALL                             R6 0 1
       18 GETUPVAL                         R7 7
       19 CALL                             R7 0 1
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 GETUPVAL                         R10 8
       23 GETTABLEKS                       R10 R10 K1 ["FoundationPopoverPluginDepthPool"]
       25 JUMPIFNOT                        R10 ; [+16]
       26 GETUPVAL                         R10 9
       27 GETUPVAL                         R11 10
       28 GETTABLEKS                       R11 R11 K2 ["Popover"]
       30 DUPTABLE                         R12 K4 [{"stackAboveOwner"}]
       31 LOADB                            R13 1
       32 SETTABLEKS                       R13 R12 K3 ["stackAboveOwner"]
       34 CALL                             R10 2 1
       35 MOVE                             R9 R10
       36 GETUPVAL                         R10 11
       37 GETTABLEKS                       R10 R10 K5 ["getRelativeIndex"]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 1
       41 MOVE                             R8 R10
       42 GETUPVAL                         R10 3
       43 GETTABLEKS                       R10 R10 K6 ["useState"]
       45 LOADNIL                          R11
       46 CALL                             R10 1 2
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K7 ["useImperativeHandle"]
       50 MOVE                             R13 R1
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          VAL R10
       53 NEWTABLE                         R15 0 1
       55 MOVE                             R16 R10
       56 SETLIST                          R15 R16 1 [1]
       58 CALL                             R12 3 0
       59 GETTABLEKS                       R12 R7 K8 ["Size"]
       61 GETTABLEKS                       R12 R12 K9 ["Size_200"]
       63 MULK                             R13 R12 K10 [1.4142135623731]
       64 DIVK                             R14 R13 K11 [2]
       65 GETTABLEKS                       R15 R2 K12 ["backgroundStyle"]
       67 JUMPIF                           R15 ; [+6]
       68 GETTABLEKS                       R15 R7 K13 ["Color"]
       70 GETTABLEKS                       R15 R15 K14 ["Surface"]
       72 GETTABLEKS                       R15 R15 K15 ["Surface_100"]
       74 GETTABLEKS                       R18 R2 K16 ["side"]
       76 FASTCALL1                        TYPE R18 ; [+2]
       77 GETIMPORT                        R17 K18 [type]
       79 CALL                             R17 1 1
       80 JUMPIFNOTEQKS                    R17 K19 ["table"] ; [+6]
       82 GETTABLEKS                       R16 R2 K16 ["side"]
       84 GETTABLEKS                       R16 R16 K20 ["position"]
       86 JUMP                             ; [+6]
       87 GETTABLEKS                       R16 R2 K16 ["side"]
       89 JUMPIF                           R16 ; [+3]
       90 GETUPVAL                         R16 12
       91 GETTABLEKS                       R16 R16 K21 ["Bottom"]
       93 GETTABLEKS                       R19 R2 K22 ["align"]
       95 FASTCALL1                        TYPE R19 ; [+2]
       96 GETIMPORT                        R18 K18 [type]
       98 CALL                             R18 1 1
       99 JUMPIFNOTEQKS                    R18 K19 ["table"] ; [+6]
      101 GETTABLEKS                       R17 R2 K22 ["align"]
      103 GETTABLEKS                       R17 R17 K20 ["position"]
      105 JUMP                             ; [+6]
      106 GETTABLEKS                       R17 R2 K22 ["align"]
      108 JUMPIF                           R17 ; [+3]
      109 GETUPVAL                         R17 13
      110 GETTABLEKS                       R17 R17 K23 ["Center"]
      112 LOADN                            R18 0
      113 GETUPVAL                         R19 13
      114 GETTABLEKS                       R19 R19 K23 ["Center"]
      116 JUMPIFNOTEQ                      R17 R19 ; [+3]
      118 LOADK                            R18 K24 [0.5]
      119 JUMP                             ; [+6]
      120 GETUPVAL                         R19 13
      121 GETTABLEKS                       R19 R19 K25 ["End"]
      123 JUMPIFNOTEQ                      R17 R19 ; [+2]
      125 LOADN                            R18 1
      126 LOADNIL                          R19
      127 LOADNIL                          R20
      128 LOADNIL                          R21
      129 LOADNIL                          R22
      130 GETUPVAL                         R23 8
      131 GETTABLEKS                       R23 R23 K26 ["FoundationPopoverPluginVirtualAnchor"]
      133 JUMPIFNOT                        R23 ; [+13]
      134 GETUPVAL                         R23 14
      135 GETTABLEKS                       R24 R5 K27 ["anchor"]
      137 CALL                             R23 1 1
      138 GETTABLEKS                       R19 R23 K28 ["widget"]
      140 GETTABLEKS                       R20 R23 K29 ["element"]
      142 GETTABLEKS                       R21 R23 K30 ["isVirtual"]
      144 GETTABLEKS                       R22 R23 K31 ["isReady"]
      146 JUMP                             ; [+19]
      147 GETUPVAL                         R23 3
      148 GETTABLEKS                       R23 R23 K32 ["useRef"]
      150 GETTABLEKS                       R24 R5 K27 ["anchor"]
      152 CALL                             R23 1 1
      153 GETTABLEKS                       R24 R5 K27 ["anchor"]
      155 SETTABLEKS                       R24 R23 K33 ["current"]
      157 GETUPVAL                         R24 15
      158 DUPTABLE                         R25 K35 [{"forwardRef"}]
      159 SETTABLEKS                       R23 R25 K34 ["forwardRef"]
      161 CALL                             R24 1 1
      162 MOVE                             R19 R24
      163 LOADB                            R21 0
      164 LOADNIL                          R20
      165 LOADB                            R22 1
      166 GETUPVAL                         R24 8
      167 GETTABLEKS                       R24 R24 K26 ["FoundationPopoverPluginVirtualAnchor"]
      169 JUMPIFNOT                        R24 ; [+3]
      170 JUMPIFNOT                        R21 ; [+2]
      171 LOADB                            R23 0
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R23 R2 K36 ["hasArrow"]
      175 GETUPVAL                         R24 3
      176 GETTABLEKS                       R24 R24 K37 ["useMemo"]
      178 NEWCLOSURE                       R25 P1
      179 CAPTURE                          UPVAL U16
      180 CAPTURE                          VAL R2
      181 CAPTURE                          UPVAL U12
      182 CAPTURE                          UPVAL U13
      183 CAPTURE                          UPVAL U17
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R14
      186 NEWTABLE                         R26 0 4
      188 GETTABLEKS                       R27 R2 K16 ["side"]
      190 GETTABLEKS                       R28 R2 K22 ["align"]
      192 MOVE                             R29 R23
      193 MOVE                             R30 R14
      194 SETLIST                          R26 R27 4 [1]
      196 CALL                             R24 2 1
      197 GETUPVAL                         R25 3
      198 GETTABLEKS                       R25 R25 K38 ["useCallback"]
      200 NEWCLOSURE                       R26 P2
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R3
      204 NEWTABLE                         R27 0 2
      206 GETTABLEKS                       R28 R3 K39 ["registerPopoverAsync"]
      208 MOVE                             R29 R4
      209 SETLIST                          R27 R28 2 [1]
      211 CALL                             R25 2 1
      212 GETUPVAL                         R26 3
      213 GETTABLEKS                       R26 R26 K32 ["useRef"]
      215 LOADB                            R27 0
      216 CALL                             R26 1 1
      217 GETUPVAL                         R27 3
      218 GETTABLEKS                       R27 R27 K40 ["useEffect"]
      220 NEWCLOSURE                       R28 P3
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R26
      223 CAPTURE                          UPVAL U18
      224 NEWTABLE                         R29 0 1
      226 GETTABLEKS                       R30 R2 K41 ["onPressedOutside"]
      228 SETLIST                          R29 R30 1 [1]
      230 CALL                             R27 2 0
      231 GETUPVAL                         R27 3
      232 GETTABLEKS                       R27 R27 K38 ["useCallback"]
      234 NEWCLOSURE                       R28 P4
      235 CAPTURE                          VAL R2
      236 NEWTABLE                         R29 0 1
      238 GETTABLEKS                       R30 R2 K41 ["onPressedOutside"]
      240 SETLIST                          R29 R30 1 [1]
      242 CALL                             R27 2 1
      243 GETUPVAL                         R29 8
      244 GETTABLEKS                       R29 R29 K1 ["FoundationPopoverPluginDepthPool"]
      246 JUMPIFNOT                        R29 ; [+6]
      247 JUMPIFEQKNIL                     R8 ; [+3]
      249 MOVE                             R28 R8
      250 JUMP                             ; [+3]
      251 LOADN                            R28 0
      252 JUMP                             ; [+1]
      253 MOVE                             R28 R8
      254 GETUPVAL                         R29 19
      255 DUPTABLE                         R30 K48 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position", "depth", "parentPopoverId"}]
      256 GETUPVAL                         R32 8
      257 GETTABLEKS                       R32 R32 K26 ["FoundationPopoverPluginVirtualAnchor"]
      259 JUMPIFNOT                        R32 ; [+4]
      260 GETTABLEKS                       R32 R5 K42 ["isOpen"]
      262 AND                              R31 R32 R22
      263 JUMP                             ; [+2]
      264 GETTABLEKS                       R31 R5 K42 ["isOpen"]
      266 SETTABLEKS                       R31 R30 K42 ["isOpen"]
      268 SETTABLEKS                       R27 R30 K43 ["onClose"]
      270 GETTABLEKS                       R31 R19 K49 ["uri"]
      272 SETTABLEKS                       R31 R30 K44 ["anchorUri"]
      274 SETTABLEKS                       R25 R30 K45 ["registerPanelAsync"]
      276 SETTABLEKS                       R24 R30 K20 ["position"]
      278 SETTABLEKS                       R28 R30 K46 ["depth"]
      280 GETUPVAL                         R32 8
      281 GETTABLEKS                       R32 R32 K1 ["FoundationPopoverPluginDepthPool"]
      283 JUMPIFNOT                        R32 ; [+2]
      284 MOVE                             R31 R4
      285 JUMP                             ; [+1]
      286 LOADNIL                          R31
      287 SETTABLEKS                       R31 R30 K47 ["parentPopoverId"]
      289 CALL                             R29 1 1
      290 GETUPVAL                         R30 20
      291 GETTABLEKS                       R31 R2 K16 ["side"]
      293 GETTABLEKS                       R32 R2 K22 ["align"]
      295 MOVE                             R33 R10
      296 JUMPIFNOT                        R23 ; [+2]
      297 MOVE                             R34 R14
      298 JUMP                             ; [+1]
      299 LOADN                            R34 0
      300 MOVE                             R35 R29
      301 CALL                             R30 5 2
      302 GETUPVAL                         R33 8
      303 GETTABLEKS                       R33 R33 K26 ["FoundationPopoverPluginVirtualAnchor"]
      305 JUMPIFNOT                        R33 ; [+14]
      306 JUMPIF                           R21 ; [+8]
      307 GETTABLEKS                       R34 R5 K27 ["anchor"]
      309 FASTCALL1                        TYPEOF R34 ; [+2]
      310 GETIMPORT                        R33 K51 [typeof]
      312 CALL                             R33 1 1
      313 JUMPIFEQKS                       R33 K52 ["Instance"] ; [+3]
      315 LOADNIL                          R32
      316 JUMP                             ; [+5]
      317 GETTABLEKS                       R32 R5 K27 ["anchor"]
      319 JUMP                             ; [+2]
      320 GETTABLEKS                       R32 R5 K27 ["anchor"]
      322 GETUPVAL                         R33 21
      323 MOVE                             R34 R31
      324 MOVE                             R35 R16
      325 GETTABLEKS                       R36 R2 K53 ["radius"]
      327 MOVE                             R37 R18
      328 MOVE                             R38 R14
      329 MOVE                             R39 R32
      330 CALL                             R33 6 1
      331 JUMPIFNOT                        R29 ; [+181]
      332 GETUPVAL                         R34 22
      333 GETTABLEKS                       R34 R34 K54 ["createPortal"]
      335 GETUPVAL                         R35 3
      336 GETTABLEKS                       R35 R35 K55 ["createElement"]
      338 GETUPVAL                         R36 3
      339 GETTABLEKS                       R36 R36 K56 ["Fragment"]
      341 LOADNIL                          R37
      342 DUPTABLE                         R38 K59 [{"StyleLink", "Container"}]
      343 GETUPVAL                         R39 3
      344 GETTABLEKS                       R39 R39 K55 ["createElement"]
      346 LOADK                            R40 K57 ["StyleLink"]
      347 DUPTABLE                         R41 K61 [{"StyleSheet"}]
      348 SETTABLEKS                       R6 R41 K60 ["StyleSheet"]
      350 CALL                             R39 2 1
      351 SETTABLEKS                       R39 R38 K57 ["StyleLink"]
      353 GETUPVAL                         R39 3
      354 GETTABLEKS                       R39 R39 K55 ["createElement"]
      356 GETUPVAL                         R40 23
      357 DUPTABLE                         R41 K63 [{"Size", "testId"}]
      358 SETTABLEKS                       R30 R41 K8 ["Size"]
      360 LOADK                            R43 K64 ["%*--container"]
      361 GETTABLEKS                       R45 R5 K62 ["testId"]
      363 NAMECALL                         R43 R43 K65 ["format"]
      365 CALL                             R43 2 1
      366 MOVE                             R42 R43
      367 SETTABLEKS                       R42 R41 K62 ["testId"]
      369 DUPTABLE                         R42 K69 [{"Shadow", "Arrow", "Content"}]
      370 GETUPVAL                         R43 3
      371 GETTABLEKS                       R43 R43 K55 ["createElement"]
      373 GETUPVAL                         R44 24
      374 DUPTABLE                         R45 K72 [{"contentSize", "position", "ZIndex", "testId"}]
      375 SETTABLEKS                       R31 R45 K70 ["contentSize"]
      377 GETIMPORT                        R46 K75 [UDim2.fromOffset]
      379 GETUPVAL                         R48 17
      380 DIVK                             R47 R48 K11 [2]
      381 GETUPVAL                         R50 17
      382 DIVK                             R49 R50 K11 [2]
      383 ADDK                             R48 R49 K11 [2]
      384 CALL                             R46 2 1
      385 SETTABLEKS                       R46 R45 K20 ["position"]
      387 LOADN                            R46 1
      388 SETTABLEKS                       R46 R45 K71 ["ZIndex"]
      390 LOADK                            R47 K76 ["%*--shadow"]
      391 GETTABLEKS                       R49 R5 K62 ["testId"]
      393 NAMECALL                         R47 R47 K65 ["format"]
      395 CALL                             R47 2 1
      396 MOVE                             R46 R47
      397 SETTABLEKS                       R46 R45 K62 ["testId"]
      399 CALL                             R43 2 1
      400 SETTABLEKS                       R43 R42 K66 ["Shadow"]
      402 JUMPIFNOT                        R23 ; [+25]
      403 GETUPVAL                         R43 3
      404 GETTABLEKS                       R43 R43 K55 ["createElement"]
      406 GETUPVAL                         R44 25
      407 DUPTABLE                         R45 K78 [{"size", "position", "ZIndex", "backgroundStyle", "testId"}]
      408 SETTABLEKS                       R12 R45 K77 ["size"]
      410 SETTABLEKS                       R33 R45 K20 ["position"]
      412 LOADN                            R46 2
      413 SETTABLEKS                       R46 R45 K71 ["ZIndex"]
      415 SETTABLEKS                       R15 R45 K12 ["backgroundStyle"]
      417 LOADK                            R47 K79 ["%*--arrow"]
      418 GETTABLEKS                       R49 R5 K62 ["testId"]
      420 NAMECALL                         R47 R47 K65 ["format"]
      422 CALL                             R47 2 1
      423 MOVE                             R46 R47
      424 SETTABLEKS                       R46 R45 K62 ["testId"]
      426 CALL                             R43 2 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R43
      429 SETTABLEKS                       R43 R42 K67 ["Arrow"]
      431 GETUPVAL                         R43 3
      432 GETTABLEKS                       R43 R43 K55 ["createElement"]
      434 GETUPVAL                         R44 23
      435 DUPTABLE                         R45 K83 [{"tag", "Position", "ref", "backgroundStyle", "ZIndex", "testId"}]
      436 LOADK                            R47 K84 ["auto-xy %*"]
      437 GETUPVAL                         R50 26
      438 GETTABLEKS                       R51 R2 K53 ["radius"]
      440 GETTABLE                         R49 R50 R51
      441 NAMECALL                         R47 R47 K65 ["format"]
      443 CALL                             R47 2 1
      444 MOVE                             R46 R47
      445 SETTABLEKS                       R46 R45 K80 ["tag"]
      447 GETIMPORT                        R46 K75 [UDim2.fromOffset]
      449 GETUPVAL                         R47 17
      450 GETUPVAL                         R48 17
      451 CALL                             R46 2 1
      452 SETTABLEKS                       R46 R45 K81 ["Position"]
      454 SETTABLEKS                       R11 R45 K82 ["ref"]
      456 SETTABLEKS                       R15 R45 K12 ["backgroundStyle"]
      458 LOADN                            R46 3
      459 SETTABLEKS                       R46 R45 K71 ["ZIndex"]
      461 LOADK                            R47 K85 ["%*--content"]
      462 GETTABLEKS                       R49 R5 K62 ["testId"]
      464 NAMECALL                         R47 R47 K65 ["format"]
      466 CALL                             R47 2 1
      467 MOVE                             R46 R47
      468 SETTABLEKS                       R46 R45 K62 ["testId"]
      470 GETUPVAL                         R47 8
      471 GETTABLEKS                       R47 R47 K1 ["FoundationPopoverPluginDepthPool"]
      473 JUMPIFNOT                        R47 ; [+26]
      474 GETUPVAL                         R46 3
      475 GETTABLEKS                       R46 R46 K55 ["createElement"]
      477 GETUPVAL                         R47 4
      478 GETTABLEKS                       R47 R47 K86 ["Provider"]
      480 DUPTABLE                         R48 K88 [{"value"}]
      481 GETTABLEKS                       R49 R29 K89 ["popoverId"]
      483 SETTABLEKS                       R49 R48 K87 ["value"]
      485 DUPTABLE                         R49 K91 [{"Nested"}]
      486 GETUPVAL                         R50 3
      487 GETTABLEKS                       R50 R50 K55 ["createElement"]
      489 GETUPVAL                         R51 27
      490 DUPTABLE                         R52 K93 [{"owner"}]
      491 SETTABLEKS                       R9 R52 K92 ["owner"]
      493 GETTABLEKS                       R53 R2 K94 ["children"]
      495 CALL                             R50 3 1
      496 SETTABLEKS                       R50 R49 K90 ["Nested"]
      498 CALL                             R46 3 1
      499 JUMP                             ; [+2]
      500 GETTABLEKS                       R46 R2 K94 ["children"]
      502 CALL                             R43 3 1
      503 SETTABLEKS                       R43 R42 K68 ["Content"]
      505 CALL                             R39 3 1
      506 SETTABLEKS                       R39 R38 K58 ["Container"]
      508 CALL                             R35 3 1
      509 GETTABLEKS                       R36 R29 K95 ["container"]
      511 CALL                             R34 2 1
      512 JUMP                             ; [+1]
      513 LOADNIL                          R34
      514 GETUPVAL                         R35 8
      515 GETTABLEKS                       R35 R35 K26 ["FoundationPopoverPluginVirtualAnchor"]
      517 JUMPIFNOT                        R35 ; [+14]
      518 GETUPVAL                         R35 3
      519 GETTABLEKS                       R35 R35 K55 ["createElement"]
      521 GETUPVAL                         R36 3
      522 GETTABLEKS                       R36 R36 K56 ["Fragment"]
      524 LOADNIL                          R37
      525 DUPTABLE                         R38 K98 [{"Anchor", "Panel"}]
      526 SETTABLEKS                       R20 R38 K96 ["Anchor"]
      528 SETTABLEKS                       R34 R38 K97 ["Panel"]
      530 CALL                             R35 3 -1
      531 RETURN                           R35 -1
      532 JUMPIF                           R29 ; [+2]
      533 LOADNIL                          R35
      534 RETURN                           R35 1
      535 RETURN                           R34 1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactRoblox"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["ElevationLayer"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Providers"]
       30 GETTABLEKS                       R6 R6 K12 ["StudioPanels"]
       32 GETTABLEKS                       R6 R6 K13 ["PluginPopoverParentContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Enums"]
       39 GETTABLEKS                       R7 R7 K14 ["PopoverAlign"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R8 K1 [script]
       46 GETTABLEKS                       R8 R8 K4 ["Parent"]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 GETTABLEKS                       R8 R8 K15 ["PopoverArrow"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 GETTABLEKS                       R9 R9 K4 ["Parent"]
       61 GETTABLEKS                       R9 R9 K16 ["Content"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETIMPORT                        R10 K1 [script]
       68 GETTABLEKS                       R10 R10 K4 ["Parent"]
       70 GETTABLEKS                       R10 R10 K4 ["Parent"]
       72 GETTABLEKS                       R10 R10 K17 ["PopoverContext"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETIMPORT                        R11 K1 [script]
       79 GETTABLEKS                       R11 R11 K4 ["Parent"]
       81 GETTABLEKS                       R11 R11 K4 ["Parent"]
       83 GETTABLEKS                       R11 R11 K18 ["PopoverShadow"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K6 [require]
       88 GETTABLEKS                       R12 R0 K9 ["Enums"]
       90 GETTABLEKS                       R12 R12 K19 ["PopoverSide"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K6 [require]
       95 GETIMPORT                        R13 K1 [script]
       97 GETTABLEKS                       R13 R13 K4 ["Parent"]
       99 GETTABLEKS                       R13 R13 K20 ["getPanelPosition"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K6 [require]
      104 GETTABLEKS                       R14 R0 K11 ["Providers"]
      106 GETTABLEKS                       R14 R14 K12 ["StudioPanels"]
      108 GETTABLEKS                       R14 R14 K21 ["usePanel"]
      110 CALL                             R13 1 1
      111 GETIMPORT                        R14 K6 [require]
      113 GETTABLEKS                       R15 R0 K11 ["Providers"]
      115 GETTABLEKS                       R15 R15 K12 ["StudioPanels"]
      117 GETTABLEKS                       R15 R15 K22 ["usePanelsContext"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K6 [require]
      122 GETTABLEKS                       R16 R0 K11 ["Providers"]
      124 GETTABLEKS                       R16 R16 K23 ["Style"]
      126 GETTABLEKS                       R16 R16 K24 ["StyleSheetContext"]
      128 CALL                             R15 1 1
      129 GETTABLEKS                       R15 R15 K25 ["useStyleSheet"]
      131 GETIMPORT                        R16 K6 [require]
      133 GETTABLEKS                       R17 R0 K26 ["Constants"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K6 [require]
      138 GETTABLEKS                       R18 R0 K27 ["Utility"]
      140 GETTABLEKS                       R18 R18 K28 ["Flags"]
      142 CALL                             R17 1 1
      143 GETIMPORT                        R18 K6 [require]
      145 GETTABLEKS                       R19 R0 K27 ["Utility"]
      147 GETTABLEKS                       R19 R19 K29 ["Logger"]
      149 CALL                             R18 1 1
      150 GETIMPORT                        R19 K6 [require]
      152 GETTABLEKS                       R20 R0 K9 ["Enums"]
      154 GETTABLEKS                       R20 R20 K30 ["Radius"]
      156 CALL                             R19 1 1
      157 GETIMPORT                        R20 K6 [require]
      159 GETTABLEKS                       R21 R0 K27 ["Utility"]
      161 GETTABLEKS                       R21 R21 K31 ["Plugin"]
      163 GETTABLEKS                       R21 R21 K32 ["StudioUri"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K6 [require]
      168 GETTABLEKS                       R22 R0 K33 ["Components"]
      170 GETTABLEKS                       R22 R22 K34 ["View"]
      172 CALL                             R21 1 1
      173 GETIMPORT                        R22 K6 [require]
      175 GETTABLEKS                       R23 R0 K11 ["Providers"]
      177 GETTABLEKS                       R23 R23 K35 ["Elevation"]
      179 GETTABLEKS                       R23 R23 K36 ["elevation"]
      181 CALL                             R22 1 1
      182 GETIMPORT                        R23 K6 [require]
      184 GETIMPORT                        R24 K1 [script]
      186 GETTABLEKS                       R24 R24 K4 ["Parent"]
      188 GETTABLEKS                       R24 R24 K37 ["useArrowPosition"]
      190 CALL                             R23 1 1
      191 GETIMPORT                        R24 K6 [require]
      193 GETTABLEKS                       R25 R0 K11 ["Providers"]
      195 GETTABLEKS                       R25 R25 K35 ["Elevation"]
      197 GETTABLEKS                       R25 R25 K38 ["useElevation"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K6 [require]
      202 GETIMPORT                        R26 K1 [script]
      204 GETTABLEKS                       R26 R26 K4 ["Parent"]
      206 GETTABLEKS                       R26 R26 K39 ["usePanelSizing"]
      208 CALL                             R25 1 1
      209 GETIMPORT                        R26 K6 [require]
      211 GETIMPORT                        R27 K1 [script]
      213 GETTABLEKS                       R27 R27 K4 ["Parent"]
      215 GETTABLEKS                       R27 R27 K40 ["usePluginAnchor"]
      217 CALL                             R26 1 1
      218 GETIMPORT                        R27 K6 [require]
      220 GETTABLEKS                       R28 R0 K11 ["Providers"]
      222 GETTABLEKS                       R28 R28 K23 ["Style"]
      224 GETTABLEKS                       R28 R28 K41 ["useTokens"]
      226 CALL                             R27 1 1
      227 GETIMPORT                        R28 K6 [require]
      229 GETTABLEKS                       R29 R0 K11 ["Providers"]
      231 GETTABLEKS                       R29 R29 K42 ["StudioWidgets"]
      233 GETTABLEKS                       R29 R29 K43 ["useUniqueWidget"]
      235 CALL                             R28 1 1
      236 GETIMPORT                        R29 K6 [require]
      238 GETTABLEKS                       R30 R0 K27 ["Utility"]
      240 GETTABLEKS                       R30 R30 K44 ["withDefaults"]
      242 CALL                             R29 1 1
      243 GETIMPORT                        R30 K6 [require]
      245 GETTABLEKS                       R31 R0 K11 ["Providers"]
      247 GETTABLEKS                       R31 R31 K35 ["Elevation"]
      249 GETTABLEKS                       R31 R31 K45 ["ElevationProvider"]
      251 CALL                             R30 1 1
      252 GETTABLEKS                       R30 R30 K46 ["ElevationOwnerScope"]
      254 GETIMPORT                        R31 K6 [require]
      256 GETTABLEKS                       R32 R0 K11 ["Providers"]
      258 GETTABLEKS                       R32 R32 K12 ["StudioPanels"]
      260 GETTABLEKS                       R32 R32 K47 ["Types"]
      262 CALL                             R31 1 1
      263 GETTABLEKS                       R32 R16 K48 ["SHADOW_SIZE"]
      265 DUPTABLE                         R33 K53 [{"side", "align", "hasArrow", "radius"}]
      266 GETTABLEKS                       R34 R11 K54 ["Bottom"]
      268 SETTABLEKS                       R34 R33 K49 ["side"]
      270 GETTABLEKS                       R34 R6 K55 ["Center"]
      272 SETTABLEKS                       R34 R33 K50 ["align"]
      274 LOADB                            R34 1
      275 SETTABLEKS                       R34 R33 K51 ["hasArrow"]
      277 GETTABLEKS                       R34 R19 K56 ["Medium"]
      279 SETTABLEKS                       R34 R33 K52 ["radius"]
      281 NEWTABLE                         R34 4 0
      283 GETTABLEKS                       R35 R19 K57 ["Small"]
      285 LOADK                            R36 K58 ["radius-small"]
      286 SETTABLE                         R36 R34 R35
      287 GETTABLEKS                       R35 R19 K56 ["Medium"]
      289 LOADK                            R36 K59 ["radius-medium"]
      290 SETTABLE                         R36 R34 R35
      291 GETTABLEKS                       R35 R19 K60 ["Circle"]
      293 LOADK                            R36 K61 ["radius-circle"]
      294 SETTABLE                         R36 R34 R35
      295 DUPCLOSURE                       R35 K62 [PROTO_5]
      296 CAPTURE                          VAL R29
      297 CAPTURE                          VAL R33
      298 CAPTURE                          VAL R14
      299 CAPTURE                          VAL R2
      300 CAPTURE                          VAL R5
      301 CAPTURE                          VAL R9
      302 CAPTURE                          VAL R15
      303 CAPTURE                          VAL R27
      304 CAPTURE                          VAL R17
      305 CAPTURE                          VAL R24
      306 CAPTURE                          VAL R4
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R11
      309 CAPTURE                          VAL R6
      310 CAPTURE                          VAL R26
      311 CAPTURE                          VAL R28
      312 CAPTURE                          VAL R12
      313 CAPTURE                          VAL R32
      314 CAPTURE                          VAL R18
      315 CAPTURE                          VAL R13
      316 CAPTURE                          VAL R25
      317 CAPTURE                          VAL R23
      318 CAPTURE                          VAL R3
      319 CAPTURE                          VAL R21
      320 CAPTURE                          VAL R10
      321 CAPTURE                          VAL R7
      322 CAPTURE                          VAL R34
      323 CAPTURE                          VAL R30
      324 GETTABLEKS                       R36 R2 K63 ["forwardRef"]
      326 MOVE                             R37 R35
      327 CALL                             R36 1 -1
      328 RETURN                           R36 -1
