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
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Default"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["get"]
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K8 ["useState"]
       23 LOADB                            R6 0
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K8 ["useState"]
       28 LOADB                            R8 0
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K9 ["useRef"]
       33 LOADNIL                          R10
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R11 R0 K11 ["variant"]
       37 ORK                              R10 R11 K10 ["card"]
       38 JUMPIFEQKS                       R10 K12 ["inline"] ; [+2]
       40 LOADB                            R11 0 +1
       41 LOADB                            R11 1
       42 GETUPVAL                         R12 2
       43 GETTABLEKS                       R12 R12 K13 ["useEffect"]
       45 NEWCLOSURE                       R13 P0
       46 CAPTURE                          VAL R9
       47 NEWTABLE                         R14 0 0
       49 CALL                             R12 2 0
       50 GETTABLEKS                       R13 R0 K14 ["isDisabled"]
       52 JUMPIFEQKB                       R13 TRUE ; [+2]
       54 LOADB                            R12 0 +1
       55 LOADB                            R12 1
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K13 ["useEffect"]
       59 NEWCLOSURE                       R14 P1
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R6
       62 NEWTABLE                         R15 0 1
       64 MOVE                             R16 R12
       65 SETLIST                          R15 R16 1 [1]
       67 CALL                             R13 2 0
       68 GETUPVAL                         R13 2
       69 GETTABLEKS                       R13 R13 K15 ["useCallback"]
       71 NEWCLOSURE                       R14 P2
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R6
       74 NEWTABLE                         R15 0 1
       76 MOVE                             R16 R12
       77 SETLIST                          R15 R16 1 [1]
       79 CALL                             R13 2 1
       80 GETTABLEKS                       R14 R0 K16 ["data"]
       82 GETTABLEKS                       R14 R14 K17 ["copyText"]
       84 GETTABLEKS                       R15 R0 K18 ["onCopy"]
       86 GETUPVAL                         R16 2
       87 GETTABLEKS                       R16 R16 K15 ["useCallback"]
       89 NEWCLOSURE                       R17 P3
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R9
       95 NEWTABLE                         R18 0 3
       97 MOVE                             R19 R14
       98 MOVE                             R20 R4
       99 MOVE                             R21 R15
      100 SETLIST                          R18 R19 3 [1]
      102 CALL                             R16 2 1
      103 GETUPVAL                         R17 3
      104 CALL                             R17 0 1
      105 JUMPIFNOT                        R11 ; [+387]
      106 GETUPVAL                         R18 4
      107 GETUPVAL                         R19 5
      108 DUPTABLE                         R20 K22 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"]}]
      109 GETTABLEKS                       R21 R0 K21 ["LayoutOrder"]
      111 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      113 DUPTABLE                         R21 K25 [{"Header", "ExpandedContent"}]
      114 GETUPVAL                         R22 4
      115 GETUPVAL                         R23 5
      116 DUPTABLE                         R24 K28 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-xxsmall", ["LayoutOrder"], ["onActivated"]}]
      117 MOVE                             R25 R17
      118 CALL                             R25 0 1
      119 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      121 JUMPIFNOT                        R12 ; [+2]
      122 LOADNIL                          R25
      123 JUMP                             ; [+1]
      124 MOVE                             R25 R13
      125 SETTABLEKS                       R25 R24 K27 ["onActivated"]
      127 DUPTABLE                         R25 K32 [{"Label", "Spacer", "ExpandIcon"}]
      128 GETUPVAL                         R26 4
      129 GETUPVAL                         R27 6
      130 DUPTABLE                         R28 K36 [{["tag"] = "auto-xy text-body-medium text-align-x-left", ["Text"], ["LayoutOrder"], ["testId"]}]
      131 GETTABLEKS                       R29 R0 K37 ["label"]
      133 SETTABLEKS                       R29 R28 K34 ["Text"]
      135 MOVE                             R29 R17
      136 CALL                             R29 0 1
      137 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      139 GETTABLEKS                       R29 R0 K38 ["labelTestId"]
      141 SETTABLEKS                       R29 R28 K35 ["testId"]
      143 CALL                             R26 2 1
      144 SETTABLEKS                       R26 R25 K29 ["Label"]
      146 GETUPVAL                         R26 4
      147 GETUPVAL                         R27 5
      148 DUPTABLE                         R28 K40 [{["tag"] = "fill", ["LayoutOrder"]}]
      149 MOVE                             R29 R17
      150 CALL                             R29 0 1
      151 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      153 CALL                             R26 2 1
      154 SETTABLEKS                       R26 R25 K30 ["Spacer"]
      156 GETUPVAL                         R26 4
      157 GETUPVAL                         R27 7
      158 DUPTABLE                         R28 K44 [{"name", "size", "style", "LayoutOrder"}]
      159 JUMPIFNOT                        R5 ; [+8]
      160 GETUPVAL                         R29 0
      161 GETTABLEKS                       R29 R29 K45 ["Enums"]
      163 GETTABLEKS                       R29 R29 K46 ["IconName"]
      165 GETTABLEKS                       R29 R29 K47 ["ChevronSmallDown"]
      167 JUMP                             ; [+7]
      168 GETUPVAL                         R29 0
      169 GETTABLEKS                       R29 R29 K45 ["Enums"]
      171 GETTABLEKS                       R29 R29 K46 ["IconName"]
      173 GETTABLEKS                       R29 R29 K48 ["ChevronSmallRight"]
      175 SETTABLEKS                       R29 R28 K41 ["name"]
      177 GETUPVAL                         R29 0
      178 GETTABLEKS                       R29 R29 K45 ["Enums"]
      180 GETTABLEKS                       R29 R29 K49 ["IconSize"]
      182 GETTABLEKS                       R29 R29 K50 ["Small"]
      184 SETTABLEKS                       R29 R28 K42 ["size"]
      186 JUMPIFNOT                        R12 ; [+7]
      187 GETTABLEKS                       R29 R1 K4 ["Color"]
      189 GETTABLEKS                       R29 R29 K5 ["Content"]
      191 GETTABLEKS                       R29 R29 K51 ["Muted"]
      193 JUMP                             ; [+6]
      194 GETTABLEKS                       R29 R1 K4 ["Color"]
      196 GETTABLEKS                       R29 R29 K5 ["Content"]
      198 GETTABLEKS                       R29 R29 K52 ["Emphasis"]
      200 SETTABLEKS                       R29 R28 K43 ["style"]
      202 MOVE                             R29 R17
      203 CALL                             R29 0 1
      204 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K31 ["ExpandIcon"]
      209 CALL                             R22 3 1
      210 SETTABLEKS                       R22 R21 K23 ["Header"]
      212 JUMPIFNOT                        R5 ; [+275]
      213 GETUPVAL                         R22 4
      214 GETUPVAL                         R23 5
      215 DUPTABLE                         R24 K54 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"]}]
      216 MOVE                             R25 R17
      217 CALL                             R25 0 1
      218 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      220 DUPTABLE                         R25 K57 [{"Description", "CommandBlock"}]
      221 GETTABLEKS                       R27 R0 K58 ["description"]
      223 JUMPIFNOT                        R27 ; [+13]
      224 GETUPVAL                         R26 4
      225 GETUPVAL                         R27 6
      226 DUPTABLE                         R28 K60 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      227 GETTABLEKS                       R29 R0 K58 ["description"]
      229 SETTABLEKS                       R29 R28 K34 ["Text"]
      231 MOVE                             R29 R17
      232 CALL                             R29 0 1
      233 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      235 CALL                             R26 2 1
      236 JUMP                             ; [+1]
      237 LOADNIL                          R26
      238 SETTABLEKS                       R26 R25 K55 ["Description"]
      240 GETUPVAL                         R26 4
      241 GETUPVAL                         R27 5
      242 DUPTABLE                         R28 K62 [{["tag"] = "row align-y-center size-full-0 auto-y stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      243 MOVE                             R29 R17
      244 CALL                             R29 0 1
      245 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      247 DUPTABLE                         R29 K65 [{"CodeScrollView", "CopyButtonPopover"}]
      248 GETUPVAL                         R30 4
      249 GETUPVAL                         R31 8
      250 DUPTABLE                         R32 K68 [{["tag"] = "fill auto-y", ["LayoutOrder"], ["scroll"]}]
      251 MOVE                             R33 R17
      252 CALL                             R33 0 1
      253 SETTABLEKS                       R33 R32 K21 ["LayoutOrder"]
      255 GETUPVAL                         R33 9
      256 SETTABLEKS                       R33 R32 K67 ["scroll"]
      258 DUPTABLE                         R33 K70 [{"Code"}]
      259 GETUPVAL                         R34 4
      260 LOADK                            R35 K71 ["TextBox"]
      261 DUPTABLE                         R36 K86 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
      262 GETTABLEKS                       R37 R0 K16 ["data"]
      264 GETTABLEKS                       R37 R37 K87 ["text"]
      266 SETTABLEKS                       R37 R36 K34 ["Text"]
      268 GETIMPORT                        R37 K90 [Enum.AutomaticSize.XY]
      270 SETTABLEKS                       R37 R36 K72 ["AutomaticSize"]
      272 GETUPVAL                         R37 10
      273 GETTABLEKS                       R37 R37 K91 ["CODE_FONT"]
      275 SETTABLEKS                       R37 R36 K73 ["FontFace"]
      277 GETTABLEKS                       R37 R1 K92 ["FontSize"]
      279 GETTABLEKS                       R37 R37 K93 ["FontSize_300"]
      281 SETTABLEKS                       R37 R36 K74 ["TextSize"]
      283 GETTABLEKS                       R37 R2 K75 ["LineHeight"]
      285 SETTABLEKS                       R37 R36 K75 ["LineHeight"]
      287 GETTABLEKS                       R37 R3 K94 ["Color3"]
      289 SETTABLEKS                       R37 R36 K76 ["TextColor3"]
      291 GETTABLEKS                       R37 R3 K95 ["Transparency"]
      293 SETTABLEKS                       R37 R36 K77 ["TextTransparency"]
      295 GETIMPORT                        R37 K97 [Enum.TextXAlignment.Left]
      297 SETTABLEKS                       R37 R36 K78 ["TextXAlignment"]
      299 DUPTABLE                         R37 K99 [{"Padding"}]
      300 GETUPVAL                         R38 4
      301 LOADK                            R39 K100 ["UIPadding"]
      302 DUPTABLE                         R40 K105 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      303 GETIMPORT                        R41 K108 [UDim.new]
      305 LOADN                            R42 0
      306 LOADN                            R43 8
      307 CALL                             R41 2 1
      308 SETTABLEKS                       R41 R40 K101 ["PaddingLeft"]
      310 GETIMPORT                        R41 K108 [UDim.new]
      312 LOADN                            R42 0
      313 LOADN                            R43 8
      314 CALL                             R41 2 1
      315 SETTABLEKS                       R41 R40 K102 ["PaddingRight"]
      317 GETIMPORT                        R41 K108 [UDim.new]
      319 LOADN                            R42 0
      320 LOADN                            R43 6
      321 CALL                             R41 2 1
      322 SETTABLEKS                       R41 R40 K103 ["PaddingTop"]
      324 GETIMPORT                        R41 K108 [UDim.new]
      326 LOADN                            R42 0
      327 LOADN                            R43 6
      328 CALL                             R41 2 1
      329 SETTABLEKS                       R41 R40 K104 ["PaddingBottom"]
      331 CALL                             R38 2 1
      332 SETTABLEKS                       R38 R37 K98 ["Padding"]
      334 CALL                             R34 3 1
      335 SETTABLEKS                       R34 R33 K69 ["Code"]
      337 CALL                             R30 3 1
      338 SETTABLEKS                       R30 R29 K63 ["CodeScrollView"]
      340 GETUPVAL                         R30 4
      341 GETUPVAL                         R31 11
      342 GETTABLEKS                       R31 R31 K109 ["Root"]
      344 DUPTABLE                         R32 K111 [{"isOpen"}]
      345 SETTABLEKS                       R7 R32 K110 ["isOpen"]
      347 DUPTABLE                         R33 K113 [{"Anchor", "Content"}]
      348 GETUPVAL                         R34 4
      349 GETUPVAL                         R35 11
      350 GETTABLEKS                       R35 R35 K112 ["Anchor"]
      352 DUPTABLE                         R36 K114 [{"LayoutOrder"}]
      353 MOVE                             R37 R17
      354 CALL                             R37 0 1
      355 SETTABLEKS                       R37 R36 K21 ["LayoutOrder"]
      357 DUPTABLE                         R37 K116 [{"CopyButton"}]
      358 GETUPVAL                         R38 4
      359 GETUPVAL                         R39 12
      360 DUPTABLE                         R40 K118 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      361 GETUPVAL                         R41 0
      362 GETTABLEKS                       R41 R41 K45 ["Enums"]
      364 GETTABLEKS                       R41 R41 K46 ["IconName"]
      366 GETTABLEKS                       R41 R41 K119 ["TwoStackedSquares"]
      368 SETTABLEKS                       R41 R40 K117 ["icon"]
      370 GETUPVAL                         R41 0
      371 GETTABLEKS                       R41 R41 K45 ["Enums"]
      373 GETTABLEKS                       R41 R41 K120 ["InputSize"]
      375 GETTABLEKS                       R41 R41 K121 ["XSmall"]
      377 SETTABLEKS                       R41 R40 K42 ["size"]
      379 GETUPVAL                         R41 0
      380 GETTABLEKS                       R41 R41 K45 ["Enums"]
      382 GETTABLEKS                       R41 R41 K122 ["ButtonVariant"]
      384 GETTABLEKS                       R41 R41 K123 ["Utility"]
      386 SETTABLEKS                       R41 R40 K11 ["variant"]
      388 JUMPIFEQKNIL                     R14 ; [+2]
      390 LOADB                            R41 0 +1
      391 LOADB                            R41 1
      392 SETTABLEKS                       R41 R40 K14 ["isDisabled"]
      394 SETTABLEKS                       R16 R40 K27 ["onActivated"]
      396 MOVE                             R41 R17
      397 CALL                             R41 0 1
      398 SETTABLEKS                       R41 R40 K21 ["LayoutOrder"]
      400 GETTABLEKS                       R41 R0 K124 ["copyButtonTestId"]
      402 SETTABLEKS                       R41 R40 K35 ["testId"]
      404 CALL                             R38 2 1
      405 SETTABLEKS                       R38 R37 K115 ["CopyButton"]
      407 CALL                             R34 3 1
      408 SETTABLEKS                       R34 R33 K112 ["Anchor"]
      410 GETUPVAL                         R34 4
      411 GETUPVAL                         R35 11
      412 GETTABLEKS                       R35 R35 K5 ["Content"]
      414 DUPTABLE                         R36 K131 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      415 GETUPVAL                         R37 0
      416 GETTABLEKS                       R37 R37 K45 ["Enums"]
      418 GETTABLEKS                       R37 R37 K132 ["PopoverAlign"]
      420 GETTABLEKS                       R37 R37 K133 ["Center"]
      422 SETTABLEKS                       R37 R36 K126 ["align"]
      424 DUPTABLE                         R37 K136 [{"position", "offset"}]
      425 GETUPVAL                         R38 0
      426 GETTABLEKS                       R38 R38 K45 ["Enums"]
      428 GETTABLEKS                       R38 R38 K137 ["PopoverSide"]
      430 GETTABLEKS                       R38 R38 K138 ["Top"]
      432 SETTABLEKS                       R38 R37 K134 ["position"]
      434 GETTABLEKS                       R38 R1 K139 ["Size"]
      436 GETTABLEKS                       R38 R38 K140 ["Size_100"]
      438 SETTABLEKS                       R38 R37 K135 ["offset"]
      440 SETTABLEKS                       R37 R36 K127 ["side"]
      442 GETUPVAL                         R37 0
      443 GETTABLEKS                       R37 R37 K45 ["Enums"]
      445 GETTABLEKS                       R37 R37 K141 ["Radius"]
      447 GETTABLEKS                       R37 R37 K50 ["Small"]
      449 SETTABLEKS                       R37 R36 K128 ["radius"]
      451 GETTABLEKS                       R37 R1 K142 ["Inverse"]
      453 GETTABLEKS                       R37 R37 K143 ["Surface"]
      455 GETTABLEKS                       R37 R37 K144 ["Surface_0"]
      457 SETTABLEKS                       R37 R36 K129 ["backgroundStyle"]
      459 DUPTABLE                         R37 K146 [{"TooltipBody"}]
      460 GETUPVAL                         R38 4
      461 GETUPVAL                         R39 5
      462 DUPTABLE                         R40 K148 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      463 DUPTABLE                         R41 K150 [{"Title"}]
      464 GETUPVAL                         R42 4
      465 GETUPVAL                         R43 6
      466 DUPTABLE                         R44 K152 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      467 GETTABLEKS                       R45 R0 K153 ["copiedText"]
      469 SETTABLEKS                       R45 R44 K34 ["Text"]
      471 CALL                             R42 2 1
      472 SETTABLEKS                       R42 R41 K149 ["Title"]
      474 CALL                             R38 3 1
      475 SETTABLEKS                       R38 R37 K145 ["TooltipBody"]
      477 CALL                             R34 3 1
      478 SETTABLEKS                       R34 R33 K5 ["Content"]
      480 CALL                             R30 3 1
      481 SETTABLEKS                       R30 R29 K64 ["CopyButtonPopover"]
      483 CALL                             R26 3 1
      484 SETTABLEKS                       R26 R25 K56 ["CommandBlock"]
      486 CALL                             R22 3 1
      487 JUMP                             ; [+1]
      488 LOADNIL                          R22
      489 SETTABLEKS                       R22 R21 K24 ["ExpandedContent"]
      491 CALL                             R18 3 -1
      492 RETURN                           R18 -1
      493 GETUPVAL                         R18 4
      494 GETUPVAL                         R19 5
      495 DUPTABLE                         R20 K155 [{["tag"] = "col size-full-0 auto-y stroke-standard stroke-default radius-small", ["LayoutOrder"]}]
      496 GETTABLEKS                       R21 R0 K21 ["LayoutOrder"]
      498 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      500 DUPTABLE                         R21 K157 [{"Header", "HeaderDivider", "CodeScrollView"}]
      501 GETUPVAL                         R22 4
      502 GETUPVAL                         R23 5
      503 DUPTABLE                         R24 K159 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y padding-xsmall bg-shift-100", ["LayoutOrder"], ["onActivated"]}]
      504 MOVE                             R25 R17
      505 CALL                             R25 0 1
      506 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      508 SETTABLEKS                       R13 R24 K27 ["onActivated"]
      510 DUPTABLE                         R25 K160 [{"ExpandIcon", "Label", "Spacer", "CopyButtonPopover"}]
      511 GETUPVAL                         R26 4
      512 GETUPVAL                         R27 7
      513 DUPTABLE                         R28 K44 [{"name", "size", "style", "LayoutOrder"}]
      514 JUMPIFNOT                        R5 ; [+8]
      515 GETUPVAL                         R29 0
      516 GETTABLEKS                       R29 R29 K45 ["Enums"]
      518 GETTABLEKS                       R29 R29 K46 ["IconName"]
      520 GETTABLEKS                       R29 R29 K47 ["ChevronSmallDown"]
      522 JUMP                             ; [+7]
      523 GETUPVAL                         R29 0
      524 GETTABLEKS                       R29 R29 K45 ["Enums"]
      526 GETTABLEKS                       R29 R29 K46 ["IconName"]
      528 GETTABLEKS                       R29 R29 K48 ["ChevronSmallRight"]
      530 SETTABLEKS                       R29 R28 K41 ["name"]
      532 GETUPVAL                         R29 0
      533 GETTABLEKS                       R29 R29 K45 ["Enums"]
      535 GETTABLEKS                       R29 R29 K49 ["IconSize"]
      537 GETTABLEKS                       R29 R29 K121 ["XSmall"]
      539 SETTABLEKS                       R29 R28 K42 ["size"]
      541 GETTABLEKS                       R29 R1 K4 ["Color"]
      543 GETTABLEKS                       R29 R29 K5 ["Content"]
      545 GETTABLEKS                       R29 R29 K52 ["Emphasis"]
      547 SETTABLEKS                       R29 R28 K43 ["style"]
      549 MOVE                             R29 R17
      550 CALL                             R29 0 1
      551 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      553 CALL                             R26 2 1
      554 SETTABLEKS                       R26 R25 K31 ["ExpandIcon"]
      556 GETUPVAL                         R26 4
      557 GETUPVAL                         R27 6
      558 DUPTABLE                         R28 K162 [{["tag"] = "shrink auto-xy text-label-small text-align-x-left", ["Text"], ["LayoutOrder"], ["testId"]}]
      559 GETTABLEKS                       R29 R0 K37 ["label"]
      561 SETTABLEKS                       R29 R28 K34 ["Text"]
      563 MOVE                             R29 R17
      564 CALL                             R29 0 1
      565 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      567 GETTABLEKS                       R29 R0 K38 ["labelTestId"]
      569 SETTABLEKS                       R29 R28 K35 ["testId"]
      571 CALL                             R26 2 1
      572 SETTABLEKS                       R26 R25 K29 ["Label"]
      574 GETUPVAL                         R26 4
      575 GETUPVAL                         R27 5
      576 DUPTABLE                         R28 K40 [{["tag"] = "fill", ["LayoutOrder"]}]
      577 MOVE                             R29 R17
      578 CALL                             R29 0 1
      579 SETTABLEKS                       R29 R28 K21 ["LayoutOrder"]
      581 CALL                             R26 2 1
      582 SETTABLEKS                       R26 R25 K30 ["Spacer"]
      584 GETUPVAL                         R26 4
      585 GETUPVAL                         R27 11
      586 GETTABLEKS                       R27 R27 K109 ["Root"]
      588 DUPTABLE                         R28 K111 [{"isOpen"}]
      589 SETTABLEKS                       R7 R28 K110 ["isOpen"]
      591 DUPTABLE                         R29 K113 [{"Anchor", "Content"}]
      592 GETUPVAL                         R30 4
      593 GETUPVAL                         R31 11
      594 GETTABLEKS                       R31 R31 K112 ["Anchor"]
      596 DUPTABLE                         R32 K114 [{"LayoutOrder"}]
      597 MOVE                             R33 R17
      598 CALL                             R33 0 1
      599 SETTABLEKS                       R33 R32 K21 ["LayoutOrder"]
      601 DUPTABLE                         R33 K116 [{"CopyButton"}]
      602 GETUPVAL                         R34 4
      603 GETUPVAL                         R35 12
      604 DUPTABLE                         R36 K118 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      605 GETUPVAL                         R37 0
      606 GETTABLEKS                       R37 R37 K45 ["Enums"]
      608 GETTABLEKS                       R37 R37 K46 ["IconName"]
      610 GETTABLEKS                       R37 R37 K119 ["TwoStackedSquares"]
      612 SETTABLEKS                       R37 R36 K117 ["icon"]
      614 GETUPVAL                         R37 0
      615 GETTABLEKS                       R37 R37 K45 ["Enums"]
      617 GETTABLEKS                       R37 R37 K120 ["InputSize"]
      619 GETTABLEKS                       R37 R37 K121 ["XSmall"]
      621 SETTABLEKS                       R37 R36 K42 ["size"]
      623 GETUPVAL                         R37 0
      624 GETTABLEKS                       R37 R37 K45 ["Enums"]
      626 GETTABLEKS                       R37 R37 K122 ["ButtonVariant"]
      628 GETTABLEKS                       R37 R37 K123 ["Utility"]
      630 SETTABLEKS                       R37 R36 K11 ["variant"]
      632 JUMPIFEQKNIL                     R14 ; [+2]
      634 LOADB                            R37 0 +1
      635 LOADB                            R37 1
      636 SETTABLEKS                       R37 R36 K14 ["isDisabled"]
      638 SETTABLEKS                       R16 R36 K27 ["onActivated"]
      640 MOVE                             R37 R17
      641 CALL                             R37 0 1
      642 SETTABLEKS                       R37 R36 K21 ["LayoutOrder"]
      644 GETTABLEKS                       R37 R0 K124 ["copyButtonTestId"]
      646 SETTABLEKS                       R37 R36 K35 ["testId"]
      648 CALL                             R34 2 1
      649 SETTABLEKS                       R34 R33 K115 ["CopyButton"]
      651 CALL                             R30 3 1
      652 SETTABLEKS                       R30 R29 K112 ["Anchor"]
      654 GETUPVAL                         R30 4
      655 GETUPVAL                         R31 11
      656 GETTABLEKS                       R31 R31 K5 ["Content"]
      658 DUPTABLE                         R32 K131 [{["hasArrow"] = False, ["align"], ["side"], ["radius"], ["backgroundStyle"], ["selectionGroup"] = False}]
      659 GETUPVAL                         R33 0
      660 GETTABLEKS                       R33 R33 K45 ["Enums"]
      662 GETTABLEKS                       R33 R33 K132 ["PopoverAlign"]
      664 GETTABLEKS                       R33 R33 K133 ["Center"]
      666 SETTABLEKS                       R33 R32 K126 ["align"]
      668 DUPTABLE                         R33 K136 [{"position", "offset"}]
      669 GETUPVAL                         R34 0
      670 GETTABLEKS                       R34 R34 K45 ["Enums"]
      672 GETTABLEKS                       R34 R34 K137 ["PopoverSide"]
      674 GETTABLEKS                       R34 R34 K138 ["Top"]
      676 SETTABLEKS                       R34 R33 K134 ["position"]
      678 GETTABLEKS                       R34 R1 K139 ["Size"]
      680 GETTABLEKS                       R34 R34 K140 ["Size_100"]
      682 SETTABLEKS                       R34 R33 K135 ["offset"]
      684 SETTABLEKS                       R33 R32 K127 ["side"]
      686 GETUPVAL                         R33 0
      687 GETTABLEKS                       R33 R33 K45 ["Enums"]
      689 GETTABLEKS                       R33 R33 K141 ["Radius"]
      691 GETTABLEKS                       R33 R33 K50 ["Small"]
      693 SETTABLEKS                       R33 R32 K128 ["radius"]
      695 GETTABLEKS                       R33 R1 K142 ["Inverse"]
      697 GETTABLEKS                       R33 R33 K143 ["Surface"]
      699 GETTABLEKS                       R33 R33 K144 ["Surface_0"]
      701 SETTABLEKS                       R33 R32 K129 ["backgroundStyle"]
      703 DUPTABLE                         R33 K146 [{"TooltipBody"}]
      704 GETUPVAL                         R34 4
      705 GETUPVAL                         R35 5
      706 DUPTABLE                         R36 K148 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall"}]
      707 DUPTABLE                         R37 K150 [{"Title"}]
      708 GETUPVAL                         R38 4
      709 GETUPVAL                         R39 6
      710 DUPTABLE                         R40 K152 [{["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
      711 GETTABLEKS                       R41 R0 K153 ["copiedText"]
      713 SETTABLEKS                       R41 R40 K34 ["Text"]
      715 CALL                             R38 2 1
      716 SETTABLEKS                       R38 R37 K149 ["Title"]
      718 CALL                             R34 3 1
      719 SETTABLEKS                       R34 R33 K145 ["TooltipBody"]
      721 CALL                             R30 3 1
      722 SETTABLEKS                       R30 R29 K5 ["Content"]
      724 CALL                             R26 3 1
      725 SETTABLEKS                       R26 R25 K64 ["CopyButtonPopover"]
      727 CALL                             R22 3 1
      728 SETTABLEKS                       R22 R21 K23 ["Header"]
      730 JUMPIFNOT                        R5 ; [+9]
      731 GETUPVAL                         R22 4
      732 GETUPVAL                         R23 13
      733 DUPTABLE                         R24 K114 [{"LayoutOrder"}]
      734 MOVE                             R25 R17
      735 CALL                             R25 0 1
      736 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      738 CALL                             R22 2 1
      739 JUMP                             ; [+1]
      740 LOADNIL                          R22
      741 SETTABLEKS                       R22 R21 K156 ["HeaderDivider"]
      743 JUMPIFNOT                        R5 ; [+91]
      744 GETUPVAL                         R22 4
      745 GETUPVAL                         R23 8
      746 DUPTABLE                         R24 K164 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"], ["scroll"]}]
      747 MOVE                             R25 R17
      748 CALL                             R25 0 1
      749 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      751 GETUPVAL                         R25 9
      752 SETTABLEKS                       R25 R24 K67 ["scroll"]
      754 DUPTABLE                         R25 K70 [{"Code"}]
      755 GETUPVAL                         R26 4
      756 LOADK                            R27 K71 ["TextBox"]
      757 DUPTABLE                         R28 K167 [{["Text"], ["AutomaticSize"], ["FontFace"], ["TextSize"], ["LineHeight"], ["TextColor3"], ["TextTransparency"], ["TextXAlignment"], ["MultiLine"] = True, ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["TextEditable"] = False}]
      758 GETTABLEKS                       R29 R0 K16 ["data"]
      760 GETTABLEKS                       R29 R29 K87 ["text"]
      762 SETTABLEKS                       R29 R28 K34 ["Text"]
      764 GETIMPORT                        R29 K90 [Enum.AutomaticSize.XY]
      766 SETTABLEKS                       R29 R28 K72 ["AutomaticSize"]
      768 GETUPVAL                         R29 10
      769 GETTABLEKS                       R29 R29 K91 ["CODE_FONT"]
      771 SETTABLEKS                       R29 R28 K73 ["FontFace"]
      773 GETTABLEKS                       R29 R1 K92 ["FontSize"]
      775 GETTABLEKS                       R29 R29 K93 ["FontSize_300"]
      777 SETTABLEKS                       R29 R28 K74 ["TextSize"]
      779 GETTABLEKS                       R29 R2 K75 ["LineHeight"]
      781 SETTABLEKS                       R29 R28 K75 ["LineHeight"]
      783 GETTABLEKS                       R29 R3 K94 ["Color3"]
      785 SETTABLEKS                       R29 R28 K76 ["TextColor3"]
      787 GETTABLEKS                       R29 R3 K95 ["Transparency"]
      789 SETTABLEKS                       R29 R28 K77 ["TextTransparency"]
      791 GETIMPORT                        R29 K97 [Enum.TextXAlignment.Left]
      793 SETTABLEKS                       R29 R28 K78 ["TextXAlignment"]
      795 DUPTABLE                         R29 K99 [{"Padding"}]
      796 GETUPVAL                         R30 4
      797 LOADK                            R31 K100 ["UIPadding"]
      798 DUPTABLE                         R32 K105 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      799 GETIMPORT                        R33 K108 [UDim.new]
      801 LOADN                            R34 0
      802 LOADN                            R35 12
      803 CALL                             R33 2 1
      804 SETTABLEKS                       R33 R32 K101 ["PaddingLeft"]
      806 GETIMPORT                        R33 K108 [UDim.new]
      808 LOADN                            R34 0
      809 LOADN                            R35 12
      810 CALL                             R33 2 1
      811 SETTABLEKS                       R33 R32 K102 ["PaddingRight"]
      813 GETIMPORT                        R33 K108 [UDim.new]
      815 LOADN                            R34 0
      816 LOADN                            R35 12
      817 CALL                             R33 2 1
      818 SETTABLEKS                       R33 R32 K103 ["PaddingTop"]
      820 GETIMPORT                        R33 K108 [UDim.new]
      822 LOADN                            R34 0
      823 LOADN                            R35 12
      824 CALL                             R33 2 1
      825 SETTABLEKS                       R33 R32 K104 ["PaddingBottom"]
      827 CALL                             R30 2 1
      828 SETTABLEKS                       R30 R29 K98 ["Padding"]
      830 CALL                             R26 3 1
      831 SETTABLEKS                       R26 R25 K69 ["Code"]
      833 CALL                             R22 3 1
      834 JUMP                             ; [+1]
      835 LOADNIL                          R22
      836 SETTABLEKS                       R22 R21 K63 ["CodeScrollView"]
      838 CALL                             R18 3 -1
      839 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R3 K13 ["Divider"]
       42 GETTABLEKS                       R7 R3 K14 ["Icon"]
       44 GETTABLEKS                       R8 R3 K15 ["IconButton"]
       46 GETTABLEKS                       R9 R3 K16 ["Popover"]
       48 GETTABLEKS                       R10 R3 K17 ["ScrollView"]
       50 GETTABLEKS                       R11 R3 K18 ["Text"]
       52 GETTABLEKS                       R12 R3 K19 ["View"]
       54 GETTABLEKS                       R13 R3 K20 ["Enums"]
       56 GETTABLEKS                       R13 R13 K21 ["Visibility"]
       58 GETTABLEKS                       R14 R5 K22 ["createNextOrder"]
       60 GETTABLEKS                       R15 R4 K23 ["createElement"]
       62 DUPTABLE                         R16 K30 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       63 GETIMPORT                        R17 K33 [UDim2.fromOffset]
       65 LOADN                            R18 0
       66 LOADN                            R19 0
       67 CALL                             R17 2 1
       68 SETTABLEKS                       R17 R16 K24 ["CanvasSize"]
       70 GETIMPORT                        R17 K36 [Enum.AutomaticSize.Y]
       72 SETTABLEKS                       R17 R16 K25 ["AutomaticSize"]
       74 GETIMPORT                        R17 K38 [Enum.AutomaticSize.X]
       76 SETTABLEKS                       R17 R16 K26 ["AutomaticCanvasSize"]
       78 GETIMPORT                        R17 K39 [Enum.ScrollingDirection.X]
       80 SETTABLEKS                       R17 R16 K27 ["ScrollingDirection"]
       82 GETTABLEKS                       R17 R13 K40 ["Always"]
       84 SETTABLEKS                       R17 R16 K28 ["scrollBarVisibility"]
       86 GETIMPORT                        R17 K42 [Enum.ScrollBarInset.Always]
       88 SETTABLEKS                       R17 R16 K29 ["HorizontalScrollBarInset"]
       90 DUPCLOSURE                       R17 K43 [PROTO_7]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R6
      105 RETURN                           R17 1
