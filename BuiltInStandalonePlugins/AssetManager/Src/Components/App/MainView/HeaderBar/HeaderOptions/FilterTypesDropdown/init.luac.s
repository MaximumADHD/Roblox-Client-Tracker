PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETIMPORT                        R2 K3 [Vector2.new]
        9 GETTABLEKS                       R3 R1 K4 ["CanvasPosition"]
       11 GETTABLEKS                       R3 R3 K5 ["X"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 LOADK                            R7 K1 [""]
       22 CALL                             R6 1 2
       23 GETUPVAL                         R8 6
       24 GETTABLEKS                       R8 R8 K2 ["useRef"]
       26 LOADNIL                          R9
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 6
       29 GETTABLEKS                       R9 R9 K3 ["useEffect"]
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R8
       33 NEWTABLE                         R11 0 0
       35 CALL                             R9 2 0
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K2 ["useRef"]
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
       50 GETUPVAL                         R14 6
       51 GETTABLEKS                       R14 R14 K4 ["useMemo"]
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
       66 NEWCLOSURE                       R17 P3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 GETUPVAL                         R18 6
       70 GETTABLEKS                       R18 R18 K5 ["createElement"]
       72 GETUPVAL                         R19 10
       73 GETTABLEKS                       R19 R19 K6 ["View"]
       75 DUPTABLE                         R20 K9 [{"Size", "tag"}]
       76 GETIMPORT                        R21 K12 [UDim2.fromOffset]
       78 GETUPVAL                         R23 11
       79 GETTABLEKS                       R23 R23 K13 ["FilterTypesWidth"]
       81 FASTCALL2                        MATH_MIN R23 R11 ; [+4]
       83 MOVE                             R24 R11
       84 GETIMPORT                        R22 K16 [math.min]
       86 CALL                             R22 2 1
       87 GETUPVAL                         R24 11
       88 GETTABLEKS                       R24 R24 K17 ["FilterTypesHeight"]
       90 GETUPVAL                         R26 11
       91 GETTABLEKS                       R26 R26 K18 ["HeaderRowHeight"]
       93 SUB                              R25 R12 R26
       94 FASTCALL2                        MATH_MIN R24 R25 ; [+3]
       96 GETIMPORT                        R23 K16 [math.min]
       98 CALL                             R23 2 1
       99 CALL                             R21 2 1
      100 SETTABLEKS                       R21 R20 K7 ["Size"]
      102 LOADK                            R21 K19 ["col flex-fill gap-small padding-small bg-surface-100 stroke-default radius-medium"]
      103 SETTABLEKS                       R21 R20 K8 ["tag"]
      105 DUPTABLE                         R21 K22 [{"Content", "Footer"}]
      106 GETUPVAL                         R22 6
      107 GETTABLEKS                       R22 R22 K5 ["createElement"]
      109 GETUPVAL                         R23 10
      110 GETTABLEKS                       R23 R23 K23 ["ScrollView"]
      112 DUPTABLE                         R24 K28 [{"LayoutOrder", "layout", "scroll", "scrollingFrameRef", "tag"}]
      113 LOADN                            R25 1
      114 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      116 DUPTABLE                         R25 K30 [{"FillDirection"}]
      117 GETIMPORT                        R26 K33 [Enum.FillDirection.Vertical]
      119 SETTABLEKS                       R26 R25 K29 ["FillDirection"]
      121 SETTABLEKS                       R25 R24 K25 ["layout"]
      123 DUPTABLE                         R25 K38 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
      124 GETIMPORT                        R26 K41 [Enum.AutomaticSize.Y]
      126 SETTABLEKS                       R26 R25 K34 ["AutomaticCanvasSize"]
      128 GETIMPORT                        R26 K12 [UDim2.fromOffset]
      130 LOADN                            R27 0
      131 LOADN                            R28 0
      132 CALL                             R26 2 1
      133 SETTABLEKS                       R26 R25 K35 ["CanvasSize"]
      135 GETIMPORT                        R26 K42 [Enum.ScrollingDirection.Y]
      137 SETTABLEKS                       R26 R25 K36 ["ScrollingDirection"]
      139 GETIMPORT                        R26 K45 [Enum.ScrollBarInset.ScrollBar]
      141 SETTABLEKS                       R26 R25 K37 ["VerticalScrollBarInset"]
      143 SETTABLEKS                       R25 R24 K26 ["scroll"]
      145 SETTABLEKS                       R9 R24 K27 ["scrollingFrameRef"]
      147 LOADK                            R25 K46 ["size-full"]
      148 SETTABLEKS                       R25 R24 K8 ["tag"]
      150 DUPTABLE                         R25 K49 [{"Header", "Items"}]
      151 GETUPVAL                         R26 6
      152 GETTABLEKS                       R26 R26 K5 ["createElement"]
      154 GETUPVAL                         R27 10
      155 GETTABLEKS                       R27 R27 K6 ["View"]
      157 DUPTABLE                         R28 K50 [{"LayoutOrder", "tag"}]
      158 LOADN                            R29 1
      159 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      161 LOADK                            R29 K51 ["col size-full-0 auto-y gap-small padding-bottom-small"]
      162 SETTABLEKS                       R29 R28 K8 ["tag"]
      164 DUPTABLE                         R29 K53 [{"SearchInput"}]
      165 GETUPVAL                         R30 6
      166 GETTABLEKS                       R30 R30 K5 ["createElement"]
      168 GETUPVAL                         R31 10
      169 GETTABLEKS                       R31 R31 K54 ["TextInput"]
      171 DUPTABLE                         R32 K64 [{"label", "placeholder", "text", "leadingIcon", "iconTrailing", "onChanged", "width", "size", "textBoxRef"}]
      172 LOADK                            R33 K1 [""]
      173 SETTABLEKS                       R33 R32 K55 ["label"]
      175 LOADK                            R35 K65 ["FiltersByType"]
      176 LOADK                            R36 K66 ["SearchAllPlaceholder"]
      177 NAMECALL                         R33 R5 K67 ["getText"]
      179 CALL                             R33 3 1
      180 SETTABLEKS                       R33 R32 K56 ["placeholder"]
      182 SETTABLEKS                       R6 R32 K57 ["text"]
      184 GETUPVAL                         R33 10
      185 GETTABLEKS                       R33 R33 K68 ["Enums"]
      187 GETTABLEKS                       R33 R33 K69 ["IconName"]
      189 GETTABLEKS                       R33 R33 K70 ["MagnifyingGlass"]
      191 SETTABLEKS                       R33 R32 K58 ["leadingIcon"]
      193 LENGTH                           R34 R6
      194 LOADN                            R35 0
      195 JUMPIFNOTLT                      R35 R34 ; [+16]
      197 DUPTABLE                         R33 K73 [{"name", "onActivated"}]
      198 GETUPVAL                         R34 10
      199 GETTABLEKS                       R34 R34 K68 ["Enums"]
      201 GETTABLEKS                       R34 R34 K69 ["IconName"]
      203 GETTABLEKS                       R34 R34 K74 ["CircleX"]
      205 SETTABLEKS                       R34 R33 K71 ["name"]
      207 NEWCLOSURE                       R34 P4
      208 CAPTURE                          VAL R7
      209 SETTABLEKS                       R34 R33 K72 ["onActivated"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R33
      213 SETTABLEKS                       R33 R32 K59 ["iconTrailing"]
      215 SETTABLEKS                       R17 R32 K60 ["onChanged"]
      217 GETIMPORT                        R33 K77 [UDim.new]
      219 LOADN                            R34 1
      220 LOADN                            R35 0
      221 CALL                             R33 2 1
      222 SETTABLEKS                       R33 R32 K61 ["width"]
      224 GETUPVAL                         R33 10
      225 GETTABLEKS                       R33 R33 K68 ["Enums"]
      227 GETTABLEKS                       R33 R33 K78 ["InputSize"]
      229 GETTABLEKS                       R33 R33 K79 ["Small"]
      231 SETTABLEKS                       R33 R32 K62 ["size"]
      233 SETTABLEKS                       R8 R32 K63 ["textBoxRef"]
      235 CALL                             R30 2 1
      236 SETTABLEKS                       R30 R29 K52 ["SearchInput"]
      238 CALL                             R26 3 1
      239 SETTABLEKS                       R26 R25 K47 ["Header"]
      241 GETUPVAL                         R26 6
      242 GETTABLEKS                       R26 R26 K5 ["createElement"]
      244 GETUPVAL                         R27 10
      245 GETTABLEKS                       R27 R27 K6 ["View"]
      247 DUPTABLE                         R28 K50 [{"LayoutOrder", "tag"}]
      248 LOADN                            R29 2
      249 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      251 LOADK                            R29 K80 ["col auto-xy gap-xsmall"]
      252 SETTABLEKS                       R29 R28 K8 ["tag"]
      254 GETIMPORT                        R31 K82 [next]
      256 MOVE                             R32 R14
      257 CALL                             R31 1 1
      258 JUMPIFNOTEQKNIL                  R31 ; [+2]
      260 LOADB                            R30 0 +1
      261 LOADB                            R30 1
      262 JUMPIFNOT                        R30 ; [+10]
      263 GETUPVAL                         R29 12
      264 GETTABLEKS                       R29 R29 K83 ["map"]
      266 MOVE                             R30 R14
      267 NEWCLOSURE                       R31 P5
      268 CAPTURE                          UPVAL U6
      269 CAPTURE                          UPVAL U13
      270 CAPTURE                          VAL R15
      271 CALL                             R29 2 1
      272 JUMP                             ; [+22]
      273 NEWTABLE                         R29 0 1
      275 GETUPVAL                         R30 6
      276 GETTABLEKS                       R30 R30 K5 ["createElement"]
      278 GETUPVAL                         R31 10
      279 GETTABLEKS                       R31 R31 K84 ["Text"]
      281 DUPTABLE                         R32 K85 [{"Text", "tag"}]
      282 LOADK                            R35 K86 ["Plugin"]
      283 LOADK                            R36 K87 ["NoAssets"]
      284 NAMECALL                         R33 R5 K67 ["getText"]
      286 CALL                             R33 3 1
      287 SETTABLEKS                       R33 R32 K84 ["Text"]
      289 LOADK                            R33 K88 ["size-full text-title-medium text-align-x-center text-align-y-center"]
      290 SETTABLEKS                       R33 R32 K8 ["tag"]
      292 CALL                             R30 2 -1
      293 SETLIST                          R29 R30 -1 [1]
      295 CALL                             R26 3 1
      296 SETTABLEKS                       R26 R25 K48 ["Items"]
      298 CALL                             R22 3 1
      299 SETTABLEKS                       R22 R21 K20 ["Content"]
      301 GETIMPORT                        R24 K82 [next]
      303 MOVE                             R25 R14
      304 CALL                             R24 1 1
      305 JUMPIFNOTEQKNIL                  R24 ; [+2]
      307 LOADB                            R23 0 +1
      308 LOADB                            R23 1
      309 JUMPIFNOT                        R23 ; [+87]
      310 GETUPVAL                         R22 6
      311 GETTABLEKS                       R22 R22 K5 ["createElement"]
      313 GETUPVAL                         R23 10
      314 GETTABLEKS                       R23 R23 K6 ["View"]
      316 DUPTABLE                         R24 K50 [{"LayoutOrder", "tag"}]
      317 LOADN                            R25 2
      318 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      320 LOADK                            R25 K89 ["col size-full-0 auto-y padding-top-small padding-bottom-small gap-small"]
      321 SETTABLEKS                       R25 R24 K8 ["tag"]
      323 DUPTABLE                         R25 K92 [{"BottomDivider", "ResetButton"}]
      324 GETUPVAL                         R26 6
      325 GETTABLEKS                       R26 R26 K5 ["createElement"]
      327 GETUPVAL                         R27 10
      328 GETTABLEKS                       R27 R27 K93 ["Divider"]
      330 DUPTABLE                         R28 K95 [{"LayoutOrder", "orientation"}]
      331 LOADN                            R29 1
      332 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      334 GETUPVAL                         R29 10
      335 GETTABLEKS                       R29 R29 K68 ["Enums"]
      337 GETTABLEKS                       R29 R29 K96 ["DividerOrientation"]
      339 GETTABLEKS                       R29 R29 K97 ["Horizontal"]
      341 SETTABLEKS                       R29 R28 K94 ["orientation"]
      343 CALL                             R26 2 1
      344 SETTABLEKS                       R26 R25 K90 ["BottomDivider"]
      346 GETUPVAL                         R26 6
      347 GETTABLEKS                       R26 R26 K5 ["createElement"]
      349 GETUPVAL                         R27 10
      350 GETTABLEKS                       R27 R27 K98 ["Button"]
      352 DUPTABLE                         R28 K100 [{"LayoutOrder", "text", "onActivated", "variant", "width", "size"}]
      353 LOADN                            R29 2
      354 SETTABLEKS                       R29 R28 K24 ["LayoutOrder"]
      356 LOADK                            R31 K101 ["Filters"]
      357 LOADK                            R32 K102 ["ResetFilters"]
      358 NAMECALL                         R29 R5 K67 ["getText"]
      360 CALL                             R29 3 1
      361 SETTABLEKS                       R29 R28 K57 ["text"]
      363 NEWCLOSURE                       R29 P6
      364 CAPTURE                          VAL R3
      365 SETTABLEKS                       R29 R28 K72 ["onActivated"]
      367 GETUPVAL                         R29 10
      368 GETTABLEKS                       R29 R29 K68 ["Enums"]
      370 GETTABLEKS                       R29 R29 K103 ["ButtonVariant"]
      372 GETTABLEKS                       R29 R29 K104 ["Utility"]
      374 SETTABLEKS                       R29 R28 K99 ["variant"]
      376 GETIMPORT                        R29 K77 [UDim.new]
      378 LOADN                            R30 1
      379 LOADN                            R31 0
      380 CALL                             R29 2 1
      381 SETTABLEKS                       R29 R28 K61 ["width"]
      383 GETUPVAL                         R29 10
      384 GETTABLEKS                       R29 R29 K68 ["Enums"]
      386 GETTABLEKS                       R29 R29 K78 ["InputSize"]
      388 GETTABLEKS                       R29 R29 K79 ["Small"]
      390 SETTABLEKS                       R29 R28 K62 ["size"]
      392 CALL                             R26 2 1
      393 SETTABLEKS                       R26 R25 K91 ["ResetButton"]
      395 CALL                             R22 3 1
      396 JUMP                             ; [+1]
      397 LOADNIL                          R22
      398 SETTABLEKS                       R22 R21 K21 ["Footer"]
      400 CALL                             R18 3 -1
      401 RETURN                           R18 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 2
        8 CALL                             R4 0 2
        9 GETUPVAL                         R6 3
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 GETUPVAL                         R7 4
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 5
       16 GETTABLEKS                       R8 R8 K2 ["Popover"]
       18 GETTABLEKS                       R8 R8 K3 ["Root"]
       20 DUPTABLE                         R9 K5 [{"isOpen"}]
       21 SETTABLEKS                       R2 R9 K4 ["isOpen"]
       23 DUPTABLE                         R10 K8 [{"Anchor", "Content"}]
       24 GETUPVAL                         R11 4
       25 GETTABLEKS                       R11 R11 K1 ["createElement"]
       27 GETUPVAL                         R12 5
       28 GETTABLEKS                       R12 R12 K2 ["Popover"]
       30 GETTABLEKS                       R12 R12 K6 ["Anchor"]
       32 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       33 GETTABLEKS                       R14 R0 K9 ["LayoutOrder"]
       35 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R14 R14 K1 ["createElement"]
       40 GETUPVAL                         R15 5
       41 GETTABLEKS                       R15 R15 K11 ["Tooltip"]
       43 DUPTABLE                         R16 K14 [{"title", "side"}]
       44 LOADK                            R19 K15 ["SearchBar"]
       45 LOADK                            R20 K16 ["PlaceholderText"]
       46 NAMECALL                         R17 R1 K17 ["getText"]
       48 CALL                             R17 3 1
       49 SETTABLEKS                       R17 R16 K12 ["title"]
       51 GETUPVAL                         R17 5
       52 GETTABLEKS                       R17 R17 K18 ["Enums"]
       54 GETTABLEKS                       R17 R17 K19 ["PopoverSide"]
       56 GETTABLEKS                       R17 R17 K20 ["Bottom"]
       58 SETTABLEKS                       R17 R16 K13 ["side"]
       60 GETUPVAL                         R17 4
       61 GETTABLEKS                       R17 R17 K1 ["createElement"]
       63 GETUPVAL                         R18 5
       64 GETTABLEKS                       R18 R18 K21 ["IconButton"]
       66 DUPTABLE                         R19 K26 [{"onActivated", "variant", "size", "icon"}]
       67 NEWCLOSURE                       R20 P0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R20 R19 K22 ["onActivated"]
       72 JUMPIFNOT                        R6 ; [+8]
       73 GETUPVAL                         R20 5
       74 GETTABLEKS                       R20 R20 K18 ["Enums"]
       76 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       78 GETTABLEKS                       R20 R20 K28 ["Emphasis"]
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R20 5
       82 GETTABLEKS                       R20 R20 K18 ["Enums"]
       84 GETTABLEKS                       R20 R20 K27 ["ButtonVariant"]
       86 GETTABLEKS                       R20 R20 K29 ["Utility"]
       88 SETTABLEKS                       R20 R19 K23 ["variant"]
       90 GETUPVAL                         R20 5
       91 GETTABLEKS                       R20 R20 K18 ["Enums"]
       93 GETTABLEKS                       R20 R20 K30 ["InputSize"]
       95 GETTABLEKS                       R20 R20 K31 ["XSmall"]
       97 SETTABLEKS                       R20 R19 K24 ["size"]
       99 GETUPVAL                         R20 5
      100 GETTABLEKS                       R20 R20 K18 ["Enums"]
      102 GETTABLEKS                       R20 R20 K32 ["IconName"]
      104 GETTABLEKS                       R20 R20 K33 ["ThreeBarsHorizontalNarrowing"]
      106 SETTABLEKS                       R20 R19 K25 ["icon"]
      108 CALL                             R17 2 -1
      109 CALL                             R14 -1 -1
      110 CALL                             R11 -1 1
      111 SETTABLEKS                       R11 R10 K6 ["Anchor"]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R11 R11 K1 ["createElement"]
      116 GETUPVAL                         R12 5
      117 GETTABLEKS                       R12 R12 K2 ["Popover"]
      119 GETTABLEKS                       R12 R12 K7 ["Content"]
      121 DUPTABLE                         R13 K37 [{"hasArrow", "side", "align", "onPressedOutside"}]
      122 LOADB                            R14 0
      123 SETTABLEKS                       R14 R13 K34 ["hasArrow"]
      125 GETUPVAL                         R14 5
      126 GETTABLEKS                       R14 R14 K18 ["Enums"]
      128 GETTABLEKS                       R14 R14 K19 ["PopoverSide"]
      130 GETTABLEKS                       R14 R14 K20 ["Bottom"]
      132 SETTABLEKS                       R14 R13 K13 ["side"]
      134 GETUPVAL                         R14 5
      135 GETTABLEKS                       R14 R14 K18 ["Enums"]
      137 GETTABLEKS                       R14 R14 K38 ["PopoverAlign"]
      139 GETTABLEKS                       R14 R14 K39 ["Center"]
      141 SETTABLEKS                       R14 R13 K35 ["align"]
      143 NEWCLOSURE                       R14 P1
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R14 R13 K36 ["onPressedOutside"]
      147 GETUPVAL                         R14 4
      148 GETTABLEKS                       R14 R14 K1 ["createElement"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K9 ["Packages"]
       38 GETTABLEKS                       R7 R7 K14 ["Dash"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Packages"]
       45 GETTABLEKS                       R8 R8 K15 ["React"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K16 ["useState"]
       50 GETIMPORT                        R9 K5 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K17 ["FilterTypeGroup"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R0 K6 ["Src"]
       61 GETTABLEKS                       R11 R11 K18 ["Controllers"]
       63 GETTABLEKS                       R11 R11 K19 ["Input"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K6 ["Src"]
       70 GETTABLEKS                       R12 R12 K18 ["Controllers"]
       72 GETTABLEKS                       R12 R12 K20 ["ItemsController"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K5 [require]
       77 GETTABLEKS                       R13 R0 K6 ["Src"]
       79 GETTABLEKS                       R13 R13 K18 ["Controllers"]
       81 GETTABLEKS                       R13 R13 K21 ["SearchController"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K5 [require]
       86 GETTABLEKS                       R14 R0 K6 ["Src"]
       88 GETTABLEKS                       R14 R14 K18 ["Controllers"]
       90 GETTABLEKS                       R14 R14 K22 ["PluginController"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R15 R15 K23 ["Util"]
       99 GETTABLEKS                       R15 R15 K24 ["hasActiveFilters"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETIMPORT                        R16 K1 [script]
      106 GETTABLEKS                       R16 R16 K25 ["useFilterTypeTable"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETIMPORT                        R17 K1 [script]
      113 GETTABLEKS                       R17 R17 K26 ["searchFilterTypes"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K6 ["Src"]
      120 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      122 GETTABLEKS                       R18 R18 K28 ["usePluginSize"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K5 [require]
      127 GETTABLEKS                       R19 R0 K6 ["Src"]
      129 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      131 GETTABLEKS                       R19 R19 K29 ["useSortFilter"]
      133 CALL                             R18 1 1
      134 DUPCLOSURE                       R19 K30 [PROTO_7]
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R17
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R9
      149 DUPCLOSURE                       R20 K31 [PROTO_10]
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R19
      157 RETURN                           R20 1
