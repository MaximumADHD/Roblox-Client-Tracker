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
      111 JUMPIFNOT                        R12 ; [+496]
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
      174 GETUPVAL                         R28 7
      175 CALL                             R28 0 1
      176 JUMPIFNOT                        R28 ; [+52]
      177 GETUPVAL                         R27 4
      178 GETUPVAL                         R28 8
      179 DUPTABLE                         R29 K46 [{"name", "size", "style", "LayoutOrder"}]
      180 JUMPIFNOT                        R6 ; [+8]
      181 GETUPVAL                         R30 0
      182 GETTABLEKS                       R30 R30 K47 ["Enums"]
      184 GETTABLEKS                       R30 R30 K48 ["IconName"]
      186 GETTABLEKS                       R30 R30 K49 ["ChevronSmallDown"]
      188 JUMP                             ; [+7]
      189 GETUPVAL                         R30 0
      190 GETTABLEKS                       R30 R30 K47 ["Enums"]
      192 GETTABLEKS                       R30 R30 K48 ["IconName"]
      194 GETTABLEKS                       R30 R30 K50 ["ChevronSmallRight"]
      196 SETTABLEKS                       R30 R29 K43 ["name"]
      198 GETUPVAL                         R30 0
      199 GETTABLEKS                       R30 R30 K47 ["Enums"]
      201 GETTABLEKS                       R30 R30 K51 ["IconSize"]
      203 GETTABLEKS                       R30 R30 K52 ["Small"]
      205 SETTABLEKS                       R30 R29 K44 ["size"]
      207 JUMPIFNOT                        R13 ; [+7]
      208 GETTABLEKS                       R30 R1 K7 ["Color"]
      210 GETTABLEKS                       R30 R30 K8 ["Content"]
      212 GETTABLEKS                       R30 R30 K53 ["Muted"]
      214 JUMP                             ; [+6]
      215 GETTABLEKS                       R30 R1 K7 ["Color"]
      217 GETTABLEKS                       R30 R30 K8 ["Content"]
      219 GETTABLEKS                       R30 R30 K54 ["Emphasis"]
      221 SETTABLEKS                       R30 R29 K45 ["style"]
      223 MOVE                             R30 R18
      224 CALL                             R30 0 1
      225 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      227 CALL                             R27 2 1
      228 JUMP                             ; [+23]
      229 GETUPVAL                         R27 4
      230 GETUPVAL                         R28 9
      231 DUPTABLE                         R29 K57 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      232 JUMPIFNOT                        R6 ; [+2]
      233 LOADK                            R30 K58 ["icons/actions/truncationExpand_small"]
      234 JUMP                             ; [+1]
      235 LOADK                            R30 K59 ["icons/actions/cycleRight_small"]
      236 SETTABLEKS                       R30 R29 K55 ["icon"]
      238 LOADK                            R30 K60 ["size-400-400 align-x-center align-y-center"]
      239 SETTABLEKS                       R30 R29 K22 ["tag"]
      241 JUMPIFNOT                        R13 ; [+2]
      242 LOADK                            R30 K61 ["size-200-200 content-muted"]
      243 JUMP                             ; [+1]
      244 LOADK                            R30 K62 ["size-200-200 content-emphasis"]
      245 SETTABLEKS                       R30 R29 K56 ["iconTag"]
      247 MOVE                             R30 R18
      248 CALL                             R30 0 1
      249 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      251 CALL                             R27 2 1
      252 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      254 CALL                             R23 3 1
      255 SETTABLEKS                       R23 R22 K26 ["Header"]
      257 JUMPIFNOT                        R6 ; [+345]
      258 GETUPVAL                         R23 4
      259 GETUPVAL                         R24 5
      260 DUPTABLE                         R25 K24 [{"tag", "LayoutOrder"}]
      261 LOADK                            R26 K63 ["col size-full-0 auto-y gap-xsmall padding-y-xsmall"]
      262 SETTABLEKS                       R26 R25 K22 ["tag"]
      264 MOVE                             R26 R18
      265 CALL                             R26 0 1
      266 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      268 DUPTABLE                         R26 K66 [{"Description", "CommandBlock"}]
      269 GETTABLEKS                       R28 R0 K67 ["description"]
      271 JUMPIFNOT                        R28 ; [+16]
      272 GETUPVAL                         R27 4
      273 GETUPVAL                         R28 6
      274 DUPTABLE                         R29 K68 [{"tag", "Text", "LayoutOrder"}]
      275 LOADK                            R30 K69 ["auto-xy text-caption-small text-wrap text-align-x-left content-muted"]
      276 SETTABLEKS                       R30 R29 K22 ["tag"]
      278 GETTABLEKS                       R30 R0 K67 ["description"]
      280 SETTABLEKS                       R30 R29 K36 ["Text"]
      282 MOVE                             R30 R18
      283 CALL                             R30 0 1
      284 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      286 CALL                             R27 2 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R27
      289 SETTABLEKS                       R27 R26 K64 ["Description"]
      291 GETUPVAL                         R27 4
      292 GETUPVAL                         R28 5
      293 DUPTABLE                         R29 K24 [{"tag", "LayoutOrder"}]
      294 LOADK                            R30 K70 ["row size-full-0 auto-y radius-small stroke-standard stroke-default align-y-center"]
      295 SETTABLEKS                       R30 R29 K22 ["tag"]
      297 MOVE                             R30 R18
      298 CALL                             R30 0 1
      299 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      301 DUPTABLE                         R30 K73 [{"CodeScrollView", "CopyButtonPopover"}]
      302 GETUPVAL                         R31 4
      303 GETUPVAL                         R32 10
      304 DUPTABLE                         R33 K75 [{"tag", "LayoutOrder", "scroll"}]
      305 LOADK                            R34 K76 ["fill auto-y"]
      306 SETTABLEKS                       R34 R33 K22 ["tag"]
      308 MOVE                             R34 R18
      309 CALL                             R34 0 1
      310 SETTABLEKS                       R34 R33 K23 ["LayoutOrder"]
      312 GETUPVAL                         R34 11
      313 SETTABLEKS                       R34 R33 K74 ["scroll"]
      315 DUPTABLE                         R34 K78 [{"Code"}]
      316 GETUPVAL                         R35 4
      317 LOADK                            R36 K79 ["TextBox"]
      318 DUPTABLE                         R37 K91 [{"Text", "AutomaticSize", "FontFace", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable"}]
      319 GETTABLEKS                       R38 R0 K19 ["data"]
      321 GETTABLEKS                       R38 R38 K92 ["text"]
      323 SETTABLEKS                       R38 R37 K36 ["Text"]
      325 GETIMPORT                        R38 K95 [Enum.AutomaticSize.XY]
      327 SETTABLEKS                       R38 R37 K80 ["AutomaticSize"]
      329 GETUPVAL                         R38 12
      330 GETTABLEKS                       R38 R38 K96 ["CODE_FONT"]
      332 SETTABLEKS                       R38 R37 K81 ["FontFace"]
      334 GETTABLEKS                       R38 R1 K97 ["FontSize"]
      336 GETTABLEKS                       R38 R38 K98 ["FontSize_300"]
      338 SETTABLEKS                       R38 R37 K82 ["TextSize"]
      340 GETTABLEKS                       R38 R3 K83 ["LineHeight"]
      342 SETTABLEKS                       R38 R37 K83 ["LineHeight"]
      344 GETTABLEKS                       R38 R4 K99 ["Color3"]
      346 SETTABLEKS                       R38 R37 K84 ["TextColor3"]
      348 GETTABLEKS                       R38 R4 K100 ["Transparency"]
      350 SETTABLEKS                       R38 R37 K85 ["TextTransparency"]
      352 GETIMPORT                        R38 K102 [Enum.TextXAlignment.Left]
      354 SETTABLEKS                       R38 R37 K86 ["TextXAlignment"]
      356 LOADN                            R38 1
      357 SETTABLEKS                       R38 R37 K87 ["BackgroundTransparency"]
      359 LOADN                            R38 0
      360 SETTABLEKS                       R38 R37 K88 ["BorderSizePixel"]
      362 LOADB                            R38 0
      363 SETTABLEKS                       R38 R37 K89 ["ClearTextOnFocus"]
      365 LOADB                            R38 0
      366 SETTABLEKS                       R38 R37 K90 ["TextEditable"]
      368 DUPTABLE                         R38 K104 [{"Padding"}]
      369 GETUPVAL                         R39 4
      370 LOADK                            R40 K105 ["UIPadding"]
      371 DUPTABLE                         R41 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      372 GETIMPORT                        R42 K113 [UDim.new]
      374 LOADN                            R43 0
      375 LOADN                            R44 8
      376 CALL                             R42 2 1
      377 SETTABLEKS                       R42 R41 K106 ["PaddingLeft"]
      379 GETIMPORT                        R42 K113 [UDim.new]
      381 LOADN                            R43 0
      382 LOADN                            R44 8
      383 CALL                             R42 2 1
      384 SETTABLEKS                       R42 R41 K107 ["PaddingRight"]
      386 GETIMPORT                        R42 K113 [UDim.new]
      388 LOADN                            R43 0
      389 LOADN                            R44 6
      390 CALL                             R42 2 1
      391 SETTABLEKS                       R42 R41 K108 ["PaddingTop"]
      393 GETIMPORT                        R42 K113 [UDim.new]
      395 LOADN                            R43 0
      396 LOADN                            R44 6
      397 CALL                             R42 2 1
      398 SETTABLEKS                       R42 R41 K109 ["PaddingBottom"]
      400 CALL                             R39 2 1
      401 SETTABLEKS                       R39 R38 K103 ["Padding"]
      403 CALL                             R35 3 1
      404 SETTABLEKS                       R35 R34 K77 ["Code"]
      406 CALL                             R31 3 1
      407 SETTABLEKS                       R31 R30 K71 ["CodeScrollView"]
      409 GETUPVAL                         R31 4
      410 GETUPVAL                         R32 13
      411 GETTABLEKS                       R32 R32 K114 ["Root"]
      413 DUPTABLE                         R33 K116 [{"isOpen"}]
      414 SETTABLEKS                       R8 R33 K115 ["isOpen"]
      416 DUPTABLE                         R34 K118 [{"Anchor", "Content"}]
      417 GETUPVAL                         R35 4
      418 GETUPVAL                         R36 13
      419 GETTABLEKS                       R36 R36 K117 ["Anchor"]
      421 DUPTABLE                         R37 K119 [{"LayoutOrder"}]
      422 MOVE                             R38 R18
      423 CALL                             R38 0 1
      424 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      426 DUPTABLE                         R38 K121 [{"CopyButton"}]
      427 GETUPVAL                         R40 7
      428 CALL                             R40 0 1
      429 JUMPIFNOT                        R40 ; [+48]
      430 GETUPVAL                         R39 4
      431 GETUPVAL                         R40 14
      432 DUPTABLE                         R41 K122 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      433 GETUPVAL                         R42 0
      434 GETTABLEKS                       R42 R42 K47 ["Enums"]
      436 GETTABLEKS                       R42 R42 K48 ["IconName"]
      438 GETTABLEKS                       R42 R42 K123 ["TwoStackedSquares"]
      440 SETTABLEKS                       R42 R41 K55 ["icon"]
      442 GETUPVAL                         R42 0
      443 GETTABLEKS                       R42 R42 K47 ["Enums"]
      445 GETTABLEKS                       R42 R42 K124 ["InputSize"]
      447 GETTABLEKS                       R42 R42 K125 ["XSmall"]
      449 SETTABLEKS                       R42 R41 K44 ["size"]
      451 GETUPVAL                         R42 0
      452 GETTABLEKS                       R42 R42 K47 ["Enums"]
      454 GETTABLEKS                       R42 R42 K126 ["ButtonVariant"]
      456 GETTABLEKS                       R42 R42 K127 ["Utility"]
      458 SETTABLEKS                       R42 R41 K14 ["variant"]
      460 JUMPIFEQKNIL                     R15 ; [+2]
      462 LOADB                            R42 0 +1
      463 LOADB                            R42 1
      464 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      466 SETTABLEKS                       R17 R41 K29 ["onActivated"]
      468 MOVE                             R42 R18
      469 CALL                             R42 0 1
      470 SETTABLEKS                       R42 R41 K23 ["LayoutOrder"]
      472 GETTABLEKS                       R42 R0 K128 ["copyButtonTestId"]
      474 SETTABLEKS                       R42 R41 K37 ["testId"]
      476 CALL                             R39 2 1
      477 JUMP                             ; [+30]
      478 GETUPVAL                         R39 4
      479 GETUPVAL                         R40 9
      480 DUPTABLE                         R41 K129 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      481 GETUPVAL                         R43 15
      482 GETTABLE                         R42 R43 R2
      483 SETTABLEKS                       R42 R41 K55 ["icon"]
      485 LOADK                            R42 K130 ["size-600-600 radius-small align-x-center align-y-center"]
      486 SETTABLEKS                       R42 R41 K22 ["tag"]
      488 LOADK                            R42 K131 ["size-300-300 content-emphasis"]
      489 SETTABLEKS                       R42 R41 K56 ["iconTag"]
      491 JUMPIFEQKNIL                     R15 ; [+2]
      493 LOADB                            R42 0 +1
      494 LOADB                            R42 1
      495 SETTABLEKS                       R42 R41 K17 ["isDisabled"]
      497 SETTABLEKS                       R17 R41 K29 ["onActivated"]
      499 MOVE                             R42 R18
      500 CALL                             R42 0 1
      501 SETTABLEKS                       R42 R41 K23 ["LayoutOrder"]
      503 GETTABLEKS                       R42 R0 K128 ["copyButtonTestId"]
      505 SETTABLEKS                       R42 R41 K37 ["testId"]
      507 CALL                             R39 2 1
      508 SETTABLEKS                       R39 R38 K120 ["CopyButton"]
      510 CALL                             R35 3 1
      511 SETTABLEKS                       R35 R34 K117 ["Anchor"]
      513 GETUPVAL                         R35 4
      514 GETUPVAL                         R36 13
      515 GETTABLEKS                       R36 R36 K8 ["Content"]
      517 DUPTABLE                         R37 K138 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
      518 LOADB                            R38 0
      519 SETTABLEKS                       R38 R37 K132 ["hasArrow"]
      521 GETUPVAL                         R38 0
      522 GETTABLEKS                       R38 R38 K47 ["Enums"]
      524 GETTABLEKS                       R38 R38 K139 ["PopoverAlign"]
      526 GETTABLEKS                       R38 R38 K140 ["Center"]
      528 SETTABLEKS                       R38 R37 K133 ["align"]
      530 DUPTABLE                         R38 K143 [{"position", "offset"}]
      531 GETUPVAL                         R39 0
      532 GETTABLEKS                       R39 R39 K47 ["Enums"]
      534 GETTABLEKS                       R39 R39 K144 ["PopoverSide"]
      536 GETTABLEKS                       R39 R39 K145 ["Top"]
      538 SETTABLEKS                       R39 R38 K141 ["position"]
      540 GETTABLEKS                       R39 R1 K146 ["Size"]
      542 GETTABLEKS                       R39 R39 K147 ["Size_100"]
      544 SETTABLEKS                       R39 R38 K142 ["offset"]
      546 SETTABLEKS                       R38 R37 K134 ["side"]
      548 GETUPVAL                         R38 0
      549 GETTABLEKS                       R38 R38 K47 ["Enums"]
      551 GETTABLEKS                       R38 R38 K148 ["Radius"]
      553 GETTABLEKS                       R38 R38 K52 ["Small"]
      555 SETTABLEKS                       R38 R37 K135 ["radius"]
      557 GETTABLEKS                       R38 R1 K149 ["Inverse"]
      559 GETTABLEKS                       R38 R38 K150 ["Surface"]
      561 GETTABLEKS                       R38 R38 K151 ["Surface_0"]
      563 SETTABLEKS                       R38 R37 K136 ["backgroundStyle"]
      565 LOADB                            R38 0
      566 SETTABLEKS                       R38 R37 K137 ["selectionGroup"]
      568 DUPTABLE                         R38 K153 [{"TooltipBody"}]
      569 GETUPVAL                         R39 4
      570 GETUPVAL                         R40 5
      571 DUPTABLE                         R41 K154 [{"tag"}]
      572 LOADK                            R42 K155 ["auto-xy padding-y-xsmall padding-x-small"]
      573 SETTABLEKS                       R42 R41 K22 ["tag"]
      575 DUPTABLE                         R42 K157 [{"Title"}]
      576 GETUPVAL                         R43 4
      577 GETUPVAL                         R44 6
      578 DUPTABLE                         R45 K158 [{"Text", "tag"}]
      579 GETTABLEKS                       R46 R0 K159 ["copiedText"]
      581 SETTABLEKS                       R46 R45 K36 ["Text"]
      583 LOADK                            R46 K160 ["auto-xy text-title-small content-inverse-emphasis"]
      584 SETTABLEKS                       R46 R45 K22 ["tag"]
      586 CALL                             R43 2 1
      587 SETTABLEKS                       R43 R42 K156 ["Title"]
      589 CALL                             R39 3 1
      590 SETTABLEKS                       R39 R38 K152 ["TooltipBody"]
      592 CALL                             R35 3 1
      593 SETTABLEKS                       R35 R34 K8 ["Content"]
      595 CALL                             R31 3 1
      596 SETTABLEKS                       R31 R30 K72 ["CopyButtonPopover"]
      598 CALL                             R27 3 1
      599 SETTABLEKS                       R27 R26 K65 ["CommandBlock"]
      601 CALL                             R23 3 1
      602 JUMP                             ; [+1]
      603 LOADNIL                          R23
      604 SETTABLEKS                       R23 R22 K27 ["ExpandedContent"]
      606 CALL                             R19 3 -1
      607 RETURN                           R19 -1
      608 GETUPVAL                         R19 4
      609 GETUPVAL                         R20 5
      610 DUPTABLE                         R21 K24 [{"tag", "LayoutOrder"}]
      611 LOADK                            R22 K161 ["col size-full-0 auto-y radius-small stroke-standard stroke-default"]
      612 SETTABLEKS                       R22 R21 K22 ["tag"]
      614 GETTABLEKS                       R22 R0 K23 ["LayoutOrder"]
      616 SETTABLEKS                       R22 R21 K23 ["LayoutOrder"]
      618 DUPTABLE                         R22 K163 [{"Header", "HeaderDivider", "CodeScrollView"}]
      619 GETUPVAL                         R23 4
      620 GETUPVAL                         R24 5
      621 DUPTABLE                         R25 K30 [{"tag", "LayoutOrder", "onActivated"}]
      622 LOADK                            R26 K164 ["row size-full-0 auto-y gap-xsmall align-y-center bg-shift-100 padding-xsmall"]
      623 SETTABLEKS                       R26 R25 K22 ["tag"]
      625 MOVE                             R26 R18
      626 CALL                             R26 0 1
      627 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      629 SETTABLEKS                       R14 R25 K29 ["onActivated"]
      631 DUPTABLE                         R26 K165 [{"ExpandIcon", "Label", "Spacer", "CopyButtonPopover"}]
      632 GETUPVAL                         R28 7
      633 CALL                             R28 0 1
      634 JUMPIFNOT                        R28 ; [+44]
      635 GETUPVAL                         R27 4
      636 GETUPVAL                         R28 8
      637 DUPTABLE                         R29 K46 [{"name", "size", "style", "LayoutOrder"}]
      638 JUMPIFNOT                        R6 ; [+8]
      639 GETUPVAL                         R30 0
      640 GETTABLEKS                       R30 R30 K47 ["Enums"]
      642 GETTABLEKS                       R30 R30 K48 ["IconName"]
      644 GETTABLEKS                       R30 R30 K49 ["ChevronSmallDown"]
      646 JUMP                             ; [+7]
      647 GETUPVAL                         R30 0
      648 GETTABLEKS                       R30 R30 K47 ["Enums"]
      650 GETTABLEKS                       R30 R30 K48 ["IconName"]
      652 GETTABLEKS                       R30 R30 K50 ["ChevronSmallRight"]
      654 SETTABLEKS                       R30 R29 K43 ["name"]
      656 GETUPVAL                         R30 0
      657 GETTABLEKS                       R30 R30 K47 ["Enums"]
      659 GETTABLEKS                       R30 R30 K51 ["IconSize"]
      661 GETTABLEKS                       R30 R30 K125 ["XSmall"]
      663 SETTABLEKS                       R30 R29 K44 ["size"]
      665 GETTABLEKS                       R30 R1 K7 ["Color"]
      667 GETTABLEKS                       R30 R30 K8 ["Content"]
      669 GETTABLEKS                       R30 R30 K54 ["Emphasis"]
      671 SETTABLEKS                       R30 R29 K45 ["style"]
      673 MOVE                             R30 R18
      674 CALL                             R30 0 1
      675 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      677 CALL                             R27 2 1
      678 JUMP                             ; [+20]
      679 GETUPVAL                         R27 4
      680 GETUPVAL                         R28 9
      681 DUPTABLE                         R29 K57 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      682 JUMPIFNOT                        R6 ; [+2]
      683 LOADK                            R30 K58 ["icons/actions/truncationExpand_small"]
      684 JUMP                             ; [+1]
      685 LOADK                            R30 K59 ["icons/actions/cycleRight_small"]
      686 SETTABLEKS                       R30 R29 K55 ["icon"]
      688 LOADK                            R30 K166 ["size-300-300 align-x-center align-y-center"]
      689 SETTABLEKS                       R30 R29 K22 ["tag"]
      691 LOADK                            R30 K167 ["size-150-150 content-emphasis"]
      692 SETTABLEKS                       R30 R29 K56 ["iconTag"]
      694 MOVE                             R30 R18
      695 CALL                             R30 0 1
      696 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      698 CALL                             R27 2 1
      699 SETTABLEKS                       R27 R26 K34 ["ExpandIcon"]
      701 GETUPVAL                         R27 4
      702 GETUPVAL                         R28 6
      703 DUPTABLE                         R29 K38 [{"tag", "Text", "LayoutOrder", "testId"}]
      704 LOADK                            R30 K168 ["auto-xy shrink text-label-small text-align-x-left"]
      705 SETTABLEKS                       R30 R29 K22 ["tag"]
      707 GETTABLEKS                       R30 R0 K40 ["label"]
      709 SETTABLEKS                       R30 R29 K36 ["Text"]
      711 MOVE                             R30 R18
      712 CALL                             R30 0 1
      713 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      715 GETTABLEKS                       R30 R0 K41 ["labelTestId"]
      717 SETTABLEKS                       R30 R29 K37 ["testId"]
      719 CALL                             R27 2 1
      720 SETTABLEKS                       R27 R26 K32 ["Label"]
      722 GETUPVAL                         R27 4
      723 GETUPVAL                         R28 5
      724 DUPTABLE                         R29 K24 [{"tag", "LayoutOrder"}]
      725 LOADK                            R30 K42 ["fill"]
      726 SETTABLEKS                       R30 R29 K22 ["tag"]
      728 MOVE                             R30 R18
      729 CALL                             R30 0 1
      730 SETTABLEKS                       R30 R29 K23 ["LayoutOrder"]
      732 CALL                             R27 2 1
      733 SETTABLEKS                       R27 R26 K33 ["Spacer"]
      735 GETUPVAL                         R27 4
      736 GETUPVAL                         R28 13
      737 GETTABLEKS                       R28 R28 K114 ["Root"]
      739 DUPTABLE                         R29 K116 [{"isOpen"}]
      740 SETTABLEKS                       R8 R29 K115 ["isOpen"]
      742 DUPTABLE                         R30 K118 [{"Anchor", "Content"}]
      743 GETUPVAL                         R31 4
      744 GETUPVAL                         R32 13
      745 GETTABLEKS                       R32 R32 K117 ["Anchor"]
      747 DUPTABLE                         R33 K119 [{"LayoutOrder"}]
      748 MOVE                             R34 R18
      749 CALL                             R34 0 1
      750 SETTABLEKS                       R34 R33 K23 ["LayoutOrder"]
      752 DUPTABLE                         R34 K121 [{"CopyButton"}]
      753 GETUPVAL                         R36 7
      754 CALL                             R36 0 1
      755 JUMPIFNOT                        R36 ; [+48]
      756 GETUPVAL                         R35 4
      757 GETUPVAL                         R36 14
      758 DUPTABLE                         R37 K122 [{"icon", "size", "variant", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      759 GETUPVAL                         R38 0
      760 GETTABLEKS                       R38 R38 K47 ["Enums"]
      762 GETTABLEKS                       R38 R38 K48 ["IconName"]
      764 GETTABLEKS                       R38 R38 K123 ["TwoStackedSquares"]
      766 SETTABLEKS                       R38 R37 K55 ["icon"]
      768 GETUPVAL                         R38 0
      769 GETTABLEKS                       R38 R38 K47 ["Enums"]
      771 GETTABLEKS                       R38 R38 K124 ["InputSize"]
      773 GETTABLEKS                       R38 R38 K125 ["XSmall"]
      775 SETTABLEKS                       R38 R37 K44 ["size"]
      777 GETUPVAL                         R38 0
      778 GETTABLEKS                       R38 R38 K47 ["Enums"]
      780 GETTABLEKS                       R38 R38 K126 ["ButtonVariant"]
      782 GETTABLEKS                       R38 R38 K127 ["Utility"]
      784 SETTABLEKS                       R38 R37 K14 ["variant"]
      786 JUMPIFEQKNIL                     R15 ; [+2]
      788 LOADB                            R38 0 +1
      789 LOADB                            R38 1
      790 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      792 SETTABLEKS                       R17 R37 K29 ["onActivated"]
      794 MOVE                             R38 R18
      795 CALL                             R38 0 1
      796 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      798 GETTABLEKS                       R38 R0 K128 ["copyButtonTestId"]
      800 SETTABLEKS                       R38 R37 K37 ["testId"]
      802 CALL                             R35 2 1
      803 JUMP                             ; [+30]
      804 GETUPVAL                         R35 4
      805 GETUPVAL                         R36 9
      806 DUPTABLE                         R37 K129 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      807 GETUPVAL                         R39 15
      808 GETTABLE                         R38 R39 R2
      809 SETTABLEKS                       R38 R37 K55 ["icon"]
      811 LOADK                            R38 K130 ["size-600-600 radius-small align-x-center align-y-center"]
      812 SETTABLEKS                       R38 R37 K22 ["tag"]
      814 LOADK                            R38 K131 ["size-300-300 content-emphasis"]
      815 SETTABLEKS                       R38 R37 K56 ["iconTag"]
      817 JUMPIFEQKNIL                     R15 ; [+2]
      819 LOADB                            R38 0 +1
      820 LOADB                            R38 1
      821 SETTABLEKS                       R38 R37 K17 ["isDisabled"]
      823 SETTABLEKS                       R17 R37 K29 ["onActivated"]
      825 MOVE                             R38 R18
      826 CALL                             R38 0 1
      827 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      829 GETTABLEKS                       R38 R0 K128 ["copyButtonTestId"]
      831 SETTABLEKS                       R38 R37 K37 ["testId"]
      833 CALL                             R35 2 1
      834 SETTABLEKS                       R35 R34 K120 ["CopyButton"]
      836 CALL                             R31 3 1
      837 SETTABLEKS                       R31 R30 K117 ["Anchor"]
      839 GETUPVAL                         R31 4
      840 GETUPVAL                         R32 13
      841 GETTABLEKS                       R32 R32 K8 ["Content"]
      843 DUPTABLE                         R33 K138 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
      844 LOADB                            R34 0
      845 SETTABLEKS                       R34 R33 K132 ["hasArrow"]
      847 GETUPVAL                         R34 0
      848 GETTABLEKS                       R34 R34 K47 ["Enums"]
      850 GETTABLEKS                       R34 R34 K139 ["PopoverAlign"]
      852 GETTABLEKS                       R34 R34 K140 ["Center"]
      854 SETTABLEKS                       R34 R33 K133 ["align"]
      856 DUPTABLE                         R34 K143 [{"position", "offset"}]
      857 GETUPVAL                         R35 0
      858 GETTABLEKS                       R35 R35 K47 ["Enums"]
      860 GETTABLEKS                       R35 R35 K144 ["PopoverSide"]
      862 GETTABLEKS                       R35 R35 K145 ["Top"]
      864 SETTABLEKS                       R35 R34 K141 ["position"]
      866 GETTABLEKS                       R35 R1 K146 ["Size"]
      868 GETTABLEKS                       R35 R35 K147 ["Size_100"]
      870 SETTABLEKS                       R35 R34 K142 ["offset"]
      872 SETTABLEKS                       R34 R33 K134 ["side"]
      874 GETUPVAL                         R34 0
      875 GETTABLEKS                       R34 R34 K47 ["Enums"]
      877 GETTABLEKS                       R34 R34 K148 ["Radius"]
      879 GETTABLEKS                       R34 R34 K52 ["Small"]
      881 SETTABLEKS                       R34 R33 K135 ["radius"]
      883 GETTABLEKS                       R34 R1 K149 ["Inverse"]
      885 GETTABLEKS                       R34 R34 K150 ["Surface"]
      887 GETTABLEKS                       R34 R34 K151 ["Surface_0"]
      889 SETTABLEKS                       R34 R33 K136 ["backgroundStyle"]
      891 LOADB                            R34 0
      892 SETTABLEKS                       R34 R33 K137 ["selectionGroup"]
      894 DUPTABLE                         R34 K153 [{"TooltipBody"}]
      895 GETUPVAL                         R35 4
      896 GETUPVAL                         R36 5
      897 DUPTABLE                         R37 K154 [{"tag"}]
      898 LOADK                            R38 K155 ["auto-xy padding-y-xsmall padding-x-small"]
      899 SETTABLEKS                       R38 R37 K22 ["tag"]
      901 DUPTABLE                         R38 K157 [{"Title"}]
      902 GETUPVAL                         R39 4
      903 GETUPVAL                         R40 6
      904 DUPTABLE                         R41 K158 [{"Text", "tag"}]
      905 GETTABLEKS                       R42 R0 K159 ["copiedText"]
      907 SETTABLEKS                       R42 R41 K36 ["Text"]
      909 LOADK                            R42 K160 ["auto-xy text-title-small content-inverse-emphasis"]
      910 SETTABLEKS                       R42 R41 K22 ["tag"]
      912 CALL                             R39 2 1
      913 SETTABLEKS                       R39 R38 K156 ["Title"]
      915 CALL                             R35 3 1
      916 SETTABLEKS                       R35 R34 K152 ["TooltipBody"]
      918 CALL                             R31 3 1
      919 SETTABLEKS                       R31 R30 K8 ["Content"]
      921 CALL                             R27 3 1
      922 SETTABLEKS                       R27 R26 K72 ["CopyButtonPopover"]
      924 CALL                             R23 3 1
      925 SETTABLEKS                       R23 R22 K26 ["Header"]
      927 JUMPIFNOT                        R6 ; [+9]
      928 GETUPVAL                         R23 4
      929 GETUPVAL                         R24 16
      930 DUPTABLE                         R25 K119 [{"LayoutOrder"}]
      931 MOVE                             R26 R18
      932 CALL                             R26 0 1
      933 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      935 CALL                             R23 2 1
      936 JUMP                             ; [+1]
      937 LOADNIL                          R23
      938 SETTABLEKS                       R23 R22 K162 ["HeaderDivider"]
      940 JUMPIFNOT                        R6 ; [+109]
      941 GETUPVAL                         R23 4
      942 GETUPVAL                         R24 10
      943 DUPTABLE                         R25 K75 [{"tag", "LayoutOrder", "scroll"}]
      944 LOADK                            R26 K169 ["size-full-0 auto-y"]
      945 SETTABLEKS                       R26 R25 K22 ["tag"]
      947 MOVE                             R26 R18
      948 CALL                             R26 0 1
      949 SETTABLEKS                       R26 R25 K23 ["LayoutOrder"]
      951 GETUPVAL                         R26 11
      952 SETTABLEKS                       R26 R25 K74 ["scroll"]
      954 DUPTABLE                         R26 K78 [{"Code"}]
      955 GETUPVAL                         R27 4
      956 LOADK                            R28 K79 ["TextBox"]
      957 DUPTABLE                         R29 K171 [{"Text", "AutomaticSize", "FontFace", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "MultiLine", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable"}]
      958 GETTABLEKS                       R30 R0 K19 ["data"]
      960 GETTABLEKS                       R30 R30 K92 ["text"]
      962 SETTABLEKS                       R30 R29 K36 ["Text"]
      964 GETIMPORT                        R30 K95 [Enum.AutomaticSize.XY]
      966 SETTABLEKS                       R30 R29 K80 ["AutomaticSize"]
      968 GETUPVAL                         R30 12
      969 GETTABLEKS                       R30 R30 K96 ["CODE_FONT"]
      971 SETTABLEKS                       R30 R29 K81 ["FontFace"]
      973 GETTABLEKS                       R30 R1 K97 ["FontSize"]
      975 GETTABLEKS                       R30 R30 K98 ["FontSize_300"]
      977 SETTABLEKS                       R30 R29 K82 ["TextSize"]
      979 GETTABLEKS                       R30 R3 K83 ["LineHeight"]
      981 SETTABLEKS                       R30 R29 K83 ["LineHeight"]
      983 GETTABLEKS                       R30 R4 K99 ["Color3"]
      985 SETTABLEKS                       R30 R29 K84 ["TextColor3"]
      987 GETTABLEKS                       R30 R4 K100 ["Transparency"]
      989 SETTABLEKS                       R30 R29 K85 ["TextTransparency"]
      991 GETIMPORT                        R30 K102 [Enum.TextXAlignment.Left]
      993 SETTABLEKS                       R30 R29 K86 ["TextXAlignment"]
      995 LOADB                            R30 1
      996 SETTABLEKS                       R30 R29 K170 ["MultiLine"]
      998 LOADN                            R30 1
      999 SETTABLEKS                       R30 R29 K87 ["BackgroundTransparency"]
     1001 LOADN                            R30 0
     1002 SETTABLEKS                       R30 R29 K88 ["BorderSizePixel"]
     1004 LOADB                            R30 0
     1005 SETTABLEKS                       R30 R29 K89 ["ClearTextOnFocus"]
     1007 LOADB                            R30 0
     1008 SETTABLEKS                       R30 R29 K90 ["TextEditable"]
     1010 DUPTABLE                         R30 K104 [{"Padding"}]
     1011 GETUPVAL                         R31 4
     1012 LOADK                            R32 K105 ["UIPadding"]
     1013 DUPTABLE                         R33 K110 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
     1014 GETIMPORT                        R34 K113 [UDim.new]
     1016 LOADN                            R35 0
     1017 LOADN                            R36 12
     1018 CALL                             R34 2 1
     1019 SETTABLEKS                       R34 R33 K106 ["PaddingLeft"]
     1021 GETIMPORT                        R34 K113 [UDim.new]
     1023 LOADN                            R35 0
     1024 LOADN                            R36 12
     1025 CALL                             R34 2 1
     1026 SETTABLEKS                       R34 R33 K107 ["PaddingRight"]
     1028 GETIMPORT                        R34 K113 [UDim.new]
     1030 LOADN                            R35 0
     1031 LOADN                            R36 12
     1032 CALL                             R34 2 1
     1033 SETTABLEKS                       R34 R33 K108 ["PaddingTop"]
     1035 GETIMPORT                        R34 K113 [UDim.new]
     1037 LOADN                            R35 0
     1038 LOADN                            R36 12
     1039 CALL                             R34 2 1
     1040 SETTABLEKS                       R34 R33 K109 ["PaddingBottom"]
     1042 CALL                             R31 2 1
     1043 SETTABLEKS                       R31 R30 K103 ["Padding"]
     1045 CALL                             R27 3 1
     1046 SETTABLEKS                       R27 R26 K77 ["Code"]
     1048 CALL                             R23 3 1
     1049 JUMP                             ; [+1]
     1050 LOADNIL                          R23
     1051 SETTABLEKS                       R23 R22 K71 ["CodeScrollView"]
     1053 CALL                             R19 3 -1
     1054 RETURN                           R19 -1

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
      104 DUPTABLE                         R19 K49 [{"Dark", "Light"}]
      105 LOADK                            R20 K50 ["rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png"]
      106 SETTABLEKS                       R20 R19 K47 ["Dark"]
      108 LOADK                            R20 K51 ["rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"]
      109 SETTABLEKS                       R20 R19 K48 ["Light"]
      111 DUPCLOSURE                       R20 K52 [PROTO_7]
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R18
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R8
      129 RETURN                           R20 1
