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
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K4 ["hasArrow"]
       20 JUMPIFNOT                        R6 ; [+2]
       21 GETUPVAL                         R5 5
       22 JUMP                             ; [+1]
       23 LOADN                            R5 0
       24 CALL                             R0 5 -1
       25 RETURN                           R0 -1

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
      126 GETUPVAL                         R19 3
      127 GETTABLEKS                       R19 R19 K26 ["useRef"]
      129 GETTABLEKS                       R20 R5 K27 ["anchor"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R20 R5 K27 ["anchor"]
      134 SETTABLEKS                       R20 R19 K28 ["current"]
      136 GETUPVAL                         R20 14
      137 DUPTABLE                         R21 K30 [{"forwardRef"}]
      138 SETTABLEKS                       R19 R21 K29 ["forwardRef"]
      140 CALL                             R20 1 1
      141 GETUPVAL                         R21 3
      142 GETTABLEKS                       R21 R21 K31 ["useMemo"]
      144 NEWCLOSURE                       R22 P1
      145 CAPTURE                          UPVAL U15
      146 CAPTURE                          VAL R2
      147 CAPTURE                          UPVAL U12
      148 CAPTURE                          UPVAL U13
      149 CAPTURE                          UPVAL U16
      150 CAPTURE                          VAL R14
      151 NEWTABLE                         R23 0 4
      153 GETTABLEKS                       R24 R2 K16 ["side"]
      155 GETTABLEKS                       R25 R2 K22 ["align"]
      157 GETTABLEKS                       R26 R2 K32 ["hasArrow"]
      159 MOVE                             R27 R14
      160 SETLIST                          R23 R24 4 [1]
      162 CALL                             R21 2 1
      163 GETUPVAL                         R22 3
      164 GETTABLEKS                       R22 R22 K33 ["useCallback"]
      166 NEWCLOSURE                       R23 P2
      167 CAPTURE                          UPVAL U8
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R3
      170 NEWTABLE                         R24 0 2
      172 GETTABLEKS                       R25 R3 K34 ["registerPopoverAsync"]
      174 MOVE                             R26 R4
      175 SETLIST                          R24 R25 2 [1]
      177 CALL                             R22 2 1
      178 GETUPVAL                         R23 3
      179 GETTABLEKS                       R23 R23 K26 ["useRef"]
      181 LOADB                            R24 0
      182 CALL                             R23 1 1
      183 GETUPVAL                         R24 3
      184 GETTABLEKS                       R24 R24 K35 ["useEffect"]
      186 NEWCLOSURE                       R25 P3
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R23
      189 CAPTURE                          UPVAL U17
      190 NEWTABLE                         R26 0 1
      192 GETTABLEKS                       R27 R2 K36 ["onPressedOutside"]
      194 SETLIST                          R26 R27 1 [1]
      196 CALL                             R24 2 0
      197 GETUPVAL                         R24 3
      198 GETTABLEKS                       R24 R24 K33 ["useCallback"]
      200 NEWCLOSURE                       R25 P4
      201 CAPTURE                          VAL R2
      202 NEWTABLE                         R26 0 1
      204 GETTABLEKS                       R27 R2 K36 ["onPressedOutside"]
      206 SETLIST                          R26 R27 1 [1]
      208 CALL                             R24 2 1
      209 GETUPVAL                         R26 8
      210 GETTABLEKS                       R26 R26 K1 ["FoundationPopoverPluginDepthPool"]
      212 JUMPIFNOT                        R26 ; [+6]
      213 JUMPIFEQKNIL                     R8 ; [+3]
      215 MOVE                             R25 R8
      216 JUMP                             ; [+3]
      217 LOADN                            R25 0
      218 JUMP                             ; [+1]
      219 MOVE                             R25 R8
      220 GETUPVAL                         R26 18
      221 DUPTABLE                         R27 K43 [{"isOpen", "onClose", "anchorUri", "registerPanelAsync", "position", "depth", "parentPopoverId"}]
      222 GETTABLEKS                       R28 R5 K37 ["isOpen"]
      224 SETTABLEKS                       R28 R27 K37 ["isOpen"]
      226 SETTABLEKS                       R24 R27 K38 ["onClose"]
      228 GETTABLEKS                       R28 R20 K44 ["uri"]
      230 SETTABLEKS                       R28 R27 K39 ["anchorUri"]
      232 SETTABLEKS                       R22 R27 K40 ["registerPanelAsync"]
      234 SETTABLEKS                       R21 R27 K20 ["position"]
      236 SETTABLEKS                       R25 R27 K41 ["depth"]
      238 GETUPVAL                         R29 8
      239 GETTABLEKS                       R29 R29 K1 ["FoundationPopoverPluginDepthPool"]
      241 JUMPIFNOT                        R29 ; [+2]
      242 MOVE                             R28 R4
      243 JUMP                             ; [+1]
      244 LOADNIL                          R28
      245 SETTABLEKS                       R28 R27 K42 ["parentPopoverId"]
      247 CALL                             R26 1 1
      248 GETUPVAL                         R27 19
      249 GETTABLEKS                       R28 R2 K16 ["side"]
      251 GETTABLEKS                       R29 R2 K22 ["align"]
      253 MOVE                             R30 R10
      254 GETTABLEKS                       R32 R2 K32 ["hasArrow"]
      256 JUMPIFNOT                        R32 ; [+2]
      257 MOVE                             R31 R14
      258 JUMP                             ; [+1]
      259 LOADN                            R31 0
      260 MOVE                             R32 R26
      261 CALL                             R27 5 2
      262 GETUPVAL                         R29 20
      263 MOVE                             R30 R28
      264 MOVE                             R31 R16
      265 GETTABLEKS                       R32 R2 K45 ["radius"]
      267 MOVE                             R33 R18
      268 MOVE                             R34 R14
      269 GETTABLEKS                       R35 R5 K27 ["anchor"]
      271 CALL                             R29 6 1
      272 JUMPIF                           R26 ; [+2]
      273 LOADNIL                          R30
      274 RETURN                           R30 1
      275 GETUPVAL                         R30 21
      276 GETTABLEKS                       R30 R30 K46 ["createPortal"]
      278 GETUPVAL                         R31 3
      279 GETTABLEKS                       R31 R31 K47 ["createElement"]
      281 GETUPVAL                         R32 3
      282 GETTABLEKS                       R32 R32 K48 ["Fragment"]
      284 LOADNIL                          R33
      285 DUPTABLE                         R34 K51 [{"StyleLink", "Container"}]
      286 GETUPVAL                         R35 3
      287 GETTABLEKS                       R35 R35 K47 ["createElement"]
      289 LOADK                            R36 K49 ["StyleLink"]
      290 DUPTABLE                         R37 K53 [{"StyleSheet"}]
      291 SETTABLEKS                       R6 R37 K52 ["StyleSheet"]
      293 CALL                             R35 2 1
      294 SETTABLEKS                       R35 R34 K49 ["StyleLink"]
      296 GETUPVAL                         R35 3
      297 GETTABLEKS                       R35 R35 K47 ["createElement"]
      299 GETUPVAL                         R36 22
      300 DUPTABLE                         R37 K55 [{"Size", "testId"}]
      301 SETTABLEKS                       R27 R37 K8 ["Size"]
      303 LOADK                            R39 K56 ["%*--container"]
      304 GETTABLEKS                       R41 R5 K54 ["testId"]
      306 NAMECALL                         R39 R39 K57 ["format"]
      308 CALL                             R39 2 1
      309 MOVE                             R38 R39
      310 SETTABLEKS                       R38 R37 K54 ["testId"]
      312 DUPTABLE                         R38 K61 [{"Shadow", "Arrow", "Content"}]
      313 GETUPVAL                         R39 3
      314 GETTABLEKS                       R39 R39 K47 ["createElement"]
      316 GETUPVAL                         R40 23
      317 DUPTABLE                         R41 K64 [{"contentSize", "position", "ZIndex", "testId"}]
      318 SETTABLEKS                       R28 R41 K62 ["contentSize"]
      320 GETIMPORT                        R42 K67 [UDim2.fromOffset]
      322 GETUPVAL                         R44 16
      323 DIVK                             R43 R44 K11 [2]
      324 GETUPVAL                         R46 16
      325 DIVK                             R45 R46 K11 [2]
      326 ADDK                             R44 R45 K11 [2]
      327 CALL                             R42 2 1
      328 SETTABLEKS                       R42 R41 K20 ["position"]
      330 LOADN                            R42 1
      331 SETTABLEKS                       R42 R41 K63 ["ZIndex"]
      333 LOADK                            R43 K68 ["%*--shadow"]
      334 GETTABLEKS                       R45 R5 K54 ["testId"]
      336 NAMECALL                         R43 R43 K57 ["format"]
      338 CALL                             R43 2 1
      339 MOVE                             R42 R43
      340 SETTABLEKS                       R42 R41 K54 ["testId"]
      342 CALL                             R39 2 1
      343 SETTABLEKS                       R39 R38 K58 ["Shadow"]
      345 GETTABLEKS                       R40 R2 K32 ["hasArrow"]
      347 JUMPIFNOT                        R40 ; [+25]
      348 GETUPVAL                         R39 3
      349 GETTABLEKS                       R39 R39 K47 ["createElement"]
      351 GETUPVAL                         R40 24
      352 DUPTABLE                         R41 K70 [{"size", "position", "ZIndex", "backgroundStyle", "testId"}]
      353 SETTABLEKS                       R12 R41 K69 ["size"]
      355 SETTABLEKS                       R29 R41 K20 ["position"]
      357 LOADN                            R42 2
      358 SETTABLEKS                       R42 R41 K63 ["ZIndex"]
      360 SETTABLEKS                       R15 R41 K12 ["backgroundStyle"]
      362 LOADK                            R43 K71 ["%*--arrow"]
      363 GETTABLEKS                       R45 R5 K54 ["testId"]
      365 NAMECALL                         R43 R43 K57 ["format"]
      367 CALL                             R43 2 1
      368 MOVE                             R42 R43
      369 SETTABLEKS                       R42 R41 K54 ["testId"]
      371 CALL                             R39 2 1
      372 JUMP                             ; [+1]
      373 LOADNIL                          R39
      374 SETTABLEKS                       R39 R38 K59 ["Arrow"]
      376 GETUPVAL                         R39 3
      377 GETTABLEKS                       R39 R39 K47 ["createElement"]
      379 GETUPVAL                         R40 22
      380 DUPTABLE                         R41 K75 [{"tag", "Position", "ref", "backgroundStyle", "ZIndex", "testId"}]
      381 LOADK                            R43 K76 ["auto-xy %*"]
      382 GETUPVAL                         R46 25
      383 GETTABLEKS                       R47 R2 K45 ["radius"]
      385 GETTABLE                         R45 R46 R47
      386 NAMECALL                         R43 R43 K57 ["format"]
      388 CALL                             R43 2 1
      389 MOVE                             R42 R43
      390 SETTABLEKS                       R42 R41 K72 ["tag"]
      392 GETIMPORT                        R42 K67 [UDim2.fromOffset]
      394 GETUPVAL                         R43 16
      395 GETUPVAL                         R44 16
      396 CALL                             R42 2 1
      397 SETTABLEKS                       R42 R41 K73 ["Position"]
      399 SETTABLEKS                       R11 R41 K74 ["ref"]
      401 SETTABLEKS                       R15 R41 K12 ["backgroundStyle"]
      403 LOADN                            R42 3
      404 SETTABLEKS                       R42 R41 K63 ["ZIndex"]
      406 LOADK                            R43 K77 ["%*--content"]
      407 GETTABLEKS                       R45 R5 K54 ["testId"]
      409 NAMECALL                         R43 R43 K57 ["format"]
      411 CALL                             R43 2 1
      412 MOVE                             R42 R43
      413 SETTABLEKS                       R42 R41 K54 ["testId"]
      415 GETUPVAL                         R43 8
      416 GETTABLEKS                       R43 R43 K1 ["FoundationPopoverPluginDepthPool"]
      418 JUMPIFNOT                        R43 ; [+26]
      419 GETUPVAL                         R42 3
      420 GETTABLEKS                       R42 R42 K47 ["createElement"]
      422 GETUPVAL                         R43 4
      423 GETTABLEKS                       R43 R43 K78 ["Provider"]
      425 DUPTABLE                         R44 K80 [{"value"}]
      426 GETTABLEKS                       R45 R26 K81 ["popoverId"]
      428 SETTABLEKS                       R45 R44 K79 ["value"]
      430 DUPTABLE                         R45 K83 [{"Nested"}]
      431 GETUPVAL                         R46 3
      432 GETTABLEKS                       R46 R46 K47 ["createElement"]
      434 GETUPVAL                         R47 26
      435 DUPTABLE                         R48 K85 [{"owner"}]
      436 SETTABLEKS                       R9 R48 K84 ["owner"]
      438 GETTABLEKS                       R49 R2 K86 ["children"]
      440 CALL                             R46 3 1
      441 SETTABLEKS                       R46 R45 K82 ["Nested"]
      443 CALL                             R42 3 1
      444 JUMP                             ; [+2]
      445 GETTABLEKS                       R42 R2 K86 ["children"]
      447 CALL                             R39 3 1
      448 SETTABLEKS                       R39 R38 K60 ["Content"]
      450 CALL                             R35 3 1
      451 SETTABLEKS                       R35 R34 K50 ["Container"]
      453 CALL                             R31 3 1
      454 GETTABLEKS                       R32 R26 K87 ["container"]
      456 CALL                             R30 2 -1
      457 RETURN                           R30 -1

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
      124 GETTABLEKS                       R16 R16 K23 ["StudioWidgets"]
      126 GETTABLEKS                       R16 R16 K24 ["useUniqueWidget"]
      128 CALL                             R15 1 1
      129 GETIMPORT                        R16 K6 [require]
      131 GETTABLEKS                       R17 R0 K11 ["Providers"]
      133 GETTABLEKS                       R17 R17 K25 ["Style"]
      135 GETTABLEKS                       R17 R17 K26 ["StyleSheetContext"]
      137 CALL                             R16 1 1
      138 GETTABLEKS                       R16 R16 K27 ["useStyleSheet"]
      140 GETIMPORT                        R17 K6 [require]
      142 GETTABLEKS                       R18 R0 K28 ["Constants"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K6 [require]
      147 GETTABLEKS                       R19 R0 K29 ["Utility"]
      149 GETTABLEKS                       R19 R19 K30 ["Flags"]
      151 CALL                             R18 1 1
      152 GETIMPORT                        R19 K6 [require]
      154 GETTABLEKS                       R20 R0 K29 ["Utility"]
      156 GETTABLEKS                       R20 R20 K31 ["Logger"]
      158 CALL                             R19 1 1
      159 GETIMPORT                        R20 K6 [require]
      161 GETTABLEKS                       R21 R0 K9 ["Enums"]
      163 GETTABLEKS                       R21 R21 K32 ["Radius"]
      165 CALL                             R20 1 1
      166 GETIMPORT                        R21 K6 [require]
      168 GETTABLEKS                       R22 R0 K29 ["Utility"]
      170 GETTABLEKS                       R22 R22 K33 ["Plugin"]
      172 GETTABLEKS                       R22 R22 K34 ["StudioUri"]
      174 CALL                             R21 1 1
      175 GETIMPORT                        R22 K6 [require]
      177 GETTABLEKS                       R23 R0 K35 ["Components"]
      179 GETTABLEKS                       R23 R23 K36 ["View"]
      181 CALL                             R22 1 1
      182 GETIMPORT                        R23 K6 [require]
      184 GETTABLEKS                       R24 R0 K11 ["Providers"]
      186 GETTABLEKS                       R24 R24 K37 ["Elevation"]
      188 GETTABLEKS                       R24 R24 K38 ["elevation"]
      190 CALL                             R23 1 1
      191 GETIMPORT                        R24 K6 [require]
      193 GETIMPORT                        R25 K1 [script]
      195 GETTABLEKS                       R25 R25 K4 ["Parent"]
      197 GETTABLEKS                       R25 R25 K39 ["useArrowPosition"]
      199 CALL                             R24 1 1
      200 GETIMPORT                        R25 K6 [require]
      202 GETTABLEKS                       R26 R0 K11 ["Providers"]
      204 GETTABLEKS                       R26 R26 K37 ["Elevation"]
      206 GETTABLEKS                       R26 R26 K40 ["useElevation"]
      208 CALL                             R25 1 1
      209 GETIMPORT                        R26 K6 [require]
      211 GETIMPORT                        R27 K1 [script]
      213 GETTABLEKS                       R27 R27 K4 ["Parent"]
      215 GETTABLEKS                       R27 R27 K41 ["usePanelSizing"]
      217 CALL                             R26 1 1
      218 GETIMPORT                        R27 K6 [require]
      220 GETTABLEKS                       R28 R0 K11 ["Providers"]
      222 GETTABLEKS                       R28 R28 K25 ["Style"]
      224 GETTABLEKS                       R28 R28 K42 ["useTokens"]
      226 CALL                             R27 1 1
      227 GETIMPORT                        R28 K6 [require]
      229 GETTABLEKS                       R29 R0 K29 ["Utility"]
      231 GETTABLEKS                       R29 R29 K43 ["withDefaults"]
      233 CALL                             R28 1 1
      234 GETIMPORT                        R29 K6 [require]
      236 GETTABLEKS                       R30 R0 K11 ["Providers"]
      238 GETTABLEKS                       R30 R30 K37 ["Elevation"]
      240 GETTABLEKS                       R30 R30 K44 ["ElevationProvider"]
      242 CALL                             R29 1 1
      243 GETTABLEKS                       R29 R29 K45 ["ElevationOwnerScope"]
      245 GETIMPORT                        R30 K6 [require]
      247 GETTABLEKS                       R31 R0 K11 ["Providers"]
      249 GETTABLEKS                       R31 R31 K12 ["StudioPanels"]
      251 GETTABLEKS                       R31 R31 K46 ["Types"]
      253 CALL                             R30 1 1
      254 GETTABLEKS                       R31 R17 K47 ["SHADOW_SIZE"]
      256 DUPTABLE                         R32 K52 [{"side", "align", "hasArrow", "radius"}]
      257 GETTABLEKS                       R33 R11 K53 ["Bottom"]
      259 SETTABLEKS                       R33 R32 K48 ["side"]
      261 GETTABLEKS                       R33 R6 K54 ["Center"]
      263 SETTABLEKS                       R33 R32 K49 ["align"]
      265 LOADB                            R33 1
      266 SETTABLEKS                       R33 R32 K50 ["hasArrow"]
      268 GETTABLEKS                       R33 R20 K55 ["Medium"]
      270 SETTABLEKS                       R33 R32 K51 ["radius"]
      272 NEWTABLE                         R33 4 0
      274 GETTABLEKS                       R34 R20 K56 ["Small"]
      276 LOADK                            R35 K57 ["radius-small"]
      277 SETTABLE                         R35 R33 R34
      278 GETTABLEKS                       R34 R20 K55 ["Medium"]
      280 LOADK                            R35 K58 ["radius-medium"]
      281 SETTABLE                         R35 R33 R34
      282 GETTABLEKS                       R34 R20 K59 ["Circle"]
      284 LOADK                            R35 K60 ["radius-circle"]
      285 SETTABLE                         R35 R33 R34
      286 DUPCLOSURE                       R34 K61 [PROTO_5]
      287 CAPTURE                          VAL R28
      288 CAPTURE                          VAL R32
      289 CAPTURE                          VAL R14
      290 CAPTURE                          VAL R2
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R9
      293 CAPTURE                          VAL R16
      294 CAPTURE                          VAL R27
      295 CAPTURE                          VAL R18
      296 CAPTURE                          VAL R25
      297 CAPTURE                          VAL R4
      298 CAPTURE                          VAL R23
      299 CAPTURE                          VAL R11
      300 CAPTURE                          VAL R6
      301 CAPTURE                          VAL R15
      302 CAPTURE                          VAL R12
      303 CAPTURE                          VAL R31
      304 CAPTURE                          VAL R19
      305 CAPTURE                          VAL R13
      306 CAPTURE                          VAL R26
      307 CAPTURE                          VAL R24
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R22
      310 CAPTURE                          VAL R10
      311 CAPTURE                          VAL R7
      312 CAPTURE                          VAL R33
      313 CAPTURE                          VAL R29
      314 GETTABLEKS                       R35 R2 K62 ["forwardRef"]
      316 MOVE                             R36 R34
      317 CALL                             R35 1 -1
      318 RETURN                           R35 -1
