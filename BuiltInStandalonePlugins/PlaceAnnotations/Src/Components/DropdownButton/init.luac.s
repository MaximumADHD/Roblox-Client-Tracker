PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R2
        5 NAMECALL                         R0 R0 K0 ["SetFocusedElement"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R2
        5 NAMECALL                         R0 R0 K0 ["SetFocusedElement"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["GetFocusedElement"]
        4 CALL                             R2 1 1
        5 NOT                              R1 R2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FocusedElementChangedSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R0 R0 K1 ["Connect"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSelect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 4
       12 LOADNIL                          R2
       13 NAMECALL                         R0 R0 K1 ["SetFocusedElement"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K0 ["SetFocusedElement"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADNIL                          R2
       10 NAMECALL                         R0 R0 K0 ["SetFocusedElement"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R3 3
        7 GETTABLEKS                       R2 R3 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["SetFocusedElement"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R3 R1 K2 ["NoPadding"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADN                            R2 16
       12 JUMP                             ; [+1]
       13 LOADN                            R2 20
       14 GETTABLEKS                       R4 R1 K2 ["NoPadding"]
       16 JUMPIFNOT                        R4 ; [+2]
       17 LOADN                            R3 24
       18 JUMP                             ; [+1]
       19 LOADN                            R3 28
       20 GETUPVAL                         R4 2
       21 NAMECALL                         R4 R4 K3 ["use"]
       23 CALL                             R4 1 1
       24 NAMECALL                         R4 R4 K4 ["get"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 3
       28 NAMECALL                         R5 R5 K3 ["use"]
       30 CALL                             R5 1 1
       31 GETUPVAL                         R7 4
       32 GETTABLEKS                       R6 R7 K5 ["useState"]
       34 GETTABLEKS                       R8 R1 K6 ["Disabled"]
       36 NOT                              R7 R8
       37 CALL                             R6 1 2
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R8 R9 K5 ["useState"]
       41 LOADB                            R9 0
       42 CALL                             R8 1 2
       43 GETUPVAL                         R11 4
       44 GETTABLEKS                       R10 R11 K5 ["useState"]
       46 LOADB                            R11 0
       47 CALL                             R10 1 2
       48 GETUPVAL                         R12 5
       49 CALL                             R12 0 1
       50 GETUPVAL                         R14 4
       51 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       53 NEWCLOSURE                       R14 P0
       54 CAPTURE                          VAL R11
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R15 0 1
       58 MOVE                             R16 R12
       59 SETLIST                          R15 R16 1 [1]
       61 CALL                             R13 2 0
       62 GETUPVAL                         R14 4
       63 GETTABLEKS                       R13 R14 K8 ["useRef"]
       65 LOADNIL                          R14
       66 CALL                             R13 1 1
       67 GETUPVAL                         R15 4
       68 GETTABLEKS                       R14 R15 K5 ["useState"]
       70 GETIMPORT                        R15 K11 [Vector2.zero]
       72 CALL                             R14 1 2
       73 GETUPVAL                         R16 6
       74 GETTABLEKS                       R18 R13 K12 ["current"]
       76 JUMPIFNOT                        R18 ; [+21]
       77 GETIMPORT                        R17 K15 [UDim2.fromOffset]
       79 GETTABLEKS                       R22 R13 K12 ["current"]
       81 GETTABLEKS                       R21 R22 K16 ["AbsolutePosition"]
       83 GETTABLEKS                       R20 R21 K17 ["X"]
       85 GETTABLEKS                       R21 R14 K17 ["X"]
       87 SUB                              R19 R20 R21
       88 ADD                              R18 R19 R2
       89 GETTABLEKS                       R22 R13 K12 ["current"]
       91 GETTABLEKS                       R21 R22 K16 ["AbsolutePosition"]
       93 GETTABLEKS                       R20 R21 K18 ["Y"]
       95 ADD                              R19 R20 R3
       96 CALL                             R17 2 1
       97 JUMP                             ; [+5]
       98 GETIMPORT                        R17 K20 [UDim2.new]
      100 LOADN                            R18 0
      101 LOADN                            R19 0
      102 CALL                             R17 2 1
      103 GETTABLEKS                       R18 R14 K17 ["X"]
      105 GETTABLEKS                       R19 R14 K18 ["Y"]
      107 CALL                             R16 3 1
      108 GETUPVAL                         R17 7
      109 MOVE                             R18 R8
      110 NEWCLOSURE                       R19 P1
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R5
      113 CALL                             R17 2 0
      114 GETUPVAL                         R18 4
      115 GETTABLEKS                       R17 R18 K7 ["useEffect"]
      117 NEWCLOSURE                       R18 P2
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R7
      120 NEWTABLE                         R19 0 0
      122 CALL                             R17 2 0
      123 GETUPVAL                         R18 8
      124 GETTABLEKS                       R17 R18 K21 ["Design"]
      126 NAMECALL                         R17 R17 K3 ["use"]
      128 CALL                             R17 1 1
      129 NAMECALL                         R17 R17 K4 ["get"]
      131 CALL                             R17 1 1
      132 DUPTABLE                         R18 K23 [{"StyleLink"}]
      133 GETUPVAL                         R20 4
      134 GETTABLEKS                       R19 R20 K24 ["createElement"]
      136 LOADK                            R20 K22 ["StyleLink"]
      137 DUPTABLE                         R21 K26 [{"StyleSheet"}]
      138 SETTABLEKS                       R17 R21 K25 ["StyleSheet"]
      140 CALL                             R19 2 1
      141 SETTABLEKS                       R19 R18 K22 ["StyleLink"]
      143 GETTABLEKS                       R19 R1 K27 ["DropdownItems"]
      145 LOADNIL                          R20
      146 LOADNIL                          R21
      147 FORGPREP                         R19
      148 FASTCALL1                        TYPE R23 ; [+3]
      149 MOVE                             R25 R23
      150 GETIMPORT                        R24 K29 [type]
      152 CALL                             R24 1 1
      153 JUMPIFNOTEQKS                    R24 K30 ["string"] ; [+37]
      155 GETTABLEKS                       R25 R1 K31 ["OnSelect"]
      157 FASTCALL2K                       ASSERT R25 K32 ; [+4]
      159 LOADK                            R26 K32 ["String items must have an OnSelect fn defined."]
      160 GETIMPORT                        R24 K34 [assert]
      162 CALL                             R24 2 0
      163 GETUPVAL                         R25 4
      164 GETTABLEKS                       R24 R25 K24 ["createElement"]
      166 LOADK                            R25 K35 ["TextButton"]
      167 NEWTABLE                         R26 4 0
      169 SETTABLEKS                       R23 R26 K36 ["Text"]
      171 GETUPVAL                         R29 4
      172 GETTABLEKS                       R28 R29 K37 ["Event"]
      174 GETTABLEKS                       R27 R28 K38 ["Activated"]
      176 NEWCLOSURE                       R28 P3
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R11
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R5
      182 SETTABLE                         R28 R26 R27
      183 GETUPVAL                         R28 4
      184 GETTABLEKS                       R27 R28 K39 ["Tag"]
      186 LOADK                            R28 K40 ["Component-DropdownItem"]
      187 SETTABLE                         R28 R26 R27
      188 CALL                             R24 2 1
      189 SETTABLE                         R24 R18 R22
      190 JUMP                             ; [+90]
      191 FASTCALL1                        TYPE R23 ; [+3]
      192 MOVE                             R25 R23
      193 GETIMPORT                        R24 K29 [type]
      195 CALL                             R24 1 1
      196 JUMPIFNOTEQKS                    R24 K41 ["table"] ; [+41]
      198 GETTABLEKS                       R24 R23 K42 ["props"]
      200 JUMPIFNOT                        R24 ; [+37]
      201 GETTABLEKS                       R25 R23 K42 ["props"]
      203 GETTABLEKS                       R24 R25 K43 ["children"]
      205 JUMPIFNOT                        R24 ; [+32]
      206 GETTABLEKS                       R26 R23 K42 ["props"]
      208 GETTABLEKS                       R25 R26 K43 ["children"]
      210 GETTABLEKS                       R24 R25 K44 ["Checkbox"]
      212 JUMPIFNOT                        R24 ; [+25]
      213 GETTABLEKS                       R25 R23 K42 ["props"]
      215 GETTABLEKS                       R24 R25 K45 ["onActivated"]
      217 NEWCLOSURE                       R25 P4
      218 CAPTURE                          VAL R24
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R9
      221 CAPTURE                          VAL R5
      222 GETTABLEKS                       R26 R23 K42 ["props"]
      224 SETTABLEKS                       R25 R26 K45 ["onActivated"]
      226 GETTABLEKS                       R29 R23 K42 ["props"]
      228 GETTABLEKS                       R28 R29 K43 ["children"]
      230 GETTABLEKS                       R27 R28 K44 ["Checkbox"]
      232 GETTABLEKS                       R26 R27 K42 ["props"]
      234 SETTABLEKS                       R25 R26 K45 ["onActivated"]
      236 SETTABLE                         R23 R18 R22
      237 JUMP                             ; [+43]
      238 FASTCALL1                        TYPE R23 ; [+3]
      239 MOVE                             R25 R23
      240 GETIMPORT                        R24 K29 [type]
      242 CALL                             R24 1 1
      243 JUMPIFNOTEQKS                    R24 K41 ["table"] ; [+15]
      245 GETTABLEKS                       R25 R23 K42 ["props"]
      247 GETTABLEKS                       R24 R25 K43 ["children"]
      249 JUMPIFNOT                        R24 ; [+9]
      250 GETTABLEKS                       R26 R23 K42 ["props"]
      252 GETTABLEKS                       R25 R26 K43 ["children"]
      254 GETTABLEKS                       R24 R25 K36 ["Text"]
      256 JUMPIFNOT                        R24 ; [+2]
      257 SETTABLE                         R23 R18 R22
      258 JUMP                             ; [+22]
      259 GETTABLEKS                       R25 R23 K42 ["props"]
      261 GETUPVAL                         R28 4
      262 GETTABLEKS                       R27 R28 K37 ["Event"]
      264 GETTABLEKS                       R26 R27 K38 ["Activated"]
      266 GETTABLE                         R24 R25 R26
      267 GETTABLEKS                       R25 R23 K42 ["props"]
      269 GETUPVAL                         R28 4
      270 GETTABLEKS                       R27 R28 K37 ["Event"]
      272 GETTABLEKS                       R26 R27 K38 ["Activated"]
      274 NEWCLOSURE                       R27 P5
      275 CAPTURE                          VAL R24
      276 CAPTURE                          VAL R11
      277 CAPTURE                          VAL R9
      278 CAPTURE                          VAL R5
      279 SETTABLE                         R27 R25 R26
      280 SETTABLE                         R23 R18 R22
      281 FORGLOOP                         R19 2 ; [-134]
      283 GETUPVAL                         R20 4
      284 GETTABLEKS                       R19 R20 K24 ["createElement"]
      286 LOADK                            R20 K46 ["ImageButton"]
      287 NEWTABLE                         R21 8 0
      289 SETTABLEKS                       R13 R21 K47 ["ref"]
      291 MOVE                             R22 R6
      292 JUMPIFNOT                        R22 ; [+3]
      293 GETTABLEKS                       R23 R1 K6 ["Disabled"]
      295 NOT                              R22 R23
      296 SETTABLEKS                       R22 R21 K48 ["Interactable"]
      298 GETTABLEKS                       R23 R1 K49 ["Hidden"]
      300 NOT                              R22 R23
      301 SETTABLEKS                       R22 R21 K50 ["Visible"]
      303 GETTABLEKS                       R22 R1 K51 ["LayoutOrder"]
      305 SETTABLEKS                       R22 R21 K51 ["LayoutOrder"]
      307 GETTABLEKS                       R22 R1 K52 ["ButtonSize"]
      309 SETTABLEKS                       R22 R21 K53 ["Size"]
      311 GETUPVAL                         R24 4
      312 GETTABLEKS                       R23 R24 K37 ["Event"]
      314 GETTABLEKS                       R22 R23 K38 ["Activated"]
      316 NEWCLOSURE                       R23 P6
      317 CAPTURE                          VAL R6
      318 CAPTURE                          VAL R11
      319 CAPTURE                          VAL R5
      320 CAPTURE                          VAL R13
      321 SETTABLE                         R23 R21 R22
      322 GETUPVAL                         R23 4
      323 GETTABLEKS                       R22 R23 K39 ["Tag"]
      325 GETUPVAL                         R23 9
      326 LOADK                            R24 K54 ["Component-DropdownButton"]
      327 GETUPVAL                         R27 4
      328 GETTABLEKS                       R26 R27 K39 ["Tag"]
      330 GETTABLE                         R25 R1 R26
      331 GETTABLEKS                       R27 R1 K6 ["Disabled"]
      333 JUMPIFNOT                        R27 ; [+2]
      334 LOADK                            R26 K6 ["Disabled"]
      335 JUMP                             ; [+1]
      336 LOADNIL                          R26
      337 GETTABLEKS                       R28 R1 K2 ["NoPadding"]
      339 JUMPIFNOT                        R28 ; [+2]
      340 LOADNIL                          R27
      341 JUMP                             ; [+1]
      342 LOADK                            R27 K55 ["AddPadding"]
      343 CALL                             R23 4 1
      344 SETTABLE                         R23 R21 R22
      345 DUPTABLE                         R22 K58 [{"Icon", "Dropdown"}]
      346 GETUPVAL                         R24 4
      347 GETTABLEKS                       R23 R24 K24 ["createElement"]
      349 LOADK                            R24 K59 ["ImageLabel"]
      350 NEWTABLE                         R25 1 0
      352 GETUPVAL                         R27 4
      353 GETTABLEKS                       R26 R27 K39 ["Tag"]
      355 GETUPVAL                         R27 9
      356 GETTABLEKS                       R28 R1 K60 ["ImageTag"]
      358 LOADK                            R29 K61 ["X-Transparent"]
      359 CALL                             R27 2 1
      360 SETTABLE                         R27 R25 R26
      361 CALL                             R23 2 1
      362 SETTABLEKS                       R23 R22 K56 ["Icon"]
      364 JUMPIFNOT                        R10 ; [+76]
      365 GETUPVAL                         R24 10
      366 GETTABLEKS                       R23 R24 K62 ["createPortal"]
      368 GETUPVAL                         R25 4
      369 GETTABLEKS                       R24 R25 K24 ["createElement"]
      371 LOADK                            R25 K63 ["CanvasGroup"]
      372 NEWTABLE                         R26 8 0
      374 SETTABLEKS                       R16 R26 K64 ["Position"]
      376 GETTABLEKS                       R27 R1 K53 ["Size"]
      378 SETTABLEKS                       R27 R26 K53 ["Size"]
      380 GETTABLEKS                       R27 R1 K65 ["AutomaticSize"]
      382 SETTABLEKS                       R27 R26 K65 ["AutomaticSize"]
      384 GETUPVAL                         R29 4
      385 GETTABLEKS                       R28 R29 K37 ["Event"]
      387 GETTABLEKS                       R27 R28 K66 ["MouseEnter"]
      389 NEWCLOSURE                       R28 P7
      390 CAPTURE                          VAL R9
      391 SETTABLE                         R28 R26 R27
      392 GETUPVAL                         R29 4
      393 GETTABLEKS                       R28 R29 K37 ["Event"]
      395 GETTABLEKS                       R27 R28 K67 ["MouseLeave"]
      397 NEWCLOSURE                       R28 P8
      398 CAPTURE                          VAL R9
      399 SETTABLE                         R28 R26 R27
      400 GETUPVAL                         R29 4
      401 GETTABLEKS                       R28 R29 K68 ["Change"]
      403 GETTABLEKS                       R27 R28 K69 ["AbsoluteSize"]
      405 NEWCLOSURE                       R28 P9
      406 CAPTURE                          VAL R15
      407 SETTABLE                         R28 R26 R27
      408 GETUPVAL                         R28 4
      409 GETTABLEKS                       R27 R28 K39 ["Tag"]
      411 LOADK                            R28 K70 ["Component-Dropdown"]
      412 SETTABLE                         R28 R26 R27
      413 DUPTABLE                         R27 K72 [{"Wrapper"}]
      414 GETUPVAL                         R29 4
      415 GETTABLEKS                       R28 R29 K24 ["createElement"]
      417 LOADK                            R29 K73 ["Frame"]
      418 NEWTABLE                         R30 4 0
      420 GETTABLEKS                       R31 R1 K53 ["Size"]
      422 SETTABLEKS                       R31 R30 K53 ["Size"]
      424 GETTABLEKS                       R31 R1 K65 ["AutomaticSize"]
      426 SETTABLEKS                       R31 R30 K65 ["AutomaticSize"]
      428 GETUPVAL                         R32 4
      429 GETTABLEKS                       R31 R32 K39 ["Tag"]
      431 LOADK                            R32 K74 ["X-Fill X-Column X-Transparent"]
      432 SETTABLE                         R32 R30 R31
      433 MOVE                             R31 R18
      434 CALL                             R28 3 1
      435 SETTABLEKS                       R28 R27 K71 ["Wrapper"]
      437 CALL                             R24 3 1
      438 MOVE                             R25 R4
      439 CALL                             R23 2 1
      440 JUMP                             ; [+1]
      441 LOADNIL                          R23
      442 SETTABLEKS                       R23 R22 K57 ["Dropdown"]
      444 CALL                             R19 3 -1
      445 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R3 K11 ["Styling"]
       37 GETTABLEKS                       R5 R6 K12 ["joinTags"]
       39 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Focus"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R11 R0 K15 ["Src"]
       47 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       49 GETTABLEKS                       R9 R10 K17 ["useFocusLost"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R12 R0 K15 ["Src"]
       56 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       58 GETTABLEKS                       R10 R11 K18 ["useViewportPosition"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R13 R0 K15 ["Src"]
       65 GETTABLEKS                       R12 R13 K19 ["Contexts"]
       67 GETTABLEKS                       R11 R12 K20 ["InputListenerContext"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R14 R0 K15 ["Src"]
       74 GETTABLEKS                       R13 R14 K16 ["Hooks"]
       76 GETTABLEKS                       R12 R13 K21 ["useTheme"]
       78 CALL                             R11 1 1
       79 DUPTABLE                         R12 K29 [{"Size", "AutomaticSize", "ImageTag", "Disabled", "LayoutOrder", "ButtonSize", "NoPadding"}]
       80 GETIMPORT                        R13 K32 [UDim2.fromOffset]
       82 LOADN                            R14 128
       83 LOADN                            R15 0
       84 CALL                             R13 2 1
       85 SETTABLEKS                       R13 R12 K22 ["Size"]
       87 GETIMPORT                        R13 K35 [Enum.AutomaticSize.Y]
       89 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
       91 LOADK                            R13 K36 ["MoreIcon"]
       92 SETTABLEKS                       R13 R12 K24 ["ImageTag"]
       94 LOADB                            R13 0
       95 SETTABLEKS                       R13 R12 K25 ["Disabled"]
       97 LOADN                            R13 0
       98 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      100 GETIMPORT                        R13 K32 [UDim2.fromOffset]
      102 LOADN                            R14 20
      103 LOADN                            R15 20
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K27 ["ButtonSize"]
      107 LOADB                            R13 0
      108 SETTABLEKS                       R13 R12 K28 ["NoPadding"]
      110 DUPCLOSURE                       R13 K37 [PROTO_11]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R2
      122 RETURN                           R13 1
