PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
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
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["copyToClipboard"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+2]
       14 GETUPVAL                         R0 3
       15 CALL                             R0 0 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R0 R1 K1 ["current"]
       19 JUMPIFNOT                        R0 ; [+6]
       20 GETIMPORT                        R0 K4 [task.cancel]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R1 R2 K1 ["current"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
       12 GETTABLEKS                       R4 R1 K5 ["Typography"]
       14 GETTABLEKS                       R3 R4 K6 ["BodySmall"]
       16 GETTABLEKS                       R6 R1 K7 ["Color"]
       18 GETTABLEKS                       R5 R6 K8 ["Content"]
       20 GETTABLEKS                       R4 R5 K9 ["Default"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K10 ["get"]
       25 CALL                             R5 0 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K11 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K11 ["useState"]
       34 LOADB                            R9 0
       35 CALL                             R8 1 2
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R10 R11 K12 ["useRef"]
       39 LOADNIL                          R11
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R12 R0 K14 ["variant"]
       43 ORK                              R11 R12 K13 ["card"]
       44 JUMPIFEQKS                       R11 K15 ["inline"] ; [+2]
       46 LOADB                            R12 0 +1
       47 LOADB                            R12 1
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R13 R14 K16 ["useEffect"]
       51 NEWCLOSURE                       R14 P0
       52 CAPTURE                          VAL R10
       53 NEWTABLE                         R15 0 0
       55 CALL                             R13 2 0
       56 GETTABLEKS                       R14 R0 K17 ["isDisabled"]
       58 JUMPIFEQKB                       R14 TRUE ; [+2]
       60 LOADB                            R13 0 +1
       61 LOADB                            R13 1
       62 GETUPVAL                         R15 2
       63 GETTABLEKS                       R14 R15 K16 ["useEffect"]
       65 NEWCLOSURE                       R15 P1
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R7
       68 NEWTABLE                         R16 0 1
       70 MOVE                             R17 R13
       71 SETLIST                          R16 R17 1 [1]
       73 CALL                             R14 2 0
       74 GETUPVAL                         R15 2
       75 GETTABLEKS                       R14 R15 K18 ["useCallback"]
       77 NEWCLOSURE                       R15 P2
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R7
       80 NEWTABLE                         R16 0 1
       82 MOVE                             R17 R13
       83 SETLIST                          R16 R17 1 [1]
       85 CALL                             R14 2 1
       86 GETTABLEKS                       R16 R0 K19 ["data"]
       88 GETTABLEKS                       R15 R16 K20 ["copyText"]
       90 GETTABLEKS                       R16 R0 K21 ["onCopy"]
       92 GETUPVAL                         R18 2
       93 GETTABLEKS                       R17 R18 K18 ["useCallback"]
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
      111 JUMPIFNOT                        R12 ; [+390]
      112 GETUPVAL                         R19 4
      113 GETUPVAL                         R20 5
      114 DUPTABLE                         R21 K24 [{"tag", "LayoutOrder"}]
      115 LOADK                            R22 K25 ["col size-full-0 auto-y"]
      116 SETTABLEKS                       R22 R21 K22 ["tag"]
      118 GETTABLEKS                       R22 R0 K23 ["LayoutOrder"]
      120 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      122 DUPTABLE                         R22 K28 [{"Header", "ExpandedContent"}]
      123 GETUPVAL                         R23 4
      124 GETUPVAL                         R24 5
      125 DUPTABLE                         R25 K30 [{"tag", "LayoutOrder", "onActivated"}]
      126 LOADK                            R26 K31 ["row size-full-0 auto-y align-y-center padding-y-xxsmall"]
      127 SETTABLEKS                       R26 R25 K22 ["tag"]
      129 MOVE                             R26 R18
      130 CALL                             R26 0 1
      131 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      133 JUMPIFNOT                        R13 ; [+2]
      134 LOADNIL                          R26
      135 JUMP                             ; [+1]
      136 MOVE                             R26 R14
      137 SETTABLEKS                       R26 R25 K29 ["onActivated"]
      139 DUPTABLE                         R26 K35 [{"Label", "Spacer", "ExpandIcon"}]
      140 GETUPVAL                         R27 4
      141 GETUPVAL                         R28 6
      142 DUPTABLE                         R29 K38 [{"tag", "Text", "LayoutOrder", "testId"}]
      143 LOADK                            R30 K39 ["auto-xy text-body-medium text-align-x-left"]
      144 SETTABLEKS                       R30 R29 K22 ["tag"]
      146 GETTABLEKS                       R30 R0 K40 ["label"]
      148 SETTABLEKS                       R30 R29 K36 ["Text"]
      150 MOVE                             R30 R18
      151 CALL                             R30 0 1
      152 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      154 GETTABLEKS                       R30 R0 K41 ["labelTestId"]
      156 SETTABLEKS                       R30 R29 K37 ["testId"]
      158 CALL                             R27 2 1
      159 SETTABLEKS                       R27 R26 K32 ["Label"]
      161 GETUPVAL                         R27 4
      162 GETUPVAL                         R28 5
      163 DUPTABLE                         R29 K24 [{"tag", "LayoutOrder"}]
      164 LOADK                            R30 K42 ["fill"]
      165 SETTABLEKS                       R30 R29 K22 ["tag"]
      167 MOVE                             R30 R18
      168 CALL                             R30 0 1
      169 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      171 CALL                             R27 2 1
      172 SETTABLEKS                       R27 R26 K33 ["Spacer"]
      174 GETUPVAL                         R27 4
      175 GETUPVAL                         R28 7
      176 DUPTABLE                         R29 K45 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      177 JUMPIFNOT                        R6 ; [+2]
      178 LOADK                            R30 K46 ["icons/actions/truncationExpand_small"]
      179 JUMP                             ; [+1]
      180 LOADK                            R30 K47 ["icons/actions/cycleRight_small"]
      181 SETTABLEKS                       R30 R29 K43 ["icon"]
      183 LOADK                            R30 K48 ["size-400-400 align-x-center align-y-center"]
      184 SETTABLEKS                       R30 R29 K22 ["tag"]
      186 JUMPIFNOT                        R13 ; [+2]
      187 LOADK                            R30 K49 ["size-200-200 content-muted"]
      188 JUMP                             ; [+1]
      189 LOADK                            R30 K50 ["size-200-200 content-emphasis"]
      190 SETTABLEKS                       R30 R29 K44 ["iconTag"]
      192 MOVE                             R30 R18
      193 CALL                             R30 0 1
      194 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      196 CALL                             R27 2 1
      197 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      199 CALL                             R23 3 1
      200 SETTABLEKS                       R23 R22 K26 ["Header"]
      202 JUMPIFNOT                        R6 ; [+294]
      203 GETUPVAL                         R23 4
      204 GETUPVAL                         R24 5
      205 DUPTABLE                         R25 K24 [{"tag", "LayoutOrder"}]
      206 LOADK                            R26 K51 ["col size-full-0 auto-y gap-xsmall padding-y-xsmall"]
      207 SETTABLEKS                       R26 R25 K22 ["tag"]
      209 MOVE                             R26 R18
      210 CALL                             R26 0 1
      211 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      213 DUPTABLE                         R26 K54 [{"Description", "CommandBlock"}]
      214 GETTABLEKS                       R28 R0 K55 ["description"]
      216 JUMPIFNOT                        R28 ; [+16]
      217 GETUPVAL                         R27 4
      218 GETUPVAL                         R28 6
      219 DUPTABLE                         R29 K56 [{"tag", "Text", "LayoutOrder"}]
      220 LOADK                            R30 K57 ["auto-xy text-caption-small text-wrap text-align-x-left content-muted"]
      221 SETTABLEKS                       R30 R29 K22 ["tag"]
      223 GETTABLEKS                       R30 R0 K55 ["description"]
      225 SETTABLEKS                       R30 R29 K36 ["Text"]
      227 MOVE                             R30 R18
      228 CALL                             R30 0 1
      229 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      231 CALL                             R27 2 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R27
      234 SETTABLEKS                       R27 R26 K52 ["Description"]
      236 GETUPVAL                         R27 4
      237 GETUPVAL                         R28 5
      238 DUPTABLE                         R29 K24 [{"tag", "LayoutOrder"}]
      239 LOADK                            R30 K58 ["row size-full-0 auto-y radius-small stroke-standard stroke-default align-y-center"]
      240 SETTABLEKS                       R30 R29 K22 ["tag"]
      242 MOVE                             R30 R18
      243 CALL                             R30 0 1
      244 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      246 DUPTABLE                         R30 K61 [{"CodeScrollView", "CopyButtonPopover"}]
      247 GETUPVAL                         R31 4
      248 GETUPVAL                         R32 8
      249 DUPTABLE                         R33 K63 [{"tag", "LayoutOrder", "scroll"}]
      250 LOADK                            R34 K64 ["fill auto-y"]
      251 SETTABLEKS                       R34 R33 K22 ["tag"]
      253 MOVE                             R34 R18
      254 CALL                             R34 0 1
      255 SETTABLEKS                       R34 R33 K23 ["LayoutOrder"]
      257 GETUPVAL                         R34 9
      258 SETTABLEKS                       R34 R33 K62 ["scroll"]
      260 DUPTABLE                         R34 K66 [{"Code"}]
      261 GETUPVAL                         R35 4
      262 LOADK                            R36 K67 ["TextBox"]
      263 DUPTABLE                         R37 K79 [{"Text", "AutomaticSize", "FontFace", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable"}]
      264 GETTABLEKS                       R39 R0 K19 ["data"]
      266 GETTABLEKS                       R38 R39 K80 ["text"]
      268 SETTABLEKS                       R38 R37 K36 ["Text"]
      270 GETIMPORT                        R38 K83 [Enum.AutomaticSize.XY]
      272 SETTABLEKS                       R38 R37 K68 ["AutomaticSize"]
      274 GETUPVAL                         R39 10
      275 GETTABLEKS                       R38 R39 K84 ["CODE_FONT"]
      277 SETTABLEKS                       R38 R37 K69 ["FontFace"]
      279 GETTABLEKS                       R39 R1 K85 ["FontSize"]
      281 GETTABLEKS                       R38 R39 K86 ["FontSize_300"]
      283 SETTABLEKS                       R38 R37 K70 ["TextSize"]
      285 GETTABLEKS                       R38 R3 K71 ["LineHeight"]
      287 SETTABLEKS                       R38 R37 K71 ["LineHeight"]
      289 GETTABLEKS                       R38 R4 K87 ["Color3"]
      291 SETTABLEKS                       R38 R37 K72 ["TextColor3"]
      293 GETTABLEKS                       R38 R4 K88 ["Transparency"]
      295 SETTABLEKS                       R38 R37 K73 ["TextTransparency"]
      297 GETIMPORT                        R38 K90 [Enum.TextXAlignment.Left]
      299 SETTABLEKS                       R38 R37 K74 ["TextXAlignment"]
      301 LOADN                            R38 1
      302 SETTABLEKS                       R38 R37 K75 ["BackgroundTransparency"]
      304 LOADN                            R38 0
      305 SETTABLEKS                       R38 R37 K76 ["BorderSizePixel"]
      307 LOADB                            R38 0
      308 SETTABLEKS                       R38 R37 K77 ["ClearTextOnFocus"]
      310 LOADB                            R38 0
      311 SETTABLEKS                       R38 R37 K78 ["TextEditable"]
      313 DUPTABLE                         R38 K92 [{"Padding"}]
      314 GETUPVAL                         R39 4
      315 LOADK                            R40 K93 ["UIPadding"]
      316 DUPTABLE                         R41 K98 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      317 GETIMPORT                        R42 K101 [UDim.new]
      319 LOADN                            R43 0
      320 LOADN                            R44 8
      321 CALL                             R42 2 1
      322 SETTABLEKS                       R42 R41 K94 ["PaddingLeft"]
      324 GETIMPORT                        R42 K101 [UDim.new]
      326 LOADN                            R43 0
      327 LOADN                            R44 8
      328 CALL                             R42 2 1
      329 SETTABLEKS                       R42 R41 K95 ["PaddingRight"]
      331 GETIMPORT                        R42 K101 [UDim.new]
      333 LOADN                            R43 0
      334 LOADN                            R44 6
      335 CALL                             R42 2 1
      336 SETTABLEKS                       R42 R41 K96 ["PaddingTop"]
      338 GETIMPORT                        R42 K101 [UDim.new]
      340 LOADN                            R43 0
      341 LOADN                            R44 6
      342 CALL                             R42 2 1
      343 SETTABLEKS                       R42 R41 K97 ["PaddingBottom"]
      345 CALL                             R39 2 1
      346 SETTABLEKS                       R39 R38 K91 ["Padding"]
      348 CALL                             R35 3 1
      349 SETTABLEKS                       R35 R34 K65 ["Code"]
      351 CALL                             R31 3 1
      352 SETTABLEKS                       R31 R30 K59 ["CodeScrollView"]
      354 GETUPVAL                         R31 4
      355 GETUPVAL                         R33 11
      356 GETTABLEKS                       R32 R33 K102 ["Root"]
      358 DUPTABLE                         R33 K104 [{"isOpen"}]
      359 SETTABLEKS                       R8 R33 K103 ["isOpen"]
      361 DUPTABLE                         R34 K106 [{"Anchor", "Content"}]
      362 GETUPVAL                         R35 4
      363 GETUPVAL                         R37 11
      364 GETTABLEKS                       R36 R37 K105 ["Anchor"]
      366 DUPTABLE                         R37 K107 [{"LayoutOrder"}]
      367 MOVE                             R38 R18
      368 CALL                             R38 0 1
      369 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      371 DUPTABLE                         R38 K109 [{"CopyButton"}]
      372 GETUPVAL                         R39 4
      373 GETUPVAL                         R40 7
      374 DUPTABLE                         R41 K110 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      375 GETUPVAL                         R43 12
      376 GETTABLE                         R42 R43 R2
      377 SETTABLEKS                       R42 R41 K43 ["icon"]
      379 LOADK                            R42 K111 ["size-600-600 radius-small align-x-center align-y-center"]
      380 SETTABLEKS                       R42 R41 K22 ["tag"]
      382 LOADK                            R42 K112 ["size-300-300 content-emphasis"]
      383 SETTABLEKS                       R42 R41 K44 ["iconTag"]
      385 JUMPIFEQKNIL                     R15 ; [+2]
      387 LOADB                            R42 0 +1
      388 LOADB                            R42 1
      389 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      391 SETTABLEKS                       R17 R41 K29 ["onActivated"]
      393 MOVE                             R42 R18
      394 CALL                             R42 0 1
      395 SETTABLEKS                       R42 R41 K23 ["LayoutOrder"]
      397 GETTABLEKS                       R42 R0 K113 ["copyButtonTestId"]
      399 SETTABLEKS                       R42 R41 K37 ["testId"]
      401 CALL                             R39 2 1
      402 SETTABLEKS                       R39 R38 K108 ["CopyButton"]
      404 CALL                             R35 3 1
      405 SETTABLEKS                       R35 R34 K105 ["Anchor"]
      407 GETUPVAL                         R35 4
      408 GETUPVAL                         R37 11
      409 GETTABLEKS                       R36 R37 K8 ["Content"]
      411 DUPTABLE                         R37 K120 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
      412 LOADB                            R38 0
      413 SETTABLEKS                       R38 R37 K114 ["hasArrow"]
      415 GETUPVAL                         R41 0
      416 GETTABLEKS                       R40 R41 K121 ["Enums"]
      418 GETTABLEKS                       R39 R40 K122 ["PopoverAlign"]
      420 GETTABLEKS                       R38 R39 K123 ["Center"]
      422 SETTABLEKS                       R38 R37 K115 ["align"]
      424 DUPTABLE                         R38 K126 [{"position", "offset"}]
      425 GETUPVAL                         R42 0
      426 GETTABLEKS                       R41 R42 K121 ["Enums"]
      428 GETTABLEKS                       R40 R41 K127 ["PopoverSide"]
      430 GETTABLEKS                       R39 R40 K128 ["Top"]
      432 SETTABLEKS                       R39 R38 K124 ["position"]
      434 GETTABLEKS                       R40 R1 K129 ["Size"]
      436 GETTABLEKS                       R39 R40 K130 ["Size_100"]
      438 SETTABLEKS                       R39 R38 K125 ["offset"]
      440 SETTABLEKS                       R38 R37 K116 ["side"]
      442 GETUPVAL                         R41 0
      443 GETTABLEKS                       R40 R41 K121 ["Enums"]
      445 GETTABLEKS                       R39 R40 K131 ["Radius"]
      447 GETTABLEKS                       R38 R39 K132 ["Small"]
      449 SETTABLEKS                       R38 R37 K117 ["radius"]
      451 GETTABLEKS                       R40 R1 K133 ["Inverse"]
      453 GETTABLEKS                       R39 R40 K134 ["Surface"]
      455 GETTABLEKS                       R38 R39 K135 ["Surface_0"]
      457 SETTABLEKS                       R38 R37 K118 ["backgroundStyle"]
      459 LOADB                            R38 0
      460 SETTABLEKS                       R38 R37 K119 ["selectionGroup"]
      462 DUPTABLE                         R38 K137 [{"TooltipBody"}]
      463 GETUPVAL                         R39 4
      464 GETUPVAL                         R40 5
      465 DUPTABLE                         R41 K138 [{"tag"}]
      466 LOADK                            R42 K139 ["auto-xy padding-y-xsmall padding-x-small"]
      467 SETTABLEKS                       R42 R41 K22 ["tag"]
      469 DUPTABLE                         R42 K141 [{"Title"}]
      470 GETUPVAL                         R43 4
      471 GETUPVAL                         R44 6
      472 DUPTABLE                         R45 K142 [{"Text", "tag"}]
      473 GETTABLEKS                       R46 R0 K143 ["copiedText"]
      475 SETTABLEKS                       R46 R45 K36 ["Text"]
      477 LOADK                            R46 K144 ["auto-xy text-title-small content-inverse-emphasis"]
      478 SETTABLEKS                       R46 R45 K22 ["tag"]
      480 CALL                             R43 2 1
      481 SETTABLEKS                       R43 R42 K140 ["Title"]
      483 CALL                             R39 3 1
      484 SETTABLEKS                       R39 R38 K136 ["TooltipBody"]
      486 CALL                             R35 3 1
      487 SETTABLEKS                       R35 R34 K8 ["Content"]
      489 CALL                             R31 3 1
      490 SETTABLEKS                       R31 R30 K60 ["CopyButtonPopover"]
      492 CALL                             R27 3 1
      493 SETTABLEKS                       R27 R26 K53 ["CommandBlock"]
      495 CALL                             R23 3 1
      496 JUMP                             ; [+1]
      497 LOADNIL                          R23
      498 SETTABLEKS                       R23 R22 K27 ["ExpandedContent"]
      500 CALL                             R19 3 -1
      501 RETURN                           R19 -1
      502 GETUPVAL                         R19 4
      503 GETUPVAL                         R20 5
      504 DUPTABLE                         R21 K24 [{"tag", "LayoutOrder"}]
      505 LOADK                            R22 K145 ["col size-full-0 auto-y radius-small stroke-standard stroke-default"]
      506 SETTABLEKS                       R22 R21 K22 ["tag"]
      508 GETTABLEKS                       R22 R0 K23 ["LayoutOrder"]
      510 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      512 DUPTABLE                         R22 K147 [{"Header", "HeaderDivider", "CodeScrollView"}]
      513 GETUPVAL                         R23 4
      514 GETUPVAL                         R24 5
      515 DUPTABLE                         R25 K30 [{"tag", "LayoutOrder", "onActivated"}]
      516 LOADK                            R26 K148 ["row size-full-0 auto-y gap-xsmall align-y-center bg-shift-100 padding-xsmall"]
      517 SETTABLEKS                       R26 R25 K22 ["tag"]
      519 MOVE                             R26 R18
      520 CALL                             R26 0 1
      521 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      523 SETTABLEKS                       R14 R25 K29 ["onActivated"]
      525 DUPTABLE                         R26 K149 [{"ExpandIcon", "Label", "Spacer", "CopyButtonPopover"}]
      526 GETUPVAL                         R27 4
      527 GETUPVAL                         R28 7
      528 DUPTABLE                         R29 K45 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      529 JUMPIFNOT                        R6 ; [+2]
      530 LOADK                            R30 K46 ["icons/actions/truncationExpand_small"]
      531 JUMP                             ; [+1]
      532 LOADK                            R30 K47 ["icons/actions/cycleRight_small"]
      533 SETTABLEKS                       R30 R29 K43 ["icon"]
      535 LOADK                            R30 K150 ["size-300-300 align-x-center align-y-center"]
      536 SETTABLEKS                       R30 R29 K22 ["tag"]
      538 LOADK                            R30 K151 ["size-150-150 content-emphasis"]
      539 SETTABLEKS                       R30 R29 K44 ["iconTag"]
      541 MOVE                             R30 R18
      542 CALL                             R30 0 1
      543 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      545 CALL                             R27 2 1
      546 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      548 GETUPVAL                         R27 4
      549 GETUPVAL                         R28 6
      550 DUPTABLE                         R29 K38 [{"tag", "Text", "LayoutOrder", "testId"}]
      551 LOADK                            R30 K152 ["auto-xy shrink text-label-small text-align-x-left"]
      552 SETTABLEKS                       R30 R29 K22 ["tag"]
      554 GETTABLEKS                       R30 R0 K40 ["label"]
      556 SETTABLEKS                       R30 R29 K36 ["Text"]
      558 MOVE                             R30 R18
      559 CALL                             R30 0 1
      560 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      562 GETTABLEKS                       R30 R0 K41 ["labelTestId"]
      564 SETTABLEKS                       R30 R29 K37 ["testId"]
      566 CALL                             R27 2 1
      567 SETTABLEKS                       R27 R26 K32 ["Label"]
      569 GETUPVAL                         R27 4
      570 GETUPVAL                         R28 5
      571 DUPTABLE                         R29 K24 [{"tag", "LayoutOrder"}]
      572 LOADK                            R30 K42 ["fill"]
      573 SETTABLEKS                       R30 R29 K22 ["tag"]
      575 MOVE                             R30 R18
      576 CALL                             R30 0 1
      577 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      579 CALL                             R27 2 1
      580 SETTABLEKS                       R27 R26 K33 ["Spacer"]
      582 GETUPVAL                         R27 4
      583 GETUPVAL                         R29 11
      584 GETTABLEKS                       R28 R29 K102 ["Root"]
      586 DUPTABLE                         R29 K104 [{"isOpen"}]
      587 SETTABLEKS                       R8 R29 K103 ["isOpen"]
      589 DUPTABLE                         R30 K106 [{"Anchor", "Content"}]
      590 GETUPVAL                         R31 4
      591 GETUPVAL                         R33 11
      592 GETTABLEKS                       R32 R33 K105 ["Anchor"]
      594 DUPTABLE                         R33 K107 [{"LayoutOrder"}]
      595 MOVE                             R34 R18
      596 CALL                             R34 0 1
      597 SETTABLEKS                       R34 R33 K23 ["LayoutOrder"]
      599 DUPTABLE                         R34 K109 [{"CopyButton"}]
      600 GETUPVAL                         R35 4
      601 GETUPVAL                         R36 7
      602 DUPTABLE                         R37 K110 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      603 GETUPVAL                         R39 12
      604 GETTABLE                         R38 R39 R2
      605 SETTABLEKS                       R38 R37 K43 ["icon"]
      607 LOADK                            R38 K111 ["size-600-600 radius-small align-x-center align-y-center"]
      608 SETTABLEKS                       R38 R37 K22 ["tag"]
      610 LOADK                            R38 K112 ["size-300-300 content-emphasis"]
      611 SETTABLEKS                       R38 R37 K44 ["iconTag"]
      613 JUMPIFEQKNIL                     R15 ; [+2]
      615 LOADB                            R38 0 +1
      616 LOADB                            R38 1
      617 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      619 SETTABLEKS                       R17 R37 K29 ["onActivated"]
      621 MOVE                             R38 R18
      622 CALL                             R38 0 1
      623 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      625 GETTABLEKS                       R38 R0 K113 ["copyButtonTestId"]
      627 SETTABLEKS                       R38 R37 K37 ["testId"]
      629 CALL                             R35 2 1
      630 SETTABLEKS                       R35 R34 K108 ["CopyButton"]
      632 CALL                             R31 3 1
      633 SETTABLEKS                       R31 R30 K105 ["Anchor"]
      635 GETUPVAL                         R31 4
      636 GETUPVAL                         R33 11
      637 GETTABLEKS                       R32 R33 K8 ["Content"]
      639 DUPTABLE                         R33 K120 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
      640 LOADB                            R34 0
      641 SETTABLEKS                       R34 R33 K114 ["hasArrow"]
      643 GETUPVAL                         R37 0
      644 GETTABLEKS                       R36 R37 K121 ["Enums"]
      646 GETTABLEKS                       R35 R36 K122 ["PopoverAlign"]
      648 GETTABLEKS                       R34 R35 K123 ["Center"]
      650 SETTABLEKS                       R34 R33 K115 ["align"]
      652 DUPTABLE                         R34 K126 [{"position", "offset"}]
      653 GETUPVAL                         R38 0
      654 GETTABLEKS                       R37 R38 K121 ["Enums"]
      656 GETTABLEKS                       R36 R37 K127 ["PopoverSide"]
      658 GETTABLEKS                       R35 R36 K128 ["Top"]
      660 SETTABLEKS                       R35 R34 K124 ["position"]
      662 GETTABLEKS                       R36 R1 K129 ["Size"]
      664 GETTABLEKS                       R35 R36 K130 ["Size_100"]
      666 SETTABLEKS                       R35 R34 K125 ["offset"]
      668 SETTABLEKS                       R34 R33 K116 ["side"]
      670 GETUPVAL                         R37 0
      671 GETTABLEKS                       R36 R37 K121 ["Enums"]
      673 GETTABLEKS                       R35 R36 K131 ["Radius"]
      675 GETTABLEKS                       R34 R35 K132 ["Small"]
      677 SETTABLEKS                       R34 R33 K117 ["radius"]
      679 GETTABLEKS                       R36 R1 K133 ["Inverse"]
      681 GETTABLEKS                       R35 R36 K134 ["Surface"]
      683 GETTABLEKS                       R34 R35 K135 ["Surface_0"]
      685 SETTABLEKS                       R34 R33 K118 ["backgroundStyle"]
      687 LOADB                            R34 0
      688 SETTABLEKS                       R34 R33 K119 ["selectionGroup"]
      690 DUPTABLE                         R34 K137 [{"TooltipBody"}]
      691 GETUPVAL                         R35 4
      692 GETUPVAL                         R36 5
      693 DUPTABLE                         R37 K138 [{"tag"}]
      694 LOADK                            R38 K139 ["auto-xy padding-y-xsmall padding-x-small"]
      695 SETTABLEKS                       R38 R37 K22 ["tag"]
      697 DUPTABLE                         R38 K141 [{"Title"}]
      698 GETUPVAL                         R39 4
      699 GETUPVAL                         R40 6
      700 DUPTABLE                         R41 K142 [{"Text", "tag"}]
      701 GETTABLEKS                       R42 R0 K143 ["copiedText"]
      703 SETTABLEKS                       R42 R41 K36 ["Text"]
      705 LOADK                            R42 K144 ["auto-xy text-title-small content-inverse-emphasis"]
      706 SETTABLEKS                       R42 R41 K22 ["tag"]
      708 CALL                             R39 2 1
      709 SETTABLEKS                       R39 R38 K140 ["Title"]
      711 CALL                             R35 3 1
      712 SETTABLEKS                       R35 R34 K136 ["TooltipBody"]
      714 CALL                             R31 3 1
      715 SETTABLEKS                       R31 R30 K8 ["Content"]
      717 CALL                             R27 3 1
      718 SETTABLEKS                       R27 R26 K60 ["CopyButtonPopover"]
      720 CALL                             R23 3 1
      721 SETTABLEKS                       R23 R22 K26 ["Header"]
      723 JUMPIFNOT                        R6 ; [+9]
      724 GETUPVAL                         R23 4
      725 GETUPVAL                         R24 13
      726 DUPTABLE                         R25 K107 [{"LayoutOrder"}]
      727 MOVE                             R26 R18
      728 CALL                             R26 0 1
      729 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      731 CALL                             R23 2 1
      732 JUMP                             ; [+1]
      733 LOADNIL                          R23
      734 SETTABLEKS                       R23 R22 K146 ["HeaderDivider"]
      736 JUMPIFNOT                        R6 ; [+109]
      737 GETUPVAL                         R23 4
      738 GETUPVAL                         R24 8
      739 DUPTABLE                         R25 K63 [{"tag", "LayoutOrder", "scroll"}]
      740 LOADK                            R26 K153 ["size-full-0 auto-y"]
      741 SETTABLEKS                       R26 R25 K22 ["tag"]
      743 MOVE                             R26 R18
      744 CALL                             R26 0 1
      745 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      747 GETUPVAL                         R26 9
      748 SETTABLEKS                       R26 R25 K62 ["scroll"]
      750 DUPTABLE                         R26 K66 [{"Code"}]
      751 GETUPVAL                         R27 4
      752 LOADK                            R28 K67 ["TextBox"]
      753 DUPTABLE                         R29 K155 [{"Text", "AutomaticSize", "FontFace", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "MultiLine", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable"}]
      754 GETTABLEKS                       R31 R0 K19 ["data"]
      756 GETTABLEKS                       R30 R31 K80 ["text"]
      758 SETTABLEKS                       R30 R29 K36 ["Text"]
      760 GETIMPORT                        R30 K83 [Enum.AutomaticSize.XY]
      762 SETTABLEKS                       R30 R29 K68 ["AutomaticSize"]
      764 GETUPVAL                         R31 10
      765 GETTABLEKS                       R30 R31 K84 ["CODE_FONT"]
      767 SETTABLEKS                       R30 R29 K69 ["FontFace"]
      769 GETTABLEKS                       R31 R1 K85 ["FontSize"]
      771 GETTABLEKS                       R30 R31 K86 ["FontSize_300"]
      773 SETTABLEKS                       R30 R29 K70 ["TextSize"]
      775 GETTABLEKS                       R30 R3 K71 ["LineHeight"]
      777 SETTABLEKS                       R30 R29 K71 ["LineHeight"]
      779 GETTABLEKS                       R30 R4 K87 ["Color3"]
      781 SETTABLEKS                       R30 R29 K72 ["TextColor3"]
      783 GETTABLEKS                       R30 R4 K88 ["Transparency"]
      785 SETTABLEKS                       R30 R29 K73 ["TextTransparency"]
      787 GETIMPORT                        R30 K90 [Enum.TextXAlignment.Left]
      789 SETTABLEKS                       R30 R29 K74 ["TextXAlignment"]
      791 LOADB                            R30 1
      792 SETTABLEKS                       R30 R29 K154 ["MultiLine"]
      794 LOADN                            R30 1
      795 SETTABLEKS                       R30 R29 K75 ["BackgroundTransparency"]
      797 LOADN                            R30 0
      798 SETTABLEKS                       R30 R29 K76 ["BorderSizePixel"]
      800 LOADB                            R30 0
      801 SETTABLEKS                       R30 R29 K77 ["ClearTextOnFocus"]
      803 LOADB                            R30 0
      804 SETTABLEKS                       R30 R29 K78 ["TextEditable"]
      806 DUPTABLE                         R30 K92 [{"Padding"}]
      807 GETUPVAL                         R31 4
      808 LOADK                            R32 K93 ["UIPadding"]
      809 DUPTABLE                         R33 K98 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      810 GETIMPORT                        R34 K101 [UDim.new]
      812 LOADN                            R35 0
      813 LOADN                            R36 12
      814 CALL                             R34 2 1
      815 SETTABLEKS                       R34 R33 K94 ["PaddingLeft"]
      817 GETIMPORT                        R34 K101 [UDim.new]
      819 LOADN                            R35 0
      820 LOADN                            R36 12
      821 CALL                             R34 2 1
      822 SETTABLEKS                       R34 R33 K95 ["PaddingRight"]
      824 GETIMPORT                        R34 K101 [UDim.new]
      826 LOADN                            R35 0
      827 LOADN                            R36 12
      828 CALL                             R34 2 1
      829 SETTABLEKS                       R34 R33 K96 ["PaddingTop"]
      831 GETIMPORT                        R34 K101 [UDim.new]
      833 LOADN                            R35 0
      834 LOADN                            R36 12
      835 CALL                             R34 2 1
      836 SETTABLEKS                       R34 R33 K97 ["PaddingBottom"]
      838 CALL                             R31 2 1
      839 SETTABLEKS                       R31 R30 K91 ["Padding"]
      841 CALL                             R27 3 1
      842 SETTABLEKS                       R27 R26 K65 ["Code"]
      844 CALL                             R23 3 1
      845 JUMP                             ; [+1]
      846 LOADNIL                          R23
      847 SETTABLEKS                       R23 R22 K59 ["CodeScrollView"]
      849 CALL                             R19 3 -1
      850 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Parent"]
       30 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Parent"]
       37 GETTABLEKS                       R6 R7 K13 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Parent"]
       44 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R4 K15 ["Divider"]
       49 GETTABLEKS                       R8 R4 K16 ["Popover"]
       51 GETTABLEKS                       R9 R4 K17 ["ScrollView"]
       53 GETTABLEKS                       R10 R4 K18 ["Text"]
       55 GETTABLEKS                       R11 R4 K19 ["View"]
       57 GETTABLEKS                       R13 R4 K20 ["Enums"]
       59 GETTABLEKS                       R12 R13 K21 ["Visibility"]
       61 GETTABLEKS                       R13 R6 K22 ["createNextOrder"]
       63 GETTABLEKS                       R14 R5 K23 ["createElement"]
       65 DUPTABLE                         R15 K30 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
       66 GETIMPORT                        R16 K33 [UDim2.fromOffset]
       68 LOADN                            R17 0
       69 LOADN                            R18 0
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K24 ["CanvasSize"]
       73 GETIMPORT                        R16 K36 [Enum.AutomaticSize.Y]
       75 SETTABLEKS                       R16 R15 K25 ["AutomaticSize"]
       77 GETIMPORT                        R16 K38 [Enum.AutomaticSize.X]
       79 SETTABLEKS                       R16 R15 K26 ["AutomaticCanvasSize"]
       81 GETIMPORT                        R16 K39 [Enum.ScrollingDirection.X]
       83 SETTABLEKS                       R16 R15 K27 ["ScrollingDirection"]
       85 GETTABLEKS                       R16 R12 K40 ["Always"]
       87 SETTABLEKS                       R16 R15 K28 ["scrollBarVisibility"]
       89 GETIMPORT                        R16 K42 [Enum.ScrollBarInset.Always]
       91 SETTABLEKS                       R16 R15 K29 ["HorizontalScrollBarInset"]
       93 DUPTABLE                         R16 K45 [{"Dark", "Light"}]
       94 LOADK                            R17 K46 ["rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png"]
       95 SETTABLEKS                       R17 R16 K43 ["Dark"]
       97 LOADK                            R17 K47 ["rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"]
       98 SETTABLEKS                       R17 R16 K44 ["Light"]
      100 DUPCLOSURE                       R17 K48 [PROTO_7]
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R7
      115 RETURN                           R17 1
