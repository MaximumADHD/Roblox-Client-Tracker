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
      111 JUMPIFNOT                        R12 ; [+439]
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
      163 CALL                             R28 0 1
      164 JUMPIFNOT                        R28 ; [+52]
      165 GETUPVAL                         R27 4
      166 GETUPVAL                         R28 8
      167 DUPTABLE                         R29 K47 [{"name", "size", "style", "LayoutOrder"}]
      168 JUMPIFNOT                        R6 ; [+8]
      169 GETUPVAL                         R30 0
      170 GETTABLEKS                       R30 R30 K48 ["Enums"]
      172 GETTABLEKS                       R30 R30 K49 ["IconName"]
      174 GETTABLEKS                       R30 R30 K50 ["ChevronSmallDown"]
      176 JUMP                             ; [+7]
      177 GETUPVAL                         R30 0
      178 GETTABLEKS                       R30 R30 K48 ["Enums"]
      180 GETTABLEKS                       R30 R30 K49 ["IconName"]
      182 GETTABLEKS                       R30 R30 K51 ["ChevronSmallRight"]
      184 SETTABLEKS                       R30 R29 K44 ["name"]
      186 GETUPVAL                         R30 0
      187 GETTABLEKS                       R30 R30 K48 ["Enums"]
      189 GETTABLEKS                       R30 R30 K52 ["IconSize"]
      191 GETTABLEKS                       R30 R30 K53 ["Small"]
      193 SETTABLEKS                       R30 R29 K45 ["size"]
      195 JUMPIFNOT                        R13 ; [+7]
      196 GETTABLEKS                       R30 R1 K7 ["Color"]
      198 GETTABLEKS                       R30 R30 K8 ["Content"]
      200 GETTABLEKS                       R30 R30 K54 ["Muted"]
      202 JUMP                             ; [+6]
      203 GETTABLEKS                       R30 R1 K7 ["Color"]
      205 GETTABLEKS                       R30 R30 K8 ["Content"]
      207 GETTABLEKS                       R30 R30 K55 ["Emphasis"]
      209 SETTABLEKS                       R30 R29 K46 ["style"]
      211 MOVE                             R30 R18
      212 CALL                             R30 0 1
      213 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      215 CALL                             R27 2 1
      216 JUMP                             ; [+20]
      217 GETUPVAL                         R27 4
      218 GETUPVAL                         R28 9
      219 DUPTABLE                         R29 K59 [{["icon"], ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      220 JUMPIFNOT                        R6 ; [+2]
      221 LOADK                            R30 K60 ["icons/actions/truncationExpand_small"]
      222 JUMP                             ; [+1]
      223 LOADK                            R30 K61 ["icons/actions/cycleRight_small"]
      224 SETTABLEKS                       R30 R29 K56 ["icon"]
      226 JUMPIFNOT                        R13 ; [+2]
      227 LOADK                            R30 K62 ["size-200-200 content-muted"]
      228 JUMP                             ; [+1]
      229 LOADK                            R30 K63 ["size-200-200 content-emphasis"]
      230 SETTABLEKS                       R30 R29 K58 ["iconTag"]
      232 MOVE                             R30 R18
      233 CALL                             R30 0 1
      234 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      236 CALL                             R27 2 1
      237 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      239 CALL                             R23 3 1
      240 SETTABLEKS                       R23 R22 K26 ["Header"]
      242 JUMPIFNOT                        R6 ; [+303]
      243 GETUPVAL                         R23 4
      244 GETUPVAL                         R24 5
      245 DUPTABLE                         R25 K65 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"]}]
      246 MOVE                             R26 R18
      247 CALL                             R26 0 1
      248 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      250 DUPTABLE                         R26 K68 [{"Description", "CommandBlock"}]
      251 GETTABLEKS                       R28 R0 K69 ["description"]
      253 JUMPIFNOT                        R28 ; [+13]
      254 GETUPVAL                         R27 4
      255 GETUPVAL                         R28 6
      256 DUPTABLE                         R29 K71 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      257 GETTABLEKS                       R30 R0 K69 ["description"]
      259 SETTABLEKS                       R30 R29 K37 ["Text"]
      261 MOVE                             R30 R18
      262 CALL                             R30 0 1
      263 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      265 CALL                             R27 2 1
      266 JUMP                             ; [+1]
      267 LOADNIL                          R27
      268 SETTABLEKS                       R27 R26 K66 ["Description"]
      270 GETUPVAL                         R27 4
      271 GETUPVAL                         R28 5
      272 DUPTABLE                         R29 K73 [{["tag"] = "row align-y-center size-full-0 auto-y stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      273 MOVE                             R30 R18
      274 CALL                             R30 0 1
      275 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      277 DUPTABLE                         R30 K76 [{"CodeScrollView", "CopyButtonPopover"}]
      278 GETUPVAL                         R31 4
      279 GETUPVAL                         R32 10
      280 DUPTABLE                         R33 K79 [{["tag"] = "fill auto-y", ["LayoutOrder"], ["scroll"]}]
      281 MOVE                             R34 R18
      282 CALL                             R34 0 1
      283 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      285 GETUPVAL                         R34 11
      286 SETTABLEKS                       R34 R33 K78 ["scroll"]
      288 DUPTABLE                         R34 K81 [{"Code"}]
      289 GETUPVAL                         R35 4
      290 LOADK                            R36 K82 ["TextBox"]
      291 DUPTABLE                         R37 K97 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
      292 GETTABLEKS                       R38 R0 K19 ["data"]
      294 GETTABLEKS                       R38 R38 K98 ["text"]
      296 SETTABLEKS                       R38 R37 K37 ["Text"]
      298 GETIMPORT                        R38 K101 [Enum.AutomaticSize.XY]
      300 SETTABLEKS                       R38 R37 K83 ["AutomaticSize"]
      302 GETUPVAL                         R38 12
      303 GETTABLEKS                       R38 R38 K102 ["CODE_FONT"]
      305 SETTABLEKS                       R38 R37 K84 ["FontFace"]
      307 GETTABLEKS                       R38 R1 K103 ["FontSize"]
      309 GETTABLEKS                       R38 R38 K104 ["FontSize_300"]
      311 SETTABLEKS                       R38 R37 K85 ["TextSize"]
      313 GETTABLEKS                       R38 R3 K86 ["LineHeight"]
      315 SETTABLEKS                       R38 R37 K86 ["LineHeight"]
      317 GETTABLEKS                       R38 R4 K105 ["Color3"]
      319 SETTABLEKS                       R38 R37 K87 ["TextColor3"]
      321 GETTABLEKS                       R38 R4 K106 ["Transparency"]
      323 SETTABLEKS                       R38 R37 K88 ["TextTransparency"]
      325 GETIMPORT                        R38 K108 [Enum.TextXAlignment.Left]
      327 SETTABLEKS                       R38 R37 K89 ["TextXAlignment"]
      329 DUPTABLE                         R38 K110 [{"Padding"}]
      330 GETUPVAL                         R39 4
      331 LOADK                            R40 K111 ["UIPadding"]
      332 DUPTABLE                         R41 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      333 GETIMPORT                        R42 K119 [UDim.new]
      335 LOADN                            R43 0
      336 LOADN                            R44 8
      337 CALL                             R42 2 1
      338 SETTABLEKS                       R42 R41 K112 ["PaddingLeft"]
      340 GETIMPORT                        R42 K119 [UDim.new]
      342 LOADN                            R43 0
      343 LOADN                            R44 8
      344 CALL                             R42 2 1
      345 SETTABLEKS                       R42 R41 K113 ["PaddingRight"]
      347 GETIMPORT                        R42 K119 [UDim.new]
      349 LOADN                            R43 0
      350 LOADN                            R44 6
      351 CALL                             R42 2 1
      352 SETTABLEKS                       R42 R41 K114 ["PaddingTop"]
      354 GETIMPORT                        R42 K119 [UDim.new]
      356 LOADN                            R43 0
      357 LOADN                            R44 6
      358 CALL                             R42 2 1
      359 SETTABLEKS                       R42 R41 K115 ["PaddingBottom"]
      361 CALL                             R39 2 1
      362 SETTABLEKS                       R39 R38 K109 ["Padding"]
      364 CALL                             R35 3 1
      365 SETTABLEKS                       R35 R34 K80 ["Code"]
      367 CALL                             R31 3 1
      368 SETTABLEKS                       R31 R30 K74 ["CodeScrollView"]
      370 GETUPVAL                         R31 4
      371 GETUPVAL                         R32 13
      372 GETTABLEKS                       R32 R32 K120 ["Root"]
      374 DUPTABLE                         R33 K122 [{"isOpen"}]
      375 SETTABLEKS                       R8 R33 K121 ["isOpen"]
      377 DUPTABLE                         R34 K124 [{"Anchor", "Content"}]
      378 GETUPVAL                         R35 4
      379 GETUPVAL                         R36 13
      380 GETTABLEKS                       R36 R36 K123 ["Anchor"]
      382 DUPTABLE                         R37 K125 [{"LayoutOrder"}]
      383 MOVE                             R38 R18
      384 CALL                             R38 0 1
      385 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      387 DUPTABLE                         R38 K127 [{"CopyButton"}]
      388 GETUPVAL                         R40 7
      389 CALL                             R40 0 1
      390 JUMPIFNOT                        R40 ; [+48]
      391 GETUPVAL                         R39 4
      392 GETUPVAL                         R40 14
      393 DUPTABLE                         R41 K128 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      394 GETUPVAL                         R42 0
      395 GETTABLEKS                       R42 R42 K48 ["Enums"]
      397 GETTABLEKS                       R42 R42 K49 ["IconName"]
      399 GETTABLEKS                       R42 R42 K129 ["TwoStackedSquares"]
      401 SETTABLEKS                       R42 R41 K56 ["icon"]
      403 GETUPVAL                         R42 0
      404 GETTABLEKS                       R42 R42 K48 ["Enums"]
      406 GETTABLEKS                       R42 R42 K130 ["InputSize"]
      408 GETTABLEKS                       R42 R42 K131 ["XSmall"]
      410 SETTABLEKS                       R42 R41 K45 ["size"]
      412 GETUPVAL                         R42 0
      413 GETTABLEKS                       R42 R42 K48 ["Enums"]
      415 GETTABLEKS                       R42 R42 K132 ["ButtonVariant"]
      417 GETTABLEKS                       R42 R42 K133 ["Utility"]
      419 SETTABLEKS                       R42 R41 K14 ["variant"]
      421 JUMPIFEQKNIL                     R15 ; [+2]
      423 LOADB                            R42 0 +1
      424 LOADB                            R42 1
      425 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      427 SETTABLEKS                       R17 R41 K30 ["onActivated"]
      429 MOVE                             R42 R18
      430 CALL                             R42 0 1
      431 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      433 GETTABLEKS                       R42 R0 K134 ["copyButtonTestId"]
      435 SETTABLEKS                       R42 R41 K38 ["testId"]
      437 CALL                             R39 2 1
      438 JUMP                             ; [+24]
      439 GETUPVAL                         R39 4
      440 GETUPVAL                         R40 9
      441 DUPTABLE                         R41 K137 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      442 GETUPVAL                         R43 15
      443 GETTABLE                         R42 R43 R2
      444 SETTABLEKS                       R42 R41 K56 ["icon"]
      446 JUMPIFEQKNIL                     R15 ; [+2]
      448 LOADB                            R42 0 +1
      449 LOADB                            R42 1
      450 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      452 SETTABLEKS                       R17 R41 K30 ["onActivated"]
      454 MOVE                             R42 R18
      455 CALL                             R42 0 1
      456 SETTABLEKS                       R42 R41 K24 ["LayoutOrder"]
      458 GETTABLEKS                       R42 R0 K134 ["copyButtonTestId"]
      460 SETTABLEKS                       R42 R41 K38 ["testId"]
      462 CALL                             R39 2 1
      463 SETTABLEKS                       R39 R38 K126 ["CopyButton"]
      465 CALL                             R35 3 1
      466 SETTABLEKS                       R35 R34 K123 ["Anchor"]
      468 GETUPVAL                         R35 4
      469 GETUPVAL                         R36 13
      470 GETTABLEKS                       R36 R36 K8 ["Content"]
      472 DUPTABLE                         R37 K144 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      473 GETUPVAL                         R38 0
      474 GETTABLEKS                       R38 R38 K48 ["Enums"]
      476 GETTABLEKS                       R38 R38 K145 ["PopoverAlign"]
      478 GETTABLEKS                       R38 R38 K146 ["Center"]
      480 SETTABLEKS                       R38 R37 K139 ["align"]
      482 DUPTABLE                         R38 K149 [{"position", "offset"}]
      483 GETUPVAL                         R39 0
      484 GETTABLEKS                       R39 R39 K48 ["Enums"]
      486 GETTABLEKS                       R39 R39 K150 ["PopoverSide"]
      488 GETTABLEKS                       R39 R39 K151 ["Top"]
      490 SETTABLEKS                       R39 R38 K147 ["position"]
      492 GETTABLEKS                       R39 R1 K152 ["Size"]
      494 GETTABLEKS                       R39 R39 K153 ["Size_100"]
      496 SETTABLEKS                       R39 R38 K148 ["offset"]
      498 SETTABLEKS                       R38 R37 K140 ["side"]
      500 GETUPVAL                         R38 0
      501 GETTABLEKS                       R38 R38 K48 ["Enums"]
      503 GETTABLEKS                       R38 R38 K154 ["Radius"]
      505 GETTABLEKS                       R38 R38 K53 ["Small"]
      507 SETTABLEKS                       R38 R37 K141 ["radius"]
      509 GETTABLEKS                       R38 R1 K155 ["Inverse"]
      511 GETTABLEKS                       R38 R38 K156 ["Surface"]
      513 GETTABLEKS                       R38 R38 K157 ["Surface_0"]
      515 SETTABLEKS                       R38 R37 K142 ["backgroundStyle"]
      517 DUPTABLE                         R38 K159 [{"TooltipBody"}]
      518 GETUPVAL                         R39 4
      519 GETUPVAL                         R40 5
      520 DUPTABLE                         R41 K161 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      521 DUPTABLE                         R42 K163 [{"Title"}]
      522 GETUPVAL                         R43 4
      523 GETUPVAL                         R44 6
      524 DUPTABLE                         R45 K165 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      525 GETTABLEKS                       R46 R0 K166 ["copiedText"]
      527 SETTABLEKS                       R46 R45 K37 ["Text"]
      529 CALL                             R43 2 1
      530 SETTABLEKS                       R43 R42 K162 ["Title"]
      532 CALL                             R39 3 1
      533 SETTABLEKS                       R39 R38 K158 ["TooltipBody"]
      535 CALL                             R35 3 1
      536 SETTABLEKS                       R35 R34 K8 ["Content"]
      538 CALL                             R31 3 1
      539 SETTABLEKS                       R31 R30 K75 ["CopyButtonPopover"]
      541 CALL                             R27 3 1
      542 SETTABLEKS                       R27 R26 K67 ["CommandBlock"]
      544 CALL                             R23 3 1
      545 JUMP                             ; [+1]
      546 LOADNIL                          R23
      547 SETTABLEKS                       R23 R22 K27 ["ExpandedContent"]
      549 CALL                             R19 3 -1
      550 RETURN                           R19 -1
      551 GETUPVAL                         R19 4
      552 GETUPVAL                         R20 5
      553 DUPTABLE                         R21 K168 [{["tag"] = "col size-full-0 auto-y stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      554 GETTABLEKS                       R22 R0 K24 ["LayoutOrder"]
      556 SETTABLEKS                       R22 R21 K24 ["LayoutOrder"]
      558 DUPTABLE                         R22 K170 [{"Header", "HeaderDivider", "CodeScrollView"}]
      559 GETUPVAL                         R23 4
      560 GETUPVAL                         R24 5
      561 DUPTABLE                         R25 K172 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-xsmall bg-shift-100", ["LayoutOrder"], ["onActivated"]}]
      562 MOVE                             R26 R18
      563 CALL                             R26 0 1
      564 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      566 SETTABLEKS                       R14 R25 K30 ["onActivated"]
      568 DUPTABLE                         R26 K173 [{"ExpandIcon", "Label", "Spacer", "CopyButtonPopover"}]
      569 GETUPVAL                         R28 7
      570 CALL                             R28 0 1
      571 JUMPIFNOT                        R28 ; [+44]
      572 GETUPVAL                         R27 4
      573 GETUPVAL                         R28 8
      574 DUPTABLE                         R29 K47 [{"name", "size", "style", "LayoutOrder"}]
      575 JUMPIFNOT                        R6 ; [+8]
      576 GETUPVAL                         R30 0
      577 GETTABLEKS                       R30 R30 K48 ["Enums"]
      579 GETTABLEKS                       R30 R30 K49 ["IconName"]
      581 GETTABLEKS                       R30 R30 K50 ["ChevronSmallDown"]
      583 JUMP                             ; [+7]
      584 GETUPVAL                         R30 0
      585 GETTABLEKS                       R30 R30 K48 ["Enums"]
      587 GETTABLEKS                       R30 R30 K49 ["IconName"]
      589 GETTABLEKS                       R30 R30 K51 ["ChevronSmallRight"]
      591 SETTABLEKS                       R30 R29 K44 ["name"]
      593 GETUPVAL                         R30 0
      594 GETTABLEKS                       R30 R30 K48 ["Enums"]
      596 GETTABLEKS                       R30 R30 K52 ["IconSize"]
      598 GETTABLEKS                       R30 R30 K131 ["XSmall"]
      600 SETTABLEKS                       R30 R29 K45 ["size"]
      602 GETTABLEKS                       R30 R1 K7 ["Color"]
      604 GETTABLEKS                       R30 R30 K8 ["Content"]
      606 GETTABLEKS                       R30 R30 K55 ["Emphasis"]
      608 SETTABLEKS                       R30 R29 K46 ["style"]
      610 MOVE                             R30 R18
      611 CALL                             R30 0 1
      612 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      614 CALL                             R27 2 1
      615 JUMP                             ; [+14]
      616 GETUPVAL                         R27 4
      617 GETUPVAL                         R28 9
      618 DUPTABLE                         R29 K176 [{["icon"], ["tag"] = "align-x-center align-y-center size-300-300", ["iconTag"] = "size-150-150 content-emphasis", ["LayoutOrder"]}]
      619 JUMPIFNOT                        R6 ; [+2]
      620 LOADK                            R30 K60 ["icons/actions/truncationExpand_small"]
      621 JUMP                             ; [+1]
      622 LOADK                            R30 K61 ["icons/actions/cycleRight_small"]
      623 SETTABLEKS                       R30 R29 K56 ["icon"]
      625 MOVE                             R30 R18
      626 CALL                             R30 0 1
      627 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      629 CALL                             R27 2 1
      630 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      632 GETUPVAL                         R27 4
      633 GETUPVAL                         R28 6
      634 DUPTABLE                         R29 K178 [{["tag"] = "shrink auto-xy text-label-small text-align-x-left", ["Text"], ["LayoutOrder"], ["testId"]}]
      635 GETTABLEKS                       R30 R0 K40 ["label"]
      637 SETTABLEKS                       R30 R29 K37 ["Text"]
      639 MOVE                             R30 R18
      640 CALL                             R30 0 1
      641 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      643 GETTABLEKS                       R30 R0 K41 ["labelTestId"]
      645 SETTABLEKS                       R30 R29 K38 ["testId"]
      647 CALL                             R27 2 1
      648 SETTABLEKS                       R27 R26 K32 ["Label"]
      650 GETUPVAL                         R27 4
      651 GETUPVAL                         R28 5
      652 DUPTABLE                         R29 K43 [{["tag"] = "fill", ["LayoutOrder"]}]
      653 MOVE                             R30 R18
      654 CALL                             R30 0 1
      655 SETTABLEKS                       R30 R29 K24 ["LayoutOrder"]
      657 CALL                             R27 2 1
      658 SETTABLEKS                       R27 R26 K33 ["Spacer"]
      660 GETUPVAL                         R27 4
      661 GETUPVAL                         R28 13
      662 GETTABLEKS                       R28 R28 K120 ["Root"]
      664 DUPTABLE                         R29 K122 [{"isOpen"}]
      665 SETTABLEKS                       R8 R29 K121 ["isOpen"]
      667 DUPTABLE                         R30 K124 [{"Anchor", "Content"}]
      668 GETUPVAL                         R31 4
      669 GETUPVAL                         R32 13
      670 GETTABLEKS                       R32 R32 K123 ["Anchor"]
      672 DUPTABLE                         R33 K125 [{"LayoutOrder"}]
      673 MOVE                             R34 R18
      674 CALL                             R34 0 1
      675 SETTABLEKS                       R34 R33 K24 ["LayoutOrder"]
      677 DUPTABLE                         R34 K127 [{"CopyButton"}]
      678 GETUPVAL                         R36 7
      679 CALL                             R36 0 1
      680 JUMPIFNOT                        R36 ; [+48]
      681 GETUPVAL                         R35 4
      682 GETUPVAL                         R36 14
      683 DUPTABLE                         R37 K128 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      684 GETUPVAL                         R38 0
      685 GETTABLEKS                       R38 R38 K48 ["Enums"]
      687 GETTABLEKS                       R38 R38 K49 ["IconName"]
      689 GETTABLEKS                       R38 R38 K129 ["TwoStackedSquares"]
      691 SETTABLEKS                       R38 R37 K56 ["icon"]
      693 GETUPVAL                         R38 0
      694 GETTABLEKS                       R38 R38 K48 ["Enums"]
      696 GETTABLEKS                       R38 R38 K130 ["InputSize"]
      698 GETTABLEKS                       R38 R38 K131 ["XSmall"]
      700 SETTABLEKS                       R38 R37 K45 ["size"]
      702 GETUPVAL                         R38 0
      703 GETTABLEKS                       R38 R38 K48 ["Enums"]
      705 GETTABLEKS                       R38 R38 K132 ["ButtonVariant"]
      707 GETTABLEKS                       R38 R38 K133 ["Utility"]
      709 SETTABLEKS                       R38 R37 K14 ["variant"]
      711 JUMPIFEQKNIL                     R15 ; [+2]
      713 LOADB                            R38 0 +1
      714 LOADB                            R38 1
      715 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      717 SETTABLEKS                       R17 R37 K30 ["onActivated"]
      719 MOVE                             R38 R18
      720 CALL                             R38 0 1
      721 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      723 GETTABLEKS                       R38 R0 K134 ["copyButtonTestId"]
      725 SETTABLEKS                       R38 R37 K38 ["testId"]
      727 CALL                             R35 2 1
      728 JUMP                             ; [+24]
      729 GETUPVAL                         R35 4
      730 GETUPVAL                         R36 9
      731 DUPTABLE                         R37 K137 [{["icon"], ["tag"] = "align-x-center align-y-center size-600-600 radius-small", ["iconTag"] = "size-300-300 content-emphasis", ["isDisabled"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      732 GETUPVAL                         R39 15
      733 GETTABLE                         R38 R39 R2
      734 SETTABLEKS                       R38 R37 K56 ["icon"]
      736 JUMPIFEQKNIL                     R15 ; [+2]
      738 LOADB                            R38 0 +1
      739 LOADB                            R38 1
      740 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      742 SETTABLEKS                       R17 R37 K30 ["onActivated"]
      744 MOVE                             R38 R18
      745 CALL                             R38 0 1
      746 SETTABLEKS                       R38 R37 K24 ["LayoutOrder"]
      748 GETTABLEKS                       R38 R0 K134 ["copyButtonTestId"]
      750 SETTABLEKS                       R38 R37 K38 ["testId"]
      752 CALL                             R35 2 1
      753 SETTABLEKS                       R35 R34 K126 ["CopyButton"]
      755 CALL                             R31 3 1
      756 SETTABLEKS                       R31 R30 K123 ["Anchor"]
      758 GETUPVAL                         R31 4
      759 GETUPVAL                         R32 13
      760 GETTABLEKS                       R32 R32 K8 ["Content"]
      762 DUPTABLE                         R33 K144 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      763 GETUPVAL                         R34 0
      764 GETTABLEKS                       R34 R34 K48 ["Enums"]
      766 GETTABLEKS                       R34 R34 K145 ["PopoverAlign"]
      768 GETTABLEKS                       R34 R34 K146 ["Center"]
      770 SETTABLEKS                       R34 R33 K139 ["align"]
      772 DUPTABLE                         R34 K149 [{"position", "offset"}]
      773 GETUPVAL                         R35 0
      774 GETTABLEKS                       R35 R35 K48 ["Enums"]
      776 GETTABLEKS                       R35 R35 K150 ["PopoverSide"]
      778 GETTABLEKS                       R35 R35 K151 ["Top"]
      780 SETTABLEKS                       R35 R34 K147 ["position"]
      782 GETTABLEKS                       R35 R1 K152 ["Size"]
      784 GETTABLEKS                       R35 R35 K153 ["Size_100"]
      786 SETTABLEKS                       R35 R34 K148 ["offset"]
      788 SETTABLEKS                       R34 R33 K140 ["side"]
      790 GETUPVAL                         R34 0
      791 GETTABLEKS                       R34 R34 K48 ["Enums"]
      793 GETTABLEKS                       R34 R34 K154 ["Radius"]
      795 GETTABLEKS                       R34 R34 K53 ["Small"]
      797 SETTABLEKS                       R34 R33 K141 ["radius"]
      799 GETTABLEKS                       R34 R1 K155 ["Inverse"]
      801 GETTABLEKS                       R34 R34 K156 ["Surface"]
      803 GETTABLEKS                       R34 R34 K157 ["Surface_0"]
      805 SETTABLEKS                       R34 R33 K142 ["backgroundStyle"]
      807 DUPTABLE                         R34 K159 [{"TooltipBody"}]
      808 GETUPVAL                         R35 4
      809 GETUPVAL                         R36 5
      810 DUPTABLE                         R37 K161 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      811 DUPTABLE                         R38 K163 [{"Title"}]
      812 GETUPVAL                         R39 4
      813 GETUPVAL                         R40 6
      814 DUPTABLE                         R41 K165 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      815 GETTABLEKS                       R42 R0 K166 ["copiedText"]
      817 SETTABLEKS                       R42 R41 K37 ["Text"]
      819 CALL                             R39 2 1
      820 SETTABLEKS                       R39 R38 K162 ["Title"]
      822 CALL                             R35 3 1
      823 SETTABLEKS                       R35 R34 K158 ["TooltipBody"]
      825 CALL                             R31 3 1
      826 SETTABLEKS                       R31 R30 K8 ["Content"]
      828 CALL                             R27 3 1
      829 SETTABLEKS                       R27 R26 K75 ["CopyButtonPopover"]
      831 CALL                             R23 3 1
      832 SETTABLEKS                       R23 R22 K26 ["Header"]
      834 JUMPIFNOT                        R6 ; [+9]
      835 GETUPVAL                         R23 4
      836 GETUPVAL                         R24 16
      837 DUPTABLE                         R25 K125 [{"LayoutOrder"}]
      838 MOVE                             R26 R18
      839 CALL                             R26 0 1
      840 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      842 CALL                             R23 2 1
      843 JUMP                             ; [+1]
      844 LOADNIL                          R23
      845 SETTABLEKS                       R23 R22 K169 ["HeaderDivider"]
      847 JUMPIFNOT                        R6 ; [+91]
      848 GETUPVAL                         R23 4
      849 GETUPVAL                         R24 10
      850 DUPTABLE                         R25 K180 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"], ["scroll"]}]
      851 MOVE                             R26 R18
      852 CALL                             R26 0 1
      853 SETTABLEKS                       R26 R25 K24 ["LayoutOrder"]
      855 GETUPVAL                         R26 11
      856 SETTABLEKS                       R26 R25 K78 ["scroll"]
      858 DUPTABLE                         R26 K81 [{"Code"}]
      859 GETUPVAL                         R27 4
      860 LOADK                            R28 K82 ["TextBox"]
      861 DUPTABLE                         R29 K183 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["MultiLine"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
      862 GETTABLEKS                       R30 R0 K19 ["data"]
      864 GETTABLEKS                       R30 R30 K98 ["text"]
      866 SETTABLEKS                       R30 R29 K37 ["Text"]
      868 GETIMPORT                        R30 K101 [Enum.AutomaticSize.XY]
      870 SETTABLEKS                       R30 R29 K83 ["AutomaticSize"]
      872 GETUPVAL                         R30 12
      873 GETTABLEKS                       R30 R30 K102 ["CODE_FONT"]
      875 SETTABLEKS                       R30 R29 K84 ["FontFace"]
      877 GETTABLEKS                       R30 R1 K103 ["FontSize"]
      879 GETTABLEKS                       R30 R30 K104 ["FontSize_300"]
      881 SETTABLEKS                       R30 R29 K85 ["TextSize"]
      883 GETTABLEKS                       R30 R3 K86 ["LineHeight"]
      885 SETTABLEKS                       R30 R29 K86 ["LineHeight"]
      887 GETTABLEKS                       R30 R4 K105 ["Color3"]
      889 SETTABLEKS                       R30 R29 K87 ["TextColor3"]
      891 GETTABLEKS                       R30 R4 K106 ["Transparency"]
      893 SETTABLEKS                       R30 R29 K88 ["TextTransparency"]
      895 GETIMPORT                        R30 K108 [Enum.TextXAlignment.Left]
      897 SETTABLEKS                       R30 R29 K89 ["TextXAlignment"]
      899 DUPTABLE                         R30 K110 [{"Padding"}]
      900 GETUPVAL                         R31 4
      901 LOADK                            R32 K111 ["UIPadding"]
      902 DUPTABLE                         R33 K116 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      903 GETIMPORT                        R34 K119 [UDim.new]
      905 LOADN                            R35 0
      906 LOADN                            R36 12
      907 CALL                             R34 2 1
      908 SETTABLEKS                       R34 R33 K112 ["PaddingLeft"]
      910 GETIMPORT                        R34 K119 [UDim.new]
      912 LOADN                            R35 0
      913 LOADN                            R36 12
      914 CALL                             R34 2 1
      915 SETTABLEKS                       R34 R33 K113 ["PaddingRight"]
      917 GETIMPORT                        R34 K119 [UDim.new]
      919 LOADN                            R35 0
      920 LOADN                            R36 12
      921 CALL                             R34 2 1
      922 SETTABLEKS                       R34 R33 K114 ["PaddingTop"]
      924 GETIMPORT                        R34 K119 [UDim.new]
      926 LOADN                            R35 0
      927 LOADN                            R36 12
      928 CALL                             R34 2 1
      929 SETTABLEKS                       R34 R33 K115 ["PaddingBottom"]
      931 CALL                             R31 2 1
      932 SETTABLEKS                       R31 R30 K109 ["Padding"]
      934 CALL                             R27 3 1
      935 SETTABLEKS                       R27 R26 K80 ["Code"]
      937 CALL                             R23 3 1
      938 JUMP                             ; [+1]
      939 LOADNIL                          R23
      940 SETTABLEKS                       R23 R22 K74 ["CodeScrollView"]
      942 CALL                             R19 3 -1
      943 RETURN                           R19 -1

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
       28 GETTABLEKS                       R5 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R6 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Parent"]
       44 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R8 K16 ["FFlagAssistantUseBuilderIcons"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R4 K17 ["Divider"]
       56 GETTABLEKS                       R9 R4 K18 ["Icon"]
       58 GETTABLEKS                       R10 R4 K19 ["IconButton"]
       60 GETTABLEKS                       R11 R4 K20 ["Popover"]
       62 GETTABLEKS                       R12 R4 K21 ["ScrollView"]
       64 GETTABLEKS                       R13 R4 K22 ["Text"]
       66 GETTABLEKS                       R14 R4 K23 ["View"]
       68 GETTABLEKS                       R15 R4 K24 ["Enums"]
       70 GETTABLEKS                       R15 R15 K25 ["Visibility"]
       72 GETTABLEKS                       R16 R6 K26 ["createNextOrder"]
       74 GETTABLEKS                       R17 R5 K27 ["createElement"]
       76 DUPTABLE                         R18 K34 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       77 GETIMPORT                        R19 K37 [UDim2.fromOffset]
       79 LOADN                            R20 0
       80 LOADN                            R21 0
       81 CALL                             R19 2 1
       82 SETTABLEKS                       R19 R18 K28 ["CanvasSize"]
       84 GETIMPORT                        R19 K40 [Enum.AutomaticSize.Y]
       86 SETTABLEKS                       R19 R18 K29 ["AutomaticSize"]
       88 GETIMPORT                        R19 K42 [Enum.AutomaticSize.X]
       90 SETTABLEKS                       R19 R18 K30 ["AutomaticCanvasSize"]
       92 GETIMPORT                        R19 K43 [Enum.ScrollingDirection.X]
       94 SETTABLEKS                       R19 R18 K31 ["ScrollingDirection"]
       96 GETTABLEKS                       R19 R15 K44 ["Always"]
       98 SETTABLEKS                       R19 R18 K32 ["scrollBarVisibility"]
      100 GETIMPORT                        R19 K46 [Enum.ScrollBarInset.Always]
      102 SETTABLEKS                       R19 R18 K33 ["HorizontalScrollBarInset"]
      104 DUPTABLE                         R19 K51 [{["Dark"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png", ["Light"] = "rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"}]
      105 DUPCLOSURE                       R20 K52 [PROTO_7]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R19
      122 CAPTURE                          VAL R8
      123 RETURN                           R20 1
