PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 DUPCLOSURE                       R1 K0 [PROTO_3]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["copyToClipboard"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+2]
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 0
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K1 ["current"]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETIMPORT                        R0 K4 [task.cancel]
       22 GETUPVAL                         R1 4
       23 GETTABLEKS                       R1 R1 K1 ["current"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 4
       27 GETIMPORT                        R1 K6 [task.delay]
       29 LOADK                            R2 K7 [0.5]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U2
       33 CALL                             R1 2 1
       34 SETTABLEKS                       R1 R0 K1 ["current"]
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 GETTABLEKS                       R3 R1 K5 ["Typography"]
       14 GETTABLEKS                       R3 R3 K6 ["BodySmall"]
       16 GETTABLEKS                       R4 R1 K7 ["Color"]
       18 GETTABLEKS                       R4 R4 K8 ["Content"]
       20 GETTABLEKS                       R4 R4 K9 ["Default"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K10 ["get"]
       25 CALL                             R5 0 1
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K11 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K11 ["useState"]
       34 LOADB                            R9 0
       35 CALL                             R8 1 2
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R10 R10 K12 ["useRef"]
       39 LOADNIL                          R11
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R12 R0 K14 ["variant"]
       43 ORK                              R11 R12 K13 ["card"]
       44 JUMPIFEQKS                       R11 K15 ["inline"] ; [+2]
       46 LOADB                            R12 0 +1
       47 LOADB                            R12 1
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K16 ["useEffect"]
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          VAL R10
       53 NEWTABLE                         R15 0 0
       55 CALL                             R13 2 0
       56 GETTABLEKS                       R14 R0 K17 ["isDisabled"]
       58 JUMPIFEQKB                       R14 TRUE ; [+2]
       60 LOADB                            R13 0 +1
       61 LOADB                            R13 1
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R14 R14 K16 ["useEffect"]
       65 NEWCLOSURE                       R15 P1
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R16 0 1
       70 MOVE                             R17 R13
       71 SETLIST                          R16 R17 1 [1]
       73 CALL                             R14 2 0
       74 GETUPVAL                         R14 2
       75 GETTABLEKS                       R14 R14 K18 ["useCallback"]
       77 NEWCLOSURE                       R15 P2
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R16 0 1
       82 MOVE                             R17 R13
       83 SETLIST                          R16 R17 1 [1]
       85 CALL                             R14 2 1
       86 GETTABLEKS                       R15 R0 K19 ["data"]
       88 GETTABLEKS                       R15 R15 K20 ["copyText"]
       90 GETTABLEKS                       R16 R0 K21 ["onCopy"]
       92 GETUPVAL                         R17 2
       93 GETTABLEKS                       R17 R17 K18 ["useCallback"]
       95 NEWCLOSURE                       R18 P3
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R10
      101 NEWTABLE                         R19 0 3
      103 MOVE                             R20 R15
      104 MOVE                             R21 R5
      105 MOVE                             R22 R16
      106 SETLIST                          R19 R20 3 [1]
      108 CALL                             R17 2 1
      109 GETUPVAL                         R18 3
      110 CALL                             R18 0 1
      111 JUMPIFNOT                        R12 ; [+441]
      112 GETUPVAL                         R19 4
      113 GETUPVAL                         R20 5
      114 DUPTABLE                         R21 K25 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      115 GETTABLEKS                       R22 R0 K24 ["LayoutOrder"]
      117 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      119 DUPTABLE                         R22 K28 [{"Header", "ExpandedContent"}]
      120 GETUPVAL                         R23 4
      121 GETUPVAL                         R24 5
      122 DUPTABLE                         R25 K31 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-xxsmall", ["LayoutOrder"], ["onActivated"]}]
      123 MOVE                             R26 R18
      124 CALL                             R26 0 1
      125 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      127 JUMPIFNOT                        R13 ; [+2]
      128 LOADNIL                          R26
      129 JUMP                             ; [+1]
      130 MOVE                             R26 R14
      131 SETTABLEKS                       R26 R25 K30 ["onActivated"]
      133 DUPTABLE                         R26 K35 [{"Label", "Spacer", "ExpandIcon"}]
      134 GETUPVAL                         R27 4
      135 GETUPVAL                         R28 6
      136 DUPTABLE                         R29 K39 [{["tag"] = "auto-xy text-body-medium text-align-x-left", ["Text"], ["LayoutOrder"], ["testId"]}]
      137 GETTABLEKS                       R30 R0 K40 ["label"]
      139 SETTABLEKS                       R30 R29 K37 ["Text"]
      141 MOVE                             R30 R18
      142 CALL                             R30 0 1
      143 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      145 GETTABLEKS                       R30 R0 K41 ["labelTestId"]
      147 SETTABLEKS                       R30 R29 K38 ["testId"]
      149 CALL                             R27 2 1
      150 SETTABLEKS                       R27 R26 K32 ["Label"]
      152 GETUPVAL                         R27 4
      153 GETUPVAL                         R28 5
      154 DUPTABLE                         R29 K43 [{["tag"] = "fill", ["LayoutOrder"]}]
      155 MOVE                             R30 R18
      156 CALL                             R30 0 1
      157 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      159 CALL                             R27 2 1
      160 SETTABLEKS                       R27 R26 K33 ["Spacer"]
      162 GETUPVAL                         R28 7
      163 GETTABLEKS                       R28 R28 K44 ["FFlagAssistantUseBuilderIcons"]
      165 JUMPIFNOT                        R28 ; [+52]
      166 GETUPVAL                         R27 4
      167 GETUPVAL                         R28 8
      168 DUPTABLE                         R29 K48 [{"name", "size", "style", "LayoutOrder"}]
      169 JUMPIFNOT                        R6 ; [+8]
      170 GETUPVAL                         R30 0
      171 GETTABLEKS                       R30 R30 K49 ["Enums"]
      173 GETTABLEKS                       R30 R30 K50 ["IconName"]
      175 GETTABLEKS                       R30 R30 K51 ["ChevronSmallDown"]
      177 JUMP                             ; [+7]
      178 GETUPVAL                         R30 0
      179 GETTABLEKS                       R30 R30 K49 ["Enums"]
      181 GETTABLEKS                       R30 R30 K50 ["IconName"]
      183 GETTABLEKS                       R30 R30 K52 ["ChevronSmallRight"]
      185 SETTABLEKS                       R30 R29 K45 ["name"]
      187 GETUPVAL                         R30 0
      188 GETTABLEKS                       R30 R30 K49 ["Enums"]
      190 GETTABLEKS                       R30 R30 K53 ["IconSize"]
      192 GETTABLEKS                       R30 R30 K54 ["Small"]
      194 SETTABLEKS                       R30 R29 K46 ["size"]
      196 JUMPIFNOT                        R13 ; [+7]
      197 GETTABLEKS                       R30 R1 K7 ["Color"]
      199 GETTABLEKS                       R30 R30 K8 ["Content"]
      201 GETTABLEKS                       R30 R30 K55 ["Muted"]
      203 JUMP                             ; [+6]
      204 GETTABLEKS                       R30 R1 K7 ["Color"]
      206 GETTABLEKS                       R30 R30 K8 ["Content"]
      208 GETTABLEKS                       R30 R30 K56 ["Emphasis"]
      210 SETTABLEKS                       R30 R29 K47 ["style"]
      212 MOVE                             R30 R18
      213 CALL                             R30 0 1
      214 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      216 CALL                             R27 2 1
      217 JUMP                             ; [+20]
      218 GETUPVAL                         R27 4
      219 GETUPVAL                         R28 9
      220 DUPTABLE                         R29 K60 [{["icon"], ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      221 JUMPIFNOT                        R6 ; [+2]
      222 LOADK                            R30 K61 ["icons/actions/truncationExpand_small"]
      223 JUMP                             ; [+1]
      224 LOADK                            R30 K62 ["icons/actions/cycleRight_small"]
      225 SETTABLEKS                       R30 R29 K57 ["icon"]
      227 JUMPIFNOT                        R13 ; [+2]
      228 LOADK                            R30 K63 ["size-200-200 content-muted"]
      229 JUMP                             ; [+1]
      230 LOADK                            R30 K64 ["size-200-200 content-emphasis"]
      231 SETTABLEKS                       R30 R29 K59 ["iconTag"]
      233 MOVE                             R30 R18
      234 CALL                             R30 0 1
      235 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      237 CALL                             R27 2 1
      238 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      240 CALL                             R23 3 1
      241 SETTABLEKS                       R23 R22 K26 ["Header"]
      243 JUMPIFNOT                        R6 ; [+304]
      244 GETUPVAL                         R23 4
      245 GETUPVAL                         R24 5
      246 DUPTABLE                         R25 K66 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"]}]
      247 MOVE                             R26 R18
      248 CALL                             R26 0 1
      249 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      251 DUPTABLE                         R26 K69 [{"Description", "CommandBlock"}]
      252 GETTABLEKS                       R28 R0 K70 ["description"]
      254 JUMPIFNOT                        R28 ; [+13]
      255 GETUPVAL                         R27 4
      256 GETUPVAL                         R28 6
      257 DUPTABLE                         R29 K72 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      258 GETTABLEKS                       R30 R0 K70 ["description"]
      260 SETTABLEKS                       R30 R29 K37 ["Text"]
      262 MOVE                             R30 R18
      263 CALL                             R30 0 1
      264 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      266 CALL                             R27 2 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R27
      269 SETTABLEKS                       R27 R26 K67 ["Description"]
      271 GETUPVAL                         R27 4
      272 GETUPVAL                         R28 5
      273 DUPTABLE                         R29 K74 [{["tag"] = "row align-y-center size-full-0 auto-y stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      274 MOVE                             R30 R18
      275 CALL                             R30 0 1
      276 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      278 DUPTABLE                         R30 K77 [{"CodeScrollView", "CopyButtonPopover"}]
      279 GETUPVAL                         R31 4
      280 GETUPVAL                         R32 10
      281 DUPTABLE                         R33 K80 [{["tag"] = "fill auto-y", ["LayoutOrder"], ["scroll"]}]
      282 MOVE                             R34 R18
      283 CALL                             R34 0 1
      284 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      286 GETUPVAL                         R34 11
      287 SETTABLEKS                       R34 R33 K79 ["scroll"]
      289 DUPTABLE                         R34 K82 [{"Code"}]
      290 GETUPVAL                         R35 4
      291 LOADK                            R36 K83 ["TextBox"]
      292 DUPTABLE                         R37 K98 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
      293 GETTABLEKS                       R38 R0 K19 ["data"]
      295 GETTABLEKS                       R38 R38 K99 ["text"]
      297 SETTABLEKS                       R38 R37 K37 ["Text"]
      299 GETIMPORT                        R38 K102 [Enum.AutomaticSize.XY]
      301 SETTABLEKS                       R38 R37 K84 ["AutomaticSize"]
      303 GETUPVAL                         R38 12
      304 GETTABLEKS                       R38 R38 K103 ["CODE_FONT"]
      306 SETTABLEKS                       R38 R37 K85 ["FontFace"]
      308 GETTABLEKS                       R38 R1 K104 ["FontSize"]
      310 GETTABLEKS                       R38 R38 K105 ["FontSize_300"]
      312 SETTABLEKS                       R38 R37 K86 ["TextSize"]
      314 GETTABLEKS                       R38 R3 K87 ["LineHeight"]
      316 SETTABLEKS                       R38 R37 K87 ["LineHeight"]
      318 GETTABLEKS                       R38 R4 K106 ["Color3"]
      320 SETTABLEKS                       R38 R37 K88 ["TextColor3"]
      322 GETTABLEKS                       R38 R4 K107 ["Transparency"]
      324 SETTABLEKS                       R38 R37 K89 ["TextTransparency"]
      326 GETIMPORT                        R38 K109 [Enum.TextXAlignment.Left]
      328 SETTABLEKS                       R38 R37 K90 ["TextXAlignment"]
      330 DUPTABLE                         R38 K111 [{"Padding"}]
      331 GETUPVAL                         R39 4
      332 LOADK                            R40 K112 ["UIPadding"]
      333 DUPTABLE                         R41 K117 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      334 GETIMPORT                        R42 K120 [UDim.new]
      336 LOADN                            R43 0
      337 LOADN                            R44 8
      338 CALL                             R42 2 1
      339 SETTABLEKS                       R42 R41 K113 ["PaddingLeft"]
      341 GETIMPORT                        R42 K120 [UDim.new]
      343 LOADN                            R43 0
      344 LOADN                            R44 8
      345 CALL                             R42 2 1
      346 SETTABLEKS                       R42 R41 K114 ["PaddingRight"]
      348 GETIMPORT                        R42 K120 [UDim.new]
      350 LOADN                            R43 0
      351 LOADN                            R44 6
      352 CALL                             R42 2 1
      353 SETTABLEKS                       R42 R41 K115 ["PaddingTop"]
      355 GETIMPORT                        R42 K120 [UDim.new]
      357 LOADN                            R43 0
      358 LOADN                            R44 6
      359 CALL                             R42 2 1
      360 SETTABLEKS                       R42 R41 K116 ["PaddingBottom"]
      362 CALL                             R39 2 1
      363 SETTABLEKS                       R39 R38 K110 ["Padding"]
      365 CALL                             R35 3 1
      366 SETTABLEKS                       R35 R34 K81 ["Code"]
      368 CALL                             R31 3 1
      369 SETTABLEKS                       R31 R30 K75 ["CodeScrollView"]
      371 GETUPVAL                         R31 4
      372 GETUPVAL                         R32 13
      373 GETTABLEKS                       R32 R32 K121 ["Root"]
      375 DUPTABLE                         R33 K123 [{"isOpen"}]
      376 SETTABLEKS                       R8 R33 K122 ["isOpen"]
      378 DUPTABLE                         R34 K125 [{"Anchor", "Content"}]
      379 GETUPVAL                         R35 4
      380 GETUPVAL                         R36 13
      381 GETTABLEKS                       R36 R36 K124 ["Anchor"]
      383 DUPTABLE                         R37 K126 [{"LayoutOrder"}]
      384 MOVE                             R38 R18
      385 CALL                             R38 0 1
      386 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      388 DUPTABLE                         R38 K128 [{"CopyButton"}]
      389 GETUPVAL                         R40 7
      390 GETTABLEKS                       R40 R40 K44 ["FFlagAssistantUseBuilderIcons"]
      392 JUMPIFNOT                        R40 ; [+48]
      393 GETUPVAL                         R39 4
      394 GETUPVAL                         R40 14
      395 DUPTABLE                         R41 K129 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      396 GETUPVAL                         R42 0
      397 GETTABLEKS                       R42 R42 K49 ["Enums"]
      399 GETTABLEKS                       R42 R42 K50 ["IconName"]
      401 GETTABLEKS                       R42 R42 K130 ["TwoStackedSquares"]
      403 SETTABLEKS                       R42 R41 K57 ["icon"]
      405 GETUPVAL                         R42 0
      406 GETTABLEKS                       R42 R42 K49 ["Enums"]
      408 GETTABLEKS                       R42 R42 K131 ["InputSize"]
      410 GETTABLEKS                       R42 R42 K132 ["XSmall"]
      412 SETTABLEKS                       R42 R41 K46 ["size"]
      414 GETUPVAL                         R42 0
      415 GETTABLEKS                       R42 R42 K49 ["Enums"]
      417 GETTABLEKS                       R42 R42 K133 ["ButtonVariant"]
      419 GETTABLEKS                       R42 R42 K134 ["Utility"]
      421 SETTABLEKS                       R42 R41 K14 ["variant"]
      423 JUMPIFEQKNIL                     R15 ; [+2]
      425 LOADB                            R42 0 +1
      426 LOADB                            R42 1
      427 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      429 SETTABLEKS                       R17 R41 K30 ["onActivated"]
      431 MOVE                             R42 R18
      432 CALL                             R42 0 1
      433 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      435 GETTABLEKS                       R42 R0 K135 ["copyButtonTestId"]
      437 SETTABLEKS                       R42 R41 K38 ["testId"]
      439 CALL                             R39 2 1
      440 JUMP                             ; [+24]
      441 GETUPVAL                         R39 4
      442 GETUPVAL                         R40 9
      443 DUPTABLE                         R41 K138 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      444 GETUPVAL                         R43 15
      445 GETTABLE                         R42 R43 R2
      446 SETTABLEKS                       R42 R41 K57 ["icon"]
      448 JUMPIFEQKNIL                     R15 ; [+2]
      450 LOADB                            R42 0 +1
      451 LOADB                            R42 1
      452 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      454 SETTABLEKS                       R17 R41 K30 ["onActivated"]
      456 MOVE                             R42 R18
      457 CALL                             R42 0 1
      458 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      460 GETTABLEKS                       R42 R0 K135 ["copyButtonTestId"]
      462 SETTABLEKS                       R42 R41 K38 ["testId"]
      464 CALL                             R39 2 1
      465 SETTABLEKS                       R39 R38 K127 ["CopyButton"]
      467 CALL                             R35 3 1
      468 SETTABLEKS                       R35 R34 K124 ["Anchor"]
      470 GETUPVAL                         R35 4
      471 GETUPVAL                         R36 13
      472 GETTABLEKS                       R36 R36 K8 ["Content"]
      474 DUPTABLE                         R37 K145 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      475 GETUPVAL                         R38 0
      476 GETTABLEKS                       R38 R38 K49 ["Enums"]
      478 GETTABLEKS                       R38 R38 K146 ["PopoverAlign"]
      480 GETTABLEKS                       R38 R38 K147 ["Center"]
      482 SETTABLEKS                       R38 R37 K140 ["align"]
      484 DUPTABLE                         R38 K150 [{"position", "offset"}]
      485 GETUPVAL                         R39 0
      486 GETTABLEKS                       R39 R39 K49 ["Enums"]
      488 GETTABLEKS                       R39 R39 K151 ["PopoverSide"]
      490 GETTABLEKS                       R39 R39 K152 ["Top"]
      492 SETTABLEKS                       R39 R38 K148 ["position"]
      494 GETTABLEKS                       R39 R1 K153 ["Size"]
      496 GETTABLEKS                       R39 R39 K154 ["Size_100"]
      498 SETTABLEKS                       R39 R38 K149 ["offset"]
      500 SETTABLEKS                       R38 R37 K141 ["side"]
      502 GETUPVAL                         R38 0
      503 GETTABLEKS                       R38 R38 K49 ["Enums"]
      505 GETTABLEKS                       R38 R38 K155 ["Radius"]
      507 GETTABLEKS                       R38 R38 K54 ["Small"]
      509 SETTABLEKS                       R38 R37 K142 ["radius"]
      511 GETTABLEKS                       R38 R1 K156 ["Inverse"]
      513 GETTABLEKS                       R38 R38 K157 ["Surface"]
      515 GETTABLEKS                       R38 R38 K158 ["Surface_0"]
      517 SETTABLEKS                       R38 R37 K143 ["backgroundStyle"]
      519 DUPTABLE                         R38 K160 [{"TooltipBody"}]
      520 GETUPVAL                         R39 4
      521 GETUPVAL                         R40 5
      522 DUPTABLE                         R41 K162 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      523 DUPTABLE                         R42 K164 [{"Title"}]
      524 GETUPVAL                         R43 4
      525 GETUPVAL                         R44 6
      526 DUPTABLE                         R45 K166 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      527 GETTABLEKS                       R46 R0 K167 ["copiedText"]
      529 SETTABLEKS                       R46 R45 K37 ["Text"]
      531 CALL                             R43 2 1
      532 SETTABLEKS                       R43 R42 K163 ["Title"]
      534 CALL                             R39 3 1
      535 SETTABLEKS                       R39 R38 K159 ["TooltipBody"]
      537 CALL                             R35 3 1
      538 SETTABLEKS                       R35 R34 K8 ["Content"]
      540 CALL                             R31 3 1
      541 SETTABLEKS                       R31 R30 K76 ["CopyButtonPopover"]
      543 CALL                             R27 3 1
      544 SETTABLEKS                       R27 R26 K68 ["CommandBlock"]
      546 CALL                             R23 3 1
      547 JUMP                             ; [+1]
      548 LOADNIL                          R23
      549 SETTABLEKS                       R23 R22 K27 ["ExpandedContent"]
      551 CALL                             R19 3 -1
      552 RETURN                           R19 -1
      553 GETUPVAL                         R19 4
      554 GETUPVAL                         R20 5
      555 DUPTABLE                         R21 K169 [{["tag"] = "col size-full-0 auto-y stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      556 GETTABLEKS                       R22 R0 K24 ["LayoutOrder"]
      558 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      560 DUPTABLE                         R22 K171 [{"Header", "HeaderDivider", "CodeScrollView"}]
      561 GETUPVAL                         R23 4
      562 GETUPVAL                         R24 5
      563 DUPTABLE                         R25 K173 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-xsmall bg-shift-100", ["LayoutOrder"], ["onActivated"]}]
      564 MOVE                             R26 R18
      565 CALL                             R26 0 1
      566 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      568 SETTABLEKS                       R14 R25 K30 ["onActivated"]
      570 DUPTABLE                         R26 K174 [{"ExpandIcon", "Label", "Spacer", "CopyButtonPopover"}]
      571 GETUPVAL                         R28 7
      572 GETTABLEKS                       R28 R28 K44 ["FFlagAssistantUseBuilderIcons"]
      574 JUMPIFNOT                        R28 ; [+44]
      575 GETUPVAL                         R27 4
      576 GETUPVAL                         R28 8
      577 DUPTABLE                         R29 K48 [{"name", "size", "style", "LayoutOrder"}]
      578 JUMPIFNOT                        R6 ; [+8]
      579 GETUPVAL                         R30 0
      580 GETTABLEKS                       R30 R30 K49 ["Enums"]
      582 GETTABLEKS                       R30 R30 K50 ["IconName"]
      584 GETTABLEKS                       R30 R30 K51 ["ChevronSmallDown"]
      586 JUMP                             ; [+7]
      587 GETUPVAL                         R30 0
      588 GETTABLEKS                       R30 R30 K49 ["Enums"]
      590 GETTABLEKS                       R30 R30 K50 ["IconName"]
      592 GETTABLEKS                       R30 R30 K52 ["ChevronSmallRight"]
      594 SETTABLEKS                       R30 R29 K45 ["name"]
      596 GETUPVAL                         R30 0
      597 GETTABLEKS                       R30 R30 K49 ["Enums"]
      599 GETTABLEKS                       R30 R30 K53 ["IconSize"]
      601 GETTABLEKS                       R30 R30 K132 ["XSmall"]
      603 SETTABLEKS                       R30 R29 K46 ["size"]
      605 GETTABLEKS                       R30 R1 K7 ["Color"]
      607 GETTABLEKS                       R30 R30 K8 ["Content"]
      609 GETTABLEKS                       R30 R30 K56 ["Emphasis"]
      611 SETTABLEKS                       R30 R29 K47 ["style"]
      613 MOVE                             R30 R18
      614 CALL                             R30 0 1
      615 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      617 CALL                             R27 2 1
      618 JUMP                             ; [+14]
      619 GETUPVAL                         R27 4
      620 GETUPVAL                         R28 9
      621 DUPTABLE                         R29 K177 [{["icon"], ["tag"] = "align-x-center align-y-center size-300-300", ["iconTag"] = "size-150-150 content-emphasis", ["LayoutOrder"]}]
      622 JUMPIFNOT                        R6 ; [+2]
      623 LOADK                            R30 K61 ["icons/actions/truncationExpand_small"]
      624 JUMP                             ; [+1]
      625 LOADK                            R30 K62 ["icons/actions/cycleRight_small"]
      626 SETTABLEKS                       R30 R29 K57 ["icon"]
      628 MOVE                             R30 R18
      629 CALL                             R30 0 1
      630 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      632 CALL                             R27 2 1
      633 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      635 GETUPVAL                         R27 4
      636 GETUPVAL                         R28 6
      637 DUPTABLE                         R29 K179 [{["tag"] = "shrink auto-xy text-label-small text-align-x-left", ["Text"], ["LayoutOrder"], ["testId"]}]
      638 GETTABLEKS                       R30 R0 K40 ["label"]
      640 SETTABLEKS                       R30 R29 K37 ["Text"]
      642 MOVE                             R30 R18
      643 CALL                             R30 0 1
      644 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      646 GETTABLEKS                       R30 R0 K41 ["labelTestId"]
      648 SETTABLEKS                       R30 R29 K38 ["testId"]
      650 CALL                             R27 2 1
      651 SETTABLEKS                       R27 R26 K32 ["Label"]
      653 GETUPVAL                         R27 4
      654 GETUPVAL                         R28 5
      655 DUPTABLE                         R29 K43 [{["tag"] = "fill", ["LayoutOrder"]}]
      656 MOVE                             R30 R18
      657 CALL                             R30 0 1
      658 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      660 CALL                             R27 2 1
      661 SETTABLEKS                       R27 R26 K33 ["Spacer"]
      663 GETUPVAL                         R27 4
      664 GETUPVAL                         R28 13
      665 GETTABLEKS                       R28 R28 K121 ["Root"]
      667 DUPTABLE                         R29 K123 [{"isOpen"}]
      668 SETTABLEKS                       R8 R29 K122 ["isOpen"]
      670 DUPTABLE                         R30 K125 [{"Anchor", "Content"}]
      671 GETUPVAL                         R31 4
      672 GETUPVAL                         R32 13
      673 GETTABLEKS                       R32 R32 K124 ["Anchor"]
      675 DUPTABLE                         R33 K126 [{"LayoutOrder"}]
      676 MOVE                             R34 R18
      677 CALL                             R34 0 1
      678 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      680 DUPTABLE                         R34 K128 [{"CopyButton"}]
      681 GETUPVAL                         R36 7
      682 GETTABLEKS                       R36 R36 K44 ["FFlagAssistantUseBuilderIcons"]
      684 JUMPIFNOT                        R36 ; [+48]
      685 GETUPVAL                         R35 4
      686 GETUPVAL                         R36 14
      687 DUPTABLE                         R37 K129 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      688 GETUPVAL                         R38 0
      689 GETTABLEKS                       R38 R38 K49 ["Enums"]
      691 GETTABLEKS                       R38 R38 K50 ["IconName"]
      693 GETTABLEKS                       R38 R38 K130 ["TwoStackedSquares"]
      695 SETTABLEKS                       R38 R37 K57 ["icon"]
      697 GETUPVAL                         R38 0
      698 GETTABLEKS                       R38 R38 K49 ["Enums"]
      700 GETTABLEKS                       R38 R38 K131 ["InputSize"]
      702 GETTABLEKS                       R38 R38 K132 ["XSmall"]
      704 SETTABLEKS                       R38 R37 K46 ["size"]
      706 GETUPVAL                         R38 0
      707 GETTABLEKS                       R38 R38 K49 ["Enums"]
      709 GETTABLEKS                       R38 R38 K133 ["ButtonVariant"]
      711 GETTABLEKS                       R38 R38 K134 ["Utility"]
      713 SETTABLEKS                       R38 R37 K14 ["variant"]
      715 JUMPIFEQKNIL                     R15 ; [+2]
      717 LOADB                            R38 0 +1
      718 LOADB                            R38 1
      719 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      721 SETTABLEKS                       R17 R37 K30 ["onActivated"]
      723 MOVE                             R38 R18
      724 CALL                             R38 0 1
      725 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      727 GETTABLEKS                       R38 R0 K135 ["copyButtonTestId"]
      729 SETTABLEKS                       R38 R37 K38 ["testId"]
      731 CALL                             R35 2 1
      732 JUMP                             ; [+24]
      733 GETUPVAL                         R35 4
      734 GETUPVAL                         R36 9
      735 DUPTABLE                         R37 K138 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      736 GETUPVAL                         R39 15
      737 GETTABLE                         R38 R39 R2
      738 SETTABLEKS                       R38 R37 K57 ["icon"]
      740 JUMPIFEQKNIL                     R15 ; [+2]
      742 LOADB                            R38 0 +1
      743 LOADB                            R38 1
      744 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      746 SETTABLEKS                       R17 R37 K30 ["onActivated"]
      748 MOVE                             R38 R18
      749 CALL                             R38 0 1
      750 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      752 GETTABLEKS                       R38 R0 K135 ["copyButtonTestId"]
      754 SETTABLEKS                       R38 R37 K38 ["testId"]
      756 CALL                             R35 2 1
      757 SETTABLEKS                       R35 R34 K127 ["CopyButton"]
      759 CALL                             R31 3 1
      760 SETTABLEKS                       R31 R30 K124 ["Anchor"]
      762 GETUPVAL                         R31 4
      763 GETUPVAL                         R32 13
      764 GETTABLEKS                       R32 R32 K8 ["Content"]
      766 DUPTABLE                         R33 K145 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      767 GETUPVAL                         R34 0
      768 GETTABLEKS                       R34 R34 K49 ["Enums"]
      770 GETTABLEKS                       R34 R34 K146 ["PopoverAlign"]
      772 GETTABLEKS                       R34 R34 K147 ["Center"]
      774 SETTABLEKS                       R34 R33 K140 ["align"]
      776 DUPTABLE                         R34 K150 [{"position", "offset"}]
      777 GETUPVAL                         R35 0
      778 GETTABLEKS                       R35 R35 K49 ["Enums"]
      780 GETTABLEKS                       R35 R35 K151 ["PopoverSide"]
      782 GETTABLEKS                       R35 R35 K152 ["Top"]
      784 SETTABLEKS                       R35 R34 K148 ["position"]
      786 GETTABLEKS                       R35 R1 K153 ["Size"]
      788 GETTABLEKS                       R35 R35 K154 ["Size_100"]
      790 SETTABLEKS                       R35 R34 K149 ["offset"]
      792 SETTABLEKS                       R34 R33 K141 ["side"]
      794 GETUPVAL                         R34 0
      795 GETTABLEKS                       R34 R34 K49 ["Enums"]
      797 GETTABLEKS                       R34 R34 K155 ["Radius"]
      799 GETTABLEKS                       R34 R34 K54 ["Small"]
      801 SETTABLEKS                       R34 R33 K142 ["radius"]
      803 GETTABLEKS                       R34 R1 K156 ["Inverse"]
      805 GETTABLEKS                       R34 R34 K157 ["Surface"]
      807 GETTABLEKS                       R34 R34 K158 ["Surface_0"]
      809 SETTABLEKS                       R34 R33 K143 ["backgroundStyle"]
      811 DUPTABLE                         R34 K160 [{"TooltipBody"}]
      812 GETUPVAL                         R35 4
      813 GETUPVAL                         R36 5
      814 DUPTABLE                         R37 K162 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      815 DUPTABLE                         R38 K164 [{"Title"}]
      816 GETUPVAL                         R39 4
      817 GETUPVAL                         R40 6
      818 DUPTABLE                         R41 K166 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      819 GETTABLEKS                       R42 R0 K167 ["copiedText"]
      821 SETTABLEKS                       R42 R41 K37 ["Text"]
      823 CALL                             R39 2 1
      824 SETTABLEKS                       R39 R38 K163 ["Title"]
      826 CALL                             R35 3 1
      827 SETTABLEKS                       R35 R34 K159 ["TooltipBody"]
      829 CALL                             R31 3 1
      830 SETTABLEKS                       R31 R30 K8 ["Content"]
      832 CALL                             R27 3 1
      833 SETTABLEKS                       R27 R26 K76 ["CopyButtonPopover"]
      835 CALL                             R23 3 1
      836 SETTABLEKS                       R23 R22 K26 ["Header"]
      838 JUMPIFNOT                        R6 ; [+9]
      839 GETUPVAL                         R23 4
      840 GETUPVAL                         R24 16
      841 DUPTABLE                         R25 K126 [{"LayoutOrder"}]
      842 MOVE                             R26 R18
      843 CALL                             R26 0 1
      844 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      846 CALL                             R23 2 1
      847 JUMP                             ; [+1]
      848 LOADNIL                          R23
      849 SETTABLEKS                       R23 R22 K170 ["HeaderDivider"]
      851 JUMPIFNOT                        R6 ; [+91]
      852 GETUPVAL                         R23 4
      853 GETUPVAL                         R24 10
      854 DUPTABLE                         R25 K181 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"], ["scroll"]}]
      855 MOVE                             R26 R18
      856 CALL                             R26 0 1
      857 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      859 GETUPVAL                         R26 11
      860 SETTABLEKS                       R26 R25 K79 ["scroll"]
      862 DUPTABLE                         R26 K82 [{"Code"}]
      863 GETUPVAL                         R27 4
      864 LOADK                            R28 K83 ["TextBox"]
      865 DUPTABLE                         R29 K184 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["MultiLine"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
      866 GETTABLEKS                       R30 R0 K19 ["data"]
      868 GETTABLEKS                       R30 R30 K99 ["text"]
      870 SETTABLEKS                       R30 R29 K37 ["Text"]
      872 GETIMPORT                        R30 K102 [Enum.AutomaticSize.XY]
      874 SETTABLEKS                       R30 R29 K84 ["AutomaticSize"]
      876 GETUPVAL                         R30 12
      877 GETTABLEKS                       R30 R30 K103 ["CODE_FONT"]
      879 SETTABLEKS                       R30 R29 K85 ["FontFace"]
      881 GETTABLEKS                       R30 R1 K104 ["FontSize"]
      883 GETTABLEKS                       R30 R30 K105 ["FontSize_300"]
      885 SETTABLEKS                       R30 R29 K86 ["TextSize"]
      887 GETTABLEKS                       R30 R3 K87 ["LineHeight"]
      889 SETTABLEKS                       R30 R29 K87 ["LineHeight"]
      891 GETTABLEKS                       R30 R4 K106 ["Color3"]
      893 SETTABLEKS                       R30 R29 K88 ["TextColor3"]
      895 GETTABLEKS                       R30 R4 K107 ["Transparency"]
      897 SETTABLEKS                       R30 R29 K89 ["TextTransparency"]
      899 GETIMPORT                        R30 K109 [Enum.TextXAlignment.Left]
      901 SETTABLEKS                       R30 R29 K90 ["TextXAlignment"]
      903 DUPTABLE                         R30 K111 [{"Padding"}]
      904 GETUPVAL                         R31 4
      905 LOADK                            R32 K112 ["UIPadding"]
      906 DUPTABLE                         R33 K117 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      907 GETIMPORT                        R34 K120 [UDim.new]
      909 LOADN                            R35 0
      910 LOADN                            R36 12
      911 CALL                             R34 2 1
      912 SETTABLEKS                       R34 R33 K113 ["PaddingLeft"]
      914 GETIMPORT                        R34 K120 [UDim.new]
      916 LOADN                            R35 0
      917 LOADN                            R36 12
      918 CALL                             R34 2 1
      919 SETTABLEKS                       R34 R33 K114 ["PaddingRight"]
      921 GETIMPORT                        R34 K120 [UDim.new]
      923 LOADN                            R35 0
      924 LOADN                            R36 12
      925 CALL                             R34 2 1
      926 SETTABLEKS                       R34 R33 K115 ["PaddingTop"]
      928 GETIMPORT                        R34 K120 [UDim.new]
      930 LOADN                            R35 0
      931 LOADN                            R36 12
      932 CALL                             R34 2 1
      933 SETTABLEKS                       R34 R33 K116 ["PaddingBottom"]
      935 CALL                             R31 2 1
      936 SETTABLEKS                       R31 R30 K110 ["Padding"]
      938 CALL                             R27 3 1
      939 SETTABLEKS                       R27 R26 K81 ["Code"]
      941 CALL                             R23 3 1
      942 JUMP                             ; [+1]
      943 LOADNIL                          R23
      944 SETTABLEKS                       R23 R22 K75 ["CodeScrollView"]
      946 CALL                             R19 3 -1
      947 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R3 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Parent"]
       35 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Parent"]
       42 GETTABLEKS                       R7 R7 K14 ["React"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K12 ["Parent"]
       49 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R5 K16 ["Divider"]
       54 GETTABLEKS                       R9 R5 K17 ["Icon"]
       56 GETTABLEKS                       R10 R5 K18 ["IconButton"]
       58 GETTABLEKS                       R11 R5 K19 ["Popover"]
       60 GETTABLEKS                       R12 R5 K20 ["ScrollView"]
       62 GETTABLEKS                       R13 R5 K21 ["Text"]
       64 GETTABLEKS                       R14 R5 K22 ["View"]
       66 GETTABLEKS                       R15 R5 K23 ["Enums"]
       68 GETTABLEKS                       R15 R15 K24 ["Visibility"]
       70 GETTABLEKS                       R16 R7 K25 ["createNextOrder"]
       72 GETTABLEKS                       R17 R6 K26 ["createElement"]
       74 DUPTABLE                         R18 K33 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       75 GETIMPORT                        R19 K36 [UDim2.fromOffset]
       77 LOADN                            R20 0
       78 LOADN                            R21 0
       79 CALL                             R19 2 1
       80 SETTABLEKS                       R19 R18 K27 ["CanvasSize"]
       82 GETIMPORT                        R19 K39 [Enum.AutomaticSize.Y]
       84 SETTABLEKS                       R19 R18 K28 ["AutomaticSize"]
       86 GETIMPORT                        R19 K41 [Enum.AutomaticSize.X]
       88 SETTABLEKS                       R19 R18 K29 ["AutomaticCanvasSize"]
       90 GETIMPORT                        R19 K42 [Enum.ScrollingDirection.X]
       92 SETTABLEKS                       R19 R18 K30 ["ScrollingDirection"]
       94 GETTABLEKS                       R19 R15 K43 ["Always"]
       96 SETTABLEKS                       R19 R18 K31 ["scrollBarVisibility"]
       98 GETIMPORT                        R19 K45 [Enum.ScrollBarInset.Always]
      100 SETTABLEKS                       R19 R18 K32 ["HorizontalScrollBarInset"]
      102 DUPTABLE                         R19 K50 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"}]
      103 DUPCLOSURE                       R20 K51 [PROTO_7]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R8
      121 RETURN                           R20 1
