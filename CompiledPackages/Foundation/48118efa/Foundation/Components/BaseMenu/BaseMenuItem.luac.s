PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+5]
       11 DUPTABLE                         R1 K4 [{"iconName"}]
       12 SETTABLEKS                       R0 R1 K3 ["iconName"]
       14 RETURN                           R1 1
       15 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [Enum]
        2 GETTABLEKS                       R0 R0 K2 ["InputSink"]
        4 GETTABLEKS                       R0 R0 K3 ["All"]
        6 RETURN                           R0 1

PROTO_2:
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
       22 DUPCLOSURE                       R3 K7 [PROTO_1]
       23 CALL                             R2 1 2
       24 JUMPIFNOT                        R2 ; [+2]
       25 MOVE                             R4 R3
       26 RETURN                           R4 1
       27 LOADNIL                          R4
       28 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["paddingLeftWithCheck"]
        3 JUMP                             ; [+2]
        4 GETTABLEKS                       R2 R0 K1 ["paddingLeftWithoutCheck"]
        6 DUPTABLE                         R3 K4 [{"left", "right"}]
        7 GETIMPORT                        R4 K7 [UDim.new]
        9 LOADN                            R5 0
       10 ORK                              R6 R2 K8 [0]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K2 ["left"]
       14 GETIMPORT                        R4 K7 [UDim.new]
       16 LOADN                            R5 0
       17 GETTABLEKS                       R7 R0 K9 ["paddingRight"]
       19 ORK                              R6 R7 K8 [0]
       20 CALL                             R4 2 1
       21 SETTABLEKS                       R4 R3 K3 ["right"]
       23 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setHasLeading"]
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["setHasLeading"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hoverReset"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["hoverReset"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["Migration"]
        3 GETTABLEKS                       R1 R2 K0 ["uiblox"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["icon"]
        8 GETTABLE                         R0 R1 R2
        9 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useContext"]
        7 GETUPVAL                         R4 3
        8 CALL                             R3 1 1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R6 R6 K1 ["FoundationBaseMenuBeta"]
       14 JUMPIFNOT                        R6 ; [+27]
       15 GETTABLEKS                       R6 R2 K2 ["menuHasLeading"]
       17 JUMPIFEQKNIL                     R6 ; [+4]
       19 GETTABLEKS                       R4 R2 K2 ["menuHasLeading"]
       21 JUMP                             ; [+6]
       22 GETTABLEKS                       R6 R3 K3 ["hasLeading"]
       24 JUMPIFEQKB                       R6 TRUE ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 GETTABLEKS                       R6 R2 K4 ["menuHasCheck"]
       30 JUMPIFEQKNIL                     R6 ; [+4]
       32 GETTABLEKS                       R5 R2 K4 ["menuHasCheck"]
       34 JUMP                             ; [+14]
       35 GETTABLEKS                       R6 R2 K5 ["isChecked"]
       37 JUMPIFEQKB                       R6 TRUE ; [+2]
       39 LOADB                            R5 0 +1
       40 LOADB                            R5 1
       41 JUMP                             ; [+7]
       42 GETTABLEKS                       R6 R3 K3 ["hasLeading"]
       44 JUMPIFEQKB                       R6 TRUE ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 LOADB                            R5 0
       49 GETUPVAL                         R6 5
       50 CALL                             R6 0 1
       51 GETTABLEKS                       R7 R2 K6 ["size"]
       53 JUMPIF                           R7 ; [+2]
       54 GETTABLEKS                       R7 R3 K6 ["size"]
       56 GETTABLEKS                       R8 R3 K7 ["depth"]
       58 GETTABLEKS                       R10 R2 K8 ["children"]
       60 JUMPIFNOTEQKNIL                  R10 ; [+2]
       62 LOADB                            R9 0 +1
       63 LOADB                            R9 1
       64 MOVE                             R10 R9
       65 JUMPIFNOT                        R10 ; [+9]
       66 GETTABLEKS                       R12 R3 K9 ["hoverOpenPath"]
       68 GETTABLE                         R11 R12 R8
       69 GETTABLEKS                       R12 R2 K10 ["id"]
       71 JUMPIFEQ                         R11 R12 ; [+2]
       73 LOADB                            R10 0 +1
       74 LOADB                            R10 1
       75 GETUPVAL                         R12 4
       76 GETTABLEKS                       R12 R12 K1 ["FoundationBaseMenuBeta"]
       78 JUMPIFNOT                        R12 ; [+22]
       79 GETTABLEKS                       R12 R2 K11 ["leading"]
       81 JUMPIF                           R12 ; [+2]
       82 GETTABLEKS                       R12 R2 K12 ["icon"]
       84 JUMPIFNOTEQKNIL                  R12 ; [+3]
       86 LOADNIL                          R11
       87 JUMP                             ; [+14]
       88 FASTCALL1                        TYPE R12 ; [+3]
       89 MOVE                             R14 R12
       90 GETIMPORT                        R13 K14 [type]
       92 CALL                             R13 1 1
       93 JUMPIFNOTEQKS                    R13 K15 ["string"] ; [+5]
       95 DUPTABLE                         R11 K17 [{"iconName"}]
       96 SETTABLEKS                       R12 R11 K16 ["iconName"]
       98 JUMP                             ; [+3]
       99 MOVE                             R11 R12
      100 JUMP                             ; [+1]
      101 LOADNIL                          R11
      102 GETUPVAL                         R13 4
      103 GETTABLEKS                       R13 R13 K1 ["FoundationBaseMenuBeta"]
      105 JUMPIFNOT                        R13 ; [+19]
      106 GETTABLEKS                       R13 R2 K18 ["trailing"]
      108 JUMPIFNOTEQKNIL                  R13 ; [+3]
      110 LOADNIL                          R12
      111 JUMP                             ; [+14]
      112 FASTCALL1                        TYPE R13 ; [+3]
      113 MOVE                             R15 R13
      114 GETIMPORT                        R14 K14 [type]
      116 CALL                             R14 1 1
      117 JUMPIFNOTEQKS                    R14 K15 ["string"] ; [+5]
      119 DUPTABLE                         R12 K17 [{"iconName"}]
      120 SETTABLEKS                       R13 R12 K16 ["iconName"]
      122 JUMP                             ; [+3]
      123 MOVE                             R12 R13
      124 JUMP                             ; [+1]
      125 LOADNIL                          R12
      126 GETUPVAL                         R13 6
      127 MOVE                             R14 R6
      128 MOVE                             R15 R7
      129 JUMPIFNOT                        R9 ; [+2]
      130 LOADB                            R16 0
      131 JUMP                             ; [+2]
      132 GETTABLEKS                       R16 R2 K5 ["isChecked"]
      134 CALL                             R13 3 1
      135 GETUPVAL                         R14 2
      136 GETTABLEKS                       R14 R14 K19 ["useRef"]
      138 LOADNIL                          R15
      139 CALL                             R14 1 1
      140 LOADB                            R15 0
      141 GETTABLEKS                       R16 R2 K5 ["isChecked"]
      143 JUMPIFNOTEQKB                    R16 TRUE ; [+2]
      145 NOT                              R15 R9
      146 GETUPVAL                         R16 2
      147 GETTABLEKS                       R16 R16 K20 ["useState"]
      149 LOADB                            R17 0
      150 CALL                             R16 1 2
      151 GETUPVAL                         R18 2
      152 GETTABLEKS                       R18 R18 K21 ["useCallback"]
      154 NEWCLOSURE                       R19 P0
      155 CAPTURE                          VAL R17
      156 NEWTABLE                         R20 0 0
      158 CALL                             R18 2 1
      159 GETUPVAL                         R20 4
      160 GETTABLEKS                       R20 R20 K1 ["FoundationBaseMenuBeta"]
      162 JUMPIFNOT                        R20 ; [+5]
      163 JUMPIFNOTEQKNIL                  R11 ; [+2]
      165 LOADB                            R19 0 +1
      166 LOADB                            R19 1
      167 JUMP                             ; [+6]
      168 GETTABLEKS                       R20 R2 K12 ["icon"]
      170 JUMPIFNOTEQKNIL                  R20 ; [+2]
      172 LOADB                            R19 0 +1
      173 LOADB                            R19 1
      174 GETUPVAL                         R20 2
      175 GETTABLEKS                       R20 R20 K22 ["useEffect"]
      177 NEWCLOSURE                       R21 P1
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R3
      180 NEWTABLE                         R22 0 2
      182 MOVE                             R23 R19
      183 GETTABLEKS                       R24 R3 K23 ["setHasLeading"]
      185 SETLIST                          R22 R23 2 [1]
      187 CALL                             R20 2 0
      188 GETUPVAL                         R20 7
      189 DUPTABLE                         R21 K29 [{"itemRef", "id", "depth", "isSubmenu", "isDisabled", "hoverOpenAtDepth", "hoverCloseAtDepth"}]
      190 SETTABLEKS                       R14 R21 K24 ["itemRef"]
      192 GETTABLEKS                       R22 R2 K10 ["id"]
      194 SETTABLEKS                       R22 R21 K10 ["id"]
      196 SETTABLEKS                       R8 R21 K7 ["depth"]
      198 SETTABLEKS                       R9 R21 K25 ["isSubmenu"]
      200 GETTABLEKS                       R22 R2 K26 ["isDisabled"]
      202 SETTABLEKS                       R22 R21 K26 ["isDisabled"]
      204 GETTABLEKS                       R22 R3 K27 ["hoverOpenAtDepth"]
      206 SETTABLEKS                       R22 R21 K27 ["hoverOpenAtDepth"]
      208 GETTABLEKS                       R22 R3 K28 ["hoverCloseAtDepth"]
      210 SETTABLEKS                       R22 R21 K28 ["hoverCloseAtDepth"]
      212 CALL                             R20 1 0
      213 GETUPVAL                         R20 2
      214 GETTABLEKS                       R20 R20 K21 ["useCallback"]
      216 NEWCLOSURE                       R21 P2
      217 CAPTURE                          VAL R9
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R10
      221 CAPTURE                          VAL R8
      222 CAPTURE                          UPVAL U8
      223 NEWTABLE                         R22 0 10
      225 MOVE                             R23 R9
      226 GETTABLEKS                       R24 R2 K26 ["isDisabled"]
      228 MOVE                             R25 R10
      229 MOVE                             R26 R8
      230 GETTABLEKS                       R27 R2 K10 ["id"]
      232 GETTABLEKS                       R28 R2 K30 ["onActivated"]
      234 GETTABLEKS                       R29 R3 K30 ["onActivated"]
      236 GETTABLEKS                       R30 R3 K31 ["onNestedLeafActivated"]
      238 GETTABLEKS                       R31 R3 K27 ["hoverOpenAtDepth"]
      240 GETTABLEKS                       R32 R3 K32 ["hoverReset"]
      242 SETLIST                          R22 R23 10 [1]
      244 CALL                             R20 2 1
      245 GETUPVAL                         R21 2
      246 GETTABLEKS                       R21 R21 K21 ["useCallback"]
      248 NEWCLOSURE                       R22 P3
      249 CAPTURE                          VAL R3
      250 NEWTABLE                         R23 0 1
      252 GETTABLEKS                       R24 R3 K32 ["hoverReset"]
      254 SETLIST                          R23 R24 1 [1]
      256 CALL                             R21 2 1
      257 GETUPVAL                         R22 2
      258 GETTABLEKS                       R22 R22 K33 ["useMemo"]
      260 NEWCLOSURE                       R23 P4
      261 CAPTURE                          VAL R6
      262 NEWTABLE                         R24 0 1
      264 MOVE                             R25 R6
      265 SETLIST                          R24 R25 1 [1]
      267 CALL                             R22 2 1
      268 GETUPVAL                         R23 2
      269 GETTABLEKS                       R23 R23 K33 ["useMemo"]
      271 NEWCLOSURE                       R24 P5
      272 CAPTURE                          UPVAL U9
      273 CAPTURE                          VAL R2
      274 NEWTABLE                         R25 0 1
      276 GETTABLEKS                       R26 R2 K12 ["icon"]
      278 SETLIST                          R25 R26 1 [1]
      280 CALL                             R23 2 1
      281 GETUPVAL                         R24 10
      282 MOVE                             R25 R14
      283 MOVE                             R26 R1
      284 CALL                             R24 2 1
      285 LOADNIL                          R25
      286 GETUPVAL                         R26 4
      287 GETTABLEKS                       R26 R26 K1 ["FoundationBaseMenuBeta"]
      289 JUMPIFNOT                        R26 ; [+342]
      290 GETUPVAL                         R26 11
      291 GETTABLEKS                       R27 R13 K34 ["container"]
      293 MOVE                             R28 R5
      294 CALL                             R26 2 1
      295 DUPTABLE                         R27 K39 [{"FillDirection", "VerticalAlignment", "Padding", "SortOrder"}]
      296 GETIMPORT                        R28 K42 [Enum.FillDirection.Horizontal]
      298 SETTABLEKS                       R28 R27 K35 ["FillDirection"]
      300 GETIMPORT                        R28 K44 [Enum.VerticalAlignment.Center]
      302 SETTABLEKS                       R28 R27 K36 ["VerticalAlignment"]
      304 GETIMPORT                        R28 K47 [UDim.new]
      306 LOADN                            R29 0
      307 LOADN                            R30 0
      308 CALL                             R28 2 1
      309 SETTABLEKS                       R28 R27 K37 ["Padding"]
      311 GETIMPORT                        R28 K49 [Enum.SortOrder.LayoutOrder]
      313 SETTABLEKS                       R28 R27 K38 ["SortOrder"]
      315 GETTABLEKS                       R29 R13 K50 ["wrapper"]
      317 JUMPIFNOT                        R29 ; [+5]
      318 GETTABLEKS                       R28 R13 K50 ["wrapper"]
      320 GETTABLEKS                       R28 R28 K51 ["gap"]
      322 JUMPIF                           R28 ; [+1]
      323 LOADN                            R28 0
      324 LOADNIL                          R29
      325 JUMPIFNOT                        R5 ; [+71]
      326 GETUPVAL                         R30 2
      327 GETTABLEKS                       R30 R30 K52 ["createElement"]
      329 GETUPVAL                         R31 12
      330 DUPTABLE                         R32 K56 [{["LayoutOrder"] = 1, ["tag"], ["testId"]}]
      331 LOADK                            R34 K57 ["%* %*"]
      332 GETTABLEKS                       R36 R13 K58 ["slotAlign"]
      334 GETTABLEKS                       R36 R36 K54 ["tag"]
      336 GETTABLEKS                       R37 R13 K59 ["check"]
      338 GETTABLEKS                       R37 R37 K54 ["tag"]
      340 NAMECALL                         R34 R34 K60 ["format"]
      342 CALL                             R34 3 1
      343 MOVE                             R33 R34
      344 SETTABLEKS                       R33 R32 K54 ["tag"]
      346 LOADK                            R34 K61 ["%*--check-column"]
      347 GETTABLEKS                       R36 R2 K55 ["testId"]
      349 NAMECALL                         R34 R34 K60 ["format"]
      351 CALL                             R34 2 1
      352 MOVE                             R33 R34
      353 SETTABLEKS                       R33 R32 K55 ["testId"]
      355 DUPTABLE                         R33 K63 [{"Check"}]
      356 JUMPIFNOT                        R15 ; [+35]
      357 GETUPVAL                         R34 2
      358 GETTABLEKS                       R34 R34 K52 ["createElement"]
      360 GETUPVAL                         R35 13
      361 DUPTABLE                         R36 K66 [{"name", "style", "size", "testId"}]
      362 GETUPVAL                         R37 9
      363 GETTABLEKS                       R37 R37 K67 ["Icon"]
      365 GETTABLEKS                       R37 R37 K62 ["Check"]
      367 SETTABLEKS                       R37 R36 K64 ["name"]
      369 GETTABLEKS                       R37 R13 K59 ["check"]
      371 GETTABLEKS                       R37 R37 K65 ["style"]
      373 SETTABLEKS                       R37 R36 K65 ["style"]
      375 GETTABLEKS                       R37 R13 K59 ["check"]
      377 GETTABLEKS                       R37 R37 K6 ["size"]
      379 SETTABLEKS                       R37 R36 K6 ["size"]
      381 LOADK                            R38 K68 ["%*--checkmark"]
      382 GETTABLEKS                       R40 R2 K55 ["testId"]
      384 NAMECALL                         R38 R38 K60 ["format"]
      386 CALL                             R38 2 1
      387 MOVE                             R37 R38
      388 SETTABLEKS                       R37 R36 K55 ["testId"]
      390 CALL                             R34 2 1
      391 JUMP                             ; [+1]
      392 LOADNIL                          R34
      393 SETTABLEKS                       R34 R33 K62 ["Check"]
      395 CALL                             R30 3 1
      396 MOVE                             R29 R30
      397 LOADNIL                          R30
      398 JUMPIFEQKNIL                     R11 ; [+28]
      400 GETUPVAL                         R31 2
      401 GETTABLEKS                       R31 R31 K52 ["createElement"]
      403 GETUPVAL                         R32 14
      404 DUPTABLE                         R33 K72 [{["LayoutOrder"] = 1, ["accessory"], ["iconVariant"], ["size"], ["tokens"], ["testId"]}]
      405 SETTABLEKS                       R11 R33 K69 ["accessory"]
      407 GETTABLEKS                       R34 R13 K12 ["icon"]
      409 SETTABLEKS                       R34 R33 K70 ["iconVariant"]
      411 SETTABLEKS                       R7 R33 K6 ["size"]
      413 SETTABLEKS                       R6 R33 K71 ["tokens"]
      415 LOADK                            R35 K73 ["%*--leading"]
      416 GETTABLEKS                       R37 R2 K55 ["testId"]
      418 NAMECALL                         R35 R35 K60 ["format"]
      420 CALL                             R35 2 1
      421 MOVE                             R34 R35
      422 SETTABLEKS                       R34 R33 K55 ["testId"]
      424 CALL                             R31 2 1
      425 MOVE                             R30 R31
      426 JUMP                             ; [+23]
      427 JUMPIFNOT                        R4 ; [+22]
      428 GETUPVAL                         R31 2
      429 GETTABLEKS                       R31 R31 K52 ["createElement"]
      431 GETUPVAL                         R32 12
      432 DUPTABLE                         R33 K74 [{["LayoutOrder"] = 1, ["tag"]}]
      433 LOADK                            R35 K57 ["%* %*"]
      434 GETTABLEKS                       R37 R13 K58 ["slotAlign"]
      436 GETTABLEKS                       R37 R37 K54 ["tag"]
      438 GETTABLEKS                       R38 R13 K12 ["icon"]
      440 GETTABLEKS                       R38 R38 K54 ["tag"]
      442 NAMECALL                         R35 R35 K60 ["format"]
      444 CALL                             R35 3 1
      445 MOVE                             R34 R35
      446 SETTABLEKS                       R34 R33 K54 ["tag"]
      448 CALL                             R31 2 1
      449 MOVE                             R30 R31
      450 GETUPVAL                         R31 2
      451 GETTABLEKS                       R31 R31 K52 ["createElement"]
      453 GETUPVAL                         R32 15
      454 DUPTABLE                         R33 K77 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
      455 GETTABLEKS                       R34 R2 K78 ["text"]
      457 SETTABLEKS                       R34 R33 K76 ["Text"]
      459 GETTABLEKS                       R34 R13 K78 ["text"]
      461 GETTABLEKS                       R34 R34 K54 ["tag"]
      463 SETTABLEKS                       R34 R33 K54 ["tag"]
      465 CALL                             R31 2 1
      466 LOADNIL                          R32
      467 JUMPIFNOT                        R9 ; [+36]
      468 GETUPVAL                         R33 2
      469 GETTABLEKS                       R33 R33 K52 ["createElement"]
      471 GETUPVAL                         R34 13
      472 DUPTABLE                         R35 K80 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      473 GETUPVAL                         R36 9
      474 GETTABLEKS                       R36 R36 K67 ["Icon"]
      476 GETTABLEKS                       R36 R36 K81 ["ChevronSmallRight"]
      478 SETTABLEKS                       R36 R35 K64 ["name"]
      480 GETTABLEKS                       R36 R13 K59 ["check"]
      482 GETTABLEKS                       R36 R36 K65 ["style"]
      484 SETTABLEKS                       R36 R35 K65 ["style"]
      486 GETTABLEKS                       R36 R13 K82 ["chevron"]
      488 GETTABLEKS                       R36 R36 K6 ["size"]
      490 SETTABLEKS                       R36 R35 K6 ["size"]
      492 LOADK                            R37 K83 ["%*--chevron"]
      493 GETTABLEKS                       R39 R2 K55 ["testId"]
      495 NAMECALL                         R37 R37 K60 ["format"]
      497 CALL                             R37 2 1
      498 MOVE                             R36 R37
      499 SETTABLEKS                       R36 R35 K55 ["testId"]
      501 CALL                             R33 2 1
      502 MOVE                             R32 R33
      503 JUMP                             ; [+28]
      504 JUMPIFEQKNIL                     R12 ; [+27]
      506 GETUPVAL                         R33 2
      507 GETTABLEKS                       R33 R33 K52 ["createElement"]
      509 GETUPVAL                         R34 14
      510 DUPTABLE                         R35 K84 [{["LayoutOrder"] = 3, ["accessory"], ["iconVariant"], ["size"], ["tokens"], ["testId"]}]
      511 SETTABLEKS                       R12 R35 K69 ["accessory"]
      513 GETTABLEKS                       R36 R13 K12 ["icon"]
      515 SETTABLEKS                       R36 R35 K70 ["iconVariant"]
      517 SETTABLEKS                       R7 R35 K6 ["size"]
      519 SETTABLEKS                       R6 R35 K71 ["tokens"]
      521 LOADK                            R37 K85 ["%*--trailing"]
      522 GETTABLEKS                       R39 R2 K55 ["testId"]
      524 NAMECALL                         R37 R37 K60 ["format"]
      526 CALL                             R37 2 1
      527 MOVE                             R36 R37
      528 SETTABLEKS                       R36 R35 K55 ["testId"]
      530 CALL                             R33 2 1
      531 MOVE                             R32 R33
      532 GETUPVAL                         R33 2
      533 GETTABLEKS                       R33 R33 K52 ["createElement"]
      535 GETUPVAL                         R34 12
      536 GETUPVAL                         R35 16
      537 MOVE                             R36 R2
      538 DUPTABLE                         R37 K92 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "padding", "layout", "ref"}]
      539 GETTABLEKS                       R39 R2 K26 ["isDisabled"]
      541 JUMPIFNOT                        R39 ; [+4]
      542 GETUPVAL                         R38 17
      543 GETTABLEKS                       R38 R38 K93 ["DISABLED_TRANSPARENCY"]
      545 JUMP                             ; [+1]
      546 LOADNIL                          R38
      547 SETTABLEKS                       R38 R37 K86 ["GroupTransparency"]
      549 GETTABLEKS                       R38 R2 K26 ["isDisabled"]
      551 SETTABLEKS                       R38 R37 K26 ["isDisabled"]
      553 SETTABLEKS                       R20 R37 K30 ["onActivated"]
      555 DUPTABLE                         R38 K95 [{"Selectable"}]
      556 GETTABLEKS                       R40 R2 K26 ["isDisabled"]
      558 NOT                              R39 R40
      559 SETTABLEKS                       R39 R38 K94 ["Selectable"]
      561 SETTABLEKS                       R38 R37 K87 ["selection"]
      563 SETTABLEKS                       R22 R37 K88 ["cursor"]
      565 GETTABLEKS                       R38 R13 K34 ["container"]
      567 GETTABLEKS                       R38 R38 K54 ["tag"]
      569 SETTABLEKS                       R38 R37 K54 ["tag"]
      571 SETTABLEKS                       R26 R37 K89 ["padding"]
      573 SETTABLEKS                       R27 R37 K90 ["layout"]
      575 SETTABLEKS                       R24 R37 K91 ["ref"]
      577 CALL                             R35 2 1
      578 DUPTABLE                         R36 K97 [{"Check", "Wrapper"}]
      579 SETTABLEKS                       R29 R36 K62 ["Check"]
      581 GETUPVAL                         R37 2
      582 GETTABLEKS                       R37 R37 K52 ["createElement"]
      584 GETUPVAL                         R38 12
      585 DUPTABLE                         R39 K100 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy", ["flexItem"], ["layout"]}]
      586 DUPTABLE                         R40 K102 [{"FlexMode"}]
      587 GETIMPORT                        R41 K105 [Enum.UIFlexMode.Fill]
      589 SETTABLEKS                       R41 R40 K101 ["FlexMode"]
      591 SETTABLEKS                       R40 R39 K99 ["flexItem"]
      593 DUPTABLE                         R40 K107 [{"FillDirection", "HorizontalFlex", "VerticalAlignment", "Padding", "SortOrder"}]
      594 GETIMPORT                        R41 K42 [Enum.FillDirection.Horizontal]
      596 SETTABLEKS                       R41 R40 K35 ["FillDirection"]
      598 GETIMPORT                        R41 K110 [Enum.UIFlexAlignment.SpaceBetween]
      600 SETTABLEKS                       R41 R40 K106 ["HorizontalFlex"]
      602 GETIMPORT                        R41 K44 [Enum.VerticalAlignment.Center]
      604 SETTABLEKS                       R41 R40 K36 ["VerticalAlignment"]
      606 GETIMPORT                        R41 K47 [UDim.new]
      608 LOADN                            R42 0
      609 MOVE                             R43 R28
      610 CALL                             R41 2 1
      611 SETTABLEKS                       R41 R40 K37 ["Padding"]
      613 GETIMPORT                        R41 K49 [Enum.SortOrder.LayoutOrder]
      615 SETTABLEKS                       R41 R40 K38 ["SortOrder"]
      617 SETTABLEKS                       R40 R39 K90 ["layout"]
      619 DUPTABLE                         R40 K114 [{"Leading", "Title", "Trailing"}]
      620 SETTABLEKS                       R30 R40 K111 ["Leading"]
      622 SETTABLEKS                       R31 R40 K112 ["Title"]
      624 SETTABLEKS                       R32 R40 K113 ["Trailing"]
      626 CALL                             R37 3 1
      627 SETTABLEKS                       R37 R36 K96 ["Wrapper"]
      629 CALL                             R33 3 1
      630 MOVE                             R25 R33
      631 JUMP                             ; [+223]
      632 GETUPVAL                         R26 2
      633 GETTABLEKS                       R26 R26 K52 ["createElement"]
      635 GETUPVAL                         R27 12
      636 GETUPVAL                         R28 16
      637 MOVE                             R29 R2
      638 DUPTABLE                         R30 K115 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      639 GETTABLEKS                       R32 R2 K26 ["isDisabled"]
      641 JUMPIFNOT                        R32 ; [+4]
      642 GETUPVAL                         R31 17
      643 GETTABLEKS                       R31 R31 K93 ["DISABLED_TRANSPARENCY"]
      645 JUMP                             ; [+1]
      646 LOADNIL                          R31
      647 SETTABLEKS                       R31 R30 K86 ["GroupTransparency"]
      649 GETTABLEKS                       R31 R2 K26 ["isDisabled"]
      651 SETTABLEKS                       R31 R30 K26 ["isDisabled"]
      653 SETTABLEKS                       R20 R30 K30 ["onActivated"]
      655 DUPTABLE                         R31 K95 [{"Selectable"}]
      656 GETTABLEKS                       R33 R2 K26 ["isDisabled"]
      658 NOT                              R32 R33
      659 SETTABLEKS                       R32 R31 K94 ["Selectable"]
      661 SETTABLEKS                       R31 R30 K87 ["selection"]
      663 SETTABLEKS                       R22 R30 K88 ["cursor"]
      665 GETTABLEKS                       R31 R13 K34 ["container"]
      667 GETTABLEKS                       R31 R31 K54 ["tag"]
      669 SETTABLEKS                       R31 R30 K54 ["tag"]
      671 SETTABLEKS                       R24 R30 K91 ["ref"]
      673 CALL                             R28 2 1
      674 DUPTABLE                         R29 K117 [{"Icon", "Text", "Chevron", "Check"}]
      675 GETTABLEKS                       R31 R2 K12 ["icon"]
      677 JUMPIF                           R31 ; [+1]
      678 JUMPIFNOT                        R4 ; [+72]
      679 GETTABLEKS                       R31 R2 K12 ["icon"]
      681 JUMPIFNOT                        R31 ; [+52]
      682 GETUPVAL                         R31 18
      683 GETTABLEKS                       R32 R2 K12 ["icon"]
      685 CALL                             R31 1 1
      686 JUMPIFNOT                        R31 ; [+47]
      687 GETUPVAL                         R30 2
      688 GETTABLEKS                       R30 R30 K52 ["createElement"]
      690 GETUPVAL                         R31 12
      691 DUPTABLE                         R32 K74 [{["LayoutOrder"] = 1, ["tag"]}]
      692 LOADK                            R34 K118 ["align-x-center align-y-center %*"]
      693 GETTABLEKS                       R36 R13 K12 ["icon"]
      695 GETTABLEKS                       R36 R36 K54 ["tag"]
      697 NAMECALL                         R34 R34 K60 ["format"]
      699 CALL                             R34 2 1
      700 MOVE                             R33 R34
      701 SETTABLEKS                       R33 R32 K54 ["tag"]
      703 DUPTABLE                         R33 K119 [{"Icon"}]
      704 GETUPVAL                         R34 2
      705 GETTABLEKS                       R34 R34 K52 ["createElement"]
      707 GETUPVAL                         R35 13
      708 DUPTABLE                         R36 K120 [{"name", "style", "size"}]
      709 JUMPIFNOT                        R23 ; [+3]
      710 GETTABLEKS                       R37 R23 K64 ["name"]
      712 JUMP                             ; [+2]
      713 GETTABLEKS                       R37 R2 K12 ["icon"]
      715 SETTABLEKS                       R37 R36 K64 ["name"]
      717 GETTABLEKS                       R37 R13 K12 ["icon"]
      719 GETTABLEKS                       R37 R37 K65 ["style"]
      721 SETTABLEKS                       R37 R36 K65 ["style"]
      723 GETTABLEKS                       R37 R13 K12 ["icon"]
      725 GETTABLEKS                       R37 R37 K6 ["size"]
      727 SETTABLEKS                       R37 R36 K6 ["size"]
      729 CALL                             R34 2 1
      730 SETTABLEKS                       R34 R33 K67 ["Icon"]
      732 CALL                             R30 3 1
      733 JUMP                             ; [+18]
      734 GETUPVAL                         R30 2
      735 GETTABLEKS                       R30 R30 K52 ["createElement"]
      737 GETUPVAL                         R31 19
      738 DUPTABLE                         R32 K122 [{["LayoutOrder"] = 1, ["Image"], ["tag"]}]
      739 GETTABLEKS                       R33 R2 K12 ["icon"]
      741 SETTABLEKS                       R33 R32 K121 ["Image"]
      743 GETTABLEKS                       R33 R13 K12 ["icon"]
      745 GETTABLEKS                       R33 R33 K54 ["tag"]
      747 SETTABLEKS                       R33 R32 K54 ["tag"]
      749 CALL                             R30 2 1
      750 JUMP                             ; [+1]
      751 LOADNIL                          R30
      752 SETTABLEKS                       R30 R29 K67 ["Icon"]
      754 GETUPVAL                         R30 2
      755 GETTABLEKS                       R30 R30 K52 ["createElement"]
      757 GETUPVAL                         R31 15
      758 DUPTABLE                         R32 K77 [{["LayoutOrder"] = 2, ["Text"], ["tag"]}]
      759 GETTABLEKS                       R33 R2 K78 ["text"]
      761 SETTABLEKS                       R33 R32 K76 ["Text"]
      763 GETTABLEKS                       R33 R13 K78 ["text"]
      765 GETTABLEKS                       R33 R33 K54 ["tag"]
      767 SETTABLEKS                       R33 R32 K54 ["tag"]
      769 CALL                             R30 2 1
      770 SETTABLEKS                       R30 R29 K76 ["Text"]
      772 JUMPIFNOT                        R9 ; [+35]
      773 GETUPVAL                         R30 2
      774 GETTABLEKS                       R30 R30 K52 ["createElement"]
      776 GETUPVAL                         R31 13
      777 DUPTABLE                         R32 K80 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      778 GETUPVAL                         R33 9
      779 GETTABLEKS                       R33 R33 K67 ["Icon"]
      781 GETTABLEKS                       R33 R33 K81 ["ChevronSmallRight"]
      783 SETTABLEKS                       R33 R32 K64 ["name"]
      785 GETTABLEKS                       R33 R13 K59 ["check"]
      787 GETTABLEKS                       R33 R33 K65 ["style"]
      789 SETTABLEKS                       R33 R32 K65 ["style"]
      791 GETTABLEKS                       R33 R13 K82 ["chevron"]
      793 GETTABLEKS                       R33 R33 K6 ["size"]
      795 SETTABLEKS                       R33 R32 K6 ["size"]
      797 LOADK                            R34 K83 ["%*--chevron"]
      798 GETTABLEKS                       R36 R2 K55 ["testId"]
      800 NAMECALL                         R34 R34 K60 ["format"]
      802 CALL                             R34 2 1
      803 MOVE                             R33 R34
      804 SETTABLEKS                       R33 R32 K55 ["testId"]
      806 CALL                             R30 2 1
      807 JUMP                             ; [+1]
      808 LOADNIL                          R30
      809 SETTABLEKS                       R30 R29 K116 ["Chevron"]
      811 JUMPIF                           R9 ; [+38]
      812 GETTABLEKS                       R31 R2 K5 ["isChecked"]
      814 JUMPIFNOT                        R31 ; [+35]
      815 GETUPVAL                         R30 2
      816 GETTABLEKS                       R30 R30 K52 ["createElement"]
      818 GETUPVAL                         R31 13
      819 DUPTABLE                         R32 K80 [{["LayoutOrder"] = 3, ["name"], ["style"], ["size"], ["testId"]}]
      820 GETUPVAL                         R33 9
      821 GETTABLEKS                       R33 R33 K67 ["Icon"]
      823 GETTABLEKS                       R33 R33 K62 ["Check"]
      825 SETTABLEKS                       R33 R32 K64 ["name"]
      827 GETTABLEKS                       R33 R13 K59 ["check"]
      829 GETTABLEKS                       R33 R33 K65 ["style"]
      831 SETTABLEKS                       R33 R32 K65 ["style"]
      833 GETTABLEKS                       R33 R13 K59 ["check"]
      835 GETTABLEKS                       R33 R33 K6 ["size"]
      837 SETTABLEKS                       R33 R32 K6 ["size"]
      839 LOADK                            R34 K68 ["%*--checkmark"]
      840 GETTABLEKS                       R36 R2 K55 ["testId"]
      842 NAMECALL                         R34 R34 K60 ["format"]
      844 CALL                             R34 2 1
      845 MOVE                             R33 R34
      846 SETTABLEKS                       R33 R32 K55 ["testId"]
      848 CALL                             R30 2 1
      849 JUMP                             ; [+1]
      850 LOADNIL                          R30
      851 SETTABLEKS                       R30 R29 K62 ["Check"]
      853 CALL                             R26 3 1
      854 MOVE                             R25 R26
      855 JUMPIF                           R9 ; [+1]
      856 RETURN                           R25 1
      857 GETTABLEKS                       R26 R6 K123 ["Stroke"]
      859 GETTABLEKS                       R26 R26 K124 ["Standard"]
      861 GETTABLEKS                       R27 R13 K125 ["groupPadding"]
      863 GETTABLEKS                       R27 R27 K6 ["size"]
      865 GETUPVAL                         R28 2
      866 GETTABLEKS                       R28 R28 K52 ["createElement"]
      868 GETUPVAL                         R29 2
      869 GETTABLEKS                       R29 R29 K126 ["Fragment"]
      871 LOADNIL                          R30
      872 DUPTABLE                         R31 K129 [{"Item", "Submenu"}]
      873 SETTABLEKS                       R25 R31 K127 ["Item"]
      875 GETUPVAL                         R32 2
      876 GETTABLEKS                       R32 R32 K52 ["createElement"]
      878 GETUPVAL                         R33 20
      879 GETTABLEKS                       R33 R33 K130 ["Root"]
      881 DUPTABLE                         R34 K132 [{"isOpen", "testId"}]
      882 SETTABLEKS                       R10 R34 K131 ["isOpen"]
      884 LOADK                            R36 K133 ["%*--submenu"]
      885 GETTABLEKS                       R38 R2 K55 ["testId"]
      887 NAMECALL                         R36 R36 K60 ["format"]
      889 CALL                             R36 2 1
      890 MOVE                             R35 R36
      891 SETTABLEKS                       R35 R34 K55 ["testId"]
      893 DUPTABLE                         R35 K136 [{"Anchor", "Content"}]
      894 GETUPVAL                         R36 2
      895 GETTABLEKS                       R36 R36 K52 ["createElement"]
      897 GETUPVAL                         R37 20
      898 GETTABLEKS                       R37 R37 K134 ["Anchor"]
      900 DUPTABLE                         R38 K138 [{"anchorRef"}]
      901 SETTABLEKS                       R14 R38 K137 ["anchorRef"]
      903 CALL                             R36 2 1
      904 SETTABLEKS                       R36 R35 K134 ["Anchor"]
      906 GETUPVAL                         R36 2
      907 GETTABLEKS                       R36 R36 K52 ["createElement"]
      909 GETUPVAL                         R37 20
      910 GETTABLEKS                       R37 R37 K135 ["Content"]
      912 DUPTABLE                         R38 K146 [{["side"], ["align"], ["hasArrow"] = False, ["onPressedOutside"], ["backgroundStyle"], ["radius"]}]
      913 DUPTABLE                         R39 K149 [{"position", "offset"}]
      914 GETUPVAL                         R40 21
      915 GETTABLEKS                       R40 R40 K150 ["Right"]
      917 SETTABLEKS                       R40 R39 K147 ["position"]
      919 DIVK                             R41 R27 K75 [2]
      920 ADD                              R40 R41 R26
      921 SETTABLEKS                       R40 R39 K148 ["offset"]
      923 SETTABLEKS                       R39 R38 K139 ["side"]
      925 DUPTABLE                         R39 K149 [{"position", "offset"}]
      926 GETUPVAL                         R40 22
      927 GETTABLEKS                       R40 R40 K151 ["Start"]
      929 SETTABLEKS                       R40 R39 K147 ["position"]
      931 MINUS                            R40 R27
      932 SETTABLEKS                       R40 R39 K148 ["offset"]
      934 SETTABLEKS                       R39 R38 K140 ["align"]
      936 SETTABLEKS                       R21 R38 K143 ["onPressedOutside"]
      938 GETUPVAL                         R40 4
      939 GETTABLEKS                       R40 R40 K1 ["FoundationBaseMenuBeta"]
      941 JUMPIFNOT                        R40 ; [+7]
      942 GETTABLEKS                       R39 R6 K152 ["Color"]
      944 GETTABLEKS                       R39 R39 K153 ["Surface"]
      946 GETTABLEKS                       R39 R39 K154 ["Surface_200"]
      948 JUMP                             ; [+6]
      949 GETTABLEKS                       R39 R6 K152 ["Color"]
      951 GETTABLEKS                       R39 R39 K153 ["Surface"]
      953 GETTABLEKS                       R39 R39 K155 ["Surface_100"]
      955 SETTABLEKS                       R39 R38 K144 ["backgroundStyle"]
      957 GETUPVAL                         R39 23
      958 GETTABLEKS                       R39 R39 K156 ["Medium"]
      960 SETTABLEKS                       R39 R38 K145 ["radius"]
      962 GETUPVAL                         R39 2
      963 GETTABLEKS                       R39 R39 K52 ["createElement"]
      965 GETUPVAL                         R40 12
      966 DUPTABLE                         R41 K158 [{"tag", "InputSink"}]
      967 GETTABLEKS                       R42 R13 K159 ["submenuContent"]
      969 GETTABLEKS                       R42 R42 K54 ["tag"]
      971 SETTABLEKS                       R42 R41 K54 ["tag"]
      973 GETUPVAL                         R42 24
      974 SETTABLEKS                       R42 R41 K157 ["InputSink"]
      976 GETUPVAL                         R42 2
      977 GETTABLEKS                       R42 R42 K52 ["createElement"]
      979 GETUPVAL                         R43 3
      980 GETTABLEKS                       R43 R43 K160 ["Provider"]
      982 DUPTABLE                         R44 K162 [{"value"}]
      983 DUPTABLE                         R45 K163 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
      984 GETTABLEKS                       R46 R3 K30 ["onActivated"]
      986 SETTABLEKS                       R46 R45 K30 ["onActivated"]
      988 GETTABLEKS                       R46 R3 K31 ["onNestedLeafActivated"]
      990 SETTABLEKS                       R46 R45 K31 ["onNestedLeafActivated"]
      992 SETTABLEKS                       R7 R45 K6 ["size"]
      994 SETTABLEKS                       R16 R45 K3 ["hasLeading"]
      996 SETTABLEKS                       R18 R45 K23 ["setHasLeading"]
      998 GETTABLEKS                       R46 R3 K9 ["hoverOpenPath"]
     1000 SETTABLEKS                       R46 R45 K9 ["hoverOpenPath"]
     1002 GETTABLEKS                       R46 R3 K27 ["hoverOpenAtDepth"]
     1004 SETTABLEKS                       R46 R45 K27 ["hoverOpenAtDepth"]
     1006 GETTABLEKS                       R46 R3 K28 ["hoverCloseAtDepth"]
     1008 SETTABLEKS                       R46 R45 K28 ["hoverCloseAtDepth"]
     1010 GETTABLEKS                       R46 R3 K32 ["hoverReset"]
     1012 SETTABLEKS                       R46 R45 K32 ["hoverReset"]
     1014 ADDK                             R46 R8 K53 [1]
     1015 SETTABLEKS                       R46 R45 K7 ["depth"]
     1017 SETTABLEKS                       R45 R44 K161 ["value"]
     1019 GETTABLEKS                       R45 R2 K8 ["children"]
     1021 CALL                             R42 3 -1
     1022 CALL                             R39 -1 -1
     1023 CALL                             R36 -1 1
     1024 SETTABLEKS                       R36 R35 K135 ["Content"]
     1026 CALL                             R32 3 1
     1027 SETTABLEKS                       R32 R31 K128 ["Submenu"]
     1029 CALL                             R28 3 -1
     1030 RETURN                           R28 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["iconMigrationUtils"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["isBuilderOrMigratedIcon"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Utility"]
       27 GETTABLEKS                       R6 R6 K11 ["Logger"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R1 K12 ["React"]
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
       93 GETTABLEKS                       R16 R0 K8 ["Utility"]
       95 GETTABLEKS                       R16 R16 K24 ["withCommonProps"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K8 ["Utility"]
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
      142 GETTABLEKS                       R24 R0 K8 ["Utility"]
      144 GETTABLEKS                       R24 R24 K33 ["Flags"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K6 [require]
      149 GETIMPORT                        R25 K1 [script]
      151 GETTABLEKS                       R25 R25 K4 ["Parent"]
      153 GETTABLEKS                       R25 R25 K34 ["BaseMenuItemAccessory"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K6 [require]
      158 GETIMPORT                        R26 K1 [script]
      160 GETTABLEKS                       R26 R26 K4 ["Parent"]
      162 GETTABLEKS                       R26 R26 K35 ["BaseMenuContext"]
      164 CALL                             R25 1 1
      165 GETIMPORT                        R26 K6 [require]
      167 GETIMPORT                        R27 K1 [script]
      169 GETTABLEKS                       R27 R27 K4 ["Parent"]
      171 GETTABLEKS                       R27 R27 K36 ["useBaseMenuItemVariants"]
      173 CALL                             R26 1 1
      174 GETIMPORT                        R27 K6 [require]
      176 GETIMPORT                        R28 K1 [script]
      178 GETTABLEKS                       R28 R28 K4 ["Parent"]
      180 GETTABLEKS                       R28 R28 K37 ["useMenuItemHover"]
      182 CALL                             R27 1 1
      183 DUPTABLE                         R28 K40 [{["isChecked"] = False}]
      184 DUPCLOSURE                       R29 K41 [PROTO_0]
      185 DUPCLOSURE                       R30 K42 [PROTO_2]
      186 CAPTURE                          VAL R23
      187 MOVE                             R31 R30
      188 CALL                             R31 0 1
      189 DUPCLOSURE                       R32 K43 [PROTO_3]
      190 DUPCLOSURE                       R33 K44 [PROTO_10]
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R28
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R27
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R2
      201 CAPTURE                          VAL R18
      202 CAPTURE                          VAL R32
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R9
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R20
      214 CAPTURE                          VAL R22
      215 CAPTURE                          VAL R31
      216 GETTABLEKS                       R34 R6 K45 ["memo"]
      218 GETTABLEKS                       R35 R6 K46 ["forwardRef"]
      220 MOVE                             R36 R33
      221 CALL                             R35 1 -1
      222 CALL                             R34 -1 -1
      223 RETURN                           R34 -1
