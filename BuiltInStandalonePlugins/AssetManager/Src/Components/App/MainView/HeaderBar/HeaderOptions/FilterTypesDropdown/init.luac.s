PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R2 K3 [Vector2.new]
        9 GETTABLEKS                       R4 R1 K4 ["CanvasPosition"]
       11 GETTABLEKS                       R3 R4 K5 ["X"]
       13 LOADN                            R4 0
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "Text", "Items", "KeepExpanded"}]
        5 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
        9 GETTABLEKS                       R5 R0 K2 ["Text"]
       11 SETTABLEKS                       R5 R4 K2 ["Text"]
       13 GETTABLEKS                       R5 R0 K3 ["Items"]
       15 SETTABLEKS                       R5 R4 K3 ["Items"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K4 ["KeepExpanded"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearFilters"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 LOADK                            R7 K1 [""]
       22 CALL                             R6 1 2
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R8 R9 K2 ["useRef"]
       26 LOADNIL                          R9
       27 CALL                             R8 1 1
       28 GETUPVAL                         R10 6
       29 GETTABLEKS                       R9 R10 K3 ["useEffect"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R8
       33 NEWTABLE                         R11 0 0
       35 CALL                             R9 2 0
       36 GETUPVAL                         R10 6
       37 GETTABLEKS                       R9 R10 K2 ["useRef"]
       39 LOADNIL                          R10
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 7
       42 MOVE                             R11 R1
       43 MOVE                             R12 R2
       44 MOVE                             R13 R3
       45 MOVE                             R14 R4
       46 MOVE                             R15 R5
       47 CALL                             R10 5 1
       48 GETUPVAL                         R11 8
       49 CALL                             R11 0 3
       50 GETUPVAL                         R15 6
       51 GETTABLEKS                       R14 R15 K4 ["useMemo"]
       53 NEWCLOSURE                       R15 P1
       54 CAPTURE                          UPVAL U9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R6
       57 NEWTABLE                         R16 0 2
       59 MOVE                             R17 R10
       60 MOVE                             R18 R6
       61 SETLIST                          R16 R17 2 [1]
       63 CALL                             R14 2 2
       64 NEWCLOSURE                       R16 P2
       65 CAPTURE                          VAL R14
       66 GETUPVAL                         R18 6
       67 GETTABLEKS                       R17 R18 K5 ["useCallback"]
       69 NEWCLOSURE                       R18 P3
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 GETUPVAL                         R20 10
       73 CALL                             R20 0 1
       74 JUMPIFNOT                        R20 ; [+6]
       75 NEWTABLE                         R19 0 1
       77 MOVE                             R20 R9
       78 SETLIST                          R19 R20 1 [1]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R19
       82 CALL                             R17 2 1
       83 GETUPVAL                         R19 6
       84 GETTABLEKS                       R18 R19 K6 ["createElement"]
       86 GETUPVAL                         R20 11
       87 GETTABLEKS                       R19 R20 K7 ["View"]
       89 DUPTABLE                         R20 K10 [{"Size", "tag"}]
       90 GETIMPORT                        R21 K13 [UDim2.fromOffset]
       92 GETUPVAL                         R24 12
       93 GETTABLEKS                       R23 R24 K14 ["AMR_FILTERTYPES_WIDTH"]
       95 FASTCALL2                        MATH_MIN R23 R11 ; [+4]
       97 MOVE                             R24 R11
       98 GETIMPORT                        R22 K17 [math.min]
      100 CALL                             R22 2 1
      101 GETUPVAL                         R25 12
      102 GETTABLEKS                       R24 R25 K18 ["AMR_FILTERTYPES_HEIGHT"]
      104 GETUPVAL                         R27 12
      105 GETTABLEKS                       R26 R27 K19 ["AMR_HEADERROW_HEIGHT"]
      107 SUB                              R25 R12 R26
      108 FASTCALL2                        MATH_MIN R24 R25 ; [+3]
      110 GETIMPORT                        R23 K17 [math.min]
      112 CALL                             R23 2 1
      113 CALL                             R21 2 1
      114 SETTABLEKS                       R21 R20 K8 ["Size"]
      116 LOADK                            R21 K20 ["col flex-fill gap-small padding-small bg-surface-100 stroke-default radius-medium"]
      117 SETTABLEKS                       R21 R20 K9 ["tag"]
      119 DUPTABLE                         R21 K23 [{"Content", "Footer"}]
      120 GETUPVAL                         R23 6
      121 GETTABLEKS                       R22 R23 K6 ["createElement"]
      123 GETUPVAL                         R24 11
      124 GETTABLEKS                       R23 R24 K24 ["ScrollView"]
      126 DUPTABLE                         R24 K29 [{"LayoutOrder", "layout", "scroll", "scrollingFrameRef", "tag"}]
      127 LOADN                            R25 1
      128 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      130 DUPTABLE                         R25 K31 [{"FillDirection"}]
      131 GETIMPORT                        R26 K34 [Enum.FillDirection.Vertical]
      133 SETTABLEKS                       R26 R25 K30 ["FillDirection"]
      135 SETTABLEKS                       R25 R24 K26 ["layout"]
      137 DUPTABLE                         R25 K39 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      138 GETIMPORT                        R26 K42 [Enum.AutomaticSize.Y]
      140 SETTABLEKS                       R26 R25 K35 ["AutomaticCanvasSize"]
      142 GETIMPORT                        R26 K13 [UDim2.fromOffset]
      144 LOADN                            R27 0
      145 LOADN                            R28 0
      146 CALL                             R26 2 1
      147 SETTABLEKS                       R26 R25 K36 ["CanvasSize"]
      149 GETIMPORT                        R26 K43 [Enum.ScrollingDirection.Y]
      151 SETTABLEKS                       R26 R25 K37 ["ScrollingDirection"]
      153 GETIMPORT                        R26 K46 [Enum.ScrollBarInset.ScrollBar]
      155 SETTABLEKS                       R26 R25 K38 ["VerticalScrollBarInset"]
      157 SETTABLEKS                       R25 R24 K27 ["scroll"]
      159 SETTABLEKS                       R9 R24 K28 ["scrollingFrameRef"]
      161 LOADK                            R25 K47 ["size-full"]
      162 SETTABLEKS                       R25 R24 K9 ["tag"]
      164 DUPTABLE                         R25 K50 [{"Header", "Items"}]
      165 GETUPVAL                         R27 6
      166 GETTABLEKS                       R26 R27 K6 ["createElement"]
      168 GETUPVAL                         R28 11
      169 GETTABLEKS                       R27 R28 K7 ["View"]
      171 DUPTABLE                         R28 K51 [{"LayoutOrder", "tag"}]
      172 LOADN                            R29 1
      173 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      175 LOADK                            R29 K52 ["col size-full-0 auto-y gap-small padding-bottom-small"]
      176 SETTABLEKS                       R29 R28 K9 ["tag"]
      178 DUPTABLE                         R29 K54 [{"SearchInput"}]
      179 GETUPVAL                         R31 6
      180 GETTABLEKS                       R30 R31 K6 ["createElement"]
      182 GETUPVAL                         R32 11
      183 GETTABLEKS                       R31 R32 K55 ["TextInput"]
      185 DUPTABLE                         R32 K65 [{"label", "placeholder", "text", "leadingIcon", "iconTrailing", "onChanged", "width", "size", "textBoxRef"}]
      186 LOADK                            R33 K1 [""]
      187 SETTABLEKS                       R33 R32 K56 ["label"]
      189 LOADK                            R35 K66 ["FiltersByType"]
      190 LOADK                            R36 K67 ["SearchAllPlaceholder"]
      191 NAMECALL                         R33 R5 K68 ["getText"]
      193 CALL                             R33 3 1
      194 SETTABLEKS                       R33 R32 K57 ["placeholder"]
      196 SETTABLEKS                       R6 R32 K58 ["text"]
      198 GETUPVAL                         R36 11
      199 GETTABLEKS                       R35 R36 K69 ["Enums"]
      201 GETTABLEKS                       R34 R35 K70 ["IconName"]
      203 GETTABLEKS                       R33 R34 K71 ["MagnifyingGlass"]
      205 SETTABLEKS                       R33 R32 K59 ["leadingIcon"]
      207 LENGTH                           R34 R6
      208 LOADN                            R35 0
      209 JUMPIFNOTLT                      R35 R34 ; [+16]
      211 DUPTABLE                         R33 K74 [{"name", "onActivated"}]
      212 GETUPVAL                         R37 11
      213 GETTABLEKS                       R36 R37 K69 ["Enums"]
      215 GETTABLEKS                       R35 R36 K70 ["IconName"]
      217 GETTABLEKS                       R34 R35 K75 ["CircleX"]
      219 SETTABLEKS                       R34 R33 K72 ["name"]
      221 NEWCLOSURE                       R34 P4
      222 CAPTURE                          VAL R7
      223 SETTABLEKS                       R34 R33 K73 ["onActivated"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R33
      227 SETTABLEKS                       R33 R32 K60 ["iconTrailing"]
      229 SETTABLEKS                       R17 R32 K61 ["onChanged"]
      231 GETIMPORT                        R33 K78 [UDim.new]
      233 LOADN                            R34 1
      234 LOADN                            R35 0
      235 CALL                             R33 2 1
      236 SETTABLEKS                       R33 R32 K62 ["width"]
      238 GETUPVAL                         R36 11
      239 GETTABLEKS                       R35 R36 K69 ["Enums"]
      241 GETTABLEKS                       R34 R35 K79 ["InputSize"]
      243 GETTABLEKS                       R33 R34 K80 ["Small"]
      245 SETTABLEKS                       R33 R32 K63 ["size"]
      247 SETTABLEKS                       R8 R32 K64 ["textBoxRef"]
      249 CALL                             R30 2 1
      250 SETTABLEKS                       R30 R29 K53 ["SearchInput"]
      252 CALL                             R26 3 1
      253 SETTABLEKS                       R26 R25 K48 ["Header"]
      255 GETUPVAL                         R27 6
      256 GETTABLEKS                       R26 R27 K6 ["createElement"]
      258 GETUPVAL                         R28 11
      259 GETTABLEKS                       R27 R28 K7 ["View"]
      261 DUPTABLE                         R28 K51 [{"LayoutOrder", "tag"}]
      262 LOADN                            R29 2
      263 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      265 LOADK                            R29 K81 ["col auto-xy gap-xsmall"]
      266 SETTABLEKS                       R29 R28 K9 ["tag"]
      268 GETIMPORT                        R31 K83 [next]
      270 MOVE                             R32 R14
      271 CALL                             R31 1 1
      272 JUMPIFNOTEQKNIL                  R31 ; [+2]
      274 LOADB                            R30 0 +1
      275 LOADB                            R30 1
      276 JUMPIFNOT                        R30 ; [+10]
      277 GETUPVAL                         R30 13
      278 GETTABLEKS                       R29 R30 K84 ["map"]
      280 MOVE                             R30 R14
      281 NEWCLOSURE                       R31 P5
      282 CAPTURE                          UPVAL U6
      283 CAPTURE                          UPVAL U14
      284 CAPTURE                          VAL R15
      285 CALL                             R29 2 1
      286 JUMP                             ; [+22]
      287 NEWTABLE                         R29 0 1
      289 GETUPVAL                         R31 6
      290 GETTABLEKS                       R30 R31 K6 ["createElement"]
      292 GETUPVAL                         R32 11
      293 GETTABLEKS                       R31 R32 K85 ["Text"]
      295 DUPTABLE                         R32 K86 [{"Text", "tag"}]
      296 LOADK                            R35 K87 ["Plugin"]
      297 LOADK                            R36 K88 ["NoAssets"]
      298 NAMECALL                         R33 R5 K68 ["getText"]
      300 CALL                             R33 3 1
      301 SETTABLEKS                       R33 R32 K85 ["Text"]
      303 LOADK                            R33 K89 ["size-full text-title-medium text-align-x-center text-align-y-center"]
      304 SETTABLEKS                       R33 R32 K9 ["tag"]
      306 CALL                             R30 2 -1
      307 SETLIST                          R29 R30 -1 [1]
      309 CALL                             R26 3 1
      310 SETTABLEKS                       R26 R25 K49 ["Items"]
      312 CALL                             R22 3 1
      313 SETTABLEKS                       R22 R21 K21 ["Content"]
      315 GETIMPORT                        R24 K83 [next]
      317 MOVE                             R25 R14
      318 CALL                             R24 1 1
      319 JUMPIFNOTEQKNIL                  R24 ; [+2]
      321 LOADB                            R23 0 +1
      322 LOADB                            R23 1
      323 JUMPIFNOT                        R23 ; [+87]
      324 GETUPVAL                         R23 6
      325 GETTABLEKS                       R22 R23 K6 ["createElement"]
      327 GETUPVAL                         R24 11
      328 GETTABLEKS                       R23 R24 K7 ["View"]
      330 DUPTABLE                         R24 K51 [{"LayoutOrder", "tag"}]
      331 LOADN                            R25 2
      332 SETTABLEKS                       R25 R24 K25 ["LayoutOrder"]
      334 LOADK                            R25 K90 ["col size-full-0 auto-y padding-top-small padding-bottom-small gap-small"]
      335 SETTABLEKS                       R25 R24 K9 ["tag"]
      337 DUPTABLE                         R25 K93 [{"BottomDivider", "ResetButton"}]
      338 GETUPVAL                         R27 6
      339 GETTABLEKS                       R26 R27 K6 ["createElement"]
      341 GETUPVAL                         R28 11
      342 GETTABLEKS                       R27 R28 K94 ["Divider"]
      344 DUPTABLE                         R28 K96 [{"LayoutOrder", "orientation"}]
      345 LOADN                            R29 1
      346 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      348 GETUPVAL                         R32 11
      349 GETTABLEKS                       R31 R32 K69 ["Enums"]
      351 GETTABLEKS                       R30 R31 K97 ["DividerOrientation"]
      353 GETTABLEKS                       R29 R30 K98 ["Horizontal"]
      355 SETTABLEKS                       R29 R28 K95 ["orientation"]
      357 CALL                             R26 2 1
      358 SETTABLEKS                       R26 R25 K91 ["BottomDivider"]
      360 GETUPVAL                         R27 6
      361 GETTABLEKS                       R26 R27 K6 ["createElement"]
      363 GETUPVAL                         R28 11
      364 GETTABLEKS                       R27 R28 K99 ["Button"]
      366 DUPTABLE                         R28 K101 [{"LayoutOrder", "text", "onActivated", "variant", "width", "size"}]
      367 LOADN                            R29 2
      368 SETTABLEKS                       R29 R28 K25 ["LayoutOrder"]
      370 LOADK                            R31 K102 ["Filters"]
      371 LOADK                            R32 K103 ["ResetFilters"]
      372 NAMECALL                         R29 R5 K68 ["getText"]
      374 CALL                             R29 3 1
      375 SETTABLEKS                       R29 R28 K58 ["text"]
      377 NEWCLOSURE                       R29 P6
      378 CAPTURE                          VAL R3
      379 SETTABLEKS                       R29 R28 K73 ["onActivated"]
      381 GETUPVAL                         R32 11
      382 GETTABLEKS                       R31 R32 K69 ["Enums"]
      384 GETTABLEKS                       R30 R31 K104 ["ButtonVariant"]
      386 GETTABLEKS                       R29 R30 K105 ["Utility"]
      388 SETTABLEKS                       R29 R28 K100 ["variant"]
      390 GETIMPORT                        R29 K78 [UDim.new]
      392 LOADN                            R30 1
      393 LOADN                            R31 0
      394 CALL                             R29 2 1
      395 SETTABLEKS                       R29 R28 K62 ["width"]
      397 GETUPVAL                         R32 11
      398 GETTABLEKS                       R31 R32 K69 ["Enums"]
      400 GETTABLEKS                       R30 R31 K79 ["InputSize"]
      402 GETTABLEKS                       R29 R30 K80 ["Small"]
      404 SETTABLEKS                       R29 R28 K63 ["size"]
      406 CALL                             R26 2 1
      407 SETTABLEKS                       R26 R25 K92 ["ResetButton"]
      409 CALL                             R22 3 1
      410 JUMP                             ; [+1]
      411 LOADNIL                          R22
      412 SETTABLEKS                       R22 R21 K22 ["Footer"]
      414 CALL                             R18 3 -1
      415 RETURN                           R18 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 2
        9 GETUPVAL                         R6 3
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 GETUPVAL                         R8 4
       13 GETTABLEKS                       R7 R8 K1 ["createElement"]
       15 GETUPVAL                         R10 5
       16 GETTABLEKS                       R9 R10 K2 ["Popover"]
       18 GETTABLEKS                       R8 R9 K3 ["Root"]
       20 DUPTABLE                         R9 K5 [{"isOpen"}]
       21 SETTABLEKS                       R2 R9 K4 ["isOpen"]
       23 DUPTABLE                         R10 K8 [{"Anchor", "Content"}]
       24 GETUPVAL                         R12 4
       25 GETTABLEKS                       R11 R12 K1 ["createElement"]
       27 GETUPVAL                         R14 5
       28 GETTABLEKS                       R13 R14 K2 ["Popover"]
       30 GETTABLEKS                       R12 R13 K6 ["Anchor"]
       32 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       33 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
       35 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       37 GETUPVAL                         R15 4
       38 GETTABLEKS                       R14 R15 K1 ["createElement"]
       40 GETUPVAL                         R16 5
       41 GETTABLEKS                       R15 R16 K11 ["Tooltip"]
       43 DUPTABLE                         R16 K14 [{"title", "side"}]
       44 LOADK                            R19 K15 ["SearchBar"]
       45 LOADK                            R20 K16 ["PlaceholderText"]
       46 NAMECALL                         R17 R1 K17 ["getText"]
       48 CALL                             R17 3 1
       49 SETTABLEKS                       R17 R16 K12 ["title"]
       51 GETUPVAL                         R20 5
       52 GETTABLEKS                       R19 R20 K18 ["Enums"]
       54 GETTABLEKS                       R18 R19 K19 ["PopoverSide"]
       56 GETTABLEKS                       R17 R18 K20 ["Bottom"]
       58 SETTABLEKS                       R17 R16 K13 ["side"]
       60 GETUPVAL                         R18 4
       61 GETTABLEKS                       R17 R18 K1 ["createElement"]
       63 GETUPVAL                         R19 5
       64 GETTABLEKS                       R18 R19 K21 ["IconButton"]
       66 DUPTABLE                         R19 K26 [{"onActivated", "variant", "size", "icon"}]
       67 NEWCLOSURE                       R20 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R20 R19 K22 ["onActivated"]
       72 JUMPIFNOT                        R6 ; [+8]
       73 GETUPVAL                         R23 5
       74 GETTABLEKS                       R22 R23 K18 ["Enums"]
       76 GETTABLEKS                       R21 R22 K27 ["ButtonVariant"]
       78 GETTABLEKS                       R20 R21 K28 ["Emphasis"]
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R23 5
       82 GETTABLEKS                       R22 R23 K18 ["Enums"]
       84 GETTABLEKS                       R21 R22 K27 ["ButtonVariant"]
       86 GETTABLEKS                       R20 R21 K29 ["Utility"]
       88 SETTABLEKS                       R20 R19 K23 ["variant"]
       90 GETUPVAL                         R23 5
       91 GETTABLEKS                       R22 R23 K18 ["Enums"]
       93 GETTABLEKS                       R21 R22 K30 ["InputSize"]
       95 GETTABLEKS                       R20 R21 K31 ["XSmall"]
       97 SETTABLEKS                       R20 R19 K24 ["size"]
       99 GETUPVAL                         R23 5
      100 GETTABLEKS                       R22 R23 K18 ["Enums"]
      102 GETTABLEKS                       R21 R22 K32 ["IconName"]
      104 GETTABLEKS                       R20 R21 K33 ["ThreeBarsHorizontalNarrowing"]
      106 SETTABLEKS                       R20 R19 K25 ["icon"]
      108 CALL                             R17 2 -1
      109 CALL                             R14 -1 -1
      110 CALL                             R11 -1 1
      111 SETTABLEKS                       R11 R10 K6 ["Anchor"]
      113 GETUPVAL                         R12 4
      114 GETTABLEKS                       R11 R12 K1 ["createElement"]
      116 GETUPVAL                         R14 5
      117 GETTABLEKS                       R13 R14 K2 ["Popover"]
      119 GETTABLEKS                       R12 R13 K7 ["Content"]
      121 DUPTABLE                         R13 K37 [{"hasArrow", "side", "align", "onPressedOutside"}]
      122 LOADB                            R14 0
      123 SETTABLEKS                       R14 R13 K34 ["hasArrow"]
      125 GETUPVAL                         R17 5
      126 GETTABLEKS                       R16 R17 K18 ["Enums"]
      128 GETTABLEKS                       R15 R16 K19 ["PopoverSide"]
      130 GETTABLEKS                       R14 R15 K20 ["Bottom"]
      132 SETTABLEKS                       R14 R13 K13 ["side"]
      134 GETUPVAL                         R17 5
      135 GETTABLEKS                       R16 R17 K18 ["Enums"]
      137 GETTABLEKS                       R15 R16 K38 ["PopoverAlign"]
      139 GETTABLEKS                       R14 R15 K39 ["Center"]
      141 SETTABLEKS                       R14 R13 K35 ["align"]
      143 NEWCLOSURE                       R14 P1
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R14 R13 K36 ["onPressedOutside"]
      147 GETUPVAL                         R15 4
      148 GETTABLEKS                       R14 R15 K1 ["createElement"]
      150 GETUPVAL                         R15 6
      151 CALL                             R14 1 -1
      152 CALL                             R11 -1 1
      153 SETTABLEKS                       R11 R10 K7 ["Content"]
      155 CALL                             R7 3 -1
      156 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R8 R0 K9 ["Packages"]
       38 GETTABLEKS                       R7 R8 K14 ["Dash"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R9 R0 K9 ["Packages"]
       45 GETTABLEKS                       R8 R9 K15 ["React"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["useState"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R10 R11 K17 ["FilterTypeGroup"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R13 R0 K6 ["Src"]
       61 GETTABLEKS                       R12 R13 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R12 K19 ["Input"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R14 R0 K6 ["Src"]
       70 GETTABLEKS                       R13 R14 K18 ["Controllers"]
       72 GETTABLEKS                       R12 R13 K20 ["ItemsController"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R15 R0 K6 ["Src"]
       79 GETTABLEKS                       R14 R15 K18 ["Controllers"]
       81 GETTABLEKS                       R13 R14 K21 ["SearchController"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R16 R0 K6 ["Src"]
       88 GETTABLEKS                       R15 R16 K18 ["Controllers"]
       90 GETTABLEKS                       R14 R15 K22 ["PluginController"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R17 R0 K6 ["Src"]
       97 GETTABLEKS                       R16 R17 K23 ["Util"]
       99 GETTABLEKS                       R15 R16 K24 ["hasActiveFilters"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETIMPORT                        R17 K1 [script]
      106 GETTABLEKS                       R16 R17 K25 ["useFilterTypeTable"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETIMPORT                        R18 K1 [script]
      113 GETTABLEKS                       R17 R18 K26 ["searchFilterTypes"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R20 R0 K6 ["Src"]
      120 GETTABLEKS                       R19 R20 K27 ["Hooks"]
      122 GETTABLEKS                       R18 R19 K28 ["usePluginSize"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R21 R0 K6 ["Src"]
      129 GETTABLEKS                       R20 R21 K27 ["Hooks"]
      131 GETTABLEKS                       R19 R20 K29 ["useSortFilter"]
      133 CALL                             R18 1 1
      134 GETIMPORT                        R19 K5 [require]
      136 GETTABLEKS                       R22 R0 K6 ["Src"]
      138 GETTABLEKS                       R21 R22 K30 ["Flags"]
      140 GETTABLEKS                       R20 R21 K31 ["getFFlagAmrMiscCallbackFixes"]
      142 CALL                             R19 1 1
      143 DUPCLOSURE                       R20 K32 [PROTO_7]
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R9
      159 DUPCLOSURE                       R21 K33 [PROTO_10]
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R20
      167 RETURN                           R21 1
