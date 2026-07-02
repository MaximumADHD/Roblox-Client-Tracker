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
       25 JUMPIFNOT                        R10 ; [+13]
       26 GETUPVAL                         R10 9
       27 GETUPVAL                         R11 10
       28 GETTABLEKS                       R11 R11 K2 ["Popover"]
       30 DUPTABLE                         R12 K5 [{["stackAboveOwner"] = True}]
       31 CALL                             R10 2 1
       32 MOVE                             R9 R10
       33 GETUPVAL                         R10 11
       34 GETTABLEKS                       R10 R10 K6 ["getRelativeIndex"]
       36 MOVE                             R11 R9
       37 CALL                             R10 1 1
       38 MOVE                             R8 R10
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K7 ["useState"]
       42 LOADNIL                          R11
       43 CALL                             R10 1 2
       44 GETUPVAL                         R12 3
       45 GETTABLEKS                       R12 R12 K8 ["useImperativeHandle"]
       47 MOVE                             R13 R1
       48 NEWCLOSURE                       R14 P0
       49 CAPTURE                          VAL R10
       50 NEWTABLE                         R15 0 1
       52 MOVE                             R16 R10
       53 SETLIST                          R15 R16 1 [1]
       55 CALL                             R12 3 0
       56 GETTABLEKS                       R12 R7 K9 ["Size"]
       58 GETTABLEKS                       R12 R12 K10 ["Size_200"]
       60 MULK                             R13 R12 K11 [1.4142135623731]
       61 DIVK                             R14 R13 K12 [2]
       62 GETTABLEKS                       R15 R2 K13 ["backgroundStyle"]
       64 JUMPIF                           R15 ; [+6]
       65 GETTABLEKS                       R15 R7 K14 ["Color"]
       67 GETTABLEKS                       R15 R15 K15 ["Surface"]
       69 GETTABLEKS                       R15 R15 K16 ["Surface_100"]
       71 GETTABLEKS                       R18 R2 K17 ["side"]
       73 FASTCALL1                        TYPE R18 ; [+2]
       74 GETIMPORT                        R17 K19 [type]
       76 CALL                             R17 1 1
       77 JUMPIFNOTEQKS                    R17 K20 ["table"] ; [+6]
       79 GETTABLEKS                       R16 R2 K17 ["side"]
       81 GETTABLEKS                       R16 R16 K21 ["position"]
       83 JUMP                             ; [+6]
       84 GETTABLEKS                       R16 R2 K17 ["side"]
       86 JUMPIF                           R16 ; [+3]
       87 GETUPVAL                         R16 12
       88 GETTABLEKS                       R16 R16 K22 ["Bottom"]
       90 GETTABLEKS                       R19 R2 K23 ["align"]
       92 FASTCALL1                        TYPE R19 ; [+2]
       93 GETIMPORT                        R18 K19 [type]
       95 CALL                             R18 1 1
       96 JUMPIFNOTEQKS                    R18 K20 ["table"] ; [+6]
       98 GETTABLEKS                       R17 R2 K23 ["align"]
      100 GETTABLEKS                       R17 R17 K21 ["position"]
      102 JUMP                             ; [+6]
      103 GETTABLEKS                       R17 R2 K23 ["align"]
      105 JUMPIF                           R17 ; [+3]
      106 GETUPVAL                         R17 13
      107 GETTABLEKS                       R17 R17 K24 ["Center"]
      109 LOADN                            R18 0
      110 GETUPVAL                         R19 13
      111 GETTABLEKS                       R19 R19 K24 ["Center"]
      113 JUMPIFNOTEQ                      R17 R19 ; [+3]
      115 LOADK                            R18 K25 [0.5]
      116 JUMP                             ; [+6]
      117 GETUPVAL                         R19 13
      118 GETTABLEKS                       R19 R19 K26 ["End"]
      120 JUMPIFNOTEQ                      R17 R19 ; [+2]
      122 LOADN                            R18 1
      123 LOADNIL                          R19
      124 LOADNIL                          R20
      125 LOADNIL                          R21
      126 LOADNIL                          R22
      127 GETUPVAL                         R23 8
      128 GETTABLEKS                       R23 R23 K27 ["FoundationPopoverPluginVirtualAnchor"]
      130 JUMPIFNOT                        R23 ; [+13]
      131 GETUPVAL                         R23 14
      132 GETTABLEKS                       R24 R5 K28 ["anchor"]
      134 CALL                             R23 1 1
      135 GETTABLEKS                       R19 R23 K29 ["widget"]
      137 GETTABLEKS                       R20 R23 K30 ["element"]
      139 GETTABLEKS                       R21 R23 K31 ["isVirtual"]
      141 GETTABLEKS                       R22 R23 K32 ["isReady"]
      143 JUMP                             ; [+19]
      144 GETUPVAL                         R23 3
      145 GETTABLEKS                       R23 R23 K33 ["useRef"]
      147 GETTABLEKS                       R24 R5 K28 ["anchor"]
      149 CALL                             R23 1 1
      150 GETTABLEKS                       R24 R5 K28 ["anchor"]
      152 SETTABLEKS                       R24 R23 K34 ["current"]
      154 GETUPVAL                         R24 15
      155 DUPTABLE                         R25 K36 [{"forwardRef"}]
      156 SETTABLEKS                       R23 R25 K35 ["forwardRef"]
      158 CALL                             R24 1 1
      159 MOVE                             R19 R24
      160 LOADB                            R21 0
      161 LOADNIL                          R20
      162 LOADB                            R22 1
      163 GETUPVAL                         R24 8
      164 GETTABLEKS                       R24 R24 K27 ["FoundationPopoverPluginVirtualAnchor"]
      166 JUMPIFNOT                        R24 ; [+3]
      167 JUMPIFNOT                        R21 ; [+2]
      168 LOADB                            R23 0
      169 JUMP                             ; [+2]
      170 GETTABLEKS                       R23 R2 K37 ["hasArrow"]
      172 GETUPVAL                         R24 3
      173 GETTABLEKS                       R24 R24 K38 ["useMemo"]
      175 NEWCLOSURE                       R25 P1
      176 CAPTURE                          UPVAL U16
      177 CAPTURE                          VAL R2
      178 CAPTURE                          UPVAL U12
      179 CAPTURE                          UPVAL U13
      180 CAPTURE                          UPVAL U17
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R14
      183 NEWTABLE                         R26 0 4
      185 GETTABLEKS                       R27 R2 K17 ["side"]
      187 GETTABLEKS                       R28 R2 K23 ["align"]
      189 MOVE                             R29 R23
      190 MOVE                             R30 R14
      191 SETLIST                          R26 R27 4 [1]
      193 CALL                             R24 2 1
      194 GETUPVAL                         R25 3
      195 GETTABLEKS                       R25 R25 K39 ["useCallback"]
      197 NEWCLOSURE                       R26 P2
      198 CAPTURE                          UPVAL U8
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R3
      201 NEWTABLE                         R27 0 2
      203 GETTABLEKS                       R28 R3 K40 ["registerPopoverAsync"]
      205 MOVE                             R29 R4
      206 SETLIST                          R27 R28 2 [1]
      208 CALL                             R25 2 1
      209 GETUPVAL                         R26 3
      210 GETTABLEKS                       R26 R26 K33 ["useRef"]
      212 LOADB                            R27 0
      213 CALL                             R26 1 1
      214 GETUPVAL                         R27 3
      215 GETTABLEKS                       R27 R27 K41 ["useEffect"]
      217 NEWCLOSURE                       R28 P3
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R26
      220 CAPTURE                          UPVAL U18
      221 NEWTABLE                         R29 0 1
      223 GETTABLEKS                       R30 R2 K42 ["onPressedOutside"]
      225 SETLIST                          R29 R30 1 [1]
      227 CALL                             R27 2 0
      228 GETUPVAL                         R27 3
      229 GETTABLEKS                       R27 R27 K39 ["useCallback"]
      231 NEWCLOSURE                       R28 P4
      232 CAPTURE                          VAL R2
      233 NEWTABLE                         R29 0 1
      235 GETTABLEKS                       R30 R2 K42 ["onPressedOutside"]
      237 SETLIST                          R29 R30 1 [1]
      239 CALL                             R27 2 1
      240 GETUPVAL                         R29 8
      241 GETTABLEKS                       R29 R29 K1 ["FoundationPopoverPluginDepthPool"]
      243 JUMPIFNOT                        R29 ; [+6]
      244 JUMPIFEQKNIL                     R8 ; [+3]
      246 MOVE                             R28 R8
      247 JUMP                             ; [+3]
      248 LOADN                            R28 0
      249 JUMP                             ; [+1]
      250 MOVE                             R28 R8
      251 GETUPVAL                         R29 19
      252 DUPTABLE                         R30 K49 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position", "depth", "parentPopoverId"}]
      253 GETUPVAL                         R32 8
      254 GETTABLEKS                       R32 R32 K27 ["FoundationPopoverPluginVirtualAnchor"]
      256 JUMPIFNOT                        R32 ; [+4]
      257 GETTABLEKS                       R32 R5 K43 ["isOpen"]
      259 AND                              R31 R32 R22
      260 JUMP                             ; [+2]
      261 GETTABLEKS                       R31 R5 K43 ["isOpen"]
      263 SETTABLEKS                       R31 R30 K43 ["isOpen"]
      265 SETTABLEKS                       R27 R30 K44 ["onClose"]
      267 GETTABLEKS                       R31 R19 K50 ["uri"]
      269 SETTABLEKS                       R31 R30 K45 ["anchorUri"]
      271 SETTABLEKS                       R25 R30 K46 ["registerPanelAsync"]
      273 SETTABLEKS                       R24 R30 K21 ["position"]
      275 SETTABLEKS                       R28 R30 K47 ["depth"]
      277 GETUPVAL                         R32 8
      278 GETTABLEKS                       R32 R32 K1 ["FoundationPopoverPluginDepthPool"]
      280 JUMPIFNOT                        R32 ; [+2]
      281 MOVE                             R31 R4
      282 JUMP                             ; [+1]
      283 LOADNIL                          R31
      284 SETTABLEKS                       R31 R30 K48 ["parentPopoverId"]
      286 CALL                             R29 1 1
      287 GETUPVAL                         R30 20
      288 GETTABLEKS                       R31 R2 K17 ["side"]
      290 GETTABLEKS                       R32 R2 K23 ["align"]
      292 MOVE                             R33 R10
      293 JUMPIFNOT                        R23 ; [+2]
      294 MOVE                             R34 R14
      295 JUMP                             ; [+1]
      296 LOADN                            R34 0
      297 MOVE                             R35 R29
      298 CALL                             R30 5 2
      299 GETUPVAL                         R33 8
      300 GETTABLEKS                       R33 R33 K27 ["FoundationPopoverPluginVirtualAnchor"]
      302 JUMPIFNOT                        R33 ; [+14]
      303 JUMPIF                           R21 ; [+8]
      304 GETTABLEKS                       R34 R5 K28 ["anchor"]
      306 FASTCALL1                        TYPEOF R34 ; [+2]
      307 GETIMPORT                        R33 K52 [typeof]
      309 CALL                             R33 1 1
      310 JUMPIFEQKS                       R33 K53 ["Instance"] ; [+3]
      312 LOADNIL                          R32
      313 JUMP                             ; [+5]
      314 GETTABLEKS                       R32 R5 K28 ["anchor"]
      316 JUMP                             ; [+2]
      317 GETTABLEKS                       R32 R5 K28 ["anchor"]
      319 GETUPVAL                         R33 21
      320 MOVE                             R34 R31
      321 MOVE                             R35 R16
      322 GETTABLEKS                       R36 R2 K54 ["radius"]
      324 MOVE                             R37 R18
      325 MOVE                             R38 R14
      326 MOVE                             R39 R32
      327 CALL                             R33 6 1
      328 JUMPIFNOT                        R29 ; [+172]
      329 GETUPVAL                         R34 22
      330 GETTABLEKS                       R34 R34 K55 ["createPortal"]
      332 GETUPVAL                         R35 3
      333 GETTABLEKS                       R35 R35 K56 ["createElement"]
      335 GETUPVAL                         R36 3
      336 GETTABLEKS                       R36 R36 K57 ["Fragment"]
      338 LOADNIL                          R37
      339 DUPTABLE                         R38 K60 [{"StyleLink", "Container"}]
      340 GETUPVAL                         R39 3
      341 GETTABLEKS                       R39 R39 K56 ["createElement"]
      343 LOADK                            R40 K58 ["StyleLink"]
      344 DUPTABLE                         R41 K62 [{"StyleSheet"}]
      345 SETTABLEKS                       R6 R41 K61 ["StyleSheet"]
      347 CALL                             R39 2 1
      348 SETTABLEKS                       R39 R38 K58 ["StyleLink"]
      350 GETUPVAL                         R39 3
      351 GETTABLEKS                       R39 R39 K56 ["createElement"]
      353 GETUPVAL                         R40 23
      354 DUPTABLE                         R41 K64 [{"Size", "testId"}]
      355 SETTABLEKS                       R30 R41 K9 ["Size"]
      357 LOADK                            R43 K65 ["%*--container"]
      358 GETTABLEKS                       R45 R5 K63 ["testId"]
      360 NAMECALL                         R43 R43 K66 ["format"]
      362 CALL                             R43 2 1
      363 MOVE                             R42 R43
      364 SETTABLEKS                       R42 R41 K63 ["testId"]
      366 DUPTABLE                         R42 K70 [{"Shadow", "Arrow", "Content"}]
      367 GETUPVAL                         R43 3
      368 GETTABLEKS                       R43 R43 K56 ["createElement"]
      370 GETUPVAL                         R44 24
      371 DUPTABLE                         R45 K74 [{["contentSize"], ["position"], ["ZIndex"] = 1, ["testId"]}]
      372 SETTABLEKS                       R31 R45 K71 ["contentSize"]
      374 GETIMPORT                        R46 K77 [UDim2.fromOffset]
      376 GETUPVAL                         R48 17
      377 DIVK                             R47 R48 K12 [2]
      378 GETUPVAL                         R50 17
      379 DIVK                             R49 R50 K12 [2]
      380 ADDK                             R48 R49 K12 [2]
      381 CALL                             R46 2 1
      382 SETTABLEKS                       R46 R45 K21 ["position"]
      384 LOADK                            R47 K78 ["%*--shadow"]
      385 GETTABLEKS                       R49 R5 K63 ["testId"]
      387 NAMECALL                         R47 R47 K66 ["format"]
      389 CALL                             R47 2 1
      390 MOVE                             R46 R47
      391 SETTABLEKS                       R46 R45 K63 ["testId"]
      393 CALL                             R43 2 1
      394 SETTABLEKS                       R43 R42 K67 ["Shadow"]
      396 JUMPIFNOT                        R23 ; [+22]
      397 GETUPVAL                         R43 3
      398 GETTABLEKS                       R43 R43 K56 ["createElement"]
      400 GETUPVAL                         R44 25
      401 DUPTABLE                         R45 K80 [{["size"], ["position"], ["ZIndex"] = 2, ["backgroundStyle"], ["testId"]}]
      402 SETTABLEKS                       R12 R45 K79 ["size"]
      404 SETTABLEKS                       R33 R45 K21 ["position"]
      406 SETTABLEKS                       R15 R45 K13 ["backgroundStyle"]
      408 LOADK                            R47 K81 ["%*--arrow"]
      409 GETTABLEKS                       R49 R5 K63 ["testId"]
      411 NAMECALL                         R47 R47 K66 ["format"]
      413 CALL                             R47 2 1
      414 MOVE                             R46 R47
      415 SETTABLEKS                       R46 R45 K63 ["testId"]
      417 CALL                             R43 2 1
      418 JUMP                             ; [+1]
      419 LOADNIL                          R43
      420 SETTABLEKS                       R43 R42 K68 ["Arrow"]
      422 GETUPVAL                         R43 3
      423 GETTABLEKS                       R43 R43 K56 ["createElement"]
      425 GETUPVAL                         R44 23
      426 DUPTABLE                         R45 K86 [{["tag"], ["Position"], ["ref"], ["backgroundStyle"], ["ZIndex"] = 3, ["testId"]}]
      427 LOADK                            R47 K87 ["auto-xy %*"]
      428 GETUPVAL                         R50 26
      429 GETTABLEKS                       R51 R2 K54 ["radius"]
      431 GETTABLE                         R49 R50 R51
      432 NAMECALL                         R47 R47 K66 ["format"]
      434 CALL                             R47 2 1
      435 MOVE                             R46 R47
      436 SETTABLEKS                       R46 R45 K82 ["tag"]
      438 GETIMPORT                        R46 K77 [UDim2.fromOffset]
      440 GETUPVAL                         R47 17
      441 GETUPVAL                         R48 17
      442 CALL                             R46 2 1
      443 SETTABLEKS                       R46 R45 K83 ["Position"]
      445 SETTABLEKS                       R11 R45 K84 ["ref"]
      447 SETTABLEKS                       R15 R45 K13 ["backgroundStyle"]
      449 LOADK                            R47 K88 ["%*--content"]
      450 GETTABLEKS                       R49 R5 K63 ["testId"]
      452 NAMECALL                         R47 R47 K66 ["format"]
      454 CALL                             R47 2 1
      455 MOVE                             R46 R47
      456 SETTABLEKS                       R46 R45 K63 ["testId"]
      458 GETUPVAL                         R47 8
      459 GETTABLEKS                       R47 R47 K1 ["FoundationPopoverPluginDepthPool"]
      461 JUMPIFNOT                        R47 ; [+26]
      462 GETUPVAL                         R46 3
      463 GETTABLEKS                       R46 R46 K56 ["createElement"]
      465 GETUPVAL                         R47 4
      466 GETTABLEKS                       R47 R47 K89 ["Provider"]
      468 DUPTABLE                         R48 K91 [{"value"}]
      469 GETTABLEKS                       R49 R29 K92 ["popoverId"]
      471 SETTABLEKS                       R49 R48 K90 ["value"]
      473 DUPTABLE                         R49 K94 [{"Nested"}]
      474 GETUPVAL                         R50 3
      475 GETTABLEKS                       R50 R50 K56 ["createElement"]
      477 GETUPVAL                         R51 27
      478 DUPTABLE                         R52 K96 [{"owner"}]
      479 SETTABLEKS                       R9 R52 K95 ["owner"]
      481 GETTABLEKS                       R53 R2 K97 ["children"]
      483 CALL                             R50 3 1
      484 SETTABLEKS                       R50 R49 K93 ["Nested"]
      486 CALL                             R46 3 1
      487 JUMP                             ; [+2]
      488 GETTABLEKS                       R46 R2 K97 ["children"]
      490 CALL                             R43 3 1
      491 SETTABLEKS                       R43 R42 K69 ["Content"]
      493 CALL                             R39 3 1
      494 SETTABLEKS                       R39 R38 K59 ["Container"]
      496 CALL                             R35 3 1
      497 GETTABLEKS                       R36 R29 K98 ["container"]
      499 CALL                             R34 2 1
      500 JUMP                             ; [+1]
      501 LOADNIL                          R34
      502 GETUPVAL                         R35 8
      503 GETTABLEKS                       R35 R35 K27 ["FoundationPopoverPluginVirtualAnchor"]
      505 JUMPIFNOT                        R35 ; [+14]
      506 GETUPVAL                         R35 3
      507 GETTABLEKS                       R35 R35 K56 ["createElement"]
      509 GETUPVAL                         R36 3
      510 GETTABLEKS                       R36 R36 K57 ["Fragment"]
      512 LOADNIL                          R37
      513 DUPTABLE                         R38 K101 [{"Anchor", "Panel"}]
      514 SETTABLEKS                       R20 R38 K99 ["Anchor"]
      516 SETTABLEKS                       R34 R38 K100 ["Panel"]
      518 CALL                             R35 3 -1
      519 RETURN                           R35 -1
      520 JUMPIF                           R29 ; [+2]
      521 LOADNIL                          R35
      522 RETURN                           R35 1
      523 RETURN                           R34 1

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
      265 DUPTABLE                         R33 K54 [{["side"], ["align"], ["hasArrow"] = True, ["radius"]}]
      266 GETTABLEKS                       R34 R11 K55 ["Bottom"]
      268 SETTABLEKS                       R34 R33 K49 ["side"]
      270 GETTABLEKS                       R34 R6 K56 ["Center"]
      272 SETTABLEKS                       R34 R33 K50 ["align"]
      274 GETTABLEKS                       R34 R19 K57 ["Medium"]
      276 SETTABLEKS                       R34 R33 K53 ["radius"]
      278 NEWTABLE                         R34 4 0
      280 GETTABLEKS                       R35 R19 K58 ["Small"]
      282 LOADK                            R36 K59 ["radius-small"]
      283 SETTABLE                         R36 R34 R35
      284 GETTABLEKS                       R35 R19 K57 ["Medium"]
      286 LOADK                            R36 K60 ["radius-medium"]
      287 SETTABLE                         R36 R34 R35
      288 GETTABLEKS                       R35 R19 K61 ["Circle"]
      290 LOADK                            R36 K62 ["radius-circle"]
      291 SETTABLE                         R36 R34 R35
      292 DUPCLOSURE                       R35 K63 [PROTO_5]
      293 CAPTURE                          VAL R29
      294 CAPTURE                          VAL R33
      295 CAPTURE                          VAL R14
      296 CAPTURE                          VAL R2
      297 CAPTURE                          VAL R5
      298 CAPTURE                          VAL R9
      299 CAPTURE                          VAL R15
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R17
      302 CAPTURE                          VAL R24
      303 CAPTURE                          VAL R4
      304 CAPTURE                          VAL R22
      305 CAPTURE                          VAL R11
      306 CAPTURE                          VAL R6
      307 CAPTURE                          VAL R26
      308 CAPTURE                          VAL R28
      309 CAPTURE                          VAL R12
      310 CAPTURE                          VAL R32
      311 CAPTURE                          VAL R18
      312 CAPTURE                          VAL R13
      313 CAPTURE                          VAL R25
      314 CAPTURE                          VAL R23
      315 CAPTURE                          VAL R3
      316 CAPTURE                          VAL R21
      317 CAPTURE                          VAL R10
      318 CAPTURE                          VAL R7
      319 CAPTURE                          VAL R34
      320 CAPTURE                          VAL R30
      321 GETTABLEKS                       R36 R2 K64 ["forwardRef"]
      323 MOVE                             R37 R35
      324 CALL                             R36 1 -1
      325 RETURN                           R36 -1
