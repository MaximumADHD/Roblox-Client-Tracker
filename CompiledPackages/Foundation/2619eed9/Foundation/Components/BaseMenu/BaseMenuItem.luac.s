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
      289 JUMPIFNOT                        R26 ; [+366]
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
      325 JUMPIFNOT                        R5 ; [+74]
      326 GETUPVAL                         R30 2
      327 GETTABLEKS                       R30 R30 K52 ["createElement"]
      329 GETUPVAL                         R31 12
      330 DUPTABLE                         R32 K55 [{"LayoutOrder", "tag", "testId"}]
      331 LOADN                            R33 1
      332 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      334 LOADK                            R34 K56 ["%* %*"]
      335 GETTABLEKS                       R36 R13 K57 ["slotAlign"]
      337 GETTABLEKS                       R36 R36 K53 ["tag"]
      339 GETTABLEKS                       R37 R13 K58 ["check"]
      341 GETTABLEKS                       R37 R37 K53 ["tag"]
      343 NAMECALL                         R34 R34 K59 ["format"]
      345 CALL                             R34 3 1
      346 MOVE                             R33 R34
      347 SETTABLEKS                       R33 R32 K53 ["tag"]
      349 LOADK                            R34 K60 ["%*--check-column"]
      350 GETTABLEKS                       R36 R2 K54 ["testId"]
      352 NAMECALL                         R34 R34 K59 ["format"]
      354 CALL                             R34 2 1
      355 MOVE                             R33 R34
      356 SETTABLEKS                       R33 R32 K54 ["testId"]
      358 DUPTABLE                         R33 K62 [{"Check"}]
      359 JUMPIFNOT                        R15 ; [+35]
      360 GETUPVAL                         R34 2
      361 GETTABLEKS                       R34 R34 K52 ["createElement"]
      363 GETUPVAL                         R35 13
      364 DUPTABLE                         R36 K65 [{"name", "style", "size", "testId"}]
      365 GETUPVAL                         R37 9
      366 GETTABLEKS                       R37 R37 K66 ["Icon"]
      368 GETTABLEKS                       R37 R37 K61 ["Check"]
      370 SETTABLEKS                       R37 R36 K63 ["name"]
      372 GETTABLEKS                       R37 R13 K58 ["check"]
      374 GETTABLEKS                       R37 R37 K64 ["style"]
      376 SETTABLEKS                       R37 R36 K64 ["style"]
      378 GETTABLEKS                       R37 R13 K58 ["check"]
      380 GETTABLEKS                       R37 R37 K6 ["size"]
      382 SETTABLEKS                       R37 R36 K6 ["size"]
      384 LOADK                            R38 K67 ["%*--checkmark"]
      385 GETTABLEKS                       R40 R2 K54 ["testId"]
      387 NAMECALL                         R38 R38 K59 ["format"]
      389 CALL                             R38 2 1
      390 MOVE                             R37 R38
      391 SETTABLEKS                       R37 R36 K54 ["testId"]
      393 CALL                             R34 2 1
      394 JUMP                             ; [+1]
      395 LOADNIL                          R34
      396 SETTABLEKS                       R34 R33 K61 ["Check"]
      398 CALL                             R30 3 1
      399 MOVE                             R29 R30
      400 LOADNIL                          R30
      401 JUMPIFEQKNIL                     R11 ; [+31]
      403 GETUPVAL                         R31 2
      404 GETTABLEKS                       R31 R31 K52 ["createElement"]
      406 GETUPVAL                         R32 14
      407 DUPTABLE                         R33 K71 [{"LayoutOrder", "accessory", "iconVariant", "size", "tokens", "testId"}]
      408 LOADN                            R34 1
      409 SETTABLEKS                       R34 R33 K48 ["LayoutOrder"]
      411 SETTABLEKS                       R11 R33 K68 ["accessory"]
      413 GETTABLEKS                       R34 R13 K12 ["icon"]
      415 SETTABLEKS                       R34 R33 K69 ["iconVariant"]
      417 SETTABLEKS                       R7 R33 K6 ["size"]
      419 SETTABLEKS                       R6 R33 K70 ["tokens"]
      421 LOADK                            R35 K72 ["%*--leading"]
      422 GETTABLEKS                       R37 R2 K54 ["testId"]
      424 NAMECALL                         R35 R35 K59 ["format"]
      426 CALL                             R35 2 1
      427 MOVE                             R34 R35
      428 SETTABLEKS                       R34 R33 K54 ["testId"]
      430 CALL                             R31 2 1
      431 MOVE                             R30 R31
      432 JUMP                             ; [+26]
      433 JUMPIFNOT                        R4 ; [+25]
      434 GETUPVAL                         R31 2
      435 GETTABLEKS                       R31 R31 K52 ["createElement"]
      437 GETUPVAL                         R32 12
      438 DUPTABLE                         R33 K73 [{"LayoutOrder", "tag"}]
      439 LOADN                            R34 1
      440 SETTABLEKS                       R34 R33 K48 ["LayoutOrder"]
      442 LOADK                            R35 K56 ["%* %*"]
      443 GETTABLEKS                       R37 R13 K57 ["slotAlign"]
      445 GETTABLEKS                       R37 R37 K53 ["tag"]
      447 GETTABLEKS                       R38 R13 K12 ["icon"]
      449 GETTABLEKS                       R38 R38 K53 ["tag"]
      451 NAMECALL                         R35 R35 K59 ["format"]
      453 CALL                             R35 3 1
      454 MOVE                             R34 R35
      455 SETTABLEKS                       R34 R33 K53 ["tag"]
      457 CALL                             R31 2 1
      458 MOVE                             R30 R31
      459 GETUPVAL                         R31 2
      460 GETTABLEKS                       R31 R31 K52 ["createElement"]
      462 GETUPVAL                         R32 15
      463 DUPTABLE                         R33 K75 [{"LayoutOrder", "Text", "tag"}]
      464 LOADN                            R34 2
      465 SETTABLEKS                       R34 R33 K48 ["LayoutOrder"]
      467 GETTABLEKS                       R34 R2 K76 ["text"]
      469 SETTABLEKS                       R34 R33 K74 ["Text"]
      471 GETTABLEKS                       R34 R13 K76 ["text"]
      473 GETTABLEKS                       R34 R34 K53 ["tag"]
      475 SETTABLEKS                       R34 R33 K53 ["tag"]
      477 CALL                             R31 2 1
      478 LOADNIL                          R32
      479 JUMPIFNOT                        R9 ; [+39]
      480 GETUPVAL                         R33 2
      481 GETTABLEKS                       R33 R33 K52 ["createElement"]
      483 GETUPVAL                         R34 13
      484 DUPTABLE                         R35 K77 [{"LayoutOrder", "name", "style", "size", "testId"}]
      485 LOADN                            R36 3
      486 SETTABLEKS                       R36 R35 K48 ["LayoutOrder"]
      488 GETUPVAL                         R36 9
      489 GETTABLEKS                       R36 R36 K66 ["Icon"]
      491 GETTABLEKS                       R36 R36 K78 ["ChevronSmallRight"]
      493 SETTABLEKS                       R36 R35 K63 ["name"]
      495 GETTABLEKS                       R36 R13 K58 ["check"]
      497 GETTABLEKS                       R36 R36 K64 ["style"]
      499 SETTABLEKS                       R36 R35 K64 ["style"]
      501 GETTABLEKS                       R36 R13 K79 ["chevron"]
      503 GETTABLEKS                       R36 R36 K6 ["size"]
      505 SETTABLEKS                       R36 R35 K6 ["size"]
      507 LOADK                            R37 K80 ["%*--chevron"]
      508 GETTABLEKS                       R39 R2 K54 ["testId"]
      510 NAMECALL                         R37 R37 K59 ["format"]
      512 CALL                             R37 2 1
      513 MOVE                             R36 R37
      514 SETTABLEKS                       R36 R35 K54 ["testId"]
      516 CALL                             R33 2 1
      517 MOVE                             R32 R33
      518 JUMP                             ; [+31]
      519 JUMPIFEQKNIL                     R12 ; [+30]
      521 GETUPVAL                         R33 2
      522 GETTABLEKS                       R33 R33 K52 ["createElement"]
      524 GETUPVAL                         R34 14
      525 DUPTABLE                         R35 K71 [{"LayoutOrder", "accessory", "iconVariant", "size", "tokens", "testId"}]
      526 LOADN                            R36 3
      527 SETTABLEKS                       R36 R35 K48 ["LayoutOrder"]
      529 SETTABLEKS                       R12 R35 K68 ["accessory"]
      531 GETTABLEKS                       R36 R13 K12 ["icon"]
      533 SETTABLEKS                       R36 R35 K69 ["iconVariant"]
      535 SETTABLEKS                       R7 R35 K6 ["size"]
      537 SETTABLEKS                       R6 R35 K70 ["tokens"]
      539 LOADK                            R37 K81 ["%*--trailing"]
      540 GETTABLEKS                       R39 R2 K54 ["testId"]
      542 NAMECALL                         R37 R37 K59 ["format"]
      544 CALL                             R37 2 1
      545 MOVE                             R36 R37
      546 SETTABLEKS                       R36 R35 K54 ["testId"]
      548 CALL                             R33 2 1
      549 MOVE                             R32 R33
      550 GETUPVAL                         R33 2
      551 GETTABLEKS                       R33 R33 K52 ["createElement"]
      553 GETUPVAL                         R34 12
      554 GETUPVAL                         R35 16
      555 MOVE                             R36 R2
      556 DUPTABLE                         R37 K88 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "padding", "layout", "ref"}]
      557 GETTABLEKS                       R39 R2 K26 ["isDisabled"]
      559 JUMPIFNOT                        R39 ; [+4]
      560 GETUPVAL                         R38 17
      561 GETTABLEKS                       R38 R38 K89 ["DISABLED_TRANSPARENCY"]
      563 JUMP                             ; [+1]
      564 LOADNIL                          R38
      565 SETTABLEKS                       R38 R37 K82 ["GroupTransparency"]
      567 GETTABLEKS                       R38 R2 K26 ["isDisabled"]
      569 SETTABLEKS                       R38 R37 K26 ["isDisabled"]
      571 SETTABLEKS                       R20 R37 K30 ["onActivated"]
      573 DUPTABLE                         R38 K91 [{"Selectable"}]
      574 GETTABLEKS                       R40 R2 K26 ["isDisabled"]
      576 NOT                              R39 R40
      577 SETTABLEKS                       R39 R38 K90 ["Selectable"]
      579 SETTABLEKS                       R38 R37 K83 ["selection"]
      581 SETTABLEKS                       R22 R37 K84 ["cursor"]
      583 GETTABLEKS                       R38 R13 K34 ["container"]
      585 GETTABLEKS                       R38 R38 K53 ["tag"]
      587 SETTABLEKS                       R38 R37 K53 ["tag"]
      589 SETTABLEKS                       R26 R37 K85 ["padding"]
      591 SETTABLEKS                       R27 R37 K86 ["layout"]
      593 SETTABLEKS                       R24 R37 K87 ["ref"]
      595 CALL                             R35 2 1
      596 DUPTABLE                         R36 K93 [{"Check", "Wrapper"}]
      597 SETTABLEKS                       R29 R36 K61 ["Check"]
      599 GETUPVAL                         R37 2
      600 GETTABLEKS                       R37 R37 K52 ["createElement"]
      602 GETUPVAL                         R38 12
      603 DUPTABLE                         R39 K95 [{"LayoutOrder", "tag", "flexItem", "layout"}]
      604 LOADN                            R40 2
      605 SETTABLEKS                       R40 R39 K48 ["LayoutOrder"]
      607 LOADK                            R40 K96 ["auto-xy"]
      608 SETTABLEKS                       R40 R39 K53 ["tag"]
      610 DUPTABLE                         R40 K98 [{"FlexMode"}]
      611 GETIMPORT                        R41 K101 [Enum.UIFlexMode.Fill]
      613 SETTABLEKS                       R41 R40 K97 ["FlexMode"]
      615 SETTABLEKS                       R40 R39 K94 ["flexItem"]
      617 DUPTABLE                         R40 K103 [{"FillDirection", "HorizontalFlex", "VerticalAlignment", "Padding", "SortOrder"}]
      618 GETIMPORT                        R41 K42 [Enum.FillDirection.Horizontal]
      620 SETTABLEKS                       R41 R40 K35 ["FillDirection"]
      622 GETIMPORT                        R41 K106 [Enum.UIFlexAlignment.SpaceBetween]
      624 SETTABLEKS                       R41 R40 K102 ["HorizontalFlex"]
      626 GETIMPORT                        R41 K44 [Enum.VerticalAlignment.Center]
      628 SETTABLEKS                       R41 R40 K36 ["VerticalAlignment"]
      630 GETIMPORT                        R41 K47 [UDim.new]
      632 LOADN                            R42 0
      633 MOVE                             R43 R28
      634 CALL                             R41 2 1
      635 SETTABLEKS                       R41 R40 K37 ["Padding"]
      637 GETIMPORT                        R41 K49 [Enum.SortOrder.LayoutOrder]
      639 SETTABLEKS                       R41 R40 K38 ["SortOrder"]
      641 SETTABLEKS                       R40 R39 K86 ["layout"]
      643 DUPTABLE                         R40 K110 [{"Leading", "Title", "Trailing"}]
      644 SETTABLEKS                       R30 R40 K107 ["Leading"]
      646 SETTABLEKS                       R31 R40 K108 ["Title"]
      648 SETTABLEKS                       R32 R40 K109 ["Trailing"]
      650 CALL                             R37 3 1
      651 SETTABLEKS                       R37 R36 K92 ["Wrapper"]
      653 CALL                             R33 3 1
      654 MOVE                             R25 R33
      655 JUMP                             ; [+238]
      656 GETUPVAL                         R26 2
      657 GETTABLEKS                       R26 R26 K52 ["createElement"]
      659 GETUPVAL                         R27 12
      660 GETUPVAL                         R28 16
      661 MOVE                             R29 R2
      662 DUPTABLE                         R30 K111 [{"GroupTransparency", "isDisabled", "onActivated", "selection", "cursor", "tag", "ref"}]
      663 GETTABLEKS                       R32 R2 K26 ["isDisabled"]
      665 JUMPIFNOT                        R32 ; [+4]
      666 GETUPVAL                         R31 17
      667 GETTABLEKS                       R31 R31 K89 ["DISABLED_TRANSPARENCY"]
      669 JUMP                             ; [+1]
      670 LOADNIL                          R31
      671 SETTABLEKS                       R31 R30 K82 ["GroupTransparency"]
      673 GETTABLEKS                       R31 R2 K26 ["isDisabled"]
      675 SETTABLEKS                       R31 R30 K26 ["isDisabled"]
      677 SETTABLEKS                       R20 R30 K30 ["onActivated"]
      679 DUPTABLE                         R31 K91 [{"Selectable"}]
      680 GETTABLEKS                       R33 R2 K26 ["isDisabled"]
      682 NOT                              R32 R33
      683 SETTABLEKS                       R32 R31 K90 ["Selectable"]
      685 SETTABLEKS                       R31 R30 K83 ["selection"]
      687 SETTABLEKS                       R22 R30 K84 ["cursor"]
      689 GETTABLEKS                       R31 R13 K34 ["container"]
      691 GETTABLEKS                       R31 R31 K53 ["tag"]
      693 SETTABLEKS                       R31 R30 K53 ["tag"]
      695 SETTABLEKS                       R24 R30 K87 ["ref"]
      697 CALL                             R28 2 1
      698 DUPTABLE                         R29 K113 [{"Icon", "Text", "Chevron", "Check"}]
      699 GETTABLEKS                       R31 R2 K12 ["icon"]
      701 JUMPIF                           R31 ; [+1]
      702 JUMPIFNOT                        R4 ; [+78]
      703 GETTABLEKS                       R31 R2 K12 ["icon"]
      705 JUMPIFNOT                        R31 ; [+55]
      706 GETUPVAL                         R31 18
      707 GETTABLEKS                       R32 R2 K12 ["icon"]
      709 CALL                             R31 1 1
      710 JUMPIFNOT                        R31 ; [+50]
      711 GETUPVAL                         R30 2
      712 GETTABLEKS                       R30 R30 K52 ["createElement"]
      714 GETUPVAL                         R31 12
      715 DUPTABLE                         R32 K73 [{"LayoutOrder", "tag"}]
      716 LOADN                            R33 1
      717 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      719 LOADK                            R34 K114 ["align-x-center align-y-center %*"]
      720 GETTABLEKS                       R36 R13 K12 ["icon"]
      722 GETTABLEKS                       R36 R36 K53 ["tag"]
      724 NAMECALL                         R34 R34 K59 ["format"]
      726 CALL                             R34 2 1
      727 MOVE                             R33 R34
      728 SETTABLEKS                       R33 R32 K53 ["tag"]
      730 DUPTABLE                         R33 K115 [{"Icon"}]
      731 GETUPVAL                         R34 2
      732 GETTABLEKS                       R34 R34 K52 ["createElement"]
      734 GETUPVAL                         R35 13
      735 DUPTABLE                         R36 K116 [{"name", "style", "size"}]
      736 JUMPIFNOT                        R23 ; [+3]
      737 GETTABLEKS                       R37 R23 K63 ["name"]
      739 JUMP                             ; [+2]
      740 GETTABLEKS                       R37 R2 K12 ["icon"]
      742 SETTABLEKS                       R37 R36 K63 ["name"]
      744 GETTABLEKS                       R37 R13 K12 ["icon"]
      746 GETTABLEKS                       R37 R37 K64 ["style"]
      748 SETTABLEKS                       R37 R36 K64 ["style"]
      750 GETTABLEKS                       R37 R13 K12 ["icon"]
      752 GETTABLEKS                       R37 R37 K6 ["size"]
      754 SETTABLEKS                       R37 R36 K6 ["size"]
      756 CALL                             R34 2 1
      757 SETTABLEKS                       R34 R33 K66 ["Icon"]
      759 CALL                             R30 3 1
      760 JUMP                             ; [+21]
      761 GETUPVAL                         R30 2
      762 GETTABLEKS                       R30 R30 K52 ["createElement"]
      764 GETUPVAL                         R31 19
      765 DUPTABLE                         R32 K118 [{"LayoutOrder", "Image", "tag"}]
      766 LOADN                            R33 1
      767 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      769 GETTABLEKS                       R33 R2 K12 ["icon"]
      771 SETTABLEKS                       R33 R32 K117 ["Image"]
      773 GETTABLEKS                       R33 R13 K12 ["icon"]
      775 GETTABLEKS                       R33 R33 K53 ["tag"]
      777 SETTABLEKS                       R33 R32 K53 ["tag"]
      779 CALL                             R30 2 1
      780 JUMP                             ; [+1]
      781 LOADNIL                          R30
      782 SETTABLEKS                       R30 R29 K66 ["Icon"]
      784 GETUPVAL                         R30 2
      785 GETTABLEKS                       R30 R30 K52 ["createElement"]
      787 GETUPVAL                         R31 15
      788 DUPTABLE                         R32 K75 [{"LayoutOrder", "Text", "tag"}]
      789 LOADN                            R33 2
      790 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      792 GETTABLEKS                       R33 R2 K76 ["text"]
      794 SETTABLEKS                       R33 R32 K74 ["Text"]
      796 GETTABLEKS                       R33 R13 K76 ["text"]
      798 GETTABLEKS                       R33 R33 K53 ["tag"]
      800 SETTABLEKS                       R33 R32 K53 ["tag"]
      802 CALL                             R30 2 1
      803 SETTABLEKS                       R30 R29 K74 ["Text"]
      805 JUMPIFNOT                        R9 ; [+38]
      806 GETUPVAL                         R30 2
      807 GETTABLEKS                       R30 R30 K52 ["createElement"]
      809 GETUPVAL                         R31 13
      810 DUPTABLE                         R32 K77 [{"LayoutOrder", "name", "style", "size", "testId"}]
      811 LOADN                            R33 3
      812 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      814 GETUPVAL                         R33 9
      815 GETTABLEKS                       R33 R33 K66 ["Icon"]
      817 GETTABLEKS                       R33 R33 K78 ["ChevronSmallRight"]
      819 SETTABLEKS                       R33 R32 K63 ["name"]
      821 GETTABLEKS                       R33 R13 K58 ["check"]
      823 GETTABLEKS                       R33 R33 K64 ["style"]
      825 SETTABLEKS                       R33 R32 K64 ["style"]
      827 GETTABLEKS                       R33 R13 K79 ["chevron"]
      829 GETTABLEKS                       R33 R33 K6 ["size"]
      831 SETTABLEKS                       R33 R32 K6 ["size"]
      833 LOADK                            R34 K80 ["%*--chevron"]
      834 GETTABLEKS                       R36 R2 K54 ["testId"]
      836 NAMECALL                         R34 R34 K59 ["format"]
      838 CALL                             R34 2 1
      839 MOVE                             R33 R34
      840 SETTABLEKS                       R33 R32 K54 ["testId"]
      842 CALL                             R30 2 1
      843 JUMP                             ; [+1]
      844 LOADNIL                          R30
      845 SETTABLEKS                       R30 R29 K112 ["Chevron"]
      847 JUMPIF                           R9 ; [+41]
      848 GETTABLEKS                       R31 R2 K5 ["isChecked"]
      850 JUMPIFNOT                        R31 ; [+38]
      851 GETUPVAL                         R30 2
      852 GETTABLEKS                       R30 R30 K52 ["createElement"]
      854 GETUPVAL                         R31 13
      855 DUPTABLE                         R32 K77 [{"LayoutOrder", "name", "style", "size", "testId"}]
      856 LOADN                            R33 3
      857 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      859 GETUPVAL                         R33 9
      860 GETTABLEKS                       R33 R33 K66 ["Icon"]
      862 GETTABLEKS                       R33 R33 K61 ["Check"]
      864 SETTABLEKS                       R33 R32 K63 ["name"]
      866 GETTABLEKS                       R33 R13 K58 ["check"]
      868 GETTABLEKS                       R33 R33 K64 ["style"]
      870 SETTABLEKS                       R33 R32 K64 ["style"]
      872 GETTABLEKS                       R33 R13 K58 ["check"]
      874 GETTABLEKS                       R33 R33 K6 ["size"]
      876 SETTABLEKS                       R33 R32 K6 ["size"]
      878 LOADK                            R34 K67 ["%*--checkmark"]
      879 GETTABLEKS                       R36 R2 K54 ["testId"]
      881 NAMECALL                         R34 R34 K59 ["format"]
      883 CALL                             R34 2 1
      884 MOVE                             R33 R34
      885 SETTABLEKS                       R33 R32 K54 ["testId"]
      887 CALL                             R30 2 1
      888 JUMP                             ; [+1]
      889 LOADNIL                          R30
      890 SETTABLEKS                       R30 R29 K61 ["Check"]
      892 CALL                             R26 3 1
      893 MOVE                             R25 R26
      894 JUMPIF                           R9 ; [+1]
      895 RETURN                           R25 1
      896 GETTABLEKS                       R26 R6 K119 ["Stroke"]
      898 GETTABLEKS                       R26 R26 K120 ["Standard"]
      900 GETTABLEKS                       R27 R13 K121 ["groupPadding"]
      902 GETTABLEKS                       R27 R27 K6 ["size"]
      904 GETUPVAL                         R28 2
      905 GETTABLEKS                       R28 R28 K52 ["createElement"]
      907 GETUPVAL                         R29 2
      908 GETTABLEKS                       R29 R29 K122 ["Fragment"]
      910 LOADNIL                          R30
      911 DUPTABLE                         R31 K125 [{"Item", "Submenu"}]
      912 SETTABLEKS                       R25 R31 K123 ["Item"]
      914 GETUPVAL                         R32 2
      915 GETTABLEKS                       R32 R32 K52 ["createElement"]
      917 GETUPVAL                         R33 20
      918 GETTABLEKS                       R33 R33 K126 ["Root"]
      920 DUPTABLE                         R34 K128 [{"isOpen", "testId"}]
      921 SETTABLEKS                       R10 R34 K127 ["isOpen"]
      923 LOADK                            R36 K129 ["%*--submenu"]
      924 GETTABLEKS                       R38 R2 K54 ["testId"]
      926 NAMECALL                         R36 R36 K59 ["format"]
      928 CALL                             R36 2 1
      929 MOVE                             R35 R36
      930 SETTABLEKS                       R35 R34 K54 ["testId"]
      932 DUPTABLE                         R35 K132 [{"Anchor", "Content"}]
      933 GETUPVAL                         R36 2
      934 GETTABLEKS                       R36 R36 K52 ["createElement"]
      936 GETUPVAL                         R37 20
      937 GETTABLEKS                       R37 R37 K130 ["Anchor"]
      939 DUPTABLE                         R38 K134 [{"anchorRef"}]
      940 SETTABLEKS                       R14 R38 K133 ["anchorRef"]
      942 CALL                             R36 2 1
      943 SETTABLEKS                       R36 R35 K130 ["Anchor"]
      945 GETUPVAL                         R36 2
      946 GETTABLEKS                       R36 R36 K52 ["createElement"]
      948 GETUPVAL                         R37 20
      949 GETTABLEKS                       R37 R37 K131 ["Content"]
      951 DUPTABLE                         R38 K141 [{"side", "align", "hasArrow", "onPressedOutside", "backgroundStyle", "radius"}]
      952 DUPTABLE                         R39 K144 [{"position", "offset"}]
      953 GETUPVAL                         R40 21
      954 GETTABLEKS                       R40 R40 K145 ["Right"]
      956 SETTABLEKS                       R40 R39 K142 ["position"]
      958 DIVK                             R41 R27 K146 [2]
      959 ADD                              R40 R41 R26
      960 SETTABLEKS                       R40 R39 K143 ["offset"]
      962 SETTABLEKS                       R39 R38 K135 ["side"]
      964 DUPTABLE                         R39 K144 [{"position", "offset"}]
      965 GETUPVAL                         R40 22
      966 GETTABLEKS                       R40 R40 K147 ["Start"]
      968 SETTABLEKS                       R40 R39 K142 ["position"]
      970 MINUS                            R40 R27
      971 SETTABLEKS                       R40 R39 K143 ["offset"]
      973 SETTABLEKS                       R39 R38 K136 ["align"]
      975 LOADB                            R39 0
      976 SETTABLEKS                       R39 R38 K137 ["hasArrow"]
      978 SETTABLEKS                       R21 R38 K138 ["onPressedOutside"]
      980 GETUPVAL                         R40 4
      981 GETTABLEKS                       R40 R40 K1 ["FoundationBaseMenuBeta"]
      983 JUMPIFNOT                        R40 ; [+7]
      984 GETTABLEKS                       R39 R6 K148 ["Color"]
      986 GETTABLEKS                       R39 R39 K149 ["Surface"]
      988 GETTABLEKS                       R39 R39 K150 ["Surface_200"]
      990 JUMP                             ; [+6]
      991 GETTABLEKS                       R39 R6 K148 ["Color"]
      993 GETTABLEKS                       R39 R39 K149 ["Surface"]
      995 GETTABLEKS                       R39 R39 K151 ["Surface_100"]
      997 SETTABLEKS                       R39 R38 K139 ["backgroundStyle"]
      999 GETUPVAL                         R39 23
     1000 GETTABLEKS                       R39 R39 K152 ["Medium"]
     1002 SETTABLEKS                       R39 R38 K140 ["radius"]
     1004 GETUPVAL                         R39 2
     1005 GETTABLEKS                       R39 R39 K52 ["createElement"]
     1007 GETUPVAL                         R40 12
     1008 DUPTABLE                         R41 K154 [{"tag", "InputSink"}]
     1009 GETTABLEKS                       R42 R13 K155 ["submenuContent"]
     1011 GETTABLEKS                       R42 R42 K53 ["tag"]
     1013 SETTABLEKS                       R42 R41 K53 ["tag"]
     1015 GETUPVAL                         R42 24
     1016 SETTABLEKS                       R42 R41 K153 ["InputSink"]
     1018 GETUPVAL                         R42 2
     1019 GETTABLEKS                       R42 R42 K52 ["createElement"]
     1021 GETUPVAL                         R43 3
     1022 GETTABLEKS                       R43 R43 K156 ["Provider"]
     1024 DUPTABLE                         R44 K158 [{"value"}]
     1025 DUPTABLE                         R45 K159 [{"onActivated", "onNestedLeafActivated", "size", "hasLeading", "setHasLeading", "hoverOpenPath", "hoverOpenAtDepth", "hoverCloseAtDepth", "hoverReset", "depth"}]
     1026 GETTABLEKS                       R46 R3 K30 ["onActivated"]
     1028 SETTABLEKS                       R46 R45 K30 ["onActivated"]
     1030 GETTABLEKS                       R46 R3 K31 ["onNestedLeafActivated"]
     1032 SETTABLEKS                       R46 R45 K31 ["onNestedLeafActivated"]
     1034 SETTABLEKS                       R7 R45 K6 ["size"]
     1036 SETTABLEKS                       R16 R45 K3 ["hasLeading"]
     1038 SETTABLEKS                       R18 R45 K23 ["setHasLeading"]
     1040 GETTABLEKS                       R46 R3 K9 ["hoverOpenPath"]
     1042 SETTABLEKS                       R46 R45 K9 ["hoverOpenPath"]
     1044 GETTABLEKS                       R46 R3 K27 ["hoverOpenAtDepth"]
     1046 SETTABLEKS                       R46 R45 K27 ["hoverOpenAtDepth"]
     1048 GETTABLEKS                       R46 R3 K28 ["hoverCloseAtDepth"]
     1050 SETTABLEKS                       R46 R45 K28 ["hoverCloseAtDepth"]
     1052 GETTABLEKS                       R46 R3 K32 ["hoverReset"]
     1054 SETTABLEKS                       R46 R45 K32 ["hoverReset"]
     1056 ADDK                             R46 R8 K160 [1]
     1057 SETTABLEKS                       R46 R45 K7 ["depth"]
     1059 SETTABLEKS                       R45 R44 K157 ["value"]
     1061 GETTABLEKS                       R45 R2 K8 ["children"]
     1063 CALL                             R42 3 -1
     1064 CALL                             R39 -1 -1
     1065 CALL                             R36 -1 1
     1066 SETTABLEKS                       R36 R35 K131 ["Content"]
     1068 CALL                             R32 3 1
     1069 SETTABLEKS                       R32 R31 K124 ["Submenu"]
     1071 CALL                             R28 3 -1
     1072 RETURN                           R28 -1

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
      183 DUPTABLE                         R28 K39 [{"isChecked"}]
      184 LOADB                            R29 0
      185 SETTABLEKS                       R29 R28 K38 ["isChecked"]
      187 DUPCLOSURE                       R29 K40 [PROTO_0]
      188 DUPCLOSURE                       R30 K41 [PROTO_2]
      189 CAPTURE                          VAL R23
      190 MOVE                             R31 R30
      191 CALL                             R31 0 1
      192 DUPCLOSURE                       R32 K42 [PROTO_3]
      193 DUPCLOSURE                       R33 K43 [PROTO_10]
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R28
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R27
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R18
      205 CAPTURE                          VAL R32
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R9
      214 CAPTURE                          VAL R10
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R20
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R31
      219 GETTABLEKS                       R34 R6 K44 ["memo"]
      221 GETTABLEKS                       R35 R6 K45 ["forwardRef"]
      223 MOVE                             R36 R33
      224 CALL                             R35 1 -1
      225 CALL                             R34 -1 -1
      226 RETURN                           R34 -1
